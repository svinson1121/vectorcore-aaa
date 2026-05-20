%%
%% EAP-AKA packet helpers.
%%

-module(aaa_eap_aka).

-include("conv.hrl").

-export([challenge/3, challenge/4, identity_request/1, identity_request/2,
	 response_identity/1, terminal_failure/1, verify_challenge_response/3,
	 verify_challenge_response/4, verify_challenge_response_details/4,
	 notification_response_details/1, aka_prime_network_name/0]).

-define(EAP_CODE_REQUEST, 1).
-define(EAP_CODE_RESPONSE, 2).
-define(EAP_TYPE_AKA, 23).
-define(EAP_TYPE_AKA_PRIME, 50).
-define(EAP_AKA_SUBTYPE_CHALLENGE, 1).
-define(EAP_AKA_SUBTYPE_AUTHENTICATION_REJECT, 2).
-define(EAP_AKA_SUBTYPE_IDENTITY, 5).
-define(EAP_AKA_SUBTYPE_CLIENT_ERROR, 14).
-define(EAP_AKA_AT_RAND, 1).
-define(EAP_AKA_AT_AUTN, 2).
-define(EAP_AKA_AT_RES, 3).
-define(EAP_AKA_AT_MAC, 11).
-define(EAP_AKA_AT_PERMANENT_ID_REQ, 10).
-define(EAP_AKA_AT_IDENTITY, 14).
-define(EAP_AKA_AT_NOTIFICATION, 22).
-define(EAP_AKA_AT_KDF_INPUT, 23).
-define(EAP_AKA_AT_KDF, 24).
-define(EAP_AKA_PRIME_KDF_CK_IK, 1).
-define(FIPS186_2_PRF_BLOCK_BYTES, 40).
-define(FIPS186_2_PRF_MODULUS, 1 bsl 160).

identity_request(EapId) ->
	identity_request(aka, EapId).

identity_request(Method, EapId) ->
	Attrs = <<?EAP_AKA_AT_PERMANENT_ID_REQ, 1, 0:16>>,
	Len = 8 + byte_size(Attrs),
	<<?EAP_CODE_REQUEST, (eap_id(EapId)), Len:16/integer-big,
	  (eap_type(Method)), ?EAP_AKA_SUBTYPE_IDENTITY, 0:16, Attrs/binary>>.

challenge(EapId, Identity, #epdg_auth_tuple{rand = Rand, autn = Autn, ik = IK, ck = CK}) ->
	challenge(aka, EapId, Identity, #epdg_auth_tuple{rand = Rand, autn = Autn, ik = IK, ck = CK}).

challenge(Method, EapId, Identity, #epdg_auth_tuple{rand = Rand, autn = Autn, res = XRes,
						    ik = IK, ck = CK}) ->
	RandAttr = encode_attr(?EAP_AKA_AT_RAND, Rand),
	AutnAttr = encode_attr(?EAP_AKA_AT_AUTN, Autn),
	ZeroMacAttr = <<?EAP_AKA_AT_MAC, 5, 0:16, 0:128>>,
	MethodAttrs = method_challenge_attrs(Method),
	AttrsWithZeroMac = <<RandAttr/binary, AutnAttr/binary, MethodAttrs/binary, ZeroMacAttr/binary>>,
	Len = 8 + byte_size(AttrsWithZeroMac),
	PacketWithZeroMac =
		<<?EAP_CODE_REQUEST, (eap_id(EapId)), Len:16/integer-big,
		  (eap_type(Method)), ?EAP_AKA_SUBTYPE_CHALLENGE, 0:16,
		  AttrsWithZeroMac/binary>>,
	KAut = k_aut(Method, Identity, IK, CK),
	Mac = mac_128(Method, KAut, PacketWithZeroMac),
	log_challenge_build(Method, EapId, Identity, Rand, Autn, XRes, CK, IK,
			    KAut, MethodAttrs, byte_size(PacketWithZeroMac), Mac),
	MacAttr = <<?EAP_AKA_AT_MAC, 5, 0:16, Mac/binary>>,
	Attrs = <<RandAttr/binary, AutnAttr/binary, MethodAttrs/binary, MacAttr/binary>>,
	<<?EAP_CODE_REQUEST, (eap_id(EapId)), Len:16/integer-big,
	  (eap_type(Method)), ?EAP_AKA_SUBTYPE_CHALLENGE, 0:16, Attrs/binary>>.

terminal_failure(<<?EAP_CODE_RESPONSE, _EapId, Len:16/integer-big,
		   EapType, Subtype, _Reserved:16, _/binary>> = Payload)
		when Len =< byte_size(Payload) ->
	is_aka_type(EapType) andalso
		(Subtype =:= ?EAP_AKA_SUBTYPE_AUTHENTICATION_REJECT orelse
		 Subtype =:= ?EAP_AKA_SUBTYPE_CLIENT_ERROR);
terminal_failure(_) ->
	false.

notification_response_details(<<?EAP_CODE_RESPONSE, EapId, Len:16/integer-big,
				EapType, ?EAP_AKA_SUBTYPE_CLIENT_ERROR,
				_Reserved:16, Attrs0/binary>> = Payload)
		when Len >= 8, Len =< byte_size(Payload) ->
	Attrs = binary:part(Attrs0, 0, Len - 8),
	Notification = decode_notification_attr(Attrs),
	#{valid => is_aka_type(EapType),
	  eap_identifier => EapId,
	  eap_type => EapType,
	  method => eap_method(EapType),
	  notification_value => Notification,
	  notification_meaning => notification_meaning(Notification),
	  raw_payload_hex => hex(Payload)};
notification_response_details(Payload) when is_binary(Payload) ->
	#{valid => false,
	  notification_value => undefined,
	  notification_meaning => not_notification_response,
	  raw_payload_hex => hex(Payload)};
notification_response_details(_) ->
	#{valid => false,
	  notification_value => undefined,
	  notification_meaning => not_notification_response,
	  raw_payload_hex => undefined}.

verify_challenge_response(<<?EAP_CODE_RESPONSE, _EapId, Len:16/integer-big,
			    EapType, ?EAP_AKA_SUBTYPE_CHALLENGE,
			    _Reserved:16, _Attrs0/binary>> = Payload,
			  Identity, Tuple)
		when Len >= 8, Len =< byte_size(Payload) ->
	verify_challenge_response(eap_method(EapType), Payload, Identity, Tuple);
verify_challenge_response(_, _, _) ->
	false.

verify_challenge_response(Method,
			  <<?EAP_CODE_RESPONSE, _EapId, Len:16/integer-big,
			    _EapType, ?EAP_AKA_SUBTYPE_CHALLENGE,
			    _Reserved:16, _Attrs0/binary>> = Payload,
			  Identity,
			  #epdg_auth_tuple{res = ExpectedRes, ik = IK, ck = CK})
		when Len >= 8, Len =< byte_size(Payload) ->
	#{valid := Valid} =
		verify_challenge_response_details(Method, Payload, Identity,
						  #epdg_auth_tuple{res = ExpectedRes, ik = IK, ck = CK}),
	Valid;
verify_challenge_response(_, _, _, _) ->
	false.

verify_challenge_response_details(Method,
			  <<?EAP_CODE_RESPONSE, EapId, Len:16/integer-big,
			    EapType, ?EAP_AKA_SUBTYPE_CHALLENGE,
			    _Reserved:16, Attrs0/binary>> = Payload,
			  Identity,
			  #epdg_auth_tuple{res = ExpectedRes, ik = IK, ck = CK})
		when Len >= 8, Len =< byte_size(Payload) ->
	case EapType =:= eap_type(Method) of
	true ->
		Attrs = binary:part(Attrs0, 0, Len - 8),
		ReceivedRes = decode_res_attr(Attrs),
		ResMatch = constant_time_equal(ReceivedRes, ExpectedRes),
		MacResult = zero_mac_attr(Attrs),
		case MacResult of
		{ok, ReceivedMac, ZeroedAttrs} ->
			PacketWithZeroMac =
				<<?EAP_CODE_RESPONSE, EapId, Len:16/integer-big,
				  EapType, ?EAP_AKA_SUBTYPE_CHALLENGE, 0:16,
				  ZeroedAttrs/binary>>,
			KAut = k_aut(Method, Identity, IK, CK),
			CalculatedMac = mac_128(Method, KAut, PacketWithZeroMac),
			MacMatch = constant_time_equal(ReceivedMac, CalculatedMac),
			FailureReason = validation_failure_reason(ReceivedRes, ResMatch, true, MacMatch),
			validation_details(EapId, ReceivedRes, ExpectedRes, ResMatch,
					   true, ReceivedMac, CalculatedMac, MacMatch,
					   KAut, IK, CK, Identity, Method, FailureReason);
		false ->
			FailureReason = validation_failure_reason(ReceivedRes, ResMatch, false, false),
			validation_details(EapId, ReceivedRes, ExpectedRes, ResMatch,
					   false, undefined, undefined, false,
					   undefined, IK, CK, Identity, Method, FailureReason)
		end;
	false ->
		validation_details(undefined, undefined, ExpectedRes, false,
				   false, undefined, undefined, false,
				   undefined, IK, CK, Identity, Method, method_mismatch)
	end;
verify_challenge_response_details(Method, _Payload, Identity,
				  #epdg_auth_tuple{res = ExpectedRes, ik = IK, ck = CK}) ->
	validation_details(undefined, undefined, ExpectedRes, false,
			   false, undefined, undefined, false,
			   undefined, IK, CK, Identity, Method, parse_error).

response_identity(<<2, _EapId, Len:16/integer-big, 1, Rest/binary>> = Payload)
		when Len >= 5, Len =< byte_size(Payload) ->
	binary:part(Rest, 0, Len - 5);
response_identity(<<?EAP_CODE_RESPONSE, _EapId, Len:16/integer-big,
		    EapType, ?EAP_AKA_SUBTYPE_IDENTITY,
		    _Reserved:16, Attrs/binary>> = Payload)
		when Len >= 8, Len =< byte_size(Payload) ->
	case is_aka_type(EapType) of
	true -> decode_identity_attr(binary:part(Attrs, 0, Len - 8));
	false -> undefined
	end;
response_identity(_) ->
	undefined.

eap_type(aka) ->
	?EAP_TYPE_AKA;
eap_type(aka_prime) ->
	?EAP_TYPE_AKA_PRIME;
eap_type({aka_prime, _NetworkName}) ->
	?EAP_TYPE_AKA_PRIME.

eap_method(?EAP_TYPE_AKA) ->
	aka;
eap_method(?EAP_TYPE_AKA_PRIME) ->
	aka_prime;
eap_method(_) ->
	unsupported.

is_aka_type(?EAP_TYPE_AKA) ->
	true;
is_aka_type(?EAP_TYPE_AKA_PRIME) ->
	true;
is_aka_type(_) ->
	false.

method_challenge_attrs(aka) ->
	<<>>;
method_challenge_attrs(aka_prime) ->
	method_challenge_attrs({aka_prime, aka_prime_network_name()});
method_challenge_attrs({aka_prime, NetworkName}) ->
	KdfAttr = <<?EAP_AKA_AT_KDF, 1, ?EAP_AKA_PRIME_KDF_CK_IK:16>>,
	KdfInputAttr = encode_sized_attr(?EAP_AKA_AT_KDF_INPUT, identity_binary(NetworkName)),
	<<KdfAttr/binary, KdfInputAttr/binary>>.

encode_attr(Type, Value) ->
	Len = (4 + byte_size(Value)) div 4,
	<<Type, Len, 0:16, Value/binary>>.

k_aut(aka, Identity, IK, CK) ->
	KeyMaterial = key_material(aka, Identity, IK, CK, 32),
	binary:part(KeyMaterial, 16, 16);
k_aut(aka_prime, Identity, IK, CK) ->
	k_aut({aka_prime, aka_prime_network_name()}, Identity, IK, CK);
k_aut({aka_prime, _NetworkName}, Identity, IKPrime, CKPrime) ->
	KeyMaterial = key_material({aka_prime, _NetworkName}, Identity, IKPrime, CKPrime, 48),
	binary:part(KeyMaterial, 16, 32).

key_material(aka, Identity, IK, CK, Len) ->
	MK = crypto:hash(sha, <<(identity_binary(Identity))/binary, IK/binary, CK/binary>>),
	fips186_2_prf(MK, Len);
key_material(aka_prime, Identity, IKPrime, CKPrime, Len) ->
	key_material({aka_prime, aka_prime_network_name()}, Identity, IKPrime, CKPrime, Len);
key_material({aka_prime, _NetworkName}, Identity, IKPrime, CKPrime, Len) ->
	prf_prime(<<IKPrime/binary, CKPrime/binary>>,
		  <<"EAP-AKA'", (identity_binary(Identity))/binary>>, Len).

keying_material(aka, Identity, IK, CK) ->
	KeyMaterial = key_material(aka, Identity, IK, CK, 160),
	#{msk => binary:part(KeyMaterial, 32, 64),
	  emsk => binary:part(KeyMaterial, 96, 64)};
keying_material(aka_prime, Identity, IKPrime, CKPrime) ->
	keying_material({aka_prime, aka_prime_network_name()}, Identity, IKPrime, CKPrime);
keying_material({aka_prime, _NetworkName}, Identity, IKPrime, CKPrime) ->
	KeyMaterial = key_material({aka_prime, _NetworkName}, Identity, IKPrime, CKPrime, 208),
	#{msk => binary:part(KeyMaterial, 80, 64),
	  emsk => binary:part(KeyMaterial, 144, 64)}.

mac_128(aka, KAut, Data) ->
	hmac_sha1_128(KAut, Data);
mac_128(aka_prime, KAut, Data) ->
	mac_128({aka_prime, aka_prime_network_name()}, KAut, Data);
mac_128({aka_prime, _NetworkName}, KAut, Data) ->
	binary:part(crypto:mac(hmac, sha256, KAut, Data), 0, 16).

aka_prime_network_name() ->
	identity_binary(application:get_env(vectorcore_aaa, eap_aka_prime_network_name,
					    "wlan.mnc435.mcc311.3gppnetwork.org")).

identity_binary(Identity) when is_binary(Identity) ->
	Identity;
identity_binary(Identity) when is_list(Identity) ->
	list_to_binary(Identity);
identity_binary(_) ->
	<<>>.

decode_identity_attr(<<?EAP_AKA_AT_IDENTITY, AttrLen, ActualLen:16/integer-big,
		       Rest/binary>>) when AttrLen >= 1 ->
	ValueLen = AttrLen * 4 - 4,
	case byte_size(Rest) >= ValueLen andalso ActualLen =< ValueLen of
	true -> binary:part(Rest, 0, ActualLen);
	false -> undefined
	end;
decode_identity_attr(<<_Type, AttrLen, _/binary>> = Attrs) when AttrLen > 0 ->
	Bytes = AttrLen * 4,
	case byte_size(Attrs) >= Bytes of
	true -> decode_identity_attr(binary:part(Attrs, Bytes, byte_size(Attrs) - Bytes));
	false -> undefined
	end;
decode_identity_attr(_) ->
	undefined.

decode_res_attr(<<?EAP_AKA_AT_RES, AttrLen, ResBits:16/integer-big, Rest/binary>>)
		when AttrLen >= 1 ->
	ValueLen = AttrLen * 4 - 4,
	ResLen = (ResBits + 7) div 8,
	case byte_size(Rest) >= ValueLen andalso ResLen =< ValueLen of
	true -> binary:part(Rest, 0, ResLen);
	false -> undefined
	end;
decode_res_attr(<<_Type, AttrLen, _/binary>> = Attrs) when AttrLen > 0 ->
	Bytes = AttrLen * 4,
	case byte_size(Attrs) >= Bytes of
	true -> decode_res_attr(binary:part(Attrs, Bytes, byte_size(Attrs) - Bytes));
	false -> undefined
	end;
decode_res_attr(_) ->
	undefined.

decode_notification_attr(<<?EAP_AKA_AT_NOTIFICATION, AttrLen, Value:16/integer-big,
			   _Rest/binary>>) when AttrLen >= 1 ->
	Value;
decode_notification_attr(<<_Type, AttrLen, _/binary>> = Attrs) when AttrLen > 0 ->
	Bytes = AttrLen * 4,
	case byte_size(Attrs) >= Bytes of
	true -> decode_notification_attr(binary:part(Attrs, Bytes, byte_size(Attrs) - Bytes));
	false -> undefined
	end;
decode_notification_attr(_) ->
	undefined.

notification_meaning(undefined) ->
	missing_at_notification;
notification_meaning(Value) when Value band 16#8000 =/= 0 ->
	success;
notification_meaning(Value) when Value band 16#4000 =/= 0 ->
	general_failure_before_authentication;
notification_meaning(0) ->
	general_failure_after_authentication;
notification_meaning(_) ->
	client_reported_notification.

zero_mac_attr(Attrs) ->
	zero_mac_attr(Attrs, <<>>).

zero_mac_attr(<<?EAP_AKA_AT_MAC, 5, 0:16, Mac:16/binary, Rest/binary>>, Acc) ->
	{ok, Mac, <<Acc/binary, ?EAP_AKA_AT_MAC, 5, 0:16, 0:128, Rest/binary>>};
zero_mac_attr(<<_Type, AttrLen, _/binary>> = Attrs, Acc) when AttrLen > 0 ->
	Bytes = AttrLen * 4,
	case byte_size(Attrs) >= Bytes of
	true ->
		<<Attr:Bytes/binary, Rest/binary>> = Attrs,
		zero_mac_attr(Rest, <<Acc/binary, Attr/binary>>);
	false ->
		false
	end;
zero_mac_attr(_, _) ->
	false.

hmac_sha1_128(Key, Data) ->
	binary:part(crypto:mac(hmac, sha, Key, Data), 0, 16).

encode_sized_attr(Type, Value) ->
	PadLen = (4 - ((4 + byte_size(Value)) rem 4)) rem 4,
	Len = (4 + byte_size(Value) + PadLen) div 4,
	<<Type, Len, (byte_size(Value)):16/integer-big, Value/binary, 0:(PadLen * 8)>>.

prf_prime(Key, Seed, Len) ->
	prf_prime(Key, Seed, Len, 1, <<>>, <<>>).

prf_prime(_Key, _Seed, Len, _Counter, _Prev, Acc) when byte_size(Acc) >= Len ->
	binary:part(Acc, 0, Len);
prf_prime(Key, Seed, Len, Counter, Prev, Acc) ->
	Block = crypto:mac(hmac, sha256, Key, <<Prev/binary, Seed/binary, Counter>>),
	prf_prime(Key, Seed, Len, Counter + 1, Block, <<Acc/binary, Block/binary>>).

constant_time_equal(A, B) when is_binary(A), is_binary(B), byte_size(A) =:= byte_size(B) ->
	0 =:= binary_foldl(fun(Byte, Acc) -> Acc bor Byte end, 0, crypto:exor(A, B));
constant_time_equal(_, _) ->
	false.

validation_failure_reason(_ReceivedRes, true, true, true) ->
	none;
validation_failure_reason(undefined, _ResMatch, _HasMac, _MacMatch) ->
	missing_at_res;
validation_failure_reason(_ReceivedRes, false, _HasMac, _MacMatch) ->
	res_mismatch;
validation_failure_reason(_ReceivedRes, true, false, _MacMatch) ->
	missing_at_mac;
validation_failure_reason(_ReceivedRes, true, true, false) ->
	mac_mismatch.

validation_details(EapId, ReceivedRes, ExpectedRes, ResMatch,
		   HasMac, ReceivedMac, CalculatedMac, MacMatch,
		   KAut, IK, CK, Identity, Method, FailureReason) ->
	NetworkName = validation_network_name(Method),
	Details = #{valid => FailureReason =:= none,
		    eap_identifier => EapId,
		    has_at_res => is_binary(ReceivedRes),
		    at_res => ReceivedRes,
		    expected_xres => ExpectedRes,
		    res_match => ResMatch,
		    has_at_mac => HasMac,
		    at_mac => ReceivedMac,
		    calculated_mac => CalculatedMac,
		    mac_match => MacMatch,
		    k_aut => KAut,
		    ik => IK,
		    ck => CK,
		    kdf_input => NetworkName,
		    identity_for_key_derivation => identity_binary(Identity),
		    failure_reason => FailureReason},
	case FailureReason of
	none ->
		maps:merge(Details, keying_material(Method, Identity, IK, CK));
	_ ->
		Details
	end.

validation_network_name({aka_prime, NetworkName}) ->
	identity_binary(NetworkName);
validation_network_name(aka_prime) ->
	aka_prime_network_name();
validation_network_name(_) ->
	undefined.

log_challenge_build(aka, _EapId, _Identity, _Rand, _Autn, _XRes, _CK, _IK,
		    _KAut, _MethodAttrs, _MacInputLen, _Mac) ->
	ok;
log_challenge_build(Method, EapId, Identity, Rand, Autn, XRes, CK, IK,
		    KAut, MethodAttrs, MacInputLen, Mac) ->
	lager:info("eap_aka_prime: challenge build eap_identifier=~p raw_identity=~p "
		   "normalized_imsi=~p kdf_input=~p rand_hex=~p autn_hex=~p "
		   "xres_len=~p ck_len=~p ik_len=~p key_source=~p "
		   "k_aut_len=~p mac_input_len=~p at_mac_hex=~p kdf_attrs_hex=~p~n",
		   [EapId, identity_binary(Identity), normalized_imsi_for_log(Identity),
		    validation_network_name(Method), hex(Rand), hex(Autn),
		    binary_len(XRes), byte_size(CK), byte_size(IK), key_source(Method),
		    byte_size(KAut), MacInputLen, hex(Mac), hex(MethodAttrs)]).

key_source({aka_prime, _}) ->
	hss_returned_ck_prime_ik_prime;
key_source(aka_prime) ->
	hss_returned_ck_prime_ik_prime;
key_source(_) ->
	hss_returned_ck_ik.

normalized_imsi_for_log(Identity0) ->
	Identity = identity_binary(Identity0),
	case binary:split(Identity, <<"@">>) of
	[<<$6, Imsi/binary>>, _Realm] -> Imsi;
	[Imsi, _Realm] -> Imsi;
	_ -> Identity
	end.

hex(Bin) when is_binary(Bin) ->
	list_to_binary([io_lib:format("~2.16.0B", [Byte]) || <<Byte>> <= Bin]);
hex(_) ->
	undefined.

binary_len(Bin) when is_binary(Bin) ->
	byte_size(Bin);
binary_len(_) ->
	undefined.

binary_foldl(Fun, Acc0, Bin) when is_binary(Bin) ->
	lists:foldl(Fun, Acc0, binary:bin_to_list(Bin)).

fips186_2_prf(Seed, Len) ->
	XKey = pad_seed(Seed),
	fips186_2_prf(XKey, Len, <<>>).

fips186_2_prf(_XKey, Len, Acc) when byte_size(Acc) >= Len ->
	binary:part(Acc, 0, Len);
fips186_2_prf(XKey, Len, Acc) ->
	{Block, XKey1} = fips186_2_prf_block(XKey),
	fips186_2_prf(XKey1, Len, <<Acc/binary, Block/binary>>).

fips186_2_prf_block(XKey0) ->
	{W0, XKey1} = fips186_2_prf_word(XKey0),
	{W1, XKey2} = fips186_2_prf_word(XKey1),
	{<<W0/binary, W1/binary>>, XKey2}.

fips186_2_prf_word(XKey) ->
	W = sha1_compress(sha1_initial_state(), XKey),
	{W, add_mod_160(XKey, W)}.

pad_seed(Seed) when byte_size(Seed) >= 64 ->
	binary:part(Seed, 0, 64);
pad_seed(Seed) ->
	PadLen = 64 - byte_size(Seed),
	<<Seed/binary, 0:(PadLen * 8)>>.

add_mod_160(<<X:160/integer-big, _/binary>>, <<W:160/integer-big>>) ->
	X1 = (X + W + 1) rem ?FIPS186_2_PRF_MODULUS,
	<<X1:160/integer-big, 0:352>>.

sha1_initial_state() ->
	{16#67452301, 16#EFCDAB89, 16#98BADCFE, 16#10325476, 16#C3D2E1F0}.

sha1_compress({H0, H1, H2, H3, H4}, Block) when byte_size(Block) =:= 64 ->
	Words0 = [W || <<W:32/integer-big>> <= Block],
	Words = sha1_extend_words(Words0, 16),
	{A, B, C, D, E} = sha1_rounds(Words, 0, H0, H1, H2, H3, H4),
	<<((H0 + A) band 16#FFFFFFFF):32/integer-big,
	  ((H1 + B) band 16#FFFFFFFF):32/integer-big,
	  ((H2 + C) band 16#FFFFFFFF):32/integer-big,
	  ((H3 + D) band 16#FFFFFFFF):32/integer-big,
	  ((H4 + E) band 16#FFFFFFFF):32/integer-big>>.

sha1_extend_words(Words, 80) ->
	Words;
sha1_extend_words(Words, N) ->
	W = rotl32(lists:nth(N - 2, Words) bxor
		   lists:nth(N - 7, Words) bxor
		   lists:nth(N - 13, Words) bxor
		   lists:nth(N - 15, Words), 1),
	sha1_extend_words(Words ++ [W], N + 1).

sha1_rounds(_Words, 80, A, B, C, D, E) ->
	{A, B, C, D, E};
sha1_rounds(Words, I, A, B, C, D, E) ->
	{F, K} = sha1_round_fun(I, B, C, D),
	Temp = (rotl32(A, 5) + F + E + K + lists:nth(I + 1, Words)) band 16#FFFFFFFF,
	sha1_rounds(Words, I + 1, Temp, A, rotl32(B, 30), C, D).

sha1_round_fun(I, B, C, D) when I < 20 ->
	{((B band C) bor ((bnot B) band D)) band 16#FFFFFFFF, 16#5A827999};
sha1_round_fun(I, B, C, D) when I < 40 ->
	{(B bxor C bxor D) band 16#FFFFFFFF, 16#6ED9EBA1};
sha1_round_fun(I, B, C, D) when I < 60 ->
	{((B band C) bor (B band D) bor (C band D)) band 16#FFFFFFFF, 16#8F1BBCDC};
sha1_round_fun(_I, B, C, D) ->
	{(B bxor C bxor D) band 16#FFFFFFFF, 16#CA62C1D6}.

rotl32(Value, Bits) ->
	((Value bsl Bits) bor (Value bsr (32 - Bits))) band 16#FFFFFFFF.

eap_id(EapId) when is_integer(EapId), EapId >= 0, EapId =< 255 ->
	EapId;
eap_id(_) ->
	1.

-ifdef(TEST).
-include_lib("eunit/include/eunit.hrl").

binary_foldl_folds_bytes_left_to_right_test() ->
	?assertEqual([3, 2, 1],
		     binary_foldl(fun(Byte, Acc) -> [Byte | Acc] end, [], <<1, 2, 3>>)),
	?assertEqual(6,
		     binary_foldl(fun(Byte, Acc) -> Acc + Byte end, 0, <<1, 2, 3>>)).

challenge_includes_valid_mac_test() ->
	Tuple = #epdg_auth_tuple{rand = <<1:128>>,
				 autn = <<2:128>>,
				 res = <<3:64>>,
				 ik = <<4:128>>,
				 ck = <<5:128>>},
	Packet = challenge(2, <<"311435300070580">>, Tuple),
	?assertMatch(<<?EAP_CODE_REQUEST, 2, 68:16/integer-big,
		       ?EAP_TYPE_AKA, ?EAP_AKA_SUBTYPE_CHALLENGE, 0:16,
		       ?EAP_AKA_AT_RAND, 5, 0:16, _:16/binary,
		       ?EAP_AKA_AT_AUTN, 5, 0:16, _:16/binary,
		       ?EAP_AKA_AT_MAC, 5, 0:16, _:16/binary>>, Packet),
	<<Prefix:52/binary, _Mac:16/binary>> = Packet,
	PacketWithZeroMac = <<Prefix/binary, 0:128>>,
	KAut = k_aut(aka, <<"311435300070580">>, <<4:128>>, <<5:128>>),
	?assertEqual(hmac_sha1_128(KAut, PacketWithZeroMac), binary:part(Packet, 52, 16)).

terminal_failure_detects_client_error_test() ->
	Packet = <<?EAP_CODE_RESPONSE, 23, 12:16/integer-big,
		   ?EAP_TYPE_AKA, ?EAP_AKA_SUBTYPE_CLIENT_ERROR, 0:16,
		   22, 1, 0:16>>,
	?assert(terminal_failure(Packet)).

terminal_failure_detects_authentication_reject_test() ->
	Packet = <<?EAP_CODE_RESPONSE, 23, 8:16/integer-big,
		   ?EAP_TYPE_AKA, ?EAP_AKA_SUBTYPE_AUTHENTICATION_REJECT, 0:16>>,
	?assert(terminal_failure(Packet)).

terminal_failure_ignores_synchronization_failure_test() ->
	Packet = <<?EAP_CODE_RESPONSE, 23, 16:16/integer-big,
		   ?EAP_TYPE_AKA, 4, 0:16,
		   4, 2, 0:16, 0:32>>,
	?assertNot(terminal_failure(Packet)).

identity_request_asks_for_permanent_identity_test() ->
	?assertEqual(<<?EAP_CODE_REQUEST, 7, 12:16/integer-big,
		       ?EAP_TYPE_AKA, ?EAP_AKA_SUBTYPE_IDENTITY, 0:16,
		       ?EAP_AKA_AT_PERMANENT_ID_REQ, 1, 0:16>>,
		     identity_request(7)).

aka_prime_identity_request_uses_eap_type_50_test() ->
	?assertEqual(<<?EAP_CODE_REQUEST, 7, 12:16/integer-big,
		       ?EAP_TYPE_AKA_PRIME, ?EAP_AKA_SUBTYPE_IDENTITY, 0:16,
		       ?EAP_AKA_AT_PERMANENT_ID_REQ, 1, 0:16>>,
		     identity_request(aka_prime, 7)).

aka_prime_network_name_uses_application_env_test() ->
	application:set_env(vectorcore_aaa, eap_aka_prime_network_name,
			    "wlan.mnc435.mcc311.3gppnetwork.org"),
	?assertEqual(<<"wlan.mnc435.mcc311.3gppnetwork.org">>,
		     aka_prime_network_name()),
	application:unset_env(vectorcore_aaa, eap_aka_prime_network_name).

aka_prime_challenge_uses_eap_type_50_test() ->
	NetworkName = <<"wlan.mnc435.mcc311.3gppnetwork.org">>,
	NetworkNameLen = byte_size(NetworkName),
	Tuple = #epdg_auth_tuple{rand = <<1:128>>,
				 autn = <<2:128>>,
				 res = <<3:64>>,
				 ik = <<4:128>>,
				 ck = <<5:128>>},
	application:set_env(vectorcore_aaa, eap_aka_prime_network_name, binary_to_list(NetworkName)),
	Packet = challenge(aka_prime, 2, <<"311435300070580">>, Tuple),
	?assertMatch(<<?EAP_CODE_REQUEST, 2, 112:16/integer-big,
		       ?EAP_TYPE_AKA_PRIME, ?EAP_AKA_SUBTYPE_CHALLENGE, 0:16,
		       ?EAP_AKA_AT_RAND, 5, 0:16, _:16/binary,
		       ?EAP_AKA_AT_AUTN, 5, 0:16, _:16/binary,
		       ?EAP_AKA_AT_KDF, 1, ?EAP_AKA_PRIME_KDF_CK_IK:16,
		       ?EAP_AKA_AT_KDF_INPUT, 10, NetworkNameLen:16, NetworkName:NetworkNameLen/binary,
		       0:16,
		       ?EAP_AKA_AT_MAC, 5, 0:16, _:16/binary>>, Packet),
	?assertEqual(nomatch, binary:match(Packet, <<?EAP_AKA_AT_KDF_INPUT, 2, 4:16, "WLAN">>)),
	application:unset_env(vectorcore_aaa, eap_aka_prime_network_name).

aka_prime_challenge_at_mac_is_stable_test() ->
	NetworkName = <<"wlan.mnc435.mcc311.3gppnetwork.org">>,
	Tuple = #epdg_auth_tuple{rand = <<1:128>>,
				 autn = <<2:128>>,
				 res = <<3:64>>,
				 ik = <<4:128>>,
				 ck = <<5:128>>},
	application:set_env(vectorcore_aaa, eap_aka_prime_network_name, binary_to_list(NetworkName)),
	Packet = challenge(aka_prime, 2, <<"311435300070580">>, Tuple),
	?assertEqual(<<100,103,233,100,147,249,134,192,
		       15,82,105,139,39,178,67,101>>,
		     binary:part(Packet, byte_size(Packet) - 16, 16)),
	application:unset_env(vectorcore_aaa, eap_aka_prime_network_name).

aka_prime_k_aut_matches_rfc5448_case3_test() ->
	Identity = <<"0555444333222111">>,
	IKPrime = <<16#3ece6b705dbbf7dfc459a11280c65524:128>>,
	CKPrime = <<16#cd4c8e5c68f57dd1d7d7dfd0c538e577:128>>,
	ExpectedKAut =
		<<16#c40700e7722483ae3dc7139eb0b88bb5:128,
		  16#58cb3081eccd057f9207d1286ee7dd53:128>>,
	?assertEqual(ExpectedKAut, k_aut({aka_prime, <<"WLAN">>}, Identity, IKPrime, CKPrime)).

observed_aka_prime_notification_response_decodes_test() ->
	Packet = <<2,202,0,12,50,14,0,0,22,1,0,0>>,
	Details = notification_response_details(Packet),
	?assertEqual(true, maps:get(valid, Details)),
	?assertEqual(202, maps:get(eap_identifier, Details)),
	?assertEqual(aka_prime, maps:get(method, Details)),
	?assertEqual(0, maps:get(notification_value, Details)),
	?assertEqual(general_failure_after_authentication,
		     maps:get(notification_meaning, Details)).

observed_aka_prime_challenge_response_parses_res_and_mac_test() ->
	ExpectedXRES = <<137,23,106,159,94,72,120,3>>,
	Packet = <<2,225,0,76,50,1,0,0,
		   3,3,0,64,
		   137,23,106,159,94,72,120,3,
		   134,9,0,0,138,16,190,185,250,198,251,201,175,200,58,12,8,35,21,122,
		   130,128,240,255,157,202,155,23,244,59,86,8,173,76,177,224,
		   11,5,0,0,
		   202,62,106,254,238,204,22,114,123,109,63,4,60,232,59,176>>,
	<<?EAP_CODE_RESPONSE, 225, 76:16/integer-big,
	  ?EAP_TYPE_AKA_PRIME, ?EAP_AKA_SUBTYPE_CHALLENGE, 0:16, Attrs/binary>> = Packet,
	?assertEqual(ExpectedXRES, decode_res_attr(Attrs)),
	?assertMatch({ok, <<202,62,106,254,238,204,22,114,123,109,63,4,60,232,59,176>>, _},
		     zero_mac_attr(Attrs)).

observed_aka_prime_challenge_response_with_legacy_key_order_is_rejected_test() ->
	Method = {aka_prime, <<"wlan.mnc435.mcc311.3gppnetwork.org">>},
	Identity = <<"6311435000070571@wlan.mnc435.mcc311.3gppnetwork.org">>,
	Tuple = #epdg_auth_tuple{rand = <<255,169,35,5,70,105,237,189,92,185,192,68,90,66,56,20>>,
				 autn = <<12,246,0,32,242,195,128,0,86,161,54,215,148,131,60,85>>,
				 res = <<137,23,106,159,94,72,120,3>>,
				 ik = <<190,1,40,226,239,23,221,56,139,244,219,248,159,158,182,192>>,
				 ck = <<137,104,106,102,193,233,216,176,144,246,72,166,160,100,66,0>>},
	Packet = <<2,225,0,76,50,1,0,0,
		   3,3,0,64,
		   137,23,106,159,94,72,120,3,
		   134,9,0,0,138,16,190,185,250,198,251,201,175,200,58,12,8,35,21,122,
		   130,128,240,255,157,202,155,23,244,59,86,8,173,76,177,224,
		   11,5,0,0,
		   202,62,106,254,238,204,22,114,123,109,63,4,60,232,59,176>>,
	Validation = verify_challenge_response_details(Method, Packet, Identity, Tuple),
	?assertEqual(false, maps:get(valid, Validation)),
	?assertEqual(true, maps:get(res_match, Validation)),
	?assertEqual(false, maps:get(mac_match, Validation)),
	?assertEqual(mac_mismatch, maps:get(failure_reason, Validation)).

aka_prime_challenge_response_validation_reports_success_and_identity_mac_mismatch_test() ->
	NetworkName = <<"wlan.mnc435.mcc311.3gppnetwork.org">>,
	Method = {aka_prime, NetworkName},
	Identity = <<"6311435000070571@wlan.mnc435.mcc311.3gppnetwork.org">>,
	Tuple = #epdg_auth_tuple{rand = <<255,169,35,5,70,105,237,189,92,185,192,68,90,66,56,20>>,
				 autn = <<12,246,0,32,242,195,128,0,86,161,54,215,148,131,60,85>>,
				 res = <<137,23,106,159,94,72,120,3>>,
				 ik = <<190,1,40,226,239,23,221,56,139,244,219,248,159,158,182,192>>,
				 ck = <<137,104,106,102,193,233,216,176,144,246,72,166,160,100,66,0>>},
	ResAttr = <<?EAP_AKA_AT_RES, 3, 64:16/integer-big,
		    137,23,106,159,94,72,120,3>>,
	ZeroMacAttr = <<?EAP_AKA_AT_MAC, 5, 0:16, 0:128>>,
	Len = 8 + byte_size(ResAttr) + byte_size(ZeroMacAttr),
	PacketWithZeroMac = <<?EAP_CODE_RESPONSE, 225, Len:16/integer-big,
			      ?EAP_TYPE_AKA_PRIME, ?EAP_AKA_SUBTYPE_CHALLENGE, 0:16,
			      ResAttr/binary, ZeroMacAttr/binary>>,
	KAut = k_aut(Method, Identity, Tuple#epdg_auth_tuple.ik, Tuple#epdg_auth_tuple.ck),
	Mac = mac_128(Method, KAut, PacketWithZeroMac),
	Packet = <<?EAP_CODE_RESPONSE, 225, Len:16/integer-big,
		   ?EAP_TYPE_AKA_PRIME, ?EAP_AKA_SUBTYPE_CHALLENGE, 0:16,
		   ResAttr/binary, ?EAP_AKA_AT_MAC, 5, 0:16, Mac/binary>>,
	Success = verify_challenge_response_details(Method, Packet, Identity, Tuple),
	?assertEqual(true, maps:get(valid, Success)),
	?assertEqual(true, maps:get(res_match, Success)),
	?assertEqual(true, maps:get(mac_match, Success)),
	?assertEqual(none, maps:get(failure_reason, Success)),
	Failure = verify_challenge_response_details(Method, Packet, <<"311435000070571">>, Tuple),
	?assertEqual(false, maps:get(valid, Failure)),
	?assertEqual(true, maps:get(res_match, Failure)),
	?assertEqual(false, maps:get(mac_match, Failure)),
	?assertEqual(mac_mismatch, maps:get(failure_reason, Failure)).

aka_prime_success_exports_msk_and_failure_does_not_test() ->
	NetworkName = <<"wlan.mnc435.mcc311.3gppnetwork.org">>,
	Method = {aka_prime, NetworkName},
	Identity = <<"6311435000070571@wlan.mnc435.mcc311.3gppnetwork.org">>,
	Tuple = #epdg_auth_tuple{rand = <<255,169,35,5,70,105,237,189,92,185,192,68,90,66,56,20>>,
				 autn = <<12,246,0,32,242,195,128,0,86,161,54,215,148,131,60,85>>,
				 res = <<137,23,106,159,94,72,120,3>>,
				 ik = <<190,1,40,226,239,23,221,56,139,244,219,248,159,158,182,192>>,
				 ck = <<137,104,106,102,193,233,216,176,144,246,72,166,160,100,66,0>>},
	ResAttr = <<?EAP_AKA_AT_RES, 3, 64:16/integer-big,
		    137,23,106,159,94,72,120,3>>,
	ZeroMacAttr = <<?EAP_AKA_AT_MAC, 5, 0:16, 0:128>>,
	Len = 8 + byte_size(ResAttr) + byte_size(ZeroMacAttr),
	PacketWithZeroMac = <<?EAP_CODE_RESPONSE, 225, Len:16/integer-big,
			      ?EAP_TYPE_AKA_PRIME, ?EAP_AKA_SUBTYPE_CHALLENGE, 0:16,
			      ResAttr/binary, ZeroMacAttr/binary>>,
	KAut = k_aut(Method, Identity, Tuple#epdg_auth_tuple.ik, Tuple#epdg_auth_tuple.ck),
	Mac = mac_128(Method, KAut, PacketWithZeroMac),
	Packet = <<?EAP_CODE_RESPONSE, 225, Len:16/integer-big,
		   ?EAP_TYPE_AKA_PRIME, ?EAP_AKA_SUBTYPE_CHALLENGE, 0:16,
		   ResAttr/binary, ?EAP_AKA_AT_MAC, 5, 0:16, Mac/binary>>,
	Success = verify_challenge_response_details(Method, Packet, Identity, Tuple),
	?assertEqual(true, maps:get(valid, Success)),
	?assertEqual(64, byte_size(maps:get(msk, Success))),
	?assertEqual(64, byte_size(maps:get(emsk, Success))),
	Failure = verify_challenge_response_details(Method, Packet, <<"311435000070571">>, Tuple),
	?assertEqual(false, maps:get(valid, Failure)),
	?assertEqual(false, maps:is_key(msk, Failure)),
	?assertEqual(false, maps:is_key(emsk, Failure)).

response_identity_decodes_eap_response_identity_test() ->
	?assertEqual(<<"0311435000070570@wlan.mnc435.mcc311.3gppnetwork.org">>,
		     response_identity(<<2, 171, 56:16/integer-big, 1,
					 "0311435000070570@wlan.mnc435.mcc311.3gppnetwork.org">>)).

response_identity_decodes_aka_identity_test() ->
	Identity = <<"0311435000070570@wlan.mnc435.mcc311.3gppnetwork.org">>,
	Pad = <<0>>,
	Packet = <<?EAP_CODE_RESPONSE, 8, 64:16/integer-big,
		   ?EAP_TYPE_AKA, ?EAP_AKA_SUBTYPE_IDENTITY, 0:16,
		   ?EAP_AKA_AT_IDENTITY, 14, (byte_size(Identity)):16/integer-big,
		   Identity/binary, Pad/binary>>,
	?assertEqual(Identity, response_identity(Packet)).

-endif.
