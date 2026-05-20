%% -------------------------------------------------------------------
%% This is a generated file.
%% -------------------------------------------------------------------

-module(diameter_3gpp_ts29_173).

-moduledoc(false).

-compile({parse_transform, diameter_exprecs}).

-compile(nowarn_unused_function).

-dialyzer(no_return).

-export_records(['RIR',
                 'RIA',
                 'Serving-Node',
                 'Additional-Serving-Node',
                 'Proxy-Info',
                 'Failed-AVP',
                 'Experimental-Result',
                 'Vendor-Specific-Application-Id',
                 'Charging-Information',
                 'Supported-Features',
                 'Supported-Applications',
                 'SIP-Auth-Data-Item',
                 'Deregistration-Reason',
                 'SIP-Digest-Authenticate',
                 'Emergency-Info']).

-record('RIR',
        {'Session-Id',
         'Auth-Session-State',
         'Origin-Host',
         'Origin-Realm',
         'Destination-Realm',
         'Vendor-Specific-Application-Id' = [],
         'Destination-Host' = [],
         'User-Name' = [],
         'MSISDN' = [],
         'GMLC-Number' = [],
         'Supported-Features' = [],
         'Proxy-Info' = [],
         'Route-Record' = [],
         'AVP' = []}).

-record('RIA',
        {'Session-Id',
         'Auth-Session-State',
         'Origin-Host',
         'Origin-Realm',
         'Vendor-Specific-Application-Id' = [],
         'Result-Code' = [],
         'Experimental-Result' = [],
         'Supported-Features' = [],
         'User-Name' = [],
         'MSISDN' = [],
         'LMSI' = [],
         'Serving-Node' = [],
         'Additional-Serving-Node' = [],
         'GMLC-Address' = [],
         'PPR-Address' = [],
         'RIA-Flags' = [],
         'AVP' = [],
         'Failed-AVP' = [],
         'Proxy-Info' = [],
         'Route-Record' = []}).

-record('Serving-Node',
        {'SGSN-Number' = [],
         'SGSN-Name' = [],
         'SGSN-Realm' = [],
         'MME-Name' = [],
         'MME-Realm' = [],
         'MSC-Number' = [],
         '3GPP-AAA-Server-Name' = [],
         'LCS-Capabilities-Sets' = [],
         'GMLC-Address' = [],
         'AVP' = []}).

-record('Additional-Serving-Node',
        {'SGSN-Number' = [],
         'MME-Name' = [],
         'SGSN-Name' = [],
         'SGSN-Realm' = [],
         'MME-Realm' = [],
         'MSC-Number' = [],
         '3GPP-AAA-Server-Name' = [],
         'LCS-Capabilities-Sets' = [],
         'GMLC-Address' = [],
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

-record('Charging-Information',
        {'Primary-Event-Charging-Function-Name' = [],
         'Secondary-Event-Charging-Function-Name' = [],
         'Primary-Charging-Collection-Function-Name' = [],
         'Secondary-Charging-Collection-Function-Name' = [],
         'AVP' = []}).

-record('Supported-Features',
        {'Vendor-Id',
         'Feature-List-ID',
         'Feature-List',
         'AVP' = []}).

-record('Supported-Applications',
        {'Auth-Application-Id' = [],
         'Acct-Application-Id' = [],
         'Vendor-Specific-Application-Id' = [],
         'AVP' = []}).

-record('SIP-Auth-Data-Item',
        {'SIP-Item-Number' = [],
         'SIP-Authentication-Scheme' = [],
         'SIP-Authenticate' = [],
         'SIP-Authorization' = [],
         'SIP-Authentication-Context' = [],
         'Confidentiality-Key' = [],
         'Integrity-Key' = [],
         'SIP-Digest-Authenticate' = [],
         'Framed-IP-Address' = [],
         'Framed-IPv6-Prefix' = [],
         'Framed-Interface-Id' = [],
         'Line-Identifier' = [],
         'AVP' = []}).

-record('Deregistration-Reason',
        {'Reason-Code', 'Reason-Info' = [], 'AVP' = []}).

-record('SIP-Digest-Authenticate',
        {'Digest-Realm',
         'Digest-QoP',
         'Digest-HA1',
         'Digest-Algorithm' = [],
         'AVP' = []}).

-record('Emergency-Info',
        {'MIP6-Agent-Info' = [], 'AVP' = []}).

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

name() -> diameter_3gpp_ts29_173.

id() -> 16777291.

vendor_id() -> 10415.

vendor_name() -> '3GPP'.

msg_name(8388622, true) -> 'RIR';
msg_name(8388622, false) -> 'RIA';
msg_name(_, _) -> ''.

msg_header('RIR') -> {8388622, 192, 16777291};
msg_header('RIA') -> {8388622, 64, 16777291};
msg_header(_) -> erlang:error(badarg).

rec2msg('RIR') -> 'RIR';
rec2msg('RIA') -> 'RIA';
rec2msg(_) -> erlang:error(badarg).

msg2rec('RIR') -> 'RIR';
msg2rec('RIA') -> 'RIA';
msg2rec(_) -> erlang:error(badarg).

name2rec('Serving-Node') -> 'Serving-Node';
name2rec('Additional-Serving-Node') ->
    'Additional-Serving-Node';
name2rec('Proxy-Info') -> 'Proxy-Info';
name2rec('Failed-AVP') -> 'Failed-AVP';
name2rec('Experimental-Result') ->
    'Experimental-Result';
name2rec('Vendor-Specific-Application-Id') ->
    'Vendor-Specific-Application-Id';
name2rec('Charging-Information') ->
    'Charging-Information';
name2rec('Supported-Features') -> 'Supported-Features';
name2rec('Supported-Applications') ->
    'Supported-Applications';
name2rec('SIP-Auth-Data-Item') -> 'SIP-Auth-Data-Item';
name2rec('Deregistration-Reason') ->
    'Deregistration-Reason';
name2rec('SIP-Digest-Authenticate') ->
    'SIP-Digest-Authenticate';
name2rec('Emergency-Info') -> 'Emergency-Info';
name2rec(T) -> msg2rec(T).

avp_name(2406, 10415) ->
    {'Additional-Serving-Node', 'Grouped'};
avp_name(2404, 10415) ->
    {'LCS-Capabilities-Sets', 'Unsigned32'};
avp_name(2400, 10415) -> {'LMSI', 'OctetString'};
avp_name(2402, 10415) ->
    {'MME-Name', 'DiameterIdentity'};
avp_name(2408, 10415) ->
    {'MME-Realm', 'DiameterIdentity'};
avp_name(2403, 10415) -> {'MSC-Number', 'OctetString'};
avp_name(2407, 10415) -> {'PPR-Address', 'Address'};
avp_name(2411, 10415) -> {'RIA-Flags', 'Unsigned32'};
avp_name(2409, 10415) ->
    {'SGSN-Name', 'DiameterIdentity'};
avp_name(2410, 10415) ->
    {'SGSN-Realm', 'DiameterIdentity'};
avp_name(2401, 10415) -> {'Serving-Node', 'Grouped'};
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
avp_name(643, 10415) ->
    {'Call-ID-SIP-Header', 'OctetString'};
avp_name(618, 10415) ->
    {'Charging-Information', 'Grouped'};
avp_name(625, 10415) ->
    {'Confidentiality-Key', 'OctetString'};
avp_name(641, 10415) -> {'Contact', 'OctetString'};
avp_name(615, 10415) ->
    {'Deregistration-Reason', 'Grouped'};
avp_name(111, undefined) ->
    {'Digest-Algorithm', 'UTF8String'};
avp_name(121, undefined) ->
    {'Digest-HA1', 'UTF8String'};
avp_name(110, undefined) ->
    {'Digest-QoP', 'UTF8String'};
avp_name(104, undefined) ->
    {'Digest-Realm', 'UTF8String'};
avp_name(630, 10415) -> {'Feature-List', 'Unsigned32'};
avp_name(629, 10415) ->
    {'Feature-List-ID', 'Unsigned32'};
avp_name(644, 10415) ->
    {'From-SIP-Header', 'OctetString'};
avp_name(654, 10415) ->
    {'Initial-CSeq-Sequence-Number', 'Unsigned32'};
avp_name(626, 10415) ->
    {'Integrity-Key', 'OctetString'};
avp_name(653, 10415) -> {'LIA-Flags', 'Unsigned32'};
avp_name(638, 10415) ->
    {'Loose-Route-Indication', 'Enumerated'};
avp_name(604, 10415) ->
    {'Mandatory-Capability', 'Unsigned32'};
avp_name(648, 10415) ->
    {'Multiple-Registration-Indication', 'Enumerated'};
avp_name(605, 10415) ->
    {'Optional-Capability', 'Unsigned32'};
avp_name(633, 10415) ->
    {'Originating-Request', 'Enumerated'};
avp_name(640, 10415) -> {'Path', 'OctetString'};
avp_name(621, 10415) ->
    {'Primary-Charging-Collection-Function-Name',
     'DiameterURI'};
avp_name(619, 10415) ->
    {'Primary-Event-Charging-Function-Name', 'DiameterURI'};
avp_name(652, 10415) ->
    {'Priviledged-Sender-Indication', 'Enumerated'};
avp_name(601, 10415) ->
    {'Public-Identity', 'UTF8String'};
avp_name(616, 10415) -> {'Reason-Code', 'Enumerated'};
avp_name(617, 10415) -> {'Reason-Info', 'UTF8String'};
avp_name(646, 10415) -> {'Record-Route', 'OctetString'};
avp_name(655, 10415) -> {'SAR-Flags', 'Unsigned32'};
avp_name(612, 10415) ->
    {'SIP-Auth-Data-Item', 'Grouped'};
avp_name(609, 10415) ->
    {'SIP-Authenticate', 'OctetString'};
avp_name(611, 10415) ->
    {'SIP-Authentication-Context', 'OctetString'};
avp_name(608, 10415) ->
    {'SIP-Authentication-Scheme', 'UTF8String'};
avp_name(610, 10415) ->
    {'SIP-Authorization', 'OctetString'};
avp_name(635, 10415) ->
    {'SIP-Digest-Authenticate', 'Grouped'};
avp_name(613, 10415) ->
    {'SIP-Item-Number', 'Unsigned32'};
avp_name(607, 10415) ->
    {'SIP-Number-Auth-Items', 'Unsigned32'};
avp_name(622, 10415) ->
    {'Secondary-Charging-Collection-Function-Name',
     'DiameterURI'};
avp_name(620, 10415) ->
    {'Secondary-Event-Charging-Function-Name',
     'DiameterURI'};
avp_name(614, 10415) ->
    {'Server-Assignment-Type', 'Enumerated'};
avp_name(602, 10415) -> {'Server-Name', 'UTF8String'};
avp_name(650, 10415) ->
    {'Session-Priority', 'Enumerated'};
avp_name(631, 10415) ->
    {'Supported-Applications', 'Grouped'};
avp_name(628, 10415) ->
    {'Supported-Features', 'Grouped'};
avp_name(645, 10415) ->
    {'To-SIP-Header', 'OctetString'};
avp_name(637, 10415) -> {'UAR-Flags', 'Unsigned32'};
avp_name(623, 10415) ->
    {'User-Authorization-Type', 'Enumerated'};
avp_name(606, 10415) -> {'User-Data', 'OctetString'};
avp_name(624, 10415) ->
    {'User-Data-Already-Available', 'Enumerated'};
avp_name(600, 10415) ->
    {'Visited-Network-Identifier', 'OctetString'};
avp_name(634, 10415) ->
    {'Wildcarded-Public-Identity', 'UTF8String'};
avp_name(318, 10415) ->
    {'3GPP-AAA-Server-Name', 'DiameterIdentity'};
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
avp_name(1427, 10415) ->
    {'APN-OI-Replacement', 'UTF8String'};
avp_name(1687, 10415) -> {'Emergency-Info', 'Grouped'};
avp_name(2405, 10415) -> {'GMLC-Address', 'Address'};
avp_name(1474, 10415) -> {'GMLC-Number', 'OctetString'};
avp_name(1489, 10415) -> {'SGSN-Number', 'OctetString'};
avp_name(_, _) -> 'AVP'.

avp_arity('RIR') ->
    [{'Session-Id', 1},
     {'Auth-Session-State', 1},
     {'Origin-Host', 1},
     {'Origin-Realm', 1},
     {'Destination-Realm', 1},
     {'Vendor-Specific-Application-Id', {0, 1}},
     {'Destination-Host', {0, 1}},
     {'User-Name', {0, 1}},
     {'MSISDN', {0, 1}},
     {'GMLC-Number', {0, 1}},
     {'Supported-Features', {0, '*'}},
     {'Proxy-Info', {0, '*'}},
     {'Route-Record', {0, '*'}},
     {'AVP', {0, '*'}}];
avp_arity('RIA') ->
    [{'Session-Id', 1},
     {'Auth-Session-State', 1},
     {'Origin-Host', 1},
     {'Origin-Realm', 1},
     {'Vendor-Specific-Application-Id', {0, 1}},
     {'Result-Code', {0, 1}},
     {'Experimental-Result', {0, 1}},
     {'Supported-Features', {0, '*'}},
     {'User-Name', {0, 1}},
     {'MSISDN', {0, 1}},
     {'LMSI', {0, 1}},
     {'Serving-Node', {0, 1}},
     {'Additional-Serving-Node', {0, '*'}},
     {'GMLC-Address', {0, 1}},
     {'PPR-Address', {0, 1}},
     {'RIA-Flags', {0, 1}},
     {'AVP', {0, '*'}},
     {'Failed-AVP', {0, 1}},
     {'Proxy-Info', {0, '*'}},
     {'Route-Record', {0, '*'}}];
avp_arity('Serving-Node') ->
    [{'SGSN-Number', {0, 1}},
     {'SGSN-Name', {0, 1}},
     {'SGSN-Realm', {0, 1}},
     {'MME-Name', {0, 1}},
     {'MME-Realm', {0, 1}},
     {'MSC-Number', {0, 1}},
     {'3GPP-AAA-Server-Name', {0, 1}},
     {'LCS-Capabilities-Sets', {0, 1}},
     {'GMLC-Address', {0, 1}},
     {'AVP', {0, '*'}}];
avp_arity('Additional-Serving-Node') ->
    [{'SGSN-Number', {0, 1}},
     {'MME-Name', {0, 1}},
     {'SGSN-Name', {0, 1}},
     {'SGSN-Realm', {0, 1}},
     {'MME-Realm', {0, 1}},
     {'MSC-Number', {0, 1}},
     {'3GPP-AAA-Server-Name', {0, 1}},
     {'LCS-Capabilities-Sets', {0, 1}},
     {'GMLC-Address', {0, 1}},
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
avp_arity('Charging-Information') ->
    [{'Primary-Event-Charging-Function-Name', {0, 1}},
     {'Secondary-Event-Charging-Function-Name', {0, 1}},
     {'Primary-Charging-Collection-Function-Name', {0, 1}},
     {'Secondary-Charging-Collection-Function-Name', {0, 1}},
     {'AVP', {0, '*'}}];
avp_arity('Supported-Features') ->
    [{'Vendor-Id', 1},
     {'Feature-List-ID', 1},
     {'Feature-List', 1},
     {'AVP', {0, '*'}}];
avp_arity('Supported-Applications') ->
    [{'Auth-Application-Id', {0, '*'}},
     {'Acct-Application-Id', {0, '*'}},
     {'Vendor-Specific-Application-Id', {0, '*'}},
     {'AVP', {0, '*'}}];
avp_arity('SIP-Auth-Data-Item') ->
    [{'SIP-Item-Number', {0, 1}},
     {'SIP-Authentication-Scheme', {0, 1}},
     {'SIP-Authenticate', {0, 1}},
     {'SIP-Authorization', {0, 1}},
     {'SIP-Authentication-Context', {0, 1}},
     {'Confidentiality-Key', {0, 1}},
     {'Integrity-Key', {0, 1}},
     {'SIP-Digest-Authenticate', {0, 1}},
     {'Framed-IP-Address', {0, 1}},
     {'Framed-IPv6-Prefix', {0, 1}},
     {'Framed-Interface-Id', {0, 1}},
     {'Line-Identifier', {0, '*'}},
     {'AVP', {0, '*'}}];
avp_arity('Deregistration-Reason') ->
    [{'Reason-Code', 1},
     {'Reason-Info', {0, 1}},
     {'AVP', {0, '*'}}];
avp_arity('SIP-Digest-Authenticate') ->
    [{'Digest-Realm', 1},
     {'Digest-QoP', 1},
     {'Digest-HA1', 1},
     {'Digest-Algorithm', {0, 1}},
     {'AVP', {0, '*'}}];
avp_arity('Emergency-Info') ->
    [{'MIP6-Agent-Info', {0, 1}}, {'AVP', {0, '*'}}];
avp_arity(_) -> erlang:error(badarg).

avp_arity('RIR', 'Session-Id') -> 1;
avp_arity('RIR', 'Auth-Session-State') -> 1;
avp_arity('RIR', 'Origin-Host') -> 1;
avp_arity('RIR', 'Origin-Realm') -> 1;
avp_arity('RIR', 'Destination-Realm') -> 1;
avp_arity('RIR', 'Vendor-Specific-Application-Id') ->
    {0, 1};
avp_arity('RIR', 'Destination-Host') -> {0, 1};
avp_arity('RIR', 'User-Name') -> {0, 1};
avp_arity('RIR', 'MSISDN') -> {0, 1};
avp_arity('RIR', 'GMLC-Number') -> {0, 1};
avp_arity('RIR', 'Supported-Features') -> {0, '*'};
avp_arity('RIR', 'Proxy-Info') -> {0, '*'};
avp_arity('RIR', 'Route-Record') -> {0, '*'};
avp_arity('RIR', 'AVP') -> {0, '*'};
avp_arity('RIA', 'Session-Id') -> 1;
avp_arity('RIA', 'Auth-Session-State') -> 1;
avp_arity('RIA', 'Origin-Host') -> 1;
avp_arity('RIA', 'Origin-Realm') -> 1;
avp_arity('RIA', 'Vendor-Specific-Application-Id') ->
    {0, 1};
avp_arity('RIA', 'Result-Code') -> {0, 1};
avp_arity('RIA', 'Experimental-Result') -> {0, 1};
avp_arity('RIA', 'Supported-Features') -> {0, '*'};
avp_arity('RIA', 'User-Name') -> {0, 1};
avp_arity('RIA', 'MSISDN') -> {0, 1};
avp_arity('RIA', 'LMSI') -> {0, 1};
avp_arity('RIA', 'Serving-Node') -> {0, 1};
avp_arity('RIA', 'Additional-Serving-Node') -> {0, '*'};
avp_arity('RIA', 'GMLC-Address') -> {0, 1};
avp_arity('RIA', 'PPR-Address') -> {0, 1};
avp_arity('RIA', 'RIA-Flags') -> {0, 1};
avp_arity('RIA', 'AVP') -> {0, '*'};
avp_arity('RIA', 'Failed-AVP') -> {0, 1};
avp_arity('RIA', 'Proxy-Info') -> {0, '*'};
avp_arity('RIA', 'Route-Record') -> {0, '*'};
avp_arity('Serving-Node', 'SGSN-Number') -> {0, 1};
avp_arity('Serving-Node', 'SGSN-Name') -> {0, 1};
avp_arity('Serving-Node', 'SGSN-Realm') -> {0, 1};
avp_arity('Serving-Node', 'MME-Name') -> {0, 1};
avp_arity('Serving-Node', 'MME-Realm') -> {0, 1};
avp_arity('Serving-Node', 'MSC-Number') -> {0, 1};
avp_arity('Serving-Node', '3GPP-AAA-Server-Name') ->
    {0, 1};
avp_arity('Serving-Node', 'LCS-Capabilities-Sets') ->
    {0, 1};
avp_arity('Serving-Node', 'GMLC-Address') -> {0, 1};
avp_arity('Serving-Node', 'AVP') -> {0, '*'};
avp_arity('Additional-Serving-Node', 'SGSN-Number') ->
    {0, 1};
avp_arity('Additional-Serving-Node', 'MME-Name') ->
    {0, 1};
avp_arity('Additional-Serving-Node', 'SGSN-Name') ->
    {0, 1};
avp_arity('Additional-Serving-Node', 'SGSN-Realm') ->
    {0, 1};
avp_arity('Additional-Serving-Node', 'MME-Realm') ->
    {0, 1};
avp_arity('Additional-Serving-Node', 'MSC-Number') ->
    {0, 1};
avp_arity('Additional-Serving-Node',
          '3GPP-AAA-Server-Name') ->
    {0, 1};
avp_arity('Additional-Serving-Node',
          'LCS-Capabilities-Sets') ->
    {0, 1};
avp_arity('Additional-Serving-Node', 'GMLC-Address') ->
    {0, 1};
avp_arity('Additional-Serving-Node', 'AVP') -> {0, '*'};
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
avp_arity('Charging-Information',
          'Primary-Event-Charging-Function-Name') ->
    {0, 1};
avp_arity('Charging-Information',
          'Secondary-Event-Charging-Function-Name') ->
    {0, 1};
avp_arity('Charging-Information',
          'Primary-Charging-Collection-Function-Name') ->
    {0, 1};
avp_arity('Charging-Information',
          'Secondary-Charging-Collection-Function-Name') ->
    {0, 1};
avp_arity('Charging-Information', 'AVP') -> {0, '*'};
avp_arity('Supported-Features', 'Vendor-Id') -> 1;
avp_arity('Supported-Features', 'Feature-List-ID') -> 1;
avp_arity('Supported-Features', 'Feature-List') -> 1;
avp_arity('Supported-Features', 'AVP') -> {0, '*'};
avp_arity('Supported-Applications',
          'Auth-Application-Id') ->
    {0, '*'};
avp_arity('Supported-Applications',
          'Acct-Application-Id') ->
    {0, '*'};
avp_arity('Supported-Applications',
          'Vendor-Specific-Application-Id') ->
    {0, '*'};
avp_arity('Supported-Applications', 'AVP') -> {0, '*'};
avp_arity('SIP-Auth-Data-Item', 'SIP-Item-Number') ->
    {0, 1};
avp_arity('SIP-Auth-Data-Item',
          'SIP-Authentication-Scheme') ->
    {0, 1};
avp_arity('SIP-Auth-Data-Item', 'SIP-Authenticate') ->
    {0, 1};
avp_arity('SIP-Auth-Data-Item', 'SIP-Authorization') ->
    {0, 1};
avp_arity('SIP-Auth-Data-Item',
          'SIP-Authentication-Context') ->
    {0, 1};
avp_arity('SIP-Auth-Data-Item',
          'Confidentiality-Key') ->
    {0, 1};
avp_arity('SIP-Auth-Data-Item', 'Integrity-Key') ->
    {0, 1};
avp_arity('SIP-Auth-Data-Item',
          'SIP-Digest-Authenticate') ->
    {0, 1};
avp_arity('SIP-Auth-Data-Item', 'Framed-IP-Address') ->
    {0, 1};
avp_arity('SIP-Auth-Data-Item', 'Framed-IPv6-Prefix') ->
    {0, 1};
avp_arity('SIP-Auth-Data-Item',
          'Framed-Interface-Id') ->
    {0, 1};
avp_arity('SIP-Auth-Data-Item', 'Line-Identifier') ->
    {0, '*'};
avp_arity('SIP-Auth-Data-Item', 'AVP') -> {0, '*'};
avp_arity('Deregistration-Reason', 'Reason-Code') -> 1;
avp_arity('Deregistration-Reason', 'Reason-Info') ->
    {0, 1};
avp_arity('Deregistration-Reason', 'AVP') -> {0, '*'};
avp_arity('SIP-Digest-Authenticate', 'Digest-Realm') ->
    1;
avp_arity('SIP-Digest-Authenticate', 'Digest-QoP') -> 1;
avp_arity('SIP-Digest-Authenticate', 'Digest-HA1') -> 1;
avp_arity('SIP-Digest-Authenticate',
          'Digest-Algorithm') ->
    {0, 1};
avp_arity('SIP-Digest-Authenticate', 'AVP') -> {0, '*'};
avp_arity('Emergency-Info', 'MIP6-Agent-Info') ->
    {0, 1};
avp_arity('Emergency-Info', 'AVP') -> {0, '*'};
avp_arity(_, _) -> 0.

avp_header('Additional-Serving-Node') ->
    {2406, 192, 10415};
avp_header('LCS-Capabilities-Sets') ->
    {2404, 192, 10415};
avp_header('LMSI') -> {2400, 192, 10415};
avp_header('MME-Name') -> {2402, 192, 10415};
avp_header('MME-Realm') -> {2408, 128, 10415};
avp_header('MSC-Number') -> {2403, 192, 10415};
avp_header('PPR-Address') -> {2407, 192, 10415};
avp_header('RIA-Flags') -> {2411, 128, 10415};
avp_header('SGSN-Name') -> {2409, 128, 10415};
avp_header('SGSN-Realm') -> {2410, 128, 10415};
avp_header('Serving-Node') -> {2401, 192, 10415};
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
avp_header('Call-ID-SIP-Header') ->
    diameter_3gpp_ts29_229:avp_header('Call-ID-SIP-Header');
avp_header('Charging-Information') ->
    diameter_3gpp_ts29_229:avp_header('Charging-Information');
avp_header('Confidentiality-Key') ->
    diameter_3gpp_ts29_229:avp_header('Confidentiality-Key');
avp_header('Contact') ->
    diameter_3gpp_ts29_229:avp_header('Contact');
avp_header('Deregistration-Reason') ->
    diameter_3gpp_ts29_229:avp_header('Deregistration-Reason');
avp_header('Digest-Algorithm') ->
    diameter_3gpp_ts29_229:avp_header('Digest-Algorithm');
avp_header('Digest-HA1') ->
    diameter_3gpp_ts29_229:avp_header('Digest-HA1');
avp_header('Digest-QoP') ->
    diameter_3gpp_ts29_229:avp_header('Digest-QoP');
avp_header('Digest-Realm') ->
    diameter_3gpp_ts29_229:avp_header('Digest-Realm');
avp_header('Feature-List') ->
    diameter_3gpp_ts29_229:avp_header('Feature-List');
avp_header('Feature-List-ID') ->
    diameter_3gpp_ts29_229:avp_header('Feature-List-ID');
avp_header('From-SIP-Header') ->
    diameter_3gpp_ts29_229:avp_header('From-SIP-Header');
avp_header('Initial-CSeq-Sequence-Number') ->
    diameter_3gpp_ts29_229:avp_header('Initial-CSeq-Sequence-Number');
avp_header('Integrity-Key') ->
    diameter_3gpp_ts29_229:avp_header('Integrity-Key');
avp_header('LIA-Flags') ->
    diameter_3gpp_ts29_229:avp_header('LIA-Flags');
avp_header('Loose-Route-Indication') ->
    diameter_3gpp_ts29_229:avp_header('Loose-Route-Indication');
avp_header('Mandatory-Capability') ->
    diameter_3gpp_ts29_229:avp_header('Mandatory-Capability');
avp_header('Multiple-Registration-Indication') ->
    diameter_3gpp_ts29_229:avp_header('Multiple-Registration-Indication');
avp_header('Optional-Capability') ->
    diameter_3gpp_ts29_229:avp_header('Optional-Capability');
avp_header('Originating-Request') ->
    diameter_3gpp_ts29_229:avp_header('Originating-Request');
avp_header('Path') ->
    diameter_3gpp_ts29_229:avp_header('Path');
avp_header('Primary-Charging-Collection-Function-Name') ->
    diameter_3gpp_ts29_229:avp_header('Primary-Charging-Collection-Function-Name');
avp_header('Primary-Event-Charging-Function-Name') ->
    diameter_3gpp_ts29_229:avp_header('Primary-Event-Charging-Function-Name');
avp_header('Priviledged-Sender-Indication') ->
    diameter_3gpp_ts29_229:avp_header('Priviledged-Sender-Indication');
avp_header('Public-Identity') ->
    diameter_3gpp_ts29_229:avp_header('Public-Identity');
avp_header('Reason-Code') ->
    diameter_3gpp_ts29_229:avp_header('Reason-Code');
avp_header('Reason-Info') ->
    diameter_3gpp_ts29_229:avp_header('Reason-Info');
avp_header('Record-Route') ->
    diameter_3gpp_ts29_229:avp_header('Record-Route');
avp_header('SAR-Flags') ->
    diameter_3gpp_ts29_229:avp_header('SAR-Flags');
avp_header('SIP-Auth-Data-Item') ->
    diameter_3gpp_ts29_229:avp_header('SIP-Auth-Data-Item');
avp_header('SIP-Authenticate') ->
    diameter_3gpp_ts29_229:avp_header('SIP-Authenticate');
avp_header('SIP-Authentication-Context') ->
    diameter_3gpp_ts29_229:avp_header('SIP-Authentication-Context');
avp_header('SIP-Authentication-Scheme') ->
    diameter_3gpp_ts29_229:avp_header('SIP-Authentication-Scheme');
avp_header('SIP-Authorization') ->
    diameter_3gpp_ts29_229:avp_header('SIP-Authorization');
avp_header('SIP-Digest-Authenticate') ->
    diameter_3gpp_ts29_229:avp_header('SIP-Digest-Authenticate');
avp_header('SIP-Item-Number') ->
    diameter_3gpp_ts29_229:avp_header('SIP-Item-Number');
avp_header('SIP-Number-Auth-Items') ->
    diameter_3gpp_ts29_229:avp_header('SIP-Number-Auth-Items');
avp_header('Secondary-Charging-Collection-Function-Name') ->
    diameter_3gpp_ts29_229:avp_header('Secondary-Charging-Collection-Function-Name');
avp_header('Secondary-Event-Charging-Function-Name') ->
    diameter_3gpp_ts29_229:avp_header('Secondary-Event-Charging-Function-Name');
avp_header('Server-Assignment-Type') ->
    diameter_3gpp_ts29_229:avp_header('Server-Assignment-Type');
avp_header('Server-Name') ->
    diameter_3gpp_ts29_229:avp_header('Server-Name');
avp_header('Session-Priority') ->
    diameter_3gpp_ts29_229:avp_header('Session-Priority');
avp_header('Supported-Applications') ->
    diameter_3gpp_ts29_229:avp_header('Supported-Applications');
avp_header('Supported-Features') ->
    diameter_3gpp_ts29_229:avp_header('Supported-Features');
avp_header('To-SIP-Header') ->
    diameter_3gpp_ts29_229:avp_header('To-SIP-Header');
avp_header('UAR-Flags') ->
    diameter_3gpp_ts29_229:avp_header('UAR-Flags');
avp_header('User-Authorization-Type') ->
    diameter_3gpp_ts29_229:avp_header('User-Authorization-Type');
avp_header('User-Data') ->
    diameter_3gpp_ts29_229:avp_header('User-Data');
avp_header('User-Data-Already-Available') ->
    diameter_3gpp_ts29_229:avp_header('User-Data-Already-Available');
avp_header('Visited-Network-Identifier') ->
    diameter_3gpp_ts29_229:avp_header('Visited-Network-Identifier');
avp_header('Wildcarded-Public-Identity') ->
    diameter_3gpp_ts29_229:avp_header('Wildcarded-Public-Identity');
avp_header('3GPP-AAA-Server-Name') ->
    diameter_3gpp_ts29_273:avp_header('3GPP-AAA-Server-Name');
avp_header('Current-Location') ->
    diameter_3gpp_ts29_329:avp_header('Current-Location');
avp_header('DSAI-Tag') ->
    diameter_3gpp_ts29_329:avp_header('DSAI-Tag');
avp_header('Data-Reference') ->
    diameter_3gpp_ts29_329:avp_header('Data-Reference');
avp_header('Expiry-Time') ->
    diameter_3gpp_ts29_329:avp_header('Expiry-Time');
avp_header('Identity-Set') ->
    diameter_3gpp_ts29_329:avp_header('Identity-Set');
avp_header('MSISDN') ->
    diameter_3gpp_ts29_329:avp_header('MSISDN');
avp_header('One-Time-Notification') ->
    diameter_3gpp_ts29_329:avp_header('One-Time-Notification');
avp_header('Requested-Domain') ->
    diameter_3gpp_ts29_329:avp_header('Requested-Domain');
avp_header('Requested-Nodes') ->
    diameter_3gpp_ts29_329:avp_header('Requested-Nodes');
avp_header('Send-Data-Indication') ->
    diameter_3gpp_ts29_329:avp_header('Send-Data-Indication');
avp_header('Sequence-Number') ->
    diameter_3gpp_ts29_329:avp_header('Sequence-Number');
avp_header('Service-Indication') ->
    diameter_3gpp_ts29_329:avp_header('Service-Indication');
avp_header('Serving-Node-Indication') ->
    diameter_3gpp_ts29_329:avp_header('Serving-Node-Indication');
avp_header('Subs-Req-Type') ->
    diameter_3gpp_ts29_329:avp_header('Subs-Req-Type');
avp_header('APN-OI-Replacement') ->
    diameter_3gpp_break_circles:avp_header('APN-OI-Replacement');
avp_header('Emergency-Info') ->
    diameter_3gpp_break_circles:avp_header('Emergency-Info');
avp_header('GMLC-Address') ->
    diameter_3gpp_break_circles:avp_header('GMLC-Address');
avp_header('GMLC-Number') ->
    diameter_3gpp_break_circles:avp_header('GMLC-Number');
avp_header('SGSN-Number') ->
    diameter_3gpp_break_circles:avp_header('SGSN-Number');
avp_header(_) -> erlang:error(badarg).

avp(T, Data, 'Additional-Serving-Node', Opts) ->
    grouped_avp(T, 'Additional-Serving-Node', Data, Opts);
avp(T, Data, 'LCS-Capabilities-Sets', Opts) ->
    diameter_types:'Unsigned32'(T, Data, Opts);
avp(T, Data, 'LMSI', Opts) ->
    diameter_types:'OctetString'(T, Data, Opts);
avp(T, Data, 'MME-Name', Opts) ->
    diameter_types:'DiameterIdentity'(T, Data, Opts);
avp(T, Data, 'MME-Realm', Opts) ->
    diameter_types:'DiameterIdentity'(T, Data, Opts);
avp(T, Data, 'MSC-Number', Opts) ->
    diameter_types:'OctetString'(T, Data, Opts);
avp(T, Data, 'PPR-Address', Opts) ->
    diameter_types:'Address'(T, Data, Opts);
avp(T, Data, 'RIA-Flags', Opts) ->
    diameter_types:'Unsigned32'(T, Data, Opts);
avp(T, Data, 'SGSN-Name', Opts) ->
    diameter_types:'DiameterIdentity'(T, Data, Opts);
avp(T, Data, 'SGSN-Realm', Opts) ->
    diameter_types:'DiameterIdentity'(T, Data, Opts);
avp(T, Data, 'Serving-Node', Opts) ->
    grouped_avp(T, 'Serving-Node', Data, Opts);
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
avp(T, Data, 'Call-ID-SIP-Header', Opts) ->
    avp(T,
        Data,
        'Call-ID-SIP-Header',
        Opts,
        diameter_3gpp_ts29_229);
avp(T, Data, 'Charging-Information', Opts) ->
    grouped_avp(T, 'Charging-Information', Data, Opts);
avp(T, Data, 'Confidentiality-Key', Opts) ->
    avp(T,
        Data,
        'Confidentiality-Key',
        Opts,
        diameter_3gpp_ts29_229);
avp(T, Data, 'Contact', Opts) ->
    avp(T, Data, 'Contact', Opts, diameter_3gpp_ts29_229);
avp(T, Data, 'Deregistration-Reason', Opts) ->
    grouped_avp(T, 'Deregistration-Reason', Data, Opts);
avp(T, Data, 'Digest-Algorithm', Opts) ->
    avp(T,
        Data,
        'Digest-Algorithm',
        Opts,
        diameter_3gpp_ts29_229);
avp(T, Data, 'Digest-HA1', Opts) ->
    avp(T,
        Data,
        'Digest-HA1',
        Opts,
        diameter_3gpp_ts29_229);
avp(T, Data, 'Digest-QoP', Opts) ->
    avp(T,
        Data,
        'Digest-QoP',
        Opts,
        diameter_3gpp_ts29_229);
avp(T, Data, 'Digest-Realm', Opts) ->
    avp(T,
        Data,
        'Digest-Realm',
        Opts,
        diameter_3gpp_ts29_229);
avp(T, Data, 'Feature-List', Opts) ->
    avp(T,
        Data,
        'Feature-List',
        Opts,
        diameter_3gpp_ts29_229);
avp(T, Data, 'Feature-List-ID', Opts) ->
    avp(T,
        Data,
        'Feature-List-ID',
        Opts,
        diameter_3gpp_ts29_229);
avp(T, Data, 'From-SIP-Header', Opts) ->
    avp(T,
        Data,
        'From-SIP-Header',
        Opts,
        diameter_3gpp_ts29_229);
avp(T, Data, 'Initial-CSeq-Sequence-Number', Opts) ->
    avp(T,
        Data,
        'Initial-CSeq-Sequence-Number',
        Opts,
        diameter_3gpp_ts29_229);
avp(T, Data, 'Integrity-Key', Opts) ->
    avp(T,
        Data,
        'Integrity-Key',
        Opts,
        diameter_3gpp_ts29_229);
avp(T, Data, 'LIA-Flags', Opts) ->
    avp(T, Data, 'LIA-Flags', Opts, diameter_3gpp_ts29_229);
avp(T, Data, 'Loose-Route-Indication', Opts) ->
    avp(T,
        Data,
        'Loose-Route-Indication',
        Opts,
        diameter_3gpp_ts29_229);
avp(T, Data, 'Mandatory-Capability', Opts) ->
    avp(T,
        Data,
        'Mandatory-Capability',
        Opts,
        diameter_3gpp_ts29_229);
avp(T, Data, 'Multiple-Registration-Indication',
    Opts) ->
    avp(T,
        Data,
        'Multiple-Registration-Indication',
        Opts,
        diameter_3gpp_ts29_229);
avp(T, Data, 'Optional-Capability', Opts) ->
    avp(T,
        Data,
        'Optional-Capability',
        Opts,
        diameter_3gpp_ts29_229);
avp(T, Data, 'Originating-Request', Opts) ->
    avp(T,
        Data,
        'Originating-Request',
        Opts,
        diameter_3gpp_ts29_229);
avp(T, Data, 'Path', Opts) ->
    avp(T, Data, 'Path', Opts, diameter_3gpp_ts29_229);
avp(T, Data,
    'Primary-Charging-Collection-Function-Name', Opts) ->
    avp(T,
        Data,
        'Primary-Charging-Collection-Function-Name',
        Opts,
        diameter_3gpp_ts29_229);
avp(T, Data, 'Primary-Event-Charging-Function-Name',
    Opts) ->
    avp(T,
        Data,
        'Primary-Event-Charging-Function-Name',
        Opts,
        diameter_3gpp_ts29_229);
avp(T, Data, 'Priviledged-Sender-Indication', Opts) ->
    avp(T,
        Data,
        'Priviledged-Sender-Indication',
        Opts,
        diameter_3gpp_ts29_229);
avp(T, Data, 'Public-Identity', Opts) ->
    avp(T,
        Data,
        'Public-Identity',
        Opts,
        diameter_3gpp_ts29_229);
avp(T, Data, 'Reason-Code', Opts) ->
    avp(T,
        Data,
        'Reason-Code',
        Opts,
        diameter_3gpp_ts29_229);
avp(T, Data, 'Reason-Info', Opts) ->
    avp(T,
        Data,
        'Reason-Info',
        Opts,
        diameter_3gpp_ts29_229);
avp(T, Data, 'Record-Route', Opts) ->
    avp(T,
        Data,
        'Record-Route',
        Opts,
        diameter_3gpp_ts29_229);
avp(T, Data, 'SAR-Flags', Opts) ->
    avp(T, Data, 'SAR-Flags', Opts, diameter_3gpp_ts29_229);
avp(T, Data, 'SIP-Auth-Data-Item', Opts) ->
    grouped_avp(T, 'SIP-Auth-Data-Item', Data, Opts);
avp(T, Data, 'SIP-Authenticate', Opts) ->
    avp(T,
        Data,
        'SIP-Authenticate',
        Opts,
        diameter_3gpp_ts29_229);
avp(T, Data, 'SIP-Authentication-Context', Opts) ->
    avp(T,
        Data,
        'SIP-Authentication-Context',
        Opts,
        diameter_3gpp_ts29_229);
avp(T, Data, 'SIP-Authentication-Scheme', Opts) ->
    avp(T,
        Data,
        'SIP-Authentication-Scheme',
        Opts,
        diameter_3gpp_ts29_229);
avp(T, Data, 'SIP-Authorization', Opts) ->
    avp(T,
        Data,
        'SIP-Authorization',
        Opts,
        diameter_3gpp_ts29_229);
avp(T, Data, 'SIP-Digest-Authenticate', Opts) ->
    grouped_avp(T, 'SIP-Digest-Authenticate', Data, Opts);
avp(T, Data, 'SIP-Item-Number', Opts) ->
    avp(T,
        Data,
        'SIP-Item-Number',
        Opts,
        diameter_3gpp_ts29_229);
avp(T, Data, 'SIP-Number-Auth-Items', Opts) ->
    avp(T,
        Data,
        'SIP-Number-Auth-Items',
        Opts,
        diameter_3gpp_ts29_229);
avp(T, Data,
    'Secondary-Charging-Collection-Function-Name', Opts) ->
    avp(T,
        Data,
        'Secondary-Charging-Collection-Function-Name',
        Opts,
        diameter_3gpp_ts29_229);
avp(T, Data, 'Secondary-Event-Charging-Function-Name',
    Opts) ->
    avp(T,
        Data,
        'Secondary-Event-Charging-Function-Name',
        Opts,
        diameter_3gpp_ts29_229);
avp(T, Data, 'Server-Assignment-Type', Opts) ->
    avp(T,
        Data,
        'Server-Assignment-Type',
        Opts,
        diameter_3gpp_ts29_229);
avp(T, Data, 'Server-Name', Opts) ->
    avp(T,
        Data,
        'Server-Name',
        Opts,
        diameter_3gpp_ts29_229);
avp(T, Data, 'Session-Priority', Opts) ->
    avp(T,
        Data,
        'Session-Priority',
        Opts,
        diameter_3gpp_ts29_229);
avp(T, Data, 'Supported-Applications', Opts) ->
    grouped_avp(T, 'Supported-Applications', Data, Opts);
avp(T, Data, 'Supported-Features', Opts) ->
    grouped_avp(T, 'Supported-Features', Data, Opts);
avp(T, Data, 'To-SIP-Header', Opts) ->
    avp(T,
        Data,
        'To-SIP-Header',
        Opts,
        diameter_3gpp_ts29_229);
avp(T, Data, 'UAR-Flags', Opts) ->
    avp(T, Data, 'UAR-Flags', Opts, diameter_3gpp_ts29_229);
avp(T, Data, 'User-Authorization-Type', Opts) ->
    avp(T,
        Data,
        'User-Authorization-Type',
        Opts,
        diameter_3gpp_ts29_229);
avp(T, Data, 'User-Data', Opts) ->
    avp(T, Data, 'User-Data', Opts, diameter_3gpp_ts29_229);
avp(T, Data, 'User-Data-Already-Available', Opts) ->
    avp(T,
        Data,
        'User-Data-Already-Available',
        Opts,
        diameter_3gpp_ts29_229);
avp(T, Data, 'Visited-Network-Identifier', Opts) ->
    avp(T,
        Data,
        'Visited-Network-Identifier',
        Opts,
        diameter_3gpp_ts29_229);
avp(T, Data, 'Wildcarded-Public-Identity', Opts) ->
    avp(T,
        Data,
        'Wildcarded-Public-Identity',
        Opts,
        diameter_3gpp_ts29_229);
avp(T, Data, '3GPP-AAA-Server-Name', Opts) ->
    avp(T,
        Data,
        '3GPP-AAA-Server-Name',
        Opts,
        diameter_3gpp_ts29_273);
avp(T, Data, 'Current-Location', Opts) ->
    avp(T,
        Data,
        'Current-Location',
        Opts,
        diameter_3gpp_ts29_329);
avp(T, Data, 'DSAI-Tag', Opts) ->
    avp(T, Data, 'DSAI-Tag', Opts, diameter_3gpp_ts29_329);
avp(T, Data, 'Data-Reference', Opts) ->
    avp(T,
        Data,
        'Data-Reference',
        Opts,
        diameter_3gpp_ts29_329);
avp(T, Data, 'Expiry-Time', Opts) ->
    avp(T,
        Data,
        'Expiry-Time',
        Opts,
        diameter_3gpp_ts29_329);
avp(T, Data, 'Identity-Set', Opts) ->
    avp(T,
        Data,
        'Identity-Set',
        Opts,
        diameter_3gpp_ts29_329);
avp(T, Data, 'MSISDN', Opts) ->
    avp(T, Data, 'MSISDN', Opts, diameter_3gpp_ts29_329);
avp(T, Data, 'One-Time-Notification', Opts) ->
    avp(T,
        Data,
        'One-Time-Notification',
        Opts,
        diameter_3gpp_ts29_329);
avp(T, Data, 'Requested-Domain', Opts) ->
    avp(T,
        Data,
        'Requested-Domain',
        Opts,
        diameter_3gpp_ts29_329);
avp(T, Data, 'Requested-Nodes', Opts) ->
    avp(T,
        Data,
        'Requested-Nodes',
        Opts,
        diameter_3gpp_ts29_329);
avp(T, Data, 'Send-Data-Indication', Opts) ->
    avp(T,
        Data,
        'Send-Data-Indication',
        Opts,
        diameter_3gpp_ts29_329);
avp(T, Data, 'Sequence-Number', Opts) ->
    avp(T,
        Data,
        'Sequence-Number',
        Opts,
        diameter_3gpp_ts29_329);
avp(T, Data, 'Service-Indication', Opts) ->
    avp(T,
        Data,
        'Service-Indication',
        Opts,
        diameter_3gpp_ts29_329);
avp(T, Data, 'Serving-Node-Indication', Opts) ->
    avp(T,
        Data,
        'Serving-Node-Indication',
        Opts,
        diameter_3gpp_ts29_329);
avp(T, Data, 'Subs-Req-Type', Opts) ->
    avp(T,
        Data,
        'Subs-Req-Type',
        Opts,
        diameter_3gpp_ts29_329);
avp(T, Data, 'APN-OI-Replacement', Opts) ->
    avp(T,
        Data,
        'APN-OI-Replacement',
        Opts,
        diameter_3gpp_break_circles);
avp(T, Data, 'Emergency-Info', Opts) ->
    grouped_avp(T, 'Emergency-Info', Data, Opts);
avp(T, Data, 'GMLC-Address', Opts) ->
    avp(T,
        Data,
        'GMLC-Address',
        Opts,
        diameter_3gpp_break_circles);
avp(T, Data, 'GMLC-Number', Opts) ->
    avp(T,
        Data,
        'GMLC-Number',
        Opts,
        diameter_3gpp_break_circles);
avp(T, Data, 'SGSN-Number', Opts) ->
    avp(T,
        Data,
        'SGSN-Number',
        Opts,
        diameter_3gpp_break_circles);
avp(_, _, _, _) -> erlang:error(badarg).

enumerated_avp(_, _, _) -> erlang:error(badarg).

empty_value('Serving-Node', Opts) ->
    empty_group('Serving-Node', Opts);
empty_value('Additional-Serving-Node', Opts) ->
    empty_group('Additional-Serving-Node', Opts);
empty_value('Proxy-Info', Opts) ->
    empty_group('Proxy-Info', Opts);
empty_value('Failed-AVP', Opts) ->
    empty_group('Failed-AVP', Opts);
empty_value('Experimental-Result', Opts) ->
    empty_group('Experimental-Result', Opts);
empty_value('Vendor-Specific-Application-Id', Opts) ->
    empty_group('Vendor-Specific-Application-Id', Opts);
empty_value('Charging-Information', Opts) ->
    empty_group('Charging-Information', Opts);
empty_value('Supported-Features', Opts) ->
    empty_group('Supported-Features', Opts);
empty_value('Supported-Applications', Opts) ->
    empty_group('Supported-Applications', Opts);
empty_value('SIP-Auth-Data-Item', Opts) ->
    empty_group('SIP-Auth-Data-Item', Opts);
empty_value('Deregistration-Reason', Opts) ->
    empty_group('Deregistration-Reason', Opts);
empty_value('SIP-Digest-Authenticate', Opts) ->
    empty_group('SIP-Digest-Authenticate', Opts);
empty_value('Emergency-Info', Opts) ->
    empty_group('Emergency-Info', Opts);
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
empty_value('Server-Assignment-Type', _) ->
    <<0, 0, 0, 0>>;
empty_value('Reason-Code', _) -> <<0, 0, 0, 0>>;
empty_value(Name, Opts) -> empty(Name, Opts).

dict() ->
    [1,
     {avp_types,
      [{"Additional-Serving-Node", 2406, "Grouped", "MV"},
       {"LCS-Capabilities-Sets", 2404, "Unsigned32", "MV"},
       {"LMSI", 2400, "OctetString", "MV"},
       {"MME-Name", 2402, "DiameterIdentity", "MV"},
       {"MME-Realm", 2408, "DiameterIdentity", "V"},
       {"MSC-Number", 2403, "OctetString", "MV"},
       {"PPR-Address", 2407, "Address", "MV"},
       {"RIA-Flags", 2411, "Unsigned32", "V"},
       {"SGSN-Name", 2409, "DiameterIdentity", "V"},
       {"SGSN-Realm", 2410, "DiameterIdentity", "V"},
       {"Serving-Node", 2401, "Grouped", "MV"}]},
     {avp_vendor_id, []},
     {codecs, []},
     {command_codes, [{8388622, "RIR", "RIA"}]},
     {custom_types, []},
     {define, []},
     {enum, []},
     {grouped,
      [{"Serving-Node",
        2401,
        [10415],
        [["SGSN-Number"],
         ["SGSN-Name"],
         ["SGSN-Realm"],
         ["MME-Name"],
         ["MME-Realm"],
         ["MSC-Number"],
         ["3GPP-AAA-Server-Name"],
         ["LCS-Capabilities-Sets"],
         ["GMLC-Address"],
         {'*', ["AVP"]}]},
       {"Additional-Serving-Node",
        2406,
        [10415],
        [["SGSN-Number"],
         ["MME-Name"],
         ["SGSN-Name"],
         ["SGSN-Realm"],
         ["MME-Realm"],
         ["MSC-Number"],
         ["3GPP-AAA-Server-Name"],
         ["LCS-Capabilities-Sets"],
         ["GMLC-Address"],
         {'*', ["AVP"]}]}]},
     {id, 16777291},
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
         {"TWAN-Identifier", 29, "OctetString", "V"}]},
       {diameter_3gpp_ts29_229,
        [{"Call-ID-SIP-Header", 643, "OctetString", "V"},
         {"Charging-Information", 618, "Grouped", "MV"},
         {"Confidentiality-Key", 625, "OctetString", "MV"},
         {"Contact", 641, "OctetString", "V"},
         {"Deregistration-Reason", 615, "Grouped", "MV"},
         {"Digest-Algorithm", 111, "UTF8String", "M"},
         {"Digest-HA1", 121, "UTF8String", "M"},
         {"Digest-QoP", 110, "UTF8String", "M"},
         {"Digest-Realm", 104, "UTF8String", "M"},
         {"Feature-List", 630, "Unsigned32", "V"},
         {"Feature-List-ID", 629, "Unsigned32", "V"},
         {"From-SIP-Header", 644, "OctetString", "V"},
         {"Initial-CSeq-Sequence-Number",
          654,
          "Unsigned32",
          "V"},
         {"Integrity-Key", 626, "OctetString", "MV"},
         {"LIA-Flags", 653, "Unsigned32", "V"},
         {"Loose-Route-Indication", 638, "Enumerated", "V"},
         {"Mandatory-Capability", 604, "Unsigned32", "MV"},
         {"Multiple-Registration-Indication",
          648,
          "Enumerated",
          "V"},
         {"Optional-Capability", 605, "Unsigned32", "MV"},
         {"Originating-Request", 633, "Enumerated", "MV"},
         {"Path", 640, "OctetString", "V"},
         {"Primary-Charging-Collection-Function-Name",
          621,
          "DiameterURI",
          "MV"},
         {"Primary-Event-Charging-Function-Name",
          619,
          "DiameterURI",
          "MV"},
         {"Priviledged-Sender-Indication",
          652,
          "Enumerated",
          "V"},
         {"Public-Identity", 601, "UTF8String", "MV"},
         {"Reason-Code", 616, "Enumerated", "MV"},
         {"Reason-Info", 617, "UTF8String", "MV"},
         {"Record-Route", 646, "OctetString", "V"},
         {"SAR-Flags", 655, "Unsigned32", "V"},
         {"SIP-Auth-Data-Item", 612, "Grouped", "MV"},
         {"SIP-Authenticate", 609, "OctetString", "MV"},
         {"SIP-Authentication-Context",
          611,
          "OctetString",
          "MV"},
         {"SIP-Authentication-Scheme", 608, "UTF8String", "MV"},
         {"SIP-Authorization", 610, "OctetString", "MV"},
         {"SIP-Digest-Authenticate", 635, "Grouped", "V"},
         {"SIP-Item-Number", 613, "Unsigned32", "MV"},
         {"SIP-Number-Auth-Items", 607, "Unsigned32", "MV"},
         {"Secondary-Charging-Collection-Function-Name",
          622,
          "DiameterURI",
          "MV"},
         {"Secondary-Event-Charging-Function-Name",
          620,
          "DiameterURI",
          "MV"},
         {"Server-Assignment-Type", 614, "Enumerated", "MV"},
         {"Server-Name", 602, "UTF8String", "MV"},
         {"Session-Priority", 650, "Enumerated", "V"},
         {"Supported-Applications", 631, "Grouped", "V"},
         {"Supported-Features", 628, "Grouped", "V"},
         {"To-SIP-Header", 645, "OctetString", "V"},
         {"UAR-Flags", 637, "Unsigned32", "V"},
         {"User-Authorization-Type", 623, "Enumerated", "MV"},
         {"User-Data", 606, "OctetString", "MV"},
         {"User-Data-Already-Available",
          624,
          "Enumerated",
          "MV"},
         {"Visited-Network-Identifier",
          600,
          "OctetString",
          "MV"},
         {"Wildcarded-Public-Identity",
          634,
          "UTF8String",
          "V"}]},
       {diameter_3gpp_ts29_273,
        [{"3GPP-AAA-Server-Name",
          318,
          "DiameterIdentity",
          "MV"}]},
       {diameter_3gpp_ts29_329,
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
       {diameter_3gpp_break_circles,
        [{"APN-OI-Replacement", 1427, "UTF8String", "MV"},
         {"Emergency-Info", 1687, "Grouped", "V"},
         {"GMLC-Address", 2405, "Address", "MV"},
         {"GMLC-Number", 1474, "OctetString", "MV"},
         {"SGSN-Number", 1489, "OctetString", "MV"}]}]},
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
           {"Non-IP", 4}]}]},
       {diameter_3gpp_ts29_229,
        [{"Server-Assignment-Type",
          [{"NO_ASSIGNMENT", 0},
           {"REGISTRATION", 1},
           {"RE_REGISTRATION", 2},
           {"UNREGISTERED_USER", 3},
           {"TIMEOUT_DEREGISTRATION", 4},
           {"USER_DEREGISTRATION", 5},
           {"TIMEOUT_DEREGISTRATION_STORE_SERVER_NAME", 6},
           {"USER_DEREGISTRATION_STORE_SERVER_NAME", 7},
           {"ADMINISTRATIVE_DEREGISTRATION", 8},
           {"AUTHENTICATION_FAILURE", 9},
           {"AUTHENTICATION_TIMEOUT", 10},
           {"DEREGISTRATION_TOO_MUCH_DATA", 11},
           {"AAA_USER_DATA_REQUEST", 12},
           {"PGW_UPDATE", 13},
           {"RESTORATION", 14}]},
         {"Reason-Code",
          [{"PERMANENT_TERMINATION", 0},
           {"NEW_SERVER_ASSIGNED", 1},
           {"SERVER_CHANGE", 2},
           {"REMOVE_S-CSCF", 3}]}]}]},
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
       {diameter_3gpp_ts29_229,
        [{"Charging-Information",
          618,
          [],
          [["Primary-Event-Charging-Function-Name"],
           ["Secondary-Event-Charging-Function-Name"],
           ["Primary-Charging-Collection-Function-Name"],
           ["Secondary-Charging-Collection-Function-Name"],
           {'*', ["AVP"]}]},
         {"Supported-Features",
          628,
          [],
          [{"Vendor-Id"},
           {"Feature-List-ID"},
           {"Feature-List"},
           {'*', ["AVP"]}]},
         {"Supported-Applications",
          631,
          [10415],
          [{'*', ["Auth-Application-Id"]},
           {'*', ["Acct-Application-Id"]},
           {'*', ["Vendor-Specific-Application-Id"]},
           {'*', ["AVP"]}]},
         {"SIP-Auth-Data-Item",
          612,
          [10415],
          [["SIP-Item-Number"],
           ["SIP-Authentication-Scheme"],
           ["SIP-Authenticate"],
           ["SIP-Authorization"],
           ["SIP-Authentication-Context"],
           ["Confidentiality-Key"],
           ["Integrity-Key"],
           ["SIP-Digest-Authenticate"],
           ["Framed-IP-Address"],
           ["Framed-IPv6-Prefix"],
           ["Framed-Interface-Id"],
           {'*', ["Line-Identifier"]},
           {'*', ["AVP"]}]},
         {"Deregistration-Reason",
          615,
          [10415],
          [{"Reason-Code"}, ["Reason-Info"], {'*', ["AVP"]}]},
         {"SIP-Digest-Authenticate",
          635,
          [10415],
          [{"Digest-Realm"},
           {"Digest-QoP"},
           {"Digest-HA1"},
           ["Digest-Algorithm"],
           {'*', ["AVP"]}]}]},
       {diameter_3gpp_break_circles,
        [{"Emergency-Info",
          1687,
          [10415],
          [["MIP6-Agent-Info"], {'*', ["AVP"]}]}]}]},
     {inherits,
      [{"diameter_3gpp_break_circles", []},
       {"diameter_3gpp_ts29_329", []},
       {"diameter_3gpp_ts29_273", ["3GPP-AAA-Server-Name"]},
       {"diameter_3gpp_ts29_229", []},
       {"diameter_3gpp_base", []},
       {"diameter_gen_base_rfc6733", []}]},
     {messages,
      [{"RIR",
        8388622,
        ['REQ', 'PXY'],
        [],
        [{{"Session-Id"}},
         {"Auth-Session-State"},
         {"Origin-Host"},
         {"Origin-Realm"},
         {"Destination-Realm"},
         ["Vendor-Specific-Application-Id"],
         ["Destination-Host"],
         ["User-Name"],
         ["MSISDN"],
         ["GMLC-Number"],
         {'*', ["Supported-Features"]},
         {'*', ["Proxy-Info"]},
         {'*', ["Route-Record"]},
         {'*', ["AVP"]}]},
       {"RIA",
        8388622,
        ['PXY'],
        [],
        [{{"Session-Id"}},
         {"Auth-Session-State"},
         {"Origin-Host"},
         {"Origin-Realm"},
         ["Vendor-Specific-Application-Id"],
         ["Result-Code"],
         ["Experimental-Result"],
         {'*', ["Supported-Features"]},
         ["User-Name"],
         ["MSISDN"],
         ["LMSI"],
         ["Serving-Node"],
         {'*', ["Additional-Serving-Node"]},
         ["GMLC-Address"],
         ["PPR-Address"],
         ["RIA-Flags"],
         {'*', ["AVP"]},
         ["Failed-AVP"],
         {'*', ["Proxy-Info"]},
         {'*', ["Route-Record"]}]}]},
     {name, "diameter_3gpp_ts29_173"},
     {vendor, {10415, "3GPP"}}].


