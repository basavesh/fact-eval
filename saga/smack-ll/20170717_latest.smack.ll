; verify with: smack --bit-precise --entry-point=[...]
; ModuleID = 'SmackModule'
source_filename = "SmackModule"

%SHA_CTX = type { [5 x i32], i32, i32, [64 x i8], i32 }
%EVP_AES_HMAC_SHA1 = type { %AES_KEY, %SHA_CTX, %SHA_CTX, %SHA_CTX, i64, [16 x i8] }
%AES_KEY = type { [60 x i32], i32 }

declare i8 @__VERIFIER_nondet_signed_char()

declare i16 @__VERIFIER_nondet_signed_short()

declare i32 @__VERIFIER_nondet_signed_int()

declare i64 @__VERIFIER_nondet_signed_long_long()

declare i8 @__VERIFIER_nondet_unsigned_char()

declare i16 @__VERIFIER_nondet_unsigned_short()

declare i32 @__VERIFIER_nondet_unsigned_int()

declare i64 @__VERIFIER_nondet_unsigned_long_long()

declare void @__VERIFIER_assert(i32)

declare void @__VERIFIER_assume(i32)

declare void @aesni_cbc_encrypt(i8*, i8*, i64, i32*, i8*, i32)

declare void @_sha1_update(i32*, i8*, i64)

declare void @SHA1_Final(i8*, i32*)

declare void @sha1_block_data_order(%SHA_CTX*, i8*, i32)

; Function Attrs: alwaysinline
define internal i32 @bswap4(i32 %_secret_n1) #0 {
entry:
  %_secret_n = alloca i32
  store i32 %_secret_n1, i32* %_secret_n
  %_secret___rval = alloca i32
  %_secret___rnset = alloca i1
  %_secret___v1_x4 = alloca i32
  %_secret___v2_x3 = alloca i32
  %_secret___v3_x2 = alloca i32
  %_secret___v4_x1 = alloca i32
  store i32 0, i32* %_secret___rval
  store i1 true, i1* %_secret___rnset
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval = load i32, i32* %_secret_n
  %_secret_lrshift = lshr i32 %_secret_lval, 0
  %_secret_andtmp = and i32 %_secret_lrshift, 255
  %_secret_truncbinop = trunc i32 %_secret_andtmp to i8
  %_secret_ucast = zext i8 %_secret_truncbinop to i32
  %_secret_lshift = shl i32 %_secret_ucast, 24
  store i32 %_secret_lshift, i32* %_secret___v1_x4
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval2 = load i32, i32* %_secret_n
  %_secret_lrshift3 = lshr i32 %_secret_lval2, 8
  %_secret_andtmp4 = and i32 %_secret_lrshift3, 255
  %_secret_truncbinop5 = trunc i32 %_secret_andtmp4 to i8
  %_secret_ucast6 = zext i8 %_secret_truncbinop5 to i32
  %_secret_lshift7 = shl i32 %_secret_ucast6, 16
  store i32 %_secret_lshift7, i32* %_secret___v2_x3
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval8 = load i32, i32* %_secret_n
  %_secret_lrshift9 = lshr i32 %_secret_lval8, 16
  %_secret_andtmp10 = and i32 %_secret_lrshift9, 255
  %_secret_truncbinop11 = trunc i32 %_secret_andtmp10 to i8
  %_secret_ucast12 = zext i8 %_secret_truncbinop11 to i32
  %_secret_lshift13 = shl i32 %_secret_ucast12, 8
  store i32 %_secret_lshift13, i32* %_secret___v3_x2
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval14 = load i32, i32* %_secret_n
  %_secret_lrshift15 = lshr i32 %_secret_lval14, 24
  %_secret_andtmp16 = and i32 %_secret_lrshift15, 255
  %_secret_truncbinop17 = trunc i32 %_secret_andtmp16 to i8
  %_secret_ucast18 = zext i8 %_secret_truncbinop17 to i32
  %_secret_lshift19 = shl i32 %_secret_ucast18, 0
  store i32 %_secret_lshift19, i32* %_secret___v4_x1
  %_secret_lval20 = load i32, i32* %_secret___v4_x1
  %_secret_lval21 = load i32, i32* %_secret___v3_x2
  %_secret_ortmp = or i32 %_secret_lval20, %_secret_lval21
  %_secret_lval22 = load i32, i32* %_secret___v2_x3
  %_secret_ortmp23 = or i32 %_secret_ortmp, %_secret_lval22
  %_secret_lval24 = load i32, i32* %_secret___v1_x4
  %_secret_ortmp25 = or i32 %_secret_ortmp23, %_secret_lval24
  store i32 %_secret_ortmp25, i32* %_secret___rval
  %_secret_lval26 = load i32, i32* %_secret___rval
  ret i32 %_secret_lval26
}

; Function Attrs: alwaysinline
define internal i16 @load16_be(i8* %_secret_arrarg1) #0 {
entry:
  %_secret_arrarg = alloca i8*
  store i8* %_secret_arrarg1, i8** %_secret_arrarg
  %_secret___rval = alloca i16
  %_secret___rnset = alloca i1
  %_secret___v5_x2 = alloca i16
  %_secret___v6_x1 = alloca i16
  store i16 0, i16* %_secret___rval
  store i1 true, i1* %_secret___rnset
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_dyn = load i8*, i8** %_secret_arrarg
  %_secret_ptr = getelementptr inbounds i8, i8* %_secret_dyn, i8 0
  %_secret_lval = load i8, i8* %_secret_ptr
  %_secret_ucast = zext i8 %_secret_lval to i16
  %_secret_lshift = shl i16 %_secret_ucast, 8
  store i16 %_secret_lshift, i16* %_secret___v5_x2
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_dyn2 = load i8*, i8** %_secret_arrarg
  %_secret_ptr3 = getelementptr inbounds i8, i8* %_secret_dyn2, i8 1
  %_secret_lval4 = load i8, i8* %_secret_ptr3
  %_secret_ucast5 = zext i8 %_secret_lval4 to i16
  store i16 %_secret_ucast5, i16* %_secret___v6_x1
  %_secret_lval6 = load i16, i16* %_secret___v6_x1
  %_secret_lval7 = load i16, i16* %_secret___v5_x2
  %_secret_ortmp = or i16 %_secret_lval6, %_secret_lval7
  store i16 %_secret_ortmp, i16* %_secret___rval
  %_secret_lval8 = load i16, i16* %_secret___rval
  ret i16 %_secret_lval8
}

; Function Attrs: alwaysinline
define internal void @store16_be(i8* %_secret_arrarg1, i16 %_secret_n2) #0 {
entry:
  %_secret_arrarg = alloca i8*
  store i8* %_secret_arrarg1, i8** %_secret_arrarg
  %_secret_n = alloca i16
  store i16 %_secret_n2, i16* %_secret_n
  %_secret___rnset = alloca i1
  store i1 true, i1* %_secret___rnset
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_dyn = load i8*, i8** %_secret_arrarg
  %_secret_ptr = getelementptr inbounds i8, i8* %_secret_dyn, i8 0
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval = load i16, i16* %_secret_n
  %_secret_lrshift = lshr i16 %_secret_lval, 8
  %_secret_ucast = trunc i16 %_secret_lrshift to i8
  store i8 %_secret_ucast, i8* %_secret_ptr
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_dyn3 = load i8*, i8** %_secret_arrarg
  %_secret_ptr4 = getelementptr inbounds i8, i8* %_secret_dyn3, i8 1
  %_secret_lval5 = load i16, i16* %_secret_n
  %_secret_ucast6 = trunc i16 %_secret_lval5 to i8
  store i8 %_secret_ucast6, i8* %_secret_ptr4
  ret void
}

; Function Attrs: alwaysinline
define internal void @cond_store(i8* %_secret_arrarg1, i32 %_secret_val2, i1 %_secret_mask3) #0 {
entry:
  %_secret_arrarg = alloca i8*
  store i8* %_secret_arrarg1, i8** %_secret_arrarg
  %_secret_val = alloca i32
  store i32 %_secret_val2, i32* %_secret_val
  %_secret_mask = alloca i1
  store i1 %_secret_mask3, i1* %_secret_mask
  %_secret___rnset = alloca i1
  %_secret___v7_pmac_val = alloca i32
  %_secret___m1 = alloca i32
  %_secret___m2 = alloca i1
  %_secret___v8_sval = alloca i32
  store i1 true, i1* %_secret___rnset
  %_secret_dynarrarg = load i8*, i8** %_secret_arrarg
  %_secret_calltmp = call i32 @_load32_le(i8* %_secret_dynarrarg)
  store i32 %_secret_calltmp, i32* %_secret___v7_pmac_val
  store i32 0, i32* %_secret___m1
  %_secret_lval = load i1, i1* %_secret_mask
  store i1 %_secret_lval, i1* %_secret___m2
  %_secret_lval4 = load i1, i1* %_secret___m2
  %_secret_landtmp = and i1 true, %_secret_lval4
  %_secret_lval5 = load i1, i1* %_secret___rnset
  %_secret_landtmp6 = and i1 %_secret_landtmp, %_secret_lval5
  %_secret_condtmp = icmp ne i1 %_secret_landtmp6, false
  %_secret_lval7 = load i32, i32* %_secret_val
  %_secret_lval8 = load i32, i32* %_secret___m1
  %_secret_selecttmp = call i32 @select.cmov.sel.i32(i1 %_secret_condtmp, i32 %_secret_lval7, i32 %_secret_lval8)
  store i32 %_secret_selecttmp, i32* %_secret___m1
  %_secret_lval9 = load i1, i1* %_secret___m2
  %_secret_lnottmp = xor i1 %_secret_lval9, true
  store i1 %_secret_lnottmp, i1* %_secret___m2
  %_secret_lval10 = load i1, i1* %_secret___m2
  %_secret_landtmp11 = and i1 true, %_secret_lval10
  %_secret_lval12 = load i1, i1* %_secret___rnset
  %_secret_landtmp13 = and i1 %_secret_landtmp11, %_secret_lval12
  %_secret_condtmp14 = icmp ne i1 %_secret_landtmp13, false
  %_secret_lval15 = load i32, i32* %_secret___v7_pmac_val
  %_secret_lval16 = load i32, i32* %_secret___m1
  %_secret_selecttmp17 = call i32 @select.cmov.sel.i32(i1 %_secret_condtmp14, i32 %_secret_lval15, i32 %_secret_lval16)
  store i32 %_secret_selecttmp17, i32* %_secret___m1
  %_secret___m118 = load i32, i32* %_secret___m1
  store i32 %_secret___m118, i32* %_secret___v8_sval
  %_secret_dynarrarg19 = load i8*, i8** %_secret_arrarg
  %_secret_lval20 = load i32, i32* %_secret___v8_sval
  call void @_store32_le(i8* %_secret_dynarrarg19, i32 %_secret_lval20)
  ret void
}

; Function Attrs: alwaysinline readonly
define internal i32 @_load32_le(i8*) #1 {
entry:
  %_secret_cast = bitcast i8* %0 to i32*
  %_secret_ld = load i32, i32* %_secret_cast
  ret i32 %_secret_ld
}

; Function Attrs: alwaysinline
define internal i32 @select.cmov.sel.i32(i1 %_secret_cond, i32 %_secret_a, i32 %_secret_b) #0 {
entry:
  %_secret_select = select i1 %_secret_cond, i32 %_secret_a, i32 %_secret_b
  ret i32 %_secret_select
}

; Function Attrs: alwaysinline
define internal void @_store32_le(i8*, i32) #0 {
entry:
  %_secret_cast = bitcast i8* %0 to i32*
  store i32 %1, i32* %_secret_cast
  ret void
}

define i32 @_aesni_cbc_hmac_sha1_cipher(i8* %_secret_arrarg1, %EVP_AES_HMAC_SHA1* %key, i8* %_secret_arrarg3, i32 %_public____out_len4, i8* %_secret_arrarg6, i32 %_public____in_len7, i64 %_public_plen8) {
entry:
  %_secret_arrarg = alloca i8*
  store i8* %_secret_arrarg1, i8** %_secret_arrarg
  %_secret_arrarg2 = alloca i8*
  store i8* %_secret_arrarg3, i8** %_secret_arrarg2
  %_public____out_len = alloca i32
  store i32 %_public____out_len4, i32* %_public____out_len
  %_secret_arrarg5 = alloca i8*
  store i8* %_secret_arrarg6, i8** %_secret_arrarg5
  %_public____in_len = alloca i32
  store i32 %_public____in_len7, i32* %_public____in_len
  %_public_plen = alloca i64
  store i64 %_public_plen8, i64* %_public_plen
  %_secret___rval = alloca i32
  %_secret___rnset = alloca i1
  %_public___v9_NO_PAYLOAD_LENGTH = alloca i64
  %_public___v10_AES_BLOCK_SIZE = alloca i32
  %_public___v11_SHA_DIGEST_LENGTH = alloca i32
  %_public___v12_TLS1_1_VERSION = alloca i32
  %_public___v13_SHA_LBLOCK = alloca i32
  %_public___v14_SHA_CBLOCK = alloca i32
  %_public___v15_inp = alloca i32
  %_public___v16_outp = alloca i32
  %_public___v17__len = alloca i32
  %_secret___v18_ret = alloca i32
  %_public___v19_tls_ver = alloca i16
  %_public___v21___v20_len = alloca i32
  %_public___v23___v22_len = alloca i32
  %_secret___v24_pad = alloca i32
  %_public___v25_tmppad = alloca i32
  %_public___v26_maxpad = alloca i32
  %_secret___m3 = alloca i1
  %_secret___v27_inp_len = alloca i32
  %_public___v29___v28_len = alloca i32
  %_public___v30_j = alloca i32
  %_public___v32___v31_len = alloca i32
  %_secret___v33_bitlen = alloca i32
  %_public___v35_p_res = alloca i32
  %_public___v36_j = alloca i32
  %_secret___m4 = alloca i8
  %_secret___m5 = alloca i1
  %_secret___m6 = alloca i16
  %_secret___m7 = alloca i1
  %_secret___v37_m1 = alloca i1
  %_secret___m8 = alloca i1
  %_secret___m9 = alloca i1
  %_secret___v38_m2 = alloca i1
  %_public___v39_j = alloca i32
  %_public___v40_i = alloca i32
  %_secret___v41_m1 = alloca i1
  %_secret___m10 = alloca i1
  %_secret___m11 = alloca i1
  %_secret___v42_m2 = alloca i1
  %_secret___v43_m2 = alloca i1
  %_secret___v44_s_outp = alloca i32
  %_public___v45_p_outp = alloca i32
  %_secret___v46_i = alloca i32
  %_public___v47_j = alloca i32
  %_secret___v48_c = alloca i32
  %_secret___m12 = alloca i1
  %_secret___m13 = alloca i1
  %_secret___m14 = alloca i1
  %_secret___m15 = alloca i1
  store i32 0, i32* %_secret___rval
  store i1 true, i1* %_secret___rnset
  store i64 -1, i64* %_public___v9_NO_PAYLOAD_LENGTH
  store i32 16, i32* %_public___v10_AES_BLOCK_SIZE
  store i32 20, i32* %_public___v11_SHA_DIGEST_LENGTH
  store i32 770, i32* %_public___v12_TLS1_1_VERSION
  store i32 16, i32* %_public___v13_SHA_LBLOCK
  %_public_lval = load i32, i32* %_public___v13_SHA_LBLOCK
  %_public_multmp = mul i32 %_public_lval, 4
  store i32 %_public_multmp, i32* %_public___v14_SHA_CBLOCK
  store i32 0, i32* %_public___v15_inp
  store i32 0, i32* %_public___v16_outp
  %_public_lval9 = load i32, i32* %_public____out_len
  store i32 %_public_lval9, i32* %_public___v17__len
  store i32 1, i32* %_secret___v18_ret
  %_public_lval10 = load i64, i64* %_public_plen
  %_public_subtmp = sub i64 %_public_lval10, 4
  %_public_addtmp = add i64 %_public_subtmp, 2
  %_public_lval11 = load i64, i64* %_public_plen
  %_public_subtmp12 = sub i64 %_public_lval11, 4
  %_public_ugttmp = icmp ugt i64 %_public_addtmp, %_public_subtmp12
  %_public_zexttmp = zext i1 %_public_ugttmp to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp)
  %_public_lval13 = load i64, i64* %_public_plen
  %_public_subtmp14 = sub i64 %_public_lval13, 4
  %_public_ugtetmp = icmp uge i64 %_public_subtmp14, 0
  %_public_zexttmp15 = zext i1 %_public_ugtetmp to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp15)
  %_public_lval16 = load i64, i64* %_public_plen
  %_public_subtmp17 = sub i64 %_public_lval16, 4
  %_public_ulttmp = icmp ult i64 %_public_subtmp17, 16
  %_public_zexttmp18 = zext i1 %_public_ulttmp to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp18)
  %_public_lval19 = load i64, i64* %_public_plen
  %_public_subtmp20 = sub i64 %_public_lval19, 4
  %_public_addtmp21 = add i64 %_public_subtmp20, 2
  %_public_subtmp22 = sub i64 %_public_addtmp21, 1
  %_public_ugtetmp23 = icmp uge i64 %_public_subtmp22, 0
  %_public_zexttmp24 = zext i1 %_public_ugtetmp23 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp24)
  %_public_lval25 = load i64, i64* %_public_plen
  %_public_subtmp26 = sub i64 %_public_lval25, 4
  %_public_addtmp27 = add i64 %_public_subtmp26, 2
  %_public_subtmp28 = sub i64 %_public_addtmp27, 1
  %_public_ulttmp29 = icmp ult i64 %_public_subtmp28, 16
  %_public_zexttmp30 = zext i1 %_public_ulttmp29 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp30)
  %_public_lval31 = load i64, i64* %_public_plen
  %_public_subtmp32 = sub i64 %_public_lval31, 4
  %_secret_structgep = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 5
  %_secret_arrview = alloca i8*
  %_secret_source_gep = getelementptr inbounds [16 x i8], [16 x i8]* %_secret_structgep, i64 0, i64 %_public_subtmp32
  store i8* %_secret_source_gep, i8** %_secret_arrview
  %_public_lval33 = load i64, i64* %_public_plen
  %_public_subtmp34 = sub i64 %_public_lval33, 4
  %_public_addtmp35 = add i64 %_public_subtmp34, 2
  %_public_lval36 = load i64, i64* %_public_plen
  %_public_subtmp37 = sub i64 %_public_lval36, 4
  %_public_ugttmp38 = icmp ugt i64 %_public_addtmp35, %_public_subtmp37
  %_public_zexttmp39 = zext i1 %_public_ugttmp38 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp39)
  %_public_lval40 = load i64, i64* %_public_plen
  %_public_subtmp41 = sub i64 %_public_lval40, 4
  %_public_ugtetmp42 = icmp uge i64 %_public_subtmp41, 0
  %_public_zexttmp43 = zext i1 %_public_ugtetmp42 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp43)
  %_public_lval44 = load i64, i64* %_public_plen
  %_public_subtmp45 = sub i64 %_public_lval44, 4
  %_public_ulttmp46 = icmp ult i64 %_public_subtmp45, 16
  %_public_zexttmp47 = zext i1 %_public_ulttmp46 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp47)
  %_public_lval48 = load i64, i64* %_public_plen
  %_public_subtmp49 = sub i64 %_public_lval48, 4
  %_public_addtmp50 = add i64 %_public_subtmp49, 2
  %_public_subtmp51 = sub i64 %_public_addtmp50, 1
  %_public_ugtetmp52 = icmp uge i64 %_public_subtmp51, 0
  %_public_zexttmp53 = zext i1 %_public_ugtetmp52 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp53)
  %_public_lval54 = load i64, i64* %_public_plen
  %_public_subtmp55 = sub i64 %_public_lval54, 4
  %_public_addtmp56 = add i64 %_public_subtmp55, 2
  %_public_subtmp57 = sub i64 %_public_addtmp56, 1
  %_public_ulttmp58 = icmp ult i64 %_public_subtmp57, 16
  %_public_zexttmp59 = zext i1 %_public_ulttmp58 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp59)
  %_public_lval60 = load i64, i64* %_public_plen
  %_public_subtmp61 = sub i64 %_public_lval60, 4
  %_secret_structgep62 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 5
  %_secret_arrview63 = alloca i8*
  %_secret_source_gep64 = getelementptr inbounds [16 x i8], [16 x i8]* %_secret_structgep62, i64 0, i64 %_public_subtmp61
  store i8* %_secret_source_gep64, i8** %_secret_arrview63
  %_secret_dynarrarg = load i8*, i8** %_secret_arrview63
  %_declassified__secret_calltmp = call i16 @load16_be(i8* %_secret_dynarrarg)
  store i16 %_declassified__secret_calltmp, i16* %_public___v19_tls_ver
  %_public_lval65 = load i16, i16* %_public___v19_tls_ver
  %_public_lval66 = load i32, i32* %_public___v12_TLS1_1_VERSION
  %_public_lhssext = zext i16 %_public_lval65 to i32
  %_declassified__public_ugtetmp67 = icmp uge i32 %_public_lhssext, %_public_lval66
  %_public_branchcompare = icmp eq i1 %_declassified__public_ugtetmp67, true
  br i1 %_public_branchcompare, label %thenbranch, label %elsebranch88

thenbranch:                                       ; preds = %entry
  %_public_lval68 = load i32, i32* %_public___v17__len
  %_public_lval69 = load i32, i32* %_public___v10_AES_BLOCK_SIZE
  %_public_lval70 = load i32, i32* %_public___v11_SHA_DIGEST_LENGTH
  %_public_addtmp71 = add i32 %_public_lval69, %_public_lval70
  %_public_addtmp72 = add i32 %_public_addtmp71, 1
  %_public_ulttmp73 = icmp ult i32 %_public_lval68, %_public_addtmp72
  %_public_branchcompare74 = icmp eq i1 %_public_ulttmp73, true
  br i1 %_public_branchcompare74, label %thenbranch75, label %elsebranch

thenbranch75:                                     ; preds = %thenbranch
  store i32 0, i32* %_secret___rval
  %_secret_lval = load i32, i32* %_secret___rval
  ret i32 %_secret_lval

elsebranch:                                       ; preds = %thenbranch
  br label %branchmerge

branchmerge:                                      ; preds = %elsebranch
  %_secret_dynarrarg76 = load i8*, i8** %_secret_arrarg
  %_secret_dynarrarg77 = load i8*, i8** %_secret_arrarg5
  %_public_lval78 = load i32, i32* %_public____in_len
  call void @_arrcopy(i8* %_secret_dynarrarg76, i32 16, i8* %_secret_dynarrarg77, i32 %_public_lval78)
  %_public_lval79 = load i32, i32* %_public___v15_inp
  %_public_lval80 = load i32, i32* %_public___v10_AES_BLOCK_SIZE
  %_public_addtmp81 = add i32 %_public_lval79, %_public_lval80
  store i32 %_public_addtmp81, i32* %_public___v15_inp
  %_public_lval82 = load i32, i32* %_public___v16_outp
  %_public_lval83 = load i32, i32* %_public___v10_AES_BLOCK_SIZE
  %_public_addtmp84 = add i32 %_public_lval82, %_public_lval83
  store i32 %_public_addtmp84, i32* %_public___v16_outp
  %_public_lval85 = load i32, i32* %_public___v17__len
  %_public_lval86 = load i32, i32* %_public___v10_AES_BLOCK_SIZE
  %_public_subtmp87 = sub i32 %_public_lval85, %_public_lval86
  store i32 %_public_subtmp87, i32* %_public___v17__len
  br label %branchmerge98

elsebranch88:                                     ; preds = %entry
  %_public_lval89 = load i32, i32* %_public___v17__len
  %_public_lval90 = load i32, i32* %_public___v11_SHA_DIGEST_LENGTH
  %_public_addtmp91 = add i32 %_public_lval90, 1
  %_public_ulttmp92 = icmp ult i32 %_public_lval89, %_public_addtmp91
  %_public_branchcompare93 = icmp eq i1 %_public_ulttmp92, true
  br i1 %_public_branchcompare93, label %thenbranch94, label %elsebranch96

thenbranch94:                                     ; preds = %elsebranch88
  store i32 0, i32* %_secret___rval
  %_secret_lval95 = load i32, i32* %_secret___rval
  ret i32 %_secret_lval95

elsebranch96:                                     ; preds = %elsebranch88
  br label %branchmerge97

branchmerge97:                                    ; preds = %elsebranch96
  br label %branchmerge98

branchmerge98:                                    ; preds = %branchmerge97, %branchmerge
  %_public_lval99 = load i32, i32* %_public___v17__len
  store i32 %_public_lval99, i32* %_public___v21___v20_len
  %_public_lval100 = load i32, i32* %_public___v17__len
  store i32 %_public_lval100, i32* %_public___v23___v22_len
  %_public_lval101 = load i32, i32* %_public___v15_inp
  %_public_lval102 = load i32, i32* %_public___v21___v20_len
  %_public_icast = zext i32 %_public_lval102 to i64
  %_public_lhssext103 = zext i32 %_public_lval101 to i64
  %_public_addtmp104 = add i64 %_public_lhssext103, %_public_icast
  %_public_truncbinop = trunc i64 %_public_addtmp104 to i32
  %_public_lval105 = load i32, i32* %_public___v15_inp
  %_public_ugttmp106 = icmp ugt i32 %_public_truncbinop, %_public_lval105
  %_public_zexttmp107 = zext i1 %_public_ugttmp106 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp107)
  %_public_lval108 = load i32, i32* %_public___v15_inp
  %_public_lhssext109 = zext i32 %_public_lval108 to i64
  %_public_ugtetmp110 = icmp uge i64 %_public_lhssext109, 0
  %_public_zexttmp111 = zext i1 %_public_ugtetmp110 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp111)
  %_public_lval112 = load i32, i32* %_public___v15_inp
  %_public_lval113 = load i32, i32* %_public____in_len
  %_public_icast114 = zext i32 %_public_lval113 to i64
  %_public_lhssext115 = zext i32 %_public_lval112 to i64
  %_public_ulttmp116 = icmp ult i64 %_public_lhssext115, %_public_icast114
  %_public_zexttmp117 = zext i1 %_public_ulttmp116 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp117)
  %_public_lval118 = load i32, i32* %_public___v15_inp
  %_public_lval119 = load i32, i32* %_public___v21___v20_len
  %_public_icast120 = zext i32 %_public_lval119 to i64
  %_public_lhssext121 = zext i32 %_public_lval118 to i64
  %_public_addtmp122 = add i64 %_public_lhssext121, %_public_icast120
  %_public_truncbinop123 = trunc i64 %_public_addtmp122 to i32
  %_public_subtmp124 = sub i32 %_public_truncbinop123, 1
  %_public_lhssext125 = zext i32 %_public_subtmp124 to i64
  %_public_ugtetmp126 = icmp uge i64 %_public_lhssext125, 0
  %_public_zexttmp127 = zext i1 %_public_ugtetmp126 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp127)
  %_public_lval128 = load i32, i32* %_public___v15_inp
  %_public_lval129 = load i32, i32* %_public___v21___v20_len
  %_public_icast130 = zext i32 %_public_lval129 to i64
  %_public_lhssext131 = zext i32 %_public_lval128 to i64
  %_public_addtmp132 = add i64 %_public_lhssext131, %_public_icast130
  %_public_truncbinop133 = trunc i64 %_public_addtmp132 to i32
  %_public_subtmp134 = sub i32 %_public_truncbinop133, 1
  %_public_lval135 = load i32, i32* %_public____in_len
  %_public_icast136 = zext i32 %_public_lval135 to i64
  %_public_lhssext137 = zext i32 %_public_subtmp134 to i64
  %_public_ulttmp138 = icmp ult i64 %_public_lhssext137, %_public_icast136
  %_public_zexttmp139 = zext i1 %_public_ulttmp138 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp139)
  %_public_lval140 = load i32, i32* %_public___v15_inp
  %_secret_ldedviewptr = load i8*, i8** %_secret_arrarg5
  %_secret_source_gep141 = getelementptr inbounds i8, i8* %_secret_ldedviewptr, i32 %_public_lval140
  %_secret_arrviewdyn = alloca i8*
  store i8* %_secret_source_gep141, i8** %_secret_arrviewdyn
  %_public_lval142 = load i32, i32* %_public___v15_inp
  %_public_lval143 = load i32, i32* %_public___v21___v20_len
  %_public_icast144 = zext i32 %_public_lval143 to i64
  %_public_lhssext145 = zext i32 %_public_lval142 to i64
  %_public_addtmp146 = add i64 %_public_lhssext145, %_public_icast144
  %_public_truncbinop147 = trunc i64 %_public_addtmp146 to i32
  %_public_lval148 = load i32, i32* %_public___v15_inp
  %_public_ugttmp149 = icmp ugt i32 %_public_truncbinop147, %_public_lval148
  %_public_zexttmp150 = zext i1 %_public_ugttmp149 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp150)
  %_public_lval151 = load i32, i32* %_public___v15_inp
  %_public_lhssext152 = zext i32 %_public_lval151 to i64
  %_public_ugtetmp153 = icmp uge i64 %_public_lhssext152, 0
  %_public_zexttmp154 = zext i1 %_public_ugtetmp153 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp154)
  %_public_lval155 = load i32, i32* %_public___v15_inp
  %_public_lval156 = load i32, i32* %_public____in_len
  %_public_icast157 = zext i32 %_public_lval156 to i64
  %_public_lhssext158 = zext i32 %_public_lval155 to i64
  %_public_ulttmp159 = icmp ult i64 %_public_lhssext158, %_public_icast157
  %_public_zexttmp160 = zext i1 %_public_ulttmp159 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp160)
  %_public_lval161 = load i32, i32* %_public___v15_inp
  %_public_lval162 = load i32, i32* %_public___v21___v20_len
  %_public_icast163 = zext i32 %_public_lval162 to i64
  %_public_lhssext164 = zext i32 %_public_lval161 to i64
  %_public_addtmp165 = add i64 %_public_lhssext164, %_public_icast163
  %_public_truncbinop166 = trunc i64 %_public_addtmp165 to i32
  %_public_subtmp167 = sub i32 %_public_truncbinop166, 1
  %_public_lhssext168 = zext i32 %_public_subtmp167 to i64
  %_public_ugtetmp169 = icmp uge i64 %_public_lhssext168, 0
  %_public_zexttmp170 = zext i1 %_public_ugtetmp169 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp170)
  %_public_lval171 = load i32, i32* %_public___v15_inp
  %_public_lval172 = load i32, i32* %_public___v21___v20_len
  %_public_icast173 = zext i32 %_public_lval172 to i64
  %_public_lhssext174 = zext i32 %_public_lval171 to i64
  %_public_addtmp175 = add i64 %_public_lhssext174, %_public_icast173
  %_public_truncbinop176 = trunc i64 %_public_addtmp175 to i32
  %_public_subtmp177 = sub i32 %_public_truncbinop176, 1
  %_public_lval178 = load i32, i32* %_public____in_len
  %_public_icast179 = zext i32 %_public_lval178 to i64
  %_public_lhssext180 = zext i32 %_public_subtmp177 to i64
  %_public_ulttmp181 = icmp ult i64 %_public_lhssext180, %_public_icast179
  %_public_zexttmp182 = zext i1 %_public_ulttmp181 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp182)
  %_public_lval183 = load i32, i32* %_public___v15_inp
  %_secret_ldedviewptr184 = load i8*, i8** %_secret_arrarg5
  %_secret_source_gep185 = getelementptr inbounds i8, i8* %_secret_ldedviewptr184, i32 %_public_lval183
  %_secret_arrviewdyn186 = alloca i8*
  store i8* %_secret_source_gep185, i8** %_secret_arrviewdyn186
  %_secret_dynarrarg187 = load i8*, i8** %_secret_arrviewdyn186
  %_public_lval188 = load i32, i32* %_public___v16_outp
  %_public_lval189 = load i32, i32* %_public___v23___v22_len
  %_public_icast190 = zext i32 %_public_lval189 to i64
  %_public_lhssext191 = zext i32 %_public_lval188 to i64
  %_public_addtmp192 = add i64 %_public_lhssext191, %_public_icast190
  %_public_truncbinop193 = trunc i64 %_public_addtmp192 to i32
  %_public_lval194 = load i32, i32* %_public___v16_outp
  %_public_ugttmp195 = icmp ugt i32 %_public_truncbinop193, %_public_lval194
  %_public_zexttmp196 = zext i1 %_public_ugttmp195 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp196)
  %_public_lval197 = load i32, i32* %_public___v16_outp
  %_public_lhssext198 = zext i32 %_public_lval197 to i64
  %_public_ugtetmp199 = icmp uge i64 %_public_lhssext198, 0
  %_public_zexttmp200 = zext i1 %_public_ugtetmp199 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp200)
  %_public_lval201 = load i32, i32* %_public___v16_outp
  %_public_lval202 = load i32, i32* %_public____out_len
  %_public_icast203 = zext i32 %_public_lval202 to i64
  %_public_lhssext204 = zext i32 %_public_lval201 to i64
  %_public_ulttmp205 = icmp ult i64 %_public_lhssext204, %_public_icast203
  %_public_zexttmp206 = zext i1 %_public_ulttmp205 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp206)
  %_public_lval207 = load i32, i32* %_public___v16_outp
  %_public_lval208 = load i32, i32* %_public___v23___v22_len
  %_public_icast209 = zext i32 %_public_lval208 to i64
  %_public_lhssext210 = zext i32 %_public_lval207 to i64
  %_public_addtmp211 = add i64 %_public_lhssext210, %_public_icast209
  %_public_truncbinop212 = trunc i64 %_public_addtmp211 to i32
  %_public_subtmp213 = sub i32 %_public_truncbinop212, 1
  %_public_lhssext214 = zext i32 %_public_subtmp213 to i64
  %_public_ugtetmp215 = icmp uge i64 %_public_lhssext214, 0
  %_public_zexttmp216 = zext i1 %_public_ugtetmp215 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp216)
  %_public_lval217 = load i32, i32* %_public___v16_outp
  %_public_lval218 = load i32, i32* %_public___v23___v22_len
  %_public_icast219 = zext i32 %_public_lval218 to i64
  %_public_lhssext220 = zext i32 %_public_lval217 to i64
  %_public_addtmp221 = add i64 %_public_lhssext220, %_public_icast219
  %_public_truncbinop222 = trunc i64 %_public_addtmp221 to i32
  %_public_subtmp223 = sub i32 %_public_truncbinop222, 1
  %_public_lval224 = load i32, i32* %_public____out_len
  %_public_icast225 = zext i32 %_public_lval224 to i64
  %_public_lhssext226 = zext i32 %_public_subtmp223 to i64
  %_public_ulttmp227 = icmp ult i64 %_public_lhssext226, %_public_icast225
  %_public_zexttmp228 = zext i1 %_public_ulttmp227 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp228)
  %_public_lval229 = load i32, i32* %_public___v16_outp
  %_secret_ldedviewptr230 = load i8*, i8** %_secret_arrarg2
  %_secret_source_gep231 = getelementptr inbounds i8, i8* %_secret_ldedviewptr230, i32 %_public_lval229
  %_secret_arrviewdyn232 = alloca i8*
  store i8* %_secret_source_gep231, i8** %_secret_arrviewdyn232
  %_public_lval233 = load i32, i32* %_public___v16_outp
  %_public_lval234 = load i32, i32* %_public___v23___v22_len
  %_public_icast235 = zext i32 %_public_lval234 to i64
  %_public_lhssext236 = zext i32 %_public_lval233 to i64
  %_public_addtmp237 = add i64 %_public_lhssext236, %_public_icast235
  %_public_truncbinop238 = trunc i64 %_public_addtmp237 to i32
  %_public_lval239 = load i32, i32* %_public___v16_outp
  %_public_ugttmp240 = icmp ugt i32 %_public_truncbinop238, %_public_lval239
  %_public_zexttmp241 = zext i1 %_public_ugttmp240 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp241)
  %_public_lval242 = load i32, i32* %_public___v16_outp
  %_public_lhssext243 = zext i32 %_public_lval242 to i64
  %_public_ugtetmp244 = icmp uge i64 %_public_lhssext243, 0
  %_public_zexttmp245 = zext i1 %_public_ugtetmp244 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp245)
  %_public_lval246 = load i32, i32* %_public___v16_outp
  %_public_lval247 = load i32, i32* %_public____out_len
  %_public_icast248 = zext i32 %_public_lval247 to i64
  %_public_lhssext249 = zext i32 %_public_lval246 to i64
  %_public_ulttmp250 = icmp ult i64 %_public_lhssext249, %_public_icast248
  %_public_zexttmp251 = zext i1 %_public_ulttmp250 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp251)
  %_public_lval252 = load i32, i32* %_public___v16_outp
  %_public_lval253 = load i32, i32* %_public___v23___v22_len
  %_public_icast254 = zext i32 %_public_lval253 to i64
  %_public_lhssext255 = zext i32 %_public_lval252 to i64
  %_public_addtmp256 = add i64 %_public_lhssext255, %_public_icast254
  %_public_truncbinop257 = trunc i64 %_public_addtmp256 to i32
  %_public_subtmp258 = sub i32 %_public_truncbinop257, 1
  %_public_lhssext259 = zext i32 %_public_subtmp258 to i64
  %_public_ugtetmp260 = icmp uge i64 %_public_lhssext259, 0
  %_public_zexttmp261 = zext i1 %_public_ugtetmp260 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp261)
  %_public_lval262 = load i32, i32* %_public___v16_outp
  %_public_lval263 = load i32, i32* %_public___v23___v22_len
  %_public_icast264 = zext i32 %_public_lval263 to i64
  %_public_lhssext265 = zext i32 %_public_lval262 to i64
  %_public_addtmp266 = add i64 %_public_lhssext265, %_public_icast264
  %_public_truncbinop267 = trunc i64 %_public_addtmp266 to i32
  %_public_subtmp268 = sub i32 %_public_truncbinop267, 1
  %_public_lval269 = load i32, i32* %_public____out_len
  %_public_icast270 = zext i32 %_public_lval269 to i64
  %_public_lhssext271 = zext i32 %_public_subtmp268 to i64
  %_public_ulttmp272 = icmp ult i64 %_public_lhssext271, %_public_icast270
  %_public_zexttmp273 = zext i1 %_public_ulttmp272 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp273)
  %_public_lval274 = load i32, i32* %_public___v16_outp
  %_secret_ldedviewptr275 = load i8*, i8** %_secret_arrarg2
  %_secret_source_gep276 = getelementptr inbounds i8, i8* %_secret_ldedviewptr275, i32 %_public_lval274
  %_secret_arrviewdyn277 = alloca i8*
  store i8* %_secret_source_gep276, i8** %_secret_arrviewdyn277
  %_secret_dynarrarg278 = load i8*, i8** %_secret_arrviewdyn277
  %_public_lval279 = load i32, i32* %_public___v17__len
  %_public_zexttmp280 = zext i32 %_public_lval279 to i64
  %_public_structgep = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 0
  %_secret_structgep281 = getelementptr inbounds %AES_KEY, %AES_KEY* %_public_structgep, i32 0, i32 0
  %_public_structgep282 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 0
  %_secret_structgep283 = getelementptr inbounds %AES_KEY, %AES_KEY* %_public_structgep282, i32 0, i32 0
  %_secret_arrtoptr = bitcast [60 x i32]* %_secret_structgep283 to i32*
  %_secret_dynarrarg284 = load i8*, i8** %_secret_arrarg
  call void @aesni_cbc_encrypt(i8* %_secret_dynarrarg187, i8* %_secret_dynarrarg278, i64 %_public_zexttmp280, i32* %_secret_arrtoptr, i8* %_secret_dynarrarg284, i32 0)
  %_public_lval285 = load i32, i32* %_public____out_len
  %_public_subtmp286 = sub i32 %_public_lval285, 1
  %_public_lhssext287 = zext i32 %_public_subtmp286 to i64
  %_public_ugtetmp288 = icmp uge i64 %_public_lhssext287, 0
  %_public_zexttmp289 = zext i1 %_public_ugtetmp288 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp289)
  %_public_lval290 = load i32, i32* %_public____out_len
  %_public_subtmp291 = sub i32 %_public_lval290, 1
  %_public_lval292 = load i32, i32* %_public____out_len
  %_public_icast293 = zext i32 %_public_lval292 to i64
  %_public_lhssext294 = zext i32 %_public_subtmp291 to i64
  %_public_ulttmp295 = icmp ult i64 %_public_lhssext294, %_public_icast293
  %_public_zexttmp296 = zext i1 %_public_ulttmp295 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp296)
  %_public_lval297 = load i32, i32* %_public____out_len
  %_public_subtmp298 = sub i32 %_public_lval297, 1
  %_secret_dyn = load i8*, i8** %_secret_arrarg2
  %_secret_ptr = getelementptr inbounds i8, i8* %_secret_dyn, i32 %_public_subtmp298
  %_secret_lval299 = load i8, i8* %_secret_ptr
  %_secret_zexttmp = zext i8 %_secret_lval299 to i32
  store i32 %_secret_zexttmp, i32* %_secret___v24_pad
  %_public_lval300 = load i32, i32* %_public___v17__len
  %_public_lval301 = load i32, i32* %_public___v11_SHA_DIGEST_LENGTH
  %_public_addtmp302 = add i32 %_public_lval301, 1
  %_public_subtmp303 = sub i32 %_public_lval300, %_public_addtmp302
  store i32 %_public_subtmp303, i32* %_public___v25_tmppad
  %_public_lval304 = load i32, i32* %_public___v25_tmppad
  %_public_ugttmp305 = icmp ugt i32 %_public_lval304, 255
  %_public_condtmp = icmp ne i1 %_public_ugttmp305, false
  %_public_lval306 = load i32, i32* %_public___v25_tmppad
  %_public_terntmp = select i1 %_public_condtmp, i32 255, i32 %_public_lval306
  store i32 %_public_terntmp, i32* %_public___v26_maxpad
  %_secret_lval307 = load i32, i32* %_secret___v24_pad
  %_public_lval308 = load i32, i32* %_public___v26_maxpad
  %_secret_ugttmp = icmp ugt i32 %_secret_lval307, %_public_lval308
  store i1 %_secret_ugttmp, i1* %_secret___m3
  %_secret_lval309 = load i1, i1* %_secret___m3
  %_secret_landtmp = and i1 true, %_secret_lval309
  %_secret_lval310 = load i1, i1* %_secret___rnset
  %_secret_landtmp311 = and i1 %_secret_landtmp, %_secret_lval310
  %_secret_condtmp = icmp ne i1 %_secret_landtmp311, false
  %_public_lval312 = load i32, i32* %_public___v26_maxpad
  %_secret_lval313 = load i32, i32* %_secret___v24_pad
  %_secret_selecttmp = call i32 @select.cmov.sel.i32(i1 %_secret_condtmp, i32 %_public_lval312, i32 %_secret_lval313)
  store i32 %_secret_selecttmp, i32* %_secret___v24_pad
  %_secret_lval314 = load i1, i1* %_secret___m3
  %_secret_landtmp315 = and i1 true, %_secret_lval314
  %_secret_lval316 = load i1, i1* %_secret___rnset
  %_secret_landtmp317 = and i1 %_secret_landtmp315, %_secret_lval316
  %_secret_condtmp318 = icmp ne i1 %_secret_landtmp317, false
  %_secret_lval319 = load i32, i32* %_secret___v18_ret
  %_secret_selecttmp320 = call i32 @select.cmov.sel.i32(i1 %_secret_condtmp318, i32 0, i32 %_secret_lval319)
  store i32 %_secret_selecttmp320, i32* %_secret___v18_ret
  %_secret_lval321 = load i1, i1* %_secret___m3
  %_secret_lnottmp = xor i1 %_secret_lval321, true
  store i1 %_secret_lnottmp, i1* %_secret___m3
  %_public_lval322 = load i32, i32* %_public___v17__len
  %_public_lval323 = load i32, i32* %_public___v11_SHA_DIGEST_LENGTH
  %_secret_lval324 = load i32, i32* %_secret___v24_pad
  %_secret_addtmp = add i32 %_public_lval323, %_secret_lval324
  %_secret_addtmp325 = add i32 %_secret_addtmp, 1
  %_secret_subtmp = sub i32 %_public_lval322, %_secret_addtmp325
  store i32 %_secret_subtmp, i32* %_secret___v27_inp_len
  %_public_lval326 = load i64, i64* %_public_plen
  %_public_subtmp327 = sub i64 %_public_lval326, 2
  %_public_addtmp328 = add i64 %_public_subtmp327, 2
  %_public_lval329 = load i64, i64* %_public_plen
  %_public_subtmp330 = sub i64 %_public_lval329, 2
  %_public_ugttmp331 = icmp ugt i64 %_public_addtmp328, %_public_subtmp330
  %_public_zexttmp332 = zext i1 %_public_ugttmp331 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp332)
  %_public_lval333 = load i64, i64* %_public_plen
  %_public_subtmp334 = sub i64 %_public_lval333, 2
  %_public_ugtetmp335 = icmp uge i64 %_public_subtmp334, 0
  %_public_zexttmp336 = zext i1 %_public_ugtetmp335 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp336)
  %_public_lval337 = load i64, i64* %_public_plen
  %_public_subtmp338 = sub i64 %_public_lval337, 2
  %_public_ulttmp339 = icmp ult i64 %_public_subtmp338, 16
  %_public_zexttmp340 = zext i1 %_public_ulttmp339 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp340)
  %_public_lval341 = load i64, i64* %_public_plen
  %_public_subtmp342 = sub i64 %_public_lval341, 2
  %_public_addtmp343 = add i64 %_public_subtmp342, 2
  %_public_subtmp344 = sub i64 %_public_addtmp343, 1
  %_public_ugtetmp345 = icmp uge i64 %_public_subtmp344, 0
  %_public_zexttmp346 = zext i1 %_public_ugtetmp345 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp346)
  %_public_lval347 = load i64, i64* %_public_plen
  %_public_subtmp348 = sub i64 %_public_lval347, 2
  %_public_addtmp349 = add i64 %_public_subtmp348, 2
  %_public_subtmp350 = sub i64 %_public_addtmp349, 1
  %_public_ulttmp351 = icmp ult i64 %_public_subtmp350, 16
  %_public_zexttmp352 = zext i1 %_public_ulttmp351 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp352)
  %_public_lval353 = load i64, i64* %_public_plen
  %_public_subtmp354 = sub i64 %_public_lval353, 2
  %_secret_structgep355 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 5
  %_secret_arrview356 = alloca i8*
  %_secret_source_gep357 = getelementptr inbounds [16 x i8], [16 x i8]* %_secret_structgep355, i64 0, i64 %_public_subtmp354
  store i8* %_secret_source_gep357, i8** %_secret_arrview356
  %_public_lval358 = load i64, i64* %_public_plen
  %_public_subtmp359 = sub i64 %_public_lval358, 2
  %_public_addtmp360 = add i64 %_public_subtmp359, 2
  %_public_lval361 = load i64, i64* %_public_plen
  %_public_subtmp362 = sub i64 %_public_lval361, 2
  %_public_ugttmp363 = icmp ugt i64 %_public_addtmp360, %_public_subtmp362
  %_public_zexttmp364 = zext i1 %_public_ugttmp363 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp364)
  %_public_lval365 = load i64, i64* %_public_plen
  %_public_subtmp366 = sub i64 %_public_lval365, 2
  %_public_ugtetmp367 = icmp uge i64 %_public_subtmp366, 0
  %_public_zexttmp368 = zext i1 %_public_ugtetmp367 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp368)
  %_public_lval369 = load i64, i64* %_public_plen
  %_public_subtmp370 = sub i64 %_public_lval369, 2
  %_public_ulttmp371 = icmp ult i64 %_public_subtmp370, 16
  %_public_zexttmp372 = zext i1 %_public_ulttmp371 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp372)
  %_public_lval373 = load i64, i64* %_public_plen
  %_public_subtmp374 = sub i64 %_public_lval373, 2
  %_public_addtmp375 = add i64 %_public_subtmp374, 2
  %_public_subtmp376 = sub i64 %_public_addtmp375, 1
  %_public_ugtetmp377 = icmp uge i64 %_public_subtmp376, 0
  %_public_zexttmp378 = zext i1 %_public_ugtetmp377 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp378)
  %_public_lval379 = load i64, i64* %_public_plen
  %_public_subtmp380 = sub i64 %_public_lval379, 2
  %_public_addtmp381 = add i64 %_public_subtmp380, 2
  %_public_subtmp382 = sub i64 %_public_addtmp381, 1
  %_public_ulttmp383 = icmp ult i64 %_public_subtmp382, 16
  %_public_zexttmp384 = zext i1 %_public_ulttmp383 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp384)
  %_public_lval385 = load i64, i64* %_public_plen
  %_public_subtmp386 = sub i64 %_public_lval385, 2
  %_secret_structgep387 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 5
  %_secret_arrview388 = alloca i8*
  %_secret_source_gep389 = getelementptr inbounds [16 x i8], [16 x i8]* %_secret_structgep387, i64 0, i64 %_public_subtmp386
  store i8* %_secret_source_gep389, i8** %_secret_arrview388
  %_secret_dynarrarg390 = load i8*, i8** %_secret_arrview388
  %_secret_lval391 = load i32, i32* %_secret___v27_inp_len
  %_secret_ucast = trunc i32 %_secret_lval391 to i16
  call void @store16_be(i8* %_secret_dynarrarg390, i16 %_secret_ucast)
  %_public_structgep392 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_public_structgep393 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 1
  call void @_structcopy_SHA_CTX(%SHA_CTX* %_public_structgep392, %SHA_CTX* %_public_structgep393)
  %_public_lval394 = load i64, i64* %_public_plen
  %_public_trunctmp = trunc i64 %_public_lval394 to i32
  store i32 %_public_trunctmp, i32* %_public___v29___v28_len
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_public_structgep395 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep396 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep395, i32 0, i32 0
  %_secret_ptr397 = getelementptr inbounds [5 x i32], [5 x i32]* %_secret_structgep396, i8 0, i8 0
  %_public_lval398 = load i32, i32* %_public___v29___v28_len
  %_public_icast399 = zext i32 %_public_lval398 to i64
  %_public_addtmp400 = add i64 0, %_public_icast399
  %_public_truncbinop401 = trunc i64 %_public_addtmp400 to i8
  %_public_sgttmp = icmp sgt i8 %_public_truncbinop401, 0
  %_public_zexttmp402 = zext i1 %_public_sgttmp to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp402)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_public_lval403 = load i32, i32* %_public___v29___v28_len
  %_public_icast404 = zext i32 %_public_lval403 to i64
  %_public_addtmp405 = add i64 0, %_public_icast404
  %_public_truncbinop406 = trunc i64 %_public_addtmp405 to i8
  %_public_subtmp407 = sub i8 %_public_truncbinop406, 1
  %_public_lhssext408 = sext i8 %_public_subtmp407 to i64
  %_public_sgtetmp = icmp sge i64 %_public_lhssext408, 0
  %_public_zexttmp409 = zext i1 %_public_sgtetmp to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp409)
  %_public_lval410 = load i32, i32* %_public___v29___v28_len
  %_public_icast411 = zext i32 %_public_lval410 to i64
  %_public_addtmp412 = add i64 0, %_public_icast411
  %_public_truncbinop413 = trunc i64 %_public_addtmp412 to i8
  %_public_subtmp414 = sub i8 %_public_truncbinop413, 1
  %_public_lhssext415 = sext i8 %_public_subtmp414 to i64
  %_public_slttmp = icmp slt i64 %_public_lhssext415, 16
  %_public_zexttmp416 = zext i1 %_public_slttmp to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp416)
  %_secret_structgep417 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 5
  %_secret_arrview418 = alloca i8*
  %_secret_source_gep419 = getelementptr inbounds [16 x i8], [16 x i8]* %_secret_structgep417, i8 0, i8 0
  store i8* %_secret_source_gep419, i8** %_secret_arrview418
  %_public_lval420 = load i32, i32* %_public___v29___v28_len
  %_public_icast421 = zext i32 %_public_lval420 to i64
  %_public_addtmp422 = add i64 0, %_public_icast421
  %_public_truncbinop423 = trunc i64 %_public_addtmp422 to i8
  %_public_sgttmp424 = icmp sgt i8 %_public_truncbinop423, 0
  %_public_zexttmp425 = zext i1 %_public_sgttmp424 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp425)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_public_lval426 = load i32, i32* %_public___v29___v28_len
  %_public_icast427 = zext i32 %_public_lval426 to i64
  %_public_addtmp428 = add i64 0, %_public_icast427
  %_public_truncbinop429 = trunc i64 %_public_addtmp428 to i8
  %_public_subtmp430 = sub i8 %_public_truncbinop429, 1
  %_public_lhssext431 = sext i8 %_public_subtmp430 to i64
  %_public_sgtetmp432 = icmp sge i64 %_public_lhssext431, 0
  %_public_zexttmp433 = zext i1 %_public_sgtetmp432 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp433)
  %_public_lval434 = load i32, i32* %_public___v29___v28_len
  %_public_icast435 = zext i32 %_public_lval434 to i64
  %_public_addtmp436 = add i64 0, %_public_icast435
  %_public_truncbinop437 = trunc i64 %_public_addtmp436 to i8
  %_public_subtmp438 = sub i8 %_public_truncbinop437, 1
  %_public_lhssext439 = sext i8 %_public_subtmp438 to i64
  %_public_slttmp440 = icmp slt i64 %_public_lhssext439, 16
  %_public_zexttmp441 = zext i1 %_public_slttmp440 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp441)
  %_secret_structgep442 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 5
  %_secret_arrview443 = alloca i8*
  %_secret_source_gep444 = getelementptr inbounds [16 x i8], [16 x i8]* %_secret_structgep442, i8 0, i8 0
  store i8* %_secret_source_gep444, i8** %_secret_arrview443
  %_secret_dynarrarg445 = load i8*, i8** %_secret_arrview443
  %_public_lval446 = load i64, i64* %_public_plen
  call void @_sha1_update(i32* %_secret_ptr397, i8* %_secret_dynarrarg445, i64 %_public_lval446)
  %_public_lval447 = load i32, i32* %_public___v17__len
  %_public_lval448 = load i32, i32* %_public___v11_SHA_DIGEST_LENGTH
  %_public_subtmp449 = sub i32 %_public_lval447, %_public_lval448
  store i32 %_public_subtmp449, i32* %_public___v17__len
  %_public_lval450 = load i32, i32* %_public___v17__len
  %_public_lval451 = load i32, i32* %_public___v14_SHA_CBLOCK
  %_public_addtmp452 = add i32 256, %_public_lval451
  %_public_ugtetmp453 = icmp uge i32 %_public_lval450, %_public_addtmp452
  %_public_branchcompare454 = icmp eq i1 %_public_ugtetmp453, true
  br i1 %_public_branchcompare454, label %thenbranch455, label %elsebranch574

thenbranch455:                                    ; preds = %branchmerge98
  %_public_lval456 = load i32, i32* %_public___v17__len
  %_public_lval457 = load i32, i32* %_public___v14_SHA_CBLOCK
  %_public_addtmp458 = add i32 256, %_public_lval457
  %_public_subtmp459 = sub i32 %_public_lval456, %_public_addtmp458
  %_public_lval460 = load i32, i32* %_public___v14_SHA_CBLOCK
  %_public_subtmp461 = sub i32 0, %_public_lval460
  %_public_andtmp = and i32 %_public_subtmp459, %_public_subtmp461
  %_public_lval462 = load i32, i32* %_public___v14_SHA_CBLOCK
  %_public_addtmp463 = add i32 %_public_andtmp, %_public_lval462
  %_public_structgep464 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_public_structgep465 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep464, i32 0, i32 4
  %_public_lval466 = load i32, i32* %_public_structgep465
  %_public_subtmp467 = sub i32 %_public_addtmp463, %_public_lval466
  store i32 %_public_subtmp467, i32* %_public___v30_j
  %_public_lval468 = load i32, i32* %_public___v30_j
  store i32 %_public_lval468, i32* %_public___v32___v31_len
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_public_structgep469 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep470 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep469, i32 0, i32 0
  %_secret_ptr471 = getelementptr inbounds [5 x i32], [5 x i32]* %_secret_structgep470, i8 0, i8 0
  %_public_lval472 = load i32, i32* %_public___v16_outp
  %_public_lval473 = load i32, i32* %_public___v32___v31_len
  %_public_icast474 = zext i32 %_public_lval473 to i64
  %_public_lhssext475 = zext i32 %_public_lval472 to i64
  %_public_addtmp476 = add i64 %_public_lhssext475, %_public_icast474
  %_public_truncbinop477 = trunc i64 %_public_addtmp476 to i32
  %_public_lval478 = load i32, i32* %_public___v16_outp
  %_public_ugttmp479 = icmp ugt i32 %_public_truncbinop477, %_public_lval478
  %_public_zexttmp480 = zext i1 %_public_ugttmp479 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp480)
  %_public_lval481 = load i32, i32* %_public___v16_outp
  %_public_lhssext482 = zext i32 %_public_lval481 to i64
  %_public_ugtetmp483 = icmp uge i64 %_public_lhssext482, 0
  %_public_zexttmp484 = zext i1 %_public_ugtetmp483 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp484)
  %_public_lval485 = load i32, i32* %_public___v16_outp
  %_public_lval486 = load i32, i32* %_public____out_len
  %_public_icast487 = zext i32 %_public_lval486 to i64
  %_public_lhssext488 = zext i32 %_public_lval485 to i64
  %_public_ulttmp489 = icmp ult i64 %_public_lhssext488, %_public_icast487
  %_public_zexttmp490 = zext i1 %_public_ulttmp489 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp490)
  %_public_lval491 = load i32, i32* %_public___v16_outp
  %_public_lval492 = load i32, i32* %_public___v32___v31_len
  %_public_icast493 = zext i32 %_public_lval492 to i64
  %_public_lhssext494 = zext i32 %_public_lval491 to i64
  %_public_addtmp495 = add i64 %_public_lhssext494, %_public_icast493
  %_public_truncbinop496 = trunc i64 %_public_addtmp495 to i32
  %_public_subtmp497 = sub i32 %_public_truncbinop496, 1
  %_public_lhssext498 = zext i32 %_public_subtmp497 to i64
  %_public_ugtetmp499 = icmp uge i64 %_public_lhssext498, 0
  %_public_zexttmp500 = zext i1 %_public_ugtetmp499 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp500)
  %_public_lval501 = load i32, i32* %_public___v16_outp
  %_public_lval502 = load i32, i32* %_public___v32___v31_len
  %_public_icast503 = zext i32 %_public_lval502 to i64
  %_public_lhssext504 = zext i32 %_public_lval501 to i64
  %_public_addtmp505 = add i64 %_public_lhssext504, %_public_icast503
  %_public_truncbinop506 = trunc i64 %_public_addtmp505 to i32
  %_public_subtmp507 = sub i32 %_public_truncbinop506, 1
  %_public_lval508 = load i32, i32* %_public____out_len
  %_public_icast509 = zext i32 %_public_lval508 to i64
  %_public_lhssext510 = zext i32 %_public_subtmp507 to i64
  %_public_ulttmp511 = icmp ult i64 %_public_lhssext510, %_public_icast509
  %_public_zexttmp512 = zext i1 %_public_ulttmp511 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp512)
  %_public_lval513 = load i32, i32* %_public___v16_outp
  %_secret_ldedviewptr514 = load i8*, i8** %_secret_arrarg2
  %_secret_source_gep515 = getelementptr inbounds i8, i8* %_secret_ldedviewptr514, i32 %_public_lval513
  %_secret_arrviewdyn516 = alloca i8*
  store i8* %_secret_source_gep515, i8** %_secret_arrviewdyn516
  %_public_lval517 = load i32, i32* %_public___v16_outp
  %_public_lval518 = load i32, i32* %_public___v32___v31_len
  %_public_icast519 = zext i32 %_public_lval518 to i64
  %_public_lhssext520 = zext i32 %_public_lval517 to i64
  %_public_addtmp521 = add i64 %_public_lhssext520, %_public_icast519
  %_public_truncbinop522 = trunc i64 %_public_addtmp521 to i32
  %_public_lval523 = load i32, i32* %_public___v16_outp
  %_public_ugttmp524 = icmp ugt i32 %_public_truncbinop522, %_public_lval523
  %_public_zexttmp525 = zext i1 %_public_ugttmp524 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp525)
  %_public_lval526 = load i32, i32* %_public___v16_outp
  %_public_lhssext527 = zext i32 %_public_lval526 to i64
  %_public_ugtetmp528 = icmp uge i64 %_public_lhssext527, 0
  %_public_zexttmp529 = zext i1 %_public_ugtetmp528 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp529)
  %_public_lval530 = load i32, i32* %_public___v16_outp
  %_public_lval531 = load i32, i32* %_public____out_len
  %_public_icast532 = zext i32 %_public_lval531 to i64
  %_public_lhssext533 = zext i32 %_public_lval530 to i64
  %_public_ulttmp534 = icmp ult i64 %_public_lhssext533, %_public_icast532
  %_public_zexttmp535 = zext i1 %_public_ulttmp534 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp535)
  %_public_lval536 = load i32, i32* %_public___v16_outp
  %_public_lval537 = load i32, i32* %_public___v32___v31_len
  %_public_icast538 = zext i32 %_public_lval537 to i64
  %_public_lhssext539 = zext i32 %_public_lval536 to i64
  %_public_addtmp540 = add i64 %_public_lhssext539, %_public_icast538
  %_public_truncbinop541 = trunc i64 %_public_addtmp540 to i32
  %_public_subtmp542 = sub i32 %_public_truncbinop541, 1
  %_public_lhssext543 = zext i32 %_public_subtmp542 to i64
  %_public_ugtetmp544 = icmp uge i64 %_public_lhssext543, 0
  %_public_zexttmp545 = zext i1 %_public_ugtetmp544 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp545)
  %_public_lval546 = load i32, i32* %_public___v16_outp
  %_public_lval547 = load i32, i32* %_public___v32___v31_len
  %_public_icast548 = zext i32 %_public_lval547 to i64
  %_public_lhssext549 = zext i32 %_public_lval546 to i64
  %_public_addtmp550 = add i64 %_public_lhssext549, %_public_icast548
  %_public_truncbinop551 = trunc i64 %_public_addtmp550 to i32
  %_public_subtmp552 = sub i32 %_public_truncbinop551, 1
  %_public_lval553 = load i32, i32* %_public____out_len
  %_public_icast554 = zext i32 %_public_lval553 to i64
  %_public_lhssext555 = zext i32 %_public_subtmp552 to i64
  %_public_ulttmp556 = icmp ult i64 %_public_lhssext555, %_public_icast554
  %_public_zexttmp557 = zext i1 %_public_ulttmp556 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp557)
  %_public_lval558 = load i32, i32* %_public___v16_outp
  %_secret_ldedviewptr559 = load i8*, i8** %_secret_arrarg2
  %_secret_source_gep560 = getelementptr inbounds i8, i8* %_secret_ldedviewptr559, i32 %_public_lval558
  %_secret_arrviewdyn561 = alloca i8*
  store i8* %_secret_source_gep560, i8** %_secret_arrviewdyn561
  %_secret_dynarrarg562 = load i8*, i8** %_secret_arrviewdyn561
  %_public_lval563 = load i32, i32* %_public___v30_j
  %_public_zexttmp564 = zext i32 %_public_lval563 to i64
  call void @_sha1_update(i32* %_secret_ptr471, i8* %_secret_dynarrarg562, i64 %_public_zexttmp564)
  %_public_lval565 = load i32, i32* %_public___v16_outp
  %_public_lval566 = load i32, i32* %_public___v30_j
  %_public_addtmp567 = add i32 %_public_lval565, %_public_lval566
  store i32 %_public_addtmp567, i32* %_public___v16_outp
  %_public_lval568 = load i32, i32* %_public___v17__len
  %_public_lval569 = load i32, i32* %_public___v30_j
  %_public_subtmp570 = sub i32 %_public_lval568, %_public_lval569
  store i32 %_public_subtmp570, i32* %_public___v17__len
  %_secret_lval571 = load i32, i32* %_secret___v27_inp_len
  %_public_lval572 = load i32, i32* %_public___v30_j
  %_secret_subtmp573 = sub i32 %_secret_lval571, %_public_lval572
  store i32 %_secret_subtmp573, i32* %_secret___v27_inp_len
  br label %branchmerge575

elsebranch574:                                    ; preds = %branchmerge98
  br label %branchmerge575

branchmerge575:                                   ; preds = %elsebranch574, %thenbranch455
  %_public_structgep576 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep577 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep576, i32 0, i32 1
  %_secret_lval578 = load i32, i32* %_secret_structgep577
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval579 = load i32, i32* %_secret___v27_inp_len
  %_secret_lshift = shl i32 %_secret_lval579, 3
  %_secret_addtmp580 = add i32 %_secret_lval578, %_secret_lshift
  %_secret_calltmp = call i32 @bswap4(i32 %_secret_addtmp580)
  store i32 %_secret_calltmp, i32* %_secret___v33_bitlen
  %_secret___v34_pmac = alloca [20 x i8], align 32
  %_secret_sourcecasted = bitcast [20 x i8]* %_secret___v34_pmac to i8*
  call void @llvm.memset.p0i8.i64(i8* %_secret_sourcecasted, i8 0, i64 20, i32 0, i1 false)
  %_public_structgep581 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_public_structgep582 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep581, i32 0, i32 4
  %_public_lval583 = load i32, i32* %_public_structgep582
  store i32 %_public_lval583, i32* %_public___v35_p_res
  %_public_calltmp = call i32 @__VERIFIER_nondet_unsigned_int()
  store i32 %_public_calltmp, i32* %_public___v36_j
  %_public_lval584 = load i32, i32* %_public___v36_j
  %_public_lval585 = load i32, i32* %_public___v17__len
  %_public_ulttmp586 = icmp ult i32 %_public_lval584, %_public_lval585
  %_public_branchcompare587 = icmp eq i1 %_public_ulttmp586, true
  br i1 %_public_branchcompare587, label %thenbranch588, label %elsebranch866

thenbranch588:                                    ; preds = %branchmerge575
  %_public_lval589 = load i32, i32* %_public___v36_j
  %_public_lval590 = load i32, i32* %_public___v36_j
  %_public_addtmp591 = add i32 %_public_lval590, 1
  %_public_ulttmp592 = icmp ult i32 %_public_lval589, %_public_addtmp591
  %_public_zexttmp593 = zext i1 %_public_ulttmp592 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp593)
  %_public_lval594 = load i32, i32* %_public___v36_j
  %_public_ulttmp595 = icmp ult i32 0, %_public_lval594
  %_public_lval596 = load i32, i32* %_public___v36_j
  %_public_eqtmp = icmp eq i32 0, %_public_lval596
  %_public_lortmp = or i1 %_public_ulttmp595, %_public_eqtmp
  %_public_zexttmp597 = zext i1 %_public_lortmp to i32
  call void @__VERIFIER_assume(i32 %_public_zexttmp597)
  %_public_lval598 = load i32, i32* %_public___v35_p_res
  %_public_lhssext599 = zext i32 %_public_lval598 to i64
  %_public_ugtetmp600 = icmp uge i64 %_public_lhssext599, 0
  %_public_zexttmp601 = zext i1 %_public_ugtetmp600 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp601)
  %_public_lval602 = load i32, i32* %_public___v35_p_res
  %_public_lhssext603 = zext i32 %_public_lval602 to i64
  %_public_ulttmp604 = icmp ult i64 %_public_lhssext603, 64
  %_public_zexttmp605 = zext i1 %_public_ulttmp604 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp605)
  %_public_structgep606 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep607 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep606, i32 0, i32 3
  %_public_lval608 = load i32, i32* %_public___v35_p_res
  %_secret_ptr609 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep607, i32 0, i32 %_public_lval608
  store i8 0, i8* %_secret___m4
  %_public_lval610 = load i32, i32* %_public___v36_j
  %_secret_lval611 = load i32, i32* %_secret___v27_inp_len
  %_secret_ulttmp = icmp ult i32 %_public_lval610, %_secret_lval611
  store i1 %_secret_ulttmp, i1* %_secret___m5
  %_secret_lval612 = load i1, i1* %_secret___m5
  %_secret_landtmp613 = and i1 true, %_secret_lval612
  %_secret_lval614 = load i1, i1* %_secret___rnset
  %_secret_landtmp615 = and i1 %_secret_landtmp613, %_secret_lval614
  %_secret_condtmp616 = icmp ne i1 %_secret_landtmp615, false
  %_public_lval617 = load i32, i32* %_public___v16_outp
  %_public_lval618 = load i32, i32* %_public___v36_j
  %_public_addtmp619 = add i32 %_public_lval617, %_public_lval618
  %_public_lhssext620 = zext i32 %_public_addtmp619 to i64
  %_public_ugtetmp621 = icmp uge i64 %_public_lhssext620, 0
  %_public_zexttmp622 = zext i1 %_public_ugtetmp621 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp622)
  %_public_lval623 = load i32, i32* %_public___v16_outp
  %_public_lval624 = load i32, i32* %_public___v36_j
  %_public_addtmp625 = add i32 %_public_lval623, %_public_lval624
  %_public_lval626 = load i32, i32* %_public____out_len
  %_public_icast627 = zext i32 %_public_lval626 to i64
  %_public_lhssext628 = zext i32 %_public_addtmp625 to i64
  %_public_ulttmp629 = icmp ult i64 %_public_lhssext628, %_public_icast627
  %_public_zexttmp630 = zext i1 %_public_ulttmp629 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp630)
  %_public_lval631 = load i32, i32* %_public___v16_outp
  %_public_lval632 = load i32, i32* %_public___v36_j
  %_public_addtmp633 = add i32 %_public_lval631, %_public_lval632
  %_secret_dyn634 = load i8*, i8** %_secret_arrarg2
  %_secret_ptr635 = getelementptr inbounds i8, i8* %_secret_dyn634, i32 %_public_addtmp633
  %_secret_lval636 = load i8, i8* %_secret_ptr635
  %_secret_lval637 = load i8, i8* %_secret___m4
  %_secret_selecttmp638 = call i8 @select.cmov.asm.i8(i1 %_secret_condtmp616, i8 %_secret_lval636, i8 %_secret_lval637)
  store i8 %_secret_selecttmp638, i8* %_secret___m4
  %_secret_lval639 = load i1, i1* %_secret___m5
  %_secret_lnottmp640 = xor i1 %_secret_lval639, true
  store i1 %_secret_lnottmp640, i1* %_secret___m5
  %_secret_lval641 = load i1, i1* %_secret___m5
  %_secret_landtmp642 = and i1 true, %_secret_lval641
  %_secret_lval643 = load i1, i1* %_secret___rnset
  %_secret_landtmp644 = and i1 %_secret_landtmp642, %_secret_lval643
  %_secret_condtmp645 = icmp ne i1 %_secret_landtmp644, false
  store i16 0, i16* %_secret___m6
  %_public_lval646 = load i32, i32* %_public___v36_j
  %_secret_lval647 = load i32, i32* %_secret___v27_inp_len
  %_secret_eqtmp = icmp eq i32 %_public_lval646, %_secret_lval647
  store i1 %_secret_eqtmp, i1* %_secret___m7
  %_secret_lval648 = load i1, i1* %_secret___m7
  %_secret_landtmp649 = and i1 true, %_secret_lval648
  %_secret_lval650 = load i1, i1* %_secret___m5
  %_secret_landtmp651 = and i1 %_secret_landtmp649, %_secret_lval650
  %_secret_lval652 = load i1, i1* %_secret___rnset
  %_secret_landtmp653 = and i1 %_secret_landtmp651, %_secret_lval652
  %_secret_condtmp654 = icmp ne i1 %_secret_landtmp653, false
  %_secret_lval655 = load i16, i16* %_secret___m6
  %_secret_selecttmp656 = call i16 @select.cmov.asm.i16(i1 %_secret_condtmp654, i16 128, i16 %_secret_lval655)
  store i16 %_secret_selecttmp656, i16* %_secret___m6
  %_secret_lval657 = load i1, i1* %_secret___m7
  %_secret_lnottmp658 = xor i1 %_secret_lval657, true
  store i1 %_secret_lnottmp658, i1* %_secret___m7
  %_secret_lval659 = load i1, i1* %_secret___m7
  %_secret_landtmp660 = and i1 true, %_secret_lval659
  %_secret_lval661 = load i1, i1* %_secret___m5
  %_secret_landtmp662 = and i1 %_secret_landtmp660, %_secret_lval661
  %_secret_lval663 = load i1, i1* %_secret___rnset
  %_secret_landtmp664 = and i1 %_secret_landtmp662, %_secret_lval663
  %_secret_condtmp665 = icmp ne i1 %_secret_landtmp664, false
  %_secret_lval666 = load i16, i16* %_secret___m6
  %_secret_selecttmp667 = call i16 @select.cmov.asm.i16(i1 %_secret_condtmp665, i16 0, i16 %_secret_lval666)
  store i16 %_secret_selecttmp667, i16* %_secret___m6
  %_secret___m6668 = load i16, i16* %_secret___m6
  %_secret_trunctmp = trunc i16 %_secret___m6668 to i8
  %_secret_lval669 = load i8, i8* %_secret___m4
  %_secret_selecttmp670 = call i8 @select.cmov.asm.i8(i1 %_secret_condtmp645, i8 %_secret_trunctmp, i8 %_secret_lval669)
  store i8 %_secret_selecttmp670, i8* %_secret___m4
  %_secret___m4671 = load i8, i8* %_secret___m4
  store i8 %_secret___m4671, i8* %_secret_ptr609
  %_public_lval672 = load i32, i32* %_public___v35_p_res
  %_public_addtmp673 = add i32 %_public_lval672, 1
  store i32 %_public_addtmp673, i32* %_public___v35_p_res
  %_public_lval674 = load i32, i32* %_public___v35_p_res
  %_public_lval675 = load i32, i32* %_public___v14_SHA_CBLOCK
  %_public_eqtmp676 = icmp eq i32 %_public_lval674, %_public_lval675
  %_public_branchcompare677 = icmp eq i1 %_public_eqtmp676, true
  br i1 %_public_branchcompare677, label %thenbranch678, label %elsebranch864

thenbranch678:                                    ; preds = %thenbranch588
  %_secret_lval679 = load i32, i32* %_secret___v27_inp_len
  %_secret_addtmp680 = add i32 %_secret_lval679, 7
  %_public_lval681 = load i32, i32* %_public___v36_j
  %_secret_ulttmp682 = icmp ult i32 %_secret_addtmp680, %_public_lval681
  store i1 %_secret_ulttmp682, i1* %_secret___v37_m1
  %_public_lval683 = load i32, i32* %_public___v13_SHA_LBLOCK
  %_public_subtmp684 = sub i32 %_public_lval683, 1
  %_public_multmp685 = mul i32 4, %_public_subtmp684
  %_public_lhssext686 = zext i32 %_public_multmp685 to i64
  %_public_addtmp687 = add i64 %_public_lhssext686, 4
  %_public_truncbinop688 = trunc i64 %_public_addtmp687 to i32
  %_public_lval689 = load i32, i32* %_public___v13_SHA_LBLOCK
  %_public_subtmp690 = sub i32 %_public_lval689, 1
  %_public_multmp691 = mul i32 4, %_public_subtmp690
  %_public_ugttmp692 = icmp ugt i32 %_public_truncbinop688, %_public_multmp691
  %_public_zexttmp693 = zext i1 %_public_ugttmp692 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp693)
  %_public_lval694 = load i32, i32* %_public___v13_SHA_LBLOCK
  %_public_subtmp695 = sub i32 %_public_lval694, 1
  %_public_multmp696 = mul i32 4, %_public_subtmp695
  %_public_lhssext697 = zext i32 %_public_multmp696 to i64
  %_public_ugtetmp698 = icmp uge i64 %_public_lhssext697, 0
  %_public_zexttmp699 = zext i1 %_public_ugtetmp698 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp699)
  %_public_lval700 = load i32, i32* %_public___v13_SHA_LBLOCK
  %_public_subtmp701 = sub i32 %_public_lval700, 1
  %_public_multmp702 = mul i32 4, %_public_subtmp701
  %_public_lhssext703 = zext i32 %_public_multmp702 to i64
  %_public_ulttmp704 = icmp ult i64 %_public_lhssext703, 64
  %_public_zexttmp705 = zext i1 %_public_ulttmp704 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp705)
  %_public_lval706 = load i32, i32* %_public___v13_SHA_LBLOCK
  %_public_subtmp707 = sub i32 %_public_lval706, 1
  %_public_multmp708 = mul i32 4, %_public_subtmp707
  %_public_lhssext709 = zext i32 %_public_multmp708 to i64
  %_public_addtmp710 = add i64 %_public_lhssext709, 4
  %_public_truncbinop711 = trunc i64 %_public_addtmp710 to i32
  %_public_subtmp712 = sub i32 %_public_truncbinop711, 1
  %_public_lhssext713 = zext i32 %_public_subtmp712 to i64
  %_public_ugtetmp714 = icmp uge i64 %_public_lhssext713, 0
  %_public_zexttmp715 = zext i1 %_public_ugtetmp714 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp715)
  %_public_lval716 = load i32, i32* %_public___v13_SHA_LBLOCK
  %_public_subtmp717 = sub i32 %_public_lval716, 1
  %_public_multmp718 = mul i32 4, %_public_subtmp717
  %_public_lhssext719 = zext i32 %_public_multmp718 to i64
  %_public_addtmp720 = add i64 %_public_lhssext719, 4
  %_public_truncbinop721 = trunc i64 %_public_addtmp720 to i32
  %_public_subtmp722 = sub i32 %_public_truncbinop721, 1
  %_public_lhssext723 = zext i32 %_public_subtmp722 to i64
  %_public_ulttmp724 = icmp ult i64 %_public_lhssext723, 64
  %_public_zexttmp725 = zext i1 %_public_ulttmp724 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp725)
  %_public_lval726 = load i32, i32* %_public___v13_SHA_LBLOCK
  %_public_subtmp727 = sub i32 %_public_lval726, 1
  %_public_multmp728 = mul i32 4, %_public_subtmp727
  %_public_structgep729 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep730 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep729, i32 0, i32 3
  %_secret_arrview731 = alloca i8*
  %_secret_source_gep732 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep730, i32 0, i32 %_public_multmp728
  store i8* %_secret_source_gep732, i8** %_secret_arrview731
  %_public_lval733 = load i32, i32* %_public___v13_SHA_LBLOCK
  %_public_subtmp734 = sub i32 %_public_lval733, 1
  %_public_multmp735 = mul i32 4, %_public_subtmp734
  %_public_lhssext736 = zext i32 %_public_multmp735 to i64
  %_public_addtmp737 = add i64 %_public_lhssext736, 4
  %_public_truncbinop738 = trunc i64 %_public_addtmp737 to i32
  %_public_lval739 = load i32, i32* %_public___v13_SHA_LBLOCK
  %_public_subtmp740 = sub i32 %_public_lval739, 1
  %_public_multmp741 = mul i32 4, %_public_subtmp740
  %_public_ugttmp742 = icmp ugt i32 %_public_truncbinop738, %_public_multmp741
  %_public_zexttmp743 = zext i1 %_public_ugttmp742 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp743)
  %_public_lval744 = load i32, i32* %_public___v13_SHA_LBLOCK
  %_public_subtmp745 = sub i32 %_public_lval744, 1
  %_public_multmp746 = mul i32 4, %_public_subtmp745
  %_public_lhssext747 = zext i32 %_public_multmp746 to i64
  %_public_ugtetmp748 = icmp uge i64 %_public_lhssext747, 0
  %_public_zexttmp749 = zext i1 %_public_ugtetmp748 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp749)
  %_public_lval750 = load i32, i32* %_public___v13_SHA_LBLOCK
  %_public_subtmp751 = sub i32 %_public_lval750, 1
  %_public_multmp752 = mul i32 4, %_public_subtmp751
  %_public_lhssext753 = zext i32 %_public_multmp752 to i64
  %_public_ulttmp754 = icmp ult i64 %_public_lhssext753, 64
  %_public_zexttmp755 = zext i1 %_public_ulttmp754 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp755)
  %_public_lval756 = load i32, i32* %_public___v13_SHA_LBLOCK
  %_public_subtmp757 = sub i32 %_public_lval756, 1
  %_public_multmp758 = mul i32 4, %_public_subtmp757
  %_public_lhssext759 = zext i32 %_public_multmp758 to i64
  %_public_addtmp760 = add i64 %_public_lhssext759, 4
  %_public_truncbinop761 = trunc i64 %_public_addtmp760 to i32
  %_public_subtmp762 = sub i32 %_public_truncbinop761, 1
  %_public_lhssext763 = zext i32 %_public_subtmp762 to i64
  %_public_ugtetmp764 = icmp uge i64 %_public_lhssext763, 0
  %_public_zexttmp765 = zext i1 %_public_ugtetmp764 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp765)
  %_public_lval766 = load i32, i32* %_public___v13_SHA_LBLOCK
  %_public_subtmp767 = sub i32 %_public_lval766, 1
  %_public_multmp768 = mul i32 4, %_public_subtmp767
  %_public_lhssext769 = zext i32 %_public_multmp768 to i64
  %_public_addtmp770 = add i64 %_public_lhssext769, 4
  %_public_truncbinop771 = trunc i64 %_public_addtmp770 to i32
  %_public_subtmp772 = sub i32 %_public_truncbinop771, 1
  %_public_lhssext773 = zext i32 %_public_subtmp772 to i64
  %_public_ulttmp774 = icmp ult i64 %_public_lhssext773, 64
  %_public_zexttmp775 = zext i1 %_public_ulttmp774 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp775)
  %_public_lval776 = load i32, i32* %_public___v13_SHA_LBLOCK
  %_public_subtmp777 = sub i32 %_public_lval776, 1
  %_public_multmp778 = mul i32 4, %_public_subtmp777
  %_public_structgep779 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep780 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep779, i32 0, i32 3
  %_secret_arrview781 = alloca i8*
  %_secret_source_gep782 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep780, i32 0, i32 %_public_multmp778
  store i8* %_secret_source_gep782, i8** %_secret_arrview781
  %_secret_dynarrarg783 = load i8*, i8** %_secret_arrview781
  %_secret_lval784 = load i32, i32* %_secret___v33_bitlen
  %_secret_lval785 = load i1, i1* %_secret___v37_m1
  call void @cond_store(i8* %_secret_dynarrarg783, i32 %_secret_lval784, i1 %_secret_lval785)
  %_public_structgep786 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_public_structgep787 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep788 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep787, i32 0, i32 3
  %_public_structgep789 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep790 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep789, i32 0, i32 3
  %_secret_arrtoptr791 = bitcast [64 x i8]* %_secret_structgep790 to i8*
  call void @sha1_block_data_order(%SHA_CTX* %_public_structgep786, i8* %_secret_arrtoptr791, i32 1)
  store i1 false, i1* %_secret___m8
  %_secret_lval792 = load i1, i1* %_secret___v37_m1
  store i1 %_secret_lval792, i1* %_secret___m9
  %_secret_lval793 = load i1, i1* %_secret___m9
  %_secret_landtmp794 = and i1 true, %_secret_lval793
  %_secret_lval795 = load i1, i1* %_secret___rnset
  %_secret_landtmp796 = and i1 %_secret_landtmp794, %_secret_lval795
  %_secret_condtmp797 = icmp ne i1 %_secret_landtmp796, false
  %_public_lval798 = load i32, i32* %_public___v36_j
  %_secret_lval799 = load i32, i32* %_secret___v27_inp_len
  %_secret_addtmp800 = add i32 %_secret_lval799, 72
  %_secret_ulttmp801 = icmp ult i32 %_public_lval798, %_secret_addtmp800
  %_secret_lval802 = load i1, i1* %_secret___m8
  %_secret_selecttmp803 = call i1 @select.cmov.asm.i1(i1 %_secret_condtmp797, i1 %_secret_ulttmp801, i1 %_secret_lval802)
  store i1 %_secret_selecttmp803, i1* %_secret___m8
  %_secret_lval804 = load i1, i1* %_secret___m9
  %_secret_lnottmp805 = xor i1 %_secret_lval804, true
  store i1 %_secret_lnottmp805, i1* %_secret___m9
  %_secret_lval806 = load i1, i1* %_secret___m9
  %_secret_landtmp807 = and i1 true, %_secret_lval806
  %_secret_lval808 = load i1, i1* %_secret___rnset
  %_secret_landtmp809 = and i1 %_secret_landtmp807, %_secret_lval808
  %_secret_condtmp810 = icmp ne i1 %_secret_landtmp809, false
  %_secret_lval811 = load i1, i1* %_secret___m8
  %_secret_selecttmp812 = call i1 @select.cmov.asm.i1(i1 %_secret_condtmp810, i1 false, i1 %_secret_lval811)
  store i1 %_secret_selecttmp812, i1* %_secret___m8
  %_secret___m8813 = load i1, i1* %_secret___m8
  store i1 %_secret___m8813, i1* %_secret___v38_m2
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview814 = alloca i8*
  %_secret_source_gep815 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i8 0, i8 0
  store i8* %_secret_source_gep815, i8** %_secret_arrview814
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview816 = alloca i8*
  %_secret_source_gep817 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i8 0, i8 0
  store i8* %_secret_source_gep817, i8** %_secret_arrview816
  %_secret_dynarrarg818 = load i8*, i8** %_secret_arrview816
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_public_structgep819 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep820 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep819, i32 0, i32 0
  %_secret_ptr821 = getelementptr inbounds [5 x i32], [5 x i32]* %_secret_structgep820, i8 0, i8 0
  %_secret_lval822 = load i32, i32* %_secret_ptr821
  %_secret_lval823 = load i1, i1* %_secret___v38_m2
  call void @cond_store(i8* %_secret_dynarrarg818, i32 %_secret_lval822, i1 %_secret_lval823)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview824 = alloca i8*
  %_secret_source_gep825 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i8 0, i8 4
  store i8* %_secret_source_gep825, i8** %_secret_arrview824
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview826 = alloca i8*
  %_secret_source_gep827 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i8 0, i8 4
  store i8* %_secret_source_gep827, i8** %_secret_arrview826
  %_secret_dynarrarg828 = load i8*, i8** %_secret_arrview826
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_public_structgep829 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep830 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep829, i32 0, i32 0
  %_secret_ptr831 = getelementptr inbounds [5 x i32], [5 x i32]* %_secret_structgep830, i8 0, i8 1
  %_secret_lval832 = load i32, i32* %_secret_ptr831
  %_secret_lval833 = load i1, i1* %_secret___v38_m2
  call void @cond_store(i8* %_secret_dynarrarg828, i32 %_secret_lval832, i1 %_secret_lval833)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview834 = alloca i8*
  %_secret_source_gep835 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i8 0, i8 8
  store i8* %_secret_source_gep835, i8** %_secret_arrview834
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview836 = alloca i8*
  %_secret_source_gep837 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i8 0, i8 8
  store i8* %_secret_source_gep837, i8** %_secret_arrview836
  %_secret_dynarrarg838 = load i8*, i8** %_secret_arrview836
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_public_structgep839 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep840 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep839, i32 0, i32 0
  %_secret_ptr841 = getelementptr inbounds [5 x i32], [5 x i32]* %_secret_structgep840, i8 0, i8 2
  %_secret_lval842 = load i32, i32* %_secret_ptr841
  %_secret_lval843 = load i1, i1* %_secret___v38_m2
  call void @cond_store(i8* %_secret_dynarrarg838, i32 %_secret_lval842, i1 %_secret_lval843)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview844 = alloca i8*
  %_secret_source_gep845 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i8 0, i8 12
  store i8* %_secret_source_gep845, i8** %_secret_arrview844
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview846 = alloca i8*
  %_secret_source_gep847 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i8 0, i8 12
  store i8* %_secret_source_gep847, i8** %_secret_arrview846
  %_secret_dynarrarg848 = load i8*, i8** %_secret_arrview846
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_public_structgep849 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep850 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep849, i32 0, i32 0
  %_secret_ptr851 = getelementptr inbounds [5 x i32], [5 x i32]* %_secret_structgep850, i8 0, i8 3
  %_secret_lval852 = load i32, i32* %_secret_ptr851
  %_secret_lval853 = load i1, i1* %_secret___v38_m2
  call void @cond_store(i8* %_secret_dynarrarg848, i32 %_secret_lval852, i1 %_secret_lval853)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview854 = alloca i8*
  %_secret_source_gep855 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i8 0, i8 16
  store i8* %_secret_source_gep855, i8** %_secret_arrview854
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview856 = alloca i8*
  %_secret_source_gep857 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i8 0, i8 16
  store i8* %_secret_source_gep857, i8** %_secret_arrview856
  %_secret_dynarrarg858 = load i8*, i8** %_secret_arrview856
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_public_structgep859 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep860 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep859, i32 0, i32 0
  %_secret_ptr861 = getelementptr inbounds [5 x i32], [5 x i32]* %_secret_structgep860, i8 0, i8 4
  %_secret_lval862 = load i32, i32* %_secret_ptr861
  %_secret_lval863 = load i1, i1* %_secret___v38_m2
  call void @cond_store(i8* %_secret_dynarrarg858, i32 %_secret_lval862, i1 %_secret_lval863)
  store i32 0, i32* %_public___v35_p_res
  br label %branchmerge865

elsebranch864:                                    ; preds = %thenbranch588
  br label %branchmerge865

branchmerge865:                                   ; preds = %elsebranch864, %thenbranch678
  br label %branchmerge867

elsebranch866:                                    ; preds = %branchmerge575
  br label %branchmerge867

branchmerge867:                                   ; preds = %elsebranch866, %branchmerge865
  %_public_lval868 = load i32, i32* %_public___v17__len
  store i32 %_public_lval868, i32* %_public___v39_j
  %_public_calltmp869 = call i32 @__VERIFIER_nondet_unsigned_int()
  store i32 %_public_calltmp869, i32* %_public___v40_i
  %_public_lval870 = load i32, i32* %_public___v40_i
  %_public_lval871 = load i32, i32* %_public___v14_SHA_CBLOCK
  %_public_ulttmp872 = icmp ult i32 %_public_lval870, %_public_lval871
  %_public_branchcompare873 = icmp eq i1 %_public_ulttmp872, true
  br i1 %_public_branchcompare873, label %thenbranch874, label %elsebranch902

thenbranch874:                                    ; preds = %branchmerge867
  %_public_lval875 = load i32, i32* %_public___v40_i
  %_public_lval876 = load i32, i32* %_public___v40_i
  %_public_addtmp877 = add i32 %_public_lval876, 1
  %_public_ulttmp878 = icmp ult i32 %_public_lval875, %_public_addtmp877
  %_public_zexttmp879 = zext i1 %_public_ulttmp878 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp879)
  %_public_lval880 = load i32, i32* %_public___v35_p_res
  %_public_lval881 = load i32, i32* %_public___v40_i
  %_public_ulttmp882 = icmp ult i32 %_public_lval880, %_public_lval881
  %_public_lval883 = load i32, i32* %_public___v35_p_res
  %_public_lval884 = load i32, i32* %_public___v40_i
  %_public_eqtmp885 = icmp eq i32 %_public_lval883, %_public_lval884
  %_public_lortmp886 = or i1 %_public_ulttmp882, %_public_eqtmp885
  %_public_zexttmp887 = zext i1 %_public_lortmp886 to i32
  call void @__VERIFIER_assume(i32 %_public_zexttmp887)
  %_public_lval888 = load i32, i32* %_public___v40_i
  %_public_lhssext889 = zext i32 %_public_lval888 to i64
  %_public_ugtetmp890 = icmp uge i64 %_public_lhssext889, 0
  %_public_zexttmp891 = zext i1 %_public_ugtetmp890 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp891)
  %_public_lval892 = load i32, i32* %_public___v40_i
  %_public_lhssext893 = zext i32 %_public_lval892 to i64
  %_public_ulttmp894 = icmp ult i64 %_public_lhssext893, 64
  %_public_zexttmp895 = zext i1 %_public_ulttmp894 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp895)
  %_public_structgep896 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep897 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep896, i32 0, i32 3
  %_public_lval898 = load i32, i32* %_public___v40_i
  %_secret_ptr899 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep897, i32 0, i32 %_public_lval898
  store i8 0, i8* %_secret_ptr899
  %_public_lval900 = load i32, i32* %_public___v39_j
  %_public_addtmp901 = add i32 %_public_lval900, 1
  store i32 %_public_addtmp901, i32* %_public___v39_j
  br label %branchmerge903

elsebranch902:                                    ; preds = %branchmerge867
  br label %branchmerge903

branchmerge903:                                   ; preds = %elsebranch902, %thenbranch874
  %_public_lval904 = load i32, i32* %_public___v35_p_res
  %_public_lval905 = load i32, i32* %_public___v14_SHA_CBLOCK
  %_public_subtmp906 = sub i32 %_public_lval905, 8
  %_public_ugttmp907 = icmp ugt i32 %_public_lval904, %_public_subtmp906
  %_public_branchcompare908 = icmp eq i1 %_public_ugttmp907, true
  br i1 %_public_branchcompare908, label %thenbranch909, label %elsebranch1102

thenbranch909:                                    ; preds = %branchmerge903
  %_secret_lval910 = load i32, i32* %_secret___v27_inp_len
  %_secret_addtmp911 = add i32 %_secret_lval910, 8
  %_public_lval912 = load i32, i32* %_public___v39_j
  %_secret_ulttmp913 = icmp ult i32 %_secret_addtmp911, %_public_lval912
  store i1 %_secret_ulttmp913, i1* %_secret___v41_m1
  %_public_lval914 = load i32, i32* %_public___v13_SHA_LBLOCK
  %_public_subtmp915 = sub i32 %_public_lval914, 1
  %_public_multmp916 = mul i32 4, %_public_subtmp915
  %_public_lhssext917 = zext i32 %_public_multmp916 to i64
  %_public_addtmp918 = add i64 %_public_lhssext917, 4
  %_public_truncbinop919 = trunc i64 %_public_addtmp918 to i32
  %_public_lval920 = load i32, i32* %_public___v13_SHA_LBLOCK
  %_public_subtmp921 = sub i32 %_public_lval920, 1
  %_public_multmp922 = mul i32 4, %_public_subtmp921
  %_public_ugttmp923 = icmp ugt i32 %_public_truncbinop919, %_public_multmp922
  %_public_zexttmp924 = zext i1 %_public_ugttmp923 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp924)
  %_public_lval925 = load i32, i32* %_public___v13_SHA_LBLOCK
  %_public_subtmp926 = sub i32 %_public_lval925, 1
  %_public_multmp927 = mul i32 4, %_public_subtmp926
  %_public_lhssext928 = zext i32 %_public_multmp927 to i64
  %_public_ugtetmp929 = icmp uge i64 %_public_lhssext928, 0
  %_public_zexttmp930 = zext i1 %_public_ugtetmp929 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp930)
  %_public_lval931 = load i32, i32* %_public___v13_SHA_LBLOCK
  %_public_subtmp932 = sub i32 %_public_lval931, 1
  %_public_multmp933 = mul i32 4, %_public_subtmp932
  %_public_lhssext934 = zext i32 %_public_multmp933 to i64
  %_public_ulttmp935 = icmp ult i64 %_public_lhssext934, 64
  %_public_zexttmp936 = zext i1 %_public_ulttmp935 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp936)
  %_public_lval937 = load i32, i32* %_public___v13_SHA_LBLOCK
  %_public_subtmp938 = sub i32 %_public_lval937, 1
  %_public_multmp939 = mul i32 4, %_public_subtmp938
  %_public_lhssext940 = zext i32 %_public_multmp939 to i64
  %_public_addtmp941 = add i64 %_public_lhssext940, 4
  %_public_truncbinop942 = trunc i64 %_public_addtmp941 to i32
  %_public_subtmp943 = sub i32 %_public_truncbinop942, 1
  %_public_lhssext944 = zext i32 %_public_subtmp943 to i64
  %_public_ugtetmp945 = icmp uge i64 %_public_lhssext944, 0
  %_public_zexttmp946 = zext i1 %_public_ugtetmp945 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp946)
  %_public_lval947 = load i32, i32* %_public___v13_SHA_LBLOCK
  %_public_subtmp948 = sub i32 %_public_lval947, 1
  %_public_multmp949 = mul i32 4, %_public_subtmp948
  %_public_lhssext950 = zext i32 %_public_multmp949 to i64
  %_public_addtmp951 = add i64 %_public_lhssext950, 4
  %_public_truncbinop952 = trunc i64 %_public_addtmp951 to i32
  %_public_subtmp953 = sub i32 %_public_truncbinop952, 1
  %_public_lhssext954 = zext i32 %_public_subtmp953 to i64
  %_public_ulttmp955 = icmp ult i64 %_public_lhssext954, 64
  %_public_zexttmp956 = zext i1 %_public_ulttmp955 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp956)
  %_public_lval957 = load i32, i32* %_public___v13_SHA_LBLOCK
  %_public_subtmp958 = sub i32 %_public_lval957, 1
  %_public_multmp959 = mul i32 4, %_public_subtmp958
  %_public_structgep960 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep961 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep960, i32 0, i32 3
  %_secret_arrview962 = alloca i8*
  %_secret_source_gep963 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep961, i32 0, i32 %_public_multmp959
  store i8* %_secret_source_gep963, i8** %_secret_arrview962
  %_public_lval964 = load i32, i32* %_public___v13_SHA_LBLOCK
  %_public_subtmp965 = sub i32 %_public_lval964, 1
  %_public_multmp966 = mul i32 4, %_public_subtmp965
  %_public_lhssext967 = zext i32 %_public_multmp966 to i64
  %_public_addtmp968 = add i64 %_public_lhssext967, 4
  %_public_truncbinop969 = trunc i64 %_public_addtmp968 to i32
  %_public_lval970 = load i32, i32* %_public___v13_SHA_LBLOCK
  %_public_subtmp971 = sub i32 %_public_lval970, 1
  %_public_multmp972 = mul i32 4, %_public_subtmp971
  %_public_ugttmp973 = icmp ugt i32 %_public_truncbinop969, %_public_multmp972
  %_public_zexttmp974 = zext i1 %_public_ugttmp973 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp974)
  %_public_lval975 = load i32, i32* %_public___v13_SHA_LBLOCK
  %_public_subtmp976 = sub i32 %_public_lval975, 1
  %_public_multmp977 = mul i32 4, %_public_subtmp976
  %_public_lhssext978 = zext i32 %_public_multmp977 to i64
  %_public_ugtetmp979 = icmp uge i64 %_public_lhssext978, 0
  %_public_zexttmp980 = zext i1 %_public_ugtetmp979 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp980)
  %_public_lval981 = load i32, i32* %_public___v13_SHA_LBLOCK
  %_public_subtmp982 = sub i32 %_public_lval981, 1
  %_public_multmp983 = mul i32 4, %_public_subtmp982
  %_public_lhssext984 = zext i32 %_public_multmp983 to i64
  %_public_ulttmp985 = icmp ult i64 %_public_lhssext984, 64
  %_public_zexttmp986 = zext i1 %_public_ulttmp985 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp986)
  %_public_lval987 = load i32, i32* %_public___v13_SHA_LBLOCK
  %_public_subtmp988 = sub i32 %_public_lval987, 1
  %_public_multmp989 = mul i32 4, %_public_subtmp988
  %_public_lhssext990 = zext i32 %_public_multmp989 to i64
  %_public_addtmp991 = add i64 %_public_lhssext990, 4
  %_public_truncbinop992 = trunc i64 %_public_addtmp991 to i32
  %_public_subtmp993 = sub i32 %_public_truncbinop992, 1
  %_public_lhssext994 = zext i32 %_public_subtmp993 to i64
  %_public_ugtetmp995 = icmp uge i64 %_public_lhssext994, 0
  %_public_zexttmp996 = zext i1 %_public_ugtetmp995 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp996)
  %_public_lval997 = load i32, i32* %_public___v13_SHA_LBLOCK
  %_public_subtmp998 = sub i32 %_public_lval997, 1
  %_public_multmp999 = mul i32 4, %_public_subtmp998
  %_public_lhssext1000 = zext i32 %_public_multmp999 to i64
  %_public_addtmp1001 = add i64 %_public_lhssext1000, 4
  %_public_truncbinop1002 = trunc i64 %_public_addtmp1001 to i32
  %_public_subtmp1003 = sub i32 %_public_truncbinop1002, 1
  %_public_lhssext1004 = zext i32 %_public_subtmp1003 to i64
  %_public_ulttmp1005 = icmp ult i64 %_public_lhssext1004, 64
  %_public_zexttmp1006 = zext i1 %_public_ulttmp1005 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp1006)
  %_public_lval1007 = load i32, i32* %_public___v13_SHA_LBLOCK
  %_public_subtmp1008 = sub i32 %_public_lval1007, 1
  %_public_multmp1009 = mul i32 4, %_public_subtmp1008
  %_public_structgep1010 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep1011 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep1010, i32 0, i32 3
  %_secret_arrview1012 = alloca i8*
  %_secret_source_gep1013 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep1011, i32 0, i32 %_public_multmp1009
  store i8* %_secret_source_gep1013, i8** %_secret_arrview1012
  %_secret_dynarrarg1014 = load i8*, i8** %_secret_arrview1012
  %_secret_lval1015 = load i32, i32* %_secret___v33_bitlen
  %_secret_lval1016 = load i1, i1* %_secret___v41_m1
  call void @cond_store(i8* %_secret_dynarrarg1014, i32 %_secret_lval1015, i1 %_secret_lval1016)
  %_public_structgep1017 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_public_structgep1018 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep1019 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep1018, i32 0, i32 3
  %_public_structgep1020 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep1021 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep1020, i32 0, i32 3
  %_secret_arrtoptr1022 = bitcast [64 x i8]* %_secret_structgep1021 to i8*
  call void @sha1_block_data_order(%SHA_CTX* %_public_structgep1017, i8* %_secret_arrtoptr1022, i32 1)
  store i1 false, i1* %_secret___m10
  %_secret_lval1023 = load i1, i1* %_secret___v41_m1
  store i1 %_secret_lval1023, i1* %_secret___m11
  %_secret_lval1024 = load i1, i1* %_secret___m11
  %_secret_landtmp1025 = and i1 true, %_secret_lval1024
  %_secret_lval1026 = load i1, i1* %_secret___rnset
  %_secret_landtmp1027 = and i1 %_secret_landtmp1025, %_secret_lval1026
  %_secret_condtmp1028 = icmp ne i1 %_secret_landtmp1027, false
  %_public_lval1029 = load i32, i32* %_public___v39_j
  %_secret_lval1030 = load i32, i32* %_secret___v27_inp_len
  %_secret_addtmp1031 = add i32 %_secret_lval1030, 73
  %_secret_ulttmp1032 = icmp ult i32 %_public_lval1029, %_secret_addtmp1031
  %_secret_lval1033 = load i1, i1* %_secret___m10
  %_secret_selecttmp1034 = call i1 @select.cmov.asm.i1(i1 %_secret_condtmp1028, i1 %_secret_ulttmp1032, i1 %_secret_lval1033)
  store i1 %_secret_selecttmp1034, i1* %_secret___m10
  %_secret_lval1035 = load i1, i1* %_secret___m11
  %_secret_lnottmp1036 = xor i1 %_secret_lval1035, true
  store i1 %_secret_lnottmp1036, i1* %_secret___m11
  %_secret_lval1037 = load i1, i1* %_secret___m11
  %_secret_landtmp1038 = and i1 true, %_secret_lval1037
  %_secret_lval1039 = load i1, i1* %_secret___rnset
  %_secret_landtmp1040 = and i1 %_secret_landtmp1038, %_secret_lval1039
  %_secret_condtmp1041 = icmp ne i1 %_secret_landtmp1040, false
  %_secret_lval1042 = load i1, i1* %_secret___m10
  %_secret_selecttmp1043 = call i1 @select.cmov.asm.i1(i1 %_secret_condtmp1041, i1 false, i1 %_secret_lval1042)
  store i1 %_secret_selecttmp1043, i1* %_secret___m10
  %_secret___m101044 = load i1, i1* %_secret___m10
  store i1 %_secret___m101044, i1* %_secret___v42_m2
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1045 = alloca i8*
  %_secret_source_gep1046 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i8 0, i8 0
  store i8* %_secret_source_gep1046, i8** %_secret_arrview1045
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1047 = alloca i8*
  %_secret_source_gep1048 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i8 0, i8 0
  store i8* %_secret_source_gep1048, i8** %_secret_arrview1047
  %_secret_dynarrarg1049 = load i8*, i8** %_secret_arrview1047
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_public_structgep1050 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep1051 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep1050, i32 0, i32 0
  %_secret_ptr1052 = getelementptr inbounds [5 x i32], [5 x i32]* %_secret_structgep1051, i8 0, i8 0
  %_secret_lval1053 = load i32, i32* %_secret_ptr1052
  %_secret_lval1054 = load i1, i1* %_secret___v42_m2
  call void @cond_store(i8* %_secret_dynarrarg1049, i32 %_secret_lval1053, i1 %_secret_lval1054)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1055 = alloca i8*
  %_secret_source_gep1056 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i8 0, i8 4
  store i8* %_secret_source_gep1056, i8** %_secret_arrview1055
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1057 = alloca i8*
  %_secret_source_gep1058 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i8 0, i8 4
  store i8* %_secret_source_gep1058, i8** %_secret_arrview1057
  %_secret_dynarrarg1059 = load i8*, i8** %_secret_arrview1057
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_public_structgep1060 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep1061 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep1060, i32 0, i32 0
  %_secret_ptr1062 = getelementptr inbounds [5 x i32], [5 x i32]* %_secret_structgep1061, i8 0, i8 1
  %_secret_lval1063 = load i32, i32* %_secret_ptr1062
  %_secret_lval1064 = load i1, i1* %_secret___v42_m2
  call void @cond_store(i8* %_secret_dynarrarg1059, i32 %_secret_lval1063, i1 %_secret_lval1064)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1065 = alloca i8*
  %_secret_source_gep1066 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i8 0, i8 8
  store i8* %_secret_source_gep1066, i8** %_secret_arrview1065
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1067 = alloca i8*
  %_secret_source_gep1068 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i8 0, i8 8
  store i8* %_secret_source_gep1068, i8** %_secret_arrview1067
  %_secret_dynarrarg1069 = load i8*, i8** %_secret_arrview1067
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_public_structgep1070 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep1071 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep1070, i32 0, i32 0
  %_secret_ptr1072 = getelementptr inbounds [5 x i32], [5 x i32]* %_secret_structgep1071, i8 0, i8 2
  %_secret_lval1073 = load i32, i32* %_secret_ptr1072
  %_secret_lval1074 = load i1, i1* %_secret___v42_m2
  call void @cond_store(i8* %_secret_dynarrarg1069, i32 %_secret_lval1073, i1 %_secret_lval1074)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1075 = alloca i8*
  %_secret_source_gep1076 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i8 0, i8 12
  store i8* %_secret_source_gep1076, i8** %_secret_arrview1075
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1077 = alloca i8*
  %_secret_source_gep1078 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i8 0, i8 12
  store i8* %_secret_source_gep1078, i8** %_secret_arrview1077
  %_secret_dynarrarg1079 = load i8*, i8** %_secret_arrview1077
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_public_structgep1080 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep1081 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep1080, i32 0, i32 0
  %_secret_ptr1082 = getelementptr inbounds [5 x i32], [5 x i32]* %_secret_structgep1081, i8 0, i8 3
  %_secret_lval1083 = load i32, i32* %_secret_ptr1082
  %_secret_lval1084 = load i1, i1* %_secret___v42_m2
  call void @cond_store(i8* %_secret_dynarrarg1079, i32 %_secret_lval1083, i1 %_secret_lval1084)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1085 = alloca i8*
  %_secret_source_gep1086 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i8 0, i8 16
  store i8* %_secret_source_gep1086, i8** %_secret_arrview1085
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1087 = alloca i8*
  %_secret_source_gep1088 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i8 0, i8 16
  store i8* %_secret_source_gep1088, i8** %_secret_arrview1087
  %_secret_dynarrarg1089 = load i8*, i8** %_secret_arrview1087
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_public_structgep1090 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep1091 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep1090, i32 0, i32 0
  %_secret_ptr1092 = getelementptr inbounds [5 x i32], [5 x i32]* %_secret_structgep1091, i8 0, i8 4
  %_secret_lval1093 = load i32, i32* %_secret_ptr1092
  %_secret_lval1094 = load i1, i1* %_secret___v42_m2
  call void @cond_store(i8* %_secret_dynarrarg1089, i32 %_secret_lval1093, i1 %_secret_lval1094)
  %_public_structgep1095 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep1096 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep1095, i32 0, i32 3
  %_public_structgep1097 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep1098 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep1097, i32 0, i32 3
  %_secret_arrtoptr1099 = bitcast [64 x i8]* %_secret_structgep1098 to i8*
  call void @_memzero(i8* %_secret_arrtoptr1099, i32 64)
  %_public_lval1100 = load i32, i32* %_public___v39_j
  %_public_addtmp1101 = add i32 %_public_lval1100, 64
  store i32 %_public_addtmp1101, i32* %_public___v39_j
  br label %branchmerge1103

elsebranch1102:                                   ; preds = %branchmerge903
  br label %branchmerge1103

branchmerge1103:                                  ; preds = %elsebranch1102, %thenbranch909
  %_public_lval1104 = load i32, i32* %_public___v13_SHA_LBLOCK
  %_public_subtmp1105 = sub i32 %_public_lval1104, 1
  %_public_multmp1106 = mul i32 4, %_public_subtmp1105
  %_public_lhssext1107 = zext i32 %_public_multmp1106 to i64
  %_public_addtmp1108 = add i64 %_public_lhssext1107, 4
  %_public_truncbinop1109 = trunc i64 %_public_addtmp1108 to i32
  %_public_lval1110 = load i32, i32* %_public___v13_SHA_LBLOCK
  %_public_subtmp1111 = sub i32 %_public_lval1110, 1
  %_public_multmp1112 = mul i32 4, %_public_subtmp1111
  %_public_ugttmp1113 = icmp ugt i32 %_public_truncbinop1109, %_public_multmp1112
  %_public_zexttmp1114 = zext i1 %_public_ugttmp1113 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp1114)
  %_public_lval1115 = load i32, i32* %_public___v13_SHA_LBLOCK
  %_public_subtmp1116 = sub i32 %_public_lval1115, 1
  %_public_multmp1117 = mul i32 4, %_public_subtmp1116
  %_public_lhssext1118 = zext i32 %_public_multmp1117 to i64
  %_public_ugtetmp1119 = icmp uge i64 %_public_lhssext1118, 0
  %_public_zexttmp1120 = zext i1 %_public_ugtetmp1119 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp1120)
  %_public_lval1121 = load i32, i32* %_public___v13_SHA_LBLOCK
  %_public_subtmp1122 = sub i32 %_public_lval1121, 1
  %_public_multmp1123 = mul i32 4, %_public_subtmp1122
  %_public_lhssext1124 = zext i32 %_public_multmp1123 to i64
  %_public_ulttmp1125 = icmp ult i64 %_public_lhssext1124, 64
  %_public_zexttmp1126 = zext i1 %_public_ulttmp1125 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp1126)
  %_public_lval1127 = load i32, i32* %_public___v13_SHA_LBLOCK
  %_public_subtmp1128 = sub i32 %_public_lval1127, 1
  %_public_multmp1129 = mul i32 4, %_public_subtmp1128
  %_public_lhssext1130 = zext i32 %_public_multmp1129 to i64
  %_public_addtmp1131 = add i64 %_public_lhssext1130, 4
  %_public_truncbinop1132 = trunc i64 %_public_addtmp1131 to i32
  %_public_subtmp1133 = sub i32 %_public_truncbinop1132, 1
  %_public_lhssext1134 = zext i32 %_public_subtmp1133 to i64
  %_public_ugtetmp1135 = icmp uge i64 %_public_lhssext1134, 0
  %_public_zexttmp1136 = zext i1 %_public_ugtetmp1135 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp1136)
  %_public_lval1137 = load i32, i32* %_public___v13_SHA_LBLOCK
  %_public_subtmp1138 = sub i32 %_public_lval1137, 1
  %_public_multmp1139 = mul i32 4, %_public_subtmp1138
  %_public_lhssext1140 = zext i32 %_public_multmp1139 to i64
  %_public_addtmp1141 = add i64 %_public_lhssext1140, 4
  %_public_truncbinop1142 = trunc i64 %_public_addtmp1141 to i32
  %_public_subtmp1143 = sub i32 %_public_truncbinop1142, 1
  %_public_lhssext1144 = zext i32 %_public_subtmp1143 to i64
  %_public_ulttmp1145 = icmp ult i64 %_public_lhssext1144, 64
  %_public_zexttmp1146 = zext i1 %_public_ulttmp1145 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp1146)
  %_public_lval1147 = load i32, i32* %_public___v13_SHA_LBLOCK
  %_public_subtmp1148 = sub i32 %_public_lval1147, 1
  %_public_multmp1149 = mul i32 4, %_public_subtmp1148
  %_public_structgep1150 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep1151 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep1150, i32 0, i32 3
  %_secret_arrview1152 = alloca i8*
  %_secret_source_gep1153 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep1151, i32 0, i32 %_public_multmp1149
  store i8* %_secret_source_gep1153, i8** %_secret_arrview1152
  %_public_lval1154 = load i32, i32* %_public___v13_SHA_LBLOCK
  %_public_subtmp1155 = sub i32 %_public_lval1154, 1
  %_public_multmp1156 = mul i32 4, %_public_subtmp1155
  %_public_lhssext1157 = zext i32 %_public_multmp1156 to i64
  %_public_addtmp1158 = add i64 %_public_lhssext1157, 4
  %_public_truncbinop1159 = trunc i64 %_public_addtmp1158 to i32
  %_public_lval1160 = load i32, i32* %_public___v13_SHA_LBLOCK
  %_public_subtmp1161 = sub i32 %_public_lval1160, 1
  %_public_multmp1162 = mul i32 4, %_public_subtmp1161
  %_public_ugttmp1163 = icmp ugt i32 %_public_truncbinop1159, %_public_multmp1162
  %_public_zexttmp1164 = zext i1 %_public_ugttmp1163 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp1164)
  %_public_lval1165 = load i32, i32* %_public___v13_SHA_LBLOCK
  %_public_subtmp1166 = sub i32 %_public_lval1165, 1
  %_public_multmp1167 = mul i32 4, %_public_subtmp1166
  %_public_lhssext1168 = zext i32 %_public_multmp1167 to i64
  %_public_ugtetmp1169 = icmp uge i64 %_public_lhssext1168, 0
  %_public_zexttmp1170 = zext i1 %_public_ugtetmp1169 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp1170)
  %_public_lval1171 = load i32, i32* %_public___v13_SHA_LBLOCK
  %_public_subtmp1172 = sub i32 %_public_lval1171, 1
  %_public_multmp1173 = mul i32 4, %_public_subtmp1172
  %_public_lhssext1174 = zext i32 %_public_multmp1173 to i64
  %_public_ulttmp1175 = icmp ult i64 %_public_lhssext1174, 64
  %_public_zexttmp1176 = zext i1 %_public_ulttmp1175 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp1176)
  %_public_lval1177 = load i32, i32* %_public___v13_SHA_LBLOCK
  %_public_subtmp1178 = sub i32 %_public_lval1177, 1
  %_public_multmp1179 = mul i32 4, %_public_subtmp1178
  %_public_lhssext1180 = zext i32 %_public_multmp1179 to i64
  %_public_addtmp1181 = add i64 %_public_lhssext1180, 4
  %_public_truncbinop1182 = trunc i64 %_public_addtmp1181 to i32
  %_public_subtmp1183 = sub i32 %_public_truncbinop1182, 1
  %_public_lhssext1184 = zext i32 %_public_subtmp1183 to i64
  %_public_ugtetmp1185 = icmp uge i64 %_public_lhssext1184, 0
  %_public_zexttmp1186 = zext i1 %_public_ugtetmp1185 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp1186)
  %_public_lval1187 = load i32, i32* %_public___v13_SHA_LBLOCK
  %_public_subtmp1188 = sub i32 %_public_lval1187, 1
  %_public_multmp1189 = mul i32 4, %_public_subtmp1188
  %_public_lhssext1190 = zext i32 %_public_multmp1189 to i64
  %_public_addtmp1191 = add i64 %_public_lhssext1190, 4
  %_public_truncbinop1192 = trunc i64 %_public_addtmp1191 to i32
  %_public_subtmp1193 = sub i32 %_public_truncbinop1192, 1
  %_public_lhssext1194 = zext i32 %_public_subtmp1193 to i64
  %_public_ulttmp1195 = icmp ult i64 %_public_lhssext1194, 64
  %_public_zexttmp1196 = zext i1 %_public_ulttmp1195 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp1196)
  %_public_lval1197 = load i32, i32* %_public___v13_SHA_LBLOCK
  %_public_subtmp1198 = sub i32 %_public_lval1197, 1
  %_public_multmp1199 = mul i32 4, %_public_subtmp1198
  %_public_structgep1200 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep1201 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep1200, i32 0, i32 3
  %_secret_arrview1202 = alloca i8*
  %_secret_source_gep1203 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep1201, i32 0, i32 %_public_multmp1199
  store i8* %_secret_source_gep1203, i8** %_secret_arrview1202
  %_secret_dynarrarg1204 = load i8*, i8** %_secret_arrview1202
  %_secret_lval1205 = load i32, i32* %_secret___v33_bitlen
  call void @_store32_le(i8* %_secret_dynarrarg1204, i32 %_secret_lval1205)
  %_public_structgep1206 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_public_structgep1207 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep1208 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep1207, i32 0, i32 3
  %_public_structgep1209 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep1210 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep1209, i32 0, i32 3
  %_secret_arrtoptr1211 = bitcast [64 x i8]* %_secret_structgep1210 to i8*
  call void @sha1_block_data_order(%SHA_CTX* %_public_structgep1206, i8* %_secret_arrtoptr1211, i32 1)
  %_public_lval1212 = load i32, i32* %_public___v39_j
  %_secret_lval1213 = load i32, i32* %_secret___v27_inp_len
  %_secret_addtmp1214 = add i32 %_secret_lval1213, 73
  %_secret_ulttmp1215 = icmp ult i32 %_public_lval1212, %_secret_addtmp1214
  store i1 %_secret_ulttmp1215, i1* %_secret___v43_m2
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1216 = alloca i8*
  %_secret_source_gep1217 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i8 0, i8 0
  store i8* %_secret_source_gep1217, i8** %_secret_arrview1216
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1218 = alloca i8*
  %_secret_source_gep1219 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i8 0, i8 0
  store i8* %_secret_source_gep1219, i8** %_secret_arrview1218
  %_secret_dynarrarg1220 = load i8*, i8** %_secret_arrview1218
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_public_structgep1221 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep1222 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep1221, i32 0, i32 0
  %_secret_ptr1223 = getelementptr inbounds [5 x i32], [5 x i32]* %_secret_structgep1222, i8 0, i8 0
  %_secret_lval1224 = load i32, i32* %_secret_ptr1223
  %_secret_lval1225 = load i1, i1* %_secret___v43_m2
  call void @cond_store(i8* %_secret_dynarrarg1220, i32 %_secret_lval1224, i1 %_secret_lval1225)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1226 = alloca i8*
  %_secret_source_gep1227 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i8 0, i8 4
  store i8* %_secret_source_gep1227, i8** %_secret_arrview1226
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1228 = alloca i8*
  %_secret_source_gep1229 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i8 0, i8 4
  store i8* %_secret_source_gep1229, i8** %_secret_arrview1228
  %_secret_dynarrarg1230 = load i8*, i8** %_secret_arrview1228
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_public_structgep1231 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep1232 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep1231, i32 0, i32 0
  %_secret_ptr1233 = getelementptr inbounds [5 x i32], [5 x i32]* %_secret_structgep1232, i8 0, i8 1
  %_secret_lval1234 = load i32, i32* %_secret_ptr1233
  %_secret_lval1235 = load i1, i1* %_secret___v43_m2
  call void @cond_store(i8* %_secret_dynarrarg1230, i32 %_secret_lval1234, i1 %_secret_lval1235)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1236 = alloca i8*
  %_secret_source_gep1237 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i8 0, i8 8
  store i8* %_secret_source_gep1237, i8** %_secret_arrview1236
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1238 = alloca i8*
  %_secret_source_gep1239 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i8 0, i8 8
  store i8* %_secret_source_gep1239, i8** %_secret_arrview1238
  %_secret_dynarrarg1240 = load i8*, i8** %_secret_arrview1238
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_public_structgep1241 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep1242 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep1241, i32 0, i32 0
  %_secret_ptr1243 = getelementptr inbounds [5 x i32], [5 x i32]* %_secret_structgep1242, i8 0, i8 2
  %_secret_lval1244 = load i32, i32* %_secret_ptr1243
  %_secret_lval1245 = load i1, i1* %_secret___v43_m2
  call void @cond_store(i8* %_secret_dynarrarg1240, i32 %_secret_lval1244, i1 %_secret_lval1245)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1246 = alloca i8*
  %_secret_source_gep1247 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i8 0, i8 12
  store i8* %_secret_source_gep1247, i8** %_secret_arrview1246
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1248 = alloca i8*
  %_secret_source_gep1249 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i8 0, i8 12
  store i8* %_secret_source_gep1249, i8** %_secret_arrview1248
  %_secret_dynarrarg1250 = load i8*, i8** %_secret_arrview1248
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_public_structgep1251 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep1252 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep1251, i32 0, i32 0
  %_secret_ptr1253 = getelementptr inbounds [5 x i32], [5 x i32]* %_secret_structgep1252, i8 0, i8 3
  %_secret_lval1254 = load i32, i32* %_secret_ptr1253
  %_secret_lval1255 = load i1, i1* %_secret___v43_m2
  call void @cond_store(i8* %_secret_dynarrarg1250, i32 %_secret_lval1254, i1 %_secret_lval1255)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1256 = alloca i8*
  %_secret_source_gep1257 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i8 0, i8 16
  store i8* %_secret_source_gep1257, i8** %_secret_arrview1256
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1258 = alloca i8*
  %_secret_source_gep1259 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i8 0, i8 16
  store i8* %_secret_source_gep1259, i8** %_secret_arrview1258
  %_secret_dynarrarg1260 = load i8*, i8** %_secret_arrview1258
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_public_structgep1261 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep1262 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep1261, i32 0, i32 0
  %_secret_ptr1263 = getelementptr inbounds [5 x i32], [5 x i32]* %_secret_structgep1262, i8 0, i8 4
  %_secret_lval1264 = load i32, i32* %_secret_ptr1263
  %_secret_lval1265 = load i1, i1* %_secret___v43_m2
  call void @cond_store(i8* %_secret_dynarrarg1260, i32 %_secret_lval1264, i1 %_secret_lval1265)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1266 = alloca i8*
  %_secret_source_gep1267 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i8 0, i8 0
  store i8* %_secret_source_gep1267, i8** %_secret_arrview1266
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1268 = alloca i8*
  %_secret_source_gep1269 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i8 0, i8 0
  store i8* %_secret_source_gep1269, i8** %_secret_arrview1268
  %_secret_dynarrarg1270 = load i8*, i8** %_secret_arrview1268
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1271 = alloca i8*
  %_secret_source_gep1272 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i8 0, i8 0
  store i8* %_secret_source_gep1272, i8** %_secret_arrview1271
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1273 = alloca i8*
  %_secret_source_gep1274 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i8 0, i8 0
  store i8* %_secret_source_gep1274, i8** %_secret_arrview1273
  %_secret_dynarrarg1275 = load i8*, i8** %_secret_arrview1273
  %_secret_calltmp1276 = call i32 @_load32_le(i8* %_secret_dynarrarg1275)
  %_secret_calltmp1277 = call i32 @bswap4(i32 %_secret_calltmp1276)
  call void @_store32_le(i8* %_secret_dynarrarg1270, i32 %_secret_calltmp1277)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1278 = alloca i8*
  %_secret_source_gep1279 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i8 0, i8 4
  store i8* %_secret_source_gep1279, i8** %_secret_arrview1278
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1280 = alloca i8*
  %_secret_source_gep1281 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i8 0, i8 4
  store i8* %_secret_source_gep1281, i8** %_secret_arrview1280
  %_secret_dynarrarg1282 = load i8*, i8** %_secret_arrview1280
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1283 = alloca i8*
  %_secret_source_gep1284 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i8 0, i8 4
  store i8* %_secret_source_gep1284, i8** %_secret_arrview1283
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1285 = alloca i8*
  %_secret_source_gep1286 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i8 0, i8 4
  store i8* %_secret_source_gep1286, i8** %_secret_arrview1285
  %_secret_dynarrarg1287 = load i8*, i8** %_secret_arrview1285
  %_secret_calltmp1288 = call i32 @_load32_le(i8* %_secret_dynarrarg1287)
  %_secret_calltmp1289 = call i32 @bswap4(i32 %_secret_calltmp1288)
  call void @_store32_le(i8* %_secret_dynarrarg1282, i32 %_secret_calltmp1289)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1290 = alloca i8*
  %_secret_source_gep1291 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i8 0, i8 8
  store i8* %_secret_source_gep1291, i8** %_secret_arrview1290
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1292 = alloca i8*
  %_secret_source_gep1293 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i8 0, i8 8
  store i8* %_secret_source_gep1293, i8** %_secret_arrview1292
  %_secret_dynarrarg1294 = load i8*, i8** %_secret_arrview1292
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1295 = alloca i8*
  %_secret_source_gep1296 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i8 0, i8 8
  store i8* %_secret_source_gep1296, i8** %_secret_arrview1295
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1297 = alloca i8*
  %_secret_source_gep1298 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i8 0, i8 8
  store i8* %_secret_source_gep1298, i8** %_secret_arrview1297
  %_secret_dynarrarg1299 = load i8*, i8** %_secret_arrview1297
  %_secret_calltmp1300 = call i32 @_load32_le(i8* %_secret_dynarrarg1299)
  %_secret_calltmp1301 = call i32 @bswap4(i32 %_secret_calltmp1300)
  call void @_store32_le(i8* %_secret_dynarrarg1294, i32 %_secret_calltmp1301)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1302 = alloca i8*
  %_secret_source_gep1303 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i8 0, i8 12
  store i8* %_secret_source_gep1303, i8** %_secret_arrview1302
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1304 = alloca i8*
  %_secret_source_gep1305 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i8 0, i8 12
  store i8* %_secret_source_gep1305, i8** %_secret_arrview1304
  %_secret_dynarrarg1306 = load i8*, i8** %_secret_arrview1304
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1307 = alloca i8*
  %_secret_source_gep1308 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i8 0, i8 12
  store i8* %_secret_source_gep1308, i8** %_secret_arrview1307
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1309 = alloca i8*
  %_secret_source_gep1310 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i8 0, i8 12
  store i8* %_secret_source_gep1310, i8** %_secret_arrview1309
  %_secret_dynarrarg1311 = load i8*, i8** %_secret_arrview1309
  %_secret_calltmp1312 = call i32 @_load32_le(i8* %_secret_dynarrarg1311)
  %_secret_calltmp1313 = call i32 @bswap4(i32 %_secret_calltmp1312)
  call void @_store32_le(i8* %_secret_dynarrarg1306, i32 %_secret_calltmp1313)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1314 = alloca i8*
  %_secret_source_gep1315 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i8 0, i8 16
  store i8* %_secret_source_gep1315, i8** %_secret_arrview1314
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1316 = alloca i8*
  %_secret_source_gep1317 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i8 0, i8 16
  store i8* %_secret_source_gep1317, i8** %_secret_arrview1316
  %_secret_dynarrarg1318 = load i8*, i8** %_secret_arrview1316
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1319 = alloca i8*
  %_secret_source_gep1320 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i8 0, i8 16
  store i8* %_secret_source_gep1320, i8** %_secret_arrview1319
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1321 = alloca i8*
  %_secret_source_gep1322 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i8 0, i8 16
  store i8* %_secret_source_gep1322, i8** %_secret_arrview1321
  %_secret_dynarrarg1323 = load i8*, i8** %_secret_arrview1321
  %_secret_calltmp1324 = call i32 @_load32_le(i8* %_secret_dynarrarg1323)
  %_secret_calltmp1325 = call i32 @bswap4(i32 %_secret_calltmp1324)
  call void @_store32_le(i8* %_secret_dynarrarg1318, i32 %_secret_calltmp1325)
  %_public_lval1326 = load i32, i32* %_public___v17__len
  %_public_lval1327 = load i32, i32* %_public___v11_SHA_DIGEST_LENGTH
  %_public_addtmp1328 = add i32 %_public_lval1326, %_public_lval1327
  store i32 %_public_addtmp1328, i32* %_public___v17__len
  %_public_structgep1329 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_public_structgep1330 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 2
  call void @_structcopy_SHA_CTX(%SHA_CTX* %_public_structgep1329, %SHA_CTX* %_public_structgep1330)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_public_structgep1331 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep1332 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep1331, i32 0, i32 0
  %_secret_ptr1333 = getelementptr inbounds [5 x i32], [5 x i32]* %_secret_structgep1332, i8 0, i8 0
  %_secret_arrtoptr1334 = bitcast [20 x i8]* %_secret___v34_pmac to i8*
  call void @_sha1_update(i32* %_secret_ptr1333, i8* %_secret_arrtoptr1334, i64 20)
  %_secret_arrtoptr1335 = bitcast [20 x i8]* %_secret___v34_pmac to i8*
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_public_structgep1336 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep1337 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep1336, i32 0, i32 0
  %_secret_ptr1338 = getelementptr inbounds [5 x i32], [5 x i32]* %_secret_structgep1337, i8 0, i8 0
  call void @SHA1_Final(i8* %_secret_arrtoptr1335, i32* %_secret_ptr1338)
  %_public_lval1339 = load i32, i32* %_public___v16_outp
  %_secret_lval1340 = load i32, i32* %_secret___v27_inp_len
  %_secret_addtmp1341 = add i32 %_public_lval1339, %_secret_lval1340
  store i32 %_secret_addtmp1341, i32* %_secret___v44_s_outp
  %_public_lval1342 = load i32, i32* %_public____out_len
  %_public_subtmp1343 = sub i32 %_public_lval1342, 1
  %_public_lval1344 = load i32, i32* %_public___v26_maxpad
  %_public_subtmp1345 = sub i32 %_public_subtmp1343, %_public_lval1344
  %_public_lval1346 = load i32, i32* %_public___v11_SHA_DIGEST_LENGTH
  %_public_subtmp1347 = sub i32 %_public_subtmp1345, %_public_lval1346
  store i32 %_public_subtmp1347, i32* %_public___v45_p_outp
  store i32 0, i32* %_secret___v46_i
  %_public_calltmp1348 = call i32 @__VERIFIER_nondet_unsigned_int()
  store i32 %_public_calltmp1348, i32* %_public___v47_j
  %_public_lval1349 = load i32, i32* %_public___v47_j
  %_public_lval1350 = load i32, i32* %_public___v26_maxpad
  %_public_lval1351 = load i32, i32* %_public___v11_SHA_DIGEST_LENGTH
  %_public_addtmp1352 = add i32 %_public_lval1350, %_public_lval1351
  %_public_ulttmp1353 = icmp ult i32 %_public_lval1349, %_public_addtmp1352
  %_public_branchcompare1354 = icmp eq i1 %_public_ulttmp1353, true
  br i1 %_public_branchcompare1354, label %thenbranch1355, label %elsebranch1453

thenbranch1355:                                   ; preds = %branchmerge1103
  %_public_lval1356 = load i32, i32* %_public___v47_j
  %_public_lval1357 = load i32, i32* %_public___v47_j
  %_public_addtmp1358 = add i32 %_public_lval1357, 1
  %_public_ulttmp1359 = icmp ult i32 %_public_lval1356, %_public_addtmp1358
  %_public_zexttmp1360 = zext i1 %_public_ulttmp1359 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp1360)
  %_public_lval1361 = load i32, i32* %_public___v47_j
  %_public_ulttmp1362 = icmp ult i32 0, %_public_lval1361
  %_public_lval1363 = load i32, i32* %_public___v47_j
  %_public_eqtmp1364 = icmp eq i32 0, %_public_lval1363
  %_public_lortmp1365 = or i1 %_public_ulttmp1362, %_public_eqtmp1364
  %_public_zexttmp1366 = zext i1 %_public_lortmp1365 to i32
  call void @__VERIFIER_assume(i32 %_public_zexttmp1366)
  %_public_lval1367 = load i32, i32* %_public___v45_p_outp
  %_public_lval1368 = load i32, i32* %_public___v47_j
  %_public_addtmp1369 = add i32 %_public_lval1367, %_public_lval1368
  %_public_lhssext1370 = zext i32 %_public_addtmp1369 to i64
  %_public_ugtetmp1371 = icmp uge i64 %_public_lhssext1370, 0
  %_public_zexttmp1372 = zext i1 %_public_ugtetmp1371 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp1372)
  %_public_lval1373 = load i32, i32* %_public___v45_p_outp
  %_public_lval1374 = load i32, i32* %_public___v47_j
  %_public_addtmp1375 = add i32 %_public_lval1373, %_public_lval1374
  %_public_lval1376 = load i32, i32* %_public____out_len
  %_public_icast1377 = zext i32 %_public_lval1376 to i64
  %_public_lhssext1378 = zext i32 %_public_addtmp1375 to i64
  %_public_ulttmp1379 = icmp ult i64 %_public_lhssext1378, %_public_icast1377
  %_public_zexttmp1380 = zext i1 %_public_ulttmp1379 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp1380)
  %_public_lval1381 = load i32, i32* %_public___v45_p_outp
  %_public_lval1382 = load i32, i32* %_public___v47_j
  %_public_addtmp1383 = add i32 %_public_lval1381, %_public_lval1382
  %_secret_dyn1384 = load i8*, i8** %_secret_arrarg2
  %_secret_ptr1385 = getelementptr inbounds i8, i8* %_secret_dyn1384, i32 %_public_addtmp1383
  %_secret_lval1386 = load i8, i8* %_secret_ptr1385
  %_secret_zexttmp1387 = zext i8 %_secret_lval1386 to i32
  store i32 %_secret_zexttmp1387, i32* %_secret___v48_c
  %_public_lval1388 = load i32, i32* %_public___v45_p_outp
  %_public_lval1389 = load i32, i32* %_public___v47_j
  %_public_addtmp1390 = add i32 %_public_lval1388, %_public_lval1389
  %_secret_lval1391 = load i32, i32* %_secret___v44_s_outp
  %_public_lval1392 = load i32, i32* %_public___v11_SHA_DIGEST_LENGTH
  %_secret_addtmp1393 = add i32 %_secret_lval1391, %_public_lval1392
  %_secret_ugtetmp = icmp uge i32 %_public_addtmp1390, %_secret_addtmp1393
  store i1 %_secret_ugtetmp, i1* %_secret___m12
  %_secret_lval1394 = load i32, i32* %_secret___v48_c
  %_secret_lval1395 = load i32, i32* %_secret___v24_pad
  %_secret_neqtmp = icmp ne i32 %_secret_lval1394, %_secret_lval1395
  store i1 %_secret_neqtmp, i1* %_secret___m13
  %_secret_lval1396 = load i1, i1* %_secret___m13
  %_secret_landtmp1397 = and i1 true, %_secret_lval1396
  %_secret_lval1398 = load i1, i1* %_secret___m12
  %_secret_landtmp1399 = and i1 %_secret_landtmp1397, %_secret_lval1398
  %_secret_lval1400 = load i1, i1* %_secret___rnset
  %_secret_landtmp1401 = and i1 %_secret_landtmp1399, %_secret_lval1400
  %_secret_condtmp1402 = icmp ne i1 %_secret_landtmp1401, false
  %_secret_lval1403 = load i32, i32* %_secret___v18_ret
  %_secret_selecttmp1404 = call i32 @select.cmov.sel.i32(i1 %_secret_condtmp1402, i32 0, i32 %_secret_lval1403)
  store i32 %_secret_selecttmp1404, i32* %_secret___v18_ret
  %_secret_lval1405 = load i1, i1* %_secret___m13
  %_secret_lnottmp1406 = xor i1 %_secret_lval1405, true
  store i1 %_secret_lnottmp1406, i1* %_secret___m13
  %_secret_lval1407 = load i1, i1* %_secret___m12
  %_secret_lnottmp1408 = xor i1 %_secret_lval1407, true
  store i1 %_secret_lnottmp1408, i1* %_secret___m12
  %_public_lval1409 = load i32, i32* %_public___v45_p_outp
  %_public_lval1410 = load i32, i32* %_public___v47_j
  %_public_addtmp1411 = add i32 %_public_lval1409, %_public_lval1410
  %_secret_lval1412 = load i32, i32* %_secret___v44_s_outp
  %_secret_ugtetmp1413 = icmp uge i32 %_public_addtmp1411, %_secret_lval1412
  store i1 %_secret_ugtetmp1413, i1* %_secret___m14
  %_secret_lval1414 = load i32, i32* %_secret___v48_c
  %_declassified__secret_lval1415 = load i32, i32* %_secret___v46_i
  %_public_lhssext1416 = zext i32 %_declassified__secret_lval1415 to i64
  %_public_ugtetmp1417 = icmp uge i64 %_public_lhssext1416, 0
  %_public_zexttmp1418 = zext i1 %_public_ugtetmp1417 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp1418)
  %_declassified__secret_lval1419 = load i32, i32* %_secret___v46_i
  %_public_lhssext1420 = zext i32 %_declassified__secret_lval1419 to i64
  %_public_ulttmp1421 = icmp ult i64 %_public_lhssext1420, 20
  %_public_zexttmp1422 = zext i1 %_public_ulttmp1421 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp1422)
  %_declassified__secret_lval1423 = load i32, i32* %_secret___v46_i
  %_secret_ptr1424 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i32 0, i32 %_declassified__secret_lval1423
  %_secret_lval1425 = load i8, i8* %_secret_ptr1424
  %_secret_rhssext = zext i8 %_secret_lval1425 to i32
  %_secret_neqtmp1426 = icmp ne i32 %_secret_lval1414, %_secret_rhssext
  store i1 %_secret_neqtmp1426, i1* %_secret___m15
  %_secret_lval1427 = load i1, i1* %_secret___m15
  %_secret_landtmp1428 = and i1 true, %_secret_lval1427
  %_secret_lval1429 = load i1, i1* %_secret___m14
  %_secret_landtmp1430 = and i1 %_secret_landtmp1428, %_secret_lval1429
  %_secret_lval1431 = load i1, i1* %_secret___m12
  %_secret_landtmp1432 = and i1 %_secret_landtmp1430, %_secret_lval1431
  %_secret_lval1433 = load i1, i1* %_secret___rnset
  %_secret_landtmp1434 = and i1 %_secret_landtmp1432, %_secret_lval1433
  %_secret_condtmp1435 = icmp ne i1 %_secret_landtmp1434, false
  %_secret_lval1436 = load i32, i32* %_secret___v18_ret
  %_secret_selecttmp1437 = call i32 @select.cmov.sel.i32(i1 %_secret_condtmp1435, i32 0, i32 %_secret_lval1436)
  store i32 %_secret_selecttmp1437, i32* %_secret___v18_ret
  %_secret_lval1438 = load i1, i1* %_secret___m15
  %_secret_lnottmp1439 = xor i1 %_secret_lval1438, true
  store i1 %_secret_lnottmp1439, i1* %_secret___m15
  %_secret_lval1440 = load i1, i1* %_secret___m14
  %_secret_landtmp1441 = and i1 true, %_secret_lval1440
  %_secret_lval1442 = load i1, i1* %_secret___m12
  %_secret_landtmp1443 = and i1 %_secret_landtmp1441, %_secret_lval1442
  %_secret_lval1444 = load i1, i1* %_secret___rnset
  %_secret_landtmp1445 = and i1 %_secret_landtmp1443, %_secret_lval1444
  %_secret_condtmp1446 = icmp ne i1 %_secret_landtmp1445, false
  %_secret_lval1447 = load i32, i32* %_secret___v46_i
  %_secret_addtmp1448 = add i32 %_secret_lval1447, 1
  %_secret_lval1449 = load i32, i32* %_secret___v46_i
  %_secret_selecttmp1450 = call i32 @select.cmov.sel.i32(i1 %_secret_condtmp1446, i32 %_secret_addtmp1448, i32 %_secret_lval1449)
  store i32 %_secret_selecttmp1450, i32* %_secret___v46_i
  %_secret_lval1451 = load i1, i1* %_secret___m14
  %_secret_lnottmp1452 = xor i1 %_secret_lval1451, true
  store i1 %_secret_lnottmp1452, i1* %_secret___m14
  br label %branchmerge1454

elsebranch1453:                                   ; preds = %branchmerge1103
  br label %branchmerge1454

branchmerge1454:                                  ; preds = %elsebranch1453, %thenbranch1355
  %_secret_lval1455 = load i32, i32* %_secret___v18_ret
  store i32 %_secret_lval1455, i32* %_secret___rval
  %_secret_lval1456 = load i32, i32* %_secret___rval
  ret i32 %_secret_lval1456
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #2

; Function Attrs: alwaysinline
define internal void @_arrcopy(i8*, i32, i8*, i32) #0 {
entry:
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %0, i8* %2, i32 %1, i32 1, i1 false)
  ret void
}

; Function Attrs: alwaysinline
define internal void @_structcopy_SHA_CTX(%SHA_CTX*, %SHA_CTX*) #0 {
entry:
  %_secret_cast = bitcast %SHA_CTX* %0 to i8*
  %_secret_cast1 = bitcast %SHA_CTX* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %_secret_cast, i8* %_secret_cast1, i32 96, i32 4, i1 false)
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #2

; Function Attrs: alwaysinline
define internal i8 @select.cmov.asm.i8(i1 %_secret_cond, i8 %_secret_a, i8 %_secret_b) #0 {
entry:
  %_secret_zext = zext i8 %_secret_a to i32
  %_secret_zext1 = zext i8 %_secret_b to i32
  %_secret_asm = call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %_secret_cond, i32 %_secret_zext, i32 %_secret_zext1)
  %_secret_trunc = trunc i32 %_secret_asm to i8
  ret i8 %_secret_trunc
}

; Function Attrs: alwaysinline
define internal i16 @select.cmov.asm.i16(i1 %_secret_cond, i16 %_secret_a, i16 %_secret_b) #0 {
entry:
  %_secret_zext = zext i16 %_secret_a to i32
  %_secret_zext1 = zext i16 %_secret_b to i32
  %_secret_asm = call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %_secret_cond, i32 %_secret_zext, i32 %_secret_zext1)
  %_secret_trunc = trunc i32 %_secret_asm to i16
  ret i16 %_secret_trunc
}

; Function Attrs: alwaysinline
define internal i1 @select.cmov.asm.i1(i1 %_secret_cond, i1 %_secret_a, i1 %_secret_b) #0 {
entry:
  %_secret_zext = zext i1 %_secret_a to i32
  %_secret_zext1 = zext i1 %_secret_b to i32
  %_secret_asm = call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %_secret_cond, i32 %_secret_zext, i32 %_secret_zext1)
  %_secret_trunc = trunc i32 %_secret_asm to i1
  ret i1 %_secret_trunc
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i32, i1) #2

; Function Attrs: noinline
define internal void @_memzero(i8*, i32) #3 {
entry:
  call void @llvm.memset.p0i8.i32(i8* %0, i8 0, i32 %1, i32 1, i1 false)
  ret void
}

attributes #0 = { alwaysinline }
attributes #1 = { alwaysinline readonly }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noinline }