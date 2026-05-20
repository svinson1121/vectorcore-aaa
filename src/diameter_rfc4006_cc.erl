%% -------------------------------------------------------------------
%% This is a generated file.
%% -------------------------------------------------------------------

-module(diameter_rfc4006_cc).

-moduledoc(false).

-compile({parse_transform, diameter_exprecs}).

-compile(nowarn_unused_function).

-dialyzer(no_return).

-export_records(['CCR',
                 'CCA',
                 'Cost-Information',
                 'Unit-Value',
                 'Multiple-Services-Credit-Control',
                 'Granted-Service-Unit',
                 'Requested-Service-Unit',
                 'Used-Service-Unit',
                 'CC-Money',
                 'G-S-U-Pool-Reference',
                 'Final-Unit-Indication',
                 'Redirect-Server',
                 'Service-Parameter-Info',
                 'Subscription-Id',
                 'User-Equipment-Info',
                 'Proxy-Info',
                 'Failed-AVP',
                 'Experimental-Result',
                 'Vendor-Specific-Application-Id']).

-record('CCR',
        {'Session-Id',
         'Origin-Host',
         'Origin-Realm',
         'Destination-Realm',
         'Auth-Application-Id',
         'Service-Context-Id',
         'CC-Request-Type',
         'CC-Request-Number',
         'Destination-Host' = [],
         'User-Name' = [],
         'CC-Sub-Session-Id' = [],
         'Acct-Multi-Session-Id' = [],
         'Origin-State-Id' = [],
         'Event-Timestamp' = [],
         'Subscription-Id' = [],
         'Service-Identifier' = [],
         'Termination-Cause' = [],
         'Requested-Service-Unit' = [],
         'Requested-Action' = [],
         'Used-Service-Unit' = [],
         'Multiple-Services-Indicator' = [],
         'Multiple-Services-Credit-Control' = [],
         'Service-Parameter-Info' = [],
         'CC-Correlation-Id' = [],
         'User-Equipment-Info' = [],
         'Proxy-Info' = [],
         'Route-Record' = [],
         'AVP' = []}).

-record('CCA',
        {'Session-Id',
         'Result-Code',
         'Origin-Host',
         'Origin-Realm',
         'Auth-Application-Id',
         'CC-Request-Type',
         'CC-Request-Number',
         'User-Name' = [],
         'CC-Session-Failover' = [],
         'CC-Sub-Session-Id' = [],
         'Acct-Multi-Session-Id' = [],
         'Origin-State-Id' = [],
         'Event-Timestamp' = [],
         'Granted-Service-Unit' = [],
         'Multiple-Services-Credit-Control' = [],
         'Cost-Information' = [],
         'Final-Unit-Indication' = [],
         'Check-Balance-Result' = [],
         'Credit-Control-Failure-Handling' = [],
         'Direct-Debiting-Failure-Handling' = [],
         'Validity-Time' = [],
         'Redirect-Host' = [],
         'Redirect-Host-Usage' = [],
         'Redirect-Max-Cache-Time' = [],
         'Proxy-Info' = [],
         'Route-Record' = [],
         'Failed-AVP' = [],
         'AVP' = []}).

-record('Cost-Information',
        {'Unit-Value', 'Currency-Code', 'Cost-Unit' = []}).

-record('Unit-Value',
        {'Value-Digits', 'Exponent' = []}).

-record('Multiple-Services-Credit-Control',
        {'Granted-Service-Unit' = [],
         'Requested-Service-Unit' = [],
         'Used-Service-Unit' = [],
         'Tariff-Change-Usage' = [],
         'Service-Identifier' = [],
         'Rating-Group' = [],
         'G-S-U-Pool-Reference' = [],
         'Validity-Time' = [],
         'Result-Code' = [],
         'Final-Unit-Indication' = [],
         'AVP' = []}).

-record('Granted-Service-Unit',
        {'Tariff-Time-Change' = [],
         'CC-Time' = [],
         'CC-Money' = [],
         'CC-Total-Octets' = [],
         'CC-Input-Octets' = [],
         'CC-Output-Octets' = [],
         'CC-Service-Specific-Units' = [],
         'AVP' = []}).

-record('Requested-Service-Unit',
        {'CC-Time' = [],
         'CC-Money' = [],
         'CC-Total-Octets' = [],
         'CC-Input-Octets' = [],
         'CC-Output-Octets' = [],
         'CC-Service-Specific-Units' = [],
         'AVP' = []}).

-record('Used-Service-Unit',
        {'Tariff-Change-Usage' = [],
         'CC-Time' = [],
         'CC-Money' = [],
         'CC-Total-Octets' = [],
         'CC-Input-Octets' = [],
         'CC-Output-Octets' = [],
         'CC-Service-Specific-Units' = [],
         'AVP' = []}).

-record('CC-Money',
        {'Unit-Value', 'Currency-Code' = []}).

-record('G-S-U-Pool-Reference',
        {'G-S-U-Pool-Identifier',
         'CC-Unit-Type',
         'Unit-Value'}).

-record('Final-Unit-Indication',
        {'Final-Unit-Action',
         'Restriction-Filter-Rule' = [],
         'Filter-Id' = [],
         'Redirect-Server' = []}).

-record('Redirect-Server',
        {'Redirect-Address-Type', 'Redirect-Server-Address'}).

-record('Service-Parameter-Info',
        {'Service-Parameter-Type', 'Service-Parameter-Value'}).

-record('Subscription-Id',
        {'Subscription-Id-Type', 'Subscription-Id-Data'}).

-record('User-Equipment-Info',
        {'User-Equipment-Info-Type',
         'User-Equipment-Info-Value'}).

-record('Proxy-Info',
        {'Proxy-Host', 'Proxy-State', 'AVP' = []}).

-record('Failed-AVP', {'AVP' = []}).

-record('Experimental-Result',
        {'Vendor-Id', 'Experimental-Result-Code'}).

-record('Vendor-Specific-Application-Id',
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

name() -> diameter_rfc4006_cc.

id() -> 4.

vendor_id() -> erlang:error(undefined).

vendor_name() -> erlang:error(undefined).

msg_name(272, true) -> 'CCR';
msg_name(272, false) -> 'CCA';
msg_name(_, _) -> ''.

msg_header('CCR') -> {272, 192, 4};
msg_header('CCA') -> {272, 64, 4};
msg_header(_) -> erlang:error(badarg).

rec2msg('CCR') -> 'CCR';
rec2msg('CCA') -> 'CCA';
rec2msg(_) -> erlang:error(badarg).

msg2rec('CCR') -> 'CCR';
msg2rec('CCA') -> 'CCA';
msg2rec(_) -> erlang:error(badarg).

name2rec('Cost-Information') -> 'Cost-Information';
name2rec('Unit-Value') -> 'Unit-Value';
name2rec('Multiple-Services-Credit-Control') ->
    'Multiple-Services-Credit-Control';
name2rec('Granted-Service-Unit') ->
    'Granted-Service-Unit';
name2rec('Requested-Service-Unit') ->
    'Requested-Service-Unit';
name2rec('Used-Service-Unit') -> 'Used-Service-Unit';
name2rec('CC-Money') -> 'CC-Money';
name2rec('G-S-U-Pool-Reference') ->
    'G-S-U-Pool-Reference';
name2rec('Final-Unit-Indication') ->
    'Final-Unit-Indication';
name2rec('Redirect-Server') -> 'Redirect-Server';
name2rec('Service-Parameter-Info') ->
    'Service-Parameter-Info';
name2rec('Subscription-Id') -> 'Subscription-Id';
name2rec('User-Equipment-Info') ->
    'User-Equipment-Info';
name2rec('Proxy-Info') -> 'Proxy-Info';
name2rec('Failed-AVP') -> 'Failed-AVP';
name2rec('Experimental-Result') ->
    'Experimental-Result';
name2rec('Vendor-Specific-Application-Id') ->
    'Vendor-Specific-Application-Id';
name2rec(T) -> msg2rec(T).

avp_name(411, undefined) ->
    {'CC-Correlation-Id', 'OctetString'};
avp_name(412, undefined) ->
    {'CC-Input-Octets', 'Unsigned64'};
avp_name(413, undefined) -> {'CC-Money', 'Grouped'};
avp_name(414, undefined) ->
    {'CC-Output-Octets', 'Unsigned64'};
avp_name(415, undefined) ->
    {'CC-Request-Number', 'Unsigned32'};
avp_name(416, undefined) ->
    {'CC-Request-Type', 'Enumerated'};
avp_name(417, undefined) ->
    {'CC-Service-Specific-Units', 'Unsigned64'};
avp_name(418, undefined) ->
    {'CC-Session-Failover', 'Enumerated'};
avp_name(419, undefined) ->
    {'CC-Sub-Session-Id', 'Unsigned64'};
avp_name(420, undefined) -> {'CC-Time', 'Unsigned32'};
avp_name(421, undefined) ->
    {'CC-Total-Octets', 'Unsigned64'};
avp_name(454, undefined) ->
    {'CC-Unit-Type', 'Enumerated'};
avp_name(422, undefined) ->
    {'Check-Balance-Result', 'Enumerated'};
avp_name(423, undefined) ->
    {'Cost-Information', 'Grouped'};
avp_name(424, undefined) -> {'Cost-Unit', 'UTF8String'};
avp_name(426, undefined) ->
    {'Credit-Control', 'Enumerated'};
avp_name(427, undefined) ->
    {'Credit-Control-Failure-Handling', 'Enumerated'};
avp_name(425, undefined) ->
    {'Currency-Code', 'Unsigned32'};
avp_name(428, undefined) ->
    {'Direct-Debiting-Failure-Handling', 'Enumerated'};
avp_name(429, undefined) -> {'Exponent', 'Integer32'};
avp_name(449, undefined) ->
    {'Final-Unit-Action', 'Enumerated'};
avp_name(430, undefined) ->
    {'Final-Unit-Indication', 'Grouped'};
avp_name(453, undefined) ->
    {'G-S-U-Pool-Identifier', 'Unsigned32'};
avp_name(457, undefined) ->
    {'G-S-U-Pool-Reference', 'Grouped'};
avp_name(431, undefined) ->
    {'Granted-Service-Unit', 'Grouped'};
avp_name(456, undefined) ->
    {'Multiple-Services-Credit-Control', 'Grouped'};
avp_name(455, undefined) ->
    {'Multiple-Services-Indicator', 'Enumerated'};
avp_name(432, undefined) ->
    {'Rating-Group', 'Unsigned32'};
avp_name(433, undefined) ->
    {'Redirect-Address-Type', 'Enumerated'};
avp_name(434, undefined) ->
    {'Redirect-Server', 'Grouped'};
avp_name(435, undefined) ->
    {'Redirect-Server-Address', 'UTF8String'};
avp_name(436, undefined) ->
    {'Requested-Action', 'Enumerated'};
avp_name(437, undefined) ->
    {'Requested-Service-Unit', 'Grouped'};
avp_name(438, undefined) ->
    {'Restriction-Filter-Rule', 'IPFilterRule'};
avp_name(461, undefined) ->
    {'Service-Context-Id', 'UTF8String'};
avp_name(439, undefined) ->
    {'Service-Identifier', 'Unsigned32'};
avp_name(440, undefined) ->
    {'Service-Parameter-Info', 'Grouped'};
avp_name(441, undefined) ->
    {'Service-Parameter-Type', 'Unsigned32'};
avp_name(442, undefined) ->
    {'Service-Parameter-Value', 'OctetString'};
avp_name(443, undefined) ->
    {'Subscription-Id', 'Grouped'};
avp_name(444, undefined) ->
    {'Subscription-Id-Data', 'UTF8String'};
avp_name(450, undefined) ->
    {'Subscription-Id-Type', 'Enumerated'};
avp_name(452, undefined) ->
    {'Tariff-Change-Usage', 'Enumerated'};
avp_name(451, undefined) ->
    {'Tariff-Time-Change', 'Time'};
avp_name(445, undefined) -> {'Unit-Value', 'Grouped'};
avp_name(446, undefined) ->
    {'Used-Service-Unit', 'Grouped'};
avp_name(458, undefined) ->
    {'User-Equipment-Info', 'Grouped'};
avp_name(459, undefined) ->
    {'User-Equipment-Info-Type', 'Enumerated'};
avp_name(460, undefined) ->
    {'User-Equipment-Info-Value', 'OctetString'};
avp_name(448, undefined) ->
    {'Validity-Time', 'Unsigned32'};
avp_name(447, undefined) ->
    {'Value-Digits', 'Integer64'};
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
avp_name(11, undefined) -> {'Filter-Id', 'UTF8String'};
avp_name(_, _) -> 'AVP'.

avp_arity('CCR') ->
    [{'Session-Id', 1},
     {'Origin-Host', 1},
     {'Origin-Realm', 1},
     {'Destination-Realm', 1},
     {'Auth-Application-Id', 1},
     {'Service-Context-Id', 1},
     {'CC-Request-Type', 1},
     {'CC-Request-Number', 1},
     {'Destination-Host', {0, 1}},
     {'User-Name', {0, 1}},
     {'CC-Sub-Session-Id', {0, 1}},
     {'Acct-Multi-Session-Id', {0, 1}},
     {'Origin-State-Id', {0, 1}},
     {'Event-Timestamp', {0, 1}},
     {'Subscription-Id', {0, '*'}},
     {'Service-Identifier', {0, 1}},
     {'Termination-Cause', {0, 1}},
     {'Requested-Service-Unit', {0, 1}},
     {'Requested-Action', {0, 1}},
     {'Used-Service-Unit', {0, '*'}},
     {'Multiple-Services-Indicator', {0, 1}},
     {'Multiple-Services-Credit-Control', {0, '*'}},
     {'Service-Parameter-Info', {0, '*'}},
     {'CC-Correlation-Id', {0, 1}},
     {'User-Equipment-Info', {0, 1}},
     {'Proxy-Info', {0, '*'}},
     {'Route-Record', {0, '*'}},
     {'AVP', {0, '*'}}];
avp_arity('CCA') ->
    [{'Session-Id', 1},
     {'Result-Code', 1},
     {'Origin-Host', 1},
     {'Origin-Realm', 1},
     {'Auth-Application-Id', 1},
     {'CC-Request-Type', 1},
     {'CC-Request-Number', 1},
     {'User-Name', {0, 1}},
     {'CC-Session-Failover', {0, 1}},
     {'CC-Sub-Session-Id', {0, 1}},
     {'Acct-Multi-Session-Id', {0, 1}},
     {'Origin-State-Id', {0, 1}},
     {'Event-Timestamp', {0, 1}},
     {'Granted-Service-Unit', {0, 1}},
     {'Multiple-Services-Credit-Control', {0, '*'}},
     {'Cost-Information', {0, 1}},
     {'Final-Unit-Indication', {0, 1}},
     {'Check-Balance-Result', {0, 1}},
     {'Credit-Control-Failure-Handling', {0, 1}},
     {'Direct-Debiting-Failure-Handling', {0, 1}},
     {'Validity-Time', {0, 1}},
     {'Redirect-Host', {0, '*'}},
     {'Redirect-Host-Usage', {0, 1}},
     {'Redirect-Max-Cache-Time', {0, 1}},
     {'Proxy-Info', {0, '*'}},
     {'Route-Record', {0, '*'}},
     {'Failed-AVP', {0, '*'}},
     {'AVP', {0, '*'}}];
avp_arity('Cost-Information') ->
    [{'Unit-Value', 1},
     {'Currency-Code', 1},
     {'Cost-Unit', {0, 1}}];
avp_arity('Unit-Value') ->
    [{'Value-Digits', 1}, {'Exponent', {0, 1}}];
avp_arity('Multiple-Services-Credit-Control') ->
    [{'Granted-Service-Unit', {0, 1}},
     {'Requested-Service-Unit', {0, 1}},
     {'Used-Service-Unit', {0, '*'}},
     {'Tariff-Change-Usage', {0, 1}},
     {'Service-Identifier', {0, '*'}},
     {'Rating-Group', {0, 1}},
     {'G-S-U-Pool-Reference', {0, '*'}},
     {'Validity-Time', {0, 1}},
     {'Result-Code', {0, 1}},
     {'Final-Unit-Indication', {0, 1}},
     {'AVP', {0, '*'}}];
avp_arity('Granted-Service-Unit') ->
    [{'Tariff-Time-Change', {0, 1}},
     {'CC-Time', {0, 1}},
     {'CC-Money', {0, 1}},
     {'CC-Total-Octets', {0, 1}},
     {'CC-Input-Octets', {0, 1}},
     {'CC-Output-Octets', {0, 1}},
     {'CC-Service-Specific-Units', {0, 1}},
     {'AVP', {0, '*'}}];
avp_arity('Requested-Service-Unit') ->
    [{'CC-Time', {0, 1}},
     {'CC-Money', {0, 1}},
     {'CC-Total-Octets', {0, 1}},
     {'CC-Input-Octets', {0, 1}},
     {'CC-Output-Octets', {0, 1}},
     {'CC-Service-Specific-Units', {0, 1}},
     {'AVP', {0, '*'}}];
avp_arity('Used-Service-Unit') ->
    [{'Tariff-Change-Usage', {0, 1}},
     {'CC-Time', {0, 1}},
     {'CC-Money', {0, 1}},
     {'CC-Total-Octets', {0, 1}},
     {'CC-Input-Octets', {0, 1}},
     {'CC-Output-Octets', {0, 1}},
     {'CC-Service-Specific-Units', {0, 1}},
     {'AVP', {0, '*'}}];
avp_arity('CC-Money') ->
    [{'Unit-Value', 1}, {'Currency-Code', {0, 1}}];
avp_arity('G-S-U-Pool-Reference') ->
    [{'G-S-U-Pool-Identifier', 1},
     {'CC-Unit-Type', 1},
     {'Unit-Value', 1}];
avp_arity('Final-Unit-Indication') ->
    [{'Final-Unit-Action', 1},
     {'Restriction-Filter-Rule', {0, '*'}},
     {'Filter-Id', {0, '*'}},
     {'Redirect-Server', {0, 1}}];
avp_arity('Redirect-Server') ->
    [{'Redirect-Address-Type', 1},
     {'Redirect-Server-Address', 1}];
avp_arity('Service-Parameter-Info') ->
    [{'Service-Parameter-Type', 1},
     {'Service-Parameter-Value', 1}];
avp_arity('Subscription-Id') ->
    [{'Subscription-Id-Type', 1},
     {'Subscription-Id-Data', 1}];
avp_arity('User-Equipment-Info') ->
    [{'User-Equipment-Info-Type', 1},
     {'User-Equipment-Info-Value', 1}];
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

avp_arity('CCR', 'Session-Id') -> 1;
avp_arity('CCR', 'Origin-Host') -> 1;
avp_arity('CCR', 'Origin-Realm') -> 1;
avp_arity('CCR', 'Destination-Realm') -> 1;
avp_arity('CCR', 'Auth-Application-Id') -> 1;
avp_arity('CCR', 'Service-Context-Id') -> 1;
avp_arity('CCR', 'CC-Request-Type') -> 1;
avp_arity('CCR', 'CC-Request-Number') -> 1;
avp_arity('CCR', 'Destination-Host') -> {0, 1};
avp_arity('CCR', 'User-Name') -> {0, 1};
avp_arity('CCR', 'CC-Sub-Session-Id') -> {0, 1};
avp_arity('CCR', 'Acct-Multi-Session-Id') -> {0, 1};
avp_arity('CCR', 'Origin-State-Id') -> {0, 1};
avp_arity('CCR', 'Event-Timestamp') -> {0, 1};
avp_arity('CCR', 'Subscription-Id') -> {0, '*'};
avp_arity('CCR', 'Service-Identifier') -> {0, 1};
avp_arity('CCR', 'Termination-Cause') -> {0, 1};
avp_arity('CCR', 'Requested-Service-Unit') -> {0, 1};
avp_arity('CCR', 'Requested-Action') -> {0, 1};
avp_arity('CCR', 'Used-Service-Unit') -> {0, '*'};
avp_arity('CCR', 'Multiple-Services-Indicator') ->
    {0, 1};
avp_arity('CCR', 'Multiple-Services-Credit-Control') ->
    {0, '*'};
avp_arity('CCR', 'Service-Parameter-Info') -> {0, '*'};
avp_arity('CCR', 'CC-Correlation-Id') -> {0, 1};
avp_arity('CCR', 'User-Equipment-Info') -> {0, 1};
avp_arity('CCR', 'Proxy-Info') -> {0, '*'};
avp_arity('CCR', 'Route-Record') -> {0, '*'};
avp_arity('CCR', 'AVP') -> {0, '*'};
avp_arity('CCA', 'Session-Id') -> 1;
avp_arity('CCA', 'Result-Code') -> 1;
avp_arity('CCA', 'Origin-Host') -> 1;
avp_arity('CCA', 'Origin-Realm') -> 1;
avp_arity('CCA', 'Auth-Application-Id') -> 1;
avp_arity('CCA', 'CC-Request-Type') -> 1;
avp_arity('CCA', 'CC-Request-Number') -> 1;
avp_arity('CCA', 'User-Name') -> {0, 1};
avp_arity('CCA', 'CC-Session-Failover') -> {0, 1};
avp_arity('CCA', 'CC-Sub-Session-Id') -> {0, 1};
avp_arity('CCA', 'Acct-Multi-Session-Id') -> {0, 1};
avp_arity('CCA', 'Origin-State-Id') -> {0, 1};
avp_arity('CCA', 'Event-Timestamp') -> {0, 1};
avp_arity('CCA', 'Granted-Service-Unit') -> {0, 1};
avp_arity('CCA', 'Multiple-Services-Credit-Control') ->
    {0, '*'};
avp_arity('CCA', 'Cost-Information') -> {0, 1};
avp_arity('CCA', 'Final-Unit-Indication') -> {0, 1};
avp_arity('CCA', 'Check-Balance-Result') -> {0, 1};
avp_arity('CCA', 'Credit-Control-Failure-Handling') ->
    {0, 1};
avp_arity('CCA', 'Direct-Debiting-Failure-Handling') ->
    {0, 1};
avp_arity('CCA', 'Validity-Time') -> {0, 1};
avp_arity('CCA', 'Redirect-Host') -> {0, '*'};
avp_arity('CCA', 'Redirect-Host-Usage') -> {0, 1};
avp_arity('CCA', 'Redirect-Max-Cache-Time') -> {0, 1};
avp_arity('CCA', 'Proxy-Info') -> {0, '*'};
avp_arity('CCA', 'Route-Record') -> {0, '*'};
avp_arity('CCA', 'Failed-AVP') -> {0, '*'};
avp_arity('CCA', 'AVP') -> {0, '*'};
avp_arity('Cost-Information', 'Unit-Value') -> 1;
avp_arity('Cost-Information', 'Currency-Code') -> 1;
avp_arity('Cost-Information', 'Cost-Unit') -> {0, 1};
avp_arity('Unit-Value', 'Value-Digits') -> 1;
avp_arity('Unit-Value', 'Exponent') -> {0, 1};
avp_arity('Multiple-Services-Credit-Control',
          'Granted-Service-Unit') ->
    {0, 1};
avp_arity('Multiple-Services-Credit-Control',
          'Requested-Service-Unit') ->
    {0, 1};
avp_arity('Multiple-Services-Credit-Control',
          'Used-Service-Unit') ->
    {0, '*'};
avp_arity('Multiple-Services-Credit-Control',
          'Tariff-Change-Usage') ->
    {0, 1};
avp_arity('Multiple-Services-Credit-Control',
          'Service-Identifier') ->
    {0, '*'};
avp_arity('Multiple-Services-Credit-Control',
          'Rating-Group') ->
    {0, 1};
avp_arity('Multiple-Services-Credit-Control',
          'G-S-U-Pool-Reference') ->
    {0, '*'};
avp_arity('Multiple-Services-Credit-Control',
          'Validity-Time') ->
    {0, 1};
avp_arity('Multiple-Services-Credit-Control',
          'Result-Code') ->
    {0, 1};
avp_arity('Multiple-Services-Credit-Control',
          'Final-Unit-Indication') ->
    {0, 1};
avp_arity('Multiple-Services-Credit-Control', 'AVP') ->
    {0, '*'};
avp_arity('Granted-Service-Unit',
          'Tariff-Time-Change') ->
    {0, 1};
avp_arity('Granted-Service-Unit', 'CC-Time') -> {0, 1};
avp_arity('Granted-Service-Unit', 'CC-Money') -> {0, 1};
avp_arity('Granted-Service-Unit', 'CC-Total-Octets') ->
    {0, 1};
avp_arity('Granted-Service-Unit', 'CC-Input-Octets') ->
    {0, 1};
avp_arity('Granted-Service-Unit', 'CC-Output-Octets') ->
    {0, 1};
avp_arity('Granted-Service-Unit',
          'CC-Service-Specific-Units') ->
    {0, 1};
avp_arity('Granted-Service-Unit', 'AVP') -> {0, '*'};
avp_arity('Requested-Service-Unit', 'CC-Time') ->
    {0, 1};
avp_arity('Requested-Service-Unit', 'CC-Money') ->
    {0, 1};
avp_arity('Requested-Service-Unit',
          'CC-Total-Octets') ->
    {0, 1};
avp_arity('Requested-Service-Unit',
          'CC-Input-Octets') ->
    {0, 1};
avp_arity('Requested-Service-Unit',
          'CC-Output-Octets') ->
    {0, 1};
avp_arity('Requested-Service-Unit',
          'CC-Service-Specific-Units') ->
    {0, 1};
avp_arity('Requested-Service-Unit', 'AVP') -> {0, '*'};
avp_arity('Used-Service-Unit', 'Tariff-Change-Usage') ->
    {0, 1};
avp_arity('Used-Service-Unit', 'CC-Time') -> {0, 1};
avp_arity('Used-Service-Unit', 'CC-Money') -> {0, 1};
avp_arity('Used-Service-Unit', 'CC-Total-Octets') ->
    {0, 1};
avp_arity('Used-Service-Unit', 'CC-Input-Octets') ->
    {0, 1};
avp_arity('Used-Service-Unit', 'CC-Output-Octets') ->
    {0, 1};
avp_arity('Used-Service-Unit',
          'CC-Service-Specific-Units') ->
    {0, 1};
avp_arity('Used-Service-Unit', 'AVP') -> {0, '*'};
avp_arity('CC-Money', 'Unit-Value') -> 1;
avp_arity('CC-Money', 'Currency-Code') -> {0, 1};
avp_arity('G-S-U-Pool-Reference',
          'G-S-U-Pool-Identifier') ->
    1;
avp_arity('G-S-U-Pool-Reference', 'CC-Unit-Type') -> 1;
avp_arity('G-S-U-Pool-Reference', 'Unit-Value') -> 1;
avp_arity('Final-Unit-Indication',
          'Final-Unit-Action') ->
    1;
avp_arity('Final-Unit-Indication',
          'Restriction-Filter-Rule') ->
    {0, '*'};
avp_arity('Final-Unit-Indication', 'Filter-Id') ->
    {0, '*'};
avp_arity('Final-Unit-Indication', 'Redirect-Server') ->
    {0, 1};
avp_arity('Redirect-Server', 'Redirect-Address-Type') ->
    1;
avp_arity('Redirect-Server',
          'Redirect-Server-Address') ->
    1;
avp_arity('Service-Parameter-Info',
          'Service-Parameter-Type') ->
    1;
avp_arity('Service-Parameter-Info',
          'Service-Parameter-Value') ->
    1;
avp_arity('Subscription-Id', 'Subscription-Id-Type') ->
    1;
avp_arity('Subscription-Id', 'Subscription-Id-Data') ->
    1;
avp_arity('User-Equipment-Info',
          'User-Equipment-Info-Type') ->
    1;
avp_arity('User-Equipment-Info',
          'User-Equipment-Info-Value') ->
    1;
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

avp_header('CC-Correlation-Id') -> {411, 0, undefined};
avp_header('CC-Input-Octets') -> {412, 64, undefined};
avp_header('CC-Money') -> {413, 64, undefined};
avp_header('CC-Output-Octets') -> {414, 64, undefined};
avp_header('CC-Request-Number') -> {415, 64, undefined};
avp_header('CC-Request-Type') -> {416, 64, undefined};
avp_header('CC-Service-Specific-Units') ->
    {417, 64, undefined};
avp_header('CC-Session-Failover') ->
    {418, 64, undefined};
avp_header('CC-Sub-Session-Id') -> {419, 64, undefined};
avp_header('CC-Time') -> {420, 64, undefined};
avp_header('CC-Total-Octets') -> {421, 64, undefined};
avp_header('CC-Unit-Type') -> {454, 64, undefined};
avp_header('Check-Balance-Result') ->
    {422, 64, undefined};
avp_header('Cost-Information') -> {423, 64, undefined};
avp_header('Cost-Unit') -> {424, 64, undefined};
avp_header('Credit-Control') -> {426, 64, undefined};
avp_header('Credit-Control-Failure-Handling') ->
    {427, 64, undefined};
avp_header('Currency-Code') -> {425, 64, undefined};
avp_header('Direct-Debiting-Failure-Handling') ->
    {428, 64, undefined};
avp_header('Exponent') -> {429, 64, undefined};
avp_header('Final-Unit-Action') -> {449, 64, undefined};
avp_header('Final-Unit-Indication') ->
    {430, 64, undefined};
avp_header('G-S-U-Pool-Identifier') ->
    {453, 64, undefined};
avp_header('G-S-U-Pool-Reference') ->
    {457, 64, undefined};
avp_header('Granted-Service-Unit') ->
    {431, 64, undefined};
avp_header('Multiple-Services-Credit-Control') ->
    {456, 64, undefined};
avp_header('Multiple-Services-Indicator') ->
    {455, 64, undefined};
avp_header('Rating-Group') -> {432, 64, undefined};
avp_header('Redirect-Address-Type') ->
    {433, 64, undefined};
avp_header('Redirect-Server') -> {434, 64, undefined};
avp_header('Redirect-Server-Address') ->
    {435, 64, undefined};
avp_header('Requested-Action') -> {436, 64, undefined};
avp_header('Requested-Service-Unit') ->
    {437, 64, undefined};
avp_header('Restriction-Filter-Rule') ->
    {438, 64, undefined};
avp_header('Service-Context-Id') ->
    {461, 64, undefined};
avp_header('Service-Identifier') ->
    {439, 64, undefined};
avp_header('Service-Parameter-Info') ->
    {440, 0, undefined};
avp_header('Service-Parameter-Type') ->
    {441, 0, undefined};
avp_header('Service-Parameter-Value') ->
    {442, 0, undefined};
avp_header('Subscription-Id') -> {443, 64, undefined};
avp_header('Subscription-Id-Data') ->
    {444, 64, undefined};
avp_header('Subscription-Id-Type') ->
    {450, 64, undefined};
avp_header('Tariff-Change-Usage') ->
    {452, 64, undefined};
avp_header('Tariff-Time-Change') ->
    {451, 64, undefined};
avp_header('Unit-Value') -> {445, 64, undefined};
avp_header('Used-Service-Unit') -> {446, 64, undefined};
avp_header('User-Equipment-Info') ->
    {458, 0, undefined};
avp_header('User-Equipment-Info-Type') ->
    {459, 0, undefined};
avp_header('User-Equipment-Info-Value') ->
    {460, 0, undefined};
avp_header('Validity-Time') -> {448, 64, undefined};
avp_header('Value-Digits') -> {447, 64, undefined};
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
avp_header('Filter-Id') ->
    diameter_rfc4005_nasreq:avp_header('Filter-Id');
avp_header(_) -> erlang:error(badarg).

avp(T, Data, 'CC-Correlation-Id', Opts) ->
    diameter_types:'OctetString'(T, Data, Opts);
avp(T, Data, 'CC-Input-Octets', Opts) ->
    diameter_types:'Unsigned64'(T, Data, Opts);
avp(T, Data, 'CC-Money', Opts) ->
    grouped_avp(T, 'CC-Money', Data, Opts);
avp(T, Data, 'CC-Output-Octets', Opts) ->
    diameter_types:'Unsigned64'(T, Data, Opts);
avp(T, Data, 'CC-Request-Number', Opts) ->
    diameter_types:'Unsigned32'(T, Data, Opts);
avp(T, Data, 'CC-Request-Type', _) ->
    enumerated_avp(T, 'CC-Request-Type', Data);
avp(T, Data, 'CC-Service-Specific-Units', Opts) ->
    diameter_types:'Unsigned64'(T, Data, Opts);
avp(T, Data, 'CC-Session-Failover', _) ->
    enumerated_avp(T, 'CC-Session-Failover', Data);
avp(T, Data, 'CC-Sub-Session-Id', Opts) ->
    diameter_types:'Unsigned64'(T, Data, Opts);
avp(T, Data, 'CC-Time', Opts) ->
    diameter_types:'Unsigned32'(T, Data, Opts);
avp(T, Data, 'CC-Total-Octets', Opts) ->
    diameter_types:'Unsigned64'(T, Data, Opts);
avp(T, Data, 'CC-Unit-Type', _) ->
    enumerated_avp(T, 'CC-Unit-Type', Data);
avp(T, Data, 'Check-Balance-Result', _) ->
    enumerated_avp(T, 'Check-Balance-Result', Data);
avp(T, Data, 'Cost-Information', Opts) ->
    grouped_avp(T, 'Cost-Information', Data, Opts);
avp(T, Data, 'Cost-Unit', Opts) ->
    diameter_types:'UTF8String'(T, Data, Opts);
avp(T, Data, 'Credit-Control', _) ->
    enumerated_avp(T, 'Credit-Control', Data);
avp(T, Data, 'Credit-Control-Failure-Handling', _) ->
    enumerated_avp(T,
                   'Credit-Control-Failure-Handling',
                   Data);
avp(T, Data, 'Currency-Code', Opts) ->
    diameter_types:'Unsigned32'(T, Data, Opts);
avp(T, Data, 'Direct-Debiting-Failure-Handling', _) ->
    enumerated_avp(T,
                   'Direct-Debiting-Failure-Handling',
                   Data);
avp(T, Data, 'Exponent', Opts) ->
    diameter_types:'Integer32'(T, Data, Opts);
avp(T, Data, 'Final-Unit-Action', _) ->
    enumerated_avp(T, 'Final-Unit-Action', Data);
avp(T, Data, 'Final-Unit-Indication', Opts) ->
    grouped_avp(T, 'Final-Unit-Indication', Data, Opts);
avp(T, Data, 'G-S-U-Pool-Identifier', Opts) ->
    diameter_types:'Unsigned32'(T, Data, Opts);
avp(T, Data, 'G-S-U-Pool-Reference', Opts) ->
    grouped_avp(T, 'G-S-U-Pool-Reference', Data, Opts);
avp(T, Data, 'Granted-Service-Unit', Opts) ->
    grouped_avp(T, 'Granted-Service-Unit', Data, Opts);
avp(T, Data, 'Multiple-Services-Credit-Control',
    Opts) ->
    grouped_avp(T,
                'Multiple-Services-Credit-Control',
                Data,
                Opts);
avp(T, Data, 'Multiple-Services-Indicator', _) ->
    enumerated_avp(T, 'Multiple-Services-Indicator', Data);
avp(T, Data, 'Rating-Group', Opts) ->
    diameter_types:'Unsigned32'(T, Data, Opts);
avp(T, Data, 'Redirect-Address-Type', _) ->
    enumerated_avp(T, 'Redirect-Address-Type', Data);
avp(T, Data, 'Redirect-Server', Opts) ->
    grouped_avp(T, 'Redirect-Server', Data, Opts);
avp(T, Data, 'Redirect-Server-Address', Opts) ->
    diameter_types:'UTF8String'(T, Data, Opts);
avp(T, Data, 'Requested-Action', _) ->
    enumerated_avp(T, 'Requested-Action', Data);
avp(T, Data, 'Requested-Service-Unit', Opts) ->
    grouped_avp(T, 'Requested-Service-Unit', Data, Opts);
avp(T, Data, 'Restriction-Filter-Rule', Opts) ->
    diameter_types:'IPFilterRule'(T, Data, Opts);
avp(T, Data, 'Service-Context-Id', Opts) ->
    diameter_types:'UTF8String'(T, Data, Opts);
avp(T, Data, 'Service-Identifier', Opts) ->
    diameter_types:'Unsigned32'(T, Data, Opts);
avp(T, Data, 'Service-Parameter-Info', Opts) ->
    grouped_avp(T, 'Service-Parameter-Info', Data, Opts);
avp(T, Data, 'Service-Parameter-Type', Opts) ->
    diameter_types:'Unsigned32'(T, Data, Opts);
avp(T, Data, 'Service-Parameter-Value', Opts) ->
    diameter_types:'OctetString'(T, Data, Opts);
avp(T, Data, 'Subscription-Id', Opts) ->
    grouped_avp(T, 'Subscription-Id', Data, Opts);
avp(T, Data, 'Subscription-Id-Data', Opts) ->
    diameter_types:'UTF8String'(T, Data, Opts);
avp(T, Data, 'Subscription-Id-Type', _) ->
    enumerated_avp(T, 'Subscription-Id-Type', Data);
avp(T, Data, 'Tariff-Change-Usage', _) ->
    enumerated_avp(T, 'Tariff-Change-Usage', Data);
avp(T, Data, 'Tariff-Time-Change', Opts) ->
    diameter_types:'Time'(T, Data, Opts);
avp(T, Data, 'Unit-Value', Opts) ->
    grouped_avp(T, 'Unit-Value', Data, Opts);
avp(T, Data, 'Used-Service-Unit', Opts) ->
    grouped_avp(T, 'Used-Service-Unit', Data, Opts);
avp(T, Data, 'User-Equipment-Info', Opts) ->
    grouped_avp(T, 'User-Equipment-Info', Data, Opts);
avp(T, Data, 'User-Equipment-Info-Type', _) ->
    enumerated_avp(T, 'User-Equipment-Info-Type', Data);
avp(T, Data, 'User-Equipment-Info-Value', Opts) ->
    diameter_types:'OctetString'(T, Data, Opts);
avp(T, Data, 'Validity-Time', Opts) ->
    diameter_types:'Unsigned32'(T, Data, Opts);
avp(T, Data, 'Value-Digits', Opts) ->
    diameter_types:'Integer64'(T, Data, Opts);
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
avp(T, Data, 'Filter-Id', Opts) ->
    avp(T,
        Data,
        'Filter-Id',
        Opts,
        diameter_rfc4005_nasreq);
avp(_, _, _, _) -> erlang:error(badarg).

enumerated_avp(decode, 'CC-Request-Type',
               <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'CC-Request-Type', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'CC-Request-Type',
               <<0, 0, 0, 2>>) ->
    2;
enumerated_avp(encode, 'CC-Request-Type', 2) ->
    <<0, 0, 0, 2>>;
enumerated_avp(decode, 'CC-Request-Type',
               <<0, 0, 0, 3>>) ->
    3;
enumerated_avp(encode, 'CC-Request-Type', 3) ->
    <<0, 0, 0, 3>>;
enumerated_avp(decode, 'CC-Request-Type',
               <<0, 0, 0, 4>>) ->
    4;
enumerated_avp(encode, 'CC-Request-Type', 4) ->
    <<0, 0, 0, 4>>;
enumerated_avp(decode, 'CC-Session-Failover',
               <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'CC-Session-Failover', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'CC-Session-Failover',
               <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'CC-Session-Failover', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'Check-Balance-Result',
               <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'Check-Balance-Result', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'Check-Balance-Result',
               <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'Check-Balance-Result', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'Credit-Control',
               <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'Credit-Control', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'Credit-Control',
               <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'Credit-Control', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode,
               'Credit-Control-Failure-Handling', <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode,
               'Credit-Control-Failure-Handling', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode,
               'Credit-Control-Failure-Handling', <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode,
               'Credit-Control-Failure-Handling', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode,
               'Credit-Control-Failure-Handling', <<0, 0, 0, 2>>) ->
    2;
enumerated_avp(encode,
               'Credit-Control-Failure-Handling', 2) ->
    <<0, 0, 0, 2>>;
enumerated_avp(decode,
               'Direct-Debiting-Failure-Handling', <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode,
               'Direct-Debiting-Failure-Handling', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode,
               'Direct-Debiting-Failure-Handling', <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode,
               'Direct-Debiting-Failure-Handling', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'Tariff-Change-Usage',
               <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'Tariff-Change-Usage', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'Tariff-Change-Usage',
               <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'Tariff-Change-Usage', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'Tariff-Change-Usage',
               <<0, 0, 0, 2>>) ->
    2;
enumerated_avp(encode, 'Tariff-Change-Usage', 2) ->
    <<0, 0, 0, 2>>;
enumerated_avp(decode, 'CC-Unit-Type',
               <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'CC-Unit-Type', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'CC-Unit-Type',
               <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'CC-Unit-Type', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'CC-Unit-Type',
               <<0, 0, 0, 2>>) ->
    2;
enumerated_avp(encode, 'CC-Unit-Type', 2) ->
    <<0, 0, 0, 2>>;
enumerated_avp(decode, 'CC-Unit-Type',
               <<0, 0, 0, 3>>) ->
    3;
enumerated_avp(encode, 'CC-Unit-Type', 3) ->
    <<0, 0, 0, 3>>;
enumerated_avp(decode, 'CC-Unit-Type',
               <<0, 0, 0, 4>>) ->
    4;
enumerated_avp(encode, 'CC-Unit-Type', 4) ->
    <<0, 0, 0, 4>>;
enumerated_avp(decode, 'CC-Unit-Type',
               <<0, 0, 0, 5>>) ->
    5;
enumerated_avp(encode, 'CC-Unit-Type', 5) ->
    <<0, 0, 0, 5>>;
enumerated_avp(decode, 'Final-Unit-Action',
               <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'Final-Unit-Action', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'Final-Unit-Action',
               <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'Final-Unit-Action', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'Final-Unit-Action',
               <<0, 0, 0, 2>>) ->
    2;
enumerated_avp(encode, 'Final-Unit-Action', 2) ->
    <<0, 0, 0, 2>>;
enumerated_avp(decode, 'Redirect-Address-Type',
               <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'Redirect-Address-Type', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'Redirect-Address-Type',
               <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'Redirect-Address-Type', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'Redirect-Address-Type',
               <<0, 0, 0, 2>>) ->
    2;
enumerated_avp(encode, 'Redirect-Address-Type', 2) ->
    <<0, 0, 0, 2>>;
enumerated_avp(decode, 'Redirect-Address-Type',
               <<0, 0, 0, 3>>) ->
    3;
enumerated_avp(encode, 'Redirect-Address-Type', 3) ->
    <<0, 0, 0, 3>>;
enumerated_avp(decode, 'Multiple-Services-Indicator',
               <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'Multiple-Services-Indicator',
               0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'Multiple-Services-Indicator',
               <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'Multiple-Services-Indicator',
               1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'Requested-Action',
               <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'Requested-Action', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'Requested-Action',
               <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'Requested-Action', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'Requested-Action',
               <<0, 0, 0, 2>>) ->
    2;
enumerated_avp(encode, 'Requested-Action', 2) ->
    <<0, 0, 0, 2>>;
enumerated_avp(decode, 'Requested-Action',
               <<0, 0, 0, 3>>) ->
    3;
enumerated_avp(encode, 'Requested-Action', 3) ->
    <<0, 0, 0, 3>>;
enumerated_avp(decode, 'Subscription-Id-Type',
               <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'Subscription-Id-Type', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'Subscription-Id-Type',
               <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'Subscription-Id-Type', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'Subscription-Id-Type',
               <<0, 0, 0, 2>>) ->
    2;
enumerated_avp(encode, 'Subscription-Id-Type', 2) ->
    <<0, 0, 0, 2>>;
enumerated_avp(decode, 'Subscription-Id-Type',
               <<0, 0, 0, 3>>) ->
    3;
enumerated_avp(encode, 'Subscription-Id-Type', 3) ->
    <<0, 0, 0, 3>>;
enumerated_avp(decode, 'Subscription-Id-Type',
               <<0, 0, 0, 4>>) ->
    4;
enumerated_avp(encode, 'Subscription-Id-Type', 4) ->
    <<0, 0, 0, 4>>;
enumerated_avp(decode, 'User-Equipment-Info-Type',
               <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'User-Equipment-Info-Type', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'User-Equipment-Info-Type',
               <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'User-Equipment-Info-Type', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'User-Equipment-Info-Type',
               <<0, 0, 0, 2>>) ->
    2;
enumerated_avp(encode, 'User-Equipment-Info-Type', 2) ->
    <<0, 0, 0, 2>>;
enumerated_avp(decode, 'User-Equipment-Info-Type',
               <<0, 0, 0, 3>>) ->
    3;
enumerated_avp(encode, 'User-Equipment-Info-Type', 3) ->
    <<0, 0, 0, 3>>;
enumerated_avp(_, _, _) -> erlang:error(badarg).

empty_value('Cost-Information', Opts) ->
    empty_group('Cost-Information', Opts);
empty_value('Unit-Value', Opts) ->
    empty_group('Unit-Value', Opts);
empty_value('Multiple-Services-Credit-Control', Opts) ->
    empty_group('Multiple-Services-Credit-Control', Opts);
empty_value('Granted-Service-Unit', Opts) ->
    empty_group('Granted-Service-Unit', Opts);
empty_value('Requested-Service-Unit', Opts) ->
    empty_group('Requested-Service-Unit', Opts);
empty_value('Used-Service-Unit', Opts) ->
    empty_group('Used-Service-Unit', Opts);
empty_value('CC-Money', Opts) ->
    empty_group('CC-Money', Opts);
empty_value('G-S-U-Pool-Reference', Opts) ->
    empty_group('G-S-U-Pool-Reference', Opts);
empty_value('Final-Unit-Indication', Opts) ->
    empty_group('Final-Unit-Indication', Opts);
empty_value('Redirect-Server', Opts) ->
    empty_group('Redirect-Server', Opts);
empty_value('Service-Parameter-Info', Opts) ->
    empty_group('Service-Parameter-Info', Opts);
empty_value('Subscription-Id', Opts) ->
    empty_group('Subscription-Id', Opts);
empty_value('User-Equipment-Info', Opts) ->
    empty_group('User-Equipment-Info', Opts);
empty_value('Proxy-Info', Opts) ->
    empty_group('Proxy-Info', Opts);
empty_value('Failed-AVP', Opts) ->
    empty_group('Failed-AVP', Opts);
empty_value('Experimental-Result', Opts) ->
    empty_group('Experimental-Result', Opts);
empty_value('Vendor-Specific-Application-Id', Opts) ->
    empty_group('Vendor-Specific-Application-Id', Opts);
empty_value('CC-Request-Type', _) -> <<0, 0, 0, 0>>;
empty_value('CC-Session-Failover', _) -> <<0, 0, 0, 0>>;
empty_value('Check-Balance-Result', _) ->
    <<0, 0, 0, 0>>;
empty_value('Credit-Control', _) -> <<0, 0, 0, 0>>;
empty_value('Credit-Control-Failure-Handling', _) ->
    <<0, 0, 0, 0>>;
empty_value('Direct-Debiting-Failure-Handling', _) ->
    <<0, 0, 0, 0>>;
empty_value('Tariff-Change-Usage', _) -> <<0, 0, 0, 0>>;
empty_value('CC-Unit-Type', _) -> <<0, 0, 0, 0>>;
empty_value('Final-Unit-Action', _) -> <<0, 0, 0, 0>>;
empty_value('Redirect-Address-Type', _) ->
    <<0, 0, 0, 0>>;
empty_value('Multiple-Services-Indicator', _) ->
    <<0, 0, 0, 0>>;
empty_value('Requested-Action', _) -> <<0, 0, 0, 0>>;
empty_value('Subscription-Id-Type', _) ->
    <<0, 0, 0, 0>>;
empty_value('User-Equipment-Info-Type', _) ->
    <<0, 0, 0, 0>>;
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
      [{"CC-Correlation-Id", 411, "OctetString", []},
       {"CC-Input-Octets", 412, "Unsigned64", "M"},
       {"CC-Money", 413, "Grouped", "M"},
       {"CC-Output-Octets", 414, "Unsigned64", "M"},
       {"CC-Request-Number", 415, "Unsigned32", "M"},
       {"CC-Request-Type", 416, "Enumerated", "M"},
       {"CC-Service-Specific-Units", 417, "Unsigned64", "M"},
       {"CC-Session-Failover", 418, "Enumerated", "M"},
       {"CC-Sub-Session-Id", 419, "Unsigned64", "M"},
       {"CC-Time", 420, "Unsigned32", "M"},
       {"CC-Total-Octets", 421, "Unsigned64", "M"},
       {"CC-Unit-Type", 454, "Enumerated", "M"},
       {"Check-Balance-Result", 422, "Enumerated", "M"},
       {"Cost-Information", 423, "Grouped", "M"},
       {"Cost-Unit", 424, "UTF8String", "M"},
       {"Credit-Control", 426, "Enumerated", "M"},
       {"Credit-Control-Failure-Handling",
        427,
        "Enumerated",
        "M"},
       {"Currency-Code", 425, "Unsigned32", "M"},
       {"Direct-Debiting-Failure-Handling",
        428,
        "Enumerated",
        "M"},
       {"Exponent", 429, "Integer32", "M"},
       {"Final-Unit-Action", 449, "Enumerated", "M"},
       {"Final-Unit-Indication", 430, "Grouped", "M"},
       {"G-S-U-Pool-Identifier", 453, "Unsigned32", "M"},
       {"G-S-U-Pool-Reference", 457, "Grouped", "M"},
       {"Granted-Service-Unit", 431, "Grouped", "M"},
       {"Multiple-Services-Credit-Control",
        456,
        "Grouped",
        "M"},
       {"Multiple-Services-Indicator", 455, "Enumerated", "M"},
       {"Rating-Group", 432, "Unsigned32", "M"},
       {"Redirect-Address-Type", 433, "Enumerated", "M"},
       {"Redirect-Server", 434, "Grouped", "M"},
       {"Redirect-Server-Address", 435, "UTF8String", "M"},
       {"Requested-Action", 436, "Enumerated", "M"},
       {"Requested-Service-Unit", 437, "Grouped", "M"},
       {"Restriction-Filter-Rule", 438, "IPFilterRule", "M"},
       {"Service-Context-Id", 461, "UTF8String", "M"},
       {"Service-Identifier", 439, "Unsigned32", "M"},
       {"Service-Parameter-Info", 440, "Grouped", []},
       {"Service-Parameter-Type", 441, "Unsigned32", []},
       {"Service-Parameter-Value", 442, "OctetString", []},
       {"Subscription-Id", 443, "Grouped", "M"},
       {"Subscription-Id-Data", 444, "UTF8String", "M"},
       {"Subscription-Id-Type", 450, "Enumerated", "M"},
       {"Tariff-Change-Usage", 452, "Enumerated", "M"},
       {"Tariff-Time-Change", 451, "Time", "M"},
       {"Unit-Value", 445, "Grouped", "M"},
       {"Used-Service-Unit", 446, "Grouped", "M"},
       {"User-Equipment-Info", 458, "Grouped", []},
       {"User-Equipment-Info-Type", 459, "Enumerated", []},
       {"User-Equipment-Info-Value", 460, "OctetString", []},
       {"Validity-Time", 448, "Unsigned32", "M"},
       {"Value-Digits", 447, "Integer64", "M"}]},
     {avp_vendor_id, []},
     {codecs, []},
     {command_codes, [{272, "CCR", "CCA"}]},
     {custom_types, []},
     {define,
      [{"Result-Code",
        [{"END_USER_SERVICE_DENIED", 4010},
         {"CREDIT_CONTROL_NOT_APPLICABLE", 4011},
         {"CREDIT_LIMIT_REACHED", 4012},
         {"USER_UNKNOWN", 5030},
         {"RATING_FAILED", 5031}]}]},
     {enum,
      [{"CC-Request-Type",
        [{"INITIAL_REQUEST", 1},
         {"UPDATE_REQUEST", 2},
         {"TERMINATION_REQUEST", 3},
         {"EVENT_REQUEST", 4}]},
       {"CC-Session-Failover",
        [{"NOT_SUPPORTED", 0}, {"SUPPORTED", 1}]},
       {"Check-Balance-Result",
        [{"ENOUGH_CREDIT", 0}, {"NO_CREDIT", 1}]},
       {"Credit-Control",
        [{"AUTHORIZATION", 0}, {"RE_AUTHORIZATION", 1}]},
       {"Credit-Control-Failure-Handling",
        [{"TERMINATE", 0},
         {"CONTINUE", 1},
         {"RETRY_AND_TERMINATE", 2}]},
       {"Direct-Debiting-Failure-Handling",
        [{"TERMINATE_OR_BUFFER", 0}, {"CONTINUE", 1}]},
       {"Tariff-Change-Usage",
        [{"UNIT_BEFORE_TARIFF_CHANGE", 0},
         {"UNIT_AFTER_TARIFF_CHANGE", 1},
         {"UNIT_INDETERMINATE", 2}]},
       {"CC-Unit-Type",
        [{"TIME", 0},
         {"MONEY", 1},
         {"TOTAL-OCTETS", 2},
         {"INPUT-OCTETS", 3},
         {"OUTPUT-OCTETS", 4},
         {"SERVICE-SPECIFIC-UNITS", 5}]},
       {"Final-Unit-Action",
        [{"TERMINATE", 0},
         {"REDIRECT", 1},
         {"RESTRICT_ACCESS", 2}]},
       {"Redirect-Address-Type",
        [{"IPV4", 0}, {"IPV6", 1}, {"URL", 2}, {"SIP_URI", 3}]},
       {"Multiple-Services-Indicator",
        [{"NOT_SUPPORTED", 0}, {"SUPPORTED", 1}]},
       {"Requested-Action",
        [{"DIRECT_DEBITING", 0},
         {"REFUND_ACCOUNT", 1},
         {"CHECK_BALANCE", 2},
         {"PRICE_ENQUIRY", 3}]},
       {"Subscription-Id-Type",
        [{"END_USER_E164", 0},
         {"END_USER_IMSI", 1},
         {"END_USER_SIP_URI", 2},
         {"END_USER_NAI", 3},
         {"END_USER_PRIVATE", 4}]},
       {"User-Equipment-Info-Type",
        [{"IMEISV", 0},
         {"MAC", 1},
         {"EUI64", 2},
         {"MODIFIED_EUI64", 3}]}]},
     {grouped,
      [{"Cost-Information",
        423,
        [],
        [{"Unit-Value"}, {"Currency-Code"}, ["Cost-Unit"]]},
       {"Unit-Value",
        445,
        [],
        [{"Value-Digits"}, ["Exponent"]]},
       {"Multiple-Services-Credit-Control",
        456,
        [],
        [["Granted-Service-Unit"],
         ["Requested-Service-Unit"],
         {'*', ["Used-Service-Unit"]},
         ["Tariff-Change-Usage"],
         {'*', ["Service-Identifier"]},
         ["Rating-Group"],
         {'*', ["G-S-U-Pool-Reference"]},
         ["Validity-Time"],
         ["Result-Code"],
         ["Final-Unit-Indication"],
         {'*', ["AVP"]}]},
       {"Granted-Service-Unit",
        431,
        [],
        [["Tariff-Time-Change"],
         ["CC-Time"],
         ["CC-Money"],
         ["CC-Total-Octets"],
         ["CC-Input-Octets"],
         ["CC-Output-Octets"],
         ["CC-Service-Specific-Units"],
         {'*', ["AVP"]}]},
       {"Requested-Service-Unit",
        437,
        [],
        [["CC-Time"],
         ["CC-Money"],
         ["CC-Total-Octets"],
         ["CC-Input-Octets"],
         ["CC-Output-Octets"],
         ["CC-Service-Specific-Units"],
         {'*', ["AVP"]}]},
       {"Used-Service-Unit",
        446,
        [],
        [["Tariff-Change-Usage"],
         ["CC-Time"],
         ["CC-Money"],
         ["CC-Total-Octets"],
         ["CC-Input-Octets"],
         ["CC-Output-Octets"],
         ["CC-Service-Specific-Units"],
         {'*', ["AVP"]}]},
       {"CC-Money",
        413,
        [],
        [{"Unit-Value"}, ["Currency-Code"]]},
       {"G-S-U-Pool-Reference",
        457,
        [],
        [{"G-S-U-Pool-Identifier"},
         {"CC-Unit-Type"},
         {"Unit-Value"}]},
       {"Final-Unit-Indication",
        430,
        [],
        [{"Final-Unit-Action"},
         {'*', ["Restriction-Filter-Rule"]},
         {'*', ["Filter-Id"]},
         ["Redirect-Server"]]},
       {"Redirect-Server",
        434,
        [],
        [{"Redirect-Address-Type"},
         {"Redirect-Server-Address"}]},
       {"Service-Parameter-Info",
        440,
        [],
        [{"Service-Parameter-Type"},
         {"Service-Parameter-Value"}]},
       {"Subscription-Id",
        443,
        [],
        [{"Subscription-Id-Type"}, {"Subscription-Id-Data"}]},
       {"User-Equipment-Info",
        458,
        [],
        [{"User-Equipment-Info-Type"},
         {"User-Equipment-Info-Value"}]}]},
     {id, 4},
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
        [{"Filter-Id", 11, "UTF8String", "M"}]}]},
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
           ["Acct-Application-Id"]]}]}]},
     {inherits,
      [{"diameter_rfc4005_nasreq", ["Filter-Id"]},
       {"diameter_gen_base_rfc6733", []}]},
     {messages,
      [{"CCR",
        272,
        ['REQ', 'PXY'],
        [],
        [{{"Session-Id"}},
         {"Origin-Host"},
         {"Origin-Realm"},
         {"Destination-Realm"},
         {"Auth-Application-Id"},
         {"Service-Context-Id"},
         {"CC-Request-Type"},
         {"CC-Request-Number"},
         ["Destination-Host"],
         ["User-Name"],
         ["CC-Sub-Session-Id"],
         ["Acct-Multi-Session-Id"],
         ["Origin-State-Id"],
         ["Event-Timestamp"],
         {'*', ["Subscription-Id"]},
         ["Service-Identifier"],
         ["Termination-Cause"],
         ["Requested-Service-Unit"],
         ["Requested-Action"],
         {'*', ["Used-Service-Unit"]},
         ["Multiple-Services-Indicator"],
         {'*', ["Multiple-Services-Credit-Control"]},
         {'*', ["Service-Parameter-Info"]},
         ["CC-Correlation-Id"],
         ["User-Equipment-Info"],
         {'*', ["Proxy-Info"]},
         {'*', ["Route-Record"]},
         {'*', ["AVP"]}]},
       {"CCA",
        272,
        ['PXY'],
        [],
        [{{"Session-Id"}},
         {"Result-Code"},
         {"Origin-Host"},
         {"Origin-Realm"},
         {"Auth-Application-Id"},
         {"CC-Request-Type"},
         {"CC-Request-Number"},
         ["User-Name"],
         ["CC-Session-Failover"],
         ["CC-Sub-Session-Id"],
         ["Acct-Multi-Session-Id"],
         ["Origin-State-Id"],
         ["Event-Timestamp"],
         ["Granted-Service-Unit"],
         {'*', ["Multiple-Services-Credit-Control"]},
         ["Cost-Information"],
         ["Final-Unit-Indication"],
         ["Check-Balance-Result"],
         ["Credit-Control-Failure-Handling"],
         ["Direct-Debiting-Failure-Handling"],
         ["Validity-Time"],
         {'*', ["Redirect-Host"]},
         ["Redirect-Host-Usage"],
         ["Redirect-Max-Cache-Time"],
         {'*', ["Proxy-Info"]},
         {'*', ["Route-Record"]},
         {'*', ["Failed-AVP"]},
         {'*', ["AVP"]}]}]}].


