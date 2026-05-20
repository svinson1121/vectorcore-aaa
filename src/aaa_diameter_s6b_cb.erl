%%
%% The diameter application callback module configured by client.erl.
%%

% (C) 2023 by sysmocom - s.f.m.c. GmbH <info@sysmocom.de>
% Author: Pau Espin Pedrol <pespin@sysmocom.de>
%
% All Rights Reserved
%
% This program is free software; you can redistribute it and/or modify
% it under the terms of the GNU Affero General Public License as
% published by the Free Software Foundation; either version 3 of the
% License, or (at your option) any later version.
%
% This program is distributed in the hope that it will be useful,
% but WITHOUT ANY WARRANTY; without even the implied warranty of
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
% GNU General Public License for more details.
%
% You should have received a copy of the GNU Affero General Public License
% along with this program.  If not, see <https://www.gnu.org/licenses/>.
%
% Additional Permission under GNU AGPL version 3 section 7:
%
% If you modify this Program, or any covered work, by linking or
% combining it with runtime libraries of Erlang/OTP as released by
% Ericsson on https://www.erlang.org (or a modified version of these
% libraries), containing parts covered by the terms of the Erlang Public
% License (https://www.erlang.org/EPLICENSE), the licensors of this
% Program grant you additional permission to convey the resulting work
% without the need to license the runtime libraries of Erlang/OTP under
% the GNU Affero General Public License. Corresponding Source for a
% non-source form of such a combination shall include the source code
% for the parts of the runtime libraries of Erlang/OTP used as well as
% that of the covered work.


-module(aaa_diameter_s6b_cb).

-include_lib("diameter/include/diameter.hrl").
-include_lib("diameter_3gpp_ts29_273_s6b.hrl").

-include("conv.hrl").

%% diameter callbacks
-export([peer_up/3, peer_down/3, pick_peer/4, prepare_request/3, prepare_retransmit/3,
         handle_answer/4, handle_error/4, handle_request/3]).

-define(UNEXPECTED, erlang:error({unexpected, ?MODULE, ?LINE})).
-define(DIAMETER_SUCCESS, 2001).
-define(DIAMETER_AUTHORIZATION_REJECTED, 5003).
-define(DIAMETER_USER_UNKNOWN, 5030).
-define(DIAMETER_UNABLE_TO_COMPLY, 5012).

%% peer_up/3
peer_up(_SvcName, Peer, State) ->
    lager:info("Peer up: ~p~n", [Peer]),
    State.

%% peer_down/3
peer_down(_SvcName, Peer, State) ->
    lager:info("Peer down: ~p~n", [Peer]),
    State.

%% pick_peer/4
pick_peer([Peer | _], _, _SvcName, _State) ->
    {ok, Peer}.

%% prepare_request/3
prepare_request(#diameter_packet{msg = [ T | Avps ]}, _, {_, Caps})
  when is_list(Avps) ->
    #diameter_caps{origin_host = {OH, DH}, origin_realm = {OR, DR}} = Caps,
    {send,
     [T,
      {'Origin-Host', OH},
      {'Origin-Realm', OR},
      {'Destination-Host', [DH]},
      {'Destination-Realm', DR}
      | Avps]};
% TODO: is there a simple way to capture all the following requests?
prepare_request(#diameter_packet{msg = Req}, _, {_, Caps})
		when is_record(Req, 'RAR') ->
    #diameter_caps{origin_host = {OH, DH}, origin_realm = {OR, DR}} = Caps,
	Msg = Req#'RAR'{'Origin-Host' = OH,
                    'Origin-Realm' = OR,
                    'Destination-Realm' = DR,
                    'Destination-Host' = DH},
    lager:debug("S6b prepare_request: ~p~n", [Msg]),
	{send, Msg};
prepare_request(#diameter_packet{msg = Req}, _, {_, Caps})
		when is_record(Req, 'ASR') ->
    #diameter_caps{origin_host = {OH, DH}, origin_realm = {OR, DR}} = Caps,
	Msg = Req#'ASR'{'Origin-Host' = OH,
                    'Origin-Realm' = OR,
                    'Destination-Realm' = DR,
                    'Destination-Host' = DH},
    lager:debug("S6b prepare_request: ~p~n", [Msg]),
	{send, Msg}.

%% prepare_retransmit/3
prepare_retransmit(Packet, SvcName, Peer) ->
    prepare_request(Packet, SvcName, Peer).

%% handle_error/4
handle_error(Reason, Request, _SvcName, _Peer) when is_list(Request) ->
    lager:error("Request error: ~p~n", [Reason]),
    ?UNEXPECTED.

% 3GPP TS 29.273 9.1.2.2
handle_request(#diameter_packet{msg = Req, errors = Errors}, _SvcName, {_, Caps})
        when is_record(Req, 'AAR') ->
    lager:info("S6b Rx from ~p: ~p errors ~p~n", [Caps, Req, Errors]),
	% extract relevant fields from DIAMETER AAR
	#diameter_caps{origin_host = {OH,_}, origin_realm = {OR,_}} = Caps,
	#'AAR'{'Session-Id' = SessionId,
           'Auth-Application-Id' = AuthAppId,
           'Auth-Request-Type' = AuthReqType,
           'User-Name' = [NAI],
           'Service-Selection' = [Apn],
           'MIP6-Agent-Info' = AgentInfoOpt,
           'MIP6-Feature-Vector' = Mip6FeatureVectorOpt } = Req,
    DiaRC = case acceptable_request_errors(Errors) of
    true ->
        Imsi = normalize_imsi(conv:nai_to_imsi(NAI)),
        case aaa_ue_fsm:get_pid_by_imsi(Imsi) of
        Pid when is_pid(Pid) ->
            case aaa_ue_fsm:ev_rx_s6b_aar(Pid, {NAI, Apn, AgentInfoOpt, Mip6FeatureVectorOpt}) of
            ok ->
                lager:debug("Waiting for S6b AAA~n", []),
                receive
                    {aaa, PendingDiaRC} ->
                        lager:debug("Rx AAA with DiaRC=~p~n", [PendingDiaRC]),
                        PendingDiaRC
                after 30000 ->
                        #epdg_dia_rc{result_code = ?DIAMETER_UNABLE_TO_COMPLY}
                end;
            {error, Reason} ->
                lager:error("S6b AAR rejected by UE FSM for IMSI=~p reason=~p~n", [Imsi, Reason]),
                s6b_aar_error_result(Reason);
            Other ->
                lager:error("S6b AAR unexpected UE FSM result for IMSI=~p result=~p~n", [Imsi, Other]),
                #epdg_dia_rc{result_code = ?DIAMETER_UNABLE_TO_COMPLY}
            end;
        undefined ->
            lager:error("Error looking up FSM for IMSI=~p~n", [Imsi]),
            #epdg_dia_rc{result_code = ?DIAMETER_USER_UNKNOWN}
        end;
    false ->
        lager:error("S6b AAR has non-ignorable Diameter validation errors: ~p~n", [Errors]),
        #epdg_dia_rc{result_code = ?DIAMETER_UNABLE_TO_COMPLY}
    end,
    AuthzFields = s6b_aaa_authz_fields(DiaRC, Apn),
    Resp0 = #'AAA'{'Session-Id'= SessionId,
                  'Auth-Application-Id' = AuthAppId,
                  'Auth-Request-Type' = AuthReqType,
                  'Result-Code' = DiaRC#epdg_dia_rc.result_code,
                  'Origin-Host' = OH,
                  'Origin-Realm' = OR},
    Resp = apply_s6b_aaa_authz_fields(Resp0, AuthzFields),
    lager:info("S6b Tx to ~p: ~p~n", [Caps, Resp]),
    {reply, Resp};

% 3GPP TS 29.273 9.2.2.3.1 Session-Termination-Request (STR) Command:
handle_request(#diameter_packet{msg = Req, errors = Errors}, _SvcName, {_, Caps})
        when is_record(Req, 'STR') ->
    lager:info("S6b Rx from ~p: ~p errors ~p~n", [Caps, Req, Errors]),
    % extract relevant fields from DIAMETER STR:
    #diameter_caps{origin_host = {OH,_}, origin_realm = {OR,_}} = Caps,
    #'STR'{'Session-Id' = SessionId,
           'Auth-Application-Id' = _AuthAppId,
           'Termination-Cause' = _TermCause,
           'User-Name' = [UserName]} = Req,
    Imsi = normalize_imsi(conv:nai_to_imsi(UserName)),
    PidRes = aaa_ue_fsm:get_pid_by_imsi(Imsi),
    case {acceptable_request_errors(Errors), PidRes} of
    {true, PidRes} when is_pid(PidRes) ->
        case aaa_ue_fsm:ev_rx_s6b_str(PidRes) of
        ok ->
            lager:debug("Waiting for S6b STA~n", []),
            receive
                {sta, DiaRC} ->
                    ResultCode = DiaRC#epdg_dia_rc.result_code,
                    lager:debug("Rx STA with ResultCode=~p~n", [ResultCode])
            end;
        {ok, DiaRC} ->
            ResultCode = DiaRC#epdg_dia_rc.result_code;
        {error, Err} when is_integer(Err) ->
            ResultCode = Err;
        {error, _} ->
            ResultCode = ?DIAMETER_AUTHORIZATION_REJECTED
        end;
    {true, undefined} ->
        lager:error("Error looking up FSM for IMSI=~p~n", [Imsi]),
        ResultCode = ?DIAMETER_USER_UNKNOWN;
    {false, _} ->
        lager:error("S6b STR has non-ignorable Diameter validation errors: ~p~n", [Errors]),
        ResultCode = ?DIAMETER_UNABLE_TO_COMPLY
    end,
    % 3GPP TS 29.273 9.2.2.3.2 Session-Termination-Answer (STA) Command:
    Resp = #'STA'{'Session-Id' = SessionId,
                  'Result-Code' = ResultCode,
                  'Origin-Host' = OH,
                  'Origin-Realm' = OR},
    lager:info("S6b Tx to ~p: ~p~n", [Caps, Resp]),
    {reply, Resp};

handle_request(Packet, _SvcName, Peer) ->
    lager:error("S6b Rx unexpected msg from ~p: ~p~n", [Peer, Packet]),
    erlang:error({unexpected, ?MODULE, ?LINE}).

%% handle_answer/4
handle_answer(#diameter_packet{msg = Msg, errors = Errors}, Request, _SvcName, Peer) when is_record(Msg, 'RAA')  ->
    lager:info("S6b Rx RAA ~p: ~p/ Errors ~p ~n", [Peer, Msg, Errors]),
    % Obtain Imsi from originating Request:
    #'RAR'{'User-Name' = [NAI]} = Request,
    Imsi = conv:nai_to_imsi(NAI),
    PidRes = aaa_ue_fsm:get_pid_by_imsi(Imsi),
    #'RAA'{'Result-Code' = ResultCode} = Msg,
    DiaRC = #epdg_dia_rc{result_code = ResultCode},
    case conv:dia_rc_success(DiaRC) of
    ok ->
        aaa_ue_fsm:ev_rx_s6b_raa(PidRes, ok);
    _ ->
        aaa_ue_fsm:ev_rx_s6b_raa(PidRes, {error, DiaRC})
    end,
    {ok, Msg};

handle_answer(#diameter_packet{msg = Msg, errors = Errors}, Request, _SvcName, Peer) when is_record(Msg, 'ASA')  ->
    lager:info("S6b Rx ASA ~p: ~p/ Errors ~p ~n", [Peer, Msg, Errors]),
    % Obtain Imsi from originating Request:
    #'ASR'{'User-Name' = [NAI]} = Request,
    Imsi = conv:nai_to_imsi(NAI),
    PidRes = aaa_ue_fsm:get_pid_by_imsi(Imsi),
    #'ASA'{'Result-Code' = ResultCode} = Msg,
    DiaRC = #epdg_dia_rc{result_code = ResultCode},
    case conv:dia_rc_success(DiaRC) of
    ok ->
        aaa_ue_fsm:ev_rx_s6b_asa(PidRes, ok);
    _ ->
        aaa_ue_fsm:ev_rx_s6b_asa(PidRes, {error, DiaRC})
    end,
    {ok, Msg};

handle_answer(#diameter_packet{msg = Msg, errors = []}, _Request, _SvcName, Peer) ->
    lager:notice("S6b Rx unexpected ~p: ~p~n", [Peer, Msg]),
    {ok, Msg}.

%% ------------------------------------------------------------------
%% Internal helpers
%% ------------------------------------------------------------------

acceptable_request_errors(Errors) ->
    lists:all(fun acceptable_request_error/1, Errors).

acceptable_request_error({5001, #diameter_avp{name = 'Origin-State-Id'}}) ->
    true;
acceptable_request_error(_) ->
    false.

s6b_aar_error_result({timeout, _}) ->
    #epdg_dia_rc{result_code = ?DIAMETER_UNABLE_TO_COMPLY};
s6b_aar_error_result(timeout) ->
    #epdg_dia_rc{result_code = ?DIAMETER_UNABLE_TO_COMPLY};
s6b_aar_error_result(_) ->
    #epdg_dia_rc{result_code = ?DIAMETER_AUTHORIZATION_REJECTED}.

s6b_aaa_authz_fields(#epdg_dia_rc{result_code = ?DIAMETER_SUCCESS,
                                  s6b_authz = Authz}, Apn) when is_map(Authz) ->
    Fields0 = case maps:find(non_3gpp_user_data, Authz) of
    {ok, N3UA} -> s6b_aaa_authz_fields_from_n3ua(N3UA, Apn);
    error -> #{}
    end,
    Fields1 = maybe_put_if_absent('MIP6-Feature-Vector',
                                  maps:get(aar_mip6_feature_vector, Authz, []),
                                  Fields0),
    maybe_put('AN-Trusted', maps:get(an_trusted, Authz, []), Fields1);
s6b_aaa_authz_fields(_, _Apn) ->
    #{}.

s6b_aaa_authz_fields_from_n3ua([N3UA], Apn) ->
    #'Non-3GPP-User-Data'{'MIP6-Feature-Vector' = Mip6FeatureVector,
                           'Session-Timeout' = SessionTimeout,
                           'APN-Configuration' = ApnConfigs,
                           'Trace-Info' = TraceInfo} = N3UA,
    maybe_put('Trace-Info', TraceInfo,
    maybe_put('APN-Configuration', select_apn_config(ApnConfigs, Apn),
    maybe_put('Session-Timeout', SessionTimeout,
    maybe_put('MIP6-Feature-Vector', Mip6FeatureVector, #{}))));
s6b_aaa_authz_fields_from_n3ua(_, _Apn) ->
    #{}.

select_apn_config([], _Apn) ->
    [];
select_apn_config(ApnConfigs, []) ->
    [hd(ApnConfigs)];
select_apn_config(ApnConfigs, Apn) ->
    case [Config || #'APN-Configuration'{'Service-Selection' = ServiceSelection} = Config <- ApnConfigs,
                    ServiceSelection =:= Apn] of
    [Match | _] -> [Match];
    [] -> [hd(ApnConfigs)]
    end.

maybe_put(_Key, [], Acc) ->
    Acc;
maybe_put(Key, Value, Acc) ->
    maps:put(Key, Value, Acc).

maybe_put_if_absent(_Key, [], Acc) ->
    Acc;
maybe_put_if_absent(Key, Value, Acc) ->
    case maps:is_key(Key, Acc) of
    true -> Acc;
    false -> maps:put(Key, Value, Acc)
    end.

apply_s6b_aaa_authz_fields(Resp, Fields) ->
    Resp#'AAA'{'MIP6-Feature-Vector' = maps:get('MIP6-Feature-Vector', Fields, []),
               'Session-Timeout' = maps:get('Session-Timeout', Fields, []),
               'APN-Configuration' = maps:get('APN-Configuration', Fields, []),
               'AN-Trusted' = maps:get('AN-Trusted', Fields, []),
               'Trace-Info' = maps:get('Trace-Info', Fields, [])}.

normalize_imsi([$0 | Rest]) when length(Rest) =:= 15 ->
    case lists:all(fun is_digit/1, Rest) of
    true -> Rest;
    false -> [$0 | Rest]
    end;
normalize_imsi(Imsi) ->
    Imsi.

is_digit(Char) ->
    Char >= $0 andalso Char =< $9.
