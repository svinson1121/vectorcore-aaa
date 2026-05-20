%% -------------------------------------------------------------------
%% This is a generated file.
%% -------------------------------------------------------------------

-module(diameter_rfc5777).

-moduledoc(false).

-compile({parse_transform, diameter_exprecs}).

-compile(nowarn_unused_function).

-dialyzer(no_return).

-export_records(['QoS-Resources',
                 'Filter-Rule',
                 'Classifier',
                 'From-Spec',
                 'To-Spec',
                 'IP-Address-Range',
                 'IP-Address-Mask',
                 'MAC-Address-Mask',
                 'EUI64-Address-Mask',
                 'Port-Range',
                 'IP-Option',
                 'TCP-Option',
                 'TCP-Flags',
                 'ICMP-Type',
                 'ETH-Option',
                 'ETH-Proto-Type',
                 'VLAN-ID-Range',
                 'User-Priority-Range',
                 'Time-Of-Day-Condition',
                 'QoS-Profile-Template',
                 'QoS-Parameters',
                 'Excess-Treatment',
                 'QoS-Capability',
                 'Proxy-Info',
                 'Failed-AVP',
                 'Experimental-Result',
                 'Vendor-Specific-Application-Id']).

-record('QoS-Resources',
        {'Filter-Rule' = [], 'AVP' = []}).

-record('Filter-Rule',
        {'Filter-Rule-Precedence' = [],
         'Classifier' = [],
         'Time-Of-Day-Condition' = [],
         'Treatment-Action' = [],
         'QoS-Semantics' = [],
         'QoS-Profile-Template' = [],
         'QoS-Parameters' = [],
         'Excess-Treatment' = [],
         'AVP' = []}).

-record('Classifier',
        {'Classifier-ID',
         'Protocol' = [],
         'Direction' = [],
         'From-Spec' = [],
         'To-Spec' = [],
         'Diffserv-Code-Point' = [],
         'Fragmentation-Flag' = [],
         'IP-Option' = [],
         'TCP-Option' = [],
         'TCP-Flags' = [],
         'ICMP-Type' = [],
         'ETH-Option' = [],
         'AVP' = []}).

-record('From-Spec',
        {'IP-Address' = [],
         'IP-Address-Range' = [],
         'IP-Address-Mask' = [],
         'MAC-Address' = [],
         'MAC-Address-Mask' = [],
         'EUI64-Address' = [],
         'EUI64-Address-Mask' = [],
         'Port' = [],
         'Port-Range' = [],
         'Negated' = [],
         'Use-Assigned-Address' = [],
         'AVP' = []}).

-record('To-Spec',
        {'IP-Address' = [],
         'IP-Address-Range' = [],
         'IP-Address-Mask' = [],
         'MAC-Address' = [],
         'MAC-Address-Mask' = [],
         'EUI64-Address' = [],
         'EUI64-Address-Mask' = [],
         'Port' = [],
         'Port-Range' = [],
         'Negated' = [],
         'Use-Assigned-Address' = [],
         'AVP' = []}).

-record('IP-Address-Range',
        {'IP-Address-Start' = [],
         'IP-Address-End' = [],
         'AVP' = []}).

-record('IP-Address-Mask',
        {'IP-Address', 'IP-Mask-Bit-Mask-Width', 'AVP' = []}).

-record('MAC-Address-Mask',
        {'MAC-Address',
         'MAC-Address-Mask-Pattern',
         'AVP' = []}).

-record('EUI64-Address-Mask',
        {'EUI64-Address',
         'EUI64-Address-Mask-Pattern',
         'AVP' = []}).

-record('Port-Range',
        {'Port-Start' = [], 'Port-End' = [], 'AVP' = []}).

-record('IP-Option',
        {'IP-Option-Type',
         'IP-Option-Value' = [],
         'Negated' = [],
         'AVP' = []}).

-record('TCP-Option',
        {'TCP-Option-Type',
         'TCP-Option-Value' = [],
         'Negated' = [],
         'AVP' = []}).

-record('TCP-Flags',
        {'TCP-Flag-Type', 'Negated' = [], 'AVP' = []}).

-record('ICMP-Type',
        {'ICMP-Type-Number',
         'ICMP-Code' = [],
         'Negated' = [],
         'AVP' = []}).

-record('ETH-Option',
        {'ETH-Proto-Type',
         'VLAN-ID-Range' = [],
         'User-Priority-Range' = [],
         'AVP' = []}).

-record('ETH-Proto-Type',
        {'ETH-Ether-Type' = [], 'ETH-SAP' = [], 'AVP' = []}).

-record('VLAN-ID-Range',
        {'S-VID-Start' = [],
         'S-VID-End' = [],
         'C-VID-Start' = [],
         'C-VID-End' = [],
         'AVP' = []}).

-record('User-Priority-Range',
        {'Low-User-Priority' = [],
         'High-User-Priority' = [],
         'AVP' = []}).

-record('Time-Of-Day-Condition',
        {'Time-Of-Day-Start' = [],
         'Time-Of-Day-End' = [],
         'Day-Of-Week-Mask' = [],
         'Day-Of-Month-Mask' = [],
         'Month-Of-Year-Mask' = [],
         'Absolute-Start-Time' = [],
         'Absolute-End-Time' = [],
         'Timezone-Flag' = [],
         'AVP' = []}).

-record('QoS-Profile-Template',
        {'Vendor-Id', 'QoS-Profile-Id', 'AVP' = []}).

-record('QoS-Parameters', {'AVP' = []}).

-record('Excess-Treatment',
        {'Treatment-Action',
         'QoS-Profile-Template' = [],
         'QoS-Parameters' = [],
         'AVP' = []}).

-record('QoS-Capability',
        {'QoS-Profile-Template' = [], 'AVP' = []}).

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

name() -> diameter_rfc5777.

id() -> 1.

vendor_id() -> erlang:error(undefined).

vendor_name() -> erlang:error(undefined).

msg_name(_, _) -> ''.

msg_header(_) -> erlang:error(badarg).

rec2msg(_) -> erlang:error(badarg).

msg2rec(_) -> erlang:error(badarg).

name2rec('QoS-Resources') -> 'QoS-Resources';
name2rec('Filter-Rule') -> 'Filter-Rule';
name2rec('Classifier') -> 'Classifier';
name2rec('From-Spec') -> 'From-Spec';
name2rec('To-Spec') -> 'To-Spec';
name2rec('IP-Address-Range') -> 'IP-Address-Range';
name2rec('IP-Address-Mask') -> 'IP-Address-Mask';
name2rec('MAC-Address-Mask') -> 'MAC-Address-Mask';
name2rec('EUI64-Address-Mask') -> 'EUI64-Address-Mask';
name2rec('Port-Range') -> 'Port-Range';
name2rec('IP-Option') -> 'IP-Option';
name2rec('TCP-Option') -> 'TCP-Option';
name2rec('TCP-Flags') -> 'TCP-Flags';
name2rec('ICMP-Type') -> 'ICMP-Type';
name2rec('ETH-Option') -> 'ETH-Option';
name2rec('ETH-Proto-Type') -> 'ETH-Proto-Type';
name2rec('VLAN-ID-Range') -> 'VLAN-ID-Range';
name2rec('User-Priority-Range') ->
    'User-Priority-Range';
name2rec('Time-Of-Day-Condition') ->
    'Time-Of-Day-Condition';
name2rec('QoS-Profile-Template') ->
    'QoS-Profile-Template';
name2rec('QoS-Parameters') -> 'QoS-Parameters';
name2rec('Excess-Treatment') -> 'Excess-Treatment';
name2rec('QoS-Capability') -> 'QoS-Capability';
name2rec('Proxy-Info') -> 'Proxy-Info';
name2rec('Failed-AVP') -> 'Failed-AVP';
name2rec('Experimental-Result') ->
    'Experimental-Result';
name2rec('Vendor-Specific-Application-Id') ->
    'Vendor-Specific-Application-Id';
name2rec(T) -> msg2rec(T).

avp_name(569, undefined) ->
    {'Absolute-End-Fractional-Seconds', 'Unsigned32'};
avp_name(568, undefined) ->
    {'Absolute-End-Time', 'Time'};
avp_name(567, undefined) ->
    {'Absolute-Start-Fractional-Seconds', 'Unsigned32'};
avp_name(566, undefined) ->
    {'Absolute-Start-Time', 'Time'};
avp_name(556, undefined) -> {'C-VID-End', 'Unsigned32'};
avp_name(555, undefined) ->
    {'C-VID-Start', 'Unsigned32'};
avp_name(511, undefined) -> {'Classifier', 'Grouped'};
avp_name(512, undefined) ->
    {'Classifier-ID', 'OctetString'};
avp_name(564, undefined) ->
    {'Day-Of-Month-Mask', 'Unsigned32'};
avp_name(563, undefined) ->
    {'Day-Of-Week-Mask', 'Unsigned32'};
avp_name(535, undefined) ->
    {'Diffserv-Code-Point', 'Enumerated'};
avp_name(514, undefined) -> {'Direction', 'Enumerated'};
avp_name(550, undefined) ->
    {'ETH-Ether-Type', 'OctetString'};
avp_name(548, undefined) -> {'ETH-Option', 'Grouped'};
avp_name(549, undefined) ->
    {'ETH-Proto-Type', 'Grouped'};
avp_name(551, undefined) -> {'ETH-SAP', 'OctetString'};
avp_name(527, undefined) ->
    {'EUI64-Address', 'OctetString'};
avp_name(528, undefined) ->
    {'EUI64-Address-Mask', 'Grouped'};
avp_name(529, undefined) ->
    {'EUI64-Address-Mask-Pattern', 'OctetString'};
avp_name(577, undefined) ->
    {'Excess-Treatment', 'Grouped'};
avp_name(509, undefined) -> {'Filter-Rule', 'Grouped'};
avp_name(510, undefined) ->
    {'Filter-Rule-Precedence', 'Unsigned32'};
avp_name(536, undefined) ->
    {'Fragmentation-Flag', 'Enumerated'};
avp_name(515, undefined) -> {'From-Spec', 'Grouped'};
avp_name(559, undefined) ->
    {'High-User-Priority', 'Unsigned32'};
avp_name(547, undefined) -> {'ICMP-Code', 'Enumerated'};
avp_name(545, undefined) -> {'ICMP-Type', 'Grouped'};
avp_name(546, undefined) ->
    {'ICMP-Type-Number', 'Enumerated'};
avp_name(518, undefined) -> {'IP-Address', 'Address'};
avp_name(521, undefined) ->
    {'IP-Address-End', 'Address'};
avp_name(522, undefined) ->
    {'IP-Address-Mask', 'Grouped'};
avp_name(519, undefined) ->
    {'IP-Address-Range', 'Grouped'};
avp_name(520, undefined) ->
    {'IP-Address-Start', 'Address'};
avp_name(523, undefined) ->
    {'IP-Mask-Bit-Mask-Width', 'Unsigned32'};
avp_name(537, undefined) -> {'IP-Option', 'Grouped'};
avp_name(538, undefined) ->
    {'IP-Option-Type', 'Enumerated'};
avp_name(539, undefined) ->
    {'IP-Option-Value', 'OctetString'};
avp_name(558, undefined) ->
    {'Low-User-Priority', 'Unsigned32'};
avp_name(524, undefined) ->
    {'MAC-Address', 'OctetString'};
avp_name(525, undefined) ->
    {'MAC-Address-Mask', 'Grouped'};
avp_name(526, undefined) ->
    {'MAC-Address-Mask-Pattern', 'OctetString'};
avp_name(565, undefined) ->
    {'Month-Of-Year-Mask', 'Unsigned32'};
avp_name(517, undefined) -> {'Negated', 'Enumerated'};
avp_name(530, undefined) -> {'Port', 'Integer32'};
avp_name(533, undefined) -> {'Port-End', 'Integer32'};
avp_name(531, undefined) -> {'Port-Range', 'Grouped'};
avp_name(532, undefined) -> {'Port-Start', 'Integer32'};
avp_name(513, undefined) -> {'Protocol', 'Enumerated'};
avp_name(578, undefined) ->
    {'QoS-Capability', 'Grouped'};
avp_name(576, undefined) ->
    {'QoS-Parameters', 'Grouped'};
avp_name(573, undefined) ->
    {'QoS-Profile-Id', 'Unsigned32'};
avp_name(574, undefined) ->
    {'QoS-Profile-Template', 'Grouped'};
avp_name(508, undefined) ->
    {'QoS-Resources', 'Grouped'};
avp_name(575, undefined) ->
    {'QoS-Semantics', 'Enumerated'};
avp_name(554, undefined) -> {'S-VID-End', 'Unsigned32'};
avp_name(553, undefined) ->
    {'S-VID-Start', 'Unsigned32'};
avp_name(544, undefined) ->
    {'TCP-Flag-Type', 'Unsigned32'};
avp_name(543, undefined) -> {'TCP-Flags', 'Grouped'};
avp_name(540, undefined) -> {'TCP-Option', 'Grouped'};
avp_name(541, undefined) ->
    {'TCP-Option-Type', 'Enumerated'};
avp_name(542, undefined) ->
    {'TCP-Option-Value', 'OctetString'};
avp_name(560, undefined) ->
    {'Time-Of-Day-Condition', 'Grouped'};
avp_name(562, undefined) ->
    {'Time-Of-Day-End', 'Unsigned32'};
avp_name(561, undefined) ->
    {'Time-Of-Day-Start', 'Unsigned32'};
avp_name(570, undefined) ->
    {'Timezone-Flag', 'Enumerated'};
avp_name(571, undefined) ->
    {'Timezone-Offset', 'Integer32'};
avp_name(516, undefined) -> {'To-Spec', 'Grouped'};
avp_name(572, undefined) ->
    {'Treatment-Action', 'Enumerated'};
avp_name(534, undefined) ->
    {'Use-Assigned-Address', 'Enumerated'};
avp_name(557, undefined) ->
    {'User-Priority-Range', 'Grouped'};
avp_name(552, undefined) ->
    {'VLAN-ID-Range', 'Grouped'};
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
avp_name(_, _) -> 'AVP'.

avp_arity('QoS-Resources') ->
    [{'Filter-Rule', {1, '*'}}, {'AVP', {0, '*'}}];
avp_arity('Filter-Rule') ->
    [{'Filter-Rule-Precedence', {0, 1}},
     {'Classifier', {0, 1}},
     {'Time-Of-Day-Condition', {0, '*'}},
     {'Treatment-Action', {0, 1}},
     {'QoS-Semantics', {0, 1}},
     {'QoS-Profile-Template', {0, 1}},
     {'QoS-Parameters', {0, 1}},
     {'Excess-Treatment', {0, 1}},
     {'AVP', {0, '*'}}];
avp_arity('Classifier') ->
    [{'Classifier-ID', 1},
     {'Protocol', {0, 1}},
     {'Direction', {0, 1}},
     {'From-Spec', {0, '*'}},
     {'To-Spec', {0, '*'}},
     {'Diffserv-Code-Point', {0, '*'}},
     {'Fragmentation-Flag', {0, 1}},
     {'IP-Option', {0, '*'}},
     {'TCP-Option', {0, '*'}},
     {'TCP-Flags', {0, 1}},
     {'ICMP-Type', {0, '*'}},
     {'ETH-Option', {0, '*'}},
     {'AVP', {0, '*'}}];
avp_arity('From-Spec') ->
    [{'IP-Address', {0, '*'}},
     {'IP-Address-Range', {0, '*'}},
     {'IP-Address-Mask', {0, '*'}},
     {'MAC-Address', {0, '*'}},
     {'MAC-Address-Mask', {0, '*'}},
     {'EUI64-Address', {0, '*'}},
     {'EUI64-Address-Mask', {0, '*'}},
     {'Port', {0, '*'}},
     {'Port-Range', {0, '*'}},
     {'Negated', {0, 1}},
     {'Use-Assigned-Address', {0, 1}},
     {'AVP', {0, '*'}}];
avp_arity('To-Spec') ->
    [{'IP-Address', {0, '*'}},
     {'IP-Address-Range', {0, '*'}},
     {'IP-Address-Mask', {0, '*'}},
     {'MAC-Address', {0, '*'}},
     {'MAC-Address-Mask', {0, '*'}},
     {'EUI64-Address', {0, '*'}},
     {'EUI64-Address-Mask', {0, '*'}},
     {'Port', {0, '*'}},
     {'Port-Range', {0, '*'}},
     {'Negated', {0, 1}},
     {'Use-Assigned-Address', {0, 1}},
     {'AVP', {0, '*'}}];
avp_arity('IP-Address-Range') ->
    [{'IP-Address-Start', {0, 1}},
     {'IP-Address-End', {0, 1}},
     {'AVP', {0, '*'}}];
avp_arity('IP-Address-Mask') ->
    [{'IP-Address', 1},
     {'IP-Mask-Bit-Mask-Width', 1},
     {'AVP', {0, '*'}}];
avp_arity('MAC-Address-Mask') ->
    [{'MAC-Address', 1},
     {'MAC-Address-Mask-Pattern', 1},
     {'AVP', {0, '*'}}];
avp_arity('EUI64-Address-Mask') ->
    [{'EUI64-Address', 1},
     {'EUI64-Address-Mask-Pattern', 1},
     {'AVP', {0, '*'}}];
avp_arity('Port-Range') ->
    [{'Port-Start', {0, 1}},
     {'Port-End', {0, 1}},
     {'AVP', {0, '*'}}];
avp_arity('IP-Option') ->
    [{'IP-Option-Type', 1},
     {'IP-Option-Value', {0, '*'}},
     {'Negated', {0, 1}},
     {'AVP', {0, '*'}}];
avp_arity('TCP-Option') ->
    [{'TCP-Option-Type', 1},
     {'TCP-Option-Value', {0, '*'}},
     {'Negated', {0, 1}},
     {'AVP', {0, '*'}}];
avp_arity('TCP-Flags') ->
    [{'TCP-Flag-Type', 1},
     {'Negated', {0, 1}},
     {'AVP', {0, '*'}}];
avp_arity('ICMP-Type') ->
    [{'ICMP-Type-Number', 1},
     {'ICMP-Code', {0, '*'}},
     {'Negated', {0, 1}},
     {'AVP', {0, '*'}}];
avp_arity('ETH-Option') ->
    [{'ETH-Proto-Type', 1},
     {'VLAN-ID-Range', {0, '*'}},
     {'User-Priority-Range', {0, '*'}},
     {'AVP', {0, '*'}}];
avp_arity('ETH-Proto-Type') ->
    [{'ETH-Ether-Type', {0, '*'}},
     {'ETH-SAP', {0, '*'}},
     {'AVP', {0, '*'}}];
avp_arity('VLAN-ID-Range') ->
    [{'S-VID-Start', {0, 1}},
     {'S-VID-End', {0, 1}},
     {'C-VID-Start', {0, 1}},
     {'C-VID-End', {0, 1}},
     {'AVP', {0, '*'}}];
avp_arity('User-Priority-Range') ->
    [{'Low-User-Priority', {0, '*'}},
     {'High-User-Priority', {0, '*'}},
     {'AVP', {0, '*'}}];
avp_arity('Time-Of-Day-Condition') ->
    [{'Time-Of-Day-Start', {0, 1}},
     {'Time-Of-Day-End', {0, 1}},
     {'Day-Of-Week-Mask', {0, 1}},
     {'Day-Of-Month-Mask', {0, 1}},
     {'Month-Of-Year-Mask', {0, 1}},
     {'Absolute-Start-Time', {0, 1}},
     {'Absolute-End-Time', {0, 1}},
     {'Timezone-Flag', {0, 1}},
     {'AVP', {0, '*'}}];
avp_arity('QoS-Profile-Template') ->
    [{'Vendor-Id', 1},
     {'QoS-Profile-Id', 1},
     {'AVP', {0, '*'}}];
avp_arity('QoS-Parameters') -> [{'AVP', {0, '*'}}];
avp_arity('Excess-Treatment') ->
    [{'Treatment-Action', 1},
     {'QoS-Profile-Template', {0, 1}},
     {'QoS-Parameters', {0, 1}},
     {'AVP', {0, '*'}}];
avp_arity('QoS-Capability') ->
    [{'QoS-Profile-Template', {1, '*'}}, {'AVP', {0, '*'}}];
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

avp_arity('QoS-Resources', 'Filter-Rule') -> {1, '*'};
avp_arity('QoS-Resources', 'AVP') -> {0, '*'};
avp_arity('Filter-Rule', 'Filter-Rule-Precedence') ->
    {0, 1};
avp_arity('Filter-Rule', 'Classifier') -> {0, 1};
avp_arity('Filter-Rule', 'Time-Of-Day-Condition') ->
    {0, '*'};
avp_arity('Filter-Rule', 'Treatment-Action') -> {0, 1};
avp_arity('Filter-Rule', 'QoS-Semantics') -> {0, 1};
avp_arity('Filter-Rule', 'QoS-Profile-Template') ->
    {0, 1};
avp_arity('Filter-Rule', 'QoS-Parameters') -> {0, 1};
avp_arity('Filter-Rule', 'Excess-Treatment') -> {0, 1};
avp_arity('Filter-Rule', 'AVP') -> {0, '*'};
avp_arity('Classifier', 'Classifier-ID') -> 1;
avp_arity('Classifier', 'Protocol') -> {0, 1};
avp_arity('Classifier', 'Direction') -> {0, 1};
avp_arity('Classifier', 'From-Spec') -> {0, '*'};
avp_arity('Classifier', 'To-Spec') -> {0, '*'};
avp_arity('Classifier', 'Diffserv-Code-Point') ->
    {0, '*'};
avp_arity('Classifier', 'Fragmentation-Flag') -> {0, 1};
avp_arity('Classifier', 'IP-Option') -> {0, '*'};
avp_arity('Classifier', 'TCP-Option') -> {0, '*'};
avp_arity('Classifier', 'TCP-Flags') -> {0, 1};
avp_arity('Classifier', 'ICMP-Type') -> {0, '*'};
avp_arity('Classifier', 'ETH-Option') -> {0, '*'};
avp_arity('Classifier', 'AVP') -> {0, '*'};
avp_arity('From-Spec', 'IP-Address') -> {0, '*'};
avp_arity('From-Spec', 'IP-Address-Range') -> {0, '*'};
avp_arity('From-Spec', 'IP-Address-Mask') -> {0, '*'};
avp_arity('From-Spec', 'MAC-Address') -> {0, '*'};
avp_arity('From-Spec', 'MAC-Address-Mask') -> {0, '*'};
avp_arity('From-Spec', 'EUI64-Address') -> {0, '*'};
avp_arity('From-Spec', 'EUI64-Address-Mask') ->
    {0, '*'};
avp_arity('From-Spec', 'Port') -> {0, '*'};
avp_arity('From-Spec', 'Port-Range') -> {0, '*'};
avp_arity('From-Spec', 'Negated') -> {0, 1};
avp_arity('From-Spec', 'Use-Assigned-Address') ->
    {0, 1};
avp_arity('From-Spec', 'AVP') -> {0, '*'};
avp_arity('To-Spec', 'IP-Address') -> {0, '*'};
avp_arity('To-Spec', 'IP-Address-Range') -> {0, '*'};
avp_arity('To-Spec', 'IP-Address-Mask') -> {0, '*'};
avp_arity('To-Spec', 'MAC-Address') -> {0, '*'};
avp_arity('To-Spec', 'MAC-Address-Mask') -> {0, '*'};
avp_arity('To-Spec', 'EUI64-Address') -> {0, '*'};
avp_arity('To-Spec', 'EUI64-Address-Mask') -> {0, '*'};
avp_arity('To-Spec', 'Port') -> {0, '*'};
avp_arity('To-Spec', 'Port-Range') -> {0, '*'};
avp_arity('To-Spec', 'Negated') -> {0, 1};
avp_arity('To-Spec', 'Use-Assigned-Address') -> {0, 1};
avp_arity('To-Spec', 'AVP') -> {0, '*'};
avp_arity('IP-Address-Range', 'IP-Address-Start') ->
    {0, 1};
avp_arity('IP-Address-Range', 'IP-Address-End') ->
    {0, 1};
avp_arity('IP-Address-Range', 'AVP') -> {0, '*'};
avp_arity('IP-Address-Mask', 'IP-Address') -> 1;
avp_arity('IP-Address-Mask',
          'IP-Mask-Bit-Mask-Width') ->
    1;
avp_arity('IP-Address-Mask', 'AVP') -> {0, '*'};
avp_arity('MAC-Address-Mask', 'MAC-Address') -> 1;
avp_arity('MAC-Address-Mask',
          'MAC-Address-Mask-Pattern') ->
    1;
avp_arity('MAC-Address-Mask', 'AVP') -> {0, '*'};
avp_arity('EUI64-Address-Mask', 'EUI64-Address') -> 1;
avp_arity('EUI64-Address-Mask',
          'EUI64-Address-Mask-Pattern') ->
    1;
avp_arity('EUI64-Address-Mask', 'AVP') -> {0, '*'};
avp_arity('Port-Range', 'Port-Start') -> {0, 1};
avp_arity('Port-Range', 'Port-End') -> {0, 1};
avp_arity('Port-Range', 'AVP') -> {0, '*'};
avp_arity('IP-Option', 'IP-Option-Type') -> 1;
avp_arity('IP-Option', 'IP-Option-Value') -> {0, '*'};
avp_arity('IP-Option', 'Negated') -> {0, 1};
avp_arity('IP-Option', 'AVP') -> {0, '*'};
avp_arity('TCP-Option', 'TCP-Option-Type') -> 1;
avp_arity('TCP-Option', 'TCP-Option-Value') -> {0, '*'};
avp_arity('TCP-Option', 'Negated') -> {0, 1};
avp_arity('TCP-Option', 'AVP') -> {0, '*'};
avp_arity('TCP-Flags', 'TCP-Flag-Type') -> 1;
avp_arity('TCP-Flags', 'Negated') -> {0, 1};
avp_arity('TCP-Flags', 'AVP') -> {0, '*'};
avp_arity('ICMP-Type', 'ICMP-Type-Number') -> 1;
avp_arity('ICMP-Type', 'ICMP-Code') -> {0, '*'};
avp_arity('ICMP-Type', 'Negated') -> {0, 1};
avp_arity('ICMP-Type', 'AVP') -> {0, '*'};
avp_arity('ETH-Option', 'ETH-Proto-Type') -> 1;
avp_arity('ETH-Option', 'VLAN-ID-Range') -> {0, '*'};
avp_arity('ETH-Option', 'User-Priority-Range') ->
    {0, '*'};
avp_arity('ETH-Option', 'AVP') -> {0, '*'};
avp_arity('ETH-Proto-Type', 'ETH-Ether-Type') ->
    {0, '*'};
avp_arity('ETH-Proto-Type', 'ETH-SAP') -> {0, '*'};
avp_arity('ETH-Proto-Type', 'AVP') -> {0, '*'};
avp_arity('VLAN-ID-Range', 'S-VID-Start') -> {0, 1};
avp_arity('VLAN-ID-Range', 'S-VID-End') -> {0, 1};
avp_arity('VLAN-ID-Range', 'C-VID-Start') -> {0, 1};
avp_arity('VLAN-ID-Range', 'C-VID-End') -> {0, 1};
avp_arity('VLAN-ID-Range', 'AVP') -> {0, '*'};
avp_arity('User-Priority-Range', 'Low-User-Priority') ->
    {0, '*'};
avp_arity('User-Priority-Range',
          'High-User-Priority') ->
    {0, '*'};
avp_arity('User-Priority-Range', 'AVP') -> {0, '*'};
avp_arity('Time-Of-Day-Condition',
          'Time-Of-Day-Start') ->
    {0, 1};
avp_arity('Time-Of-Day-Condition', 'Time-Of-Day-End') ->
    {0, 1};
avp_arity('Time-Of-Day-Condition',
          'Day-Of-Week-Mask') ->
    {0, 1};
avp_arity('Time-Of-Day-Condition',
          'Day-Of-Month-Mask') ->
    {0, 1};
avp_arity('Time-Of-Day-Condition',
          'Month-Of-Year-Mask') ->
    {0, 1};
avp_arity('Time-Of-Day-Condition',
          'Absolute-Start-Time') ->
    {0, 1};
avp_arity('Time-Of-Day-Condition',
          'Absolute-End-Time') ->
    {0, 1};
avp_arity('Time-Of-Day-Condition', 'Timezone-Flag') ->
    {0, 1};
avp_arity('Time-Of-Day-Condition', 'AVP') -> {0, '*'};
avp_arity('QoS-Profile-Template', 'Vendor-Id') -> 1;
avp_arity('QoS-Profile-Template', 'QoS-Profile-Id') ->
    1;
avp_arity('QoS-Profile-Template', 'AVP') -> {0, '*'};
avp_arity('QoS-Parameters', 'AVP') -> {0, '*'};
avp_arity('Excess-Treatment', 'Treatment-Action') -> 1;
avp_arity('Excess-Treatment', 'QoS-Profile-Template') ->
    {0, 1};
avp_arity('Excess-Treatment', 'QoS-Parameters') ->
    {0, 1};
avp_arity('Excess-Treatment', 'AVP') -> {0, '*'};
avp_arity('QoS-Capability', 'QoS-Profile-Template') ->
    {1, '*'};
avp_arity('QoS-Capability', 'AVP') -> {0, '*'};
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

avp_header('Absolute-End-Fractional-Seconds') ->
    {569, 0, undefined};
avp_header('Absolute-End-Time') -> {568, 0, undefined};
avp_header('Absolute-Start-Fractional-Seconds') ->
    {567, 0, undefined};
avp_header('Absolute-Start-Time') ->
    {566, 0, undefined};
avp_header('C-VID-End') -> {556, 0, undefined};
avp_header('C-VID-Start') -> {555, 0, undefined};
avp_header('Classifier') -> {511, 0, undefined};
avp_header('Classifier-ID') -> {512, 0, undefined};
avp_header('Day-Of-Month-Mask') -> {564, 0, undefined};
avp_header('Day-Of-Week-Mask') -> {563, 0, undefined};
avp_header('Diffserv-Code-Point') ->
    {535, 0, undefined};
avp_header('Direction') -> {514, 0, undefined};
avp_header('ETH-Ether-Type') -> {550, 0, undefined};
avp_header('ETH-Option') -> {548, 0, undefined};
avp_header('ETH-Proto-Type') -> {549, 0, undefined};
avp_header('ETH-SAP') -> {551, 0, undefined};
avp_header('EUI64-Address') -> {527, 0, undefined};
avp_header('EUI64-Address-Mask') -> {528, 0, undefined};
avp_header('EUI64-Address-Mask-Pattern') ->
    {529, 0, undefined};
avp_header('Excess-Treatment') -> {577, 0, undefined};
avp_header('Filter-Rule') -> {509, 0, undefined};
avp_header('Filter-Rule-Precedence') ->
    {510, 0, undefined};
avp_header('Fragmentation-Flag') -> {536, 0, undefined};
avp_header('From-Spec') -> {515, 0, undefined};
avp_header('High-User-Priority') -> {559, 0, undefined};
avp_header('ICMP-Code') -> {547, 0, undefined};
avp_header('ICMP-Type') -> {545, 0, undefined};
avp_header('ICMP-Type-Number') -> {546, 0, undefined};
avp_header('IP-Address') -> {518, 0, undefined};
avp_header('IP-Address-End') -> {521, 0, undefined};
avp_header('IP-Address-Mask') -> {522, 0, undefined};
avp_header('IP-Address-Range') -> {519, 0, undefined};
avp_header('IP-Address-Start') -> {520, 0, undefined};
avp_header('IP-Mask-Bit-Mask-Width') ->
    {523, 0, undefined};
avp_header('IP-Option') -> {537, 0, undefined};
avp_header('IP-Option-Type') -> {538, 0, undefined};
avp_header('IP-Option-Value') -> {539, 0, undefined};
avp_header('Low-User-Priority') -> {558, 0, undefined};
avp_header('MAC-Address') -> {524, 0, undefined};
avp_header('MAC-Address-Mask') -> {525, 0, undefined};
avp_header('MAC-Address-Mask-Pattern') ->
    {526, 0, undefined};
avp_header('Month-Of-Year-Mask') -> {565, 0, undefined};
avp_header('Negated') -> {517, 0, undefined};
avp_header('Port') -> {530, 0, undefined};
avp_header('Port-End') -> {533, 0, undefined};
avp_header('Port-Range') -> {531, 0, undefined};
avp_header('Port-Start') -> {532, 0, undefined};
avp_header('Protocol') -> {513, 0, undefined};
avp_header('QoS-Capability') -> {578, 0, undefined};
avp_header('QoS-Parameters') -> {576, 0, undefined};
avp_header('QoS-Profile-Id') -> {573, 0, undefined};
avp_header('QoS-Profile-Template') ->
    {574, 0, undefined};
avp_header('QoS-Resources') -> {508, 0, undefined};
avp_header('QoS-Semantics') -> {575, 0, undefined};
avp_header('S-VID-End') -> {554, 0, undefined};
avp_header('S-VID-Start') -> {553, 0, undefined};
avp_header('TCP-Flag-Type') -> {544, 0, undefined};
avp_header('TCP-Flags') -> {543, 0, undefined};
avp_header('TCP-Option') -> {540, 0, undefined};
avp_header('TCP-Option-Type') -> {541, 0, undefined};
avp_header('TCP-Option-Value') -> {542, 0, undefined};
avp_header('Time-Of-Day-Condition') ->
    {560, 0, undefined};
avp_header('Time-Of-Day-End') -> {562, 0, undefined};
avp_header('Time-Of-Day-Start') -> {561, 0, undefined};
avp_header('Timezone-Flag') -> {570, 0, undefined};
avp_header('Timezone-Offset') -> {571, 0, undefined};
avp_header('To-Spec') -> {516, 0, undefined};
avp_header('Treatment-Action') -> {572, 0, undefined};
avp_header('Use-Assigned-Address') ->
    {534, 0, undefined};
avp_header('User-Priority-Range') ->
    {557, 0, undefined};
avp_header('VLAN-ID-Range') -> {552, 0, undefined};
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
avp_header(_) -> erlang:error(badarg).

avp(T, Data, 'Absolute-End-Fractional-Seconds', Opts) ->
    diameter_types:'Unsigned32'(T, Data, Opts);
avp(T, Data, 'Absolute-End-Time', Opts) ->
    diameter_types:'Time'(T, Data, Opts);
avp(T, Data, 'Absolute-Start-Fractional-Seconds',
    Opts) ->
    diameter_types:'Unsigned32'(T, Data, Opts);
avp(T, Data, 'Absolute-Start-Time', Opts) ->
    diameter_types:'Time'(T, Data, Opts);
avp(T, Data, 'C-VID-End', Opts) ->
    diameter_types:'Unsigned32'(T, Data, Opts);
avp(T, Data, 'C-VID-Start', Opts) ->
    diameter_types:'Unsigned32'(T, Data, Opts);
avp(T, Data, 'Classifier', Opts) ->
    grouped_avp(T, 'Classifier', Data, Opts);
avp(T, Data, 'Classifier-ID', Opts) ->
    diameter_types:'OctetString'(T, Data, Opts);
avp(T, Data, 'Day-Of-Month-Mask', Opts) ->
    diameter_types:'Unsigned32'(T, Data, Opts);
avp(T, Data, 'Day-Of-Week-Mask', Opts) ->
    diameter_types:'Unsigned32'(T, Data, Opts);
avp(T, Data, 'Diffserv-Code-Point', _) ->
    enumerated_avp(T, 'Diffserv-Code-Point', Data);
avp(T, Data, 'Direction', _) ->
    enumerated_avp(T, 'Direction', Data);
avp(T, Data, 'ETH-Ether-Type', Opts) ->
    diameter_types:'OctetString'(T, Data, Opts);
avp(T, Data, 'ETH-Option', Opts) ->
    grouped_avp(T, 'ETH-Option', Data, Opts);
avp(T, Data, 'ETH-Proto-Type', Opts) ->
    grouped_avp(T, 'ETH-Proto-Type', Data, Opts);
avp(T, Data, 'ETH-SAP', Opts) ->
    diameter_types:'OctetString'(T, Data, Opts);
avp(T, Data, 'EUI64-Address', Opts) ->
    diameter_types:'OctetString'(T, Data, Opts);
avp(T, Data, 'EUI64-Address-Mask', Opts) ->
    grouped_avp(T, 'EUI64-Address-Mask', Data, Opts);
avp(T, Data, 'EUI64-Address-Mask-Pattern', Opts) ->
    diameter_types:'OctetString'(T, Data, Opts);
avp(T, Data, 'Excess-Treatment', Opts) ->
    grouped_avp(T, 'Excess-Treatment', Data, Opts);
avp(T, Data, 'Filter-Rule', Opts) ->
    grouped_avp(T, 'Filter-Rule', Data, Opts);
avp(T, Data, 'Filter-Rule-Precedence', Opts) ->
    diameter_types:'Unsigned32'(T, Data, Opts);
avp(T, Data, 'Fragmentation-Flag', _) ->
    enumerated_avp(T, 'Fragmentation-Flag', Data);
avp(T, Data, 'From-Spec', Opts) ->
    grouped_avp(T, 'From-Spec', Data, Opts);
avp(T, Data, 'High-User-Priority', Opts) ->
    diameter_types:'Unsigned32'(T, Data, Opts);
avp(T, Data, 'ICMP-Code', _) ->
    enumerated_avp(T, 'ICMP-Code', Data);
avp(T, Data, 'ICMP-Type', Opts) ->
    grouped_avp(T, 'ICMP-Type', Data, Opts);
avp(T, Data, 'ICMP-Type-Number', _) ->
    enumerated_avp(T, 'ICMP-Type-Number', Data);
avp(T, Data, 'IP-Address', Opts) ->
    diameter_types:'Address'(T, Data, Opts);
avp(T, Data, 'IP-Address-End', Opts) ->
    diameter_types:'Address'(T, Data, Opts);
avp(T, Data, 'IP-Address-Mask', Opts) ->
    grouped_avp(T, 'IP-Address-Mask', Data, Opts);
avp(T, Data, 'IP-Address-Range', Opts) ->
    grouped_avp(T, 'IP-Address-Range', Data, Opts);
avp(T, Data, 'IP-Address-Start', Opts) ->
    diameter_types:'Address'(T, Data, Opts);
avp(T, Data, 'IP-Mask-Bit-Mask-Width', Opts) ->
    diameter_types:'Unsigned32'(T, Data, Opts);
avp(T, Data, 'IP-Option', Opts) ->
    grouped_avp(T, 'IP-Option', Data, Opts);
avp(T, Data, 'IP-Option-Type', _) ->
    enumerated_avp(T, 'IP-Option-Type', Data);
avp(T, Data, 'IP-Option-Value', Opts) ->
    diameter_types:'OctetString'(T, Data, Opts);
avp(T, Data, 'Low-User-Priority', Opts) ->
    diameter_types:'Unsigned32'(T, Data, Opts);
avp(T, Data, 'MAC-Address', Opts) ->
    diameter_types:'OctetString'(T, Data, Opts);
avp(T, Data, 'MAC-Address-Mask', Opts) ->
    grouped_avp(T, 'MAC-Address-Mask', Data, Opts);
avp(T, Data, 'MAC-Address-Mask-Pattern', Opts) ->
    diameter_types:'OctetString'(T, Data, Opts);
avp(T, Data, 'Month-Of-Year-Mask', Opts) ->
    diameter_types:'Unsigned32'(T, Data, Opts);
avp(T, Data, 'Negated', _) ->
    enumerated_avp(T, 'Negated', Data);
avp(T, Data, 'Port', Opts) ->
    diameter_types:'Integer32'(T, Data, Opts);
avp(T, Data, 'Port-End', Opts) ->
    diameter_types:'Integer32'(T, Data, Opts);
avp(T, Data, 'Port-Range', Opts) ->
    grouped_avp(T, 'Port-Range', Data, Opts);
avp(T, Data, 'Port-Start', Opts) ->
    diameter_types:'Integer32'(T, Data, Opts);
avp(T, Data, 'Protocol', _) ->
    enumerated_avp(T, 'Protocol', Data);
avp(T, Data, 'QoS-Capability', Opts) ->
    grouped_avp(T, 'QoS-Capability', Data, Opts);
avp(T, Data, 'QoS-Parameters', Opts) ->
    grouped_avp(T, 'QoS-Parameters', Data, Opts);
avp(T, Data, 'QoS-Profile-Id', Opts) ->
    diameter_types:'Unsigned32'(T, Data, Opts);
avp(T, Data, 'QoS-Profile-Template', Opts) ->
    grouped_avp(T, 'QoS-Profile-Template', Data, Opts);
avp(T, Data, 'QoS-Resources', Opts) ->
    grouped_avp(T, 'QoS-Resources', Data, Opts);
avp(T, Data, 'QoS-Semantics', _) ->
    enumerated_avp(T, 'QoS-Semantics', Data);
avp(T, Data, 'S-VID-End', Opts) ->
    diameter_types:'Unsigned32'(T, Data, Opts);
avp(T, Data, 'S-VID-Start', Opts) ->
    diameter_types:'Unsigned32'(T, Data, Opts);
avp(T, Data, 'TCP-Flag-Type', Opts) ->
    diameter_types:'Unsigned32'(T, Data, Opts);
avp(T, Data, 'TCP-Flags', Opts) ->
    grouped_avp(T, 'TCP-Flags', Data, Opts);
avp(T, Data, 'TCP-Option', Opts) ->
    grouped_avp(T, 'TCP-Option', Data, Opts);
avp(T, Data, 'TCP-Option-Type', _) ->
    enumerated_avp(T, 'TCP-Option-Type', Data);
avp(T, Data, 'TCP-Option-Value', Opts) ->
    diameter_types:'OctetString'(T, Data, Opts);
avp(T, Data, 'Time-Of-Day-Condition', Opts) ->
    grouped_avp(T, 'Time-Of-Day-Condition', Data, Opts);
avp(T, Data, 'Time-Of-Day-End', Opts) ->
    diameter_types:'Unsigned32'(T, Data, Opts);
avp(T, Data, 'Time-Of-Day-Start', Opts) ->
    diameter_types:'Unsigned32'(T, Data, Opts);
avp(T, Data, 'Timezone-Flag', _) ->
    enumerated_avp(T, 'Timezone-Flag', Data);
avp(T, Data, 'Timezone-Offset', Opts) ->
    diameter_types:'Integer32'(T, Data, Opts);
avp(T, Data, 'To-Spec', Opts) ->
    grouped_avp(T, 'To-Spec', Data, Opts);
avp(T, Data, 'Treatment-Action', _) ->
    enumerated_avp(T, 'Treatment-Action', Data);
avp(T, Data, 'Use-Assigned-Address', _) ->
    enumerated_avp(T, 'Use-Assigned-Address', Data);
avp(T, Data, 'User-Priority-Range', Opts) ->
    grouped_avp(T, 'User-Priority-Range', Data, Opts);
avp(T, Data, 'VLAN-ID-Range', Opts) ->
    grouped_avp(T, 'VLAN-ID-Range', Data, Opts);
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
avp(_, _, _, _) -> erlang:error(badarg).

enumerated_avp(decode, 'Protocol', <<0, 0, 0, 0>>) -> 0;
enumerated_avp(encode, 'Protocol', 0) -> <<0, 0, 0, 0>>;
enumerated_avp(decode, 'Direction', <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'Direction', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'Direction', <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'Direction', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'Direction', <<0, 0, 0, 2>>) ->
    2;
enumerated_avp(encode, 'Direction', 2) ->
    <<0, 0, 0, 2>>;
enumerated_avp(decode, 'Negated', <<0, 0, 0, 0>>) -> 0;
enumerated_avp(encode, 'Negated', 0) -> <<0, 0, 0, 0>>;
enumerated_avp(decode, 'Negated', <<0, 0, 0, 1>>) -> 1;
enumerated_avp(encode, 'Negated', 1) -> <<0, 0, 0, 1>>;
enumerated_avp(decode, 'Use-Assigned-Address',
               <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'Use-Assigned-Address', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'Use-Assigned-Address',
               <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'Use-Assigned-Address', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'Diffserv-Code-Point',
               <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'Diffserv-Code-Point', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'Fragmentation-Flag',
               <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'Fragmentation-Flag', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'Fragmentation-Flag',
               <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'Fragmentation-Flag', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'IP-Option-Type',
               <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'IP-Option-Type', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'TCP-Option-Type',
               <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'TCP-Option-Type', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'ICMP-Type-Number',
               <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'ICMP-Type-Number', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'ICMP-Code', <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'ICMP-Code', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'Timezone-Flag',
               <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'Timezone-Flag', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'Timezone-Flag',
               <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'Timezone-Flag', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'Timezone-Flag',
               <<0, 0, 0, 2>>) ->
    2;
enumerated_avp(encode, 'Timezone-Flag', 2) ->
    <<0, 0, 0, 2>>;
enumerated_avp(decode, 'Treatment-Action',
               <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'Treatment-Action', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'Treatment-Action',
               <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'Treatment-Action', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'Treatment-Action',
               <<0, 0, 0, 2>>) ->
    2;
enumerated_avp(encode, 'Treatment-Action', 2) ->
    <<0, 0, 0, 2>>;
enumerated_avp(decode, 'Treatment-Action',
               <<0, 0, 0, 3>>) ->
    3;
enumerated_avp(encode, 'Treatment-Action', 3) ->
    <<0, 0, 0, 3>>;
enumerated_avp(decode, 'QoS-Semantics',
               <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'QoS-Semantics', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'QoS-Semantics',
               <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'QoS-Semantics', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'QoS-Semantics',
               <<0, 0, 0, 2>>) ->
    2;
enumerated_avp(encode, 'QoS-Semantics', 2) ->
    <<0, 0, 0, 2>>;
enumerated_avp(decode, 'QoS-Semantics',
               <<0, 0, 0, 3>>) ->
    3;
enumerated_avp(encode, 'QoS-Semantics', 3) ->
    <<0, 0, 0, 3>>;
enumerated_avp(decode, 'QoS-Semantics',
               <<0, 0, 0, 4>>) ->
    4;
enumerated_avp(encode, 'QoS-Semantics', 4) ->
    <<0, 0, 0, 4>>;
enumerated_avp(_, _, _) -> erlang:error(badarg).

empty_value('QoS-Resources', Opts) ->
    empty_group('QoS-Resources', Opts);
empty_value('Filter-Rule', Opts) ->
    empty_group('Filter-Rule', Opts);
empty_value('Classifier', Opts) ->
    empty_group('Classifier', Opts);
empty_value('From-Spec', Opts) ->
    empty_group('From-Spec', Opts);
empty_value('To-Spec', Opts) ->
    empty_group('To-Spec', Opts);
empty_value('IP-Address-Range', Opts) ->
    empty_group('IP-Address-Range', Opts);
empty_value('IP-Address-Mask', Opts) ->
    empty_group('IP-Address-Mask', Opts);
empty_value('MAC-Address-Mask', Opts) ->
    empty_group('MAC-Address-Mask', Opts);
empty_value('EUI64-Address-Mask', Opts) ->
    empty_group('EUI64-Address-Mask', Opts);
empty_value('Port-Range', Opts) ->
    empty_group('Port-Range', Opts);
empty_value('IP-Option', Opts) ->
    empty_group('IP-Option', Opts);
empty_value('TCP-Option', Opts) ->
    empty_group('TCP-Option', Opts);
empty_value('TCP-Flags', Opts) ->
    empty_group('TCP-Flags', Opts);
empty_value('ICMP-Type', Opts) ->
    empty_group('ICMP-Type', Opts);
empty_value('ETH-Option', Opts) ->
    empty_group('ETH-Option', Opts);
empty_value('ETH-Proto-Type', Opts) ->
    empty_group('ETH-Proto-Type', Opts);
empty_value('VLAN-ID-Range', Opts) ->
    empty_group('VLAN-ID-Range', Opts);
empty_value('User-Priority-Range', Opts) ->
    empty_group('User-Priority-Range', Opts);
empty_value('Time-Of-Day-Condition', Opts) ->
    empty_group('Time-Of-Day-Condition', Opts);
empty_value('QoS-Profile-Template', Opts) ->
    empty_group('QoS-Profile-Template', Opts);
empty_value('QoS-Parameters', Opts) ->
    empty_group('QoS-Parameters', Opts);
empty_value('Excess-Treatment', Opts) ->
    empty_group('Excess-Treatment', Opts);
empty_value('QoS-Capability', Opts) ->
    empty_group('QoS-Capability', Opts);
empty_value('Proxy-Info', Opts) ->
    empty_group('Proxy-Info', Opts);
empty_value('Failed-AVP', Opts) ->
    empty_group('Failed-AVP', Opts);
empty_value('Experimental-Result', Opts) ->
    empty_group('Experimental-Result', Opts);
empty_value('Vendor-Specific-Application-Id', Opts) ->
    empty_group('Vendor-Specific-Application-Id', Opts);
empty_value('Protocol', _) -> <<0, 0, 0, 0>>;
empty_value('Direction', _) -> <<0, 0, 0, 0>>;
empty_value('Negated', _) -> <<0, 0, 0, 0>>;
empty_value('Use-Assigned-Address', _) ->
    <<0, 0, 0, 0>>;
empty_value('Diffserv-Code-Point', _) -> <<0, 0, 0, 0>>;
empty_value('Fragmentation-Flag', _) -> <<0, 0, 0, 0>>;
empty_value('IP-Option-Type', _) -> <<0, 0, 0, 0>>;
empty_value('TCP-Option-Type', _) -> <<0, 0, 0, 0>>;
empty_value('ICMP-Type-Number', _) -> <<0, 0, 0, 0>>;
empty_value('ICMP-Code', _) -> <<0, 0, 0, 0>>;
empty_value('Timezone-Flag', _) -> <<0, 0, 0, 0>>;
empty_value('Treatment-Action', _) -> <<0, 0, 0, 0>>;
empty_value('QoS-Semantics', _) -> <<0, 0, 0, 0>>;
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
      [{"Absolute-End-Fractional-Seconds",
        569,
        "Unsigned32",
        []},
       {"Absolute-End-Time", 568, "Time", []},
       {"Absolute-Start-Fractional-Seconds",
        567,
        "Unsigned32",
        []},
       {"Absolute-Start-Time", 566, "Time", []},
       {"C-VID-End", 556, "Unsigned32", []},
       {"C-VID-Start", 555, "Unsigned32", []},
       {"Classifier", 511, "Grouped", []},
       {"Classifier-ID", 512, "OctetString", []},
       {"Day-Of-Month-Mask", 564, "Unsigned32", []},
       {"Day-Of-Week-Mask", 563, "Unsigned32", []},
       {"Diffserv-Code-Point", 535, "Enumerated", []},
       {"Direction", 514, "Enumerated", []},
       {"ETH-Ether-Type", 550, "OctetString", []},
       {"ETH-Option", 548, "Grouped", []},
       {"ETH-Proto-Type", 549, "Grouped", []},
       {"ETH-SAP", 551, "OctetString", []},
       {"EUI64-Address", 527, "OctetString", []},
       {"EUI64-Address-Mask", 528, "Grouped", []},
       {"EUI64-Address-Mask-Pattern", 529, "OctetString", []},
       {"Excess-Treatment", 577, "Grouped", []},
       {"Filter-Rule", 509, "Grouped", []},
       {"Filter-Rule-Precedence", 510, "Unsigned32", []},
       {"Fragmentation-Flag", 536, "Enumerated", []},
       {"From-Spec", 515, "Grouped", []},
       {"High-User-Priority", 559, "Unsigned32", []},
       {"ICMP-Code", 547, "Enumerated", []},
       {"ICMP-Type", 545, "Grouped", []},
       {"ICMP-Type-Number", 546, "Enumerated", []},
       {"IP-Address", 518, "Address", []},
       {"IP-Address-End", 521, "Address", []},
       {"IP-Address-Mask", 522, "Grouped", []},
       {"IP-Address-Range", 519, "Grouped", []},
       {"IP-Address-Start", 520, "Address", []},
       {"IP-Mask-Bit-Mask-Width", 523, "Unsigned32", []},
       {"IP-Option", 537, "Grouped", []},
       {"IP-Option-Type", 538, "Enumerated", []},
       {"IP-Option-Value", 539, "OctetString", []},
       {"Low-User-Priority", 558, "Unsigned32", []},
       {"MAC-Address", 524, "OctetString", []},
       {"MAC-Address-Mask", 525, "Grouped", []},
       {"MAC-Address-Mask-Pattern", 526, "OctetString", []},
       {"Month-Of-Year-Mask", 565, "Unsigned32", []},
       {"Negated", 517, "Enumerated", []},
       {"Port", 530, "Integer32", []},
       {"Port-End", 533, "Integer32", []},
       {"Port-Range", 531, "Grouped", []},
       {"Port-Start", 532, "Integer32", []},
       {"Protocol", 513, "Enumerated", []},
       {"QoS-Capability", 578, "Grouped", []},
       {"QoS-Parameters", 576, "Grouped", []},
       {"QoS-Profile-Id", 573, "Unsigned32", []},
       {"QoS-Profile-Template", 574, "Grouped", []},
       {"QoS-Resources", 508, "Grouped", []},
       {"QoS-Semantics", 575, "Enumerated", []},
       {"S-VID-End", 554, "Unsigned32", []},
       {"S-VID-Start", 553, "Unsigned32", []},
       {"TCP-Flag-Type", 544, "Unsigned32", []},
       {"TCP-Flags", 543, "Grouped", []},
       {"TCP-Option", 540, "Grouped", []},
       {"TCP-Option-Type", 541, "Enumerated", []},
       {"TCP-Option-Value", 542, "OctetString", []},
       {"Time-Of-Day-Condition", 560, "Grouped", []},
       {"Time-Of-Day-End", 562, "Unsigned32", []},
       {"Time-Of-Day-Start", 561, "Unsigned32", []},
       {"Timezone-Flag", 570, "Enumerated", []},
       {"Timezone-Offset", 571, "Integer32", []},
       {"To-Spec", 516, "Grouped", []},
       {"Treatment-Action", 572, "Enumerated", []},
       {"Use-Assigned-Address", 534, "Enumerated", []},
       {"User-Priority-Range", 557, "Grouped", []},
       {"VLAN-ID-Range", 552, "Grouped", []}]},
     {avp_vendor_id, []},
     {codecs, []},
     {command_codes, []},
     {custom_types, []},
     {define, []},
     {enum,
      [{"Protocol", [{"PROTOCOL_TODO_CHECK_RFC2780", 0}]},
       {"Direction",
        [{"DIRECTION_IN", 0},
         {"DIRECTION_OUT", 1},
         {"DIRECTION_BOTH", 2}]},
       {"Negated",
        [{"NEGATED_FALSE", 0}, {"NEGATED_TRUE", 1}]},
       {"Use-Assigned-Address",
        [{"USE_ASSIGNED_ADDRESS_FALSE", 0},
         {"USE_ASSIGNED_ADDRESS_TRUE", 1}]},
       {"Diffserv-Code-Point",
        [{"DIFFSERV_CODE_POINT_TODO_CHECK_RFC2474", 0}]},
       {"Fragmentation-Flag",
        [{"FRAGMENTATION_FLAG_DF", 0},
         {"FRAGMENTATION_FLAG_MF", 1}]},
       {"IP-Option-Type",
        [{"IP_OPTION_TYPE_TODO_CHECK_RFC2780", 0}]},
       {"TCP-Option-Type",
        [{"TCP_OPTION_TYPE_TODO_CHECK_RFC2780", 0}]},
       {"ICMP-Type-Number",
        [{"ICMP_TYPE_NUMBER_TODO_CHECK_RFC2780", 0}]},
       {"ICMP-Code", [{"ICMP_CODE_TODO_CHECK_RFC2780", 0}]},
       {"Timezone-Flag",
        [{"TIMEZOME_FLAG_UTC", 0},
         {"TIMEZOME_FLAG_LOCAL", 1},
         {"TIMEZOME_FLAG_OFFSET", 2}]},
       {"Treatment-Action",
        [{"TREATMENT_ACTION_DROP", 0},
         {"TREATMENT_ACTION_SHAPE", 1},
         {"TREATMENT_ACTION_MARK", 2},
         {"TREATMENT_ACTION_PERMIT", 3}]},
       {"QoS-Semantics",
        [{"QOS_SEMANTICS_DESIRED", 0},
         {"QOS_SEMANTICS_AVAILABLE", 1},
         {"QOS_SEMANTICS_DELIVERED", 2},
         {"QOS_SEMANTICS_MINIMUM", 3},
         {"QOS_SEMANTICS_AUTHORIZE", 4}]}]},
     {grouped,
      [{"QoS-Resources",
        508,
        [],
        [{'*', {"Filter-Rule"}}, {'*', ["AVP"]}]},
       {"Filter-Rule",
        509,
        [],
        [["Filter-Rule-Precedence"],
         ["Classifier"],
         {'*', ["Time-Of-Day-Condition"]},
         ["Treatment-Action"],
         ["QoS-Semantics"],
         ["QoS-Profile-Template"],
         ["QoS-Parameters"],
         ["Excess-Treatment"],
         {'*', ["AVP"]}]},
       {"Classifier",
        511,
        [],
        [{"Classifier-ID"},
         ["Protocol"],
         ["Direction"],
         {'*', ["From-Spec"]},
         {'*', ["To-Spec"]},
         {'*', ["Diffserv-Code-Point"]},
         ["Fragmentation-Flag"],
         {'*', ["IP-Option"]},
         {'*', ["TCP-Option"]},
         ["TCP-Flags"],
         {'*', ["ICMP-Type"]},
         {'*', ["ETH-Option"]},
         {'*', ["AVP"]}]},
       {"From-Spec",
        515,
        [],
        [{'*', ["IP-Address"]},
         {'*', ["IP-Address-Range"]},
         {'*', ["IP-Address-Mask"]},
         {'*', ["MAC-Address"]},
         {'*', ["MAC-Address-Mask"]},
         {'*', ["EUI64-Address"]},
         {'*', ["EUI64-Address-Mask"]},
         {'*', ["Port"]},
         {'*', ["Port-Range"]},
         ["Negated"],
         ["Use-Assigned-Address"],
         {'*', ["AVP"]}]},
       {"To-Spec",
        516,
        [],
        [{'*', ["IP-Address"]},
         {'*', ["IP-Address-Range"]},
         {'*', ["IP-Address-Mask"]},
         {'*', ["MAC-Address"]},
         {'*', ["MAC-Address-Mask"]},
         {'*', ["EUI64-Address"]},
         {'*', ["EUI64-Address-Mask"]},
         {'*', ["Port"]},
         {'*', ["Port-Range"]},
         ["Negated"],
         ["Use-Assigned-Address"],
         {'*', ["AVP"]}]},
       {"IP-Address-Range",
        519,
        [],
        [["IP-Address-Start"],
         ["IP-Address-End"],
         {'*', ["AVP"]}]},
       {"IP-Address-Mask",
        522,
        [],
        [{"IP-Address"},
         {"IP-Mask-Bit-Mask-Width"},
         {'*', ["AVP"]}]},
       {"MAC-Address-Mask",
        525,
        [],
        [{"MAC-Address"},
         {"MAC-Address-Mask-Pattern"},
         {'*', ["AVP"]}]},
       {"EUI64-Address-Mask",
        528,
        [],
        [{"EUI64-Address"},
         {"EUI64-Address-Mask-Pattern"},
         {'*', ["AVP"]}]},
       {"Port-Range",
        531,
        [],
        [["Port-Start"], ["Port-End"], {'*', ["AVP"]}]},
       {"IP-Option",
        537,
        [],
        [{"IP-Option-Type"},
         {'*', ["IP-Option-Value"]},
         ["Negated"],
         {'*', ["AVP"]}]},
       {"TCP-Option",
        540,
        [],
        [{"TCP-Option-Type"},
         {'*', ["TCP-Option-Value"]},
         ["Negated"],
         {'*', ["AVP"]}]},
       {"TCP-Flags",
        543,
        [],
        [{"TCP-Flag-Type"}, ["Negated"], {'*', ["AVP"]}]},
       {"ICMP-Type",
        545,
        [],
        [{"ICMP-Type-Number"},
         {'*', ["ICMP-Code"]},
         ["Negated"],
         {'*', ["AVP"]}]},
       {"ETH-Option",
        548,
        [],
        [{"ETH-Proto-Type"},
         {'*', ["VLAN-ID-Range"]},
         {'*', ["User-Priority-Range"]},
         {'*', ["AVP"]}]},
       {"ETH-Proto-Type",
        549,
        [],
        [{'*', ["ETH-Ether-Type"]},
         {'*', ["ETH-SAP"]},
         {'*', ["AVP"]}]},
       {"VLAN-ID-Range",
        552,
        [],
        [["S-VID-Start"],
         ["S-VID-End"],
         ["C-VID-Start"],
         ["C-VID-End"],
         {'*', ["AVP"]}]},
       {"User-Priority-Range",
        557,
        [],
        [{'*', ["Low-User-Priority"]},
         {'*', ["High-User-Priority"]},
         {'*', ["AVP"]}]},
       {"Time-Of-Day-Condition",
        560,
        [],
        [["Time-Of-Day-Start"],
         ["Time-Of-Day-End"],
         ["Day-Of-Week-Mask"],
         ["Day-Of-Month-Mask"],
         ["Month-Of-Year-Mask"],
         ["Absolute-Start-Time"],
         ["Absolute-End-Time"],
         ["Timezone-Flag"],
         {'*', ["AVP"]}]},
       {"QoS-Profile-Template",
        574,
        [],
        [{"Vendor-Id"}, {"QoS-Profile-Id"}, {'*', ["AVP"]}]},
       {"QoS-Parameters", 576, [], [{'*', ["AVP"]}]},
       {"Excess-Treatment",
        577,
        [],
        [{"Treatment-Action"},
         ["QoS-Profile-Template"],
         ["QoS-Parameters"],
         {'*', ["AVP"]}]},
       {"QoS-Capability",
        578,
        [],
        [{'*', {"QoS-Profile-Template"}}, {'*', ["AVP"]}]}]},
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
          "M"}]}]},
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
     {inherits, [{"diameter_gen_base_rfc6733", []}]},
     {messages, []}].


