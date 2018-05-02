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

define i32 @_aesni_cbc_hmac_sha1_cipher(i8* %_secret_arrarg1, %EVP_AES_HMAC_SHA1* %key, i8* %_secret_arrarg3, i32 %_public____out_len4, i8* %_secret_arrarg6, i32 %_public____in_len7, i64 %_public_plen8, i16 %_public_tls_ver9) {
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
  %_public_tls_ver = alloca i16
  store i16 %_public_tls_ver9, i16* %_public_tls_ver
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
  %_public___v20___v19_len = alloca i32
  %_public___v22___v21_len = alloca i32
  %_secret___v23_pad = alloca i32
  %_public___v24_tmppad = alloca i32
  %_public___v25_maxpad = alloca i32
  %_secret___m3 = alloca i1
  %_secret___v26_inp_len = alloca i32
  %_public___v28___v27_len = alloca i32
  %_public___v29_j = alloca i32
  %_public___v31___v30_len = alloca i32
  %_secret___v32_bitlen = alloca i32
  %_public___v34_p_res = alloca i32
  %_public___v35_j = alloca i32
  %_secret___m4 = alloca i8
  %_secret___m5 = alloca i1
  %_secret___m6 = alloca i16
  %_secret___m7 = alloca i1
  %_secret___v36_m1 = alloca i1
  %_secret___m8 = alloca i1
  %_secret___m9 = alloca i1
  %_secret___v37_m2 = alloca i1
  %_public___v38_j = alloca i32
  %_public___v39_i = alloca i32
  %_secret___v40_m1 = alloca i1
  %_secret___m10 = alloca i1
  %_secret___m11 = alloca i1
  %_secret___v41_m2 = alloca i1
  %_secret___v42_m2 = alloca i1
  %_secret___v43_s_outp = alloca i32
  %_public___v44_p_outp = alloca i32
  %_secret___v45_i = alloca i32
  %_public___v46_j = alloca i32
  %_secret___v47_c = alloca i32
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
  %_public_lval10 = load i32, i32* %_public____out_len
  store i32 %_public_lval10, i32* %_public___v17__len
  store i32 1, i32* %_secret___v18_ret
  %_public_lval11 = load i16, i16* %_public_tls_ver
  %_public_lval12 = load i32, i32* %_public___v12_TLS1_1_VERSION
  %_public_lhssext = zext i16 %_public_lval11 to i32
  %_public_ugtetmp = icmp uge i32 %_public_lhssext, %_public_lval12
  %_public_branchcompare = icmp eq i1 %_public_ugtetmp, true
  br i1 %_public_branchcompare, label %thenbranch, label %elsebranch29

thenbranch:                                       ; preds = %entry
  %_public_lval13 = load i32, i32* %_public___v17__len
  %_public_lval14 = load i32, i32* %_public___v10_AES_BLOCK_SIZE
  %_public_lval15 = load i32, i32* %_public___v11_SHA_DIGEST_LENGTH
  %_public_addtmp = add i32 %_public_lval14, %_public_lval15
  %_public_addtmp16 = add i32 %_public_addtmp, 1
  %_public_ulttmp = icmp ult i32 %_public_lval13, %_public_addtmp16
  %_public_branchcompare17 = icmp eq i1 %_public_ulttmp, true
  br i1 %_public_branchcompare17, label %thenbranch18, label %elsebranch

thenbranch18:                                     ; preds = %thenbranch
  store i32 0, i32* %_secret___rval
  %_secret_lval = load i32, i32* %_secret___rval
  ret i32 %_secret_lval

elsebranch:                                       ; preds = %thenbranch
  br label %branchmerge

branchmerge:                                      ; preds = %elsebranch
  %_secret_dynarrarg = load i8*, i8** %_secret_arrarg
  %_secret_dynarrarg19 = load i8*, i8** %_secret_arrarg5
  %_public_lval20 = load i32, i32* %_public____in_len
  call void @_arrcopy(i8* %_secret_dynarrarg, i32 16, i8* %_secret_dynarrarg19, i32 %_public_lval20)
  %_public_lval21 = load i32, i32* %_public___v15_inp
  %_public_lval22 = load i32, i32* %_public___v10_AES_BLOCK_SIZE
  %_public_addtmp23 = add i32 %_public_lval21, %_public_lval22
  store i32 %_public_addtmp23, i32* %_public___v15_inp
  %_public_lval24 = load i32, i32* %_public___v16_outp
  %_public_lval25 = load i32, i32* %_public___v10_AES_BLOCK_SIZE
  %_public_addtmp26 = add i32 %_public_lval24, %_public_lval25
  store i32 %_public_addtmp26, i32* %_public___v16_outp
  %_public_lval27 = load i32, i32* %_public___v17__len
  %_public_lval28 = load i32, i32* %_public___v10_AES_BLOCK_SIZE
  %_public_subtmp = sub i32 %_public_lval27, %_public_lval28
  store i32 %_public_subtmp, i32* %_public___v17__len
  br label %branchmerge39

elsebranch29:                                     ; preds = %entry
  %_public_lval30 = load i32, i32* %_public___v17__len
  %_public_lval31 = load i32, i32* %_public___v11_SHA_DIGEST_LENGTH
  %_public_addtmp32 = add i32 %_public_lval31, 1
  %_public_ulttmp33 = icmp ult i32 %_public_lval30, %_public_addtmp32
  %_public_branchcompare34 = icmp eq i1 %_public_ulttmp33, true
  br i1 %_public_branchcompare34, label %thenbranch35, label %elsebranch37

thenbranch35:                                     ; preds = %elsebranch29
  store i32 0, i32* %_secret___rval
  %_secret_lval36 = load i32, i32* %_secret___rval
  ret i32 %_secret_lval36

elsebranch37:                                     ; preds = %elsebranch29
  br label %branchmerge38

branchmerge38:                                    ; preds = %elsebranch37
  br label %branchmerge39

branchmerge39:                                    ; preds = %branchmerge38, %branchmerge
  %_public_lval40 = load i32, i32* %_public___v17__len
  store i32 %_public_lval40, i32* %_public___v20___v19_len
  %_public_lval41 = load i32, i32* %_public___v17__len
  store i32 %_public_lval41, i32* %_public___v22___v21_len
  %_public_lval42 = load i32, i32* %_public___v15_inp
  %_public_lval43 = load i32, i32* %_public___v20___v19_len
  %_public_icast = zext i32 %_public_lval43 to i64
  %_public_lhssext44 = zext i32 %_public_lval42 to i64
  %_public_addtmp45 = add i64 %_public_lhssext44, %_public_icast
  %_public_truncbinop = trunc i64 %_public_addtmp45 to i32
  %_public_lval46 = load i32, i32* %_public___v15_inp
  %_public_ugttmp = icmp ugt i32 %_public_truncbinop, %_public_lval46
  %_public_zexttmp = zext i1 %_public_ugttmp to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp)
  %_public_lval47 = load i32, i32* %_public___v15_inp
  %_public_lhssext48 = zext i32 %_public_lval47 to i64
  %_public_ugtetmp49 = icmp uge i64 %_public_lhssext48, 0
  %_public_zexttmp50 = zext i1 %_public_ugtetmp49 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp50)
  %_public_lval51 = load i32, i32* %_public___v15_inp
  %_public_lval52 = load i32, i32* %_public____in_len
  %_public_icast53 = zext i32 %_public_lval52 to i64
  %_public_lhssext54 = zext i32 %_public_lval51 to i64
  %_public_ulttmp55 = icmp ult i64 %_public_lhssext54, %_public_icast53
  %_public_zexttmp56 = zext i1 %_public_ulttmp55 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp56)
  %_public_lval57 = load i32, i32* %_public___v15_inp
  %_public_lval58 = load i32, i32* %_public___v20___v19_len
  %_public_icast59 = zext i32 %_public_lval58 to i64
  %_public_lhssext60 = zext i32 %_public_lval57 to i64
  %_public_addtmp61 = add i64 %_public_lhssext60, %_public_icast59
  %_public_truncbinop62 = trunc i64 %_public_addtmp61 to i32
  %_public_subtmp63 = sub i32 %_public_truncbinop62, 1
  %_public_lhssext64 = zext i32 %_public_subtmp63 to i64
  %_public_ugtetmp65 = icmp uge i64 %_public_lhssext64, 0
  %_public_zexttmp66 = zext i1 %_public_ugtetmp65 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp66)
  %_public_lval67 = load i32, i32* %_public___v15_inp
  %_public_lval68 = load i32, i32* %_public___v20___v19_len
  %_public_icast69 = zext i32 %_public_lval68 to i64
  %_public_lhssext70 = zext i32 %_public_lval67 to i64
  %_public_addtmp71 = add i64 %_public_lhssext70, %_public_icast69
  %_public_truncbinop72 = trunc i64 %_public_addtmp71 to i32
  %_public_subtmp73 = sub i32 %_public_truncbinop72, 1
  %_public_lval74 = load i32, i32* %_public____in_len
  %_public_icast75 = zext i32 %_public_lval74 to i64
  %_public_lhssext76 = zext i32 %_public_subtmp73 to i64
  %_public_ulttmp77 = icmp ult i64 %_public_lhssext76, %_public_icast75
  %_public_zexttmp78 = zext i1 %_public_ulttmp77 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp78)
  %_public_lval79 = load i32, i32* %_public___v15_inp
  %_secret_ldedviewptr = load i8*, i8** %_secret_arrarg5
  %_secret_source_gep = getelementptr inbounds i8, i8* %_secret_ldedviewptr, i32 %_public_lval79
  %_secret_arrviewdyn = alloca i8*
  store i8* %_secret_source_gep, i8** %_secret_arrviewdyn
  %_public_lval80 = load i32, i32* %_public___v15_inp
  %_public_lval81 = load i32, i32* %_public___v20___v19_len
  %_public_icast82 = zext i32 %_public_lval81 to i64
  %_public_lhssext83 = zext i32 %_public_lval80 to i64
  %_public_addtmp84 = add i64 %_public_lhssext83, %_public_icast82
  %_public_truncbinop85 = trunc i64 %_public_addtmp84 to i32
  %_public_lval86 = load i32, i32* %_public___v15_inp
  %_public_ugttmp87 = icmp ugt i32 %_public_truncbinop85, %_public_lval86
  %_public_zexttmp88 = zext i1 %_public_ugttmp87 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp88)
  %_public_lval89 = load i32, i32* %_public___v15_inp
  %_public_lhssext90 = zext i32 %_public_lval89 to i64
  %_public_ugtetmp91 = icmp uge i64 %_public_lhssext90, 0
  %_public_zexttmp92 = zext i1 %_public_ugtetmp91 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp92)
  %_public_lval93 = load i32, i32* %_public___v15_inp
  %_public_lval94 = load i32, i32* %_public____in_len
  %_public_icast95 = zext i32 %_public_lval94 to i64
  %_public_lhssext96 = zext i32 %_public_lval93 to i64
  %_public_ulttmp97 = icmp ult i64 %_public_lhssext96, %_public_icast95
  %_public_zexttmp98 = zext i1 %_public_ulttmp97 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp98)
  %_public_lval99 = load i32, i32* %_public___v15_inp
  %_public_lval100 = load i32, i32* %_public___v20___v19_len
  %_public_icast101 = zext i32 %_public_lval100 to i64
  %_public_lhssext102 = zext i32 %_public_lval99 to i64
  %_public_addtmp103 = add i64 %_public_lhssext102, %_public_icast101
  %_public_truncbinop104 = trunc i64 %_public_addtmp103 to i32
  %_public_subtmp105 = sub i32 %_public_truncbinop104, 1
  %_public_lhssext106 = zext i32 %_public_subtmp105 to i64
  %_public_ugtetmp107 = icmp uge i64 %_public_lhssext106, 0
  %_public_zexttmp108 = zext i1 %_public_ugtetmp107 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp108)
  %_public_lval109 = load i32, i32* %_public___v15_inp
  %_public_lval110 = load i32, i32* %_public___v20___v19_len
  %_public_icast111 = zext i32 %_public_lval110 to i64
  %_public_lhssext112 = zext i32 %_public_lval109 to i64
  %_public_addtmp113 = add i64 %_public_lhssext112, %_public_icast111
  %_public_truncbinop114 = trunc i64 %_public_addtmp113 to i32
  %_public_subtmp115 = sub i32 %_public_truncbinop114, 1
  %_public_lval116 = load i32, i32* %_public____in_len
  %_public_icast117 = zext i32 %_public_lval116 to i64
  %_public_lhssext118 = zext i32 %_public_subtmp115 to i64
  %_public_ulttmp119 = icmp ult i64 %_public_lhssext118, %_public_icast117
  %_public_zexttmp120 = zext i1 %_public_ulttmp119 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp120)
  %_public_lval121 = load i32, i32* %_public___v15_inp
  %_secret_ldedviewptr122 = load i8*, i8** %_secret_arrarg5
  %_secret_source_gep123 = getelementptr inbounds i8, i8* %_secret_ldedviewptr122, i32 %_public_lval121
  %_secret_arrviewdyn124 = alloca i8*
  store i8* %_secret_source_gep123, i8** %_secret_arrviewdyn124
  %_secret_dynarrarg125 = load i8*, i8** %_secret_arrviewdyn124
  %_public_lval126 = load i32, i32* %_public___v16_outp
  %_public_lval127 = load i32, i32* %_public___v22___v21_len
  %_public_icast128 = zext i32 %_public_lval127 to i64
  %_public_lhssext129 = zext i32 %_public_lval126 to i64
  %_public_addtmp130 = add i64 %_public_lhssext129, %_public_icast128
  %_public_truncbinop131 = trunc i64 %_public_addtmp130 to i32
  %_public_lval132 = load i32, i32* %_public___v16_outp
  %_public_ugttmp133 = icmp ugt i32 %_public_truncbinop131, %_public_lval132
  %_public_zexttmp134 = zext i1 %_public_ugttmp133 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp134)
  %_public_lval135 = load i32, i32* %_public___v16_outp
  %_public_lhssext136 = zext i32 %_public_lval135 to i64
  %_public_ugtetmp137 = icmp uge i64 %_public_lhssext136, 0
  %_public_zexttmp138 = zext i1 %_public_ugtetmp137 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp138)
  %_public_lval139 = load i32, i32* %_public___v16_outp
  %_public_lval140 = load i32, i32* %_public____out_len
  %_public_icast141 = zext i32 %_public_lval140 to i64
  %_public_lhssext142 = zext i32 %_public_lval139 to i64
  %_public_ulttmp143 = icmp ult i64 %_public_lhssext142, %_public_icast141
  %_public_zexttmp144 = zext i1 %_public_ulttmp143 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp144)
  %_public_lval145 = load i32, i32* %_public___v16_outp
  %_public_lval146 = load i32, i32* %_public___v22___v21_len
  %_public_icast147 = zext i32 %_public_lval146 to i64
  %_public_lhssext148 = zext i32 %_public_lval145 to i64
  %_public_addtmp149 = add i64 %_public_lhssext148, %_public_icast147
  %_public_truncbinop150 = trunc i64 %_public_addtmp149 to i32
  %_public_subtmp151 = sub i32 %_public_truncbinop150, 1
  %_public_lhssext152 = zext i32 %_public_subtmp151 to i64
  %_public_ugtetmp153 = icmp uge i64 %_public_lhssext152, 0
  %_public_zexttmp154 = zext i1 %_public_ugtetmp153 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp154)
  %_public_lval155 = load i32, i32* %_public___v16_outp
  %_public_lval156 = load i32, i32* %_public___v22___v21_len
  %_public_icast157 = zext i32 %_public_lval156 to i64
  %_public_lhssext158 = zext i32 %_public_lval155 to i64
  %_public_addtmp159 = add i64 %_public_lhssext158, %_public_icast157
  %_public_truncbinop160 = trunc i64 %_public_addtmp159 to i32
  %_public_subtmp161 = sub i32 %_public_truncbinop160, 1
  %_public_lval162 = load i32, i32* %_public____out_len
  %_public_icast163 = zext i32 %_public_lval162 to i64
  %_public_lhssext164 = zext i32 %_public_subtmp161 to i64
  %_public_ulttmp165 = icmp ult i64 %_public_lhssext164, %_public_icast163
  %_public_zexttmp166 = zext i1 %_public_ulttmp165 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp166)
  %_public_lval167 = load i32, i32* %_public___v16_outp
  %_secret_ldedviewptr168 = load i8*, i8** %_secret_arrarg2
  %_secret_source_gep169 = getelementptr inbounds i8, i8* %_secret_ldedviewptr168, i32 %_public_lval167
  %_secret_arrviewdyn170 = alloca i8*
  store i8* %_secret_source_gep169, i8** %_secret_arrviewdyn170
  %_public_lval171 = load i32, i32* %_public___v16_outp
  %_public_lval172 = load i32, i32* %_public___v22___v21_len
  %_public_icast173 = zext i32 %_public_lval172 to i64
  %_public_lhssext174 = zext i32 %_public_lval171 to i64
  %_public_addtmp175 = add i64 %_public_lhssext174, %_public_icast173
  %_public_truncbinop176 = trunc i64 %_public_addtmp175 to i32
  %_public_lval177 = load i32, i32* %_public___v16_outp
  %_public_ugttmp178 = icmp ugt i32 %_public_truncbinop176, %_public_lval177
  %_public_zexttmp179 = zext i1 %_public_ugttmp178 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp179)
  %_public_lval180 = load i32, i32* %_public___v16_outp
  %_public_lhssext181 = zext i32 %_public_lval180 to i64
  %_public_ugtetmp182 = icmp uge i64 %_public_lhssext181, 0
  %_public_zexttmp183 = zext i1 %_public_ugtetmp182 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp183)
  %_public_lval184 = load i32, i32* %_public___v16_outp
  %_public_lval185 = load i32, i32* %_public____out_len
  %_public_icast186 = zext i32 %_public_lval185 to i64
  %_public_lhssext187 = zext i32 %_public_lval184 to i64
  %_public_ulttmp188 = icmp ult i64 %_public_lhssext187, %_public_icast186
  %_public_zexttmp189 = zext i1 %_public_ulttmp188 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp189)
  %_public_lval190 = load i32, i32* %_public___v16_outp
  %_public_lval191 = load i32, i32* %_public___v22___v21_len
  %_public_icast192 = zext i32 %_public_lval191 to i64
  %_public_lhssext193 = zext i32 %_public_lval190 to i64
  %_public_addtmp194 = add i64 %_public_lhssext193, %_public_icast192
  %_public_truncbinop195 = trunc i64 %_public_addtmp194 to i32
  %_public_subtmp196 = sub i32 %_public_truncbinop195, 1
  %_public_lhssext197 = zext i32 %_public_subtmp196 to i64
  %_public_ugtetmp198 = icmp uge i64 %_public_lhssext197, 0
  %_public_zexttmp199 = zext i1 %_public_ugtetmp198 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp199)
  %_public_lval200 = load i32, i32* %_public___v16_outp
  %_public_lval201 = load i32, i32* %_public___v22___v21_len
  %_public_icast202 = zext i32 %_public_lval201 to i64
  %_public_lhssext203 = zext i32 %_public_lval200 to i64
  %_public_addtmp204 = add i64 %_public_lhssext203, %_public_icast202
  %_public_truncbinop205 = trunc i64 %_public_addtmp204 to i32
  %_public_subtmp206 = sub i32 %_public_truncbinop205, 1
  %_public_lval207 = load i32, i32* %_public____out_len
  %_public_icast208 = zext i32 %_public_lval207 to i64
  %_public_lhssext209 = zext i32 %_public_subtmp206 to i64
  %_public_ulttmp210 = icmp ult i64 %_public_lhssext209, %_public_icast208
  %_public_zexttmp211 = zext i1 %_public_ulttmp210 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp211)
  %_public_lval212 = load i32, i32* %_public___v16_outp
  %_secret_ldedviewptr213 = load i8*, i8** %_secret_arrarg2
  %_secret_source_gep214 = getelementptr inbounds i8, i8* %_secret_ldedviewptr213, i32 %_public_lval212
  %_secret_arrviewdyn215 = alloca i8*
  store i8* %_secret_source_gep214, i8** %_secret_arrviewdyn215
  %_secret_dynarrarg216 = load i8*, i8** %_secret_arrviewdyn215
  %_public_lval217 = load i32, i32* %_public___v17__len
  %_public_zexttmp218 = zext i32 %_public_lval217 to i64
  %_public_structgep = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 0
  %_secret_structgep = getelementptr inbounds %AES_KEY, %AES_KEY* %_public_structgep, i32 0, i32 0
  %_public_structgep219 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 0
  %_secret_structgep220 = getelementptr inbounds %AES_KEY, %AES_KEY* %_public_structgep219, i32 0, i32 0
  %_secret_arrtoptr = bitcast [60 x i32]* %_secret_structgep220 to i32*
  %_secret_dynarrarg221 = load i8*, i8** %_secret_arrarg
  call void @aesni_cbc_encrypt(i8* %_secret_dynarrarg125, i8* %_secret_dynarrarg216, i64 %_public_zexttmp218, i32* %_secret_arrtoptr, i8* %_secret_dynarrarg221, i32 0)
  %_public_lval222 = load i32, i32* %_public____out_len
  %_public_subtmp223 = sub i32 %_public_lval222, 1
  %_public_lhssext224 = zext i32 %_public_subtmp223 to i64
  %_public_ugtetmp225 = icmp uge i64 %_public_lhssext224, 0
  %_public_zexttmp226 = zext i1 %_public_ugtetmp225 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp226)
  %_public_lval227 = load i32, i32* %_public____out_len
  %_public_subtmp228 = sub i32 %_public_lval227, 1
  %_public_lval229 = load i32, i32* %_public____out_len
  %_public_icast230 = zext i32 %_public_lval229 to i64
  %_public_lhssext231 = zext i32 %_public_subtmp228 to i64
  %_public_ulttmp232 = icmp ult i64 %_public_lhssext231, %_public_icast230
  %_public_zexttmp233 = zext i1 %_public_ulttmp232 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp233)
  %_public_lval234 = load i32, i32* %_public____out_len
  %_public_subtmp235 = sub i32 %_public_lval234, 1
  %_secret_dyn = load i8*, i8** %_secret_arrarg2
  %_secret_ptr = getelementptr inbounds i8, i8* %_secret_dyn, i32 %_public_subtmp235
  %_secret_lval236 = load i8, i8* %_secret_ptr
  %_secret_zexttmp = zext i8 %_secret_lval236 to i32
  store i32 %_secret_zexttmp, i32* %_secret___v23_pad
  %_public_lval237 = load i32, i32* %_public___v17__len
  %_public_lval238 = load i32, i32* %_public___v11_SHA_DIGEST_LENGTH
  %_public_addtmp239 = add i32 %_public_lval238, 1
  %_public_subtmp240 = sub i32 %_public_lval237, %_public_addtmp239
  store i32 %_public_subtmp240, i32* %_public___v24_tmppad
  %_public_lval241 = load i32, i32* %_public___v24_tmppad
  %_public_ugttmp242 = icmp ugt i32 %_public_lval241, 255
  %_public_condtmp = icmp ne i1 %_public_ugttmp242, false
  %_public_lval243 = load i32, i32* %_public___v24_tmppad
  %_public_terntmp = select i1 %_public_condtmp, i32 255, i32 %_public_lval243
  store i32 %_public_terntmp, i32* %_public___v25_maxpad
  %_secret_lval244 = load i32, i32* %_secret___v23_pad
  %_public_lval245 = load i32, i32* %_public___v25_maxpad
  %_secret_ugttmp = icmp ugt i32 %_secret_lval244, %_public_lval245
  store i1 %_secret_ugttmp, i1* %_secret___m3
  %_secret_lval246 = load i1, i1* %_secret___m3
  %_secret_landtmp = and i1 true, %_secret_lval246
  %_secret_lval247 = load i1, i1* %_secret___rnset
  %_secret_landtmp248 = and i1 %_secret_landtmp, %_secret_lval247
  %_secret_condtmp = icmp ne i1 %_secret_landtmp248, false
  %_public_lval249 = load i32, i32* %_public___v25_maxpad
  %_secret_lval250 = load i32, i32* %_secret___v23_pad
  %_secret_selecttmp = call i32 @select.cmov.sel.i32(i1 %_secret_condtmp, i32 %_public_lval249, i32 %_secret_lval250)
  store i32 %_secret_selecttmp, i32* %_secret___v23_pad
  %_secret_lval251 = load i1, i1* %_secret___m3
  %_secret_landtmp252 = and i1 true, %_secret_lval251
  %_secret_lval253 = load i1, i1* %_secret___rnset
  %_secret_landtmp254 = and i1 %_secret_landtmp252, %_secret_lval253
  %_secret_condtmp255 = icmp ne i1 %_secret_landtmp254, false
  %_secret_lval256 = load i32, i32* %_secret___v18_ret
  %_secret_selecttmp257 = call i32 @select.cmov.sel.i32(i1 %_secret_condtmp255, i32 0, i32 %_secret_lval256)
  store i32 %_secret_selecttmp257, i32* %_secret___v18_ret
  %_secret_lval258 = load i1, i1* %_secret___m3
  %_secret_lnottmp = xor i1 %_secret_lval258, true
  store i1 %_secret_lnottmp, i1* %_secret___m3
  %_public_lval259 = load i32, i32* %_public___v17__len
  %_public_lval260 = load i32, i32* %_public___v11_SHA_DIGEST_LENGTH
  %_secret_lval261 = load i32, i32* %_secret___v23_pad
  %_secret_addtmp = add i32 %_public_lval260, %_secret_lval261
  %_secret_addtmp262 = add i32 %_secret_addtmp, 1
  %_secret_subtmp = sub i32 %_public_lval259, %_secret_addtmp262
  store i32 %_secret_subtmp, i32* %_secret___v26_inp_len
  %_public_lval263 = load i64, i64* %_public_plen
  %_public_subtmp264 = sub i64 %_public_lval263, 2
  %_public_addtmp265 = add i64 %_public_subtmp264, 2
  %_public_lval266 = load i64, i64* %_public_plen
  %_public_subtmp267 = sub i64 %_public_lval266, 2
  %_public_ugttmp268 = icmp ugt i64 %_public_addtmp265, %_public_subtmp267
  %_public_zexttmp269 = zext i1 %_public_ugttmp268 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp269)
  %_public_lval270 = load i64, i64* %_public_plen
  %_public_subtmp271 = sub i64 %_public_lval270, 2
  %_public_ugtetmp272 = icmp uge i64 %_public_subtmp271, 0
  %_public_zexttmp273 = zext i1 %_public_ugtetmp272 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp273)
  %_public_lval274 = load i64, i64* %_public_plen
  %_public_subtmp275 = sub i64 %_public_lval274, 2
  %_public_ulttmp276 = icmp ult i64 %_public_subtmp275, 16
  %_public_zexttmp277 = zext i1 %_public_ulttmp276 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp277)
  %_public_lval278 = load i64, i64* %_public_plen
  %_public_subtmp279 = sub i64 %_public_lval278, 2
  %_public_addtmp280 = add i64 %_public_subtmp279, 2
  %_public_subtmp281 = sub i64 %_public_addtmp280, 1
  %_public_ugtetmp282 = icmp uge i64 %_public_subtmp281, 0
  %_public_zexttmp283 = zext i1 %_public_ugtetmp282 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp283)
  %_public_lval284 = load i64, i64* %_public_plen
  %_public_subtmp285 = sub i64 %_public_lval284, 2
  %_public_addtmp286 = add i64 %_public_subtmp285, 2
  %_public_subtmp287 = sub i64 %_public_addtmp286, 1
  %_public_ulttmp288 = icmp ult i64 %_public_subtmp287, 16
  %_public_zexttmp289 = zext i1 %_public_ulttmp288 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp289)
  %_public_lval290 = load i64, i64* %_public_plen
  %_public_subtmp291 = sub i64 %_public_lval290, 2
  %_secret_structgep292 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 5
  %_secret_arrview = alloca i8*
  %_secret_source_gep293 = getelementptr inbounds [16 x i8], [16 x i8]* %_secret_structgep292, i64 0, i64 %_public_subtmp291
  store i8* %_secret_source_gep293, i8** %_secret_arrview
  %_public_lval294 = load i64, i64* %_public_plen
  %_public_subtmp295 = sub i64 %_public_lval294, 2
  %_public_addtmp296 = add i64 %_public_subtmp295, 2
  %_public_lval297 = load i64, i64* %_public_plen
  %_public_subtmp298 = sub i64 %_public_lval297, 2
  %_public_ugttmp299 = icmp ugt i64 %_public_addtmp296, %_public_subtmp298
  %_public_zexttmp300 = zext i1 %_public_ugttmp299 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp300)
  %_public_lval301 = load i64, i64* %_public_plen
  %_public_subtmp302 = sub i64 %_public_lval301, 2
  %_public_ugtetmp303 = icmp uge i64 %_public_subtmp302, 0
  %_public_zexttmp304 = zext i1 %_public_ugtetmp303 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp304)
  %_public_lval305 = load i64, i64* %_public_plen
  %_public_subtmp306 = sub i64 %_public_lval305, 2
  %_public_ulttmp307 = icmp ult i64 %_public_subtmp306, 16
  %_public_zexttmp308 = zext i1 %_public_ulttmp307 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp308)
  %_public_lval309 = load i64, i64* %_public_plen
  %_public_subtmp310 = sub i64 %_public_lval309, 2
  %_public_addtmp311 = add i64 %_public_subtmp310, 2
  %_public_subtmp312 = sub i64 %_public_addtmp311, 1
  %_public_ugtetmp313 = icmp uge i64 %_public_subtmp312, 0
  %_public_zexttmp314 = zext i1 %_public_ugtetmp313 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp314)
  %_public_lval315 = load i64, i64* %_public_plen
  %_public_subtmp316 = sub i64 %_public_lval315, 2
  %_public_addtmp317 = add i64 %_public_subtmp316, 2
  %_public_subtmp318 = sub i64 %_public_addtmp317, 1
  %_public_ulttmp319 = icmp ult i64 %_public_subtmp318, 16
  %_public_zexttmp320 = zext i1 %_public_ulttmp319 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp320)
  %_public_lval321 = load i64, i64* %_public_plen
  %_public_subtmp322 = sub i64 %_public_lval321, 2
  %_secret_structgep323 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 5
  %_secret_arrview324 = alloca i8*
  %_secret_source_gep325 = getelementptr inbounds [16 x i8], [16 x i8]* %_secret_structgep323, i64 0, i64 %_public_subtmp322
  store i8* %_secret_source_gep325, i8** %_secret_arrview324
  %_secret_dynarrarg326 = load i8*, i8** %_secret_arrview324
  %_secret_lval327 = load i32, i32* %_secret___v26_inp_len
  %_secret_ucast = trunc i32 %_secret_lval327 to i16
  call void @store16_be(i8* %_secret_dynarrarg326, i16 %_secret_ucast)
  %_public_structgep328 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_public_structgep329 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 1
  call void @_structcopy_SHA_CTX(%SHA_CTX* %_public_structgep328, %SHA_CTX* %_public_structgep329)
  %_public_lval330 = load i64, i64* %_public_plen
  %_public_trunctmp = trunc i64 %_public_lval330 to i32
  store i32 %_public_trunctmp, i32* %_public___v28___v27_len
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_public_structgep331 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep332 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep331, i32 0, i32 0
  %_secret_ptr333 = getelementptr inbounds [5 x i32], [5 x i32]* %_secret_structgep332, i8 0, i8 0
  %_public_lval334 = load i32, i32* %_public___v28___v27_len
  %_public_icast335 = zext i32 %_public_lval334 to i64
  %_public_addtmp336 = add i64 0, %_public_icast335
  %_public_truncbinop337 = trunc i64 %_public_addtmp336 to i8
  %_public_sgttmp = icmp sgt i8 %_public_truncbinop337, 0
  %_public_zexttmp338 = zext i1 %_public_sgttmp to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp338)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_public_lval339 = load i32, i32* %_public___v28___v27_len
  %_public_icast340 = zext i32 %_public_lval339 to i64
  %_public_addtmp341 = add i64 0, %_public_icast340
  %_public_truncbinop342 = trunc i64 %_public_addtmp341 to i8
  %_public_subtmp343 = sub i8 %_public_truncbinop342, 1
  %_public_lhssext344 = sext i8 %_public_subtmp343 to i64
  %_public_sgtetmp = icmp sge i64 %_public_lhssext344, 0
  %_public_zexttmp345 = zext i1 %_public_sgtetmp to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp345)
  %_public_lval346 = load i32, i32* %_public___v28___v27_len
  %_public_icast347 = zext i32 %_public_lval346 to i64
  %_public_addtmp348 = add i64 0, %_public_icast347
  %_public_truncbinop349 = trunc i64 %_public_addtmp348 to i8
  %_public_subtmp350 = sub i8 %_public_truncbinop349, 1
  %_public_lhssext351 = sext i8 %_public_subtmp350 to i64
  %_public_slttmp = icmp slt i64 %_public_lhssext351, 16
  %_public_zexttmp352 = zext i1 %_public_slttmp to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp352)
  %_secret_structgep353 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 5
  %_secret_arrview354 = alloca i8*
  %_secret_source_gep355 = getelementptr inbounds [16 x i8], [16 x i8]* %_secret_structgep353, i8 0, i8 0
  store i8* %_secret_source_gep355, i8** %_secret_arrview354
  %_public_lval356 = load i32, i32* %_public___v28___v27_len
  %_public_icast357 = zext i32 %_public_lval356 to i64
  %_public_addtmp358 = add i64 0, %_public_icast357
  %_public_truncbinop359 = trunc i64 %_public_addtmp358 to i8
  %_public_sgttmp360 = icmp sgt i8 %_public_truncbinop359, 0
  %_public_zexttmp361 = zext i1 %_public_sgttmp360 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp361)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_public_lval362 = load i32, i32* %_public___v28___v27_len
  %_public_icast363 = zext i32 %_public_lval362 to i64
  %_public_addtmp364 = add i64 0, %_public_icast363
  %_public_truncbinop365 = trunc i64 %_public_addtmp364 to i8
  %_public_subtmp366 = sub i8 %_public_truncbinop365, 1
  %_public_lhssext367 = sext i8 %_public_subtmp366 to i64
  %_public_sgtetmp368 = icmp sge i64 %_public_lhssext367, 0
  %_public_zexttmp369 = zext i1 %_public_sgtetmp368 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp369)
  %_public_lval370 = load i32, i32* %_public___v28___v27_len
  %_public_icast371 = zext i32 %_public_lval370 to i64
  %_public_addtmp372 = add i64 0, %_public_icast371
  %_public_truncbinop373 = trunc i64 %_public_addtmp372 to i8
  %_public_subtmp374 = sub i8 %_public_truncbinop373, 1
  %_public_lhssext375 = sext i8 %_public_subtmp374 to i64
  %_public_slttmp376 = icmp slt i64 %_public_lhssext375, 16
  %_public_zexttmp377 = zext i1 %_public_slttmp376 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp377)
  %_secret_structgep378 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 5
  %_secret_arrview379 = alloca i8*
  %_secret_source_gep380 = getelementptr inbounds [16 x i8], [16 x i8]* %_secret_structgep378, i8 0, i8 0
  store i8* %_secret_source_gep380, i8** %_secret_arrview379
  %_secret_dynarrarg381 = load i8*, i8** %_secret_arrview379
  %_public_lval382 = load i64, i64* %_public_plen
  call void @_sha1_update(i32* %_secret_ptr333, i8* %_secret_dynarrarg381, i64 %_public_lval382)
  %_public_lval383 = load i32, i32* %_public___v17__len
  %_public_lval384 = load i32, i32* %_public___v11_SHA_DIGEST_LENGTH
  %_public_subtmp385 = sub i32 %_public_lval383, %_public_lval384
  store i32 %_public_subtmp385, i32* %_public___v17__len
  %_public_lval386 = load i32, i32* %_public___v17__len
  %_public_lval387 = load i32, i32* %_public___v14_SHA_CBLOCK
  %_public_addtmp388 = add i32 256, %_public_lval387
  %_public_ugtetmp389 = icmp uge i32 %_public_lval386, %_public_addtmp388
  %_public_branchcompare390 = icmp eq i1 %_public_ugtetmp389, true
  br i1 %_public_branchcompare390, label %thenbranch391, label %elsebranch510

thenbranch391:                                    ; preds = %branchmerge39
  %_public_lval392 = load i32, i32* %_public___v17__len
  %_public_lval393 = load i32, i32* %_public___v14_SHA_CBLOCK
  %_public_addtmp394 = add i32 256, %_public_lval393
  %_public_subtmp395 = sub i32 %_public_lval392, %_public_addtmp394
  %_public_lval396 = load i32, i32* %_public___v14_SHA_CBLOCK
  %_public_subtmp397 = sub i32 0, %_public_lval396
  %_public_andtmp = and i32 %_public_subtmp395, %_public_subtmp397
  %_public_lval398 = load i32, i32* %_public___v14_SHA_CBLOCK
  %_public_addtmp399 = add i32 %_public_andtmp, %_public_lval398
  %_public_structgep400 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_public_structgep401 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep400, i32 0, i32 4
  %_public_lval402 = load i32, i32* %_public_structgep401
  %_public_subtmp403 = sub i32 %_public_addtmp399, %_public_lval402
  store i32 %_public_subtmp403, i32* %_public___v29_j
  %_public_lval404 = load i32, i32* %_public___v29_j
  store i32 %_public_lval404, i32* %_public___v31___v30_len
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_public_structgep405 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep406 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep405, i32 0, i32 0
  %_secret_ptr407 = getelementptr inbounds [5 x i32], [5 x i32]* %_secret_structgep406, i8 0, i8 0
  %_public_lval408 = load i32, i32* %_public___v16_outp
  %_public_lval409 = load i32, i32* %_public___v31___v30_len
  %_public_icast410 = zext i32 %_public_lval409 to i64
  %_public_lhssext411 = zext i32 %_public_lval408 to i64
  %_public_addtmp412 = add i64 %_public_lhssext411, %_public_icast410
  %_public_truncbinop413 = trunc i64 %_public_addtmp412 to i32
  %_public_lval414 = load i32, i32* %_public___v16_outp
  %_public_ugttmp415 = icmp ugt i32 %_public_truncbinop413, %_public_lval414
  %_public_zexttmp416 = zext i1 %_public_ugttmp415 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp416)
  %_public_lval417 = load i32, i32* %_public___v16_outp
  %_public_lhssext418 = zext i32 %_public_lval417 to i64
  %_public_ugtetmp419 = icmp uge i64 %_public_lhssext418, 0
  %_public_zexttmp420 = zext i1 %_public_ugtetmp419 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp420)
  %_public_lval421 = load i32, i32* %_public___v16_outp
  %_public_lval422 = load i32, i32* %_public____out_len
  %_public_icast423 = zext i32 %_public_lval422 to i64
  %_public_lhssext424 = zext i32 %_public_lval421 to i64
  %_public_ulttmp425 = icmp ult i64 %_public_lhssext424, %_public_icast423
  %_public_zexttmp426 = zext i1 %_public_ulttmp425 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp426)
  %_public_lval427 = load i32, i32* %_public___v16_outp
  %_public_lval428 = load i32, i32* %_public___v31___v30_len
  %_public_icast429 = zext i32 %_public_lval428 to i64
  %_public_lhssext430 = zext i32 %_public_lval427 to i64
  %_public_addtmp431 = add i64 %_public_lhssext430, %_public_icast429
  %_public_truncbinop432 = trunc i64 %_public_addtmp431 to i32
  %_public_subtmp433 = sub i32 %_public_truncbinop432, 1
  %_public_lhssext434 = zext i32 %_public_subtmp433 to i64
  %_public_ugtetmp435 = icmp uge i64 %_public_lhssext434, 0
  %_public_zexttmp436 = zext i1 %_public_ugtetmp435 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp436)
  %_public_lval437 = load i32, i32* %_public___v16_outp
  %_public_lval438 = load i32, i32* %_public___v31___v30_len
  %_public_icast439 = zext i32 %_public_lval438 to i64
  %_public_lhssext440 = zext i32 %_public_lval437 to i64
  %_public_addtmp441 = add i64 %_public_lhssext440, %_public_icast439
  %_public_truncbinop442 = trunc i64 %_public_addtmp441 to i32
  %_public_subtmp443 = sub i32 %_public_truncbinop442, 1
  %_public_lval444 = load i32, i32* %_public____out_len
  %_public_icast445 = zext i32 %_public_lval444 to i64
  %_public_lhssext446 = zext i32 %_public_subtmp443 to i64
  %_public_ulttmp447 = icmp ult i64 %_public_lhssext446, %_public_icast445
  %_public_zexttmp448 = zext i1 %_public_ulttmp447 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp448)
  %_public_lval449 = load i32, i32* %_public___v16_outp
  %_secret_ldedviewptr450 = load i8*, i8** %_secret_arrarg2
  %_secret_source_gep451 = getelementptr inbounds i8, i8* %_secret_ldedviewptr450, i32 %_public_lval449
  %_secret_arrviewdyn452 = alloca i8*
  store i8* %_secret_source_gep451, i8** %_secret_arrviewdyn452
  %_public_lval453 = load i32, i32* %_public___v16_outp
  %_public_lval454 = load i32, i32* %_public___v31___v30_len
  %_public_icast455 = zext i32 %_public_lval454 to i64
  %_public_lhssext456 = zext i32 %_public_lval453 to i64
  %_public_addtmp457 = add i64 %_public_lhssext456, %_public_icast455
  %_public_truncbinop458 = trunc i64 %_public_addtmp457 to i32
  %_public_lval459 = load i32, i32* %_public___v16_outp
  %_public_ugttmp460 = icmp ugt i32 %_public_truncbinop458, %_public_lval459
  %_public_zexttmp461 = zext i1 %_public_ugttmp460 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp461)
  %_public_lval462 = load i32, i32* %_public___v16_outp
  %_public_lhssext463 = zext i32 %_public_lval462 to i64
  %_public_ugtetmp464 = icmp uge i64 %_public_lhssext463, 0
  %_public_zexttmp465 = zext i1 %_public_ugtetmp464 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp465)
  %_public_lval466 = load i32, i32* %_public___v16_outp
  %_public_lval467 = load i32, i32* %_public____out_len
  %_public_icast468 = zext i32 %_public_lval467 to i64
  %_public_lhssext469 = zext i32 %_public_lval466 to i64
  %_public_ulttmp470 = icmp ult i64 %_public_lhssext469, %_public_icast468
  %_public_zexttmp471 = zext i1 %_public_ulttmp470 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp471)
  %_public_lval472 = load i32, i32* %_public___v16_outp
  %_public_lval473 = load i32, i32* %_public___v31___v30_len
  %_public_icast474 = zext i32 %_public_lval473 to i64
  %_public_lhssext475 = zext i32 %_public_lval472 to i64
  %_public_addtmp476 = add i64 %_public_lhssext475, %_public_icast474
  %_public_truncbinop477 = trunc i64 %_public_addtmp476 to i32
  %_public_subtmp478 = sub i32 %_public_truncbinop477, 1
  %_public_lhssext479 = zext i32 %_public_subtmp478 to i64
  %_public_ugtetmp480 = icmp uge i64 %_public_lhssext479, 0
  %_public_zexttmp481 = zext i1 %_public_ugtetmp480 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp481)
  %_public_lval482 = load i32, i32* %_public___v16_outp
  %_public_lval483 = load i32, i32* %_public___v31___v30_len
  %_public_icast484 = zext i32 %_public_lval483 to i64
  %_public_lhssext485 = zext i32 %_public_lval482 to i64
  %_public_addtmp486 = add i64 %_public_lhssext485, %_public_icast484
  %_public_truncbinop487 = trunc i64 %_public_addtmp486 to i32
  %_public_subtmp488 = sub i32 %_public_truncbinop487, 1
  %_public_lval489 = load i32, i32* %_public____out_len
  %_public_icast490 = zext i32 %_public_lval489 to i64
  %_public_lhssext491 = zext i32 %_public_subtmp488 to i64
  %_public_ulttmp492 = icmp ult i64 %_public_lhssext491, %_public_icast490
  %_public_zexttmp493 = zext i1 %_public_ulttmp492 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp493)
  %_public_lval494 = load i32, i32* %_public___v16_outp
  %_secret_ldedviewptr495 = load i8*, i8** %_secret_arrarg2
  %_secret_source_gep496 = getelementptr inbounds i8, i8* %_secret_ldedviewptr495, i32 %_public_lval494
  %_secret_arrviewdyn497 = alloca i8*
  store i8* %_secret_source_gep496, i8** %_secret_arrviewdyn497
  %_secret_dynarrarg498 = load i8*, i8** %_secret_arrviewdyn497
  %_public_lval499 = load i32, i32* %_public___v29_j
  %_public_zexttmp500 = zext i32 %_public_lval499 to i64
  call void @_sha1_update(i32* %_secret_ptr407, i8* %_secret_dynarrarg498, i64 %_public_zexttmp500)
  %_public_lval501 = load i32, i32* %_public___v16_outp
  %_public_lval502 = load i32, i32* %_public___v29_j
  %_public_addtmp503 = add i32 %_public_lval501, %_public_lval502
  store i32 %_public_addtmp503, i32* %_public___v16_outp
  %_public_lval504 = load i32, i32* %_public___v17__len
  %_public_lval505 = load i32, i32* %_public___v29_j
  %_public_subtmp506 = sub i32 %_public_lval504, %_public_lval505
  store i32 %_public_subtmp506, i32* %_public___v17__len
  %_secret_lval507 = load i32, i32* %_secret___v26_inp_len
  %_public_lval508 = load i32, i32* %_public___v29_j
  %_secret_subtmp509 = sub i32 %_secret_lval507, %_public_lval508
  store i32 %_secret_subtmp509, i32* %_secret___v26_inp_len
  br label %branchmerge511

elsebranch510:                                    ; preds = %branchmerge39
  br label %branchmerge511

branchmerge511:                                   ; preds = %elsebranch510, %thenbranch391
  %_public_structgep512 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep513 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep512, i32 0, i32 1
  %_secret_lval514 = load i32, i32* %_secret_structgep513
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval515 = load i32, i32* %_secret___v26_inp_len
  %_secret_lshift = shl i32 %_secret_lval515, 3
  %_secret_addtmp516 = add i32 %_secret_lval514, %_secret_lshift
  %_secret_calltmp = call i32 @bswap4(i32 %_secret_addtmp516)
  store i32 %_secret_calltmp, i32* %_secret___v32_bitlen
  %_secret___v33_pmac = alloca [20 x i8], align 32
  %_secret_sourcecasted = bitcast [20 x i8]* %_secret___v33_pmac to i8*
  call void @llvm.memset.p0i8.i64(i8* %_secret_sourcecasted, i8 0, i64 20, i32 0, i1 false)
  %_public_structgep517 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_public_structgep518 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep517, i32 0, i32 4
  %_public_lval519 = load i32, i32* %_public_structgep518
  store i32 %_public_lval519, i32* %_public___v34_p_res
  %_public_calltmp = call i32 @__VERIFIER_nondet_unsigned_int()
  store i32 %_public_calltmp, i32* %_public___v35_j
  %_public_lval520 = load i32, i32* %_public___v35_j
  %_public_lval521 = load i32, i32* %_public___v17__len
  %_public_ulttmp522 = icmp ult i32 %_public_lval520, %_public_lval521
  %_public_branchcompare523 = icmp eq i1 %_public_ulttmp522, true
  br i1 %_public_branchcompare523, label %thenbranch524, label %elsebranch802

thenbranch524:                                    ; preds = %branchmerge511
  %_public_lval525 = load i32, i32* %_public___v35_j
  %_public_lval526 = load i32, i32* %_public___v35_j
  %_public_addtmp527 = add i32 %_public_lval526, 1
  %_public_ulttmp528 = icmp ult i32 %_public_lval525, %_public_addtmp527
  %_public_zexttmp529 = zext i1 %_public_ulttmp528 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp529)
  %_public_lval530 = load i32, i32* %_public___v35_j
  %_public_ulttmp531 = icmp ult i32 0, %_public_lval530
  %_public_lval532 = load i32, i32* %_public___v35_j
  %_public_eqtmp = icmp eq i32 0, %_public_lval532
  %_public_lortmp = or i1 %_public_ulttmp531, %_public_eqtmp
  %_public_zexttmp533 = zext i1 %_public_lortmp to i32
  call void @__VERIFIER_assume(i32 %_public_zexttmp533)
  %_public_lval534 = load i32, i32* %_public___v34_p_res
  %_public_lhssext535 = zext i32 %_public_lval534 to i64
  %_public_ugtetmp536 = icmp uge i64 %_public_lhssext535, 0
  %_public_zexttmp537 = zext i1 %_public_ugtetmp536 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp537)
  %_public_lval538 = load i32, i32* %_public___v34_p_res
  %_public_lhssext539 = zext i32 %_public_lval538 to i64
  %_public_ulttmp540 = icmp ult i64 %_public_lhssext539, 64
  %_public_zexttmp541 = zext i1 %_public_ulttmp540 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp541)
  %_public_structgep542 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep543 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep542, i32 0, i32 3
  %_public_lval544 = load i32, i32* %_public___v34_p_res
  %_secret_ptr545 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep543, i32 0, i32 %_public_lval544
  store i8 0, i8* %_secret___m4
  %_public_lval546 = load i32, i32* %_public___v35_j
  %_secret_lval547 = load i32, i32* %_secret___v26_inp_len
  %_secret_ulttmp = icmp ult i32 %_public_lval546, %_secret_lval547
  store i1 %_secret_ulttmp, i1* %_secret___m5
  %_secret_lval548 = load i1, i1* %_secret___m5
  %_secret_landtmp549 = and i1 true, %_secret_lval548
  %_secret_lval550 = load i1, i1* %_secret___rnset
  %_secret_landtmp551 = and i1 %_secret_landtmp549, %_secret_lval550
  %_secret_condtmp552 = icmp ne i1 %_secret_landtmp551, false
  %_public_lval553 = load i32, i32* %_public___v16_outp
  %_public_lval554 = load i32, i32* %_public___v35_j
  %_public_addtmp555 = add i32 %_public_lval553, %_public_lval554
  %_public_lhssext556 = zext i32 %_public_addtmp555 to i64
  %_public_ugtetmp557 = icmp uge i64 %_public_lhssext556, 0
  %_public_zexttmp558 = zext i1 %_public_ugtetmp557 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp558)
  %_public_lval559 = load i32, i32* %_public___v16_outp
  %_public_lval560 = load i32, i32* %_public___v35_j
  %_public_addtmp561 = add i32 %_public_lval559, %_public_lval560
  %_public_lval562 = load i32, i32* %_public____out_len
  %_public_icast563 = zext i32 %_public_lval562 to i64
  %_public_lhssext564 = zext i32 %_public_addtmp561 to i64
  %_public_ulttmp565 = icmp ult i64 %_public_lhssext564, %_public_icast563
  %_public_zexttmp566 = zext i1 %_public_ulttmp565 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp566)
  %_public_lval567 = load i32, i32* %_public___v16_outp
  %_public_lval568 = load i32, i32* %_public___v35_j
  %_public_addtmp569 = add i32 %_public_lval567, %_public_lval568
  %_secret_dyn570 = load i8*, i8** %_secret_arrarg2
  %_secret_ptr571 = getelementptr inbounds i8, i8* %_secret_dyn570, i32 %_public_addtmp569
  %_secret_lval572 = load i8, i8* %_secret_ptr571
  %_secret_lval573 = load i8, i8* %_secret___m4
  %_secret_selecttmp574 = call i8 @select.cmov.asm.i8(i1 %_secret_condtmp552, i8 %_secret_lval572, i8 %_secret_lval573)
  store i8 %_secret_selecttmp574, i8* %_secret___m4
  %_secret_lval575 = load i1, i1* %_secret___m5
  %_secret_lnottmp576 = xor i1 %_secret_lval575, true
  store i1 %_secret_lnottmp576, i1* %_secret___m5
  %_secret_lval577 = load i1, i1* %_secret___m5
  %_secret_landtmp578 = and i1 true, %_secret_lval577
  %_secret_lval579 = load i1, i1* %_secret___rnset
  %_secret_landtmp580 = and i1 %_secret_landtmp578, %_secret_lval579
  %_secret_condtmp581 = icmp ne i1 %_secret_landtmp580, false
  store i16 0, i16* %_secret___m6
  %_public_lval582 = load i32, i32* %_public___v35_j
  %_secret_lval583 = load i32, i32* %_secret___v26_inp_len
  %_secret_eqtmp = icmp eq i32 %_public_lval582, %_secret_lval583
  store i1 %_secret_eqtmp, i1* %_secret___m7
  %_secret_lval584 = load i1, i1* %_secret___m7
  %_secret_landtmp585 = and i1 true, %_secret_lval584
  %_secret_lval586 = load i1, i1* %_secret___m5
  %_secret_landtmp587 = and i1 %_secret_landtmp585, %_secret_lval586
  %_secret_lval588 = load i1, i1* %_secret___rnset
  %_secret_landtmp589 = and i1 %_secret_landtmp587, %_secret_lval588
  %_secret_condtmp590 = icmp ne i1 %_secret_landtmp589, false
  %_secret_lval591 = load i16, i16* %_secret___m6
  %_secret_selecttmp592 = call i16 @select.cmov.asm.i16(i1 %_secret_condtmp590, i16 128, i16 %_secret_lval591)
  store i16 %_secret_selecttmp592, i16* %_secret___m6
  %_secret_lval593 = load i1, i1* %_secret___m7
  %_secret_lnottmp594 = xor i1 %_secret_lval593, true
  store i1 %_secret_lnottmp594, i1* %_secret___m7
  %_secret_lval595 = load i1, i1* %_secret___m7
  %_secret_landtmp596 = and i1 true, %_secret_lval595
  %_secret_lval597 = load i1, i1* %_secret___m5
  %_secret_landtmp598 = and i1 %_secret_landtmp596, %_secret_lval597
  %_secret_lval599 = load i1, i1* %_secret___rnset
  %_secret_landtmp600 = and i1 %_secret_landtmp598, %_secret_lval599
  %_secret_condtmp601 = icmp ne i1 %_secret_landtmp600, false
  %_secret_lval602 = load i16, i16* %_secret___m6
  %_secret_selecttmp603 = call i16 @select.cmov.asm.i16(i1 %_secret_condtmp601, i16 0, i16 %_secret_lval602)
  store i16 %_secret_selecttmp603, i16* %_secret___m6
  %_secret___m6604 = load i16, i16* %_secret___m6
  %_secret_trunctmp = trunc i16 %_secret___m6604 to i8
  %_secret_lval605 = load i8, i8* %_secret___m4
  %_secret_selecttmp606 = call i8 @select.cmov.asm.i8(i1 %_secret_condtmp581, i8 %_secret_trunctmp, i8 %_secret_lval605)
  store i8 %_secret_selecttmp606, i8* %_secret___m4
  %_secret___m4607 = load i8, i8* %_secret___m4
  store i8 %_secret___m4607, i8* %_secret_ptr545
  %_public_lval608 = load i32, i32* %_public___v34_p_res
  %_public_addtmp609 = add i32 %_public_lval608, 1
  store i32 %_public_addtmp609, i32* %_public___v34_p_res
  %_public_lval610 = load i32, i32* %_public___v34_p_res
  %_public_lval611 = load i32, i32* %_public___v14_SHA_CBLOCK
  %_public_eqtmp612 = icmp eq i32 %_public_lval610, %_public_lval611
  %_public_branchcompare613 = icmp eq i1 %_public_eqtmp612, true
  br i1 %_public_branchcompare613, label %thenbranch614, label %elsebranch800

thenbranch614:                                    ; preds = %thenbranch524
  %_secret_lval615 = load i32, i32* %_secret___v26_inp_len
  %_secret_addtmp616 = add i32 %_secret_lval615, 7
  %_public_lval617 = load i32, i32* %_public___v35_j
  %_secret_ulttmp618 = icmp ult i32 %_secret_addtmp616, %_public_lval617
  store i1 %_secret_ulttmp618, i1* %_secret___v36_m1
  %_public_lval619 = load i32, i32* %_public___v13_SHA_LBLOCK
  %_public_subtmp620 = sub i32 %_public_lval619, 1
  %_public_multmp621 = mul i32 4, %_public_subtmp620
  %_public_lhssext622 = zext i32 %_public_multmp621 to i64
  %_public_addtmp623 = add i64 %_public_lhssext622, 4
  %_public_truncbinop624 = trunc i64 %_public_addtmp623 to i32
  %_public_lval625 = load i32, i32* %_public___v13_SHA_LBLOCK
  %_public_subtmp626 = sub i32 %_public_lval625, 1
  %_public_multmp627 = mul i32 4, %_public_subtmp626
  %_public_ugttmp628 = icmp ugt i32 %_public_truncbinop624, %_public_multmp627
  %_public_zexttmp629 = zext i1 %_public_ugttmp628 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp629)
  %_public_lval630 = load i32, i32* %_public___v13_SHA_LBLOCK
  %_public_subtmp631 = sub i32 %_public_lval630, 1
  %_public_multmp632 = mul i32 4, %_public_subtmp631
  %_public_lhssext633 = zext i32 %_public_multmp632 to i64
  %_public_ugtetmp634 = icmp uge i64 %_public_lhssext633, 0
  %_public_zexttmp635 = zext i1 %_public_ugtetmp634 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp635)
  %_public_lval636 = load i32, i32* %_public___v13_SHA_LBLOCK
  %_public_subtmp637 = sub i32 %_public_lval636, 1
  %_public_multmp638 = mul i32 4, %_public_subtmp637
  %_public_lhssext639 = zext i32 %_public_multmp638 to i64
  %_public_ulttmp640 = icmp ult i64 %_public_lhssext639, 64
  %_public_zexttmp641 = zext i1 %_public_ulttmp640 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp641)
  %_public_lval642 = load i32, i32* %_public___v13_SHA_LBLOCK
  %_public_subtmp643 = sub i32 %_public_lval642, 1
  %_public_multmp644 = mul i32 4, %_public_subtmp643
  %_public_lhssext645 = zext i32 %_public_multmp644 to i64
  %_public_addtmp646 = add i64 %_public_lhssext645, 4
  %_public_truncbinop647 = trunc i64 %_public_addtmp646 to i32
  %_public_subtmp648 = sub i32 %_public_truncbinop647, 1
  %_public_lhssext649 = zext i32 %_public_subtmp648 to i64
  %_public_ugtetmp650 = icmp uge i64 %_public_lhssext649, 0
  %_public_zexttmp651 = zext i1 %_public_ugtetmp650 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp651)
  %_public_lval652 = load i32, i32* %_public___v13_SHA_LBLOCK
  %_public_subtmp653 = sub i32 %_public_lval652, 1
  %_public_multmp654 = mul i32 4, %_public_subtmp653
  %_public_lhssext655 = zext i32 %_public_multmp654 to i64
  %_public_addtmp656 = add i64 %_public_lhssext655, 4
  %_public_truncbinop657 = trunc i64 %_public_addtmp656 to i32
  %_public_subtmp658 = sub i32 %_public_truncbinop657, 1
  %_public_lhssext659 = zext i32 %_public_subtmp658 to i64
  %_public_ulttmp660 = icmp ult i64 %_public_lhssext659, 64
  %_public_zexttmp661 = zext i1 %_public_ulttmp660 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp661)
  %_public_lval662 = load i32, i32* %_public___v13_SHA_LBLOCK
  %_public_subtmp663 = sub i32 %_public_lval662, 1
  %_public_multmp664 = mul i32 4, %_public_subtmp663
  %_public_structgep665 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep666 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep665, i32 0, i32 3
  %_secret_arrview667 = alloca i8*
  %_secret_source_gep668 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep666, i32 0, i32 %_public_multmp664
  store i8* %_secret_source_gep668, i8** %_secret_arrview667
  %_public_lval669 = load i32, i32* %_public___v13_SHA_LBLOCK
  %_public_subtmp670 = sub i32 %_public_lval669, 1
  %_public_multmp671 = mul i32 4, %_public_subtmp670
  %_public_lhssext672 = zext i32 %_public_multmp671 to i64
  %_public_addtmp673 = add i64 %_public_lhssext672, 4
  %_public_truncbinop674 = trunc i64 %_public_addtmp673 to i32
  %_public_lval675 = load i32, i32* %_public___v13_SHA_LBLOCK
  %_public_subtmp676 = sub i32 %_public_lval675, 1
  %_public_multmp677 = mul i32 4, %_public_subtmp676
  %_public_ugttmp678 = icmp ugt i32 %_public_truncbinop674, %_public_multmp677
  %_public_zexttmp679 = zext i1 %_public_ugttmp678 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp679)
  %_public_lval680 = load i32, i32* %_public___v13_SHA_LBLOCK
  %_public_subtmp681 = sub i32 %_public_lval680, 1
  %_public_multmp682 = mul i32 4, %_public_subtmp681
  %_public_lhssext683 = zext i32 %_public_multmp682 to i64
  %_public_ugtetmp684 = icmp uge i64 %_public_lhssext683, 0
  %_public_zexttmp685 = zext i1 %_public_ugtetmp684 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp685)
  %_public_lval686 = load i32, i32* %_public___v13_SHA_LBLOCK
  %_public_subtmp687 = sub i32 %_public_lval686, 1
  %_public_multmp688 = mul i32 4, %_public_subtmp687
  %_public_lhssext689 = zext i32 %_public_multmp688 to i64
  %_public_ulttmp690 = icmp ult i64 %_public_lhssext689, 64
  %_public_zexttmp691 = zext i1 %_public_ulttmp690 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp691)
  %_public_lval692 = load i32, i32* %_public___v13_SHA_LBLOCK
  %_public_subtmp693 = sub i32 %_public_lval692, 1
  %_public_multmp694 = mul i32 4, %_public_subtmp693
  %_public_lhssext695 = zext i32 %_public_multmp694 to i64
  %_public_addtmp696 = add i64 %_public_lhssext695, 4
  %_public_truncbinop697 = trunc i64 %_public_addtmp696 to i32
  %_public_subtmp698 = sub i32 %_public_truncbinop697, 1
  %_public_lhssext699 = zext i32 %_public_subtmp698 to i64
  %_public_ugtetmp700 = icmp uge i64 %_public_lhssext699, 0
  %_public_zexttmp701 = zext i1 %_public_ugtetmp700 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp701)
  %_public_lval702 = load i32, i32* %_public___v13_SHA_LBLOCK
  %_public_subtmp703 = sub i32 %_public_lval702, 1
  %_public_multmp704 = mul i32 4, %_public_subtmp703
  %_public_lhssext705 = zext i32 %_public_multmp704 to i64
  %_public_addtmp706 = add i64 %_public_lhssext705, 4
  %_public_truncbinop707 = trunc i64 %_public_addtmp706 to i32
  %_public_subtmp708 = sub i32 %_public_truncbinop707, 1
  %_public_lhssext709 = zext i32 %_public_subtmp708 to i64
  %_public_ulttmp710 = icmp ult i64 %_public_lhssext709, 64
  %_public_zexttmp711 = zext i1 %_public_ulttmp710 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp711)
  %_public_lval712 = load i32, i32* %_public___v13_SHA_LBLOCK
  %_public_subtmp713 = sub i32 %_public_lval712, 1
  %_public_multmp714 = mul i32 4, %_public_subtmp713
  %_public_structgep715 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep716 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep715, i32 0, i32 3
  %_secret_arrview717 = alloca i8*
  %_secret_source_gep718 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep716, i32 0, i32 %_public_multmp714
  store i8* %_secret_source_gep718, i8** %_secret_arrview717
  %_secret_dynarrarg719 = load i8*, i8** %_secret_arrview717
  %_secret_lval720 = load i32, i32* %_secret___v32_bitlen
  %_secret_lval721 = load i1, i1* %_secret___v36_m1
  call void @cond_store(i8* %_secret_dynarrarg719, i32 %_secret_lval720, i1 %_secret_lval721)
  %_public_structgep722 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_public_structgep723 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep724 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep723, i32 0, i32 3
  %_public_structgep725 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep726 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep725, i32 0, i32 3
  %_secret_arrtoptr727 = bitcast [64 x i8]* %_secret_structgep726 to i8*
  call void @sha1_block_data_order(%SHA_CTX* %_public_structgep722, i8* %_secret_arrtoptr727, i32 1)
  store i1 false, i1* %_secret___m8
  %_secret_lval728 = load i1, i1* %_secret___v36_m1
  store i1 %_secret_lval728, i1* %_secret___m9
  %_secret_lval729 = load i1, i1* %_secret___m9
  %_secret_landtmp730 = and i1 true, %_secret_lval729
  %_secret_lval731 = load i1, i1* %_secret___rnset
  %_secret_landtmp732 = and i1 %_secret_landtmp730, %_secret_lval731
  %_secret_condtmp733 = icmp ne i1 %_secret_landtmp732, false
  %_public_lval734 = load i32, i32* %_public___v35_j
  %_secret_lval735 = load i32, i32* %_secret___v26_inp_len
  %_secret_addtmp736 = add i32 %_secret_lval735, 72
  %_secret_ulttmp737 = icmp ult i32 %_public_lval734, %_secret_addtmp736
  %_secret_lval738 = load i1, i1* %_secret___m8
  %_secret_selecttmp739 = call i1 @select.cmov.asm.i1(i1 %_secret_condtmp733, i1 %_secret_ulttmp737, i1 %_secret_lval738)
  store i1 %_secret_selecttmp739, i1* %_secret___m8
  %_secret_lval740 = load i1, i1* %_secret___m9
  %_secret_lnottmp741 = xor i1 %_secret_lval740, true
  store i1 %_secret_lnottmp741, i1* %_secret___m9
  %_secret_lval742 = load i1, i1* %_secret___m9
  %_secret_landtmp743 = and i1 true, %_secret_lval742
  %_secret_lval744 = load i1, i1* %_secret___rnset
  %_secret_landtmp745 = and i1 %_secret_landtmp743, %_secret_lval744
  %_secret_condtmp746 = icmp ne i1 %_secret_landtmp745, false
  %_secret_lval747 = load i1, i1* %_secret___m8
  %_secret_selecttmp748 = call i1 @select.cmov.asm.i1(i1 %_secret_condtmp746, i1 false, i1 %_secret_lval747)
  store i1 %_secret_selecttmp748, i1* %_secret___m8
  %_secret___m8749 = load i1, i1* %_secret___m8
  store i1 %_secret___m8749, i1* %_secret___v37_m2
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview750 = alloca i8*
  %_secret_source_gep751 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i8 0, i8 0
  store i8* %_secret_source_gep751, i8** %_secret_arrview750
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview752 = alloca i8*
  %_secret_source_gep753 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i8 0, i8 0
  store i8* %_secret_source_gep753, i8** %_secret_arrview752
  %_secret_dynarrarg754 = load i8*, i8** %_secret_arrview752
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_public_structgep755 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep756 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep755, i32 0, i32 0
  %_secret_ptr757 = getelementptr inbounds [5 x i32], [5 x i32]* %_secret_structgep756, i8 0, i8 0
  %_secret_lval758 = load i32, i32* %_secret_ptr757
  %_secret_lval759 = load i1, i1* %_secret___v37_m2
  call void @cond_store(i8* %_secret_dynarrarg754, i32 %_secret_lval758, i1 %_secret_lval759)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview760 = alloca i8*
  %_secret_source_gep761 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i8 0, i8 4
  store i8* %_secret_source_gep761, i8** %_secret_arrview760
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview762 = alloca i8*
  %_secret_source_gep763 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i8 0, i8 4
  store i8* %_secret_source_gep763, i8** %_secret_arrview762
  %_secret_dynarrarg764 = load i8*, i8** %_secret_arrview762
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_public_structgep765 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep766 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep765, i32 0, i32 0
  %_secret_ptr767 = getelementptr inbounds [5 x i32], [5 x i32]* %_secret_structgep766, i8 0, i8 1
  %_secret_lval768 = load i32, i32* %_secret_ptr767
  %_secret_lval769 = load i1, i1* %_secret___v37_m2
  call void @cond_store(i8* %_secret_dynarrarg764, i32 %_secret_lval768, i1 %_secret_lval769)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview770 = alloca i8*
  %_secret_source_gep771 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i8 0, i8 8
  store i8* %_secret_source_gep771, i8** %_secret_arrview770
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview772 = alloca i8*
  %_secret_source_gep773 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i8 0, i8 8
  store i8* %_secret_source_gep773, i8** %_secret_arrview772
  %_secret_dynarrarg774 = load i8*, i8** %_secret_arrview772
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_public_structgep775 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep776 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep775, i32 0, i32 0
  %_secret_ptr777 = getelementptr inbounds [5 x i32], [5 x i32]* %_secret_structgep776, i8 0, i8 2
  %_secret_lval778 = load i32, i32* %_secret_ptr777
  %_secret_lval779 = load i1, i1* %_secret___v37_m2
  call void @cond_store(i8* %_secret_dynarrarg774, i32 %_secret_lval778, i1 %_secret_lval779)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview780 = alloca i8*
  %_secret_source_gep781 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i8 0, i8 12
  store i8* %_secret_source_gep781, i8** %_secret_arrview780
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview782 = alloca i8*
  %_secret_source_gep783 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i8 0, i8 12
  store i8* %_secret_source_gep783, i8** %_secret_arrview782
  %_secret_dynarrarg784 = load i8*, i8** %_secret_arrview782
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_public_structgep785 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep786 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep785, i32 0, i32 0
  %_secret_ptr787 = getelementptr inbounds [5 x i32], [5 x i32]* %_secret_structgep786, i8 0, i8 3
  %_secret_lval788 = load i32, i32* %_secret_ptr787
  %_secret_lval789 = load i1, i1* %_secret___v37_m2
  call void @cond_store(i8* %_secret_dynarrarg784, i32 %_secret_lval788, i1 %_secret_lval789)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview790 = alloca i8*
  %_secret_source_gep791 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i8 0, i8 16
  store i8* %_secret_source_gep791, i8** %_secret_arrview790
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview792 = alloca i8*
  %_secret_source_gep793 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i8 0, i8 16
  store i8* %_secret_source_gep793, i8** %_secret_arrview792
  %_secret_dynarrarg794 = load i8*, i8** %_secret_arrview792
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_public_structgep795 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep796 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep795, i32 0, i32 0
  %_secret_ptr797 = getelementptr inbounds [5 x i32], [5 x i32]* %_secret_structgep796, i8 0, i8 4
  %_secret_lval798 = load i32, i32* %_secret_ptr797
  %_secret_lval799 = load i1, i1* %_secret___v37_m2
  call void @cond_store(i8* %_secret_dynarrarg794, i32 %_secret_lval798, i1 %_secret_lval799)
  store i32 0, i32* %_public___v34_p_res
  br label %branchmerge801

elsebranch800:                                    ; preds = %thenbranch524
  br label %branchmerge801

branchmerge801:                                   ; preds = %elsebranch800, %thenbranch614
  br label %branchmerge803

elsebranch802:                                    ; preds = %branchmerge511
  br label %branchmerge803

branchmerge803:                                   ; preds = %elsebranch802, %branchmerge801
  %_public_lval804 = load i32, i32* %_public___v17__len
  store i32 %_public_lval804, i32* %_public___v38_j
  %_public_calltmp805 = call i32 @__VERIFIER_nondet_unsigned_int()
  store i32 %_public_calltmp805, i32* %_public___v39_i
  %_public_lval806 = load i32, i32* %_public___v39_i
  %_public_lval807 = load i32, i32* %_public___v14_SHA_CBLOCK
  %_public_ulttmp808 = icmp ult i32 %_public_lval806, %_public_lval807
  %_public_branchcompare809 = icmp eq i1 %_public_ulttmp808, true
  br i1 %_public_branchcompare809, label %thenbranch810, label %elsebranch838

thenbranch810:                                    ; preds = %branchmerge803
  %_public_lval811 = load i32, i32* %_public___v39_i
  %_public_lval812 = load i32, i32* %_public___v39_i
  %_public_addtmp813 = add i32 %_public_lval812, 1
  %_public_ulttmp814 = icmp ult i32 %_public_lval811, %_public_addtmp813
  %_public_zexttmp815 = zext i1 %_public_ulttmp814 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp815)
  %_public_lval816 = load i32, i32* %_public___v34_p_res
  %_public_lval817 = load i32, i32* %_public___v39_i
  %_public_ulttmp818 = icmp ult i32 %_public_lval816, %_public_lval817
  %_public_lval819 = load i32, i32* %_public___v34_p_res
  %_public_lval820 = load i32, i32* %_public___v39_i
  %_public_eqtmp821 = icmp eq i32 %_public_lval819, %_public_lval820
  %_public_lortmp822 = or i1 %_public_ulttmp818, %_public_eqtmp821
  %_public_zexttmp823 = zext i1 %_public_lortmp822 to i32
  call void @__VERIFIER_assume(i32 %_public_zexttmp823)
  %_public_lval824 = load i32, i32* %_public___v39_i
  %_public_lhssext825 = zext i32 %_public_lval824 to i64
  %_public_ugtetmp826 = icmp uge i64 %_public_lhssext825, 0
  %_public_zexttmp827 = zext i1 %_public_ugtetmp826 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp827)
  %_public_lval828 = load i32, i32* %_public___v39_i
  %_public_lhssext829 = zext i32 %_public_lval828 to i64
  %_public_ulttmp830 = icmp ult i64 %_public_lhssext829, 64
  %_public_zexttmp831 = zext i1 %_public_ulttmp830 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp831)
  %_public_structgep832 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep833 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep832, i32 0, i32 3
  %_public_lval834 = load i32, i32* %_public___v39_i
  %_secret_ptr835 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep833, i32 0, i32 %_public_lval834
  store i8 0, i8* %_secret_ptr835
  %_public_lval836 = load i32, i32* %_public___v38_j
  %_public_addtmp837 = add i32 %_public_lval836, 1
  store i32 %_public_addtmp837, i32* %_public___v38_j
  br label %branchmerge839

elsebranch838:                                    ; preds = %branchmerge803
  br label %branchmerge839

branchmerge839:                                   ; preds = %elsebranch838, %thenbranch810
  %_public_lval840 = load i32, i32* %_public___v34_p_res
  %_public_lval841 = load i32, i32* %_public___v14_SHA_CBLOCK
  %_public_subtmp842 = sub i32 %_public_lval841, 8
  %_public_ugttmp843 = icmp ugt i32 %_public_lval840, %_public_subtmp842
  %_public_branchcompare844 = icmp eq i1 %_public_ugttmp843, true
  br i1 %_public_branchcompare844, label %thenbranch845, label %elsebranch1038

thenbranch845:                                    ; preds = %branchmerge839
  %_secret_lval846 = load i32, i32* %_secret___v26_inp_len
  %_secret_addtmp847 = add i32 %_secret_lval846, 8
  %_public_lval848 = load i32, i32* %_public___v38_j
  %_secret_ulttmp849 = icmp ult i32 %_secret_addtmp847, %_public_lval848
  store i1 %_secret_ulttmp849, i1* %_secret___v40_m1
  %_public_lval850 = load i32, i32* %_public___v13_SHA_LBLOCK
  %_public_subtmp851 = sub i32 %_public_lval850, 1
  %_public_multmp852 = mul i32 4, %_public_subtmp851
  %_public_lhssext853 = zext i32 %_public_multmp852 to i64
  %_public_addtmp854 = add i64 %_public_lhssext853, 4
  %_public_truncbinop855 = trunc i64 %_public_addtmp854 to i32
  %_public_lval856 = load i32, i32* %_public___v13_SHA_LBLOCK
  %_public_subtmp857 = sub i32 %_public_lval856, 1
  %_public_multmp858 = mul i32 4, %_public_subtmp857
  %_public_ugttmp859 = icmp ugt i32 %_public_truncbinop855, %_public_multmp858
  %_public_zexttmp860 = zext i1 %_public_ugttmp859 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp860)
  %_public_lval861 = load i32, i32* %_public___v13_SHA_LBLOCK
  %_public_subtmp862 = sub i32 %_public_lval861, 1
  %_public_multmp863 = mul i32 4, %_public_subtmp862
  %_public_lhssext864 = zext i32 %_public_multmp863 to i64
  %_public_ugtetmp865 = icmp uge i64 %_public_lhssext864, 0
  %_public_zexttmp866 = zext i1 %_public_ugtetmp865 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp866)
  %_public_lval867 = load i32, i32* %_public___v13_SHA_LBLOCK
  %_public_subtmp868 = sub i32 %_public_lval867, 1
  %_public_multmp869 = mul i32 4, %_public_subtmp868
  %_public_lhssext870 = zext i32 %_public_multmp869 to i64
  %_public_ulttmp871 = icmp ult i64 %_public_lhssext870, 64
  %_public_zexttmp872 = zext i1 %_public_ulttmp871 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp872)
  %_public_lval873 = load i32, i32* %_public___v13_SHA_LBLOCK
  %_public_subtmp874 = sub i32 %_public_lval873, 1
  %_public_multmp875 = mul i32 4, %_public_subtmp874
  %_public_lhssext876 = zext i32 %_public_multmp875 to i64
  %_public_addtmp877 = add i64 %_public_lhssext876, 4
  %_public_truncbinop878 = trunc i64 %_public_addtmp877 to i32
  %_public_subtmp879 = sub i32 %_public_truncbinop878, 1
  %_public_lhssext880 = zext i32 %_public_subtmp879 to i64
  %_public_ugtetmp881 = icmp uge i64 %_public_lhssext880, 0
  %_public_zexttmp882 = zext i1 %_public_ugtetmp881 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp882)
  %_public_lval883 = load i32, i32* %_public___v13_SHA_LBLOCK
  %_public_subtmp884 = sub i32 %_public_lval883, 1
  %_public_multmp885 = mul i32 4, %_public_subtmp884
  %_public_lhssext886 = zext i32 %_public_multmp885 to i64
  %_public_addtmp887 = add i64 %_public_lhssext886, 4
  %_public_truncbinop888 = trunc i64 %_public_addtmp887 to i32
  %_public_subtmp889 = sub i32 %_public_truncbinop888, 1
  %_public_lhssext890 = zext i32 %_public_subtmp889 to i64
  %_public_ulttmp891 = icmp ult i64 %_public_lhssext890, 64
  %_public_zexttmp892 = zext i1 %_public_ulttmp891 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp892)
  %_public_lval893 = load i32, i32* %_public___v13_SHA_LBLOCK
  %_public_subtmp894 = sub i32 %_public_lval893, 1
  %_public_multmp895 = mul i32 4, %_public_subtmp894
  %_public_structgep896 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep897 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep896, i32 0, i32 3
  %_secret_arrview898 = alloca i8*
  %_secret_source_gep899 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep897, i32 0, i32 %_public_multmp895
  store i8* %_secret_source_gep899, i8** %_secret_arrview898
  %_public_lval900 = load i32, i32* %_public___v13_SHA_LBLOCK
  %_public_subtmp901 = sub i32 %_public_lval900, 1
  %_public_multmp902 = mul i32 4, %_public_subtmp901
  %_public_lhssext903 = zext i32 %_public_multmp902 to i64
  %_public_addtmp904 = add i64 %_public_lhssext903, 4
  %_public_truncbinop905 = trunc i64 %_public_addtmp904 to i32
  %_public_lval906 = load i32, i32* %_public___v13_SHA_LBLOCK
  %_public_subtmp907 = sub i32 %_public_lval906, 1
  %_public_multmp908 = mul i32 4, %_public_subtmp907
  %_public_ugttmp909 = icmp ugt i32 %_public_truncbinop905, %_public_multmp908
  %_public_zexttmp910 = zext i1 %_public_ugttmp909 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp910)
  %_public_lval911 = load i32, i32* %_public___v13_SHA_LBLOCK
  %_public_subtmp912 = sub i32 %_public_lval911, 1
  %_public_multmp913 = mul i32 4, %_public_subtmp912
  %_public_lhssext914 = zext i32 %_public_multmp913 to i64
  %_public_ugtetmp915 = icmp uge i64 %_public_lhssext914, 0
  %_public_zexttmp916 = zext i1 %_public_ugtetmp915 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp916)
  %_public_lval917 = load i32, i32* %_public___v13_SHA_LBLOCK
  %_public_subtmp918 = sub i32 %_public_lval917, 1
  %_public_multmp919 = mul i32 4, %_public_subtmp918
  %_public_lhssext920 = zext i32 %_public_multmp919 to i64
  %_public_ulttmp921 = icmp ult i64 %_public_lhssext920, 64
  %_public_zexttmp922 = zext i1 %_public_ulttmp921 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp922)
  %_public_lval923 = load i32, i32* %_public___v13_SHA_LBLOCK
  %_public_subtmp924 = sub i32 %_public_lval923, 1
  %_public_multmp925 = mul i32 4, %_public_subtmp924
  %_public_lhssext926 = zext i32 %_public_multmp925 to i64
  %_public_addtmp927 = add i64 %_public_lhssext926, 4
  %_public_truncbinop928 = trunc i64 %_public_addtmp927 to i32
  %_public_subtmp929 = sub i32 %_public_truncbinop928, 1
  %_public_lhssext930 = zext i32 %_public_subtmp929 to i64
  %_public_ugtetmp931 = icmp uge i64 %_public_lhssext930, 0
  %_public_zexttmp932 = zext i1 %_public_ugtetmp931 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp932)
  %_public_lval933 = load i32, i32* %_public___v13_SHA_LBLOCK
  %_public_subtmp934 = sub i32 %_public_lval933, 1
  %_public_multmp935 = mul i32 4, %_public_subtmp934
  %_public_lhssext936 = zext i32 %_public_multmp935 to i64
  %_public_addtmp937 = add i64 %_public_lhssext936, 4
  %_public_truncbinop938 = trunc i64 %_public_addtmp937 to i32
  %_public_subtmp939 = sub i32 %_public_truncbinop938, 1
  %_public_lhssext940 = zext i32 %_public_subtmp939 to i64
  %_public_ulttmp941 = icmp ult i64 %_public_lhssext940, 64
  %_public_zexttmp942 = zext i1 %_public_ulttmp941 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp942)
  %_public_lval943 = load i32, i32* %_public___v13_SHA_LBLOCK
  %_public_subtmp944 = sub i32 %_public_lval943, 1
  %_public_multmp945 = mul i32 4, %_public_subtmp944
  %_public_structgep946 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep947 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep946, i32 0, i32 3
  %_secret_arrview948 = alloca i8*
  %_secret_source_gep949 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep947, i32 0, i32 %_public_multmp945
  store i8* %_secret_source_gep949, i8** %_secret_arrview948
  %_secret_dynarrarg950 = load i8*, i8** %_secret_arrview948
  %_secret_lval951 = load i32, i32* %_secret___v32_bitlen
  %_secret_lval952 = load i1, i1* %_secret___v40_m1
  call void @cond_store(i8* %_secret_dynarrarg950, i32 %_secret_lval951, i1 %_secret_lval952)
  %_public_structgep953 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_public_structgep954 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep955 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep954, i32 0, i32 3
  %_public_structgep956 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep957 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep956, i32 0, i32 3
  %_secret_arrtoptr958 = bitcast [64 x i8]* %_secret_structgep957 to i8*
  call void @sha1_block_data_order(%SHA_CTX* %_public_structgep953, i8* %_secret_arrtoptr958, i32 1)
  store i1 false, i1* %_secret___m10
  %_secret_lval959 = load i1, i1* %_secret___v40_m1
  store i1 %_secret_lval959, i1* %_secret___m11
  %_secret_lval960 = load i1, i1* %_secret___m11
  %_secret_landtmp961 = and i1 true, %_secret_lval960
  %_secret_lval962 = load i1, i1* %_secret___rnset
  %_secret_landtmp963 = and i1 %_secret_landtmp961, %_secret_lval962
  %_secret_condtmp964 = icmp ne i1 %_secret_landtmp963, false
  %_public_lval965 = load i32, i32* %_public___v38_j
  %_secret_lval966 = load i32, i32* %_secret___v26_inp_len
  %_secret_addtmp967 = add i32 %_secret_lval966, 73
  %_secret_ulttmp968 = icmp ult i32 %_public_lval965, %_secret_addtmp967
  %_secret_lval969 = load i1, i1* %_secret___m10
  %_secret_selecttmp970 = call i1 @select.cmov.asm.i1(i1 %_secret_condtmp964, i1 %_secret_ulttmp968, i1 %_secret_lval969)
  store i1 %_secret_selecttmp970, i1* %_secret___m10
  %_secret_lval971 = load i1, i1* %_secret___m11
  %_secret_lnottmp972 = xor i1 %_secret_lval971, true
  store i1 %_secret_lnottmp972, i1* %_secret___m11
  %_secret_lval973 = load i1, i1* %_secret___m11
  %_secret_landtmp974 = and i1 true, %_secret_lval973
  %_secret_lval975 = load i1, i1* %_secret___rnset
  %_secret_landtmp976 = and i1 %_secret_landtmp974, %_secret_lval975
  %_secret_condtmp977 = icmp ne i1 %_secret_landtmp976, false
  %_secret_lval978 = load i1, i1* %_secret___m10
  %_secret_selecttmp979 = call i1 @select.cmov.asm.i1(i1 %_secret_condtmp977, i1 false, i1 %_secret_lval978)
  store i1 %_secret_selecttmp979, i1* %_secret___m10
  %_secret___m10980 = load i1, i1* %_secret___m10
  store i1 %_secret___m10980, i1* %_secret___v41_m2
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview981 = alloca i8*
  %_secret_source_gep982 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i8 0, i8 0
  store i8* %_secret_source_gep982, i8** %_secret_arrview981
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview983 = alloca i8*
  %_secret_source_gep984 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i8 0, i8 0
  store i8* %_secret_source_gep984, i8** %_secret_arrview983
  %_secret_dynarrarg985 = load i8*, i8** %_secret_arrview983
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_public_structgep986 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep987 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep986, i32 0, i32 0
  %_secret_ptr988 = getelementptr inbounds [5 x i32], [5 x i32]* %_secret_structgep987, i8 0, i8 0
  %_secret_lval989 = load i32, i32* %_secret_ptr988
  %_secret_lval990 = load i1, i1* %_secret___v41_m2
  call void @cond_store(i8* %_secret_dynarrarg985, i32 %_secret_lval989, i1 %_secret_lval990)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview991 = alloca i8*
  %_secret_source_gep992 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i8 0, i8 4
  store i8* %_secret_source_gep992, i8** %_secret_arrview991
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview993 = alloca i8*
  %_secret_source_gep994 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i8 0, i8 4
  store i8* %_secret_source_gep994, i8** %_secret_arrview993
  %_secret_dynarrarg995 = load i8*, i8** %_secret_arrview993
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_public_structgep996 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep997 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep996, i32 0, i32 0
  %_secret_ptr998 = getelementptr inbounds [5 x i32], [5 x i32]* %_secret_structgep997, i8 0, i8 1
  %_secret_lval999 = load i32, i32* %_secret_ptr998
  %_secret_lval1000 = load i1, i1* %_secret___v41_m2
  call void @cond_store(i8* %_secret_dynarrarg995, i32 %_secret_lval999, i1 %_secret_lval1000)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1001 = alloca i8*
  %_secret_source_gep1002 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i8 0, i8 8
  store i8* %_secret_source_gep1002, i8** %_secret_arrview1001
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1003 = alloca i8*
  %_secret_source_gep1004 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i8 0, i8 8
  store i8* %_secret_source_gep1004, i8** %_secret_arrview1003
  %_secret_dynarrarg1005 = load i8*, i8** %_secret_arrview1003
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_public_structgep1006 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep1007 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep1006, i32 0, i32 0
  %_secret_ptr1008 = getelementptr inbounds [5 x i32], [5 x i32]* %_secret_structgep1007, i8 0, i8 2
  %_secret_lval1009 = load i32, i32* %_secret_ptr1008
  %_secret_lval1010 = load i1, i1* %_secret___v41_m2
  call void @cond_store(i8* %_secret_dynarrarg1005, i32 %_secret_lval1009, i1 %_secret_lval1010)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1011 = alloca i8*
  %_secret_source_gep1012 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i8 0, i8 12
  store i8* %_secret_source_gep1012, i8** %_secret_arrview1011
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1013 = alloca i8*
  %_secret_source_gep1014 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i8 0, i8 12
  store i8* %_secret_source_gep1014, i8** %_secret_arrview1013
  %_secret_dynarrarg1015 = load i8*, i8** %_secret_arrview1013
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_public_structgep1016 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep1017 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep1016, i32 0, i32 0
  %_secret_ptr1018 = getelementptr inbounds [5 x i32], [5 x i32]* %_secret_structgep1017, i8 0, i8 3
  %_secret_lval1019 = load i32, i32* %_secret_ptr1018
  %_secret_lval1020 = load i1, i1* %_secret___v41_m2
  call void @cond_store(i8* %_secret_dynarrarg1015, i32 %_secret_lval1019, i1 %_secret_lval1020)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1021 = alloca i8*
  %_secret_source_gep1022 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i8 0, i8 16
  store i8* %_secret_source_gep1022, i8** %_secret_arrview1021
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1023 = alloca i8*
  %_secret_source_gep1024 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i8 0, i8 16
  store i8* %_secret_source_gep1024, i8** %_secret_arrview1023
  %_secret_dynarrarg1025 = load i8*, i8** %_secret_arrview1023
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_public_structgep1026 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep1027 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep1026, i32 0, i32 0
  %_secret_ptr1028 = getelementptr inbounds [5 x i32], [5 x i32]* %_secret_structgep1027, i8 0, i8 4
  %_secret_lval1029 = load i32, i32* %_secret_ptr1028
  %_secret_lval1030 = load i1, i1* %_secret___v41_m2
  call void @cond_store(i8* %_secret_dynarrarg1025, i32 %_secret_lval1029, i1 %_secret_lval1030)
  %_public_structgep1031 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep1032 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep1031, i32 0, i32 3
  %_public_structgep1033 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep1034 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep1033, i32 0, i32 3
  %_secret_arrtoptr1035 = bitcast [64 x i8]* %_secret_structgep1034 to i8*
  call void @_memzero(i8* %_secret_arrtoptr1035, i32 64)
  %_public_lval1036 = load i32, i32* %_public___v38_j
  %_public_addtmp1037 = add i32 %_public_lval1036, 64
  store i32 %_public_addtmp1037, i32* %_public___v38_j
  br label %branchmerge1039

elsebranch1038:                                   ; preds = %branchmerge839
  br label %branchmerge1039

branchmerge1039:                                  ; preds = %elsebranch1038, %thenbranch845
  %_public_lval1040 = load i32, i32* %_public___v13_SHA_LBLOCK
  %_public_subtmp1041 = sub i32 %_public_lval1040, 1
  %_public_multmp1042 = mul i32 4, %_public_subtmp1041
  %_public_lhssext1043 = zext i32 %_public_multmp1042 to i64
  %_public_addtmp1044 = add i64 %_public_lhssext1043, 4
  %_public_truncbinop1045 = trunc i64 %_public_addtmp1044 to i32
  %_public_lval1046 = load i32, i32* %_public___v13_SHA_LBLOCK
  %_public_subtmp1047 = sub i32 %_public_lval1046, 1
  %_public_multmp1048 = mul i32 4, %_public_subtmp1047
  %_public_ugttmp1049 = icmp ugt i32 %_public_truncbinop1045, %_public_multmp1048
  %_public_zexttmp1050 = zext i1 %_public_ugttmp1049 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp1050)
  %_public_lval1051 = load i32, i32* %_public___v13_SHA_LBLOCK
  %_public_subtmp1052 = sub i32 %_public_lval1051, 1
  %_public_multmp1053 = mul i32 4, %_public_subtmp1052
  %_public_lhssext1054 = zext i32 %_public_multmp1053 to i64
  %_public_ugtetmp1055 = icmp uge i64 %_public_lhssext1054, 0
  %_public_zexttmp1056 = zext i1 %_public_ugtetmp1055 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp1056)
  %_public_lval1057 = load i32, i32* %_public___v13_SHA_LBLOCK
  %_public_subtmp1058 = sub i32 %_public_lval1057, 1
  %_public_multmp1059 = mul i32 4, %_public_subtmp1058
  %_public_lhssext1060 = zext i32 %_public_multmp1059 to i64
  %_public_ulttmp1061 = icmp ult i64 %_public_lhssext1060, 64
  %_public_zexttmp1062 = zext i1 %_public_ulttmp1061 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp1062)
  %_public_lval1063 = load i32, i32* %_public___v13_SHA_LBLOCK
  %_public_subtmp1064 = sub i32 %_public_lval1063, 1
  %_public_multmp1065 = mul i32 4, %_public_subtmp1064
  %_public_lhssext1066 = zext i32 %_public_multmp1065 to i64
  %_public_addtmp1067 = add i64 %_public_lhssext1066, 4
  %_public_truncbinop1068 = trunc i64 %_public_addtmp1067 to i32
  %_public_subtmp1069 = sub i32 %_public_truncbinop1068, 1
  %_public_lhssext1070 = zext i32 %_public_subtmp1069 to i64
  %_public_ugtetmp1071 = icmp uge i64 %_public_lhssext1070, 0
  %_public_zexttmp1072 = zext i1 %_public_ugtetmp1071 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp1072)
  %_public_lval1073 = load i32, i32* %_public___v13_SHA_LBLOCK
  %_public_subtmp1074 = sub i32 %_public_lval1073, 1
  %_public_multmp1075 = mul i32 4, %_public_subtmp1074
  %_public_lhssext1076 = zext i32 %_public_multmp1075 to i64
  %_public_addtmp1077 = add i64 %_public_lhssext1076, 4
  %_public_truncbinop1078 = trunc i64 %_public_addtmp1077 to i32
  %_public_subtmp1079 = sub i32 %_public_truncbinop1078, 1
  %_public_lhssext1080 = zext i32 %_public_subtmp1079 to i64
  %_public_ulttmp1081 = icmp ult i64 %_public_lhssext1080, 64
  %_public_zexttmp1082 = zext i1 %_public_ulttmp1081 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp1082)
  %_public_lval1083 = load i32, i32* %_public___v13_SHA_LBLOCK
  %_public_subtmp1084 = sub i32 %_public_lval1083, 1
  %_public_multmp1085 = mul i32 4, %_public_subtmp1084
  %_public_structgep1086 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep1087 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep1086, i32 0, i32 3
  %_secret_arrview1088 = alloca i8*
  %_secret_source_gep1089 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep1087, i32 0, i32 %_public_multmp1085
  store i8* %_secret_source_gep1089, i8** %_secret_arrview1088
  %_public_lval1090 = load i32, i32* %_public___v13_SHA_LBLOCK
  %_public_subtmp1091 = sub i32 %_public_lval1090, 1
  %_public_multmp1092 = mul i32 4, %_public_subtmp1091
  %_public_lhssext1093 = zext i32 %_public_multmp1092 to i64
  %_public_addtmp1094 = add i64 %_public_lhssext1093, 4
  %_public_truncbinop1095 = trunc i64 %_public_addtmp1094 to i32
  %_public_lval1096 = load i32, i32* %_public___v13_SHA_LBLOCK
  %_public_subtmp1097 = sub i32 %_public_lval1096, 1
  %_public_multmp1098 = mul i32 4, %_public_subtmp1097
  %_public_ugttmp1099 = icmp ugt i32 %_public_truncbinop1095, %_public_multmp1098
  %_public_zexttmp1100 = zext i1 %_public_ugttmp1099 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp1100)
  %_public_lval1101 = load i32, i32* %_public___v13_SHA_LBLOCK
  %_public_subtmp1102 = sub i32 %_public_lval1101, 1
  %_public_multmp1103 = mul i32 4, %_public_subtmp1102
  %_public_lhssext1104 = zext i32 %_public_multmp1103 to i64
  %_public_ugtetmp1105 = icmp uge i64 %_public_lhssext1104, 0
  %_public_zexttmp1106 = zext i1 %_public_ugtetmp1105 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp1106)
  %_public_lval1107 = load i32, i32* %_public___v13_SHA_LBLOCK
  %_public_subtmp1108 = sub i32 %_public_lval1107, 1
  %_public_multmp1109 = mul i32 4, %_public_subtmp1108
  %_public_lhssext1110 = zext i32 %_public_multmp1109 to i64
  %_public_ulttmp1111 = icmp ult i64 %_public_lhssext1110, 64
  %_public_zexttmp1112 = zext i1 %_public_ulttmp1111 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp1112)
  %_public_lval1113 = load i32, i32* %_public___v13_SHA_LBLOCK
  %_public_subtmp1114 = sub i32 %_public_lval1113, 1
  %_public_multmp1115 = mul i32 4, %_public_subtmp1114
  %_public_lhssext1116 = zext i32 %_public_multmp1115 to i64
  %_public_addtmp1117 = add i64 %_public_lhssext1116, 4
  %_public_truncbinop1118 = trunc i64 %_public_addtmp1117 to i32
  %_public_subtmp1119 = sub i32 %_public_truncbinop1118, 1
  %_public_lhssext1120 = zext i32 %_public_subtmp1119 to i64
  %_public_ugtetmp1121 = icmp uge i64 %_public_lhssext1120, 0
  %_public_zexttmp1122 = zext i1 %_public_ugtetmp1121 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp1122)
  %_public_lval1123 = load i32, i32* %_public___v13_SHA_LBLOCK
  %_public_subtmp1124 = sub i32 %_public_lval1123, 1
  %_public_multmp1125 = mul i32 4, %_public_subtmp1124
  %_public_lhssext1126 = zext i32 %_public_multmp1125 to i64
  %_public_addtmp1127 = add i64 %_public_lhssext1126, 4
  %_public_truncbinop1128 = trunc i64 %_public_addtmp1127 to i32
  %_public_subtmp1129 = sub i32 %_public_truncbinop1128, 1
  %_public_lhssext1130 = zext i32 %_public_subtmp1129 to i64
  %_public_ulttmp1131 = icmp ult i64 %_public_lhssext1130, 64
  %_public_zexttmp1132 = zext i1 %_public_ulttmp1131 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp1132)
  %_public_lval1133 = load i32, i32* %_public___v13_SHA_LBLOCK
  %_public_subtmp1134 = sub i32 %_public_lval1133, 1
  %_public_multmp1135 = mul i32 4, %_public_subtmp1134
  %_public_structgep1136 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep1137 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep1136, i32 0, i32 3
  %_secret_arrview1138 = alloca i8*
  %_secret_source_gep1139 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep1137, i32 0, i32 %_public_multmp1135
  store i8* %_secret_source_gep1139, i8** %_secret_arrview1138
  %_secret_dynarrarg1140 = load i8*, i8** %_secret_arrview1138
  %_secret_lval1141 = load i32, i32* %_secret___v32_bitlen
  call void @_store32_le(i8* %_secret_dynarrarg1140, i32 %_secret_lval1141)
  %_public_structgep1142 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_public_structgep1143 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep1144 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep1143, i32 0, i32 3
  %_public_structgep1145 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep1146 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep1145, i32 0, i32 3
  %_secret_arrtoptr1147 = bitcast [64 x i8]* %_secret_structgep1146 to i8*
  call void @sha1_block_data_order(%SHA_CTX* %_public_structgep1142, i8* %_secret_arrtoptr1147, i32 1)
  %_public_lval1148 = load i32, i32* %_public___v38_j
  %_secret_lval1149 = load i32, i32* %_secret___v26_inp_len
  %_secret_addtmp1150 = add i32 %_secret_lval1149, 73
  %_secret_ulttmp1151 = icmp ult i32 %_public_lval1148, %_secret_addtmp1150
  store i1 %_secret_ulttmp1151, i1* %_secret___v42_m2
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1152 = alloca i8*
  %_secret_source_gep1153 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i8 0, i8 0
  store i8* %_secret_source_gep1153, i8** %_secret_arrview1152
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1154 = alloca i8*
  %_secret_source_gep1155 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i8 0, i8 0
  store i8* %_secret_source_gep1155, i8** %_secret_arrview1154
  %_secret_dynarrarg1156 = load i8*, i8** %_secret_arrview1154
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_public_structgep1157 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep1158 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep1157, i32 0, i32 0
  %_secret_ptr1159 = getelementptr inbounds [5 x i32], [5 x i32]* %_secret_structgep1158, i8 0, i8 0
  %_secret_lval1160 = load i32, i32* %_secret_ptr1159
  %_secret_lval1161 = load i1, i1* %_secret___v42_m2
  call void @cond_store(i8* %_secret_dynarrarg1156, i32 %_secret_lval1160, i1 %_secret_lval1161)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1162 = alloca i8*
  %_secret_source_gep1163 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i8 0, i8 4
  store i8* %_secret_source_gep1163, i8** %_secret_arrview1162
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1164 = alloca i8*
  %_secret_source_gep1165 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i8 0, i8 4
  store i8* %_secret_source_gep1165, i8** %_secret_arrview1164
  %_secret_dynarrarg1166 = load i8*, i8** %_secret_arrview1164
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_public_structgep1167 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep1168 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep1167, i32 0, i32 0
  %_secret_ptr1169 = getelementptr inbounds [5 x i32], [5 x i32]* %_secret_structgep1168, i8 0, i8 1
  %_secret_lval1170 = load i32, i32* %_secret_ptr1169
  %_secret_lval1171 = load i1, i1* %_secret___v42_m2
  call void @cond_store(i8* %_secret_dynarrarg1166, i32 %_secret_lval1170, i1 %_secret_lval1171)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1172 = alloca i8*
  %_secret_source_gep1173 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i8 0, i8 8
  store i8* %_secret_source_gep1173, i8** %_secret_arrview1172
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1174 = alloca i8*
  %_secret_source_gep1175 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i8 0, i8 8
  store i8* %_secret_source_gep1175, i8** %_secret_arrview1174
  %_secret_dynarrarg1176 = load i8*, i8** %_secret_arrview1174
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_public_structgep1177 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep1178 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep1177, i32 0, i32 0
  %_secret_ptr1179 = getelementptr inbounds [5 x i32], [5 x i32]* %_secret_structgep1178, i8 0, i8 2
  %_secret_lval1180 = load i32, i32* %_secret_ptr1179
  %_secret_lval1181 = load i1, i1* %_secret___v42_m2
  call void @cond_store(i8* %_secret_dynarrarg1176, i32 %_secret_lval1180, i1 %_secret_lval1181)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1182 = alloca i8*
  %_secret_source_gep1183 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i8 0, i8 12
  store i8* %_secret_source_gep1183, i8** %_secret_arrview1182
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1184 = alloca i8*
  %_secret_source_gep1185 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i8 0, i8 12
  store i8* %_secret_source_gep1185, i8** %_secret_arrview1184
  %_secret_dynarrarg1186 = load i8*, i8** %_secret_arrview1184
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_public_structgep1187 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep1188 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep1187, i32 0, i32 0
  %_secret_ptr1189 = getelementptr inbounds [5 x i32], [5 x i32]* %_secret_structgep1188, i8 0, i8 3
  %_secret_lval1190 = load i32, i32* %_secret_ptr1189
  %_secret_lval1191 = load i1, i1* %_secret___v42_m2
  call void @cond_store(i8* %_secret_dynarrarg1186, i32 %_secret_lval1190, i1 %_secret_lval1191)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1192 = alloca i8*
  %_secret_source_gep1193 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i8 0, i8 16
  store i8* %_secret_source_gep1193, i8** %_secret_arrview1192
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1194 = alloca i8*
  %_secret_source_gep1195 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i8 0, i8 16
  store i8* %_secret_source_gep1195, i8** %_secret_arrview1194
  %_secret_dynarrarg1196 = load i8*, i8** %_secret_arrview1194
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_public_structgep1197 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep1198 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep1197, i32 0, i32 0
  %_secret_ptr1199 = getelementptr inbounds [5 x i32], [5 x i32]* %_secret_structgep1198, i8 0, i8 4
  %_secret_lval1200 = load i32, i32* %_secret_ptr1199
  %_secret_lval1201 = load i1, i1* %_secret___v42_m2
  call void @cond_store(i8* %_secret_dynarrarg1196, i32 %_secret_lval1200, i1 %_secret_lval1201)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1202 = alloca i8*
  %_secret_source_gep1203 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i8 0, i8 0
  store i8* %_secret_source_gep1203, i8** %_secret_arrview1202
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1204 = alloca i8*
  %_secret_source_gep1205 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i8 0, i8 0
  store i8* %_secret_source_gep1205, i8** %_secret_arrview1204
  %_secret_dynarrarg1206 = load i8*, i8** %_secret_arrview1204
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1207 = alloca i8*
  %_secret_source_gep1208 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i8 0, i8 0
  store i8* %_secret_source_gep1208, i8** %_secret_arrview1207
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1209 = alloca i8*
  %_secret_source_gep1210 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i8 0, i8 0
  store i8* %_secret_source_gep1210, i8** %_secret_arrview1209
  %_secret_dynarrarg1211 = load i8*, i8** %_secret_arrview1209
  %_secret_calltmp1212 = call i32 @_load32_le(i8* %_secret_dynarrarg1211)
  %_secret_calltmp1213 = call i32 @bswap4(i32 %_secret_calltmp1212)
  call void @_store32_le(i8* %_secret_dynarrarg1206, i32 %_secret_calltmp1213)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1214 = alloca i8*
  %_secret_source_gep1215 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i8 0, i8 4
  store i8* %_secret_source_gep1215, i8** %_secret_arrview1214
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1216 = alloca i8*
  %_secret_source_gep1217 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i8 0, i8 4
  store i8* %_secret_source_gep1217, i8** %_secret_arrview1216
  %_secret_dynarrarg1218 = load i8*, i8** %_secret_arrview1216
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1219 = alloca i8*
  %_secret_source_gep1220 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i8 0, i8 4
  store i8* %_secret_source_gep1220, i8** %_secret_arrview1219
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1221 = alloca i8*
  %_secret_source_gep1222 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i8 0, i8 4
  store i8* %_secret_source_gep1222, i8** %_secret_arrview1221
  %_secret_dynarrarg1223 = load i8*, i8** %_secret_arrview1221
  %_secret_calltmp1224 = call i32 @_load32_le(i8* %_secret_dynarrarg1223)
  %_secret_calltmp1225 = call i32 @bswap4(i32 %_secret_calltmp1224)
  call void @_store32_le(i8* %_secret_dynarrarg1218, i32 %_secret_calltmp1225)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1226 = alloca i8*
  %_secret_source_gep1227 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i8 0, i8 8
  store i8* %_secret_source_gep1227, i8** %_secret_arrview1226
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1228 = alloca i8*
  %_secret_source_gep1229 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i8 0, i8 8
  store i8* %_secret_source_gep1229, i8** %_secret_arrview1228
  %_secret_dynarrarg1230 = load i8*, i8** %_secret_arrview1228
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1231 = alloca i8*
  %_secret_source_gep1232 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i8 0, i8 8
  store i8* %_secret_source_gep1232, i8** %_secret_arrview1231
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1233 = alloca i8*
  %_secret_source_gep1234 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i8 0, i8 8
  store i8* %_secret_source_gep1234, i8** %_secret_arrview1233
  %_secret_dynarrarg1235 = load i8*, i8** %_secret_arrview1233
  %_secret_calltmp1236 = call i32 @_load32_le(i8* %_secret_dynarrarg1235)
  %_secret_calltmp1237 = call i32 @bswap4(i32 %_secret_calltmp1236)
  call void @_store32_le(i8* %_secret_dynarrarg1230, i32 %_secret_calltmp1237)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1238 = alloca i8*
  %_secret_source_gep1239 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i8 0, i8 12
  store i8* %_secret_source_gep1239, i8** %_secret_arrview1238
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1240 = alloca i8*
  %_secret_source_gep1241 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i8 0, i8 12
  store i8* %_secret_source_gep1241, i8** %_secret_arrview1240
  %_secret_dynarrarg1242 = load i8*, i8** %_secret_arrview1240
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1243 = alloca i8*
  %_secret_source_gep1244 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i8 0, i8 12
  store i8* %_secret_source_gep1244, i8** %_secret_arrview1243
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1245 = alloca i8*
  %_secret_source_gep1246 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i8 0, i8 12
  store i8* %_secret_source_gep1246, i8** %_secret_arrview1245
  %_secret_dynarrarg1247 = load i8*, i8** %_secret_arrview1245
  %_secret_calltmp1248 = call i32 @_load32_le(i8* %_secret_dynarrarg1247)
  %_secret_calltmp1249 = call i32 @bswap4(i32 %_secret_calltmp1248)
  call void @_store32_le(i8* %_secret_dynarrarg1242, i32 %_secret_calltmp1249)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1250 = alloca i8*
  %_secret_source_gep1251 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i8 0, i8 16
  store i8* %_secret_source_gep1251, i8** %_secret_arrview1250
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1252 = alloca i8*
  %_secret_source_gep1253 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i8 0, i8 16
  store i8* %_secret_source_gep1253, i8** %_secret_arrview1252
  %_secret_dynarrarg1254 = load i8*, i8** %_secret_arrview1252
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1255 = alloca i8*
  %_secret_source_gep1256 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i8 0, i8 16
  store i8* %_secret_source_gep1256, i8** %_secret_arrview1255
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1257 = alloca i8*
  %_secret_source_gep1258 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i8 0, i8 16
  store i8* %_secret_source_gep1258, i8** %_secret_arrview1257
  %_secret_dynarrarg1259 = load i8*, i8** %_secret_arrview1257
  %_secret_calltmp1260 = call i32 @_load32_le(i8* %_secret_dynarrarg1259)
  %_secret_calltmp1261 = call i32 @bswap4(i32 %_secret_calltmp1260)
  call void @_store32_le(i8* %_secret_dynarrarg1254, i32 %_secret_calltmp1261)
  %_public_lval1262 = load i32, i32* %_public___v17__len
  %_public_lval1263 = load i32, i32* %_public___v11_SHA_DIGEST_LENGTH
  %_public_addtmp1264 = add i32 %_public_lval1262, %_public_lval1263
  store i32 %_public_addtmp1264, i32* %_public___v17__len
  %_public_structgep1265 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_public_structgep1266 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 2
  call void @_structcopy_SHA_CTX(%SHA_CTX* %_public_structgep1265, %SHA_CTX* %_public_structgep1266)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_public_structgep1267 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep1268 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep1267, i32 0, i32 0
  %_secret_ptr1269 = getelementptr inbounds [5 x i32], [5 x i32]* %_secret_structgep1268, i8 0, i8 0
  %_secret_arrtoptr1270 = bitcast [20 x i8]* %_secret___v33_pmac to i8*
  call void @_sha1_update(i32* %_secret_ptr1269, i8* %_secret_arrtoptr1270, i64 20)
  %_secret_arrtoptr1271 = bitcast [20 x i8]* %_secret___v33_pmac to i8*
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_public_structgep1272 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep1273 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep1272, i32 0, i32 0
  %_secret_ptr1274 = getelementptr inbounds [5 x i32], [5 x i32]* %_secret_structgep1273, i8 0, i8 0
  call void @SHA1_Final(i8* %_secret_arrtoptr1271, i32* %_secret_ptr1274)
  %_public_lval1275 = load i32, i32* %_public___v16_outp
  %_secret_lval1276 = load i32, i32* %_secret___v26_inp_len
  %_secret_addtmp1277 = add i32 %_public_lval1275, %_secret_lval1276
  store i32 %_secret_addtmp1277, i32* %_secret___v43_s_outp
  %_public_lval1278 = load i32, i32* %_public____out_len
  %_public_subtmp1279 = sub i32 %_public_lval1278, 1
  %_public_lval1280 = load i32, i32* %_public___v25_maxpad
  %_public_subtmp1281 = sub i32 %_public_subtmp1279, %_public_lval1280
  %_public_lval1282 = load i32, i32* %_public___v11_SHA_DIGEST_LENGTH
  %_public_subtmp1283 = sub i32 %_public_subtmp1281, %_public_lval1282
  store i32 %_public_subtmp1283, i32* %_public___v44_p_outp
  store i32 0, i32* %_secret___v45_i
  %_public_calltmp1284 = call i32 @__VERIFIER_nondet_unsigned_int()
  store i32 %_public_calltmp1284, i32* %_public___v46_j
  %_public_lval1285 = load i32, i32* %_public___v46_j
  %_public_lval1286 = load i32, i32* %_public___v25_maxpad
  %_public_lval1287 = load i32, i32* %_public___v11_SHA_DIGEST_LENGTH
  %_public_addtmp1288 = add i32 %_public_lval1286, %_public_lval1287
  %_public_ulttmp1289 = icmp ult i32 %_public_lval1285, %_public_addtmp1288
  %_public_branchcompare1290 = icmp eq i1 %_public_ulttmp1289, true
  br i1 %_public_branchcompare1290, label %thenbranch1291, label %elsebranch1389

thenbranch1291:                                   ; preds = %branchmerge1039
  %_public_lval1292 = load i32, i32* %_public___v46_j
  %_public_lval1293 = load i32, i32* %_public___v46_j
  %_public_addtmp1294 = add i32 %_public_lval1293, 1
  %_public_ulttmp1295 = icmp ult i32 %_public_lval1292, %_public_addtmp1294
  %_public_zexttmp1296 = zext i1 %_public_ulttmp1295 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp1296)
  %_public_lval1297 = load i32, i32* %_public___v46_j
  %_public_ulttmp1298 = icmp ult i32 0, %_public_lval1297
  %_public_lval1299 = load i32, i32* %_public___v46_j
  %_public_eqtmp1300 = icmp eq i32 0, %_public_lval1299
  %_public_lortmp1301 = or i1 %_public_ulttmp1298, %_public_eqtmp1300
  %_public_zexttmp1302 = zext i1 %_public_lortmp1301 to i32
  call void @__VERIFIER_assume(i32 %_public_zexttmp1302)
  %_public_lval1303 = load i32, i32* %_public___v44_p_outp
  %_public_lval1304 = load i32, i32* %_public___v46_j
  %_public_addtmp1305 = add i32 %_public_lval1303, %_public_lval1304
  %_public_lhssext1306 = zext i32 %_public_addtmp1305 to i64
  %_public_ugtetmp1307 = icmp uge i64 %_public_lhssext1306, 0
  %_public_zexttmp1308 = zext i1 %_public_ugtetmp1307 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp1308)
  %_public_lval1309 = load i32, i32* %_public___v44_p_outp
  %_public_lval1310 = load i32, i32* %_public___v46_j
  %_public_addtmp1311 = add i32 %_public_lval1309, %_public_lval1310
  %_public_lval1312 = load i32, i32* %_public____out_len
  %_public_icast1313 = zext i32 %_public_lval1312 to i64
  %_public_lhssext1314 = zext i32 %_public_addtmp1311 to i64
  %_public_ulttmp1315 = icmp ult i64 %_public_lhssext1314, %_public_icast1313
  %_public_zexttmp1316 = zext i1 %_public_ulttmp1315 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp1316)
  %_public_lval1317 = load i32, i32* %_public___v44_p_outp
  %_public_lval1318 = load i32, i32* %_public___v46_j
  %_public_addtmp1319 = add i32 %_public_lval1317, %_public_lval1318
  %_secret_dyn1320 = load i8*, i8** %_secret_arrarg2
  %_secret_ptr1321 = getelementptr inbounds i8, i8* %_secret_dyn1320, i32 %_public_addtmp1319
  %_secret_lval1322 = load i8, i8* %_secret_ptr1321
  %_secret_zexttmp1323 = zext i8 %_secret_lval1322 to i32
  store i32 %_secret_zexttmp1323, i32* %_secret___v47_c
  %_public_lval1324 = load i32, i32* %_public___v44_p_outp
  %_public_lval1325 = load i32, i32* %_public___v46_j
  %_public_addtmp1326 = add i32 %_public_lval1324, %_public_lval1325
  %_secret_lval1327 = load i32, i32* %_secret___v43_s_outp
  %_public_lval1328 = load i32, i32* %_public___v11_SHA_DIGEST_LENGTH
  %_secret_addtmp1329 = add i32 %_secret_lval1327, %_public_lval1328
  %_secret_ugtetmp = icmp uge i32 %_public_addtmp1326, %_secret_addtmp1329
  store i1 %_secret_ugtetmp, i1* %_secret___m12
  %_secret_lval1330 = load i32, i32* %_secret___v47_c
  %_secret_lval1331 = load i32, i32* %_secret___v23_pad
  %_secret_neqtmp = icmp ne i32 %_secret_lval1330, %_secret_lval1331
  store i1 %_secret_neqtmp, i1* %_secret___m13
  %_secret_lval1332 = load i1, i1* %_secret___m13
  %_secret_landtmp1333 = and i1 true, %_secret_lval1332
  %_secret_lval1334 = load i1, i1* %_secret___m12
  %_secret_landtmp1335 = and i1 %_secret_landtmp1333, %_secret_lval1334
  %_secret_lval1336 = load i1, i1* %_secret___rnset
  %_secret_landtmp1337 = and i1 %_secret_landtmp1335, %_secret_lval1336
  %_secret_condtmp1338 = icmp ne i1 %_secret_landtmp1337, false
  %_secret_lval1339 = load i32, i32* %_secret___v18_ret
  %_secret_selecttmp1340 = call i32 @select.cmov.sel.i32(i1 %_secret_condtmp1338, i32 0, i32 %_secret_lval1339)
  store i32 %_secret_selecttmp1340, i32* %_secret___v18_ret
  %_secret_lval1341 = load i1, i1* %_secret___m13
  %_secret_lnottmp1342 = xor i1 %_secret_lval1341, true
  store i1 %_secret_lnottmp1342, i1* %_secret___m13
  %_secret_lval1343 = load i1, i1* %_secret___m12
  %_secret_lnottmp1344 = xor i1 %_secret_lval1343, true
  store i1 %_secret_lnottmp1344, i1* %_secret___m12
  %_public_lval1345 = load i32, i32* %_public___v44_p_outp
  %_public_lval1346 = load i32, i32* %_public___v46_j
  %_public_addtmp1347 = add i32 %_public_lval1345, %_public_lval1346
  %_secret_lval1348 = load i32, i32* %_secret___v43_s_outp
  %_secret_ugtetmp1349 = icmp uge i32 %_public_addtmp1347, %_secret_lval1348
  store i1 %_secret_ugtetmp1349, i1* %_secret___m14
  %_secret_lval1350 = load i32, i32* %_secret___v47_c
  %_declassified__secret_lval1351 = load i32, i32* %_secret___v45_i
  %_public_lhssext1352 = zext i32 %_declassified__secret_lval1351 to i64
  %_public_ugtetmp1353 = icmp uge i64 %_public_lhssext1352, 0
  %_public_zexttmp1354 = zext i1 %_public_ugtetmp1353 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp1354)
  %_declassified__secret_lval1355 = load i32, i32* %_secret___v45_i
  %_public_lhssext1356 = zext i32 %_declassified__secret_lval1355 to i64
  %_public_ulttmp1357 = icmp ult i64 %_public_lhssext1356, 20
  %_public_zexttmp1358 = zext i1 %_public_ulttmp1357 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp1358)
  %_declassified__secret_lval1359 = load i32, i32* %_secret___v45_i
  %_secret_ptr1360 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i32 0, i32 %_declassified__secret_lval1359
  %_secret_lval1361 = load i8, i8* %_secret_ptr1360
  %_secret_rhssext = zext i8 %_secret_lval1361 to i32
  %_secret_neqtmp1362 = icmp ne i32 %_secret_lval1350, %_secret_rhssext
  store i1 %_secret_neqtmp1362, i1* %_secret___m15
  %_secret_lval1363 = load i1, i1* %_secret___m15
  %_secret_landtmp1364 = and i1 true, %_secret_lval1363
  %_secret_lval1365 = load i1, i1* %_secret___m14
  %_secret_landtmp1366 = and i1 %_secret_landtmp1364, %_secret_lval1365
  %_secret_lval1367 = load i1, i1* %_secret___m12
  %_secret_landtmp1368 = and i1 %_secret_landtmp1366, %_secret_lval1367
  %_secret_lval1369 = load i1, i1* %_secret___rnset
  %_secret_landtmp1370 = and i1 %_secret_landtmp1368, %_secret_lval1369
  %_secret_condtmp1371 = icmp ne i1 %_secret_landtmp1370, false
  %_secret_lval1372 = load i32, i32* %_secret___v18_ret
  %_secret_selecttmp1373 = call i32 @select.cmov.sel.i32(i1 %_secret_condtmp1371, i32 0, i32 %_secret_lval1372)
  store i32 %_secret_selecttmp1373, i32* %_secret___v18_ret
  %_secret_lval1374 = load i1, i1* %_secret___m15
  %_secret_lnottmp1375 = xor i1 %_secret_lval1374, true
  store i1 %_secret_lnottmp1375, i1* %_secret___m15
  %_secret_lval1376 = load i1, i1* %_secret___m14
  %_secret_landtmp1377 = and i1 true, %_secret_lval1376
  %_secret_lval1378 = load i1, i1* %_secret___m12
  %_secret_landtmp1379 = and i1 %_secret_landtmp1377, %_secret_lval1378
  %_secret_lval1380 = load i1, i1* %_secret___rnset
  %_secret_landtmp1381 = and i1 %_secret_landtmp1379, %_secret_lval1380
  %_secret_condtmp1382 = icmp ne i1 %_secret_landtmp1381, false
  %_secret_lval1383 = load i32, i32* %_secret___v45_i
  %_secret_addtmp1384 = add i32 %_secret_lval1383, 1
  %_secret_lval1385 = load i32, i32* %_secret___v45_i
  %_secret_selecttmp1386 = call i32 @select.cmov.sel.i32(i1 %_secret_condtmp1382, i32 %_secret_addtmp1384, i32 %_secret_lval1385)
  store i32 %_secret_selecttmp1386, i32* %_secret___v45_i
  %_secret_lval1387 = load i1, i1* %_secret___m14
  %_secret_lnottmp1388 = xor i1 %_secret_lval1387, true
  store i1 %_secret_lnottmp1388, i1* %_secret___m14
  br label %branchmerge1390

elsebranch1389:                                   ; preds = %branchmerge1039
  br label %branchmerge1390

branchmerge1390:                                  ; preds = %elsebranch1389, %thenbranch1291
  %_secret_lval1391 = load i32, i32* %_secret___v18_ret
  store i32 %_secret_lval1391, i32* %_secret___rval
  %_secret_lval1392 = load i32, i32* %_secret___rval
  ret i32 %_secret_lval1392
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