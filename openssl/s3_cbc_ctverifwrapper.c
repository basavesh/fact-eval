#include "ctverif.h"
#include <stdint.h>
#include "s3_cbc.h"

/*secret*/ int32_t __ssl3_cbc_digest_record_wrapper(
  /*secret*/ uint8_t __v1_md_state[216],
  /*secret*/ uint8_t __v2_mac_out[64],
  /*secret*/ uint8_t __v3_hmac_pad[128],
  /*public*/ uint64_t __v4_md_size,
  /*public*/ uint64_t __v5_md_block_size,
  /*public*/ uint64_t __v6_log_md_block_size,
  /*public*/ uint64_t __v7_sslv3_pad_length,
  /*public*/ uint64_t __v8_md_length_size,
  /*public*/ uint64_t __v9_length_is_big_endian, // to bool
  /*public*/ int32_t __v10_sha_type,
  const /*secret*/ uint8_t __v11_header[],
  /*public*/ uint64_t __v59___v11_header_len,
  const /*secret*/ uint8_t __v12_data[],
  /*public*/ uint64_t __v60___v12_data_len,
  /*secret*/ uint64_t __v13_data_plus_mac_size,
  const /*secret*/ uint8_t __v14_mac_secret[],
  /*public*/ uint64_t __v61___v14_mac_secret_len,
  /*public*/ uint64_t __v15_is_sslv3) { // to bool

    // pointers are public
    public_in(__SMACK_value(__v1_md_state));
    public_in(__SMACK_value(__v2_mac_out));
    public_in(__SMACK_value(__v3_hmac_pad));
    public_in(__SMACK_value(__v11_header));
    public_in(__SMACK_value(__v12_data));
    public_in(__SMACK_value(__v14_mac_secret));

    // public vals are public
    public_in(__SMACK_value(__v4_md_size));
    public_in(__SMACK_value(__v5_md_block_size));
    public_in(__SMACK_value(__v6_log_md_block_size));
    public_in(__SMACK_value(__v7_sslv3_pad_length));
    public_in(__SMACK_value(__v8_md_length_size));
    public_in(__SMACK_value(__v9_length_is_big_endian));
    public_in(__SMACK_value(__v10_sha_type));
    public_in(__SMACK_value(__v59___v11_header_len));
    public_in(__SMACK_value(__v60___v12_data_len));
    public_in(__SMACK_value(__v61___v14_mac_secret_len));
    public_in(__SMACK_value(__v15_is_sslv3));

    return __ssl3_cbc_digest_record(
      __v1_md_state,
      __v2_mac_out,
      __v3_hmac_pad,
      __v4_md_size,
      __v5_md_block_size,
      __v6_log_md_block_size,
      __v7_sslv3_pad_length,
      __v8_md_length_size,
      (__v9_length_is_big_endian != 0),
      __v10_sha_type,
      __v11_header,
      __v59___v11_header_len,
      __v12_data,
      __v60___v12_data_len,
      __v13_data_plus_mac_size,
      __v14_mac_secret,
      __v61___v14_mac_secret_len,
      (__v15_is_sslv3 != 0));

}

