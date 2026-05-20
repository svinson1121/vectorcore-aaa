% AAA Server implementation of STa Diameter interface, TS 29.273 section 7

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


-module(aaa_diameter_sta).
-behaviour(gen_server).

-include_lib("diameter/include/diameter_gen_base_rfc6733.hrl").
-include_lib("diameter_3gpp_ts29_273_sta.hrl").
-include("conv.hrl").

-record(sta_state, {
	table_id, % ets table id
	tx_timeout :: non_neg_integer()
}).

-export([start_link/0]).
-export([init/1, handle_call/3, handle_cast/2, handle_info/2]).
-export([code_change/3, terminate/2]).
-export([register_pending/3, cancel_pending/2]).

-export([rx_der_auth_request/4,
	 rx_der_auth_compl_request/2,
	 rx_reauth_answer/2,
	 rx_auth_request/1,
	 rx_session_termination_request/1,
	 rx_abort_session_answer/1]).
-export([tx_dea_auth_response/2,
	 tx_dea_auth_compl_response/2,
	 tx_reauth_request/1,
	 tx_session_termination_answer/2,
	 tx_as_request/1]).

-define(SERVER, ?MODULE).
-define(SVC_NAME, vectorcore_aaa_diameter).
-define(APP_ALIAS, ?MODULE).
-define(CALLBACK_MOD, aaa_diameter_sta_cb).
-define(DIAMETER_DICT_STa, diameter_3gpp_ts29_273_sta).
-define(ENV_APP_NAME, vectorcore_aaa).
-define(ENV_DEFAULT_ORIG_REALM, "localdomain").
-define(ENV_DEFAULT_ORIG_HOST, "aaa.localdomain").
-define(ENV_DEFAULT_VENDOR_ID, 0).
-define(ENV_DEFAULT_DIAMETER_PROTO, sctp).
-define(ENV_DEFAULT_DIAMETER_LOCAL_IP, "127.0.0.1").
-define(ENV_DEFAULT_DIAMETER_LOCAL_PORT, 3869).
-define(ENV_DEFAULT_DIAMETER_CONNECT_TIMER_MS, 30000).
-define(ENV_DEFAULT_DIAMETER_WATCHDOG_TIMER_MS, 30000).
-define(ENV_DEFAULT_DIAMETER_WATCHDOG_CFG, [{okay, 3}, {suspect, 1}]).
-define(ENV_DEFAULT_DIAMETER_TRANSMIT_TIMER_MS, 10000).

-define(STA_VENDOR_ID_3GPP, 10415).
-define(STA_VENDOR_ID_ETSI, 13019).
-define(DIAMETER_APP_ID_STa, ?DIAMETER_DICT_STa:id()).
-define(DIAMETER_SUCCESS, 2001).
-define(DIAMETER_UNABLE_TO_COMPLY, 5012).
-define(DIAMETER_ERROR_USER_UNKNOWN, 5001).
-define(DIAMETER_UNKNOWN_SESSION_ID, 5002).
-define(DIAMETER_AUTHORIZATION_REJECTED, 5003).

-define(SERVICE,
	[{'Origin-Host', application:get_env(?ENV_APP_NAME, dia_sta_origin_host, ?ENV_DEFAULT_ORIG_HOST)},
	 {'Origin-Realm', application:get_env(?ENV_APP_NAME, dia_sta_origin_realm, ?ENV_DEFAULT_ORIG_REALM)},
	 {'Vendor-Id', application:get_env(?ENV_APP_NAME, dia_sta_vendor_id, ?ENV_DEFAULT_VENDOR_ID)},
	 {'Vendor-Specific-Application-Id',
		[#'diameter_base_Vendor-Specific-Application-Id'{
		 'Vendor-Id'           = ?STA_VENDOR_ID_3GPP,
		 'Auth-Application-Id' = [?DIAMETER_APP_ID_STa]}]},
	 {'Product-Name', "VectorCore AAA"},
	 {'Supported-Vendor-Id', [?STA_VENDOR_ID_3GPP, ?STA_VENDOR_ID_ETSI]},
	 {application,
	  [{alias, ?APP_ALIAS},
	   {dictionary, ?DIAMETER_DICT_STa},
	   {module, ?CALLBACK_MOD},
	   {answer_errors, callback}]}]).

start_link() ->
	gen_server:start_link({local, ?MODULE}, ?MODULE, [], []).

init([]) ->
	TxTimer = application:get_env(?ENV_APP_NAME, dia_sta_transmit_timer, ?ENV_DEFAULT_DIAMETER_TRANSMIT_TIMER_MS),
	TableId = ets:new(sta_auth_req, [bag, named_table]),
	{ok, #sta_state{table_id = TableId, tx_timeout = TxTimer}}.

register_pending(Imsi, Kind, Pid) ->
	gen_server:call(?SERVER, {register_pending, Imsi, Kind, Pid}).

cancel_pending(Imsi, Kind) ->
	gen_server:call(?SERVER, {cancel_pending, Imsi, Kind}).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Tx over emulated STa wire:
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tx_dea_auth_response(Imsi, Result) ->
	_Result = gen_server:call(?SERVER, {dea_auth_resp, Imsi, Result}).

tx_dea_auth_compl_response(Imsi, Result) ->
	_Result = gen_server:call(?SERVER, {dea_auth_compl_resp, Imsi, Result}).

tx_reauth_request(Imsi) ->
	_Result = gen_server:call(?SERVER, {rar, Imsi}).

tx_session_termination_answer(Imsi, Result) ->
	_Result = gen_server:call(?SERVER, {sta, Imsi, Result}).

tx_as_request(Imsi) ->
	_result = gen_server:call(?SERVER, {asr, Imsi}).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Rx from emulated STa wire:
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
rx_der_auth_request(Imsi, PdpTypeNr, Apn, EAP) ->
	gen_server:cast(?SERVER, {der_auth_req, Imsi, PdpTypeNr, Apn, EAP}).

rx_der_auth_compl_request(Imsi, Apn) ->
	gen_server:cast(?SERVER, {der_auth_compl_req, Imsi, Apn}).

rx_reauth_answer(Imsi, Result) ->
	gen_server:cast(?SERVER, {raa, Imsi, Result}).

% 3GPP TS 29.273 7.2.2.1.3 Diameter-AA-Request (AAR) Command
rx_auth_request(Imsi) ->
	gen_server:cast(?SERVER, {aar, Imsi}).

rx_session_termination_request(Imsi) ->
	gen_server:cast(?SERVER, {str, Imsi}).

rx_abort_session_answer(Imsi) ->
	gen_server:cast(?SERVER, {asa, Imsi}).

%% handle_cast: Rx side

handle_cast({der_auth_req, Imsi, PdpTypeNr, Apn, EAP}, State) ->
	case aaa_ue_fsm:get_pid_by_imsi(Imsi) of
		undefined -> {ok, Pid} = aaa_ue_fsm:start(Imsi);
		Pid -> Pid
	end,
	aaa_ue_fsm:ev_rx_access_auth_request(Pid, {sta, s2a, undefined, undefined,
	                                           undefined, Apn, PdpTypeNr, EAP, []}),
	{noreply, State};

handle_cast({der_auth_compl_req, Imsi, Apn}, State) ->
	case aaa_ue_fsm:get_pid_by_imsi(Imsi) of
	Pid when is_pid(Pid) ->
		aaa_ue_fsm:ev_rx_access_auth_complete(Pid, {sta, Apn, ok});
	undefined ->
		ok
	end,
	{noreply, State};

handle_cast({raa, Imsi, Result}, State) ->
	case aaa_ue_fsm:get_pid_by_imsi(Imsi) of
	Pid when is_pid(Pid) -> aaa_ue_fsm:ev_rx_access_reauth_answer(Pid, {sta, Result});
	undefined -> ok
	end,
	{noreply, State};

handle_cast({aar, Imsi}, State) ->
	case aaa_ue_fsm:get_pid_by_imsi(Imsi) of
	Pid when is_pid(Pid) ->
		case aaa_ue_fsm:ev_rx_access_auth_request_cmd(Pid, sta) of
		ok ->
			ok;
		_ ->
			ok
		end;
	undefined ->
		ok
	end,
	{noreply, State};

handle_cast({str, Imsi}, State) ->
	case aaa_ue_fsm:get_pid_by_imsi(Imsi) of
	Pid when is_pid(Pid) ->
		case aaa_ue_fsm:ev_rx_access_session_termination(Pid, sta) of
		ok -> ok; % Answering delayed due to SAR+SAA towards HSS.
		{ok, DiaRC} when is_integer(DiaRC) ->
			ok = ok;
		{error, Err} when is_integer(Err) ->
			ok = ok;
		{error, _} ->
			ok = ok
		end;
	undefined ->
		ok = ok
	end,
	{noreply, State};

handle_cast({asa, Imsi}, State) ->
	case aaa_ue_fsm:get_pid_by_imsi(Imsi) of
	Pid when is_pid(Pid) ->
		aaa_ue_fsm:ev_rx_access_abort_session_answer(Pid, sta);
	undefined ->
		ok
	end,
	{noreply, State};

handle_cast(Info, S) ->
	error_logger:error_report(["unknown handle_cast", {module, ?MODULE}, {info, Info}, {state, S}]),
	{noreply, S}.

handle_info(Info, S) ->
	error_logger:error_report(["unknown handle_info", {module, ?MODULE}, {info, Info}, {state, S}]),
	{noreply, S}.

%% handle_call: Tx side
handle_call({dea_auth_resp, Imsi, Result}, _From, State) ->
	notify_pending(State, dea_auth_resp, Imsi, {dea_auth_resp, Result},
		       fun() -> ok end),
	{reply, ok, State};

handle_call({dea_auth_compl_resp, Imsi, Result}, _From, State) ->
	notify_pending(State, dea_auth_compl_resp, Imsi, {dea_auth_compl_resp, Result},
		       fun() -> ok end),
	{reply, ok, State};

handle_call({rar, Imsi}, _From, State) ->
	lager:debug("STa Tx RAR IMSI=~p~n", [Imsi]),
	SessionId = diameter:session_id(application:get_env(?ENV_APP_NAME, dia_sta_origin_host, ?ENV_DEFAULT_ORIG_HOST)),
	RAR = #'RAR'{'Session-Id' = SessionId,
		     'Auth-Application-Id' = ?DIAMETER_APP_ID_STa,
		     'Re-Auth-Request-Type' = 0,
		     'User-Name' = [Imsi]},
	Ret = diameter_call(RAR, State),
	{reply, Ret, State};

handle_call({sta, Imsi, DiaRC}, _From, State) ->
	notify_pending(State, sta, Imsi, {sta, DiaRC},
		       fun() -> ok end),
	{reply, ok, State};

handle_call({asr, Imsi}, _From, State) ->
	lager:debug("STa Tx ASR IMSI=~p~n", [Imsi]),
	SessionId = diameter:session_id(application:get_env(?ENV_APP_NAME, dia_sta_origin_host, ?ENV_DEFAULT_ORIG_HOST)),
	ASR = #'ASR'{'Session-Id' = SessionId,
		     'Auth-Application-Id' = ?DIAMETER_APP_ID_STa,
		     'User-Name' = [Imsi],
		     'Auth-Session-State' = [1]},
	Ret = diameter_call(ASR, State),
	{reply, Ret, State};

handle_call({register_pending, Imsi, Kind, Pid}, _From, State) ->
	ets:insert(State#sta_state.table_id, {{Kind, Imsi}, Pid}),
	{reply, ok, State};

handle_call({cancel_pending, Imsi, Kind}, _From, State) ->
	ets:delete(State#sta_state.table_id, {Kind, Imsi}),
	{reply, ok, State};

handle_call(Request, From, S) ->
	error_logger:error_report(["unknown handle_call", {module, ?MODULE}, {request, Request}, {from, From}, {state, S}]),
	{noreply, S}.

code_change(_OldVsn, State, _Extra) ->
	{ok, State}.

terminate(Reason, _S) ->
	lager:info("terminating ~p with reason ~p~n", [?MODULE, Reason]),
	diameter:stop_service(?SVC_NAME),
	ok.

%% ------------------------------------------------------------------
%% Internal Function Definitions
%% ------------------------------------------------------------------
notify_pending(State, Kind, Imsi, Msg, Fallback) ->
	Key = {Kind, Imsi},
	case ets:lookup(State#sta_state.table_id, Key) of
	[{Key, Pid} | _] ->
		ets:delete(State#sta_state.table_id, Key),
		Pid ! Msg,
		ok;
	[] ->
		Fallback()
	end.

diameter_call(Msg, State) ->
	diameter:call(?SVC_NAME, ?APP_ALIAS, Msg, [{timeout, State#sta_state.tx_timeout},
						   detach]).
