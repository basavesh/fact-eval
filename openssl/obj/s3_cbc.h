#ifndef __S3_CBC_H
#define __S3_CBC_H




/*secret*/ int32_t __ssl3_cbc_digest_record(
  /*secret*/ uint8_t __v1_md_state[216],
  /*secret*/ uint8_t __v2_mac_out[64],
  /*secret*/ uint8_t __v3_hmac_pad[128],
  /*public*/ uint64_t __v4_md_size,
  /*public*/ uint64_t __v5_md_block_size,
  /*public*/ uint64_t __v6_log_md_block_size,
  /*public*/ uint64_t __v7_sslv3_pad_length,
  /*public*/ uint64_t __v8_md_length_size,
  /*public*/ uint8_t __v9_length_is_big_endian,
  /*public*/ int32_t __v10_sha_type,
  const /*secret*/ uint8_t __v11_header[],
  /*public*/ uint64_t __v59___v11_header_len,
  const /*secret*/ uint8_t __v12_data[],
  /*public*/ uint64_t __v60___v12_data_len,
  /*secret*/ uint64_t __v13_data_plus_mac_size,
  const /*secret*/ uint8_t __v14_mac_secret[],
  /*public*/ uint64_t __v61___v14_mac_secret_len,
  /*public*/ uint8_t __v15_is_sslv3);







#endif /* __S3_CBC_H */