#ifndef __CURVE25519_C64_H
#define __CURVE25519_C64_H




/*public*/ int32_t curve25519_donna(
  /*secret*/ uint8_t __v1_mypublic[32],
  const /*secret*/ uint8_t __v2__secret[32],
  const /*public*/ uint8_t __v3_basepoint[32]);

/* fexpand is an internal function */

/* load_limb is an internal function */

/* fcontract is an internal function */

/* store_limb is an internal function */

/* crecip is an internal function */

/* cmult is an internal function */

/* fmonty is an internal function */

/* fsquare_times is an internal function */

/* fdifference_backwards is an internal function */

/* fscalar_product is an internal function */

/* fsum is an internal function */

/* fmul is an internal function */

/* swap_conditional is an internal function */

#endif /* __CURVE25519_C64_H */