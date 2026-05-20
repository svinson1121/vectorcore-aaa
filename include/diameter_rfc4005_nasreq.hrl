%% -------------------------------------------------------------------
%% This is a generated file.
%% -------------------------------------------------------------------

-hrl_name('diameter_rfc4005_nasreq.hrl').


%%% -------------------------------------------------------
%%% Message records:
%%% -------------------------------------------------------

-record('AAR',
        {'Session-Id',
         'Auth-Application-Id',
         'Origin-Host',
         'Origin-Realm',
         'Destination-Realm',
         'Auth-Request-Type',
         'Destination-Host' = [],
         'NAS-Identifier' = [],
         'NAS-IP-Address' = [],
         'NAS-IPv6-Address' = [],
         'NAS-Port' = [],
         'NAS-Port-Id' = [],
         'NAS-Port-Type' = [],
         'Origin-AAA-Protocol' = [],
         'Origin-State-Id' = [],
         'Port-Limit' = [],
         'User-Name' = [],
         'User-Password' = [],
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
         'CHAP-Auth' = [],
         'CHAP-Challenge' = [],
         'Framed-Compression' = [],
         'Framed-Interface-Id' = [],
         'Framed-IP-Address' = [],
         'Framed-IPv6-Prefix' = [],
         'Framed-IP-Netmask' = [],
         'Framed-MTU' = [],
         'Framed-Protocol' = [],
         'ARAP-Password' = [],
         'ARAP-Security' = [],
         'ARAP-Security-Data' = [],
         'Login-IP-Host' = [],
         'Login-IPv6-Host' = [],
         'Login-LAT-Group' = [],
         'Login-LAT-Node' = [],
         'Login-LAT-Port' = [],
         'Login-LAT-Service' = [],
         'Tunneling' = [],
         'Proxy-Info' = [],
         'Route-Record' = [],
         'AVP' = []}).

-record('AAA',
        {'Session-Id',
         'Auth-Application-Id',
         'Auth-Request-Type',
         'Result-Code',
         'Origin-Host',
         'Origin-Realm',
         'User-Name' = [],
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
         'Multi-Round-Time-Out' = [],
         'Session-Timeout' = [],
         'State' = [],
         'Reply-Message' = [],
         'Origin-AAA-Protocol' = [],
         'Origin-State-Id' = [],
         'Filter-Id' = [],
         'Password-Retry' = [],
         'Port-Limit' = [],
         'Prompt' = [],
         'ARAP-Challenge-Response' = [],
         'ARAP-Features' = [],
         'ARAP-Security' = [],
         'ARAP-Security-Data' = [],
         'ARAP-Zone-Access' = [],
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
         'Login-IP-Host' = [],
         'Login-IPv6-Host' = [],
         'Login-LAT-Group' = [],
         'Login-LAT-Node' = [],
         'Login-LAT-Port' = [],
         'Login-LAT-Service' = [],
         'Login-Service' = [],
         'Login-TCP-Port' = [],
         'NAS-Filter-Rule' = [],
         'QoS-Filter-Rule' = [],
         'Tunneling' = [],
         'Redirect-Host' = [],
         'Redirect-Host-Usage' = [],
         'Redirect-Max-Cache-Time' = [],
         'Proxy-Info' = [],
         'AVP' = []}).

-record('RAR',
        {'Session-Id',
         'Origin-Host',
         'Origin-Realm',
         'Destination-Realm',
         'Destination-Host',
         'Auth-Application-Id',
         'Re-Auth-Request-Type',
         'User-Name' = [],
         'Origin-AAA-Protocol' = [],
         'Origin-State-Id' = [],
         'NAS-Identifier' = [],
         'NAS-IP-Address' = [],
         'NAS-IPv6-Address' = [],
         'NAS-Port' = [],
         'NAS-Port-Id' = [],
         'NAS-Port-Type' = [],
         'Service-Type' = [],
         'Framed-IP-Address' = [],
         'Framed-IPv6-Prefix' = [],
         'Framed-Interface-Id' = [],
         'Called-Station-Id' = [],
         'Calling-Station-Id' = [],
         'Originating-Line-Info' = [],
         'Acct-Session-Id' = [],
         'Acct-Multi-Session-Id' = [],
         'State' = [],
         'Class' = [],
         'Reply-Message' = [],
         'Proxy-Info' = [],
         'Route-Record' = [],
         'AVP' = []}).

-record('RAA',
        {'Session-Id',
         'Result-Code',
         'Origin-Host',
         'Origin-Realm',
         'User-Name' = [],
         'Origin-AAA-Protocol' = [],
         'Origin-State-Id' = [],
         'Error-Message' = [],
         'Error-Reporting-Host' = [],
         'Failed-AVP' = [],
         'Redirect-Host' = [],
         'Redirect-Host-Usage' = [],
         'Redirect-Max-Cache-Time' = [],
         'Service-Type' = [],
         'Configuration-Token' = [],
         'Idle-Timeout' = [],
         'Authorization-Lifetime' = [],
         'Auth-Grace-Period' = [],
         'Re-Auth-Request-Type' = [],
         'State' = [],
         'Class' = [],
         'Reply-Message' = [],
         'Prompt' = [],
         'Proxy-Info' = [],
         'AVP' = []}).

-record('STR',
        {'Session-Id',
         'Origin-Host',
         'Origin-Realm',
         'Destination-Realm',
         'Auth-Application-Id',
         'Termination-Cause',
         'User-Name' = [],
         'Destination-Host' = [],
         'Class' = [],
         'Origin-AAA-Protocol' = [],
         'Origin-State-Id' = [],
         'Proxy-Info' = [],
         'Route-Record' = [],
         'AVP' = []}).

-record('STA',
        {'Session-Id',
         'Result-Code',
         'Origin-Host',
         'Origin-Realm',
         'User-Name' = [],
         'Class' = [],
         'Error-Message' = [],
         'Error-Reporting-Host' = [],
         'Failed-AVP' = [],
         'Origin-AAA-Protocol' = [],
         'Origin-State-Id' = [],
         'Redirect-Host' = [],
         'Redirect-Host-Usage' = [],
         'Redirect-Max-Cache-Time' = [],
         'Proxy-Info' = [],
         'AVP' = []}).

-record('ASR',
        {'Session-Id',
         'Origin-Host',
         'Origin-Realm',
         'Destination-Realm',
         'Destination-Host',
         'Auth-Application-Id',
         'User-Name' = [],
         'Origin-AAA-Protocol' = [],
         'Origin-State-Id' = [],
         'NAS-Identifier' = [],
         'NAS-IP-Address' = [],
         'NAS-IPv6-Address' = [],
         'NAS-Port' = [],
         'NAS-Port-Id' = [],
         'NAS-Port-Type' = [],
         'Service-Type' = [],
         'Framed-IP-Address' = [],
         'Framed-IPv6-Prefix' = [],
         'Framed-Interface-Id' = [],
         'Called-Station-Id' = [],
         'Calling-Station-Id' = [],
         'Originating-Line-Info' = [],
         'Acct-Session-Id' = [],
         'Acct-Multi-Session-Id' = [],
         'State' = [],
         'Class' = [],
         'Reply-Message' = [],
         'Proxy-Info' = [],
         'Route-Record' = [],
         'AVP' = []}).

-record('ASA',
        {'Session-Id',
         'Result-Code',
         'Origin-Host',
         'Origin-Realm',
         'User-Name' = [],
         'Origin-AAA-Protocol' = [],
         'Origin-State-Id' = [],
         'State' = [],
         'Error-Message' = [],
         'Error-Reporting-Host' = [],
         'Failed-AVP' = [],
         'Redirect-Host' = [],
         'Redirect-Host-Usage' = [],
         'Redirect-Max-Cache-Time' = [],
         'Proxy-Info' = [],
         'AVP' = []}).

-record('ACR',
        {'Session-Id',
         'Origin-Host',
         'Origin-Realm',
         'Destination-Realm',
         'Accounting-Record-Type',
         'Accounting-Record-Number',
         'Acct-Application-Id' = [],
         'Vendor-Specific-Application-Id' = [],
         'User-Name' = [],
         'Accounting-Sub-Session-Id' = [],
         'Acct-Session-Id' = [],
         'Acct-Multi-Session-Id' = [],
         'Origin-AAA-Protocol' = [],
         'Origin-State-Id' = [],
         'Destination-Host' = [],
         'Event-Timestamp' = [],
         'Acct-Delay-Time' = [],
         'NAS-Identifier' = [],
         'NAS-IP-Address' = [],
         'NAS-IPv6-Address' = [],
         'NAS-Port' = [],
         'NAS-Port-Id' = [],
         'NAS-Port-Type' = [],
         'Class' = [],
         'Service-Type' = [],
         'Termination-Cause' = [],
         'Accounting-Input-Octets' = [],
         'Accounting-Input-Packets' = [],
         'Accounting-Output-Octets' = [],
         'Accounting-Output-Packets' = [],
         'Acct-Authentic' = [],
         'Accounting-Auth-Method' = [],
         'Acct-Link-Count' = [],
         'Acct-Session-Time' = [],
         'Acct-Tunnel-Connection' = [],
         'Acct-Tunnel-Packets-Lost' = [],
         'Callback-Id' = [],
         'Callback-Number' = [],
         'Called-Station-Id' = [],
         'Calling-Station-Id' = [],
         'Connect-Info' = [],
         'Originating-Line-Info' = [],
         'Authorization-Lifetime' = [],
         'Session-Timeout' = [],
         'Idle-Timeout' = [],
         'Port-Limit' = [],
         'Accounting-Realtime-Required' = [],
         'Acct-Interim-Interval' = [],
         'Filter-Id' = [],
         'NAS-Filter-Rule' = [],
         'QoS-Filter-Rule' = [],
         'Framed-AppleTalk-Link' = [],
         'Framed-AppleTalk-Network' = [],
         'Framed-AppleTalk-Zone' = [],
         'Framed-Compression' = [],
         'Framed-Interface-Id' = [],
         'Framed-IP-Address' = [],
         'Framed-IP-Netmask' = [],
         'Framed-IPv6-Prefix' = [],
         'Framed-IPv6-Pool' = [],
         'Framed-IPv6-Route' = [],
         'Framed-IPX-Network' = [],
         'Framed-MTU' = [],
         'Framed-Pool' = [],
         'Framed-Protocol' = [],
         'Framed-Route' = [],
         'Framed-Routing' = [],
         'Login-IP-Host' = [],
         'Login-IPv6-Host' = [],
         'Login-LAT-Group' = [],
         'Login-LAT-Node' = [],
         'Login-LAT-Port' = [],
         'Login-LAT-Service' = [],
         'Login-Service' = [],
         'Login-TCP-Port' = [],
         'Tunneling' = [],
         'Proxy-Info' = [],
         'Route-Record' = [],
         'AVP' = []}).

-record('ACA',
        {'Session-Id',
         'Result-Code',
         'Origin-Host',
         'Origin-Realm',
         'Accounting-Record-Type',
         'Accounting-Record-Number',
         'Acct-Application-Id' = [],
         'Vendor-Specific-Application-Id' = [],
         'User-Name' = [],
         'Accounting-Sub-Session-Id' = [],
         'Acct-Session-Id' = [],
         'Acct-Multi-Session-Id' = [],
         'Event-Timestamp' = [],
         'Error-Message' = [],
         'Error-Reporting-Host' = [],
         'Failed-AVP' = [],
         'Origin-AAA-Protocol' = [],
         'Origin-State-Id' = [],
         'NAS-Identifier' = [],
         'NAS-IP-Address' = [],
         'NAS-IPv6-Address' = [],
         'NAS-Port' = [],
         'NAS-Port-Id' = [],
         'NAS-Port-Type' = [],
         'Service-Type' = [],
         'Termination-Cause' = [],
         'Accounting-Realtime-Required' = [],
         'Acct-Interim-Interval' = [],
         'Class' = [],
         'Proxy-Info' = [],
         'Route-Record' = [],
         'AVP' = []}).


%%% -------------------------------------------------------
%%% Grouped AVP records:
%%% -------------------------------------------------------

-record('CHAP-Auth',
        {'CHAP-Algorithm',
         'CHAP-Ident',
         'CHAP-Response' = [],
         'AVP' = []}).

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
%%% ENUM Macros:
%%% -------------------------------------------------------

-define('NAS-PORT-TYPE_ASYNC', 0).
-define('NAS-PORT-TYPE_SYNC', 1).
-define('NAS-PORT-TYPE_ISDN_SYNC', 2).
-define('NAS-PORT-TYPE_ISDN_ASYNC_V120', 3).
-define('NAS-PORT-TYPE_ISDN_ASYNC_V110', 4).
-define('NAS-PORT-TYPE_VIRTUAL', 5).
-define('NAS-PORT-TYPE_PIAFS', 6).
-define('NAS-PORT-TYPE_HDLC_CLEAR_CHANNEL', 7).
-define('NAS-PORT-TYPE_X25', 8).
-define('NAS-PORT-TYPE_X75', 9).
-define('NAS-PORT-TYPE_G3FAX', 10).
-define('NAS-PORT-TYPE_SDSL', 11).
-define('NAS-PORT-TYPE_ADSL-CAP', 12).
-define('NAS-PORT-TYPE_ADSL-DMT', 13).
-define('NAS-PORT-TYPE_IDSL', 14).
-define('NAS-PORT-TYPE_ETHERNET', 15).
-define('NAS-PORT-TYPE_XDSL', 16).
-define('NAS-PORT-TYPE_CABLE', 17).
-define('NAS-PORT-TYPE_WIRELESS_OTHER', 18).
-define('NAS-PORT-TYPE_WIRELESS_802.11', 19).
-define('NAS-PORT-TYPE_TOKEN-RING', 20).
-define('NAS-PORT-TYPE_FDDI', 21).
-define('NAS-PORT-TYPE_WIRELESS_CDMA2000', 22).
-define('NAS-PORT-TYPE_WIRELESS_UMTS', 23).
-define('NAS-PORT-TYPE_WIRELESS_1X-EV', 24).
-define('NAS-PORT-TYPE_IAPP', 25).
-define('PROMPT_NO_ECHO', 0).
-define('PROMPT_ECHO', 1).
-define('CHAP-ALGORITHM_WITH_MD5', 5).
-define('SERVICE-TYPE_LOGIN', 1).
-define('SERVICE-TYPE_FRAMED', 2).
-define('SERVICE-TYPE_CALLBACK_LOGIN', 3).
-define('SERVICE-TYPE_CALLBACK_FRAMED', 4).
-define('SERVICE-TYPE_OUTBOUND', 5).
-define('SERVICE-TYPE_ADMINISTRATIVE', 6).
-define('SERVICE-TYPE_NAS_PROMPT', 7).
-define('SERVICE-TYPE_AUTHENTICATE_ONLY', 8).
-define('SERVICE-TYPE_CALLBACK_NAS_PROMPT', 9).
-define('SERVICE-TYPE_CALL_CHECK', 10).
-define('SERVICE-TYPE_CALLBACK_ADMINISTRATIVE', 11).
-define('SERVICE-TYPE_VOICE', 12).
-define('SERVICE-TYPE_FAX', 13).
-define('SERVICE-TYPE_MODEM_RELAY', 14).
-define('SERVICE-TYPE_IAPP-REGISTER', 15).
-define('SERVICE-TYPE_IAPP-AP-CHECK', 16).
-define('SERVICE-TYPE_AUTHORIZE_ONLY', 17).
-define('FRAMED-PROTOCOL_PPP', 1).
-define('FRAMED-PROTOCOL_SLIP', 2).
-define('FRAMED-PROTOCOL_ARAP', 3).
-define('FRAMED-PROTOCOL_GANDALF', 4).
-define('FRAMED-PROTOCOL_XYLOGICS', 5).
-define('FRAMED-PROTOCOL_X75', 6).
-define('FRAMED-ROUTING_NONE', 0).
-define('FRAMED-ROUTING_SEND', 1).
-define('FRAMED-ROUTING_LISTEN', 2).
-define('FRAMED-ROUTING_SEND_AND_LISTEN', 3).
-define('FRAMED-COMPRESSION_NONE', 0).
-define('FRAMED-COMPRESSION_VJ', 1).
-define('FRAMED-COMPRESSION_IPX', 2).
-define('FRAMED-COMPRESSION_STAC-LZS', 3).
-define('ARAP-ZONE-ACCESS_DEFAULT', 1).
-define('ARAP-ZONE-ACCESS_FILTER_INCLUSIVELY', 2).
-define('ARAP-ZONE-ACCESS_FILTER_EXCLUSIVELY', 4).
-define('LOGIN-SERVICE_TELNET', 0).
-define('LOGIN-SERVICE_RLOGIN', 1).
-define('LOGIN-SERVICE_TCP_CLEAR', 2).
-define('LOGIN-SERVICE_PORTMASTER', 3).
-define('LOGIN-SERVICE_LAT', 4).
-define('LOGIN-SERVICE_X25-PAD', 5).
-define('LOGIN-SERVICE_X25-T3POS', 6).
-define('LOGIN-SERVICE_TCP_CLEAR_QUIET', 8).
-define('TUNNEL-TYPE_PPTP', 1).
-define('TUNNEL-TYPE_L2F', 2).
-define('TUNNEL-TYPE_L2TP', 3).
-define('TUNNEL-TYPE_ATMP', 4).
-define('TUNNEL-TYPE_VTP', 5).
-define('TUNNEL-TYPE_AH', 6).
-define('TUNNEL-TYPE_IP-IP', 7).
-define('TUNNEL-TYPE_MIN-IP-IP', 8).
-define('TUNNEL-TYPE_ESP', 9).
-define('TUNNEL-TYPE_GRE', 10).
-define('TUNNEL-TYPE_DVS', 11).
-define('TUNNEL-TYPE_IP-IN-IP', 12).
-define('TUNNEL-TYPE_VLAN', 13).
-define('TUNNEL-MEDIUM-TYPE_IPV4', 1).
-define('TUNNEL-MEDIUM-TYPE_IPV6', 2).
-define('TUNNEL-MEDIUM-TYPE_NSAP', 3).
-define('TUNNEL-MEDIUM-TYPE_HDLC', 4).
-define('TUNNEL-MEDIUM-TYPE_BBN_1822', 5).
-define('TUNNEL-MEDIUM-TYPE_802', 6).
-define('TUNNEL-MEDIUM-TYPE_E163', 7).
-define('TUNNEL-MEDIUM-TYPE_E164', 8).
-define('TUNNEL-MEDIUM-TYPE_F69', 9).
-define('TUNNEL-MEDIUM-TYPE_X121', 10).
-define('TUNNEL-MEDIUM-TYPE_IPX', 11).
-define('TUNNEL-MEDIUM-TYPE_APPLETALK', 12).
-define('TUNNEL-MEDIUM-TYPE_DECNET_IV', 13).
-define('TUNNEL-MEDIUM-TYPE_BANYAN_VINES', 14).
-define('TUNNEL-MEDIUM-TYPE_E164_NSAP', 15).
-define('ACCT-AUTHENTIC_RADIUS', 1).
-define('ACCT-AUTHENTIC_LOCAL', 2).
-define('ACCT-AUTHENTIC_REMOTE', 3).
-define('ACCT-AUTHENTIC_DIAMETER', 4).
-define('ACCOUNTING-AUTH-METHOD_PAP', 1).
-define('ACCOUNTING-AUTH-METHOD_CHAP', 2).
-define('ACCOUNTING-AUTH-METHOD_MS-CHAP-1', 3).
-define('ACCOUNTING-AUTH-METHOD_MS-CHAP-2', 4).
-define('ACCOUNTING-AUTH-METHOD_EAP', 5).
-define('ACCOUNTING-AUTH-METHOD_NONE', 7).
-define('TERMINATION-CAUSE_USER_REQUEST', 11).
-define('TERMINATION-CAUSE_LOST_CARRIER', 12).
-define('TERMINATION-CAUSE_LOST_SERVICE', 13).
-define('TERMINATION-CAUSE_IDLE_TIMEOUT', 14).
-define('TERMINATION-CAUSE_SESSION_TIMEOUT', 15).
-define('TERMINATION-CAUSE_ADMIN_RESET', 16).
-define('TERMINATION-CAUSE_ADMIN_REBOOT', 17).
-define('TERMINATION-CAUSE_PORT_ERROR', 18).
-define('TERMINATION-CAUSE_NAS_ERROR', 19).
-define('TERMINATION-CAUSE_NAS_REQUEST', 20).
-define('TERMINATION-CAUSE_NAS_REBOOT', 21).
-define('TERMINATION-CAUSE_PORT_UNNEEDED', 22).
-define('TERMINATION-CAUSE_PORT_PREEMPTED', 23).
-define('TERMINATION-CAUSE_PORT_SUSPENDED', 24).
-define('TERMINATION-CAUSE_SERVICE_UNAVAILABLE', 25).
-define('TERMINATION-CAUSE_CALLBACK', 26).
-define('TERMINATION-CAUSE_USER_ERROR', 27).
-define('TERMINATION-CAUSE_HOST_REQUEST', 28).
-define('TERMINATION-CAUSE_SUPPLICANT_RESTART', 29).
-define('TERMINATION-CAUSE_REAUTHORIZATION_FAILURE', 30).
-define('TERMINATION-CAUSE_PORT_REINIT', 31).
-define('TERMINATION-CAUSE_PORT_DISABLED', 32).



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

