# FaCT/C Comparison

## libsodium

#### crypto_secretbox.fact
Definition | FaCT | C
--- | --- | ---
_crypto_core_hsalsa20 | [crypto_secretbox.fact:4-69](/crypto_secretbox/crypto_secretbox.fact#L4-L69) | [crypto_core/hsalsa20/ref2/core_hsalsa20_ref2.c:16-95](/crypto_secretbox/tests/libsodium-c-cref/src/libsodium/crypto_core/hsalsa20/ref2/core_hsalsa20_ref2.c#L16-L95)
_crypto_stream_xsalsa20 | [crypto_secretbox.fact:71-80](/crypto_secretbox/crypto_secretbox.fact#L71-L80) | [crypto_stream/xsalsa20/stream_xsalsa20.c:7-19](/crypto_secretbox/tests/libsodium-c-cref/src/libsodium/crypto_stream/xsalsa20/stream_xsalsa20.c#L7-L19)
_crypto_stream_xsalsa20_xor_ic | [crypto_secretbox.fact:82-94](/crypto_secretbox/crypto_secretbox.fact#L82-L94) | [crypto_stream/xsalsa20/stream_xsalsa20.c:21-34](/crypto_secretbox/tests/libsodium-c-cref/src/libsodium/crypto_stream/xsalsa20/stream_xsalsa20.c#L21-L34)
_crypto_stream_xsalsa20_xor | [crypto_secretbox.fact:96-102](/crypto_secretbox/crypto_secretbox.fact#L96-L102) | [crypto_stream/xsalsa20/stream_xsalsa20.c:36-42](/crypto_secretbox/tests/libsodium-c-cref/src/libsodium/crypto_stream/xsalsa20/stream_xsalsa20.c#L36-L42)
_crypto_secretbox_xsalsa20poly1305 | [crypto_secretbox.fact:104-124](/crypto_secretbox/crypto_secretbox.fact#L104-L124) | [crypto_secretbox/xsalsa20poly1305/secretbox_xsalsa20poly1305.c:6-23](/crypto_secretbox/tests/libsodium-c-cref/src/libsodium/crypto_secretbox/xsalsa20poly1305/secretbox_xsalsa20poly1305.c#L6-L23)
_crypto_secretbox_xsalsa20poly1305_open | [crypto_secretbox.fact:126-149](/crypto_secretbox/crypto_secretbox.fact#L126-L149) | [crypto_secretbox/xsalsa20poly1305/secretbox_xsalsa20poly1305.c:25-47](/crypto_secretbox/tests/libsodium-c-cref/src/libsodium/crypto_secretbox/xsalsa20poly1305/secretbox_xsalsa20poly1305.c#L25-L47)
_crypto_secretbox | [crypto_secretbox.fact:151-157](/crypto_secretbox/crypto_secretbox.fact#L151-L157) | [crypto_secretbox/crypto_secretbox.c:47-53](/crypto_secretbox/tests/libsodium-c-cref/src/libsodium/crypto_secretbox/crypto_secretbox.c#L47-L53)
_crypto_secretbox_open | [crypto_secretbox.fact:159-165](/crypto_secretbox/crypto_secretbox.fact#L159-L165) | [crypto_secretbox/crypto_secretbox.c:55-61](/crypto_secretbox/tests/libsodium-c-cref/src/libsodium/crypto_secretbox/crypto_secretbox.c#L55-L61)

#### salsa20.fact
Definition | FaCT | C
--- | --- | ---
_crypto_core_salsa20 | [salsa20.fact:6-99](/crypto_secretbox/salsa20.fact#L6-L99) | [crypto_core/salsa/ref/core_salsa_ref.c:10-95](/crypto_secretbox/tests/libsodium-c-cref/src/libsodium/crypto_core/salsa/ref/core_salsa_ref.c#L10-L95)
_crypto_stream_salsa20 | [salsa20.fact:101-137](/crypto_secretbox/salsa20.fact#L101-L137) | [crypto_stream/salsa20/ref/salsa20_ref.c:18-61](/crypto_secretbox/tests/libsodium-c-cref/src/libsodium/crypto_stream/salsa20/ref/salsa20_ref.c#L18-L61)
_crypto_stream_salsa20_xor_ic | [salsa20.fact:139-187](/crypto_secretbox/salsa20.fact#L139-L187) | [crypto_stream/salsa20/ref/salsa20_ref.c:63-112](/crypto_secretbox/tests/libsodium-c-cref/src/libsodium/crypto_stream/salsa20/ref/salsa20_ref.c#L63-L112)

#### salsa20-avx2.fact
Definition | FaCT | C
--- | --- | ---
_salsa_keysetup | [salsa20-avx2.fact:1-17](/crypto_secretbox/salsa20-avx2.fact#L1-L17) | [crypto_stream/salsa20/xmm6int/salsa20_xmm6int-avx2.c:39-54](/crypto_secretbox/tests/libsodium-c-cref/src/libsodium/crypto_stream/salsa20/xmm6int/salsa20_xmm6int-avx2.c#L39-L54)
_salsa_ivsetup | [salsa20-avx2.fact:19-27](/crypto_secretbox/salsa20-avx2.fact#L19-L27) | [crypto_stream/salsa20/xmm6int/salsa20_xmm6int-avx2.c:56-63](/crypto_secretbox/tests/libsodium-c-cref/src/libsodium/crypto_stream/salsa20/xmm6int/salsa20_xmm6int-avx2.c#L56-L63)
_salsa_ivsetup_null | [salsa20-avx2.fact:29-36](/crypto_secretbox/salsa20-avx2.fact#L29-L36) | [crypto_stream/salsa20/xmm6int/salsa20_xmm6int-avx2.c:56-63](/crypto_secretbox/tests/libsodium-c-cref/src/libsodium/crypto_stream/salsa20/xmm6int/salsa20_xmm6int-avx2.c#L56-L63)
_salsa20_encrypt_bytes | [salsa20-avx2.fact:38-43](/crypto_secretbox/salsa20-avx2.fact#L38-L43) | [crypto_stream/salsa20/xmm6int/salsa20_xmm6int-avx2.c:65-79](/crypto_secretbox/tests/libsodium-c-cref/src/libsodium/crypto_stream/salsa20/xmm6int/salsa20_xmm6int-avx2.c#L65-L79)
_crypto_stream_salsa20 | [salsa20-avx2.fact:46-63](/crypto_secretbox/salsa20-avx2.fact#L46-L63) | [crypto_stream/salsa20/xmm6int/salsa20_xmm6int-avx2.c:81-98](/crypto_secretbox/tests/libsodium-c-cref/src/libsodium/crypto_stream/salsa20/xmm6int/salsa20_xmm6int-avx2.c#L81-L98)
_crypto_stream_salsa20_xor_ic | [salsa20-avx2.fact:66-86](/crypto_secretbox/salsa20-avx2.fact#L66-L86) | [crypto_stream/salsa20/xmm6int/salsa20_xmm6int-avx2.c:100-123](/crypto_secretbox/tests/libsodium-c-cref/src/libsodium/crypto_stream/salsa20/xmm6int/salsa20_xmm6int-avx2.c#L100-L123)

#### u0.fact
Definition | FaCT | C
--- | --- | ---
_u1 | [u0.fact:2-270](/crypto_secretbox/u0.fact#L2-L270) | [crypto_stream/salsa20/xmm6int/u1.h](/crypto_secretbox/tests/libsodium-c-cref/src/libsodium/crypto_stream/salsa20/xmm6int/u1.h)
_u0 | [u0.fact:273-505](/crypto_secretbox/u0.fact#L273-L505) | [crypto_stream/salsa20/xmm6int/u0.h](/crypto_secretbox/tests/libsodium-c-cref/src/libsodium/crypto_stream/salsa20/xmm6int/u0.h)
u0 | [u0.fact:507-518](/crypto_secretbox/u0.fact#L507-L518) | (no analogue)

#### crypto_poly1305.fact
Definition | FaCT | C
--- | --- | ---
poly1305_state_internal_t | [crypto_poly1305.fact:3-10](/crypto_secretbox/crypto_poly1305.fact#L3-L10) | [crypto_onetimeauth/poly1305/donna/poly1305_donna64.h:25-32](/crypto_secretbox/tests/libsodium-c-cref/src/libsodium/crypto_onetimeauth/poly1305/donna/poly1305_donna64.h#L25-L32)
_poly1305_blocks | [crypto_poly1305.fact:12-65](/crypto_secretbox/crypto_poly1305.fact#L12-L65) | [crypto_onetimeauth/poly1305/donna/poly1305_donna64.h:61-133](/crypto_secretbox/tests/libsodium-c-cref/src/libsodium/crypto_onetimeauth/poly1305/donna/poly1305_donna64.h#L61-L133)
_poly1305_init | [crypto_poly1305.fact:67-90](/crypto_secretbox/crypto_poly1305.fact#L67-L90) | [crypto_onetimeauth/poly1305/donna/poly1305_donna64.h:34-59](/crypto_secretbox/tests/libsodium-c-cref/src/libsodium/crypto_onetimeauth/poly1305/donna/poly1305_donna64.h#L34-L59)
_poly1305_update | [crypto_poly1305.fact:92-143](/crypto_secretbox/crypto_poly1305.fact#L92-L143) | [crypto_onetimeauth/poly1305/donna/poly1305_donna.c:14-56](/crypto_secretbox/tests/libsodium-c-cref/src/libsodium/crypto_onetimeauth/poly1305/donna/poly1305_donna.c#L14-L56)
_poly1305_finish | [crypto_poly1305.fact:145-228](/crypto_secretbox/crypto_poly1305.fact#L145-L228) | [crypto_onetimeauth/poly1305/donna/poly1305_donna64.h:135-220](/crypto_secretbox/tests/libsodium-c-cref/src/libsodium/crypto_onetimeauth/poly1305/donna/poly1305_donna64.h#L135-L220)
_crypto_onetimeauth_poly1305 | [crypto_poly1305.fact:230-247](/crypto_secretbox/crypto_poly1305.fact#L230-L247) | [crypto_onetimeauth/poly1305/donna/poly1305_donna.c:58-70](/crypto_secretbox/tests/libsodium-c-cref/src/libsodium/crypto_onetimeauth/poly1305/donna/poly1305_donna.c#L58-L70)
_crypto_onetimeauth_poly1305_verify | [crypto_poly1305.fact:249-256](/crypto_secretbox/crypto_poly1305.fact#L249-L256) | [crypto_onetimeauth/poly1305/donna/poly1305_donna.c:102-113](/crypto_secretbox/tests/libsodium-c-cref/src/libsodium/crypto_onetimeauth/poly1305/donna/poly1305_donna.c#L102-L113)

#### stdlib.fact
Definition | FaCT | C
--- | --- | ---
_crypto_verify_16 | [stdlib.fact:1-8](/crypto_secretbox/stdlib.fact#L1-L8) | [crypto_verify/sodium/verify.c:63-78](/crypto_secretbox/tests/libsodium-c-cref/src/libsodium/crypto_verify/sodium/verify.c#L63-L78)

## donna

#### curve25519-c64.fact
Definition | FaCT | C
--- | --- | ---
(full implementation) | [curve25519-c64.fact](/donna/curve25519-c64.fact) | [curve25519-donna-c64.c](/donna/tests/donna-c/curve25519-donna-c64.c)

## openssl

#### s3_cbc.fact
Definition | FaCT | C
--- | --- | ---
(full implementation) | [s3_cbc.fact](/openssl/s3_cbc.fact) | [ssl/s3_cbc.c:276-482](/openssl/tests/openssl-fact/s3_cbc.c#L276-L482)

## saga

#### 20170717_latest.fact
Definition | FaCT | C
--- | --- | ---
(full implementation) | [20170717_latest.fact](/saga/20170717_latest.fact) | [crypto/evp/e_aes_cbc_hmac_sha1.c:499-748](/saga/tests/openssl-fact-ugly/crypto/evp/e_aes_cbc_hmac_sha1.c#L499-L748)
