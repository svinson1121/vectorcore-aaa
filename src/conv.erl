-module(conv).

-include("conv.hrl").

-export([dia_rc_success/1, nai_to_imsi/1]).

dia_rc_success(#epdg_dia_rc{result_code = 2001}) -> ok;
dia_rc_success(#epdg_dia_rc{result_code = 2002}) -> ok;
dia_rc_success(_) -> invalid_result_code.

%% 3GPP TS 23.003 clause 19
%% Input: "<IMSI>@nai.epc.mnc<MNC>.mcc<MCC>.3gppnetwork.org"
nai_to_imsi(NAI) ->
    case string:find(NAI, "@") of
    nomatch -> NAI;
    _ ->
        NAIRev = string:reverse(NAI),
        ImsiRev = string:find(NAIRev, "@", trailing),
        ImsiRev2 = string:trim(ImsiRev, leading, "@"),
        string:reverse(ImsiRev2)
    end.
