%% -------------------------------------------------------------------
%% This is a generated file.
%% -------------------------------------------------------------------

-hrl_name('diameter_rfc5777.hrl').


%%% -------------------------------------------------------
%%% Grouped AVP records:
%%% -------------------------------------------------------

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

-define('PROTOCOL_PROTOCOL_TODO_CHECK_RFC2780', 0).
-define('DIRECTION_DIRECTION_IN', 0).
-define('DIRECTION_DIRECTION_OUT', 1).
-define('DIRECTION_DIRECTION_BOTH', 2).
-define('NEGATED_NEGATED_FALSE', 0).
-define('NEGATED_NEGATED_TRUE', 1).
-define('USE-ASSIGNED-ADDRESS_USE_ASSIGNED_ADDRESS_FALSE', 0).
-define('USE-ASSIGNED-ADDRESS_USE_ASSIGNED_ADDRESS_TRUE', 1).
-define('DIFFSERV-CODE-POINT_DIFFSERV_CODE_POINT_TODO_CHECK_RFC2474', 0).
-define('FRAGMENTATION-FLAG_FRAGMENTATION_FLAG_DF', 0).
-define('FRAGMENTATION-FLAG_FRAGMENTATION_FLAG_MF', 1).
-define('IP-OPTION-TYPE_IP_OPTION_TYPE_TODO_CHECK_RFC2780', 0).
-define('TCP-OPTION-TYPE_TCP_OPTION_TYPE_TODO_CHECK_RFC2780', 0).
-define('ICMP-TYPE-NUMBER_ICMP_TYPE_NUMBER_TODO_CHECK_RFC2780', 0).
-define('ICMP-CODE_ICMP_CODE_TODO_CHECK_RFC2780', 0).
-define('TIMEZONE-FLAG_TIMEZOME_FLAG_UTC', 0).
-define('TIMEZONE-FLAG_TIMEZOME_FLAG_LOCAL', 1).
-define('TIMEZONE-FLAG_TIMEZOME_FLAG_OFFSET', 2).
-define('TREATMENT-ACTION_TREATMENT_ACTION_DROP', 0).
-define('TREATMENT-ACTION_TREATMENT_ACTION_SHAPE', 1).
-define('TREATMENT-ACTION_TREATMENT_ACTION_MARK', 2).
-define('TREATMENT-ACTION_TREATMENT_ACTION_PERMIT', 3).
-define('QOS-SEMANTICS_QOS_SEMANTICS_DESIRED', 0).
-define('QOS-SEMANTICS_QOS_SEMANTICS_AVAILABLE', 1).
-define('QOS-SEMANTICS_QOS_SEMANTICS_DELIVERED', 2).
-define('QOS-SEMANTICS_QOS_SEMANTICS_MINIMUM', 3).
-define('QOS-SEMANTICS_QOS_SEMANTICS_AUTHORIZE', 4).



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

