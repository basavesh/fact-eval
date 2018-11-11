#include "ctverif.h"
#include <stdint.h>

#define CLEN 32

/*public*/ uint8_t _crypto_secretbox_open(
  /*secret*/ uint8_t __v1_m[],
  /*public*/ uint64_t __v205___v1_m_len,
  const /*public*/ uint8_t __v2_c[],
  /*public*/ uint64_t __v206___v2_c_len,
  const /*public*/ uint8_t __v3_n[24],
  const /*secret*/ uint8_t __v4_k[32]);

/*public*/ uint8_t _crypto_secretbox_open_wrapper(
  /*secret*/ uint8_t __v1_m[],
  /*public*/ uint64_t __v205___v1_m_len,
  const /*public*/ uint8_t __v2_c[],
  /*public*/ uint64_t __v206___v2_c_len,
  const /*public*/ uint8_t __v3_n[24],
  const /*secret*/ uint8_t __v4_k[32]) {

    // TODO: assumes in FaCT code?
    //assume(__v206___v2_c_len == CLEN); /////
    //assume(__v206___v2_c_len == __v205___v1_m_len); /////
    assume(__v205___v1_m_len == CLEN); /////

    // disjoint regions: (__v1_m,__v205___v1_m_len), (__v2_c,__v206___v2_c_len), (__v3_n,24), (__v4_k,32)
    //__disjoint_regions(__v1_m,__v205___v1_m_len,__v2_c,__v206___v2_c_len);
    __disjoint_regions(__v1_m,__v205___v1_m_len,__v2_c,CLEN);
    __disjoint_regions(__v1_m,__v205___v1_m_len,__v3_n,24);
    __disjoint_regions(__v1_m,__v205___v1_m_len,__v4_k,32);
    //__disjoint_regions(__v2_c,__v206___v2_c_len,__v3_n,24);
    __disjoint_regions(__v2_c,CLEN,__v3_n,24);
    //__disjoint_regions(__v2_c,__v206___v2_c_len,__v4_k,32);
    __disjoint_regions(__v2_c,CLEN,__v4_k,32);
    __disjoint_regions(__v3_n,24,__v4_k,32);

    // pointers are public
    public_in(__SMACK_value(__v1_m));
    public_in(__SMACK_value(__v2_c));
    public_in(__SMACK_value(__v3_n));
    public_in(__SMACK_value(__v4_k));

    // publics vals are public
    public_in(__SMACK_value(__v205___v1_m_len));
    //public_in(__SMACK_value(__v206___v2_c_len));
    // TODO: public_in(__SMACK_values(__v2_c,XXXXXXXX));
    public_in(__SMACK_values(__v2_c,CLEN)); /////
    public_in(__SMACK_values(__v3_n,24));

    // TODO: declassify?

    return _crypto_secretbox_open(
      __v1_m,
      __v205___v1_m_len,
      __v2_c,
      CLEN, //__v206___v2_c_len,
      __v3_n,
      __v4_k);
}

