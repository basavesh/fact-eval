#include <stdlib.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h> // memcmp
#include "dut.h"
#include "random.h"
#include "crypto_secretbox.cref.h"

const size_t chunk_size = 163;
const size_t number_measurements = 1e5; // per test

static unsigned char firstkey[32];
static unsigned char nonce[24];

static unsigned char m[163];
static unsigned char c[163];

uint8_t do_one_computation(uint8_t *data) {
  _crypto_secretbox(data, 163, m, 163, nonce, firstkey);
  _crypto_secretbox_open(m, 163, c, 163, nonce, firstkey);
  return 0;
}

void init_dut(void) {
  randombytes(firstkey, 32);
  randombytes(nonce, 24);
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
