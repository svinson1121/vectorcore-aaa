% UE FSM
% (C) 2023 by sysmocom
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

-module(aaa_ue_fsm).
-behaviour(gen_statem).
-define(NAME, aaa_ue_fsm).

-include_lib("diameter/include/diameter.hrl").
-include_lib("diameter_3gpp_ts29_229.hrl").
-include_lib("diameter_3gpp_ts29_273_s6b.hrl").
-include("conv.hrl").
-ifdef(TEST).
-include_lib("eunit/include/eunit.hrl").
-endif.

-export([start/1, stop/1]).
-export([init/1,callback_mode/0,terminate/3]).
-export([get_server_name_by_imsi/1, get_pid_by_imsi/1]).
-export([ev_rx_access_auth_request/2, ev_rx_access_auth_complete/2,
         ev_rx_access_reauth_answer/2, ev_rx_access_auth_request_cmd/2,
         ev_rx_access_session_termination/2, ev_rx_access_abort_session_answer/2,
         ev_rx_swm_der_auth_req/2, ev_rx_swm_der_auth_compl/2,
         ev_rx_swm_reauth_answer/2, ev_rx_swm_auth_request/1,
         ev_rx_swm_str/1, ev_rx_swm_asa/1,
         ev_rx_swx_maa/2, ev_rx_swx_saa/2, ev_rx_swx_ppr/2, ev_rx_swx_rtr/1,
         ev_rx_s6b_aar/2, ev_rx_s6b_str/1, ev_rx_s6b_raa/2, ev_rx_s6b_asa/2]).
-export([state_new/3,
         state_wait_swx_maa/3,
         state_wait_swx_saa/3,
         state_authenticated/3,
         state_authenticated_wait_swx_saa/3,
         state_dereg_net_initiated_wait_s6b_asa/3,
         state_dereg_net_initiated_wait_swm_asa/3]).

-define(TIMEOUT_VAL_WAIT_S6b_ANSWER, 10000).
-define(TIMEOUT_VAL_WAIT_SWm_ANSWER, 10000).
-define(TIMEOUT_VAL_WAIT_S6b_AAR_AUTH, 30000).
-define(EAP_CODE_RESPONSE, 2).
-define(EAP_TYPE_AKA, 23).
-define(EAP_TYPE_AKA_PRIME, 50).
-define(EAP_AKA_SUBTYPE_CHALLENGE, 1).

-record(ue_fsm_data, {
        imsi                       :: string(),
        nai                        :: string(),
        apn                        :: string(),
        access_if                  :: swm | sta | undefined,
        access_type                :: s2b | s2a | undefined,
        access_gateway_host        :: string() | undefined,
        access_session_id          :: string() | undefined,
	        access_auth_final = false  :: boolean(),
	        access_sess_active = false :: boolean(),
	        epdg_sess_active = false   :: boolean(),
	        pgw_sess_active  = false   :: boolean(),
	        access_auth_identity        :: binary() | undefined,
	        access_auth_tuple          :: #epdg_auth_tuple{} | undefined,
	        s6b_resp_pid               :: pid(),
	        s6b_authz = #{}            :: map()
	        }).

get_server_name_by_imsi(Imsi) ->
        ServerName = lists:concat([?NAME, "_", Imsi]),
        list_to_atom(ServerName).

get_pid_by_imsi(Imsi) ->
        ServerName = get_server_name_by_imsi(Imsi),
        whereis(ServerName).

start(Imsi) ->
        ServerName = get_server_name_by_imsi(Imsi),
        lager:info("ue_fsm start_link(~p)~n", [ServerName]),
        gen_statem:start({local, ServerName}, ?MODULE, Imsi, [{debug, [trace]}]).

stop(SrvRef) ->
        try
                gen_statem:stop(SrvRef)
        catch
        exit:Err ->
                {error, Err}
        end.

ev_rx_swm_der_auth_req(Pid, {PdpTypeNr, Apn, EAP}) ->
        lager:info("ue_fsm ev_rx_swm_der_auth_req~n", []),
        ev_rx_access_auth_request(Pid, {swm, s2b, undefined, undefined, undefined, Apn, PdpTypeNr, EAP, []}).

ev_rx_access_auth_request(Pid, {AccessIf, AccessType, GatewayHost, SessionId, NAI, Apn, PdpTypeNr, EAP, ExtraAVPs}) ->
        lager:info("ue_fsm ev_rx_access_auth_request access_if=~p access_type=~p~n", [AccessIf, AccessType]),
        try
                gen_statem:call(Pid, {rx_access_auth_request, AccessIf, AccessType, GatewayHost,
                                      SessionId, NAI, Apn, PdpTypeNr, EAP, ExtraAVPs})
        catch
        exit:Err ->
                {error, Err}
        end.
ev_rx_swm_reauth_answer(Pid, Result) ->
        lager:info("ue_fsm ev_rx_swm_reauth_answer~n", []),
        ev_rx_access_reauth_answer(Pid, {swm, Result}).

ev_rx_access_reauth_answer(Pid, {AccessIf, Result}) ->
        lager:info("ue_fsm ev_rx_access_reauth_answer access_if=~p~n", [AccessIf]),
        try
                gen_statem:call(Pid, {rx_access_reauth_answer, AccessIf, Result})
        catch
        exit:Err ->
                {error, Err}
        end.

ev_rx_swm_auth_request(Pid) ->
        lager:info("ue_fsm ev_rx_swm_auth_request~n", []),
        ev_rx_access_auth_request_cmd(Pid, swm).

ev_rx_access_auth_request_cmd(Pid, AccessIf) ->
        lager:info("ue_fsm ev_rx_access_auth_request_cmd access_if=~p~n", [AccessIf]),
        try
                gen_statem:call(Pid, {rx_access_auth_request_cmd, AccessIf})
        catch
        exit:Err ->
                {error, Err}
        end.

ev_rx_swm_der_auth_compl(Pid, Apn) ->
        lager:info("ue_fsm ev_rx_swm_der_auth_compl~n", []),
        ev_rx_access_auth_complete(Pid, {swm, Apn, ok}).

ev_rx_access_auth_complete(Pid, {AccessIf, Apn, Result}) ->
        lager:info("ue_fsm ev_rx_access_auth_complete access_if=~p~n", [AccessIf]),
        try
                gen_statem:call(Pid, {rx_access_auth_complete, AccessIf, Apn, Result})
        catch
        exit:Err ->
                {error, Err}
        end.

ev_rx_swm_str(Pid) ->
        lager:info("ue_fsm ev_rx_swm_str~n", []),
        ev_rx_access_session_termination(Pid, swm).

ev_rx_access_session_termination(Pid, AccessIf) ->
        lager:info("ue_fsm ev_rx_access_session_termination access_if=~p~n", [AccessIf]),
        try
                gen_statem:call(Pid, {rx_access_session_termination, AccessIf})
        catch
        exit:Err ->
                {error, Err}
        end.

ev_rx_swm_asa(Pid) ->
        lager:info("ue_fsm ev_rx_swm_asa~n", []),
        ev_rx_access_abort_session_answer(Pid, swm).

ev_rx_access_abort_session_answer(Pid, AccessIf) ->
        lager:info("ue_fsm ev_rx_access_abort_session_answer access_if=~p~n", [AccessIf]),
        try
                gen_statem:call(Pid, {rx_access_abort_session_answer, AccessIf})
        catch
        exit:Err ->
                {error, Err}
        end.

ev_rx_swx_maa(Pid, Result) ->
        lager:info("ue_fsm ev_rx_swx_maa~n", []),
        try
                gen_statem:call(Pid, {rx_swx_maa, Result})
        catch
        exit:Err ->
                {error, Err}
        end.

ev_rx_swx_saa(Pid, Result) ->
        lager:info("ue_fsm ev_rx_swx_saa~n", []),
        try
                gen_statem:call(Pid, {rx_swx_saa, Result})
        catch
        exit:Err ->
                {error, Err}
        end.

ev_rx_swx_ppr(Pid, PGWAddresses) ->
        lager:info("ue_fsm ev_rx_swx_ppr~n", []),
        try
                gen_statem:call(Pid, {rx_swx_ppr, PGWAddresses})
        catch
        exit:Err ->
                {error, Err}
        end.

ev_rx_swx_rtr(Pid) ->
        lager:info("ue_fsm ev_rx_swx_rtr~n", []),
        try
                gen_statem:call(Pid, rx_swx_rtr)
        catch
        exit:Err ->
                {error, Err}
        end.

ev_rx_s6b_aar(Pid, {NAI, Apn, AgentInfoOpt}) ->
        ev_rx_s6b_aar(Pid, {NAI, Apn, AgentInfoOpt, []});
ev_rx_s6b_aar(Pid, {NAI, Apn, AgentInfoOpt, Mip6FeatureVectorOpt}) ->
        lager:info("ue_fsm ev_rx_s6b_aar: ~p ~p ~p ~p~n", [NAI, Apn, AgentInfoOpt, Mip6FeatureVectorOpt]),
        try
                gen_statem:call(Pid, {rx_s6b_aar, NAI, Apn, AgentInfoOpt, Mip6FeatureVectorOpt}, ?TIMEOUT_VAL_WAIT_S6b_AAR_AUTH)
        catch
        exit:Err ->
                {error, Err}
        end.

ev_rx_s6b_raa(Pid, Result) ->
        lager:info("ue_fsm ev_rx_s6b_raa: ~p~n", [Result]),
        try
                gen_statem:call(Pid, {rx_s6b_raa, Result})
        catch
        exit:Err ->
                {error, Err}
        end.

ev_rx_s6b_asa(Pid, Result) ->
        lager:info("ue_fsm ev_rx_s6b_asa: ~p~n", [Result]),
        try
                gen_statem:call(Pid, {rx_s6b_asa, Result})
        catch
        exit:Err ->
                {error, Err}
        end.

ev_rx_s6b_str(Pid) ->
        lager:info("ue_fsm ev_rx_s6b_str~n", []),
        try
                gen_statem:call(Pid, rx_s6b_str)
        catch
        exit:Err ->
                {error, Err}
        end.

%% ------------------------------------------------------------------
%% Internal helpers
%% ------------------------------------------------------------------

tx_access_auth_response(#ue_fsm_data{access_if = swm, imsi = Imsi}, Result) ->
        aaa_diameter_swm:tx_dea_auth_response(Imsi, Result);
tx_access_auth_response(#ue_fsm_data{access_if = sta, imsi = Imsi}, Result) ->
        aaa_diameter_sta:tx_dea_auth_response(Imsi, Result);
tx_access_auth_response(Data, Result) ->
        lager:error("No access auth response sender for access_if=~p result=~p~n",
                    [Data#ue_fsm_data.access_if, Result]),
        {error, unsupported_access_if}.

access_auth_response_result(#ue_fsm_data{access_auth_final = true}, {ok, _AuthTuples}) ->
        ok;
access_auth_response_result(_Data, Result) ->
        Result.

finalize_access_auth(#ue_fsm_data{access_auth_final = true} = Data, {ok, _AuthTuples}) ->
	        Data#ue_fsm_data{access_sess_active = true,
	                          access_auth_final = false};
finalize_access_auth(Data, _Result) ->
	        Data.

remember_access_auth_tuple(Data, {ok, [#epdg_auth_tuple{} = Tuple | _]}) ->
	        Data#ue_fsm_data{access_auth_tuple = Tuple};
remember_access_auth_tuple(Data, _) ->
	        Data#ue_fsm_data{access_auth_tuple = undefined,
	                          access_auth_identity = undefined}.

access_auth_finalized(#ue_fsm_data{access_auth_final = true}, {ok, _AuthTuples}) ->
	        true;
access_auth_finalized(_Data, _Result) ->
	        false.

tx_access_auth_complete_response(#ue_fsm_data{access_if = swm, imsi = Imsi}, Result) ->
        aaa_diameter_swm:tx_dea_auth_compl_response(Imsi, Result);
tx_access_auth_complete_response(#ue_fsm_data{access_if = sta, imsi = Imsi}, Result) ->
        aaa_diameter_sta:tx_dea_auth_compl_response(Imsi, Result);
tx_access_auth_complete_response(Data, Result) ->
        lager:error("No access auth complete response sender for access_if=~p result=~p~n",
                    [Data#ue_fsm_data.access_if, Result]),
        {error, unsupported_access_if}.

tx_access_reauth_request(#ue_fsm_data{access_if = swm, imsi = Imsi}) ->
        aaa_diameter_swm:tx_reauth_request(Imsi);
tx_access_reauth_request(#ue_fsm_data{access_if = sta, imsi = Imsi}) ->
        aaa_diameter_sta:tx_reauth_request(Imsi);
tx_access_reauth_request(Data) ->
        lager:error("No access reauth request sender for access_if=~p~n",
                    [Data#ue_fsm_data.access_if]),
        {error, unsupported_access_if}.

tx_access_session_termination_answer(#ue_fsm_data{access_if = swm, imsi = Imsi}, DiaRC) ->
        aaa_diameter_swm:tx_session_termination_answer(Imsi, DiaRC);
tx_access_session_termination_answer(#ue_fsm_data{access_if = sta, imsi = Imsi}, DiaRC) ->
        aaa_diameter_sta:tx_session_termination_answer(Imsi, DiaRC);
tx_access_session_termination_answer(Data, DiaRC) ->
        lager:error("No access termination answer sender for access_if=~p dia_rc=~p~n",
                    [Data#ue_fsm_data.access_if, DiaRC]),
        {error, unsupported_access_if}.

tx_access_abort_session_request(#ue_fsm_data{access_if = swm, imsi = Imsi}) ->
        aaa_diameter_swm:tx_as_request(Imsi);
tx_access_abort_session_request(#ue_fsm_data{access_if = sta, imsi = Imsi}) ->
        aaa_diameter_sta:tx_as_request(Imsi);
tx_access_abort_session_request(Data) ->
        lager:error("No access abort-session request sender for access_if=~p~n",
                    [Data#ue_fsm_data.access_if]),
        {error, unsupported_access_if}.

s6b_authz_for_aaa(Data, Mip6FeatureVectorOpt) ->
        Authz0 = Data#ue_fsm_data.s6b_authz,
        Authz1 = case Mip6FeatureVectorOpt of
        [] -> Authz0;
        _ -> maps:put(aar_mip6_feature_vector, Mip6FeatureVectorOpt, Authz0)
        end,
        case Data#ue_fsm_data.access_if of
        sta -> maps:put(an_trusted, [?'AN-TRUSTED_TRUSTED'], Authz1);
        _ -> Authz1
        end.

merge_s6b_authz(BaseAuthz, HssAuthz) ->
        maps:fold(fun merge_s6b_authz_field/3, BaseAuthz, HssAuthz).

merge_s6b_authz_field(non_3gpp_user_data, [], Acc) ->
        Acc;
merge_s6b_authz_field(Key, Value, Acc) ->
        maps:put(Key, Value, Acc).

handle_s6b_aar({Pid, _Tag} = From, NAI, Apn, AgentInfoOpt, Mip6FeatureVectorOpt, Data) ->
        %% TODO: Actually here we'd need to send SAR based on whether
        %% PGW Address changed in AgentInfoOpt, which for sure didn't in
        %% current status of vectorcore-aaa...
        case Data#ue_fsm_data.pgw_sess_active of
        false ->
                case aaa_diameter_swx:server_assignment_request(Data#ue_fsm_data.imsi,
                                                                ?'DIAMETER_CX_SERVER-ASSIGNMENT-TYPE_PGW_UPDATE',
                                                                Apn, AgentInfoOpt) of
                ok ->   Data1 = Data#ue_fsm_data{s6b_resp_pid = Pid,
                                                  nai = NAI,
                                                  apn = Apn,
                                                  s6b_authz = s6b_authz_for_aaa(Data, Mip6FeatureVectorOpt)},
                        {next_state, state_authenticated_wait_swx_saa, Data1, [{reply,From,ok}]};
                {error, Err} -> {keep_state, Data, [{reply,From,{error, Err}}]}
                end;
        true ->
                aaa_diameter_s6b:tx_aa_answer(Pid, #epdg_dia_rc{result_code = 2001,
                                                                 s6b_authz = s6b_authz_for_aaa(Data, Mip6FeatureVectorOpt)}),
                {keep_state, Data, [{reply,From,ok}]}
        end.

is_eap_aka_challenge_response(<< ?EAP_CODE_RESPONSE, _EapId, Len:16/integer-big,
                                  ?EAP_TYPE_AKA, ?EAP_AKA_SUBTYPE_CHALLENGE,
                                  _Reserved:16/integer-big, _Attrs/binary >> = Payload)
        when Len =< byte_size(Payload) ->
        true;
is_eap_aka_challenge_response(<< ?EAP_CODE_RESPONSE, _EapId, Len:16/integer-big,
                                  ?EAP_TYPE_AKA_PRIME, ?EAP_AKA_SUBTYPE_CHALLENGE,
                                  _Reserved:16/integer-big, _Attrs/binary >> = Payload)
        when Len =< byte_size(Payload) ->
        true;
is_eap_aka_challenge_response(_) ->
	        false.

access_auth_method(sta) ->
        {aka_prime, aka_prime_network_name()};
access_auth_method(_) ->
        aka.

swx_auth_scheme(sta) ->
        "EAP-AKA'";
swx_auth_scheme(_) ->
        "EAP-AKA".

swx_auth_context(sta) ->
        [aka_prime_network_name()];
swx_auth_context(_) ->
        [].

aka_prime_network_name() ->
        aaa_eap_aka:aka_prime_network_name().

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

access_auth_identity(Identity, _EAP, _NAI) when is_binary(Identity) ->
	Identity;
access_auth_identity(_Identity, EAP, NAI) ->
	eap_identity(EAP, NAI).

log_eap_aka_challenge_response_validation(#ue_fsm_data{imsi = Imsi}, AccessIf, Validation) ->
	FinalDecision = case maps:get(valid, Validation, false) of
	true -> authenticated;
	false -> rejected
	end,
	lager:info("eap_aka_prime: challenge response validation imsi=~p access_if=~p eap_identifier=~p "
	           "has_at_res=~p at_res_hex=~p expected_xres_hex=~p res_match=~p "
	           "has_at_mac=~p at_mac_hex=~p calculated_mac_hex=~p mac_match=~p "
	           "k_aut_len=~p ck_len=~p ik_len=~p kdf_input=~p identity_for_key_derivation=~p "
	           "final_decision=~p failure_reason=~p~n",
	           [Imsi, AccessIf,
	            maps:get(eap_identifier, Validation, undefined),
	            maps:get(has_at_res, Validation, false),
	            hex(maps:get(at_res, Validation, undefined)),
	            hex(maps:get(expected_xres, Validation, undefined)),
	            maps:get(res_match, Validation, false),
	            maps:get(has_at_mac, Validation, false),
	            hex(maps:get(at_mac, Validation, undefined)),
	            hex(maps:get(calculated_mac, Validation, undefined)),
	            maps:get(mac_match, Validation, false),
	            binary_len(maps:get(k_aut, Validation, undefined)),
	            binary_len(maps:get(ck, Validation, undefined)),
	            binary_len(maps:get(ik, Validation, undefined)),
	            maps:get(kdf_input, Validation, undefined),
	            maps:get(identity_for_key_derivation, Validation, undefined),
	            FinalDecision,
	            maps:get(failure_reason, Validation, undefined)]).

log_eap_keying_material_available(#ue_fsm_data{imsi = Imsi}, Validation) ->
	lager:info("eap_aka_prime: authentication keying material available imsi=~p "
	           "msk_len=~p emsk_len=~p~n",
	           [Imsi,
	            binary_len(maps:get(msk, Validation, undefined)),
	            binary_len(maps:get(emsk, Validation, undefined))]).

hex(Bin) when is_binary(Bin) ->
	list_to_binary([io_lib:format("~2.16.0B", [Byte]) || <<Byte>> <= Bin]);
hex(_) ->
	undefined.

binary_len(Bin) when is_binary(Bin) ->
	byte_size(Bin);
binary_len(_) ->
	undefined.

handle_eap_aka_challenge_response({_Pid, _Tag} = From, AccessIf, AccessType, GatewayHost,
	                           SessionId, NAI, Apn, EAP,
	                           #ue_fsm_data{access_auth_tuple = Tuple,
	                                        access_auth_identity = AuthIdentity} = Data)
		when Tuple =/= undefined ->
	Authorization = maps:get(authorization, EAP),
	Identity = access_auth_identity(AuthIdentity, EAP, NAI),
	Method = access_auth_method(AccessIf),
	Validation = aaa_eap_aka:verify_challenge_response_details(Method, Authorization, Identity, Tuple),
	log_eap_aka_challenge_response_validation(Data, AccessIf, Validation),
	case maps:get(valid, Validation, false) of
	true ->
		log_eap_keying_material_available(Data, Validation),
		KeyingMaterial = #{eap_msk => maps:get(msk, Validation),
		                   eap_emsk => maps:get(emsk, Validation)},
		Data1 = Data#ue_fsm_data{nai = NAI,
		                          apn = Apn,
		                          access_if = AccessIf,
		                          access_type = AccessType,
		                          access_gateway_host = GatewayHost,
		                          access_session_id = SessionId,
		                          access_auth_tuple = undefined,
		                          access_auth_identity = undefined,
		                          access_sess_active = true},
		tx_access_auth_response(Data1, {ok, KeyingMaterial}),
		case aaa_diameter_swx:server_assignment_request(Data1#ue_fsm_data.imsi, 1,
		                                                Data1#ue_fsm_data.apn, []) of
		ok -> {next_state, state_wait_swx_saa, Data1, [{reply,From,ok}]};
		{error, Err} -> {keep_state, Data1, [{reply,From,{error, Err}}]}
		end;
	false ->
		tx_access_auth_response(Data, {error, 5003}),
		{keep_state, Data#ue_fsm_data{access_auth_tuple = undefined,
		                               access_auth_identity = undefined}, [{reply,From,ok}]}
	end;
handle_eap_aka_challenge_response(From, _AccessIf, _AccessType, _GatewayHost,
	                           _SessionId, _NAI, _Apn, _EAP, Data) ->
	lager:info("eap_aka_prime: challenge response validation imsi=~p res_match=false mac_match=false final_decision=rejected failure_reason=missing_auth_tuple~n",
	           [Data#ue_fsm_data.imsi]),
	tx_access_auth_response(Data, {error, 5003}),
	{keep_state, Data, [{reply,From,ok}]}.

%% ------------------------------------------------------------------
%% gen_statem Function Definitions
%% ------------------------------------------------------------------

init(Imsi) ->
        lager:info("ue_fsm init(~p)~n", [Imsi]),
        Data = #ue_fsm_data{imsi = Imsi},
        {ok, state_new, Data}.

callback_mode() ->
        [state_functions, state_enter].

terminate(Reason, State, Data) ->
        lager:info("terminating ~p with reason ~p state=~p, ~p~n", [?MODULE, Reason, State, Data]),
        ok.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% state_new:
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

state_new(enter, _OldState, Data) ->
        {keep_state, Data};

state_new({call, From}, {rx_access_auth_request, AccessIf, AccessType, GatewayHost,
	                         SessionId, NAI, Apn, PdpTypeNr, EAP, _ExtraAVPs}, Data) ->
	        lager:info("ue_fsm state_new event=rx_access_auth_request access_if=~p access_type=~p apn=~p, ~p~n",
	                   [AccessIf, AccessType, Apn, Data]),
	        case maps:find(authorization, EAP) of
	        {ok, Authorization} when is_binary(Authorization) -> Authorization;
	        error -> Authorization = []
	        end,
	        case is_eap_aka_challenge_response(Authorization) of
	        true ->
	                handle_eap_aka_challenge_response(From, AccessIf, AccessType, GatewayHost,
	                                                  SessionId, NAI, Apn, EAP, Data);
	        false ->
	        AuthIdentity = eap_identity(EAP, NAI),
	        Data1 = Data#ue_fsm_data{nai = NAI,
	                                  apn = Apn,
	                                  access_if = AccessIf,
	                                  access_type = AccessType,
	                                  access_gateway_host = GatewayHost,
                                  access_session_id = SessionId,
	                                  access_auth_identity = AuthIdentity,
	                                  access_auth_final = is_eap_aka_challenge_response(Authorization)},
	        case aaa_diameter_swx:multimedia_auth_request(Data#ue_fsm_data.imsi, 1, 1,
	                                                      swx_auth_scheme(AccessIf),
	                                                      PdpTypeNr, Authorization,
	                                                      swx_auth_context(AccessIf)) of
	        ok -> {next_state, state_wait_swx_maa, Data1, [{reply,From,ok}]};
	        {error, Err} -> {keep_state, Data1, [{reply,From,{error, Err}}]}
	        end
	        end;

state_new({call, From}, {rx_access_auth_complete, AccessIf, Apn, _Result}, Data) ->
        lager:info("ue_fsm state_new event=rx_access_auth_complete access_if=~p apn=~p, ~p~n",
                   [AccessIf, Apn, Data]),
        Data1 = Data#ue_fsm_data{access_if = AccessIf, apn = Apn},
        case aaa_diameter_swx:server_assignment_request(Data#ue_fsm_data.imsi, 1, Apn, []) of
        ok -> {next_state, state_wait_swx_saa, Data1, [{reply,From,ok}]};
        {error, Err} -> {keep_state, Data1, [{reply,From,{error, Err}}]}
        end;

state_new({call, From}, {rx_s6b_aar, _NAI, _Apn, _AgentInfoOpt, _Mip6FeatureVectorOpt}, #ue_fsm_data{access_if = undefined} = Data) ->
        lager:info("ue_fsm state_new event=rx_s6b_aar without active access auth, ~p~n", [Data]),
        DiaRC = #epdg_dia_rc{result_code = 5002}, %% UNKNOWN_SESSION_ID
        {keep_state, Data, [{reply,From,{error, DiaRC}}]};

state_new({call, _From}, {rx_s6b_aar, NAI, Apn, AgentInfoOpt, Mip6FeatureVectorOpt},
          #ue_fsm_data{access_sess_active = false} = Data) ->
        lager:info("ue_fsm state_new event=rx_s6b_aar postponed until access auth completes NAI=~p Apn=~p AgentInfo=~p Mip6FeatureVector=~p, ~p~n",
                   [NAI, Apn, AgentInfoOpt, Mip6FeatureVectorOpt, Data]),
        {keep_state, Data, [postpone]};

state_new({call, From}, {rx_s6b_aar, NAI, Apn, AgentInfoOpt, Mip6FeatureVectorOpt}, Data) ->
        lager:info("ue_fsm state_new event=rx_s6b_aar after access auth completed NAI=~p Apn=~p AgentInfo=~p Mip6FeatureVector=~p, ~p~n",
                   [NAI, Apn, AgentInfoOpt, Mip6FeatureVectorOpt, Data]),
        handle_s6b_aar(From, NAI, Apn, AgentInfoOpt, Mip6FeatureVectorOpt, Data);

state_new({call, From}, rx_s6b_str, Data) ->
        lager:info("ue_fsm state_new event=rx_s6b_str without active S6b session, ~p~n", [Data]),
        DiaRC = #epdg_dia_rc{result_code = 5002}, %% UNKNOWN_SESSION_ID
        {keep_state, Data, [{reply,From,{error, DiaRC}}]};

state_new({call, From}, rx_swx_rtr, Data) ->
        lager:info("ue_fsm state_new event=rx_swx_rtr ~p~n", [Data]),
        %% No need to inform anybody else, tear down FSM:
        {stop_and_reply, normal, [{reply,From,ok}], Data}.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% state_wait_swx_maa:
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

state_wait_swx_maa(enter, _OldState, Data) ->
        {keep_state, Data};

state_wait_swx_maa({call, From}, {rx_swx_maa, Result}, Data) ->
        lager:info("ue_fsm state_wait_swx_maa event=rx_swx_maa, ~p~n", [Data]),
	        AccessResult = access_auth_response_result(Data, Result),
	        tx_access_auth_response(Data, AccessResult),
	        Data1 = remember_access_auth_tuple(finalize_access_auth(Data, Result), Result),
	        case access_auth_finalized(Data, Result) of
        true ->
                case aaa_diameter_swx:server_assignment_request(Data1#ue_fsm_data.imsi, 1,
                                                                Data1#ue_fsm_data.apn, []) of
                ok -> {next_state, state_wait_swx_saa, Data1, [{reply,From,ok}]};
                {error, Err} -> {next_state, state_new, Data1, [{reply,From,{error, Err}}]}
                end;
        false ->
                {next_state, state_new, Data1, [{reply,From,ok}]}
        end;

state_wait_swx_maa({call, _From}, {rx_s6b_aar, NAI, Apn, AgentInfoOpt, Mip6FeatureVectorOpt}, Data) ->
        lager:info("ue_fsm state_wait_swx_maa event=rx_s6b_aar postponed until access auth completes NAI=~p Apn=~p AgentInfo=~p Mip6FeatureVector=~p, ~p~n",
                   [NAI, Apn, AgentInfoOpt, Mip6FeatureVectorOpt, Data]),
        {keep_state, Data, [postpone]};

state_wait_swx_maa({call, From}, rx_s6b_str, Data) ->
        lager:info("ue_fsm state_wait_swx_maa event=rx_s6b_str without active S6b session, ~p~n", [Data]),
        DiaRC = #epdg_dia_rc{result_code = 5002}, %% UNKNOWN_SESSION_ID
        {keep_state, Data, [{reply,From,{error, DiaRC}}]};

state_wait_swx_maa({call, From}, rx_swx_rtr, Data) ->
        lager:info("ue_fsm state_wait_swx_maa event=rx_swx_rtr ~p~n", [Data]),
        %% No need to inform anybody else, tear down FSM:
        {stop_and_reply, normal, [{reply,From,ok}], Data}.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% state_wait_swx_saa:
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

state_wait_swx_saa(enter, _OldState, Data) ->
        {keep_state, Data};

state_wait_swx_saa({call, From}, {rx_swx_saa, Result}, Data) ->
        lager:info("ue_fsm state_wait_swx_saa event=rx_swx_saa ~p, ~p~n", [Result, Data]),
        case Result of
        {error, _SAType, DiaRC} ->
                tx_access_auth_complete_response(Data, {error, DiaRC}),
                {next_state, state_new, Data, [{reply,From,ok}]};
        {ok, _SAType, ResInfo} ->
                tx_access_auth_complete_response(Data, {ok, ResInfo}),
                Data1 = Data#ue_fsm_data{s6b_authz = ResInfo},
                {next_state, state_authenticated, Data1, [{reply,From,ok}]}
        end;

state_wait_swx_saa({call, _From}, {rx_s6b_aar, NAI, Apn, AgentInfoOpt, Mip6FeatureVectorOpt}, Data) ->
        lager:info("ue_fsm state_wait_swx_saa event=rx_s6b_aar postponed until access auth completes NAI=~p Apn=~p AgentInfo=~p Mip6FeatureVector=~p, ~p~n",
                   [NAI, Apn, AgentInfoOpt, Mip6FeatureVectorOpt, Data]),
        {keep_state, Data, [postpone]};

state_wait_swx_saa({call, From}, rx_s6b_str, Data) ->
        lager:info("ue_fsm state_wait_swx_saa event=rx_s6b_str without active S6b session, ~p~n", [Data]),
        DiaRC = #epdg_dia_rc{result_code = 5002}, %% UNKNOWN_SESSION_ID
        {keep_state, Data, [{reply,From,{error, DiaRC}}]};

state_wait_swx_saa({call, From}, rx_swx_rtr, Data) ->
        lager:info("ue_fsm state_wait_swx_saa event=rx_swx_rtr ~p~n", [Data]),
        %% No need to inform anybody else, tear down FSM:
        {stop_and_reply, normal, [{reply,From,ok}], Data}.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% state_authenticated:
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

state_authenticated(enter, _OldState, Data) ->
        % Keep epdg_sess_active as a SWm compatibility alias during migration.
        EpdgSessActive = Data#ue_fsm_data.access_if =:= swm,
        Data1 = Data#ue_fsm_data{access_sess_active = true,
                                  epdg_sess_active = EpdgSessActive},
        {keep_state, Data1};

state_authenticated({call, {_Pid, _Tag} = From}, {rx_s6b_aar, NAI, Apn, AgentInfoOpt, Mip6FeatureVectorOpt}, Data) ->
        lager:info("ue_fsm state_authenticated event=rx_s6b_aar NAI=~p Apn=~p AgentInfo=~p Mip6FeatureVector=~p, ~p~n",
                   [NAI, Apn, AgentInfoOpt, Mip6FeatureVectorOpt, Data]),
        handle_s6b_aar(From, NAI, Apn, AgentInfoOpt, Mip6FeatureVectorOpt, Data);


state_authenticated({call, From}, {rx_access_session_termination, AccessIf}, Data) ->
        lager:info("ue_fsm state_authenticated event=rx_access_session_termination access_if=~p, ~p~n",
                   [AccessIf, Data]),
        case {Data#ue_fsm_data.access_sess_active, Data#ue_fsm_data.pgw_sess_active} of
        {false, _} -> %% The access session is not active...
                DiaRC = 5002, %% UNKNOWN_SESSION_ID
                {keep_state, Data, [{reply,From,{error, DiaRC}}]};
        {true, true} -> %% The other session is still active, no need to send SAR Type=USER_DEREGISTRATION
                lager:info("ue_fsm state_authenticated event=rx_access_session_termination: PGW session still active, skip updating the HSS~n", []),
                Data1 = Data#ue_fsm_data{access_sess_active = false, epdg_sess_active = false},
                {keep_state, Data1, [{reply,From,{ok, 2001}}]};
        {true, false} -> %% All sessions will now be gone, trigger SAR Type=USER_DEREGISTRATION
                case aaa_diameter_swx:server_assignment_request(Data#ue_fsm_data.imsi,
                                                                ?'DIAMETER_CX_SERVER-ASSIGNMENT-TYPE_USER_DEREGISTRATION',
                                                                Data#ue_fsm_data.apn, []) of
                ok ->   {next_state, state_authenticated_wait_swx_saa, Data, [{reply,From,ok}]};
                {error, _Err} ->
                        DiaRC = 5002, %% UNKNOWN_SESSION_ID
                        {keep_state, Data, [{reply,From,{error, DiaRC}}]}
                end
        end;

state_authenticated({call, {Pid, _Tag} = From}, rx_s6b_str, Data) ->
        lager:info("ue_fsm state_authenticated event=rx_s6b_str, ~p~n", [Data]),
        case {Data#ue_fsm_data.pgw_sess_active, Data#ue_fsm_data.access_sess_active} of
        {false, _} -> %% The S6b session is not active...
                DiaRC = #epdg_dia_rc{result_code = 5002}, %% UNKNOWN_SESSION_ID
                {keep_state, Data, [{reply,From,{error, DiaRC}}]};
        {true, true} -> %% The other session is still active, no need to send SAR Type=USER_DEREGISTRATION
                lager:info("ue_fsm state_authenticated event=rx_s6b_str: ePDG session still active, skip updating the HSS~n", []),
                Data1 = Data#ue_fsm_data{pgw_sess_active = false},
                DiaRC = #epdg_dia_rc{result_code = 2001}, %% SUCCESS
                {keep_state, Data1, [{reply,From,{ok, DiaRC}}]};
        {true, false} -> %% All sessions will now be gone, trigger SAR Type=USER_DEREGISTRATION
                case aaa_diameter_swx:server_assignment_request(Data#ue_fsm_data.imsi,
                                                                ?'DIAMETER_CX_SERVER-ASSIGNMENT-TYPE_USER_DEREGISTRATION',
                                                                Data#ue_fsm_data.apn, []) of
                ok ->   Data1 = Data#ue_fsm_data{s6b_resp_pid = Pid},
                        {next_state, state_authenticated_wait_swx_saa, Data1, [{reply,From,ok}]};
                {error, _Err} ->
                        DiaRC = #epdg_dia_rc{result_code = 5002}, %% UNKNOWN_SESSION_ID
                        {keep_state, Data, [{reply,From,{error, DiaRC}}]}
                end
        end;

state_authenticated({call, _From}, {rx_access_auth_request, AccessIf, AccessType, _GatewayHost,
                                    _SessionId, _NAI, Apn, _PdpTypeNr, _EAP, _ExtraAVPs}, Data) ->
        lager:info("ue_fsm state_authenticated event=rx_access_auth_request access_if=~p access_type=~p apn=~p, ~p~n",
                   [AccessIf, AccessType, Apn, Data]),
        {next_state, state_new, Data, [postpone]};

state_authenticated({call, From}, {rx_swx_ppr, _PGWAddresses}, Data) ->
        %% 3GPP TS 29.273 8.1.2.3.3:
        %% After a successful user profile download, the 3GPP AAA Server shall
        %% initiate re-authentication procedure as described
        %% in clause 7.2.2.4
        tx_access_reauth_request(Data),
        aaa_diameter_s6b:tx_reauth_request(Data#ue_fsm_data.nai),
        %% Following a successful download of subscription and equipment trace data, the 3GPP AAA Server shall forward the
        %% trace data by initiating reauthorization towards all PDN GWs that have an active authorization session.
        {keep_state, Data, [{reply,From,ok}]};

state_authenticated({call, From}, {rx_access_reauth_answer, AccessIf, Result}, Data) ->
        lager:info("ue_fsm state_authenticated event=rx_access_reauth_answer access_if=~p result=~p, ~p~n",
                   [AccessIf, Result, Data]),
        %% SWx PPA was already answered immediately when PPR was received, nothing to do here.
        {keep_state, Data, [{reply,From,ok}]};

state_authenticated({call, From}, {rx_access_auth_request_cmd, AccessIf}, Data) ->
        lager:info("ue_fsm state_authenticated event=rx_access_auth_request_cmd access_if=~p, ~p~n",
                   [AccessIf, Data]),
        %% answer is trnamsitted when returning ok:
        {keep_state, Data, [{reply,From,ok}]};

state_authenticated({call, From}, {rx_s6b_raa, Result}, Data) ->
        lager:info("ue_fsm state_authenticated event=rx_s6b_raa ~p, ~p~n", [Result, Data]),
        %% SWx PPA was already answered immediately when PPR was received, nothing to do here.
        {keep_state, Data, [{reply,From,ok}]};

state_authenticated({call, From}, rx_swx_rtr, Data) ->
        lager:info("ue_fsm state_authenticated event=rx_swx_rtr ~p~n", [Data]),
        case {Data#ue_fsm_data.pgw_sess_active, Data#ue_fsm_data.access_sess_active} of
        {true, _} -> {next_state, state_dereg_net_initiated_wait_s6b_asa, Data, [{reply,From,ok}]};
        {false, _} -> {next_state, state_dereg_net_initiated_wait_s6b_asa, Data, [{reply,From,ok}]} %% TODO: proper state for s6b
        end;

state_authenticated({call, From}, Ev, Data) ->
        lager:info("ue_fsm state_authenticated: Unexpected call event ~p, ~p~n", [Ev, Data]),
        {keep_state, Data, [{reply,From,ok}]}.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% state_authenticated_wait_swx_saa:
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

state_authenticated_wait_swx_saa(enter, _OldState, Data) ->
        {keep_state, Data};

state_authenticated_wait_swx_saa({call, From}, {rx_swx_saa, Result}, Data) ->
        case Result of
        {error, SAType, DiaRC} -> DiaRC;
        {ok, SAType, ResInfo} -> DiaRC = #epdg_dia_rc{result_code = 2001, s6b_authz = ResInfo}
        end,
        lager:info("ue_fsm state_authenticated_wait_swx_saa event=rx_swx_saa SAType=~p ResulCode=~p, ~p~n", [SAType, DiaRC, Data]),
        case SAType of
        ?'DIAMETER_CX_SERVER-ASSIGNMENT-TYPE_PGW_UPDATE' ->
                S6bAuthz = merge_s6b_authz(Data#ue_fsm_data.s6b_authz,
                                            DiaRC#epdg_dia_rc.s6b_authz),
                aaa_diameter_s6b:tx_aa_answer(Data#ue_fsm_data.s6b_resp_pid,
                                               DiaRC#epdg_dia_rc{s6b_authz = S6bAuthz}),
                Data1 = Data#ue_fsm_data{pgw_sess_active = true,
                                          s6b_resp_pid = undefined,
                                          s6b_authz = S6bAuthz},
                {next_state, state_authenticated, Data1, [{reply,From,ok}]};
        ?'DIAMETER_CX_SERVER-ASSIGNMENT-TYPE_USER_DEREGISTRATION' ->
                case Data#ue_fsm_data.s6b_resp_pid of
                undefined -> %% SWm initiated
                        tx_access_session_termination_answer(Data, DiaRC),
                        Data1 = Data#ue_fsm_data{access_sess_active = false, epdg_sess_active = false},
                        {next_state, state_new, Data1, [{reply,From,ok}]};
                _ -> %% S6b initiated
                        aaa_diameter_s6b:tx_st_answer(Data#ue_fsm_data.s6b_resp_pid, DiaRC),
                        Data1 = Data#ue_fsm_data{pgw_sess_active = false, s6b_resp_pid = undefined},
                        {next_state, state_new, Data1, [{reply,From,ok}]}
                end
        end;

state_authenticated_wait_swx_saa({call, From}, rx_swx_rtr, Data) ->
    lager:info("ue_fsm state_authenticated_wait_swx_saa event=rx_swx_rtr ~p~n", [Data]),
    %% We are already tearing down in an ordered manner, accept and do nothing.
    {keep_state, Data, [{reply,From,{error,dereg_in_progress}}]}.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% state_dereg_net_initiated_wait_s6b_asa:
%% HSS asked us to do deregistration towards the user.
%% Transmit S6b ASR towards PGW and wait for ASA back.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

state_dereg_net_initiated_wait_s6b_asa(enter, _OldState, Data) ->
        aaa_diameter_s6b:tx_as_request(Data#ue_fsm_data.nai),
        {keep_state, Data, {state_timeout,?TIMEOUT_VAL_WAIT_S6b_ANSWER,s6b_asa_timeout}};

state_dereg_net_initiated_wait_s6b_asa({call, From}, {rx_s6b_asa, _Result}, Data) ->
        {next_state, state_dereg_net_initiated_wait_swm_asa, Data, [{reply,From,ok}]};

state_dereg_net_initiated_wait_s6b_asa({call, From}, rx_swx_rtr, Data) ->
    lager:info("ue_fsm state_dereg_net_initiated_wait_s6b_asa event=rx_swx_rtr ~p~n", [Data]),
    %% We are already tearing down in an ordered manner, accept and do nothing.
    {keep_state, Data, [{reply,From,{error,dereg_in_progress}}]};

state_dereg_net_initiated_wait_s6b_asa({call, From}, Ev, Data) ->
        lager:notice("ue_fsm state_dereg_net_initiated_wait_s6b_asa: Unexpected call event ~p, ~p~n", [Ev, Data]),
        {keep_state, Data, [{reply,From,ok}]};

state_dereg_net_initiated_wait_s6b_asa(state_timeout, s6b_asa_timeout, Data) ->
        {next_state, state_dereg_net_initiated_wait_swm_asa, Data}.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% state_dereg_net_initiated_wait_swm_asa:
%% HSS asked us to do deregistration towards the user.
%% S6b (PGW) was already torn down. Now transmit SWm ASR towards ePDG and wait for ASA back.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

state_dereg_net_initiated_wait_swm_asa(enter, _OldState, Data) ->
        tx_access_abort_session_request(Data),
        {keep_state, Data, {state_timeout,?TIMEOUT_VAL_WAIT_SWm_ANSWER,swm_asa_timeout}};

state_dereg_net_initiated_wait_swm_asa({call, From}, {rx_access_abort_session_answer, _AccessIf}, Data) ->
        {stop_and_reply, normal, [{reply,From,ok}], Data};

state_dereg_net_initiated_wait_swm_asa({call, From}, rx_swx_rtr, Data) ->
    lager:info("ue_fsm state_dereg_net_initiated_wait_swm_asa event=rx_swx_rtr ~p~n", [Data]),
    %% We are already tearing down in an ordered manner, accept and do nothing.
    {keep_state, Data, [{reply,From,{error,dereg_in_progress}}]};

state_dereg_net_initiated_wait_swm_asa({call, From}, Ev, Data) ->
        lager:notice("ue_fsm state_dereg_net_initiated_wait_swm_asa: Unexpected call event ~p, ~p~n", [Ev, Data]),
        {keep_state, Data, [{reply,From,ok}]};

state_dereg_net_initiated_wait_swm_asa(state_timeout, swm_asa_timeout, _Data) ->
        {stop, normal}.

-ifdef(TEST).

eap_response_identity_payload() ->
        <<?EAP_CODE_RESPONSE, 1, 20:16/integer-big, 1, "311435300070580">>.

eap_aka_challenge_response_payload() ->
        <<?EAP_CODE_RESPONSE, 7, 12:16/integer-big,
          ?EAP_TYPE_AKA, ?EAP_AKA_SUBTYPE_CHALLENGE, 0:16,
          3, 1, 0:16/integer-big>>.

auth_tuple() ->
        #epdg_auth_tuple{rand = <<1:128>>,
                         autn = <<2:128>>,
                         res = <<3:64>>,
                         ik = <<4:128>>,
                         ck = <<5:128>>}.

non_3gpp_user_data() ->
        [#'Non-3GPP-User-Data'{'Non-3GPP-IP-Access' = [0],
                                'APN-Configuration' = [
                                    #'APN-Configuration'{'Context-Identifier' = 1,
                                                         'PDN-Type' = 0,
                                                         'Service-Selection' = "internet"}]}].

initial_eap_identity_is_not_final_auth_test() ->
        ?assertEqual(false, is_eap_aka_challenge_response(eap_response_identity_payload())),
        Data = #ue_fsm_data{access_auth_final = false},
        ?assertMatch({ok, [#epdg_auth_tuple{}]},
                     access_auth_response_result(Data, {ok, [auth_tuple()]})),
        Data1 = finalize_access_auth(Data, {ok, [auth_tuple()]}),
        ?assertEqual(false, Data1#ue_fsm_data.access_sess_active).

aka_challenge_response_success_finalizes_access_auth_test() ->
        ?assertEqual(true, is_eap_aka_challenge_response(eap_aka_challenge_response_payload())),
        Data = #ue_fsm_data{access_auth_final = true,
                            access_sess_active = false},
        ?assertEqual(ok, access_auth_response_result(Data, {ok, [auth_tuple()]})),
        ?assertEqual(true, access_auth_finalized(Data, {ok, [auth_tuple()]})),
        Data1 = finalize_access_auth(Data, {ok, [auth_tuple()]}),
        ?assertEqual(false, Data1#ue_fsm_data.access_auth_final),
        ?assertEqual(true, Data1#ue_fsm_data.access_sess_active).

sta_uses_aka_prime_towards_swx_test() ->
        application:set_env(vectorcore_aaa, eap_aka_prime_network_name,
                            "wlan.mnc435.mcc311.3gppnetwork.org"),
        ?assertEqual("EAP-AKA'", swx_auth_scheme(sta)),
        ?assertEqual({aka_prime, <<"wlan.mnc435.mcc311.3gppnetwork.org">>},
                     access_auth_method(sta)),
        application:unset_env(vectorcore_aaa, eap_aka_prime_network_name).

sta_sends_aka_prime_network_name_towards_swx_test() ->
        application:set_env(vectorcore_aaa, eap_aka_prime_network_name,
                            "wlan.mnc435.mcc311.3gppnetwork.org"),
        ?assertEqual([<<"wlan.mnc435.mcc311.3gppnetwork.org">>],
                     swx_auth_context(sta)),
        application:unset_env(vectorcore_aaa, eap_aka_prime_network_name).

swm_uses_aka_towards_swx_test() ->
        ?assertEqual("EAP-AKA", swx_auth_scheme(swm)),
        ?assertEqual(aka, access_auth_method(swm)),
        ?assertEqual([], swx_auth_context(swm)).

failed_final_maa_does_not_activate_access_session_test() ->
        Data = #ue_fsm_data{access_auth_final = true,
                            access_sess_active = false},
        DiaRC = #epdg_dia_rc{result_code = 5003},
        ?assertEqual(false, access_auth_finalized(Data, {error, DiaRC})),
        Data1 = finalize_access_auth(Data, {error, DiaRC}),
        ?assertEqual(true, Data1#ue_fsm_data.access_auth_final),
        ?assertEqual(false, Data1#ue_fsm_data.access_sess_active).

s6b_aar_before_eap_success_is_postponed_test() ->
        Data = #ue_fsm_data{imsi = "311435300070580",
                            access_if = sta,
                            access_sess_active = false},
        Event = {rx_s6b_aar, "0311435300070580@nai.epc.mnc435.mcc311.3gppnetwork.org",
                 "internet", [], []},
        ?assertMatch({keep_state, Data, [postpone]},
                     state_new({call, {self(), make_ref()}}, Event, Data)).

s6b_aar_after_eap_success_is_processed_when_pgw_session_exists_test() ->
        Data = #ue_fsm_data{imsi = "311435300070580",
                            access_if = sta,
                            access_sess_active = true,
                            pgw_sess_active = true,
                            s6b_authz = #{non_3gpp_user_data => []}},
        Event = {rx_s6b_aar, "0311435300070580@nai.epc.mnc435.mcc311.3gppnetwork.org",
                 "internet", [], []},
        From = {self(), make_ref()},
        ?assertMatch({keep_state, Data, [{reply, From, ok}]},
                     state_new({call, From}, Event, Data)),
        receive
        {aaa, #epdg_dia_rc{result_code = 2001}} ->
                ok
        after 1000 ->
                ?assert(false)
        end.

pgw_update_merge_keeps_existing_profile_when_hss_returns_empty_user_data_test() ->
        BaseAuthz = #{aar_mip6_feature_vector => [70368744177664],
                      an_trusted => [0],
                      non_3gpp_user_data => non_3gpp_user_data()},
        HssAuthz = #{non_3gpp_user_data => []},
        Merged = merge_s6b_authz(BaseAuthz, HssAuthz),
        ?assertEqual(non_3gpp_user_data(), maps:get(non_3gpp_user_data, Merged)),
        ?assertEqual([70368744177664], maps:get(aar_mip6_feature_vector, Merged)),
        ?assertEqual([0], maps:get(an_trusted, Merged)).

-endif.
