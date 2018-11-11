#include "ctverif.h"
#include <stdint.h>

/*public*/ uint8_t _crypto_secretbox(
  /*secret*/ uint8_t __v32_c[],
  /*public*/ uint64_t __v211___v32_c_len,
  const /*secret*/ uint8_t __v33_m[],
  /*public*/ uint64_t __v212___v33_m_len,
  const /*public*/ uint8_t __v34_n[24],
  const /*secret*/ uint8_t __v35_k[32]);

/*public*/ uint8_t _crypto_secretbox_wrapper(
  /*secret*/ uint8_t __v32_c[],
  /*public*/ uint64_t __v211___v32_c_len,
  const /*secret*/ uint8_t __v33_m[],
  /*public*/ uint64_t __v212___v33_m_len,
  const /*public*/ uint8_t __v34_n[24],
  const /*secret*/ uint8_t __v35_k[32]) {

    // TODO: assumes in FaCT code?

    // disjoint regions: (__v32_c,__v211___v32_c_len), (__v33_m,__v212___v33_m_len), (__v34_n,24), (__v35_k,32)
    __disjoint_regions(__v32_c,__v211___v32_c_len,__v33_m,__v212___v33_m_len);
    __disjoint_regions(__v32_c,__v211___v32_c_len,__v34_n,24);
    __disjoint_regions(__v32_c,__v211___v32_c_len,__v35_k,32);
    __disjoint_regions(__v33_m,__v212___v33_m_len,__v34_n,24);
    __disjoint_regions(__v33_m,__v212___v33_m_len,__v35_k,32);
    __disjoint_regions(__v34_n,24,__v35_k,32);

    // pointers are public
    public_in(__SMACK_value(__v32_c));
    public_in(__SMACK_value(__v33_m));
    public_in(__SMACK_value(__v34_n));
    public_in(__SMACK_value(__v35_k));

    // publics vals are public
    public_in(__SMACK_value(__v211___v32_c_len));
    public_in(__SMACK_value(__v212___v33_m_len));
    public_in(__SMACK_values(__v34_n,24));

    return _crypto_secretbox(
      __v32_c,
      __v211___v32_c_len,
      __v33_m,
      __v212___v33_m_len,
      __v34_n,
      __v35_k);
}
