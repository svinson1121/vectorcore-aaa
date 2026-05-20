%% -------------------------------------------------------------------
%% This is a generated file.
%% -------------------------------------------------------------------

-hrl_name('diameter_rfc4006_cc.hrl').


%%% -------------------------------------------------------
%%% Message records:
%%% -------------------------------------------------------

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


%%% -------------------------------------------------------
%%% Grouped AVP records:
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

-define('CC-REQUEST-TYPE_INITIAL_REQUEST', 1).
-define('CC-REQUEST-TYPE_UPDATE_REQUEST', 2).
-define('CC-REQUEST-TYPE_TERMINATION_REQUEST', 3).
-define('CC-REQUEST-TYPE_EVENT_REQUEST', 4).
-define('CC-SESSION-FAILOVER_NOT_SUPPORTED', 0).
-define('CC-SESSION-FAILOVER_SUPPORTED', 1).
-define('CHECK-BALANCE-RESULT_ENOUGH_CREDIT', 0).
-define('CHECK-BALANCE-RESULT_NO_CREDIT', 1).
-define('CREDIT-CONTROL_AUTHORIZATION', 0).
-define('CREDIT-CONTROL_RE_AUTHORIZATION', 1).
-define('CREDIT-CONTROL-FAILURE-HANDLING_TERMINATE', 0).
-define('CREDIT-CONTROL-FAILURE-HANDLING_CONTINUE', 1).
-define('CREDIT-CONTROL-FAILURE-HANDLING_RETRY_AND_TERMINATE', 2).
-define('DIRECT-DEBITING-FAILURE-HANDLING_TERMINATE_OR_BUFFER', 0).
-define('DIRECT-DEBITING-FAILURE-HANDLING_CONTINUE', 1).
-define('TARIFF-CHANGE-USAGE_UNIT_BEFORE_TARIFF_CHANGE', 0).
-define('TARIFF-CHANGE-USAGE_UNIT_AFTER_TARIFF_CHANGE', 1).
-define('TARIFF-CHANGE-USAGE_UNIT_INDETERMINATE', 2).
-define('CC-UNIT-TYPE_TIME', 0).
-define('CC-UNIT-TYPE_MONEY', 1).
-define('CC-UNIT-TYPE_TOTAL-OCTETS', 2).
-define('CC-UNIT-TYPE_INPUT-OCTETS', 3).
-define('CC-UNIT-TYPE_OUTPUT-OCTETS', 4).
-define('CC-UNIT-TYPE_SERVICE-SPECIFIC-UNITS', 5).
-define('FINAL-UNIT-ACTION_TERMINATE', 0).
-define('FINAL-UNIT-ACTION_REDIRECT', 1).
-define('FINAL-UNIT-ACTION_RESTRICT_ACCESS', 2).
-define('REDIRECT-ADDRESS-TYPE_IPV4', 0).
-define('REDIRECT-ADDRESS-TYPE_IPV6', 1).
-define('REDIRECT-ADDRESS-TYPE_URL', 2).
-define('REDIRECT-ADDRESS-TYPE_SIP_URI', 3).
-define('MULTIPLE-SERVICES-INDICATOR_NOT_SUPPORTED', 0).
-define('MULTIPLE-SERVICES-INDICATOR_SUPPORTED', 1).
-define('REQUESTED-ACTION_DIRECT_DEBITING', 0).
-define('REQUESTED-ACTION_REFUND_ACCOUNT', 1).
-define('REQUESTED-ACTION_CHECK_BALANCE', 2).
-define('REQUESTED-ACTION_PRICE_ENQUIRY', 3).
-define('SUBSCRIPTION-ID-TYPE_END_USER_E164', 0).
-define('SUBSCRIPTION-ID-TYPE_END_USER_IMSI', 1).
-define('SUBSCRIPTION-ID-TYPE_END_USER_SIP_URI', 2).
-define('SUBSCRIPTION-ID-TYPE_END_USER_NAI', 3).
-define('SUBSCRIPTION-ID-TYPE_END_USER_PRIVATE', 4).
-define('USER-EQUIPMENT-INFO-TYPE_IMEISV', 0).
-define('USER-EQUIPMENT-INFO-TYPE_MAC', 1).
-define('USER-EQUIPMENT-INFO-TYPE_EUI64', 2).
-define('USER-EQUIPMENT-INFO-TYPE_MODIFIED_EUI64', 3).



%%% -------------------------------------------------------
%%% DEFINE Macros:
%%% -------------------------------------------------------

-define('RESULT-CODE_END_USER_SERVICE_DENIED', 4010).
-define('RESULT-CODE_CREDIT_CONTROL_NOT_APPLICABLE', 4011).
-define('RESULT-CODE_CREDIT_LIMIT_REACHED', 4012).
-define('RESULT-CODE_USER_UNKNOWN', 5030).
-define('RESULT-CODE_RATING_FAILED', 5031).



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

