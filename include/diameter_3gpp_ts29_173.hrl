%% -------------------------------------------------------------------
%% This is a generated file.
%% -------------------------------------------------------------------

-hrl_name('diameter_3gpp_ts29_173.hrl').


%%% -------------------------------------------------------
%%% Message records:
%%% -------------------------------------------------------

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


%%% -------------------------------------------------------
%%% Grouped AVP records:
%%% -------------------------------------------------------

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
%%% Grouped AVP records from diameter_3gpp_break_circles:
%%% -------------------------------------------------------

-record('Emergency-Info',
        {'MIP6-Agent-Info' = [], 'AVP' = []}).


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

