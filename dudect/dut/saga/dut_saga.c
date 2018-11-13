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

static unsigned char key32[32];
static unsigned char iv[16];
static uint8_t mackey[20];

// first 9 bytes random (seq num + "type")
// next two are TLS version, next two are message length
static uint8_t aad[13];

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

  randombytes(key32, 32);
  randombytes(iv, 16);
  randombytes(mackey, 20);
  randombytes(aad, 9);
  aad[9]  = 0x03;
  aad[10] = 0x00;
  aad[11] = 0x00;
  aad[12] = 0x80;

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
