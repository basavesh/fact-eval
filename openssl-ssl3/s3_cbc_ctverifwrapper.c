#include "ctverif.h"
#include <stdint.h>

/*secret*/ int32_t __ssl3_cbc_digest_record(
  /*secret*/ uint8_t __v1_md_state[216],
  /*secret*/ uint8_t __v2_mac_out[64],
  const /*secret*/ uint8_t __v4_header[],
  /*public*/ uint64_t __v47___v4_header_len,
  const /*secret*/ uint8_t __v5_data[],
  /*public*/ uint64_t __v48___v5_data_len,
  /*secret*/ uint64_t __v6_data_plus_mac_size);

/*secret*/ int32_t __ssl3_cbc_digest_record_wrapper(
  /*secret*/ uint8_t __v1_md_state[216],
  /*secret*/ uint8_t __v2_mac_out[64],
  const /*secret*/ uint8_t __v4_header[],
  /*public*/ uint64_t __v47___v4_header_len,
  const /*secret*/ uint8_t __v5_data[],
  /*public*/ uint64_t __v48___v5_data_len,
  /*secret*/ uint64_t __v6_data_plus_mac_size) {

    // pointers are public
    public_in(__SMACK_value(__v1_md_state));
    public_in(__SMACK_value(__v2_mac_out));
    public_in(__SMACK_value(__v4_header));
    public_in(__SMACK_value(__v5_data));

    // public vals are public
    public_in(__SMACK_value(__v47___v4_header_len));
    public_in(__SMACK_value(__v48___v5_data_len));

    return  __ssl3_cbc_digest_record(
      __v1_md_state,
      __v2_mac_out,
      __v4_header,
      __v47___v4_header_len,
      __v5_data,
      __v48___v5_data_len,
      __v6_data_plus_mac_size);
}

