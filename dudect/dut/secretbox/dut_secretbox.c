#include <stdlib.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h> // memcmp
#include "dut.h"
#include "random.h"
#include "crypto_secretbox.cref.h"

const size_t chunk_size = 32;
const size_t number_measurements = 1e5; // per test

static unsigned char nonce[24];

/* API requires first 32 bytes to be 0 */
static unsigned char m[163];

static unsigned char c[163];

uint8_t do_one_computation(uint8_t *data) {
  _crypto_secretbox(c, 163, m, 163, nonce, data);
  _crypto_secretbox_open(m, 163, c, 163, nonce, data);
  return 0;
}

void init_dut(void) {
  randombytes(nonce, 24);
  memset(m, 0, 32);
  randombytes(m + 32, 163 - 32);
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
