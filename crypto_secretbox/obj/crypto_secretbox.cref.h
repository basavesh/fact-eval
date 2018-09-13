#ifndef __CRYPTO_SECRETBOX_CREF_H
#define __CRYPTO_SECRETBOX_CREF_H

struct poly1305_state_internal_t;
// struct poly1305_state_internal_t {
//   /*secret*/ uint64_t r;
//   /*secret*/ uint64_t h;
//   /*secret*/ uint64_t pad;
//   /*public*/ uint64_t leftover;
//   /*secret*/ uint8_t buffer;
//   /*secret*/ uint8_t final;
// };


/*public*/ uint8_t _crypto_secretbox_open(
  /*secret*/ uint8_t __v1_m[],
  /*public*/ uint64_t __v205___v1_m_len,
  const /*public*/ uint8_t __v2_c[],
  /*public*/ uint64_t __v206___v2_c_len,
  const /*public*/ uint8_t __v3_n[24],
  const /*secret*/ uint8_t __v4_k[32]);

/* _crypto_secretbox_xsalsa20poly1305_open is an internal function */

/* _crypto_stream_xsalsa20 is an internal function */

/* _crypto_stream_salsa20 is an internal function */

/*public*/ uint8_t _crypto_secretbox(
  /*secret*/ uint8_t __v32_c[],
  /*public*/ uint64_t __v211___v32_c_len,
  const /*secret*/ uint8_t __v33_m[],
  /*public*/ uint64_t __v212___v33_m_len,
  const /*public*/ uint8_t __v34_n[24],
  const /*secret*/ uint8_t __v35_k[32]);

/* _crypto_secretbox_xsalsa20poly1305 is an internal function */

/* _crypto_stream_xsalsa20_xor is an internal function */

/* _crypto_stream_xsalsa20_xor_ic is an internal function */

/* _crypto_stream_salsa20_xor_ic is an internal function */

/* _crypto_onetimeauth_poly1305_verify is an internal function */

/* _crypto_verify_16 is an internal function */

/* _crypto_onetimeauth_poly1305 is an internal function */

/* _poly1305_init is an internal function */

/* _poly1305_update is an internal function */

/* _poly1305_finish is an internal function */

/* _poly1305_blocks is an internal function */

/* _crypto_core_salsa20 is an internal function */

/* _crypto_core_hsalsa20 is an internal function */













#endif /* __CRYPTO_SECRETBOX_CREF_H */