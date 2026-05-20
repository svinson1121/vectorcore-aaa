%% -------------------------------------------------------------------
%% This is a generated file.
%% -------------------------------------------------------------------

-module(diameter_3gpp_ts29_212).

-moduledoc(false).

-compile({parse_transform, diameter_exprecs}).

-compile(nowarn_unused_function).

-dialyzer(no_return).

-export_records([diameter_gx_CCR,
                 diameter_gx_CCA,
                 diameter_gx_RAR,
                 diameter_gx_RAA,
                 'diameter_gx_Access-Network-Charging-Identifier-Gx',
                 'diameter_gx_Allocation-Retention-Priority',
                 'diameter_gx_Application-Detection-Information',
                 'diameter_gx_Charging-Rule-Definition',
                 'diameter_gx_Charging-Rule-Install',
                 'diameter_gx_Charging-Rule-Remove',
                 'diameter_gx_Charging-Rule-Report',
                 'diameter_gx_CoA-Information',
                 'diameter_gx_Conditional-APN-Aggregate-Max-Bitrate',
                 'diameter_gx_Default-EPS-Bearer-QoS',
                 'diameter_gx_Default-QoS-Information',
                 'diameter_gx_Event-Report-Indication',
                 'diameter_gx_Fixed-User-Location-Info',
                 'diameter_gx_Flow-Information',
                 'diameter_gx_Packet-Filter-Information',
                 'diameter_gx_Presence-Reporting-Area-Information',
                 'diameter_gx_QoS-Information',
                 'diameter_gx_Redirect-Information',
                 'diameter_gx_Routing-Filter',
                 'diameter_gx_Routing-Rule-Definition',
                 'diameter_gx_Routing-Rule-Install',
                 'diameter_gx_Routing-Rule-Remove',
                 'diameter_gx_TDF-Information',
                 'diameter_gx_Tunnel-Information',
                 'diameter_gx_TFT-Packet-Filter-Information',
                 'diameter_gx_Usage-Monitoring-Information',
                 'diameter_gx_Proxy-Info',
                 'diameter_gx_Failed-AVP',
                 'diameter_gx_Experimental-Result',
                 'diameter_gx_Vendor-Specific-Application-Id',
                 'diameter_gx_Cost-Information',
                 'diameter_gx_Unit-Value',
                 'diameter_gx_Multiple-Services-Credit-Control',
                 'diameter_gx_Granted-Service-Unit',
                 'diameter_gx_Requested-Service-Unit',
                 'diameter_gx_Used-Service-Unit',
                 'diameter_gx_CC-Money',
                 'diameter_gx_G-S-U-Pool-Reference',
                 'diameter_gx_Final-Unit-Indication',
                 'diameter_gx_Redirect-Server',
                 'diameter_gx_Service-Parameter-Info',
                 'diameter_gx_Subscription-Id',
                 'diameter_gx_User-Equipment-Info',
                 diameter_gx_Flows,
                 'diameter_gx_Charging-Information',
                 'diameter_gx_Supported-Features',
                 'diameter_gx_Supported-Applications',
                 'diameter_gx_SIP-Auth-Data-Item',
                 'diameter_gx_Deregistration-Reason',
                 'diameter_gx_SIP-Digest-Authenticate']).

-record(diameter_gx_CCR,
        {'Session-Id',
         'Auth-Application-Id',
         'Origin-Host',
         'Origin-Realm',
         'Destination-Realm',
         'CC-Request-Type',
         'CC-Request-Number',
         'Credit-Management-Status' = [],
         'Destination-Host' = [],
         'Origin-State-Id' = [],
         'Subscription-Id' = [],
         'Supported-Features' = [],
         'TDF-Information' = [],
         'Network-Request-Support' = [],
         'Packet-Filter-Information' = [],
         'Packet-Filter-Operation' = [],
         'Bearer-Identifier' = [],
         'Bearer-Operation' = [],
         'Framed-IP-Address' = [],
         'Framed-IPv6-Prefix' = [],
         'IP-CAN-Type' = [],
         '3GPP-RAT-Type' = [],
         'RAT-Type' = [],
         'Termination-Cause' = [],
         'User-Equipment-Info' = [],
         'QoS-Information' = [],
         'QoS-Negotiation' = [],
         'QoS-Upgrade' = [],
         'Default-EPS-Bearer-QoS' = [],
         'Default-QoS-Information' = [],
         'AN-GW-Address' = [],
         'AN-GW-Status' = [],
         '3GPP-SGSN-MCC-MNC' = [],
         '3GPP-SGSN-Address' = [],
         '3GPP-SGSN-IPv6-Address' = [],
         '3GPP-GGSN-Address' = [],
         '3GPP-GGSN-IPv6-Address' = [],
         '3GPP-Selection-Mode' = [],
         'RAI' = [],
         '3GPP-User-Location-Info' = [],
         'User-Location-Info-Time' = [],
         'TWAN-Identifier' = [],
         '3GPP-MS-TimeZone' = [],
         'RAN-NAS-Release-Cause' = [],
         '3GPP-Charging-Characteristics' = [],
         'Called-Station-Id' = [],
         'PDN-Connection-ID' = [],
         'Bearer-Usage' = [],
         'Online' = [],
         'Offline' = [],
         'TFT-Packet-Filter-Information' = [],
         'Charging-Rule-Report' = [],
         'Application-Detection-Information' = [],
         'Event-Trigger' = [],
         'Event-Report-Indication' = [],
         'Access-Network-Charging-Address' = [],
         'Access-Network-Charging-Identifier-Gx' = [],
         'CoA-Information' = [],
         'Usage-Monitoring-Information' = [],
         'Routing-Rule-Install' = [],
         'Routing-Rule-Remove' = [],
         'HeNB-Local-IP-Address' = [],
         'UE-Local-IP-Address' = [],
         'UDP-Source-Port' = [],
         'Presence-Reporting-Area-Information' = [],
         'Logical-Access-ID' = [],
         'Physical-Access-ID' = [],
         'Proxy-Info' = [],
         'Route-Record' = [],
         'AVP' = []}).

-record(diameter_gx_CCA,
        {'Session-Id',
         'Auth-Application-Id',
         'Origin-Host',
         'Origin-Realm',
         'CC-Request-Type',
         'CC-Request-Number',
         'Result-Code' = [],
         'Experimental-Result' = [],
         'Supported-Features' = [],
         'Bearer-Control-Mode' = [],
         'Event-Trigger' = [],
         'Event-Report-Indication' = [],
         'Origin-State-Id' = [],
         'Redirect-Host' = [],
         'Redirect-Host-Usage' = [],
         'Redirect-Max-Cache-Time' = [],
         'Charging-Rule-Remove' = [],
         'Charging-Rule-Install' = [],
         'Charging-Information' = [],
         'Online' = [],
         'Offline' = [],
         'QoS-Information' = [],
         'Revalidation-Time' = [],
         'Default-EPS-Bearer-QoS' = [],
         'Default-QoS-Information' = [],
         'Bearer-Usage' = [],
         'Usage-Monitoring-Information' = [],
         'CSG-Information-Reporting' = [],
         'Presence-Reporting-Area-Information' = [],
         'Session-Release-Cause' = [],
         'Error-Message' = [],
         'Error-Reporting-Host' = [],
         'Failed-AVP' = [],
         'Proxy-Info' = [],
         'Route-Record' = [],
         'AVP' = []}).

-record(diameter_gx_RAR,
        {'Session-Id',
         'Auth-Application-Id',
         'Origin-Host',
         'Origin-Realm',
         'Destination-Realm',
         'Destination-Host',
         'Re-Auth-Request-Type',
         'Session-Release-Cause' = [],
         'Origin-State-Id' = [],
         'Event-Trigger' = [],
         'Event-Report-Indication' = [],
         'Charging-Rule-Remove' = [],
         'Charging-Rule-Install' = [],
         'Default-EPS-Bearer-QoS' = [],
         'QoS-Information' = [],
         'Default-QoS-Information' = [],
         'Revalidation-Time' = [],
         'Usage-Monitoring-Information' = [],
         'PCSCF-Restoration-Indication' = [],
         'Proxy-Info' = [],
         'Route-Record' = [],
         'AVP' = []}).

-record(diameter_gx_RAA,
        {'Session-Id',
         'Origin-Host',
         'Origin-Realm',
         'Result-Code' = [],
         'Experimental-Result' = [],
         'Origin-State-Id' = [],
         'IP-CAN-Type' = [],
         'RAT-Type' = [],
         'AN-GW-Address' = [],
         '3GPP-SGSN-MCC-MNC' = [],
         '3GPP-SGSN-Address' = [],
         '3GPP-SGSN-IPv6-Address' = [],
         'RAI' = [],
         '3GPP-User-Location-Info' = [],
         'User-Location-Info-Time' = [],
         'NetLoc-Access-Support' = [],
         '3GPP-MS-TimeZone' = [],
         'Default-QoS-Information' = [],
         'Charging-Rule-Report' = [],
         'Error-Message' = [],
         'Error-Reporting-Host' = [],
         'Failed-AVP' = [],
         'Proxy-Info' = [],
         'AVP' = []}).

-record('diameter_gx_Access-Network-Charging-Identifier-Gx',
        {'Access-Network-Charging-Identifier-Value',
         'Charging-Rule-Base-Name' = [],
         'Charging-Rule-Name' = [],
         'IP-CAN-Session-Charging-Scope' = [],
         'AVP' = []}).

-record('diameter_gx_Allocation-Retention-Priority',
        {'Priority-Level',
         'Pre-emption-Capability' = [],
         'Pre-emption-Vulnerability' = []}).

-record('diameter_gx_Application-Detection-Information',
        {'TDF-Application-Identifier',
         'TDF-Application-Instance-Identifier' = [],
         'Flow-Information' = [],
         'AVP' = []}).

-record('diameter_gx_Charging-Rule-Definition',
        {'Charging-Rule-Name',
         'Service-Identifier' = [],
         'Rating-Group' = [],
         'Flow-Information' = [],
         'TDF-Application-Identifier' = [],
         'Flow-Status' = [],
         'QoS-Information' = [],
         'PS-to-CS-Session-Continuity' = [],
         'Reporting-Level' = [],
         'Online' = [],
         'Offline' = [],
         'Metering-Method' = [],
         'Precedence' = [],
         'AF-Charging-Identifier' = [],
         'Flows' = [],
         'Monitoring-Key' = [],
         'Redirect-Information' = [],
         'Mute-Notification' = [],
         'AF-Signalling-Protocol' = [],
         'Sponsor-Identity' = [],
         'Application-Service-Provider-Identity' = [],
         'Required-Access-Info' = [],
         'AVP' = []}).

-record('diameter_gx_Charging-Rule-Install',
        {'Charging-Rule-Definition' = [],
         'Charging-Rule-Name' = [],
         'Charging-Rule-Base-Name' = [],
         'Bearer-Identifier' = [],
         'Rule-Activation-Time' = [],
         'Rule-Deactivation-Time' = [],
         'Resource-Allocation-Notification' = [],
         'Charging-Correlation-Indicator' = [],
         'AVP' = []}).

-record('diameter_gx_Charging-Rule-Remove',
        {'Charging-Rule-Name' = [],
         'Charging-Rule-Base-Name' = [],
         'Required-Access-Info' = [],
         'AVP' = []}).

-record('diameter_gx_Charging-Rule-Report',
        {'Charging-Rule-Name' = [],
         'Charging-Rule-Base-Name' = [],
         'Bearer-Identifier' = [],
         'PCC-Rule-Status' = [],
         'Rule-Failure-Code' = [],
         'Final-Unit-Indication' = [],
         'RAN-NAS-Release-Cause' = [],
         'AVP' = []}).

-record('diameter_gx_CoA-Information',
        {'Tunnel-Information', 'CoA-IP-Address', 'AVP' = []}).

-record('diameter_gx_Conditional-APN-Aggregate-Max-Bitrate',
        {'APN-Aggregate-Max-Bitrate-UL' = [],
         'APN-Aggregate-Max-Bitrate-DL' = [],
         'IP-CAN-Type' = [],
         'RAT-Type' = [],
         'AVP' = []}).

-record('diameter_gx_Default-EPS-Bearer-QoS',
        {'QoS-Class-Identifier' = [],
         'Allocation-Retention-Priority' = [],
         'AVP' = []}).

-record('diameter_gx_Default-QoS-Information',
        {'QoS-Class-Identifier' = [],
         'Max-Requested-Bandwidth-UL' = [],
         'Max-Requested-Bandwidth-DL' = [],
         'Default-QoS-Name' = [],
         'AVP' = []}).

-record('diameter_gx_Event-Report-Indication',
        {'Event-Trigger' = [],
         'IP-CAN-Type' = [],
         'AN-GW-Address' = [],
         '3GPP-SGSN-Address' = [],
         '3GPP-SGSN-IPv6-Address' = [],
         '3GPP-SGSN-MCC-MNC' = [],
         'Framed-IP-Address' = [],
         'RAT-Type' = [],
         'RAI' = [],
         '3GPP-User-Location-Info' = [],
         '3GPP-MS-TimeZone' = [],
         'Routing-IP-Address' = [],
         'UE-Local-IP-Address' = [],
         'HeNB-Local-IP-Address' = [],
         'UDP-Source-Port' = [],
         'Presence-Reporting-Area-Information' = [],
         'AVP' = []}).

-record('diameter_gx_Fixed-User-Location-Info',
        {'Logical-Access-ID' = [],
         'Physical-Access-ID' = [],
         'AVP' = []}).

-record('diameter_gx_Flow-Information',
        {'Flow-Description' = [],
         'Packet-Filter-Identifier' = [],
         'Packet-Filter-Usage' = [],
         'ToS-Traffic-Class' = [],
         'Security-Parameter-Index' = [],
         'Flow-Label' = [],
         'Flow-Direction' = [],
         'AVP' = []}).

-record('diameter_gx_Packet-Filter-Information',
        {'Packet-Filter-Identifier' = [],
         'Precedence' = [],
         'Packet-Filter-Content' = [],
         'ToS-Traffic-Class' = [],
         'Security-Parameter-Index' = [],
         'Flow-Label' = [],
         'Flow-Direction' = [],
         'AVP' = []}).

-record('diameter_gx_Presence-Reporting-Area-Information',
        {'Presence-Reporting-Area-Identifier' = [],
         'Presence-Reporting-Area-Status' = [],
         'Presence-Reporting-Area-Elements-List' = [],
         'AVP' = []}).

-record('diameter_gx_QoS-Information',
        {'QoS-Class-Identifier' = [],
         'Max-Requested-Bandwidth-UL' = [],
         'Max-Requested-Bandwidth-DL' = [],
         'Guaranteed-Bitrate-UL' = [],
         'Guaranteed-Bitrate-DL' = [],
         'Bearer-Identifier' = [],
         'Allocation-Retention-Priority' = [],
         'APN-Aggregate-Max-Bitrate-UL' = [],
         'APN-Aggregate-Max-Bitrate-DL' = [],
         'Conditional-APN-Aggregate-Max-Bitrate' = [],
         'AVP' = []}).

-record('diameter_gx_Redirect-Information',
        {'Redirect-Support' = [],
         'Redirect-Address-Type' = [],
         'Redirect-Server-Address' = [],
         'AVP' = []}).

-record('diameter_gx_Routing-Filter',
        {'Flow-Description',
         'Flow-Direction',
         'ToS-Traffic-Class' = [],
         'Security-Parameter-Index' = [],
         'Flow-Label' = [],
         'AVP' = []}).

-record('diameter_gx_Routing-Rule-Definition',
        {'Routing-Rule-Identifier',
         'Routing-Filter' = [],
         'Precedence' = [],
         'Routing-IP-Address' = [],
         'AVP' = []}).

-record('diameter_gx_Routing-Rule-Install',
        {'Routing-Rule-Definition' = [], 'AVP' = []}).

-record('diameter_gx_Routing-Rule-Remove',
        {'Routing-Rule-Identifier' = [], 'AVP' = []}).

-record('diameter_gx_TDF-Information',
        {'TDF-Destination-Realm' = [],
         'TDF-Destination-Host' = [],
         'TDF-IP-Address' = []}).

-record('diameter_gx_Tunnel-Information',
        {'Tunnel-Header-Length' = [],
         'Tunnel-Header-Filter' = [],
         'AVP' = []}).

-record('diameter_gx_TFT-Packet-Filter-Information',
        {'Precedence' = [],
         'TFT-Filter' = [],
         'ToS-Traffic-Class' = [],
         'Security-Parameter-Index' = [],
         'Flow-Label' = [],
         'Flow-Direction' = [],
         'AVP' = []}).

-record('diameter_gx_Usage-Monitoring-Information',
        {'Monitoring-Key' = [],
         'Granted-Service-Unit' = [],
         'Used-Service-Unit' = [],
         'Usage-Monitoring-Level' = [],
         'Usage-Monitoring-Report' = [],
         'Usage-Monitoring-Support' = [],
         'AVP' = []}).

-record('diameter_gx_Proxy-Info',
        {'Proxy-Host', 'Proxy-State', 'AVP' = []}).

-record('diameter_gx_Failed-AVP', {'AVP' = []}).

-record('diameter_gx_Experimental-Result',
        {'Vendor-Id', 'Experimental-Result-Code'}).

-record('diameter_gx_Vendor-Specific-Application-Id',
        {'Vendor-Id',
         'Auth-Application-Id' = [],
         'Acct-Application-Id' = []}).

-record('diameter_gx_Cost-Information',
        {'Unit-Value', 'Currency-Code', 'Cost-Unit' = []}).

-record('diameter_gx_Unit-Value',
        {'Value-Digits', 'Exponent' = []}).

-record('diameter_gx_Multiple-Services-Credit-Control',
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

-record('diameter_gx_Granted-Service-Unit',
        {'Tariff-Time-Change' = [],
         'CC-Time' = [],
         'CC-Money' = [],
         'CC-Total-Octets' = [],
         'CC-Input-Octets' = [],
         'CC-Output-Octets' = [],
         'CC-Service-Specific-Units' = [],
         'AVP' = []}).

-record('diameter_gx_Requested-Service-Unit',
        {'CC-Time' = [],
         'CC-Money' = [],
         'CC-Total-Octets' = [],
         'CC-Input-Octets' = [],
         'CC-Output-Octets' = [],
         'CC-Service-Specific-Units' = [],
         'AVP' = []}).

-record('diameter_gx_Used-Service-Unit',
        {'Tariff-Change-Usage' = [],
         'CC-Time' = [],
         'CC-Money' = [],
         'CC-Total-Octets' = [],
         'CC-Input-Octets' = [],
         'CC-Output-Octets' = [],
         'CC-Service-Specific-Units' = [],
         'AVP' = []}).

-record('diameter_gx_CC-Money',
        {'Unit-Value', 'Currency-Code' = []}).

-record('diameter_gx_G-S-U-Pool-Reference',
        {'G-S-U-Pool-Identifier',
         'CC-Unit-Type',
         'Unit-Value'}).

-record('diameter_gx_Final-Unit-Indication',
        {'Final-Unit-Action',
         'Restriction-Filter-Rule' = [],
         'Filter-Id' = [],
         'Redirect-Server' = []}).

-record('diameter_gx_Redirect-Server',
        {'Redirect-Address-Type', 'Redirect-Server-Address'}).

-record('diameter_gx_Service-Parameter-Info',
        {'Service-Parameter-Type', 'Service-Parameter-Value'}).

-record('diameter_gx_Subscription-Id',
        {'Subscription-Id-Type', 'Subscription-Id-Data'}).

-record('diameter_gx_User-Equipment-Info',
        {'User-Equipment-Info-Type',
         'User-Equipment-Info-Value'}).

-record(diameter_gx_Flows,
        {'Media-Component-Number',
         'Flow-Number' = [],
         'Final-Unit-Action' = []}).

-record('diameter_gx_Charging-Information',
        {'Primary-Event-Charging-Function-Name' = [],
         'Secondary-Event-Charging-Function-Name' = [],
         'Primary-Charging-Collection-Function-Name' = [],
         'Secondary-Charging-Collection-Function-Name' = [],
         'AVP' = []}).

-record('diameter_gx_Supported-Features',
        {'Vendor-Id',
         'Feature-List-ID',
         'Feature-List',
         'AVP' = []}).

-record('diameter_gx_Supported-Applications',
        {'Auth-Application-Id' = [],
         'Acct-Application-Id' = [],
         'Vendor-Specific-Application-Id' = [],
         'AVP' = []}).

-record('diameter_gx_SIP-Auth-Data-Item',
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

-record('diameter_gx_Deregistration-Reason',
        {'Reason-Code', 'Reason-Info' = [], 'AVP' = []}).

-record('diameter_gx_SIP-Digest-Authenticate',
        {'Digest-Realm',
         'Digest-QoP',
         'Digest-HA1',
         'Digest-Algorithm' = [],
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

name() -> diameter_3gpp_ts29_212.

id() -> 16777238.

vendor_id() -> 10415.

vendor_name() -> '3GPP'.

msg_name(272, true) -> 'CCR';
msg_name(272, false) -> 'CCA';
msg_name(258, true) -> 'RAR';
msg_name(258, false) -> 'RAA';
msg_name(_, _) -> ''.

msg_header('CCR') -> {272, 192, 16777238};
msg_header('CCA') -> {272, 64, 16777238};
msg_header('RAR') -> {258, 192, 16777238};
msg_header('RAA') -> {258, 64, 16777238};
msg_header(_) -> erlang:error(badarg).

rec2msg(diameter_gx_CCR) -> 'CCR';
rec2msg(diameter_gx_CCA) -> 'CCA';
rec2msg(diameter_gx_RAR) -> 'RAR';
rec2msg(diameter_gx_RAA) -> 'RAA';
rec2msg(_) -> erlang:error(badarg).

msg2rec('CCR') -> diameter_gx_CCR;
msg2rec('CCA') -> diameter_gx_CCA;
msg2rec('RAR') -> diameter_gx_RAR;
msg2rec('RAA') -> diameter_gx_RAA;
msg2rec(_) -> erlang:error(badarg).

name2rec('Access-Network-Charging-Identifier-Gx') ->
    'diameter_gx_Access-Network-Charging-Identifier-Gx';
name2rec('Allocation-Retention-Priority') ->
    'diameter_gx_Allocation-Retention-Priority';
name2rec('Application-Detection-Information') ->
    'diameter_gx_Application-Detection-Information';
name2rec('Charging-Rule-Definition') ->
    'diameter_gx_Charging-Rule-Definition';
name2rec('Charging-Rule-Install') ->
    'diameter_gx_Charging-Rule-Install';
name2rec('Charging-Rule-Remove') ->
    'diameter_gx_Charging-Rule-Remove';
name2rec('Charging-Rule-Report') ->
    'diameter_gx_Charging-Rule-Report';
name2rec('CoA-Information') ->
    'diameter_gx_CoA-Information';
name2rec('Conditional-APN-Aggregate-Max-Bitrate') ->
    'diameter_gx_Conditional-APN-Aggregate-Max-Bitrate';
name2rec('Default-EPS-Bearer-QoS') ->
    'diameter_gx_Default-EPS-Bearer-QoS';
name2rec('Default-QoS-Information') ->
    'diameter_gx_Default-QoS-Information';
name2rec('Event-Report-Indication') ->
    'diameter_gx_Event-Report-Indication';
name2rec('Fixed-User-Location-Info') ->
    'diameter_gx_Fixed-User-Location-Info';
name2rec('Flow-Information') ->
    'diameter_gx_Flow-Information';
name2rec('Packet-Filter-Information') ->
    'diameter_gx_Packet-Filter-Information';
name2rec('Presence-Reporting-Area-Information') ->
    'diameter_gx_Presence-Reporting-Area-Information';
name2rec('QoS-Information') ->
    'diameter_gx_QoS-Information';
name2rec('Redirect-Information') ->
    'diameter_gx_Redirect-Information';
name2rec('Routing-Filter') ->
    'diameter_gx_Routing-Filter';
name2rec('Routing-Rule-Definition') ->
    'diameter_gx_Routing-Rule-Definition';
name2rec('Routing-Rule-Install') ->
    'diameter_gx_Routing-Rule-Install';
name2rec('Routing-Rule-Remove') ->
    'diameter_gx_Routing-Rule-Remove';
name2rec('TDF-Information') ->
    'diameter_gx_TDF-Information';
name2rec('Tunnel-Information') ->
    'diameter_gx_Tunnel-Information';
name2rec('TFT-Packet-Filter-Information') ->
    'diameter_gx_TFT-Packet-Filter-Information';
name2rec('Usage-Monitoring-Information') ->
    'diameter_gx_Usage-Monitoring-Information';
name2rec('Proxy-Info') -> 'diameter_gx_Proxy-Info';
name2rec('Failed-AVP') -> 'diameter_gx_Failed-AVP';
name2rec('Experimental-Result') ->
    'diameter_gx_Experimental-Result';
name2rec('Vendor-Specific-Application-Id') ->
    'diameter_gx_Vendor-Specific-Application-Id';
name2rec('Cost-Information') ->
    'diameter_gx_Cost-Information';
name2rec('Unit-Value') -> 'diameter_gx_Unit-Value';
name2rec('Multiple-Services-Credit-Control') ->
    'diameter_gx_Multiple-Services-Credit-Control';
name2rec('Granted-Service-Unit') ->
    'diameter_gx_Granted-Service-Unit';
name2rec('Requested-Service-Unit') ->
    'diameter_gx_Requested-Service-Unit';
name2rec('Used-Service-Unit') ->
    'diameter_gx_Used-Service-Unit';
name2rec('CC-Money') -> 'diameter_gx_CC-Money';
name2rec('G-S-U-Pool-Reference') ->
    'diameter_gx_G-S-U-Pool-Reference';
name2rec('Final-Unit-Indication') ->
    'diameter_gx_Final-Unit-Indication';
name2rec('Redirect-Server') ->
    'diameter_gx_Redirect-Server';
name2rec('Service-Parameter-Info') ->
    'diameter_gx_Service-Parameter-Info';
name2rec('Subscription-Id') ->
    'diameter_gx_Subscription-Id';
name2rec('User-Equipment-Info') ->
    'diameter_gx_User-Equipment-Info';
name2rec('Flows') -> diameter_gx_Flows;
name2rec('Charging-Information') ->
    'diameter_gx_Charging-Information';
name2rec('Supported-Features') ->
    'diameter_gx_Supported-Features';
name2rec('Supported-Applications') ->
    'diameter_gx_Supported-Applications';
name2rec('SIP-Auth-Data-Item') ->
    'diameter_gx_SIP-Auth-Data-Item';
name2rec('Deregistration-Reason') ->
    'diameter_gx_Deregistration-Reason';
name2rec('SIP-Digest-Authenticate') ->
    'diameter_gx_SIP-Digest-Authenticate';
name2rec(T) -> msg2rec(T).

avp_name(1050, 10415) -> {'AN-GW-Address', 'Address'};
avp_name(2811, 10415) -> {'AN-GW-Status', 'Enumerated'};
avp_name(1040, 10415) ->
    {'APN-Aggregate-Max-Bitrate-DL', 'Unsigned32'};
avp_name(1041, 10415) ->
    {'APN-Aggregate-Max-Bitrate-UL', 'Unsigned32'};
avp_name(1022, 10415) ->
    {'Access-Network-Charging-Identifier-Gx', 'Grouped'};
avp_name(1034, 10415) ->
    {'Allocation-Retention-Priority', 'Grouped'};
avp_name(1098, 10415) ->
    {'Application-Detection-Information', 'Grouped'};
avp_name(1023, 10415) ->
    {'Bearer-Control-Mode', 'Enumerated'};
avp_name(1020, 10415) ->
    {'Bearer-Identifier', 'OctetString'};
avp_name(1021, 10415) ->
    {'Bearer-Operation', 'Enumerated'};
avp_name(1000, 10415) -> {'Bearer-Usage', 'Enumerated'};
avp_name(1071, 10415) ->
    {'CSG-Information-Reporting', 'Enumerated'};
avp_name(1073, 10415) ->
    {'Charging-Correlation-Indicator', 'Enumerated'};
avp_name(1004, 10415) ->
    {'Charging-Rule-Base-Name', 'UTF8String'};
avp_name(1003, 10415) ->
    {'Charging-Rule-Definition', 'Grouped'};
avp_name(1001, 10415) ->
    {'Charging-Rule-Install', 'Grouped'};
avp_name(1005, 10415) ->
    {'Charging-Rule-Name', 'OctetString'};
avp_name(1002, 10415) ->
    {'Charging-Rule-Remove', 'Grouped'};
avp_name(1018, 10415) ->
    {'Charging-Rule-Report', 'Grouped'};
avp_name(1035, 10415) -> {'CoA-IP-Address', 'Address'};
avp_name(1039, 10415) -> {'CoA-Information', 'Grouped'};
avp_name(2818, 10415) ->
    {'Conditional-APN-Aggregate-Max-Bitrate', 'Grouped'};
avp_name(1082, 10415) ->
    {'Credit-Management-Status', 'Unsigned32'};
avp_name(1049, 10415) ->
    {'Default-EPS-Bearer-QoS', 'Grouped'};
avp_name(2816, 10415) ->
    {'Default-QoS-Information', 'Grouped'};
avp_name(2817, 10415) ->
    {'Default-QoS-Name', 'UTF8String'};
avp_name(1033, 10415) ->
    {'Event-Report-Indication', 'Grouped'};
avp_name(1006, 10415) ->
    {'Event-Trigger', 'Enumerated'};
avp_name(2825, 10415) ->
    {'Fixed-User-Location-Info', 'Grouped'};
avp_name(1080, 10415) ->
    {'Flow-Direction', 'Enumerated'};
avp_name(1058, 10415) ->
    {'Flow-Information', 'Grouped'};
avp_name(1057, 10415) -> {'Flow-Label', 'OctetString'};
avp_name(1025, 10415) ->
    {'Guaranteed-Bitrate-DL', 'Unsigned32'};
avp_name(1026, 10415) ->
    {'Guaranteed-Bitrate-UL', 'Unsigned32'};
avp_name(2804, 10415) ->
    {'HeNB-Local-IP-Address', 'Address'};
avp_name(2827, 10415) ->
    {'IP-CAN-Session-Charging-Scope', 'Enumerated'};
avp_name(1027, 10415) -> {'IP-CAN-Type', 'Enumerated'};
avp_name(1007, 10415) ->
    {'Metering-Method', 'Enumerated'};
avp_name(1066, 10415) ->
    {'Monitoring-Key', 'OctetString'};
avp_name(2810, 10415) -> {'Monitoring-Time', 'Time'};
avp_name(2809, 10415) ->
    {'Mute-Notification', 'Enumerated'};
avp_name(2824, 10415) ->
    {'NetLoc-Access-Support', 'Unsigned32'};
avp_name(1024, 10415) ->
    {'Network-Request-Support', 'Enumerated'};
avp_name(1008, 10415) -> {'Offline', 'Enumerated'};
avp_name(1009, 10415) -> {'Online', 'Enumerated'};
avp_name(1019, 10415) ->
    {'PCC-Rule-Status', 'Enumerated'};
avp_name(2826, 10415) ->
    {'PCSCF-Restoration-Indication', 'Unsigned32'};
avp_name(1065, 10415) ->
    {'PDN-Connection-ID', 'OctetString'};
avp_name(1099, 10415) ->
    {'PS-to-CS-Session-Continuity', 'Enumerated'};
avp_name(1059, 10415) ->
    {'Packet-Filter-Content', 'IPFilterRule'};
avp_name(1060, 10415) ->
    {'Packet-Filter-Identifier', 'OctetString'};
avp_name(1061, 10415) ->
    {'Packet-Filter-Information', 'Grouped'};
avp_name(1062, 10415) ->
    {'Packet-Filter-Operation', 'Enumerated'};
avp_name(1072, 10415) ->
    {'Packet-Filter-Usage', 'Enumerated'};
avp_name(1047, 10415) ->
    {'Pre-emption-Capability', 'Enumerated'};
avp_name(1048, 10415) ->
    {'Pre-emption-Vulnerability', 'Enumerated'};
avp_name(1010, 10415) -> {'Precedence', 'Unsigned32'};
avp_name(2820, 10415) ->
    {'Presence-Reporting-Area-Elements-List',
     'OctetString'};
avp_name(2821, 10415) ->
    {'Presence-Reporting-Area-Identifier', 'OctetString'};
avp_name(2822, 10415) ->
    {'Presence-Reporting-Area-Information', 'Grouped'};
avp_name(2823, 10415) ->
    {'Presence-Reporting-Area-Status', 'Unsigned32'};
avp_name(1046, 10415) ->
    {'Priority-Level', 'Unsigned32'};
avp_name(1028, 10415) ->
    {'QoS-Class-Identifier', 'Enumerated'};
avp_name(1016, 10415) -> {'QoS-Information', 'Grouped'};
avp_name(1029, 10415) ->
    {'QoS-Negotiation', 'Enumerated'};
avp_name(1030, 10415) -> {'QoS-Upgrade', 'Enumerated'};
avp_name(2819, 10415) ->
    {'RAN-NAS-Release-Cause', 'OctetString'};
avp_name(1032, 10415) -> {'RAT-Type', 'Enumerated'};
avp_name(1085, 10415) ->
    {'Redirect-Information', 'Grouped'};
avp_name(1086, 10415) ->
    {'Redirect-Support', 'Enumerated'};
avp_name(1011, 10415) ->
    {'Reporting-Level', 'Enumerated'};
avp_name(1063, 10415) ->
    {'Resource-Allocation-Notification', 'Enumerated'};
avp_name(1042, 10415) -> {'Revalidation-Time', 'Time'};
avp_name(1078, 10415) -> {'Routing-Filter', 'Grouped'};
avp_name(1079, 10415) ->
    {'Routing-IP-Address', 'Address'};
avp_name(1076, 10415) ->
    {'Routing-Rule-Definition', 'Grouped'};
avp_name(1077, 10415) ->
    {'Routing-Rule-Identifier', 'OctetString'};
avp_name(1081, 10415) ->
    {'Routing-Rule-Install', 'Grouped'};
avp_name(1075, 10415) ->
    {'Routing-Rule-Remove', 'Grouped'};
avp_name(1043, 10415) ->
    {'Rule-Activation-Time', 'Time'};
avp_name(1044, 10415) ->
    {'Rule-Deactivation-Time', 'Time'};
avp_name(1031, 10415) ->
    {'Rule-Failure-Code', 'Enumerated'};
avp_name(1056, 10415) ->
    {'Security-Parameter-Index', 'OctetString'};
avp_name(1045, 10415) ->
    {'Session-Release-Cause', 'Enumerated'};
avp_name(1088, 10415) ->
    {'TDF-Application-Identifier', 'OctetString'};
avp_name(2802, 10415) ->
    {'TDF-Application-Instance-Identifier', 'OctetString'};
avp_name(1089, 10415) ->
    {'TDF-Destination-Host', 'DiameterIdentity'};
avp_name(1090, 10415) ->
    {'TDF-Destination-Realm', 'DiameterIdentity'};
avp_name(1091, 10415) -> {'TDF-IP-Address', 'Address'};
avp_name(1087, 10415) -> {'TDF-Information', 'Grouped'};
avp_name(1012, 10415) -> {'TFT-Filter', 'IPFilterRule'};
avp_name(1013, 10415) ->
    {'TFT-Packet-Filter-Information', 'Grouped'};
avp_name(1014, 10415) ->
    {'ToS-Traffic-Class', 'OctetString'};
avp_name(1036, 10415) ->
    {'Tunnel-Header-Filter', 'IPFilterRule'};
avp_name(1037, 10415) ->
    {'Tunnel-Header-Length', 'Unsigned32'};
avp_name(1038, 10415) ->
    {'Tunnel-Information', 'Grouped'};
avp_name(2806, 10415) ->
    {'UDP-Source-Port', 'Unsigned32'};
avp_name(2805, 10415) ->
    {'UE-Local-IP-Address', 'Address'};
avp_name(1067, 10415) ->
    {'Usage-Monitoring-Information', 'Grouped'};
avp_name(1068, 10415) ->
    {'Usage-Monitoring-Level', 'Enumerated'};
avp_name(1069, 10415) ->
    {'Usage-Monitoring-Report', 'Enumerated'};
avp_name(1070, 10415) ->
    {'Usage-Monitoring-Support', 'Enumerated'};
avp_name(2812, 10415) ->
    {'User-Location-Info-Time', 'Time'};
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
avp_name(30, undefined) ->
    {'Called-Station-Id', 'UTF8String'};
avp_name(8, undefined) ->
    {'Framed-IP-Address', 'OctetString'};
avp_name(97, undefined) ->
    {'Framed-IPv6-Prefix', 'OctetString'};
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
avp_name(301, 13019) ->
    {'Address-Realm', 'OctetString'};
avp_name(307, 13019) ->
    {'Aggregation-Network-Type', 'Enumerated'};
avp_name(312, 13019) ->
    {'Application-Class-ID', 'UTF8String'};
avp_name(305, 13019) ->
    {'IP-Connectivity-Status', 'Enumerated'};
avp_name(314, 13019) ->
    {'Initial-Gate-Setting-ID', 'Unsigned32'};
avp_name(302, 13019) ->
    {'Logical-Access-ID', 'OctetString'};
avp_name(309, 13019) ->
    {'Maximum-Allowed-Bandwidth-DL', 'Unsigned32'};
avp_name(308, 13019) ->
    {'Maximum-Allowed-Bandwidth-UL', 'Unsigned32'};
avp_name(313, 13019) ->
    {'Physical-Access-ID', 'UTF8String'};
avp_name(315, 13019) ->
    {'QoS-Profile-ID', 'Unsigned32'};
avp_name(311, 13019) ->
    {'Transport-Class', 'Unsigned32'};
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
avp_name(504, 10415) ->
    {'AF-Application-Identifier', 'OctetString'};
avp_name(505, 10415) ->
    {'AF-Charging-Identifier', 'OctetString'};
avp_name(529, 10415) ->
    {'AF-Signalling-Protocol', 'Enumerated'};
avp_name(500, 10415) -> {'Abort-Cause', 'Enumerated'};
avp_name(501, 10415) ->
    {'Access-Network-Charging-Address', 'Address'};
avp_name(503, 10415) ->
    {'Access-Network-Charging-Identifier-Value',
     'OctetString'};
avp_name(532, 10415) ->
    {'Application-Service-Provider-Identity', 'UTF8String'};
avp_name(524, 10415) -> {'Codec-Data', 'OctetString'};
avp_name(507, 10415) ->
    {'Flow-Description', 'IPFilterRule'};
avp_name(509, 10415) -> {'Flow-Number', 'Unsigned32'};
avp_name(511, 10415) -> {'Flow-Status', 'Enumerated'};
avp_name(512, 10415) -> {'Flow-Usage', 'Enumerated'};
avp_name(510, 10415) -> {'Flows', 'Grouped'};
avp_name(538, 10415) ->
    {'GCS-Identifier', 'OctetString'};
avp_name(537, 10415) -> {'IP-Domain-Id', 'OctetString'};
avp_name(528, 10415) ->
    {'MPS-Identifier', 'OctetString'};
avp_name(515, 10415) ->
    {'Max-Requested-Bandwidth-DL', 'Unsigned32'};
avp_name(516, 10415) ->
    {'Max-Requested-Bandwidth-UL', 'Unsigned32'};
avp_name(518, 10415) ->
    {'Media-Component-Number', 'Unsigned32'};
avp_name(520, 10415) -> {'Media-Type', 'Enumerated'};
avp_name(534, 10415) ->
    {'Min-Requested-Bandwidth-DL', 'Unsigned32'};
avp_name(535, 10415) ->
    {'Min-Requested-Bandwidth-UL', 'Unsigned32'};
avp_name(521, 10415) -> {'RR-Bandwidth', 'Unsigned32'};
avp_name(522, 10415) -> {'RS-Bandwidth', 'Unsigned32'};
avp_name(536, 10415) ->
    {'Required-Access-Info', 'Enumerated'};
avp_name(533, 10415) ->
    {'Rx-Request-Type', 'Enumerated'};
avp_name(523, 10415) ->
    {'SIP-Forking-Indication', 'Enumerated'};
avp_name(527, 10415) ->
    {'Service-Info-Status', 'Enumerated'};
avp_name(525, 10415) -> {'Service-URN', 'OctetString'};
avp_name(513, 10415) ->
    {'Specific-Action', 'Enumerated'};
avp_name(531, 10415) ->
    {'Sponsor-Identity', 'UTF8String'};
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
avp_name(_, _) -> 'AVP'.

avp_arity('CCR') ->
    [{'Session-Id', 1},
     {'Auth-Application-Id', 1},
     {'Origin-Host', 1},
     {'Origin-Realm', 1},
     {'Destination-Realm', 1},
     {'CC-Request-Type', 1},
     {'CC-Request-Number', 1},
     {'Credit-Management-Status', {0, 1}},
     {'Destination-Host', {0, 1}},
     {'Origin-State-Id', {0, 1}},
     {'Subscription-Id', {0, '*'}},
     {'Supported-Features', {0, '*'}},
     {'TDF-Information', {0, 1}},
     {'Network-Request-Support', {0, 1}},
     {'Packet-Filter-Information', {0, '*'}},
     {'Packet-Filter-Operation', {0, 1}},
     {'Bearer-Identifier', {0, 1}},
     {'Bearer-Operation', {0, 1}},
     {'Framed-IP-Address', {0, 1}},
     {'Framed-IPv6-Prefix', {0, 1}},
     {'IP-CAN-Type', {0, 1}},
     {'3GPP-RAT-Type', {0, 1}},
     {'RAT-Type', {0, 1}},
     {'Termination-Cause', {0, 1}},
     {'User-Equipment-Info', {0, 1}},
     {'QoS-Information', {0, 1}},
     {'QoS-Negotiation', {0, 1}},
     {'QoS-Upgrade', {0, 1}},
     {'Default-EPS-Bearer-QoS', {0, 1}},
     {'Default-QoS-Information', {0, 1}},
     {'AN-GW-Address', {0, 2}},
     {'AN-GW-Status', {0, 1}},
     {'3GPP-SGSN-MCC-MNC', {0, 1}},
     {'3GPP-SGSN-Address', {0, 1}},
     {'3GPP-SGSN-IPv6-Address', {0, 1}},
     {'3GPP-GGSN-Address', {0, 1}},
     {'3GPP-GGSN-IPv6-Address', {0, 1}},
     {'3GPP-Selection-Mode', {0, 1}},
     {'RAI', {0, 1}},
     {'3GPP-User-Location-Info', {0, 1}},
     {'User-Location-Info-Time', {0, 1}},
     {'TWAN-Identifier', {0, 1}},
     {'3GPP-MS-TimeZone', {0, 1}},
     {'RAN-NAS-Release-Cause', {0, '*'}},
     {'3GPP-Charging-Characteristics', {0, 1}},
     {'Called-Station-Id', {0, 1}},
     {'PDN-Connection-ID', {0, 1}},
     {'Bearer-Usage', {0, 1}},
     {'Online', {0, 1}},
     {'Offline', {0, 1}},
     {'TFT-Packet-Filter-Information', {0, '*'}},
     {'Charging-Rule-Report', {0, '*'}},
     {'Application-Detection-Information', {0, '*'}},
     {'Event-Trigger', {0, '*'}},
     {'Event-Report-Indication', {0, 1}},
     {'Access-Network-Charging-Address', {0, 1}},
     {'Access-Network-Charging-Identifier-Gx', {0, '*'}},
     {'CoA-Information', {0, '*'}},
     {'Usage-Monitoring-Information', {0, '*'}},
     {'Routing-Rule-Install', {0, 1}},
     {'Routing-Rule-Remove', {0, 1}},
     {'HeNB-Local-IP-Address', {0, 1}},
     {'UE-Local-IP-Address', {0, 1}},
     {'UDP-Source-Port', {0, 1}},
     {'Presence-Reporting-Area-Information', {0, 1}},
     {'Logical-Access-ID', {0, 1}},
     {'Physical-Access-ID', {0, 1}},
     {'Proxy-Info', {0, '*'}},
     {'Route-Record', {0, '*'}},
     {'AVP', {0, '*'}}];
avp_arity('CCA') ->
    [{'Session-Id', 1},
     {'Auth-Application-Id', 1},
     {'Origin-Host', 1},
     {'Origin-Realm', 1},
     {'CC-Request-Type', 1},
     {'CC-Request-Number', 1},
     {'Result-Code', {0, 1}},
     {'Experimental-Result', {0, 1}},
     {'Supported-Features', {0, '*'}},
     {'Bearer-Control-Mode', {0, 1}},
     {'Event-Trigger', {0, '*'}},
     {'Event-Report-Indication', {0, 1}},
     {'Origin-State-Id', {0, 1}},
     {'Redirect-Host', {0, '*'}},
     {'Redirect-Host-Usage', {0, 1}},
     {'Redirect-Max-Cache-Time', {0, 1}},
     {'Charging-Rule-Remove', {0, '*'}},
     {'Charging-Rule-Install', {0, '*'}},
     {'Charging-Information', {0, 1}},
     {'Online', {0, 1}},
     {'Offline', {0, 1}},
     {'QoS-Information', {0, '*'}},
     {'Revalidation-Time', {0, 1}},
     {'Default-EPS-Bearer-QoS', {0, 1}},
     {'Default-QoS-Information', {0, 1}},
     {'Bearer-Usage', {0, 1}},
     {'Usage-Monitoring-Information', {0, '*'}},
     {'CSG-Information-Reporting', {0, '*'}},
     {'Presence-Reporting-Area-Information', {0, 1}},
     {'Session-Release-Cause', {0, 1}},
     {'Error-Message', {0, 1}},
     {'Error-Reporting-Host', {0, 1}},
     {'Failed-AVP', {0, '*'}},
     {'Proxy-Info', {0, '*'}},
     {'Route-Record', {0, '*'}},
     {'AVP', {0, '*'}}];
avp_arity('RAR') ->
    [{'Session-Id', 1},
     {'Auth-Application-Id', 1},
     {'Origin-Host', 1},
     {'Origin-Realm', 1},
     {'Destination-Realm', 1},
     {'Destination-Host', 1},
     {'Re-Auth-Request-Type', 1},
     {'Session-Release-Cause', {0, 1}},
     {'Origin-State-Id', {0, 1}},
     {'Event-Trigger', {0, '*'}},
     {'Event-Report-Indication', {0, 1}},
     {'Charging-Rule-Remove', {0, '*'}},
     {'Charging-Rule-Install', {0, '*'}},
     {'Default-EPS-Bearer-QoS', {0, 1}},
     {'QoS-Information', {0, '*'}},
     {'Default-QoS-Information', {0, 1}},
     {'Revalidation-Time', {0, 1}},
     {'Usage-Monitoring-Information', {0, '*'}},
     {'PCSCF-Restoration-Indication', {0, 1}},
     {'Proxy-Info', {0, '*'}},
     {'Route-Record', {0, '*'}},
     {'AVP', {0, '*'}}];
avp_arity('RAA') ->
    [{'Session-Id', 1},
     {'Origin-Host', 1},
     {'Origin-Realm', 1},
     {'Result-Code', {0, 1}},
     {'Experimental-Result', {0, 1}},
     {'Origin-State-Id', {0, 1}},
     {'IP-CAN-Type', {0, 1}},
     {'RAT-Type', {0, 1}},
     {'AN-GW-Address', {0, 2}},
     {'3GPP-SGSN-MCC-MNC', {0, 1}},
     {'3GPP-SGSN-Address', {0, 1}},
     {'3GPP-SGSN-IPv6-Address', {0, 1}},
     {'RAI', {0, 1}},
     {'3GPP-User-Location-Info', {0, 1}},
     {'User-Location-Info-Time', {0, 1}},
     {'NetLoc-Access-Support', {0, 1}},
     {'3GPP-MS-TimeZone', {0, 1}},
     {'Default-QoS-Information', {0, 1}},
     {'Charging-Rule-Report', {0, '*'}},
     {'Error-Message', {0, 1}},
     {'Error-Reporting-Host', {0, 1}},
     {'Failed-AVP', {0, '*'}},
     {'Proxy-Info', {0, '*'}},
     {'AVP', {0, '*'}}];
avp_arity('Access-Network-Charging-Identifier-Gx') ->
    [{'Access-Network-Charging-Identifier-Value', 1},
     {'Charging-Rule-Base-Name', {0, '*'}},
     {'Charging-Rule-Name', {0, '*'}},
     {'IP-CAN-Session-Charging-Scope', {0, 1}},
     {'AVP', {0, '*'}}];
avp_arity('Allocation-Retention-Priority') ->
    [{'Priority-Level', 1},
     {'Pre-emption-Capability', {0, 1}},
     {'Pre-emption-Vulnerability', {0, 1}}];
avp_arity('Application-Detection-Information') ->
    [{'TDF-Application-Identifier', 1},
     {'TDF-Application-Instance-Identifier', {0, 1}},
     {'Flow-Information', {0, '*'}},
     {'AVP', {0, '*'}}];
avp_arity('Charging-Rule-Definition') ->
    [{'Charging-Rule-Name', 1},
     {'Service-Identifier', {0, 1}},
     {'Rating-Group', {0, 1}},
     {'Flow-Information', {0, '*'}},
     {'TDF-Application-Identifier', {0, 1}},
     {'Flow-Status', {0, 1}},
     {'QoS-Information', {0, 1}},
     {'PS-to-CS-Session-Continuity', {0, 1}},
     {'Reporting-Level', {0, 1}},
     {'Online', {0, 1}},
     {'Offline', {0, 1}},
     {'Metering-Method', {0, 1}},
     {'Precedence', {0, 1}},
     {'AF-Charging-Identifier', {0, 1}},
     {'Flows', {0, '*'}},
     {'Monitoring-Key', {0, 1}},
     {'Redirect-Information', {0, 1}},
     {'Mute-Notification', {0, 1}},
     {'AF-Signalling-Protocol', {0, 1}},
     {'Sponsor-Identity', {0, 1}},
     {'Application-Service-Provider-Identity', {0, 1}},
     {'Required-Access-Info', {0, '*'}},
     {'AVP', {0, '*'}}];
avp_arity('Charging-Rule-Install') ->
    [{'Charging-Rule-Definition', {0, '*'}},
     {'Charging-Rule-Name', {0, '*'}},
     {'Charging-Rule-Base-Name', {0, '*'}},
     {'Bearer-Identifier', {0, 1}},
     {'Rule-Activation-Time', {0, 1}},
     {'Rule-Deactivation-Time', {0, 1}},
     {'Resource-Allocation-Notification', {0, 1}},
     {'Charging-Correlation-Indicator', {0, 1}},
     {'AVP', {0, '*'}}];
avp_arity('Charging-Rule-Remove') ->
    [{'Charging-Rule-Name', {0, '*'}},
     {'Charging-Rule-Base-Name', {0, '*'}},
     {'Required-Access-Info', {0, '*'}},
     {'AVP', {0, '*'}}];
avp_arity('Charging-Rule-Report') ->
    [{'Charging-Rule-Name', {0, '*'}},
     {'Charging-Rule-Base-Name', {0, '*'}},
     {'Bearer-Identifier', {0, 1}},
     {'PCC-Rule-Status', {0, 1}},
     {'Rule-Failure-Code', {0, 1}},
     {'Final-Unit-Indication', {0, 1}},
     {'RAN-NAS-Release-Cause', {0, '*'}},
     {'AVP', {0, '*'}}];
avp_arity('CoA-Information') ->
    [{'Tunnel-Information', 1},
     {'CoA-IP-Address', 1},
     {'AVP', {0, '*'}}];
avp_arity('Conditional-APN-Aggregate-Max-Bitrate') ->
    [{'APN-Aggregate-Max-Bitrate-UL', {0, 1}},
     {'APN-Aggregate-Max-Bitrate-DL', {0, 1}},
     {'IP-CAN-Type', {0, '*'}},
     {'RAT-Type', {0, '*'}},
     {'AVP', {0, '*'}}];
avp_arity('Default-EPS-Bearer-QoS') ->
    [{'QoS-Class-Identifier', {0, 1}},
     {'Allocation-Retention-Priority', {0, 1}},
     {'AVP', {0, '*'}}];
avp_arity('Default-QoS-Information') ->
    [{'QoS-Class-Identifier', {0, 1}},
     {'Max-Requested-Bandwidth-UL', {0, 1}},
     {'Max-Requested-Bandwidth-DL', {0, 1}},
     {'Default-QoS-Name', {0, 1}},
     {'AVP', {0, '*'}}];
avp_arity('Event-Report-Indication') ->
    [{'Event-Trigger', {0, '*'}},
     {'IP-CAN-Type', {0, 1}},
     {'AN-GW-Address', {0, 2}},
     {'3GPP-SGSN-Address', {0, 1}},
     {'3GPP-SGSN-IPv6-Address', {0, 1}},
     {'3GPP-SGSN-MCC-MNC', {0, 1}},
     {'Framed-IP-Address', {0, 1}},
     {'RAT-Type', {0, 1}},
     {'RAI', {0, 1}},
     {'3GPP-User-Location-Info', {0, 1}},
     {'3GPP-MS-TimeZone', {0, 1}},
     {'Routing-IP-Address', {0, 1}},
     {'UE-Local-IP-Address', {0, 1}},
     {'HeNB-Local-IP-Address', {0, 1}},
     {'UDP-Source-Port', {0, 1}},
     {'Presence-Reporting-Area-Information', {0, 1}},
     {'AVP', {0, '*'}}];
avp_arity('Fixed-User-Location-Info') ->
    [{'Logical-Access-ID', {0, 1}},
     {'Physical-Access-ID', {0, 1}},
     {'AVP', {0, '*'}}];
avp_arity('Flow-Information') ->
    [{'Flow-Description', {0, 1}},
     {'Packet-Filter-Identifier', {0, 1}},
     {'Packet-Filter-Usage', {0, 1}},
     {'ToS-Traffic-Class', {0, 1}},
     {'Security-Parameter-Index', {0, 1}},
     {'Flow-Label', {0, 1}},
     {'Flow-Direction', {0, 1}},
     {'AVP', {0, '*'}}];
avp_arity('Packet-Filter-Information') ->
    [{'Packet-Filter-Identifier', {0, 1}},
     {'Precedence', {0, 1}},
     {'Packet-Filter-Content', {0, 1}},
     {'ToS-Traffic-Class', {0, 1}},
     {'Security-Parameter-Index', {0, 1}},
     {'Flow-Label', {0, 1}},
     {'Flow-Direction', {0, 1}},
     {'AVP', {0, '*'}}];
avp_arity('Presence-Reporting-Area-Information') ->
    [{'Presence-Reporting-Area-Identifier', {0, 1}},
     {'Presence-Reporting-Area-Status', {0, 1}},
     {'Presence-Reporting-Area-Elements-List', {0, 1}},
     {'AVP', {0, '*'}}];
avp_arity('QoS-Information') ->
    [{'QoS-Class-Identifier', {0, 1}},
     {'Max-Requested-Bandwidth-UL', {0, 1}},
     {'Max-Requested-Bandwidth-DL', {0, 1}},
     {'Guaranteed-Bitrate-UL', {0, 1}},
     {'Guaranteed-Bitrate-DL', {0, 1}},
     {'Bearer-Identifier', {0, 1}},
     {'Allocation-Retention-Priority', {0, 1}},
     {'APN-Aggregate-Max-Bitrate-UL', {0, 1}},
     {'APN-Aggregate-Max-Bitrate-DL', {0, 1}},
     {'Conditional-APN-Aggregate-Max-Bitrate', {0, '*'}},
     {'AVP', {0, '*'}}];
avp_arity('Redirect-Information') ->
    [{'Redirect-Support', {0, 1}},
     {'Redirect-Address-Type', {0, 1}},
     {'Redirect-Server-Address', {0, 1}},
     {'AVP', {0, '*'}}];
avp_arity('Routing-Filter') ->
    [{'Flow-Description', 1},
     {'Flow-Direction', 1},
     {'ToS-Traffic-Class', {0, 1}},
     {'Security-Parameter-Index', {0, 1}},
     {'Flow-Label', {0, 1}},
     {'AVP', {0, '*'}}];
avp_arity('Routing-Rule-Definition') ->
    [{'Routing-Rule-Identifier', 1},
     {'Routing-Filter', {0, '*'}},
     {'Precedence', {0, 1}},
     {'Routing-IP-Address', {0, 1}},
     {'AVP', {0, '*'}}];
avp_arity('Routing-Rule-Install') ->
    [{'Routing-Rule-Definition', {0, '*'}},
     {'AVP', {0, '*'}}];
avp_arity('Routing-Rule-Remove') ->
    [{'Routing-Rule-Identifier', {0, '*'}},
     {'AVP', {0, '*'}}];
avp_arity('TDF-Information') ->
    [{'TDF-Destination-Realm', {0, 1}},
     {'TDF-Destination-Host', {0, 1}},
     {'TDF-IP-Address', {0, 1}}];
avp_arity('Tunnel-Information') ->
    [{'Tunnel-Header-Length', {0, 1}},
     {'Tunnel-Header-Filter', {0, 2}},
     {'AVP', {0, '*'}}];
avp_arity('TFT-Packet-Filter-Information') ->
    [{'Precedence', {0, 1}},
     {'TFT-Filter', {0, 1}},
     {'ToS-Traffic-Class', {0, 1}},
     {'Security-Parameter-Index', {0, 1}},
     {'Flow-Label', {0, 1}},
     {'Flow-Direction', {0, 1}},
     {'AVP', {0, '*'}}];
avp_arity('Usage-Monitoring-Information') ->
    [{'Monitoring-Key', {0, 1}},
     {'Granted-Service-Unit', {0, 2}},
     {'Used-Service-Unit', {0, 2}},
     {'Usage-Monitoring-Level', {0, 1}},
     {'Usage-Monitoring-Report', {0, 1}},
     {'Usage-Monitoring-Support', {0, 1}},
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
avp_arity('Flows') ->
    [{'Media-Component-Number', 1},
     {'Flow-Number', {0, '*'}},
     {'Final-Unit-Action', {0, 1}}];
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
avp_arity(_) -> erlang:error(badarg).

avp_arity('CCR', 'Session-Id') -> 1;
avp_arity('CCR', 'Auth-Application-Id') -> 1;
avp_arity('CCR', 'Origin-Host') -> 1;
avp_arity('CCR', 'Origin-Realm') -> 1;
avp_arity('CCR', 'Destination-Realm') -> 1;
avp_arity('CCR', 'CC-Request-Type') -> 1;
avp_arity('CCR', 'CC-Request-Number') -> 1;
avp_arity('CCR', 'Credit-Management-Status') -> {0, 1};
avp_arity('CCR', 'Destination-Host') -> {0, 1};
avp_arity('CCR', 'Origin-State-Id') -> {0, 1};
avp_arity('CCR', 'Subscription-Id') -> {0, '*'};
avp_arity('CCR', 'Supported-Features') -> {0, '*'};
avp_arity('CCR', 'TDF-Information') -> {0, 1};
avp_arity('CCR', 'Network-Request-Support') -> {0, 1};
avp_arity('CCR', 'Packet-Filter-Information') ->
    {0, '*'};
avp_arity('CCR', 'Packet-Filter-Operation') -> {0, 1};
avp_arity('CCR', 'Bearer-Identifier') -> {0, 1};
avp_arity('CCR', 'Bearer-Operation') -> {0, 1};
avp_arity('CCR', 'Framed-IP-Address') -> {0, 1};
avp_arity('CCR', 'Framed-IPv6-Prefix') -> {0, 1};
avp_arity('CCR', 'IP-CAN-Type') -> {0, 1};
avp_arity('CCR', '3GPP-RAT-Type') -> {0, 1};
avp_arity('CCR', 'RAT-Type') -> {0, 1};
avp_arity('CCR', 'Termination-Cause') -> {0, 1};
avp_arity('CCR', 'User-Equipment-Info') -> {0, 1};
avp_arity('CCR', 'QoS-Information') -> {0, 1};
avp_arity('CCR', 'QoS-Negotiation') -> {0, 1};
avp_arity('CCR', 'QoS-Upgrade') -> {0, 1};
avp_arity('CCR', 'Default-EPS-Bearer-QoS') -> {0, 1};
avp_arity('CCR', 'Default-QoS-Information') -> {0, 1};
avp_arity('CCR', 'AN-GW-Address') -> {0, 2};
avp_arity('CCR', 'AN-GW-Status') -> {0, 1};
avp_arity('CCR', '3GPP-SGSN-MCC-MNC') -> {0, 1};
avp_arity('CCR', '3GPP-SGSN-Address') -> {0, 1};
avp_arity('CCR', '3GPP-SGSN-IPv6-Address') -> {0, 1};
avp_arity('CCR', '3GPP-GGSN-Address') -> {0, 1};
avp_arity('CCR', '3GPP-GGSN-IPv6-Address') -> {0, 1};
avp_arity('CCR', '3GPP-Selection-Mode') -> {0, 1};
avp_arity('CCR', 'RAI') -> {0, 1};
avp_arity('CCR', '3GPP-User-Location-Info') -> {0, 1};
avp_arity('CCR', 'User-Location-Info-Time') -> {0, 1};
avp_arity('CCR', 'TWAN-Identifier') -> {0, 1};
avp_arity('CCR', '3GPP-MS-TimeZone') -> {0, 1};
avp_arity('CCR', 'RAN-NAS-Release-Cause') -> {0, '*'};
avp_arity('CCR', '3GPP-Charging-Characteristics') ->
    {0, 1};
avp_arity('CCR', 'Called-Station-Id') -> {0, 1};
avp_arity('CCR', 'PDN-Connection-ID') -> {0, 1};
avp_arity('CCR', 'Bearer-Usage') -> {0, 1};
avp_arity('CCR', 'Online') -> {0, 1};
avp_arity('CCR', 'Offline') -> {0, 1};
avp_arity('CCR', 'TFT-Packet-Filter-Information') ->
    {0, '*'};
avp_arity('CCR', 'Charging-Rule-Report') -> {0, '*'};
avp_arity('CCR', 'Application-Detection-Information') ->
    {0, '*'};
avp_arity('CCR', 'Event-Trigger') -> {0, '*'};
avp_arity('CCR', 'Event-Report-Indication') -> {0, 1};
avp_arity('CCR', 'Access-Network-Charging-Address') ->
    {0, 1};
avp_arity('CCR',
          'Access-Network-Charging-Identifier-Gx') ->
    {0, '*'};
avp_arity('CCR', 'CoA-Information') -> {0, '*'};
avp_arity('CCR', 'Usage-Monitoring-Information') ->
    {0, '*'};
avp_arity('CCR', 'Routing-Rule-Install') -> {0, 1};
avp_arity('CCR', 'Routing-Rule-Remove') -> {0, 1};
avp_arity('CCR', 'HeNB-Local-IP-Address') -> {0, 1};
avp_arity('CCR', 'UE-Local-IP-Address') -> {0, 1};
avp_arity('CCR', 'UDP-Source-Port') -> {0, 1};
avp_arity('CCR',
          'Presence-Reporting-Area-Information') ->
    {0, 1};
avp_arity('CCR', 'Logical-Access-ID') -> {0, 1};
avp_arity('CCR', 'Physical-Access-ID') -> {0, 1};
avp_arity('CCR', 'Proxy-Info') -> {0, '*'};
avp_arity('CCR', 'Route-Record') -> {0, '*'};
avp_arity('CCR', 'AVP') -> {0, '*'};
avp_arity('CCA', 'Session-Id') -> 1;
avp_arity('CCA', 'Auth-Application-Id') -> 1;
avp_arity('CCA', 'Origin-Host') -> 1;
avp_arity('CCA', 'Origin-Realm') -> 1;
avp_arity('CCA', 'CC-Request-Type') -> 1;
avp_arity('CCA', 'CC-Request-Number') -> 1;
avp_arity('CCA', 'Result-Code') -> {0, 1};
avp_arity('CCA', 'Experimental-Result') -> {0, 1};
avp_arity('CCA', 'Supported-Features') -> {0, '*'};
avp_arity('CCA', 'Bearer-Control-Mode') -> {0, 1};
avp_arity('CCA', 'Event-Trigger') -> {0, '*'};
avp_arity('CCA', 'Event-Report-Indication') -> {0, 1};
avp_arity('CCA', 'Origin-State-Id') -> {0, 1};
avp_arity('CCA', 'Redirect-Host') -> {0, '*'};
avp_arity('CCA', 'Redirect-Host-Usage') -> {0, 1};
avp_arity('CCA', 'Redirect-Max-Cache-Time') -> {0, 1};
avp_arity('CCA', 'Charging-Rule-Remove') -> {0, '*'};
avp_arity('CCA', 'Charging-Rule-Install') -> {0, '*'};
avp_arity('CCA', 'Charging-Information') -> {0, 1};
avp_arity('CCA', 'Online') -> {0, 1};
avp_arity('CCA', 'Offline') -> {0, 1};
avp_arity('CCA', 'QoS-Information') -> {0, '*'};
avp_arity('CCA', 'Revalidation-Time') -> {0, 1};
avp_arity('CCA', 'Default-EPS-Bearer-QoS') -> {0, 1};
avp_arity('CCA', 'Default-QoS-Information') -> {0, 1};
avp_arity('CCA', 'Bearer-Usage') -> {0, 1};
avp_arity('CCA', 'Usage-Monitoring-Information') ->
    {0, '*'};
avp_arity('CCA', 'CSG-Information-Reporting') ->
    {0, '*'};
avp_arity('CCA',
          'Presence-Reporting-Area-Information') ->
    {0, 1};
avp_arity('CCA', 'Session-Release-Cause') -> {0, 1};
avp_arity('CCA', 'Error-Message') -> {0, 1};
avp_arity('CCA', 'Error-Reporting-Host') -> {0, 1};
avp_arity('CCA', 'Failed-AVP') -> {0, '*'};
avp_arity('CCA', 'Proxy-Info') -> {0, '*'};
avp_arity('CCA', 'Route-Record') -> {0, '*'};
avp_arity('CCA', 'AVP') -> {0, '*'};
avp_arity('RAR', 'Session-Id') -> 1;
avp_arity('RAR', 'Auth-Application-Id') -> 1;
avp_arity('RAR', 'Origin-Host') -> 1;
avp_arity('RAR', 'Origin-Realm') -> 1;
avp_arity('RAR', 'Destination-Realm') -> 1;
avp_arity('RAR', 'Destination-Host') -> 1;
avp_arity('RAR', 'Re-Auth-Request-Type') -> 1;
avp_arity('RAR', 'Session-Release-Cause') -> {0, 1};
avp_arity('RAR', 'Origin-State-Id') -> {0, 1};
avp_arity('RAR', 'Event-Trigger') -> {0, '*'};
avp_arity('RAR', 'Event-Report-Indication') -> {0, 1};
avp_arity('RAR', 'Charging-Rule-Remove') -> {0, '*'};
avp_arity('RAR', 'Charging-Rule-Install') -> {0, '*'};
avp_arity('RAR', 'Default-EPS-Bearer-QoS') -> {0, 1};
avp_arity('RAR', 'QoS-Information') -> {0, '*'};
avp_arity('RAR', 'Default-QoS-Information') -> {0, 1};
avp_arity('RAR', 'Revalidation-Time') -> {0, 1};
avp_arity('RAR', 'Usage-Monitoring-Information') ->
    {0, '*'};
avp_arity('RAR', 'PCSCF-Restoration-Indication') ->
    {0, 1};
avp_arity('RAR', 'Proxy-Info') -> {0, '*'};
avp_arity('RAR', 'Route-Record') -> {0, '*'};
avp_arity('RAR', 'AVP') -> {0, '*'};
avp_arity('RAA', 'Session-Id') -> 1;
avp_arity('RAA', 'Origin-Host') -> 1;
avp_arity('RAA', 'Origin-Realm') -> 1;
avp_arity('RAA', 'Result-Code') -> {0, 1};
avp_arity('RAA', 'Experimental-Result') -> {0, 1};
avp_arity('RAA', 'Origin-State-Id') -> {0, 1};
avp_arity('RAA', 'IP-CAN-Type') -> {0, 1};
avp_arity('RAA', 'RAT-Type') -> {0, 1};
avp_arity('RAA', 'AN-GW-Address') -> {0, 2};
avp_arity('RAA', '3GPP-SGSN-MCC-MNC') -> {0, 1};
avp_arity('RAA', '3GPP-SGSN-Address') -> {0, 1};
avp_arity('RAA', '3GPP-SGSN-IPv6-Address') -> {0, 1};
avp_arity('RAA', 'RAI') -> {0, 1};
avp_arity('RAA', '3GPP-User-Location-Info') -> {0, 1};
avp_arity('RAA', 'User-Location-Info-Time') -> {0, 1};
avp_arity('RAA', 'NetLoc-Access-Support') -> {0, 1};
avp_arity('RAA', '3GPP-MS-TimeZone') -> {0, 1};
avp_arity('RAA', 'Default-QoS-Information') -> {0, 1};
avp_arity('RAA', 'Charging-Rule-Report') -> {0, '*'};
avp_arity('RAA', 'Error-Message') -> {0, 1};
avp_arity('RAA', 'Error-Reporting-Host') -> {0, 1};
avp_arity('RAA', 'Failed-AVP') -> {0, '*'};
avp_arity('RAA', 'Proxy-Info') -> {0, '*'};
avp_arity('RAA', 'AVP') -> {0, '*'};
avp_arity('Access-Network-Charging-Identifier-Gx',
          'Access-Network-Charging-Identifier-Value') ->
    1;
avp_arity('Access-Network-Charging-Identifier-Gx',
          'Charging-Rule-Base-Name') ->
    {0, '*'};
avp_arity('Access-Network-Charging-Identifier-Gx',
          'Charging-Rule-Name') ->
    {0, '*'};
avp_arity('Access-Network-Charging-Identifier-Gx',
          'IP-CAN-Session-Charging-Scope') ->
    {0, 1};
avp_arity('Access-Network-Charging-Identifier-Gx',
          'AVP') ->
    {0, '*'};
avp_arity('Allocation-Retention-Priority',
          'Priority-Level') ->
    1;
avp_arity('Allocation-Retention-Priority',
          'Pre-emption-Capability') ->
    {0, 1};
avp_arity('Allocation-Retention-Priority',
          'Pre-emption-Vulnerability') ->
    {0, 1};
avp_arity('Application-Detection-Information',
          'TDF-Application-Identifier') ->
    1;
avp_arity('Application-Detection-Information',
          'TDF-Application-Instance-Identifier') ->
    {0, 1};
avp_arity('Application-Detection-Information',
          'Flow-Information') ->
    {0, '*'};
avp_arity('Application-Detection-Information', 'AVP') ->
    {0, '*'};
avp_arity('Charging-Rule-Definition',
          'Charging-Rule-Name') ->
    1;
avp_arity('Charging-Rule-Definition',
          'Service-Identifier') ->
    {0, 1};
avp_arity('Charging-Rule-Definition', 'Rating-Group') ->
    {0, 1};
avp_arity('Charging-Rule-Definition',
          'Flow-Information') ->
    {0, '*'};
avp_arity('Charging-Rule-Definition',
          'TDF-Application-Identifier') ->
    {0, 1};
avp_arity('Charging-Rule-Definition', 'Flow-Status') ->
    {0, 1};
avp_arity('Charging-Rule-Definition',
          'QoS-Information') ->
    {0, 1};
avp_arity('Charging-Rule-Definition',
          'PS-to-CS-Session-Continuity') ->
    {0, 1};
avp_arity('Charging-Rule-Definition',
          'Reporting-Level') ->
    {0, 1};
avp_arity('Charging-Rule-Definition', 'Online') ->
    {0, 1};
avp_arity('Charging-Rule-Definition', 'Offline') ->
    {0, 1};
avp_arity('Charging-Rule-Definition',
          'Metering-Method') ->
    {0, 1};
avp_arity('Charging-Rule-Definition', 'Precedence') ->
    {0, 1};
avp_arity('Charging-Rule-Definition',
          'AF-Charging-Identifier') ->
    {0, 1};
avp_arity('Charging-Rule-Definition', 'Flows') ->
    {0, '*'};
avp_arity('Charging-Rule-Definition',
          'Monitoring-Key') ->
    {0, 1};
avp_arity('Charging-Rule-Definition',
          'Redirect-Information') ->
    {0, 1};
avp_arity('Charging-Rule-Definition',
          'Mute-Notification') ->
    {0, 1};
avp_arity('Charging-Rule-Definition',
          'AF-Signalling-Protocol') ->
    {0, 1};
avp_arity('Charging-Rule-Definition',
          'Sponsor-Identity') ->
    {0, 1};
avp_arity('Charging-Rule-Definition',
          'Application-Service-Provider-Identity') ->
    {0, 1};
avp_arity('Charging-Rule-Definition',
          'Required-Access-Info') ->
    {0, '*'};
avp_arity('Charging-Rule-Definition', 'AVP') ->
    {0, '*'};
avp_arity('Charging-Rule-Install',
          'Charging-Rule-Definition') ->
    {0, '*'};
avp_arity('Charging-Rule-Install',
          'Charging-Rule-Name') ->
    {0, '*'};
avp_arity('Charging-Rule-Install',
          'Charging-Rule-Base-Name') ->
    {0, '*'};
avp_arity('Charging-Rule-Install',
          'Bearer-Identifier') ->
    {0, 1};
avp_arity('Charging-Rule-Install',
          'Rule-Activation-Time') ->
    {0, 1};
avp_arity('Charging-Rule-Install',
          'Rule-Deactivation-Time') ->
    {0, 1};
avp_arity('Charging-Rule-Install',
          'Resource-Allocation-Notification') ->
    {0, 1};
avp_arity('Charging-Rule-Install',
          'Charging-Correlation-Indicator') ->
    {0, 1};
avp_arity('Charging-Rule-Install', 'AVP') -> {0, '*'};
avp_arity('Charging-Rule-Remove',
          'Charging-Rule-Name') ->
    {0, '*'};
avp_arity('Charging-Rule-Remove',
          'Charging-Rule-Base-Name') ->
    {0, '*'};
avp_arity('Charging-Rule-Remove',
          'Required-Access-Info') ->
    {0, '*'};
avp_arity('Charging-Rule-Remove', 'AVP') -> {0, '*'};
avp_arity('Charging-Rule-Report',
          'Charging-Rule-Name') ->
    {0, '*'};
avp_arity('Charging-Rule-Report',
          'Charging-Rule-Base-Name') ->
    {0, '*'};
avp_arity('Charging-Rule-Report',
          'Bearer-Identifier') ->
    {0, 1};
avp_arity('Charging-Rule-Report', 'PCC-Rule-Status') ->
    {0, 1};
avp_arity('Charging-Rule-Report',
          'Rule-Failure-Code') ->
    {0, 1};
avp_arity('Charging-Rule-Report',
          'Final-Unit-Indication') ->
    {0, 1};
avp_arity('Charging-Rule-Report',
          'RAN-NAS-Release-Cause') ->
    {0, '*'};
avp_arity('Charging-Rule-Report', 'AVP') -> {0, '*'};
avp_arity('CoA-Information', 'Tunnel-Information') -> 1;
avp_arity('CoA-Information', 'CoA-IP-Address') -> 1;
avp_arity('CoA-Information', 'AVP') -> {0, '*'};
avp_arity('Conditional-APN-Aggregate-Max-Bitrate',
          'APN-Aggregate-Max-Bitrate-UL') ->
    {0, 1};
avp_arity('Conditional-APN-Aggregate-Max-Bitrate',
          'APN-Aggregate-Max-Bitrate-DL') ->
    {0, 1};
avp_arity('Conditional-APN-Aggregate-Max-Bitrate',
          'IP-CAN-Type') ->
    {0, '*'};
avp_arity('Conditional-APN-Aggregate-Max-Bitrate',
          'RAT-Type') ->
    {0, '*'};
avp_arity('Conditional-APN-Aggregate-Max-Bitrate',
          'AVP') ->
    {0, '*'};
avp_arity('Default-EPS-Bearer-QoS',
          'QoS-Class-Identifier') ->
    {0, 1};
avp_arity('Default-EPS-Bearer-QoS',
          'Allocation-Retention-Priority') ->
    {0, 1};
avp_arity('Default-EPS-Bearer-QoS', 'AVP') -> {0, '*'};
avp_arity('Default-QoS-Information',
          'QoS-Class-Identifier') ->
    {0, 1};
avp_arity('Default-QoS-Information',
          'Max-Requested-Bandwidth-UL') ->
    {0, 1};
avp_arity('Default-QoS-Information',
          'Max-Requested-Bandwidth-DL') ->
    {0, 1};
avp_arity('Default-QoS-Information',
          'Default-QoS-Name') ->
    {0, 1};
avp_arity('Default-QoS-Information', 'AVP') -> {0, '*'};
avp_arity('Event-Report-Indication', 'Event-Trigger') ->
    {0, '*'};
avp_arity('Event-Report-Indication', 'IP-CAN-Type') ->
    {0, 1};
avp_arity('Event-Report-Indication', 'AN-GW-Address') ->
    {0, 2};
avp_arity('Event-Report-Indication',
          '3GPP-SGSN-Address') ->
    {0, 1};
avp_arity('Event-Report-Indication',
          '3GPP-SGSN-IPv6-Address') ->
    {0, 1};
avp_arity('Event-Report-Indication',
          '3GPP-SGSN-MCC-MNC') ->
    {0, 1};
avp_arity('Event-Report-Indication',
          'Framed-IP-Address') ->
    {0, 1};
avp_arity('Event-Report-Indication', 'RAT-Type') ->
    {0, 1};
avp_arity('Event-Report-Indication', 'RAI') -> {0, 1};
avp_arity('Event-Report-Indication',
          '3GPP-User-Location-Info') ->
    {0, 1};
avp_arity('Event-Report-Indication',
          '3GPP-MS-TimeZone') ->
    {0, 1};
avp_arity('Event-Report-Indication',
          'Routing-IP-Address') ->
    {0, 1};
avp_arity('Event-Report-Indication',
          'UE-Local-IP-Address') ->
    {0, 1};
avp_arity('Event-Report-Indication',
          'HeNB-Local-IP-Address') ->
    {0, 1};
avp_arity('Event-Report-Indication',
          'UDP-Source-Port') ->
    {0, 1};
avp_arity('Event-Report-Indication',
          'Presence-Reporting-Area-Information') ->
    {0, 1};
avp_arity('Event-Report-Indication', 'AVP') -> {0, '*'};
avp_arity('Fixed-User-Location-Info',
          'Logical-Access-ID') ->
    {0, 1};
avp_arity('Fixed-User-Location-Info',
          'Physical-Access-ID') ->
    {0, 1};
avp_arity('Fixed-User-Location-Info', 'AVP') ->
    {0, '*'};
avp_arity('Flow-Information', 'Flow-Description') ->
    {0, 1};
avp_arity('Flow-Information',
          'Packet-Filter-Identifier') ->
    {0, 1};
avp_arity('Flow-Information', 'Packet-Filter-Usage') ->
    {0, 1};
avp_arity('Flow-Information', 'ToS-Traffic-Class') ->
    {0, 1};
avp_arity('Flow-Information',
          'Security-Parameter-Index') ->
    {0, 1};
avp_arity('Flow-Information', 'Flow-Label') -> {0, 1};
avp_arity('Flow-Information', 'Flow-Direction') ->
    {0, 1};
avp_arity('Flow-Information', 'AVP') -> {0, '*'};
avp_arity('Packet-Filter-Information',
          'Packet-Filter-Identifier') ->
    {0, 1};
avp_arity('Packet-Filter-Information', 'Precedence') ->
    {0, 1};
avp_arity('Packet-Filter-Information',
          'Packet-Filter-Content') ->
    {0, 1};
avp_arity('Packet-Filter-Information',
          'ToS-Traffic-Class') ->
    {0, 1};
avp_arity('Packet-Filter-Information',
          'Security-Parameter-Index') ->
    {0, 1};
avp_arity('Packet-Filter-Information', 'Flow-Label') ->
    {0, 1};
avp_arity('Packet-Filter-Information',
          'Flow-Direction') ->
    {0, 1};
avp_arity('Packet-Filter-Information', 'AVP') ->
    {0, '*'};
avp_arity('Presence-Reporting-Area-Information',
          'Presence-Reporting-Area-Identifier') ->
    {0, 1};
avp_arity('Presence-Reporting-Area-Information',
          'Presence-Reporting-Area-Status') ->
    {0, 1};
avp_arity('Presence-Reporting-Area-Information',
          'Presence-Reporting-Area-Elements-List') ->
    {0, 1};
avp_arity('Presence-Reporting-Area-Information',
          'AVP') ->
    {0, '*'};
avp_arity('QoS-Information', 'QoS-Class-Identifier') ->
    {0, 1};
avp_arity('QoS-Information',
          'Max-Requested-Bandwidth-UL') ->
    {0, 1};
avp_arity('QoS-Information',
          'Max-Requested-Bandwidth-DL') ->
    {0, 1};
avp_arity('QoS-Information', 'Guaranteed-Bitrate-UL') ->
    {0, 1};
avp_arity('QoS-Information', 'Guaranteed-Bitrate-DL') ->
    {0, 1};
avp_arity('QoS-Information', 'Bearer-Identifier') ->
    {0, 1};
avp_arity('QoS-Information',
          'Allocation-Retention-Priority') ->
    {0, 1};
avp_arity('QoS-Information',
          'APN-Aggregate-Max-Bitrate-UL') ->
    {0, 1};
avp_arity('QoS-Information',
          'APN-Aggregate-Max-Bitrate-DL') ->
    {0, 1};
avp_arity('QoS-Information',
          'Conditional-APN-Aggregate-Max-Bitrate') ->
    {0, '*'};
avp_arity('QoS-Information', 'AVP') -> {0, '*'};
avp_arity('Redirect-Information', 'Redirect-Support') ->
    {0, 1};
avp_arity('Redirect-Information',
          'Redirect-Address-Type') ->
    {0, 1};
avp_arity('Redirect-Information',
          'Redirect-Server-Address') ->
    {0, 1};
avp_arity('Redirect-Information', 'AVP') -> {0, '*'};
avp_arity('Routing-Filter', 'Flow-Description') -> 1;
avp_arity('Routing-Filter', 'Flow-Direction') -> 1;
avp_arity('Routing-Filter', 'ToS-Traffic-Class') ->
    {0, 1};
avp_arity('Routing-Filter',
          'Security-Parameter-Index') ->
    {0, 1};
avp_arity('Routing-Filter', 'Flow-Label') -> {0, 1};
avp_arity('Routing-Filter', 'AVP') -> {0, '*'};
avp_arity('Routing-Rule-Definition',
          'Routing-Rule-Identifier') ->
    1;
avp_arity('Routing-Rule-Definition',
          'Routing-Filter') ->
    {0, '*'};
avp_arity('Routing-Rule-Definition', 'Precedence') ->
    {0, 1};
avp_arity('Routing-Rule-Definition',
          'Routing-IP-Address') ->
    {0, 1};
avp_arity('Routing-Rule-Definition', 'AVP') -> {0, '*'};
avp_arity('Routing-Rule-Install',
          'Routing-Rule-Definition') ->
    {0, '*'};
avp_arity('Routing-Rule-Install', 'AVP') -> {0, '*'};
avp_arity('Routing-Rule-Remove',
          'Routing-Rule-Identifier') ->
    {0, '*'};
avp_arity('Routing-Rule-Remove', 'AVP') -> {0, '*'};
avp_arity('TDF-Information', 'TDF-Destination-Realm') ->
    {0, 1};
avp_arity('TDF-Information', 'TDF-Destination-Host') ->
    {0, 1};
avp_arity('TDF-Information', 'TDF-IP-Address') ->
    {0, 1};
avp_arity('Tunnel-Information',
          'Tunnel-Header-Length') ->
    {0, 1};
avp_arity('Tunnel-Information',
          'Tunnel-Header-Filter') ->
    {0, 2};
avp_arity('Tunnel-Information', 'AVP') -> {0, '*'};
avp_arity('TFT-Packet-Filter-Information',
          'Precedence') ->
    {0, 1};
avp_arity('TFT-Packet-Filter-Information',
          'TFT-Filter') ->
    {0, 1};
avp_arity('TFT-Packet-Filter-Information',
          'ToS-Traffic-Class') ->
    {0, 1};
avp_arity('TFT-Packet-Filter-Information',
          'Security-Parameter-Index') ->
    {0, 1};
avp_arity('TFT-Packet-Filter-Information',
          'Flow-Label') ->
    {0, 1};
avp_arity('TFT-Packet-Filter-Information',
          'Flow-Direction') ->
    {0, 1};
avp_arity('TFT-Packet-Filter-Information', 'AVP') ->
    {0, '*'};
avp_arity('Usage-Monitoring-Information',
          'Monitoring-Key') ->
    {0, 1};
avp_arity('Usage-Monitoring-Information',
          'Granted-Service-Unit') ->
    {0, 2};
avp_arity('Usage-Monitoring-Information',
          'Used-Service-Unit') ->
    {0, 2};
avp_arity('Usage-Monitoring-Information',
          'Usage-Monitoring-Level') ->
    {0, 1};
avp_arity('Usage-Monitoring-Information',
          'Usage-Monitoring-Report') ->
    {0, 1};
avp_arity('Usage-Monitoring-Information',
          'Usage-Monitoring-Support') ->
    {0, 1};
avp_arity('Usage-Monitoring-Information', 'AVP') ->
    {0, '*'};
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
avp_arity('Flows', 'Media-Component-Number') -> 1;
avp_arity('Flows', 'Flow-Number') -> {0, '*'};
avp_arity('Flows', 'Final-Unit-Action') -> {0, 1};
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
avp_arity(_, _) -> 0.

avp_header('AN-GW-Address') -> {1050, 128, 10415};
avp_header('AN-GW-Status') -> {2811, 128, 10415};
avp_header('APN-Aggregate-Max-Bitrate-DL') ->
    {1040, 128, 10415};
avp_header('APN-Aggregate-Max-Bitrate-UL') ->
    {1041, 128, 10415};
avp_header('Access-Network-Charging-Identifier-Gx') ->
    {1022, 192, 10415};
avp_header('Allocation-Retention-Priority') ->
    {1034, 128, 10415};
avp_header('Application-Detection-Information') ->
    {1098, 128, 10415};
avp_header('Bearer-Control-Mode') -> {1023, 192, 10415};
avp_header('Bearer-Identifier') -> {1020, 192, 10415};
avp_header('Bearer-Operation') -> {1021, 192, 10415};
avp_header('Bearer-Usage') -> {1000, 192, 10415};
avp_header('CSG-Information-Reporting') ->
    {1071, 128, 10415};
avp_header('Charging-Correlation-Indicator') ->
    {1073, 128, 10415};
avp_header('Charging-Rule-Base-Name') ->
    {1004, 192, 10415};
avp_header('Charging-Rule-Definition') ->
    {1003, 192, 10415};
avp_header('Charging-Rule-Install') ->
    {1001, 192, 10415};
avp_header('Charging-Rule-Name') -> {1005, 192, 10415};
avp_header('Charging-Rule-Remove') ->
    {1002, 192, 10415};
avp_header('Charging-Rule-Report') ->
    {1018, 192, 10415};
avp_header('CoA-IP-Address') -> {1035, 128, 10415};
avp_header('CoA-Information') -> {1039, 128, 10415};
avp_header('Conditional-APN-Aggregate-Max-Bitrate') ->
    {2818, 128, 10415};
avp_header('Credit-Management-Status') ->
    {1082, 128, 10415};
avp_header('Default-EPS-Bearer-QoS') ->
    {1049, 128, 10415};
avp_header('Default-QoS-Information') ->
    {2816, 128, 10415};
avp_header('Default-QoS-Name') -> {2817, 128, 10415};
avp_header('Event-Report-Indication') ->
    {1033, 128, 10415};
avp_header('Event-Trigger') -> {1006, 192, 10415};
avp_header('Fixed-User-Location-Info') ->
    {2825, 128, 10415};
avp_header('Flow-Direction') -> {1080, 128, 10415};
avp_header('Flow-Information') -> {1058, 128, 10415};
avp_header('Flow-Label') -> {1057, 128, 10415};
avp_header('Guaranteed-Bitrate-DL') ->
    {1025, 192, 10415};
avp_header('Guaranteed-Bitrate-UL') ->
    {1026, 192, 10415};
avp_header('HeNB-Local-IP-Address') ->
    {2804, 128, 10415};
avp_header('IP-CAN-Session-Charging-Scope') ->
    {2827, 128, 10415};
avp_header('IP-CAN-Type') -> {1027, 192, 10415};
avp_header('Metering-Method') -> {1007, 192, 10415};
avp_header('Monitoring-Key') -> {1066, 128, 10415};
avp_header('Monitoring-Time') -> {2810, 128, 10415};
avp_header('Mute-Notification') -> {2809, 128, 10415};
avp_header('NetLoc-Access-Support') ->
    {2824, 128, 10415};
avp_header('Network-Request-Support') ->
    {1024, 192, 10415};
avp_header('Offline') -> {1008, 192, 10415};
avp_header('Online') -> {1009, 192, 10415};
avp_header('PCC-Rule-Status') -> {1019, 192, 10415};
avp_header('PCSCF-Restoration-Indication') ->
    {2826, 128, 10415};
avp_header('PDN-Connection-ID') -> {1065, 128, 10415};
avp_header('PS-to-CS-Session-Continuity') ->
    {1099, 128, 10415};
avp_header('Packet-Filter-Content') ->
    {1059, 128, 10415};
avp_header('Packet-Filter-Identifier') ->
    {1060, 128, 10415};
avp_header('Packet-Filter-Information') ->
    {1061, 128, 10415};
avp_header('Packet-Filter-Operation') ->
    {1062, 128, 10415};
avp_header('Packet-Filter-Usage') -> {1072, 128, 10415};
avp_header('Pre-emption-Capability') ->
    {1047, 128, 10415};
avp_header('Pre-emption-Vulnerability') ->
    {1048, 128, 10415};
avp_header('Precedence') -> {1010, 192, 10415};
avp_header('Presence-Reporting-Area-Elements-List') ->
    {2820, 128, 10415};
avp_header('Presence-Reporting-Area-Identifier') ->
    {2821, 128, 10415};
avp_header('Presence-Reporting-Area-Information') ->
    {2822, 128, 10415};
avp_header('Presence-Reporting-Area-Status') ->
    {2823, 128, 10415};
avp_header('Priority-Level') -> {1046, 128, 10415};
avp_header('QoS-Class-Identifier') ->
    {1028, 192, 10415};
avp_header('QoS-Information') -> {1016, 192, 10415};
avp_header('QoS-Negotiation') -> {1029, 192, 10415};
avp_header('QoS-Upgrade') -> {1030, 192, 10415};
avp_header('RAN-NAS-Release-Cause') ->
    {2819, 128, 10415};
avp_header('RAT-Type') -> {1032, 128, 10415};
avp_header('Redirect-Information') ->
    {1085, 128, 10415};
avp_header('Redirect-Support') -> {1086, 128, 10415};
avp_header('Reporting-Level') -> {1011, 192, 10415};
avp_header('Resource-Allocation-Notification') ->
    {1063, 128, 10415};
avp_header('Revalidation-Time') -> {1042, 192, 10415};
avp_header('Routing-Filter') -> {1078, 128, 10415};
avp_header('Routing-IP-Address') -> {1079, 128, 10415};
avp_header('Routing-Rule-Definition') ->
    {1076, 128, 10415};
avp_header('Routing-Rule-Identifier') ->
    {1077, 128, 10415};
avp_header('Routing-Rule-Install') ->
    {1081, 128, 10415};
avp_header('Routing-Rule-Remove') -> {1075, 128, 10415};
avp_header('Rule-Activation-Time') ->
    {1043, 192, 10415};
avp_header('Rule-Deactivation-Time') ->
    {1044, 192, 10415};
avp_header('Rule-Failure-Code') -> {1031, 192, 10415};
avp_header('Security-Parameter-Index') ->
    {1056, 128, 10415};
avp_header('Session-Release-Cause') ->
    {1045, 192, 10415};
avp_header('TDF-Application-Identifier') ->
    {1088, 128, 10415};
avp_header('TDF-Application-Instance-Identifier') ->
    {2802, 128, 10415};
avp_header('TDF-Destination-Host') ->
    {1089, 128, 10415};
avp_header('TDF-Destination-Realm') ->
    {1090, 128, 10415};
avp_header('TDF-IP-Address') -> {1091, 128, 10415};
avp_header('TDF-Information') -> {1087, 128, 10415};
avp_header('TFT-Filter') -> {1012, 192, 10415};
avp_header('TFT-Packet-Filter-Information') ->
    {1013, 192, 10415};
avp_header('ToS-Traffic-Class') -> {1014, 192, 10415};
avp_header('Tunnel-Header-Filter') ->
    {1036, 128, 10415};
avp_header('Tunnel-Header-Length') ->
    {1037, 128, 10415};
avp_header('Tunnel-Information') -> {1038, 128, 10415};
avp_header('UDP-Source-Port') -> {2806, 128, 10415};
avp_header('UE-Local-IP-Address') -> {2805, 128, 10415};
avp_header('Usage-Monitoring-Information') ->
    {1067, 128, 10415};
avp_header('Usage-Monitoring-Level') ->
    {1068, 128, 10415};
avp_header('Usage-Monitoring-Report') ->
    {1069, 128, 10415};
avp_header('Usage-Monitoring-Support') ->
    {1070, 128, 10415};
avp_header('User-Location-Info-Time') ->
    {2812, 128, 10415};
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
avp_header('Called-Station-Id') ->
    diameter_rfc4005_nasreq:avp_header('Called-Station-Id');
avp_header('Framed-IP-Address') ->
    diameter_rfc4005_nasreq:avp_header('Framed-IP-Address');
avp_header('Framed-IPv6-Prefix') ->
    diameter_rfc4005_nasreq:avp_header('Framed-IPv6-Prefix');
avp_header('CC-Correlation-Id') ->
    diameter_rfc4006_cc:avp_header('CC-Correlation-Id');
avp_header('CC-Input-Octets') ->
    diameter_rfc4006_cc:avp_header('CC-Input-Octets');
avp_header('CC-Money') ->
    diameter_rfc4006_cc:avp_header('CC-Money');
avp_header('CC-Output-Octets') ->
    diameter_rfc4006_cc:avp_header('CC-Output-Octets');
avp_header('CC-Request-Number') ->
    diameter_rfc4006_cc:avp_header('CC-Request-Number');
avp_header('CC-Request-Type') ->
    diameter_rfc4006_cc:avp_header('CC-Request-Type');
avp_header('CC-Service-Specific-Units') ->
    diameter_rfc4006_cc:avp_header('CC-Service-Specific-Units');
avp_header('CC-Session-Failover') ->
    diameter_rfc4006_cc:avp_header('CC-Session-Failover');
avp_header('CC-Sub-Session-Id') ->
    diameter_rfc4006_cc:avp_header('CC-Sub-Session-Id');
avp_header('CC-Time') ->
    diameter_rfc4006_cc:avp_header('CC-Time');
avp_header('CC-Total-Octets') ->
    diameter_rfc4006_cc:avp_header('CC-Total-Octets');
avp_header('CC-Unit-Type') ->
    diameter_rfc4006_cc:avp_header('CC-Unit-Type');
avp_header('Check-Balance-Result') ->
    diameter_rfc4006_cc:avp_header('Check-Balance-Result');
avp_header('Cost-Information') ->
    diameter_rfc4006_cc:avp_header('Cost-Information');
avp_header('Cost-Unit') ->
    diameter_rfc4006_cc:avp_header('Cost-Unit');
avp_header('Credit-Control') ->
    diameter_rfc4006_cc:avp_header('Credit-Control');
avp_header('Credit-Control-Failure-Handling') ->
    diameter_rfc4006_cc:avp_header('Credit-Control-Failure-Handling');
avp_header('Currency-Code') ->
    diameter_rfc4006_cc:avp_header('Currency-Code');
avp_header('Direct-Debiting-Failure-Handling') ->
    diameter_rfc4006_cc:avp_header('Direct-Debiting-Failure-Handling');
avp_header('Exponent') ->
    diameter_rfc4006_cc:avp_header('Exponent');
avp_header('Final-Unit-Action') ->
    diameter_rfc4006_cc:avp_header('Final-Unit-Action');
avp_header('Final-Unit-Indication') ->
    diameter_rfc4006_cc:avp_header('Final-Unit-Indication');
avp_header('G-S-U-Pool-Identifier') ->
    diameter_rfc4006_cc:avp_header('G-S-U-Pool-Identifier');
avp_header('G-S-U-Pool-Reference') ->
    diameter_rfc4006_cc:avp_header('G-S-U-Pool-Reference');
avp_header('Granted-Service-Unit') ->
    diameter_rfc4006_cc:avp_header('Granted-Service-Unit');
avp_header('Multiple-Services-Credit-Control') ->
    diameter_rfc4006_cc:avp_header('Multiple-Services-Credit-Control');
avp_header('Multiple-Services-Indicator') ->
    diameter_rfc4006_cc:avp_header('Multiple-Services-Indicator');
avp_header('Rating-Group') ->
    diameter_rfc4006_cc:avp_header('Rating-Group');
avp_header('Redirect-Address-Type') ->
    diameter_rfc4006_cc:avp_header('Redirect-Address-Type');
avp_header('Redirect-Server') ->
    diameter_rfc4006_cc:avp_header('Redirect-Server');
avp_header('Redirect-Server-Address') ->
    diameter_rfc4006_cc:avp_header('Redirect-Server-Address');
avp_header('Requested-Action') ->
    diameter_rfc4006_cc:avp_header('Requested-Action');
avp_header('Requested-Service-Unit') ->
    diameter_rfc4006_cc:avp_header('Requested-Service-Unit');
avp_header('Restriction-Filter-Rule') ->
    diameter_rfc4006_cc:avp_header('Restriction-Filter-Rule');
avp_header('Service-Context-Id') ->
    diameter_rfc4006_cc:avp_header('Service-Context-Id');
avp_header('Service-Identifier') ->
    diameter_rfc4006_cc:avp_header('Service-Identifier');
avp_header('Service-Parameter-Info') ->
    diameter_rfc4006_cc:avp_header('Service-Parameter-Info');
avp_header('Service-Parameter-Type') ->
    diameter_rfc4006_cc:avp_header('Service-Parameter-Type');
avp_header('Service-Parameter-Value') ->
    diameter_rfc4006_cc:avp_header('Service-Parameter-Value');
avp_header('Subscription-Id') ->
    diameter_rfc4006_cc:avp_header('Subscription-Id');
avp_header('Subscription-Id-Data') ->
    diameter_rfc4006_cc:avp_header('Subscription-Id-Data');
avp_header('Subscription-Id-Type') ->
    diameter_rfc4006_cc:avp_header('Subscription-Id-Type');
avp_header('Tariff-Change-Usage') ->
    diameter_rfc4006_cc:avp_header('Tariff-Change-Usage');
avp_header('Tariff-Time-Change') ->
    diameter_rfc4006_cc:avp_header('Tariff-Time-Change');
avp_header('Unit-Value') ->
    diameter_rfc4006_cc:avp_header('Unit-Value');
avp_header('Used-Service-Unit') ->
    diameter_rfc4006_cc:avp_header('Used-Service-Unit');
avp_header('User-Equipment-Info') ->
    diameter_rfc4006_cc:avp_header('User-Equipment-Info');
avp_header('User-Equipment-Info-Type') ->
    diameter_rfc4006_cc:avp_header('User-Equipment-Info-Type');
avp_header('User-Equipment-Info-Value') ->
    diameter_rfc4006_cc:avp_header('User-Equipment-Info-Value');
avp_header('Validity-Time') ->
    diameter_rfc4006_cc:avp_header('Validity-Time');
avp_header('Value-Digits') ->
    diameter_rfc4006_cc:avp_header('Value-Digits');
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
avp_header('Address-Realm') ->
    diameter_etsi_es283_034:avp_header('Address-Realm');
avp_header('Aggregation-Network-Type') ->
    diameter_etsi_es283_034:avp_header('Aggregation-Network-Type');
avp_header('Application-Class-ID') ->
    diameter_etsi_es283_034:avp_header('Application-Class-ID');
avp_header('IP-Connectivity-Status') ->
    diameter_etsi_es283_034:avp_header('IP-Connectivity-Status');
avp_header('Initial-Gate-Setting-ID') ->
    diameter_etsi_es283_034:avp_header('Initial-Gate-Setting-ID');
avp_header('Logical-Access-ID') ->
    diameter_etsi_es283_034:avp_header('Logical-Access-ID');
avp_header('Maximum-Allowed-Bandwidth-DL') ->
    diameter_etsi_es283_034:avp_header('Maximum-Allowed-Bandwidth-DL');
avp_header('Maximum-Allowed-Bandwidth-UL') ->
    diameter_etsi_es283_034:avp_header('Maximum-Allowed-Bandwidth-UL');
avp_header('Physical-Access-ID') ->
    diameter_etsi_es283_034:avp_header('Physical-Access-ID');
avp_header('QoS-Profile-ID') ->
    diameter_etsi_es283_034:avp_header('QoS-Profile-ID');
avp_header('Transport-Class') ->
    diameter_etsi_es283_034:avp_header('Transport-Class');
avp_header('Additional-MBMS-Trace-Info') ->
    diameter_3gpp_ts29_061_gmb:avp_header('Additional-MBMS-Trace-Info');
avp_header('Alternative-APN') ->
    diameter_3gpp_ts29_061_gmb:avp_header('Alternative-APN');
avp_header('CN-IP-Multicast-Distribution') ->
    diameter_3gpp_ts29_061_gmb:avp_header('CN-IP-Multicast-Distribution');
avp_header('MBMS-2G-3G-Indicator') ->
    diameter_3gpp_ts29_061_gmb:avp_header('MBMS-2G-3G-Indicator');
avp_header('MBMS-BMSC-SSM-IP-Address') ->
    diameter_3gpp_ts29_061_gmb:avp_header('MBMS-BMSC-SSM-IP-Address');
avp_header('MBMS-BMSC-SSM-IPv6-Address') ->
    diameter_3gpp_ts29_061_gmb:avp_header('MBMS-BMSC-SSM-IPv6-Address');
avp_header('MBMS-Counting-Information') ->
    diameter_3gpp_ts29_061_gmb:avp_header('MBMS-Counting-Information');
avp_header('MBMS-Flow-Identifier') ->
    diameter_3gpp_ts29_061_gmb:avp_header('MBMS-Flow-Identifier');
avp_header('MBMS-GGSN-Address') ->
    diameter_3gpp_ts29_061_gmb:avp_header('MBMS-GGSN-Address');
avp_header('MBMS-GGSN-IPv6-Address') ->
    diameter_3gpp_ts29_061_gmb:avp_header('MBMS-GGSN-IPv6-Address');
avp_header('MBMS-HC-Indicator') ->
    diameter_3gpp_ts29_061_gmb:avp_header('MBMS-HC-Indicator');
avp_header('MBMS-Required-QoS') ->
    diameter_3gpp_ts29_061_gmb:avp_header('MBMS-Required-QoS');
avp_header('MBMS-Service-Area') ->
    diameter_3gpp_ts29_061_gmb:avp_header('MBMS-Service-Area');
avp_header('MBMS-Service-Type') ->
    diameter_3gpp_ts29_061_gmb:avp_header('MBMS-Service-Type');
avp_header('MBMS-Session-Duration') ->
    diameter_3gpp_ts29_061_gmb:avp_header('MBMS-Session-Duration');
avp_header('MBMS-Session-Identity') ->
    diameter_3gpp_ts29_061_gmb:avp_header('MBMS-Session-Identity');
avp_header('MBMS-Session-Repetition-Number') ->
    diameter_3gpp_ts29_061_gmb:avp_header('MBMS-Session-Repetition-Number');
avp_header('MBMS-StartStop-Indication') ->
    diameter_3gpp_ts29_061_gmb:avp_header('MBMS-StartStop-Indication');
avp_header('MBMS-Time-To-Data-Transfer') ->
    diameter_3gpp_ts29_061_gmb:avp_header('MBMS-Time-To-Data-Transfer');
avp_header('MBMS-User-Data-Mode-Indication') ->
    diameter_3gpp_ts29_061_gmb:avp_header('MBMS-User-Data-Mode-Indication');
avp_header('RAI') ->
    diameter_3gpp_ts29_061_gmb:avp_header('RAI');
avp_header('Required-MBMS-Bearer-Capabilities') ->
    diameter_3gpp_ts29_061_gmb:avp_header('Required-MBMS-Bearer-Capabilities');
avp_header('TMGI') ->
    diameter_3gpp_ts29_061_gmb:avp_header('TMGI');
avp_header('AF-Application-Identifier') ->
    diameter_3gpp_ts29_214:avp_header('AF-Application-Identifier');
avp_header('AF-Charging-Identifier') ->
    diameter_3gpp_ts29_214:avp_header('AF-Charging-Identifier');
avp_header('AF-Signalling-Protocol') ->
    diameter_3gpp_ts29_214:avp_header('AF-Signalling-Protocol');
avp_header('Abort-Cause') ->
    diameter_3gpp_ts29_214:avp_header('Abort-Cause');
avp_header('Access-Network-Charging-Address') ->
    diameter_3gpp_ts29_214:avp_header('Access-Network-Charging-Address');
avp_header('Access-Network-Charging-Identifier-Value') ->
    diameter_3gpp_ts29_214:avp_header('Access-Network-Charging-Identifier-Value');
avp_header('Application-Service-Provider-Identity') ->
    diameter_3gpp_ts29_214:avp_header('Application-Service-Provider-Identity');
avp_header('Codec-Data') ->
    diameter_3gpp_ts29_214:avp_header('Codec-Data');
avp_header('Flow-Description') ->
    diameter_3gpp_ts29_214:avp_header('Flow-Description');
avp_header('Flow-Number') ->
    diameter_3gpp_ts29_214:avp_header('Flow-Number');
avp_header('Flow-Status') ->
    diameter_3gpp_ts29_214:avp_header('Flow-Status');
avp_header('Flow-Usage') ->
    diameter_3gpp_ts29_214:avp_header('Flow-Usage');
avp_header('Flows') ->
    diameter_3gpp_ts29_214:avp_header('Flows');
avp_header('GCS-Identifier') ->
    diameter_3gpp_ts29_214:avp_header('GCS-Identifier');
avp_header('IP-Domain-Id') ->
    diameter_3gpp_ts29_214:avp_header('IP-Domain-Id');
avp_header('MPS-Identifier') ->
    diameter_3gpp_ts29_214:avp_header('MPS-Identifier');
avp_header('Max-Requested-Bandwidth-DL') ->
    diameter_3gpp_ts29_214:avp_header('Max-Requested-Bandwidth-DL');
avp_header('Max-Requested-Bandwidth-UL') ->
    diameter_3gpp_ts29_214:avp_header('Max-Requested-Bandwidth-UL');
avp_header('Media-Component-Number') ->
    diameter_3gpp_ts29_214:avp_header('Media-Component-Number');
avp_header('Media-Type') ->
    diameter_3gpp_ts29_214:avp_header('Media-Type');
avp_header('Min-Requested-Bandwidth-DL') ->
    diameter_3gpp_ts29_214:avp_header('Min-Requested-Bandwidth-DL');
avp_header('Min-Requested-Bandwidth-UL') ->
    diameter_3gpp_ts29_214:avp_header('Min-Requested-Bandwidth-UL');
avp_header('RR-Bandwidth') ->
    diameter_3gpp_ts29_214:avp_header('RR-Bandwidth');
avp_header('RS-Bandwidth') ->
    diameter_3gpp_ts29_214:avp_header('RS-Bandwidth');
avp_header('Required-Access-Info') ->
    diameter_3gpp_ts29_214:avp_header('Required-Access-Info');
avp_header('Rx-Request-Type') ->
    diameter_3gpp_ts29_214:avp_header('Rx-Request-Type');
avp_header('SIP-Forking-Indication') ->
    diameter_3gpp_ts29_214:avp_header('SIP-Forking-Indication');
avp_header('Service-Info-Status') ->
    diameter_3gpp_ts29_214:avp_header('Service-Info-Status');
avp_header('Service-URN') ->
    diameter_3gpp_ts29_214:avp_header('Service-URN');
avp_header('Specific-Action') ->
    diameter_3gpp_ts29_214:avp_header('Specific-Action');
avp_header('Sponsor-Identity') ->
    diameter_3gpp_ts29_214:avp_header('Sponsor-Identity');
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
avp_header(_) -> erlang:error(badarg).

avp(T, Data, 'AN-GW-Address', Opts) ->
    diameter_types:'Address'(T, Data, Opts);
avp(T, Data, 'AN-GW-Status', _) ->
    enumerated_avp(T, 'AN-GW-Status', Data);
avp(T, Data, 'APN-Aggregate-Max-Bitrate-DL', Opts) ->
    diameter_types:'Unsigned32'(T, Data, Opts);
avp(T, Data, 'APN-Aggregate-Max-Bitrate-UL', Opts) ->
    diameter_types:'Unsigned32'(T, Data, Opts);
avp(T, Data, 'Access-Network-Charging-Identifier-Gx',
    Opts) ->
    grouped_avp(T,
                'Access-Network-Charging-Identifier-Gx',
                Data,
                Opts);
avp(T, Data, 'Allocation-Retention-Priority', Opts) ->
    grouped_avp(T,
                'Allocation-Retention-Priority',
                Data,
                Opts);
avp(T, Data, 'Application-Detection-Information',
    Opts) ->
    grouped_avp(T,
                'Application-Detection-Information',
                Data,
                Opts);
avp(T, Data, 'Bearer-Control-Mode', _) ->
    enumerated_avp(T, 'Bearer-Control-Mode', Data);
avp(T, Data, 'Bearer-Identifier', Opts) ->
    diameter_types:'OctetString'(T, Data, Opts);
avp(T, Data, 'Bearer-Operation', _) ->
    enumerated_avp(T, 'Bearer-Operation', Data);
avp(T, Data, 'Bearer-Usage', _) ->
    enumerated_avp(T, 'Bearer-Usage', Data);
avp(T, Data, 'CSG-Information-Reporting', _) ->
    enumerated_avp(T, 'CSG-Information-Reporting', Data);
avp(T, Data, 'Charging-Correlation-Indicator', _) ->
    enumerated_avp(T,
                   'Charging-Correlation-Indicator',
                   Data);
avp(T, Data, 'Charging-Rule-Base-Name', Opts) ->
    diameter_types:'UTF8String'(T, Data, Opts);
avp(T, Data, 'Charging-Rule-Definition', Opts) ->
    grouped_avp(T, 'Charging-Rule-Definition', Data, Opts);
avp(T, Data, 'Charging-Rule-Install', Opts) ->
    grouped_avp(T, 'Charging-Rule-Install', Data, Opts);
avp(T, Data, 'Charging-Rule-Name', Opts) ->
    diameter_types:'OctetString'(T, Data, Opts);
avp(T, Data, 'Charging-Rule-Remove', Opts) ->
    grouped_avp(T, 'Charging-Rule-Remove', Data, Opts);
avp(T, Data, 'Charging-Rule-Report', Opts) ->
    grouped_avp(T, 'Charging-Rule-Report', Data, Opts);
avp(T, Data, 'CoA-IP-Address', Opts) ->
    diameter_types:'Address'(T, Data, Opts);
avp(T, Data, 'CoA-Information', Opts) ->
    grouped_avp(T, 'CoA-Information', Data, Opts);
avp(T, Data, 'Conditional-APN-Aggregate-Max-Bitrate',
    Opts) ->
    grouped_avp(T,
                'Conditional-APN-Aggregate-Max-Bitrate',
                Data,
                Opts);
avp(T, Data, 'Credit-Management-Status', Opts) ->
    diameter_types:'Unsigned32'(T, Data, Opts);
avp(T, Data, 'Default-EPS-Bearer-QoS', Opts) ->
    grouped_avp(T, 'Default-EPS-Bearer-QoS', Data, Opts);
avp(T, Data, 'Default-QoS-Information', Opts) ->
    grouped_avp(T, 'Default-QoS-Information', Data, Opts);
avp(T, Data, 'Default-QoS-Name', Opts) ->
    diameter_types:'UTF8String'(T, Data, Opts);
avp(T, Data, 'Event-Report-Indication', Opts) ->
    grouped_avp(T, 'Event-Report-Indication', Data, Opts);
avp(T, Data, 'Event-Trigger', _) ->
    enumerated_avp(T, 'Event-Trigger', Data);
avp(T, Data, 'Fixed-User-Location-Info', Opts) ->
    grouped_avp(T, 'Fixed-User-Location-Info', Data, Opts);
avp(T, Data, 'Flow-Direction', _) ->
    enumerated_avp(T, 'Flow-Direction', Data);
avp(T, Data, 'Flow-Information', Opts) ->
    grouped_avp(T, 'Flow-Information', Data, Opts);
avp(T, Data, 'Flow-Label', Opts) ->
    diameter_types:'OctetString'(T, Data, Opts);
avp(T, Data, 'Guaranteed-Bitrate-DL', Opts) ->
    diameter_types:'Unsigned32'(T, Data, Opts);
avp(T, Data, 'Guaranteed-Bitrate-UL', Opts) ->
    diameter_types:'Unsigned32'(T, Data, Opts);
avp(T, Data, 'HeNB-Local-IP-Address', Opts) ->
    diameter_types:'Address'(T, Data, Opts);
avp(T, Data, 'IP-CAN-Session-Charging-Scope', _) ->
    enumerated_avp(T,
                   'IP-CAN-Session-Charging-Scope',
                   Data);
avp(T, Data, 'IP-CAN-Type', _) ->
    enumerated_avp(T, 'IP-CAN-Type', Data);
avp(T, Data, 'Metering-Method', _) ->
    enumerated_avp(T, 'Metering-Method', Data);
avp(T, Data, 'Monitoring-Key', Opts) ->
    diameter_types:'OctetString'(T, Data, Opts);
avp(T, Data, 'Monitoring-Time', Opts) ->
    diameter_types:'Time'(T, Data, Opts);
avp(T, Data, 'Mute-Notification', _) ->
    enumerated_avp(T, 'Mute-Notification', Data);
avp(T, Data, 'NetLoc-Access-Support', Opts) ->
    diameter_types:'Unsigned32'(T, Data, Opts);
avp(T, Data, 'Network-Request-Support', _) ->
    enumerated_avp(T, 'Network-Request-Support', Data);
avp(T, Data, 'Offline', _) ->
    enumerated_avp(T, 'Offline', Data);
avp(T, Data, 'Online', _) ->
    enumerated_avp(T, 'Online', Data);
avp(T, Data, 'PCC-Rule-Status', _) ->
    enumerated_avp(T, 'PCC-Rule-Status', Data);
avp(T, Data, 'PCSCF-Restoration-Indication', Opts) ->
    diameter_types:'Unsigned32'(T, Data, Opts);
avp(T, Data, 'PDN-Connection-ID', Opts) ->
    diameter_types:'OctetString'(T, Data, Opts);
avp(T, Data, 'PS-to-CS-Session-Continuity', _) ->
    enumerated_avp(T, 'PS-to-CS-Session-Continuity', Data);
avp(T, Data, 'Packet-Filter-Content', Opts) ->
    diameter_types:'IPFilterRule'(T, Data, Opts);
avp(T, Data, 'Packet-Filter-Identifier', Opts) ->
    diameter_types:'OctetString'(T, Data, Opts);
avp(T, Data, 'Packet-Filter-Information', Opts) ->
    grouped_avp(T, 'Packet-Filter-Information', Data, Opts);
avp(T, Data, 'Packet-Filter-Operation', _) ->
    enumerated_avp(T, 'Packet-Filter-Operation', Data);
avp(T, Data, 'Packet-Filter-Usage', _) ->
    enumerated_avp(T, 'Packet-Filter-Usage', Data);
avp(T, Data, 'Pre-emption-Capability', _) ->
    enumerated_avp(T, 'Pre-emption-Capability', Data);
avp(T, Data, 'Pre-emption-Vulnerability', _) ->
    enumerated_avp(T, 'Pre-emption-Vulnerability', Data);
avp(T, Data, 'Precedence', Opts) ->
    diameter_types:'Unsigned32'(T, Data, Opts);
avp(T, Data, 'Presence-Reporting-Area-Elements-List',
    Opts) ->
    diameter_types:'OctetString'(T, Data, Opts);
avp(T, Data, 'Presence-Reporting-Area-Identifier',
    Opts) ->
    diameter_types:'OctetString'(T, Data, Opts);
avp(T, Data, 'Presence-Reporting-Area-Information',
    Opts) ->
    grouped_avp(T,
                'Presence-Reporting-Area-Information',
                Data,
                Opts);
avp(T, Data, 'Presence-Reporting-Area-Status', Opts) ->
    diameter_types:'Unsigned32'(T, Data, Opts);
avp(T, Data, 'Priority-Level', Opts) ->
    diameter_types:'Unsigned32'(T, Data, Opts);
avp(T, Data, 'QoS-Class-Identifier', _) ->
    enumerated_avp(T, 'QoS-Class-Identifier', Data);
avp(T, Data, 'QoS-Information', Opts) ->
    grouped_avp(T, 'QoS-Information', Data, Opts);
avp(T, Data, 'QoS-Negotiation', _) ->
    enumerated_avp(T, 'QoS-Negotiation', Data);
avp(T, Data, 'QoS-Upgrade', _) ->
    enumerated_avp(T, 'QoS-Upgrade', Data);
avp(T, Data, 'RAN-NAS-Release-Cause', Opts) ->
    diameter_types:'OctetString'(T, Data, Opts);
avp(T, Data, 'RAT-Type', _) ->
    enumerated_avp(T, 'RAT-Type', Data);
avp(T, Data, 'Redirect-Information', Opts) ->
    grouped_avp(T, 'Redirect-Information', Data, Opts);
avp(T, Data, 'Redirect-Support', _) ->
    enumerated_avp(T, 'Redirect-Support', Data);
avp(T, Data, 'Reporting-Level', _) ->
    enumerated_avp(T, 'Reporting-Level', Data);
avp(T, Data, 'Resource-Allocation-Notification', _) ->
    enumerated_avp(T,
                   'Resource-Allocation-Notification',
                   Data);
avp(T, Data, 'Revalidation-Time', Opts) ->
    diameter_types:'Time'(T, Data, Opts);
avp(T, Data, 'Routing-Filter', Opts) ->
    grouped_avp(T, 'Routing-Filter', Data, Opts);
avp(T, Data, 'Routing-IP-Address', Opts) ->
    diameter_types:'Address'(T, Data, Opts);
avp(T, Data, 'Routing-Rule-Definition', Opts) ->
    grouped_avp(T, 'Routing-Rule-Definition', Data, Opts);
avp(T, Data, 'Routing-Rule-Identifier', Opts) ->
    diameter_types:'OctetString'(T, Data, Opts);
avp(T, Data, 'Routing-Rule-Install', Opts) ->
    grouped_avp(T, 'Routing-Rule-Install', Data, Opts);
avp(T, Data, 'Routing-Rule-Remove', Opts) ->
    grouped_avp(T, 'Routing-Rule-Remove', Data, Opts);
avp(T, Data, 'Rule-Activation-Time', Opts) ->
    diameter_types:'Time'(T, Data, Opts);
avp(T, Data, 'Rule-Deactivation-Time', Opts) ->
    diameter_types:'Time'(T, Data, Opts);
avp(T, Data, 'Rule-Failure-Code', _) ->
    enumerated_avp(T, 'Rule-Failure-Code', Data);
avp(T, Data, 'Security-Parameter-Index', Opts) ->
    diameter_types:'OctetString'(T, Data, Opts);
avp(T, Data, 'Session-Release-Cause', _) ->
    enumerated_avp(T, 'Session-Release-Cause', Data);
avp(T, Data, 'TDF-Application-Identifier', Opts) ->
    diameter_types:'OctetString'(T, Data, Opts);
avp(T, Data, 'TDF-Application-Instance-Identifier',
    Opts) ->
    diameter_types:'OctetString'(T, Data, Opts);
avp(T, Data, 'TDF-Destination-Host', Opts) ->
    diameter_types:'DiameterIdentity'(T, Data, Opts);
avp(T, Data, 'TDF-Destination-Realm', Opts) ->
    diameter_types:'DiameterIdentity'(T, Data, Opts);
avp(T, Data, 'TDF-IP-Address', Opts) ->
    diameter_types:'Address'(T, Data, Opts);
avp(T, Data, 'TDF-Information', Opts) ->
    grouped_avp(T, 'TDF-Information', Data, Opts);
avp(T, Data, 'TFT-Filter', Opts) ->
    diameter_types:'IPFilterRule'(T, Data, Opts);
avp(T, Data, 'TFT-Packet-Filter-Information', Opts) ->
    grouped_avp(T,
                'TFT-Packet-Filter-Information',
                Data,
                Opts);
avp(T, Data, 'ToS-Traffic-Class', Opts) ->
    diameter_types:'OctetString'(T, Data, Opts);
avp(T, Data, 'Tunnel-Header-Filter', Opts) ->
    diameter_types:'IPFilterRule'(T, Data, Opts);
avp(T, Data, 'Tunnel-Header-Length', Opts) ->
    diameter_types:'Unsigned32'(T, Data, Opts);
avp(T, Data, 'Tunnel-Information', Opts) ->
    grouped_avp(T, 'Tunnel-Information', Data, Opts);
avp(T, Data, 'UDP-Source-Port', Opts) ->
    diameter_types:'Unsigned32'(T, Data, Opts);
avp(T, Data, 'UE-Local-IP-Address', Opts) ->
    diameter_types:'Address'(T, Data, Opts);
avp(T, Data, 'Usage-Monitoring-Information', Opts) ->
    grouped_avp(T,
                'Usage-Monitoring-Information',
                Data,
                Opts);
avp(T, Data, 'Usage-Monitoring-Level', _) ->
    enumerated_avp(T, 'Usage-Monitoring-Level', Data);
avp(T, Data, 'Usage-Monitoring-Report', _) ->
    enumerated_avp(T, 'Usage-Monitoring-Report', Data);
avp(T, Data, 'Usage-Monitoring-Support', _) ->
    enumerated_avp(T, 'Usage-Monitoring-Support', Data);
avp(T, Data, 'User-Location-Info-Time', Opts) ->
    diameter_types:'Time'(T, Data, Opts);
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
avp(T, Data, 'Called-Station-Id', Opts) ->
    avp(T,
        Data,
        'Called-Station-Id',
        Opts,
        diameter_rfc4005_nasreq);
avp(T, Data, 'Framed-IP-Address', Opts) ->
    avp(T,
        Data,
        'Framed-IP-Address',
        Opts,
        diameter_rfc4005_nasreq);
avp(T, Data, 'Framed-IPv6-Prefix', Opts) ->
    avp(T,
        Data,
        'Framed-IPv6-Prefix',
        Opts,
        diameter_rfc4005_nasreq);
avp(T, Data, 'CC-Correlation-Id', Opts) ->
    avp(T,
        Data,
        'CC-Correlation-Id',
        Opts,
        diameter_rfc4006_cc);
avp(T, Data, 'CC-Input-Octets', Opts) ->
    avp(T,
        Data,
        'CC-Input-Octets',
        Opts,
        diameter_rfc4006_cc);
avp(T, Data, 'CC-Money', Opts) ->
    grouped_avp(T, 'CC-Money', Data, Opts);
avp(T, Data, 'CC-Output-Octets', Opts) ->
    avp(T,
        Data,
        'CC-Output-Octets',
        Opts,
        diameter_rfc4006_cc);
avp(T, Data, 'CC-Request-Number', Opts) ->
    avp(T,
        Data,
        'CC-Request-Number',
        Opts,
        diameter_rfc4006_cc);
avp(T, Data, 'CC-Request-Type', Opts) ->
    avp(T,
        Data,
        'CC-Request-Type',
        Opts,
        diameter_rfc4006_cc);
avp(T, Data, 'CC-Service-Specific-Units', Opts) ->
    avp(T,
        Data,
        'CC-Service-Specific-Units',
        Opts,
        diameter_rfc4006_cc);
avp(T, Data, 'CC-Session-Failover', Opts) ->
    avp(T,
        Data,
        'CC-Session-Failover',
        Opts,
        diameter_rfc4006_cc);
avp(T, Data, 'CC-Sub-Session-Id', Opts) ->
    avp(T,
        Data,
        'CC-Sub-Session-Id',
        Opts,
        diameter_rfc4006_cc);
avp(T, Data, 'CC-Time', Opts) ->
    avp(T, Data, 'CC-Time', Opts, diameter_rfc4006_cc);
avp(T, Data, 'CC-Total-Octets', Opts) ->
    avp(T,
        Data,
        'CC-Total-Octets',
        Opts,
        diameter_rfc4006_cc);
avp(T, Data, 'CC-Unit-Type', Opts) ->
    avp(T, Data, 'CC-Unit-Type', Opts, diameter_rfc4006_cc);
avp(T, Data, 'Check-Balance-Result', Opts) ->
    avp(T,
        Data,
        'Check-Balance-Result',
        Opts,
        diameter_rfc4006_cc);
avp(T, Data, 'Cost-Information', Opts) ->
    grouped_avp(T, 'Cost-Information', Data, Opts);
avp(T, Data, 'Cost-Unit', Opts) ->
    avp(T, Data, 'Cost-Unit', Opts, diameter_rfc4006_cc);
avp(T, Data, 'Credit-Control', Opts) ->
    avp(T,
        Data,
        'Credit-Control',
        Opts,
        diameter_rfc4006_cc);
avp(T, Data, 'Credit-Control-Failure-Handling', Opts) ->
    avp(T,
        Data,
        'Credit-Control-Failure-Handling',
        Opts,
        diameter_rfc4006_cc);
avp(T, Data, 'Currency-Code', Opts) ->
    avp(T,
        Data,
        'Currency-Code',
        Opts,
        diameter_rfc4006_cc);
avp(T, Data, 'Direct-Debiting-Failure-Handling',
    Opts) ->
    avp(T,
        Data,
        'Direct-Debiting-Failure-Handling',
        Opts,
        diameter_rfc4006_cc);
avp(T, Data, 'Exponent', Opts) ->
    avp(T, Data, 'Exponent', Opts, diameter_rfc4006_cc);
avp(T, Data, 'Final-Unit-Action', Opts) ->
    avp(T,
        Data,
        'Final-Unit-Action',
        Opts,
        diameter_rfc4006_cc);
avp(T, Data, 'Final-Unit-Indication', Opts) ->
    grouped_avp(T, 'Final-Unit-Indication', Data, Opts);
avp(T, Data, 'G-S-U-Pool-Identifier', Opts) ->
    avp(T,
        Data,
        'G-S-U-Pool-Identifier',
        Opts,
        diameter_rfc4006_cc);
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
avp(T, Data, 'Multiple-Services-Indicator', Opts) ->
    avp(T,
        Data,
        'Multiple-Services-Indicator',
        Opts,
        diameter_rfc4006_cc);
avp(T, Data, 'Rating-Group', Opts) ->
    avp(T, Data, 'Rating-Group', Opts, diameter_rfc4006_cc);
avp(T, Data, 'Redirect-Address-Type', Opts) ->
    avp(T,
        Data,
        'Redirect-Address-Type',
        Opts,
        diameter_rfc4006_cc);
avp(T, Data, 'Redirect-Server', Opts) ->
    grouped_avp(T, 'Redirect-Server', Data, Opts);
avp(T, Data, 'Redirect-Server-Address', Opts) ->
    avp(T,
        Data,
        'Redirect-Server-Address',
        Opts,
        diameter_rfc4006_cc);
avp(T, Data, 'Requested-Action', Opts) ->
    avp(T,
        Data,
        'Requested-Action',
        Opts,
        diameter_rfc4006_cc);
avp(T, Data, 'Requested-Service-Unit', Opts) ->
    grouped_avp(T, 'Requested-Service-Unit', Data, Opts);
avp(T, Data, 'Restriction-Filter-Rule', Opts) ->
    avp(T,
        Data,
        'Restriction-Filter-Rule',
        Opts,
        diameter_rfc4006_cc);
avp(T, Data, 'Service-Context-Id', Opts) ->
    avp(T,
        Data,
        'Service-Context-Id',
        Opts,
        diameter_rfc4006_cc);
avp(T, Data, 'Service-Identifier', Opts) ->
    avp(T,
        Data,
        'Service-Identifier',
        Opts,
        diameter_rfc4006_cc);
avp(T, Data, 'Service-Parameter-Info', Opts) ->
    grouped_avp(T, 'Service-Parameter-Info', Data, Opts);
avp(T, Data, 'Service-Parameter-Type', Opts) ->
    avp(T,
        Data,
        'Service-Parameter-Type',
        Opts,
        diameter_rfc4006_cc);
avp(T, Data, 'Service-Parameter-Value', Opts) ->
    avp(T,
        Data,
        'Service-Parameter-Value',
        Opts,
        diameter_rfc4006_cc);
avp(T, Data, 'Subscription-Id', Opts) ->
    grouped_avp(T, 'Subscription-Id', Data, Opts);
avp(T, Data, 'Subscription-Id-Data', Opts) ->
    avp(T,
        Data,
        'Subscription-Id-Data',
        Opts,
        diameter_rfc4006_cc);
avp(T, Data, 'Subscription-Id-Type', Opts) ->
    avp(T,
        Data,
        'Subscription-Id-Type',
        Opts,
        diameter_rfc4006_cc);
avp(T, Data, 'Tariff-Change-Usage', Opts) ->
    avp(T,
        Data,
        'Tariff-Change-Usage',
        Opts,
        diameter_rfc4006_cc);
avp(T, Data, 'Tariff-Time-Change', Opts) ->
    avp(T,
        Data,
        'Tariff-Time-Change',
        Opts,
        diameter_rfc4006_cc);
avp(T, Data, 'Unit-Value', Opts) ->
    grouped_avp(T, 'Unit-Value', Data, Opts);
avp(T, Data, 'Used-Service-Unit', Opts) ->
    grouped_avp(T, 'Used-Service-Unit', Data, Opts);
avp(T, Data, 'User-Equipment-Info', Opts) ->
    grouped_avp(T, 'User-Equipment-Info', Data, Opts);
avp(T, Data, 'User-Equipment-Info-Type', Opts) ->
    avp(T,
        Data,
        'User-Equipment-Info-Type',
        Opts,
        diameter_rfc4006_cc);
avp(T, Data, 'User-Equipment-Info-Value', Opts) ->
    avp(T,
        Data,
        'User-Equipment-Info-Value',
        Opts,
        diameter_rfc4006_cc);
avp(T, Data, 'Validity-Time', Opts) ->
    avp(T,
        Data,
        'Validity-Time',
        Opts,
        diameter_rfc4006_cc);
avp(T, Data, 'Value-Digits', Opts) ->
    avp(T, Data, 'Value-Digits', Opts, diameter_rfc4006_cc);
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
avp(T, Data, 'Address-Realm', Opts) ->
    avp(T,
        Data,
        'Address-Realm',
        Opts,
        diameter_etsi_es283_034);
avp(T, Data, 'Aggregation-Network-Type', Opts) ->
    avp(T,
        Data,
        'Aggregation-Network-Type',
        Opts,
        diameter_etsi_es283_034);
avp(T, Data, 'Application-Class-ID', Opts) ->
    avp(T,
        Data,
        'Application-Class-ID',
        Opts,
        diameter_etsi_es283_034);
avp(T, Data, 'IP-Connectivity-Status', Opts) ->
    avp(T,
        Data,
        'IP-Connectivity-Status',
        Opts,
        diameter_etsi_es283_034);
avp(T, Data, 'Initial-Gate-Setting-ID', Opts) ->
    avp(T,
        Data,
        'Initial-Gate-Setting-ID',
        Opts,
        diameter_etsi_es283_034);
avp(T, Data, 'Logical-Access-ID', Opts) ->
    avp(T,
        Data,
        'Logical-Access-ID',
        Opts,
        diameter_etsi_es283_034);
avp(T, Data, 'Maximum-Allowed-Bandwidth-DL', Opts) ->
    avp(T,
        Data,
        'Maximum-Allowed-Bandwidth-DL',
        Opts,
        diameter_etsi_es283_034);
avp(T, Data, 'Maximum-Allowed-Bandwidth-UL', Opts) ->
    avp(T,
        Data,
        'Maximum-Allowed-Bandwidth-UL',
        Opts,
        diameter_etsi_es283_034);
avp(T, Data, 'Physical-Access-ID', Opts) ->
    avp(T,
        Data,
        'Physical-Access-ID',
        Opts,
        diameter_etsi_es283_034);
avp(T, Data, 'QoS-Profile-ID', Opts) ->
    avp(T,
        Data,
        'QoS-Profile-ID',
        Opts,
        diameter_etsi_es283_034);
avp(T, Data, 'Transport-Class', Opts) ->
    avp(T,
        Data,
        'Transport-Class',
        Opts,
        diameter_etsi_es283_034);
avp(T, Data, 'Additional-MBMS-Trace-Info', Opts) ->
    avp(T,
        Data,
        'Additional-MBMS-Trace-Info',
        Opts,
        diameter_3gpp_ts29_061_gmb);
avp(T, Data, 'Alternative-APN', Opts) ->
    avp(T,
        Data,
        'Alternative-APN',
        Opts,
        diameter_3gpp_ts29_061_gmb);
avp(T, Data, 'CN-IP-Multicast-Distribution', Opts) ->
    avp(T,
        Data,
        'CN-IP-Multicast-Distribution',
        Opts,
        diameter_3gpp_ts29_061_gmb);
avp(T, Data, 'MBMS-2G-3G-Indicator', Opts) ->
    avp(T,
        Data,
        'MBMS-2G-3G-Indicator',
        Opts,
        diameter_3gpp_ts29_061_gmb);
avp(T, Data, 'MBMS-BMSC-SSM-IP-Address', Opts) ->
    avp(T,
        Data,
        'MBMS-BMSC-SSM-IP-Address',
        Opts,
        diameter_3gpp_ts29_061_gmb);
avp(T, Data, 'MBMS-BMSC-SSM-IPv6-Address', Opts) ->
    avp(T,
        Data,
        'MBMS-BMSC-SSM-IPv6-Address',
        Opts,
        diameter_3gpp_ts29_061_gmb);
avp(T, Data, 'MBMS-Counting-Information', Opts) ->
    avp(T,
        Data,
        'MBMS-Counting-Information',
        Opts,
        diameter_3gpp_ts29_061_gmb);
avp(T, Data, 'MBMS-Flow-Identifier', Opts) ->
    avp(T,
        Data,
        'MBMS-Flow-Identifier',
        Opts,
        diameter_3gpp_ts29_061_gmb);
avp(T, Data, 'MBMS-GGSN-Address', Opts) ->
    avp(T,
        Data,
        'MBMS-GGSN-Address',
        Opts,
        diameter_3gpp_ts29_061_gmb);
avp(T, Data, 'MBMS-GGSN-IPv6-Address', Opts) ->
    avp(T,
        Data,
        'MBMS-GGSN-IPv6-Address',
        Opts,
        diameter_3gpp_ts29_061_gmb);
avp(T, Data, 'MBMS-HC-Indicator', Opts) ->
    avp(T,
        Data,
        'MBMS-HC-Indicator',
        Opts,
        diameter_3gpp_ts29_061_gmb);
avp(T, Data, 'MBMS-Required-QoS', Opts) ->
    avp(T,
        Data,
        'MBMS-Required-QoS',
        Opts,
        diameter_3gpp_ts29_061_gmb);
avp(T, Data, 'MBMS-Service-Area', Opts) ->
    avp(T,
        Data,
        'MBMS-Service-Area',
        Opts,
        diameter_3gpp_ts29_061_gmb);
avp(T, Data, 'MBMS-Service-Type', Opts) ->
    avp(T,
        Data,
        'MBMS-Service-Type',
        Opts,
        diameter_3gpp_ts29_061_gmb);
avp(T, Data, 'MBMS-Session-Duration', Opts) ->
    avp(T,
        Data,
        'MBMS-Session-Duration',
        Opts,
        diameter_3gpp_ts29_061_gmb);
avp(T, Data, 'MBMS-Session-Identity', Opts) ->
    avp(T,
        Data,
        'MBMS-Session-Identity',
        Opts,
        diameter_3gpp_ts29_061_gmb);
avp(T, Data, 'MBMS-Session-Repetition-Number', Opts) ->
    avp(T,
        Data,
        'MBMS-Session-Repetition-Number',
        Opts,
        diameter_3gpp_ts29_061_gmb);
avp(T, Data, 'MBMS-StartStop-Indication', Opts) ->
    avp(T,
        Data,
        'MBMS-StartStop-Indication',
        Opts,
        diameter_3gpp_ts29_061_gmb);
avp(T, Data, 'MBMS-Time-To-Data-Transfer', Opts) ->
    avp(T,
        Data,
        'MBMS-Time-To-Data-Transfer',
        Opts,
        diameter_3gpp_ts29_061_gmb);
avp(T, Data, 'MBMS-User-Data-Mode-Indication', Opts) ->
    avp(T,
        Data,
        'MBMS-User-Data-Mode-Indication',
        Opts,
        diameter_3gpp_ts29_061_gmb);
avp(T, Data, 'RAI', Opts) ->
    avp(T, Data, 'RAI', Opts, diameter_3gpp_ts29_061_gmb);
avp(T, Data, 'Required-MBMS-Bearer-Capabilities',
    Opts) ->
    avp(T,
        Data,
        'Required-MBMS-Bearer-Capabilities',
        Opts,
        diameter_3gpp_ts29_061_gmb);
avp(T, Data, 'TMGI', Opts) ->
    avp(T, Data, 'TMGI', Opts, diameter_3gpp_ts29_061_gmb);
avp(T, Data, 'AF-Application-Identifier', Opts) ->
    avp(T,
        Data,
        'AF-Application-Identifier',
        Opts,
        diameter_3gpp_ts29_214);
avp(T, Data, 'AF-Charging-Identifier', Opts) ->
    avp(T,
        Data,
        'AF-Charging-Identifier',
        Opts,
        diameter_3gpp_ts29_214);
avp(T, Data, 'AF-Signalling-Protocol', Opts) ->
    avp(T,
        Data,
        'AF-Signalling-Protocol',
        Opts,
        diameter_3gpp_ts29_214);
avp(T, Data, 'Abort-Cause', Opts) ->
    avp(T,
        Data,
        'Abort-Cause',
        Opts,
        diameter_3gpp_ts29_214);
avp(T, Data, 'Access-Network-Charging-Address', Opts) ->
    avp(T,
        Data,
        'Access-Network-Charging-Address',
        Opts,
        diameter_3gpp_ts29_214);
avp(T, Data, 'Access-Network-Charging-Identifier-Value',
    Opts) ->
    avp(T,
        Data,
        'Access-Network-Charging-Identifier-Value',
        Opts,
        diameter_3gpp_ts29_214);
avp(T, Data, 'Application-Service-Provider-Identity',
    Opts) ->
    avp(T,
        Data,
        'Application-Service-Provider-Identity',
        Opts,
        diameter_3gpp_ts29_214);
avp(T, Data, 'Codec-Data', Opts) ->
    avp(T,
        Data,
        'Codec-Data',
        Opts,
        diameter_3gpp_ts29_214);
avp(T, Data, 'Flow-Description', Opts) ->
    avp(T,
        Data,
        'Flow-Description',
        Opts,
        diameter_3gpp_ts29_214);
avp(T, Data, 'Flow-Number', Opts) ->
    avp(T,
        Data,
        'Flow-Number',
        Opts,
        diameter_3gpp_ts29_214);
avp(T, Data, 'Flow-Status', Opts) ->
    avp(T,
        Data,
        'Flow-Status',
        Opts,
        diameter_3gpp_ts29_214);
avp(T, Data, 'Flow-Usage', Opts) ->
    avp(T,
        Data,
        'Flow-Usage',
        Opts,
        diameter_3gpp_ts29_214);
avp(T, Data, 'Flows', Opts) ->
    grouped_avp(T, 'Flows', Data, Opts);
avp(T, Data, 'GCS-Identifier', Opts) ->
    avp(T,
        Data,
        'GCS-Identifier',
        Opts,
        diameter_3gpp_ts29_214);
avp(T, Data, 'IP-Domain-Id', Opts) ->
    avp(T,
        Data,
        'IP-Domain-Id',
        Opts,
        diameter_3gpp_ts29_214);
avp(T, Data, 'MPS-Identifier', Opts) ->
    avp(T,
        Data,
        'MPS-Identifier',
        Opts,
        diameter_3gpp_ts29_214);
avp(T, Data, 'Max-Requested-Bandwidth-DL', Opts) ->
    avp(T,
        Data,
        'Max-Requested-Bandwidth-DL',
        Opts,
        diameter_3gpp_ts29_214);
avp(T, Data, 'Max-Requested-Bandwidth-UL', Opts) ->
    avp(T,
        Data,
        'Max-Requested-Bandwidth-UL',
        Opts,
        diameter_3gpp_ts29_214);
avp(T, Data, 'Media-Component-Number', Opts) ->
    avp(T,
        Data,
        'Media-Component-Number',
        Opts,
        diameter_3gpp_ts29_214);
avp(T, Data, 'Media-Type', Opts) ->
    avp(T,
        Data,
        'Media-Type',
        Opts,
        diameter_3gpp_ts29_214);
avp(T, Data, 'Min-Requested-Bandwidth-DL', Opts) ->
    avp(T,
        Data,
        'Min-Requested-Bandwidth-DL',
        Opts,
        diameter_3gpp_ts29_214);
avp(T, Data, 'Min-Requested-Bandwidth-UL', Opts) ->
    avp(T,
        Data,
        'Min-Requested-Bandwidth-UL',
        Opts,
        diameter_3gpp_ts29_214);
avp(T, Data, 'RR-Bandwidth', Opts) ->
    avp(T,
        Data,
        'RR-Bandwidth',
        Opts,
        diameter_3gpp_ts29_214);
avp(T, Data, 'RS-Bandwidth', Opts) ->
    avp(T,
        Data,
        'RS-Bandwidth',
        Opts,
        diameter_3gpp_ts29_214);
avp(T, Data, 'Required-Access-Info', Opts) ->
    avp(T,
        Data,
        'Required-Access-Info',
        Opts,
        diameter_3gpp_ts29_214);
avp(T, Data, 'Rx-Request-Type', Opts) ->
    avp(T,
        Data,
        'Rx-Request-Type',
        Opts,
        diameter_3gpp_ts29_214);
avp(T, Data, 'SIP-Forking-Indication', Opts) ->
    avp(T,
        Data,
        'SIP-Forking-Indication',
        Opts,
        diameter_3gpp_ts29_214);
avp(T, Data, 'Service-Info-Status', Opts) ->
    avp(T,
        Data,
        'Service-Info-Status',
        Opts,
        diameter_3gpp_ts29_214);
avp(T, Data, 'Service-URN', Opts) ->
    avp(T,
        Data,
        'Service-URN',
        Opts,
        diameter_3gpp_ts29_214);
avp(T, Data, 'Specific-Action', Opts) ->
    avp(T,
        Data,
        'Specific-Action',
        Opts,
        diameter_3gpp_ts29_214);
avp(T, Data, 'Sponsor-Identity', Opts) ->
    avp(T,
        Data,
        'Sponsor-Identity',
        Opts,
        diameter_3gpp_ts29_214);
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
avp(_, _, _, _) -> erlang:error(badarg).

enumerated_avp(decode, 'AN-GW-Status',
               <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'AN-GW-Status', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'Bearer-Control-Mode',
               <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'Bearer-Control-Mode', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'Bearer-Control-Mode',
               <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'Bearer-Control-Mode', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'Bearer-Control-Mode',
               <<0, 0, 0, 2>>) ->
    2;
enumerated_avp(encode, 'Bearer-Control-Mode', 2) ->
    <<0, 0, 0, 2>>;
enumerated_avp(decode, 'Bearer-Operation',
               <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'Bearer-Operation', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'Bearer-Operation',
               <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'Bearer-Operation', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'Bearer-Operation',
               <<0, 0, 0, 2>>) ->
    2;
enumerated_avp(encode, 'Bearer-Operation', 2) ->
    <<0, 0, 0, 2>>;
enumerated_avp(decode, 'Bearer-Usage',
               <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'Bearer-Usage', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'Bearer-Usage',
               <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'Bearer-Usage', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'Charging-Correlation-Indicator',
               <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'Charging-Correlation-Indicator',
               0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'CSG-Information-Reporting',
               <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'CSG-Information-Reporting',
               0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'CSG-Information-Reporting',
               <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'CSG-Information-Reporting',
               1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'CSG-Information-Reporting',
               <<0, 0, 0, 2>>) ->
    2;
enumerated_avp(encode, 'CSG-Information-Reporting',
               2) ->
    <<0, 0, 0, 2>>;
enumerated_avp(decode, 'Event-Trigger',
               <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'Event-Trigger', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'Event-Trigger',
               <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'Event-Trigger', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'Event-Trigger',
               <<0, 0, 0, 2>>) ->
    2;
enumerated_avp(encode, 'Event-Trigger', 2) ->
    <<0, 0, 0, 2>>;
enumerated_avp(decode, 'Event-Trigger',
               <<0, 0, 0, 3>>) ->
    3;
enumerated_avp(encode, 'Event-Trigger', 3) ->
    <<0, 0, 0, 3>>;
enumerated_avp(decode, 'Event-Trigger',
               <<0, 0, 0, 4>>) ->
    4;
enumerated_avp(encode, 'Event-Trigger', 4) ->
    <<0, 0, 0, 4>>;
enumerated_avp(decode, 'Event-Trigger',
               <<0, 0, 0, 5>>) ->
    5;
enumerated_avp(encode, 'Event-Trigger', 5) ->
    <<0, 0, 0, 5>>;
enumerated_avp(decode, 'Event-Trigger',
               <<0, 0, 0, 6>>) ->
    6;
enumerated_avp(encode, 'Event-Trigger', 6) ->
    <<0, 0, 0, 6>>;
enumerated_avp(decode, 'Event-Trigger',
               <<0, 0, 0, 7>>) ->
    7;
enumerated_avp(encode, 'Event-Trigger', 7) ->
    <<0, 0, 0, 7>>;
enumerated_avp(decode, 'Event-Trigger',
               <<0, 0, 0, 11>>) ->
    11;
enumerated_avp(encode, 'Event-Trigger', 11) ->
    <<0, 0, 0, 11>>;
enumerated_avp(decode, 'Event-Trigger',
               <<0, 0, 0, 12>>) ->
    12;
enumerated_avp(encode, 'Event-Trigger', 12) ->
    <<0, 0, 0, 12>>;
enumerated_avp(decode, 'Event-Trigger',
               <<0, 0, 0, 13>>) ->
    13;
enumerated_avp(encode, 'Event-Trigger', 13) ->
    <<0, 0, 0, 13>>;
enumerated_avp(decode, 'Event-Trigger',
               <<0, 0, 0, 14>>) ->
    14;
enumerated_avp(encode, 'Event-Trigger', 14) ->
    <<0, 0, 0, 14>>;
enumerated_avp(decode, 'Event-Trigger',
               <<0, 0, 0, 15>>) ->
    15;
enumerated_avp(encode, 'Event-Trigger', 15) ->
    <<0, 0, 0, 15>>;
enumerated_avp(decode, 'Event-Trigger',
               <<0, 0, 0, 16>>) ->
    16;
enumerated_avp(encode, 'Event-Trigger', 16) ->
    <<0, 0, 0, 16>>;
enumerated_avp(decode, 'Event-Trigger',
               <<0, 0, 0, 17>>) ->
    17;
enumerated_avp(encode, 'Event-Trigger', 17) ->
    <<0, 0, 0, 17>>;
enumerated_avp(decode, 'Event-Trigger',
               <<0, 0, 0, 18>>) ->
    18;
enumerated_avp(encode, 'Event-Trigger', 18) ->
    <<0, 0, 0, 18>>;
enumerated_avp(decode, 'Event-Trigger',
               <<0, 0, 0, 19>>) ->
    19;
enumerated_avp(encode, 'Event-Trigger', 19) ->
    <<0, 0, 0, 19>>;
enumerated_avp(decode, 'Event-Trigger',
               <<0, 0, 0, 20>>) ->
    20;
enumerated_avp(encode, 'Event-Trigger', 20) ->
    <<0, 0, 0, 20>>;
enumerated_avp(decode, 'Event-Trigger',
               <<0, 0, 0, 21>>) ->
    21;
enumerated_avp(encode, 'Event-Trigger', 21) ->
    <<0, 0, 0, 21>>;
enumerated_avp(decode, 'Event-Trigger',
               <<0, 0, 0, 22>>) ->
    22;
enumerated_avp(encode, 'Event-Trigger', 22) ->
    <<0, 0, 0, 22>>;
enumerated_avp(decode, 'Event-Trigger',
               <<0, 0, 0, 23>>) ->
    23;
enumerated_avp(encode, 'Event-Trigger', 23) ->
    <<0, 0, 0, 23>>;
enumerated_avp(decode, 'Event-Trigger',
               <<0, 0, 0, 24>>) ->
    24;
enumerated_avp(encode, 'Event-Trigger', 24) ->
    <<0, 0, 0, 24>>;
enumerated_avp(decode, 'Event-Trigger',
               <<0, 0, 0, 25>>) ->
    25;
enumerated_avp(encode, 'Event-Trigger', 25) ->
    <<0, 0, 0, 25>>;
enumerated_avp(decode, 'Event-Trigger',
               <<0, 0, 0, 26>>) ->
    26;
enumerated_avp(encode, 'Event-Trigger', 26) ->
    <<0, 0, 0, 26>>;
enumerated_avp(decode, 'Event-Trigger',
               <<0, 0, 0, 27>>) ->
    27;
enumerated_avp(encode, 'Event-Trigger', 27) ->
    <<0, 0, 0, 27>>;
enumerated_avp(decode, 'Event-Trigger',
               <<0, 0, 0, 28>>) ->
    28;
enumerated_avp(encode, 'Event-Trigger', 28) ->
    <<0, 0, 0, 28>>;
enumerated_avp(decode, 'Event-Trigger',
               <<0, 0, 0, 29>>) ->
    29;
enumerated_avp(encode, 'Event-Trigger', 29) ->
    <<0, 0, 0, 29>>;
enumerated_avp(decode, 'Event-Trigger',
               <<0, 0, 0, 30>>) ->
    30;
enumerated_avp(encode, 'Event-Trigger', 30) ->
    <<0, 0, 0, 30>>;
enumerated_avp(decode, 'Event-Trigger',
               <<0, 0, 0, 33>>) ->
    33;
enumerated_avp(encode, 'Event-Trigger', 33) ->
    <<0, 0, 0, 33>>;
enumerated_avp(decode, 'Event-Trigger',
               <<0, 0, 0, 34>>) ->
    34;
enumerated_avp(encode, 'Event-Trigger', 34) ->
    <<0, 0, 0, 34>>;
enumerated_avp(decode, 'Event-Trigger',
               <<0, 0, 0, 35>>) ->
    35;
enumerated_avp(encode, 'Event-Trigger', 35) ->
    <<0, 0, 0, 35>>;
enumerated_avp(decode, 'Event-Trigger',
               <<0, 0, 0, 36>>) ->
    36;
enumerated_avp(encode, 'Event-Trigger', 36) ->
    <<0, 0, 0, 36>>;
enumerated_avp(decode, 'Event-Trigger',
               <<0, 0, 0, 37>>) ->
    37;
enumerated_avp(encode, 'Event-Trigger', 37) ->
    <<0, 0, 0, 37>>;
enumerated_avp(decode, 'Event-Trigger',
               <<0, 0, 0, 39>>) ->
    39;
enumerated_avp(encode, 'Event-Trigger', 39) ->
    <<0, 0, 0, 39>>;
enumerated_avp(decode, 'Event-Trigger',
               <<0, 0, 0, 40>>) ->
    40;
enumerated_avp(encode, 'Event-Trigger', 40) ->
    <<0, 0, 0, 40>>;
enumerated_avp(decode, 'Event-Trigger',
               <<0, 0, 0, 42>>) ->
    42;
enumerated_avp(encode, 'Event-Trigger', 42) ->
    <<0, 0, 0, 42>>;
enumerated_avp(decode, 'Event-Trigger',
               <<0, 0, 0, 43>>) ->
    43;
enumerated_avp(encode, 'Event-Trigger', 43) ->
    <<0, 0, 0, 43>>;
enumerated_avp(decode, 'Event-Trigger',
               <<0, 0, 0, 44>>) ->
    44;
enumerated_avp(encode, 'Event-Trigger', 44) ->
    <<0, 0, 0, 44>>;
enumerated_avp(decode, 'Event-Trigger',
               <<0, 0, 0, 45>>) ->
    45;
enumerated_avp(encode, 'Event-Trigger', 45) ->
    <<0, 0, 0, 45>>;
enumerated_avp(decode, 'Event-Trigger',
               <<0, 0, 0, 46>>) ->
    46;
enumerated_avp(encode, 'Event-Trigger', 46) ->
    <<0, 0, 0, 46>>;
enumerated_avp(decode, 'Event-Trigger',
               <<0, 0, 0, 47>>) ->
    47;
enumerated_avp(encode, 'Event-Trigger', 47) ->
    <<0, 0, 0, 47>>;
enumerated_avp(decode, 'Event-Trigger',
               <<0, 0, 0, 48>>) ->
    48;
enumerated_avp(encode, 'Event-Trigger', 48) ->
    <<0, 0, 0, 48>>;
enumerated_avp(decode, 'Flow-Direction',
               <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'Flow-Direction', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'Flow-Direction',
               <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'Flow-Direction', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'Flow-Direction',
               <<0, 0, 0, 2>>) ->
    2;
enumerated_avp(encode, 'Flow-Direction', 2) ->
    <<0, 0, 0, 2>>;
enumerated_avp(decode, 'Flow-Direction',
               <<0, 0, 0, 3>>) ->
    3;
enumerated_avp(encode, 'Flow-Direction', 3) ->
    <<0, 0, 0, 3>>;
enumerated_avp(decode, 'IP-CAN-Session-Charging-Scope',
               <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'IP-CAN-Session-Charging-Scope',
               0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'IP-CAN-Type', <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'IP-CAN-Type', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'IP-CAN-Type', <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'IP-CAN-Type', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'IP-CAN-Type', <<0, 0, 0, 2>>) ->
    2;
enumerated_avp(encode, 'IP-CAN-Type', 2) ->
    <<0, 0, 0, 2>>;
enumerated_avp(decode, 'IP-CAN-Type', <<0, 0, 0, 3>>) ->
    3;
enumerated_avp(encode, 'IP-CAN-Type', 3) ->
    <<0, 0, 0, 3>>;
enumerated_avp(decode, 'IP-CAN-Type', <<0, 0, 0, 4>>) ->
    4;
enumerated_avp(encode, 'IP-CAN-Type', 4) ->
    <<0, 0, 0, 4>>;
enumerated_avp(decode, 'IP-CAN-Type', <<0, 0, 0, 5>>) ->
    5;
enumerated_avp(encode, 'IP-CAN-Type', 5) ->
    <<0, 0, 0, 5>>;
enumerated_avp(decode, 'IP-CAN-Type', <<0, 0, 0, 6>>) ->
    6;
enumerated_avp(encode, 'IP-CAN-Type', 6) ->
    <<0, 0, 0, 6>>;
enumerated_avp(decode, 'IP-CAN-Type', <<0, 0, 0, 7>>) ->
    7;
enumerated_avp(encode, 'IP-CAN-Type', 7) ->
    <<0, 0, 0, 7>>;
enumerated_avp(decode, 'Metering-Method',
               <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'Metering-Method', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'Metering-Method',
               <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'Metering-Method', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'Metering-Method',
               <<0, 0, 0, 2>>) ->
    2;
enumerated_avp(encode, 'Metering-Method', 2) ->
    <<0, 0, 0, 2>>;
enumerated_avp(decode, 'Metering-Method',
               <<0, 0, 0, 3>>) ->
    3;
enumerated_avp(encode, 'Metering-Method', 3) ->
    <<0, 0, 0, 3>>;
enumerated_avp(decode, 'Mute-Notification',
               <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'Mute-Notification', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'Network-Request-Support',
               <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'Network-Request-Support', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'Network-Request-Support',
               <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'Network-Request-Support', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'Offline', <<0, 0, 0, 0>>) -> 0;
enumerated_avp(encode, 'Offline', 0) -> <<0, 0, 0, 0>>;
enumerated_avp(decode, 'Offline', <<0, 0, 0, 1>>) -> 1;
enumerated_avp(encode, 'Offline', 1) -> <<0, 0, 0, 1>>;
enumerated_avp(decode, 'Online', <<0, 0, 0, 0>>) -> 0;
enumerated_avp(encode, 'Online', 0) -> <<0, 0, 0, 0>>;
enumerated_avp(decode, 'Online', <<0, 0, 0, 1>>) -> 1;
enumerated_avp(encode, 'Online', 1) -> <<0, 0, 0, 1>>;
enumerated_avp(decode, 'Packet-Filter-Operation',
               <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'Packet-Filter-Operation', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'Packet-Filter-Operation',
               <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'Packet-Filter-Operation', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'Packet-Filter-Operation',
               <<0, 0, 0, 2>>) ->
    2;
enumerated_avp(encode, 'Packet-Filter-Operation', 2) ->
    <<0, 0, 0, 2>>;
enumerated_avp(decode, 'Packet-Filter-Usage',
               <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'Packet-Filter-Usage', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'PCC-Rule-Status',
               <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'PCC-Rule-Status', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'PCC-Rule-Status',
               <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'PCC-Rule-Status', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'PCC-Rule-Status',
               <<0, 0, 0, 2>>) ->
    2;
enumerated_avp(encode, 'PCC-Rule-Status', 2) ->
    <<0, 0, 0, 2>>;
enumerated_avp(decode, 'Pre-emption-Capability',
               <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'Pre-emption-Capability', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'Pre-emption-Capability',
               <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'Pre-emption-Capability', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'Pre-emption-Vulnerability',
               <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'Pre-emption-Vulnerability',
               0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'Pre-emption-Vulnerability',
               <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'Pre-emption-Vulnerability',
               1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'PS-to-CS-Session-Continuity',
               <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'PS-to-CS-Session-Continuity',
               0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'QoS-Class-Identifier',
               <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'QoS-Class-Identifier', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'QoS-Class-Identifier',
               <<0, 0, 0, 2>>) ->
    2;
enumerated_avp(encode, 'QoS-Class-Identifier', 2) ->
    <<0, 0, 0, 2>>;
enumerated_avp(decode, 'QoS-Class-Identifier',
               <<0, 0, 0, 3>>) ->
    3;
enumerated_avp(encode, 'QoS-Class-Identifier', 3) ->
    <<0, 0, 0, 3>>;
enumerated_avp(decode, 'QoS-Class-Identifier',
               <<0, 0, 0, 4>>) ->
    4;
enumerated_avp(encode, 'QoS-Class-Identifier', 4) ->
    <<0, 0, 0, 4>>;
enumerated_avp(decode, 'QoS-Class-Identifier',
               <<0, 0, 0, 5>>) ->
    5;
enumerated_avp(encode, 'QoS-Class-Identifier', 5) ->
    <<0, 0, 0, 5>>;
enumerated_avp(decode, 'QoS-Class-Identifier',
               <<0, 0, 0, 6>>) ->
    6;
enumerated_avp(encode, 'QoS-Class-Identifier', 6) ->
    <<0, 0, 0, 6>>;
enumerated_avp(decode, 'QoS-Class-Identifier',
               <<0, 0, 0, 7>>) ->
    7;
enumerated_avp(encode, 'QoS-Class-Identifier', 7) ->
    <<0, 0, 0, 7>>;
enumerated_avp(decode, 'QoS-Class-Identifier',
               <<0, 0, 0, 8>>) ->
    8;
enumerated_avp(encode, 'QoS-Class-Identifier', 8) ->
    <<0, 0, 0, 8>>;
enumerated_avp(decode, 'QoS-Class-Identifier',
               <<0, 0, 0, 9>>) ->
    9;
enumerated_avp(encode, 'QoS-Class-Identifier', 9) ->
    <<0, 0, 0, 9>>;
enumerated_avp(decode, 'QoS-Class-Identifier',
               <<0, 0, 0, 65>>) ->
    65;
enumerated_avp(encode, 'QoS-Class-Identifier', 65) ->
    <<0, 0, 0, 65>>;
enumerated_avp(decode, 'QoS-Class-Identifier',
               <<0, 0, 0, 66>>) ->
    66;
enumerated_avp(encode, 'QoS-Class-Identifier', 66) ->
    <<0, 0, 0, 66>>;
enumerated_avp(decode, 'QoS-Class-Identifier',
               <<0, 0, 0, 69>>) ->
    69;
enumerated_avp(encode, 'QoS-Class-Identifier', 69) ->
    <<0, 0, 0, 69>>;
enumerated_avp(decode, 'QoS-Class-Identifier',
               <<0, 0, 0, 70>>) ->
    70;
enumerated_avp(encode, 'QoS-Class-Identifier', 70) ->
    <<0, 0, 0, 70>>;
enumerated_avp(decode, 'QoS-Negotiation',
               <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'QoS-Negotiation', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'QoS-Negotiation',
               <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'QoS-Negotiation', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'QoS-Upgrade', <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'QoS-Upgrade', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'QoS-Upgrade', <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'QoS-Upgrade', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'RAT-Type', <<0, 0, 0, 0>>) -> 0;
enumerated_avp(encode, 'RAT-Type', 0) -> <<0, 0, 0, 0>>;
enumerated_avp(decode, 'RAT-Type', <<0, 0, 0, 1>>) -> 1;
enumerated_avp(encode, 'RAT-Type', 1) -> <<0, 0, 0, 1>>;
enumerated_avp(decode, 'RAT-Type', <<0, 0, 3, 232>>) ->
    1000;
enumerated_avp(encode, 'RAT-Type', 1000) ->
    <<0, 0, 3, 232>>;
enumerated_avp(decode, 'RAT-Type', <<0, 0, 3, 233>>) ->
    1001;
enumerated_avp(encode, 'RAT-Type', 1001) ->
    <<0, 0, 3, 233>>;
enumerated_avp(decode, 'RAT-Type', <<0, 0, 3, 234>>) ->
    1002;
enumerated_avp(encode, 'RAT-Type', 1002) ->
    <<0, 0, 3, 234>>;
enumerated_avp(decode, 'RAT-Type', <<0, 0, 3, 235>>) ->
    1003;
enumerated_avp(encode, 'RAT-Type', 1003) ->
    <<0, 0, 3, 235>>;
enumerated_avp(decode, 'RAT-Type', <<0, 0, 3, 236>>) ->
    1004;
enumerated_avp(encode, 'RAT-Type', 1004) ->
    <<0, 0, 3, 236>>;
enumerated_avp(decode, 'RAT-Type', <<0, 0, 7, 208>>) ->
    2000;
enumerated_avp(encode, 'RAT-Type', 2000) ->
    <<0, 0, 7, 208>>;
enumerated_avp(decode, 'RAT-Type', <<0, 0, 7, 209>>) ->
    2001;
enumerated_avp(encode, 'RAT-Type', 2001) ->
    <<0, 0, 7, 209>>;
enumerated_avp(decode, 'RAT-Type', <<0, 0, 7, 210>>) ->
    2002;
enumerated_avp(encode, 'RAT-Type', 2002) ->
    <<0, 0, 7, 210>>;
enumerated_avp(decode, 'RAT-Type', <<0, 0, 7, 211>>) ->
    2003;
enumerated_avp(encode, 'RAT-Type', 2003) ->
    <<0, 0, 7, 211>>;
enumerated_avp(decode, 'Redirect-Support',
               <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'Redirect-Support', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'Redirect-Support',
               <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'Redirect-Support', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'Reporting-Level',
               <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'Reporting-Level', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'Reporting-Level',
               <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'Reporting-Level', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'Reporting-Level',
               <<0, 0, 0, 2>>) ->
    2;
enumerated_avp(encode, 'Reporting-Level', 2) ->
    <<0, 0, 0, 2>>;
enumerated_avp(decode,
               'Resource-Allocation-Notification', <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode,
               'Resource-Allocation-Notification', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'Rule-Failure-Code',
               <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'Rule-Failure-Code', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'Rule-Failure-Code',
               <<0, 0, 0, 2>>) ->
    2;
enumerated_avp(encode, 'Rule-Failure-Code', 2) ->
    <<0, 0, 0, 2>>;
enumerated_avp(decode, 'Rule-Failure-Code',
               <<0, 0, 0, 3>>) ->
    3;
enumerated_avp(encode, 'Rule-Failure-Code', 3) ->
    <<0, 0, 0, 3>>;
enumerated_avp(decode, 'Rule-Failure-Code',
               <<0, 0, 0, 4>>) ->
    4;
enumerated_avp(encode, 'Rule-Failure-Code', 4) ->
    <<0, 0, 0, 4>>;
enumerated_avp(decode, 'Rule-Failure-Code',
               <<0, 0, 0, 5>>) ->
    5;
enumerated_avp(encode, 'Rule-Failure-Code', 5) ->
    <<0, 0, 0, 5>>;
enumerated_avp(decode, 'Rule-Failure-Code',
               <<0, 0, 0, 6>>) ->
    6;
enumerated_avp(encode, 'Rule-Failure-Code', 6) ->
    <<0, 0, 0, 6>>;
enumerated_avp(decode, 'Rule-Failure-Code',
               <<0, 0, 0, 7>>) ->
    7;
enumerated_avp(encode, 'Rule-Failure-Code', 7) ->
    <<0, 0, 0, 7>>;
enumerated_avp(decode, 'Rule-Failure-Code',
               <<0, 0, 0, 8>>) ->
    8;
enumerated_avp(encode, 'Rule-Failure-Code', 8) ->
    <<0, 0, 0, 8>>;
enumerated_avp(decode, 'Rule-Failure-Code',
               <<0, 0, 0, 9>>) ->
    9;
enumerated_avp(encode, 'Rule-Failure-Code', 9) ->
    <<0, 0, 0, 9>>;
enumerated_avp(decode, 'Rule-Failure-Code',
               <<0, 0, 0, 10>>) ->
    10;
enumerated_avp(encode, 'Rule-Failure-Code', 10) ->
    <<0, 0, 0, 10>>;
enumerated_avp(decode, 'Rule-Failure-Code',
               <<0, 0, 0, 11>>) ->
    11;
enumerated_avp(encode, 'Rule-Failure-Code', 11) ->
    <<0, 0, 0, 11>>;
enumerated_avp(decode, 'Rule-Failure-Code',
               <<0, 0, 0, 12>>) ->
    12;
enumerated_avp(encode, 'Rule-Failure-Code', 12) ->
    <<0, 0, 0, 12>>;
enumerated_avp(decode, 'Rule-Failure-Code',
               <<0, 0, 0, 13>>) ->
    13;
enumerated_avp(encode, 'Rule-Failure-Code', 13) ->
    <<0, 0, 0, 13>>;
enumerated_avp(decode, 'Rule-Failure-Code',
               <<0, 0, 0, 14>>) ->
    14;
enumerated_avp(encode, 'Rule-Failure-Code', 14) ->
    <<0, 0, 0, 14>>;
enumerated_avp(decode, 'Rule-Failure-Code',
               <<0, 0, 0, 15>>) ->
    15;
enumerated_avp(encode, 'Rule-Failure-Code', 15) ->
    <<0, 0, 0, 15>>;
enumerated_avp(decode, 'Rule-Failure-Code',
               <<0, 0, 0, 16>>) ->
    16;
enumerated_avp(encode, 'Rule-Failure-Code', 16) ->
    <<0, 0, 0, 16>>;
enumerated_avp(decode, 'Rule-Failure-Code',
               <<0, 0, 0, 17>>) ->
    17;
enumerated_avp(encode, 'Rule-Failure-Code', 17) ->
    <<0, 0, 0, 17>>;
enumerated_avp(decode, 'Rule-Failure-Code',
               <<0, 0, 0, 18>>) ->
    18;
enumerated_avp(encode, 'Rule-Failure-Code', 18) ->
    <<0, 0, 0, 18>>;
enumerated_avp(decode, 'Rule-Failure-Code',
               <<0, 0, 0, 19>>) ->
    19;
enumerated_avp(encode, 'Rule-Failure-Code', 19) ->
    <<0, 0, 0, 19>>;
enumerated_avp(decode, 'Rule-Failure-Code',
               <<0, 0, 0, 20>>) ->
    20;
enumerated_avp(encode, 'Rule-Failure-Code', 20) ->
    <<0, 0, 0, 20>>;
enumerated_avp(decode, 'Rule-Failure-Code',
               <<0, 0, 0, 21>>) ->
    21;
enumerated_avp(encode, 'Rule-Failure-Code', 21) ->
    <<0, 0, 0, 21>>;
enumerated_avp(decode, 'Rule-Failure-Code',
               <<0, 0, 0, 22>>) ->
    22;
enumerated_avp(encode, 'Rule-Failure-Code', 22) ->
    <<0, 0, 0, 22>>;
enumerated_avp(decode, 'Rule-Failure-Code',
               <<0, 0, 0, 23>>) ->
    23;
enumerated_avp(encode, 'Rule-Failure-Code', 23) ->
    <<0, 0, 0, 23>>;
enumerated_avp(decode, 'Session-Release-Cause',
               <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'Session-Release-Cause', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'Session-Release-Cause',
               <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'Session-Release-Cause', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'Session-Release-Cause',
               <<0, 0, 0, 2>>) ->
    2;
enumerated_avp(encode, 'Session-Release-Cause', 2) ->
    <<0, 0, 0, 2>>;
enumerated_avp(decode, 'Session-Release-Cause',
               <<0, 0, 0, 3>>) ->
    3;
enumerated_avp(encode, 'Session-Release-Cause', 3) ->
    <<0, 0, 0, 3>>;
enumerated_avp(decode, 'Session-Release-Cause',
               <<0, 0, 0, 4>>) ->
    4;
enumerated_avp(encode, 'Session-Release-Cause', 4) ->
    <<0, 0, 0, 4>>;
enumerated_avp(decode, 'Usage-Monitoring-Level',
               <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'Usage-Monitoring-Level', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'Usage-Monitoring-Level',
               <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'Usage-Monitoring-Level', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'Usage-Monitoring-Level',
               <<0, 0, 0, 2>>) ->
    2;
enumerated_avp(encode, 'Usage-Monitoring-Level', 2) ->
    <<0, 0, 0, 2>>;
enumerated_avp(decode, 'Usage-Monitoring-Report',
               <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'Usage-Monitoring-Report', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'Usage-Monitoring-Support',
               <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'Usage-Monitoring-Support', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(_, _, _) -> erlang:error(badarg).

empty_value('Access-Network-Charging-Identifier-Gx',
            Opts) ->
    empty_group('Access-Network-Charging-Identifier-Gx',
                Opts);
empty_value('Allocation-Retention-Priority', Opts) ->
    empty_group('Allocation-Retention-Priority', Opts);
empty_value('Application-Detection-Information',
            Opts) ->
    empty_group('Application-Detection-Information', Opts);
empty_value('Charging-Rule-Definition', Opts) ->
    empty_group('Charging-Rule-Definition', Opts);
empty_value('Charging-Rule-Install', Opts) ->
    empty_group('Charging-Rule-Install', Opts);
empty_value('Charging-Rule-Remove', Opts) ->
    empty_group('Charging-Rule-Remove', Opts);
empty_value('Charging-Rule-Report', Opts) ->
    empty_group('Charging-Rule-Report', Opts);
empty_value('CoA-Information', Opts) ->
    empty_group('CoA-Information', Opts);
empty_value('Conditional-APN-Aggregate-Max-Bitrate',
            Opts) ->
    empty_group('Conditional-APN-Aggregate-Max-Bitrate',
                Opts);
empty_value('Default-EPS-Bearer-QoS', Opts) ->
    empty_group('Default-EPS-Bearer-QoS', Opts);
empty_value('Default-QoS-Information', Opts) ->
    empty_group('Default-QoS-Information', Opts);
empty_value('Event-Report-Indication', Opts) ->
    empty_group('Event-Report-Indication', Opts);
empty_value('Fixed-User-Location-Info', Opts) ->
    empty_group('Fixed-User-Location-Info', Opts);
empty_value('Flow-Information', Opts) ->
    empty_group('Flow-Information', Opts);
empty_value('Packet-Filter-Information', Opts) ->
    empty_group('Packet-Filter-Information', Opts);
empty_value('Presence-Reporting-Area-Information',
            Opts) ->
    empty_group('Presence-Reporting-Area-Information',
                Opts);
empty_value('QoS-Information', Opts) ->
    empty_group('QoS-Information', Opts);
empty_value('Redirect-Information', Opts) ->
    empty_group('Redirect-Information', Opts);
empty_value('Routing-Filter', Opts) ->
    empty_group('Routing-Filter', Opts);
empty_value('Routing-Rule-Definition', Opts) ->
    empty_group('Routing-Rule-Definition', Opts);
empty_value('Routing-Rule-Install', Opts) ->
    empty_group('Routing-Rule-Install', Opts);
empty_value('Routing-Rule-Remove', Opts) ->
    empty_group('Routing-Rule-Remove', Opts);
empty_value('TDF-Information', Opts) ->
    empty_group('TDF-Information', Opts);
empty_value('Tunnel-Information', Opts) ->
    empty_group('Tunnel-Information', Opts);
empty_value('TFT-Packet-Filter-Information', Opts) ->
    empty_group('TFT-Packet-Filter-Information', Opts);
empty_value('Usage-Monitoring-Information', Opts) ->
    empty_group('Usage-Monitoring-Information', Opts);
empty_value('Proxy-Info', Opts) ->
    empty_group('Proxy-Info', Opts);
empty_value('Failed-AVP', Opts) ->
    empty_group('Failed-AVP', Opts);
empty_value('Experimental-Result', Opts) ->
    empty_group('Experimental-Result', Opts);
empty_value('Vendor-Specific-Application-Id', Opts) ->
    empty_group('Vendor-Specific-Application-Id', Opts);
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
empty_value('Flows', Opts) ->
    empty_group('Flows', Opts);
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
empty_value('AN-GW-Status', _) -> <<0, 0, 0, 0>>;
empty_value('Bearer-Control-Mode', _) -> <<0, 0, 0, 0>>;
empty_value('Bearer-Operation', _) -> <<0, 0, 0, 0>>;
empty_value('Bearer-Usage', _) -> <<0, 0, 0, 0>>;
empty_value('Charging-Correlation-Indicator', _) ->
    <<0, 0, 0, 0>>;
empty_value('CSG-Information-Reporting', _) ->
    <<0, 0, 0, 0>>;
empty_value('Event-Trigger', _) -> <<0, 0, 0, 0>>;
empty_value('Flow-Direction', _) -> <<0, 0, 0, 0>>;
empty_value('IP-CAN-Session-Charging-Scope', _) ->
    <<0, 0, 0, 0>>;
empty_value('IP-CAN-Type', _) -> <<0, 0, 0, 0>>;
empty_value('Metering-Method', _) -> <<0, 0, 0, 0>>;
empty_value('Mute-Notification', _) -> <<0, 0, 0, 0>>;
empty_value('Network-Request-Support', _) ->
    <<0, 0, 0, 0>>;
empty_value('Offline', _) -> <<0, 0, 0, 0>>;
empty_value('Online', _) -> <<0, 0, 0, 0>>;
empty_value('Packet-Filter-Operation', _) ->
    <<0, 0, 0, 0>>;
empty_value('Packet-Filter-Usage', _) -> <<0, 0, 0, 0>>;
empty_value('PCC-Rule-Status', _) -> <<0, 0, 0, 0>>;
empty_value('Pre-emption-Capability', _) ->
    <<0, 0, 0, 0>>;
empty_value('Pre-emption-Vulnerability', _) ->
    <<0, 0, 0, 0>>;
empty_value('PS-to-CS-Session-Continuity', _) ->
    <<0, 0, 0, 0>>;
empty_value('QoS-Class-Identifier', _) ->
    <<0, 0, 0, 0>>;
empty_value('QoS-Negotiation', _) -> <<0, 0, 0, 0>>;
empty_value('QoS-Upgrade', _) -> <<0, 0, 0, 0>>;
empty_value('RAT-Type', _) -> <<0, 0, 0, 0>>;
empty_value('Redirect-Support', _) -> <<0, 0, 0, 0>>;
empty_value('Reporting-Level', _) -> <<0, 0, 0, 0>>;
empty_value('Resource-Allocation-Notification', _) ->
    <<0, 0, 0, 0>>;
empty_value('Rule-Failure-Code', _) -> <<0, 0, 0, 0>>;
empty_value('Session-Release-Cause', _) ->
    <<0, 0, 0, 0>>;
empty_value('Usage-Monitoring-Level', _) ->
    <<0, 0, 0, 0>>;
empty_value('Usage-Monitoring-Report', _) ->
    <<0, 0, 0, 0>>;
empty_value('Usage-Monitoring-Support', _) ->
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
empty_value('3GPP-PDP-Type', _) -> <<0, 0, 0, 0>>;
empty_value('Server-Assignment-Type', _) ->
    <<0, 0, 0, 0>>;
empty_value('Reason-Code', _) -> <<0, 0, 0, 0>>;
empty_value(Name, Opts) -> empty(Name, Opts).

dict() ->
    [1,
     {avp_types,
      [{"AN-GW-Address", 1050, "Address", "V"},
       {"AN-GW-Status", 2811, "Enumerated", "V"},
       {"APN-Aggregate-Max-Bitrate-DL",
        1040,
        "Unsigned32",
        "V"},
       {"APN-Aggregate-Max-Bitrate-UL",
        1041,
        "Unsigned32",
        "V"},
       {"Access-Network-Charging-Identifier-Gx",
        1022,
        "Grouped",
        "MV"},
       {"Allocation-Retention-Priority", 1034, "Grouped", "V"},
       {"Application-Detection-Information",
        1098,
        "Grouped",
        "V"},
       {"Bearer-Control-Mode", 1023, "Enumerated", "MV"},
       {"Bearer-Identifier", 1020, "OctetString", "MV"},
       {"Bearer-Operation", 1021, "Enumerated", "MV"},
       {"Bearer-Usage", 1000, "Enumerated", "MV"},
       {"CSG-Information-Reporting", 1071, "Enumerated", "V"},
       {"Charging-Correlation-Indicator",
        1073,
        "Enumerated",
        "V"},
       {"Charging-Rule-Base-Name", 1004, "UTF8String", "MV"},
       {"Charging-Rule-Definition", 1003, "Grouped", "MV"},
       {"Charging-Rule-Install", 1001, "Grouped", "MV"},
       {"Charging-Rule-Name", 1005, "OctetString", "MV"},
       {"Charging-Rule-Remove", 1002, "Grouped", "MV"},
       {"Charging-Rule-Report", 1018, "Grouped", "MV"},
       {"CoA-IP-Address", 1035, "Address", "V"},
       {"CoA-Information", 1039, "Grouped", "V"},
       {"Conditional-APN-Aggregate-Max-Bitrate",
        2818,
        "Grouped",
        "V"},
       {"Credit-Management-Status", 1082, "Unsigned32", "V"},
       {"Default-EPS-Bearer-QoS", 1049, "Grouped", "V"},
       {"Default-QoS-Information", 2816, "Grouped", "V"},
       {"Default-QoS-Name", 2817, "UTF8String", "V"},
       {"Event-Report-Indication", 1033, "Grouped", "V"},
       {"Event-Trigger", 1006, "Enumerated", "MV"},
       {"Fixed-User-Location-Info", 2825, "Grouped", "V"},
       {"Flow-Direction", 1080, "Enumerated", "V"},
       {"Flow-Information", 1058, "Grouped", "V"},
       {"Flow-Label", 1057, "OctetString", "V"},
       {"Guaranteed-Bitrate-DL", 1025, "Unsigned32", "MV"},
       {"Guaranteed-Bitrate-UL", 1026, "Unsigned32", "MV"},
       {"HeNB-Local-IP-Address", 2804, "Address", "V"},
       {"IP-CAN-Session-Charging-Scope",
        2827,
        "Enumerated",
        "V"},
       {"IP-CAN-Type", 1027, "Enumerated", "MV"},
       {"Metering-Method", 1007, "Enumerated", "MV"},
       {"Monitoring-Key", 1066, "OctetString", "V"},
       {"Monitoring-Time", 2810, "Time", "V"},
       {"Mute-Notification", 2809, "Enumerated", "V"},
       {"NetLoc-Access-Support", 2824, "Unsigned32", "V"},
       {"Network-Request-Support", 1024, "Enumerated", "MV"},
       {"Offline", 1008, "Enumerated", "MV"},
       {"Online", 1009, "Enumerated", "MV"},
       {"PCC-Rule-Status", 1019, "Enumerated", "MV"},
       {"PCSCF-Restoration-Indication",
        2826,
        "Unsigned32",
        "V"},
       {"PDN-Connection-ID", 1065, "OctetString", "V"},
       {"PS-to-CS-Session-Continuity",
        1099,
        "Enumerated",
        "V"},
       {"Packet-Filter-Content", 1059, "IPFilterRule", "V"},
       {"Packet-Filter-Identifier", 1060, "OctetString", "V"},
       {"Packet-Filter-Information", 1061, "Grouped", "V"},
       {"Packet-Filter-Operation", 1062, "Enumerated", "V"},
       {"Packet-Filter-Usage", 1072, "Enumerated", "V"},
       {"Pre-emption-Capability", 1047, "Enumerated", "V"},
       {"Pre-emption-Vulnerability", 1048, "Enumerated", "V"},
       {"Precedence", 1010, "Unsigned32", "MV"},
       {"Presence-Reporting-Area-Elements-List",
        2820,
        "OctetString",
        "V"},
       {"Presence-Reporting-Area-Identifier",
        2821,
        "OctetString",
        "V"},
       {"Presence-Reporting-Area-Information",
        2822,
        "Grouped",
        "V"},
       {"Presence-Reporting-Area-Status",
        2823,
        "Unsigned32",
        "V"},
       {"Priority-Level", 1046, "Unsigned32", "V"},
       {"QoS-Class-Identifier", 1028, "Enumerated", "MV"},
       {"QoS-Information", 1016, "Grouped", "MV"},
       {"QoS-Negotiation", 1029, "Enumerated", "MV"},
       {"QoS-Upgrade", 1030, "Enumerated", "MV"},
       {"RAN-NAS-Release-Cause", 2819, "OctetString", "V"},
       {"RAT-Type", 1032, "Enumerated", "V"},
       {"Redirect-Information", 1085, "Grouped", "V"},
       {"Redirect-Support", 1086, "Enumerated", "V"},
       {"Reporting-Level", 1011, "Enumerated", "MV"},
       {"Resource-Allocation-Notification",
        1063,
        "Enumerated",
        "V"},
       {"Revalidation-Time", 1042, "Time", "MV"},
       {"Routing-Filter", 1078, "Grouped", "V"},
       {"Routing-IP-Address", 1079, "Address", "V"},
       {"Routing-Rule-Definition", 1076, "Grouped", "V"},
       {"Routing-Rule-Identifier", 1077, "OctetString", "V"},
       {"Routing-Rule-Install", 1081, "Grouped", "V"},
       {"Routing-Rule-Remove", 1075, "Grouped", "V"},
       {"Rule-Activation-Time", 1043, "Time", "MV"},
       {"Rule-Deactivation-Time", 1044, "Time", "MV"},
       {"Rule-Failure-Code", 1031, "Enumerated", "MV"},
       {"Security-Parameter-Index", 1056, "OctetString", "V"},
       {"Session-Release-Cause", 1045, "Enumerated", "MV"},
       {"TDF-Application-Identifier",
        1088,
        "OctetString",
        "V"},
       {"TDF-Application-Instance-Identifier",
        2802,
        "OctetString",
        "V"},
       {"TDF-Destination-Host", 1089, "DiameterIdentity", "V"},
       {"TDF-Destination-Realm",
        1090,
        "DiameterIdentity",
        "V"},
       {"TDF-IP-Address", 1091, "Address", "V"},
       {"TDF-Information", 1087, "Grouped", "V"},
       {"TFT-Filter", 1012, "IPFilterRule", "MV"},
       {"TFT-Packet-Filter-Information",
        1013,
        "Grouped",
        "MV"},
       {"ToS-Traffic-Class", 1014, "OctetString", "MV"},
       {"Tunnel-Header-Filter", 1036, "IPFilterRule", "V"},
       {"Tunnel-Header-Length", 1037, "Unsigned32", "V"},
       {"Tunnel-Information", 1038, "Grouped", "V"},
       {"UDP-Source-Port", 2806, "Unsigned32", "V"},
       {"UE-Local-IP-Address", 2805, "Address", "V"},
       {"Usage-Monitoring-Information", 1067, "Grouped", "V"},
       {"Usage-Monitoring-Level", 1068, "Enumerated", "V"},
       {"Usage-Monitoring-Report", 1069, "Enumerated", "V"},
       {"Usage-Monitoring-Support", 1070, "Enumerated", "V"},
       {"User-Location-Info-Time", 2812, "Time", "V"}]},
     {avp_vendor_id, []},
     {codecs, []},
     {command_codes,
      [{272, "CCR", "CCA"}, {258, "RAR", "RAA"}]},
     {custom_types, []},
     {define,
      [{"Presence-Reporting-Area-Status",
        [{"IN_AREA", 0}, {"OUT_OF_AREA", 1}]},
       {"NetLoc-Access-Support",
        [{"NETLOC_ACCESS_NOT_SUPPORTED", 0}]},
       {"PCSCF-Restoration-Indication",
        [{"PCSCF_RESTORATION", 0}]}]},
     {enum,
      [{"AN-GW-Status", [{"AN_GW_FAILED", 0}]},
       {"Bearer-Control-Mode",
        [{"UE_ONLY", 0}, {"RESERVED", 1}, {"UE_NW", 2}]},
       {"Bearer-Operation",
        [{"TERMINATION", 0},
         {"ESTABLISHMENT", 1},
         {"MODIFICATION", 2}]},
       {"Bearer-Usage",
        [{"GENERAL", 0}, {"IMS_SIGNALLING", 1}]},
       {"Charging-Correlation-Indicator",
        [{"CHARGING_IDENTIFIER_REQUIRED", 0}]},
       {"CSG-Information-Reporting",
        [{"CHANGE_CSG_CELL", 0},
         {"CHANGE_CSG_SUBSCRIBED_HYBRID_CELL", 1},
         {"CHANGE_CSG_UNSUBSCRIBED_HYBRID_CELL", 2}]},
       {"Event-Trigger",
        [{"SGSN_CHANGE", 0},
         {"QOS_CHANGE", 1},
         {"RAT_CHANGE", 2},
         {"TFT_CHANGE", 3},
         {"PLMN_CHANGE", 4},
         {"LOSS_OF_BEARER", 5},
         {"RECOVERY_OF_BEARER", 6},
         {"IP-CAN_CHANGE", 7},
         {"QOS_CHANGE_EXCEEDING_AUTHORIZATION", 11},
         {"RAI_CHANGE", 12},
         {"USER_LOCATION_CHANGE", 13},
         {"NO_EVENT_TRIGGERS", 14},
         {"OUT_OF_CREDIT", 15},
         {"REALLOCATION_OF_CREDIT", 16},
         {"REVALIDATION_TIMEOUT", 17},
         {"UE_IP_ADDRESS_ALLOCATE", 18},
         {"UE_IP_ADDRESS_RELEASE", 19},
         {"DEFAULT_EPS_BEARER_QOS_CHANGE", 20},
         {"AN_GW_CHANGE", 21},
         {"SUCCESSFUL_RESOURCE_ALLOCATION", 22},
         {"RESOURCE_MODIFICATION_REQUEST", 23},
         {"PGW_TRACE_CONTROL", 24},
         {"UE_TIME_ZONE_CHANGE", 25},
         {"TAI_CHANGE", 26},
         {"ECGI_CHANGE", 27},
         {"CHARGING_CORRELATION_EXCHANGE", 28},
         {"APN-AMBR_MODIFICATION_FAILURE", 29},
         {"USER_CSG_INFORMATION_CHANGE", 30},
         {"USAGE_REPORT", 33},
         {"DEFAULT-EPS-BEARER-QOS_MODIFICATION_FAILURE", 34},
         {"USER_CSG_HYBRID_SUBSCRIBED_INFORMATION_CHANGE", 35},
         {"USER_CSG_HYBRID_UNSUBSCRIBED_INFORMATION_CHANGE", 36},
         {"ROUTING_RULE_CHANGE", 37},
         {"APPLICATION_START", 39},
         {"APPLICATION_STOP", 40},
         {"CS_TO_PS_HANDOVER", 42},
         {"UE_LOCAL_IP_ADDRESS_CHANGE", 43},
         {"HNB_LOCAL_IP_ADDRESS_CHANGE", 44},
         {"ACCESS_NETWORK_INFO_REPORT", 45},
         {"CREDIT_MANAGEMENT_SESSION_FAILURE", 46},
         {"DEFAULT_QOS_CHANGE", 47},
         {"CHANGE_OF_UE_PRESENCE_IN_PRESENCE_REPORTING_A"
          "REA_REPORT",
          48}]},
       {"Flow-Direction",
        [{"UNSPECIFIED", 0},
         {"DOWNLINK", 1},
         {"UPLINK", 2},
         {"BIDIRECTIONAL", 3}]},
       {"IP-CAN-Session-Charging-Scope",
        [{"IP-CAN_SESSION_SCOPE", 0}]},
       {"IP-CAN-Type",
        [{"3GPP-GPRS", 0},
         {"DOCSIS", 1},
         {"xDSL", 2},
         {"WiMAX", 3},
         {"3GPP2", 4},
         {"3GPP-EPS", 5},
         {"Non-3GPP-EPS", 6},
         {"FBA", 7}]},
       {"Metering-Method",
        [{"DURATION", 0},
         {"VOLUME", 1},
         {"DURATION_VOLUME", 2},
         {"EVENT", 3}]},
       {"Mute-Notification", [{"MUTE_REQUIRED", 0}]},
       {"Network-Request-Support",
        [{"NETWORK_REQUEST_NOT_SUPPORTED", 0},
         {"NETWORK_REQUEST_SUPPORTED", 1}]},
       {"Offline",
        [{"DISABLE_OFFLINE", 0}, {"ENABLE_OFFLINE", 1}]},
       {"Online",
        [{"DISABLE_ONLINE", 0}, {"ENABLE_ONLINE", 1}]},
       {"Packet-Filter-Operation",
        [{"DELETION", 0},
         {"ADDITION", 1},
         {"MODIFICATION", 2}]},
       {"Packet-Filter-Usage", [{"SEND_TO_UE", 1}]},
       {"PCC-Rule-Status",
        [{"ACTIVE", 0},
         {"INACTIVE", 1},
         {"TEMPORARILY_INACTIVE", 2}]},
       {"Pre-emption-Capability",
        [{"PRE-EMPTION_CAPABILITY_ENABLED", 0},
         {"PRE-EMPTION_CAPABILITY_DISABLED", 1}]},
       {"Pre-emption-Vulnerability",
        [{"PRE-EMPTION_VULNERABILITY_ENABLED", 0},
         {"PRE-EMPTION_VULNERABILITY_DISABLED", 1}]},
       {"PS-to-CS-Session-Continuity",
        [{"VIDEO_PS2CS_CONT_CANDIDATE", 0}]},
       {"QoS-Class-Identifier",
        [{"QCI_1", 1},
         {"QCI_2", 2},
         {"QCI_3", 3},
         {"QCI_4", 4},
         {"QCI_5", 5},
         {"QCI_6", 6},
         {"QCI_7", 7},
         {"QCI_8", 8},
         {"QCI_9", 9},
         {"QCI_65", 65},
         {"QCI_66", 66},
         {"QCI_69", 69},
         {"QCI_70", 70}]},
       {"QoS-Negotiation",
        [{"NO_QoS_NEGOTIATION", 0},
         {"QoS_NEGOTIATION_SUPPORTED", 1}]},
       {"QoS-Upgrade",
        [{"QoS_UPGRADE_NOT_SUPPORTED", 0},
         {"QoS_UPGRADE_SUPPORTED", 1}]},
       {"RAT-Type",
        [{"WLAN", 0},
         {"VIRTUAL", 1},
         {"UTRAN", 1000},
         {"GERAN", 1001},
         {"GAN", 1002},
         {"HSPA_EVOLUTION", 1003},
         {"EUTRAN", 1004},
         {"CDMA2000_1X", 2000},
         {"HRPD", 2001},
         {"UMB", 2002},
         {"EHRPD", 2003}]},
       {"Redirect-Support",
        [{"REDIRECTION_DISABLED", 0},
         {"REDIRECTION_ENABLED", 1}]},
       {"Reporting-Level",
        [{"SERVICE_IDENTIFIER_LEVEL", 0},
         {"RATING_GROUP_LEVEL", 1},
         {"SPONSORED_CONNECTIVITY_LEVEL", 2}]},
       {"Resource-Allocation-Notification",
        [{"ENABLE_NOTIFICATION", 0}]},
       {"Rule-Failure-Code",
        [{"UNKNOWN_RULE_NAME", 1},
         {"RATING_GROUP_ERROR", 2},
         {"SERVICE_IDENTIFIER_ERROR", 3},
         {"GW_PCEF_MALFUNCTION", 4},
         {"RESOURCES_LIMITATION", 5},
         {"MAX_NR_BEARERS_REACHED", 6},
         {"UNKNOWN_BEARER_ID", 7},
         {"MISSING_BEARER_ID", 8},
         {"MISSING_FLOW_INFORMATION", 9},
         {"RESOURCE_ALLOCATION_FAILURE", 10},
         {"UNSUCCESSFUL_QOS_VALIDATION", 11},
         {"INCORRECT_FLOW_INFORMATION", 12},
         {"PS_TO_CS_HANDOVER", 13},
         {"TDF_APPLICATION_IDENTIFIER_ERROR", 14},
         {"NO_BEARER_BOUND", 15},
         {"FILTER_RESTRICTIONS", 16},
         {"AN_GW_FAILED", 17},
         {"MISSING_REDIRECT_SERVER_ADDRESS", 18},
         {"CM_END_USER_SERVICE_DENIED", 19},
         {"CM_CREDIT_CONTROL_NOT_APPLICABLE", 20},
         {"CM_AUTHORIZATION_REJECTED", 21},
         {"CM_USER_UNKNOWN", 22},
         {"CM_RATING_FAILED", 23}]},
       {"Session-Release-Cause",
        [{"UNSPECIFIED_REASON", 0},
         {"UE_SUBSCRIPTION_REASON", 1},
         {"INSUFFICIENT_SERVER_RESOURCES", 2},
         {"IP_CAN_SESSION_TERMINATION", 3},
         {"UE_IP_ADDRESS_RELEASE", 4}]},
       {"Usage-Monitoring-Level",
        [{"SESSION_LEVEL", 0},
         {"PCC_RULE_LEVEL", 1},
         {"ADC_RULE_LEVEL", 2}]},
       {"Usage-Monitoring-Report",
        [{"USAGE_MONITORING_REPORT_REQUIRED", 0}]},
       {"Usage-Monitoring-Support",
        [{"USAGE_MONITORING_DISABLED", 0}]}]},
     {grouped,
      [{"Access-Network-Charging-Identifier-Gx",
        1022,
        [],
        [{"Access-Network-Charging-Identifier-Value"},
         {'*', ["Charging-Rule-Base-Name"]},
         {'*', ["Charging-Rule-Name"]},
         ["IP-CAN-Session-Charging-Scope"],
         {'*', ["AVP"]}]},
       {"Allocation-Retention-Priority",
        1034,
        [],
        [{"Priority-Level"},
         ["Pre-emption-Capability"],
         ["Pre-emption-Vulnerability"]]},
       {"Application-Detection-Information",
        1098,
        [],
        [{"TDF-Application-Identifier"},
         ["TDF-Application-Instance-Identifier"],
         {'*', ["Flow-Information"]},
         {'*', ["AVP"]}]},
       {"Charging-Rule-Definition",
        1003,
        [],
        [{"Charging-Rule-Name"},
         ["Service-Identifier"],
         ["Rating-Group"],
         {'*', ["Flow-Information"]},
         ["TDF-Application-Identifier"],
         ["Flow-Status"],
         ["QoS-Information"],
         ["PS-to-CS-Session-Continuity"],
         ["Reporting-Level"],
         ["Online"],
         ["Offline"],
         ["Metering-Method"],
         ["Precedence"],
         ["AF-Charging-Identifier"],
         {'*', ["Flows"]},
         ["Monitoring-Key"],
         ["Redirect-Information"],
         ["Mute-Notification"],
         ["AF-Signalling-Protocol"],
         ["Sponsor-Identity"],
         ["Application-Service-Provider-Identity"],
         {'*', ["Required-Access-Info"]},
         {'*', ["AVP"]}]},
       {"Charging-Rule-Install",
        1001,
        [],
        [{'*', ["Charging-Rule-Definition"]},
         {'*', ["Charging-Rule-Name"]},
         {'*', ["Charging-Rule-Base-Name"]},
         ["Bearer-Identifier"],
         ["Rule-Activation-Time"],
         ["Rule-Deactivation-Time"],
         ["Resource-Allocation-Notification"],
         ["Charging-Correlation-Indicator"],
         {'*', ["AVP"]}]},
       {"Charging-Rule-Remove",
        1002,
        [],
        [{'*', ["Charging-Rule-Name"]},
         {'*', ["Charging-Rule-Base-Name"]},
         {'*', ["Required-Access-Info"]},
         {'*', ["AVP"]}]},
       {"Charging-Rule-Report",
        1018,
        [],
        [{'*', ["Charging-Rule-Name"]},
         {'*', ["Charging-Rule-Base-Name"]},
         ["Bearer-Identifier"],
         ["PCC-Rule-Status"],
         ["Rule-Failure-Code"],
         ["Final-Unit-Indication"],
         {'*', ["RAN-NAS-Release-Cause"]},
         {'*', ["AVP"]}]},
       {"CoA-Information",
        1039,
        [],
        [{"Tunnel-Information"},
         {"CoA-IP-Address"},
         {'*', ["AVP"]}]},
       {"Conditional-APN-Aggregate-Max-Bitrate",
        2818,
        [],
        [["APN-Aggregate-Max-Bitrate-UL"],
         ["APN-Aggregate-Max-Bitrate-DL"],
         {'*', ["IP-CAN-Type"]},
         {'*', ["RAT-Type"]},
         {'*', ["AVP"]}]},
       {"Default-EPS-Bearer-QoS",
        1049,
        [],
        [["QoS-Class-Identifier"],
         ["Allocation-Retention-Priority"],
         {'*', ["AVP"]}]},
       {"Default-QoS-Information",
        2816,
        [],
        [["QoS-Class-Identifier"],
         ["Max-Requested-Bandwidth-UL"],
         ["Max-Requested-Bandwidth-DL"],
         ["Default-QoS-Name"],
         {'*', ["AVP"]}]},
       {"Event-Report-Indication",
        1033,
        [],
        [{'*', ["Event-Trigger"]},
         ["IP-CAN-Type"],
         {{0, 2}, ["AN-GW-Address"]},
         ["3GPP-SGSN-Address"],
         ["3GPP-SGSN-IPv6-Address"],
         ["3GPP-SGSN-MCC-MNC"],
         ["Framed-IP-Address"],
         ["RAT-Type"],
         ["RAI"],
         ["3GPP-User-Location-Info"],
         ["3GPP-MS-TimeZone"],
         ["Routing-IP-Address"],
         ["UE-Local-IP-Address"],
         ["HeNB-Local-IP-Address"],
         ["UDP-Source-Port"],
         ["Presence-Reporting-Area-Information"],
         {'*', ["AVP"]}]},
       {"Fixed-User-Location-Info",
        2825,
        [],
        [["Logical-Access-ID"],
         ["Physical-Access-ID"],
         {'*', ["AVP"]}]},
       {"Flow-Information",
        1058,
        [],
        [["Flow-Description"],
         ["Packet-Filter-Identifier"],
         ["Packet-Filter-Usage"],
         ["ToS-Traffic-Class"],
         ["Security-Parameter-Index"],
         ["Flow-Label"],
         ["Flow-Direction"],
         {'*', ["AVP"]}]},
       {"Packet-Filter-Information",
        1061,
        [],
        [["Packet-Filter-Identifier"],
         ["Precedence"],
         ["Packet-Filter-Content"],
         ["ToS-Traffic-Class"],
         ["Security-Parameter-Index"],
         ["Flow-Label"],
         ["Flow-Direction"],
         {'*', ["AVP"]}]},
       {"Presence-Reporting-Area-Information",
        2822,
        [],
        [["Presence-Reporting-Area-Identifier"],
         ["Presence-Reporting-Area-Status"],
         ["Presence-Reporting-Area-Elements-List"],
         {'*', ["AVP"]}]},
       {"QoS-Information",
        1016,
        [],
        [["QoS-Class-Identifier"],
         ["Max-Requested-Bandwidth-UL"],
         ["Max-Requested-Bandwidth-DL"],
         ["Guaranteed-Bitrate-UL"],
         ["Guaranteed-Bitrate-DL"],
         ["Bearer-Identifier"],
         ["Allocation-Retention-Priority"],
         ["APN-Aggregate-Max-Bitrate-UL"],
         ["APN-Aggregate-Max-Bitrate-DL"],
         {'*', ["Conditional-APN-Aggregate-Max-Bitrate"]},
         {'*', ["AVP"]}]},
       {"Redirect-Information",
        1085,
        [],
        [["Redirect-Support"],
         ["Redirect-Address-Type"],
         ["Redirect-Server-Address"],
         {'*', ["AVP"]}]},
       {"Routing-Filter",
        1078,
        [],
        [{"Flow-Description"},
         {"Flow-Direction"},
         ["ToS-Traffic-Class"],
         ["Security-Parameter-Index"],
         ["Flow-Label"],
         {'*', ["AVP"]}]},
       {"Routing-Rule-Definition",
        1076,
        [],
        [{"Routing-Rule-Identifier"},
         {'*', ["Routing-Filter"]},
         ["Precedence"],
         ["Routing-IP-Address"],
         {'*', ["AVP"]}]},
       {"Routing-Rule-Install",
        1081,
        [],
        [{'*', ["Routing-Rule-Definition"]}, {'*', ["AVP"]}]},
       {"Routing-Rule-Remove",
        1075,
        [],
        [{'*', ["Routing-Rule-Identifier"]}, {'*', ["AVP"]}]},
       {"TDF-Information",
        1087,
        [],
        [["TDF-Destination-Realm"],
         ["TDF-Destination-Host"],
         ["TDF-IP-Address"]]},
       {"Tunnel-Information",
        1038,
        [],
        [["Tunnel-Header-Length"],
         {{0, 2}, ["Tunnel-Header-Filter"]},
         {'*', ["AVP"]}]},
       {"TFT-Packet-Filter-Information",
        1013,
        [],
        [["Precedence"],
         ["TFT-Filter"],
         ["ToS-Traffic-Class"],
         ["Security-Parameter-Index"],
         ["Flow-Label"],
         ["Flow-Direction"],
         {'*', ["AVP"]}]},
       {"Usage-Monitoring-Information",
        1067,
        [],
        [["Monitoring-Key"],
         {{0, 2}, ["Granted-Service-Unit"]},
         {{0, 2}, ["Used-Service-Unit"]},
         ["Usage-Monitoring-Level"],
         ["Usage-Monitoring-Report"],
         ["Usage-Monitoring-Support"],
         {'*', ["AVP"]}]}]},
     {id, 16777238},
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
        [{"Called-Station-Id", 30, "UTF8String", "M"},
         {"Framed-IP-Address", 8, "OctetString", "M"},
         {"Framed-IPv6-Prefix", 97, "OctetString", "M"}]},
       {diameter_rfc4006_cc,
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
       {diameter_etsi_es283_034,
        [{"Address-Realm", 301, "OctetString", "MV"},
         {"Aggregation-Network-Type", 307, "Enumerated", "V"},
         {"Application-Class-ID", 312, "UTF8String", "V"},
         {"IP-Connectivity-Status", 305, "Enumerated", "V"},
         {"Initial-Gate-Setting-ID", 314, "Unsigned32", "V"},
         {"Logical-Access-ID", 302, "OctetString", "V"},
         {"Maximum-Allowed-Bandwidth-DL",
          309,
          "Unsigned32",
          "V"},
         {"Maximum-Allowed-Bandwidth-UL",
          308,
          "Unsigned32",
          "V"},
         {"Physical-Access-ID", 313, "UTF8String", "V"},
         {"QoS-Profile-ID", 315, "Unsigned32", "V"},
         {"Transport-Class", 311, "Unsigned32", "V"}]},
       {diameter_3gpp_ts29_061_gmb,
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
       {diameter_3gpp_ts29_214,
        [{"AF-Application-Identifier",
          504,
          "OctetString",
          "MV"},
         {"AF-Charging-Identifier", 505, "OctetString", "MV"},
         {"AF-Signalling-Protocol", 529, "Enumerated", "V"},
         {"Abort-Cause", 500, "Enumerated", "MV"},
         {"Access-Network-Charging-Address",
          501,
          "Address",
          "MV"},
         {"Access-Network-Charging-Identifier-Value",
          503,
          "OctetString",
          "MV"},
         {"Application-Service-Provider-Identity",
          532,
          "UTF8String",
          "V"},
         {"Codec-Data", 524, "OctetString", "MV"},
         {"Flow-Description", 507, "IPFilterRule", "MV"},
         {"Flow-Number", 509, "Unsigned32", "MV"},
         {"Flow-Status", 511, "Enumerated", "MV"},
         {"Flow-Usage", 512, "Enumerated", "MV"},
         {"Flows", 510, "Grouped", "MV"},
         {"GCS-Identifier", 538, "OctetString", "V"},
         {"IP-Domain-Id", 537, "OctetString", "V"},
         {"MPS-Identifier", 528, "OctetString", "V"},
         {"Max-Requested-Bandwidth-DL", 515, "Unsigned32", "MV"},
         {"Max-Requested-Bandwidth-UL", 516, "Unsigned32", "MV"},
         {"Media-Component-Number", 518, "Unsigned32", "MV"},
         {"Media-Type", 520, "Enumerated", "MV"},
         {"Min-Requested-Bandwidth-DL", 534, "Unsigned32", "V"},
         {"Min-Requested-Bandwidth-UL", 535, "Unsigned32", "V"},
         {"RR-Bandwidth", 521, "Unsigned32", "MV"},
         {"RS-Bandwidth", 522, "Unsigned32", "MV"},
         {"Required-Access-Info", 536, "Enumerated", "V"},
         {"Rx-Request-Type", 533, "Enumerated", "V"},
         {"SIP-Forking-Indication", 523, "Enumerated", "MV"},
         {"Service-Info-Status", 527, "Enumerated", "MV"},
         {"Service-URN", 525, "OctetString", "MV"},
         {"Specific-Action", 513, "Enumerated", "MV"},
         {"Sponsor-Identity", 531, "UTF8String", "V"}]},
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
          "V"}]}]},
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
       {diameter_rfc4006_cc,
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
       {diameter_rfc4006_cc,
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
       {diameter_3gpp_ts29_214,
        [{"Flows",
          510,
          [],
          [{"Media-Component-Number"},
           {'*', ["Flow-Number"]},
           ["Final-Unit-Action"]]}]},
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
           {'*', ["AVP"]}]}]}]},
     {inherits,
      [{"diameter_3gpp_ts29_229", []},
       {"diameter_3gpp_ts29_214", []},
       {"diameter_3gpp_ts29_061_gmb", []},
       {"diameter_etsi_es283_034", []},
       {"diameter_3gpp_base", []},
       {"diameter_rfc4006_cc", []},
       {"diameter_rfc4005_nasreq",
        ["Framed-IP-Address",
         "Framed-IPv6-Prefix",
         "Called-Station-Id"]},
       {"diameter_gen_base_rfc6733", []}]},
     {messages,
      [{"CCR",
        272,
        ['REQ', 'PXY'],
        [],
        [{{"Session-Id"}},
         {"Auth-Application-Id"},
         {"Origin-Host"},
         {"Origin-Realm"},
         {"Destination-Realm"},
         {"CC-Request-Type"},
         {"CC-Request-Number"},
         ["Credit-Management-Status"],
         ["Destination-Host"],
         ["Origin-State-Id"],
         {'*', ["Subscription-Id"]},
         {'*', ["Supported-Features"]},
         ["TDF-Information"],
         ["Network-Request-Support"],
         {'*', ["Packet-Filter-Information"]},
         ["Packet-Filter-Operation"],
         ["Bearer-Identifier"],
         ["Bearer-Operation"],
         ["Framed-IP-Address"],
         ["Framed-IPv6-Prefix"],
         ["IP-CAN-Type"],
         ["3GPP-RAT-Type"],
         ["RAT-Type"],
         ["Termination-Cause"],
         ["User-Equipment-Info"],
         ["QoS-Information"],
         ["QoS-Negotiation"],
         ["QoS-Upgrade"],
         ["Default-EPS-Bearer-QoS"],
         ["Default-QoS-Information"],
         {{0, 2}, ["AN-GW-Address"]},
         ["AN-GW-Status"],
         ["3GPP-SGSN-MCC-MNC"],
         ["3GPP-SGSN-Address"],
         ["3GPP-SGSN-IPv6-Address"],
         ["3GPP-GGSN-Address"],
         ["3GPP-GGSN-IPv6-Address"],
         ["3GPP-Selection-Mode"],
         ["RAI"],
         ["3GPP-User-Location-Info"],
         ["User-Location-Info-Time"],
         ["TWAN-Identifier"],
         ["3GPP-MS-TimeZone"],
         {'*', ["RAN-NAS-Release-Cause"]},
         ["3GPP-Charging-Characteristics"],
         ["Called-Station-Id"],
         ["PDN-Connection-ID"],
         ["Bearer-Usage"],
         ["Online"],
         ["Offline"],
         {'*', ["TFT-Packet-Filter-Information"]},
         {'*', ["Charging-Rule-Report"]},
         {'*', ["Application-Detection-Information"]},
         {'*', ["Event-Trigger"]},
         ["Event-Report-Indication"],
         ["Access-Network-Charging-Address"],
         {'*', ["Access-Network-Charging-Identifier-Gx"]},
         {'*', ["CoA-Information"]},
         {'*', ["Usage-Monitoring-Information"]},
         ["Routing-Rule-Install"],
         ["Routing-Rule-Remove"],
         ["HeNB-Local-IP-Address"],
         ["UE-Local-IP-Address"],
         ["UDP-Source-Port"],
         ["Presence-Reporting-Area-Information"],
         ["Logical-Access-ID"],
         ["Physical-Access-ID"],
         {'*', ["Proxy-Info"]},
         {'*', ["Route-Record"]},
         {'*', ["AVP"]}]},
       {"CCA",
        272,
        ['PXY'],
        [],
        [{{"Session-Id"}},
         {"Auth-Application-Id"},
         {"Origin-Host"},
         {"Origin-Realm"},
         {"CC-Request-Type"},
         {"CC-Request-Number"},
         ["Result-Code"],
         ["Experimental-Result"],
         {'*', ["Supported-Features"]},
         ["Bearer-Control-Mode"],
         {'*', ["Event-Trigger"]},
         ["Event-Report-Indication"],
         ["Origin-State-Id"],
         {'*', ["Redirect-Host"]},
         ["Redirect-Host-Usage"],
         ["Redirect-Max-Cache-Time"],
         {'*', ["Charging-Rule-Remove"]},
         {'*', ["Charging-Rule-Install"]},
         ["Charging-Information"],
         ["Online"],
         ["Offline"],
         {'*', ["QoS-Information"]},
         ["Revalidation-Time"],
         ["Default-EPS-Bearer-QoS"],
         ["Default-QoS-Information"],
         ["Bearer-Usage"],
         {'*', ["Usage-Monitoring-Information"]},
         {'*', ["CSG-Information-Reporting"]},
         ["Presence-Reporting-Area-Information"],
         ["Session-Release-Cause"],
         ["Error-Message"],
         ["Error-Reporting-Host"],
         {'*', ["Failed-AVP"]},
         {'*', ["Proxy-Info"]},
         {'*', ["Route-Record"]},
         {'*', ["AVP"]}]},
       {"RAR",
        258,
        ['REQ', 'PXY'],
        [],
        [{{"Session-Id"}},
         {"Auth-Application-Id"},
         {"Origin-Host"},
         {"Origin-Realm"},
         {"Destination-Realm"},
         {"Destination-Host"},
         {"Re-Auth-Request-Type"},
         ["Session-Release-Cause"],
         ["Origin-State-Id"],
         {'*', ["Event-Trigger"]},
         ["Event-Report-Indication"],
         {'*', ["Charging-Rule-Remove"]},
         {'*', ["Charging-Rule-Install"]},
         ["Default-EPS-Bearer-QoS"],
         {'*', ["QoS-Information"]},
         ["Default-QoS-Information"],
         ["Revalidation-Time"],
         {'*', ["Usage-Monitoring-Information"]},
         ["PCSCF-Restoration-Indication"],
         {'*', ["Proxy-Info"]},
         {'*', ["Route-Record"]},
         {'*', ["AVP"]}]},
       {"RAA",
        258,
        ['PXY'],
        [],
        [{{"Session-Id"}},
         {"Origin-Host"},
         {"Origin-Realm"},
         ["Result-Code"],
         ["Experimental-Result"],
         ["Origin-State-Id"],
         ["IP-CAN-Type"],
         ["RAT-Type"],
         {{0, 2}, ["AN-GW-Address"]},
         ["3GPP-SGSN-MCC-MNC"],
         ["3GPP-SGSN-Address"],
         ["3GPP-SGSN-IPv6-Address"],
         ["RAI"],
         ["3GPP-User-Location-Info"],
         ["User-Location-Info-Time"],
         ["NetLoc-Access-Support"],
         ["3GPP-MS-TimeZone"],
         ["Default-QoS-Information"],
         {'*', ["Charging-Rule-Report"]},
         ["Error-Message"],
         ["Error-Reporting-Host"],
         {'*', ["Failed-AVP"]},
         {'*', ["Proxy-Info"]},
         {'*', ["AVP"]}]}]},
     {name, "diameter_3gpp_ts29_212"},
     {prefix, "diameter_gx"},
     {vendor, {10415, "3GPP"}}].


