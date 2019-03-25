#include <stdlib.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h> // memcmp
#include "dut.h"
#include "random.h"
#include <openssl/aes.h>
#include <openssl/sha.h>
#include <openssl/crypto.h>
#include <openssl/rand.h>
#include <openssl/err.h>
#include <openssl/evp.h>
#include <openssl/objects.h>
#include <openssl/async.h>

#include "20170717_latest.h"

const size_t chunk_size = 20;
const size_t number_measurements = 1e5; // per test

static uint8_t out[256];
static uint8_t buf[256];

static unsigned char iv[16];
static unsigned char key32[32];
static uint8_t mackey[20];

// first 9 bytes random (seq num + "type")
// next two are TLS version, next two are message length
static uint8_t aad[13];

static const EVP_CIPHER *evp_cipher = NULL;
static EVP_CIPHER_CTX *ctx = NULL;

struct EVP_AES_HMAC_SHA1 {
    AES_KEY ks;
    SHA_CTX head, tail, md;
    size_t payload_length;      /* AAD length in decrypt case */
    union {
        unsigned int tls_ver;
        unsigned char tls_aad[16]; /* 13 used */
    } aux;
};
static struct EVP_AES_HMAC_SHA1 key;

int aesni_set_decrypt_key(const unsigned char *userKey, int bits,
                          AES_KEY *key);
void init_aes(struct EVP_AES_HMAC_SHA1* key, uint8_t* key32) {
  aesni_set_decrypt_key(key32, 32 * 8, &key->ks);
}

void init_hmac(struct EVP_AES_HMAC_SHA1* key, const uint8_t* mackey) {
  unsigned int i;
  unsigned char hmac_key[64];

  memset(hmac_key, 0, sizeof(hmac_key));

  memcpy(hmac_key, mackey, 20);

  for (i = 0; i < sizeof(hmac_key); i++)
    hmac_key[i] ^= 0x36; /* ipad */
  SHA1_Init(&key->head);
  SHA1_Update(&key->head, hmac_key, sizeof(hmac_key));

  for (i = 0; i < sizeof(hmac_key); i++)
    hmac_key[i] ^= 0x36 ^ 0x5c; /* opad */
  SHA1_Init(&key->tail);
  SHA1_Update(&key->tail, hmac_key, sizeof(hmac_key));

}

void init_aad(struct EVP_AES_HMAC_SHA1* key, uint8_t* aad, uint16_t len) {
  aad[9]  = 0x03;
  aad[10] = 0x00;
  aad[11] = len >> 8;
  aad[12] = len;

  memcpy(key->aux.tls_aad, aad, 13);
  key->payload_length = 13;
}

uint8_t do_one_computation(uint8_t *data) {
  int outlen = 128 + 32;

  init_hmac(&key, data);

  _aesni_cbc_hmac_sha1_cipher(
      iv,
      &key,
      out, outlen,
      data, outlen,
      0x0300);
  return 0;
}

void init_dut(void) {
  randombytes(key32, 32);
  randombytes(iv, 16);
  randombytes(aad, 13);

  init_aes(&key, key32);
  init_aad(&key, aad, 128);
}

void prepare_inputs(uint8_t *input_data, uint8_t *classes) {
  randombytes(input_data, number_measurements * chunk_size);
  for (size_t i = 0; i < number_measurements; i++) {
    classes[i] = randombit();
    if (classes[i] == 0) {
      memset(input_data + (size_t)i * chunk_size, 0x00, chunk_size);
    } else {
      // leave random
    }
  }
}
