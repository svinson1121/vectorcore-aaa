-module(vectorcore_aaa_diameter).
-behaviour(gen_server).

-include_lib("diameter/include/diameter_gen_base_rfc6733.hrl").

-export([start_link/0]).
-export([init/1, handle_call/3, handle_cast/2, handle_info/2, terminate/2, code_change/3]).

-define(SERVER, ?MODULE).
-define(SVC_NAME, ?MODULE).
-define(ENV_APP_NAME, vectorcore_aaa).
-define(VENDOR_ID_3GPP, 10415).
-define(VENDOR_ID_3GPP2, 5535).
-define(VENDOR_ID_ETSI, 13019).
-define(DEFAULT_ORIGIN_HOST, "aaa.localdomain").
-define(DEFAULT_ORIGIN_REALM, "localdomain").
-define(DEFAULT_VENDOR_ID, 0).
-define(DEFAULT_PROTO, sctp).
-define(DEFAULT_LOCAL_IP, "127.0.0.1").
-define(DEFAULT_LOCAL_PORT, 3868).
-define(DEFAULT_CONNECT_TIMER, 30000).
-define(DEFAULT_WATCHDOG_TIMER, 30000).
-define(DEFAULT_WATCHDOG_CONFIG, [{okay, 3}, {suspect, 1}]).

start_link() ->
	gen_server:start_link({local, ?SERVER}, ?MODULE, [], []).

init([]) ->
	Proto = diameter_cfg(proto, ?DEFAULT_PROTO),
	Ip = diameter_cfg(listen_ip, ?DEFAULT_LOCAL_IP),
	Port = diameter_cfg(listen_port, ?DEFAULT_LOCAL_PORT),
	ConnectTimer = diameter_cfg(connect_timer, ?DEFAULT_CONNECT_TIMER),
	WatchdogTimer = diameter_cfg(watchdog_timer, ?DEFAULT_WATCHDOG_TIMER),
	WatchdogConfig = diameter_cfg(watchdog_config, ?DEFAULT_WATCHDOG_CONFIG),
	ok = diameter:start_service(?SVC_NAME, service()),
	{ok, _} = listen({address, Proto, Ip, Port}, {timer, ConnectTimer, WatchdogTimer, WatchdogConfig}),
	connect_configured_peers(Ip, Proto, ConnectTimer, WatchdogTimer, WatchdogConfig),
	{ok, #{}}.

service() ->
	OriginHost = diameter_cfg(origin_host, ?DEFAULT_ORIGIN_HOST),
	OriginRealm = diameter_cfg(origin_realm, ?DEFAULT_ORIGIN_REALM),
	VendorId = diameter_cfg(vendor_id, ?DEFAULT_VENDOR_ID),
	Apps = enabled_apps(),
	[{'Origin-Host', OriginHost},
	 {'Origin-Realm', OriginRealm},
	 {'Vendor-Id', VendorId},
	 {'Vendor-Specific-Application-Id', vendor_specific_apps(Apps)},
	 {'Product-Name', "VectorCore AAA"},
	 {'Supported-Vendor-Id', [?VENDOR_ID_3GPP, ?VENDOR_ID_ETSI, ?VENDOR_ID_3GPP2]}]
	 ++ application_entries(Apps).

enabled_apps() ->
	case diameter_cfg(apps, [swm, sta, s6b, swx]) of
	Apps when is_list(Apps) -> Apps;
	_ -> [swm, sta, s6b, swx]
	end.

vendor_specific_apps(Apps) ->
	[#'diameter_base_Vendor-Specific-Application-Id'{
	   'Vendor-Id' = ?VENDOR_ID_3GPP,
	   'Auth-Application-Id' = [app_id(App)]}
	 || App <- Apps, app_supported(App)].

application_entries(Apps) ->
	[{application, [{alias, app_alias(App)},
	                {dictionary, app_dict(App)},
	                {module, app_callback(App)},
	                {answer_errors, callback}]}
	 || App <- Apps, app_supported(App)].

app_supported(swm) -> true;
app_supported(sta) -> true;
app_supported(s6b) -> true;
app_supported(swx) -> true;
app_supported(_) -> false.

app_id(swm) -> diameter_3gpp_ts29_273_swm:id();
app_id(sta) -> diameter_3gpp_ts29_273_sta:id();
app_id(s6b) -> diameter_3gpp_ts29_273_s6b:id();
app_id(swx) -> diameter_3gpp_ts29_273_swx:id().

app_alias(swm) -> aaa_diameter_swm;
app_alias(sta) -> aaa_diameter_sta;
app_alias(s6b) -> aaa_diameter_s6b;
app_alias(swx) -> aaa_diameter_swx.

app_dict(swm) -> diameter_3gpp_ts29_273_swm;
app_dict(sta) -> diameter_3gpp_ts29_273_sta;
app_dict(s6b) -> diameter_3gpp_ts29_273_s6b;
app_dict(swx) -> diameter_3gpp_ts29_273_swx.

app_callback(swm) -> aaa_diameter_swm_cb;
app_callback(sta) -> aaa_diameter_sta_cb;
app_callback(s6b) -> aaa_diameter_s6b_cb;
app_callback(swx) -> aaa_diameter_swx_cb.

connect_configured_peers(DefaultLocalIp, DefaultProto, ConnectTimer, WatchdogTimer, WatchdogConfig) ->
	Peers = diameter_cfg(peers, []),
	lists:foreach(fun(Peer) -> connect_peer(Peer, DefaultLocalIp, DefaultProto, ConnectTimer, WatchdogTimer, WatchdogConfig) end, Peers).

connect_peer({Name, Opts}, DefaultLocalIp, DefaultProto, ConnectTimer, WatchdogTimer, WatchdogConfig) ->
	case proplists:get_value(connect, Opts, false) of
	true ->
		Address = peer_transport_address(Opts),
		Port = proplists:get_value(port, Opts, 3868),
		LocalIp = proplists:get_value(local_ip, Opts, DefaultLocalIp),
		LocalPort = proplists:get_value(local_port, Opts, 0),
		Proto = proplists:get_value(proto, Opts, DefaultProto),
		Apps = proplists:get_value(apps, Opts, []),
		lager:notice("VectorCore AAA Diameter peer ~p active connect local=~p:~p remote=~p:~p proto=~p apps=~p~n",
		             [Name, LocalIp, LocalPort, Address, Port, Proto, Apps]),
		case Address of
		undefined ->
			lager:error("VectorCore AAA Diameter peer ~p has connect=true but no ip/host transport address~n", [Name]),
			ok;
		_ ->
			connect({address, Proto, LocalIp, LocalPort, Address, Port}, {timer, ConnectTimer, WatchdogTimer, WatchdogConfig})
		end;
	_ ->
		lager:debug("VectorCore AAA Diameter peer ~p is passive/listen-only~n", [Name]),
		ok
	end.

peer_transport_address(Opts) ->
	case proplists:get_value(ip, Opts, undefined) of
	undefined -> proplists:get_value(host, Opts, undefined);
	IP -> IP
	end.

listen(Name, {address, Protocol, IPAddr, Port}, {timer, ConnectTimer, WatchdogTimer, WatchdogConfig}) ->
	lager:notice("VectorCore AAA Diameter listening on IP ~s port ~p proto ~p~n", [IPAddr, Port, Protocol]),
	{ok, IP} = resolve_address(IPAddr),
	TransportOpts = [{transport_module, tmod(Protocol)},
			 {transport_config, [{reuseaddr, true}, {ip, IP}, {port, Port}]},
			 {connect_timer, ConnectTimer},
			 {watchdog_timer, WatchdogTimer},
			 {watchdog_config, WatchdogConfig}],
	Ret = diameter:add_transport(Name, {listen, TransportOpts}),
	lager:notice("VectorCore AAA Diameter listen transport result: ~p~n", [Ret]),
	Ret.

listen(Address, Timers) -> listen(?SVC_NAME, Address, Timers).

connect(Name, {address, Protocol, LocalIpAddr, LocalPort, RemoteIpAddr, RemotePort},
        {timer, ConnectTimer, WatchdogTimer, WatchdogConfig}) ->
	lager:notice("VectorCore AAA Diameter connecting from ~p:~p to ~p:~p proto ~p~n",
	             [LocalIpAddr, LocalPort, RemoteIpAddr, RemotePort, Protocol]),
	{ok, LocalIP} = resolve_address(LocalIpAddr),
	{ok, RemoteIP} = resolve_address(RemoteIpAddr),
	TransportOpts = [{transport_module, tmod(Protocol)},
			 {transport_config, [{ip, LocalIP}, {port, LocalPort},
			                     {raddr, RemoteIP}, {rport, RemotePort}, {reuseaddr, true}]},
			 {connect_timer, ConnectTimer},
			 {watchdog_timer, WatchdogTimer},
			 {watchdog_config, WatchdogConfig}],
	Ret = diameter:add_transport(Name, {connect, TransportOpts}),
	lager:notice("VectorCore AAA Diameter connect transport result: ~p~n", [Ret]),
	Ret.

connect(Address, Timers) -> connect(?SVC_NAME, Address, Timers).

tmod(tcp) -> diameter_tcp;
tmod(sctp) -> diameter_sctp.

resolve_address(Address) when is_tuple(Address) ->
	{ok, Address};
resolve_address(Address) when is_list(Address) ->
	case inet_parse:address(Address) of
	{ok, IP} -> {ok, IP};
	{error, _} -> inet:getaddr(Address, inet)
	end.

diameter_cfg(Key, Default) ->
	case application:get_env(?ENV_APP_NAME, diameter, []) of
	Config when is_list(Config) -> proplists:get_value(Key, Config, Default);
	_ -> Default
	end.

handle_call(Request, From, State) ->
	error_logger:error_report(["unknown handle_call", {module, ?MODULE}, {request, Request}, {from, From}, {state, State}]),
	{reply, ok, State}.

handle_cast(_Req, State) -> {noreply, State}.
handle_info(_Info, State) -> {noreply, State}.
code_change(_OldVsn, State, _Extra) -> {ok, State}.
terminate(_Reason, _State) -> diameter:stop_service(?SVC_NAME), ok.
