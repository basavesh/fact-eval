#ifndef __20170717_LATEST_RAW_H
#define __20170717_LATEST_RAW_H

struct AES_KEY;
// struct AES_KEY {
//   /*secret*/ uint32_t rd_key[60];
//   /*public*/ int32_t rounds;
// };

struct SHA_CTX;
// struct SHA_CTX {
//   /*secret*/ uint32_t h0;
//   /*secret*/ uint32_t h1;
//   /*secret*/ uint32_t h2;
//   /*secret*/ uint32_t h3;
//   /*secret*/ uint32_t h4;
//   /*secret*/ uint32_t Nl;
//   /*secret*/ uint32_t Nh;
//   /*secret*/ uint8_t data[64];
//   /*public*/ uint32_t num;
// };

struct EVP_AES_HMAC_SHA1;
// struct EVP_AES_HMAC_SHA1 {
//   struct AES_KEY ks;
//   struct SHA_CTX head;
//   struct SHA_CTX tail;
//   struct SHA_CTX md;
//   /*public*/ uint64_t payload_length;
//   /*secret*/ uint8_t tls_aad[16];
// };

struct evp_cipher_ctx_st;
// struct evp_cipher_ctx_st {
//   /*secret*/ uint8_t unused1[40];
//   /*secret*/ uint8_t iv[16];
//   /*secret*/ uint8_t unused2[60];
//   struct EVP_AES_HMAC_SHA1 *key;
// };

/* constant_time_msb is an internal function */

/* constant_time_lt is an internal function */

/* constant_time_ge is an internal function */

/* constant_time_select is an internal function */









/* bswap4 is an internal function */

/* pmac_oreq is an internal function */

/*secret*/
int32_t _aesni_cbc_hmac_sha1_cipher(
  /*secret*/ uint8_t iv[16],
  struct EVP_AES_HMAC_SHA1 * key,
  /*secret*/ uint8_t _out[],
  /*public*/ uint32_t ___out_len,
  /*secret*/ const uint8_t _in[],
  /*public*/ uint32_t ___in_len,
  /*public*/ uint64_t plen,
  /*public*/ uint16_t tls_ver);

#endif /* __20170717_LATEST_RAW_H */