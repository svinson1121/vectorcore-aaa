%% -------------------------------------------------------------------
%% This is a generated file.
%% -------------------------------------------------------------------

-module(diameter_rfc4072).

-moduledoc(false).

-compile({parse_transform, diameter_exprecs}).

-compile(nowarn_unused_function).

-dialyzer(no_return).

-export_records(['DER',
                 'DEA',
                 'Proxy-Info',
                 'Failed-AVP',
                 'Experimental-Result',
                 'Vendor-Specific-Application-Id',
                 'Tunneling']).

-record('DER',
        {'Session-Id',
         'Auth-Application-Id',
         'Origin-Host',
         'Origin-Realm',
         'Destination-Realm',
         'Auth-Request-Type',
         'EAP-Payload',
         'Destination-Host' = [],
         'NAS-Identifier' = [],
         'NAS-IP-Address' = [],
         'NAS-IPv6-Address' = [],
         'NAS-Port' = [],
         'NAS-Port-Id' = [],
         'NAS-Port-Type' = [],
         'Origin-State-Id' = [],
         'Port-Limit' = [],
         'User-Name' = [],
         'EAP-Key-Name' = [],
         'Service-Type' = [],
         'State' = [],
         'Authorization-Lifetime' = [],
         'Auth-Grace-Period' = [],
         'Auth-Session-State' = [],
         'Callback-Number' = [],
         'Called-Station-Id' = [],
         'Calling-Station-Id' = [],
         'Originating-Line-Info' = [],
         'Connect-Info' = [],
         'Framed-Compression' = [],
         'Framed-Interface-Id' = [],
         'Framed-IP-Address' = [],
         'Framed-IPv6-Prefix' = [],
         'Framed-IP-Netmask' = [],
         'Framed-MTU' = [],
         'Framed-Protocol' = [],
         'Tunneling' = [],
         'Proxy-Info' = [],
         'Route-Record' = [],
         'AVP' = []}).

-record('DEA',
        {'Session-Id',
         'Auth-Application-Id',
         'Auth-Request-Type',
         'Result-Code',
         'Origin-Host',
         'Origin-Realm',
         'User-Name' = [],
         'EAP-Payload' = [],
         'EAP-Reissued-Payload' = [],
         'EAP-Master-Session-Key' = [],
         'EAP-Key-Name' = [],
         'Multi-Round-Time-Out' = [],
         'Accounting-EAP-Auth-Method' = [],
         'Service-Type' = [],
         'Class' = [],
         'Configuration-Token' = [],
         'Acct-Interim-Interval' = [],
         'Error-Message' = [],
         'Error-Reporting-Host' = [],
         'Failed-AVP' = [],
         'Idle-Timeout' = [],
         'Authorization-Lifetime' = [],
         'Auth-Grace-Period' = [],
         'Auth-Session-State' = [],
         'Re-Auth-Request-Type' = [],
         'Session-Timeout' = [],
         'State' = [],
         'Reply-Message' = [],
         'Origin-State-Id' = [],
         'Filter-Id' = [],
         'Port-Limit' = [],
         'Callback-Id' = [],
         'Callback-Number' = [],
         'Framed-AppleTalk-Link' = [],
         'Framed-AppleTalk-Network' = [],
         'Framed-AppleTalk-Zone' = [],
         'Framed-Compression' = [],
         'Framed-Interface-Id' = [],
         'Framed-IP-Address' = [],
         'Framed-IPv6-Prefix' = [],
         'Framed-IPv6-Pool' = [],
         'Framed-IPv6-Route' = [],
         'Framed-IP-Netmask' = [],
         'Framed-Route' = [],
         'Framed-Pool' = [],
         'Framed-IPX-Network' = [],
         'Framed-MTU' = [],
         'Framed-Protocol' = [],
         'Framed-Routing' = [],
         'NAS-Filter-Rule' = [],
         'QoS-Filter-Rule' = [],
         'Tunneling' = [],
         'Redirect-Host' = [],
         'Redirect-Host-Usage' = [],
         'Redirect-Max-Cache-Time' = [],
         'Proxy-Info' = [],
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

-record('Tunneling',
        {'Tunnel-Type',
         'Tunnel-Medium-Type',
         'Tunnel-Client-Endpoint',
         'Tunnel-Server-Endpoint',
         'Tunnel-Preference' = [],
         'Tunnel-Client-Auth-Id' = [],
         'Tunnel-Server-Auth-Id' = [],
         'Tunnel-Assignment-Id' = [],
         'Tunnel-Password' = [],
         'Tunnel-Private-Group-Id' = []}).

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

name() -> diameter_rfc4072.

id() -> 1.

vendor_id() -> erlang:error(undefined).

vendor_name() -> erlang:error(undefined).

msg_name(268, true) -> 'DER';
msg_name(268, false) -> 'DEA';
msg_name(_, _) -> ''.

msg_header('DER') -> {268, 192, 1};
msg_header('DEA') -> {268, 64, 1};
msg_header(_) -> erlang:error(badarg).

rec2msg('DER') -> 'DER';
rec2msg('DEA') -> 'DEA';
rec2msg(_) -> erlang:error(badarg).

msg2rec('DER') -> 'DER';
msg2rec('DEA') -> 'DEA';
msg2rec(_) -> erlang:error(badarg).

name2rec('Proxy-Info') -> 'Proxy-Info';
name2rec('Failed-AVP') -> 'Failed-AVP';
name2rec('Experimental-Result') ->
    'Experimental-Result';
name2rec('Vendor-Specific-Application-Id') ->
    'Vendor-Specific-Application-Id';
name2rec('Tunneling') -> 'Tunneling';
name2rec(T) -> msg2rec(T).

avp_name(465, undefined) ->
    {'Accounting-EAP-Auth-Method', 'Unsigned64'};
avp_name(102, undefined) ->
    {'EAP-Key-Name', 'OctetString'};
avp_name(464, undefined) ->
    {'EAP-Master-Session-Key', 'OctetString'};
avp_name(462, undefined) ->
    {'EAP-Payload', 'OctetString'};
avp_name(463, undefined) ->
    {'EAP-Reissued-Payload', 'OctetString'};
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
avp_name(20, undefined) ->
    {'Callback-Id', 'UTF8String'};
avp_name(19, undefined) ->
    {'Callback-Number', 'UTF8String'};
avp_name(30, undefined) ->
    {'Called-Station-Id', 'UTF8String'};
avp_name(31, undefined) ->
    {'Calling-Station-Id', 'UTF8String'};
avp_name(78, undefined) ->
    {'Configuration-Token', 'OctetString'};
avp_name(77, undefined) ->
    {'Connect-Info', 'UTF8String'};
avp_name(11, undefined) -> {'Filter-Id', 'UTF8String'};
avp_name(37, undefined) ->
    {'Framed-AppleTalk-Link', 'Unsigned32'};
avp_name(38, undefined) ->
    {'Framed-AppleTalk-Network', 'Unsigned32'};
avp_name(39, undefined) ->
    {'Framed-AppleTalk-Zone', 'OctetString'};
avp_name(13, undefined) ->
    {'Framed-Compression', 'Enumerated'};
avp_name(8, undefined) ->
    {'Framed-IP-Address', 'OctetString'};
avp_name(9, undefined) ->
    {'Framed-IP-Netmask', 'OctetString'};
avp_name(23, undefined) ->
    {'Framed-IPX-Network', 'UTF8String'};
avp_name(100, undefined) ->
    {'Framed-IPv6-Pool', 'OctetString'};
avp_name(97, undefined) ->
    {'Framed-IPv6-Prefix', 'OctetString'};
avp_name(99, undefined) ->
    {'Framed-IPv6-Route', 'UTF8String'};
avp_name(96, undefined) ->
    {'Framed-Interface-Id', 'Unsigned64'};
avp_name(12, undefined) -> {'Framed-MTU', 'Unsigned32'};
avp_name(88, undefined) ->
    {'Framed-Pool', 'OctetString'};
avp_name(7, undefined) ->
    {'Framed-Protocol', 'Enumerated'};
avp_name(22, undefined) ->
    {'Framed-Route', 'UTF8String'};
avp_name(10, undefined) ->
    {'Framed-Routing', 'Enumerated'};
avp_name(28, undefined) ->
    {'Idle-Timeout', 'Unsigned32'};
avp_name(400, undefined) ->
    {'NAS-Filter-Rule', 'IPFilterRule'};
avp_name(4, undefined) ->
    {'NAS-IP-Address', 'OctetString'};
avp_name(95, undefined) ->
    {'NAS-IPv6-Address', 'OctetString'};
avp_name(32, undefined) ->
    {'NAS-Identifier', 'UTF8String'};
avp_name(5, undefined) -> {'NAS-Port', 'Unsigned32'};
avp_name(87, undefined) ->
    {'NAS-Port-Id', 'UTF8String'};
avp_name(61, undefined) ->
    {'NAS-Port-Type', 'Enumerated'};
avp_name(94, undefined) ->
    {'Originating-Line-Info', 'OctetString'};
avp_name(62, undefined) -> {'Port-Limit', 'Unsigned32'};
avp_name(407, undefined) ->
    {'QoS-Filter-Rule', 'QoSFilterRule'};
avp_name(18, undefined) ->
    {'Reply-Message', 'UTF8String'};
avp_name(6, undefined) ->
    {'Service-Type', 'Enumerated'};
avp_name(24, undefined) -> {'State', 'OctetString'};
avp_name(401, undefined) -> {'Tunneling', 'Grouped'};
avp_name(_, _) -> 'AVP'.

avp_arity('DER') ->
    [{'Session-Id', 1},
     {'Auth-Application-Id', 1},
     {'Origin-Host', 1},
     {'Origin-Realm', 1},
     {'Destination-Realm', 1},
     {'Auth-Request-Type', 1},
     {'EAP-Payload', 1},
     {'Destination-Host', {0, 1}},
     {'NAS-Identifier', {0, 1}},
     {'NAS-IP-Address', {0, 1}},
     {'NAS-IPv6-Address', {0, 1}},
     {'NAS-Port', {0, 1}},
     {'NAS-Port-Id', {0, 1}},
     {'NAS-Port-Type', {0, 1}},
     {'Origin-State-Id', {0, 1}},
     {'Port-Limit', {0, 1}},
     {'User-Name', {0, 1}},
     {'EAP-Key-Name', {0, 1}},
     {'Service-Type', {0, 1}},
     {'State', {0, 1}},
     {'Authorization-Lifetime', {0, 1}},
     {'Auth-Grace-Period', {0, 1}},
     {'Auth-Session-State', {0, 1}},
     {'Callback-Number', {0, 1}},
     {'Called-Station-Id', {0, 1}},
     {'Calling-Station-Id', {0, 1}},
     {'Originating-Line-Info', {0, 1}},
     {'Connect-Info', {0, 1}},
     {'Framed-Compression', {0, '*'}},
     {'Framed-Interface-Id', {0, 1}},
     {'Framed-IP-Address', {0, 1}},
     {'Framed-IPv6-Prefix', {0, '*'}},
     {'Framed-IP-Netmask', {0, 1}},
     {'Framed-MTU', {0, 1}},
     {'Framed-Protocol', {0, 1}},
     {'Tunneling', {0, '*'}},
     {'Proxy-Info', {0, '*'}},
     {'Route-Record', {0, '*'}},
     {'AVP', {0, '*'}}];
avp_arity('DEA') ->
    [{'Session-Id', 1},
     {'Auth-Application-Id', 1},
     {'Auth-Request-Type', 1},
     {'Result-Code', 1},
     {'Origin-Host', 1},
     {'Origin-Realm', 1},
     {'User-Name', {0, 1}},
     {'EAP-Payload', {0, 1}},
     {'EAP-Reissued-Payload', {0, 1}},
     {'EAP-Master-Session-Key', {0, 1}},
     {'EAP-Key-Name', {0, 1}},
     {'Multi-Round-Time-Out', {0, 1}},
     {'Accounting-EAP-Auth-Method', {0, 1}},
     {'Service-Type', {0, 1}},
     {'Class', {0, '*'}},
     {'Configuration-Token', {0, '*'}},
     {'Acct-Interim-Interval', {0, 1}},
     {'Error-Message', {0, 1}},
     {'Error-Reporting-Host', {0, 1}},
     {'Failed-AVP', {0, '*'}},
     {'Idle-Timeout', {0, 1}},
     {'Authorization-Lifetime', {0, 1}},
     {'Auth-Grace-Period', {0, 1}},
     {'Auth-Session-State', {0, 1}},
     {'Re-Auth-Request-Type', {0, 1}},
     {'Session-Timeout', {0, 1}},
     {'State', {0, 1}},
     {'Reply-Message', {0, '*'}},
     {'Origin-State-Id', {0, 1}},
     {'Filter-Id', {0, '*'}},
     {'Port-Limit', {0, 1}},
     {'Callback-Id', {0, 1}},
     {'Callback-Number', {0, 1}},
     {'Framed-AppleTalk-Link', {0, 1}},
     {'Framed-AppleTalk-Network', {0, '*'}},
     {'Framed-AppleTalk-Zone', {0, 1}},
     {'Framed-Compression', {0, '*'}},
     {'Framed-Interface-Id', {0, 1}},
     {'Framed-IP-Address', {0, 1}},
     {'Framed-IPv6-Prefix', {0, '*'}},
     {'Framed-IPv6-Pool', {0, 1}},
     {'Framed-IPv6-Route', {0, '*'}},
     {'Framed-IP-Netmask', {0, 1}},
     {'Framed-Route', {0, '*'}},
     {'Framed-Pool', {0, 1}},
     {'Framed-IPX-Network', {0, 1}},
     {'Framed-MTU', {0, 1}},
     {'Framed-Protocol', {0, 1}},
     {'Framed-Routing', {0, 1}},
     {'NAS-Filter-Rule', {0, '*'}},
     {'QoS-Filter-Rule', {0, '*'}},
     {'Tunneling', {0, '*'}},
     {'Redirect-Host', {0, '*'}},
     {'Redirect-Host-Usage', {0, 1}},
     {'Redirect-Max-Cache-Time', {0, 1}},
     {'Proxy-Info', {0, '*'}},
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
avp_arity('Tunneling') ->
    [{'Tunnel-Type', 1},
     {'Tunnel-Medium-Type', 1},
     {'Tunnel-Client-Endpoint', 1},
     {'Tunnel-Server-Endpoint', 1},
     {'Tunnel-Preference', {0, 1}},
     {'Tunnel-Client-Auth-Id', {0, 1}},
     {'Tunnel-Server-Auth-Id', {0, 1}},
     {'Tunnel-Assignment-Id', {0, 1}},
     {'Tunnel-Password', {0, 1}},
     {'Tunnel-Private-Group-Id', {0, 1}}];
avp_arity(_) -> erlang:error(badarg).

avp_arity('DER', 'Session-Id') -> 1;
avp_arity('DER', 'Auth-Application-Id') -> 1;
avp_arity('DER', 'Origin-Host') -> 1;
avp_arity('DER', 'Origin-Realm') -> 1;
avp_arity('DER', 'Destination-Realm') -> 1;
avp_arity('DER', 'Auth-Request-Type') -> 1;
avp_arity('DER', 'EAP-Payload') -> 1;
avp_arity('DER', 'Destination-Host') -> {0, 1};
avp_arity('DER', 'NAS-Identifier') -> {0, 1};
avp_arity('DER', 'NAS-IP-Address') -> {0, 1};
avp_arity('DER', 'NAS-IPv6-Address') -> {0, 1};
avp_arity('DER', 'NAS-Port') -> {0, 1};
avp_arity('DER', 'NAS-Port-Id') -> {0, 1};
avp_arity('DER', 'NAS-Port-Type') -> {0, 1};
avp_arity('DER', 'Origin-State-Id') -> {0, 1};
avp_arity('DER', 'Port-Limit') -> {0, 1};
avp_arity('DER', 'User-Name') -> {0, 1};
avp_arity('DER', 'EAP-Key-Name') -> {0, 1};
avp_arity('DER', 'Service-Type') -> {0, 1};
avp_arity('DER', 'State') -> {0, 1};
avp_arity('DER', 'Authorization-Lifetime') -> {0, 1};
avp_arity('DER', 'Auth-Grace-Period') -> {0, 1};
avp_arity('DER', 'Auth-Session-State') -> {0, 1};
avp_arity('DER', 'Callback-Number') -> {0, 1};
avp_arity('DER', 'Called-Station-Id') -> {0, 1};
avp_arity('DER', 'Calling-Station-Id') -> {0, 1};
avp_arity('DER', 'Originating-Line-Info') -> {0, 1};
avp_arity('DER', 'Connect-Info') -> {0, 1};
avp_arity('DER', 'Framed-Compression') -> {0, '*'};
avp_arity('DER', 'Framed-Interface-Id') -> {0, 1};
avp_arity('DER', 'Framed-IP-Address') -> {0, 1};
avp_arity('DER', 'Framed-IPv6-Prefix') -> {0, '*'};
avp_arity('DER', 'Framed-IP-Netmask') -> {0, 1};
avp_arity('DER', 'Framed-MTU') -> {0, 1};
avp_arity('DER', 'Framed-Protocol') -> {0, 1};
avp_arity('DER', 'Tunneling') -> {0, '*'};
avp_arity('DER', 'Proxy-Info') -> {0, '*'};
avp_arity('DER', 'Route-Record') -> {0, '*'};
avp_arity('DER', 'AVP') -> {0, '*'};
avp_arity('DEA', 'Session-Id') -> 1;
avp_arity('DEA', 'Auth-Application-Id') -> 1;
avp_arity('DEA', 'Auth-Request-Type') -> 1;
avp_arity('DEA', 'Result-Code') -> 1;
avp_arity('DEA', 'Origin-Host') -> 1;
avp_arity('DEA', 'Origin-Realm') -> 1;
avp_arity('DEA', 'User-Name') -> {0, 1};
avp_arity('DEA', 'EAP-Payload') -> {0, 1};
avp_arity('DEA', 'EAP-Reissued-Payload') -> {0, 1};
avp_arity('DEA', 'EAP-Master-Session-Key') -> {0, 1};
avp_arity('DEA', 'EAP-Key-Name') -> {0, 1};
avp_arity('DEA', 'Multi-Round-Time-Out') -> {0, 1};
avp_arity('DEA', 'Accounting-EAP-Auth-Method') ->
    {0, 1};
avp_arity('DEA', 'Service-Type') -> {0, 1};
avp_arity('DEA', 'Class') -> {0, '*'};
avp_arity('DEA', 'Configuration-Token') -> {0, '*'};
avp_arity('DEA', 'Acct-Interim-Interval') -> {0, 1};
avp_arity('DEA', 'Error-Message') -> {0, 1};
avp_arity('DEA', 'Error-Reporting-Host') -> {0, 1};
avp_arity('DEA', 'Failed-AVP') -> {0, '*'};
avp_arity('DEA', 'Idle-Timeout') -> {0, 1};
avp_arity('DEA', 'Authorization-Lifetime') -> {0, 1};
avp_arity('DEA', 'Auth-Grace-Period') -> {0, 1};
avp_arity('DEA', 'Auth-Session-State') -> {0, 1};
avp_arity('DEA', 'Re-Auth-Request-Type') -> {0, 1};
avp_arity('DEA', 'Session-Timeout') -> {0, 1};
avp_arity('DEA', 'State') -> {0, 1};
avp_arity('DEA', 'Reply-Message') -> {0, '*'};
avp_arity('DEA', 'Origin-State-Id') -> {0, 1};
avp_arity('DEA', 'Filter-Id') -> {0, '*'};
avp_arity('DEA', 'Port-Limit') -> {0, 1};
avp_arity('DEA', 'Callback-Id') -> {0, 1};
avp_arity('DEA', 'Callback-Number') -> {0, 1};
avp_arity('DEA', 'Framed-AppleTalk-Link') -> {0, 1};
avp_arity('DEA', 'Framed-AppleTalk-Network') ->
    {0, '*'};
avp_arity('DEA', 'Framed-AppleTalk-Zone') -> {0, 1};
avp_arity('DEA', 'Framed-Compression') -> {0, '*'};
avp_arity('DEA', 'Framed-Interface-Id') -> {0, 1};
avp_arity('DEA', 'Framed-IP-Address') -> {0, 1};
avp_arity('DEA', 'Framed-IPv6-Prefix') -> {0, '*'};
avp_arity('DEA', 'Framed-IPv6-Pool') -> {0, 1};
avp_arity('DEA', 'Framed-IPv6-Route') -> {0, '*'};
avp_arity('DEA', 'Framed-IP-Netmask') -> {0, 1};
avp_arity('DEA', 'Framed-Route') -> {0, '*'};
avp_arity('DEA', 'Framed-Pool') -> {0, 1};
avp_arity('DEA', 'Framed-IPX-Network') -> {0, 1};
avp_arity('DEA', 'Framed-MTU') -> {0, 1};
avp_arity('DEA', 'Framed-Protocol') -> {0, 1};
avp_arity('DEA', 'Framed-Routing') -> {0, 1};
avp_arity('DEA', 'NAS-Filter-Rule') -> {0, '*'};
avp_arity('DEA', 'QoS-Filter-Rule') -> {0, '*'};
avp_arity('DEA', 'Tunneling') -> {0, '*'};
avp_arity('DEA', 'Redirect-Host') -> {0, '*'};
avp_arity('DEA', 'Redirect-Host-Usage') -> {0, 1};
avp_arity('DEA', 'Redirect-Max-Cache-Time') -> {0, 1};
avp_arity('DEA', 'Proxy-Info') -> {0, '*'};
avp_arity('DEA', 'AVP') -> {0, '*'};
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
avp_arity('Tunneling', 'Tunnel-Type') -> 1;
avp_arity('Tunneling', 'Tunnel-Medium-Type') -> 1;
avp_arity('Tunneling', 'Tunnel-Client-Endpoint') -> 1;
avp_arity('Tunneling', 'Tunnel-Server-Endpoint') -> 1;
avp_arity('Tunneling', 'Tunnel-Preference') -> {0, 1};
avp_arity('Tunneling', 'Tunnel-Client-Auth-Id') ->
    {0, 1};
avp_arity('Tunneling', 'Tunnel-Server-Auth-Id') ->
    {0, 1};
avp_arity('Tunneling', 'Tunnel-Assignment-Id') ->
    {0, 1};
avp_arity('Tunneling', 'Tunnel-Password') -> {0, 1};
avp_arity('Tunneling', 'Tunnel-Private-Group-Id') ->
    {0, 1};
avp_arity(_, _) -> 0.

avp_header('Accounting-EAP-Auth-Method') ->
    {465, 0, undefined};
avp_header('EAP-Key-Name') -> {102, 0, undefined};
avp_header('EAP-Master-Session-Key') ->
    {464, 0, undefined};
avp_header('EAP-Payload') -> {462, 0, undefined};
avp_header('EAP-Reissued-Payload') ->
    {463, 0, undefined};
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
avp_header('Callback-Id') ->
    diameter_rfc4005_nasreq:avp_header('Callback-Id');
avp_header('Callback-Number') ->
    diameter_rfc4005_nasreq:avp_header('Callback-Number');
avp_header('Called-Station-Id') ->
    diameter_rfc4005_nasreq:avp_header('Called-Station-Id');
avp_header('Calling-Station-Id') ->
    diameter_rfc4005_nasreq:avp_header('Calling-Station-Id');
avp_header('Configuration-Token') ->
    diameter_rfc4005_nasreq:avp_header('Configuration-Token');
avp_header('Connect-Info') ->
    diameter_rfc4005_nasreq:avp_header('Connect-Info');
avp_header('Filter-Id') ->
    diameter_rfc4005_nasreq:avp_header('Filter-Id');
avp_header('Framed-AppleTalk-Link') ->
    diameter_rfc4005_nasreq:avp_header('Framed-AppleTalk-Link');
avp_header('Framed-AppleTalk-Network') ->
    diameter_rfc4005_nasreq:avp_header('Framed-AppleTalk-Network');
avp_header('Framed-AppleTalk-Zone') ->
    diameter_rfc4005_nasreq:avp_header('Framed-AppleTalk-Zone');
avp_header('Framed-Compression') ->
    diameter_rfc4005_nasreq:avp_header('Framed-Compression');
avp_header('Framed-IP-Address') ->
    diameter_rfc4005_nasreq:avp_header('Framed-IP-Address');
avp_header('Framed-IP-Netmask') ->
    diameter_rfc4005_nasreq:avp_header('Framed-IP-Netmask');
avp_header('Framed-IPX-Network') ->
    diameter_rfc4005_nasreq:avp_header('Framed-IPX-Network');
avp_header('Framed-IPv6-Pool') ->
    diameter_rfc4005_nasreq:avp_header('Framed-IPv6-Pool');
avp_header('Framed-IPv6-Prefix') ->
    diameter_rfc4005_nasreq:avp_header('Framed-IPv6-Prefix');
avp_header('Framed-IPv6-Route') ->
    diameter_rfc4005_nasreq:avp_header('Framed-IPv6-Route');
avp_header('Framed-Interface-Id') ->
    diameter_rfc4005_nasreq:avp_header('Framed-Interface-Id');
avp_header('Framed-MTU') ->
    diameter_rfc4005_nasreq:avp_header('Framed-MTU');
avp_header('Framed-Pool') ->
    diameter_rfc4005_nasreq:avp_header('Framed-Pool');
avp_header('Framed-Protocol') ->
    diameter_rfc4005_nasreq:avp_header('Framed-Protocol');
avp_header('Framed-Route') ->
    diameter_rfc4005_nasreq:avp_header('Framed-Route');
avp_header('Framed-Routing') ->
    diameter_rfc4005_nasreq:avp_header('Framed-Routing');
avp_header('Idle-Timeout') ->
    diameter_rfc4005_nasreq:avp_header('Idle-Timeout');
avp_header('NAS-Filter-Rule') ->
    diameter_rfc4005_nasreq:avp_header('NAS-Filter-Rule');
avp_header('NAS-IP-Address') ->
    diameter_rfc4005_nasreq:avp_header('NAS-IP-Address');
avp_header('NAS-IPv6-Address') ->
    diameter_rfc4005_nasreq:avp_header('NAS-IPv6-Address');
avp_header('NAS-Identifier') ->
    diameter_rfc4005_nasreq:avp_header('NAS-Identifier');
avp_header('NAS-Port') ->
    diameter_rfc4005_nasreq:avp_header('NAS-Port');
avp_header('NAS-Port-Id') ->
    diameter_rfc4005_nasreq:avp_header('NAS-Port-Id');
avp_header('NAS-Port-Type') ->
    diameter_rfc4005_nasreq:avp_header('NAS-Port-Type');
avp_header('Originating-Line-Info') ->
    diameter_rfc4005_nasreq:avp_header('Originating-Line-Info');
avp_header('Port-Limit') ->
    diameter_rfc4005_nasreq:avp_header('Port-Limit');
avp_header('QoS-Filter-Rule') ->
    diameter_rfc4005_nasreq:avp_header('QoS-Filter-Rule');
avp_header('Reply-Message') ->
    diameter_rfc4005_nasreq:avp_header('Reply-Message');
avp_header('Service-Type') ->
    diameter_rfc4005_nasreq:avp_header('Service-Type');
avp_header('State') ->
    diameter_rfc4005_nasreq:avp_header('State');
avp_header('Tunneling') ->
    diameter_rfc4005_nasreq:avp_header('Tunneling');
avp_header(_) -> erlang:error(badarg).

avp(T, Data, 'Accounting-EAP-Auth-Method', Opts) ->
    diameter_types:'Unsigned64'(T, Data, Opts);
avp(T, Data, 'EAP-Key-Name', Opts) ->
    diameter_types:'OctetString'(T, Data, Opts);
avp(T, Data, 'EAP-Master-Session-Key', Opts) ->
    diameter_types:'OctetString'(T, Data, Opts);
avp(T, Data, 'EAP-Payload', Opts) ->
    diameter_types:'OctetString'(T, Data, Opts);
avp(T, Data, 'EAP-Reissued-Payload', Opts) ->
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
avp(T, Data, 'Callback-Id', Opts) ->
    avp(T,
        Data,
        'Callback-Id',
        Opts,
        diameter_rfc4005_nasreq);
avp(T, Data, 'Callback-Number', Opts) ->
    avp(T,
        Data,
        'Callback-Number',
        Opts,
        diameter_rfc4005_nasreq);
avp(T, Data, 'Called-Station-Id', Opts) ->
    avp(T,
        Data,
        'Called-Station-Id',
        Opts,
        diameter_rfc4005_nasreq);
avp(T, Data, 'Calling-Station-Id', Opts) ->
    avp(T,
        Data,
        'Calling-Station-Id',
        Opts,
        diameter_rfc4005_nasreq);
avp(T, Data, 'Configuration-Token', Opts) ->
    avp(T,
        Data,
        'Configuration-Token',
        Opts,
        diameter_rfc4005_nasreq);
avp(T, Data, 'Connect-Info', Opts) ->
    avp(T,
        Data,
        'Connect-Info',
        Opts,
        diameter_rfc4005_nasreq);
avp(T, Data, 'Filter-Id', Opts) ->
    avp(T,
        Data,
        'Filter-Id',
        Opts,
        diameter_rfc4005_nasreq);
avp(T, Data, 'Framed-AppleTalk-Link', Opts) ->
    avp(T,
        Data,
        'Framed-AppleTalk-Link',
        Opts,
        diameter_rfc4005_nasreq);
avp(T, Data, 'Framed-AppleTalk-Network', Opts) ->
    avp(T,
        Data,
        'Framed-AppleTalk-Network',
        Opts,
        diameter_rfc4005_nasreq);
avp(T, Data, 'Framed-AppleTalk-Zone', Opts) ->
    avp(T,
        Data,
        'Framed-AppleTalk-Zone',
        Opts,
        diameter_rfc4005_nasreq);
avp(T, Data, 'Framed-Compression', Opts) ->
    avp(T,
        Data,
        'Framed-Compression',
        Opts,
        diameter_rfc4005_nasreq);
avp(T, Data, 'Framed-IP-Address', Opts) ->
    avp(T,
        Data,
        'Framed-IP-Address',
        Opts,
        diameter_rfc4005_nasreq);
avp(T, Data, 'Framed-IP-Netmask', Opts) ->
    avp(T,
        Data,
        'Framed-IP-Netmask',
        Opts,
        diameter_rfc4005_nasreq);
avp(T, Data, 'Framed-IPX-Network', Opts) ->
    avp(T,
        Data,
        'Framed-IPX-Network',
        Opts,
        diameter_rfc4005_nasreq);
avp(T, Data, 'Framed-IPv6-Pool', Opts) ->
    avp(T,
        Data,
        'Framed-IPv6-Pool',
        Opts,
        diameter_rfc4005_nasreq);
avp(T, Data, 'Framed-IPv6-Prefix', Opts) ->
    avp(T,
        Data,
        'Framed-IPv6-Prefix',
        Opts,
        diameter_rfc4005_nasreq);
avp(T, Data, 'Framed-IPv6-Route', Opts) ->
    avp(T,
        Data,
        'Framed-IPv6-Route',
        Opts,
        diameter_rfc4005_nasreq);
avp(T, Data, 'Framed-Interface-Id', Opts) ->
    avp(T,
        Data,
        'Framed-Interface-Id',
        Opts,
        diameter_rfc4005_nasreq);
avp(T, Data, 'Framed-MTU', Opts) ->
    avp(T,
        Data,
        'Framed-MTU',
        Opts,
        diameter_rfc4005_nasreq);
avp(T, Data, 'Framed-Pool', Opts) ->
    avp(T,
        Data,
        'Framed-Pool',
        Opts,
        diameter_rfc4005_nasreq);
avp(T, Data, 'Framed-Protocol', Opts) ->
    avp(T,
        Data,
        'Framed-Protocol',
        Opts,
        diameter_rfc4005_nasreq);
avp(T, Data, 'Framed-Route', Opts) ->
    avp(T,
        Data,
        'Framed-Route',
        Opts,
        diameter_rfc4005_nasreq);
avp(T, Data, 'Framed-Routing', Opts) ->
    avp(T,
        Data,
        'Framed-Routing',
        Opts,
        diameter_rfc4005_nasreq);
avp(T, Data, 'Idle-Timeout', Opts) ->
    avp(T,
        Data,
        'Idle-Timeout',
        Opts,
        diameter_rfc4005_nasreq);
avp(T, Data, 'NAS-Filter-Rule', Opts) ->
    avp(T,
        Data,
        'NAS-Filter-Rule',
        Opts,
        diameter_rfc4005_nasreq);
avp(T, Data, 'NAS-IP-Address', Opts) ->
    avp(T,
        Data,
        'NAS-IP-Address',
        Opts,
        diameter_rfc4005_nasreq);
avp(T, Data, 'NAS-IPv6-Address', Opts) ->
    avp(T,
        Data,
        'NAS-IPv6-Address',
        Opts,
        diameter_rfc4005_nasreq);
avp(T, Data, 'NAS-Identifier', Opts) ->
    avp(T,
        Data,
        'NAS-Identifier',
        Opts,
        diameter_rfc4005_nasreq);
avp(T, Data, 'NAS-Port', Opts) ->
    avp(T, Data, 'NAS-Port', Opts, diameter_rfc4005_nasreq);
avp(T, Data, 'NAS-Port-Id', Opts) ->
    avp(T,
        Data,
        'NAS-Port-Id',
        Opts,
        diameter_rfc4005_nasreq);
avp(T, Data, 'NAS-Port-Type', Opts) ->
    avp(T,
        Data,
        'NAS-Port-Type',
        Opts,
        diameter_rfc4005_nasreq);
avp(T, Data, 'Originating-Line-Info', Opts) ->
    avp(T,
        Data,
        'Originating-Line-Info',
        Opts,
        diameter_rfc4005_nasreq);
avp(T, Data, 'Port-Limit', Opts) ->
    avp(T,
        Data,
        'Port-Limit',
        Opts,
        diameter_rfc4005_nasreq);
avp(T, Data, 'QoS-Filter-Rule', Opts) ->
    avp(T,
        Data,
        'QoS-Filter-Rule',
        Opts,
        diameter_rfc4005_nasreq);
avp(T, Data, 'Reply-Message', Opts) ->
    avp(T,
        Data,
        'Reply-Message',
        Opts,
        diameter_rfc4005_nasreq);
avp(T, Data, 'Service-Type', Opts) ->
    avp(T,
        Data,
        'Service-Type',
        Opts,
        diameter_rfc4005_nasreq);
avp(T, Data, 'State', Opts) ->
    avp(T, Data, 'State', Opts, diameter_rfc4005_nasreq);
avp(T, Data, 'Tunneling', Opts) ->
    grouped_avp(T, 'Tunneling', Data, Opts);
avp(_, _, _, _) -> erlang:error(badarg).

enumerated_avp(_, _, _) -> erlang:error(badarg).

empty_value('Proxy-Info', Opts) ->
    empty_group('Proxy-Info', Opts);
empty_value('Failed-AVP', Opts) ->
    empty_group('Failed-AVP', Opts);
empty_value('Experimental-Result', Opts) ->
    empty_group('Experimental-Result', Opts);
empty_value('Vendor-Specific-Application-Id', Opts) ->
    empty_group('Vendor-Specific-Application-Id', Opts);
empty_value('Tunneling', Opts) ->
    empty_group('Tunneling', Opts);
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
empty_value('NAS-Port-Type', _) -> <<0, 0, 0, 0>>;
empty_value('Service-Type', _) -> <<0, 0, 0, 0>>;
empty_value('Framed-Protocol', _) -> <<0, 0, 0, 0>>;
empty_value('Framed-Routing', _) -> <<0, 0, 0, 0>>;
empty_value('Framed-Compression', _) -> <<0, 0, 0, 0>>;
empty_value(Name, Opts) -> empty(Name, Opts).

dict() ->
    [1,
     {avp_types,
      [{"Accounting-EAP-Auth-Method", 465, "Unsigned64", []},
       {"EAP-Key-Name", 102, "OctetString", []},
       {"EAP-Master-Session-Key", 464, "OctetString", []},
       {"EAP-Payload", 462, "OctetString", []},
       {"EAP-Reissued-Payload", 463, "OctetString", []}]},
     {avp_vendor_id, []},
     {codecs, []},
     {command_codes, [{268, "DER", "DEA"}]},
     {custom_types, []},
     {define, []},
     {enum, []},
     {grouped, []},
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
       {diameter_rfc4005_nasreq,
        [{"Callback-Id", 20, "UTF8String", "M"},
         {"Callback-Number", 19, "UTF8String", "M"},
         {"Called-Station-Id", 30, "UTF8String", "M"},
         {"Calling-Station-Id", 31, "UTF8String", "M"},
         {"Configuration-Token", 78, "OctetString", "M"},
         {"Connect-Info", 77, "UTF8String", "M"},
         {"Filter-Id", 11, "UTF8String", "M"},
         {"Framed-AppleTalk-Link", 37, "Unsigned32", "M"},
         {"Framed-AppleTalk-Network", 38, "Unsigned32", "M"},
         {"Framed-AppleTalk-Zone", 39, "OctetString", "M"},
         {"Framed-Compression", 13, "Enumerated", "M"},
         {"Framed-IP-Address", 8, "OctetString", "M"},
         {"Framed-IP-Netmask", 9, "OctetString", "M"},
         {"Framed-IPX-Network", 23, "UTF8String", "M"},
         {"Framed-IPv6-Pool", 100, "OctetString", "M"},
         {"Framed-IPv6-Prefix", 97, "OctetString", "M"},
         {"Framed-IPv6-Route", 99, "UTF8String", "M"},
         {"Framed-Interface-Id", 96, "Unsigned64", "M"},
         {"Framed-MTU", 12, "Unsigned32", "M"},
         {"Framed-Pool", 88, "OctetString", "M"},
         {"Framed-Protocol", 7, "Enumerated", "M"},
         {"Framed-Route", 22, "UTF8String", "M"},
         {"Framed-Routing", 10, "Enumerated", "M"},
         {"Idle-Timeout", 28, "Unsigned32", "M"},
         {"NAS-Filter-Rule", 400, "IPFilterRule", "M"},
         {"NAS-IP-Address", 4, "OctetString", "M"},
         {"NAS-IPv6-Address", 95, "OctetString", "M"},
         {"NAS-Identifier", 32, "UTF8String", "M"},
         {"NAS-Port", 5, "Unsigned32", "M"},
         {"NAS-Port-Id", 87, "UTF8String", "M"},
         {"NAS-Port-Type", 61, "Enumerated", "M"},
         {"Originating-Line-Info", 94, "OctetString", []},
         {"Port-Limit", 62, "Unsigned32", "M"},
         {"QoS-Filter-Rule", 407, "QoSFilterRule", []},
         {"Reply-Message", 18, "UTF8String", "M"},
         {"Service-Type", 6, "Enumerated", "M"},
         {"State", 24, "OctetString", "M"},
         {"Tunneling", 401, "Grouped", "M"}]}]},
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
           {"GRANT_AND_LOSE", 3}]}]},
       {diameter_rfc4005_nasreq,
        [{"NAS-Port-Type",
          [{"ASYNC", 0},
           {"SYNC", 1},
           {"ISDN_SYNC", 2},
           {"ISDN_ASYNC_V120", 3},
           {"ISDN_ASYNC_V110", 4},
           {"VIRTUAL", 5},
           {"PIAFS", 6},
           {"HDLC_CLEAR_CHANNEL", 7},
           {"X25", 8},
           {"X75", 9},
           {"G3FAX", 10},
           {"SDSL", 11},
           {"ADSL-CAP", 12},
           {"ADSL-DMT", 13},
           {"IDSL", 14},
           {"ETHERNET", 15},
           {"XDSL", 16},
           {"CABLE", 17},
           {"WIRELESS_OTHER", 18},
           {"WIRELESS_802.11", 19},
           {"TOKEN-RING", 20},
           {"FDDI", 21},
           {"WIRELESS_CDMA2000", 22},
           {"WIRELESS_UMTS", 23},
           {"WIRELESS_1X-EV", 24},
           {"IAPP", 25}]},
         {"Service-Type",
          [{"LOGIN", 1},
           {"FRAMED", 2},
           {"CALLBACK_LOGIN", 3},
           {"CALLBACK_FRAMED", 4},
           {"OUTBOUND", 5},
           {"ADMINISTRATIVE", 6},
           {"NAS_PROMPT", 7},
           {"AUTHENTICATE_ONLY", 8},
           {"CALLBACK_NAS_PROMPT", 9},
           {"CALL_CHECK", 10},
           {"CALLBACK_ADMINISTRATIVE", 11},
           {"VOICE", 12},
           {"FAX", 13},
           {"MODEM_RELAY", 14},
           {"IAPP-REGISTER", 15},
           {"IAPP-AP-CHECK", 16},
           {"AUTHORIZE_ONLY", 17}]},
         {"Framed-Protocol",
          [{"PPP", 1},
           {"SLIP", 2},
           {"ARAP", 3},
           {"GANDALF", 4},
           {"XYLOGICS", 5},
           {"X75", 6}]},
         {"Framed-Routing",
          [{"NONE", 0},
           {"SEND", 1},
           {"LISTEN", 2},
           {"SEND_AND_LISTEN", 3}]},
         {"Framed-Compression",
          [{"NONE", 0},
           {"VJ", 1},
           {"IPX", 2},
           {"STAC-LZS", 3}]}]}]},
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
       {diameter_rfc4005_nasreq,
        [{"Tunneling",
          401,
          [],
          [{"Tunnel-Type"},
           {"Tunnel-Medium-Type"},
           {"Tunnel-Client-Endpoint"},
           {"Tunnel-Server-Endpoint"},
           ["Tunnel-Preference"],
           ["Tunnel-Client-Auth-Id"],
           ["Tunnel-Server-Auth-Id"],
           ["Tunnel-Assignment-Id"],
           ["Tunnel-Password"],
           ["Tunnel-Private-Group-Id"]]}]}]},
     {inherits,
      [{"diameter_rfc4005_nasreq",
        ["Callback-Id",
         "Callback-Number",
         "Called-Station-Id",
         "Calling-Station-Id",
         "Configuration-Token",
         "Connect-Info",
         "Framed-AppleTalk-Link",
         "Framed-AppleTalk-Network",
         "Framed-AppleTalk-Zone",
         "Framed-Compression",
         "Framed-Interface-Id",
         "Framed-IP-Address",
         "Framed-IP-Netmask",
         "Framed-IPv6-Pool",
         "Framed-IPv6-Prefix",
         "Framed-IPv6-Route",
         "Framed-IPX-Network",
         "Framed-MTU",
         "Framed-Pool",
         "Framed-Protocol",
         "Framed-Route",
         "Framed-Routing",
         "Filter-Id",
         "Idle-Timeout",
         "NAS-Filter-Rule",
         "NAS-Identifier",
         "NAS-IP-Address",
         "NAS-IPv6-Address",
         "NAS-Port",
         "NAS-Port-Id",
         "NAS-Port-Type",
         "Originating-Line-Info",
         "Port-Limit",
         "QoS-Filter-Rule",
         "Reply-Message",
         "Service-Type",
         "State",
         "Tunneling"]},
       {"diameter_gen_base_rfc6733", []}]},
     {messages,
      [{"DER",
        268,
        ['REQ', 'PXY'],
        [],
        [{{"Session-Id"}},
         {"Auth-Application-Id"},
         {"Origin-Host"},
         {"Origin-Realm"},
         {"Destination-Realm"},
         {"Auth-Request-Type"},
         {"EAP-Payload"},
         ["Destination-Host"],
         ["NAS-Identifier"],
         ["NAS-IP-Address"],
         ["NAS-IPv6-Address"],
         ["NAS-Port"],
         ["NAS-Port-Id"],
         ["NAS-Port-Type"],
         ["Origin-State-Id"],
         ["Port-Limit"],
         ["User-Name"],
         ["EAP-Key-Name"],
         ["Service-Type"],
         ["State"],
         ["Authorization-Lifetime"],
         ["Auth-Grace-Period"],
         ["Auth-Session-State"],
         ["Callback-Number"],
         ["Called-Station-Id"],
         ["Calling-Station-Id"],
         ["Originating-Line-Info"],
         ["Connect-Info"],
         {'*', ["Framed-Compression"]},
         ["Framed-Interface-Id"],
         ["Framed-IP-Address"],
         {'*', ["Framed-IPv6-Prefix"]},
         ["Framed-IP-Netmask"],
         ["Framed-MTU"],
         ["Framed-Protocol"],
         {'*', ["Tunneling"]},
         {'*', ["Proxy-Info"]},
         {'*', ["Route-Record"]},
         {'*', ["AVP"]}]},
       {"DEA",
        268,
        ['PXY'],
        [],
        [{{"Session-Id"}},
         {"Auth-Application-Id"},
         {"Auth-Request-Type"},
         {"Result-Code"},
         {"Origin-Host"},
         {"Origin-Realm"},
         ["User-Name"],
         ["EAP-Payload"],
         ["EAP-Reissued-Payload"],
         ["EAP-Master-Session-Key"],
         ["EAP-Key-Name"],
         ["Multi-Round-Time-Out"],
         ["Accounting-EAP-Auth-Method"],
         ["Service-Type"],
         {'*', ["Class"]},
         {'*', ["Configuration-Token"]},
         ["Acct-Interim-Interval"],
         ["Error-Message"],
         ["Error-Reporting-Host"],
         {'*', ["Failed-AVP"]},
         ["Idle-Timeout"],
         ["Authorization-Lifetime"],
         ["Auth-Grace-Period"],
         ["Auth-Session-State"],
         ["Re-Auth-Request-Type"],
         ["Session-Timeout"],
         ["State"],
         {'*', ["Reply-Message"]},
         ["Origin-State-Id"],
         {'*', ["Filter-Id"]},
         ["Port-Limit"],
         ["Callback-Id"],
         ["Callback-Number"],
         ["Framed-AppleTalk-Link"],
         {'*', ["Framed-AppleTalk-Network"]},
         ["Framed-AppleTalk-Zone"],
         {'*', ["Framed-Compression"]},
         ["Framed-Interface-Id"],
         ["Framed-IP-Address"],
         {'*', ["Framed-IPv6-Prefix"]},
         ["Framed-IPv6-Pool"],
         {'*', ["Framed-IPv6-Route"]},
         ["Framed-IP-Netmask"],
         {'*', ["Framed-Route"]},
         ["Framed-Pool"],
         ["Framed-IPX-Network"],
         ["Framed-MTU"],
         ["Framed-Protocol"],
         ["Framed-Routing"],
         {'*', ["NAS-Filter-Rule"]},
         {'*', ["QoS-Filter-Rule"]},
         {'*', ["Tunneling"]},
         {'*', ["Redirect-Host"]},
         ["Redirect-Host-Usage"],
         ["Redirect-Max-Cache-Time"],
         {'*', ["Proxy-Info"]},
         {'*', ["AVP"]}]}]}].


