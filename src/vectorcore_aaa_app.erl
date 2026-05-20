-module(vectorcore_aaa_app).
-behaviour(application).

-export([start/2, stop/1]).

start(_StartType, _StartArgs) ->
	lager:notice("VectorCore AAA app started"),
	vectorcore_aaa_sup:start_link().

stop(_State) ->
	ok.
