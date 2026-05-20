%% -------------------------------------------------------------------
%% This is a generated file.
%% -------------------------------------------------------------------

-hrl_name('diameter_3gpp_ts29_229.hrl').


%%% -------------------------------------------------------
%%% Grouped AVP records:
%%% -------------------------------------------------------

-record('diameter_cx_Charging-Information',
        {'Primary-Event-Charging-Function-Name' = [],
         'Secondary-Event-Charging-Function-Name' = [],
         'Primary-Charging-Collection-Function-Name' = [],
         'Secondary-Charging-Collection-Function-Name' = [],
         'AVP' = []}).

-record('diameter_cx_Supported-Features',
        {'Vendor-Id',
         'Feature-List-ID',
         'Feature-List',
         'AVP' = []}).

-record('diameter_cx_Supported-Applications',
        {'Auth-Application-Id' = [],
         'Acct-Application-Id' = [],
         'Vendor-Specific-Application-Id' = [],
         'AVP' = []}).

-record('diameter_cx_SIP-Auth-Data-Item',
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

-record('diameter_cx_Deregistration-Reason',
        {'Reason-Code', 'Reason-Info' = [], 'AVP' = []}).

-record('diameter_cx_SIP-Digest-Authenticate',
        {'Digest-Realm',
         'Digest-QoP',
         'Digest-HA1',
         'Digest-Algorithm' = [],
         'AVP' = []}).


%%% -------------------------------------------------------
%%% Grouped AVP records from diameter_gen_base_rfc6733:
%%% -------------------------------------------------------

-record('diameter_cx_Proxy-Info',
        {'Proxy-Host', 'Proxy-State', 'AVP' = []}).

-record('diameter_cx_Failed-AVP', {'AVP' = []}).

-record('diameter_cx_Experimental-Result',
        {'Vendor-Id', 'Experimental-Result-Code'}).

-record('diameter_cx_Vendor-Specific-Application-Id',
        {'Vendor-Id',
         'Auth-Application-Id' = [],
         'Acct-Application-Id' = []}).


%%% -------------------------------------------------------
%%% ENUM Macros:
%%% -------------------------------------------------------

-define('DIAMETER_CX_SERVER-ASSIGNMENT-TYPE_NO_ASSIGNMENT', 0).
-define('DIAMETER_CX_SERVER-ASSIGNMENT-TYPE_REGISTRATION', 1).
-define('DIAMETER_CX_SERVER-ASSIGNMENT-TYPE_RE_REGISTRATION', 2).
-define('DIAMETER_CX_SERVER-ASSIGNMENT-TYPE_UNREGISTERED_USER', 3).
-define('DIAMETER_CX_SERVER-ASSIGNMENT-TYPE_TIMEOUT_DEREGISTRATION', 4).
-define('DIAMETER_CX_SERVER-ASSIGNMENT-TYPE_USER_DEREGISTRATION', 5).
-define('DIAMETER_CX_SERVER-ASSIGNMENT-TYPE_TIMEOUT_DEREGISTRATION_STORE_SERVER_NAME', 6).
-define('DIAMETER_CX_SERVER-ASSIGNMENT-TYPE_USER_DEREGISTRATION_STORE_SERVER_NAME', 7).
-define('DIAMETER_CX_SERVER-ASSIGNMENT-TYPE_ADMINISTRATIVE_DEREGISTRATION', 8).
-define('DIAMETER_CX_SERVER-ASSIGNMENT-TYPE_AUTHENTICATION_FAILURE', 9).
-define('DIAMETER_CX_SERVER-ASSIGNMENT-TYPE_AUTHENTICATION_TIMEOUT', 10).
-define('DIAMETER_CX_SERVER-ASSIGNMENT-TYPE_DEREGISTRATION_TOO_MUCH_DATA', 11).
-define('DIAMETER_CX_SERVER-ASSIGNMENT-TYPE_AAA_USER_DATA_REQUEST', 12).
-define('DIAMETER_CX_SERVER-ASSIGNMENT-TYPE_PGW_UPDATE', 13).
-define('DIAMETER_CX_SERVER-ASSIGNMENT-TYPE_RESTORATION', 14).
-define('DIAMETER_CX_REASON-CODE_PERMANENT_TERMINATION', 0).
-define('DIAMETER_CX_REASON-CODE_NEW_SERVER_ASSIGNED', 1).
-define('DIAMETER_CX_REASON-CODE_SERVER_CHANGE', 2).
-define('DIAMETER_CX_REASON-CODE_REMOVE_S-CSCF', 3).



%%% -------------------------------------------------------
%%% ENUM Macros from diameter_gen_base_rfc6733:
%%% -------------------------------------------------------

-ifndef('DIAMETER_CX_DISCONNECT-CAUSE_REBOOTING').
-define('DIAMETER_CX_DISCONNECT-CAUSE_REBOOTING', 0).
-endif.
-ifndef('DIAMETER_CX_DISCONNECT-CAUSE_BUSY').
-define('DIAMETER_CX_DISCONNECT-CAUSE_BUSY', 1).
-endif.
-ifndef('DIAMETER_CX_DISCONNECT-CAUSE_DO_NOT_WANT_TO_TALK_TO_YOU').
-define('DIAMETER_CX_DISCONNECT-CAUSE_DO_NOT_WANT_TO_TALK_TO_YOU', 2).
-endif.
-ifndef('DIAMETER_CX_REDIRECT-HOST-USAGE_DONT_CACHE').
-define('DIAMETER_CX_REDIRECT-HOST-USAGE_DONT_CACHE', 0).
-endif.
-ifndef('DIAMETER_CX_REDIRECT-HOST-USAGE_ALL_SESSION').
-define('DIAMETER_CX_REDIRECT-HOST-USAGE_ALL_SESSION', 1).
-endif.
-ifndef('DIAMETER_CX_REDIRECT-HOST-USAGE_ALL_REALM').
-define('DIAMETER_CX_REDIRECT-HOST-USAGE_ALL_REALM', 2).
-endif.
-ifndef('DIAMETER_CX_REDIRECT-HOST-USAGE_REALM_AND_APPLICATION').
-define('DIAMETER_CX_REDIRECT-HOST-USAGE_REALM_AND_APPLICATION', 3).
-endif.
-ifndef('DIAMETER_CX_REDIRECT-HOST-USAGE_ALL_APPLICATION').
-define('DIAMETER_CX_REDIRECT-HOST-USAGE_ALL_APPLICATION', 4).
-endif.
-ifndef('DIAMETER_CX_REDIRECT-HOST-USAGE_ALL_HOST').
-define('DIAMETER_CX_REDIRECT-HOST-USAGE_ALL_HOST', 5).
-endif.
-ifndef('DIAMETER_CX_REDIRECT-HOST-USAGE_ALL_USER').
-define('DIAMETER_CX_REDIRECT-HOST-USAGE_ALL_USER', 6).
-endif.
-ifndef('DIAMETER_CX_AUTH-REQUEST-TYPE_AUTHENTICATE_ONLY').
-define('DIAMETER_CX_AUTH-REQUEST-TYPE_AUTHENTICATE_ONLY', 1).
-endif.
-ifndef('DIAMETER_CX_AUTH-REQUEST-TYPE_AUTHORIZE_ONLY').
-define('DIAMETER_CX_AUTH-REQUEST-TYPE_AUTHORIZE_ONLY', 2).
-endif.
-ifndef('DIAMETER_CX_AUTH-REQUEST-TYPE_AUTHORIZE_AUTHENTICATE').
-define('DIAMETER_CX_AUTH-REQUEST-TYPE_AUTHORIZE_AUTHENTICATE', 3).
-endif.
-ifndef('DIAMETER_CX_AUTH-SESSION-STATE_STATE_MAINTAINED').
-define('DIAMETER_CX_AUTH-SESSION-STATE_STATE_MAINTAINED', 0).
-endif.
-ifndef('DIAMETER_CX_AUTH-SESSION-STATE_NO_STATE_MAINTAINED').
-define('DIAMETER_CX_AUTH-SESSION-STATE_NO_STATE_MAINTAINED', 1).
-endif.
-ifndef('DIAMETER_CX_RE-AUTH-REQUEST-TYPE_AUTHORIZE_ONLY').
-define('DIAMETER_CX_RE-AUTH-REQUEST-TYPE_AUTHORIZE_ONLY', 0).
-endif.
-ifndef('DIAMETER_CX_RE-AUTH-REQUEST-TYPE_AUTHORIZE_AUTHENTICATE').
-define('DIAMETER_CX_RE-AUTH-REQUEST-TYPE_AUTHORIZE_AUTHENTICATE', 1).
-endif.
-ifndef('DIAMETER_CX_TERMINATION-CAUSE_LOGOUT').
-define('DIAMETER_CX_TERMINATION-CAUSE_LOGOUT', 1).
-endif.
-ifndef('DIAMETER_CX_TERMINATION-CAUSE_SERVICE_NOT_PROVIDED').
-define('DIAMETER_CX_TERMINATION-CAUSE_SERVICE_NOT_PROVIDED', 2).
-endif.
-ifndef('DIAMETER_CX_TERMINATION-CAUSE_BAD_ANSWER').
-define('DIAMETER_CX_TERMINATION-CAUSE_BAD_ANSWER', 3).
-endif.
-ifndef('DIAMETER_CX_TERMINATION-CAUSE_ADMINISTRATIVE').
-define('DIAMETER_CX_TERMINATION-CAUSE_ADMINISTRATIVE', 4).
-endif.
-ifndef('DIAMETER_CX_TERMINATION-CAUSE_LINK_BROKEN').
-define('DIAMETER_CX_TERMINATION-CAUSE_LINK_BROKEN', 5).
-endif.
-ifndef('DIAMETER_CX_TERMINATION-CAUSE_AUTH_EXPIRED').
-define('DIAMETER_CX_TERMINATION-CAUSE_AUTH_EXPIRED', 6).
-endif.
-ifndef('DIAMETER_CX_TERMINATION-CAUSE_USER_MOVED').
-define('DIAMETER_CX_TERMINATION-CAUSE_USER_MOVED', 7).
-endif.
-ifndef('DIAMETER_CX_TERMINATION-CAUSE_SESSION_TIMEOUT').
-define('DIAMETER_CX_TERMINATION-CAUSE_SESSION_TIMEOUT', 8).
-endif.
-ifndef('DIAMETER_CX_SESSION-SERVER-FAILOVER_REFUSE_SERVICE').
-define('DIAMETER_CX_SESSION-SERVER-FAILOVER_REFUSE_SERVICE', 0).
-endif.
-ifndef('DIAMETER_CX_SESSION-SERVER-FAILOVER_TRY_AGAIN').
-define('DIAMETER_CX_SESSION-SERVER-FAILOVER_TRY_AGAIN', 1).
-endif.
-ifndef('DIAMETER_CX_SESSION-SERVER-FAILOVER_ALLOW_SERVICE').
-define('DIAMETER_CX_SESSION-SERVER-FAILOVER_ALLOW_SERVICE', 2).
-endif.
-ifndef('DIAMETER_CX_SESSION-SERVER-FAILOVER_TRY_AGAIN_ALLOW_SERVICE').
-define('DIAMETER_CX_SESSION-SERVER-FAILOVER_TRY_AGAIN_ALLOW_SERVICE', 3).
-endif.
-ifndef('DIAMETER_CX_ACCOUNTING-RECORD-TYPE_EVENT_RECORD').
-define('DIAMETER_CX_ACCOUNTING-RECORD-TYPE_EVENT_RECORD', 1).
-endif.
-ifndef('DIAMETER_CX_ACCOUNTING-RECORD-TYPE_START_RECORD').
-define('DIAMETER_CX_ACCOUNTING-RECORD-TYPE_START_RECORD', 2).
-endif.
-ifndef('DIAMETER_CX_ACCOUNTING-RECORD-TYPE_INTERIM_RECORD').
-define('DIAMETER_CX_ACCOUNTING-RECORD-TYPE_INTERIM_RECORD', 3).
-endif.
-ifndef('DIAMETER_CX_ACCOUNTING-RECORD-TYPE_STOP_RECORD').
-define('DIAMETER_CX_ACCOUNTING-RECORD-TYPE_STOP_RECORD', 4).
-endif.
-ifndef('DIAMETER_CX_ACCOUNTING-REALTIME-REQUIRED_DELIVER_AND_GRANT').
-define('DIAMETER_CX_ACCOUNTING-REALTIME-REQUIRED_DELIVER_AND_GRANT', 1).
-endif.
-ifndef('DIAMETER_CX_ACCOUNTING-REALTIME-REQUIRED_GRANT_AND_STORE').
-define('DIAMETER_CX_ACCOUNTING-REALTIME-REQUIRED_GRANT_AND_STORE', 2).
-endif.
-ifndef('DIAMETER_CX_ACCOUNTING-REALTIME-REQUIRED_GRANT_AND_LOSE').
-define('DIAMETER_CX_ACCOUNTING-REALTIME-REQUIRED_GRANT_AND_LOSE', 3).
-endif.

