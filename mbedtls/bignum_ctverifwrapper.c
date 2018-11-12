#include "ctverif.h"
#include "stdint.h"

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

/*secret*/ int32_t _f_mpi_exp_mod_wrapper(
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
  /*secret*/ uint64_t __v10_mm) {

    // pointers are public
    public_in(__SMACK_value(__v1_X));
    public_in(__SMACK_value(__v2_A));
    public_in(__SMACK_value(__v4_E));
    public_in(__SMACK_value(__v5_N));
    public_in(__SMACK_value(__v6_RR));
    public_in(__SMACK_value(__v7_T));
    public_in(__SMACK_value(__v8_W));
    public_in(__SMACK_value(__v9_TW));

    // public vals are public
    public_in(__SMACK_value(__v71___v1_X_len));
    public_in(__SMACK_value(__v72___v2_A_len));
    public_in(__SMACK_value(__v73___v4_E_len));
    public_in(__SMACK_value(__v74___v5_N_len));
    public_in(__SMACK_value(__v75___v6_RR_len));
    public_in(__SMACK_value(__v76___v7_T_len));
    public_in(__SMACK_value(__v77___v8_W_len));
    public_in(__SMACK_value(__v78___v9_TW_len));

    return _f_mpi_exp_mod(
        __v1_X,
        __v71___v1_X_len,
        __v2_A,
        __v72___v2_A_len,
        __v3_A_sgn,
        __v4_E,
        __v73___v4_E_len,
        __v5_N,
        __v74___v5_N_len,
        __v6_RR,
        __v75___v6_RR_len,
        __v7_T,
        __v76___v7_T_len,
        __v8_W,
        __v77___v8_W_len,
        __v9_TW,
        __v78___v9_TW_len,
        __v10_mm);
}

