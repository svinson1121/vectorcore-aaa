%% -------------------------------------------------------------------
%% This is a generated file.
%% -------------------------------------------------------------------

-hrl_name('diameter_3gpp_ts29_273_swx.hrl').


%%% -------------------------------------------------------
%%% Message records:
%%% -------------------------------------------------------

-record('MAR',
        {'Session-Id',
         'Auth-Session-State',
         'Origin-Host',
         'Origin-Realm',
         'Destination-Realm',
         'User-Name',
         'Vendor-Specific-Application-Id',
         'SIP-Auth-Data-Item',
         'SIP-Number-Auth-Items',
         'Destination-Host' = [],
         'RAT-Type' = [],
         'DRMP' = [],
         'ANID' = [],
         'Visited-Network-Identifier' = [],
         'Terminal-Information' = [],
         'AAA-Failure-Indication' = [],
         'OC-Supported-Features' = [],
         'Supported-Features' = [],
         'AVP' = []}).

-record('MAA',
        {'Session-Id',
         'Auth-Session-State',
         'Origin-Host',
         'Origin-Realm',
         'Vendor-Specific-Application-Id',
         'User-Name',
         'DRMP' = [],
         'Result-Code' = [],
         'Experimental-Result' = [],
         'SIP-Number-Auth-Items' = [],
         'SIP-Auth-Data-Item' = [],
         '3GPP-AAA-Server-Name' = [],
         'OC-Supported-Features' = [],
         'OC-OLR' = [],
         'Load' = [],
         'Supported-Features' = [],
         'AVP' = []}).

-record('PPR',
        {'Session-Id',
         'Auth-Session-State',
         'Origin-Host',
         'Origin-Realm',
         'Destination-Host',
         'Destination-Realm',
         'Vendor-Specific-Application-Id',
         'User-Name',
         'DRMP' = [],
         'Non-3GPP-User-Data' = [],
         'PPR-Flags' = [],
         'Supported-Features' = [],
         'AVP' = []}).

-record('PPA',
        {'Session-Id',
         'Auth-Session-State',
         'Origin-Host',
         'Origin-Realm',
         'Vendor-Specific-Application-Id',
         'DRMP' = [],
         'Result-Code' = [],
         'Experimental-Result' = [],
         'Access-Network-Info' = [],
         'Local-Time-Zone' = [],
         'Supported-Features' = [],
         'AVP' = []}).

-record('SAR',
        {'Session-Id',
         'Vendor-Specific-Application-Id',
         'Auth-Session-State',
         'Origin-Host',
         'Origin-Realm',
         'Destination-Realm',
         'User-Name',
         'Server-Assignment-Type',
         'DRMP' = [],
         'Destination-Host' = [],
         'Service-Selection' = [],
         'Context-Identifier' = [],
         'MIP6-Agent-Info' = [],
         'Visited-Network-Identifier' = [],
         'Active-APN' = [],
         'OC-Supported-Features' = [],
         'Supported-Features' = [],
         'Terminal-Information' = [],
         'Emergency-Services' = [],
         'AVP' = []}).

-record('SAA',
        {'Session-Id',
         'Vendor-Specific-Application-Id',
         'Auth-Session-State',
         'Origin-Host',
         'Origin-Realm',
         'User-Name',
         'DRMP' = [],
         'Result-Code' = [],
         'Experimental-Result' = [],
         'Non-3GPP-User-Data' = [],
         '3GPP-AAA-Server-Name' = [],
         'OC-Supported-Features' = [],
         'OC-OLR' = [],
         'Load' = [],
         'Supported-Features' = [],
         'AVP' = []}).

-record('RTR',
        {'Session-Id',
         'Vendor-Specific-Application-Id',
         'Auth-Session-State',
         'Origin-Host',
         'Origin-Realm',
         'Destination-Host',
         'Destination-Realm',
         'User-Name',
         'Deregistration-Reason',
         'DRMP' = [],
         'Supported-Features' = [],
         'AVP' = []}).

-record('RTA',
        {'Session-Id',
         'Vendor-Specific-Application-Id',
         'Auth-Session-State',
         'Origin-Host',
         'Origin-Realm',
         'DRMP' = [],
         'Result-Code' = [],
         'Experimental-Result' = [],
         'Supported-Features' = [],
         'AVP' = []}).


%%% -------------------------------------------------------
%%% Grouped AVP records from diameter_gen_base_rfc6733:
%%% -------------------------------------------------------

-record('Proxy-Info',
        {'Proxy-Host', 'Proxy-State', 'AVP' = []}).

-record('Failed-AVP', {'AVP' = []}).

-record('Experimental-Result',
        {'Vendor-Id', 'Experimental-Result-Code'}).

-record('Vendor-Specific-Application-Id',
        {'Vendor-Id',
         'Auth-Application-Id' = [],
         'Acct-Application-Id' = []}).


%%% -------------------------------------------------------
%%% Grouped AVP records from diameter_3gpp_break_circles:
%%% -------------------------------------------------------

-record('Emergency-Info',
        {'MIP6-Agent-Info' = [], 'AVP' = []}).


%%% -------------------------------------------------------
%%% Grouped AVP records from diameter_3gpp_ts29_212:
%%% -------------------------------------------------------

-record('Access-Network-Charging-Identifier-Gx',
        {'Access-Network-Charging-Identifier-Value',
         'Charging-Rule-Base-Name' = [],
         'Charging-Rule-Name' = [],
         'IP-CAN-Session-Charging-Scope' = [],
         'AVP' = []}).

-record('Allocation-Retention-Priority',
        {'Priority-Level',
         'Pre-emption-Capability' = [],
         'Pre-emption-Vulnerability' = []}).

-record('Application-Detection-Information',
        {'TDF-Application-Identifier',
         'TDF-Application-Instance-Identifier' = [],
         'Flow-Information' = [],
         'AVP' = []}).

-record('Charging-Rule-Definition',
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

-record('Charging-Rule-Install',
        {'Charging-Rule-Definition' = [],
         'Charging-Rule-Name' = [],
         'Charging-Rule-Base-Name' = [],
         'Bearer-Identifier' = [],
         'Rule-Activation-Time' = [],
         'Rule-Deactivation-Time' = [],
         'Resource-Allocation-Notification' = [],
         'Charging-Correlation-Indicator' = [],
         'AVP' = []}).

-record('Charging-Rule-Remove',
        {'Charging-Rule-Name' = [],
         'Charging-Rule-Base-Name' = [],
         'Required-Access-Info' = [],
         'AVP' = []}).

-record('Charging-Rule-Report',
        {'Charging-Rule-Name' = [],
         'Charging-Rule-Base-Name' = [],
         'Bearer-Identifier' = [],
         'PCC-Rule-Status' = [],
         'Rule-Failure-Code' = [],
         'Final-Unit-Indication' = [],
         'RAN-NAS-Release-Cause' = [],
         'AVP' = []}).

-record('CoA-Information',
        {'Tunnel-Information', 'CoA-IP-Address', 'AVP' = []}).

-record('Conditional-APN-Aggregate-Max-Bitrate',
        {'APN-Aggregate-Max-Bitrate-UL' = [],
         'APN-Aggregate-Max-Bitrate-DL' = [],
         'IP-CAN-Type' = [],
         'RAT-Type' = [],
         'AVP' = []}).

-record('Default-EPS-Bearer-QoS',
        {'QoS-Class-Identifier' = [],
         'Allocation-Retention-Priority' = [],
         'AVP' = []}).

-record('Default-QoS-Information',
        {'QoS-Class-Identifier' = [],
         'Max-Requested-Bandwidth-UL' = [],
         'Max-Requested-Bandwidth-DL' = [],
         'Default-QoS-Name' = [],
         'AVP' = []}).

-record('Event-Report-Indication',
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

-record('Fixed-User-Location-Info',
        {'Logical-Access-ID' = [],
         'Physical-Access-ID' = [],
         'AVP' = []}).

-record('Flow-Information',
        {'Flow-Description' = [],
         'Packet-Filter-Identifier' = [],
         'Packet-Filter-Usage' = [],
         'ToS-Traffic-Class' = [],
         'Security-Parameter-Index' = [],
         'Flow-Label' = [],
         'Flow-Direction' = [],
         'AVP' = []}).

-record('Packet-Filter-Information',
        {'Packet-Filter-Identifier' = [],
         'Precedence' = [],
         'Packet-Filter-Content' = [],
         'ToS-Traffic-Class' = [],
         'Security-Parameter-Index' = [],
         'Flow-Label' = [],
         'Flow-Direction' = [],
         'AVP' = []}).

-record('Presence-Reporting-Area-Information',
        {'Presence-Reporting-Area-Identifier' = [],
         'Presence-Reporting-Area-Status' = [],
         'Presence-Reporting-Area-Elements-List' = [],
         'AVP' = []}).

-record('QoS-Information',
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

-record('Redirect-Information',
        {'Redirect-Support' = [],
         'Redirect-Address-Type' = [],
         'Redirect-Server-Address' = [],
         'AVP' = []}).

-record('Routing-Filter',
        {'Flow-Description',
         'Flow-Direction',
         'ToS-Traffic-Class' = [],
         'Security-Parameter-Index' = [],
         'Flow-Label' = [],
         'AVP' = []}).

-record('Routing-Rule-Definition',
        {'Routing-Rule-Identifier',
         'Routing-Filter' = [],
         'Precedence' = [],
         'Routing-IP-Address' = [],
         'AVP' = []}).

-record('Routing-Rule-Install',
        {'Routing-Rule-Definition' = [], 'AVP' = []}).

-record('Routing-Rule-Remove',
        {'Routing-Rule-Identifier' = [], 'AVP' = []}).

-record('TDF-Information',
        {'TDF-Destination-Realm' = [],
         'TDF-Destination-Host' = [],
         'TDF-IP-Address' = []}).

-record('Tunnel-Information',
        {'Tunnel-Header-Length' = [],
         'Tunnel-Header-Filter' = [],
         'AVP' = []}).

-record('TFT-Packet-Filter-Information',
        {'Precedence' = [],
         'TFT-Filter' = [],
         'ToS-Traffic-Class' = [],
         'Security-Parameter-Index' = [],
         'Flow-Label' = [],
         'Flow-Direction' = [],
         'AVP' = []}).

-record('Usage-Monitoring-Information',
        {'Monitoring-Key' = [],
         'Granted-Service-Unit' = [],
         'Used-Service-Unit' = [],
         'Usage-Monitoring-Level' = [],
         'Usage-Monitoring-Report' = [],
         'Usage-Monitoring-Support' = [],
         'AVP' = []}).


%%% -------------------------------------------------------
%%% Grouped AVP records from diameter_3gpp_ts29_214:
%%% -------------------------------------------------------

-record('Flows',
        {'Media-Component-Number',
         'Flow-Number' = [],
         'Final-Unit-Action' = []}).


%%% -------------------------------------------------------
%%% Grouped AVP records from diameter_3gpp_ts29_229:
%%% -------------------------------------------------------

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


%%% -------------------------------------------------------
%%% Grouped AVP records from diameter_3gpp_ts29_272:
%%% -------------------------------------------------------

-record('Subscription-Data',
        {'Subscriber-Status' = [],
         'MSISDN' = [],
         'A-MSISDN' = [],
         'STN-SR' = [],
         'ICS-Indicator' = [],
         'Network-Access-Mode' = [],
         'Operator-Determined-Barring' = [],
         'HPLMN-ODB' = [],
         'Regional-Subscription-Zone-Code' = [],
         'Access-Restriction-Data' = [],
         'APN-OI-Replacement' = [],
         'LCS-Info' = [],
         'Teleservice-List' = [],
         'Call-Barring-Info' = [],
         '3GPP-Charging-Characteristics' = [],
         'AMBR' = [],
         'APN-Configuration-Profile' = [],
         'RAT-Frequency-Selection-Priority-ID' = [],
         'Trace-Data' = [],
         'GPRS-Subscription-Data' = [],
         'CSG-Subscription-Data' = [],
         'Roaming-Restricted-Due-To-Unsupported-Feature' = [],
         'Subscribed-Periodic-RAU-TAU-Timer' = [],
         'MPS-Priority' = [],
         'VPLMN-LIPA-Allowed' = [],
         'Relay-Node-Indicator' = [],
         'MDT-User-Consent' = [],
         'Subscribed-VSRVCC' = [],
         'Subscription-Data-Flags' = [],
         'AVP' = []}).

-record('Terminal-Information',
        {'IMEI' = [],
         '3GPP2-MEID' = [],
         'Software-Version' = [],
         'AVP' = []}).

-record('Requested-EUTRAN-Authentication-Info',
        {'Number-Of-Requested-Vectors' = [],
         'Immediate-Response-Preferred' = [],
         'Re-Synchronization-Info' = [],
         'AVP' = []}).

-record('Requested-UTRAN-GERAN-Authentication-Info',
        {'Number-Of-Requested-Vectors' = [],
         'Immediate-Response-Preferred' = [],
         'Re-Synchronization-Info' = [],
         'AVP' = []}).

-record('Authentication-Info',
        {'E-UTRAN-Vector' = [],
         'UTRAN-Vector' = [],
         'GERAN-Vector' = [],
         'AVP' = []}).

-record('E-UTRAN-Vector',
        {'Item-Number',
         'RAND',
         'XRES',
         'AUTN',
         'KASME',
         'AVP' = []}).

-record('UTRAN-Vector',
        {'Item-Number',
         'RAND',
         'XRES',
         'AUTN',
         'Confidentiality-Key',
         'Integrity-Key',
         'AVP' = []}).

-record('GERAN-Vector',
        {'Item-Number', 'RAND', 'SRES', 'Kc', 'AVP' = []}).

-record('APN-Configuration-Profile',
        {'Context-Identifier',
         'All-APN-Configurations-Included-Indicator',
         'APN-Configuration' = [],
         'AVP' = []}).

-record('APN-Configuration',
        {'Context-Identifier',
         'PDN-Type',
         'Service-Selection',
         'Served-Party-IP-Address' = [],
         'EPS-Subscribed-QoS-Profile' = [],
         'VPLMN-Dynamic-Address-Allowed' = [],
         'MIP6-Agent-Info' = [],
         'Visited-Network-Identifier' = [],
         'PDN-GW-Allocation-Type' = [],
         '3GPP-Charging-Characteristics' = [],
         'AMBR' = [],
         'Specific-APN-Info' = [],
         'APN-OI-Replacement' = [],
         'SIPTO-Permission' = [],
         'LIPA-Permission' = [],
         'Restoration-Priority' = [],
         'AVP' = []}).

-record('EPS-Subscribed-QoS-Profile',
        {'QoS-Class-Identifier',
         'Allocation-Retention-Priority',
         'AVP' = []}).

-record('AMBR',
        {'Max-Requested-Bandwidth-UL',
         'Max-Requested-Bandwidth-DL',
         'AVP' = []}).

-record('Trace-Data',
        {'Trace-Reference',
         'Trace-Depth',
         'Trace-NE-Type-List',
         'Trace-Event-List',
         'Trace-Collection-Entity',
         'Trace-Interface-List' = [],
         'OMC-Id' = [],
         'MDT-Configuration' = [],
         'AVP' = []}).

-record('GPRS-Subscription-Data',
        {'Complete-Data-List-Included-Indicator',
         'PDP-Context' = [],
         'AVP' = []}).

-record('PDP-Context',
        {'Context-Identifier',
         'PDP-Type',
         'QoS-Subscribed',
         'Service-Selection',
         'PDP-Address' = [],
         'VPLMN-Dynamic-Address-Allowed' = [],
         '3GPP-Charging-Characteristics' = [],
         'Ext-PDP-Type' = [],
         'Ext-PDP-Address' = [],
         'AMBR' = [],
         'APN-OI-Replacement' = [],
         'SIPTO-Permission' = [],
         'LIPA-Permission' = [],
         'Restoration-Priority' = [],
         'AVP' = []}).

-record('CSG-Subscription-Data',
        {'CSG-Id',
         'Expiration-Date' = [],
         'Service-Selection' = [],
         'Visited-PLMN-Id' = [],
         'AVP' = []}).

-record('Specific-APN-Info',
        {'Service-Selection',
         'MIP6-Agent-Info',
         'Visited-Network-Identifier' = [],
         'AVP' = []}).

-record('LCS-Info',
        {'GMLC-Number' = [],
         'LCS-PrivacyException' = [],
         'MO-LR' = [],
         'AVP' = []}).

-record('LCS-PrivacyException',
        {'SS-Code',
         'SS-Status',
         'Notification-To-UE-User' = [],
         'External-Client' = [],
         'PLMN-Client' = [],
         'Service-Type' = [],
         'AVP' = []}).

-record('External-Client',
        {'Client-Identity',
         'GMLC-Restriction' = [],
         'Notification-To-UE-User' = [],
         'AVP' = []}).

-record('Service-Type',
        {'ServiceTypeIdentity',
         'GMLC-Restriction' = [],
         'Notification-To-UE-User' = [],
         'AVP' = []}).

-record('MO-LR', {'SS-Code', 'SS-Status', 'AVP' = []}).

-record('Teleservice-List',
        {'TS-Code' = [], 'AVP' = []}).

-record('Call-Barring-Info',
        {'SS-Code', 'SS-Status', 'AVP' = []}).

-record('EPS-User-State',
        {'MME-User-State' = [],
         'SGSN-User-State' = [],
         'AVP' = []}).

-record('EPS-Location-Information',
        {'MME-Location-Information' = [],
         'SGSN-Location-Information' = [],
         'AVP' = []}).

-record('MME-User-State',
        {'User-State' = [], 'AVP' = []}).

-record('SGSN-User-State',
        {'User-State' = [], 'AVP' = []}).

-record('MME-Location-Information',
        {'E-UTRAN-Cell-Global-Identity' = [],
         'Tracking-Area-Identity' = [],
         'Geographical-Information' = [],
         'Geodetic-Information' = [],
         'Current-Location-Retrieved' = [],
         'Age-Of-Location-Information' = [],
         'User-CSG-Information' = [],
         'AVP' = []}).

-record('SGSN-Location-Information',
        {'Cell-Global-Identity' = [],
         'Location-Area-Identity' = [],
         'Service-Area-Identity' = [],
         'Routing-Area-Identity' = [],
         'Geographical-Information' = [],
         'Geodetic-Information' = [],
         'Current-Location-Retrieved' = [],
         'Age-Of-Location-Information' = [],
         'User-CSG-Information' = [],
         'AVP' = []}).

-record('Active-APN',
        {'Context-Identifier',
         'Service-Selection' = [],
         'MIP6-Agent-Info' = [],
         'Visited-Network-Identifier' = [],
         'Specific-APN-Info' = [],
         'AVP' = []}).

-record('MDT-Configuration',
        {'Job-Type',
         'Area-Scope' = [],
         'List-Of-Measurements' = [],
         'Reporting-Trigger' = [],
         'Report-Interval' = [],
         'Report-Amount' = [],
         'Event-Threshold-RSRP' = [],
         'Event-Threshold-RSRQ' = [],
         'Logging-Interval' = [],
         'Logging-Duration' = [],
         'Measurement-Period-LTE' = [],
         'Measurement-Period-UMTS' = [],
         'Positioning-Method' = [],
         'Measurement-Quantity' = [],
         'Event-Threshold-Event-1F' = [],
         'Event-Threshold-Event-1I' = [],
         'AVP' = []}).

-record('Area-Scope',
        {'Cell-Global-Identity' = [],
         'E-UTRAN-Cell-Global-Identity' = [],
         'Routing-Area-Identity' = [],
         'Location-Area-Identity' = [],
         'Tracking-Area-Identity' = [],
         'AVP' = []}).

-record('Equivalent-PLMN-List',
        {'Visited-PLMN-Id' = [], 'AVP' = []}).

-record('VPLMN-CSG-Subscription-Data',
        {'CSG-Id', 'Expiration-Date' = [], 'AVP' = []}).

-record('Local-Time-Zone',
        {'Time-Zone', 'Daylight-Saving-Time', 'AVP' = []}).


%%% -------------------------------------------------------
%%% Grouped AVP records from diameter_3gpp_ts29_273:
%%% -------------------------------------------------------

-record('WLAN-Identifier',
        {'SSID' = [], 'HESSID' = [], 'AVP' = []}).

-record('Access-Network-Info',
        {'SSID' = [],
         'BSSID' = [],
         'Location-Information' = [],
         'Location-Data' = [],
         'Operator-Name' = [],
         'Logical-Access-ID' = [],
         'AVP' = []}).

-record('TWAN-Connectivity-Parameters',
        {'Connectivity-Flags' = [],
         'Service-Selection' = [],
         'PDN-Type' = [],
         'Served-Party-IP-Address' = [],
         'TWAN-PCO' = [],
         'TWAG-UP-Address' = [],
         'TWAN-S2a-Failure-Cause' = [],
         'SM-Back-Off-Timer' = [],
         'AVP' = []}).

-record('Non-3GPP-User-Data',
        {'Subscription-Id' = [],
         'Non-3GPP-IP-Access' = [],
         'Non-3GPP-IP-Access-APN' = [],
         'RAT-Type' = [],
         'Session-Timeout' = [],
         'MIP6-Feature-Vector' = [],
         'AMBR' = [],
         '3GPP-Charging-Characteristics' = [],
         'Context-Identifier' = [],
         'APN-OI-Replacement' = [],
         'APN-Configuration' = [],
         'Trace-Info' = [],
         'TWAN-Default-APN-Context-Id' = [],
         'TWAN-Access-Info' = [],
         'UE-Usage-Type' = [],
         'Emergency-Info' = [],
         'ERP-Authorization' = [],
         'Core-Network-Restrictions' = [],
         'AVP' = []}).

-record('Trace-Info',
        {'Trace-Data' = [],
         'Trace-Reference' = [],
         'AVP' = []}).

-record('TWAN-Access-Info',
        {'Access-Authorization-Flags' = [],
         'WLAN-Identifier' = [],
         'AVP' = []}).


%%% -------------------------------------------------------
%%% Grouped AVP records from diameter_3gpp_ts32_299:
%%% -------------------------------------------------------

-record('Access-Network-Info-Change',
        {'Access-Network-Information' = [],
         'Cellular-Network-Information' = [],
         'Change-Time' = []}).

-record('Access-Transfer-Information',
        {'Access-Transfer-Type' = [],
         'Access-Network-Information' = [],
         'Cellular-Network-Information' = [],
         'Inter-UE-Transfer' = [],
         'User-Equipment-Info' = [],
         'Instance-Id' = [],
         'Related-IMS-Charging-Identifier' = [],
         'Related-IMS-Charging-Identifier-Node' = [],
         'Change-Time' = []}).

-record('Accumulated-Cost',
        {'Value-Digits', 'Exponent' = []}).

-record('Additional-Content-Information',
        {'Type-Number' = [],
         'Additional-Type-Information' = [],
         'Content-Size' = []}).

-record('Address-Domain',
        {'Domain-Name' = [], '3GPP-IMSI-MCC-MNC' = []}).

-record('AF-Correlation-Information',
        {'AF-Charging-Identifier', 'Flows' = []}).

-record('Announcement-Information',
        {'Announcement-Identifier',
         'Variable-Part' = [],
         'Time-Indicator' = [],
         'Quota-Indicator' = [],
         'Announcement-Order' = [],
         'Play-Alternative' = [],
         'Privacy-Indicator' = [],
         'Language' = []}).

-record('AoC-Cost-Information',
        {'Accumulated-Cost' = [],
         'Incremental-Cost' = [],
         'Currency-Code' = []}).

-record('AoC-Information',
        {'AoC-Cost-Information' = [],
         'Tariff-Information' = [],
         'AoC-Subscription-Information' = []}).

-record('AoC-Service',
        {'AoC-Service-Obligatory-Type' = [],
         'AoC-Service-Type' = []}).

-record('AoC-Subscription-Information',
        {'AoC-Service' = [],
         'AoC-Format' = [],
         'Preferred-AoC-Currency' = []}).

-record('APN-Rate-Control',
        {'APN-Rate-Control-Uplink' = [],
         'APN-Rate-Control-Downlink' = []}).

-record('APN-Rate-Control-Downlink',
        {'Rate-Control-Time-Unit' = [],
         'Rate-Control-Max-Rate' = [],
         'Rate-Control-Max-Message-Size' = []}).

-record('APN-Rate-Control-Uplink',
        {'Additional-Exception-Reports' = [],
         'Rate-Control-Time-Unit' = [],
         'Rate-Control-Max-Rate' = []}).

-record('Application-Server-Information',
        {'Application-Server' = [],
         'Application-Provided-Called-Party-Address' = [],
         'Status-AS-Code' = []}).

-record('Basic-Service-Code',
        {'Bearer-Service' = [], 'Teleservice' = []}).

-record('Called-Identity-Change',
        {'Called-Identity' = [], 'Change-Time' = []}).

-record('Coverage-Info',
        {'Coverage-Status' = [],
         'Change-Time' = [],
         'Location-Info' = []}).

-record('CPDT-Information',
        {'Serving-Node-Identity' = [],
         'SGW-Change' = [],
         'NIDD-Submission' = []}).

-record('Current-Tariff',
        {'Currency-Code' = [],
         'Scale-Factor' = [],
         'Rate-Element' = []}).

-record('Destination-Interface',
        {'Interface-Id' = [],
         'Interface-Text' = [],
         'Interface-Port' = [],
         'Interface-Type' = []}).

-record('Early-Media-Description',
        {'SDP-TimeStamps' = [],
         'SDP-Media-Component' = [],
         'SDP-Session-Description' = []}).

-record('Enhanced-Diagnostics',
        {'RAN-NAS-Release-Cause' = []}).

-record('Envelope',
        {'Envelope-Start-Time',
         'Envelope-End-Time' = [],
         'CC-Total-Octets' = [],
         'CC-Input-Octets' = [],
         'CC-Output-Octets' = [],
         'CC-Service-Specific-Units' = []}).

-record('Event-Type',
        {'SIP-Method' = [], 'Event' = [], 'Expires' = []}).

-record('Incremental-Cost',
        {'Value-Digits', 'Exponent' = []}).

-record('IMS-Information',
        {'Node-Functionality',
         'Event-Type' = [],
         'Role-Of-Node' = [],
         'User-Session-Id' = [],
         'Outgoing-Session-Id' = [],
         'Session-Priority' = [],
         'Calling-Party-Address' = [],
         'Called-Party-Address' = [],
         'Called-Asserted-Identity' = [],
         'Called-Identity-Change' = [],
         'Number-Portability-Routing-Information' = [],
         'Carrier-Select-Routing-Information' = [],
         'Alternate-Charged-Party-Address' = [],
         'Requested-Party-Address' = [],
         'Associated-URI' = [],
         'Time-Stamps' = [],
         'Application-Server-Information' = [],
         'Inter-Operator-Identifier' = [],
         'Transit-IOI-List' = [],
         'IMS-Charging-Identifier' = [],
         'SDP-Session-Description' = [],
         'SDP-Media-Component' = [],
         'Served-Party-IP-Address' = [],
         'Trunk-Group-Id' = [],
         'Bearer-Service' = [],
         'Service-Id' = [],
         'Service-Specific-Info' = [],
         'Message-Body' = [],
         'Cause-Code' = [],
         'Reason-Header' = [],
         'Access-Network-Information' = [],
         'Cellular-Network-Information' = [],
         'Early-Media-Description' = [],
         'IMS-Communication-Service-Identifier' = [],
         'IMS-Application-Reference-Identifier' = [],
         'Online-Charging-Flag' = [],
         'Real-Time-Tariff-Information' = [],
         'Account-Expiration' = [],
         'Initial-IMS-Charging-Identifier' = [],
         'NNI-Information' = [],
         'From-Address' = [],
         'IMS-Emergency-Indicator' = [],
         'IMS-Visited-Network-Identifier' = [],
         'Access-Network-Info-Change' = [],
         'Access-Transfer-Information' = [],
         'Related-IMS-Charging-Identifier' = [],
         'Related-IMS-Charging-Identifier-Node' = [],
         'Route-Header-Received' = [],
         'Route-Header-Transmitted' = [],
         'Instance-Id' = [],
         'TAD-Identifier' = [],
         'FE-Identifier-List' = []}).

-record('Inter-Operator-Identifier',
        {'Originating-IOI' = [], 'Terminating-IOI' = []}).

-record('ISUP-Cause',
        {'ISUP-Cause-Location' = [],
         'ISUP-Cause-Value' = [],
         'ISUP-Cause-Diagnostics' = []}).

-record('LCS-Client-ID',
        {'LCS-Client-Type' = [],
         'LCS-Client-External-ID' = [],
         'LCS-Client-Dialed-By-MS' = [],
         'LCS-Client-Name' = [],
         'LCS-APN' = [],
         'LCS-Requestor-ID' = []}).

-record('LCS-Client-Name',
        {'LCS-Data-Coding-Scheme' = [],
         'LCS-Name-String' = [],
         'LCS-Format-Indicator' = []}).

-record('LCS-Information',
        {'LCS-Client-ID' = [],
         'Location-Type' = [],
         'Location-Estimate' = [],
         'Positioning-Data' = [],
         '3GPP-IMSI' = [],
         'MSISDN' = []}).

-record('LCS-Requestor-ID',
        {'LCS-Data-Coding-Scheme' = [],
         'LCS-Requestor-ID-String' = []}).

-record('Location-Info',
        {'3GPP-User-Location-Info' = [], 'Change-Time' = []}).

-record('Location-Type',
        {'Location-Estimate-Type' = [],
         'Deferred-Location-Event-Type' = []}).

-record('MBMS-Information',
        {'TMGI' = [],
         'MBMS-User-Service-Type' = [],
         'File-Repair-Supported' = [],
         'MBMS-2G-3G-Indicator' = [],
         'MBMS-Service-Area' = [],
         'MBMS-Session-Identity' = [],
         'CN-IP-Multicast-Distribution' = [],
         'MBMS-GW-Address' = [],
         'MBMS-Charged-Party' = [],
         'MSISDN' = []}).

-record('Message-Body',
        {'Content-Type',
         'Content-Length',
         'Content-Disposition' = [],
         'Originator' = []}).

-record('Message-Class',
        {'Class-Identifier' = [], 'Token-Text' = []}).

-record('MM-Content-Type',
        {'Type-Number' = [],
         'Additional-Type-Information' = [],
         'Content-Size' = [],
         'Additional-Content-Information' = []}).

-record('MMS-Information',
        {'Originator-Address' = [],
         'Recipient-Address' = [],
         'Submission-Time' = [],
         'MM-Content-Type' = [],
         'Priority' = [],
         'Message-ID' = [],
         'Message-Type' = [],
         'Message-Size' = [],
         'Message-Class' = [],
         'Delivery-Report-Requested' = [],
         'Read-Reply-Report-Requested' = [],
         'MMBox-Storage-Requested' = [],
         'Applic-ID' = [],
         'Reply-Applic-ID' = [],
         'Aux-Applic-Info' = [],
         'Content-Class' = [],
         'DRM-Content' = [],
         'Adaptations' = []}).

-record('MMTel-Information',
        {'Supplementary-Service' = []}).

-record('Monitoring-Event-Information',
        {'Monitoring-Event-Functionality' = [],
         'Event-Timestamp' = [],
         'Monitoring-Event-Configuration-Activity' = [],
         'Charged-Party' = [],
         'Monitoring-Event-Report-Data' = []}).

-record('Monitoring-Event-Report-Data',
        {'Event-Timestamp' = [],
         'Monitoring-Event-Report-Number' = [],
         'Charged-Party' = [],
         'Subscription-Id' = []}).

-record('Next-Tariff',
        {'Currency-Code' = [],
         'Scale-Factor' = [],
         'Rate-Element' = []}).

-record('NIDD-Submission',
        {'Submission-Time' = [],
         'Event-Timestamp' = [],
         'Accounting-Input-Octets' = [],
         'Accounting-Output-Octets' = [],
         'Change-Condition' = []}).

-record('NNI-Information',
        {'Session-Direction' = [],
         'NNI-Type' = [],
         'Relationship-Mode' = [],
         'Neighbour-Node-Address' = []}).

-record('Offline-Charging',
        {'Quota-Consumption-Time' = [],
         'Time-Quota-Mechanism' = [],
         'Envelope-Reporting' = [],
         'Multiple-Services-Credit-Control' = [],
         'AVP' = []}).

-record('Originator-Address',
        {'Address-Type' = [],
         'Address-Data' = [],
         'Address-Domain' = []}).

-record('Originator-Interface',
        {'Interface-Id' = [],
         'Interface-Text' = [],
         'Interface-Port' = [],
         'Interface-Type' = []}).

-record('Originator-Received-Address',
        {'Address-Type' = [],
         'Address-Data' = [],
         'Address-Domain' = []}).

-record('Participant-Group',
        {'Called-Party-Address' = [],
         'Participant-Access-Priority' = [],
         'User-Participating-Type' = []}).

-record('PoC-Information',
        {'PoC-Server-Role' = [],
         'PoC-Session-Type' = [],
         'PoC-User-Role' = [],
         'PoC-Session-Initiation-Type' = [],
         'PoC-Event-Type' = [],
         'Number-Of-Participants' = [],
         'Participants-Involved' = [],
         'Participant-Group' = [],
         'Talk-Burst-Exchange' = [],
         'PoC-Controlling-Address' = [],
         'PoC-Group-Name' = [],
         'PoC-Session-Id' = [],
         'Charged-Party' = []}).

-record('PoC-User-Role',
        {'PoC-User-Role-IDs' = [],
         'PoC-User-Role-Info-Units' = []}).

-record('ProSe-Direct-Communication-Reception-Data-Container',
        {'Local-Sequence-Number' = [],
         'Coverage-Status' = [],
         '3GPP-User-Location-Info' = [],
         'Accounting-Input-Octets' = [],
         'Change-Time' = [],
         'Change-Condition' = [],
         'Usage-Information-Report-Sequence-Number' = [],
         'Radio-Resources-Indicator' = [],
         'Radio-Frequency' = []}).

-record('ProSe-Direct-Communication-Transmission-Data-Container',
        {'Local-Sequence-Number' = [],
         'Coverage-Status' = [],
         '3GPP-User-Location-Info' = [],
         'Accounting-Output-Octets' = [],
         'Change-Time' = [],
         'Change-Condition' = [],
         'Usage-Information-Report-Sequence-Number' = [],
         'Radio-Resources-Indicator' = [],
         'Radio-Frequency' = []}).

-record('ProSe-Information',
        {'Announcing-UE-HPLMN-Identifier' = [],
         'Announcing-UE-VPLMN-Identifier' = [],
         'Monitoring-UE-HPLMN-Identifier' = [],
         'Monitoring-UE-VPLMN-Identifier' = [],
         'Role-Of-ProSe-Function' = [],
         'ProSe-3rd-Party-Application-ID' = [],
         'Application-Specific-Data' = [],
         'ProSe-Event-Type' = [],
         'ProSe-Direct-Discovery-Model' = [],
         'ProSe-Function-IP-Address' = [],
         'ProSe-Role-Of-UE' = [],
         'ProSe-Request-Timestamp' = [],
         'PC3-Control-Protocol-Cause' = [],
         'Monitoring-UE-Identifier' = [],
         'Requestor-PLMN-Identifier' = [],
         'Requested-PLMN-Identifier' = [],
         'ProSe-Range-Class' = [],
         'Proximity-Alert-Indication' = [],
         'Proximity-Alert-Timestamp' = [],
         'Proximity-Cancellation-Timestamp' = [],
         'ProSe-Reason-For-Cancellation' = [],
         'PC3-EPC-Control-Protocol-Cause' = [],
         'ProSe-UE-ID' = [],
         'ProSe-Source-IP-Address' = [],
         'Layer-2-Group-ID' = [],
         'ProSe-Group-IP-Multicast-Address' = [],
         'Coverage-Info' = [],
         'Radio-Parameter-Set-Info' = [],
         'Transmitter-Info' = [],
         'Time-First-Transmission' = [],
         'Time-First-Reception' = [],
         'ProSe-Direct-Communication-Transmission-Data-Container'
             = [],
         'ProSe-Direct-Communication-Reception-Data-Container' =
             [],
         'Announcing-PLMN-ID' = [],
         'ProSe-Target-Layer-2-ID' = [],
         'Relay-IP-address' = [],
         'ProSe-UE-to-Network-Relay-UE-ID' = [],
         'Target-IP-Address' = [],
         'PC5-Radio-Technology' = []}).

-record('PS-Furnish-Charging-Information',
        {'3GPP-Charging-Id',
         'PS-Free-Format-Data',
         'PS-Append-Free-Format-Data' = []}).

-record('PS-Information',
        {'3GPP-Charging-Id' = [],
         'PDN-Connection-Charging-ID' = [],
         'Node-Id' = [],
         '3GPP-PDP-Type' = [],
         'PDP-Address' = [],
         'PDP-Address-Prefix-Length' = [],
         'Dynamic-Address-Flag' = [],
         'Dynamic-Address-Flag-Extension' = [],
         'QoS-Information' = [],
         'SGSN-Address' = [],
         'GGSN-Address' = [],
         'TDF-IP-Address' = [],
         'SGW-Address' = [],
         'TWAG-Address' = [],
         'CG-Address' = [],
         'Serving-Node-Type' = [],
         'SGW-Change' = [],
         '3GPP-IMSI-MCC-MNC' = [],
         'IMSI-Unauthenticated-Flag' = [],
         '3GPP-GGSN-MCC-MNC' = [],
         '3GPP-NSAPI' = [],
         'Called-Station-Id' = [],
         '3GPP-Session-Stop-Indicator' = [],
         '3GPP-Selection-Mode' = [],
         '3GPP-Charging-Characteristics' = [],
         'Charging-Characteristics-Selection-Mode' = [],
         '3GPP-SGSN-MCC-MNC' = [],
         '3GPP-MS-TimeZone' = [],
         'Charging-Rule-Base-Name' = [],
         '3GPP-User-Location-Info' = [],
         'User-Location-Info-Time' = [],
         'User-CSG-Information' = [],
         'Presence-Reporting-Area-Information' = [],
         'TWAN-User-Location-Info' = [],
         'UWAN-User-Location-Info' = [],
         '3GPP-RAT-Type' = [],
         'PS-Furnish-Charging-Information' = [],
         'PDP-Context-Type' = [],
         'Offline-Charging' = [],
         'Traffic-Data-Volumes' = [],
         'Service-Data-Container' = [],
         'User-Equipment-Info' = [],
         'Start-Time' = [],
         'Stop-Time' = [],
         'Change-Condition' = [],
         'Diagnostics' = [],
         'Low-Priority-Indicator' = [],
         'Logical-Access-ID' = [],
         'Physical-Access-ID' = [],
         'Fixed-User-Location-Info' = [],
         'CN-Operator-Selection-Entity' = [],
         'Enhanced-Diagnostics' = [],
         'SGi-PtP-Tunnelling-Method' = [],
         'CP-CIoT-EPS-Optimisation-Indicator' = [],
         'UNI-PDU-CP-Only-Flag' = [],
         'APN-Rate-Control' = [],
         'Charging-Per-IP-CAN-Session-Indicator' = [],
         '3GPP-PS-Data-Off-Status' = [],
         'SCS-AS-Address' = [],
         'Unused-Quota-Timer' = [],
         'RAN-Secondary-RAT-Usage-Report' = [],
         'AVP' = []}).

-record('Radio-Parameter-Set-Info',
        {'Radio-Parameter-Set-Values' = [],
         'Change-Time' = []}).

-record('RAN-Secondary-RAT-Usage-Report',
        {'Secondary-RAT-Type' = [],
         'Accounting-Input-Octets' = [],
         'Accounting-Output-Octets' = []}).

-record('Rate-Element',
        {'CC-Unit-Type',
         'Charge-Reason-Code' = [],
         'Unit-Value' = [],
         'Unit-Cost' = [],
         'Unit-Quota-Threshold' = []}).

-record('Real-Time-Tariff-Information',
        {'Tariff-Information' = [], 'Tariff-XML' = []}).

-record('Recipient-Address',
        {'Address-Type' = [],
         'Address-Data' = [],
         'Address-Domain' = [],
         'Addressee-Type' = []}).

-record('Recipient-Info',
        {'Destination-Interface' = [],
         'Recipient-Address' = [],
         'Recipient-Received-Address' = [],
         'Recipient-SCCP-Address' = [],
         'SM-Protocol-ID' = []}).

-record('Recipient-Received-Address',
        {'Address-Type' = [],
         'Address-Data' = [],
         'Address-Domain' = []}).

-record('Related-Change-Condition-Information',
        {'SGSN-Address' = [],
         'Change-Condition' = [],
         '3GPP-User-Location-Info' = [],
         'UWAN-User-Location-Info' = [],
         'Presence-Reporting-Area-Status' = [],
         'User-CSG-Information' = [],
         '3GPP-RAT-Type' = []}).

-record('Related-Trigger', {'Trigger-Type' = []}).

-record('Remaining-Balance',
        {'Unit-Value', 'Currency-Code'}).

-record('Scale-Factor',
        {'Value-Digits', 'Exponent' = []}).

-record('SCS-AS-Address',
        {'SCS-Realm' = [], 'SCS-Address' = []}).

-record('SDP-Media-Component',
        {'SDP-Media-Name' = [],
         'SDP-Media-Description' = [],
         'Local-GW-Inserted-Indication' = [],
         'IP-Realm-Default-Indication' = [],
         'Transcoder-Inserted-Indication' = [],
         'Media-Initiator-Flag' = [],
         'Media-Initiator-Party' = [],
         '3GPP-Charging-Id' = [],
         'Access-Network-Charging-Identifier-Value' = [],
         'SDP-Type' = []}).

-record('SDP-TimeStamps',
        {'SDP-Offer-Timestamp' = [],
         'SDP-Answer-Timestamp' = []}).

-record('Service-Data-Container',
        {'AF-Correlation-Information' = [],
         'Charging-Rule-Base-Name' = [],
         'Accounting-Input-Octets' = [],
         'Accounting-Output-Octets' = [],
         'Local-Sequence-Number' = [],
         'QoS-Information' = [],
         'Rating-Group' = [],
         'Change-Time' = [],
         'Service-Identifier' = [],
         'Service-Specific-Info' = [],
         'SGSN-Address' = [],
         'Time-First-Usage' = [],
         'Time-Last-Usage' = [],
         'Time-Usage' = [],
         'Change-Condition' = [],
         '3GPP-User-Location-Info' = [],
         'UWAN-User-Location-Info' = [],
         'Sponsor-Identity' = [],
         'Application-Service-Provider-Identity' = [],
         'Presence-Reporting-Area-Information' = [],
         'Presence-Reporting-Area-Status' = [],
         'User-CSG-Information' = [],
         '3GPP-RAT-Type' = [],
         'Related-Change-Condition-Information' = [],
         'APN-Rate-Control' = [],
         '3GPP-PS-Data-Off-Status' = []}).

-record('Service-Information',
        {'Subscription-Id' = [],
         'AoC-Information' = [],
         'PS-Information' = [],
         'IMS-Information' = [],
         'MMS-Information' = [],
         'LCS-Information' = [],
         'PoC-Information' = [],
         'MBMS-Information' = [],
         'SMS-Information' = [],
         'VCS-Information' = [],
         'MMTel-Information' = [],
         'ProSe-Information' = [],
         'CPDT-Information' = []}).

-record('Service-Specific-Info',
        {'Service-Specific-Data' = [],
         'Service-Specific-Type' = []}).

-record('SM-Device-Trigger-Information',
        {'MTC-IWF-Address' = [], 'Validity-Time' = []}).

-record('SMS-Information',
        {'SMS-Node' = [],
         'Client-Address' = [],
         'Originator-SCCP-Address' = [],
         'SMSC-Address' = [],
         'Data-Coding-Scheme' = [],
         'SM-Discharge-Time' = [],
         'SM-Message-Type' = [],
         'Originator-Interface' = [],
         'SM-Protocol-ID' = [],
         'Reply-Path-Requested' = [],
         'SM-Status' = [],
         'SM-User-Data-Header' = [],
         'Number-Of-Messages-Sent' = [],
         'SM-Sequence-Number' = [],
         'Recipient-Info' = [],
         'Originator-Received-Address' = [],
         'SM-Service-Type' = [],
         'SMS-Result' = [],
         'SM-Device-Trigger-Indicator' = [],
         'SM-Device-Trigger-Information' = [],
         'MTC-IWF-Address' = []}).

-record('Supplementary-Service',
        {'MMTel-SService-Type' = [],
         'Service-Mode' = [],
         'Number-Of-Diversions' = [],
         'Associated-Party-Address' = [],
         'Service-Id' = [],
         'Change-Time' = [],
         'Number-Of-Participants' = [],
         'Participant-Action-Type' = [],
         'CUG-Information' = [],
         'AoC-Information' = []}).

-record('Talk-Burst-Exchange',
        {'PoC-Change-Time',
         'Number-Of-Talk-Bursts' = [],
         'Talk-Burst-Volume' = [],
         'Talk-Burst-Time' = [],
         'Number-Of-Received-Talk-Bursts' = [],
         'Received-Talk-Burst-Volume' = [],
         'Received-Talk-Burst-Time' = [],
         'Number-Of-Participants' = [],
         'PoC-Change-Condition' = []}).

-record('Tariff-Information',
        {'Current-Tariff',
         'Tariff-Time-Change' = [],
         'Next-Tariff' = []}).

-record('Time-Quota-Mechanism',
        {'Time-Quota-Type', 'Base-Time-Interval'}).

-record('Time-Stamps',
        {'SIP-Request-Timestamp' = [],
         'SIP-Response-Timestamp' = [],
         'SIP-Request-Timestamp-Fraction' = [],
         'SIP-Response-Timestamp-Fraction' = []}).

-record('Traffic-Data-Volumes',
        {'QoS-Information' = [],
         'Accounting-Input-Octets' = [],
         'Accounting-Output-Octets' = [],
         'Change-Condition' = [],
         'Change-Time' = [],
         '3GPP-User-Location-Info' = [],
         'UWAN-User-Location-Info' = [],
         '3GPP-Charging-Id' = [],
         'Presence-Reporting-Area-Status' = [],
         'User-CSG-Information' = [],
         '3GPP-RAT-Type' = [],
         'Related-Change-Condition-Information' = [],
         'Diagnostics' = [],
         'Enhanced-Diagnostics' = [],
         'CP-CIoT-EPS-Optimisation-Indicator' = []}).

-record('Transmitter-Info',
        {'ProSe-Source-IP-Address' = [], 'ProSe-UE-ID' = []}).

-record('Trigger', {'Trigger-Type' = []}).

-record('Trunk-Group-Id',
        {'Incoming-Trunk-Group-Id' = [],
         'Outgoing-Trunk-Group-Id' = []}).

-record('TWAN-User-Location-Info', {'BSSID' = []}).

-record('Unit-Cost', {'Value-Digits', 'Exponent' = []}).

-record('User-CSG-Information',
        {'CSG-Access-Mode', 'CSG-Membership-Indication' = []}).

-record('UWAN-User-Location-Info',
        {'UE-Local-IP-Address',
         'UDP-Source-Port' = [],
         'BSSID' = []}).

-record('Variable-Part',
        {'Variable-Part-Type',
         'Variable-Part-Value',
         'Variable-Part-Order' = []}).

-record('VCS-Information',
        {'Bearer-Capability' = [],
         'Network-Call-Reference-Number' = [],
         'MSC-Address' = [],
         'Basic-Service-Code' = [],
         'ISUP-Location-Number' = [],
         'VLR-Number' = [],
         'Forwarding-Pending' = [],
         'ISUP-Cause' = [],
         'Start-Time' = [],
         'Start-of-Charging' = [],
         'Stop-Time' = [],
         'PS-Free-Format-Data' = []}).


%%% -------------------------------------------------------
%%% Grouped AVP records from diameter_rfc4004:
%%% -------------------------------------------------------

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


%%% -------------------------------------------------------
%%% Grouped AVP records from diameter_rfc4006_cc:
%%% -------------------------------------------------------

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


%%% -------------------------------------------------------
%%% Grouped AVP records from diameter_rfc5447:
%%% -------------------------------------------------------

-record('MIP6-Agent-Info',
        {'MIP-Home-Agent-Address' = [],
         'MIP-Home-Agent-Host' = [],
         'MIP6-Home-Link-Prefix' = [],
         'AVP' = []}).


%%% -------------------------------------------------------
%%% Grouped AVP records from diameter_rfc7683:
%%% -------------------------------------------------------

-record('OC-Supported-Features',
        {'OC-Feature-Vector' = [], 'AVP' = []}).

-record('OC-OLR',
        {'OC-Sequence-Number',
         'OC-Report-Type',
         'OC-Reduction-Percentage' = [],
         'OC-Validity-Duration' = [],
         'AVP' = []}).


%%% -------------------------------------------------------
%%% Grouped AVP records from diameter_rfc8583:
%%% -------------------------------------------------------

-record('Load',
        {'Load-Type' = [],
         'Load-Value' = [],
         'SourceID' = [],
         'AVP' = []}).


%%% -------------------------------------------------------
%%% ENUM Macros from diameter_gen_base_rfc6733:
%%% -------------------------------------------------------

-ifndef('DISCONNECT-CAUSE_REBOOTING').
-define('DISCONNECT-CAUSE_REBOOTING', 0).
-endif.
-ifndef('DISCONNECT-CAUSE_BUSY').
-define('DISCONNECT-CAUSE_BUSY', 1).
-endif.
-ifndef('DISCONNECT-CAUSE_DO_NOT_WANT_TO_TALK_TO_YOU').
-define('DISCONNECT-CAUSE_DO_NOT_WANT_TO_TALK_TO_YOU', 2).
-endif.
-ifndef('REDIRECT-HOST-USAGE_DONT_CACHE').
-define('REDIRECT-HOST-USAGE_DONT_CACHE', 0).
-endif.
-ifndef('REDIRECT-HOST-USAGE_ALL_SESSION').
-define('REDIRECT-HOST-USAGE_ALL_SESSION', 1).
-endif.
-ifndef('REDIRECT-HOST-USAGE_ALL_REALM').
-define('REDIRECT-HOST-USAGE_ALL_REALM', 2).
-endif.
-ifndef('REDIRECT-HOST-USAGE_REALM_AND_APPLICATION').
-define('REDIRECT-HOST-USAGE_REALM_AND_APPLICATION', 3).
-endif.
-ifndef('REDIRECT-HOST-USAGE_ALL_APPLICATION').
-define('REDIRECT-HOST-USAGE_ALL_APPLICATION', 4).
-endif.
-ifndef('REDIRECT-HOST-USAGE_ALL_HOST').
-define('REDIRECT-HOST-USAGE_ALL_HOST', 5).
-endif.
-ifndef('REDIRECT-HOST-USAGE_ALL_USER').
-define('REDIRECT-HOST-USAGE_ALL_USER', 6).
-endif.
-ifndef('AUTH-REQUEST-TYPE_AUTHENTICATE_ONLY').
-define('AUTH-REQUEST-TYPE_AUTHENTICATE_ONLY', 1).
-endif.
-ifndef('AUTH-REQUEST-TYPE_AUTHORIZE_ONLY').
-define('AUTH-REQUEST-TYPE_AUTHORIZE_ONLY', 2).
-endif.
-ifndef('AUTH-REQUEST-TYPE_AUTHORIZE_AUTHENTICATE').
-define('AUTH-REQUEST-TYPE_AUTHORIZE_AUTHENTICATE', 3).
-endif.
-ifndef('AUTH-SESSION-STATE_STATE_MAINTAINED').
-define('AUTH-SESSION-STATE_STATE_MAINTAINED', 0).
-endif.
-ifndef('AUTH-SESSION-STATE_NO_STATE_MAINTAINED').
-define('AUTH-SESSION-STATE_NO_STATE_MAINTAINED', 1).
-endif.
-ifndef('RE-AUTH-REQUEST-TYPE_AUTHORIZE_ONLY').
-define('RE-AUTH-REQUEST-TYPE_AUTHORIZE_ONLY', 0).
-endif.
-ifndef('RE-AUTH-REQUEST-TYPE_AUTHORIZE_AUTHENTICATE').
-define('RE-AUTH-REQUEST-TYPE_AUTHORIZE_AUTHENTICATE', 1).
-endif.
-ifndef('TERMINATION-CAUSE_LOGOUT').
-define('TERMINATION-CAUSE_LOGOUT', 1).
-endif.
-ifndef('TERMINATION-CAUSE_SERVICE_NOT_PROVIDED').
-define('TERMINATION-CAUSE_SERVICE_NOT_PROVIDED', 2).
-endif.
-ifndef('TERMINATION-CAUSE_BAD_ANSWER').
-define('TERMINATION-CAUSE_BAD_ANSWER', 3).
-endif.
-ifndef('TERMINATION-CAUSE_ADMINISTRATIVE').
-define('TERMINATION-CAUSE_ADMINISTRATIVE', 4).
-endif.
-ifndef('TERMINATION-CAUSE_LINK_BROKEN').
-define('TERMINATION-CAUSE_LINK_BROKEN', 5).
-endif.
-ifndef('TERMINATION-CAUSE_AUTH_EXPIRED').
-define('TERMINATION-CAUSE_AUTH_EXPIRED', 6).
-endif.
-ifndef('TERMINATION-CAUSE_USER_MOVED').
-define('TERMINATION-CAUSE_USER_MOVED', 7).
-endif.
-ifndef('TERMINATION-CAUSE_SESSION_TIMEOUT').
-define('TERMINATION-CAUSE_SESSION_TIMEOUT', 8).
-endif.
-ifndef('SESSION-SERVER-FAILOVER_REFUSE_SERVICE').
-define('SESSION-SERVER-FAILOVER_REFUSE_SERVICE', 0).
-endif.
-ifndef('SESSION-SERVER-FAILOVER_TRY_AGAIN').
-define('SESSION-SERVER-FAILOVER_TRY_AGAIN', 1).
-endif.
-ifndef('SESSION-SERVER-FAILOVER_ALLOW_SERVICE').
-define('SESSION-SERVER-FAILOVER_ALLOW_SERVICE', 2).
-endif.
-ifndef('SESSION-SERVER-FAILOVER_TRY_AGAIN_ALLOW_SERVICE').
-define('SESSION-SERVER-FAILOVER_TRY_AGAIN_ALLOW_SERVICE', 3).
-endif.
-ifndef('ACCOUNTING-RECORD-TYPE_EVENT_RECORD').
-define('ACCOUNTING-RECORD-TYPE_EVENT_RECORD', 1).
-endif.
-ifndef('ACCOUNTING-RECORD-TYPE_START_RECORD').
-define('ACCOUNTING-RECORD-TYPE_START_RECORD', 2).
-endif.
-ifndef('ACCOUNTING-RECORD-TYPE_INTERIM_RECORD').
-define('ACCOUNTING-RECORD-TYPE_INTERIM_RECORD', 3).
-endif.
-ifndef('ACCOUNTING-RECORD-TYPE_STOP_RECORD').
-define('ACCOUNTING-RECORD-TYPE_STOP_RECORD', 4).
-endif.
-ifndef('ACCOUNTING-REALTIME-REQUIRED_DELIVER_AND_GRANT').
-define('ACCOUNTING-REALTIME-REQUIRED_DELIVER_AND_GRANT', 1).
-endif.
-ifndef('ACCOUNTING-REALTIME-REQUIRED_GRANT_AND_STORE').
-define('ACCOUNTING-REALTIME-REQUIRED_GRANT_AND_STORE', 2).
-endif.
-ifndef('ACCOUNTING-REALTIME-REQUIRED_GRANT_AND_LOSE').
-define('ACCOUNTING-REALTIME-REQUIRED_GRANT_AND_LOSE', 3).
-endif.



%%% -------------------------------------------------------
%%% ENUM Macros from diameter_3gpp_base:
%%% -------------------------------------------------------

-ifndef('3GPP-PDP-TYPE_IPV4').
-define('3GPP-PDP-TYPE_IPV4', 0).
-endif.
-ifndef('3GPP-PDP-TYPE_PPP').
-define('3GPP-PDP-TYPE_PPP', 1).
-endif.
-ifndef('3GPP-PDP-TYPE_IPV6').
-define('3GPP-PDP-TYPE_IPV6', 2).
-endif.
-ifndef('3GPP-PDP-TYPE_IPV4V6').
-define('3GPP-PDP-TYPE_IPV4V6', 3).
-endif.
-ifndef('3GPP-PDP-TYPE_NON-IP').
-define('3GPP-PDP-TYPE_NON-IP', 4).
-endif.



%%% -------------------------------------------------------
%%% ENUM Macros from diameter_3gpp_ts29_212:
%%% -------------------------------------------------------

-ifndef('AN-GW-STATUS_AN_GW_FAILED').
-define('AN-GW-STATUS_AN_GW_FAILED', 0).
-endif.
-ifndef('BEARER-CONTROL-MODE_UE_ONLY').
-define('BEARER-CONTROL-MODE_UE_ONLY', 0).
-endif.
-ifndef('BEARER-CONTROL-MODE_RESERVED').
-define('BEARER-CONTROL-MODE_RESERVED', 1).
-endif.
-ifndef('BEARER-CONTROL-MODE_UE_NW').
-define('BEARER-CONTROL-MODE_UE_NW', 2).
-endif.
-ifndef('BEARER-OPERATION_TERMINATION').
-define('BEARER-OPERATION_TERMINATION', 0).
-endif.
-ifndef('BEARER-OPERATION_ESTABLISHMENT').
-define('BEARER-OPERATION_ESTABLISHMENT', 1).
-endif.
-ifndef('BEARER-OPERATION_MODIFICATION').
-define('BEARER-OPERATION_MODIFICATION', 2).
-endif.
-ifndef('BEARER-USAGE_GENERAL').
-define('BEARER-USAGE_GENERAL', 0).
-endif.
-ifndef('BEARER-USAGE_IMS_SIGNALLING').
-define('BEARER-USAGE_IMS_SIGNALLING', 1).
-endif.
-ifndef('CHARGING-CORRELATION-INDICATOR_CHARGING_IDENTIFIER_REQUIRED').
-define('CHARGING-CORRELATION-INDICATOR_CHARGING_IDENTIFIER_REQUIRED', 0).
-endif.
-ifndef('CSG-INFORMATION-REPORTING_CHANGE_CSG_CELL').
-define('CSG-INFORMATION-REPORTING_CHANGE_CSG_CELL', 0).
-endif.
-ifndef('CSG-INFORMATION-REPORTING_CHANGE_CSG_SUBSCRIBED_HYBRID_CELL').
-define('CSG-INFORMATION-REPORTING_CHANGE_CSG_SUBSCRIBED_HYBRID_CELL', 1).
-endif.
-ifndef('CSG-INFORMATION-REPORTING_CHANGE_CSG_UNSUBSCRIBED_HYBRID_CELL').
-define('CSG-INFORMATION-REPORTING_CHANGE_CSG_UNSUBSCRIBED_HYBRID_CELL', 2).
-endif.
-ifndef('EVENT-TRIGGER_SGSN_CHANGE').
-define('EVENT-TRIGGER_SGSN_CHANGE', 0).
-endif.
-ifndef('EVENT-TRIGGER_QOS_CHANGE').
-define('EVENT-TRIGGER_QOS_CHANGE', 1).
-endif.
-ifndef('EVENT-TRIGGER_RAT_CHANGE').
-define('EVENT-TRIGGER_RAT_CHANGE', 2).
-endif.
-ifndef('EVENT-TRIGGER_TFT_CHANGE').
-define('EVENT-TRIGGER_TFT_CHANGE', 3).
-endif.
-ifndef('EVENT-TRIGGER_PLMN_CHANGE').
-define('EVENT-TRIGGER_PLMN_CHANGE', 4).
-endif.
-ifndef('EVENT-TRIGGER_LOSS_OF_BEARER').
-define('EVENT-TRIGGER_LOSS_OF_BEARER', 5).
-endif.
-ifndef('EVENT-TRIGGER_RECOVERY_OF_BEARER').
-define('EVENT-TRIGGER_RECOVERY_OF_BEARER', 6).
-endif.
-ifndef('EVENT-TRIGGER_IP-CAN_CHANGE').
-define('EVENT-TRIGGER_IP-CAN_CHANGE', 7).
-endif.
-ifndef('EVENT-TRIGGER_QOS_CHANGE_EXCEEDING_AUTHORIZATION').
-define('EVENT-TRIGGER_QOS_CHANGE_EXCEEDING_AUTHORIZATION', 11).
-endif.
-ifndef('EVENT-TRIGGER_RAI_CHANGE').
-define('EVENT-TRIGGER_RAI_CHANGE', 12).
-endif.
-ifndef('EVENT-TRIGGER_USER_LOCATION_CHANGE').
-define('EVENT-TRIGGER_USER_LOCATION_CHANGE', 13).
-endif.
-ifndef('EVENT-TRIGGER_NO_EVENT_TRIGGERS').
-define('EVENT-TRIGGER_NO_EVENT_TRIGGERS', 14).
-endif.
-ifndef('EVENT-TRIGGER_OUT_OF_CREDIT').
-define('EVENT-TRIGGER_OUT_OF_CREDIT', 15).
-endif.
-ifndef('EVENT-TRIGGER_REALLOCATION_OF_CREDIT').
-define('EVENT-TRIGGER_REALLOCATION_OF_CREDIT', 16).
-endif.
-ifndef('EVENT-TRIGGER_REVALIDATION_TIMEOUT').
-define('EVENT-TRIGGER_REVALIDATION_TIMEOUT', 17).
-endif.
-ifndef('EVENT-TRIGGER_UE_IP_ADDRESS_ALLOCATE').
-define('EVENT-TRIGGER_UE_IP_ADDRESS_ALLOCATE', 18).
-endif.
-ifndef('EVENT-TRIGGER_UE_IP_ADDRESS_RELEASE').
-define('EVENT-TRIGGER_UE_IP_ADDRESS_RELEASE', 19).
-endif.
-ifndef('EVENT-TRIGGER_DEFAULT_EPS_BEARER_QOS_CHANGE').
-define('EVENT-TRIGGER_DEFAULT_EPS_BEARER_QOS_CHANGE', 20).
-endif.
-ifndef('EVENT-TRIGGER_AN_GW_CHANGE').
-define('EVENT-TRIGGER_AN_GW_CHANGE', 21).
-endif.
-ifndef('EVENT-TRIGGER_SUCCESSFUL_RESOURCE_ALLOCATION').
-define('EVENT-TRIGGER_SUCCESSFUL_RESOURCE_ALLOCATION', 22).
-endif.
-ifndef('EVENT-TRIGGER_RESOURCE_MODIFICATION_REQUEST').
-define('EVENT-TRIGGER_RESOURCE_MODIFICATION_REQUEST', 23).
-endif.
-ifndef('EVENT-TRIGGER_PGW_TRACE_CONTROL').
-define('EVENT-TRIGGER_PGW_TRACE_CONTROL', 24).
-endif.
-ifndef('EVENT-TRIGGER_UE_TIME_ZONE_CHANGE').
-define('EVENT-TRIGGER_UE_TIME_ZONE_CHANGE', 25).
-endif.
-ifndef('EVENT-TRIGGER_TAI_CHANGE').
-define('EVENT-TRIGGER_TAI_CHANGE', 26).
-endif.
-ifndef('EVENT-TRIGGER_ECGI_CHANGE').
-define('EVENT-TRIGGER_ECGI_CHANGE', 27).
-endif.
-ifndef('EVENT-TRIGGER_CHARGING_CORRELATION_EXCHANGE').
-define('EVENT-TRIGGER_CHARGING_CORRELATION_EXCHANGE', 28).
-endif.
-ifndef('EVENT-TRIGGER_APN-AMBR_MODIFICATION_FAILURE').
-define('EVENT-TRIGGER_APN-AMBR_MODIFICATION_FAILURE', 29).
-endif.
-ifndef('EVENT-TRIGGER_USER_CSG_INFORMATION_CHANGE').
-define('EVENT-TRIGGER_USER_CSG_INFORMATION_CHANGE', 30).
-endif.
-ifndef('EVENT-TRIGGER_USAGE_REPORT').
-define('EVENT-TRIGGER_USAGE_REPORT', 33).
-endif.
-ifndef('EVENT-TRIGGER_DEFAULT-EPS-BEARER-QOS_MODIFICATION_FAILURE').
-define('EVENT-TRIGGER_DEFAULT-EPS-BEARER-QOS_MODIFICATION_FAILURE', 34).
-endif.
-ifndef('EVENT-TRIGGER_USER_CSG_HYBRID_SUBSCRIBED_INFORMATION_CHANGE').
-define('EVENT-TRIGGER_USER_CSG_HYBRID_SUBSCRIBED_INFORMATION_CHANGE', 35).
-endif.
-ifndef('EVENT-TRIGGER_USER_CSG_HYBRID_UNSUBSCRIBED_INFORMATION_CHANGE').
-define('EVENT-TRIGGER_USER_CSG_HYBRID_UNSUBSCRIBED_INFORMATION_CHANGE', 36).
-endif.
-ifndef('EVENT-TRIGGER_ROUTING_RULE_CHANGE').
-define('EVENT-TRIGGER_ROUTING_RULE_CHANGE', 37).
-endif.
-ifndef('EVENT-TRIGGER_APPLICATION_START').
-define('EVENT-TRIGGER_APPLICATION_START', 39).
-endif.
-ifndef('EVENT-TRIGGER_APPLICATION_STOP').
-define('EVENT-TRIGGER_APPLICATION_STOP', 40).
-endif.
-ifndef('EVENT-TRIGGER_CS_TO_PS_HANDOVER').
-define('EVENT-TRIGGER_CS_TO_PS_HANDOVER', 42).
-endif.
-ifndef('EVENT-TRIGGER_UE_LOCAL_IP_ADDRESS_CHANGE').
-define('EVENT-TRIGGER_UE_LOCAL_IP_ADDRESS_CHANGE', 43).
-endif.
-ifndef('EVENT-TRIGGER_HNB_LOCAL_IP_ADDRESS_CHANGE').
-define('EVENT-TRIGGER_HNB_LOCAL_IP_ADDRESS_CHANGE', 44).
-endif.
-ifndef('EVENT-TRIGGER_ACCESS_NETWORK_INFO_REPORT').
-define('EVENT-TRIGGER_ACCESS_NETWORK_INFO_REPORT', 45).
-endif.
-ifndef('EVENT-TRIGGER_CREDIT_MANAGEMENT_SESSION_FAILURE').
-define('EVENT-TRIGGER_CREDIT_MANAGEMENT_SESSION_FAILURE', 46).
-endif.
-ifndef('EVENT-TRIGGER_DEFAULT_QOS_CHANGE').
-define('EVENT-TRIGGER_DEFAULT_QOS_CHANGE', 47).
-endif.
-ifndef('EVENT-TRIGGER_CHANGE_OF_UE_PRESENCE_IN_PRESENCE_REPORTING_AREA_REPORT').
-define('EVENT-TRIGGER_CHANGE_OF_UE_PRESENCE_IN_PRESENCE_REPORTING_AREA_REPORT', 48).
-endif.
-ifndef('FLOW-DIRECTION_UNSPECIFIED').
-define('FLOW-DIRECTION_UNSPECIFIED', 0).
-endif.
-ifndef('FLOW-DIRECTION_DOWNLINK').
-define('FLOW-DIRECTION_DOWNLINK', 1).
-endif.
-ifndef('FLOW-DIRECTION_UPLINK').
-define('FLOW-DIRECTION_UPLINK', 2).
-endif.
-ifndef('FLOW-DIRECTION_BIDIRECTIONAL').
-define('FLOW-DIRECTION_BIDIRECTIONAL', 3).
-endif.
-ifndef('IP-CAN-SESSION-CHARGING-SCOPE_IP-CAN_SESSION_SCOPE').
-define('IP-CAN-SESSION-CHARGING-SCOPE_IP-CAN_SESSION_SCOPE', 0).
-endif.
-ifndef('IP-CAN-TYPE_3GPP-GPRS').
-define('IP-CAN-TYPE_3GPP-GPRS', 0).
-endif.
-ifndef('IP-CAN-TYPE_DOCSIS').
-define('IP-CAN-TYPE_DOCSIS', 1).
-endif.
-ifndef('IP-CAN-TYPE_XDSL').
-define('IP-CAN-TYPE_XDSL', 2).
-endif.
-ifndef('IP-CAN-TYPE_WIMAX').
-define('IP-CAN-TYPE_WIMAX', 3).
-endif.
-ifndef('IP-CAN-TYPE_3GPP2').
-define('IP-CAN-TYPE_3GPP2', 4).
-endif.
-ifndef('IP-CAN-TYPE_3GPP-EPS').
-define('IP-CAN-TYPE_3GPP-EPS', 5).
-endif.
-ifndef('IP-CAN-TYPE_NON-3GPP-EPS').
-define('IP-CAN-TYPE_NON-3GPP-EPS', 6).
-endif.
-ifndef('IP-CAN-TYPE_FBA').
-define('IP-CAN-TYPE_FBA', 7).
-endif.
-ifndef('METERING-METHOD_DURATION').
-define('METERING-METHOD_DURATION', 0).
-endif.
-ifndef('METERING-METHOD_VOLUME').
-define('METERING-METHOD_VOLUME', 1).
-endif.
-ifndef('METERING-METHOD_DURATION_VOLUME').
-define('METERING-METHOD_DURATION_VOLUME', 2).
-endif.
-ifndef('METERING-METHOD_EVENT').
-define('METERING-METHOD_EVENT', 3).
-endif.
-ifndef('MUTE-NOTIFICATION_MUTE_REQUIRED').
-define('MUTE-NOTIFICATION_MUTE_REQUIRED', 0).
-endif.
-ifndef('NETWORK-REQUEST-SUPPORT_NETWORK_REQUEST_NOT_SUPPORTED').
-define('NETWORK-REQUEST-SUPPORT_NETWORK_REQUEST_NOT_SUPPORTED', 0).
-endif.
-ifndef('NETWORK-REQUEST-SUPPORT_NETWORK_REQUEST_SUPPORTED').
-define('NETWORK-REQUEST-SUPPORT_NETWORK_REQUEST_SUPPORTED', 1).
-endif.
-ifndef('OFFLINE_DISABLE_OFFLINE').
-define('OFFLINE_DISABLE_OFFLINE', 0).
-endif.
-ifndef('OFFLINE_ENABLE_OFFLINE').
-define('OFFLINE_ENABLE_OFFLINE', 1).
-endif.
-ifndef('ONLINE_DISABLE_ONLINE').
-define('ONLINE_DISABLE_ONLINE', 0).
-endif.
-ifndef('ONLINE_ENABLE_ONLINE').
-define('ONLINE_ENABLE_ONLINE', 1).
-endif.
-ifndef('PACKET-FILTER-OPERATION_DELETION').
-define('PACKET-FILTER-OPERATION_DELETION', 0).
-endif.
-ifndef('PACKET-FILTER-OPERATION_ADDITION').
-define('PACKET-FILTER-OPERATION_ADDITION', 1).
-endif.
-ifndef('PACKET-FILTER-OPERATION_MODIFICATION').
-define('PACKET-FILTER-OPERATION_MODIFICATION', 2).
-endif.
-ifndef('PACKET-FILTER-USAGE_SEND_TO_UE').
-define('PACKET-FILTER-USAGE_SEND_TO_UE', 1).
-endif.
-ifndef('PCC-RULE-STATUS_ACTIVE').
-define('PCC-RULE-STATUS_ACTIVE', 0).
-endif.
-ifndef('PCC-RULE-STATUS_INACTIVE').
-define('PCC-RULE-STATUS_INACTIVE', 1).
-endif.
-ifndef('PCC-RULE-STATUS_TEMPORARILY_INACTIVE').
-define('PCC-RULE-STATUS_TEMPORARILY_INACTIVE', 2).
-endif.
-ifndef('PRE-EMPTION-CAPABILITY_PRE-EMPTION_CAPABILITY_ENABLED').
-define('PRE-EMPTION-CAPABILITY_PRE-EMPTION_CAPABILITY_ENABLED', 0).
-endif.
-ifndef('PRE-EMPTION-CAPABILITY_PRE-EMPTION_CAPABILITY_DISABLED').
-define('PRE-EMPTION-CAPABILITY_PRE-EMPTION_CAPABILITY_DISABLED', 1).
-endif.
-ifndef('PRE-EMPTION-VULNERABILITY_PRE-EMPTION_VULNERABILITY_ENABLED').
-define('PRE-EMPTION-VULNERABILITY_PRE-EMPTION_VULNERABILITY_ENABLED', 0).
-endif.
-ifndef('PRE-EMPTION-VULNERABILITY_PRE-EMPTION_VULNERABILITY_DISABLED').
-define('PRE-EMPTION-VULNERABILITY_PRE-EMPTION_VULNERABILITY_DISABLED', 1).
-endif.
-ifndef('PS-TO-CS-SESSION-CONTINUITY_VIDEO_PS2CS_CONT_CANDIDATE').
-define('PS-TO-CS-SESSION-CONTINUITY_VIDEO_PS2CS_CONT_CANDIDATE', 0).
-endif.
-ifndef('QOS-CLASS-IDENTIFIER_QCI_1').
-define('QOS-CLASS-IDENTIFIER_QCI_1', 1).
-endif.
-ifndef('QOS-CLASS-IDENTIFIER_QCI_2').
-define('QOS-CLASS-IDENTIFIER_QCI_2', 2).
-endif.
-ifndef('QOS-CLASS-IDENTIFIER_QCI_3').
-define('QOS-CLASS-IDENTIFIER_QCI_3', 3).
-endif.
-ifndef('QOS-CLASS-IDENTIFIER_QCI_4').
-define('QOS-CLASS-IDENTIFIER_QCI_4', 4).
-endif.
-ifndef('QOS-CLASS-IDENTIFIER_QCI_5').
-define('QOS-CLASS-IDENTIFIER_QCI_5', 5).
-endif.
-ifndef('QOS-CLASS-IDENTIFIER_QCI_6').
-define('QOS-CLASS-IDENTIFIER_QCI_6', 6).
-endif.
-ifndef('QOS-CLASS-IDENTIFIER_QCI_7').
-define('QOS-CLASS-IDENTIFIER_QCI_7', 7).
-endif.
-ifndef('QOS-CLASS-IDENTIFIER_QCI_8').
-define('QOS-CLASS-IDENTIFIER_QCI_8', 8).
-endif.
-ifndef('QOS-CLASS-IDENTIFIER_QCI_9').
-define('QOS-CLASS-IDENTIFIER_QCI_9', 9).
-endif.
-ifndef('QOS-CLASS-IDENTIFIER_QCI_65').
-define('QOS-CLASS-IDENTIFIER_QCI_65', 65).
-endif.
-ifndef('QOS-CLASS-IDENTIFIER_QCI_66').
-define('QOS-CLASS-IDENTIFIER_QCI_66', 66).
-endif.
-ifndef('QOS-CLASS-IDENTIFIER_QCI_69').
-define('QOS-CLASS-IDENTIFIER_QCI_69', 69).
-endif.
-ifndef('QOS-CLASS-IDENTIFIER_QCI_70').
-define('QOS-CLASS-IDENTIFIER_QCI_70', 70).
-endif.
-ifndef('QOS-NEGOTIATION_NO_QOS_NEGOTIATION').
-define('QOS-NEGOTIATION_NO_QOS_NEGOTIATION', 0).
-endif.
-ifndef('QOS-NEGOTIATION_QOS_NEGOTIATION_SUPPORTED').
-define('QOS-NEGOTIATION_QOS_NEGOTIATION_SUPPORTED', 1).
-endif.
-ifndef('QOS-UPGRADE_QOS_UPGRADE_NOT_SUPPORTED').
-define('QOS-UPGRADE_QOS_UPGRADE_NOT_SUPPORTED', 0).
-endif.
-ifndef('QOS-UPGRADE_QOS_UPGRADE_SUPPORTED').
-define('QOS-UPGRADE_QOS_UPGRADE_SUPPORTED', 1).
-endif.
-ifndef('RAT-TYPE_WLAN').
-define('RAT-TYPE_WLAN', 0).
-endif.
-ifndef('RAT-TYPE_VIRTUAL').
-define('RAT-TYPE_VIRTUAL', 1).
-endif.
-ifndef('RAT-TYPE_UTRAN').
-define('RAT-TYPE_UTRAN', 1000).
-endif.
-ifndef('RAT-TYPE_GERAN').
-define('RAT-TYPE_GERAN', 1001).
-endif.
-ifndef('RAT-TYPE_GAN').
-define('RAT-TYPE_GAN', 1002).
-endif.
-ifndef('RAT-TYPE_HSPA_EVOLUTION').
-define('RAT-TYPE_HSPA_EVOLUTION', 1003).
-endif.
-ifndef('RAT-TYPE_EUTRAN').
-define('RAT-TYPE_EUTRAN', 1004).
-endif.
-ifndef('RAT-TYPE_CDMA2000_1X').
-define('RAT-TYPE_CDMA2000_1X', 2000).
-endif.
-ifndef('RAT-TYPE_HRPD').
-define('RAT-TYPE_HRPD', 2001).
-endif.
-ifndef('RAT-TYPE_UMB').
-define('RAT-TYPE_UMB', 2002).
-endif.
-ifndef('RAT-TYPE_EHRPD').
-define('RAT-TYPE_EHRPD', 2003).
-endif.
-ifndef('REDIRECT-SUPPORT_REDIRECTION_DISABLED').
-define('REDIRECT-SUPPORT_REDIRECTION_DISABLED', 0).
-endif.
-ifndef('REDIRECT-SUPPORT_REDIRECTION_ENABLED').
-define('REDIRECT-SUPPORT_REDIRECTION_ENABLED', 1).
-endif.
-ifndef('REPORTING-LEVEL_SERVICE_IDENTIFIER_LEVEL').
-define('REPORTING-LEVEL_SERVICE_IDENTIFIER_LEVEL', 0).
-endif.
-ifndef('REPORTING-LEVEL_RATING_GROUP_LEVEL').
-define('REPORTING-LEVEL_RATING_GROUP_LEVEL', 1).
-endif.
-ifndef('REPORTING-LEVEL_SPONSORED_CONNECTIVITY_LEVEL').
-define('REPORTING-LEVEL_SPONSORED_CONNECTIVITY_LEVEL', 2).
-endif.
-ifndef('RESOURCE-ALLOCATION-NOTIFICATION_ENABLE_NOTIFICATION').
-define('RESOURCE-ALLOCATION-NOTIFICATION_ENABLE_NOTIFICATION', 0).
-endif.
-ifndef('RULE-FAILURE-CODE_UNKNOWN_RULE_NAME').
-define('RULE-FAILURE-CODE_UNKNOWN_RULE_NAME', 1).
-endif.
-ifndef('RULE-FAILURE-CODE_RATING_GROUP_ERROR').
-define('RULE-FAILURE-CODE_RATING_GROUP_ERROR', 2).
-endif.
-ifndef('RULE-FAILURE-CODE_SERVICE_IDENTIFIER_ERROR').
-define('RULE-FAILURE-CODE_SERVICE_IDENTIFIER_ERROR', 3).
-endif.
-ifndef('RULE-FAILURE-CODE_GW_PCEF_MALFUNCTION').
-define('RULE-FAILURE-CODE_GW_PCEF_MALFUNCTION', 4).
-endif.
-ifndef('RULE-FAILURE-CODE_RESOURCES_LIMITATION').
-define('RULE-FAILURE-CODE_RESOURCES_LIMITATION', 5).
-endif.
-ifndef('RULE-FAILURE-CODE_MAX_NR_BEARERS_REACHED').
-define('RULE-FAILURE-CODE_MAX_NR_BEARERS_REACHED', 6).
-endif.
-ifndef('RULE-FAILURE-CODE_UNKNOWN_BEARER_ID').
-define('RULE-FAILURE-CODE_UNKNOWN_BEARER_ID', 7).
-endif.
-ifndef('RULE-FAILURE-CODE_MISSING_BEARER_ID').
-define('RULE-FAILURE-CODE_MISSING_BEARER_ID', 8).
-endif.
-ifndef('RULE-FAILURE-CODE_MISSING_FLOW_INFORMATION').
-define('RULE-FAILURE-CODE_MISSING_FLOW_INFORMATION', 9).
-endif.
-ifndef('RULE-FAILURE-CODE_RESOURCE_ALLOCATION_FAILURE').
-define('RULE-FAILURE-CODE_RESOURCE_ALLOCATION_FAILURE', 10).
-endif.
-ifndef('RULE-FAILURE-CODE_UNSUCCESSFUL_QOS_VALIDATION').
-define('RULE-FAILURE-CODE_UNSUCCESSFUL_QOS_VALIDATION', 11).
-endif.
-ifndef('RULE-FAILURE-CODE_INCORRECT_FLOW_INFORMATION').
-define('RULE-FAILURE-CODE_INCORRECT_FLOW_INFORMATION', 12).
-endif.
-ifndef('RULE-FAILURE-CODE_PS_TO_CS_HANDOVER').
-define('RULE-FAILURE-CODE_PS_TO_CS_HANDOVER', 13).
-endif.
-ifndef('RULE-FAILURE-CODE_TDF_APPLICATION_IDENTIFIER_ERROR').
-define('RULE-FAILURE-CODE_TDF_APPLICATION_IDENTIFIER_ERROR', 14).
-endif.
-ifndef('RULE-FAILURE-CODE_NO_BEARER_BOUND').
-define('RULE-FAILURE-CODE_NO_BEARER_BOUND', 15).
-endif.
-ifndef('RULE-FAILURE-CODE_FILTER_RESTRICTIONS').
-define('RULE-FAILURE-CODE_FILTER_RESTRICTIONS', 16).
-endif.
-ifndef('RULE-FAILURE-CODE_AN_GW_FAILED').
-define('RULE-FAILURE-CODE_AN_GW_FAILED', 17).
-endif.
-ifndef('RULE-FAILURE-CODE_MISSING_REDIRECT_SERVER_ADDRESS').
-define('RULE-FAILURE-CODE_MISSING_REDIRECT_SERVER_ADDRESS', 18).
-endif.
-ifndef('RULE-FAILURE-CODE_CM_END_USER_SERVICE_DENIED').
-define('RULE-FAILURE-CODE_CM_END_USER_SERVICE_DENIED', 19).
-endif.
-ifndef('RULE-FAILURE-CODE_CM_CREDIT_CONTROL_NOT_APPLICABLE').
-define('RULE-FAILURE-CODE_CM_CREDIT_CONTROL_NOT_APPLICABLE', 20).
-endif.
-ifndef('RULE-FAILURE-CODE_CM_AUTHORIZATION_REJECTED').
-define('RULE-FAILURE-CODE_CM_AUTHORIZATION_REJECTED', 21).
-endif.
-ifndef('RULE-FAILURE-CODE_CM_USER_UNKNOWN').
-define('RULE-FAILURE-CODE_CM_USER_UNKNOWN', 22).
-endif.
-ifndef('RULE-FAILURE-CODE_CM_RATING_FAILED').
-define('RULE-FAILURE-CODE_CM_RATING_FAILED', 23).
-endif.
-ifndef('SESSION-RELEASE-CAUSE_UNSPECIFIED_REASON').
-define('SESSION-RELEASE-CAUSE_UNSPECIFIED_REASON', 0).
-endif.
-ifndef('SESSION-RELEASE-CAUSE_UE_SUBSCRIPTION_REASON').
-define('SESSION-RELEASE-CAUSE_UE_SUBSCRIPTION_REASON', 1).
-endif.
-ifndef('SESSION-RELEASE-CAUSE_INSUFFICIENT_SERVER_RESOURCES').
-define('SESSION-RELEASE-CAUSE_INSUFFICIENT_SERVER_RESOURCES', 2).
-endif.
-ifndef('SESSION-RELEASE-CAUSE_IP_CAN_SESSION_TERMINATION').
-define('SESSION-RELEASE-CAUSE_IP_CAN_SESSION_TERMINATION', 3).
-endif.
-ifndef('SESSION-RELEASE-CAUSE_UE_IP_ADDRESS_RELEASE').
-define('SESSION-RELEASE-CAUSE_UE_IP_ADDRESS_RELEASE', 4).
-endif.
-ifndef('USAGE-MONITORING-LEVEL_SESSION_LEVEL').
-define('USAGE-MONITORING-LEVEL_SESSION_LEVEL', 0).
-endif.
-ifndef('USAGE-MONITORING-LEVEL_PCC_RULE_LEVEL').
-define('USAGE-MONITORING-LEVEL_PCC_RULE_LEVEL', 1).
-endif.
-ifndef('USAGE-MONITORING-LEVEL_ADC_RULE_LEVEL').
-define('USAGE-MONITORING-LEVEL_ADC_RULE_LEVEL', 2).
-endif.
-ifndef('USAGE-MONITORING-REPORT_USAGE_MONITORING_REPORT_REQUIRED').
-define('USAGE-MONITORING-REPORT_USAGE_MONITORING_REPORT_REQUIRED', 0).
-endif.
-ifndef('USAGE-MONITORING-SUPPORT_USAGE_MONITORING_DISABLED').
-define('USAGE-MONITORING-SUPPORT_USAGE_MONITORING_DISABLED', 0).
-endif.



%%% -------------------------------------------------------
%%% ENUM Macros from diameter_3gpp_ts29_229:
%%% -------------------------------------------------------

-ifndef('SERVER-ASSIGNMENT-TYPE_NO_ASSIGNMENT').
-define('SERVER-ASSIGNMENT-TYPE_NO_ASSIGNMENT', 0).
-endif.
-ifndef('SERVER-ASSIGNMENT-TYPE_REGISTRATION').
-define('SERVER-ASSIGNMENT-TYPE_REGISTRATION', 1).
-endif.
-ifndef('SERVER-ASSIGNMENT-TYPE_RE_REGISTRATION').
-define('SERVER-ASSIGNMENT-TYPE_RE_REGISTRATION', 2).
-endif.
-ifndef('SERVER-ASSIGNMENT-TYPE_UNREGISTERED_USER').
-define('SERVER-ASSIGNMENT-TYPE_UNREGISTERED_USER', 3).
-endif.
-ifndef('SERVER-ASSIGNMENT-TYPE_TIMEOUT_DEREGISTRATION').
-define('SERVER-ASSIGNMENT-TYPE_TIMEOUT_DEREGISTRATION', 4).
-endif.
-ifndef('SERVER-ASSIGNMENT-TYPE_USER_DEREGISTRATION').
-define('SERVER-ASSIGNMENT-TYPE_USER_DEREGISTRATION', 5).
-endif.
-ifndef('SERVER-ASSIGNMENT-TYPE_TIMEOUT_DEREGISTRATION_STORE_SERVER_NAME').
-define('SERVER-ASSIGNMENT-TYPE_TIMEOUT_DEREGISTRATION_STORE_SERVER_NAME', 6).
-endif.
-ifndef('SERVER-ASSIGNMENT-TYPE_USER_DEREGISTRATION_STORE_SERVER_NAME').
-define('SERVER-ASSIGNMENT-TYPE_USER_DEREGISTRATION_STORE_SERVER_NAME', 7).
-endif.
-ifndef('SERVER-ASSIGNMENT-TYPE_ADMINISTRATIVE_DEREGISTRATION').
-define('SERVER-ASSIGNMENT-TYPE_ADMINISTRATIVE_DEREGISTRATION', 8).
-endif.
-ifndef('SERVER-ASSIGNMENT-TYPE_AUTHENTICATION_FAILURE').
-define('SERVER-ASSIGNMENT-TYPE_AUTHENTICATION_FAILURE', 9).
-endif.
-ifndef('SERVER-ASSIGNMENT-TYPE_AUTHENTICATION_TIMEOUT').
-define('SERVER-ASSIGNMENT-TYPE_AUTHENTICATION_TIMEOUT', 10).
-endif.
-ifndef('SERVER-ASSIGNMENT-TYPE_DEREGISTRATION_TOO_MUCH_DATA').
-define('SERVER-ASSIGNMENT-TYPE_DEREGISTRATION_TOO_MUCH_DATA', 11).
-endif.
-ifndef('SERVER-ASSIGNMENT-TYPE_AAA_USER_DATA_REQUEST').
-define('SERVER-ASSIGNMENT-TYPE_AAA_USER_DATA_REQUEST', 12).
-endif.
-ifndef('SERVER-ASSIGNMENT-TYPE_PGW_UPDATE').
-define('SERVER-ASSIGNMENT-TYPE_PGW_UPDATE', 13).
-endif.
-ifndef('SERVER-ASSIGNMENT-TYPE_RESTORATION').
-define('SERVER-ASSIGNMENT-TYPE_RESTORATION', 14).
-endif.
-ifndef('REASON-CODE_PERMANENT_TERMINATION').
-define('REASON-CODE_PERMANENT_TERMINATION', 0).
-endif.
-ifndef('REASON-CODE_NEW_SERVER_ASSIGNED').
-define('REASON-CODE_NEW_SERVER_ASSIGNED', 1).
-endif.
-ifndef('REASON-CODE_SERVER_CHANGE').
-define('REASON-CODE_SERVER_CHANGE', 2).
-endif.
-ifndef('REASON-CODE_REMOVE_S-CSCF').
-define('REASON-CODE_REMOVE_S-CSCF', 3).
-endif.



%%% -------------------------------------------------------
%%% ENUM Macros from diameter_3gpp_ts29_272:
%%% -------------------------------------------------------

-ifndef('NETWORK-ACCESS-MODE_PACKET_AND_CIRCUIT').
-define('NETWORK-ACCESS-MODE_PACKET_AND_CIRCUIT', 0).
-endif.
-ifndef('NETWORK-ACCESS-MODE_RESERVED').
-define('NETWORK-ACCESS-MODE_RESERVED', 1).
-endif.
-ifndef('NETWORK-ACCESS-MODE_ONLY_PACKET').
-define('NETWORK-ACCESS-MODE_ONLY_PACKET', 2).
-endif.
-ifndef('CANCELLATION-TYPE_MME_UPDATE_PROCEDURE').
-define('CANCELLATION-TYPE_MME_UPDATE_PROCEDURE', 0).
-endif.
-ifndef('CANCELLATION-TYPE_SGSN_UPDATE_PROCEDURE').
-define('CANCELLATION-TYPE_SGSN_UPDATE_PROCEDURE', 1).
-endif.
-ifndef('CANCELLATION-TYPE_SUBSCRIPTION_WITHDRAWAL').
-define('CANCELLATION-TYPE_SUBSCRIPTION_WITHDRAWAL', 2).
-endif.
-ifndef('CANCELLATION-TYPE_UPDATE_PROCEDURE_IWF').
-define('CANCELLATION-TYPE_UPDATE_PROCEDURE_IWF', 3).
-endif.
-ifndef('CANCELLATION-TYPE_INITIAL_ATTACH_PROCEDURE').
-define('CANCELLATION-TYPE_INITIAL_ATTACH_PROCEDURE', 4).
-endif.
-ifndef('SUBSCRIBER-STATUS_SERVICE_GRANTED').
-define('SUBSCRIBER-STATUS_SERVICE_GRANTED', 0).
-endif.
-ifndef('SUBSCRIBER-STATUS_OPERATOR_DETERMINED_BARRING').
-define('SUBSCRIBER-STATUS_OPERATOR_DETERMINED_BARRING', 1).
-endif.
-ifndef('ALL-APN-CONFIGURATIONS-INCLUDED-INDICATOR_ALL_APN_CONFIGURATIONS_INCLUDED').
-define('ALL-APN-CONFIGURATIONS-INCLUDED-INDICATOR_ALL_APN_CONFIGURATIONS_INCLUDED', 0).
-endif.
-ifndef('ALL-APN-CONFIGURATIONS-INCLUDED-INDICATOR_MODIFIED_ADDED_APN_CONFIGURATIONS_INCLUDED').
-define('ALL-APN-CONFIGURATIONS-INCLUDED-INDICATOR_MODIFIED_ADDED_APN_CONFIGURATIONS_INCLUDED', 1).
-endif.
-ifndef('VPLMN-DYNAMIC-ADDRESS-ALLOWED_NOTALLOWED').
-define('VPLMN-DYNAMIC-ADDRESS-ALLOWED_NOTALLOWED', 0).
-endif.
-ifndef('VPLMN-DYNAMIC-ADDRESS-ALLOWED_ALLOWED').
-define('VPLMN-DYNAMIC-ADDRESS-ALLOWED_ALLOWED', 1).
-endif.
-ifndef('PDN-GW-ALLOCATION-TYPE_STATIC').
-define('PDN-GW-ALLOCATION-TYPE_STATIC', 0).
-endif.
-ifndef('PDN-GW-ALLOCATION-TYPE_DYNAMIC').
-define('PDN-GW-ALLOCATION-TYPE_DYNAMIC', 1).
-endif.
-ifndef('EQUIPMENT-STATUS_WHITELISTED').
-define('EQUIPMENT-STATUS_WHITELISTED', 0).
-endif.
-ifndef('EQUIPMENT-STATUS_BLACKLISTED').
-define('EQUIPMENT-STATUS_BLACKLISTED', 1).
-endif.
-ifndef('EQUIPMENT-STATUS_GREYLISTED').
-define('EQUIPMENT-STATUS_GREYLISTED', 2).
-endif.
-ifndef('PDN-TYPE_IPV4').
-define('PDN-TYPE_IPV4', 0).
-endif.
-ifndef('PDN-TYPE_IPV6').
-define('PDN-TYPE_IPV6', 1).
-endif.
-ifndef('PDN-TYPE_IPV4V6').
-define('PDN-TYPE_IPV4V6', 2).
-endif.
-ifndef('PDN-TYPE_IPV4_OR_IPV6').
-define('PDN-TYPE_IPV4_OR_IPV6', 3).
-endif.
-ifndef('COMPLETE-DATA-LIST-INCLUDED-INDICATOR_ALL_PDP_CONTEXTS_INCLUDED').
-define('COMPLETE-DATA-LIST-INCLUDED-INDICATOR_ALL_PDP_CONTEXTS_INCLUDED', 0).
-endif.
-ifndef('COMPLETE-DATA-LIST-INCLUDED-INDICATOR_MODIFIED_ADDED_PDP_CONTEXTS_INCLUDED').
-define('COMPLETE-DATA-LIST-INCLUDED-INDICATOR_MODIFIED_ADDED_PDP_CONTEXTS_INCLUDED', 1).
-endif.
-ifndef('ROAMING-RESTRICTED-DUE-TO-UNSUPPORTED-FEATURE_ROAMING_RESTRICTED_DUE_TO_UNSUPPORTED_FEATURE').
-define('ROAMING-RESTRICTED-DUE-TO-UNSUPPORTED-FEATURE_ROAMING_RESTRICTED_DUE_TO_UNSUPPORTED_FEATURE', 0).
-endif.
-ifndef('ALERT-REASON_UE_PRESENT').
-define('ALERT-REASON_UE_PRESENT', 0).
-endif.
-ifndef('ALERT-REASON_UE_MEMORY_AVAILABLE').
-define('ALERT-REASON_UE_MEMORY_AVAILABLE', 1).
-endif.
-ifndef('NOTIFICATION-TO-UE-USER_NOTIFY_LOCATION_ALLOWED').
-define('NOTIFICATION-TO-UE-USER_NOTIFY_LOCATION_ALLOWED', 0).
-endif.
-ifndef('NOTIFICATION-TO-UE-USER_NOTIFYANDVERIFY_LOCATION_ALLOWED_IF_NO_RESPONSE').
-define('NOTIFICATION-TO-UE-USER_NOTIFYANDVERIFY_LOCATION_ALLOWED_IF_NO_RESPONSE', 1).
-endif.
-ifndef('NOTIFICATION-TO-UE-USER_NOTIFYANDVERIFY_LOCATION_NOT_ALLOWED_IF_NO_RESPONSE').
-define('NOTIFICATION-TO-UE-USER_NOTIFYANDVERIFY_LOCATION_NOT_ALLOWED_IF_NO_RESPONSE', 2).
-endif.
-ifndef('NOTIFICATION-TO-UE-USER_LOCATION_NOT_ALLOWED').
-define('NOTIFICATION-TO-UE-USER_LOCATION_NOT_ALLOWED', 3).
-endif.
-ifndef('GMLC-RESTRICTION_GMLC_LIST').
-define('GMLC-RESTRICTION_GMLC_LIST', 0).
-endif.
-ifndef('GMLC-RESTRICTION_HOME_COUNTRY').
-define('GMLC-RESTRICTION_HOME_COUNTRY', 1).
-endif.
-ifndef('PLMN-CLIENT_BROADCAST_SERVICE').
-define('PLMN-CLIENT_BROADCAST_SERVICE', 0).
-endif.
-ifndef('PLMN-CLIENT_O_AND_M_HPLMN').
-define('PLMN-CLIENT_O_AND_M_HPLMN', 1).
-endif.
-ifndef('PLMN-CLIENT_O_AND_M_VPLMN').
-define('PLMN-CLIENT_O_AND_M_VPLMN', 2).
-endif.
-ifndef('PLMN-CLIENT_ANONYMOUS_LOCATION').
-define('PLMN-CLIENT_ANONYMOUS_LOCATION', 3).
-endif.
-ifndef('PLMN-CLIENT_TARGET_UE_SUBSCRIBED_SERVICE').
-define('PLMN-CLIENT_TARGET_UE_SUBSCRIBED_SERVICE', 4).
-endif.
-ifndef('ICS-INDICATOR_FALSE').
-define('ICS-INDICATOR_FALSE', 0).
-endif.
-ifndef('ICS-INDICATOR_TRUE').
-define('ICS-INDICATOR_TRUE', 1).
-endif.
-ifndef('IMS-VOICE-OVER-PS-SESSIONS-SUPPORTED_NOT_SUPPORTED').
-define('IMS-VOICE-OVER-PS-SESSIONS-SUPPORTED_NOT_SUPPORTED', 0).
-endif.
-ifndef('IMS-VOICE-OVER-PS-SESSIONS-SUPPORTED_SUPPORTED').
-define('IMS-VOICE-OVER-PS-SESSIONS-SUPPORTED_SUPPORTED', 1).
-endif.
-ifndef('HOMOGENEOUS-SUPPORT-OF-IMS-VOICE-OVER-PS-SESSIONS_NOT_SUPPORTED').
-define('HOMOGENEOUS-SUPPORT-OF-IMS-VOICE-OVER-PS-SESSIONS_NOT_SUPPORTED', 0).
-endif.
-ifndef('HOMOGENEOUS-SUPPORT-OF-IMS-VOICE-OVER-PS-SESSIONS_SUPPORTED').
-define('HOMOGENEOUS-SUPPORT-OF-IMS-VOICE-OVER-PS-SESSIONS_SUPPORTED', 1).
-endif.
-ifndef('USER-STATE_DETACHED').
-define('USER-STATE_DETACHED', 0).
-endif.
-ifndef('USER-STATE_ATTACHED_NOT_REACHABLE_FOR_PAGING').
-define('USER-STATE_ATTACHED_NOT_REACHABLE_FOR_PAGING', 1).
-endif.
-ifndef('USER-STATE_ATTACHED_REACHABLE_FOR_PAGING').
-define('USER-STATE_ATTACHED_REACHABLE_FOR_PAGING', 2).
-endif.
-ifndef('USER-STATE_CONNECTED_NOT_REACHABLE_FOR_PAGING').
-define('USER-STATE_CONNECTED_NOT_REACHABLE_FOR_PAGING', 3).
-endif.
-ifndef('USER-STATE_CONNECTED_REACHABLE_FOR_PAGING').
-define('USER-STATE_CONNECTED_REACHABLE_FOR_PAGING', 4).
-endif.
-ifndef('USER-STATE_NETWORK_DETERMINED_NOT_REACHABLE').
-define('USER-STATE_NETWORK_DETERMINED_NOT_REACHABLE', 5).
-endif.
-ifndef('CURRENT-LOCATION-RETRIEVED_ACTIVE-LOCATION-RETRIEVAL').
-define('CURRENT-LOCATION-RETRIEVED_ACTIVE-LOCATION-RETRIEVAL', 0).
-endif.
-ifndef('ERROR-DIAGNOSTIC_GPRS_DATA_SUBSCRIBED').
-define('ERROR-DIAGNOSTIC_GPRS_DATA_SUBSCRIBED', 0).
-endif.
-ifndef('ERROR-DIAGNOSTIC_NO_GPRS_DATA_SUBSCRIBED').
-define('ERROR-DIAGNOSTIC_NO_GPRS_DATA_SUBSCRIBED', 1).
-endif.
-ifndef('ERROR-DIAGNOSTIC_ODB-ALL-APN').
-define('ERROR-DIAGNOSTIC_ODB-ALL-APN', 2).
-endif.
-ifndef('ERROR-DIAGNOSTIC_ODB-HPLMN-APN').
-define('ERROR-DIAGNOSTIC_ODB-HPLMN-APN', 3).
-endif.
-ifndef('ERROR-DIAGNOSTIC_ODB-VPLMN-APN').
-define('ERROR-DIAGNOSTIC_ODB-VPLMN-APN', 4).
-endif.
-ifndef('UE-SRVCC-CAPABILITY_UE-SRVCC-NOT-SUPPORTED').
-define('UE-SRVCC-CAPABILITY_UE-SRVCC-NOT-SUPPORTED', 0).
-endif.
-ifndef('UE-SRVCC-CAPABILITY_UE-SRVCC-SUPPORTED').
-define('UE-SRVCC-CAPABILITY_UE-SRVCC-SUPPORTED', 1).
-endif.
-ifndef('VPLMN-LIPA-ALLOWED_LIPA-NOTALLOWED').
-define('VPLMN-LIPA-ALLOWED_LIPA-NOTALLOWED', 0).
-endif.
-ifndef('VPLMN-LIPA-ALLOWED_LIPA-ALLOWED').
-define('VPLMN-LIPA-ALLOWED_LIPA-ALLOWED', 1).
-endif.
-ifndef('LIPA-PERMISSION_LIPA-PROHIBITED').
-define('LIPA-PERMISSION_LIPA-PROHIBITED', 0).
-endif.
-ifndef('LIPA-PERMISSION_LIPA-ONLY').
-define('LIPA-PERMISSION_LIPA-ONLY', 1).
-endif.
-ifndef('LIPA-PERMISSION_LIPA-CONDITIONAL').
-define('LIPA-PERMISSION_LIPA-CONDITIONAL', 2).
-endif.
-ifndef('SIPTO-PERMISSION_SIPTO_ALLOWED').
-define('SIPTO-PERMISSION_SIPTO_ALLOWED', 0).
-endif.
-ifndef('SIPTO-PERMISSION_SIPTO_NOTALLOWED').
-define('SIPTO-PERMISSION_SIPTO_NOTALLOWED', 1).
-endif.
-ifndef('RELAY-NODE-INDICATOR_NOT_RELAY_NODE').
-define('RELAY-NODE-INDICATOR_NOT_RELAY_NODE', 0).
-endif.
-ifndef('RELAY-NODE-INDICATOR_RELAY_NODE').
-define('RELAY-NODE-INDICATOR_RELAY_NODE', 1).
-endif.
-ifndef('MDT-USER-CONSENT_CONSENT_NOT_GIVEN').
-define('MDT-USER-CONSENT_CONSENT_NOT_GIVEN', 0).
-endif.
-ifndef('MDT-USER-CONSENT_CONSENT_GIVEN').
-define('MDT-USER-CONSENT_CONSENT_GIVEN', 1).
-endif.
-ifndef('SUBSCRIBED-VSRVCC_VSRVCC_SUBSCRIBED').
-define('SUBSCRIBED-VSRVCC_VSRVCC_SUBSCRIBED', 0).
-endif.
-ifndef('SMS-REGISTER-REQUEST_SMS_REGISTRATION_REQUIRED').
-define('SMS-REGISTER-REQUEST_SMS_REGISTRATION_REQUIRED', 0).
-endif.
-ifndef('SMS-REGISTER-REQUEST_SMS_REGISTRATION_NOT_PREFERRED').
-define('SMS-REGISTER-REQUEST_SMS_REGISTRATION_NOT_PREFERRED', 1).
-endif.
-ifndef('SMS-REGISTER-REQUEST_NO_PREFERENCE').
-define('SMS-REGISTER-REQUEST_NO_PREFERENCE', 2).
-endif.
-ifndef('DAYLIGHT-SAVING-TIME_NO_ADJUSTMENT').
-define('DAYLIGHT-SAVING-TIME_NO_ADJUSTMENT', 0).
-endif.
-ifndef('DAYLIGHT-SAVING-TIME_PLUS_ONE_HOUR_ADJUSTMENT').
-define('DAYLIGHT-SAVING-TIME_PLUS_ONE_HOUR_ADJUSTMENT', 1).
-endif.
-ifndef('DAYLIGHT-SAVING-TIME_PLUS_TWO_HOURS_ADJUSTMENT').
-define('DAYLIGHT-SAVING-TIME_PLUS_TWO_HOURS_ADJUSTMENT', 2).
-endif.



%%% -------------------------------------------------------
%%% ENUM Macros from diameter_3gpp_ts29_273:
%%% -------------------------------------------------------

-ifndef('AN-TRUSTED_TRUSTED').
-define('AN-TRUSTED_TRUSTED', 0).
-endif.
-ifndef('AN-TRUSTED_UNTRUSTED').
-define('AN-TRUSTED_UNTRUSTED', 1).
-endif.
-ifndef('TRANSPORT-ACCESS-TYPE_BBF').
-define('TRANSPORT-ACCESS-TYPE_BBF', 0).
-endif.
-ifndef('NON-3GPP-IP-ACCESS_NON_3GPP_SUBSCRIPTION_ALLOWED').
-define('NON-3GPP-IP-ACCESS_NON_3GPP_SUBSCRIPTION_ALLOWED', 0).
-endif.
-ifndef('NON-3GPP-IP-ACCESS_NON_3GPP_SUBSCRIPTION_BARRED').
-define('NON-3GPP-IP-ACCESS_NON_3GPP_SUBSCRIPTION_BARRED', 1).
-endif.
-ifndef('NON-3GPP-IP-ACCESS-APN_NON_3GPP_APNS_ENABLE').
-define('NON-3GPP-IP-ACCESS-APN_NON_3GPP_APNS_ENABLE', 0).
-endif.
-ifndef('NON-3GPP-IP-ACCESS-APN_NON_3GPP_APNS_DISABLE').
-define('NON-3GPP-IP-ACCESS-APN_NON_3GPP_APNS_DISABLE', 1).
-endif.



%%% -------------------------------------------------------
%%% ENUM Macros from diameter_3gpp_ts32_299:
%%% -------------------------------------------------------

-ifndef('3GPP-PS-DATA-OFF-STATUS_ACTIVE').
-define('3GPP-PS-DATA-OFF-STATUS_ACTIVE', 0).
-endif.
-ifndef('3GPP-PS-DATA-OFF-STATUS_INACTIVE').
-define('3GPP-PS-DATA-OFF-STATUS_INACTIVE', 1).
-endif.
-ifndef('ACCESS-TRANSFER-TYPE_PS-TO-CS-TRANSFER').
-define('ACCESS-TRANSFER-TYPE_PS-TO-CS-TRANSFER', 0).
-endif.
-ifndef('ACCESS-TRANSFER-TYPE_CS-TO-PS-TRANSFER').
-define('ACCESS-TRANSFER-TYPE_CS-TO-PS-TRANSFER', 1).
-endif.
-ifndef('ACCESS-TRANSFER-TYPE_PS-TO-PS-TRANSFER').
-define('ACCESS-TRANSFER-TYPE_PS-TO-PS-TRANSFER', 2).
-endif.
-ifndef('ACCESS-TRANSFER-TYPE_CS-TO-CS-TRANSFER').
-define('ACCESS-TRANSFER-TYPE_CS-TO-CS-TRANSFER', 3).
-endif.
-ifndef('ADAPTATIONS_YES').
-define('ADAPTATIONS_YES', 0).
-endif.
-ifndef('ADAPTATIONS_NO').
-define('ADAPTATIONS_NO', 1).
-endif.
-ifndef('ADDITIONAL-EXCEPTION-REPORTS_NOT-ALLOWED').
-define('ADDITIONAL-EXCEPTION-REPORTS_NOT-ALLOWED', 0).
-endif.
-ifndef('ADDITIONAL-EXCEPTION-REPORTS_ALLOWED').
-define('ADDITIONAL-EXCEPTION-REPORTS_ALLOWED', 1).
-endif.
-ifndef('ADDRESS-TYPE_E-MAIL-ADDRESS').
-define('ADDRESS-TYPE_E-MAIL-ADDRESS', 0).
-endif.
-ifndef('ADDRESS-TYPE_MSISDN').
-define('ADDRESS-TYPE_MSISDN', 1).
-endif.
-ifndef('ADDRESS-TYPE_IPV4-ADDRESS').
-define('ADDRESS-TYPE_IPV4-ADDRESS', 2).
-endif.
-ifndef('ADDRESS-TYPE_IPV6-ADDRESS').
-define('ADDRESS-TYPE_IPV6-ADDRESS', 3).
-endif.
-ifndef('ADDRESS-TYPE_NUMERIC-SHORTCODE').
-define('ADDRESS-TYPE_NUMERIC-SHORTCODE', 4).
-endif.
-ifndef('ADDRESS-TYPE_ALPHANUMERIC-SHORTCODE').
-define('ADDRESS-TYPE_ALPHANUMERIC-SHORTCODE', 5).
-endif.
-ifndef('ADDRESS-TYPE_OTHER').
-define('ADDRESS-TYPE_OTHER', 6).
-endif.
-ifndef('ADDRESS-TYPE_IMSI').
-define('ADDRESS-TYPE_IMSI', 7).
-endif.
-ifndef('ADDRESSEE-TYPE_TO').
-define('ADDRESSEE-TYPE_TO', 0).
-endif.
-ifndef('ADDRESSEE-TYPE_CC').
-define('ADDRESSEE-TYPE_CC', 1).
-endif.
-ifndef('ADDRESSEE-TYPE_BCC').
-define('ADDRESSEE-TYPE_BCC', 2).
-endif.
-ifndef('AOC-FORMAT_MONETARY').
-define('AOC-FORMAT_MONETARY', 0).
-endif.
-ifndef('AOC-FORMAT_NON_MONETARY').
-define('AOC-FORMAT_NON_MONETARY', 1).
-endif.
-ifndef('AOC-FORMAT_CAI').
-define('AOC-FORMAT_CAI', 2).
-endif.
-ifndef('AOC-REQUEST-TYPE_AOC_NOT_REQUESTED').
-define('AOC-REQUEST-TYPE_AOC_NOT_REQUESTED', 0).
-endif.
-ifndef('AOC-REQUEST-TYPE_AOC_FULL').
-define('AOC-REQUEST-TYPE_AOC_FULL', 1).
-endif.
-ifndef('AOC-REQUEST-TYPE_AOC_COST_ONLY').
-define('AOC-REQUEST-TYPE_AOC_COST_ONLY', 2).
-endif.
-ifndef('AOC-REQUEST-TYPE_AOC_TARIFF_ONLY').
-define('AOC-REQUEST-TYPE_AOC_TARIFF_ONLY', 3).
-endif.
-ifndef('AOC-SERVICE-OBLIGATORY-TYPE_NON_BINDING').
-define('AOC-SERVICE-OBLIGATORY-TYPE_NON_BINDING', 0).
-endif.
-ifndef('AOC-SERVICE-OBLIGATORY-TYPE_BINDING').
-define('AOC-SERVICE-OBLIGATORY-TYPE_BINDING', 1).
-endif.
-ifndef('AOC-SERVICE-TYPE_NONE').
-define('AOC-SERVICE-TYPE_NONE', 0).
-endif.
-ifndef('AOC-SERVICE-TYPE_AOC-S').
-define('AOC-SERVICE-TYPE_AOC-S', 1).
-endif.
-ifndef('AOC-SERVICE-TYPE_AOC-D').
-define('AOC-SERVICE-TYPE_AOC-D', 2).
-endif.
-ifndef('AOC-SERVICE-TYPE_AOC-E').
-define('AOC-SERVICE-TYPE_AOC-E', 3).
-endif.
-ifndef('CHARGE-REASON-CODE_UNKNOWN').
-define('CHARGE-REASON-CODE_UNKNOWN', 0).
-endif.
-ifndef('CHARGE-REASON-CODE_USAGE').
-define('CHARGE-REASON-CODE_USAGE', 1).
-endif.
-ifndef('CHARGE-REASON-CODE_COMMUNICATION-ATTEMPT-CHARGE').
-define('CHARGE-REASON-CODE_COMMUNICATION-ATTEMPT-CHARGE', 2).
-endif.
-ifndef('CHARGE-REASON-CODE_SETUP-CHARGE').
-define('CHARGE-REASON-CODE_SETUP-CHARGE', 3).
-endif.
-ifndef('CHARGE-REASON-CODE_ADD-ON-CHARGE').
-define('CHARGE-REASON-CODE_ADD-ON-CHARGE', 4).
-endif.
-ifndef('CHARGING-CHARACTERISTICS-SELECTION-MODE_SERVING-NODE-SUPPLIED').
-define('CHARGING-CHARACTERISTICS-SELECTION-MODE_SERVING-NODE-SUPPLIED', 0).
-endif.
-ifndef('CHARGING-CHARACTERISTICS-SELECTION-MODE_SUBSCRIPTION-SPECIFIC').
-define('CHARGING-CHARACTERISTICS-SELECTION-MODE_SUBSCRIPTION-SPECIFIC', 1).
-endif.
-ifndef('CHARGING-CHARACTERISTICS-SELECTION-MODE_APN-SPECIFIC').
-define('CHARGING-CHARACTERISTICS-SELECTION-MODE_APN-SPECIFIC', 2).
-endif.
-ifndef('CHARGING-CHARACTERISTICS-SELECTION-MODE_HOME-DEFAULT').
-define('CHARGING-CHARACTERISTICS-SELECTION-MODE_HOME-DEFAULT', 3).
-endif.
-ifndef('CHARGING-CHARACTERISTICS-SELECTION-MODE_ROAMING-DEFAULT').
-define('CHARGING-CHARACTERISTICS-SELECTION-MODE_ROAMING-DEFAULT', 4).
-endif.
-ifndef('CHARGING-CHARACTERISTICS-SELECTION-MODE_VISITING-DEFAULT').
-define('CHARGING-CHARACTERISTICS-SELECTION-MODE_VISITING-DEFAULT', 5).
-endif.
-ifndef('CHARGING-PER-IP-CAN-SESSION-INDICATOR_INACTIVE').
-define('CHARGING-PER-IP-CAN-SESSION-INDICATOR_INACTIVE', 0).
-endif.
-ifndef('CHARGING-PER-IP-CAN-SESSION-INDICATOR_ACTIVE').
-define('CHARGING-PER-IP-CAN-SESSION-INDICATOR_ACTIVE', 1).
-endif.
-ifndef('CLASS-IDENTIFIER_PERSONAL').
-define('CLASS-IDENTIFIER_PERSONAL', 0).
-endif.
-ifndef('CLASS-IDENTIFIER_ADVERTISEMENT').
-define('CLASS-IDENTIFIER_ADVERTISEMENT', 1).
-endif.
-ifndef('CLASS-IDENTIFIER_INFORMATIONAL').
-define('CLASS-IDENTIFIER_INFORMATIONAL', 2).
-endif.
-ifndef('CLASS-IDENTIFIER_AUTO').
-define('CLASS-IDENTIFIER_AUTO', 3).
-endif.
-ifndef('CN-OPERATOR-SELECTION-ENTITY_THE-SERVING-NETWORK-HAS-BEEN-SELECTED-BY-THE-UE').
-define('CN-OPERATOR-SELECTION-ENTITY_THE-SERVING-NETWORK-HAS-BEEN-SELECTED-BY-THE-UE', 0).
-endif.
-ifndef('CN-OPERATOR-SELECTION-ENTITY_THE-SERVING-NETWORK-HAS-BEEN-SELECTED-BY-THE-NETWORK').
-define('CN-OPERATOR-SELECTION-ENTITY_THE-SERVING-NETWORK-HAS-BEEN-SELECTED-BY-THE-NETWORK', 1).
-endif.
-ifndef('CONTENT-CLASS_TEXT').
-define('CONTENT-CLASS_TEXT', 0).
-endif.
-ifndef('CONTENT-CLASS_IMAGE-BASIC').
-define('CONTENT-CLASS_IMAGE-BASIC', 1).
-endif.
-ifndef('CONTENT-CLASS_IMAGE-RICH').
-define('CONTENT-CLASS_IMAGE-RICH', 2).
-endif.
-ifndef('CONTENT-CLASS_VIDEO-BASIC').
-define('CONTENT-CLASS_VIDEO-BASIC', 3).
-endif.
-ifndef('CONTENT-CLASS_VIDEO-RICH').
-define('CONTENT-CLASS_VIDEO-RICH', 4).
-endif.
-ifndef('CONTENT-CLASS_MEGAPIXEL').
-define('CONTENT-CLASS_MEGAPIXEL', 5).
-endif.
-ifndef('CONTENT-CLASS_CONTENT-BASIC').
-define('CONTENT-CLASS_CONTENT-BASIC', 6).
-endif.
-ifndef('CONTENT-CLASS_CONTENT-RICH').
-define('CONTENT-CLASS_CONTENT-RICH', 7).
-endif.
-ifndef('COVERAGE-STATUS_OUT-OF-COVERAGE').
-define('COVERAGE-STATUS_OUT-OF-COVERAGE', 0).
-endif.
-ifndef('COVERAGE-STATUS_IN-COVERAGE').
-define('COVERAGE-STATUS_IN-COVERAGE', 1).
-endif.
-ifndef('CP-CIOT-EPS-OPTIMISATION-INDICATOR_NOT-APPLY').
-define('CP-CIOT-EPS-OPTIMISATION-INDICATOR_NOT-APPLY', 0).
-endif.
-ifndef('CP-CIOT-EPS-OPTIMISATION-INDICATOR_APPLY').
-define('CP-CIOT-EPS-OPTIMISATION-INDICATOR_APPLY', 1).
-endif.
-ifndef('CSG-ACCESS-MODE_CLOSED-MODE').
-define('CSG-ACCESS-MODE_CLOSED-MODE', 0).
-endif.
-ifndef('CSG-ACCESS-MODE_HYBRID-MODE').
-define('CSG-ACCESS-MODE_HYBRID-MODE', 1).
-endif.
-ifndef('CSG-MEMBERSHIP-INDICATION_NOT-CSG-MEMBER').
-define('CSG-MEMBERSHIP-INDICATION_NOT-CSG-MEMBER', 0).
-endif.
-ifndef('CSG-MEMBERSHIP-INDICATION_CSG-MEMBER').
-define('CSG-MEMBERSHIP-INDICATION_CSG-MEMBER', 1).
-endif.
-ifndef('DELIVERY-REPORT-REQUESTED_NO').
-define('DELIVERY-REPORT-REQUESTED_NO', 0).
-endif.
-ifndef('DELIVERY-REPORT-REQUESTED_YES').
-define('DELIVERY-REPORT-REQUESTED_YES', 1).
-endif.
-ifndef('DRM-CONTENT_NO').
-define('DRM-CONTENT_NO', 0).
-endif.
-ifndef('DRM-CONTENT_YES').
-define('DRM-CONTENT_YES', 1).
-endif.
-ifndef('DYNAMIC-ADDRESS-FLAG_STATIC').
-define('DYNAMIC-ADDRESS-FLAG_STATIC', 0).
-endif.
-ifndef('DYNAMIC-ADDRESS-FLAG_DYNAMIC').
-define('DYNAMIC-ADDRESS-FLAG_DYNAMIC', 1).
-endif.
-ifndef('DYNAMIC-ADDRESS-FLAG-EXTENSION_STATIC').
-define('DYNAMIC-ADDRESS-FLAG-EXTENSION_STATIC', 0).
-endif.
-ifndef('DYNAMIC-ADDRESS-FLAG-EXTENSION_DYNAMIC').
-define('DYNAMIC-ADDRESS-FLAG-EXTENSION_DYNAMIC', 1).
-endif.
-ifndef('ENVELOPE-REPORTING_DO_NOT_REPORT_ENVELOPES').
-define('ENVELOPE-REPORTING_DO_NOT_REPORT_ENVELOPES', 0).
-endif.
-ifndef('ENVELOPE-REPORTING_REPORT_ENVELOPES').
-define('ENVELOPE-REPORTING_REPORT_ENVELOPES', 1).
-endif.
-ifndef('ENVELOPE-REPORTING_REPORT_ENVELOPES_WITH_VOLUME').
-define('ENVELOPE-REPORTING_REPORT_ENVELOPES_WITH_VOLUME', 2).
-endif.
-ifndef('ENVELOPE-REPORTING_REPORT_ENVELOPES_WITH_EVENTS').
-define('ENVELOPE-REPORTING_REPORT_ENVELOPES_WITH_EVENTS', 3).
-endif.
-ifndef('ENVELOPE-REPORTING_REPORT_ENVELOPES_WITH_VOLUME_AND_EVENTS').
-define('ENVELOPE-REPORTING_REPORT_ENVELOPES_WITH_VOLUME_AND_EVENTS', 4).
-endif.
-ifndef('FILE-REPAIR-SUPPORTED_SUPPORTED').
-define('FILE-REPAIR-SUPPORTED_SUPPORTED', 1).
-endif.
-ifndef('FILE-REPAIR-SUPPORTED_NOT_SUPPORTED').
-define('FILE-REPAIR-SUPPORTED_NOT_SUPPORTED', 2).
-endif.
-ifndef('FORWARDING-PENDING_FORWARDING-NOT-PENDING').
-define('FORWARDING-PENDING_FORWARDING-NOT-PENDING', 0).
-endif.
-ifndef('FORWARDING-PENDING_FORWARDING-PENDING').
-define('FORWARDING-PENDING_FORWARDING-PENDING', 1).
-endif.
-ifndef('INTERFACE-TYPE_UNKNOWN').
-define('INTERFACE-TYPE_UNKNOWN', 0).
-endif.
-ifndef('INTERFACE-TYPE_MOBILE_ORIGINATING').
-define('INTERFACE-TYPE_MOBILE_ORIGINATING', 1).
-endif.
-ifndef('INTERFACE-TYPE_MOBILE_TERMINATING').
-define('INTERFACE-TYPE_MOBILE_TERMINATING', 2).
-endif.
-ifndef('INTERFACE-TYPE_APPLICATION_ORIGINATING').
-define('INTERFACE-TYPE_APPLICATION_ORIGINATING', 3).
-endif.
-ifndef('INTERFACE-TYPE_APPLICATION_TERMINATION').
-define('INTERFACE-TYPE_APPLICATION_TERMINATION', 4).
-endif.
-ifndef('INTER-UE-TRANSFER_INTRA-UE-TRANSFER').
-define('INTER-UE-TRANSFER_INTRA-UE-TRANSFER', 0).
-endif.
-ifndef('INTER-UE-TRANSFER_INTER-UE-TRANSFER').
-define('INTER-UE-TRANSFER_INTER-UE-TRANSFER', 1).
-endif.
-ifndef('IMS-EMERGENCY-INDICATOR_NON-EMERGENCY').
-define('IMS-EMERGENCY-INDICATOR_NON-EMERGENCY', 0).
-endif.
-ifndef('IMS-EMERGENCY-INDICATOR_EMERGENCY').
-define('IMS-EMERGENCY-INDICATOR_EMERGENCY', 1).
-endif.
-ifndef('IMSI-UNAUTHENTICATED-FLAG_AUTHENTICATED').
-define('IMSI-UNAUTHENTICATED-FLAG_AUTHENTICATED', 0).
-endif.
-ifndef('IMSI-UNAUTHENTICATED-FLAG_UNAUTHENTICATED').
-define('IMSI-UNAUTHENTICATED-FLAG_UNAUTHENTICATED', 1).
-endif.
-ifndef('IP-REALM-DEFAULT-INDICATION_DEFAULT-IP-REALM-NOT-USED').
-define('IP-REALM-DEFAULT-INDICATION_DEFAULT-IP-REALM-NOT-USED', 0).
-endif.
-ifndef('IP-REALM-DEFAULT-INDICATION_DEFAULT-IP-REALM-USED').
-define('IP-REALM-DEFAULT-INDICATION_DEFAULT-IP-REALM-USED', 1).
-endif.
-ifndef('LCS-CLIENT-TYPE_EMERGENCY_SERVICES').
-define('LCS-CLIENT-TYPE_EMERGENCY_SERVICES', 0).
-endif.
-ifndef('LCS-CLIENT-TYPE_VALUE_ADDED_SERVICES').
-define('LCS-CLIENT-TYPE_VALUE_ADDED_SERVICES', 1).
-endif.
-ifndef('LCS-CLIENT-TYPE_PLMN_OPERATOR_SERVICES').
-define('LCS-CLIENT-TYPE_PLMN_OPERATOR_SERVICES', 2).
-endif.
-ifndef('LCS-CLIENT-TYPE_LAWFUL_INTERCEPT_SERVICES').
-define('LCS-CLIENT-TYPE_LAWFUL_INTERCEPT_SERVICES', 3).
-endif.
-ifndef('LCS-FORMAT-INDICATOR_LOGICAL_NAME').
-define('LCS-FORMAT-INDICATOR_LOGICAL_NAME', 0).
-endif.
-ifndef('LCS-FORMAT-INDICATOR_EMAIL_ADDRESS').
-define('LCS-FORMAT-INDICATOR_EMAIL_ADDRESS', 1).
-endif.
-ifndef('LCS-FORMAT-INDICATOR_MSISDN').
-define('LCS-FORMAT-INDICATOR_MSISDN', 2).
-endif.
-ifndef('LCS-FORMAT-INDICATOR_URL').
-define('LCS-FORMAT-INDICATOR_URL', 3).
-endif.
-ifndef('LCS-FORMAT-INDICATOR_SIP_URL').
-define('LCS-FORMAT-INDICATOR_SIP_URL', 4).
-endif.
-ifndef('LOCAL-GW-INSERTED-INDICATION_LOCAL-GW-NOT-INSERTED').
-define('LOCAL-GW-INSERTED-INDICATION_LOCAL-GW-NOT-INSERTED', 0).
-endif.
-ifndef('LOCAL-GW-INSERTED-INDICATION_LOCAL-GW-INSERTED').
-define('LOCAL-GW-INSERTED-INDICATION_LOCAL-GW-INSERTED', 1).
-endif.
-ifndef('LOCATION-ESTIMATE-TYPE_CURRENT_LOCATION').
-define('LOCATION-ESTIMATE-TYPE_CURRENT_LOCATION', 0).
-endif.
-ifndef('LOCATION-ESTIMATE-TYPE_CURRENT_LAST_KNOWN_LOCATION').
-define('LOCATION-ESTIMATE-TYPE_CURRENT_LAST_KNOWN_LOCATION', 1).
-endif.
-ifndef('LOCATION-ESTIMATE-TYPE_INITIAL_LOCATION').
-define('LOCATION-ESTIMATE-TYPE_INITIAL_LOCATION', 2).
-endif.
-ifndef('LOCATION-ESTIMATE-TYPE_ACTIVATE_DEFERRED_LOCATION').
-define('LOCATION-ESTIMATE-TYPE_ACTIVATE_DEFERRED_LOCATION', 3).
-endif.
-ifndef('LOCATION-ESTIMATE-TYPE_CANCEL_DEFERRED_LOCATION').
-define('LOCATION-ESTIMATE-TYPE_CANCEL_DEFERRED_LOCATION', 4).
-endif.
-ifndef('LOW-BALANCE-INDICATION_NOT-APPLICABLE').
-define('LOW-BALANCE-INDICATION_NOT-APPLICABLE', 0).
-endif.
-ifndef('LOW-BALANCE-INDICATION_YES').
-define('LOW-BALANCE-INDICATION_YES', 1).
-endif.
-ifndef('LOW-PRIORITY-INDICATOR_NO').
-define('LOW-PRIORITY-INDICATOR_NO', 0).
-endif.
-ifndef('LOW-PRIORITY-INDICATOR_YES').
-define('LOW-PRIORITY-INDICATOR_YES', 1).
-endif.
-ifndef('MBMS-CHARGED-PARTY_CONTENT-PROVIDER').
-define('MBMS-CHARGED-PARTY_CONTENT-PROVIDER', 0).
-endif.
-ifndef('MBMS-CHARGED-PARTY_SUBSCRIBER').
-define('MBMS-CHARGED-PARTY_SUBSCRIBER', 1).
-endif.
-ifndef('MBMS-USER-SERVICE-TYPE_DOWNLOAD').
-define('MBMS-USER-SERVICE-TYPE_DOWNLOAD', 1).
-endif.
-ifndef('MBMS-USER-SERVICE-TYPE_STREAMING').
-define('MBMS-USER-SERVICE-TYPE_STREAMING', 2).
-endif.
-ifndef('MEDIA-INITIATOR-FLAG_CALLED-PARTY').
-define('MEDIA-INITIATOR-FLAG_CALLED-PARTY', 0).
-endif.
-ifndef('MEDIA-INITIATOR-FLAG_CALLING-PARTY').
-define('MEDIA-INITIATOR-FLAG_CALLING-PARTY', 1).
-endif.
-ifndef('MEDIA-INITIATOR-FLAG_UNKNOWN').
-define('MEDIA-INITIATOR-FLAG_UNKNOWN', 2).
-endif.
-ifndef('MESSAGE-TYPE_M-SEND-REQ').
-define('MESSAGE-TYPE_M-SEND-REQ', 1).
-endif.
-ifndef('MESSAGE-TYPE_M-SEND-CONF').
-define('MESSAGE-TYPE_M-SEND-CONF', 2).
-endif.
-ifndef('MESSAGE-TYPE_M-NOTIFICATION-IND').
-define('MESSAGE-TYPE_M-NOTIFICATION-IND', 3).
-endif.
-ifndef('MESSAGE-TYPE_M-NOTIFYRESP-IND').
-define('MESSAGE-TYPE_M-NOTIFYRESP-IND', 4).
-endif.
-ifndef('MESSAGE-TYPE_M-RETRIEVE-CONF').
-define('MESSAGE-TYPE_M-RETRIEVE-CONF', 5).
-endif.
-ifndef('MESSAGE-TYPE_M-ACKNOWLEDGE-IND').
-define('MESSAGE-TYPE_M-ACKNOWLEDGE-IND', 6).
-endif.
-ifndef('MESSAGE-TYPE_M-DELIVERY-IND').
-define('MESSAGE-TYPE_M-DELIVERY-IND', 7).
-endif.
-ifndef('MESSAGE-TYPE_M-READ-REC-IND').
-define('MESSAGE-TYPE_M-READ-REC-IND', 8).
-endif.
-ifndef('MESSAGE-TYPE_M-READ-ORIG-IND').
-define('MESSAGE-TYPE_M-READ-ORIG-IND', 9).
-endif.
-ifndef('MESSAGE-TYPE_M-FORWARD-REQ').
-define('MESSAGE-TYPE_M-FORWARD-REQ', 10).
-endif.
-ifndef('MESSAGE-TYPE_M-FORWARD-CONF').
-define('MESSAGE-TYPE_M-FORWARD-CONF', 11).
-endif.
-ifndef('MESSAGE-TYPE_M-MBOX-STORE-CONF').
-define('MESSAGE-TYPE_M-MBOX-STORE-CONF', 12).
-endif.
-ifndef('MESSAGE-TYPE_M-MBOX-VIEW-CONF').
-define('MESSAGE-TYPE_M-MBOX-VIEW-CONF', 13).
-endif.
-ifndef('MESSAGE-TYPE_M-MBOX-UPLOAD-CONF').
-define('MESSAGE-TYPE_M-MBOX-UPLOAD-CONF', 14).
-endif.
-ifndef('MESSAGE-TYPE_M-MBOX-DELETE-CONF').
-define('MESSAGE-TYPE_M-MBOX-DELETE-CONF', 15).
-endif.
-ifndef('MMBOX-STORAGE-REQUESTED_NO').
-define('MMBOX-STORAGE-REQUESTED_NO', 0).
-endif.
-ifndef('MMBOX-STORAGE-REQUESTED_YES').
-define('MMBOX-STORAGE-REQUESTED_YES', 1).
-endif.
-ifndef('NNI-TYPE_NON-ROAMING').
-define('NNI-TYPE_NON-ROAMING', 0).
-endif.
-ifndef('NNI-TYPE_ROAMING-WITHOUT-LOOPBACK').
-define('NNI-TYPE_ROAMING-WITHOUT-LOOPBACK', 1).
-endif.
-ifndef('NNI-TYPE_ROAMING-WITH-LOOPBACK').
-define('NNI-TYPE_ROAMING-WITH-LOOPBACK', 2).
-endif.
-ifndef('NODE-FUNCTIONALITY_S-CSCF').
-define('NODE-FUNCTIONALITY_S-CSCF', 0).
-endif.
-ifndef('NODE-FUNCTIONALITY_P-CSCF').
-define('NODE-FUNCTIONALITY_P-CSCF', 1).
-endif.
-ifndef('NODE-FUNCTIONALITY_I-CSCF').
-define('NODE-FUNCTIONALITY_I-CSCF', 2).
-endif.
-ifndef('NODE-FUNCTIONALITY_MRFC').
-define('NODE-FUNCTIONALITY_MRFC', 3).
-endif.
-ifndef('NODE-FUNCTIONALITY_MGCF').
-define('NODE-FUNCTIONALITY_MGCF', 4).
-endif.
-ifndef('NODE-FUNCTIONALITY_BGCF').
-define('NODE-FUNCTIONALITY_BGCF', 5).
-endif.
-ifndef('NODE-FUNCTIONALITY_AS').
-define('NODE-FUNCTIONALITY_AS', 6).
-endif.
-ifndef('NODE-FUNCTIONALITY_IBCF').
-define('NODE-FUNCTIONALITY_IBCF', 7).
-endif.
-ifndef('NODE-FUNCTIONALITY_S-GW').
-define('NODE-FUNCTIONALITY_S-GW', 8).
-endif.
-ifndef('NODE-FUNCTIONALITY_P-GW').
-define('NODE-FUNCTIONALITY_P-GW', 9).
-endif.
-ifndef('NODE-FUNCTIONALITY_HSGW').
-define('NODE-FUNCTIONALITY_HSGW', 10).
-endif.
-ifndef('NODE-FUNCTIONALITY_E-CSCF').
-define('NODE-FUNCTIONALITY_E-CSCF', 11).
-endif.
-ifndef('NODE-FUNCTIONALITY_MME').
-define('NODE-FUNCTIONALITY_MME', 12).
-endif.
-ifndef('NODE-FUNCTIONALITY_TRF').
-define('NODE-FUNCTIONALITY_TRF', 13).
-endif.
-ifndef('NODE-FUNCTIONALITY_TF').
-define('NODE-FUNCTIONALITY_TF', 14).
-endif.
-ifndef('NODE-FUNCTIONALITY_ATCF').
-define('NODE-FUNCTIONALITY_ATCF', 15).
-endif.
-ifndef('NODE-FUNCTIONALITY_PROXY-FUNCTION').
-define('NODE-FUNCTIONALITY_PROXY-FUNCTION', 16).
-endif.
-ifndef('NODE-FUNCTIONALITY_EPDG').
-define('NODE-FUNCTIONALITY_EPDG', 17).
-endif.
-ifndef('NODE-FUNCTIONALITY_TDF').
-define('NODE-FUNCTIONALITY_TDF', 18).
-endif.
-ifndef('NODE-FUNCTIONALITY_TWAG').
-define('NODE-FUNCTIONALITY_TWAG', 19).
-endif.
-ifndef('NODE-FUNCTIONALITY_SCEF').
-define('NODE-FUNCTIONALITY_SCEF', 20).
-endif.
-ifndef('NODE-FUNCTIONALITY_IWK-SCEF').
-define('NODE-FUNCTIONALITY_IWK-SCEF', 21).
-endif.
-ifndef('ONLINE-CHARGING-FLAG_ECF-ADDRESS-NOT-PROVIDED').
-define('ONLINE-CHARGING-FLAG_ECF-ADDRESS-NOT-PROVIDED', 0).
-endif.
-ifndef('ONLINE-CHARGING-FLAG_ECF-ADDRESS-PROVIDED').
-define('ONLINE-CHARGING-FLAG_ECF-ADDRESS-PROVIDED', 1).
-endif.
-ifndef('ORIGINATOR_CALLING-PARTY').
-define('ORIGINATOR_CALLING-PARTY', 0).
-endif.
-ifndef('ORIGINATOR_CALLED-PARTY').
-define('ORIGINATOR_CALLED-PARTY', 1).
-endif.
-ifndef('PARTICIPANT-ACCESS-PRIORITY_PRE-EMPTIVE-PRIORITY').
-define('PARTICIPANT-ACCESS-PRIORITY_PRE-EMPTIVE-PRIORITY', 1).
-endif.
-ifndef('PARTICIPANT-ACCESS-PRIORITY_HIGH-PRIORITY').
-define('PARTICIPANT-ACCESS-PRIORITY_HIGH-PRIORITY', 2).
-endif.
-ifndef('PARTICIPANT-ACCESS-PRIORITY_NORMAL-PRIORITY').
-define('PARTICIPANT-ACCESS-PRIORITY_NORMAL-PRIORITY', 3).
-endif.
-ifndef('PARTICIPANT-ACCESS-PRIORITY_LOW-PRIORITY').
-define('PARTICIPANT-ACCESS-PRIORITY_LOW-PRIORITY', 4).
-endif.
-ifndef('PARTICIPANT-ACTION-TYPE_CREATE_CONF').
-define('PARTICIPANT-ACTION-TYPE_CREATE_CONF', 0).
-endif.
-ifndef('PARTICIPANT-ACTION-TYPE_JOIN_CONF').
-define('PARTICIPANT-ACTION-TYPE_JOIN_CONF', 1).
-endif.
-ifndef('PARTICIPANT-ACTION-TYPE_INVITE_INTO_CONF').
-define('PARTICIPANT-ACTION-TYPE_INVITE_INTO_CONF', 2).
-endif.
-ifndef('PARTICIPANT-ACTION-TYPE_QUIT_CONF').
-define('PARTICIPANT-ACTION-TYPE_QUIT_CONF', 3).
-endif.
-ifndef('PC5-RADIO-TECHNOLOGY_EUTRA').
-define('PC5-RADIO-TECHNOLOGY_EUTRA', 0).
-endif.
-ifndef('PC5-RADIO-TECHNOLOGY_WLAN').
-define('PC5-RADIO-TECHNOLOGY_WLAN', 1).
-endif.
-ifndef('PC5-RADIO-TECHNOLOGY_BOTH-EUTRA-AND-WLAN').
-define('PC5-RADIO-TECHNOLOGY_BOTH-EUTRA-AND-WLAN', 2).
-endif.
-ifndef('PDP-CONTEXT-TYPE_PRIMARY').
-define('PDP-CONTEXT-TYPE_PRIMARY', 0).
-endif.
-ifndef('PDP-CONTEXT-TYPE_SECONDARY').
-define('PDP-CONTEXT-TYPE_SECONDARY', 1).
-endif.
-ifndef('PLAY-ALTERNATIVE_SERVED-PARTY').
-define('PLAY-ALTERNATIVE_SERVED-PARTY', 0).
-endif.
-ifndef('PLAY-ALTERNATIVE_REMOTE-PARTY').
-define('PLAY-ALTERNATIVE_REMOTE-PARTY', 1).
-endif.
-ifndef('POC-CHANGE-CONDITION_SERVICECHANGE').
-define('POC-CHANGE-CONDITION_SERVICECHANGE', 0).
-endif.
-ifndef('POC-CHANGE-CONDITION_VOLUMELIMIT').
-define('POC-CHANGE-CONDITION_VOLUMELIMIT', 1).
-endif.
-ifndef('POC-CHANGE-CONDITION_TIMELIMIT').
-define('POC-CHANGE-CONDITION_TIMELIMIT', 2).
-endif.
-ifndef('POC-CHANGE-CONDITION_NUMBEROFTALKBURSTLIMIT').
-define('POC-CHANGE-CONDITION_NUMBEROFTALKBURSTLIMIT', 3).
-endif.
-ifndef('POC-CHANGE-CONDITION_NUMBEROFACTIVEPARTICIPANTS').
-define('POC-CHANGE-CONDITION_NUMBEROFACTIVEPARTICIPANTS', 4).
-endif.
-ifndef('POC-CHANGE-CONDITION_TARIFFTIME').
-define('POC-CHANGE-CONDITION_TARIFFTIME', 5).
-endif.
-ifndef('POC-EVENT-TYPE_NORMAL').
-define('POC-EVENT-TYPE_NORMAL', 0).
-endif.
-ifndef('POC-EVENT-TYPE_INSTANT-PERSONAL-ALERT-EVENT').
-define('POC-EVENT-TYPE_INSTANT-PERSONAL-ALERT-EVENT', 1).
-endif.
-ifndef('POC-EVENT-TYPE_POC-GROUP-ADVERTISEMENT-EVENT').
-define('POC-EVENT-TYPE_POC-GROUP-ADVERTISEMENT-EVENT', 2).
-endif.
-ifndef('POC-EVENT-TYPE_EARLY-SSESSION-SETTING-UP-EVENT').
-define('POC-EVENT-TYPE_EARLY-SSESSION-SETTING-UP-EVENT', 3).
-endif.
-ifndef('POC-EVENT-TYPE_POC-TALK-BURST').
-define('POC-EVENT-TYPE_POC-TALK-BURST', 4).
-endif.
-ifndef('POC-SERVER-ROLE_PARTICIPATING-POC-SERVER').
-define('POC-SERVER-ROLE_PARTICIPATING-POC-SERVER', 0).
-endif.
-ifndef('POC-SERVER-ROLE_CONTROLLING-POC-SERVER').
-define('POC-SERVER-ROLE_CONTROLLING-POC-SERVER', 1).
-endif.
-ifndef('POC-SERVER-ROLE_INTERWORKING-FUNCTION').
-define('POC-SERVER-ROLE_INTERWORKING-FUNCTION', 2).
-endif.
-ifndef('POC-SERVER-ROLE_INTERWORKING-SELECTION-FUNCTION').
-define('POC-SERVER-ROLE_INTERWORKING-SELECTION-FUNCTION', 3).
-endif.
-ifndef('POC-SESSION-INITIATION-TYPE_PRE-ESTABLISHED').
-define('POC-SESSION-INITIATION-TYPE_PRE-ESTABLISHED', 0).
-endif.
-ifndef('POC-SESSION-INITIATION-TYPE_ON-DEMAND').
-define('POC-SESSION-INITIATION-TYPE_ON-DEMAND', 1).
-endif.
-ifndef('POC-SESSION-TYPE_1-TO-1-POC-SESSION').
-define('POC-SESSION-TYPE_1-TO-1-POC-SESSION', 0).
-endif.
-ifndef('POC-SESSION-TYPE_CHAT-POC-GROUP-SESSION').
-define('POC-SESSION-TYPE_CHAT-POC-GROUP-SESSION', 1).
-endif.
-ifndef('POC-SESSION-TYPE_PRE-ARRANGED-POC-GROUP-SESSION').
-define('POC-SESSION-TYPE_PRE-ARRANGED-POC-GROUP-SESSION', 2).
-endif.
-ifndef('POC-SESSION-TYPE_AD-HOC-POC-GROUP-SESSION').
-define('POC-SESSION-TYPE_AD-HOC-POC-GROUP-SESSION', 3).
-endif.
-ifndef('POC-USER-ROLE-INFO-UNITS_MODERATOR').
-define('POC-USER-ROLE-INFO-UNITS_MODERATOR', 1).
-endif.
-ifndef('POC-USER-ROLE-INFO-UNITS_DISPATCHER').
-define('POC-USER-ROLE-INFO-UNITS_DISPATCHER', 2).
-endif.
-ifndef('POC-USER-ROLE-INFO-UNITS_SESSION-OWNER').
-define('POC-USER-ROLE-INFO-UNITS_SESSION-OWNER', 3).
-endif.
-ifndef('POC-USER-ROLE-INFO-UNITS_SESSION-PARTICIPANT').
-define('POC-USER-ROLE-INFO-UNITS_SESSION-PARTICIPANT', 4).
-endif.
-ifndef('PRIORITY_LOW').
-define('PRIORITY_LOW', 0).
-endif.
-ifndef('PRIORITY_NORMAL').
-define('PRIORITY_NORMAL', 1).
-endif.
-ifndef('PRIORITY_HIGH').
-define('PRIORITY_HIGH', 2).
-endif.
-ifndef('PRIVACY-INDICATOR_NOT_PRIVATE').
-define('PRIVACY-INDICATOR_NOT_PRIVATE', 0).
-endif.
-ifndef('PRIVACY-INDICATOR_PRIVATE').
-define('PRIVACY-INDICATOR_PRIVATE', 1).
-endif.
-ifndef('PROSE-DIRECT-DISCOVERY-MODEL_MODEL-A').
-define('PROSE-DIRECT-DISCOVERY-MODEL_MODEL-A', 0).
-endif.
-ifndef('PROSE-DIRECT-DISCOVERY-MODEL_MODEL-B').
-define('PROSE-DIRECT-DISCOVERY-MODEL_MODEL-B', 1).
-endif.
-ifndef('PROSE-EVENT-TYPE_ANNOUCING').
-define('PROSE-EVENT-TYPE_ANNOUCING', 0).
-endif.
-ifndef('PROSE-EVENT-TYPE_MONITORING').
-define('PROSE-EVENT-TYPE_MONITORING', 1).
-endif.
-ifndef('PROSE-EVENT-TYPE_MATCH-REPORT').
-define('PROSE-EVENT-TYPE_MATCH-REPORT', 2).
-endif.
-ifndef('PROSE-FUNCTIONALITY_DIRECT-DISCOVERY').
-define('PROSE-FUNCTIONALITY_DIRECT-DISCOVERY', 0).
-endif.
-ifndef('PROSE-FUNCTIONALITY_EPC-LEVEL-DISCOVERY').
-define('PROSE-FUNCTIONALITY_EPC-LEVEL-DISCOVERY', 1).
-endif.
-ifndef('PROSE-FUNCTIONALITY_DIRECT-COMMUNICATION').
-define('PROSE-FUNCTIONALITY_DIRECT-COMMUNICATION', 2).
-endif.
-ifndef('PROSE-RANGE-CLASS_RESERVED').
-define('PROSE-RANGE-CLASS_RESERVED', 0).
-endif.
-ifndef('PROSE-RANGE-CLASS_50M').
-define('PROSE-RANGE-CLASS_50M', 1).
-endif.
-ifndef('PROSE-RANGE-CLASS_100M').
-define('PROSE-RANGE-CLASS_100M', 2).
-endif.
-ifndef('PROSE-RANGE-CLASS_200M').
-define('PROSE-RANGE-CLASS_200M', 3).
-endif.
-ifndef('PROSE-RANGE-CLASS_500M').
-define('PROSE-RANGE-CLASS_500M', 4).
-endif.
-ifndef('PROSE-RANGE-CLASS_1000M').
-define('PROSE-RANGE-CLASS_1000M', 5).
-endif.
-ifndef('PROSE-REASON-FOR-CANCELLATION_PROXIMITY-ALERT-SENT').
-define('PROSE-REASON-FOR-CANCELLATION_PROXIMITY-ALERT-SENT', 0).
-endif.
-ifndef('PROSE-REASON-FOR-CANCELLATION_TIME-EXPIRED-WITH-NO-RENEWAL').
-define('PROSE-REASON-FOR-CANCELLATION_TIME-EXPIRED-WITH-NO-RENEWAL', 1).
-endif.
-ifndef('PROSE-REASON-FOR-CANCELLATION_REQUESTOR-CANCELLATION').
-define('PROSE-REASON-FOR-CANCELLATION_REQUESTOR-CANCELLATION', 2).
-endif.
-ifndef('PROSE-ROLE-OF-UE_ANNOUNCING-UE').
-define('PROSE-ROLE-OF-UE_ANNOUNCING-UE', 0).
-endif.
-ifndef('PROSE-ROLE-OF-UE_MONITORING-UE').
-define('PROSE-ROLE-OF-UE_MONITORING-UE', 1).
-endif.
-ifndef('PROSE-ROLE-OF-UE_REQUESTOR-UE').
-define('PROSE-ROLE-OF-UE_REQUESTOR-UE', 2).
-endif.
-ifndef('PROSE-ROLE-OF-UE_REQUESTED-UE').
-define('PROSE-ROLE-OF-UE_REQUESTED-UE', 3).
-endif.
-ifndef('PROXIMITY-ALERT-INDICATION_ALERT').
-define('PROXIMITY-ALERT-INDICATION_ALERT', 0).
-endif.
-ifndef('PROXIMITY-ALERT-INDICATION_NO-ALERT').
-define('PROXIMITY-ALERT-INDICATION_NO-ALERT', 1).
-endif.
-ifndef('PS-APPEND-FREE-FORMAT-DATA_APPEND').
-define('PS-APPEND-FREE-FORMAT-DATA_APPEND', 0).
-endif.
-ifndef('PS-APPEND-FREE-FORMAT-DATA_OVERWRITE').
-define('PS-APPEND-FREE-FORMAT-DATA_OVERWRITE', 1).
-endif.
-ifndef('QUOTA-INDICATOR_QUOTA_IS_NOT_USED_DURING_PLAYBACK').
-define('QUOTA-INDICATOR_QUOTA_IS_NOT_USED_DURING_PLAYBACK', 0).
-endif.
-ifndef('QUOTA-INDICATOR_QUOTA_IS_USED_DURING_PLAYBACK').
-define('QUOTA-INDICATOR_QUOTA_IS_USED_DURING_PLAYBACK', 1).
-endif.
-ifndef('READ-REPLY-REPORT-REQUESTED_NO').
-define('READ-REPLY-REPORT-REQUESTED_NO', 0).
-endif.
-ifndef('READ-REPLY-REPORT-REQUESTED_YES').
-define('READ-REPLY-REPORT-REQUESTED_YES', 1).
-endif.
-ifndef('RELATIONSHIP-MODE_TRUSTED').
-define('RELATIONSHIP-MODE_TRUSTED', 0).
-endif.
-ifndef('RELATIONSHIP-MODE_NON-TRUSTED').
-define('RELATIONSHIP-MODE_NON-TRUSTED', 1).
-endif.
-ifndef('REPLY-PATH-REQUESTED_NO-REPLY-PATH-SET').
-define('REPLY-PATH-REQUESTED_NO-REPLY-PATH-SET', 0).
-endif.
-ifndef('REPLY-PATH-REQUESTED_REPLY-PATH-SET').
-define('REPLY-PATH-REQUESTED_REPLY-PATH-SET', 1).
-endif.
-ifndef('REPORTING-REASON_THRESHOLD').
-define('REPORTING-REASON_THRESHOLD', 0).
-endif.
-ifndef('REPORTING-REASON_QHT').
-define('REPORTING-REASON_QHT', 1).
-endif.
-ifndef('REPORTING-REASON_FINAL').
-define('REPORTING-REASON_FINAL', 2).
-endif.
-ifndef('REPORTING-REASON_QUOTA_EXHAUSTED').
-define('REPORTING-REASON_QUOTA_EXHAUSTED', 3).
-endif.
-ifndef('REPORTING-REASON_VALIDITY_TIME').
-define('REPORTING-REASON_VALIDITY_TIME', 4).
-endif.
-ifndef('REPORTING-REASON_OTHER_QUOTA_TYPE').
-define('REPORTING-REASON_OTHER_QUOTA_TYPE', 5).
-endif.
-ifndef('REPORTING-REASON_RATING_CONDITION_CHANGE').
-define('REPORTING-REASON_RATING_CONDITION_CHANGE', 6).
-endif.
-ifndef('REPORTING-REASON_FORCED_REAUTHORISATION').
-define('REPORTING-REASON_FORCED_REAUTHORISATION', 7).
-endif.
-ifndef('REPORTING-REASON_POOL_EXHAUSTED').
-define('REPORTING-REASON_POOL_EXHAUSTED', 8).
-endif.
-ifndef('REPORTING-REASON_UNUSED_QUOTA_TIMER').
-define('REPORTING-REASON_UNUSED_QUOTA_TIMER', 9).
-endif.
-ifndef('ROLE-OF-NODE_ORIGINATING_ROLE').
-define('ROLE-OF-NODE_ORIGINATING_ROLE', 0).
-endif.
-ifndef('ROLE-OF-NODE_TERMINATING_ROLE').
-define('ROLE-OF-NODE_TERMINATING_ROLE', 1).
-endif.
-ifndef('ROLE-OF-NODE_FORWARDING_ROLE').
-define('ROLE-OF-NODE_FORWARDING_ROLE', 2).
-endif.
-ifndef('ROLE-OF-PROSE-FUNCTION_HPLMN').
-define('ROLE-OF-PROSE-FUNCTION_HPLMN', 0).
-endif.
-ifndef('ROLE-OF-PROSE-FUNCTION_VPLMN').
-define('ROLE-OF-PROSE-FUNCTION_VPLMN', 1).
-endif.
-ifndef('ROLE-OF-PROSE-FUNCTION_LOCAL-PLMN').
-define('ROLE-OF-PROSE-FUNCTION_LOCAL-PLMN', 2).
-endif.
-ifndef('SDP-TYPE_SDP-OFFER').
-define('SDP-TYPE_SDP-OFFER', 0).
-endif.
-ifndef('SDP-TYPE_SDP-ANSWER').
-define('SDP-TYPE_SDP-ANSWER', 1).
-endif.
-ifndef('SESSION-DIRECTION_INBOUND').
-define('SESSION-DIRECTION_INBOUND', 0).
-endif.
-ifndef('SESSION-DIRECTION_OUTBOUND').
-define('SESSION-DIRECTION_OUTBOUND', 1).
-endif.
-ifndef('SERVING-NODE-TYPE_SGSN').
-define('SERVING-NODE-TYPE_SGSN', 0).
-endif.
-ifndef('SERVING-NODE-TYPE_PMIPSGW').
-define('SERVING-NODE-TYPE_PMIPSGW', 1).
-endif.
-ifndef('SERVING-NODE-TYPE_GTPSGW').
-define('SERVING-NODE-TYPE_GTPSGW', 2).
-endif.
-ifndef('SERVING-NODE-TYPE_EPDG').
-define('SERVING-NODE-TYPE_EPDG', 3).
-endif.
-ifndef('SERVING-NODE-TYPE_HSGW').
-define('SERVING-NODE-TYPE_HSGW', 4).
-endif.
-ifndef('SERVING-NODE-TYPE_MME').
-define('SERVING-NODE-TYPE_MME', 5).
-endif.
-ifndef('SERVING-NODE-TYPE_TWAN').
-define('SERVING-NODE-TYPE_TWAN', 6).
-endif.
-ifndef('SGI-PTP-TUNNELLING-METHOD_UDP_IP_BASED').
-define('SGI-PTP-TUNNELLING-METHOD_UDP_IP_BASED', 0).
-endif.
-ifndef('SGI-PTP-TUNNELLING-METHOD_OTHERS').
-define('SGI-PTP-TUNNELLING-METHOD_OTHERS', 1).
-endif.
-ifndef('SGW-CHANGE_ACR_START_NOT_DUE_TO_SGW_CHANGE').
-define('SGW-CHANGE_ACR_START_NOT_DUE_TO_SGW_CHANGE', 0).
-endif.
-ifndef('SGW-CHANGE_ACR_START_DUE_TO_SGW_CHANGE').
-define('SGW-CHANGE_ACR_START_DUE_TO_SGW_CHANGE', 1).
-endif.
-ifndef('SM-DEVICE-TRIGGER-INDICATOR_NOT-DEVICETRIGGER').
-define('SM-DEVICE-TRIGGER-INDICATOR_NOT-DEVICETRIGGER', 0).
-endif.
-ifndef('SM-DEVICE-TRIGGER-INDICATOR_DEVICE-TRIGGER-REQUEST').
-define('SM-DEVICE-TRIGGER-INDICATOR_DEVICE-TRIGGER-REQUEST', 1).
-endif.
-ifndef('SM-DEVICE-TRIGGER-INDICATOR_DEVICE-TRIGGER-REPLACE').
-define('SM-DEVICE-TRIGGER-INDICATOR_DEVICE-TRIGGER-REPLACE', 2).
-endif.
-ifndef('SM-DEVICE-TRIGGER-INDICATOR_DEVICE-TRIGGER-RECALL').
-define('SM-DEVICE-TRIGGER-INDICATOR_DEVICE-TRIGGER-RECALL', 3).
-endif.
-ifndef('SM-MESSAGE-TYPE_SUBMISSION').
-define('SM-MESSAGE-TYPE_SUBMISSION', 0).
-endif.
-ifndef('SM-MESSAGE-TYPE_DELIVERY_REPORT').
-define('SM-MESSAGE-TYPE_DELIVERY_REPORT', 1).
-endif.
-ifndef('SM-MESSAGE-TYPE_SM-SERVICE-REQUEST').
-define('SM-MESSAGE-TYPE_SM-SERVICE-REQUEST', 2).
-endif.
-ifndef('SM-MESSAGE-TYPE_T4-DEVICE-TRIGGER').
-define('SM-MESSAGE-TYPE_T4-DEVICE-TRIGGER', 3).
-endif.
-ifndef('SM-MESSAGE-TYPE_SM-DEVICE-TRIGGER').
-define('SM-MESSAGE-TYPE_SM-DEVICE-TRIGGER', 4).
-endif.
-ifndef('SM-MESSAGE-TYPE_MO-SMS-T4-SUBMISSION').
-define('SM-MESSAGE-TYPE_MO-SMS-T4-SUBMISSION', 5).
-endif.
-ifndef('SMS-NODE_SMS-ROUTER').
-define('SMS-NODE_SMS-ROUTER', 0).
-endif.
-ifndef('SMS-NODE_IP-SM-GW').
-define('SMS-NODE_IP-SM-GW', 1).
-endif.
-ifndef('SMS-NODE_SMS-ROUTER-AND-IP-SM-GW').
-define('SMS-NODE_SMS-ROUTER-AND-IP-SM-GW', 2).
-endif.
-ifndef('SMS-NODE_SMS-SC').
-define('SMS-NODE_SMS-SC', 3).
-endif.
-ifndef('SM-SERVICE-TYPE_VAS4SMS-SHORT-MESSAGE-CONTENT-PROCESSING').
-define('SM-SERVICE-TYPE_VAS4SMS-SHORT-MESSAGE-CONTENT-PROCESSING', 0).
-endif.
-ifndef('SM-SERVICE-TYPE_VAS4SMS-SHORT-MESSAGE-FORWARDING').
-define('SM-SERVICE-TYPE_VAS4SMS-SHORT-MESSAGE-FORWARDING', 1).
-endif.
-ifndef('SM-SERVICE-TYPE_VAS4SMS-SHORT-MESSAGE-FORWARDING-MULTIPLE-SUBSCRIPTIONS').
-define('SM-SERVICE-TYPE_VAS4SMS-SHORT-MESSAGE-FORWARDING-MULTIPLE-SUBSCRIPTIONS', 2).
-endif.
-ifndef('SM-SERVICE-TYPE_VAS4SMS-SHORT-MESSAGE-FILTERING').
-define('SM-SERVICE-TYPE_VAS4SMS-SHORT-MESSAGE-FILTERING', 3).
-endif.
-ifndef('SM-SERVICE-TYPE_VAS4SMS-SHORT-MESSAGE-RECEIPT').
-define('SM-SERVICE-TYPE_VAS4SMS-SHORT-MESSAGE-RECEIPT', 4).
-endif.
-ifndef('SM-SERVICE-TYPE_VAS4SMS-SHORT-MESSAGE-NETWORK-STORAGE').
-define('SM-SERVICE-TYPE_VAS4SMS-SHORT-MESSAGE-NETWORK-STORAGE', 5).
-endif.
-ifndef('SM-SERVICE-TYPE_VAS4SMS-SHORT-MESSAGE-TO-MULTIPLE-DESTINATIONS').
-define('SM-SERVICE-TYPE_VAS4SMS-SHORT-MESSAGE-TO-MULTIPLE-DESTINATIONS', 6).
-endif.
-ifndef('SM-SERVICE-TYPE_VAS4SMS-SHORT-MESSAGE-VIRTUAL-PRIVATE-NETWORK').
-define('SM-SERVICE-TYPE_VAS4SMS-SHORT-MESSAGE-VIRTUAL-PRIVATE-NETWORK', 7).
-endif.
-ifndef('SM-SERVICE-TYPE_VAS4SMS-SHORT-MESSAGE-AUTO-REPLY').
-define('SM-SERVICE-TYPE_VAS4SMS-SHORT-MESSAGE-AUTO-REPLY', 8).
-endif.
-ifndef('SM-SERVICE-TYPE_VAS4SMS-SHORT-MESSAGE-PERSONAL-SIGNATURE').
-define('SM-SERVICE-TYPE_VAS4SMS-SHORT-MESSAGE-PERSONAL-SIGNATURE', 9).
-endif.
-ifndef('SM-SERVICE-TYPE_VAS4SMS-SHORT-MESSAGE-DEFERRED-DELIVERY').
-define('SM-SERVICE-TYPE_VAS4SMS-SHORT-MESSAGE-DEFERRED-DELIVERY', 10).
-endif.
-ifndef('STATUS-AS-CODE_4XX').
-define('STATUS-AS-CODE_4XX', 0).
-endif.
-ifndef('STATUS-AS-CODE_5XX').
-define('STATUS-AS-CODE_5XX', 1).
-endif.
-ifndef('STATUS-AS-CODE_TIMEOUT').
-define('STATUS-AS-CODE_TIMEOUT', 2).
-endif.
-ifndef('SUBSCRIBER-ROLE_ORIGINATING').
-define('SUBSCRIBER-ROLE_ORIGINATING', 0).
-endif.
-ifndef('SUBSCRIBER-ROLE_TERMINATING').
-define('SUBSCRIBER-ROLE_TERMINATING', 1).
-endif.
-ifndef('TAD-IDENTIFIER_CS').
-define('TAD-IDENTIFIER_CS', 0).
-endif.
-ifndef('TAD-IDENTIFIER_PS').
-define('TAD-IDENTIFIER_PS', 1).
-endif.
-ifndef('TIME-QUOTA-TYPE_DISCRETE_TIME_PERIOD').
-define('TIME-QUOTA-TYPE_DISCRETE_TIME_PERIOD', 0).
-endif.
-ifndef('TIME-QUOTA-TYPE_CONTINUOUS_TIME_PERIOD').
-define('TIME-QUOTA-TYPE_CONTINUOUS_TIME_PERIOD', 1).
-endif.
-ifndef('TRANSCODER-INSERTED-INDICATION_TRANSCODER-NOT-INSERTED').
-define('TRANSCODER-INSERTED-INDICATION_TRANSCODER-NOT-INSERTED', 0).
-endif.
-ifndef('TRANSCODER-INSERTED-INDICATION_TRANSCODER-INSERTED').
-define('TRANSCODER-INSERTED-INDICATION_TRANSCODER-INSERTED', 1).
-endif.
-ifndef('TRIGGER-TYPE_CHANGE_IN_SGSN_IP_ADDRESS').
-define('TRIGGER-TYPE_CHANGE_IN_SGSN_IP_ADDRESS', 1).
-endif.
-ifndef('TRIGGER-TYPE_CHANGE_IN_QOS').
-define('TRIGGER-TYPE_CHANGE_IN_QOS', 2).
-endif.
-ifndef('TRIGGER-TYPE_CHANGE_IN_LOCATION').
-define('TRIGGER-TYPE_CHANGE_IN_LOCATION', 3).
-endif.
-ifndef('TRIGGER-TYPE_CHANGE_IN_RAT').
-define('TRIGGER-TYPE_CHANGE_IN_RAT', 4).
-endif.
-ifndef('TRIGGER-TYPE_CHANGE_IN_UE_TIMEZONE').
-define('TRIGGER-TYPE_CHANGE_IN_UE_TIMEZONE', 5).
-endif.
-ifndef('TRIGGER-TYPE_CHANGEINQOS_TRAFFIC_CLASS').
-define('TRIGGER-TYPE_CHANGEINQOS_TRAFFIC_CLASS', 10).
-endif.
-ifndef('TRIGGER-TYPE_CHANGEINQOS_RELIABILITY_CLASS').
-define('TRIGGER-TYPE_CHANGEINQOS_RELIABILITY_CLASS', 11).
-endif.
-ifndef('TRIGGER-TYPE_CHANGEINQOS_DELAY_CLASS').
-define('TRIGGER-TYPE_CHANGEINQOS_DELAY_CLASS', 12).
-endif.
-ifndef('TRIGGER-TYPE_CHANGEINQOS_PEAK_THROUGHPUT').
-define('TRIGGER-TYPE_CHANGEINQOS_PEAK_THROUGHPUT', 13).
-endif.
-ifndef('TRIGGER-TYPE_CHANGEINQOS_PRECEDENCE_CLASS').
-define('TRIGGER-TYPE_CHANGEINQOS_PRECEDENCE_CLASS', 14).
-endif.
-ifndef('TRIGGER-TYPE_CHANGEINQOS_MEAN_THROUGHPUT').
-define('TRIGGER-TYPE_CHANGEINQOS_MEAN_THROUGHPUT', 15).
-endif.
-ifndef('TRIGGER-TYPE_CHANGEINQOS_MAXIMUM_BIT_RATE_FOR_UPLINK').
-define('TRIGGER-TYPE_CHANGEINQOS_MAXIMUM_BIT_RATE_FOR_UPLINK', 16).
-endif.
-ifndef('TRIGGER-TYPE_CHANGEINQOS_MAXIMUM_BIT_RATE_FOR_DOWNLINK').
-define('TRIGGER-TYPE_CHANGEINQOS_MAXIMUM_BIT_RATE_FOR_DOWNLINK', 17).
-endif.
-ifndef('TRIGGER-TYPE_CHANGEINQOS_RESIDUAL_BER').
-define('TRIGGER-TYPE_CHANGEINQOS_RESIDUAL_BER', 18).
-endif.
-ifndef('TRIGGER-TYPE_CHANGEINQOS_SDU_ERROR_RATIO').
-define('TRIGGER-TYPE_CHANGEINQOS_SDU_ERROR_RATIO', 19).
-endif.
-ifndef('TRIGGER-TYPE_CHANGEINQOS_TRANSFER_DELAY').
-define('TRIGGER-TYPE_CHANGEINQOS_TRANSFER_DELAY', 20).
-endif.
-ifndef('TRIGGER-TYPE_CHANGEINQOS_TRAFFIC_HANDLING_PRIORITY').
-define('TRIGGER-TYPE_CHANGEINQOS_TRAFFIC_HANDLING_PRIORITY', 21).
-endif.
-ifndef('TRIGGER-TYPE_CHANGEINQOS_GUARANTEED_BIT_RATE_FOR_UPLINK').
-define('TRIGGER-TYPE_CHANGEINQOS_GUARANTEED_BIT_RATE_FOR_UPLINK', 22).
-endif.
-ifndef('TRIGGER-TYPE_CHANGEINQOS_GUARANTEED_BIT_RATE_FOR_DOWNLINK').
-define('TRIGGER-TYPE_CHANGEINQOS_GUARANTEED_BIT_RATE_FOR_DOWNLINK', 23).
-endif.
-ifndef('TRIGGER-TYPE_CHANGEINQOS_APN_AGGREGATE_MAXIMUM_BIT_RATE').
-define('TRIGGER-TYPE_CHANGEINQOS_APN_AGGREGATE_MAXIMUM_BIT_RATE', 24).
-endif.
-ifndef('TRIGGER-TYPE_CHANGEINLOCATION_MCC').
-define('TRIGGER-TYPE_CHANGEINLOCATION_MCC', 30).
-endif.
-ifndef('TRIGGER-TYPE_CHANGEINLOCATION_MNC').
-define('TRIGGER-TYPE_CHANGEINLOCATION_MNC', 31).
-endif.
-ifndef('TRIGGER-TYPE_CHANGEINLOCATION_RAC').
-define('TRIGGER-TYPE_CHANGEINLOCATION_RAC', 32).
-endif.
-ifndef('TRIGGER-TYPE_CHANGEINLOCATION_LAC').
-define('TRIGGER-TYPE_CHANGEINLOCATION_LAC', 33).
-endif.
-ifndef('TRIGGER-TYPE_CHANGEINLOCATION_CELLID').
-define('TRIGGER-TYPE_CHANGEINLOCATION_CELLID', 34).
-endif.
-ifndef('TRIGGER-TYPE_CHANGEINLOCATION_TAC').
-define('TRIGGER-TYPE_CHANGEINLOCATION_TAC', 35).
-endif.
-ifndef('TRIGGER-TYPE_CHANGEINLOCATION_ECGI').
-define('TRIGGER-TYPE_CHANGEINLOCATION_ECGI', 36).
-endif.
-ifndef('TRIGGER-TYPE_CHANGE_IN_MEDIA_COMPOSITION').
-define('TRIGGER-TYPE_CHANGE_IN_MEDIA_COMPOSITION', 40).
-endif.
-ifndef('TRIGGER-TYPE_CHANGE_IN_PARTICIPANTS_NMB').
-define('TRIGGER-TYPE_CHANGE_IN_PARTICIPANTS_NMB', 50).
-endif.
-ifndef('TRIGGER-TYPE_CHANGE_IN_THRSHLD_OF_PARTICIPANTS_NMB').
-define('TRIGGER-TYPE_CHANGE_IN_THRSHLD_OF_PARTICIPANTS_NMB', 51).
-endif.
-ifndef('TRIGGER-TYPE_CHANGE_IN_USER_PARTICIPATING_TYPE').
-define('TRIGGER-TYPE_CHANGE_IN_USER_PARTICIPATING_TYPE', 52).
-endif.
-ifndef('TRIGGER-TYPE_CHANGE_IN_SERVICE_CONDITION').
-define('TRIGGER-TYPE_CHANGE_IN_SERVICE_CONDITION', 60).
-endif.
-ifndef('TRIGGER-TYPE_CHANGE_IN_SERVING_NODE').
-define('TRIGGER-TYPE_CHANGE_IN_SERVING_NODE', 61).
-endif.
-ifndef('TRIGGER-TYPE_CHANGE_IN_ACCESS_FOR_A_SERVICE_DATA_FLOW').
-define('TRIGGER-TYPE_CHANGE_IN_ACCESS_FOR_A_SERVICE_DATA_FLOW', 62).
-endif.
-ifndef('TRIGGER-TYPE_CHANGE_IN_USER_CSG_INFORMATION').
-define('TRIGGER-TYPE_CHANGE_IN_USER_CSG_INFORMATION', 70).
-endif.
-ifndef('TRIGGER-TYPE_CHANGE_IN_HYBRID_SUBSCRIBED_USER_CSG_INFORMATION').
-define('TRIGGER-TYPE_CHANGE_IN_HYBRID_SUBSCRIBED_USER_CSG_INFORMATION', 71).
-endif.
-ifndef('TRIGGER-TYPE_CHANGE_IN_HYBRID_UNSUBSCRIBED_USER_CSG_INFORMATION').
-define('TRIGGER-TYPE_CHANGE_IN_HYBRID_UNSUBSCRIBED_USER_CSG_INFORMATION', 72).
-endif.
-ifndef('TRIGGER-TYPE_CHANGE_OF_UE_PRESENCE_IN_PRESENCE_REPORTING_AREA').
-define('TRIGGER-TYPE_CHANGE_OF_UE_PRESENCE_IN_PRESENCE_REPORTING_AREA', 73).
-endif.
-ifndef('TRIGGER-TYPE_CHANGE_IN_APN_RATE_CONTROL').
-define('TRIGGER-TYPE_CHANGE_IN_APN_RATE_CONTROL', 75).
-endif.
-ifndef('TRIGGER-TYPE_CHANGE_IN_3GPP_PS_DATA_OFF').
-define('TRIGGER-TYPE_CHANGE_IN_3GPP_PS_DATA_OFF', 76).
-endif.
-ifndef('UNI-PDU-CP-ONLY-FLAG_UNI-PDU-BOTH-UP-CP').
-define('UNI-PDU-CP-ONLY-FLAG_UNI-PDU-BOTH-UP-CP', 0).
-endif.
-ifndef('UNI-PDU-CP-ONLY-FLAG_UNI-PDU-CP-ONLY').
-define('UNI-PDU-CP-ONLY-FLAG_UNI-PDU-CP-ONLY', 1).
-endif.
-ifndef('USER-PARTICIPATING-TYPE_NORMAL').
-define('USER-PARTICIPATING-TYPE_NORMAL', 0).
-endif.
-ifndef('USER-PARTICIPATING-TYPE_NW-POC-BOX').
-define('USER-PARTICIPATING-TYPE_NW-POC-BOX', 1).
-endif.
-ifndef('USER-PARTICIPATING-TYPE_UE-POC-BOX').
-define('USER-PARTICIPATING-TYPE_UE-POC-BOX', 2).
-endif.
-ifndef('VARIABLE-PART-TYPE_INTEGER').
-define('VARIABLE-PART-TYPE_INTEGER', 0).
-endif.
-ifndef('VARIABLE-PART-TYPE_NUMBER').
-define('VARIABLE-PART-TYPE_NUMBER', 1).
-endif.
-ifndef('VARIABLE-PART-TYPE_TIME').
-define('VARIABLE-PART-TYPE_TIME', 2).
-endif.
-ifndef('VARIABLE-PART-TYPE_DATE').
-define('VARIABLE-PART-TYPE_DATE', 3).
-endif.
-ifndef('VARIABLE-PART-TYPE_CURRENCY').
-define('VARIABLE-PART-TYPE_CURRENCY', 4).
-endif.



%%% -------------------------------------------------------
%%% ENUM Macros from diameter_rfc4006_cc:
%%% -------------------------------------------------------

-ifndef('CC-REQUEST-TYPE_INITIAL_REQUEST').
-define('CC-REQUEST-TYPE_INITIAL_REQUEST', 1).
-endif.
-ifndef('CC-REQUEST-TYPE_UPDATE_REQUEST').
-define('CC-REQUEST-TYPE_UPDATE_REQUEST', 2).
-endif.
-ifndef('CC-REQUEST-TYPE_TERMINATION_REQUEST').
-define('CC-REQUEST-TYPE_TERMINATION_REQUEST', 3).
-endif.
-ifndef('CC-REQUEST-TYPE_EVENT_REQUEST').
-define('CC-REQUEST-TYPE_EVENT_REQUEST', 4).
-endif.
-ifndef('CC-SESSION-FAILOVER_NOT_SUPPORTED').
-define('CC-SESSION-FAILOVER_NOT_SUPPORTED', 0).
-endif.
-ifndef('CC-SESSION-FAILOVER_SUPPORTED').
-define('CC-SESSION-FAILOVER_SUPPORTED', 1).
-endif.
-ifndef('CHECK-BALANCE-RESULT_ENOUGH_CREDIT').
-define('CHECK-BALANCE-RESULT_ENOUGH_CREDIT', 0).
-endif.
-ifndef('CHECK-BALANCE-RESULT_NO_CREDIT').
-define('CHECK-BALANCE-RESULT_NO_CREDIT', 1).
-endif.
-ifndef('CREDIT-CONTROL_AUTHORIZATION').
-define('CREDIT-CONTROL_AUTHORIZATION', 0).
-endif.
-ifndef('CREDIT-CONTROL_RE_AUTHORIZATION').
-define('CREDIT-CONTROL_RE_AUTHORIZATION', 1).
-endif.
-ifndef('CREDIT-CONTROL-FAILURE-HANDLING_TERMINATE').
-define('CREDIT-CONTROL-FAILURE-HANDLING_TERMINATE', 0).
-endif.
-ifndef('CREDIT-CONTROL-FAILURE-HANDLING_CONTINUE').
-define('CREDIT-CONTROL-FAILURE-HANDLING_CONTINUE', 1).
-endif.
-ifndef('CREDIT-CONTROL-FAILURE-HANDLING_RETRY_AND_TERMINATE').
-define('CREDIT-CONTROL-FAILURE-HANDLING_RETRY_AND_TERMINATE', 2).
-endif.
-ifndef('DIRECT-DEBITING-FAILURE-HANDLING_TERMINATE_OR_BUFFER').
-define('DIRECT-DEBITING-FAILURE-HANDLING_TERMINATE_OR_BUFFER', 0).
-endif.
-ifndef('DIRECT-DEBITING-FAILURE-HANDLING_CONTINUE').
-define('DIRECT-DEBITING-FAILURE-HANDLING_CONTINUE', 1).
-endif.
-ifndef('TARIFF-CHANGE-USAGE_UNIT_BEFORE_TARIFF_CHANGE').
-define('TARIFF-CHANGE-USAGE_UNIT_BEFORE_TARIFF_CHANGE', 0).
-endif.
-ifndef('TARIFF-CHANGE-USAGE_UNIT_AFTER_TARIFF_CHANGE').
-define('TARIFF-CHANGE-USAGE_UNIT_AFTER_TARIFF_CHANGE', 1).
-endif.
-ifndef('TARIFF-CHANGE-USAGE_UNIT_INDETERMINATE').
-define('TARIFF-CHANGE-USAGE_UNIT_INDETERMINATE', 2).
-endif.
-ifndef('CC-UNIT-TYPE_TIME').
-define('CC-UNIT-TYPE_TIME', 0).
-endif.
-ifndef('CC-UNIT-TYPE_MONEY').
-define('CC-UNIT-TYPE_MONEY', 1).
-endif.
-ifndef('CC-UNIT-TYPE_TOTAL-OCTETS').
-define('CC-UNIT-TYPE_TOTAL-OCTETS', 2).
-endif.
-ifndef('CC-UNIT-TYPE_INPUT-OCTETS').
-define('CC-UNIT-TYPE_INPUT-OCTETS', 3).
-endif.
-ifndef('CC-UNIT-TYPE_OUTPUT-OCTETS').
-define('CC-UNIT-TYPE_OUTPUT-OCTETS', 4).
-endif.
-ifndef('CC-UNIT-TYPE_SERVICE-SPECIFIC-UNITS').
-define('CC-UNIT-TYPE_SERVICE-SPECIFIC-UNITS', 5).
-endif.
-ifndef('FINAL-UNIT-ACTION_TERMINATE').
-define('FINAL-UNIT-ACTION_TERMINATE', 0).
-endif.
-ifndef('FINAL-UNIT-ACTION_REDIRECT').
-define('FINAL-UNIT-ACTION_REDIRECT', 1).
-endif.
-ifndef('FINAL-UNIT-ACTION_RESTRICT_ACCESS').
-define('FINAL-UNIT-ACTION_RESTRICT_ACCESS', 2).
-endif.
-ifndef('REDIRECT-ADDRESS-TYPE_IPV4').
-define('REDIRECT-ADDRESS-TYPE_IPV4', 0).
-endif.
-ifndef('REDIRECT-ADDRESS-TYPE_IPV6').
-define('REDIRECT-ADDRESS-TYPE_IPV6', 1).
-endif.
-ifndef('REDIRECT-ADDRESS-TYPE_URL').
-define('REDIRECT-ADDRESS-TYPE_URL', 2).
-endif.
-ifndef('REDIRECT-ADDRESS-TYPE_SIP_URI').
-define('REDIRECT-ADDRESS-TYPE_SIP_URI', 3).
-endif.
-ifndef('MULTIPLE-SERVICES-INDICATOR_NOT_SUPPORTED').
-define('MULTIPLE-SERVICES-INDICATOR_NOT_SUPPORTED', 0).
-endif.
-ifndef('MULTIPLE-SERVICES-INDICATOR_SUPPORTED').
-define('MULTIPLE-SERVICES-INDICATOR_SUPPORTED', 1).
-endif.
-ifndef('REQUESTED-ACTION_DIRECT_DEBITING').
-define('REQUESTED-ACTION_DIRECT_DEBITING', 0).
-endif.
-ifndef('REQUESTED-ACTION_REFUND_ACCOUNT').
-define('REQUESTED-ACTION_REFUND_ACCOUNT', 1).
-endif.
-ifndef('REQUESTED-ACTION_CHECK_BALANCE').
-define('REQUESTED-ACTION_CHECK_BALANCE', 2).
-endif.
-ifndef('REQUESTED-ACTION_PRICE_ENQUIRY').
-define('REQUESTED-ACTION_PRICE_ENQUIRY', 3).
-endif.
-ifndef('SUBSCRIPTION-ID-TYPE_END_USER_E164').
-define('SUBSCRIPTION-ID-TYPE_END_USER_E164', 0).
-endif.
-ifndef('SUBSCRIPTION-ID-TYPE_END_USER_IMSI').
-define('SUBSCRIPTION-ID-TYPE_END_USER_IMSI', 1).
-endif.
-ifndef('SUBSCRIPTION-ID-TYPE_END_USER_SIP_URI').
-define('SUBSCRIPTION-ID-TYPE_END_USER_SIP_URI', 2).
-endif.
-ifndef('SUBSCRIPTION-ID-TYPE_END_USER_NAI').
-define('SUBSCRIPTION-ID-TYPE_END_USER_NAI', 3).
-endif.
-ifndef('SUBSCRIPTION-ID-TYPE_END_USER_PRIVATE').
-define('SUBSCRIPTION-ID-TYPE_END_USER_PRIVATE', 4).
-endif.
-ifndef('USER-EQUIPMENT-INFO-TYPE_IMEISV').
-define('USER-EQUIPMENT-INFO-TYPE_IMEISV', 0).
-endif.
-ifndef('USER-EQUIPMENT-INFO-TYPE_MAC').
-define('USER-EQUIPMENT-INFO-TYPE_MAC', 1).
-endif.
-ifndef('USER-EQUIPMENT-INFO-TYPE_EUI64').
-define('USER-EQUIPMENT-INFO-TYPE_EUI64', 2).
-endif.
-ifndef('USER-EQUIPMENT-INFO-TYPE_MODIFIED_EUI64').
-define('USER-EQUIPMENT-INFO-TYPE_MODIFIED_EUI64', 3).
-endif.



%%% -------------------------------------------------------
%%% ENUM Macros from diameter_rfc7683:
%%% -------------------------------------------------------

-ifndef('OC-REPORT-TYPE_HOST_REPORT').
-define('OC-REPORT-TYPE_HOST_REPORT', 0).
-endif.
-ifndef('OC-REPORT-TYPE_REALM_REPORT').
-define('OC-REPORT-TYPE_REALM_REPORT', 1).
-endif.



%%% -------------------------------------------------------
%%% ENUM Macros from diameter_rfc7944:
%%% -------------------------------------------------------

-ifndef('DRMP_PRIORITY_15').
-define('DRMP_PRIORITY_15', 15).
-endif.
-ifndef('DRMP_PRIORITY_14').
-define('DRMP_PRIORITY_14', 14).
-endif.
-ifndef('DRMP_PRIORITY_13').
-define('DRMP_PRIORITY_13', 13).
-endif.
-ifndef('DRMP_PRIORITY_12').
-define('DRMP_PRIORITY_12', 12).
-endif.
-ifndef('DRMP_PRIORITY_11').
-define('DRMP_PRIORITY_11', 11).
-endif.
-ifndef('DRMP_PRIORITY_10').
-define('DRMP_PRIORITY_10', 10).
-endif.
-ifndef('DRMP_PRIORITY_9').
-define('DRMP_PRIORITY_9', 9).
-endif.
-ifndef('DRMP_PRIORITY_8').
-define('DRMP_PRIORITY_8', 8).
-endif.
-ifndef('DRMP_PRIORITY_7').
-define('DRMP_PRIORITY_7', 7).
-endif.
-ifndef('DRMP_PRIORITY_6').
-define('DRMP_PRIORITY_6', 6).
-endif.
-ifndef('DRMP_PRIORITY_5').
-define('DRMP_PRIORITY_5', 5).
-endif.
-ifndef('DRMP_PRIORITY_4').
-define('DRMP_PRIORITY_4', 4).
-endif.
-ifndef('DRMP_PRIORITY_3').
-define('DRMP_PRIORITY_3', 3).
-endif.
-ifndef('DRMP_PRIORITY_2').
-define('DRMP_PRIORITY_2', 2).
-endif.
-ifndef('DRMP_PRIORITY_1').
-define('DRMP_PRIORITY_1', 1).
-endif.
-ifndef('DRMP_PRIORITY_0').
-define('DRMP_PRIORITY_0', 0).
-endif.



%%% -------------------------------------------------------
%%% ENUM Macros from diameter_rfc8583:
%%% -------------------------------------------------------

-ifndef('LOAD-TYPE_HOST').
-define('LOAD-TYPE_HOST', 0).
-endif.
-ifndef('LOAD-TYPE_PEER').
-define('LOAD-TYPE_PEER', 1).
-endif.

