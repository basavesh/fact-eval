#ifndef __CURVE25519-C64_H
#define __CURVE25519-C64_H

/* fsum is an internal function */

/* fdifference_backwards is an internal function */

/* fscalar_product is an internal function */

/* fmul is an internal function */

/* fsquare_times is an internal function */

/* load_limb is an internal function */

/* store_limb is an internal function */

/* fexpand is an internal function */

/* fcontract is an internal function */

/* fmonty is an internal function */

/* swap_conditional is an internal function */

/* cmult is an internal function */

/* crecip is an internal function */

/*public*/
int32_t curve25519_donna(
  /*secret*/ uint8_t mypublic[32],
  /*secret*/ const uint8_t _secret[32],
  /*secret*/ const uint8_t basepoint[32]);

#endif /* __CURVE25519-C64_H */