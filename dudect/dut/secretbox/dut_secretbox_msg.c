#include <stdlib.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h> // memcmp
#include "dut.h"
#include "random.h"
#include "crypto_secretbox.cref.h"

const size_t chunk_size = 163;
const size_t number_measurements = 1e5; // per test

// these constants (nonce and key) taken from libsodium's tests
static unsigned char firstkey[32] = { 0x1b, 0x27, 0x55, 0x64, 0x73, 0xe9, 0x85,
                                      0xd4, 0x62, 0xcd, 0x51, 0x19, 0x7a, 0x9a,
                                      0x46, 0xc7, 0x60, 0x09, 0x54, 0x9e, 0xac,
                                      0x64, 0x74, 0xf2, 0x06, 0xc4, 0xee, 0x08,
                                      0x44, 0xf6, 0x83, 0x89 };

static unsigned char nonce[24] = { 0x69, 0x69, 0x6e, 0xe9, 0x55, 0xb6,
                                   0x2b, 0x73, 0xcd, 0x62, 0xbd, 0xa8,
                                   0x75, 0xfc, 0x73, 0xd6, 0x82, 0x19,
                                   0xe0, 0x03, 0x6b, 0x7a, 0x0b, 0x37 };

static unsigned char m[163];
static unsigned char c[163];

uint8_t do_one_computation(uint8_t *data) {
  _crypto_secretbox(data, 163, m, 163, nonce, firstkey);
  _crypto_secretbox_open(m, 163, c, 163, nonce, firstkey);
  return 0;
}

void init_dut(void) {}

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
