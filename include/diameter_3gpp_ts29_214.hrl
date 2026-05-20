%% -------------------------------------------------------------------
%% This is a generated file.
%% -------------------------------------------------------------------

-hrl_name('diameter_3gpp_ts29_214.hrl').


%%% -------------------------------------------------------
%%% Grouped AVP records:
%%% -------------------------------------------------------

-record(diameter_rx_Flows,
        {'Media-Component-Number',
         'Flow-Number' = [],
         'Final-Unit-Action' = []}).


%%% -------------------------------------------------------
%%% Grouped AVP records from diameter_gen_base_rfc6733:
%%% -------------------------------------------------------

-record('diameter_rx_Proxy-Info',
        {'Proxy-Host', 'Proxy-State', 'AVP' = []}).

-record('diameter_rx_Failed-AVP', {'AVP' = []}).

-record('diameter_rx_Experimental-Result',
        {'Vendor-Id', 'Experimental-Result-Code'}).

-record('diameter_rx_Vendor-Specific-Application-Id',
        {'Vendor-Id',
         'Auth-Application-Id' = [],
         'Acct-Application-Id' = []}).


%%% -------------------------------------------------------
%%% Grouped AVP records from diameter_rfc4006_cc:
%%% -------------------------------------------------------

-record('diameter_rx_Cost-Information',
        {'Unit-Value', 'Currency-Code', 'Cost-Unit' = []}).

-record('diameter_rx_Unit-Value',
        {'Value-Digits', 'Exponent' = []}).

-record('diameter_rx_Multiple-Services-Credit-Control',
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

-record('diameter_rx_Granted-Service-Unit',
        {'Tariff-Time-Change' = [],
         'CC-Time' = [],
         'CC-Money' = [],
         'CC-Total-Octets' = [],
         'CC-Input-Octets' = [],
         'CC-Output-Octets' = [],
         'CC-Service-Specific-Units' = [],
         'AVP' = []}).

-record('diameter_rx_Requested-Service-Unit',
        {'CC-Time' = [],
         'CC-Money' = [],
         'CC-Total-Octets' = [],
         'CC-Input-Octets' = [],
         'CC-Output-Octets' = [],
         'CC-Service-Specific-Units' = [],
         'AVP' = []}).

-record('diameter_rx_Used-Service-Unit',
        {'Tariff-Change-Usage' = [],
         'CC-Time' = [],
         'CC-Money' = [],
         'CC-Total-Octets' = [],
         'CC-Input-Octets' = [],
         'CC-Output-Octets' = [],
         'CC-Service-Specific-Units' = [],
         'AVP' = []}).

-record('diameter_rx_CC-Money',
        {'Unit-Value', 'Currency-Code' = []}).

-record('diameter_rx_G-S-U-Pool-Reference',
        {'G-S-U-Pool-Identifier',
         'CC-Unit-Type',
         'Unit-Value'}).

-record('diameter_rx_Final-Unit-Indication',
        {'Final-Unit-Action',
         'Restriction-Filter-Rule' = [],
         'Filter-Id' = [],
         'Redirect-Server' = []}).

-record('diameter_rx_Redirect-Server',
        {'Redirect-Address-Type', 'Redirect-Server-Address'}).

-record('diameter_rx_Service-Parameter-Info',
        {'Service-Parameter-Type', 'Service-Parameter-Value'}).

-record('diameter_rx_Subscription-Id',
        {'Subscription-Id-Type', 'Subscription-Id-Data'}).

-record('diameter_rx_User-Equipment-Info',
        {'User-Equipment-Info-Type',
         'User-Equipment-Info-Value'}).


%%% -------------------------------------------------------
%%% ENUM Macros from diameter_gen_base_rfc6733:
%%% -------------------------------------------------------

-ifndef('DIAMETER_RX_DISCONNECT-CAUSE_REBOOTING').
-define('DIAMETER_RX_DISCONNECT-CAUSE_REBOOTING', 0).
-endif.
-ifndef('DIAMETER_RX_DISCONNECT-CAUSE_BUSY').
-define('DIAMETER_RX_DISCONNECT-CAUSE_BUSY', 1).
-endif.
-ifndef('DIAMETER_RX_DISCONNECT-CAUSE_DO_NOT_WANT_TO_TALK_TO_YOU').
-define('DIAMETER_RX_DISCONNECT-CAUSE_DO_NOT_WANT_TO_TALK_TO_YOU', 2).
-endif.
-ifndef('DIAMETER_RX_REDIRECT-HOST-USAGE_DONT_CACHE').
-define('DIAMETER_RX_REDIRECT-HOST-USAGE_DONT_CACHE', 0).
-endif.
-ifndef('DIAMETER_RX_REDIRECT-HOST-USAGE_ALL_SESSION').
-define('DIAMETER_RX_REDIRECT-HOST-USAGE_ALL_SESSION', 1).
-endif.
-ifndef('DIAMETER_RX_REDIRECT-HOST-USAGE_ALL_REALM').
-define('DIAMETER_RX_REDIRECT-HOST-USAGE_ALL_REALM', 2).
-endif.
-ifndef('DIAMETER_RX_REDIRECT-HOST-USAGE_REALM_AND_APPLICATION').
-define('DIAMETER_RX_REDIRECT-HOST-USAGE_REALM_AND_APPLICATION', 3).
-endif.
-ifndef('DIAMETER_RX_REDIRECT-HOST-USAGE_ALL_APPLICATION').
-define('DIAMETER_RX_REDIRECT-HOST-USAGE_ALL_APPLICATION', 4).
-endif.
-ifndef('DIAMETER_RX_REDIRECT-HOST-USAGE_ALL_HOST').
-define('DIAMETER_RX_REDIRECT-HOST-USAGE_ALL_HOST', 5).
-endif.
-ifndef('DIAMETER_RX_REDIRECT-HOST-USAGE_ALL_USER').
-define('DIAMETER_RX_REDIRECT-HOST-USAGE_ALL_USER', 6).
-endif.
-ifndef('DIAMETER_RX_AUTH-REQUEST-TYPE_AUTHENTICATE_ONLY').
-define('DIAMETER_RX_AUTH-REQUEST-TYPE_AUTHENTICATE_ONLY', 1).
-endif.
-ifndef('DIAMETER_RX_AUTH-REQUEST-TYPE_AUTHORIZE_ONLY').
-define('DIAMETER_RX_AUTH-REQUEST-TYPE_AUTHORIZE_ONLY', 2).
-endif.
-ifndef('DIAMETER_RX_AUTH-REQUEST-TYPE_AUTHORIZE_AUTHENTICATE').
-define('DIAMETER_RX_AUTH-REQUEST-TYPE_AUTHORIZE_AUTHENTICATE', 3).
-endif.
-ifndef('DIAMETER_RX_AUTH-SESSION-STATE_STATE_MAINTAINED').
-define('DIAMETER_RX_AUTH-SESSION-STATE_STATE_MAINTAINED', 0).
-endif.
-ifndef('DIAMETER_RX_AUTH-SESSION-STATE_NO_STATE_MAINTAINED').
-define('DIAMETER_RX_AUTH-SESSION-STATE_NO_STATE_MAINTAINED', 1).
-endif.
-ifndef('DIAMETER_RX_RE-AUTH-REQUEST-TYPE_AUTHORIZE_ONLY').
-define('DIAMETER_RX_RE-AUTH-REQUEST-TYPE_AUTHORIZE_ONLY', 0).
-endif.
-ifndef('DIAMETER_RX_RE-AUTH-REQUEST-TYPE_AUTHORIZE_AUTHENTICATE').
-define('DIAMETER_RX_RE-AUTH-REQUEST-TYPE_AUTHORIZE_AUTHENTICATE', 1).
-endif.
-ifndef('DIAMETER_RX_TERMINATION-CAUSE_LOGOUT').
-define('DIAMETER_RX_TERMINATION-CAUSE_LOGOUT', 1).
-endif.
-ifndef('DIAMETER_RX_TERMINATION-CAUSE_SERVICE_NOT_PROVIDED').
-define('DIAMETER_RX_TERMINATION-CAUSE_SERVICE_NOT_PROVIDED', 2).
-endif.
-ifndef('DIAMETER_RX_TERMINATION-CAUSE_BAD_ANSWER').
-define('DIAMETER_RX_TERMINATION-CAUSE_BAD_ANSWER', 3).
-endif.
-ifndef('DIAMETER_RX_TERMINATION-CAUSE_ADMINISTRATIVE').
-define('DIAMETER_RX_TERMINATION-CAUSE_ADMINISTRATIVE', 4).
-endif.
-ifndef('DIAMETER_RX_TERMINATION-CAUSE_LINK_BROKEN').
-define('DIAMETER_RX_TERMINATION-CAUSE_LINK_BROKEN', 5).
-endif.
-ifndef('DIAMETER_RX_TERMINATION-CAUSE_AUTH_EXPIRED').
-define('DIAMETER_RX_TERMINATION-CAUSE_AUTH_EXPIRED', 6).
-endif.
-ifndef('DIAMETER_RX_TERMINATION-CAUSE_USER_MOVED').
-define('DIAMETER_RX_TERMINATION-CAUSE_USER_MOVED', 7).
-endif.
-ifndef('DIAMETER_RX_TERMINATION-CAUSE_SESSION_TIMEOUT').
-define('DIAMETER_RX_TERMINATION-CAUSE_SESSION_TIMEOUT', 8).
-endif.
-ifndef('DIAMETER_RX_SESSION-SERVER-FAILOVER_REFUSE_SERVICE').
-define('DIAMETER_RX_SESSION-SERVER-FAILOVER_REFUSE_SERVICE', 0).
-endif.
-ifndef('DIAMETER_RX_SESSION-SERVER-FAILOVER_TRY_AGAIN').
-define('DIAMETER_RX_SESSION-SERVER-FAILOVER_TRY_AGAIN', 1).
-endif.
-ifndef('DIAMETER_RX_SESSION-SERVER-FAILOVER_ALLOW_SERVICE').
-define('DIAMETER_RX_SESSION-SERVER-FAILOVER_ALLOW_SERVICE', 2).
-endif.
-ifndef('DIAMETER_RX_SESSION-SERVER-FAILOVER_TRY_AGAIN_ALLOW_SERVICE').
-define('DIAMETER_RX_SESSION-SERVER-FAILOVER_TRY_AGAIN_ALLOW_SERVICE', 3).
-endif.
-ifndef('DIAMETER_RX_ACCOUNTING-RECORD-TYPE_EVENT_RECORD').
-define('DIAMETER_RX_ACCOUNTING-RECORD-TYPE_EVENT_RECORD', 1).
-endif.
-ifndef('DIAMETER_RX_ACCOUNTING-RECORD-TYPE_START_RECORD').
-define('DIAMETER_RX_ACCOUNTING-RECORD-TYPE_START_RECORD', 2).
-endif.
-ifndef('DIAMETER_RX_ACCOUNTING-RECORD-TYPE_INTERIM_RECORD').
-define('DIAMETER_RX_ACCOUNTING-RECORD-TYPE_INTERIM_RECORD', 3).
-endif.
-ifndef('DIAMETER_RX_ACCOUNTING-RECORD-TYPE_STOP_RECORD').
-define('DIAMETER_RX_ACCOUNTING-RECORD-TYPE_STOP_RECORD', 4).
-endif.
-ifndef('DIAMETER_RX_ACCOUNTING-REALTIME-REQUIRED_DELIVER_AND_GRANT').
-define('DIAMETER_RX_ACCOUNTING-REALTIME-REQUIRED_DELIVER_AND_GRANT', 1).
-endif.
-ifndef('DIAMETER_RX_ACCOUNTING-REALTIME-REQUIRED_GRANT_AND_STORE').
-define('DIAMETER_RX_ACCOUNTING-REALTIME-REQUIRED_GRANT_AND_STORE', 2).
-endif.
-ifndef('DIAMETER_RX_ACCOUNTING-REALTIME-REQUIRED_GRANT_AND_LOSE').
-define('DIAMETER_RX_ACCOUNTING-REALTIME-REQUIRED_GRANT_AND_LOSE', 3).
-endif.



%%% -------------------------------------------------------
%%% ENUM Macros from diameter_rfc4006_cc:
%%% -------------------------------------------------------

-ifndef('DIAMETER_RX_CC-REQUEST-TYPE_INITIAL_REQUEST').
-define('DIAMETER_RX_CC-REQUEST-TYPE_INITIAL_REQUEST', 1).
-endif.
-ifndef('DIAMETER_RX_CC-REQUEST-TYPE_UPDATE_REQUEST').
-define('DIAMETER_RX_CC-REQUEST-TYPE_UPDATE_REQUEST', 2).
-endif.
-ifndef('DIAMETER_RX_CC-REQUEST-TYPE_TERMINATION_REQUEST').
-define('DIAMETER_RX_CC-REQUEST-TYPE_TERMINATION_REQUEST', 3).
-endif.
-ifndef('DIAMETER_RX_CC-REQUEST-TYPE_EVENT_REQUEST').
-define('DIAMETER_RX_CC-REQUEST-TYPE_EVENT_REQUEST', 4).
-endif.
-ifndef('DIAMETER_RX_CC-SESSION-FAILOVER_NOT_SUPPORTED').
-define('DIAMETER_RX_CC-SESSION-FAILOVER_NOT_SUPPORTED', 0).
-endif.
-ifndef('DIAMETER_RX_CC-SESSION-FAILOVER_SUPPORTED').
-define('DIAMETER_RX_CC-SESSION-FAILOVER_SUPPORTED', 1).
-endif.
-ifndef('DIAMETER_RX_CHECK-BALANCE-RESULT_ENOUGH_CREDIT').
-define('DIAMETER_RX_CHECK-BALANCE-RESULT_ENOUGH_CREDIT', 0).
-endif.
-ifndef('DIAMETER_RX_CHECK-BALANCE-RESULT_NO_CREDIT').
-define('DIAMETER_RX_CHECK-BALANCE-RESULT_NO_CREDIT', 1).
-endif.
-ifndef('DIAMETER_RX_CREDIT-CONTROL_AUTHORIZATION').
-define('DIAMETER_RX_CREDIT-CONTROL_AUTHORIZATION', 0).
-endif.
-ifndef('DIAMETER_RX_CREDIT-CONTROL_RE_AUTHORIZATION').
-define('DIAMETER_RX_CREDIT-CONTROL_RE_AUTHORIZATION', 1).
-endif.
-ifndef('DIAMETER_RX_CREDIT-CONTROL-FAILURE-HANDLING_TERMINATE').
-define('DIAMETER_RX_CREDIT-CONTROL-FAILURE-HANDLING_TERMINATE', 0).
-endif.
-ifndef('DIAMETER_RX_CREDIT-CONTROL-FAILURE-HANDLING_CONTINUE').
-define('DIAMETER_RX_CREDIT-CONTROL-FAILURE-HANDLING_CONTINUE', 1).
-endif.
-ifndef('DIAMETER_RX_CREDIT-CONTROL-FAILURE-HANDLING_RETRY_AND_TERMINATE').
-define('DIAMETER_RX_CREDIT-CONTROL-FAILURE-HANDLING_RETRY_AND_TERMINATE', 2).
-endif.
-ifndef('DIAMETER_RX_DIRECT-DEBITING-FAILURE-HANDLING_TERMINATE_OR_BUFFER').
-define('DIAMETER_RX_DIRECT-DEBITING-FAILURE-HANDLING_TERMINATE_OR_BUFFER', 0).
-endif.
-ifndef('DIAMETER_RX_DIRECT-DEBITING-FAILURE-HANDLING_CONTINUE').
-define('DIAMETER_RX_DIRECT-DEBITING-FAILURE-HANDLING_CONTINUE', 1).
-endif.
-ifndef('DIAMETER_RX_TARIFF-CHANGE-USAGE_UNIT_BEFORE_TARIFF_CHANGE').
-define('DIAMETER_RX_TARIFF-CHANGE-USAGE_UNIT_BEFORE_TARIFF_CHANGE', 0).
-endif.
-ifndef('DIAMETER_RX_TARIFF-CHANGE-USAGE_UNIT_AFTER_TARIFF_CHANGE').
-define('DIAMETER_RX_TARIFF-CHANGE-USAGE_UNIT_AFTER_TARIFF_CHANGE', 1).
-endif.
-ifndef('DIAMETER_RX_TARIFF-CHANGE-USAGE_UNIT_INDETERMINATE').
-define('DIAMETER_RX_TARIFF-CHANGE-USAGE_UNIT_INDETERMINATE', 2).
-endif.
-ifndef('DIAMETER_RX_CC-UNIT-TYPE_TIME').
-define('DIAMETER_RX_CC-UNIT-TYPE_TIME', 0).
-endif.
-ifndef('DIAMETER_RX_CC-UNIT-TYPE_MONEY').
-define('DIAMETER_RX_CC-UNIT-TYPE_MONEY', 1).
-endif.
-ifndef('DIAMETER_RX_CC-UNIT-TYPE_TOTAL-OCTETS').
-define('DIAMETER_RX_CC-UNIT-TYPE_TOTAL-OCTETS', 2).
-endif.
-ifndef('DIAMETER_RX_CC-UNIT-TYPE_INPUT-OCTETS').
-define('DIAMETER_RX_CC-UNIT-TYPE_INPUT-OCTETS', 3).
-endif.
-ifndef('DIAMETER_RX_CC-UNIT-TYPE_OUTPUT-OCTETS').
-define('DIAMETER_RX_CC-UNIT-TYPE_OUTPUT-OCTETS', 4).
-endif.
-ifndef('DIAMETER_RX_CC-UNIT-TYPE_SERVICE-SPECIFIC-UNITS').
-define('DIAMETER_RX_CC-UNIT-TYPE_SERVICE-SPECIFIC-UNITS', 5).
-endif.
-ifndef('DIAMETER_RX_FINAL-UNIT-ACTION_TERMINATE').
-define('DIAMETER_RX_FINAL-UNIT-ACTION_TERMINATE', 0).
-endif.
-ifndef('DIAMETER_RX_FINAL-UNIT-ACTION_REDIRECT').
-define('DIAMETER_RX_FINAL-UNIT-ACTION_REDIRECT', 1).
-endif.
-ifndef('DIAMETER_RX_FINAL-UNIT-ACTION_RESTRICT_ACCESS').
-define('DIAMETER_RX_FINAL-UNIT-ACTION_RESTRICT_ACCESS', 2).
-endif.
-ifndef('DIAMETER_RX_REDIRECT-ADDRESS-TYPE_IPV4').
-define('DIAMETER_RX_REDIRECT-ADDRESS-TYPE_IPV4', 0).
-endif.
-ifndef('DIAMETER_RX_REDIRECT-ADDRESS-TYPE_IPV6').
-define('DIAMETER_RX_REDIRECT-ADDRESS-TYPE_IPV6', 1).
-endif.
-ifndef('DIAMETER_RX_REDIRECT-ADDRESS-TYPE_URL').
-define('DIAMETER_RX_REDIRECT-ADDRESS-TYPE_URL', 2).
-endif.
-ifndef('DIAMETER_RX_REDIRECT-ADDRESS-TYPE_SIP_URI').
-define('DIAMETER_RX_REDIRECT-ADDRESS-TYPE_SIP_URI', 3).
-endif.
-ifndef('DIAMETER_RX_MULTIPLE-SERVICES-INDICATOR_NOT_SUPPORTED').
-define('DIAMETER_RX_MULTIPLE-SERVICES-INDICATOR_NOT_SUPPORTED', 0).
-endif.
-ifndef('DIAMETER_RX_MULTIPLE-SERVICES-INDICATOR_SUPPORTED').
-define('DIAMETER_RX_MULTIPLE-SERVICES-INDICATOR_SUPPORTED', 1).
-endif.
-ifndef('DIAMETER_RX_REQUESTED-ACTION_DIRECT_DEBITING').
-define('DIAMETER_RX_REQUESTED-ACTION_DIRECT_DEBITING', 0).
-endif.
-ifndef('DIAMETER_RX_REQUESTED-ACTION_REFUND_ACCOUNT').
-define('DIAMETER_RX_REQUESTED-ACTION_REFUND_ACCOUNT', 1).
-endif.
-ifndef('DIAMETER_RX_REQUESTED-ACTION_CHECK_BALANCE').
-define('DIAMETER_RX_REQUESTED-ACTION_CHECK_BALANCE', 2).
-endif.
-ifndef('DIAMETER_RX_REQUESTED-ACTION_PRICE_ENQUIRY').
-define('DIAMETER_RX_REQUESTED-ACTION_PRICE_ENQUIRY', 3).
-endif.
-ifndef('DIAMETER_RX_SUBSCRIPTION-ID-TYPE_END_USER_E164').
-define('DIAMETER_RX_SUBSCRIPTION-ID-TYPE_END_USER_E164', 0).
-endif.
-ifndef('DIAMETER_RX_SUBSCRIPTION-ID-TYPE_END_USER_IMSI').
-define('DIAMETER_RX_SUBSCRIPTION-ID-TYPE_END_USER_IMSI', 1).
-endif.
-ifndef('DIAMETER_RX_SUBSCRIPTION-ID-TYPE_END_USER_SIP_URI').
-define('DIAMETER_RX_SUBSCRIPTION-ID-TYPE_END_USER_SIP_URI', 2).
-endif.
-ifndef('DIAMETER_RX_SUBSCRIPTION-ID-TYPE_END_USER_NAI').
-define('DIAMETER_RX_SUBSCRIPTION-ID-TYPE_END_USER_NAI', 3).
-endif.
-ifndef('DIAMETER_RX_SUBSCRIPTION-ID-TYPE_END_USER_PRIVATE').
-define('DIAMETER_RX_SUBSCRIPTION-ID-TYPE_END_USER_PRIVATE', 4).
-endif.
-ifndef('DIAMETER_RX_USER-EQUIPMENT-INFO-TYPE_IMEISV').
-define('DIAMETER_RX_USER-EQUIPMENT-INFO-TYPE_IMEISV', 0).
-endif.
-ifndef('DIAMETER_RX_USER-EQUIPMENT-INFO-TYPE_MAC').
-define('DIAMETER_RX_USER-EQUIPMENT-INFO-TYPE_MAC', 1).
-endif.
-ifndef('DIAMETER_RX_USER-EQUIPMENT-INFO-TYPE_EUI64').
-define('DIAMETER_RX_USER-EQUIPMENT-INFO-TYPE_EUI64', 2).
-endif.
-ifndef('DIAMETER_RX_USER-EQUIPMENT-INFO-TYPE_MODIFIED_EUI64').
-define('DIAMETER_RX_USER-EQUIPMENT-INFO-TYPE_MODIFIED_EUI64', 3).
-endif.

