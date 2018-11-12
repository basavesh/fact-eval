#include "ctverif.h"
#include <stdint.h>

/*public*/ int32_t curve25519_donna(
  /*secret*/ uint8_t __v1_mypublic[32],
  const /*secret*/ uint8_t __v2__secret[32],
  const /*public*/ uint8_t __v3_basepoint[32]);

/*public*/ int32_t curve25519_donna_wrapper(
  /*secret*/ uint8_t __v1_mypublic[32],
  const /*secret*/ uint8_t __v2__secret[32],
  const /*public*/ uint8_t __v3_basepoint[32]) {

    // pointers are public
    public_in(__SMACK_value(__v1_mypublic));
    public_in(__SMACK_value(__v2__secret));
    public_in(__SMACK_value(__v3_basepoint));

    // public values are public
    public_in(__SMACK_values(__v3_basepoint,32));

    return curve25519_donna(__v1_mypublic,__v2__secret,__v3_basepoint);
}
    

