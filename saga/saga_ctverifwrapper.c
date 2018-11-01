#include "ctverif.h"
#include <stdint.h>
#include <stddef.h>

# define AES_MAXNR 14
struct aes_key_st {
    /*sec*/ unsigned int rd_key[4 * (AES_MAXNR + 1)];
    /*pub*/ int rounds;
};
typedef struct aes_key_st AES_KEY;

# define SHA_LBLOCK 16
# define SHA_LONG unsigned int
typedef struct SHAstate_st {
    /*sec*/ SHA_LONG h0, h1, h2, h3, h4;
    /*sec*/ SHA_LONG Nl, Nh;
    /*sec*/ SHA_LONG data[SHA_LBLOCK];
    /*pub*/ unsigned int num;
} SHA_CTX;

struct EVP_AES_HMAC_SHA1 {
    AES_KEY ks;
    SHA_CTX head, tail, md;
    /*pub*/ size_t payload_length;      /* AAD length in decrypt case */
    union {
        unsigned int tls_ver;
        /*sec*/ unsigned char tls_aad[16]; /* 13 used */
    } aux;
};

/*secret*/ int32_t _aesni_cbc_hmac_sha1_cipher(
  /*secret*/ uint8_t __v1_iv[16],
  struct EVP_AES_HMAC_SHA1 * __v2_key,
  /*secret*/ uint8_t __v3__out[],
  /*public*/ uint64_t __v85___v3__out_len,
  const /*secret*/ uint8_t __v4__in[],
  /*public*/ uint64_t __v86___v4__in_len,
  /*public*/ uint64_t __v5_plen,
  /*public*/ uint16_t __v6_tls_ver);

/*secret*/ int32_t _aesni_cbc_hmac_sha1_cipher_wrapper(
  /*secret*/ uint8_t __v1_iv[16],
  struct EVP_AES_HMAC_SHA1 * __v2_key,
  /*secret*/ uint8_t __v3__out[],
  /*public*/ uint64_t __v69___v3__out_len,
  const /*secret*/ uint8_t __v4__in[],
  /*public*/ uint64_t __v70___v4__in_len,
  /*public*/ uint64_t __v5_plen,
  /*public*/ uint32_t __v6_tls_ver) { //actually a uint16_t, but that gives ctverif errors

    // assumes in fact code
    // TODO: how do we handle if two branches have different assumes?
/*
FaCT        || C
iv          == __v1_iv
    len iv  == 16
key         == __v2_key
_out        == __v3__out
len _out    == __v69___v3__out_len
_in         == __v4__in
len _in     == __v70___v4__in_len
plen        == __v5_plen
tls_ver     == __v6_tls_ver

Assumes in FaCT code...
assume(len _in >= len iv);
assume(len _in == len _out);
assume(plen >= 2 && plen < 16);
assume(inp + _len == len _in);
assume(outp + _len == len _out);
assume(inp + _len >= inp);
assume(outp + _len >= inp);
assume(j <= _len);
assume(p_res < len key.md.data);
assume(p_outp + j < len _out);
assume(i < len pmac);
*/
    assume(__v70___v4__in_len >= 16);
    assume(__v70___v4__in_len == __v69___v3__out_len);
    assume(__v5_plen >= 2 && __v5_plen < 16);
    //assume(inp + _len == __v70___v4__in_len);
    //assume(outp + _len == __v69___v3__out_len);
    //assume(inp + _len >= inp);
    //assume(outp + _len >= inp);
    //assume(j <= _len);
    //assume(p_res < len key.md.data);
    //assume(p_outp + j < __v69___v3__out_len);
    //assume(i < len pmac);

    // disjoint regs: __v1_iv, __v2_key, __v3__out, __v4__in
    __disjoint_regions(__v1_iv,16,__v2_key,1);
    __disjoint_regions(__v1_iv,16,__v3__out,__v69___v3__out_len);
    __disjoint_regions(__v1_iv,16,__v4__in,__v70___v4__in_len);
    __disjoint_regions(__v2_key,1,__v3__out,__v69___v3__out_len);
    __disjoint_regions(__v2_key,1,__v4__in,__v70___v4__in_len);
    __disjoint_regions(__v3__out,__v69___v3__out_len,__v4__in,__v70___v4__in_len);

    // pointers are public
    public_in(__SMACK_value(__v1_iv));
    public_in(__SMACK_value(__v2_key));
    public_in(__SMACK_value(__v3__out));
    public_in(__SMACK_value(__v4__in));

    // public vals are public
    public_in(__SMACK_value(__v69___v3__out_len));
    public_in(__SMACK_value(__v70___v4__in_len));
    public_in(__SMACK_value(__v5_plen));
    public_in(__SMACK_value(__v6_tls_ver));

    // struct fields --- pointers and public vals are public
    public_in(__SMACK_value(__v2_key->ks.rounds));
    public_in(__SMACK_value(__v2_key->head.num));
    public_in(__SMACK_value(__v2_key->tail.num));
    public_in(__SMACK_value(__v2_key->md.num));
    public_in(__SMACK_value(__v2_key->payload_length));

    /* declassify
     * TODO: There is not a great way of doing this, because ctverif has some limitations...
     * a) __SMACK_values does not handle non-constant size expressions, so we're assuming length == 400 (smaller lengths make it immediately ctverify because of early returns)
     * b) declassification is only for outputs, i.e. "a secret is being written here, but it's okay". However we want to declassify a local variable that's derived from an input. Since the variable is not an output, the closest thing we can do is say that the secret input it's derived from is public.
    */
    //assume(__v69___v3__out_len == 400);
    //public_in(__SMACK_values(&__v3__out[399], 1));
    //declassified_out(__SMACK_return_value());
  
    return _aesni_cbc_hmac_sha1_cipher(
        __v1_iv,
        __v2_key,
        __v3__out,
        __v69___v3__out_len,
        __v4__in,
        __v70___v4__in_len,
        __v5_plen,
        (uint16_t) __v6_tls_ver);
}

