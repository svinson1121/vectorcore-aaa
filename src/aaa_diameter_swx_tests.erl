% SWx: AAA side test
%
% TS 29.273
%
% (C) 2025 by sysmocom - s.f.m.c. GmbH <info@sysmocom.de>
% Author: Alexander Couzens <lynxis@fe80.eu>
%
% All Rights Reserved
%
% This program is free software; you can redistribute it and/or modify
% it under the terms of the GNU Affero General Public License as
% published by the Free Software Foundation; either version 3 of the
% License, or (at your option) any later version.
%
% This program is distributed in the hope that it will be useful,
% but WITHOUT ANY WARRANTY; without even the implied warranty of
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
% GNU General Public License for more details.
%
% You should have received a copy of the GNU Affero General Public License
% along with this program.  If not, see <https://www.gnu.org/licenses/>.
%
% Additional Permission under GNU AGPL version 3 section 7:
%
% If you modify this Program, or any covered work, by linking or
% combining it with runtime libraries of Erlang/OTP as released by
% Ericsson on https://www.erlang.org (or a modified version of these
% libraries), containing parts covered by the terms of the Erlang Public
% License (https://www.erlang.org/EPLICENSE), the licensors of this
% Program grant you additional permission to convey the resulting work
% without the need to license the runtime libraries of Erlang/OTP under
% the GNU Affero General Public License. Corresponding Source for a
% non-source form of such a combination shall include the source code
% for the parts of the runtime libraries of Erlang/OTP used as well as
% that of the covered work.


-module(aaa_diameter_swx_tests).
-author('Alexander Couzens <lynxis@fe80.eu>').

-include_lib("diameter_3gpp_ts29_273_swx.hrl").
-include_lib("diameter/include/diameter_gen_base_rfc6733.hrl").
-include_lib("diameter/include/diameter.hrl").

-include_lib("eunit/include/eunit.hrl").
-include_lib("kernel/include/logger.hrl").

% "har.localdomain","localdomain","localdomain", % origin host, origin realm, dest realm
encode_mar_test() ->
    % copied from ttcn3 tests
    SessionId = ["epdg.localdomain",";","1818836830",";","1",";","nonode@nohost"],
    Vendor = #'Vendor-Specific-Application-Id'{'Vendor-Id' = 10415,
                                             'Auth-Application-Id' = [16777265]},
    AMar = #'MAR'{'Session-Id' = SessionId,
                  'Origin-Host' = "origin",
                  'Origin-Realm' = "foo",
                  'Destination-Host' = ["hss.localdomain"],
                  'Destination-Realm' = "localdomain",
                  'Auth-Session-State' = 1,
                  'User-Name' = "262426399104394",
                  'Vendor-Specific-Application-Id' = Vendor,
                  'SIP-Auth-Data-Item' = #'SIP-Auth-Data-Item'{
                      'SIP-Authentication-Scheme' = ["EAP-AKA"],
                      'Framed-IP-Address' = [<<255,255,255,254>>]},
                  'SIP-Number-Auth-Items' = 1,
                  'RAT-Type' = 1},

    Hdr = #diameter_header{version = 1,
                           end_to_end_id = 23,
                           hop_by_hop_id = 42},
    Encoded = diameter_codec:encode(
        diameter_3gpp_ts29_273_swx,
        #{ordered_encode => true},
        #diameter_packet{header = Hdr,
                         msg = AMar}),
    ?LOG_DEBUG("Diameter encoded as: ~p", [Encoded]),

    <<1,0,1,32,192,0,1,47,1,0,0,49,0,0,0,42,0,0,0,23,0,0,
    1,7,64,0,0,51,101,112,100,103,46,108,111,99,97,108,
    100,111,109,97,105,110,59,49,56,49,56,56,51,54,56,
    51,48,59,49,59,110,111,110,111,100,101,64,110,111,
    104,111,115,116,0,0,0,1,21,64,0,0,12,0,0,0,1,0,0,1,
    8,64,0,0,14,111,114,105,103,105,110,0,0,0,0,1,40,64,
    0,0,11,102,111,111,0,0,0,1,27,64,0,0,19,108,111,99,
    97,108,100,111,109,97,105,110,0,0,0,0,1,64,0,0,23,
    50,54,50,52,50,54,51,57,57,49,48,52,51,57,52,0,0,0,
    1,4,64,0,0,32,0,0,1,10,64,0,0,12,0,0,40,175,0,0,1,2,
    64,0,0,12,1,0,0,49,0,0,2,100,192,0,0,44,0,0,40,175,
    0,0,2,96,192,0,0,19,0,0,40,175,69,65,80,45,65,75,65,
    0,0,0,0,8,64,0,0,12,255,255,255,254,0,0,2,95,192,0,
    0,16,0,0,40,175,0,0,0,1,0,0,1,37,64,0,0,23,104,115,
    115,46,108,111,99,97,108,100,111,109,97,105,110,0,0,
    0,4,8,128,0,0,16,0,0,40,175,0,0,0,1>> = Encoded#diameter_packet.bin.

encode_mar_with_sip_authentication_context_test() ->
    Vendor = #'Vendor-Specific-Application-Id'{'Vendor-Id' = 10415,
                                             'Auth-Application-Id' = [16777265]},
    AuthContext = <<"wlan.mnc435.mcc311.3gppnetwork.org">>,
    AMar = #'MAR'{'Session-Id' = "session",
                  'Origin-Host' = "origin",
                  'Origin-Realm' = "foo",
                  'Destination-Realm' = "localdomain",
                  'Auth-Session-State' = 1,
                  'User-Name' = "311435000070571",
                  'Vendor-Specific-Application-Id' = Vendor,
                  'SIP-Auth-Data-Item' = #'SIP-Auth-Data-Item'{
                      'SIP-Authentication-Scheme' = ["EAP-AKA'"],
                      'SIP-Authorization' = [<<2,139,0,4>>],
                      'SIP-Authentication-Context' = [AuthContext]},
                  'SIP-Number-Auth-Items' = 1,
                  'RAT-Type' = 1},

    Hdr = #diameter_header{version = 1,
                           end_to_end_id = 23,
                           hop_by_hop_id = 42},
    Encoded = diameter_codec:encode(
        diameter_3gpp_ts29_273_swx,
        #{ordered_encode => true},
        #diameter_packet{header = Hdr,
                         msg = AMar}),

    ?assertMatch({_, _}, binary:match(Encoded#diameter_packet.bin, AuthContext)).
