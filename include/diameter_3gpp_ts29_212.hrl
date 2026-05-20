%% -------------------------------------------------------------------
%% This is a generated file.
%% -------------------------------------------------------------------

-hrl_name('diameter_3gpp_ts29_212.hrl').


%%% -------------------------------------------------------
%%% Message records:
%%% -------------------------------------------------------

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


%%% -------------------------------------------------------
%%% Grouped AVP records:
%%% -------------------------------------------------------

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


%%% -------------------------------------------------------
%%% Grouped AVP records from diameter_gen_base_rfc6733:
%%% -------------------------------------------------------

-record('diameter_gx_Proxy-Info',
        {'Proxy-Host', 'Proxy-State', 'AVP' = []}).

-record('diameter_gx_Failed-AVP', {'AVP' = []}).

-record('diameter_gx_Experimental-Result',
        {'Vendor-Id', 'Experimental-Result-Code'}).

-record('diameter_gx_Vendor-Specific-Application-Id',
        {'Vendor-Id',
         'Auth-Application-Id' = [],
         'Acct-Application-Id' = []}).


%%% -------------------------------------------------------
%%% Grouped AVP records from diameter_rfc4006_cc:
%%% -------------------------------------------------------

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


%%% -------------------------------------------------------
%%% Grouped AVP records from diameter_3gpp_ts29_214:
%%% -------------------------------------------------------

-record(diameter_gx_Flows,
        {'Media-Component-Number',
         'Flow-Number' = [],
         'Final-Unit-Action' = []}).


%%% -------------------------------------------------------
%%% Grouped AVP records from diameter_3gpp_ts29_229:
%%% -------------------------------------------------------

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


%%% -------------------------------------------------------
%%% ENUM Macros:
%%% -------------------------------------------------------

-define('DIAMETER_GX_AN-GW-STATUS_AN_GW_FAILED', 0).
-define('DIAMETER_GX_BEARER-CONTROL-MODE_UE_ONLY', 0).
-define('DIAMETER_GX_BEARER-CONTROL-MODE_RESERVED', 1).
-define('DIAMETER_GX_BEARER-CONTROL-MODE_UE_NW', 2).
-define('DIAMETER_GX_BEARER-OPERATION_TERMINATION', 0).
-define('DIAMETER_GX_BEARER-OPERATION_ESTABLISHMENT', 1).
-define('DIAMETER_GX_BEARER-OPERATION_MODIFICATION', 2).
-define('DIAMETER_GX_BEARER-USAGE_GENERAL', 0).
-define('DIAMETER_GX_BEARER-USAGE_IMS_SIGNALLING', 1).
-define('DIAMETER_GX_CHARGING-CORRELATION-INDICATOR_CHARGING_IDENTIFIER_REQUIRED', 0).
-define('DIAMETER_GX_CSG-INFORMATION-REPORTING_CHANGE_CSG_CELL', 0).
-define('DIAMETER_GX_CSG-INFORMATION-REPORTING_CHANGE_CSG_SUBSCRIBED_HYBRID_CELL', 1).
-define('DIAMETER_GX_CSG-INFORMATION-REPORTING_CHANGE_CSG_UNSUBSCRIBED_HYBRID_CELL', 2).
-define('DIAMETER_GX_EVENT-TRIGGER_SGSN_CHANGE', 0).
-define('DIAMETER_GX_EVENT-TRIGGER_QOS_CHANGE', 1).
-define('DIAMETER_GX_EVENT-TRIGGER_RAT_CHANGE', 2).
-define('DIAMETER_GX_EVENT-TRIGGER_TFT_CHANGE', 3).
-define('DIAMETER_GX_EVENT-TRIGGER_PLMN_CHANGE', 4).
-define('DIAMETER_GX_EVENT-TRIGGER_LOSS_OF_BEARER', 5).
-define('DIAMETER_GX_EVENT-TRIGGER_RECOVERY_OF_BEARER', 6).
-define('DIAMETER_GX_EVENT-TRIGGER_IP-CAN_CHANGE', 7).
-define('DIAMETER_GX_EVENT-TRIGGER_QOS_CHANGE_EXCEEDING_AUTHORIZATION', 11).
-define('DIAMETER_GX_EVENT-TRIGGER_RAI_CHANGE', 12).
-define('DIAMETER_GX_EVENT-TRIGGER_USER_LOCATION_CHANGE', 13).
-define('DIAMETER_GX_EVENT-TRIGGER_NO_EVENT_TRIGGERS', 14).
-define('DIAMETER_GX_EVENT-TRIGGER_OUT_OF_CREDIT', 15).
-define('DIAMETER_GX_EVENT-TRIGGER_REALLOCATION_OF_CREDIT', 16).
-define('DIAMETER_GX_EVENT-TRIGGER_REVALIDATION_TIMEOUT', 17).
-define('DIAMETER_GX_EVENT-TRIGGER_UE_IP_ADDRESS_ALLOCATE', 18).
-define('DIAMETER_GX_EVENT-TRIGGER_UE_IP_ADDRESS_RELEASE', 19).
-define('DIAMETER_GX_EVENT-TRIGGER_DEFAULT_EPS_BEARER_QOS_CHANGE', 20).
-define('DIAMETER_GX_EVENT-TRIGGER_AN_GW_CHANGE', 21).
-define('DIAMETER_GX_EVENT-TRIGGER_SUCCESSFUL_RESOURCE_ALLOCATION', 22).
-define('DIAMETER_GX_EVENT-TRIGGER_RESOURCE_MODIFICATION_REQUEST', 23).
-define('DIAMETER_GX_EVENT-TRIGGER_PGW_TRACE_CONTROL', 24).
-define('DIAMETER_GX_EVENT-TRIGGER_UE_TIME_ZONE_CHANGE', 25).
-define('DIAMETER_GX_EVENT-TRIGGER_TAI_CHANGE', 26).
-define('DIAMETER_GX_EVENT-TRIGGER_ECGI_CHANGE', 27).
-define('DIAMETER_GX_EVENT-TRIGGER_CHARGING_CORRELATION_EXCHANGE', 28).
-define('DIAMETER_GX_EVENT-TRIGGER_APN-AMBR_MODIFICATION_FAILURE', 29).
-define('DIAMETER_GX_EVENT-TRIGGER_USER_CSG_INFORMATION_CHANGE', 30).
-define('DIAMETER_GX_EVENT-TRIGGER_USAGE_REPORT', 33).
-define('DIAMETER_GX_EVENT-TRIGGER_DEFAULT-EPS-BEARER-QOS_MODIFICATION_FAILURE', 34).
-define('DIAMETER_GX_EVENT-TRIGGER_USER_CSG_HYBRID_SUBSCRIBED_INFORMATION_CHANGE', 35).
-define('DIAMETER_GX_EVENT-TRIGGER_USER_CSG_HYBRID_UNSUBSCRIBED_INFORMATION_CHANGE', 36).
-define('DIAMETER_GX_EVENT-TRIGGER_ROUTING_RULE_CHANGE', 37).
-define('DIAMETER_GX_EVENT-TRIGGER_APPLICATION_START', 39).
-define('DIAMETER_GX_EVENT-TRIGGER_APPLICATION_STOP', 40).
-define('DIAMETER_GX_EVENT-TRIGGER_CS_TO_PS_HANDOVER', 42).
-define('DIAMETER_GX_EVENT-TRIGGER_UE_LOCAL_IP_ADDRESS_CHANGE', 43).
-define('DIAMETER_GX_EVENT-TRIGGER_HNB_LOCAL_IP_ADDRESS_CHANGE', 44).
-define('DIAMETER_GX_EVENT-TRIGGER_ACCESS_NETWORK_INFO_REPORT', 45).
-define('DIAMETER_GX_EVENT-TRIGGER_CREDIT_MANAGEMENT_SESSION_FAILURE', 46).
-define('DIAMETER_GX_EVENT-TRIGGER_DEFAULT_QOS_CHANGE', 47).
-define('DIAMETER_GX_EVENT-TRIGGER_CHANGE_OF_UE_PRESENCE_IN_PRESENCE_REPORTING_AREA_REPORT', 48).
-define('DIAMETER_GX_FLOW-DIRECTION_UNSPECIFIED', 0).
-define('DIAMETER_GX_FLOW-DIRECTION_DOWNLINK', 1).
-define('DIAMETER_GX_FLOW-DIRECTION_UPLINK', 2).
-define('DIAMETER_GX_FLOW-DIRECTION_BIDIRECTIONAL', 3).
-define('DIAMETER_GX_IP-CAN-SESSION-CHARGING-SCOPE_IP-CAN_SESSION_SCOPE', 0).
-define('DIAMETER_GX_IP-CAN-TYPE_3GPP-GPRS', 0).
-define('DIAMETER_GX_IP-CAN-TYPE_DOCSIS', 1).
-define('DIAMETER_GX_IP-CAN-TYPE_XDSL', 2).
-define('DIAMETER_GX_IP-CAN-TYPE_WIMAX', 3).
-define('DIAMETER_GX_IP-CAN-TYPE_3GPP2', 4).
-define('DIAMETER_GX_IP-CAN-TYPE_3GPP-EPS', 5).
-define('DIAMETER_GX_IP-CAN-TYPE_NON-3GPP-EPS', 6).
-define('DIAMETER_GX_IP-CAN-TYPE_FBA', 7).
-define('DIAMETER_GX_METERING-METHOD_DURATION', 0).
-define('DIAMETER_GX_METERING-METHOD_VOLUME', 1).
-define('DIAMETER_GX_METERING-METHOD_DURATION_VOLUME', 2).
-define('DIAMETER_GX_METERING-METHOD_EVENT', 3).
-define('DIAMETER_GX_MUTE-NOTIFICATION_MUTE_REQUIRED', 0).
-define('DIAMETER_GX_NETWORK-REQUEST-SUPPORT_NETWORK_REQUEST_NOT_SUPPORTED', 0).
-define('DIAMETER_GX_NETWORK-REQUEST-SUPPORT_NETWORK_REQUEST_SUPPORTED', 1).
-define('DIAMETER_GX_OFFLINE_DISABLE_OFFLINE', 0).
-define('DIAMETER_GX_OFFLINE_ENABLE_OFFLINE', 1).
-define('DIAMETER_GX_ONLINE_DISABLE_ONLINE', 0).
-define('DIAMETER_GX_ONLINE_ENABLE_ONLINE', 1).
-define('DIAMETER_GX_PACKET-FILTER-OPERATION_DELETION', 0).
-define('DIAMETER_GX_PACKET-FILTER-OPERATION_ADDITION', 1).
-define('DIAMETER_GX_PACKET-FILTER-OPERATION_MODIFICATION', 2).
-define('DIAMETER_GX_PACKET-FILTER-USAGE_SEND_TO_UE', 1).
-define('DIAMETER_GX_PCC-RULE-STATUS_ACTIVE', 0).
-define('DIAMETER_GX_PCC-RULE-STATUS_INACTIVE', 1).
-define('DIAMETER_GX_PCC-RULE-STATUS_TEMPORARILY_INACTIVE', 2).
-define('DIAMETER_GX_PRE-EMPTION-CAPABILITY_PRE-EMPTION_CAPABILITY_ENABLED', 0).
-define('DIAMETER_GX_PRE-EMPTION-CAPABILITY_PRE-EMPTION_CAPABILITY_DISABLED', 1).
-define('DIAMETER_GX_PRE-EMPTION-VULNERABILITY_PRE-EMPTION_VULNERABILITY_ENABLED', 0).
-define('DIAMETER_GX_PRE-EMPTION-VULNERABILITY_PRE-EMPTION_VULNERABILITY_DISABLED', 1).
-define('DIAMETER_GX_PS-TO-CS-SESSION-CONTINUITY_VIDEO_PS2CS_CONT_CANDIDATE', 0).
-define('DIAMETER_GX_QOS-CLASS-IDENTIFIER_QCI_1', 1).
-define('DIAMETER_GX_QOS-CLASS-IDENTIFIER_QCI_2', 2).
-define('DIAMETER_GX_QOS-CLASS-IDENTIFIER_QCI_3', 3).
-define('DIAMETER_GX_QOS-CLASS-IDENTIFIER_QCI_4', 4).
-define('DIAMETER_GX_QOS-CLASS-IDENTIFIER_QCI_5', 5).
-define('DIAMETER_GX_QOS-CLASS-IDENTIFIER_QCI_6', 6).
-define('DIAMETER_GX_QOS-CLASS-IDENTIFIER_QCI_7', 7).
-define('DIAMETER_GX_QOS-CLASS-IDENTIFIER_QCI_8', 8).
-define('DIAMETER_GX_QOS-CLASS-IDENTIFIER_QCI_9', 9).
-define('DIAMETER_GX_QOS-CLASS-IDENTIFIER_QCI_65', 65).
-define('DIAMETER_GX_QOS-CLASS-IDENTIFIER_QCI_66', 66).
-define('DIAMETER_GX_QOS-CLASS-IDENTIFIER_QCI_69', 69).
-define('DIAMETER_GX_QOS-CLASS-IDENTIFIER_QCI_70', 70).
-define('DIAMETER_GX_QOS-NEGOTIATION_NO_QOS_NEGOTIATION', 0).
-define('DIAMETER_GX_QOS-NEGOTIATION_QOS_NEGOTIATION_SUPPORTED', 1).
-define('DIAMETER_GX_QOS-UPGRADE_QOS_UPGRADE_NOT_SUPPORTED', 0).
-define('DIAMETER_GX_QOS-UPGRADE_QOS_UPGRADE_SUPPORTED', 1).
-define('DIAMETER_GX_RAT-TYPE_WLAN', 0).
-define('DIAMETER_GX_RAT-TYPE_VIRTUAL', 1).
-define('DIAMETER_GX_RAT-TYPE_UTRAN', 1000).
-define('DIAMETER_GX_RAT-TYPE_GERAN', 1001).
-define('DIAMETER_GX_RAT-TYPE_GAN', 1002).
-define('DIAMETER_GX_RAT-TYPE_HSPA_EVOLUTION', 1003).
-define('DIAMETER_GX_RAT-TYPE_EUTRAN', 1004).
-define('DIAMETER_GX_RAT-TYPE_CDMA2000_1X', 2000).
-define('DIAMETER_GX_RAT-TYPE_HRPD', 2001).
-define('DIAMETER_GX_RAT-TYPE_UMB', 2002).
-define('DIAMETER_GX_RAT-TYPE_EHRPD', 2003).
-define('DIAMETER_GX_REDIRECT-SUPPORT_REDIRECTION_DISABLED', 0).
-define('DIAMETER_GX_REDIRECT-SUPPORT_REDIRECTION_ENABLED', 1).
-define('DIAMETER_GX_REPORTING-LEVEL_SERVICE_IDENTIFIER_LEVEL', 0).
-define('DIAMETER_GX_REPORTING-LEVEL_RATING_GROUP_LEVEL', 1).
-define('DIAMETER_GX_REPORTING-LEVEL_SPONSORED_CONNECTIVITY_LEVEL', 2).
-define('DIAMETER_GX_RESOURCE-ALLOCATION-NOTIFICATION_ENABLE_NOTIFICATION', 0).
-define('DIAMETER_GX_RULE-FAILURE-CODE_UNKNOWN_RULE_NAME', 1).
-define('DIAMETER_GX_RULE-FAILURE-CODE_RATING_GROUP_ERROR', 2).
-define('DIAMETER_GX_RULE-FAILURE-CODE_SERVICE_IDENTIFIER_ERROR', 3).
-define('DIAMETER_GX_RULE-FAILURE-CODE_GW_PCEF_MALFUNCTION', 4).
-define('DIAMETER_GX_RULE-FAILURE-CODE_RESOURCES_LIMITATION', 5).
-define('DIAMETER_GX_RULE-FAILURE-CODE_MAX_NR_BEARERS_REACHED', 6).
-define('DIAMETER_GX_RULE-FAILURE-CODE_UNKNOWN_BEARER_ID', 7).
-define('DIAMETER_GX_RULE-FAILURE-CODE_MISSING_BEARER_ID', 8).
-define('DIAMETER_GX_RULE-FAILURE-CODE_MISSING_FLOW_INFORMATION', 9).
-define('DIAMETER_GX_RULE-FAILURE-CODE_RESOURCE_ALLOCATION_FAILURE', 10).
-define('DIAMETER_GX_RULE-FAILURE-CODE_UNSUCCESSFUL_QOS_VALIDATION', 11).
-define('DIAMETER_GX_RULE-FAILURE-CODE_INCORRECT_FLOW_INFORMATION', 12).
-define('DIAMETER_GX_RULE-FAILURE-CODE_PS_TO_CS_HANDOVER', 13).
-define('DIAMETER_GX_RULE-FAILURE-CODE_TDF_APPLICATION_IDENTIFIER_ERROR', 14).
-define('DIAMETER_GX_RULE-FAILURE-CODE_NO_BEARER_BOUND', 15).
-define('DIAMETER_GX_RULE-FAILURE-CODE_FILTER_RESTRICTIONS', 16).
-define('DIAMETER_GX_RULE-FAILURE-CODE_AN_GW_FAILED', 17).
-define('DIAMETER_GX_RULE-FAILURE-CODE_MISSING_REDIRECT_SERVER_ADDRESS', 18).
-define('DIAMETER_GX_RULE-FAILURE-CODE_CM_END_USER_SERVICE_DENIED', 19).
-define('DIAMETER_GX_RULE-FAILURE-CODE_CM_CREDIT_CONTROL_NOT_APPLICABLE', 20).
-define('DIAMETER_GX_RULE-FAILURE-CODE_CM_AUTHORIZATION_REJECTED', 21).
-define('DIAMETER_GX_RULE-FAILURE-CODE_CM_USER_UNKNOWN', 22).
-define('DIAMETER_GX_RULE-FAILURE-CODE_CM_RATING_FAILED', 23).
-define('DIAMETER_GX_SESSION-RELEASE-CAUSE_UNSPECIFIED_REASON', 0).
-define('DIAMETER_GX_SESSION-RELEASE-CAUSE_UE_SUBSCRIPTION_REASON', 1).
-define('DIAMETER_GX_SESSION-RELEASE-CAUSE_INSUFFICIENT_SERVER_RESOURCES', 2).
-define('DIAMETER_GX_SESSION-RELEASE-CAUSE_IP_CAN_SESSION_TERMINATION', 3).
-define('DIAMETER_GX_SESSION-RELEASE-CAUSE_UE_IP_ADDRESS_RELEASE', 4).
-define('DIAMETER_GX_USAGE-MONITORING-LEVEL_SESSION_LEVEL', 0).
-define('DIAMETER_GX_USAGE-MONITORING-LEVEL_PCC_RULE_LEVEL', 1).
-define('DIAMETER_GX_USAGE-MONITORING-LEVEL_ADC_RULE_LEVEL', 2).
-define('DIAMETER_GX_USAGE-MONITORING-REPORT_USAGE_MONITORING_REPORT_REQUIRED', 0).
-define('DIAMETER_GX_USAGE-MONITORING-SUPPORT_USAGE_MONITORING_DISABLED', 0).



%%% -------------------------------------------------------
%%% DEFINE Macros:
%%% -------------------------------------------------------

-define('DIAMETER_GX_PRESENCE-REPORTING-AREA-STATUS_IN_AREA', 0).
-define('DIAMETER_GX_PRESENCE-REPORTING-AREA-STATUS_OUT_OF_AREA', 1).
-define('DIAMETER_GX_NETLOC-ACCESS-SUPPORT_NETLOC_ACCESS_NOT_SUPPORTED', 0).
-define('DIAMETER_GX_PCSCF-RESTORATION-INDICATION_PCSCF_RESTORATION', 0).



%%% -------------------------------------------------------
%%% ENUM Macros from diameter_gen_base_rfc6733:
%%% -------------------------------------------------------

-ifndef('DIAMETER_GX_DISCONNECT-CAUSE_REBOOTING').
-define('DIAMETER_GX_DISCONNECT-CAUSE_REBOOTING', 0).
-endif.
-ifndef('DIAMETER_GX_DISCONNECT-CAUSE_BUSY').
-define('DIAMETER_GX_DISCONNECT-CAUSE_BUSY', 1).
-endif.
-ifndef('DIAMETER_GX_DISCONNECT-CAUSE_DO_NOT_WANT_TO_TALK_TO_YOU').
-define('DIAMETER_GX_DISCONNECT-CAUSE_DO_NOT_WANT_TO_TALK_TO_YOU', 2).
-endif.
-ifndef('DIAMETER_GX_REDIRECT-HOST-USAGE_DONT_CACHE').
-define('DIAMETER_GX_REDIRECT-HOST-USAGE_DONT_CACHE', 0).
-endif.
-ifndef('DIAMETER_GX_REDIRECT-HOST-USAGE_ALL_SESSION').
-define('DIAMETER_GX_REDIRECT-HOST-USAGE_ALL_SESSION', 1).
-endif.
-ifndef('DIAMETER_GX_REDIRECT-HOST-USAGE_ALL_REALM').
-define('DIAMETER_GX_REDIRECT-HOST-USAGE_ALL_REALM', 2).
-endif.
-ifndef('DIAMETER_GX_REDIRECT-HOST-USAGE_REALM_AND_APPLICATION').
-define('DIAMETER_GX_REDIRECT-HOST-USAGE_REALM_AND_APPLICATION', 3).
-endif.
-ifndef('DIAMETER_GX_REDIRECT-HOST-USAGE_ALL_APPLICATION').
-define('DIAMETER_GX_REDIRECT-HOST-USAGE_ALL_APPLICATION', 4).
-endif.
-ifndef('DIAMETER_GX_REDIRECT-HOST-USAGE_ALL_HOST').
-define('DIAMETER_GX_REDIRECT-HOST-USAGE_ALL_HOST', 5).
-endif.
-ifndef('DIAMETER_GX_REDIRECT-HOST-USAGE_ALL_USER').
-define('DIAMETER_GX_REDIRECT-HOST-USAGE_ALL_USER', 6).
-endif.
-ifndef('DIAMETER_GX_AUTH-REQUEST-TYPE_AUTHENTICATE_ONLY').
-define('DIAMETER_GX_AUTH-REQUEST-TYPE_AUTHENTICATE_ONLY', 1).
-endif.
-ifndef('DIAMETER_GX_AUTH-REQUEST-TYPE_AUTHORIZE_ONLY').
-define('DIAMETER_GX_AUTH-REQUEST-TYPE_AUTHORIZE_ONLY', 2).
-endif.
-ifndef('DIAMETER_GX_AUTH-REQUEST-TYPE_AUTHORIZE_AUTHENTICATE').
-define('DIAMETER_GX_AUTH-REQUEST-TYPE_AUTHORIZE_AUTHENTICATE', 3).
-endif.
-ifndef('DIAMETER_GX_AUTH-SESSION-STATE_STATE_MAINTAINED').
-define('DIAMETER_GX_AUTH-SESSION-STATE_STATE_MAINTAINED', 0).
-endif.
-ifndef('DIAMETER_GX_AUTH-SESSION-STATE_NO_STATE_MAINTAINED').
-define('DIAMETER_GX_AUTH-SESSION-STATE_NO_STATE_MAINTAINED', 1).
-endif.
-ifndef('DIAMETER_GX_RE-AUTH-REQUEST-TYPE_AUTHORIZE_ONLY').
-define('DIAMETER_GX_RE-AUTH-REQUEST-TYPE_AUTHORIZE_ONLY', 0).
-endif.
-ifndef('DIAMETER_GX_RE-AUTH-REQUEST-TYPE_AUTHORIZE_AUTHENTICATE').
-define('DIAMETER_GX_RE-AUTH-REQUEST-TYPE_AUTHORIZE_AUTHENTICATE', 1).
-endif.
-ifndef('DIAMETER_GX_TERMINATION-CAUSE_LOGOUT').
-define('DIAMETER_GX_TERMINATION-CAUSE_LOGOUT', 1).
-endif.
-ifndef('DIAMETER_GX_TERMINATION-CAUSE_SERVICE_NOT_PROVIDED').
-define('DIAMETER_GX_TERMINATION-CAUSE_SERVICE_NOT_PROVIDED', 2).
-endif.
-ifndef('DIAMETER_GX_TERMINATION-CAUSE_BAD_ANSWER').
-define('DIAMETER_GX_TERMINATION-CAUSE_BAD_ANSWER', 3).
-endif.
-ifndef('DIAMETER_GX_TERMINATION-CAUSE_ADMINISTRATIVE').
-define('DIAMETER_GX_TERMINATION-CAUSE_ADMINISTRATIVE', 4).
-endif.
-ifndef('DIAMETER_GX_TERMINATION-CAUSE_LINK_BROKEN').
-define('DIAMETER_GX_TERMINATION-CAUSE_LINK_BROKEN', 5).
-endif.
-ifndef('DIAMETER_GX_TERMINATION-CAUSE_AUTH_EXPIRED').
-define('DIAMETER_GX_TERMINATION-CAUSE_AUTH_EXPIRED', 6).
-endif.
-ifndef('DIAMETER_GX_TERMINATION-CAUSE_USER_MOVED').
-define('DIAMETER_GX_TERMINATION-CAUSE_USER_MOVED', 7).
-endif.
-ifndef('DIAMETER_GX_TERMINATION-CAUSE_SESSION_TIMEOUT').
-define('DIAMETER_GX_TERMINATION-CAUSE_SESSION_TIMEOUT', 8).
-endif.
-ifndef('DIAMETER_GX_SESSION-SERVER-FAILOVER_REFUSE_SERVICE').
-define('DIAMETER_GX_SESSION-SERVER-FAILOVER_REFUSE_SERVICE', 0).
-endif.
-ifndef('DIAMETER_GX_SESSION-SERVER-FAILOVER_TRY_AGAIN').
-define('DIAMETER_GX_SESSION-SERVER-FAILOVER_TRY_AGAIN', 1).
-endif.
-ifndef('DIAMETER_GX_SESSION-SERVER-FAILOVER_ALLOW_SERVICE').
-define('DIAMETER_GX_SESSION-SERVER-FAILOVER_ALLOW_SERVICE', 2).
-endif.
-ifndef('DIAMETER_GX_SESSION-SERVER-FAILOVER_TRY_AGAIN_ALLOW_SERVICE').
-define('DIAMETER_GX_SESSION-SERVER-FAILOVER_TRY_AGAIN_ALLOW_SERVICE', 3).
-endif.
-ifndef('DIAMETER_GX_ACCOUNTING-RECORD-TYPE_EVENT_RECORD').
-define('DIAMETER_GX_ACCOUNTING-RECORD-TYPE_EVENT_RECORD', 1).
-endif.
-ifndef('DIAMETER_GX_ACCOUNTING-RECORD-TYPE_START_RECORD').
-define('DIAMETER_GX_ACCOUNTING-RECORD-TYPE_START_RECORD', 2).
-endif.
-ifndef('DIAMETER_GX_ACCOUNTING-RECORD-TYPE_INTERIM_RECORD').
-define('DIAMETER_GX_ACCOUNTING-RECORD-TYPE_INTERIM_RECORD', 3).
-endif.
-ifndef('DIAMETER_GX_ACCOUNTING-RECORD-TYPE_STOP_RECORD').
-define('DIAMETER_GX_ACCOUNTING-RECORD-TYPE_STOP_RECORD', 4).
-endif.
-ifndef('DIAMETER_GX_ACCOUNTING-REALTIME-REQUIRED_DELIVER_AND_GRANT').
-define('DIAMETER_GX_ACCOUNTING-REALTIME-REQUIRED_DELIVER_AND_GRANT', 1).
-endif.
-ifndef('DIAMETER_GX_ACCOUNTING-REALTIME-REQUIRED_GRANT_AND_STORE').
-define('DIAMETER_GX_ACCOUNTING-REALTIME-REQUIRED_GRANT_AND_STORE', 2).
-endif.
-ifndef('DIAMETER_GX_ACCOUNTING-REALTIME-REQUIRED_GRANT_AND_LOSE').
-define('DIAMETER_GX_ACCOUNTING-REALTIME-REQUIRED_GRANT_AND_LOSE', 3).
-endif.



%%% -------------------------------------------------------
%%% ENUM Macros from diameter_rfc4006_cc:
%%% -------------------------------------------------------

-ifndef('DIAMETER_GX_CC-REQUEST-TYPE_INITIAL_REQUEST').
-define('DIAMETER_GX_CC-REQUEST-TYPE_INITIAL_REQUEST', 1).
-endif.
-ifndef('DIAMETER_GX_CC-REQUEST-TYPE_UPDATE_REQUEST').
-define('DIAMETER_GX_CC-REQUEST-TYPE_UPDATE_REQUEST', 2).
-endif.
-ifndef('DIAMETER_GX_CC-REQUEST-TYPE_TERMINATION_REQUEST').
-define('DIAMETER_GX_CC-REQUEST-TYPE_TERMINATION_REQUEST', 3).
-endif.
-ifndef('DIAMETER_GX_CC-REQUEST-TYPE_EVENT_REQUEST').
-define('DIAMETER_GX_CC-REQUEST-TYPE_EVENT_REQUEST', 4).
-endif.
-ifndef('DIAMETER_GX_CC-SESSION-FAILOVER_NOT_SUPPORTED').
-define('DIAMETER_GX_CC-SESSION-FAILOVER_NOT_SUPPORTED', 0).
-endif.
-ifndef('DIAMETER_GX_CC-SESSION-FAILOVER_SUPPORTED').
-define('DIAMETER_GX_CC-SESSION-FAILOVER_SUPPORTED', 1).
-endif.
-ifndef('DIAMETER_GX_CHECK-BALANCE-RESULT_ENOUGH_CREDIT').
-define('DIAMETER_GX_CHECK-BALANCE-RESULT_ENOUGH_CREDIT', 0).
-endif.
-ifndef('DIAMETER_GX_CHECK-BALANCE-RESULT_NO_CREDIT').
-define('DIAMETER_GX_CHECK-BALANCE-RESULT_NO_CREDIT', 1).
-endif.
-ifndef('DIAMETER_GX_CREDIT-CONTROL_AUTHORIZATION').
-define('DIAMETER_GX_CREDIT-CONTROL_AUTHORIZATION', 0).
-endif.
-ifndef('DIAMETER_GX_CREDIT-CONTROL_RE_AUTHORIZATION').
-define('DIAMETER_GX_CREDIT-CONTROL_RE_AUTHORIZATION', 1).
-endif.
-ifndef('DIAMETER_GX_CREDIT-CONTROL-FAILURE-HANDLING_TERMINATE').
-define('DIAMETER_GX_CREDIT-CONTROL-FAILURE-HANDLING_TERMINATE', 0).
-endif.
-ifndef('DIAMETER_GX_CREDIT-CONTROL-FAILURE-HANDLING_CONTINUE').
-define('DIAMETER_GX_CREDIT-CONTROL-FAILURE-HANDLING_CONTINUE', 1).
-endif.
-ifndef('DIAMETER_GX_CREDIT-CONTROL-FAILURE-HANDLING_RETRY_AND_TERMINATE').
-define('DIAMETER_GX_CREDIT-CONTROL-FAILURE-HANDLING_RETRY_AND_TERMINATE', 2).
-endif.
-ifndef('DIAMETER_GX_DIRECT-DEBITING-FAILURE-HANDLING_TERMINATE_OR_BUFFER').
-define('DIAMETER_GX_DIRECT-DEBITING-FAILURE-HANDLING_TERMINATE_OR_BUFFER', 0).
-endif.
-ifndef('DIAMETER_GX_DIRECT-DEBITING-FAILURE-HANDLING_CONTINUE').
-define('DIAMETER_GX_DIRECT-DEBITING-FAILURE-HANDLING_CONTINUE', 1).
-endif.
-ifndef('DIAMETER_GX_TARIFF-CHANGE-USAGE_UNIT_BEFORE_TARIFF_CHANGE').
-define('DIAMETER_GX_TARIFF-CHANGE-USAGE_UNIT_BEFORE_TARIFF_CHANGE', 0).
-endif.
-ifndef('DIAMETER_GX_TARIFF-CHANGE-USAGE_UNIT_AFTER_TARIFF_CHANGE').
-define('DIAMETER_GX_TARIFF-CHANGE-USAGE_UNIT_AFTER_TARIFF_CHANGE', 1).
-endif.
-ifndef('DIAMETER_GX_TARIFF-CHANGE-USAGE_UNIT_INDETERMINATE').
-define('DIAMETER_GX_TARIFF-CHANGE-USAGE_UNIT_INDETERMINATE', 2).
-endif.
-ifndef('DIAMETER_GX_CC-UNIT-TYPE_TIME').
-define('DIAMETER_GX_CC-UNIT-TYPE_TIME', 0).
-endif.
-ifndef('DIAMETER_GX_CC-UNIT-TYPE_MONEY').
-define('DIAMETER_GX_CC-UNIT-TYPE_MONEY', 1).
-endif.
-ifndef('DIAMETER_GX_CC-UNIT-TYPE_TOTAL-OCTETS').
-define('DIAMETER_GX_CC-UNIT-TYPE_TOTAL-OCTETS', 2).
-endif.
-ifndef('DIAMETER_GX_CC-UNIT-TYPE_INPUT-OCTETS').
-define('DIAMETER_GX_CC-UNIT-TYPE_INPUT-OCTETS', 3).
-endif.
-ifndef('DIAMETER_GX_CC-UNIT-TYPE_OUTPUT-OCTETS').
-define('DIAMETER_GX_CC-UNIT-TYPE_OUTPUT-OCTETS', 4).
-endif.
-ifndef('DIAMETER_GX_CC-UNIT-TYPE_SERVICE-SPECIFIC-UNITS').
-define('DIAMETER_GX_CC-UNIT-TYPE_SERVICE-SPECIFIC-UNITS', 5).
-endif.
-ifndef('DIAMETER_GX_FINAL-UNIT-ACTION_TERMINATE').
-define('DIAMETER_GX_FINAL-UNIT-ACTION_TERMINATE', 0).
-endif.
-ifndef('DIAMETER_GX_FINAL-UNIT-ACTION_REDIRECT').
-define('DIAMETER_GX_FINAL-UNIT-ACTION_REDIRECT', 1).
-endif.
-ifndef('DIAMETER_GX_FINAL-UNIT-ACTION_RESTRICT_ACCESS').
-define('DIAMETER_GX_FINAL-UNIT-ACTION_RESTRICT_ACCESS', 2).
-endif.
-ifndef('DIAMETER_GX_REDIRECT-ADDRESS-TYPE_IPV4').
-define('DIAMETER_GX_REDIRECT-ADDRESS-TYPE_IPV4', 0).
-endif.
-ifndef('DIAMETER_GX_REDIRECT-ADDRESS-TYPE_IPV6').
-define('DIAMETER_GX_REDIRECT-ADDRESS-TYPE_IPV6', 1).
-endif.
-ifndef('DIAMETER_GX_REDIRECT-ADDRESS-TYPE_URL').
-define('DIAMETER_GX_REDIRECT-ADDRESS-TYPE_URL', 2).
-endif.
-ifndef('DIAMETER_GX_REDIRECT-ADDRESS-TYPE_SIP_URI').
-define('DIAMETER_GX_REDIRECT-ADDRESS-TYPE_SIP_URI', 3).
-endif.
-ifndef('DIAMETER_GX_MULTIPLE-SERVICES-INDICATOR_NOT_SUPPORTED').
-define('DIAMETER_GX_MULTIPLE-SERVICES-INDICATOR_NOT_SUPPORTED', 0).
-endif.
-ifndef('DIAMETER_GX_MULTIPLE-SERVICES-INDICATOR_SUPPORTED').
-define('DIAMETER_GX_MULTIPLE-SERVICES-INDICATOR_SUPPORTED', 1).
-endif.
-ifndef('DIAMETER_GX_REQUESTED-ACTION_DIRECT_DEBITING').
-define('DIAMETER_GX_REQUESTED-ACTION_DIRECT_DEBITING', 0).
-endif.
-ifndef('DIAMETER_GX_REQUESTED-ACTION_REFUND_ACCOUNT').
-define('DIAMETER_GX_REQUESTED-ACTION_REFUND_ACCOUNT', 1).
-endif.
-ifndef('DIAMETER_GX_REQUESTED-ACTION_CHECK_BALANCE').
-define('DIAMETER_GX_REQUESTED-ACTION_CHECK_BALANCE', 2).
-endif.
-ifndef('DIAMETER_GX_REQUESTED-ACTION_PRICE_ENQUIRY').
-define('DIAMETER_GX_REQUESTED-ACTION_PRICE_ENQUIRY', 3).
-endif.
-ifndef('DIAMETER_GX_SUBSCRIPTION-ID-TYPE_END_USER_E164').
-define('DIAMETER_GX_SUBSCRIPTION-ID-TYPE_END_USER_E164', 0).
-endif.
-ifndef('DIAMETER_GX_SUBSCRIPTION-ID-TYPE_END_USER_IMSI').
-define('DIAMETER_GX_SUBSCRIPTION-ID-TYPE_END_USER_IMSI', 1).
-endif.
-ifndef('DIAMETER_GX_SUBSCRIPTION-ID-TYPE_END_USER_SIP_URI').
-define('DIAMETER_GX_SUBSCRIPTION-ID-TYPE_END_USER_SIP_URI', 2).
-endif.
-ifndef('DIAMETER_GX_SUBSCRIPTION-ID-TYPE_END_USER_NAI').
-define('DIAMETER_GX_SUBSCRIPTION-ID-TYPE_END_USER_NAI', 3).
-endif.
-ifndef('DIAMETER_GX_SUBSCRIPTION-ID-TYPE_END_USER_PRIVATE').
-define('DIAMETER_GX_SUBSCRIPTION-ID-TYPE_END_USER_PRIVATE', 4).
-endif.
-ifndef('DIAMETER_GX_USER-EQUIPMENT-INFO-TYPE_IMEISV').
-define('DIAMETER_GX_USER-EQUIPMENT-INFO-TYPE_IMEISV', 0).
-endif.
-ifndef('DIAMETER_GX_USER-EQUIPMENT-INFO-TYPE_MAC').
-define('DIAMETER_GX_USER-EQUIPMENT-INFO-TYPE_MAC', 1).
-endif.
-ifndef('DIAMETER_GX_USER-EQUIPMENT-INFO-TYPE_EUI64').
-define('DIAMETER_GX_USER-EQUIPMENT-INFO-TYPE_EUI64', 2).
-endif.
-ifndef('DIAMETER_GX_USER-EQUIPMENT-INFO-TYPE_MODIFIED_EUI64').
-define('DIAMETER_GX_USER-EQUIPMENT-INFO-TYPE_MODIFIED_EUI64', 3).
-endif.



%%% -------------------------------------------------------
%%% ENUM Macros from diameter_3gpp_base:
%%% -------------------------------------------------------

-ifndef('DIAMETER_GX_3GPP-PDP-TYPE_IPV4').
-define('DIAMETER_GX_3GPP-PDP-TYPE_IPV4', 0).
-endif.
-ifndef('DIAMETER_GX_3GPP-PDP-TYPE_PPP').
-define('DIAMETER_GX_3GPP-PDP-TYPE_PPP', 1).
-endif.
-ifndef('DIAMETER_GX_3GPP-PDP-TYPE_IPV6').
-define('DIAMETER_GX_3GPP-PDP-TYPE_IPV6', 2).
-endif.
-ifndef('DIAMETER_GX_3GPP-PDP-TYPE_IPV4V6').
-define('DIAMETER_GX_3GPP-PDP-TYPE_IPV4V6', 3).
-endif.
-ifndef('DIAMETER_GX_3GPP-PDP-TYPE_NON-IP').
-define('DIAMETER_GX_3GPP-PDP-TYPE_NON-IP', 4).
-endif.



%%% -------------------------------------------------------
%%% ENUM Macros from diameter_3gpp_ts29_229:
%%% -------------------------------------------------------

-ifndef('DIAMETER_GX_SERVER-ASSIGNMENT-TYPE_NO_ASSIGNMENT').
-define('DIAMETER_GX_SERVER-ASSIGNMENT-TYPE_NO_ASSIGNMENT', 0).
-endif.
-ifndef('DIAMETER_GX_SERVER-ASSIGNMENT-TYPE_REGISTRATION').
-define('DIAMETER_GX_SERVER-ASSIGNMENT-TYPE_REGISTRATION', 1).
-endif.
-ifndef('DIAMETER_GX_SERVER-ASSIGNMENT-TYPE_RE_REGISTRATION').
-define('DIAMETER_GX_SERVER-ASSIGNMENT-TYPE_RE_REGISTRATION', 2).
-endif.
-ifndef('DIAMETER_GX_SERVER-ASSIGNMENT-TYPE_UNREGISTERED_USER').
-define('DIAMETER_GX_SERVER-ASSIGNMENT-TYPE_UNREGISTERED_USER', 3).
-endif.
-ifndef('DIAMETER_GX_SERVER-ASSIGNMENT-TYPE_TIMEOUT_DEREGISTRATION').
-define('DIAMETER_GX_SERVER-ASSIGNMENT-TYPE_TIMEOUT_DEREGISTRATION', 4).
-endif.
-ifndef('DIAMETER_GX_SERVER-ASSIGNMENT-TYPE_USER_DEREGISTRATION').
-define('DIAMETER_GX_SERVER-ASSIGNMENT-TYPE_USER_DEREGISTRATION', 5).
-endif.
-ifndef('DIAMETER_GX_SERVER-ASSIGNMENT-TYPE_TIMEOUT_DEREGISTRATION_STORE_SERVER_NAME').
-define('DIAMETER_GX_SERVER-ASSIGNMENT-TYPE_TIMEOUT_DEREGISTRATION_STORE_SERVER_NAME', 6).
-endif.
-ifndef('DIAMETER_GX_SERVER-ASSIGNMENT-TYPE_USER_DEREGISTRATION_STORE_SERVER_NAME').
-define('DIAMETER_GX_SERVER-ASSIGNMENT-TYPE_USER_DEREGISTRATION_STORE_SERVER_NAME', 7).
-endif.
-ifndef('DIAMETER_GX_SERVER-ASSIGNMENT-TYPE_ADMINISTRATIVE_DEREGISTRATION').
-define('DIAMETER_GX_SERVER-ASSIGNMENT-TYPE_ADMINISTRATIVE_DEREGISTRATION', 8).
-endif.
-ifndef('DIAMETER_GX_SERVER-ASSIGNMENT-TYPE_AUTHENTICATION_FAILURE').
-define('DIAMETER_GX_SERVER-ASSIGNMENT-TYPE_AUTHENTICATION_FAILURE', 9).
-endif.
-ifndef('DIAMETER_GX_SERVER-ASSIGNMENT-TYPE_AUTHENTICATION_TIMEOUT').
-define('DIAMETER_GX_SERVER-ASSIGNMENT-TYPE_AUTHENTICATION_TIMEOUT', 10).
-endif.
-ifndef('DIAMETER_GX_SERVER-ASSIGNMENT-TYPE_DEREGISTRATION_TOO_MUCH_DATA').
-define('DIAMETER_GX_SERVER-ASSIGNMENT-TYPE_DEREGISTRATION_TOO_MUCH_DATA', 11).
-endif.
-ifndef('DIAMETER_GX_SERVER-ASSIGNMENT-TYPE_AAA_USER_DATA_REQUEST').
-define('DIAMETER_GX_SERVER-ASSIGNMENT-TYPE_AAA_USER_DATA_REQUEST', 12).
-endif.
-ifndef('DIAMETER_GX_SERVER-ASSIGNMENT-TYPE_PGW_UPDATE').
-define('DIAMETER_GX_SERVER-ASSIGNMENT-TYPE_PGW_UPDATE', 13).
-endif.
-ifndef('DIAMETER_GX_SERVER-ASSIGNMENT-TYPE_RESTORATION').
-define('DIAMETER_GX_SERVER-ASSIGNMENT-TYPE_RESTORATION', 14).
-endif.
-ifndef('DIAMETER_GX_REASON-CODE_PERMANENT_TERMINATION').
-define('DIAMETER_GX_REASON-CODE_PERMANENT_TERMINATION', 0).
-endif.
-ifndef('DIAMETER_GX_REASON-CODE_NEW_SERVER_ASSIGNED').
-define('DIAMETER_GX_REASON-CODE_NEW_SERVER_ASSIGNED', 1).
-endif.
-ifndef('DIAMETER_GX_REASON-CODE_SERVER_CHANGE').
-define('DIAMETER_GX_REASON-CODE_SERVER_CHANGE', 2).
-endif.
-ifndef('DIAMETER_GX_REASON-CODE_REMOVE_S-CSCF').
-define('DIAMETER_GX_REASON-CODE_REMOVE_S-CSCF', 3).
-endif.

