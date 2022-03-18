#include <stdio.h>
#include <string.h>
#include <sys/time.h>
#include <time.h>
#include <stdint.h>
#include <inttypes.h>
#include <stdlib.h>

typedef uint8_t u8;

#define ITERATIONS 100000

extern void curve25519_donna(u8 *output, const u8 *secret, const u8 *bp);

static inline uint64_t cpucycles(void) {
  uint64_t result;

  __asm__ volatile ("rdtsc; shlq $32,%%rdx; orq %%rdx,%%rax"
    : "=a" (result) : : "%rdx");

  return result;
}

static int cmp_uint64(const void *a, const void *b) {
  if(*(uint64_t *)a < *(uint64_t *)b) return -1;
  if(*(uint64_t *)a > *(uint64_t *)b) return 1;
  return 0;
}

static uint64_t median(uint64_t *l, size_t llen) {
  qsort(l,llen,sizeof(uint64_t),cmp_uint64);

  if(llen%2) return l[llen/2];
  else return (l[llen/2-1]+l[llen/2])/2;
}

int
main() {
  static const unsigned char basepoint[32] = {9};
  unsigned char mysecret[32], mypublic[32];
  unsigned i;
  uint64_t t[ITERATIONS];

  memset(mysecret, 42, 32);
  mysecret[0] &= 248;
  mysecret[31] &= 127;
  mysecret[31] |= 64;

  // Load the caches
  for (i = 0; i < 1000; ++i) {
    curve25519_donna(mypublic, mysecret, basepoint);
  }

  for (i = 0; i < ITERATIONS; ++i) {
    t[i] = cpucycles();
    curve25519_donna(mypublic, mysecret, basepoint);
  }

  // New code
  for (i = 0; i < ITERATIONS - 1; ++i) {
    t[i] = t[i+1] - t[i];
  }
  printf("%" PRIu64 "\n",  median(t, ITERATIONS -1));

  return 0;
}
