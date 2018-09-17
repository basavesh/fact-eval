#ifndef __BIGNUM_FPIC_H
#define __BIGNUM_FPIC_H




/*secret*/ int32_t _f_mpi_exp_mod(
  /*secret*/ uint64_t __v1_X[],
  /*public*/ uint64_t __v71___v1_X_len,
  const /*secret*/ uint64_t __v2_A[],
  /*public*/ uint64_t __v72___v2_A_len,
  /*secret*/ int32_t __v3_A_sgn,
  const /*secret*/ uint64_t __v4_E[],
  /*public*/ uint64_t __v73___v4_E_len,
  const /*secret*/ uint64_t __v5_N[],
  /*public*/ uint64_t __v74___v5_N_len,
  const /*secret*/ uint64_t __v6_RR[],
  /*public*/ uint64_t __v75___v6_RR_len,
  /*secret*/ uint64_t __v7_T[],
  /*public*/ uint64_t __v76___v7_T_len,
  /*secret*/ uint64_t __v8_W[],
  /*public*/ uint64_t __v77___v8_W_len,
  /*secret*/ uint64_t __v9_TW[],
  /*public*/ uint64_t __v78___v9_TW_len,
  /*secret*/ uint64_t __v10_mm);

/* _mpi_montred is an internal function */

/* _mpi_montmul is an internal function */

/* _mpi_mul_hlp is an internal function */

/* _mbedtls_mpi_cmp_abs is an internal function */

/* _mpi_sub_hlp is an internal function */

/* _mpi_copy is an internal function */

#endif /* __BIGNUM_FPIC_H */