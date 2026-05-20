%% -------------------------------------------------------------------
%% This is a generated file.
%% -------------------------------------------------------------------

-module(diameter_3gpp_ts29_329).

-moduledoc(false).

-compile({parse_transform, diameter_exprecs}).

-compile(nowarn_unused_function).

-dialyzer(no_return).

-export_records([]).

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

name() -> diameter_3gpp_ts29_329.

id() -> erlang:error(badarg).

vendor_id() -> 10415.

vendor_name() -> '3GPP'.

msg_name(_, _) -> ''.

msg_header(_) -> erlang:error(badarg).

rec2msg(_) -> erlang:error(badarg).

msg2rec(_) -> erlang:error(badarg).

name2rec(T) -> msg2rec(T).

avp_name(707, 10415) ->
    {'Current-Location', 'Enumerated'};
avp_name(711, 10415) -> {'DSAI-Tag', 'OctetString'};
avp_name(703, 10415) ->
    {'Data-Reference', 'Enumerated'};
avp_name(709, 10415) -> {'Expiry-Time', 'Time'};
avp_name(708, 10415) -> {'Identity-Set', 'Enumerated'};
avp_name(701, 10415) -> {'MSISDN', 'OctetString'};
avp_name(712, 10415) ->
    {'One-Time-Notification', 'Enumerated'};
avp_name(706, 10415) ->
    {'Requested-Domain', 'Enumerated'};
avp_name(713, 10415) ->
    {'Requested-Nodes', 'Unsigned32'};
avp_name(710, 10415) ->
    {'Send-Data-Indication', 'Enumerated'};
avp_name(716, 10415) ->
    {'Sequence-Number', 'Unsigned32'};
avp_name(704, 10415) ->
    {'Service-Indication', 'OctetString'};
avp_name(714, 10415) ->
    {'Serving-Node-Indication', 'Enumerated'};
avp_name(705, 10415) -> {'Subs-Req-Type', 'Enumerated'};
avp_name(_, _) -> 'AVP'.

avp_arity(_) -> erlang:error(badarg).

avp_arity(_, _) -> 0.

avp_header('Current-Location') -> {707, 192, 10415};
avp_header('DSAI-Tag') -> {711, 192, 10415};
avp_header('Data-Reference') -> {703, 192, 10415};
avp_header('Expiry-Time') -> {709, 128, 10415};
avp_header('Identity-Set') -> {708, 128, 10415};
avp_header('MSISDN') -> {701, 192, 10415};
avp_header('One-Time-Notification') ->
    {712, 128, 10415};
avp_header('Requested-Domain') -> {706, 192, 10415};
avp_header('Requested-Nodes') -> {713, 128, 10415};
avp_header('Send-Data-Indication') -> {710, 128, 10415};
avp_header('Sequence-Number') -> {716, 128, 10415};
avp_header('Service-Indication') -> {704, 192, 10415};
avp_header('Serving-Node-Indication') ->
    {714, 128, 10415};
avp_header('Subs-Req-Type') -> {705, 192, 10415};
avp_header(_) -> erlang:error(badarg).

avp(T, Data, 'Current-Location', _) ->
    enumerated_avp(T, 'Current-Location', Data);
avp(T, Data, 'DSAI-Tag', Opts) ->
    diameter_types:'OctetString'(T, Data, Opts);
avp(T, Data, 'Data-Reference', _) ->
    enumerated_avp(T, 'Data-Reference', Data);
avp(T, Data, 'Expiry-Time', Opts) ->
    diameter_types:'Time'(T, Data, Opts);
avp(T, Data, 'Identity-Set', _) ->
    enumerated_avp(T, 'Identity-Set', Data);
avp(T, Data, 'MSISDN', Opts) ->
    diameter_types:'OctetString'(T, Data, Opts);
avp(T, Data, 'One-Time-Notification', _) ->
    enumerated_avp(T, 'One-Time-Notification', Data);
avp(T, Data, 'Requested-Domain', _) ->
    enumerated_avp(T, 'Requested-Domain', Data);
avp(T, Data, 'Requested-Nodes', Opts) ->
    diameter_types:'Unsigned32'(T, Data, Opts);
avp(T, Data, 'Send-Data-Indication', _) ->
    enumerated_avp(T, 'Send-Data-Indication', Data);
avp(T, Data, 'Sequence-Number', Opts) ->
    diameter_types:'Unsigned32'(T, Data, Opts);
avp(T, Data, 'Service-Indication', Opts) ->
    diameter_types:'OctetString'(T, Data, Opts);
avp(T, Data, 'Serving-Node-Indication', _) ->
    enumerated_avp(T, 'Serving-Node-Indication', Data);
avp(T, Data, 'Subs-Req-Type', _) ->
    enumerated_avp(T, 'Subs-Req-Type', Data);
avp(_, _, _, _) -> erlang:error(badarg).

enumerated_avp(_, _, _) -> erlang:error(badarg).

empty_value(Name, Opts) -> empty(Name, Opts).

dict() ->
    [1,
     {avp_types,
      [{"Current-Location", 707, "Enumerated", "MV"},
       {"DSAI-Tag", 711, "OctetString", "MV"},
       {"Data-Reference", 703, "Enumerated", "MV"},
       {"Expiry-Time", 709, "Time", "V"},
       {"Identity-Set", 708, "Enumerated", "V"},
       {"MSISDN", 701, "OctetString", "MV"},
       {"One-Time-Notification", 712, "Enumerated", "V"},
       {"Requested-Domain", 706, "Enumerated", "MV"},
       {"Requested-Nodes", 713, "Unsigned32", "V"},
       {"Send-Data-Indication", 710, "Enumerated", "V"},
       {"Sequence-Number", 716, "Unsigned32", "V"},
       {"Service-Indication", 704, "OctetString", "MV"},
       {"Serving-Node-Indication", 714, "Enumerated", "V"},
       {"Subs-Req-Type", 705, "Enumerated", "MV"}]},
     {avp_vendor_id, []},
     {codecs, []},
     {command_codes, []},
     {custom_types, []},
     {define, []},
     {enum, []},
     {grouped, []},
     {import_avps, []},
     {import_enums, []},
     {import_groups, []},
     {inherits, []},
     {messages, []},
     {name, "diameter_3gpp_ts29_329"},
     {vendor, {10415, "3GPP"}}].


