%% -------------------------------------------------------------------
%% This is a generated file.
%% -------------------------------------------------------------------

-module(diameter_3gpp_ts29_061_gmb).

-moduledoc(false).

-compile({parse_transform, diameter_exprecs}).

-compile(nowarn_unused_function).

-dialyzer(no_return).

-export_records(['diameter_gmb_Proxy-Info',
                 'diameter_gmb_Failed-AVP',
                 'diameter_gmb_Experimental-Result',
                 'diameter_gmb_Vendor-Specific-Application-Id']).

-record('diameter_gmb_Proxy-Info',
        {'Proxy-Host', 'Proxy-State', 'AVP' = []}).

-record('diameter_gmb_Failed-AVP', {'AVP' = []}).

-record('diameter_gmb_Experimental-Result',
        {'Vendor-Id', 'Experimental-Result-Code'}).

-record('diameter_gmb_Vendor-Specific-Application-Id',
        {'Vendor-Id',
         'Auth-Application-Id' = [],
         'Acct-Application-Id' = []}).

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

name() -> diameter_3gpp_ts29_061_gmb.

id() -> 16777223.

vendor_id() -> 10415.

vendor_name() -> '3GPP'.

msg_name(_, _) -> ''.

msg_header(_) -> erlang:error(badarg).

rec2msg(_) -> erlang:error(badarg).

msg2rec(_) -> erlang:error(badarg).

name2rec('Proxy-Info') -> 'diameter_gmb_Proxy-Info';
name2rec('Failed-AVP') -> 'diameter_gmb_Failed-AVP';
name2rec('Experimental-Result') ->
    'diameter_gmb_Experimental-Result';
name2rec('Vendor-Specific-Application-Id') ->
    'diameter_gmb_Vendor-Specific-Application-Id';
name2rec(T) -> msg2rec(T).

avp_name(910, 10415) ->
    {'Additional-MBMS-Trace-Info', 'OctetString'};
avp_name(905, 10415) ->
    {'Alternative-APN', 'UTF8String'};
avp_name(921, 10415) ->
    {'CN-IP-Multicast-Distribution', 'Enumerated'};
avp_name(907, undefined) ->
    {'MBMS-2G-3G-Indicator', 'Enumerated'};
avp_name(918, 10415) ->
    {'MBMS-BMSC-SSM-IP-Address', 'OctetString'};
avp_name(919, 10415) ->
    {'MBMS-BMSC-SSM-IPv6-Address', 'OctetString'};
avp_name(914, 10415) ->
    {'MBMS-Counting-Information', 'Enumerated'};
avp_name(920, 10415) ->
    {'MBMS-Flow-Identifier', 'OctetString'};
avp_name(916, 10415) ->
    {'MBMS-GGSN-Address', 'OctetString'};
avp_name(917, 10415) ->
    {'MBMS-GGSN-IPv6-Address', 'OctetString'};
avp_name(922, 10415) ->
    {'MBMS-HC-Indicator', 'Enumerated'};
avp_name(913, 10415) ->
    {'MBMS-Required-QoS', 'UTF8String'};
avp_name(903, 10415) ->
    {'MBMS-Service-Area', 'OctetString'};
avp_name(906, 10415) ->
    {'MBMS-Service-Type', 'Enumerated'};
avp_name(904, 10415) ->
    {'MBMS-Session-Duration', 'OctetString'};
avp_name(908, 10415) ->
    {'MBMS-Session-Identity', 'OctetString'};
avp_name(912, 10415) ->
    {'MBMS-Session-Repetition-Number', 'OctetString'};
avp_name(902, 10415) ->
    {'MBMS-StartStop-Indication', 'Enumerated'};
avp_name(911, 10415) ->
    {'MBMS-Time-To-Data-Transfer', 'OctetString'};
avp_name(915, 10415) ->
    {'MBMS-User-Data-Mode-Indication', 'Enumerated'};
avp_name(909, undefined) -> {'RAI', 'UTF8String'};
avp_name(901, 10415) ->
    {'Required-MBMS-Bearer-Capabilities', 'UTF8String'};
avp_name(900, 10415) -> {'TMGI', 'OctetString'};
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
avp_name(27, 10415) ->
    {'3GPP-Allocate-IP-Type', 'OctetString'};
avp_name(24, 10415) ->
    {'3GPP-CAMEL-Charging-Info', 'OctetString'};
avp_name(4, 10415) ->
    {'3GPP-CG-Address', 'OctetString'};
avp_name(14, 10415) ->
    {'3GPP-CG-IPv6-Address', 'OctetString'};
avp_name(13, 10415) ->
    {'3GPP-Charging-Characteristics', 'UTF8String'};
avp_name(2, 10415) ->
    {'3GPP-Charging-Id', 'OctetString'};
avp_name(7, 10415) ->
    {'3GPP-GGSN-Address', 'OctetString'};
avp_name(16, 10415) ->
    {'3GPP-GGSN-IPv6-Address', 'OctetString'};
avp_name(9, 10415) ->
    {'3GPP-GGSN-MCC-MNC', 'UTF8String'};
avp_name(5, 10415) ->
    {'3GPP-GPRS-Negotiated-QoS-Profile', 'UTF8String'};
avp_name(20, 10415) -> {'3GPP-IMEISV', 'OctetString'};
avp_name(1, 10415) -> {'3GPP-IMSI', 'UTF8String'};
avp_name(8, 10415) ->
    {'3GPP-IMSI-MCC-MNC', 'UTF8String'};
avp_name(17, 10415) ->
    {'3GPP-IPv6-DNS-Servers', 'OctetString'};
avp_name(23, 10415) ->
    {'3GPP-MS-TimeZone', 'OctetString'};
avp_name(10, 10415) -> {'3GPP-NSAPI', 'OctetString'};
avp_name(26, 10415) ->
    {'3GPP-Negotiated-DSCP', 'OctetString'};
avp_name(3, 10415) -> {'3GPP-PDP-Type', 'Enumerated'};
avp_name(25, 10415) ->
    {'3GPP-Packet-Filter', 'OctetString'};
avp_name(21, 10415) -> {'3GPP-RAT-Type', 'OctetString'};
avp_name(6, 10415) ->
    {'3GPP-SGSN-Address', 'OctetString'};
avp_name(15, 10415) ->
    {'3GPP-SGSN-IPv6-Address', 'OctetString'};
avp_name(18, 10415) ->
    {'3GPP-SGSN-MCC-MNC', 'UTF8String'};
avp_name(12, 10415) ->
    {'3GPP-Selection-Mode', 'UTF8String'};
avp_name(11, 10415) ->
    {'3GPP-Session-Stop-Indicator', 'OctetString'};
avp_name(22, 10415) ->
    {'3GPP-User-Location-Info', 'OctetString'};
avp_name(30, 10415) ->
    {'3GPP-User-Location-Info-Time', 'OctetString'};
avp_name(29, 10415) ->
    {'TWAN-Identifier', 'OctetString'};
avp_name(_, _) -> 'AVP'.

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
avp_arity(_) -> erlang:error(badarg).

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
avp_arity(_, _) -> 0.

avp_header('Additional-MBMS-Trace-Info') ->
    {910, 192, 10415};
avp_header('Alternative-APN') -> {905, 192, 10415};
avp_header('CN-IP-Multicast-Distribution') ->
    {921, 192, 10415};
avp_header('MBMS-2G-3G-Indicator') ->
    {907, 64, undefined};
avp_header('MBMS-BMSC-SSM-IP-Address') ->
    {918, 192, 10415};
avp_header('MBMS-BMSC-SSM-IPv6-Address') ->
    {919, 192, 10415};
avp_header('MBMS-Counting-Information') ->
    {914, 192, 10415};
avp_header('MBMS-Flow-Identifier') -> {920, 192, 10415};
avp_header('MBMS-GGSN-Address') -> {916, 192, 10415};
avp_header('MBMS-GGSN-IPv6-Address') ->
    {917, 192, 10415};
avp_header('MBMS-HC-Indicator') -> {922, 192, 10415};
avp_header('MBMS-Required-QoS') -> {913, 192, 10415};
avp_header('MBMS-Service-Area') -> {903, 192, 10415};
avp_header('MBMS-Service-Type') -> {906, 192, 10415};
avp_header('MBMS-Session-Duration') ->
    {904, 192, 10415};
avp_header('MBMS-Session-Identity') ->
    {908, 192, 10415};
avp_header('MBMS-Session-Repetition-Number') ->
    {912, 192, 10415};
avp_header('MBMS-StartStop-Indication') ->
    {902, 192, 10415};
avp_header('MBMS-Time-To-Data-Transfer') ->
    {911, 192, 10415};
avp_header('MBMS-User-Data-Mode-Indication') ->
    {915, 192, 10415};
avp_header('RAI') -> {909, 64, undefined};
avp_header('Required-MBMS-Bearer-Capabilities') ->
    {901, 192, 10415};
avp_header('TMGI') -> {900, 192, 10415};
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
avp_header('3GPP-Allocate-IP-Type') ->
    diameter_3gpp_base:avp_header('3GPP-Allocate-IP-Type');
avp_header('3GPP-CAMEL-Charging-Info') ->
    diameter_3gpp_base:avp_header('3GPP-CAMEL-Charging-Info');
avp_header('3GPP-CG-Address') ->
    diameter_3gpp_base:avp_header('3GPP-CG-Address');
avp_header('3GPP-CG-IPv6-Address') ->
    diameter_3gpp_base:avp_header('3GPP-CG-IPv6-Address');
avp_header('3GPP-Charging-Characteristics') ->
    diameter_3gpp_base:avp_header('3GPP-Charging-Characteristics');
avp_header('3GPP-Charging-Id') ->
    diameter_3gpp_base:avp_header('3GPP-Charging-Id');
avp_header('3GPP-GGSN-Address') ->
    diameter_3gpp_base:avp_header('3GPP-GGSN-Address');
avp_header('3GPP-GGSN-IPv6-Address') ->
    diameter_3gpp_base:avp_header('3GPP-GGSN-IPv6-Address');
avp_header('3GPP-GGSN-MCC-MNC') ->
    diameter_3gpp_base:avp_header('3GPP-GGSN-MCC-MNC');
avp_header('3GPP-GPRS-Negotiated-QoS-Profile') ->
    diameter_3gpp_base:avp_header('3GPP-GPRS-Negotiated-QoS-Profile');
avp_header('3GPP-IMEISV') ->
    diameter_3gpp_base:avp_header('3GPP-IMEISV');
avp_header('3GPP-IMSI') ->
    diameter_3gpp_base:avp_header('3GPP-IMSI');
avp_header('3GPP-IMSI-MCC-MNC') ->
    diameter_3gpp_base:avp_header('3GPP-IMSI-MCC-MNC');
avp_header('3GPP-IPv6-DNS-Servers') ->
    diameter_3gpp_base:avp_header('3GPP-IPv6-DNS-Servers');
avp_header('3GPP-MS-TimeZone') ->
    diameter_3gpp_base:avp_header('3GPP-MS-TimeZone');
avp_header('3GPP-NSAPI') ->
    diameter_3gpp_base:avp_header('3GPP-NSAPI');
avp_header('3GPP-Negotiated-DSCP') ->
    diameter_3gpp_base:avp_header('3GPP-Negotiated-DSCP');
avp_header('3GPP-PDP-Type') ->
    diameter_3gpp_base:avp_header('3GPP-PDP-Type');
avp_header('3GPP-Packet-Filter') ->
    diameter_3gpp_base:avp_header('3GPP-Packet-Filter');
avp_header('3GPP-RAT-Type') ->
    diameter_3gpp_base:avp_header('3GPP-RAT-Type');
avp_header('3GPP-SGSN-Address') ->
    diameter_3gpp_base:avp_header('3GPP-SGSN-Address');
avp_header('3GPP-SGSN-IPv6-Address') ->
    diameter_3gpp_base:avp_header('3GPP-SGSN-IPv6-Address');
avp_header('3GPP-SGSN-MCC-MNC') ->
    diameter_3gpp_base:avp_header('3GPP-SGSN-MCC-MNC');
avp_header('3GPP-Selection-Mode') ->
    diameter_3gpp_base:avp_header('3GPP-Selection-Mode');
avp_header('3GPP-Session-Stop-Indicator') ->
    diameter_3gpp_base:avp_header('3GPP-Session-Stop-Indicator');
avp_header('3GPP-User-Location-Info') ->
    diameter_3gpp_base:avp_header('3GPP-User-Location-Info');
avp_header('3GPP-User-Location-Info-Time') ->
    diameter_3gpp_base:avp_header('3GPP-User-Location-Info-Time');
avp_header('TWAN-Identifier') ->
    diameter_3gpp_base:avp_header('TWAN-Identifier');
avp_header(_) -> erlang:error(badarg).

avp(T, Data, 'Additional-MBMS-Trace-Info', Opts) ->
    diameter_types:'OctetString'(T, Data, Opts);
avp(T, Data, 'Alternative-APN', Opts) ->
    diameter_types:'UTF8String'(T, Data, Opts);
avp(T, Data, 'CN-IP-Multicast-Distribution', _) ->
    enumerated_avp(T, 'CN-IP-Multicast-Distribution', Data);
avp(T, Data, 'MBMS-2G-3G-Indicator', _) ->
    enumerated_avp(T, 'MBMS-2G-3G-Indicator', Data);
avp(T, Data, 'MBMS-BMSC-SSM-IP-Address', Opts) ->
    diameter_types:'OctetString'(T, Data, Opts);
avp(T, Data, 'MBMS-BMSC-SSM-IPv6-Address', Opts) ->
    diameter_types:'OctetString'(T, Data, Opts);
avp(T, Data, 'MBMS-Counting-Information', _) ->
    enumerated_avp(T, 'MBMS-Counting-Information', Data);
avp(T, Data, 'MBMS-Flow-Identifier', Opts) ->
    diameter_types:'OctetString'(T, Data, Opts);
avp(T, Data, 'MBMS-GGSN-Address', Opts) ->
    diameter_types:'OctetString'(T, Data, Opts);
avp(T, Data, 'MBMS-GGSN-IPv6-Address', Opts) ->
    diameter_types:'OctetString'(T, Data, Opts);
avp(T, Data, 'MBMS-HC-Indicator', _) ->
    enumerated_avp(T, 'MBMS-HC-Indicator', Data);
avp(T, Data, 'MBMS-Required-QoS', Opts) ->
    diameter_types:'UTF8String'(T, Data, Opts);
avp(T, Data, 'MBMS-Service-Area', Opts) ->
    diameter_types:'OctetString'(T, Data, Opts);
avp(T, Data, 'MBMS-Service-Type', _) ->
    enumerated_avp(T, 'MBMS-Service-Type', Data);
avp(T, Data, 'MBMS-Session-Duration', Opts) ->
    diameter_types:'OctetString'(T, Data, Opts);
avp(T, Data, 'MBMS-Session-Identity', Opts) ->
    diameter_types:'OctetString'(T, Data, Opts);
avp(T, Data, 'MBMS-Session-Repetition-Number', Opts) ->
    diameter_types:'OctetString'(T, Data, Opts);
avp(T, Data, 'MBMS-StartStop-Indication', _) ->
    enumerated_avp(T, 'MBMS-StartStop-Indication', Data);
avp(T, Data, 'MBMS-Time-To-Data-Transfer', Opts) ->
    diameter_types:'OctetString'(T, Data, Opts);
avp(T, Data, 'MBMS-User-Data-Mode-Indication', _) ->
    enumerated_avp(T,
                   'MBMS-User-Data-Mode-Indication',
                   Data);
avp(T, Data, 'RAI', Opts) ->
    diameter_types:'UTF8String'(T, Data, Opts);
avp(T, Data, 'Required-MBMS-Bearer-Capabilities',
    Opts) ->
    diameter_types:'UTF8String'(T, Data, Opts);
avp(T, Data, 'TMGI', Opts) ->
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
avp(T, Data, '3GPP-Allocate-IP-Type', Opts) ->
    avp(T,
        Data,
        '3GPP-Allocate-IP-Type',
        Opts,
        diameter_3gpp_base);
avp(T, Data, '3GPP-CAMEL-Charging-Info', Opts) ->
    avp(T,
        Data,
        '3GPP-CAMEL-Charging-Info',
        Opts,
        diameter_3gpp_base);
avp(T, Data, '3GPP-CG-Address', Opts) ->
    avp(T,
        Data,
        '3GPP-CG-Address',
        Opts,
        diameter_3gpp_base);
avp(T, Data, '3GPP-CG-IPv6-Address', Opts) ->
    avp(T,
        Data,
        '3GPP-CG-IPv6-Address',
        Opts,
        diameter_3gpp_base);
avp(T, Data, '3GPP-Charging-Characteristics', Opts) ->
    avp(T,
        Data,
        '3GPP-Charging-Characteristics',
        Opts,
        diameter_3gpp_base);
avp(T, Data, '3GPP-Charging-Id', Opts) ->
    avp(T,
        Data,
        '3GPP-Charging-Id',
        Opts,
        diameter_3gpp_base);
avp(T, Data, '3GPP-GGSN-Address', Opts) ->
    avp(T,
        Data,
        '3GPP-GGSN-Address',
        Opts,
        diameter_3gpp_base);
avp(T, Data, '3GPP-GGSN-IPv6-Address', Opts) ->
    avp(T,
        Data,
        '3GPP-GGSN-IPv6-Address',
        Opts,
        diameter_3gpp_base);
avp(T, Data, '3GPP-GGSN-MCC-MNC', Opts) ->
    avp(T,
        Data,
        '3GPP-GGSN-MCC-MNC',
        Opts,
        diameter_3gpp_base);
avp(T, Data, '3GPP-GPRS-Negotiated-QoS-Profile',
    Opts) ->
    avp(T,
        Data,
        '3GPP-GPRS-Negotiated-QoS-Profile',
        Opts,
        diameter_3gpp_base);
avp(T, Data, '3GPP-IMEISV', Opts) ->
    avp(T, Data, '3GPP-IMEISV', Opts, diameter_3gpp_base);
avp(T, Data, '3GPP-IMSI', Opts) ->
    avp(T, Data, '3GPP-IMSI', Opts, diameter_3gpp_base);
avp(T, Data, '3GPP-IMSI-MCC-MNC', Opts) ->
    avp(T,
        Data,
        '3GPP-IMSI-MCC-MNC',
        Opts,
        diameter_3gpp_base);
avp(T, Data, '3GPP-IPv6-DNS-Servers', Opts) ->
    avp(T,
        Data,
        '3GPP-IPv6-DNS-Servers',
        Opts,
        diameter_3gpp_base);
avp(T, Data, '3GPP-MS-TimeZone', Opts) ->
    avp(T,
        Data,
        '3GPP-MS-TimeZone',
        Opts,
        diameter_3gpp_base);
avp(T, Data, '3GPP-NSAPI', Opts) ->
    avp(T, Data, '3GPP-NSAPI', Opts, diameter_3gpp_base);
avp(T, Data, '3GPP-Negotiated-DSCP', Opts) ->
    avp(T,
        Data,
        '3GPP-Negotiated-DSCP',
        Opts,
        diameter_3gpp_base);
avp(T, Data, '3GPP-PDP-Type', Opts) ->
    avp(T, Data, '3GPP-PDP-Type', Opts, diameter_3gpp_base);
avp(T, Data, '3GPP-Packet-Filter', Opts) ->
    avp(T,
        Data,
        '3GPP-Packet-Filter',
        Opts,
        diameter_3gpp_base);
avp(T, Data, '3GPP-RAT-Type', Opts) ->
    avp(T, Data, '3GPP-RAT-Type', Opts, diameter_3gpp_base);
avp(T, Data, '3GPP-SGSN-Address', Opts) ->
    avp(T,
        Data,
        '3GPP-SGSN-Address',
        Opts,
        diameter_3gpp_base);
avp(T, Data, '3GPP-SGSN-IPv6-Address', Opts) ->
    avp(T,
        Data,
        '3GPP-SGSN-IPv6-Address',
        Opts,
        diameter_3gpp_base);
avp(T, Data, '3GPP-SGSN-MCC-MNC', Opts) ->
    avp(T,
        Data,
        '3GPP-SGSN-MCC-MNC',
        Opts,
        diameter_3gpp_base);
avp(T, Data, '3GPP-Selection-Mode', Opts) ->
    avp(T,
        Data,
        '3GPP-Selection-Mode',
        Opts,
        diameter_3gpp_base);
avp(T, Data, '3GPP-Session-Stop-Indicator', Opts) ->
    avp(T,
        Data,
        '3GPP-Session-Stop-Indicator',
        Opts,
        diameter_3gpp_base);
avp(T, Data, '3GPP-User-Location-Info', Opts) ->
    avp(T,
        Data,
        '3GPP-User-Location-Info',
        Opts,
        diameter_3gpp_base);
avp(T, Data, '3GPP-User-Location-Info-Time', Opts) ->
    avp(T,
        Data,
        '3GPP-User-Location-Info-Time',
        Opts,
        diameter_3gpp_base);
avp(T, Data, 'TWAN-Identifier', Opts) ->
    avp(T,
        Data,
        'TWAN-Identifier',
        Opts,
        diameter_3gpp_base);
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
empty_value('3GPP-PDP-Type', _) -> <<0, 0, 0, 0>>;
empty_value(Name, Opts) -> empty(Name, Opts).

dict() ->
    [1,
     {avp_types,
      [{"Additional-MBMS-Trace-Info",
        910,
        "OctetString",
        "MV"},
       {"Alternative-APN", 905, "UTF8String", "MV"},
       {"CN-IP-Multicast-Distribution",
        921,
        "Enumerated",
        "MV"},
       {"MBMS-2G-3G-Indicator", 907, "Enumerated", "M"},
       {"MBMS-BMSC-SSM-IP-Address", 918, "OctetString", "MV"},
       {"MBMS-BMSC-SSM-IPv6-Address",
        919,
        "OctetString",
        "MV"},
       {"MBMS-Counting-Information", 914, "Enumerated", "MV"},
       {"MBMS-Flow-Identifier", 920, "OctetString", "MV"},
       {"MBMS-GGSN-Address", 916, "OctetString", "MV"},
       {"MBMS-GGSN-IPv6-Address", 917, "OctetString", "MV"},
       {"MBMS-HC-Indicator", 922, "Enumerated", "MV"},
       {"MBMS-Required-QoS", 913, "UTF8String", "MV"},
       {"MBMS-Service-Area", 903, "OctetString", "MV"},
       {"MBMS-Service-Type", 906, "Enumerated", "MV"},
       {"MBMS-Session-Duration", 904, "OctetString", "MV"},
       {"MBMS-Session-Identity", 908, "OctetString", "MV"},
       {"MBMS-Session-Repetition-Number",
        912,
        "OctetString",
        "MV"},
       {"MBMS-StartStop-Indication", 902, "Enumerated", "MV"},
       {"MBMS-Time-To-Data-Transfer",
        911,
        "OctetString",
        "MV"},
       {"MBMS-User-Data-Mode-Indication",
        915,
        "Enumerated",
        "MV"},
       {"RAI", 909, "UTF8String", "M"},
       {"Required-MBMS-Bearer-Capabilities",
        901,
        "UTF8String",
        "MV"},
       {"TMGI", 900, "OctetString", "MV"}]},
     {avp_vendor_id, []},
     {codecs, []},
     {command_codes, []},
     {custom_types, []},
     {define, []},
     {enum, []},
     {grouped, []},
     {id, 16777223},
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
       {diameter_3gpp_base,
        [{"3GPP-Allocate-IP-Type", 27, "OctetString", "V"},
         {"3GPP-CAMEL-Charging-Info", 24, "OctetString", "V"},
         {"3GPP-CG-Address", 4, "OctetString", "V"},
         {"3GPP-CG-IPv6-Address", 14, "OctetString", "V"},
         {"3GPP-Charging-Characteristics",
          13,
          "UTF8String",
          "V"},
         {"3GPP-Charging-Id", 2, "OctetString", "V"},
         {"3GPP-GGSN-Address", 7, "OctetString", "V"},
         {"3GPP-GGSN-IPv6-Address", 16, "OctetString", "V"},
         {"3GPP-GGSN-MCC-MNC", 9, "UTF8String", "V"},
         {"3GPP-GPRS-Negotiated-QoS-Profile",
          5,
          "UTF8String",
          "V"},
         {"3GPP-IMEISV", 20, "OctetString", "V"},
         {"3GPP-IMSI", 1, "UTF8String", "V"},
         {"3GPP-IMSI-MCC-MNC", 8, "UTF8String", "V"},
         {"3GPP-IPv6-DNS-Servers", 17, "OctetString", "V"},
         {"3GPP-MS-TimeZone", 23, "OctetString", "V"},
         {"3GPP-NSAPI", 10, "OctetString", "V"},
         {"3GPP-Negotiated-DSCP", 26, "OctetString", "V"},
         {"3GPP-PDP-Type", 3, "Enumerated", "V"},
         {"3GPP-Packet-Filter", 25, "OctetString", "V"},
         {"3GPP-RAT-Type", 21, "OctetString", "V"},
         {"3GPP-SGSN-Address", 6, "OctetString", "V"},
         {"3GPP-SGSN-IPv6-Address", 15, "OctetString", "V"},
         {"3GPP-SGSN-MCC-MNC", 18, "UTF8String", "V"},
         {"3GPP-Selection-Mode", 12, "UTF8String", "V"},
         {"3GPP-Session-Stop-Indicator", 11, "OctetString", "V"},
         {"3GPP-User-Location-Info", 22, "OctetString", "V"},
         {"3GPP-User-Location-Info-Time",
          30,
          "OctetString",
          "V"},
         {"TWAN-Identifier", 29, "OctetString", "V"}]}]},
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
       {diameter_3gpp_base,
        [{"3GPP-PDP-Type",
          [{"IPv4", 0},
           {"PPP", 1},
           {"IPv6", 2},
           {"IPv4v6", 3},
           {"Non-IP", 4}]}]}]},
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
           ["Acct-Application-Id"]]}]}]},
     {inherits,
      [{"diameter_3gpp_base", []},
       {"diameter_gen_base_rfc6733", []}]},
     {messages, []},
     {name, "diameter_3gpp_ts29_061_gmb"},
     {prefix, "diameter_gmb"},
     {vendor, {10415, "3GPP"}}].


