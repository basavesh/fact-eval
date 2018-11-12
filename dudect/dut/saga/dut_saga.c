#include <stdlib.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h> // memcmp
#include "dut.h"
#include "random.h"
#include <openssl/crypto.h>
#include <openssl/rand.h>
#include <openssl/err.h>
#include <openssl/evp.h>
#include <openssl/objects.h>
#include <openssl/async.h>

const size_t chunk_size = 256;
const size_t number_measurements = 1e5; // per test

// these constants (key32) taken from openssl speed
static const unsigned char key32[32] = {
    0x12, 0x34, 0x56, 0x78, 0x9a, 0xbc, 0xde, 0xf0,
    0x34, 0x56, 0x78, 0x9a, 0xbc, 0xde, 0xf0, 0x12,
    0x56, 0x78, 0x9a, 0xbc, 0xde, 0xf0, 0x12, 0x34,
    0x78, 0x9a, 0xbc, 0xde, 0xf0, 0x12, 0x34, 0x56
};

// these constants fixed from randomly generated values
static const unsigned char iv[16] = {
    0x0b, 0xb9, 0x20, 0x8d, 0xad, 0x72, 0x63, 0x13,
    0x99, 0x7f, 0x97, 0x20, 0x5c, 0x31, 0x49, 0xc3
};

// these constants fixed from randomly generated values
static uint8_t mackey[20] = {
  0xd3, 0xfa, 0x36, 0xa8, 0x74, 0x98, 0xdf, 0xd5,
  0xe9, 0x7c, 0x71, 0x55, 0x49, 0x39, 0x3c, 0x82,
  0xc7, 0x0b, 0x21, 0x59
};

// first 9 bytes random (seq num + "type")
// next two are TLS version, next two are message length
static uint8_t aad[13] = {
  0x2c, 0xfc, 0xe3, 0x6c, 0xd2, 0x6d, 0x33, 0x09, 0x3a,
  0x03, 0x00, 0x00, 0x80
};

static const EVP_CIPHER *evp_cipher = NULL;
static EVP_CIPHER_CTX *ctx = NULL;

uint8_t do_one_computation(uint8_t *data) {
  int outlen = 128 + 32;

  EVP_Cipher(ctx, data, data, outlen);
  return 0;
}

void init_dut(void) {
  evp_cipher = EVP_get_cipherbyname("AES-256-CBC-HMAC-SHA1");
  ctx = EVP_CIPHER_CTX_new();
  EVP_DecryptInit_ex(ctx, evp_cipher, NULL, key32, iv);
  EVP_CIPHER_CTX_ctrl(ctx, EVP_CTRL_AEAD_SET_MAC_KEY, 20, mackey);
  EVP_CIPHER_CTX_ctrl(ctx, EVP_CTRL_AEAD_TLS1_AAD,
      EVP_AEAD_TLS1_AAD_LEN, aad);
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
