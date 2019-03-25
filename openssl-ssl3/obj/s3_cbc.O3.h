#ifndef __S3_CBC_O3_H
#define __S3_CBC_O3_H




/*secret*/ int32_t __ssl3_cbc_digest_record(
  /*secret*/ uint8_t __v1_md_state[216],
  /*secret*/ uint8_t __v2_mac_out[64],
  const /*secret*/ uint8_t __v3_header[],
  /*public*/ uint64_t __v46___v3_header_len,
  const /*secret*/ uint8_t __v4_data[],
  /*public*/ uint64_t __v47___v4_data_len,
  /*secret*/ uint64_t __v5_data_plus_mac_size);







#endif /* __S3_CBC_O3_H */