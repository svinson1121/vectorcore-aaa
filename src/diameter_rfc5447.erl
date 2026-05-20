%% -------------------------------------------------------------------
%% This is a generated file.
%% -------------------------------------------------------------------

-module(diameter_rfc5447).

-moduledoc(false).

-compile({parse_transform, diameter_exprecs}).

-compile(nowarn_unused_function).

-dialyzer(no_return).

-export_records(['MIP6-Agent-Info',
                 'Proxy-Info',
                 'Failed-AVP',
                 'Experimental-Result',
                 'Vendor-Specific-Application-Id',
                 'MIP-MN-AAA-Auth',
                 'MIP-MN-to-FA-MSA',
                 'MIP-FA-to-MN-MSA',
                 'MIP-MN-to-HA-MSA',
                 'MIP-HA-to-MN-MSA',
                 'MIP-FA-to-HA-MSA',
                 'MIP-HA-to-FA-MSA',
                 'MIP-Originating-Foreign-AAA',
                 'MIP-Home-Agent-Host']).

-record('MIP6-Agent-Info',
        {'MIP-Home-Agent-Address' = [],
         'MIP-Home-Agent-Host' = [],
         'MIP6-Home-Link-Prefix' = [],
         'AVP' = []}).

-record('Proxy-Info',
        {'Proxy-Host', 'Proxy-State', 'AVP' = []}).

-record('Failed-AVP', {'AVP' = []}).

-record('Experimental-Result',
        {'Vendor-Id', 'Experimental-Result-Code'}).

-record('Vendor-Specific-Application-Id',
        {'Vendor-Id',
         'Auth-Application-Id' = [],
         'Acct-Application-Id' = []}).

-record('MIP-MN-AAA-Auth',
        {'MIP-MN-AAA-SPI',
         'MIP-Auth-Input-Data-Length',
         'MIP-Authenticator-Length',
         'MIP-Authenticator-Offset',
         'AVP' = []}).

-record('MIP-MN-to-FA-MSA',
        {'MIP-Algorithm-Type', 'MIP-Nonce', 'AVP' = []}).

-record('MIP-FA-to-MN-MSA',
        {'MIP-FA-to-MN-SPI',
         'MIP-Algorithm-Type',
         'MIP-Session-Key',
         'AVP' = []}).

-record('MIP-MN-to-HA-MSA',
        {'MIP-Algorithm-Type',
         'MIP-Replay-Mode',
         'MIP-Nonce',
         'AVP' = []}).

-record('MIP-HA-to-MN-MSA',
        {'MIP-Algorithm-Type',
         'MIP-Replay-Mode',
         'MIP-Session-Key',
         'AVP' = []}).

-record('MIP-FA-to-HA-MSA',
        {'MIP-FA-to-HA-SPI',
         'MIP-Algorithm-Type',
         'MIP-Session-Key',
         'AVP' = []}).

-record('MIP-HA-to-FA-MSA',
        {'MIP-HA-to-FA-SPI',
         'MIP-Algorithm-Type',
         'MIP-Session-Key',
         'AVP' = []}).

-record('MIP-Originating-Foreign-AAA',
        {'Origin-Realm', 'Origin-Host', 'AVP' = []}).

-record('MIP-Home-Agent-Host',
        {'Destination-Realm', 'Destination-Host', 'AVP' = []}).

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

name() -> diameter_rfc5447.

id() -> 1.

vendor_id() -> erlang:error(undefined).

vendor_name() -> erlang:error(undefined).

msg_name(_, _) -> ''.

msg_header(_) -> erlang:error(badarg).

rec2msg(_) -> erlang:error(badarg).

msg2rec(_) -> erlang:error(badarg).

name2rec('MIP6-Agent-Info') -> 'MIP6-Agent-Info';
name2rec('Proxy-Info') -> 'Proxy-Info';
name2rec('Failed-AVP') -> 'Failed-AVP';
name2rec('Experimental-Result') ->
    'Experimental-Result';
name2rec('Vendor-Specific-Application-Id') ->
    'Vendor-Specific-Application-Id';
name2rec('MIP-MN-AAA-Auth') -> 'MIP-MN-AAA-Auth';
name2rec('MIP-MN-to-FA-MSA') -> 'MIP-MN-to-FA-MSA';
name2rec('MIP-FA-to-MN-MSA') -> 'MIP-FA-to-MN-MSA';
name2rec('MIP-MN-to-HA-MSA') -> 'MIP-MN-to-HA-MSA';
name2rec('MIP-HA-to-MN-MSA') -> 'MIP-HA-to-MN-MSA';
name2rec('MIP-FA-to-HA-MSA') -> 'MIP-FA-to-HA-MSA';
name2rec('MIP-HA-to-FA-MSA') -> 'MIP-HA-to-FA-MSA';
name2rec('MIP-Originating-Foreign-AAA') ->
    'MIP-Originating-Foreign-AAA';
name2rec('MIP-Home-Agent-Host') ->
    'MIP-Home-Agent-Host';
name2rec(T) -> msg2rec(T).

avp_name(486, undefined) ->
    {'MIP6-Agent-Info', 'Grouped'};
avp_name(125, undefined) ->
    {'MIP6-Home-Link-Prefix', 'OctetString'};
avp_name(483, undefined) ->
    {'Accounting-Realtime-Required', 'Enumerated'};
avp_name(485, undefined) ->
    {'Accounting-Record-Number', 'Unsigned32'};
avp_name(480, undefined) ->
    {'Accounting-Record-Type', 'Enumerated'};
avp_name(287, undefined) ->
    {'Accounting-Sub-Session-Id', 'Unsigned64'};
avp_name(259, undefined) ->
    {'Acct-Application-Id', 'Unsigned32'};
avp_name(85, undefined) ->
    {'Acct-Interim-Interval', 'Unsigned32'};
avp_name(50, undefined) ->
    {'Acct-Multi-Session-Id', 'UTF8String'};
avp_name(44, undefined) ->
    {'Acct-Session-Id', 'OctetString'};
avp_name(258, undefined) ->
    {'Auth-Application-Id', 'Unsigned32'};
avp_name(276, undefined) ->
    {'Auth-Grace-Period', 'Unsigned32'};
avp_name(274, undefined) ->
    {'Auth-Request-Type', 'Enumerated'};
avp_name(277, undefined) ->
    {'Auth-Session-State', 'Enumerated'};
avp_name(291, undefined) ->
    {'Authorization-Lifetime', 'Unsigned32'};
avp_name(25, undefined) -> {'Class', 'OctetString'};
avp_name(293, undefined) ->
    {'Destination-Host', 'DiameterIdentity'};
avp_name(283, undefined) ->
    {'Destination-Realm', 'DiameterIdentity'};
avp_name(273, undefined) ->
    {'Disconnect-Cause', 'Enumerated'};
avp_name(281, undefined) ->
    {'Error-Message', 'UTF8String'};
avp_name(294, undefined) ->
    {'Error-Reporting-Host', 'DiameterIdentity'};
avp_name(55, undefined) -> {'Event-Timestamp', 'Time'};
avp_name(297, undefined) ->
    {'Experimental-Result', 'Grouped'};
avp_name(298, undefined) ->
    {'Experimental-Result-Code', 'Unsigned32'};
avp_name(279, undefined) -> {'Failed-AVP', 'Grouped'};
avp_name(267, undefined) ->
    {'Firmware-Revision', 'Unsigned32'};
avp_name(257, undefined) ->
    {'Host-IP-Address', 'Address'};
avp_name(299, undefined) ->
    {'Inband-Security-Id', 'Unsigned32'};
avp_name(272, undefined) ->
    {'Multi-Round-Time-Out', 'Unsigned32'};
avp_name(264, undefined) ->
    {'Origin-Host', 'DiameterIdentity'};
avp_name(296, undefined) ->
    {'Origin-Realm', 'DiameterIdentity'};
avp_name(278, undefined) ->
    {'Origin-State-Id', 'Unsigned32'};
avp_name(269, undefined) ->
    {'Product-Name', 'UTF8String'};
avp_name(280, undefined) ->
    {'Proxy-Host', 'DiameterIdentity'};
avp_name(284, undefined) -> {'Proxy-Info', 'Grouped'};
avp_name(33, undefined) ->
    {'Proxy-State', 'OctetString'};
avp_name(285, undefined) ->
    {'Re-Auth-Request-Type', 'Enumerated'};
avp_name(292, undefined) ->
    {'Redirect-Host', 'DiameterURI'};
avp_name(261, undefined) ->
    {'Redirect-Host-Usage', 'Enumerated'};
avp_name(262, undefined) ->
    {'Redirect-Max-Cache-Time', 'Unsigned32'};
avp_name(268, undefined) ->
    {'Result-Code', 'Unsigned32'};
avp_name(282, undefined) ->
    {'Route-Record', 'DiameterIdentity'};
avp_name(270, undefined) ->
    {'Session-Binding', 'Unsigned32'};
avp_name(263, undefined) ->
    {'Session-Id', 'UTF8String'};
avp_name(271, undefined) ->
    {'Session-Server-Failover', 'Enumerated'};
avp_name(27, undefined) ->
    {'Session-Timeout', 'Unsigned32'};
avp_name(265, undefined) ->
    {'Supported-Vendor-Id', 'Unsigned32'};
avp_name(295, undefined) ->
    {'Termination-Cause', 'Enumerated'};
avp_name(1, undefined) -> {'User-Name', 'UTF8String'};
avp_name(266, undefined) -> {'Vendor-Id', 'Unsigned32'};
avp_name(260, undefined) ->
    {'Vendor-Specific-Application-Id', 'Grouped'};
avp_name(345, undefined) ->
    {'MIP-Algorithm-Type', 'Enumerated'};
avp_name(338, undefined) ->
    {'MIP-Auth-Input-Data-Length', 'Unsigned32'};
avp_name(339, undefined) ->
    {'MIP-Authenticator-Length', 'Unsigned32'};
avp_name(340, undefined) ->
    {'MIP-Authenticator-Offset', 'Unsigned32'};
avp_name(336, undefined) ->
    {'MIP-Candidate-Home-Agent-Host', 'DiameterIdentity'};
avp_name(344, undefined) ->
    {'MIP-FA-Challenge', 'OctetString'};
avp_name(328, undefined) ->
    {'MIP-FA-to-HA-MSA', 'Grouped'};
avp_name(318, undefined) ->
    {'MIP-FA-to-HA-SPI', 'Unsigned32'};
avp_name(326, undefined) ->
    {'MIP-FA-to-MN-MSA', 'Grouped'};
avp_name(319, undefined) ->
    {'MIP-FA-to-MN-SPI', 'Unsigned32'};
avp_name(337, undefined) ->
    {'MIP-Feature-Vector', 'Unsigned32'};
avp_name(342, undefined) ->
    {'MIP-Filter-Rule', 'IPFilterRule'};
avp_name(329, undefined) ->
    {'MIP-HA-to-FA-MSA', 'Grouped'};
avp_name(323, undefined) ->
    {'MIP-HA-to-FA-SPI', 'Unsigned32'};
avp_name(332, undefined) ->
    {'MIP-HA-to-MN-MSA', 'Grouped'};
avp_name(334, undefined) ->
    {'MIP-Home-Agent-Address', 'Address'};
avp_name(348, undefined) ->
    {'MIP-Home-Agent-Host', 'Grouped'};
avp_name(322, undefined) ->
    {'MIP-MN-AAA-Auth', 'Grouped'};
avp_name(341, undefined) ->
    {'MIP-MN-AAA-SPI', 'Unsigned32'};
avp_name(325, undefined) ->
    {'MIP-MN-to-FA-MSA', 'Grouped'};
avp_name(331, undefined) ->
    {'MIP-MN-to-HA-MSA', 'Grouped'};
avp_name(367, undefined) ->
    {'MIP-MSA-Lifetime', 'Unsigned32'};
avp_name(333, undefined) ->
    {'MIP-Mobile-Node-Address', 'Address'};
avp_name(335, undefined) ->
    {'MIP-Nonce', 'OctetString'};
avp_name(347, undefined) ->
    {'MIP-Originating-Foreign-AAA', 'Grouped'};
avp_name(321, undefined) ->
    {'MIP-Reg-Reply', 'OctetString'};
avp_name(320, undefined) ->
    {'MIP-Reg-Request', 'OctetString'};
avp_name(346, undefined) ->
    {'MIP-Replay-Mode', 'Enumerated'};
avp_name(343, undefined) ->
    {'MIP-Session-Key', 'OctetString'};
avp_name(_, _) -> 'AVP'.

avp_arity('MIP6-Agent-Info') ->
    [{'MIP-Home-Agent-Address', {0, 2}},
     {'MIP-Home-Agent-Host', {0, 1}},
     {'MIP6-Home-Link-Prefix', {0, 1}},
     {'AVP', {0, '*'}}];
avp_arity('Proxy-Info') ->
    [{'Proxy-Host', 1},
     {'Proxy-State', 1},
     {'AVP', {0, '*'}}];
avp_arity('Failed-AVP') -> [{'AVP', {1, '*'}}];
avp_arity('Experimental-Result') ->
    [{'Vendor-Id', 1}, {'Experimental-Result-Code', 1}];
avp_arity('Vendor-Specific-Application-Id') ->
    [{'Vendor-Id', 1},
     {'Auth-Application-Id', {0, 1}},
     {'Acct-Application-Id', {0, 1}}];
avp_arity('MIP-MN-AAA-Auth') ->
    [{'MIP-MN-AAA-SPI', 1},
     {'MIP-Auth-Input-Data-Length', 1},
     {'MIP-Authenticator-Length', 1},
     {'MIP-Authenticator-Offset', 1},
     {'AVP', {0, '*'}}];
avp_arity('MIP-MN-to-FA-MSA') ->
    [{'MIP-Algorithm-Type', 1},
     {'MIP-Nonce', 1},
     {'AVP', {0, '*'}}];
avp_arity('MIP-FA-to-MN-MSA') ->
    [{'MIP-FA-to-MN-SPI', 1},
     {'MIP-Algorithm-Type', 1},
     {'MIP-Session-Key', 1},
     {'AVP', {0, '*'}}];
avp_arity('MIP-MN-to-HA-MSA') ->
    [{'MIP-Algorithm-Type', 1},
     {'MIP-Replay-Mode', 1},
     {'MIP-Nonce', 1},
     {'AVP', {0, '*'}}];
avp_arity('MIP-HA-to-MN-MSA') ->
    [{'MIP-Algorithm-Type', 1},
     {'MIP-Replay-Mode', 1},
     {'MIP-Session-Key', 1},
     {'AVP', {0, '*'}}];
avp_arity('MIP-FA-to-HA-MSA') ->
    [{'MIP-FA-to-HA-SPI', 1},
     {'MIP-Algorithm-Type', 1},
     {'MIP-Session-Key', 1},
     {'AVP', {0, '*'}}];
avp_arity('MIP-HA-to-FA-MSA') ->
    [{'MIP-HA-to-FA-SPI', 1},
     {'MIP-Algorithm-Type', 1},
     {'MIP-Session-Key', 1},
     {'AVP', {0, '*'}}];
avp_arity('MIP-Originating-Foreign-AAA') ->
    [{'Origin-Realm', 1},
     {'Origin-Host', 1},
     {'AVP', {0, '*'}}];
avp_arity('MIP-Home-Agent-Host') ->
    [{'Destination-Realm', 1},
     {'Destination-Host', 1},
     {'AVP', {0, '*'}}];
avp_arity(_) -> erlang:error(badarg).

avp_arity('MIP6-Agent-Info',
          'MIP-Home-Agent-Address') ->
    {0, 2};
avp_arity('MIP6-Agent-Info', 'MIP-Home-Agent-Host') ->
    {0, 1};
avp_arity('MIP6-Agent-Info', 'MIP6-Home-Link-Prefix') ->
    {0, 1};
avp_arity('MIP6-Agent-Info', 'AVP') -> {0, '*'};
avp_arity('Proxy-Info', 'Proxy-Host') -> 1;
avp_arity('Proxy-Info', 'Proxy-State') -> 1;
avp_arity('Proxy-Info', 'AVP') -> {0, '*'};
avp_arity('Failed-AVP', 'AVP') -> {1, '*'};
avp_arity('Experimental-Result', 'Vendor-Id') -> 1;
avp_arity('Experimental-Result',
          'Experimental-Result-Code') ->
    1;
avp_arity('Vendor-Specific-Application-Id',
          'Vendor-Id') ->
    1;
avp_arity('Vendor-Specific-Application-Id',
          'Auth-Application-Id') ->
    {0, 1};
avp_arity('Vendor-Specific-Application-Id',
          'Acct-Application-Id') ->
    {0, 1};
avp_arity('MIP-MN-AAA-Auth', 'MIP-MN-AAA-SPI') -> 1;
avp_arity('MIP-MN-AAA-Auth',
          'MIP-Auth-Input-Data-Length') ->
    1;
avp_arity('MIP-MN-AAA-Auth',
          'MIP-Authenticator-Length') ->
    1;
avp_arity('MIP-MN-AAA-Auth',
          'MIP-Authenticator-Offset') ->
    1;
avp_arity('MIP-MN-AAA-Auth', 'AVP') -> {0, '*'};
avp_arity('MIP-MN-to-FA-MSA', 'MIP-Algorithm-Type') ->
    1;
avp_arity('MIP-MN-to-FA-MSA', 'MIP-Nonce') -> 1;
avp_arity('MIP-MN-to-FA-MSA', 'AVP') -> {0, '*'};
avp_arity('MIP-FA-to-MN-MSA', 'MIP-FA-to-MN-SPI') -> 1;
avp_arity('MIP-FA-to-MN-MSA', 'MIP-Algorithm-Type') ->
    1;
avp_arity('MIP-FA-to-MN-MSA', 'MIP-Session-Key') -> 1;
avp_arity('MIP-FA-to-MN-MSA', 'AVP') -> {0, '*'};
avp_arity('MIP-MN-to-HA-MSA', 'MIP-Algorithm-Type') ->
    1;
avp_arity('MIP-MN-to-HA-MSA', 'MIP-Replay-Mode') -> 1;
avp_arity('MIP-MN-to-HA-MSA', 'MIP-Nonce') -> 1;
avp_arity('MIP-MN-to-HA-MSA', 'AVP') -> {0, '*'};
avp_arity('MIP-HA-to-MN-MSA', 'MIP-Algorithm-Type') ->
    1;
avp_arity('MIP-HA-to-MN-MSA', 'MIP-Replay-Mode') -> 1;
avp_arity('MIP-HA-to-MN-MSA', 'MIP-Session-Key') -> 1;
avp_arity('MIP-HA-to-MN-MSA', 'AVP') -> {0, '*'};
avp_arity('MIP-FA-to-HA-MSA', 'MIP-FA-to-HA-SPI') -> 1;
avp_arity('MIP-FA-to-HA-MSA', 'MIP-Algorithm-Type') ->
    1;
avp_arity('MIP-FA-to-HA-MSA', 'MIP-Session-Key') -> 1;
avp_arity('MIP-FA-to-HA-MSA', 'AVP') -> {0, '*'};
avp_arity('MIP-HA-to-FA-MSA', 'MIP-HA-to-FA-SPI') -> 1;
avp_arity('MIP-HA-to-FA-MSA', 'MIP-Algorithm-Type') ->
    1;
avp_arity('MIP-HA-to-FA-MSA', 'MIP-Session-Key') -> 1;
avp_arity('MIP-HA-to-FA-MSA', 'AVP') -> {0, '*'};
avp_arity('MIP-Originating-Foreign-AAA',
          'Origin-Realm') ->
    1;
avp_arity('MIP-Originating-Foreign-AAA',
          'Origin-Host') ->
    1;
avp_arity('MIP-Originating-Foreign-AAA', 'AVP') ->
    {0, '*'};
avp_arity('MIP-Home-Agent-Host', 'Destination-Realm') ->
    1;
avp_arity('MIP-Home-Agent-Host', 'Destination-Host') ->
    1;
avp_arity('MIP-Home-Agent-Host', 'AVP') -> {0, '*'};
avp_arity(_, _) -> 0.

avp_header('MIP6-Agent-Info') -> {486, 64, undefined};
avp_header('MIP6-Home-Link-Prefix') ->
    {125, 64, undefined};
avp_header('Accounting-Realtime-Required') ->
    diameter_gen_base_rfc6733:avp_header('Accounting-Realtime-Required');
avp_header('Accounting-Record-Number') ->
    diameter_gen_base_rfc6733:avp_header('Accounting-Record-Number');
avp_header('Accounting-Record-Type') ->
    diameter_gen_base_rfc6733:avp_header('Accounting-Record-Type');
avp_header('Accounting-Sub-Session-Id') ->
    diameter_gen_base_rfc6733:avp_header('Accounting-Sub-Session-Id');
avp_header('Acct-Application-Id') ->
    diameter_gen_base_rfc6733:avp_header('Acct-Application-Id');
avp_header('Acct-Interim-Interval') ->
    diameter_gen_base_rfc6733:avp_header('Acct-Interim-Interval');
avp_header('Acct-Multi-Session-Id') ->
    diameter_gen_base_rfc6733:avp_header('Acct-Multi-Session-Id');
avp_header('Acct-Session-Id') ->
    diameter_gen_base_rfc6733:avp_header('Acct-Session-Id');
avp_header('Auth-Application-Id') ->
    diameter_gen_base_rfc6733:avp_header('Auth-Application-Id');
avp_header('Auth-Grace-Period') ->
    diameter_gen_base_rfc6733:avp_header('Auth-Grace-Period');
avp_header('Auth-Request-Type') ->
    diameter_gen_base_rfc6733:avp_header('Auth-Request-Type');
avp_header('Auth-Session-State') ->
    diameter_gen_base_rfc6733:avp_header('Auth-Session-State');
avp_header('Authorization-Lifetime') ->
    diameter_gen_base_rfc6733:avp_header('Authorization-Lifetime');
avp_header('Class') ->
    diameter_gen_base_rfc6733:avp_header('Class');
avp_header('Destination-Host') ->
    diameter_gen_base_rfc6733:avp_header('Destination-Host');
avp_header('Destination-Realm') ->
    diameter_gen_base_rfc6733:avp_header('Destination-Realm');
avp_header('Disconnect-Cause') ->
    diameter_gen_base_rfc6733:avp_header('Disconnect-Cause');
avp_header('Error-Message') ->
    diameter_gen_base_rfc6733:avp_header('Error-Message');
avp_header('Error-Reporting-Host') ->
    diameter_gen_base_rfc6733:avp_header('Error-Reporting-Host');
avp_header('Event-Timestamp') ->
    diameter_gen_base_rfc6733:avp_header('Event-Timestamp');
avp_header('Experimental-Result') ->
    diameter_gen_base_rfc6733:avp_header('Experimental-Result');
avp_header('Experimental-Result-Code') ->
    diameter_gen_base_rfc6733:avp_header('Experimental-Result-Code');
avp_header('Failed-AVP') ->
    diameter_gen_base_rfc6733:avp_header('Failed-AVP');
avp_header('Firmware-Revision') ->
    diameter_gen_base_rfc6733:avp_header('Firmware-Revision');
avp_header('Host-IP-Address') ->
    diameter_gen_base_rfc6733:avp_header('Host-IP-Address');
avp_header('Inband-Security-Id') ->
    diameter_gen_base_rfc6733:avp_header('Inband-Security-Id');
avp_header('Multi-Round-Time-Out') ->
    diameter_gen_base_rfc6733:avp_header('Multi-Round-Time-Out');
avp_header('Origin-Host') ->
    diameter_gen_base_rfc6733:avp_header('Origin-Host');
avp_header('Origin-Realm') ->
    diameter_gen_base_rfc6733:avp_header('Origin-Realm');
avp_header('Origin-State-Id') ->
    diameter_gen_base_rfc6733:avp_header('Origin-State-Id');
avp_header('Product-Name') ->
    diameter_gen_base_rfc6733:avp_header('Product-Name');
avp_header('Proxy-Host') ->
    diameter_gen_base_rfc6733:avp_header('Proxy-Host');
avp_header('Proxy-Info') ->
    diameter_gen_base_rfc6733:avp_header('Proxy-Info');
avp_header('Proxy-State') ->
    diameter_gen_base_rfc6733:avp_header('Proxy-State');
avp_header('Re-Auth-Request-Type') ->
    diameter_gen_base_rfc6733:avp_header('Re-Auth-Request-Type');
avp_header('Redirect-Host') ->
    diameter_gen_base_rfc6733:avp_header('Redirect-Host');
avp_header('Redirect-Host-Usage') ->
    diameter_gen_base_rfc6733:avp_header('Redirect-Host-Usage');
avp_header('Redirect-Max-Cache-Time') ->
    diameter_gen_base_rfc6733:avp_header('Redirect-Max-Cache-Time');
avp_header('Result-Code') ->
    diameter_gen_base_rfc6733:avp_header('Result-Code');
avp_header('Route-Record') ->
    diameter_gen_base_rfc6733:avp_header('Route-Record');
avp_header('Session-Binding') ->
    diameter_gen_base_rfc6733:avp_header('Session-Binding');
avp_header('Session-Id') ->
    diameter_gen_base_rfc6733:avp_header('Session-Id');
avp_header('Session-Server-Failover') ->
    diameter_gen_base_rfc6733:avp_header('Session-Server-Failover');
avp_header('Session-Timeout') ->
    diameter_gen_base_rfc6733:avp_header('Session-Timeout');
avp_header('Supported-Vendor-Id') ->
    diameter_gen_base_rfc6733:avp_header('Supported-Vendor-Id');
avp_header('Termination-Cause') ->
    diameter_gen_base_rfc6733:avp_header('Termination-Cause');
avp_header('User-Name') ->
    diameter_gen_base_rfc6733:avp_header('User-Name');
avp_header('Vendor-Id') ->
    diameter_gen_base_rfc6733:avp_header('Vendor-Id');
avp_header('Vendor-Specific-Application-Id') ->
    diameter_gen_base_rfc6733:avp_header('Vendor-Specific-Application-Id');
avp_header('MIP-Algorithm-Type') ->
    diameter_rfc4004:avp_header('MIP-Algorithm-Type');
avp_header('MIP-Auth-Input-Data-Length') ->
    diameter_rfc4004:avp_header('MIP-Auth-Input-Data-Length');
avp_header('MIP-Authenticator-Length') ->
    diameter_rfc4004:avp_header('MIP-Authenticator-Length');
avp_header('MIP-Authenticator-Offset') ->
    diameter_rfc4004:avp_header('MIP-Authenticator-Offset');
avp_header('MIP-Candidate-Home-Agent-Host') ->
    diameter_rfc4004:avp_header('MIP-Candidate-Home-Agent-Host');
avp_header('MIP-FA-Challenge') ->
    diameter_rfc4004:avp_header('MIP-FA-Challenge');
avp_header('MIP-FA-to-HA-MSA') ->
    diameter_rfc4004:avp_header('MIP-FA-to-HA-MSA');
avp_header('MIP-FA-to-HA-SPI') ->
    diameter_rfc4004:avp_header('MIP-FA-to-HA-SPI');
avp_header('MIP-FA-to-MN-MSA') ->
    diameter_rfc4004:avp_header('MIP-FA-to-MN-MSA');
avp_header('MIP-FA-to-MN-SPI') ->
    diameter_rfc4004:avp_header('MIP-FA-to-MN-SPI');
avp_header('MIP-Feature-Vector') ->
    diameter_rfc4004:avp_header('MIP-Feature-Vector');
avp_header('MIP-Filter-Rule') ->
    diameter_rfc4004:avp_header('MIP-Filter-Rule');
avp_header('MIP-HA-to-FA-MSA') ->
    diameter_rfc4004:avp_header('MIP-HA-to-FA-MSA');
avp_header('MIP-HA-to-FA-SPI') ->
    diameter_rfc4004:avp_header('MIP-HA-to-FA-SPI');
avp_header('MIP-HA-to-MN-MSA') ->
    diameter_rfc4004:avp_header('MIP-HA-to-MN-MSA');
avp_header('MIP-Home-Agent-Address') ->
    diameter_rfc4004:avp_header('MIP-Home-Agent-Address');
avp_header('MIP-Home-Agent-Host') ->
    diameter_rfc4004:avp_header('MIP-Home-Agent-Host');
avp_header('MIP-MN-AAA-Auth') ->
    diameter_rfc4004:avp_header('MIP-MN-AAA-Auth');
avp_header('MIP-MN-AAA-SPI') ->
    diameter_rfc4004:avp_header('MIP-MN-AAA-SPI');
avp_header('MIP-MN-to-FA-MSA') ->
    diameter_rfc4004:avp_header('MIP-MN-to-FA-MSA');
avp_header('MIP-MN-to-HA-MSA') ->
    diameter_rfc4004:avp_header('MIP-MN-to-HA-MSA');
avp_header('MIP-MSA-Lifetime') ->
    diameter_rfc4004:avp_header('MIP-MSA-Lifetime');
avp_header('MIP-Mobile-Node-Address') ->
    diameter_rfc4004:avp_header('MIP-Mobile-Node-Address');
avp_header('MIP-Nonce') ->
    diameter_rfc4004:avp_header('MIP-Nonce');
avp_header('MIP-Originating-Foreign-AAA') ->
    diameter_rfc4004:avp_header('MIP-Originating-Foreign-AAA');
avp_header('MIP-Reg-Reply') ->
    diameter_rfc4004:avp_header('MIP-Reg-Reply');
avp_header('MIP-Reg-Request') ->
    diameter_rfc4004:avp_header('MIP-Reg-Request');
avp_header('MIP-Replay-Mode') ->
    diameter_rfc4004:avp_header('MIP-Replay-Mode');
avp_header('MIP-Session-Key') ->
    diameter_rfc4004:avp_header('MIP-Session-Key');
avp_header(_) -> erlang:error(badarg).

avp(T, Data, 'MIP6-Agent-Info', Opts) ->
    grouped_avp(T, 'MIP6-Agent-Info', Data, Opts);
avp(T, Data, 'MIP6-Home-Link-Prefix', Opts) ->
    diameter_types:'OctetString'(T, Data, Opts);
avp(T, Data, 'Accounting-Realtime-Required', Opts) ->
    avp(T,
        Data,
        'Accounting-Realtime-Required',
        Opts,
        diameter_gen_base_rfc6733);
avp(T, Data, 'Accounting-Record-Number', Opts) ->
    avp(T,
        Data,
        'Accounting-Record-Number',
        Opts,
        diameter_gen_base_rfc6733);
avp(T, Data, 'Accounting-Record-Type', Opts) ->
    avp(T,
        Data,
        'Accounting-Record-Type',
        Opts,
        diameter_gen_base_rfc6733);
avp(T, Data, 'Accounting-Sub-Session-Id', Opts) ->
    avp(T,
        Data,
        'Accounting-Sub-Session-Id',
        Opts,
        diameter_gen_base_rfc6733);
avp(T, Data, 'Acct-Application-Id', Opts) ->
    avp(T,
        Data,
        'Acct-Application-Id',
        Opts,
        diameter_gen_base_rfc6733);
avp(T, Data, 'Acct-Interim-Interval', Opts) ->
    avp(T,
        Data,
        'Acct-Interim-Interval',
        Opts,
        diameter_gen_base_rfc6733);
avp(T, Data, 'Acct-Multi-Session-Id', Opts) ->
    avp(T,
        Data,
        'Acct-Multi-Session-Id',
        Opts,
        diameter_gen_base_rfc6733);
avp(T, Data, 'Acct-Session-Id', Opts) ->
    avp(T,
        Data,
        'Acct-Session-Id',
        Opts,
        diameter_gen_base_rfc6733);
avp(T, Data, 'Auth-Application-Id', Opts) ->
    avp(T,
        Data,
        'Auth-Application-Id',
        Opts,
        diameter_gen_base_rfc6733);
avp(T, Data, 'Auth-Grace-Period', Opts) ->
    avp(T,
        Data,
        'Auth-Grace-Period',
        Opts,
        diameter_gen_base_rfc6733);
avp(T, Data, 'Auth-Request-Type', Opts) ->
    avp(T,
        Data,
        'Auth-Request-Type',
        Opts,
        diameter_gen_base_rfc6733);
avp(T, Data, 'Auth-Session-State', Opts) ->
    avp(T,
        Data,
        'Auth-Session-State',
        Opts,
        diameter_gen_base_rfc6733);
avp(T, Data, 'Authorization-Lifetime', Opts) ->
    avp(T,
        Data,
        'Authorization-Lifetime',
        Opts,
        diameter_gen_base_rfc6733);
avp(T, Data, 'Class', Opts) ->
    avp(T, Data, 'Class', Opts, diameter_gen_base_rfc6733);
avp(T, Data, 'Destination-Host', Opts) ->
    avp(T,
        Data,
        'Destination-Host',
        Opts,
        diameter_gen_base_rfc6733);
avp(T, Data, 'Destination-Realm', Opts) ->
    avp(T,
        Data,
        'Destination-Realm',
        Opts,
        diameter_gen_base_rfc6733);
avp(T, Data, 'Disconnect-Cause', Opts) ->
    avp(T,
        Data,
        'Disconnect-Cause',
        Opts,
        diameter_gen_base_rfc6733);
avp(T, Data, 'Error-Message', Opts) ->
    avp(T,
        Data,
        'Error-Message',
        Opts,
        diameter_gen_base_rfc6733);
avp(T, Data, 'Error-Reporting-Host', Opts) ->
    avp(T,
        Data,
        'Error-Reporting-Host',
        Opts,
        diameter_gen_base_rfc6733);
avp(T, Data, 'Event-Timestamp', Opts) ->
    avp(T,
        Data,
        'Event-Timestamp',
        Opts,
        diameter_gen_base_rfc6733);
avp(T, Data, 'Experimental-Result', Opts) ->
    grouped_avp(T, 'Experimental-Result', Data, Opts);
avp(T, Data, 'Experimental-Result-Code', Opts) ->
    avp(T,
        Data,
        'Experimental-Result-Code',
        Opts,
        diameter_gen_base_rfc6733);
avp(T, Data, 'Failed-AVP', Opts) ->
    grouped_avp(T, 'Failed-AVP', Data, Opts);
avp(T, Data, 'Firmware-Revision', Opts) ->
    avp(T,
        Data,
        'Firmware-Revision',
        Opts,
        diameter_gen_base_rfc6733);
avp(T, Data, 'Host-IP-Address', Opts) ->
    avp(T,
        Data,
        'Host-IP-Address',
        Opts,
        diameter_gen_base_rfc6733);
avp(T, Data, 'Inband-Security-Id', Opts) ->
    avp(T,
        Data,
        'Inband-Security-Id',
        Opts,
        diameter_gen_base_rfc6733);
avp(T, Data, 'Multi-Round-Time-Out', Opts) ->
    avp(T,
        Data,
        'Multi-Round-Time-Out',
        Opts,
        diameter_gen_base_rfc6733);
avp(T, Data, 'Origin-Host', Opts) ->
    avp(T,
        Data,
        'Origin-Host',
        Opts,
        diameter_gen_base_rfc6733);
avp(T, Data, 'Origin-Realm', Opts) ->
    avp(T,
        Data,
        'Origin-Realm',
        Opts,
        diameter_gen_base_rfc6733);
avp(T, Data, 'Origin-State-Id', Opts) ->
    avp(T,
        Data,
        'Origin-State-Id',
        Opts,
        diameter_gen_base_rfc6733);
avp(T, Data, 'Product-Name', Opts) ->
    avp(T,
        Data,
        'Product-Name',
        Opts,
        diameter_gen_base_rfc6733);
avp(T, Data, 'Proxy-Host', Opts) ->
    avp(T,
        Data,
        'Proxy-Host',
        Opts,
        diameter_gen_base_rfc6733);
avp(T, Data, 'Proxy-Info', Opts) ->
    grouped_avp(T, 'Proxy-Info', Data, Opts);
avp(T, Data, 'Proxy-State', Opts) ->
    avp(T,
        Data,
        'Proxy-State',
        Opts,
        diameter_gen_base_rfc6733);
avp(T, Data, 'Re-Auth-Request-Type', Opts) ->
    avp(T,
        Data,
        'Re-Auth-Request-Type',
        Opts,
        diameter_gen_base_rfc6733);
avp(T, Data, 'Redirect-Host', Opts) ->
    avp(T,
        Data,
        'Redirect-Host',
        Opts,
        diameter_gen_base_rfc6733);
avp(T, Data, 'Redirect-Host-Usage', Opts) ->
    avp(T,
        Data,
        'Redirect-Host-Usage',
        Opts,
        diameter_gen_base_rfc6733);
avp(T, Data, 'Redirect-Max-Cache-Time', Opts) ->
    avp(T,
        Data,
        'Redirect-Max-Cache-Time',
        Opts,
        diameter_gen_base_rfc6733);
avp(T, Data, 'Result-Code', Opts) ->
    avp(T,
        Data,
        'Result-Code',
        Opts,
        diameter_gen_base_rfc6733);
avp(T, Data, 'Route-Record', Opts) ->
    avp(T,
        Data,
        'Route-Record',
        Opts,
        diameter_gen_base_rfc6733);
avp(T, Data, 'Session-Binding', Opts) ->
    avp(T,
        Data,
        'Session-Binding',
        Opts,
        diameter_gen_base_rfc6733);
avp(T, Data, 'Session-Id', Opts) ->
    avp(T,
        Data,
        'Session-Id',
        Opts,
        diameter_gen_base_rfc6733);
avp(T, Data, 'Session-Server-Failover', Opts) ->
    avp(T,
        Data,
        'Session-Server-Failover',
        Opts,
        diameter_gen_base_rfc6733);
avp(T, Data, 'Session-Timeout', Opts) ->
    avp(T,
        Data,
        'Session-Timeout',
        Opts,
        diameter_gen_base_rfc6733);
avp(T, Data, 'Supported-Vendor-Id', Opts) ->
    avp(T,
        Data,
        'Supported-Vendor-Id',
        Opts,
        diameter_gen_base_rfc6733);
avp(T, Data, 'Termination-Cause', Opts) ->
    avp(T,
        Data,
        'Termination-Cause',
        Opts,
        diameter_gen_base_rfc6733);
avp(T, Data, 'User-Name', Opts) ->
    avp(T,
        Data,
        'User-Name',
        Opts,
        diameter_gen_base_rfc6733);
avp(T, Data, 'Vendor-Id', Opts) ->
    avp(T,
        Data,
        'Vendor-Id',
        Opts,
        diameter_gen_base_rfc6733);
avp(T, Data, 'Vendor-Specific-Application-Id', Opts) ->
    grouped_avp(T,
                'Vendor-Specific-Application-Id',
                Data,
                Opts);
avp(T, Data, 'MIP-Algorithm-Type', Opts) ->
    avp(T,
        Data,
        'MIP-Algorithm-Type',
        Opts,
        diameter_rfc4004);
avp(T, Data, 'MIP-Auth-Input-Data-Length', Opts) ->
    avp(T,
        Data,
        'MIP-Auth-Input-Data-Length',
        Opts,
        diameter_rfc4004);
avp(T, Data, 'MIP-Authenticator-Length', Opts) ->
    avp(T,
        Data,
        'MIP-Authenticator-Length',
        Opts,
        diameter_rfc4004);
avp(T, Data, 'MIP-Authenticator-Offset', Opts) ->
    avp(T,
        Data,
        'MIP-Authenticator-Offset',
        Opts,
        diameter_rfc4004);
avp(T, Data, 'MIP-Candidate-Home-Agent-Host', Opts) ->
    avp(T,
        Data,
        'MIP-Candidate-Home-Agent-Host',
        Opts,
        diameter_rfc4004);
avp(T, Data, 'MIP-FA-Challenge', Opts) ->
    avp(T,
        Data,
        'MIP-FA-Challenge',
        Opts,
        diameter_rfc4004);
avp(T, Data, 'MIP-FA-to-HA-MSA', Opts) ->
    grouped_avp(T, 'MIP-FA-to-HA-MSA', Data, Opts);
avp(T, Data, 'MIP-FA-to-HA-SPI', Opts) ->
    avp(T,
        Data,
        'MIP-FA-to-HA-SPI',
        Opts,
        diameter_rfc4004);
avp(T, Data, 'MIP-FA-to-MN-MSA', Opts) ->
    grouped_avp(T, 'MIP-FA-to-MN-MSA', Data, Opts);
avp(T, Data, 'MIP-FA-to-MN-SPI', Opts) ->
    avp(T,
        Data,
        'MIP-FA-to-MN-SPI',
        Opts,
        diameter_rfc4004);
avp(T, Data, 'MIP-Feature-Vector', Opts) ->
    avp(T,
        Data,
        'MIP-Feature-Vector',
        Opts,
        diameter_rfc4004);
avp(T, Data, 'MIP-Filter-Rule', Opts) ->
    avp(T, Data, 'MIP-Filter-Rule', Opts, diameter_rfc4004);
avp(T, Data, 'MIP-HA-to-FA-MSA', Opts) ->
    grouped_avp(T, 'MIP-HA-to-FA-MSA', Data, Opts);
avp(T, Data, 'MIP-HA-to-FA-SPI', Opts) ->
    avp(T,
        Data,
        'MIP-HA-to-FA-SPI',
        Opts,
        diameter_rfc4004);
avp(T, Data, 'MIP-HA-to-MN-MSA', Opts) ->
    grouped_avp(T, 'MIP-HA-to-MN-MSA', Data, Opts);
avp(T, Data, 'MIP-Home-Agent-Address', Opts) ->
    avp(T,
        Data,
        'MIP-Home-Agent-Address',
        Opts,
        diameter_rfc4004);
avp(T, Data, 'MIP-Home-Agent-Host', Opts) ->
    grouped_avp(T, 'MIP-Home-Agent-Host', Data, Opts);
avp(T, Data, 'MIP-MN-AAA-Auth', Opts) ->
    grouped_avp(T, 'MIP-MN-AAA-Auth', Data, Opts);
avp(T, Data, 'MIP-MN-AAA-SPI', Opts) ->
    avp(T, Data, 'MIP-MN-AAA-SPI', Opts, diameter_rfc4004);
avp(T, Data, 'MIP-MN-to-FA-MSA', Opts) ->
    grouped_avp(T, 'MIP-MN-to-FA-MSA', Data, Opts);
avp(T, Data, 'MIP-MN-to-HA-MSA', Opts) ->
    grouped_avp(T, 'MIP-MN-to-HA-MSA', Data, Opts);
avp(T, Data, 'MIP-MSA-Lifetime', Opts) ->
    avp(T,
        Data,
        'MIP-MSA-Lifetime',
        Opts,
        diameter_rfc4004);
avp(T, Data, 'MIP-Mobile-Node-Address', Opts) ->
    avp(T,
        Data,
        'MIP-Mobile-Node-Address',
        Opts,
        diameter_rfc4004);
avp(T, Data, 'MIP-Nonce', Opts) ->
    avp(T, Data, 'MIP-Nonce', Opts, diameter_rfc4004);
avp(T, Data, 'MIP-Originating-Foreign-AAA', Opts) ->
    grouped_avp(T,
                'MIP-Originating-Foreign-AAA',
                Data,
                Opts);
avp(T, Data, 'MIP-Reg-Reply', Opts) ->
    avp(T, Data, 'MIP-Reg-Reply', Opts, diameter_rfc4004);
avp(T, Data, 'MIP-Reg-Request', Opts) ->
    avp(T, Data, 'MIP-Reg-Request', Opts, diameter_rfc4004);
avp(T, Data, 'MIP-Replay-Mode', Opts) ->
    avp(T, Data, 'MIP-Replay-Mode', Opts, diameter_rfc4004);
avp(T, Data, 'MIP-Session-Key', Opts) ->
    avp(T, Data, 'MIP-Session-Key', Opts, diameter_rfc4004);
avp(_, _, _, _) -> erlang:error(badarg).

enumerated_avp(_, _, _) -> erlang:error(badarg).

empty_value('MIP6-Agent-Info', Opts) ->
    empty_group('MIP6-Agent-Info', Opts);
empty_value('Proxy-Info', Opts) ->
    empty_group('Proxy-Info', Opts);
empty_value('Failed-AVP', Opts) ->
    empty_group('Failed-AVP', Opts);
empty_value('Experimental-Result', Opts) ->
    empty_group('Experimental-Result', Opts);
empty_value('Vendor-Specific-Application-Id', Opts) ->
    empty_group('Vendor-Specific-Application-Id', Opts);
empty_value('MIP-MN-AAA-Auth', Opts) ->
    empty_group('MIP-MN-AAA-Auth', Opts);
empty_value('MIP-MN-to-FA-MSA', Opts) ->
    empty_group('MIP-MN-to-FA-MSA', Opts);
empty_value('MIP-FA-to-MN-MSA', Opts) ->
    empty_group('MIP-FA-to-MN-MSA', Opts);
empty_value('MIP-MN-to-HA-MSA', Opts) ->
    empty_group('MIP-MN-to-HA-MSA', Opts);
empty_value('MIP-HA-to-MN-MSA', Opts) ->
    empty_group('MIP-HA-to-MN-MSA', Opts);
empty_value('MIP-FA-to-HA-MSA', Opts) ->
    empty_group('MIP-FA-to-HA-MSA', Opts);
empty_value('MIP-HA-to-FA-MSA', Opts) ->
    empty_group('MIP-HA-to-FA-MSA', Opts);
empty_value('MIP-Originating-Foreign-AAA', Opts) ->
    empty_group('MIP-Originating-Foreign-AAA', Opts);
empty_value('MIP-Home-Agent-Host', Opts) ->
    empty_group('MIP-Home-Agent-Host', Opts);
empty_value('Disconnect-Cause', _) -> <<0, 0, 0, 0>>;
empty_value('Redirect-Host-Usage', _) -> <<0, 0, 0, 0>>;
empty_value('Auth-Request-Type', _) -> <<0, 0, 0, 0>>;
empty_value('Auth-Session-State', _) -> <<0, 0, 0, 0>>;
empty_value('Re-Auth-Request-Type', _) ->
    <<0, 0, 0, 0>>;
empty_value('Termination-Cause', _) -> <<0, 0, 0, 0>>;
empty_value('Session-Server-Failover', _) ->
    <<0, 0, 0, 0>>;
empty_value('Accounting-Record-Type', _) ->
    <<0, 0, 0, 0>>;
empty_value('Accounting-Realtime-Required', _) ->
    <<0, 0, 0, 0>>;
empty_value(Name, Opts) -> empty(Name, Opts).

dict() ->
    [1,
     {avp_types,
      [{"MIP6-Agent-Info", 486, "Grouped", "M"},
       {"MIP6-Home-Link-Prefix", 125, "OctetString", "M"}]},
     {avp_vendor_id, []},
     {codecs, []},
     {command_codes, []},
     {custom_types, []},
     {define, []},
     {enum, []},
     {grouped,
      [{"MIP6-Agent-Info",
        486,
        [],
        [{{0, 2}, ["MIP-Home-Agent-Address"]},
         ["MIP-Home-Agent-Host"],
         ["MIP6-Home-Link-Prefix"],
         {'*', ["AVP"]}]}]},
     {id, 1},
     {import_avps,
      [{diameter_gen_base_rfc6733,
        [{"Accounting-Realtime-Required",
          483,
          "Enumerated",
          "M"},
         {"Accounting-Record-Number", 485, "Unsigned32", "M"},
         {"Accounting-Record-Type", 480, "Enumerated", "M"},
         {"Accounting-Sub-Session-Id", 287, "Unsigned64", "M"},
         {"Acct-Application-Id", 259, "Unsigned32", "M"},
         {"Acct-Interim-Interval", 85, "Unsigned32", "M"},
         {"Acct-Multi-Session-Id", 50, "UTF8String", "M"},
         {"Acct-Session-Id", 44, "OctetString", "M"},
         {"Auth-Application-Id", 258, "Unsigned32", "M"},
         {"Auth-Grace-Period", 276, "Unsigned32", "M"},
         {"Auth-Request-Type", 274, "Enumerated", "M"},
         {"Auth-Session-State", 277, "Enumerated", "M"},
         {"Authorization-Lifetime", 291, "Unsigned32", "M"},
         {"Class", 25, "OctetString", "M"},
         {"Destination-Host", 293, "DiameterIdentity", "M"},
         {"Destination-Realm", 283, "DiameterIdentity", "M"},
         {"Disconnect-Cause", 273, "Enumerated", "M"},
         {"Error-Message", 281, "UTF8String", []},
         {"Error-Reporting-Host", 294, "DiameterIdentity", []},
         {"Event-Timestamp", 55, "Time", "M"},
         {"Experimental-Result", 297, "Grouped", "M"},
         {"Experimental-Result-Code", 298, "Unsigned32", "M"},
         {"Failed-AVP", 279, "Grouped", "M"},
         {"Firmware-Revision", 267, "Unsigned32", []},
         {"Host-IP-Address", 257, "Address", "M"},
         {"Inband-Security-Id", 299, "Unsigned32", "M"},
         {"Multi-Round-Time-Out", 272, "Unsigned32", "M"},
         {"Origin-Host", 264, "DiameterIdentity", "M"},
         {"Origin-Realm", 296, "DiameterIdentity", "M"},
         {"Origin-State-Id", 278, "Unsigned32", "M"},
         {"Product-Name", 269, "UTF8String", []},
         {"Proxy-Host", 280, "DiameterIdentity", "M"},
         {"Proxy-Info", 284, "Grouped", "M"},
         {"Proxy-State", 33, "OctetString", "M"},
         {"Re-Auth-Request-Type", 285, "Enumerated", "M"},
         {"Redirect-Host", 292, "DiameterURI", "M"},
         {"Redirect-Host-Usage", 261, "Enumerated", "M"},
         {"Redirect-Max-Cache-Time", 262, "Unsigned32", "M"},
         {"Result-Code", 268, "Unsigned32", "M"},
         {"Route-Record", 282, "DiameterIdentity", "M"},
         {"Session-Binding", 270, "Unsigned32", "M"},
         {"Session-Id", 263, "UTF8String", "M"},
         {"Session-Server-Failover", 271, "Enumerated", "M"},
         {"Session-Timeout", 27, "Unsigned32", "M"},
         {"Supported-Vendor-Id", 265, "Unsigned32", "M"},
         {"Termination-Cause", 295, "Enumerated", "M"},
         {"User-Name", 1, "UTF8String", "M"},
         {"Vendor-Id", 266, "Unsigned32", "M"},
         {"Vendor-Specific-Application-Id",
          260,
          "Grouped",
          "M"}]},
       {diameter_rfc4004,
        [{"MIP-Algorithm-Type", 345, "Enumerated", "M"},
         {"MIP-Auth-Input-Data-Length", 338, "Unsigned32", "M"},
         {"MIP-Authenticator-Length", 339, "Unsigned32", "M"},
         {"MIP-Authenticator-Offset", 340, "Unsigned32", "M"},
         {"MIP-Candidate-Home-Agent-Host",
          336,
          "DiameterIdentity",
          "M"},
         {"MIP-FA-Challenge", 344, "OctetString", "M"},
         {"MIP-FA-to-HA-MSA", 328, "Grouped", "M"},
         {"MIP-FA-to-HA-SPI", 318, "Unsigned32", "M"},
         {"MIP-FA-to-MN-MSA", 326, "Grouped", "M"},
         {"MIP-FA-to-MN-SPI", 319, "Unsigned32", "M"},
         {"MIP-Feature-Vector", 337, "Unsigned32", "M"},
         {"MIP-Filter-Rule", 342, "IPFilterRule", "M"},
         {"MIP-HA-to-FA-MSA", 329, "Grouped", "M"},
         {"MIP-HA-to-FA-SPI", 323, "Unsigned32", "M"},
         {"MIP-HA-to-MN-MSA", 332, "Grouped", "M"},
         {"MIP-Home-Agent-Address", 334, "Address", "M"},
         {"MIP-Home-Agent-Host", 348, "Grouped", "M"},
         {"MIP-MN-AAA-Auth", 322, "Grouped", "M"},
         {"MIP-MN-AAA-SPI", 341, "Unsigned32", "M"},
         {"MIP-MN-to-FA-MSA", 325, "Grouped", "M"},
         {"MIP-MN-to-HA-MSA", 331, "Grouped", "M"},
         {"MIP-MSA-Lifetime", 367, "Unsigned32", "M"},
         {"MIP-Mobile-Node-Address", 333, "Address", "M"},
         {"MIP-Nonce", 335, "OctetString", "M"},
         {"MIP-Originating-Foreign-AAA", 347, "Grouped", "M"},
         {"MIP-Reg-Reply", 321, "OctetString", "M"},
         {"MIP-Reg-Request", 320, "OctetString", "M"},
         {"MIP-Replay-Mode", 346, "Enumerated", "M"},
         {"MIP-Session-Key", 343, "OctetString", "M"}]}]},
     {import_enums,
      [{diameter_gen_base_rfc6733,
        [{"Disconnect-Cause",
          [{"REBOOTING", 0},
           {"BUSY", 1},
           {"DO_NOT_WANT_TO_TALK_TO_YOU", 2}]},
         {"Redirect-Host-Usage",
          [{"DONT_CACHE", 0},
           {"ALL_SESSION", 1},
           {"ALL_REALM", 2},
           {"REALM_AND_APPLICATION", 3},
           {"ALL_APPLICATION", 4},
           {"ALL_HOST", 5},
           {"ALL_USER", 6}]},
         {"Auth-Request-Type",
          [{"AUTHENTICATE_ONLY", 1},
           {"AUTHORIZE_ONLY", 2},
           {"AUTHORIZE_AUTHENTICATE", 3}]},
         {"Auth-Session-State",
          [{"STATE_MAINTAINED", 0}, {"NO_STATE_MAINTAINED", 1}]},
         {"Re-Auth-Request-Type",
          [{"AUTHORIZE_ONLY", 0}, {"AUTHORIZE_AUTHENTICATE", 1}]},
         {"Termination-Cause",
          [{"LOGOUT", 1},
           {"SERVICE_NOT_PROVIDED", 2},
           {"BAD_ANSWER", 3},
           {"ADMINISTRATIVE", 4},
           {"LINK_BROKEN", 5},
           {"AUTH_EXPIRED", 6},
           {"USER_MOVED", 7},
           {"SESSION_TIMEOUT", 8}]},
         {"Session-Server-Failover",
          [{"REFUSE_SERVICE", 0},
           {"TRY_AGAIN", 1},
           {"ALLOW_SERVICE", 2},
           {"TRY_AGAIN_ALLOW_SERVICE", 3}]},
         {"Accounting-Record-Type",
          [{"EVENT_RECORD", 1},
           {"START_RECORD", 2},
           {"INTERIM_RECORD", 3},
           {"STOP_RECORD", 4}]},
         {"Accounting-Realtime-Required",
          [{"DELIVER_AND_GRANT", 1},
           {"GRANT_AND_STORE", 2},
           {"GRANT_AND_LOSE", 3}]}]}]},
     {import_groups,
      [{diameter_gen_base_rfc6733,
        [{"Proxy-Info",
          284,
          [],
          [{"Proxy-Host"}, {"Proxy-State"}, {'*', ["AVP"]}]},
         {"Failed-AVP", 279, [], [{'*', {"AVP"}}]},
         {"Experimental-Result",
          297,
          [],
          [{"Vendor-Id"}, {"Experimental-Result-Code"}]},
         {"Vendor-Specific-Application-Id",
          260,
          [],
          [{"Vendor-Id"},
           ["Auth-Application-Id"],
           ["Acct-Application-Id"]]}]},
       {diameter_rfc4004,
        [{"MIP-MN-AAA-Auth",
          322,
          [],
          [{"MIP-MN-AAA-SPI"},
           {"MIP-Auth-Input-Data-Length"},
           {"MIP-Authenticator-Length"},
           {"MIP-Authenticator-Offset"},
           {'*', ["AVP"]}]},
         {"MIP-MN-to-FA-MSA",
          325,
          [],
          [{"MIP-Algorithm-Type"},
           {"MIP-Nonce"},
           {'*', ["AVP"]}]},
         {"MIP-FA-to-MN-MSA",
          326,
          [],
          [{"MIP-FA-to-MN-SPI"},
           {"MIP-Algorithm-Type"},
           {"MIP-Session-Key"},
           {'*', ["AVP"]}]},
         {"MIP-MN-to-HA-MSA",
          331,
          [],
          [{"MIP-Algorithm-Type"},
           {"MIP-Replay-Mode"},
           {"MIP-Nonce"},
           {'*', ["AVP"]}]},
         {"MIP-HA-to-MN-MSA",
          332,
          [],
          [{"MIP-Algorithm-Type"},
           {"MIP-Replay-Mode"},
           {"MIP-Session-Key"},
           {'*', ["AVP"]}]},
         {"MIP-FA-to-HA-MSA",
          328,
          [],
          [{"MIP-FA-to-HA-SPI"},
           {"MIP-Algorithm-Type"},
           {"MIP-Session-Key"},
           {'*', ["AVP"]}]},
         {"MIP-HA-to-FA-MSA",
          329,
          [],
          [{"MIP-HA-to-FA-SPI"},
           {"MIP-Algorithm-Type"},
           {"MIP-Session-Key"},
           {'*', ["AVP"]}]},
         {"MIP-Originating-Foreign-AAA",
          347,
          [],
          [{"Origin-Realm"}, {"Origin-Host"}, {'*', ["AVP"]}]},
         {"MIP-Home-Agent-Host",
          348,
          [],
          [{"Destination-Realm"},
           {"Destination-Host"},
           {'*', ["AVP"]}]}]}]},
     {inherits,
      [{"diameter_rfc4004", []},
       {"diameter_gen_base_rfc6733", []}]},
     {messages, []},
     {name, "diameter_rfc5447"}].


