%% -------------------------------------------------------------------
%% This is a generated file.
%% -------------------------------------------------------------------

-module(diameter_3gpp_break_circles).

-moduledoc(false).

-compile({parse_transform, diameter_exprecs}).

-compile(nowarn_unused_function).

-dialyzer(no_return).

-export_records(['Emergency-Info', 'MIP6-Agent-Info']).

-record('Emergency-Info',
        {'MIP6-Agent-Info' = [], 'AVP' = []}).

-record('MIP6-Agent-Info',
        {'MIP-Home-Agent-Address' = [],
         'MIP-Home-Agent-Host' = [],
         'MIP6-Home-Link-Prefix' = [],
         'AVP' = []}).

-export([name/0,
         id/0,
         vendor_id/0,
         vendor_name/0,
         decode_avps/3,
         encode_avps/3,
         grouped_avp/4,
         msg_name/2,
         msg_header/1,
         rec2msg/1,
         msg2rec/1,
         name2rec/1,
         avp_name/2,
         avp_arity/1,
         avp_arity/2,
         avp_header/1,
         avp/4,
         enumerated_avp/3,
         empty_value/2,
         dict/0]).

-include_lib("diameter/include/diameter.hrl").

-include_lib("diameter/include/diameter_gen.hrl").

name() -> diameter_3gpp_break_circles.

id() -> erlang:error(badarg).

vendor_id() -> 10415.

vendor_name() -> '3GPP'.

msg_name(_, _) -> ''.

msg_header(_) -> erlang:error(badarg).

rec2msg(_) -> erlang:error(badarg).

msg2rec(_) -> erlang:error(badarg).

name2rec('Emergency-Info') -> 'Emergency-Info';
name2rec('MIP6-Agent-Info') -> 'MIP6-Agent-Info';
name2rec(T) -> msg2rec(T).

avp_name(1427, 10415) ->
    {'APN-OI-Replacement', 'UTF8String'};
avp_name(1687, 10415) -> {'Emergency-Info', 'Grouped'};
avp_name(2405, 10415) -> {'GMLC-Address', 'Address'};
avp_name(1474, 10415) -> {'GMLC-Number', 'OctetString'};
avp_name(1489, 10415) -> {'SGSN-Number', 'OctetString'};
avp_name(486, undefined) ->
    {'MIP6-Agent-Info', 'Grouped'};
avp_name(125, undefined) ->
    {'MIP6-Home-Link-Prefix', 'OctetString'};
avp_name(_, _) -> 'AVP'.

avp_arity('Emergency-Info') ->
    [{'MIP6-Agent-Info', {0, 1}}, {'AVP', {0, '*'}}];
avp_arity('MIP6-Agent-Info') ->
    [{'MIP-Home-Agent-Address', {0, 2}},
     {'MIP-Home-Agent-Host', {0, 1}},
     {'MIP6-Home-Link-Prefix', {0, 1}},
     {'AVP', {0, '*'}}];
avp_arity(_) -> erlang:error(badarg).

avp_arity('Emergency-Info', 'MIP6-Agent-Info') ->
    {0, 1};
avp_arity('Emergency-Info', 'AVP') -> {0, '*'};
avp_arity('MIP6-Agent-Info',
          'MIP-Home-Agent-Address') ->
    {0, 2};
avp_arity('MIP6-Agent-Info', 'MIP-Home-Agent-Host') ->
    {0, 1};
avp_arity('MIP6-Agent-Info', 'MIP6-Home-Link-Prefix') ->
    {0, 1};
avp_arity('MIP6-Agent-Info', 'AVP') -> {0, '*'};
avp_arity(_, _) -> 0.

avp_header('APN-OI-Replacement') -> {1427, 192, 10415};
avp_header('Emergency-Info') -> {1687, 128, 10415};
avp_header('GMLC-Address') -> {2405, 192, 10415};
avp_header('GMLC-Number') -> {1474, 192, 10415};
avp_header('SGSN-Number') -> {1489, 192, 10415};
avp_header('MIP6-Agent-Info') ->
    diameter_rfc5447:avp_header('MIP6-Agent-Info');
avp_header('MIP6-Home-Link-Prefix') ->
    diameter_rfc5447:avp_header('MIP6-Home-Link-Prefix');
avp_header(_) -> erlang:error(badarg).

avp(T, Data, 'APN-OI-Replacement', Opts) ->
    diameter_types:'UTF8String'(T, Data, Opts);
avp(T, Data, 'Emergency-Info', Opts) ->
    grouped_avp(T, 'Emergency-Info', Data, Opts);
avp(T, Data, 'GMLC-Address', Opts) ->
    diameter_types:'Address'(T, Data, Opts);
avp(T, Data, 'GMLC-Number', Opts) ->
    diameter_types:'OctetString'(T, Data, Opts);
avp(T, Data, 'SGSN-Number', Opts) ->
    diameter_types:'OctetString'(T, Data, Opts);
avp(T, Data, 'MIP6-Agent-Info', Opts) ->
    grouped_avp(T, 'MIP6-Agent-Info', Data, Opts);
avp(T, Data, 'MIP6-Home-Link-Prefix', Opts) ->
    avp(T,
        Data,
        'MIP6-Home-Link-Prefix',
        Opts,
        diameter_rfc5447);
avp(_, _, _, _) -> erlang:error(badarg).

enumerated_avp(_, _, _) -> erlang:error(badarg).

empty_value('Emergency-Info', Opts) ->
    empty_group('Emergency-Info', Opts);
empty_value('MIP6-Agent-Info', Opts) ->
    empty_group('MIP6-Agent-Info', Opts);
empty_value(Name, Opts) -> empty(Name, Opts).

dict() ->
    [1,
     {avp_types,
      [{"APN-OI-Replacement", 1427, "UTF8String", "MV"},
       {"Emergency-Info", 1687, "Grouped", "V"},
       {"GMLC-Address", 2405, "Address", "MV"},
       {"GMLC-Number", 1474, "OctetString", "MV"},
       {"SGSN-Number", 1489, "OctetString", "MV"}]},
     {avp_vendor_id, []},
     {codecs, []},
     {command_codes, []},
     {custom_types, []},
     {define, []},
     {enum, []},
     {grouped,
      [{"Emergency-Info",
        1687,
        [10415],
        [["MIP6-Agent-Info"], {'*', ["AVP"]}]}]},
     {import_avps,
      [{diameter_rfc5447,
        [{"MIP6-Agent-Info", 486, "Grouped", "M"},
         {"MIP6-Home-Link-Prefix", 125, "OctetString", "M"}]}]},
     {import_enums, []},
     {import_groups,
      [{diameter_rfc5447,
        [{"MIP6-Agent-Info",
          486,
          [],
          [{{0, 2}, ["MIP-Home-Agent-Address"]},
           ["MIP-Home-Agent-Host"],
           ["MIP6-Home-Link-Prefix"],
           {'*', ["AVP"]}]}]}]},
     {inherits, [{"diameter_rfc5447", []}]},
     {messages, []},
     {name, "diameter_3gpp_break_circles"},
     {vendor, {10415, "3GPP"}}].


