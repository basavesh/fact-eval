#ifndef __20170717_LATEST_RAW_O3_H
#define __20170717_LATEST_RAW_O3_H

struct AES_KEY;
// struct AES_KEY {
//   /*secret*/ uint32_t rd_key;
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
//   /*secret*/ uint8_t data;
//   /*public*/ uint32_t num;
// };

struct EVP_AES_HMAC_SHA1;
// struct EVP_AES_HMAC_SHA1 {
//   X[bty]X ks;
//   X[bty]X head;
//   X[bty]X tail;
//   X[bty]X md;
//   /*public*/ uint64_t payload_length;
//   /*secret*/ uint8_t tls_aad;
// };

struct evp_cipher_ctx_st;
// struct evp_cipher_ctx_st {
//   /*secret*/ uint8_t unused1;
//   /*public*/ uint8_t iv;
//   /*secret*/ uint8_t unused2;
//   struct EVP_AES_HMAC_SHA1 * key;
// };


/*secret*/ int32_t _aesni_cbc_hmac_sha1_cipher(
  /*public*/ uint8_t __v1_iv[16],
  struct EVP_AES_HMAC_SHA1 * __v2_key,
  /*secret*/ uint8_t __v3__out[],
  /*public*/ uint64_t __v85___v3__out_len,
  const /*public*/ uint8_t __v4__in[],
  /*public*/ uint64_t __v86___v4__in_len,
  /*public*/ uint16_t __v5_tls_ver);



/* constant_time_ge is an internal function */

/* constant_time_lt is an internal function */

/* constant_time_msb is an internal function */

/* constant_time_select is an internal function */



/* pmac_oreq is an internal function */

/* bswap4 is an internal function */















#endif /* __20170717_LATEST_RAW_O3_H */