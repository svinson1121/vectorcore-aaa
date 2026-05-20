%%
%% STa Diameter application callback, AAA side.
%%

-module(aaa_diameter_sta_cb).

-include_lib("diameter/include/diameter.hrl").
-include_lib("diameter_3gpp_ts29_273_sta.hrl").
-include("conv.hrl").
-ifdef(TEST).
-include_lib("eunit/include/eunit.hrl").
-endif.

-export([peer_up/3, peer_down/3, pick_peer/4, prepare_request/3, prepare_retransmit/3,
	 handle_answer/4, handle_error/4, handle_request/3]).

-define(DIAMETER_SUCCESS, 2001).
-define(DIAMETER_MISSING_AVP, 5005).
-define(DIAMETER_UNABLE_TO_COMPLY, 5012).
-define(DIAMETER_ERROR_USER_UNKNOWN, 5001).
-define(DIAMETER_UNKNOWN_SESSION_ID, 5002).
-define(DIAMETER_AUTHORIZATION_REJECTED, 5003).
-define(DIAMETER_APP_ID_STa, diameter_3gpp_ts29_273_sta:id()).
-define(PENDING_TIMEOUT_MS, 30000).
-define(EAP_CODE_REQUEST, 1).
-define(EAP_CODE_SUCCESS, 3).
-define(EAP_CODE_FAILURE, 4).
-define(EAP_TYPE_AKA, 23).

peer_up(_SvcName, Peer, State) ->
	lager:info("STa peer up: ~p~n", [Peer]),
	State.

peer_down(_SvcName, Peer, State) ->
	lager:info("STa peer down: ~p~n", [Peer]),
	State.

pick_peer([Peer | _], _, _SvcName, _State) ->
	{ok, Peer}.

prepare_request(#diameter_packet{msg = Req}, _, {_, Caps}) when is_record(Req, 'RAR') ->
	#diameter_caps{origin_host = {OH, DH}, origin_realm = {OR, DR}} = Caps,
	Msg = Req#'RAR'{'Origin-Host' = OH,
			'Origin-Realm' = OR,
			'Destination-Realm' = DR,
			'Destination-Host' = DH},
	lager:debug("STa prepare RAR: ~p~n", [Msg]),
	{send, Msg};
prepare_request(#diameter_packet{msg = Req}, _, {_, Caps}) when is_record(Req, 'ASR') ->
	#diameter_caps{origin_host = {OH, DH}, origin_realm = {OR, DR}} = Caps,
	Msg = Req#'ASR'{'Origin-Host' = OH,
			'Origin-Realm' = OR,
			'Destination-Realm' = DR,
			'Destination-Host' = DH},
	lager:debug("STa prepare ASR: ~p~n", [Msg]),
	{send, Msg}.

prepare_retransmit(Packet, SvcName, Peer) ->
	prepare_request(Packet, SvcName, Peer).

handle_error(Reason, Request, _SvcName, _Peer) ->
	lager:error("STa request error ~p for ~p~n", [Reason, Request]),
	{answer_message, ?DIAMETER_UNABLE_TO_COMPLY}.

handle_request(#diameter_packet{msg = Req, errors = Errors}, _SvcName, {_, Caps})
		when is_record(Req, 'DER'), Errors =/= [] ->
	lager:error("STa malformed DER from ~p errors ~p: ~p~n", [Caps, Errors, Req]),
	#diameter_caps{origin_host = {OH, _}, origin_realm = {OR, _}} = Caps,
	#'DER'{'Session-Id' = SessionId,
	       'Auth-Application-Id' = AuthAppId,
	       'Auth-Request-Type' = AuthReqType,
	       'User-Name' = UserNameOpt} = Req,
	NAI = user_name(UserNameOpt),
	Resp = dea_response(SessionId, AuthAppId, AuthReqType, OH, OR, NAI, {error, malformed_der_result(Errors)}),
	lager:info("STa DEA error Tx to ~p: ~p~n", [Caps, redact_dea_for_log(Resp)]),
	{reply, Resp};

handle_request(#diameter_packet{msg = Req, errors = []}, _SvcName, {_, Caps}) when is_record(Req, 'DER') ->
	lager:info("STa DER Rx from ~p: ~p~n", [Caps, Req]),
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
	PdpTypeNr = maps:get(pdp_type_nr, EAP, 33),
	case aaa_eap_aka:terminal_failure(maps:get(authorization, EAP, undefined)) of
	true ->
		log_eap_notification_response(EAP),
		stop_fsm(Imsi),
		Resp = dea_response(SessionId, AuthAppId, AuthReqType, OH, OR, NAI,
				    with_eap_context({error, ?DIAMETER_AUTHORIZATION_REJECTED}, EAP, NAI));
	false ->
		case aka_identity_request(EAP) of
		{ok, IdentityReq} ->
			Resp = dea_response(SessionId, AuthAppId, AuthReqType, OH, OR, NAI,
					    {eap_payload, ?DIAMETER_SUCCESS, IdentityReq});
		false ->
			Pid = get_or_start_fsm(Imsi),
			case maps:get(sta_auth_complete, EAP, false) of
			true ->
				Result = run_pending(Imsi, dea_auth_compl_resp,
						     fun() -> aaa_ue_fsm:ev_rx_access_auth_complete(Pid, {sta, Apn, ok}) end),
				Resp = dea_response(SessionId, AuthAppId, AuthReqType, OH, OR, NAI, with_eap_context(Result, EAP, NAI));
			false ->
				Result = run_pending(Imsi, dea_auth_resp,
						     fun() -> aaa_ue_fsm:ev_rx_access_auth_request(Pid,
								     {sta, s2a, PeerOH, SessionId, NAI, Apn, PdpTypeNr, EAP, []})
						     end),
				Resp = dea_response(SessionId, AuthAppId, AuthReqType, OH, OR, NAI, with_eap_context(Result, EAP, NAI))
			end
		end
	end,
	lager:info("STa DEA Tx to ~p: ~p~n", [Caps, redact_dea_for_log(Resp)]),
	{reply, Resp};

handle_request(#diameter_packet{msg = Req, errors = []}, _SvcName, {_, Caps}) when is_record(Req, 'AAR') ->
	lager:info("STa AAR Rx from ~p: ~p~n", [Caps, Req]),
	#diameter_caps{origin_host = {OH, _}, origin_realm = {OR, _}} = Caps,
	#'AAR'{'Session-Id' = SessionId,
	       'Auth-Application-Id' = AuthAppId,
	       'Auth-Request-Type' = AuthReqType,
	       'User-Name' = UserNameOpt} = Req,
	NAI = user_name(UserNameOpt),
	Imsi = imsi_from_nai(NAI),
	ResultCode = case aaa_ue_fsm:get_pid_by_imsi(Imsi) of
		Pid when is_pid(Pid) ->
			case aaa_ue_fsm:ev_rx_access_auth_request_cmd(Pid, sta) of
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
	lager:info("STa AAA Tx to ~p: ~p~n", [Caps, Resp]),
	{reply, Resp};

handle_request(#diameter_packet{msg = Req, errors = []}, _SvcName, {_, Caps}) when is_record(Req, 'STR') ->
	lager:info("STa STR Rx from ~p: ~p~n", [Caps, Req]),
	#diameter_caps{origin_host = {OH, _}, origin_realm = {OR, _}} = Caps,
	#'STR'{'Session-Id' = SessionId,
	       'User-Name' = UserNameOpt} = Req,
	NAI = user_name(UserNameOpt),
	Imsi = imsi_from_nai(NAI),
	Result = case aaa_ue_fsm:get_pid_by_imsi(Imsi) of
		Pid when is_pid(Pid) ->
			run_pending(Imsi, sta, fun() -> aaa_ue_fsm:ev_rx_access_session_termination(Pid, sta) end);
		undefined ->
			{error, ?DIAMETER_UNKNOWN_SESSION_ID}
	end,
	Resp = #'STA'{'Session-Id' = SessionId,
		      'Result-Code' = result_code(Result),
		      'Origin-Host' = OH,
		      'Origin-Realm' = OR},
	lager:info("STa STA Tx to ~p: ~p~n", [Caps, Resp]),
	{reply, Resp};

handle_request(#diameter_packet{msg = Req, errors = Errors}, _SvcName, Peer)
		when is_record(Req, 'AAR'); is_record(Req, 'STR') ->
	lager:error("STa malformed request from ~p errors ~p: ~p~n", [Peer, Errors, Req]),
	{answer_message, ?DIAMETER_UNABLE_TO_COMPLY};

handle_request(Packet, _SvcName, Peer) ->
	lager:error("STa unexpected request from ~p: ~p~n", [Peer, Packet]),
	{answer_message, ?DIAMETER_UNABLE_TO_COMPLY}.

handle_answer(#diameter_packet{msg = Msg, errors = Errors}, Request, _SvcName, Peer) when is_record(Msg, 'RAA') ->
	lager:info("STa RAA Rx ~p: ~p errors ~p~n", [Peer, Msg, Errors]),
	#'RAR'{'User-Name' = [NAI]} = Request,
	Imsi = imsi_from_nai(NAI),
	case aaa_ue_fsm:get_pid_by_imsi(Imsi) of
	Pid when is_pid(Pid) ->
		#'RAA'{'Result-Code' = ResultCode} = Msg,
		aaa_ue_fsm:ev_rx_access_reauth_answer(Pid, {sta, ResultCode});
	undefined ->
		ok
	end,
	{ok, Msg};

handle_answer(#diameter_packet{msg = Msg, errors = Errors}, Request, _SvcName, Peer) when is_record(Msg, 'ASA') ->
	lager:info("STa ASA Rx ~p: ~p errors ~p~n", [Peer, Msg, Errors]),
	#'ASR'{'User-Name' = [NAI]} = Request,
	Imsi = imsi_from_nai(NAI),
	case aaa_ue_fsm:get_pid_by_imsi(Imsi) of
	Pid when is_pid(Pid) ->
		aaa_ue_fsm:ev_rx_access_abort_session_answer(Pid, sta);
	undefined ->
		ok
	end,
	{ok, Msg};

handle_answer(#diameter_packet{msg = Msg}, _Request, _SvcName, Peer) ->
	lager:notice("STa unexpected answer from ~p: ~p~n", [Peer, Msg]),
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
	ok = aaa_diameter_sta:register_pending(Imsi, Kind, self()),
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
	       'EAP-Master-Session-Key' = EapMsk}.

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

log_eap_master_session_key(_NAI, []) ->
	ok;
log_eap_master_session_key(NAI, MSK) ->
	lager:info("STa DEA success includes EAP keying material imsi=~p "
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
	Method = aka_prime_method(),
	log_aka_prime_challenge(Identity, Method),
	aaa_eap_aka:challenge(Method, next_eap_id(EapId), Identity, Tuple);
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
	case maps:find(authorization, EAP) of
	{ok, Authorization} when is_binary(Authorization) ->
		case aaa_eap_aka:response_identity(Authorization) of
		undefined -> identity_binary(NAI);
		Identity -> Identity
		end;
	_ ->
		identity_binary(NAI)
	end.

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
	#{eap_identifier => EapId, authorization => Payload};
decode_standard_eap_payload(Payload) when is_binary(Payload) ->
	#{authorization => Payload};
decode_standard_eap_payload(_) ->
	#{}.

aka_identity_request(#{authorization := <<2, EapId, Len:16/integer-big, 1, _/binary>> = Payload})
		when Len =< byte_size(Payload) ->
	{ok, aaa_eap_aka:identity_request(aka_prime, next_eap_id(EapId))};
aka_identity_request(_) ->
	false.

aka_prime_method() ->
	{aka_prime, aaa_eap_aka:aka_prime_network_name()}.

log_aka_prime_challenge(Identity, {aka_prime, NetworkName}) ->
	lager:info("eap_aka_prime: building challenge imsi=~p access_if=sta kdf_input=~p auth_scheme=\"EAP-AKA'\"~n",
		   [Identity, NetworkName]),
	case NetworkName of
	<<"WLAN">> ->
		lager:warning("eap_aka_prime: AT_KDF_INPUT is legacy WLAN; check eap_aka_prime_network_name config~n");
	_ ->
		ok
	end.

log_eap_notification_response(EAP) ->
	Details = aaa_eap_aka:notification_response_details(maps:get(authorization, EAP, undefined)),
	case maps:get(valid, Details, false) of
	true ->
		lager:info("eap_aka_prime: notification response eap_id=~p notification_value=~p "
			   "notification_meaning=~p raw_payload_hex=~p~n",
			   [maps:get(eap_identifier, Details, undefined),
			    maps:get(notification_value, Details, undefined),
			    maps:get(notification_meaning, Details, undefined),
			    maps:get(raw_payload_hex, Details, undefined)]);
	false ->
		ok
	end.

user_name([NAI | _]) -> NAI;
user_name([]) -> "".

imsi_from_nai("") -> "";
imsi_from_nai(NAI) ->
	case string:find(NAI, "@") of
	nomatch -> NAI;
	_ -> conv:nai_to_imsi(NAI)
	end.

first_or_undefined([Value | _]) -> Value;
first_or_undefined([]) -> undefined.

service_selection(#'DER'{'Service-Selection' = [Value | _]}) ->
	Value;
service_selection(#'DER'{'AVP' = Avps}) ->
	first_or_undefined([Value || #diameter_avp{code = 493, vendor_id = 10415, data = Value} <- Avps]);
service_selection(_) ->
	undefined.

-ifdef(TEST).

dea_success_includes_eap_master_session_key_test() ->
	MSK = <<1:512>>,
	DEA = dea_response(<<"session">>, ?DIAMETER_APP_ID_STa, 1,
			   <<"aaa.localdomain">>, <<"localdomain">>,
			   <<"311435000070571">>, {ok, #{eap_msk => MSK}}),
	?assertEqual(?DIAMETER_SUCCESS, DEA#'DEA'.'Result-Code'),
	?assertEqual(MSK, DEA#'DEA'.'EAP-Master-Session-Key'),
	?assertEqual(64, byte_size(DEA#'DEA'.'EAP-Master-Session-Key')),
	?assertMatch(<<?EAP_CODE_SUCCESS, 1, 4:16/integer-big>>, DEA#'DEA'.'EAP-Payload').

dea_failure_does_not_include_eap_master_session_key_test() ->
	DEA = dea_response(<<"session">>, ?DIAMETER_APP_ID_STa, 1,
			   <<"aaa.localdomain">>, <<"localdomain">>,
			   <<"311435000070571">>, {error, ?DIAMETER_AUTHORIZATION_REJECTED}),
	?assertEqual([], DEA#'DEA'.'EAP-Master-Session-Key').

-endif.
