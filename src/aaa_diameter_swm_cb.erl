%%
%% SWm Diameter application callback, AAA side.
%%

-module(aaa_diameter_swm_cb).

-include_lib("diameter/include/diameter.hrl").
-include_lib("diameter_3gpp_ts29_273_swm.hrl").
-include("conv.hrl").

-export([peer_up/3, peer_down/3, pick_peer/4, prepare_request/3, prepare_retransmit/3,
	 handle_answer/4, handle_error/4, handle_request/3]).

-define(DIAMETER_SUCCESS, 2001).
-define(DIAMETER_MISSING_AVP, 5005).
-define(DIAMETER_UNABLE_TO_COMPLY, 5012).
-define(DIAMETER_ERROR_USER_UNKNOWN, 5001).
-define(DIAMETER_UNKNOWN_SESSION_ID, 5002).
-define(DIAMETER_AUTHORIZATION_REJECTED, 5003).
-define(DIAMETER_APP_ID_SWm, diameter_3gpp_ts29_273_swm:id()).
-define(PENDING_TIMEOUT_MS, 30000).
-define(EAP_CODE_REQUEST, 1).
-define(EAP_CODE_SUCCESS, 3).
-define(EAP_CODE_FAILURE, 4).
-define(EAP_TYPE_AKA, 23).

peer_up(_SvcName, Peer, State) ->
	lager:info("SWm peer up: ~p~n", [Peer]),
	State.

peer_down(_SvcName, Peer, State) ->
	lager:info("SWm peer down: ~p~n", [Peer]),
	State.

pick_peer([Peer | _], _, _SvcName, _State) ->
	{ok, Peer}.

prepare_request(#diameter_packet{msg = Req}, _, {_, Caps}) when is_record(Req, 'RAR') ->
	#diameter_caps{origin_host = {OH, DH}, origin_realm = {OR, DR}} = Caps,
	Msg = Req#'RAR'{'Origin-Host' = OH,
			'Origin-Realm' = OR,
			'Destination-Realm' = DR,
			'Destination-Host' = DH},
	lager:debug("SWm prepare RAR: ~p~n", [Msg]),
	{send, Msg};
prepare_request(#diameter_packet{msg = Req}, _, {_, Caps}) when is_record(Req, 'ASR') ->
	#diameter_caps{origin_host = {OH, DH}, origin_realm = {OR, DR}} = Caps,
	Msg = Req#'ASR'{'Origin-Host' = OH,
			'Origin-Realm' = OR,
			'Destination-Realm' = DR,
			'Destination-Host' = DH},
	lager:debug("SWm prepare ASR: ~p~n", [Msg]),
	{send, Msg}.

prepare_retransmit(Packet, SvcName, Peer) ->
	prepare_request(Packet, SvcName, Peer).

handle_error(Reason, Request, _SvcName, _Peer) ->
	lager:error("SWm request error ~p for ~p~n", [Reason, Request]),
	{answer_message, ?DIAMETER_UNABLE_TO_COMPLY}.

handle_request(#diameter_packet{msg = Req, errors = Errors}, _SvcName, {_, Caps})
		when is_record(Req, 'DER'), Errors =/= [] ->
	lager:error("SWm malformed DER from ~p errors ~p: ~p~n", [Caps, Errors, Req]),
	#diameter_caps{origin_host = {OH, _}, origin_realm = {OR, _}} = Caps,
	#'DER'{'Session-Id' = SessionId,
	       'Auth-Application-Id' = AuthAppId,
	       'Auth-Request-Type' = AuthReqType,
	       'User-Name' = UserNameOpt} = Req,
	NAI = user_name(UserNameOpt),
	Resp = dea_response(SessionId, AuthAppId, AuthReqType, OH, OR, NAI, {error, malformed_der_result(Errors)}),
	lager:info("SWm DEA error Tx to ~p: ~p~n", [Caps, redact_dea_for_log(Resp)]),
	{reply, Resp};

handle_request(#diameter_packet{msg = Req, errors = []}, _SvcName, {_, Caps}) when is_record(Req, 'DER') ->
	lager:info("SWm DER Rx from ~p: ~p~n", [Caps, Req]),
	#diameter_caps{origin_host = {OH, PeerOH}, origin_realm = {OR, _}} = Caps,
	#'DER'{'Session-Id' = SessionId,
	       'Auth-Application-Id' = AuthAppId,
	       'Auth-Request-Type' = AuthReqType,
	       'User-Name' = UserNameOpt,
	       'EAP-Payload' = EapPayload} = Req,
	NAI = user_name(UserNameOpt),
	Imsi = imsi_from_nai(NAI),
	Apn = service_selection(Req),
	EAP = decode_eap_payload(EapPayload),
	log_eap_payload_identity(SessionId, NAI, Imsi, EAP),
	PdpTypeNr = maps:get(pdp_type_nr, EAP, 33),
	case aaa_eap_aka:terminal_failure(maps:get(authorization, EAP, undefined)) of
	true ->
		stop_fsm(Imsi),
		Resp = dea_response(SessionId, AuthAppId, AuthReqType, OH, OR, NAI,
				    with_eap_context({error, ?DIAMETER_AUTHORIZATION_REJECTED}, EAP, NAI));
	false ->
		case aka_identity_request(EAP, Imsi, NAI, SessionId) of
		{ok, IdentityReq} ->
			Resp = dea_response(SessionId, AuthAppId, AuthReqType, OH, OR, NAI,
					    {eap_payload, ?DIAMETER_SUCCESS, IdentityReq});
		false ->
			Pid = get_or_start_fsm(Imsi),
			case maps:get(swm_auth_complete, EAP, false) of
			true ->
				Result = run_pending(Imsi, dea_auth_compl_resp,
						     fun() -> aaa_ue_fsm:ev_rx_access_auth_complete(Pid, {swm, Apn, ok}) end),
				Resp = dea_response(SessionId, AuthAppId, AuthReqType, OH, OR, NAI, with_eap_context(Result, EAP, NAI));
			false ->
				Result = run_pending(Imsi, dea_auth_resp,
						     fun() -> aaa_ue_fsm:ev_rx_access_auth_request(Pid,
								     {swm, s2b, PeerOH, SessionId, NAI, Apn, PdpTypeNr, EAP, []})
						     end),
				Resp = dea_response(SessionId, AuthAppId, AuthReqType, OH, OR, NAI, with_eap_context(Result, EAP, NAI))
			end
		end
	end,
	lager:info("SWm DEA Tx to ~p: ~p~n", [Caps, redact_dea_for_log(Resp)]),
	{reply, Resp};

handle_request(#diameter_packet{msg = Req, errors = []}, _SvcName, {_, Caps}) when is_record(Req, 'AAR') ->
	lager:info("SWm AAR Rx from ~p: ~p~n", [Caps, Req]),
	#diameter_caps{origin_host = {OH, _}, origin_realm = {OR, _}} = Caps,
	#'AAR'{'Session-Id' = SessionId,
	       'Auth-Application-Id' = AuthAppId,
	       'Auth-Request-Type' = AuthReqType,
	       'User-Name' = UserNameOpt} = Req,
	NAI = user_name(UserNameOpt),
	Imsi = imsi_from_nai(NAI),
	ResultCode = case aaa_ue_fsm:get_pid_by_imsi(Imsi) of
		Pid when is_pid(Pid) ->
			case aaa_ue_fsm:ev_rx_access_auth_request_cmd(Pid, swm) of
			ok -> ?DIAMETER_SUCCESS;
			_ -> ?DIAMETER_UNABLE_TO_COMPLY
			end;
		undefined ->
			?DIAMETER_ERROR_USER_UNKNOWN
	end,
	Resp = #'AAA'{'Session-Id' = SessionId,
		      'Auth-Application-Id' = AuthAppId,
		      'Auth-Request-Type' = AuthReqType,
		      'Result-Code' = ResultCode,
		      'Origin-Host' = OH,
		      'Origin-Realm' = OR,
		      'User-Name' = [NAI]},
	lager:info("SWm AAA Tx to ~p: ~p~n", [Caps, Resp]),
	{reply, Resp};

handle_request(#diameter_packet{msg = Req, errors = []}, _SvcName, {_, Caps}) when is_record(Req, 'STR') ->
	lager:info("SWm STR Rx from ~p: ~p~n", [Caps, Req]),
	#diameter_caps{origin_host = {OH, _}, origin_realm = {OR, _}} = Caps,
	#'STR'{'Session-Id' = SessionId,
	       'User-Name' = UserNameOpt} = Req,
	NAI = user_name(UserNameOpt),
	Imsi = imsi_from_nai(NAI),
	Result = case aaa_ue_fsm:get_pid_by_imsi(Imsi) of
		Pid when is_pid(Pid) ->
			run_pending(Imsi, sta, fun() -> aaa_ue_fsm:ev_rx_access_session_termination(Pid, swm) end);
		undefined ->
			{error, ?DIAMETER_UNKNOWN_SESSION_ID}
	end,
	Resp = #'STA'{'Session-Id' = SessionId,
		      'Result-Code' = result_code(Result),
		      'Origin-Host' = OH,
		      'Origin-Realm' = OR},
	lager:info("SWm STA Tx to ~p: ~p~n", [Caps, Resp]),
	{reply, Resp};

handle_request(#diameter_packet{msg = Req, errors = Errors}, _SvcName, Peer)
		when is_record(Req, 'AAR'); is_record(Req, 'STR') ->
	lager:error("SWm malformed request from ~p errors ~p: ~p~n", [Peer, Errors, Req]),
	{answer_message, ?DIAMETER_UNABLE_TO_COMPLY};

handle_request(Packet, _SvcName, Peer) ->
	lager:error("SWm unexpected request from ~p: ~p~n", [Peer, Packet]),
	{answer_message, ?DIAMETER_UNABLE_TO_COMPLY}.

handle_answer(#diameter_packet{msg = Msg, errors = Errors}, Request, _SvcName, Peer) when is_record(Msg, 'RAA') ->
	lager:info("SWm RAA Rx ~p: ~p errors ~p~n", [Peer, Msg, Errors]),
	#'RAR'{'User-Name' = [NAI]} = Request,
	Imsi = imsi_from_nai(NAI),
	case aaa_ue_fsm:get_pid_by_imsi(Imsi) of
	Pid when is_pid(Pid) ->
		#'RAA'{'Result-Code' = ResultCode} = Msg,
		aaa_ue_fsm:ev_rx_access_reauth_answer(Pid, {swm, ResultCode});
	undefined ->
		ok
	end,
	{ok, Msg};

handle_answer(#diameter_packet{msg = Msg, errors = Errors}, Request, _SvcName, Peer) when is_record(Msg, 'ASA') ->
	lager:info("SWm ASA Rx ~p: ~p errors ~p~n", [Peer, Msg, Errors]),
	#'ASR'{'User-Name' = [NAI]} = Request,
	Imsi = imsi_from_nai(NAI),
	case aaa_ue_fsm:get_pid_by_imsi(Imsi) of
	Pid when is_pid(Pid) ->
		aaa_ue_fsm:ev_rx_access_abort_session_answer(Pid, swm);
	undefined ->
		ok
	end,
	{ok, Msg};

handle_answer(#diameter_packet{msg = Msg}, _Request, _SvcName, Peer) ->
	lager:notice("SWm unexpected answer from ~p: ~p~n", [Peer, Msg]),
	{ok, Msg}.

get_or_start_fsm(Imsi) ->
	case aaa_ue_fsm:get_pid_by_imsi(Imsi) of
	undefined ->
		{ok, Pid} = aaa_ue_fsm:start(Imsi),
		Pid;
	Pid ->
		Pid
	end.

stop_fsm(Imsi) ->
	case aaa_ue_fsm:get_pid_by_imsi(Imsi) of
	Pid when is_pid(Pid) ->
		aaa_ue_fsm:stop(Pid);
	undefined ->
		ok
	end.

run_pending(Imsi, Kind, Fun) ->
	ok = aaa_diameter_swm:register_pending(Imsi, Kind, self()),
	case Fun() of
	ok ->
		wait_pending(Kind);
	{ok, DiaRC} ->
		DiaRC;
	{error, DiaRC} ->
		{error, DiaRC};
	Other ->
		Other
	end.

wait_pending(dea_auth_resp) ->
	receive
	{dea_auth_resp, Result} -> Result
	after ?PENDING_TIMEOUT_MS ->
		{error, ?DIAMETER_UNABLE_TO_COMPLY}
	end;
wait_pending(dea_auth_compl_resp) ->
	receive
	{dea_auth_compl_resp, Result} -> Result
	after ?PENDING_TIMEOUT_MS ->
		{error, ?DIAMETER_UNABLE_TO_COMPLY}
	end;
wait_pending(sta) ->
	receive
	{sta, Result} -> Result
	after ?PENDING_TIMEOUT_MS ->
		{error, ?DIAMETER_UNABLE_TO_COMPLY}
	end.

dea_response(SessionId, AuthAppId, AuthReqType, OH, OR, NAI, Result) ->
	EapMsk = eap_master_session_key(Result),
	log_eap_master_session_key(NAI, EapMsk),
	#'DEA'{'Session-Id' = SessionId,
	       'Auth-Application-Id' = AuthAppId,
	       'Auth-Request-Type' = AuthReqType,
	       'Result-Code' = result_code(Result),
	       'Origin-Host' = OH,
	       'Origin-Realm' = OR,
	       'User-Name' = [NAI],
	       'EAP-Payload' = encode_result_payload(Result),
	       'EAP-Master-Session-Key' = EapMsk,
	       'APN-Configuration' = apn_configuration(Result)}.

result_code({eap_context, Result, _EapId, _Identity}) -> result_code(Result);
result_code({eap_payload, ResultCode, _Payload}) -> ResultCode;
result_code({ok, _}) -> ?DIAMETER_SUCCESS;
result_code(ok) -> ?DIAMETER_SUCCESS;
result_code({error, #epdg_dia_rc{result_code = ResultCode}}) -> ResultCode;
result_code(#epdg_dia_rc{result_code = ResultCode}) -> ResultCode;
result_code({error, ResultCode}) when is_integer(ResultCode) -> ResultCode;
result_code(ResultCode) when is_integer(ResultCode) -> ResultCode;
result_code(_) -> ?DIAMETER_AUTHORIZATION_REJECTED.

malformed_der_result(Errors) ->
	case lists:any(fun is_missing_avp_error/1, Errors) of
	true -> ?DIAMETER_MISSING_AVP;
	false -> ?DIAMETER_UNABLE_TO_COMPLY
	end.

is_missing_avp_error(?DIAMETER_MISSING_AVP) -> true;
is_missing_avp_error({?DIAMETER_MISSING_AVP, _}) -> true;
is_missing_avp_error(_) -> false.

with_eap_context(Result, EAP, NAI) ->
	{eap_context, Result, maps:get(eap_identifier, EAP, 1), eap_identity(EAP, NAI)}.

eap_master_session_key({eap_context, Result, _EapId, _Identity}) ->
	eap_master_session_key(Result);
eap_master_session_key({ok, #{eap_msk := MSK}}) when is_binary(MSK), byte_size(MSK) =:= 64 ->
	MSK;
eap_master_session_key(_) ->
	[].

apn_configuration({eap_context, Result, _EapId, _Identity}) ->
	apn_configuration(Result);
apn_configuration({ok, #{apn_configuration := ApnConfiguration}}) ->
	ApnConfiguration;
apn_configuration(_) ->
	[].

log_eap_master_session_key(_NAI, []) ->
	ok;
log_eap_master_session_key(NAI, MSK) ->
	lager:info("SWm DEA success includes EAP keying material imsi=~p "
		   "eap_payload=eap_success msk_len=~p key_avp='EAP-Master-Session-Key'~n",
		   [imsi_from_nai(NAI), byte_size(MSK)]).

redact_dea_for_log(#'DEA'{'EAP-Master-Session-Key' = MSK} = DEA)
		when is_binary(MSK) ->
	DEA#'DEA'{'EAP-Master-Session-Key' = {redacted, byte_size(MSK)}};
redact_dea_for_log(DEA) ->
	DEA.

encode_result_payload({eap_context, Result, EapId, Identity}) ->
	encode_result_payload(Result, EapId, Identity);
encode_result_payload({eap_payload, _ResultCode, Payload}) ->
	Payload;
encode_result_payload(Result) ->
	encode_result_payload(Result, 1, undefined).

encode_result_payload({ok, [#epdg_auth_tuple{} = Tuple | _]}, EapId, Identity) ->
	log_aka_challenge(Identity),
	aaa_eap_aka:challenge(next_eap_id(EapId), Identity, Tuple);
encode_result_payload({ok, _}, EapId, _Identity) ->
	encode_eap_success(EapId);
encode_result_payload(ok, EapId, _Identity) ->
	encode_eap_success(EapId);
encode_result_payload({error, _}, EapId, _Identity) ->
	encode_eap_failure(EapId);
encode_result_payload(_, EapId, _Identity) ->
	encode_eap_failure(EapId).

encode_eap_success(EapId) ->
	<<?EAP_CODE_SUCCESS, (eap_id(EapId)), 4:16/integer-big>>.

encode_eap_failure(EapId) ->
	<<?EAP_CODE_FAILURE, (eap_id(EapId)), 4:16/integer-big>>.

eap_id(EapId) when is_integer(EapId), EapId >= 0, EapId =< 255 ->
	EapId;
eap_id(_) ->
	1.

next_eap_id(EapId) when is_integer(EapId), EapId >= 0, EapId =< 255 ->
	(EapId + 1) band 16#FF;
next_eap_id(_) ->
	1.

eap_identity(EAP, NAI) ->
	case maps:get(parsed_eap_identity, EAP, undefined) of
	Identity when is_binary(Identity), byte_size(Identity) > 0 ->
		Identity;
	_ ->
		identity_binary(NAI)
	end.

log_aka_challenge(Identity) ->
	lager:info("eap_aka: building challenge subscriber_imsi=~p access_if=swm "
		   "eap_identity=~p identity_for_key_derivation=~p auth_scheme=\"EAP-AKA\"~n",
		   [normalize_imsi(imsi_from_nai(identity_binary(Identity))),
		    identity_binary(Identity), identity_binary(Identity)]).

identity_binary(Identity) when is_binary(Identity) ->
	Identity;
identity_binary(Identity) when is_list(Identity) ->
	list_to_binary(Identity);
identity_binary(_) ->
	<<>>.

decode_eap_payload(Payload) ->
	Bin = octets_to_binary(Payload),
	try binary_to_term(Bin, [safe]) of
	Map when is_map(Map) -> Map;
	_ when is_binary(Bin) -> decode_standard_eap_payload(Bin);
	_ -> #{}
	catch
	_:_ when is_binary(Bin) -> decode_standard_eap_payload(Bin);
	_:_ -> #{}
	end.

octets_to_binary(Payload) when is_binary(Payload) ->
	Payload;
octets_to_binary(Payload) when is_list(Payload) ->
	try list_to_binary(Payload)
	catch
	_:_ -> undefined
	end;
octets_to_binary(_) ->
	undefined.

decode_standard_eap_payload(<<_Code, EapId, Len:16/integer-big, _/binary>> = Payload)
		when Len =< byte_size(Payload) ->
	#{eap_identifier => EapId,
	  authorization => Payload,
	  parsed_eap_identity => aaa_eap_aka:response_identity(Payload)};
decode_standard_eap_payload(Payload) when is_binary(Payload) ->
	#{authorization => Payload};
decode_standard_eap_payload(_) ->
	#{}.

log_eap_payload_identity(SessionId, NAI, Imsi, EAP) ->
	case maps:get(parsed_eap_identity, EAP, undefined) of
	Identity when is_binary(Identity), byte_size(Identity) > 0 ->
		lager:info("SWm DER EAP-Response/Identity session_id=~p user_name=~p "
			   "parsed_eap_identity=~p subscriber_imsi=~p eap_identifier=~p "
			   "eap_payload_len=~p~n",
			   [SessionId, NAI, Identity, Imsi,
			    maps:get(eap_identifier, EAP, undefined),
			    eap_payload_len(EAP)]);
	_ ->
		ok
	end.

eap_payload_len(#{authorization := Payload}) when is_binary(Payload) ->
	byte_size(Payload);
eap_payload_len(_) ->
	undefined.

aka_identity_request(#{authorization := <<2, EapId, Len:16/integer-big, 1, _/binary>> = Payload} = EAP,
		     SubscriberImsi, NAI, SessionId)
		when Len =< byte_size(Payload) ->
	case swm_response_identity_decision(EAP, SubscriberImsi) of
	{skip, Reason} ->
		lager:info("SWm EAP-AKA identity request decision access_if=swm auth_scheme=\"EAP-AKA\" "
			   "session_id=~p user_name=~p parsed_eap_identity=~p subscriber_imsi=~p "
			   "identity_request_decision=skip identity_request_reason=~p "
			   "proceed_to_swx_mar=true challenge_type=aka_challenge~n",
			   [SessionId, NAI, maps:get(parsed_eap_identity, EAP, undefined),
			    SubscriberImsi, Reason]),
		false;
	{request, Reason} ->
		lager:info("SWm EAP-AKA identity request decision access_if=swm auth_scheme=\"EAP-AKA\" "
			   "session_id=~p user_name=~p parsed_eap_identity=~p subscriber_imsi=~p "
			   "identity_request_decision=request identity_request_reason=~p "
			   "proceed_to_swx_mar=false challenge_type=aka_identity~n",
			   [SessionId, NAI, maps:get(parsed_eap_identity, EAP, undefined),
			    SubscriberImsi, Reason]),
		{ok, aaa_eap_aka:identity_request(aka, next_eap_id(EapId))}
	end;
aka_identity_request(_, _, _, _) ->
	false.

swm_response_identity_decision(#{parsed_eap_identity := Identity}, SubscriberImsi)
		when is_binary(Identity), byte_size(Identity) > 0 ->
	IdentityImsi = imsi_from_nai(Identity),
	case {valid_imsi(IdentityImsi), valid_imsi(SubscriberImsi)} of
	{true, true} ->
		case identity_binary(IdentityImsi) =:= identity_binary(SubscriberImsi) of
		true -> {skip, parsed_identity_usable};
		false -> {request, identity_mismatch}
		end;
	{true, false} ->
		{skip, parsed_identity_usable};
	_ ->
		{request, parsed_identity_unusable}
	end;
swm_response_identity_decision(_, _SubscriberImsi) ->
	{request, missing_parsed_identity}.

user_name([NAI | _]) -> NAI;
user_name([]) -> "".

imsi_from_nai(<<>>) -> <<>>;
imsi_from_nai(NAI) when is_binary(NAI) ->
	case binary:split(NAI, <<"@">>) of
	[Imsi, _Realm] -> normalize_imsi(Imsi);
	[_] -> normalize_imsi(NAI)
	end;
imsi_from_nai("") -> "";
imsi_from_nai(NAI) ->
	case string:find(NAI, "@") of
	nomatch -> normalize_imsi(NAI);
	_ -> normalize_imsi(conv:nai_to_imsi(NAI))
	end.

normalize_imsi(<<$0, Rest/binary>>) when byte_size(Rest) =:= 15 ->
	case is_digit_binary(Rest) of
	true -> Rest;
	false -> <<$0, Rest/binary>>
	end;
normalize_imsi([$0 | Rest]) when length(Rest) =:= 15 ->
	case lists:all(fun is_digit/1, Rest) of
	true -> Rest;
	false -> [$0 | Rest]
	end;
normalize_imsi(Imsi) ->
	Imsi.

valid_imsi(Imsi) when is_binary(Imsi), byte_size(Imsi) =:= 15 ->
	is_digit_binary(Imsi);
valid_imsi(Imsi) when is_list(Imsi), length(Imsi) =:= 15 ->
	lists:all(fun is_digit/1, Imsi);
valid_imsi(_) ->
	false.

is_digit_binary(Bin) ->
	lists:all(fun is_digit/1, binary:bin_to_list(Bin)).

is_digit(Char) ->
	Char >= $0 andalso Char =< $9.

first_or_undefined([Value | _]) -> Value;
first_or_undefined([]) -> undefined.

service_selection(#'DER'{'Service-Selection' = [Value | _]}) ->
	Value;
service_selection(#'DER'{'AVP' = Avps}) ->
	first_or_undefined([Value || #diameter_avp{code = 493, vendor_id = 10415, data = Value} <- Avps]);
service_selection(_) ->
	undefined.

-ifdef(TEST).
-include_lib("eunit/include/eunit.hrl").

dea_success_includes_eap_master_session_key_test() ->
	MSK = <<1:512>>,
	DEA = dea_response("session", ?DIAMETER_APP_ID_SWm, 1,
			   <<"aaa.local">>, <<"local">>,
			   <<"0311435300070580@nai.epc.mnc435.mcc311.3gppnetwork.org">>,
			   {ok, #{eap_msk => MSK}}),
	?assertEqual(?DIAMETER_SUCCESS, DEA#'DEA'.'Result-Code'),
	?assertEqual(MSK, DEA#'DEA'.'EAP-Master-Session-Key'),
	?assertEqual(64, byte_size(DEA#'DEA'.'EAP-Master-Session-Key')).

dea_success_includes_apn_configuration_test() ->
	MSK = <<1:512>>,
	ApnConfig = #'APN-Configuration'{
		'Context-Identifier' = 1,
		'PDN-Type' = 0,
		'Service-Selection' = "internet",
		'AMBR' = [#'AMBR'{'Max-Requested-Bandwidth-UL' = 50000000,
		                   'Max-Requested-Bandwidth-DL' = 200000000}]},
	DEA = dea_response("session", ?DIAMETER_APP_ID_SWm, 1,
			   <<"aaa.local">>, <<"local">>, <<"311435300070580">>,
			   {ok, #{eap_msk => MSK, apn_configuration => [ApnConfig]}}),
	?assertEqual(?DIAMETER_SUCCESS, DEA#'DEA'.'Result-Code'),
	?assertEqual(MSK, DEA#'DEA'.'EAP-Master-Session-Key'),
	?assertEqual([ApnConfig], DEA#'DEA'.'APN-Configuration').

dea_failure_does_not_include_eap_master_session_key_test() ->
	DEA = dea_response("session", ?DIAMETER_APP_ID_SWm, 1,
			   <<"aaa.local">>, <<"local">>, <<"311435300070580">>,
			   {error, ?DIAMETER_AUTHORIZATION_REJECTED}),
	?assertEqual(?DIAMETER_AUTHORIZATION_REJECTED, DEA#'DEA'.'Result-Code'),
	?assertEqual([], DEA#'DEA'.'EAP-Master-Session-Key').

redact_dea_for_log_hides_eap_master_session_key_test() ->
	MSK = <<1:512>>,
	DEA = #'DEA'{'EAP-Master-Session-Key' = MSK},
	?assertEqual({redacted, 64},
		     (redact_dea_for_log(DEA))#'DEA'.'EAP-Master-Session-Key').

swm_eap_identity_uses_response_identity_for_key_derivation_test() ->
	EapIdentity = <<"0311435300070580@nai.epc.mnc435.mcc311.3gppnetwork.org">>,
	EAP = #{authorization => <<2, 1, (5 + byte_size(EapIdentity)):16/integer-big,
				  1, EapIdentity/binary>>,
		parsed_eap_identity => EapIdentity},
	?assertEqual(EapIdentity, eap_identity(EAP, <<"311435300070580">>)).

swm_eap_identity_falls_back_to_user_name_without_response_identity_test() ->
	NAI = <<"311435300070580">>,
	EAP = #{authorization => <<2, 7, 12:16/integer-big, 23, 1, 0:16, 3, 1, 0:16>>},
	?assertEqual(NAI, eap_identity(EAP, NAI)).

decode_standard_eap_payload_extracts_response_identity_test() ->
	EapIdentity = <<"0311435300070580@nai.epc.mnc435.mcc311.3gppnetwork.org">>,
	Payload = <<2, 1, (5 + byte_size(EapIdentity)):16/integer-big, 1, EapIdentity/binary>>,
	?assertMatch(#{eap_identifier := 1,
		       authorization := Payload,
		       parsed_eap_identity := EapIdentity},
		     decode_standard_eap_payload(Payload)).

swm_valid_permanent_identity_skips_extra_aka_identity_request_test() ->
	EapIdentity = <<"0311435300070580@nai.epc.mnc435.mcc311.3gppnetwork.org">>,
	EAP = #{parsed_eap_identity => EapIdentity},
	?assertEqual({skip, parsed_identity_usable},
		     swm_response_identity_decision(EAP, <<"311435300070580">>)),
	?assertEqual({skip, parsed_identity_usable},
		     swm_response_identity_decision(EAP, "311435300070580")).

swm_missing_parsed_identity_requests_aka_identity_test() ->
	?assertEqual({request, missing_parsed_identity},
		     swm_response_identity_decision(#{}, <<"311435300070580">>)).

swm_unusable_parsed_identity_requests_aka_identity_test() ->
	EAP = #{parsed_eap_identity => <<"anonymous@nai.epc.mnc435.mcc311.3gppnetwork.org">>},
	?assertEqual({request, parsed_identity_unusable},
		     swm_response_identity_decision(EAP, <<"311435300070580">>)).

swm_mismatched_permanent_identity_requests_aka_identity_test() ->
	EAP = #{parsed_eap_identity => <<"0311435300070581@nai.epc.mnc435.mcc311.3gppnetwork.org">>},
	?assertEqual({request, identity_mismatch},
		     swm_response_identity_decision(EAP, <<"311435300070580">>)).

normalize_imsi_removes_3gpp_nai_leading_zero_for_lookup_log_test() ->
	?assertEqual(<<"311435300070580">>,
		     normalize_imsi(imsi_from_nai(<<"0311435300070580@nai.epc.mnc435.mcc311.3gppnetwork.org">>))),
	?assertEqual("311435300070580",
		     normalize_imsi(imsi_from_nai("0311435300070580@nai.epc.mnc435.mcc311.3gppnetwork.org"))).

-endif.
