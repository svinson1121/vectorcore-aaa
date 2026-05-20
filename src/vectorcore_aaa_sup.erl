-module(vectorcore_aaa_sup).
-behaviour(supervisor).

-export([start_link/0]).
-export([init/1]).

-define(SERVER, ?MODULE).

start_link() ->
	supervisor:start_link({local, ?SERVER}, ?MODULE, []).

init([]) ->
	lager:notice("VectorCore AAA starting AAA services"),
	AAADiaSWxClient = {aaa_diameter_swx, {aaa_diameter_swx, start_link, []},
			 permanent, 5000, worker, [aaa_diameter_swx, aaa_diameter_swx_cb]},
	AAADiaS6bServer = {aaa_diameter_s6b, {aaa_diameter_s6b, start_link, []},
			 permanent, 5000, worker, [aaa_diameter_s6b, aaa_diameter_s6b_cb]},
	AAADiaSWmServer = {aaa_diameter_swm, {aaa_diameter_swm, start_link, []},
			 permanent, 5000, worker, [aaa_diameter_swm, aaa_diameter_swm_cb]},
	AAADiaSTaServer = {aaa_diameter_sta, {aaa_diameter_sta, start_link, []},
			 permanent, 5000, worker, [aaa_diameter_sta, aaa_diameter_sta_cb]},
	{ok, {{one_for_all, 5, 10}, [{vectorcore_aaa_diameter, {vectorcore_aaa_diameter, start_link, []}, permanent, 5000, worker, [vectorcore_aaa_diameter]}, AAADiaSWxClient, AAADiaS6bServer, AAADiaSWmServer, AAADiaSTaServer]}}.
