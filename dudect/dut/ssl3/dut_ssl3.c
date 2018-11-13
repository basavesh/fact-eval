#include <stdlib.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h> // memcmp
#include "dut.h"
#include "random.h"
#include "openssl/sha.h"
#include "s3_cbc.h"

const size_t chunk_size = 128;
const size_t number_measurements = 1e5; // per test

static union {
  double align;
  unsigned char c[sizeof(SHA_CTX)];
} md_state;

static unsigned char mac_out[20];

static unsigned char header[71];

uint8_t do_one_computation(uint8_t *data) {
  size_t mac_secret_length = 20;
  size_t sslv3_pad_length = 40;
  size_t header_length = mac_secret_length + sslv3_pad_length +
    8 /* sequence number */  +
    1 /* record type */  +
    2 /* record length */ ;
  SHA1_Init((SHA_CTX *)md_state.c);
  __ssl3_cbc_digest_record(
      // outputs
      md_state.c,
      mac_out,
      // inputs
      header,
      header_length,
      data,
      127,
      127 - data[127]); // random "padding" length
  return 0;
}

void init_dut(void) {
  if (SHA1_Init((SHA_CTX *)md_state.c) <= 0)
    exit(112);
  randombytes(header, sizeof header);
}

void prepare_inputs(uint8_t *input_data, uint8_t *classes) {
  randombytes(input_data, number_measurements * chunk_size);
  for (size_t i = 0; i < number_measurements; i++) {
    classes[i] = randombit();
    if (classes[i] == 0) {
      memset(input_data + (size_t)i * chunk_size, 0x00, chunk_size);
      *(input_data + (size_t)i * chunk_size + 127) = 0x01;
    } else {
      // no inconstructably invalid lengths
      input_data[i * chunk_size + 127] %= 127;
    }
  }
}
