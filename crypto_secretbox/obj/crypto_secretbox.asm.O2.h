#ifndef __CRYPTO_SECRETBOX.ASM.O2_H
#define __CRYPTO_SECRETBOX.ASM.O2_H

struct poly1305_state_internal_t;
// struct poly1305_state_internal_t {
//   /*secret*/ uint64_t r[3];
//   /*secret*/ uint64_t h[3];
//   /*secret*/ uint64_t pad[2];
//   /*public*/ uint64_t leftover;
//   /*secret*/ uint8_t buffer[16];
//   /*secret*/ uint8_t final;
// };

/* _fact_memzero is an internal function */

/* _fact_memzero64 is an internal function */

/* _crypto_verify_16 is an internal function */

/* _poly1305_blocks is an internal function */

/* _poly1305_init is an internal function */

/* _poly1305_update is an internal function */

/* _poly1305_finish is an internal function */

/* _crypto_onetimeauth_poly1305 is an internal function */

/* _crypto_onetimeauth_poly1305_verify is an internal function */

/* _u1 is an internal function */

/* _u0 is an internal function */

/* u0 is an internal function */

/* _salsa_keysetup is an internal function */

/* _salsa_ivsetup is an internal function */

/* _salsa_ivsetup_null is an internal function */

/* _salsa20_encrypt_bytes is an internal function */

/* _crypto_stream_salsa20 is an internal function */

/* _crypto_stream_salsa20_xor_ic is an internal function */

/* _crypto_core_hsalsa20 is an internal function */

/* _crypto_stream_xsalsa20 is an internal function */

/* _crypto_stream_xsalsa20_xor_ic is an internal function */

/* _crypto_stream_xsalsa20_xor is an internal function */

/* _crypto_secretbox_xsalsa20poly1305 is an internal function */

/* _crypto_secretbox_xsalsa20poly1305_open is an internal function */

/*public*/
uint8_t _crypto_secretbox(
  /*secret*/ uint8_t c[],
  /*public*/ uint32_t __c_len,
  /*secret*/ const uint8_t m[],
  /*public*/ uint32_t __m_len,
  /*public*/ const uint8_t n[24],
  /*secret*/ const uint8_t k[32]);

/*public*/
uint8_t _crypto_secretbox_open(
  /*secret*/ uint8_t m[],
  /*public*/ uint32_t __m_len,
  /*public*/ const uint8_t c[],
  /*public*/ uint32_t __c_len,
  /*public*/ const uint8_t n[24],
  /*secret*/ const uint8_t k[32]);

#endif /* __CRYPTO_SECRETBOX.ASM.O2_H */