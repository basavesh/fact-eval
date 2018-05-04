; verify with: smack --bit-precise --verifier=boogie --modular --entry-point=[...]
; ModuleID = 'SmackModule'
source_filename = "SmackModule"

%EVP_AES_HMAC_SHA1 = type { %AES_KEY, %SHA_CTX, %SHA_CTX, %SHA_CTX, i64, [16 x i8] }
%AES_KEY = type { [60 x i32], i32 }
%SHA_CTX = type { i32, i32, i32, i32, i32, i32, i32, [64 x i8], i32 }

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

; Function Attrs: alwaysinline
define internal i32 @constant_time_msb(i32 %_secret_a1) #0 {
entry:
  %_secret_a = alloca i32
  store i32 %_secret_a1, i32* %_secret_a
  %_secret___rval = alloca i32
  %_secret___rnset = alloca i1
  store i32 0, i32* %_secret___rval
  store i1 true, i1* %_secret___rnset
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval = load i32, i32* %_secret_a
  %_secret_lrshift = lshr i32 %_secret_lval, 31
  %_secret_subtmp = sub i32 0, %_secret_lrshift
  store i32 %_secret_subtmp, i32* %_secret___rval
  %_secret_lval2 = load i32, i32* %_secret___rval
  ret i32 %_secret_lval2
}

; Function Attrs: alwaysinline
define internal i32 @constant_time_lt(i32 %_secret_a1, i32 %_secret_b2) #0 {
entry:
  %_secret_a = alloca i32
  store i32 %_secret_a1, i32* %_secret_a
  %_secret_b = alloca i32
  store i32 %_secret_b2, i32* %_secret_b
  %_secret___rval = alloca i32
  %_secret___rnset = alloca i1
  store i32 0, i32* %_secret___rval
  store i1 true, i1* %_secret___rnset
  %_secret_lval = load i32, i32* %_secret_a
  %_secret_lval3 = load i32, i32* %_secret_a
  %_secret_lval4 = load i32, i32* %_secret_b
  %_secret_xortmp = xor i32 %_secret_lval3, %_secret_lval4
  %_secret_lval5 = load i32, i32* %_secret_a
  %_secret_lval6 = load i32, i32* %_secret_b
  %_secret_subtmp = sub i32 %_secret_lval5, %_secret_lval6
  %_secret_lval7 = load i32, i32* %_secret_b
  %_secret_xortmp8 = xor i32 %_secret_subtmp, %_secret_lval7
  %_secret_ortmp = or i32 %_secret_xortmp, %_secret_xortmp8
  %_secret_xortmp9 = xor i32 %_secret_lval, %_secret_ortmp
  %_secret_calltmp = call i32 @constant_time_msb(i32 %_secret_xortmp9)
  store i32 %_secret_calltmp, i32* %_secret___rval
  %_secret_lval10 = load i32, i32* %_secret___rval
  ret i32 %_secret_lval10
}

; Function Attrs: alwaysinline
define internal i32 @constant_time_ge(i32 %_secret_a1, i32 %_secret_b2) #0 {
entry:
  %_secret_a = alloca i32
  store i32 %_secret_a1, i32* %_secret_a
  %_secret_b = alloca i32
  store i32 %_secret_b2, i32* %_secret_b
  %_secret___rval = alloca i32
  %_secret___rnset = alloca i1
  store i32 0, i32* %_secret___rval
  store i1 true, i1* %_secret___rnset
  %_secret_lval = load i32, i32* %_secret_a
  %_secret_lval3 = load i32, i32* %_secret_b
  %_secret_calltmp = call i32 @constant_time_lt(i32 %_secret_lval, i32 %_secret_lval3)
  %_secret_bnottmp = xor i32 %_secret_calltmp, -1
  store i32 %_secret_bnottmp, i32* %_secret___rval
  %_secret_lval4 = load i32, i32* %_secret___rval
  ret i32 %_secret_lval4
}

; Function Attrs: alwaysinline
define internal i32 @constant_time_select(i32 %_secret_mask1, i32 %_secret_a2, i32 %_secret_b3) #0 {
entry:
  %_secret_mask = alloca i32
  store i32 %_secret_mask1, i32* %_secret_mask
  %_secret_a = alloca i32
  store i32 %_secret_a2, i32* %_secret_a
  %_secret_b = alloca i32
  store i32 %_secret_b3, i32* %_secret_b
  %_secret___rval = alloca i32
  %_secret___rnset = alloca i1
  store i32 0, i32* %_secret___rval
  store i1 true, i1* %_secret___rnset
  %_secret_lval = load i32, i32* %_secret_mask
  %_secret_lval4 = load i32, i32* %_secret_a
  %_secret_andtmp = and i32 %_secret_lval, %_secret_lval4
  %_secret_lval5 = load i32, i32* %_secret_mask
  %_secret_bnottmp = xor i32 %_secret_lval5, -1
  %_secret_lval6 = load i32, i32* %_secret_b
  %_secret_andtmp7 = and i32 %_secret_bnottmp, %_secret_lval6
  %_secret_ortmp = or i32 %_secret_andtmp, %_secret_andtmp7
  store i32 %_secret_ortmp, i32* %_secret___rval
  %_secret_lval8 = load i32, i32* %_secret___rval
  ret i32 %_secret_lval8
}

declare void @aesni_cbc_encrypt(i8*, i8*, i64, i32*, i8*, i32)

declare void @_sha1_update(i32*, i8*, i64)

declare void @SHA1_Final(i8*, i32*)

declare void @sha1_block_data_order(i32*, i8*, i32)

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
define internal void @pmac_oreq(i8* %_secret_arrarg1, i32 %_secret_masked_val2) #0 {
entry:
  %_secret_arrarg = alloca i8*
  store i8* %_secret_arrarg1, i8** %_secret_arrarg
  %_secret_masked_val = alloca i32
  store i32 %_secret_masked_val2, i32* %_secret_masked_val
  %_secret___rnset = alloca i1
  %_secret___v5_pmac_val = alloca i32
  store i1 true, i1* %_secret___rnset
  %_secret_dynarrarg = load i8*, i8** %_secret_arrarg
  %_secret_calltmp = call i32 @_load32_le(i8* %_secret_dynarrarg)
  store i32 %_secret_calltmp, i32* %_secret___v5_pmac_val
  %_secret_dynarrarg3 = load i8*, i8** %_secret_arrarg
  %_secret_lval = load i32, i32* %_secret___v5_pmac_val
  %_secret_lval4 = load i32, i32* %_secret_masked_val
  %_secret_ortmp = or i32 %_secret_lval, %_secret_lval4
  call void @_store32_le(i8* %_secret_dynarrarg3, i32 %_secret_ortmp)
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
  %_public___v6_NO_PAYLOAD_LENGTH = alloca i64
  %_public___v7_AES_BLOCK_SIZE = alloca i32
  %_public___v8_SHA_DIGEST_LENGTH = alloca i32
  %_public___v9_TLS1_1_VERSION = alloca i32
  %_public___v10_SHA_LBLOCK = alloca i32
  %_public___v11_SHA_CBLOCK = alloca i32
  %_public___v12_inp = alloca i32
  %_public___v13_outp = alloca i32
  %_public___v14__len = alloca i32
  %_secret___v15_ret = alloca i32
  %_public___v17___v16_len = alloca i32
  %_public___v19___v18_len = alloca i32
  %_secret___v20_pad = alloca i32
  %_public___v21_maxpad = alloca i32
  %_secret___v22_mask = alloca i32
  %_secret___v23_inp_len = alloca i32
  %_public___v25___v24_len = alloca i32
  %_public___v26_j = alloca i32
  %_public___v28___v27_len = alloca i32
  %_secret___v29_bitlen = alloca i32
  %_public___v31_p_res = alloca i32
  %_public___v32_j = alloca i32
  %_secret___v33_c = alloca i32
  %_secret___v34_mask = alloca i32
  %_public___v35_j = alloca i32
  %_public___v36_i = alloca i32
  %_secret___v37_mask = alloca i32
  %_secret___v38_mask_ = alloca i32
  %_secret___v39_s_outp = alloca i32
  %_secret___v40_s_len = alloca i32
  %_public___v41_p_outp = alloca i32
  %_secret___v42_off = alloca i32
  %_secret___v43_s_res = alloca i32
  %_secret___v44_i = alloca i32
  %_public___v45_j = alloca i32
  %_secret___v46_c = alloca i32
  %_secret___v47_cmask = alloca i32
  store i32 0, i32* %_secret___rval
  store i1 true, i1* %_secret___rnset
  store i64 -1, i64* %_public___v6_NO_PAYLOAD_LENGTH
  store i32 16, i32* %_public___v7_AES_BLOCK_SIZE
  store i32 20, i32* %_public___v8_SHA_DIGEST_LENGTH
  store i32 770, i32* %_public___v9_TLS1_1_VERSION
  store i32 16, i32* %_public___v10_SHA_LBLOCK
  %_public_lval = load i32, i32* %_public___v10_SHA_LBLOCK
  %_public_multmp = mul i32 %_public_lval, 4
  store i32 %_public_multmp, i32* %_public___v11_SHA_CBLOCK
  store i32 0, i32* %_public___v12_inp
  store i32 0, i32* %_public___v13_outp
  %_public_lval10 = load i32, i32* %_public____out_len
  store i32 %_public_lval10, i32* %_public___v14__len
  store i32 1, i32* %_secret___v15_ret
  %_public_lval11 = load i16, i16* %_public_tls_ver
  %_public_lval12 = load i32, i32* %_public___v9_TLS1_1_VERSION
  %_public_lhssext = zext i16 %_public_lval11 to i32
  %_public_ugtetmp = icmp uge i32 %_public_lhssext, %_public_lval12
  %_public_branchcompare = icmp eq i1 %_public_ugtetmp, true
  br i1 %_public_branchcompare, label %thenbranch, label %elsebranch29

thenbranch:                                       ; preds = %entry
  %_public_lval13 = load i32, i32* %_public___v14__len
  %_public_lval14 = load i32, i32* %_public___v7_AES_BLOCK_SIZE
  %_public_lval15 = load i32, i32* %_public___v8_SHA_DIGEST_LENGTH
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
  %_public_lval21 = load i32, i32* %_public___v12_inp
  %_public_lval22 = load i32, i32* %_public___v7_AES_BLOCK_SIZE
  %_public_addtmp23 = add i32 %_public_lval21, %_public_lval22
  store i32 %_public_addtmp23, i32* %_public___v12_inp
  %_public_lval24 = load i32, i32* %_public___v13_outp
  %_public_lval25 = load i32, i32* %_public___v7_AES_BLOCK_SIZE
  %_public_addtmp26 = add i32 %_public_lval24, %_public_lval25
  store i32 %_public_addtmp26, i32* %_public___v13_outp
  %_public_lval27 = load i32, i32* %_public___v14__len
  %_public_lval28 = load i32, i32* %_public___v7_AES_BLOCK_SIZE
  %_public_subtmp = sub i32 %_public_lval27, %_public_lval28
  store i32 %_public_subtmp, i32* %_public___v14__len
  br label %branchmerge39

elsebranch29:                                     ; preds = %entry
  %_public_lval30 = load i32, i32* %_public___v14__len
  %_public_lval31 = load i32, i32* %_public___v8_SHA_DIGEST_LENGTH
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
  %_public_lval40 = load i32, i32* %_public___v14__len
  store i32 %_public_lval40, i32* %_public___v17___v16_len
  %_public_lval41 = load i32, i32* %_public___v14__len
  store i32 %_public_lval41, i32* %_public___v19___v18_len
  %_public_lval42 = load i32, i32* %_public___v12_inp
  %_public_lval43 = load i32, i32* %_public___v17___v16_len
  %_public_icast = zext i32 %_public_lval43 to i64
  %_public_lhssext44 = zext i32 %_public_lval42 to i64
  %_public_addtmp45 = add i64 %_public_lhssext44, %_public_icast
  %_public_truncbinop = trunc i64 %_public_addtmp45 to i32
  %_public_lval46 = load i32, i32* %_public___v12_inp
  %_public_ugttmp = icmp ugt i32 %_public_truncbinop, %_public_lval46
  %_public_zexttmp = zext i1 %_public_ugttmp to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp)
  %_public_lval47 = load i32, i32* %_public___v12_inp
  %_public_lhssext48 = zext i32 %_public_lval47 to i64
  %_public_ugtetmp49 = icmp uge i64 %_public_lhssext48, 0
  %_public_zexttmp50 = zext i1 %_public_ugtetmp49 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp50)
  %_public_lval51 = load i32, i32* %_public___v12_inp
  %_public_lval52 = load i32, i32* %_public____in_len
  %_public_icast53 = zext i32 %_public_lval52 to i64
  %_public_lhssext54 = zext i32 %_public_lval51 to i64
  %_public_ulttmp55 = icmp ult i64 %_public_lhssext54, %_public_icast53
  %_public_zexttmp56 = zext i1 %_public_ulttmp55 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp56)
  %_public_lval57 = load i32, i32* %_public___v12_inp
  %_public_lval58 = load i32, i32* %_public___v17___v16_len
  %_public_icast59 = zext i32 %_public_lval58 to i64
  %_public_lhssext60 = zext i32 %_public_lval57 to i64
  %_public_addtmp61 = add i64 %_public_lhssext60, %_public_icast59
  %_public_truncbinop62 = trunc i64 %_public_addtmp61 to i32
  %_public_subtmp63 = sub i32 %_public_truncbinop62, 1
  %_public_lhssext64 = zext i32 %_public_subtmp63 to i64
  %_public_ugtetmp65 = icmp uge i64 %_public_lhssext64, 0
  %_public_zexttmp66 = zext i1 %_public_ugtetmp65 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp66)
  %_public_lval67 = load i32, i32* %_public___v12_inp
  %_public_lval68 = load i32, i32* %_public___v17___v16_len
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
  %_public_lval79 = load i32, i32* %_public___v12_inp
  %_secret_ldedviewptr = load i8*, i8** %_secret_arrarg5
  %_secret_source_gep = getelementptr inbounds i8, i8* %_secret_ldedviewptr, i32 %_public_lval79
  %_secret_arrviewdyn = alloca i8*
  store i8* %_secret_source_gep, i8** %_secret_arrviewdyn
  %_public_lval80 = load i32, i32* %_public___v12_inp
  %_public_lval81 = load i32, i32* %_public___v17___v16_len
  %_public_icast82 = zext i32 %_public_lval81 to i64
  %_public_lhssext83 = zext i32 %_public_lval80 to i64
  %_public_addtmp84 = add i64 %_public_lhssext83, %_public_icast82
  %_public_truncbinop85 = trunc i64 %_public_addtmp84 to i32
  %_public_lval86 = load i32, i32* %_public___v12_inp
  %_public_ugttmp87 = icmp ugt i32 %_public_truncbinop85, %_public_lval86
  %_public_zexttmp88 = zext i1 %_public_ugttmp87 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp88)
  %_public_lval89 = load i32, i32* %_public___v12_inp
  %_public_lhssext90 = zext i32 %_public_lval89 to i64
  %_public_ugtetmp91 = icmp uge i64 %_public_lhssext90, 0
  %_public_zexttmp92 = zext i1 %_public_ugtetmp91 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp92)
  %_public_lval93 = load i32, i32* %_public___v12_inp
  %_public_lval94 = load i32, i32* %_public____in_len
  %_public_icast95 = zext i32 %_public_lval94 to i64
  %_public_lhssext96 = zext i32 %_public_lval93 to i64
  %_public_ulttmp97 = icmp ult i64 %_public_lhssext96, %_public_icast95
  %_public_zexttmp98 = zext i1 %_public_ulttmp97 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp98)
  %_public_lval99 = load i32, i32* %_public___v12_inp
  %_public_lval100 = load i32, i32* %_public___v17___v16_len
  %_public_icast101 = zext i32 %_public_lval100 to i64
  %_public_lhssext102 = zext i32 %_public_lval99 to i64
  %_public_addtmp103 = add i64 %_public_lhssext102, %_public_icast101
  %_public_truncbinop104 = trunc i64 %_public_addtmp103 to i32
  %_public_subtmp105 = sub i32 %_public_truncbinop104, 1
  %_public_lhssext106 = zext i32 %_public_subtmp105 to i64
  %_public_ugtetmp107 = icmp uge i64 %_public_lhssext106, 0
  %_public_zexttmp108 = zext i1 %_public_ugtetmp107 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp108)
  %_public_lval109 = load i32, i32* %_public___v12_inp
  %_public_lval110 = load i32, i32* %_public___v17___v16_len
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
  %_public_lval121 = load i32, i32* %_public___v12_inp
  %_secret_ldedviewptr122 = load i8*, i8** %_secret_arrarg5
  %_secret_source_gep123 = getelementptr inbounds i8, i8* %_secret_ldedviewptr122, i32 %_public_lval121
  %_secret_arrviewdyn124 = alloca i8*
  store i8* %_secret_source_gep123, i8** %_secret_arrviewdyn124
  %_secret_dynarrarg125 = load i8*, i8** %_secret_arrviewdyn124
  %_public_lval126 = load i32, i32* %_public___v13_outp
  %_public_lval127 = load i32, i32* %_public___v19___v18_len
  %_public_icast128 = zext i32 %_public_lval127 to i64
  %_public_lhssext129 = zext i32 %_public_lval126 to i64
  %_public_addtmp130 = add i64 %_public_lhssext129, %_public_icast128
  %_public_truncbinop131 = trunc i64 %_public_addtmp130 to i32
  %_public_lval132 = load i32, i32* %_public___v13_outp
  %_public_ugttmp133 = icmp ugt i32 %_public_truncbinop131, %_public_lval132
  %_public_zexttmp134 = zext i1 %_public_ugttmp133 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp134)
  %_public_lval135 = load i32, i32* %_public___v13_outp
  %_public_lhssext136 = zext i32 %_public_lval135 to i64
  %_public_ugtetmp137 = icmp uge i64 %_public_lhssext136, 0
  %_public_zexttmp138 = zext i1 %_public_ugtetmp137 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp138)
  %_public_lval139 = load i32, i32* %_public___v13_outp
  %_public_lval140 = load i32, i32* %_public____out_len
  %_public_icast141 = zext i32 %_public_lval140 to i64
  %_public_lhssext142 = zext i32 %_public_lval139 to i64
  %_public_ulttmp143 = icmp ult i64 %_public_lhssext142, %_public_icast141
  %_public_zexttmp144 = zext i1 %_public_ulttmp143 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp144)
  %_public_lval145 = load i32, i32* %_public___v13_outp
  %_public_lval146 = load i32, i32* %_public___v19___v18_len
  %_public_icast147 = zext i32 %_public_lval146 to i64
  %_public_lhssext148 = zext i32 %_public_lval145 to i64
  %_public_addtmp149 = add i64 %_public_lhssext148, %_public_icast147
  %_public_truncbinop150 = trunc i64 %_public_addtmp149 to i32
  %_public_subtmp151 = sub i32 %_public_truncbinop150, 1
  %_public_lhssext152 = zext i32 %_public_subtmp151 to i64
  %_public_ugtetmp153 = icmp uge i64 %_public_lhssext152, 0
  %_public_zexttmp154 = zext i1 %_public_ugtetmp153 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp154)
  %_public_lval155 = load i32, i32* %_public___v13_outp
  %_public_lval156 = load i32, i32* %_public___v19___v18_len
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
  %_public_lval167 = load i32, i32* %_public___v13_outp
  %_secret_ldedviewptr168 = load i8*, i8** %_secret_arrarg2
  %_secret_source_gep169 = getelementptr inbounds i8, i8* %_secret_ldedviewptr168, i32 %_public_lval167
  %_secret_arrviewdyn170 = alloca i8*
  store i8* %_secret_source_gep169, i8** %_secret_arrviewdyn170
  %_public_lval171 = load i32, i32* %_public___v13_outp
  %_public_lval172 = load i32, i32* %_public___v19___v18_len
  %_public_icast173 = zext i32 %_public_lval172 to i64
  %_public_lhssext174 = zext i32 %_public_lval171 to i64
  %_public_addtmp175 = add i64 %_public_lhssext174, %_public_icast173
  %_public_truncbinop176 = trunc i64 %_public_addtmp175 to i32
  %_public_lval177 = load i32, i32* %_public___v13_outp
  %_public_ugttmp178 = icmp ugt i32 %_public_truncbinop176, %_public_lval177
  %_public_zexttmp179 = zext i1 %_public_ugttmp178 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp179)
  %_public_lval180 = load i32, i32* %_public___v13_outp
  %_public_lhssext181 = zext i32 %_public_lval180 to i64
  %_public_ugtetmp182 = icmp uge i64 %_public_lhssext181, 0
  %_public_zexttmp183 = zext i1 %_public_ugtetmp182 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp183)
  %_public_lval184 = load i32, i32* %_public___v13_outp
  %_public_lval185 = load i32, i32* %_public____out_len
  %_public_icast186 = zext i32 %_public_lval185 to i64
  %_public_lhssext187 = zext i32 %_public_lval184 to i64
  %_public_ulttmp188 = icmp ult i64 %_public_lhssext187, %_public_icast186
  %_public_zexttmp189 = zext i1 %_public_ulttmp188 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp189)
  %_public_lval190 = load i32, i32* %_public___v13_outp
  %_public_lval191 = load i32, i32* %_public___v19___v18_len
  %_public_icast192 = zext i32 %_public_lval191 to i64
  %_public_lhssext193 = zext i32 %_public_lval190 to i64
  %_public_addtmp194 = add i64 %_public_lhssext193, %_public_icast192
  %_public_truncbinop195 = trunc i64 %_public_addtmp194 to i32
  %_public_subtmp196 = sub i32 %_public_truncbinop195, 1
  %_public_lhssext197 = zext i32 %_public_subtmp196 to i64
  %_public_ugtetmp198 = icmp uge i64 %_public_lhssext197, 0
  %_public_zexttmp199 = zext i1 %_public_ugtetmp198 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp199)
  %_public_lval200 = load i32, i32* %_public___v13_outp
  %_public_lval201 = load i32, i32* %_public___v19___v18_len
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
  %_public_lval212 = load i32, i32* %_public___v13_outp
  %_secret_ldedviewptr213 = load i8*, i8** %_secret_arrarg2
  %_secret_source_gep214 = getelementptr inbounds i8, i8* %_secret_ldedviewptr213, i32 %_public_lval212
  %_secret_arrviewdyn215 = alloca i8*
  store i8* %_secret_source_gep214, i8** %_secret_arrviewdyn215
  %_secret_dynarrarg216 = load i8*, i8** %_secret_arrviewdyn215
  %_public_lval217 = load i32, i32* %_public___v14__len
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
  store i32 %_secret_zexttmp, i32* %_secret___v20_pad
  %_public_lval237 = load i32, i32* %_public___v14__len
  %_public_lval238 = load i32, i32* %_public___v8_SHA_DIGEST_LENGTH
  %_public_addtmp239 = add i32 %_public_lval238, 1
  %_public_subtmp240 = sub i32 %_public_lval237, %_public_addtmp239
  store i32 %_public_subtmp240, i32* %_public___v21_maxpad
  %_public_lval241 = load i32, i32* %_public___v21_maxpad
  call void @__VERIFIER_assert(i32 1)
  %_public_lval242 = load i32, i32* %_public___v21_maxpad
  %_public_subtmp243 = sub i32 255, %_public_lval242
  %_public_arshift = ashr i32 %_public_subtmp243, 24
  %_public_ortmp = or i32 %_public_lval241, %_public_arshift
  store i32 %_public_ortmp, i32* %_public___v21_maxpad
  %_public_lval244 = load i32, i32* %_public___v21_maxpad
  %_public_andtmp = and i32 %_public_lval244, 255
  %_public_truncbinop245 = trunc i32 %_public_andtmp to i8
  %_public_zexttmp246 = zext i8 %_public_truncbinop245 to i32
  store i32 %_public_zexttmp246, i32* %_public___v21_maxpad
  %_public_lval247 = load i32, i32* %_public___v21_maxpad
  %_secret_lval248 = load i32, i32* %_secret___v20_pad
  %_secret_calltmp = call i32 @constant_time_ge(i32 %_public_lval247, i32 %_secret_lval248)
  store i32 %_secret_calltmp, i32* %_secret___v22_mask
  %_secret_lval249 = load i32, i32* %_secret___v15_ret
  %_secret_lval250 = load i32, i32* %_secret___v22_mask
  %_secret_andtmp = and i32 %_secret_lval249, %_secret_lval250
  store i32 %_secret_andtmp, i32* %_secret___v15_ret
  %_secret_lval251 = load i32, i32* %_secret___v22_mask
  %_secret_lval252 = load i32, i32* %_secret___v20_pad
  %_public_lval253 = load i32, i32* %_public___v21_maxpad
  %_secret_calltmp254 = call i32 @constant_time_select(i32 %_secret_lval251, i32 %_secret_lval252, i32 %_public_lval253)
  store i32 %_secret_calltmp254, i32* %_secret___v20_pad
  %_public_lval255 = load i32, i32* %_public___v14__len
  %_public_lval256 = load i32, i32* %_public___v8_SHA_DIGEST_LENGTH
  %_secret_lval257 = load i32, i32* %_secret___v20_pad
  %_secret_addtmp = add i32 %_public_lval256, %_secret_lval257
  %_secret_addtmp258 = add i32 %_secret_addtmp, 1
  %_secret_subtmp = sub i32 %_public_lval255, %_secret_addtmp258
  store i32 %_secret_subtmp, i32* %_secret___v23_inp_len
  %_public_lval259 = load i64, i64* %_public_plen
  %_public_subtmp260 = sub i64 %_public_lval259, 2
  %_public_ugtetmp261 = icmp uge i64 %_public_subtmp260, 0
  %_public_zexttmp262 = zext i1 %_public_ugtetmp261 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp262)
  %_public_lval263 = load i64, i64* %_public_plen
  %_public_subtmp264 = sub i64 %_public_lval263, 2
  %_public_ulttmp265 = icmp ult i64 %_public_subtmp264, 16
  %_public_zexttmp266 = zext i1 %_public_ulttmp265 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp266)
  %_secret_structgep267 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 5
  %_public_lval268 = load i64, i64* %_public_plen
  %_public_subtmp269 = sub i64 %_public_lval268, 2
  %_secret_ptr270 = getelementptr inbounds [16 x i8], [16 x i8]* %_secret_structgep267, i64 0, i64 %_public_subtmp269
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval271 = load i32, i32* %_secret___v23_inp_len
  %_secret_lrshift = lshr i32 %_secret_lval271, 8
  %_secret_ucast = trunc i32 %_secret_lrshift to i8
  store i8 %_secret_ucast, i8* %_secret_ptr270
  %_public_lval272 = load i64, i64* %_public_plen
  %_public_subtmp273 = sub i64 %_public_lval272, 1
  %_public_ugtetmp274 = icmp uge i64 %_public_subtmp273, 0
  %_public_zexttmp275 = zext i1 %_public_ugtetmp274 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp275)
  %_public_lval276 = load i64, i64* %_public_plen
  %_public_subtmp277 = sub i64 %_public_lval276, 1
  %_public_ulttmp278 = icmp ult i64 %_public_subtmp277, 16
  %_public_zexttmp279 = zext i1 %_public_ulttmp278 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp279)
  %_secret_structgep280 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 5
  %_public_lval281 = load i64, i64* %_public_plen
  %_public_subtmp282 = sub i64 %_public_lval281, 1
  %_secret_ptr283 = getelementptr inbounds [16 x i8], [16 x i8]* %_secret_structgep280, i64 0, i64 %_public_subtmp282
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval284 = load i32, i32* %_secret___v23_inp_len
  %_secret_lrshift285 = lshr i32 %_secret_lval284, 0
  %_secret_ucast286 = trunc i32 %_secret_lrshift285 to i8
  store i8 %_secret_ucast286, i8* %_secret_ptr283
  %_public_structgep287 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_public_structgep288 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 1
  call void @_structcopy_SHA_CTX(%SHA_CTX* %_public_structgep287, %SHA_CTX* %_public_structgep288)
  %_public_lval289 = load i64, i64* %_public_plen
  %_public_trunctmp = trunc i64 %_public_lval289 to i32
  store i32 %_public_trunctmp, i32* %_public___v25___v24_len
  %_public_structgep290 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep291 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep290, i32 0, i32 0
  %_public_lval292 = load i32, i32* %_public___v25___v24_len
  %_public_icast293 = zext i32 %_public_lval292 to i64
  %_public_addtmp294 = add i64 0, %_public_icast293
  %_public_truncbinop295 = trunc i64 %_public_addtmp294 to i8
  %_public_sgttmp = icmp sgt i8 %_public_truncbinop295, 0
  %_public_zexttmp296 = zext i1 %_public_sgttmp to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp296)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_public_lval297 = load i32, i32* %_public___v25___v24_len
  %_public_icast298 = zext i32 %_public_lval297 to i64
  %_public_addtmp299 = add i64 0, %_public_icast298
  %_public_truncbinop300 = trunc i64 %_public_addtmp299 to i8
  %_public_subtmp301 = sub i8 %_public_truncbinop300, 1
  %_public_lhssext302 = sext i8 %_public_subtmp301 to i64
  %_public_sgtetmp = icmp sge i64 %_public_lhssext302, 0
  %_public_zexttmp303 = zext i1 %_public_sgtetmp to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp303)
  %_public_lval304 = load i32, i32* %_public___v25___v24_len
  %_public_icast305 = zext i32 %_public_lval304 to i64
  %_public_addtmp306 = add i64 0, %_public_icast305
  %_public_truncbinop307 = trunc i64 %_public_addtmp306 to i8
  %_public_subtmp308 = sub i8 %_public_truncbinop307, 1
  %_public_lhssext309 = sext i8 %_public_subtmp308 to i64
  %_public_slttmp = icmp slt i64 %_public_lhssext309, 16
  %_public_zexttmp310 = zext i1 %_public_slttmp to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp310)
  %_secret_structgep311 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 5
  %_secret_arrview = alloca i8*
  %_secret_source_gep312 = getelementptr inbounds [16 x i8], [16 x i8]* %_secret_structgep311, i8 0, i8 0
  store i8* %_secret_source_gep312, i8** %_secret_arrview
  %_public_lval313 = load i32, i32* %_public___v25___v24_len
  %_public_icast314 = zext i32 %_public_lval313 to i64
  %_public_addtmp315 = add i64 0, %_public_icast314
  %_public_truncbinop316 = trunc i64 %_public_addtmp315 to i8
  %_public_sgttmp317 = icmp sgt i8 %_public_truncbinop316, 0
  %_public_zexttmp318 = zext i1 %_public_sgttmp317 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp318)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_public_lval319 = load i32, i32* %_public___v25___v24_len
  %_public_icast320 = zext i32 %_public_lval319 to i64
  %_public_addtmp321 = add i64 0, %_public_icast320
  %_public_truncbinop322 = trunc i64 %_public_addtmp321 to i8
  %_public_subtmp323 = sub i8 %_public_truncbinop322, 1
  %_public_lhssext324 = sext i8 %_public_subtmp323 to i64
  %_public_sgtetmp325 = icmp sge i64 %_public_lhssext324, 0
  %_public_zexttmp326 = zext i1 %_public_sgtetmp325 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp326)
  %_public_lval327 = load i32, i32* %_public___v25___v24_len
  %_public_icast328 = zext i32 %_public_lval327 to i64
  %_public_addtmp329 = add i64 0, %_public_icast328
  %_public_truncbinop330 = trunc i64 %_public_addtmp329 to i8
  %_public_subtmp331 = sub i8 %_public_truncbinop330, 1
  %_public_lhssext332 = sext i8 %_public_subtmp331 to i64
  %_public_slttmp333 = icmp slt i64 %_public_lhssext332, 16
  %_public_zexttmp334 = zext i1 %_public_slttmp333 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp334)
  %_secret_structgep335 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 5
  %_secret_arrview336 = alloca i8*
  %_secret_source_gep337 = getelementptr inbounds [16 x i8], [16 x i8]* %_secret_structgep335, i8 0, i8 0
  store i8* %_secret_source_gep337, i8** %_secret_arrview336
  %_secret_dynarrarg338 = load i8*, i8** %_secret_arrview336
  %_public_lval339 = load i64, i64* %_public_plen
  call void @_sha1_update(i32* %_secret_structgep291, i8* %_secret_dynarrarg338, i64 %_public_lval339)
  %_public_lval340 = load i32, i32* %_public___v14__len
  %_public_lval341 = load i32, i32* %_public___v8_SHA_DIGEST_LENGTH
  %_public_subtmp342 = sub i32 %_public_lval340, %_public_lval341
  store i32 %_public_subtmp342, i32* %_public___v14__len
  %_public_lval343 = load i32, i32* %_public___v14__len
  %_public_lval344 = load i32, i32* %_public___v11_SHA_CBLOCK
  %_public_addtmp345 = add i32 256, %_public_lval344
  %_public_ugtetmp346 = icmp uge i32 %_public_lval343, %_public_addtmp345
  %_public_branchcompare347 = icmp eq i1 %_public_ugtetmp346, true
  br i1 %_public_branchcompare347, label %thenbranch348, label %elsebranch468

thenbranch348:                                    ; preds = %branchmerge39
  %_public_lval349 = load i32, i32* %_public___v14__len
  %_public_lval350 = load i32, i32* %_public___v11_SHA_CBLOCK
  %_public_addtmp351 = add i32 256, %_public_lval350
  %_public_subtmp352 = sub i32 %_public_lval349, %_public_addtmp351
  %_public_lval353 = load i32, i32* %_public___v11_SHA_CBLOCK
  %_public_subtmp354 = sub i32 0, %_public_lval353
  %_public_andtmp355 = and i32 %_public_subtmp352, %_public_subtmp354
  store i32 %_public_andtmp355, i32* %_public___v26_j
  %_public_lval356 = load i32, i32* %_public___v26_j
  %_public_lval357 = load i32, i32* %_public___v11_SHA_CBLOCK
  %_public_structgep358 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_public_structgep359 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep358, i32 0, i32 8
  %_public_lval360 = load i32, i32* %_public_structgep359
  %_public_subtmp361 = sub i32 %_public_lval357, %_public_lval360
  %_public_addtmp362 = add i32 %_public_lval356, %_public_subtmp361
  store i32 %_public_addtmp362, i32* %_public___v26_j
  %_public_lval363 = load i32, i32* %_public___v26_j
  store i32 %_public_lval363, i32* %_public___v28___v27_len
  %_public_structgep364 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep365 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep364, i32 0, i32 0
  %_public_lval366 = load i32, i32* %_public___v13_outp
  %_public_lval367 = load i32, i32* %_public___v28___v27_len
  %_public_icast368 = zext i32 %_public_lval367 to i64
  %_public_lhssext369 = zext i32 %_public_lval366 to i64
  %_public_addtmp370 = add i64 %_public_lhssext369, %_public_icast368
  %_public_truncbinop371 = trunc i64 %_public_addtmp370 to i32
  %_public_lval372 = load i32, i32* %_public___v13_outp
  %_public_ugttmp373 = icmp ugt i32 %_public_truncbinop371, %_public_lval372
  %_public_zexttmp374 = zext i1 %_public_ugttmp373 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp374)
  %_public_lval375 = load i32, i32* %_public___v13_outp
  %_public_lhssext376 = zext i32 %_public_lval375 to i64
  %_public_ugtetmp377 = icmp uge i64 %_public_lhssext376, 0
  %_public_zexttmp378 = zext i1 %_public_ugtetmp377 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp378)
  %_public_lval379 = load i32, i32* %_public___v13_outp
  %_public_lval380 = load i32, i32* %_public____out_len
  %_public_icast381 = zext i32 %_public_lval380 to i64
  %_public_lhssext382 = zext i32 %_public_lval379 to i64
  %_public_ulttmp383 = icmp ult i64 %_public_lhssext382, %_public_icast381
  %_public_zexttmp384 = zext i1 %_public_ulttmp383 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp384)
  %_public_lval385 = load i32, i32* %_public___v13_outp
  %_public_lval386 = load i32, i32* %_public___v28___v27_len
  %_public_icast387 = zext i32 %_public_lval386 to i64
  %_public_lhssext388 = zext i32 %_public_lval385 to i64
  %_public_addtmp389 = add i64 %_public_lhssext388, %_public_icast387
  %_public_truncbinop390 = trunc i64 %_public_addtmp389 to i32
  %_public_subtmp391 = sub i32 %_public_truncbinop390, 1
  %_public_lhssext392 = zext i32 %_public_subtmp391 to i64
  %_public_ugtetmp393 = icmp uge i64 %_public_lhssext392, 0
  %_public_zexttmp394 = zext i1 %_public_ugtetmp393 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp394)
  %_public_lval395 = load i32, i32* %_public___v13_outp
  %_public_lval396 = load i32, i32* %_public___v28___v27_len
  %_public_icast397 = zext i32 %_public_lval396 to i64
  %_public_lhssext398 = zext i32 %_public_lval395 to i64
  %_public_addtmp399 = add i64 %_public_lhssext398, %_public_icast397
  %_public_truncbinop400 = trunc i64 %_public_addtmp399 to i32
  %_public_subtmp401 = sub i32 %_public_truncbinop400, 1
  %_public_lval402 = load i32, i32* %_public____out_len
  %_public_icast403 = zext i32 %_public_lval402 to i64
  %_public_lhssext404 = zext i32 %_public_subtmp401 to i64
  %_public_ulttmp405 = icmp ult i64 %_public_lhssext404, %_public_icast403
  %_public_zexttmp406 = zext i1 %_public_ulttmp405 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp406)
  %_public_lval407 = load i32, i32* %_public___v13_outp
  %_secret_ldedviewptr408 = load i8*, i8** %_secret_arrarg2
  %_secret_source_gep409 = getelementptr inbounds i8, i8* %_secret_ldedviewptr408, i32 %_public_lval407
  %_secret_arrviewdyn410 = alloca i8*
  store i8* %_secret_source_gep409, i8** %_secret_arrviewdyn410
  %_public_lval411 = load i32, i32* %_public___v13_outp
  %_public_lval412 = load i32, i32* %_public___v28___v27_len
  %_public_icast413 = zext i32 %_public_lval412 to i64
  %_public_lhssext414 = zext i32 %_public_lval411 to i64
  %_public_addtmp415 = add i64 %_public_lhssext414, %_public_icast413
  %_public_truncbinop416 = trunc i64 %_public_addtmp415 to i32
  %_public_lval417 = load i32, i32* %_public___v13_outp
  %_public_ugttmp418 = icmp ugt i32 %_public_truncbinop416, %_public_lval417
  %_public_zexttmp419 = zext i1 %_public_ugttmp418 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp419)
  %_public_lval420 = load i32, i32* %_public___v13_outp
  %_public_lhssext421 = zext i32 %_public_lval420 to i64
  %_public_ugtetmp422 = icmp uge i64 %_public_lhssext421, 0
  %_public_zexttmp423 = zext i1 %_public_ugtetmp422 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp423)
  %_public_lval424 = load i32, i32* %_public___v13_outp
  %_public_lval425 = load i32, i32* %_public____out_len
  %_public_icast426 = zext i32 %_public_lval425 to i64
  %_public_lhssext427 = zext i32 %_public_lval424 to i64
  %_public_ulttmp428 = icmp ult i64 %_public_lhssext427, %_public_icast426
  %_public_zexttmp429 = zext i1 %_public_ulttmp428 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp429)
  %_public_lval430 = load i32, i32* %_public___v13_outp
  %_public_lval431 = load i32, i32* %_public___v28___v27_len
  %_public_icast432 = zext i32 %_public_lval431 to i64
  %_public_lhssext433 = zext i32 %_public_lval430 to i64
  %_public_addtmp434 = add i64 %_public_lhssext433, %_public_icast432
  %_public_truncbinop435 = trunc i64 %_public_addtmp434 to i32
  %_public_subtmp436 = sub i32 %_public_truncbinop435, 1
  %_public_lhssext437 = zext i32 %_public_subtmp436 to i64
  %_public_ugtetmp438 = icmp uge i64 %_public_lhssext437, 0
  %_public_zexttmp439 = zext i1 %_public_ugtetmp438 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp439)
  %_public_lval440 = load i32, i32* %_public___v13_outp
  %_public_lval441 = load i32, i32* %_public___v28___v27_len
  %_public_icast442 = zext i32 %_public_lval441 to i64
  %_public_lhssext443 = zext i32 %_public_lval440 to i64
  %_public_addtmp444 = add i64 %_public_lhssext443, %_public_icast442
  %_public_truncbinop445 = trunc i64 %_public_addtmp444 to i32
  %_public_subtmp446 = sub i32 %_public_truncbinop445, 1
  %_public_lval447 = load i32, i32* %_public____out_len
  %_public_icast448 = zext i32 %_public_lval447 to i64
  %_public_lhssext449 = zext i32 %_public_subtmp446 to i64
  %_public_ulttmp450 = icmp ult i64 %_public_lhssext449, %_public_icast448
  %_public_zexttmp451 = zext i1 %_public_ulttmp450 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp451)
  %_public_lval452 = load i32, i32* %_public___v13_outp
  %_secret_ldedviewptr453 = load i8*, i8** %_secret_arrarg2
  %_secret_source_gep454 = getelementptr inbounds i8, i8* %_secret_ldedviewptr453, i32 %_public_lval452
  %_secret_arrviewdyn455 = alloca i8*
  store i8* %_secret_source_gep454, i8** %_secret_arrviewdyn455
  %_secret_dynarrarg456 = load i8*, i8** %_secret_arrviewdyn455
  %_public_lval457 = load i32, i32* %_public___v26_j
  %_public_zexttmp458 = zext i32 %_public_lval457 to i64
  call void @_sha1_update(i32* %_secret_structgep365, i8* %_secret_dynarrarg456, i64 %_public_zexttmp458)
  %_public_lval459 = load i32, i32* %_public___v13_outp
  %_public_lval460 = load i32, i32* %_public___v26_j
  %_public_addtmp461 = add i32 %_public_lval459, %_public_lval460
  store i32 %_public_addtmp461, i32* %_public___v13_outp
  %_public_lval462 = load i32, i32* %_public___v14__len
  %_public_lval463 = load i32, i32* %_public___v26_j
  %_public_subtmp464 = sub i32 %_public_lval462, %_public_lval463
  store i32 %_public_subtmp464, i32* %_public___v14__len
  %_secret_lval465 = load i32, i32* %_secret___v23_inp_len
  %_public_lval466 = load i32, i32* %_public___v26_j
  %_secret_subtmp467 = sub i32 %_secret_lval465, %_public_lval466
  store i32 %_secret_subtmp467, i32* %_secret___v23_inp_len
  br label %branchmerge469

elsebranch468:                                    ; preds = %branchmerge39
  br label %branchmerge469

branchmerge469:                                   ; preds = %elsebranch468, %thenbranch348
  %_public_structgep470 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep471 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep470, i32 0, i32 5
  %_secret_lval472 = load i32, i32* %_secret_structgep471
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval473 = load i32, i32* %_secret___v23_inp_len
  %_secret_lshift = shl i32 %_secret_lval473, 3
  %_secret_addtmp474 = add i32 %_secret_lval472, %_secret_lshift
  store i32 %_secret_addtmp474, i32* %_secret___v29_bitlen
  %_secret_lval475 = load i32, i32* %_secret___v29_bitlen
  %_secret_calltmp476 = call i32 @bswap4(i32 %_secret_lval475)
  store i32 %_secret_calltmp476, i32* %_secret___v29_bitlen
  %_secret___v30_pmac = alloca [20 x i8], align 32
  %_secret_sourcecasted = bitcast [20 x i8]* %_secret___v30_pmac to i8*
  call void @llvm.memset.p0i8.i64(i8* %_secret_sourcecasted, i8 0, i64 20, i32 0, i1 false)
  %_public_structgep477 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_public_structgep478 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep477, i32 0, i32 8
  %_public_lval479 = load i32, i32* %_public_structgep478
  store i32 %_public_lval479, i32* %_public___v31_p_res
  %_public_calltmp = call i32 @__VERIFIER_nondet_unsigned_int()
  store i32 %_public_calltmp, i32* %_public___v32_j
  %_public_lval480 = load i32, i32* %_public___v32_j
  %_public_lval481 = load i32, i32* %_public___v14__len
  %_public_ulttmp482 = icmp ult i32 %_public_lval480, %_public_lval481
  %_public_branchcompare483 = icmp eq i1 %_public_ulttmp482, true
  br i1 %_public_branchcompare483, label %thenbranch484, label %elsebranch729

thenbranch484:                                    ; preds = %branchmerge469
  %_public_lval485 = load i32, i32* %_public___v32_j
  %_public_lval486 = load i32, i32* %_public___v32_j
  %_public_addtmp487 = add i32 %_public_lval486, 1
  %_public_ulttmp488 = icmp ult i32 %_public_lval485, %_public_addtmp487
  %_public_zexttmp489 = zext i1 %_public_ulttmp488 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp489)
  %_public_lval490 = load i32, i32* %_public___v32_j
  %_public_ulttmp491 = icmp ult i32 0, %_public_lval490
  %_public_lval492 = load i32, i32* %_public___v32_j
  %_public_eqtmp = icmp eq i32 0, %_public_lval492
  %_public_lortmp = or i1 %_public_ulttmp491, %_public_eqtmp
  %_public_zexttmp493 = zext i1 %_public_lortmp to i32
  call void @__VERIFIER_assume(i32 %_public_zexttmp493)
  %_public_lval494 = load i32, i32* %_public___v13_outp
  %_public_lval495 = load i32, i32* %_public___v32_j
  %_public_addtmp496 = add i32 %_public_lval494, %_public_lval495
  %_public_lhssext497 = zext i32 %_public_addtmp496 to i64
  %_public_ugtetmp498 = icmp uge i64 %_public_lhssext497, 0
  %_public_zexttmp499 = zext i1 %_public_ugtetmp498 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp499)
  %_public_lval500 = load i32, i32* %_public___v13_outp
  %_public_lval501 = load i32, i32* %_public___v32_j
  %_public_addtmp502 = add i32 %_public_lval500, %_public_lval501
  %_public_lval503 = load i32, i32* %_public____out_len
  %_public_icast504 = zext i32 %_public_lval503 to i64
  %_public_lhssext505 = zext i32 %_public_addtmp502 to i64
  %_public_ulttmp506 = icmp ult i64 %_public_lhssext505, %_public_icast504
  %_public_zexttmp507 = zext i1 %_public_ulttmp506 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp507)
  %_public_lval508 = load i32, i32* %_public___v13_outp
  %_public_lval509 = load i32, i32* %_public___v32_j
  %_public_addtmp510 = add i32 %_public_lval508, %_public_lval509
  %_secret_dyn511 = load i8*, i8** %_secret_arrarg2
  %_secret_ptr512 = getelementptr inbounds i8, i8* %_secret_dyn511, i32 %_public_addtmp510
  %_secret_lval513 = load i8, i8* %_secret_ptr512
  %_secret_zexttmp514 = zext i8 %_secret_lval513 to i32
  store i32 %_secret_zexttmp514, i32* %_secret___v33_c
  call void @__VERIFIER_assert(i32 1)
  %_public_lval515 = load i32, i32* %_public___v32_j
  %_secret_lval516 = load i32, i32* %_secret___v23_inp_len
  %_secret_subtmp517 = sub i32 %_public_lval515, %_secret_lval516
  %_secret_arshift = ashr i32 %_secret_subtmp517, 24
  store i32 %_secret_arshift, i32* %_secret___v34_mask
  %_secret_lval518 = load i32, i32* %_secret___v33_c
  %_secret_lval519 = load i32, i32* %_secret___v34_mask
  %_secret_andtmp520 = and i32 %_secret_lval518, %_secret_lval519
  store i32 %_secret_andtmp520, i32* %_secret___v33_c
  %_secret_lval521 = load i32, i32* %_secret___v33_c
  %_secret_lval522 = load i32, i32* %_secret___v34_mask
  %_secret_bnottmp = xor i32 %_secret_lval522, -1
  %_secret_andtmp523 = and i32 128, %_secret_bnottmp
  %_secret_truncbinop = trunc i32 %_secret_andtmp523 to i8
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval524 = load i32, i32* %_secret___v23_inp_len
  %_public_lval525 = load i32, i32* %_public___v32_j
  %_secret_subtmp526 = sub i32 %_secret_lval524, %_public_lval525
  %_secret_lrshift527 = lshr i32 %_secret_subtmp526, 24
  %_secret_bnottmp528 = xor i32 %_secret_lrshift527, -1
  %_secret_lhssext = zext i8 %_secret_truncbinop to i32
  %_secret_andtmp529 = and i32 %_secret_lhssext, %_secret_bnottmp528
  %_secret_truncbinop530 = trunc i32 %_secret_andtmp529 to i8
  %_secret_rhssext = zext i8 %_secret_truncbinop530 to i32
  %_secret_ortmp = or i32 %_secret_lval521, %_secret_rhssext
  store i32 %_secret_ortmp, i32* %_secret___v33_c
  %_public_lval531 = load i32, i32* %_public___v31_p_res
  %_public_lhssext532 = zext i32 %_public_lval531 to i64
  %_public_ugtetmp533 = icmp uge i64 %_public_lhssext532, 0
  %_public_zexttmp534 = zext i1 %_public_ugtetmp533 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp534)
  %_public_lval535 = load i32, i32* %_public___v31_p_res
  %_public_lhssext536 = zext i32 %_public_lval535 to i64
  %_public_ulttmp537 = icmp ult i64 %_public_lhssext536, 64
  %_public_zexttmp538 = zext i1 %_public_ulttmp537 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp538)
  %_public_structgep539 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep540 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep539, i32 0, i32 7
  %_public_lval541 = load i32, i32* %_public___v31_p_res
  %_secret_ptr542 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep540, i32 0, i32 %_public_lval541
  %_secret_lval543 = load i32, i32* %_secret___v33_c
  %_secret_ucast544 = trunc i32 %_secret_lval543 to i8
  store i8 %_secret_ucast544, i8* %_secret_ptr542
  %_public_lval545 = load i32, i32* %_public___v31_p_res
  %_public_addtmp546 = add i32 %_public_lval545, 1
  store i32 %_public_addtmp546, i32* %_public___v31_p_res
  %_public_lval547 = load i32, i32* %_public___v31_p_res
  %_public_lval548 = load i32, i32* %_public___v11_SHA_CBLOCK
  %_public_eqtmp549 = icmp eq i32 %_public_lval547, %_public_lval548
  %_public_branchcompare550 = icmp eq i1 %_public_eqtmp549, true
  br i1 %_public_branchcompare550, label %thenbranch551, label %elsebranch727

thenbranch551:                                    ; preds = %thenbranch484
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval552 = load i32, i32* %_secret___v23_inp_len
  %_secret_addtmp553 = add i32 %_secret_lval552, 7
  %_public_lval554 = load i32, i32* %_public___v32_j
  %_secret_subtmp555 = sub i32 %_secret_addtmp553, %_public_lval554
  %_secret_lrshift556 = lshr i32 %_secret_subtmp555, 31
  %_secret_subtmp557 = sub i32 0, %_secret_lrshift556
  store i32 %_secret_subtmp557, i32* %_secret___v34_mask
  %_public_lval558 = load i32, i32* %_public___v10_SHA_LBLOCK
  %_public_subtmp559 = sub i32 %_public_lval558, 1
  %_public_multmp560 = mul i32 4, %_public_subtmp559
  %_public_lhssext561 = zext i32 %_public_multmp560 to i64
  %_public_addtmp562 = add i64 %_public_lhssext561, 4
  %_public_truncbinop563 = trunc i64 %_public_addtmp562 to i32
  %_public_lval564 = load i32, i32* %_public___v10_SHA_LBLOCK
  %_public_subtmp565 = sub i32 %_public_lval564, 1
  %_public_multmp566 = mul i32 4, %_public_subtmp565
  %_public_ugttmp567 = icmp ugt i32 %_public_truncbinop563, %_public_multmp566
  %_public_zexttmp568 = zext i1 %_public_ugttmp567 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp568)
  %_public_lval569 = load i32, i32* %_public___v10_SHA_LBLOCK
  %_public_subtmp570 = sub i32 %_public_lval569, 1
  %_public_multmp571 = mul i32 4, %_public_subtmp570
  %_public_lhssext572 = zext i32 %_public_multmp571 to i64
  %_public_ugtetmp573 = icmp uge i64 %_public_lhssext572, 0
  %_public_zexttmp574 = zext i1 %_public_ugtetmp573 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp574)
  %_public_lval575 = load i32, i32* %_public___v10_SHA_LBLOCK
  %_public_subtmp576 = sub i32 %_public_lval575, 1
  %_public_multmp577 = mul i32 4, %_public_subtmp576
  %_public_lhssext578 = zext i32 %_public_multmp577 to i64
  %_public_ulttmp579 = icmp ult i64 %_public_lhssext578, 64
  %_public_zexttmp580 = zext i1 %_public_ulttmp579 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp580)
  %_public_lval581 = load i32, i32* %_public___v10_SHA_LBLOCK
  %_public_subtmp582 = sub i32 %_public_lval581, 1
  %_public_multmp583 = mul i32 4, %_public_subtmp582
  %_public_lhssext584 = zext i32 %_public_multmp583 to i64
  %_public_addtmp585 = add i64 %_public_lhssext584, 4
  %_public_truncbinop586 = trunc i64 %_public_addtmp585 to i32
  %_public_subtmp587 = sub i32 %_public_truncbinop586, 1
  %_public_lhssext588 = zext i32 %_public_subtmp587 to i64
  %_public_ugtetmp589 = icmp uge i64 %_public_lhssext588, 0
  %_public_zexttmp590 = zext i1 %_public_ugtetmp589 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp590)
  %_public_lval591 = load i32, i32* %_public___v10_SHA_LBLOCK
  %_public_subtmp592 = sub i32 %_public_lval591, 1
  %_public_multmp593 = mul i32 4, %_public_subtmp592
  %_public_lhssext594 = zext i32 %_public_multmp593 to i64
  %_public_addtmp595 = add i64 %_public_lhssext594, 4
  %_public_truncbinop596 = trunc i64 %_public_addtmp595 to i32
  %_public_subtmp597 = sub i32 %_public_truncbinop596, 1
  %_public_lhssext598 = zext i32 %_public_subtmp597 to i64
  %_public_ulttmp599 = icmp ult i64 %_public_lhssext598, 64
  %_public_zexttmp600 = zext i1 %_public_ulttmp599 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp600)
  %_public_lval601 = load i32, i32* %_public___v10_SHA_LBLOCK
  %_public_subtmp602 = sub i32 %_public_lval601, 1
  %_public_multmp603 = mul i32 4, %_public_subtmp602
  %_public_structgep604 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep605 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep604, i32 0, i32 7
  %_secret_arrview606 = alloca i8*
  %_secret_source_gep607 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep605, i32 0, i32 %_public_multmp603
  store i8* %_secret_source_gep607, i8** %_secret_arrview606
  %_public_lval608 = load i32, i32* %_public___v10_SHA_LBLOCK
  %_public_subtmp609 = sub i32 %_public_lval608, 1
  %_public_multmp610 = mul i32 4, %_public_subtmp609
  %_public_lhssext611 = zext i32 %_public_multmp610 to i64
  %_public_addtmp612 = add i64 %_public_lhssext611, 4
  %_public_truncbinop613 = trunc i64 %_public_addtmp612 to i32
  %_public_lval614 = load i32, i32* %_public___v10_SHA_LBLOCK
  %_public_subtmp615 = sub i32 %_public_lval614, 1
  %_public_multmp616 = mul i32 4, %_public_subtmp615
  %_public_ugttmp617 = icmp ugt i32 %_public_truncbinop613, %_public_multmp616
  %_public_zexttmp618 = zext i1 %_public_ugttmp617 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp618)
  %_public_lval619 = load i32, i32* %_public___v10_SHA_LBLOCK
  %_public_subtmp620 = sub i32 %_public_lval619, 1
  %_public_multmp621 = mul i32 4, %_public_subtmp620
  %_public_lhssext622 = zext i32 %_public_multmp621 to i64
  %_public_ugtetmp623 = icmp uge i64 %_public_lhssext622, 0
  %_public_zexttmp624 = zext i1 %_public_ugtetmp623 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp624)
  %_public_lval625 = load i32, i32* %_public___v10_SHA_LBLOCK
  %_public_subtmp626 = sub i32 %_public_lval625, 1
  %_public_multmp627 = mul i32 4, %_public_subtmp626
  %_public_lhssext628 = zext i32 %_public_multmp627 to i64
  %_public_ulttmp629 = icmp ult i64 %_public_lhssext628, 64
  %_public_zexttmp630 = zext i1 %_public_ulttmp629 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp630)
  %_public_lval631 = load i32, i32* %_public___v10_SHA_LBLOCK
  %_public_subtmp632 = sub i32 %_public_lval631, 1
  %_public_multmp633 = mul i32 4, %_public_subtmp632
  %_public_lhssext634 = zext i32 %_public_multmp633 to i64
  %_public_addtmp635 = add i64 %_public_lhssext634, 4
  %_public_truncbinop636 = trunc i64 %_public_addtmp635 to i32
  %_public_subtmp637 = sub i32 %_public_truncbinop636, 1
  %_public_lhssext638 = zext i32 %_public_subtmp637 to i64
  %_public_ugtetmp639 = icmp uge i64 %_public_lhssext638, 0
  %_public_zexttmp640 = zext i1 %_public_ugtetmp639 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp640)
  %_public_lval641 = load i32, i32* %_public___v10_SHA_LBLOCK
  %_public_subtmp642 = sub i32 %_public_lval641, 1
  %_public_multmp643 = mul i32 4, %_public_subtmp642
  %_public_lhssext644 = zext i32 %_public_multmp643 to i64
  %_public_addtmp645 = add i64 %_public_lhssext644, 4
  %_public_truncbinop646 = trunc i64 %_public_addtmp645 to i32
  %_public_subtmp647 = sub i32 %_public_truncbinop646, 1
  %_public_lhssext648 = zext i32 %_public_subtmp647 to i64
  %_public_ulttmp649 = icmp ult i64 %_public_lhssext648, 64
  %_public_zexttmp650 = zext i1 %_public_ulttmp649 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp650)
  %_public_lval651 = load i32, i32* %_public___v10_SHA_LBLOCK
  %_public_subtmp652 = sub i32 %_public_lval651, 1
  %_public_multmp653 = mul i32 4, %_public_subtmp652
  %_public_structgep654 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep655 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep654, i32 0, i32 7
  %_secret_arrview656 = alloca i8*
  %_secret_source_gep657 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep655, i32 0, i32 %_public_multmp653
  store i8* %_secret_source_gep657, i8** %_secret_arrview656
  %_secret_dynarrarg658 = load i8*, i8** %_secret_arrview656
  %_secret_lval659 = load i32, i32* %_secret___v29_bitlen
  %_secret_lval660 = load i32, i32* %_secret___v34_mask
  %_secret_andtmp661 = and i32 %_secret_lval659, %_secret_lval660
  call void @pmac_oreq(i8* %_secret_dynarrarg658, i32 %_secret_andtmp661)
  %_public_structgep662 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep663 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep662, i32 0, i32 0
  %_public_structgep664 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep665 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep664, i32 0, i32 7
  %_public_structgep666 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep667 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep666, i32 0, i32 7
  %_secret_arrtoptr668 = bitcast [64 x i8]* %_secret_structgep667 to i8*
  call void @sha1_block_data_order(i32* %_secret_structgep663, i8* %_secret_arrtoptr668, i32 1)
  %_secret_lval669 = load i32, i32* %_secret___v34_mask
  call void @__VERIFIER_assert(i32 1)
  %_public_lval670 = load i32, i32* %_public___v32_j
  %_secret_lval671 = load i32, i32* %_secret___v23_inp_len
  %_secret_subtmp672 = sub i32 %_public_lval670, %_secret_lval671
  %_secret_subtmp673 = sub i32 %_secret_subtmp672, 72
  %_secret_lrshift674 = lshr i32 %_secret_subtmp673, 31
  %_secret_subtmp675 = sub i32 0, %_secret_lrshift674
  %_secret_andtmp676 = and i32 %_secret_lval669, %_secret_subtmp675
  store i32 %_secret_andtmp676, i32* %_secret___v34_mask
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview677 = alloca i8*
  %_secret_source_gep678 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i8 0, i8 0
  store i8* %_secret_source_gep678, i8** %_secret_arrview677
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview679 = alloca i8*
  %_secret_source_gep680 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i8 0, i8 0
  store i8* %_secret_source_gep680, i8** %_secret_arrview679
  %_secret_dynarrarg681 = load i8*, i8** %_secret_arrview679
  %_public_structgep682 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep683 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep682, i32 0, i32 0
  %_secret_lval684 = load i32, i32* %_secret_structgep683
  %_secret_lval685 = load i32, i32* %_secret___v34_mask
  %_secret_andtmp686 = and i32 %_secret_lval684, %_secret_lval685
  call void @pmac_oreq(i8* %_secret_dynarrarg681, i32 %_secret_andtmp686)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview687 = alloca i8*
  %_secret_source_gep688 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i8 0, i8 4
  store i8* %_secret_source_gep688, i8** %_secret_arrview687
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview689 = alloca i8*
  %_secret_source_gep690 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i8 0, i8 4
  store i8* %_secret_source_gep690, i8** %_secret_arrview689
  %_secret_dynarrarg691 = load i8*, i8** %_secret_arrview689
  %_public_structgep692 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep693 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep692, i32 0, i32 1
  %_secret_lval694 = load i32, i32* %_secret_structgep693
  %_secret_lval695 = load i32, i32* %_secret___v34_mask
  %_secret_andtmp696 = and i32 %_secret_lval694, %_secret_lval695
  call void @pmac_oreq(i8* %_secret_dynarrarg691, i32 %_secret_andtmp696)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview697 = alloca i8*
  %_secret_source_gep698 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i8 0, i8 8
  store i8* %_secret_source_gep698, i8** %_secret_arrview697
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview699 = alloca i8*
  %_secret_source_gep700 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i8 0, i8 8
  store i8* %_secret_source_gep700, i8** %_secret_arrview699
  %_secret_dynarrarg701 = load i8*, i8** %_secret_arrview699
  %_public_structgep702 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep703 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep702, i32 0, i32 2
  %_secret_lval704 = load i32, i32* %_secret_structgep703
  %_secret_lval705 = load i32, i32* %_secret___v34_mask
  %_secret_andtmp706 = and i32 %_secret_lval704, %_secret_lval705
  call void @pmac_oreq(i8* %_secret_dynarrarg701, i32 %_secret_andtmp706)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview707 = alloca i8*
  %_secret_source_gep708 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i8 0, i8 12
  store i8* %_secret_source_gep708, i8** %_secret_arrview707
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview709 = alloca i8*
  %_secret_source_gep710 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i8 0, i8 12
  store i8* %_secret_source_gep710, i8** %_secret_arrview709
  %_secret_dynarrarg711 = load i8*, i8** %_secret_arrview709
  %_public_structgep712 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep713 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep712, i32 0, i32 3
  %_secret_lval714 = load i32, i32* %_secret_structgep713
  %_secret_lval715 = load i32, i32* %_secret___v34_mask
  %_secret_andtmp716 = and i32 %_secret_lval714, %_secret_lval715
  call void @pmac_oreq(i8* %_secret_dynarrarg711, i32 %_secret_andtmp716)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview717 = alloca i8*
  %_secret_source_gep718 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i8 0, i8 16
  store i8* %_secret_source_gep718, i8** %_secret_arrview717
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview719 = alloca i8*
  %_secret_source_gep720 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i8 0, i8 16
  store i8* %_secret_source_gep720, i8** %_secret_arrview719
  %_secret_dynarrarg721 = load i8*, i8** %_secret_arrview719
  %_public_structgep722 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep723 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep722, i32 0, i32 4
  %_secret_lval724 = load i32, i32* %_secret_structgep723
  %_secret_lval725 = load i32, i32* %_secret___v34_mask
  %_secret_andtmp726 = and i32 %_secret_lval724, %_secret_lval725
  call void @pmac_oreq(i8* %_secret_dynarrarg721, i32 %_secret_andtmp726)
  store i32 0, i32* %_public___v31_p_res
  br label %branchmerge728

elsebranch727:                                    ; preds = %thenbranch484
  br label %branchmerge728

branchmerge728:                                   ; preds = %elsebranch727, %thenbranch551
  br label %branchmerge730

elsebranch729:                                    ; preds = %branchmerge469
  br label %branchmerge730

branchmerge730:                                   ; preds = %elsebranch729, %branchmerge728
  %_public_lval731 = load i32, i32* %_public___v14__len
  store i32 %_public_lval731, i32* %_public___v35_j
  %_public_calltmp732 = call i32 @__VERIFIER_nondet_unsigned_int()
  store i32 %_public_calltmp732, i32* %_public___v36_i
  %_public_lval733 = load i32, i32* %_public___v36_i
  %_public_lval734 = load i32, i32* %_public___v11_SHA_CBLOCK
  %_public_ulttmp735 = icmp ult i32 %_public_lval733, %_public_lval734
  %_public_branchcompare736 = icmp eq i1 %_public_ulttmp735, true
  br i1 %_public_branchcompare736, label %thenbranch737, label %elsebranch765

thenbranch737:                                    ; preds = %branchmerge730
  %_public_lval738 = load i32, i32* %_public___v36_i
  %_public_lval739 = load i32, i32* %_public___v36_i
  %_public_addtmp740 = add i32 %_public_lval739, 1
  %_public_ulttmp741 = icmp ult i32 %_public_lval738, %_public_addtmp740
  %_public_zexttmp742 = zext i1 %_public_ulttmp741 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp742)
  %_public_lval743 = load i32, i32* %_public___v31_p_res
  %_public_lval744 = load i32, i32* %_public___v36_i
  %_public_ulttmp745 = icmp ult i32 %_public_lval743, %_public_lval744
  %_public_lval746 = load i32, i32* %_public___v31_p_res
  %_public_lval747 = load i32, i32* %_public___v36_i
  %_public_eqtmp748 = icmp eq i32 %_public_lval746, %_public_lval747
  %_public_lortmp749 = or i1 %_public_ulttmp745, %_public_eqtmp748
  %_public_zexttmp750 = zext i1 %_public_lortmp749 to i32
  call void @__VERIFIER_assume(i32 %_public_zexttmp750)
  %_public_lval751 = load i32, i32* %_public___v36_i
  %_public_lhssext752 = zext i32 %_public_lval751 to i64
  %_public_ugtetmp753 = icmp uge i64 %_public_lhssext752, 0
  %_public_zexttmp754 = zext i1 %_public_ugtetmp753 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp754)
  %_public_lval755 = load i32, i32* %_public___v36_i
  %_public_lhssext756 = zext i32 %_public_lval755 to i64
  %_public_ulttmp757 = icmp ult i64 %_public_lhssext756, 64
  %_public_zexttmp758 = zext i1 %_public_ulttmp757 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp758)
  %_public_structgep759 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep760 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep759, i32 0, i32 7
  %_public_lval761 = load i32, i32* %_public___v36_i
  %_secret_ptr762 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep760, i32 0, i32 %_public_lval761
  store i8 0, i8* %_secret_ptr762
  %_public_lval763 = load i32, i32* %_public___v35_j
  %_public_addtmp764 = add i32 %_public_lval763, 1
  store i32 %_public_addtmp764, i32* %_public___v35_j
  br label %branchmerge766

elsebranch765:                                    ; preds = %branchmerge730
  br label %branchmerge766

branchmerge766:                                   ; preds = %elsebranch765, %thenbranch737
  %_public_lval767 = load i32, i32* %_public___v31_p_res
  %_public_lval768 = load i32, i32* %_public___v11_SHA_CBLOCK
  %_public_subtmp769 = sub i32 %_public_lval768, 8
  %_public_ugttmp770 = icmp ugt i32 %_public_lval767, %_public_subtmp769
  %_public_branchcompare771 = icmp eq i1 %_public_ugttmp770, true
  br i1 %_public_branchcompare771, label %thenbranch772, label %elsebranch955

thenbranch772:                                    ; preds = %branchmerge766
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval773 = load i32, i32* %_secret___v23_inp_len
  %_secret_addtmp774 = add i32 %_secret_lval773, 8
  %_public_lval775 = load i32, i32* %_public___v35_j
  %_secret_subtmp776 = sub i32 %_secret_addtmp774, %_public_lval775
  %_secret_lrshift777 = lshr i32 %_secret_subtmp776, 31
  %_secret_subtmp778 = sub i32 0, %_secret_lrshift777
  store i32 %_secret_subtmp778, i32* %_secret___v37_mask
  %_public_lval779 = load i32, i32* %_public___v10_SHA_LBLOCK
  %_public_subtmp780 = sub i32 %_public_lval779, 1
  %_public_multmp781 = mul i32 4, %_public_subtmp780
  %_public_lhssext782 = zext i32 %_public_multmp781 to i64
  %_public_addtmp783 = add i64 %_public_lhssext782, 4
  %_public_truncbinop784 = trunc i64 %_public_addtmp783 to i32
  %_public_lval785 = load i32, i32* %_public___v10_SHA_LBLOCK
  %_public_subtmp786 = sub i32 %_public_lval785, 1
  %_public_multmp787 = mul i32 4, %_public_subtmp786
  %_public_ugttmp788 = icmp ugt i32 %_public_truncbinop784, %_public_multmp787
  %_public_zexttmp789 = zext i1 %_public_ugttmp788 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp789)
  %_public_lval790 = load i32, i32* %_public___v10_SHA_LBLOCK
  %_public_subtmp791 = sub i32 %_public_lval790, 1
  %_public_multmp792 = mul i32 4, %_public_subtmp791
  %_public_lhssext793 = zext i32 %_public_multmp792 to i64
  %_public_ugtetmp794 = icmp uge i64 %_public_lhssext793, 0
  %_public_zexttmp795 = zext i1 %_public_ugtetmp794 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp795)
  %_public_lval796 = load i32, i32* %_public___v10_SHA_LBLOCK
  %_public_subtmp797 = sub i32 %_public_lval796, 1
  %_public_multmp798 = mul i32 4, %_public_subtmp797
  %_public_lhssext799 = zext i32 %_public_multmp798 to i64
  %_public_ulttmp800 = icmp ult i64 %_public_lhssext799, 64
  %_public_zexttmp801 = zext i1 %_public_ulttmp800 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp801)
  %_public_lval802 = load i32, i32* %_public___v10_SHA_LBLOCK
  %_public_subtmp803 = sub i32 %_public_lval802, 1
  %_public_multmp804 = mul i32 4, %_public_subtmp803
  %_public_lhssext805 = zext i32 %_public_multmp804 to i64
  %_public_addtmp806 = add i64 %_public_lhssext805, 4
  %_public_truncbinop807 = trunc i64 %_public_addtmp806 to i32
  %_public_subtmp808 = sub i32 %_public_truncbinop807, 1
  %_public_lhssext809 = zext i32 %_public_subtmp808 to i64
  %_public_ugtetmp810 = icmp uge i64 %_public_lhssext809, 0
  %_public_zexttmp811 = zext i1 %_public_ugtetmp810 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp811)
  %_public_lval812 = load i32, i32* %_public___v10_SHA_LBLOCK
  %_public_subtmp813 = sub i32 %_public_lval812, 1
  %_public_multmp814 = mul i32 4, %_public_subtmp813
  %_public_lhssext815 = zext i32 %_public_multmp814 to i64
  %_public_addtmp816 = add i64 %_public_lhssext815, 4
  %_public_truncbinop817 = trunc i64 %_public_addtmp816 to i32
  %_public_subtmp818 = sub i32 %_public_truncbinop817, 1
  %_public_lhssext819 = zext i32 %_public_subtmp818 to i64
  %_public_ulttmp820 = icmp ult i64 %_public_lhssext819, 64
  %_public_zexttmp821 = zext i1 %_public_ulttmp820 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp821)
  %_public_lval822 = load i32, i32* %_public___v10_SHA_LBLOCK
  %_public_subtmp823 = sub i32 %_public_lval822, 1
  %_public_multmp824 = mul i32 4, %_public_subtmp823
  %_public_structgep825 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep826 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep825, i32 0, i32 7
  %_secret_arrview827 = alloca i8*
  %_secret_source_gep828 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep826, i32 0, i32 %_public_multmp824
  store i8* %_secret_source_gep828, i8** %_secret_arrview827
  %_public_lval829 = load i32, i32* %_public___v10_SHA_LBLOCK
  %_public_subtmp830 = sub i32 %_public_lval829, 1
  %_public_multmp831 = mul i32 4, %_public_subtmp830
  %_public_lhssext832 = zext i32 %_public_multmp831 to i64
  %_public_addtmp833 = add i64 %_public_lhssext832, 4
  %_public_truncbinop834 = trunc i64 %_public_addtmp833 to i32
  %_public_lval835 = load i32, i32* %_public___v10_SHA_LBLOCK
  %_public_subtmp836 = sub i32 %_public_lval835, 1
  %_public_multmp837 = mul i32 4, %_public_subtmp836
  %_public_ugttmp838 = icmp ugt i32 %_public_truncbinop834, %_public_multmp837
  %_public_zexttmp839 = zext i1 %_public_ugttmp838 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp839)
  %_public_lval840 = load i32, i32* %_public___v10_SHA_LBLOCK
  %_public_subtmp841 = sub i32 %_public_lval840, 1
  %_public_multmp842 = mul i32 4, %_public_subtmp841
  %_public_lhssext843 = zext i32 %_public_multmp842 to i64
  %_public_ugtetmp844 = icmp uge i64 %_public_lhssext843, 0
  %_public_zexttmp845 = zext i1 %_public_ugtetmp844 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp845)
  %_public_lval846 = load i32, i32* %_public___v10_SHA_LBLOCK
  %_public_subtmp847 = sub i32 %_public_lval846, 1
  %_public_multmp848 = mul i32 4, %_public_subtmp847
  %_public_lhssext849 = zext i32 %_public_multmp848 to i64
  %_public_ulttmp850 = icmp ult i64 %_public_lhssext849, 64
  %_public_zexttmp851 = zext i1 %_public_ulttmp850 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp851)
  %_public_lval852 = load i32, i32* %_public___v10_SHA_LBLOCK
  %_public_subtmp853 = sub i32 %_public_lval852, 1
  %_public_multmp854 = mul i32 4, %_public_subtmp853
  %_public_lhssext855 = zext i32 %_public_multmp854 to i64
  %_public_addtmp856 = add i64 %_public_lhssext855, 4
  %_public_truncbinop857 = trunc i64 %_public_addtmp856 to i32
  %_public_subtmp858 = sub i32 %_public_truncbinop857, 1
  %_public_lhssext859 = zext i32 %_public_subtmp858 to i64
  %_public_ugtetmp860 = icmp uge i64 %_public_lhssext859, 0
  %_public_zexttmp861 = zext i1 %_public_ugtetmp860 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp861)
  %_public_lval862 = load i32, i32* %_public___v10_SHA_LBLOCK
  %_public_subtmp863 = sub i32 %_public_lval862, 1
  %_public_multmp864 = mul i32 4, %_public_subtmp863
  %_public_lhssext865 = zext i32 %_public_multmp864 to i64
  %_public_addtmp866 = add i64 %_public_lhssext865, 4
  %_public_truncbinop867 = trunc i64 %_public_addtmp866 to i32
  %_public_subtmp868 = sub i32 %_public_truncbinop867, 1
  %_public_lhssext869 = zext i32 %_public_subtmp868 to i64
  %_public_ulttmp870 = icmp ult i64 %_public_lhssext869, 64
  %_public_zexttmp871 = zext i1 %_public_ulttmp870 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp871)
  %_public_lval872 = load i32, i32* %_public___v10_SHA_LBLOCK
  %_public_subtmp873 = sub i32 %_public_lval872, 1
  %_public_multmp874 = mul i32 4, %_public_subtmp873
  %_public_structgep875 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep876 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep875, i32 0, i32 7
  %_secret_arrview877 = alloca i8*
  %_secret_source_gep878 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep876, i32 0, i32 %_public_multmp874
  store i8* %_secret_source_gep878, i8** %_secret_arrview877
  %_secret_dynarrarg879 = load i8*, i8** %_secret_arrview877
  %_secret_lval880 = load i32, i32* %_secret___v29_bitlen
  %_secret_lval881 = load i32, i32* %_secret___v37_mask
  %_secret_andtmp882 = and i32 %_secret_lval880, %_secret_lval881
  call void @pmac_oreq(i8* %_secret_dynarrarg879, i32 %_secret_andtmp882)
  %_public_structgep883 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep884 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep883, i32 0, i32 0
  %_public_structgep885 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep886 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep885, i32 0, i32 7
  %_public_structgep887 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep888 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep887, i32 0, i32 7
  %_secret_arrtoptr889 = bitcast [64 x i8]* %_secret_structgep888 to i8*
  call void @sha1_block_data_order(i32* %_secret_structgep884, i8* %_secret_arrtoptr889, i32 1)
  %_secret_lval890 = load i32, i32* %_secret___v37_mask
  call void @__VERIFIER_assert(i32 1)
  %_public_lval891 = load i32, i32* %_public___v35_j
  %_secret_lval892 = load i32, i32* %_secret___v23_inp_len
  %_secret_subtmp893 = sub i32 %_public_lval891, %_secret_lval892
  %_secret_subtmp894 = sub i32 %_secret_subtmp893, 72
  %_secret_lrshift895 = lshr i32 %_secret_subtmp894, 31
  %_secret_subtmp896 = sub i32 0, %_secret_lrshift895
  %_secret_andtmp897 = and i32 %_secret_lval890, %_secret_subtmp896
  store i32 %_secret_andtmp897, i32* %_secret___v37_mask
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview898 = alloca i8*
  %_secret_source_gep899 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i8 0, i8 0
  store i8* %_secret_source_gep899, i8** %_secret_arrview898
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview900 = alloca i8*
  %_secret_source_gep901 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i8 0, i8 0
  store i8* %_secret_source_gep901, i8** %_secret_arrview900
  %_secret_dynarrarg902 = load i8*, i8** %_secret_arrview900
  %_public_structgep903 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep904 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep903, i32 0, i32 0
  %_secret_lval905 = load i32, i32* %_secret_structgep904
  %_secret_lval906 = load i32, i32* %_secret___v37_mask
  %_secret_andtmp907 = and i32 %_secret_lval905, %_secret_lval906
  call void @pmac_oreq(i8* %_secret_dynarrarg902, i32 %_secret_andtmp907)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview908 = alloca i8*
  %_secret_source_gep909 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i8 0, i8 4
  store i8* %_secret_source_gep909, i8** %_secret_arrview908
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview910 = alloca i8*
  %_secret_source_gep911 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i8 0, i8 4
  store i8* %_secret_source_gep911, i8** %_secret_arrview910
  %_secret_dynarrarg912 = load i8*, i8** %_secret_arrview910
  %_public_structgep913 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep914 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep913, i32 0, i32 1
  %_secret_lval915 = load i32, i32* %_secret_structgep914
  %_secret_lval916 = load i32, i32* %_secret___v37_mask
  %_secret_andtmp917 = and i32 %_secret_lval915, %_secret_lval916
  call void @pmac_oreq(i8* %_secret_dynarrarg912, i32 %_secret_andtmp917)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview918 = alloca i8*
  %_secret_source_gep919 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i8 0, i8 8
  store i8* %_secret_source_gep919, i8** %_secret_arrview918
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview920 = alloca i8*
  %_secret_source_gep921 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i8 0, i8 8
  store i8* %_secret_source_gep921, i8** %_secret_arrview920
  %_secret_dynarrarg922 = load i8*, i8** %_secret_arrview920
  %_public_structgep923 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep924 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep923, i32 0, i32 2
  %_secret_lval925 = load i32, i32* %_secret_structgep924
  %_secret_lval926 = load i32, i32* %_secret___v37_mask
  %_secret_andtmp927 = and i32 %_secret_lval925, %_secret_lval926
  call void @pmac_oreq(i8* %_secret_dynarrarg922, i32 %_secret_andtmp927)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview928 = alloca i8*
  %_secret_source_gep929 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i8 0, i8 12
  store i8* %_secret_source_gep929, i8** %_secret_arrview928
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview930 = alloca i8*
  %_secret_source_gep931 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i8 0, i8 12
  store i8* %_secret_source_gep931, i8** %_secret_arrview930
  %_secret_dynarrarg932 = load i8*, i8** %_secret_arrview930
  %_public_structgep933 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep934 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep933, i32 0, i32 3
  %_secret_lval935 = load i32, i32* %_secret_structgep934
  %_secret_lval936 = load i32, i32* %_secret___v37_mask
  %_secret_andtmp937 = and i32 %_secret_lval935, %_secret_lval936
  call void @pmac_oreq(i8* %_secret_dynarrarg932, i32 %_secret_andtmp937)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview938 = alloca i8*
  %_secret_source_gep939 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i8 0, i8 16
  store i8* %_secret_source_gep939, i8** %_secret_arrview938
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview940 = alloca i8*
  %_secret_source_gep941 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i8 0, i8 16
  store i8* %_secret_source_gep941, i8** %_secret_arrview940
  %_secret_dynarrarg942 = load i8*, i8** %_secret_arrview940
  %_public_structgep943 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep944 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep943, i32 0, i32 4
  %_secret_lval945 = load i32, i32* %_secret_structgep944
  %_secret_lval946 = load i32, i32* %_secret___v37_mask
  %_secret_andtmp947 = and i32 %_secret_lval945, %_secret_lval946
  call void @pmac_oreq(i8* %_secret_dynarrarg942, i32 %_secret_andtmp947)
  %_public_structgep948 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep949 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep948, i32 0, i32 7
  %_public_structgep950 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep951 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep950, i32 0, i32 7
  %_secret_arrtoptr952 = bitcast [64 x i8]* %_secret_structgep951 to i8*
  call void @_memzero(i8* %_secret_arrtoptr952, i32 64)
  %_public_lval953 = load i32, i32* %_public___v35_j
  %_public_addtmp954 = add i32 %_public_lval953, 64
  store i32 %_public_addtmp954, i32* %_public___v35_j
  br label %branchmerge956

elsebranch955:                                    ; preds = %branchmerge766
  br label %branchmerge956

branchmerge956:                                   ; preds = %elsebranch955, %thenbranch772
  %_public_lval957 = load i32, i32* %_public___v10_SHA_LBLOCK
  %_public_subtmp958 = sub i32 %_public_lval957, 1
  %_public_multmp959 = mul i32 4, %_public_subtmp958
  %_public_lhssext960 = zext i32 %_public_multmp959 to i64
  %_public_addtmp961 = add i64 %_public_lhssext960, 4
  %_public_truncbinop962 = trunc i64 %_public_addtmp961 to i32
  %_public_lval963 = load i32, i32* %_public___v10_SHA_LBLOCK
  %_public_subtmp964 = sub i32 %_public_lval963, 1
  %_public_multmp965 = mul i32 4, %_public_subtmp964
  %_public_ugttmp966 = icmp ugt i32 %_public_truncbinop962, %_public_multmp965
  %_public_zexttmp967 = zext i1 %_public_ugttmp966 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp967)
  %_public_lval968 = load i32, i32* %_public___v10_SHA_LBLOCK
  %_public_subtmp969 = sub i32 %_public_lval968, 1
  %_public_multmp970 = mul i32 4, %_public_subtmp969
  %_public_lhssext971 = zext i32 %_public_multmp970 to i64
  %_public_ugtetmp972 = icmp uge i64 %_public_lhssext971, 0
  %_public_zexttmp973 = zext i1 %_public_ugtetmp972 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp973)
  %_public_lval974 = load i32, i32* %_public___v10_SHA_LBLOCK
  %_public_subtmp975 = sub i32 %_public_lval974, 1
  %_public_multmp976 = mul i32 4, %_public_subtmp975
  %_public_lhssext977 = zext i32 %_public_multmp976 to i64
  %_public_ulttmp978 = icmp ult i64 %_public_lhssext977, 64
  %_public_zexttmp979 = zext i1 %_public_ulttmp978 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp979)
  %_public_lval980 = load i32, i32* %_public___v10_SHA_LBLOCK
  %_public_subtmp981 = sub i32 %_public_lval980, 1
  %_public_multmp982 = mul i32 4, %_public_subtmp981
  %_public_lhssext983 = zext i32 %_public_multmp982 to i64
  %_public_addtmp984 = add i64 %_public_lhssext983, 4
  %_public_truncbinop985 = trunc i64 %_public_addtmp984 to i32
  %_public_subtmp986 = sub i32 %_public_truncbinop985, 1
  %_public_lhssext987 = zext i32 %_public_subtmp986 to i64
  %_public_ugtetmp988 = icmp uge i64 %_public_lhssext987, 0
  %_public_zexttmp989 = zext i1 %_public_ugtetmp988 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp989)
  %_public_lval990 = load i32, i32* %_public___v10_SHA_LBLOCK
  %_public_subtmp991 = sub i32 %_public_lval990, 1
  %_public_multmp992 = mul i32 4, %_public_subtmp991
  %_public_lhssext993 = zext i32 %_public_multmp992 to i64
  %_public_addtmp994 = add i64 %_public_lhssext993, 4
  %_public_truncbinop995 = trunc i64 %_public_addtmp994 to i32
  %_public_subtmp996 = sub i32 %_public_truncbinop995, 1
  %_public_lhssext997 = zext i32 %_public_subtmp996 to i64
  %_public_ulttmp998 = icmp ult i64 %_public_lhssext997, 64
  %_public_zexttmp999 = zext i1 %_public_ulttmp998 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp999)
  %_public_lval1000 = load i32, i32* %_public___v10_SHA_LBLOCK
  %_public_subtmp1001 = sub i32 %_public_lval1000, 1
  %_public_multmp1002 = mul i32 4, %_public_subtmp1001
  %_public_structgep1003 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep1004 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep1003, i32 0, i32 7
  %_secret_arrview1005 = alloca i8*
  %_secret_source_gep1006 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep1004, i32 0, i32 %_public_multmp1002
  store i8* %_secret_source_gep1006, i8** %_secret_arrview1005
  %_public_lval1007 = load i32, i32* %_public___v10_SHA_LBLOCK
  %_public_subtmp1008 = sub i32 %_public_lval1007, 1
  %_public_multmp1009 = mul i32 4, %_public_subtmp1008
  %_public_lhssext1010 = zext i32 %_public_multmp1009 to i64
  %_public_addtmp1011 = add i64 %_public_lhssext1010, 4
  %_public_truncbinop1012 = trunc i64 %_public_addtmp1011 to i32
  %_public_lval1013 = load i32, i32* %_public___v10_SHA_LBLOCK
  %_public_subtmp1014 = sub i32 %_public_lval1013, 1
  %_public_multmp1015 = mul i32 4, %_public_subtmp1014
  %_public_ugttmp1016 = icmp ugt i32 %_public_truncbinop1012, %_public_multmp1015
  %_public_zexttmp1017 = zext i1 %_public_ugttmp1016 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp1017)
  %_public_lval1018 = load i32, i32* %_public___v10_SHA_LBLOCK
  %_public_subtmp1019 = sub i32 %_public_lval1018, 1
  %_public_multmp1020 = mul i32 4, %_public_subtmp1019
  %_public_lhssext1021 = zext i32 %_public_multmp1020 to i64
  %_public_ugtetmp1022 = icmp uge i64 %_public_lhssext1021, 0
  %_public_zexttmp1023 = zext i1 %_public_ugtetmp1022 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp1023)
  %_public_lval1024 = load i32, i32* %_public___v10_SHA_LBLOCK
  %_public_subtmp1025 = sub i32 %_public_lval1024, 1
  %_public_multmp1026 = mul i32 4, %_public_subtmp1025
  %_public_lhssext1027 = zext i32 %_public_multmp1026 to i64
  %_public_ulttmp1028 = icmp ult i64 %_public_lhssext1027, 64
  %_public_zexttmp1029 = zext i1 %_public_ulttmp1028 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp1029)
  %_public_lval1030 = load i32, i32* %_public___v10_SHA_LBLOCK
  %_public_subtmp1031 = sub i32 %_public_lval1030, 1
  %_public_multmp1032 = mul i32 4, %_public_subtmp1031
  %_public_lhssext1033 = zext i32 %_public_multmp1032 to i64
  %_public_addtmp1034 = add i64 %_public_lhssext1033, 4
  %_public_truncbinop1035 = trunc i64 %_public_addtmp1034 to i32
  %_public_subtmp1036 = sub i32 %_public_truncbinop1035, 1
  %_public_lhssext1037 = zext i32 %_public_subtmp1036 to i64
  %_public_ugtetmp1038 = icmp uge i64 %_public_lhssext1037, 0
  %_public_zexttmp1039 = zext i1 %_public_ugtetmp1038 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp1039)
  %_public_lval1040 = load i32, i32* %_public___v10_SHA_LBLOCK
  %_public_subtmp1041 = sub i32 %_public_lval1040, 1
  %_public_multmp1042 = mul i32 4, %_public_subtmp1041
  %_public_lhssext1043 = zext i32 %_public_multmp1042 to i64
  %_public_addtmp1044 = add i64 %_public_lhssext1043, 4
  %_public_truncbinop1045 = trunc i64 %_public_addtmp1044 to i32
  %_public_subtmp1046 = sub i32 %_public_truncbinop1045, 1
  %_public_lhssext1047 = zext i32 %_public_subtmp1046 to i64
  %_public_ulttmp1048 = icmp ult i64 %_public_lhssext1047, 64
  %_public_zexttmp1049 = zext i1 %_public_ulttmp1048 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp1049)
  %_public_lval1050 = load i32, i32* %_public___v10_SHA_LBLOCK
  %_public_subtmp1051 = sub i32 %_public_lval1050, 1
  %_public_multmp1052 = mul i32 4, %_public_subtmp1051
  %_public_structgep1053 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep1054 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep1053, i32 0, i32 7
  %_secret_arrview1055 = alloca i8*
  %_secret_source_gep1056 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep1054, i32 0, i32 %_public_multmp1052
  store i8* %_secret_source_gep1056, i8** %_secret_arrview1055
  %_secret_dynarrarg1057 = load i8*, i8** %_secret_arrview1055
  %_secret_lval1058 = load i32, i32* %_secret___v29_bitlen
  call void @_store32_le(i8* %_secret_dynarrarg1057, i32 %_secret_lval1058)
  %_public_structgep1059 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep1060 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep1059, i32 0, i32 0
  %_public_structgep1061 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep1062 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep1061, i32 0, i32 7
  %_public_structgep1063 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep1064 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep1063, i32 0, i32 7
  %_secret_arrtoptr1065 = bitcast [64 x i8]* %_secret_structgep1064 to i8*
  call void @sha1_block_data_order(i32* %_secret_structgep1060, i8* %_secret_arrtoptr1065, i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_public_lval1066 = load i32, i32* %_public___v35_j
  %_secret_lval1067 = load i32, i32* %_secret___v23_inp_len
  %_secret_subtmp1068 = sub i32 %_public_lval1066, %_secret_lval1067
  %_secret_subtmp1069 = sub i32 %_secret_subtmp1068, 72
  %_secret_lrshift1070 = lshr i32 %_secret_subtmp1069, 31
  %_secret_subtmp1071 = sub i32 0, %_secret_lrshift1070
  store i32 %_secret_subtmp1071, i32* %_secret___v38_mask_
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1072 = alloca i8*
  %_secret_source_gep1073 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i8 0, i8 0
  store i8* %_secret_source_gep1073, i8** %_secret_arrview1072
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1074 = alloca i8*
  %_secret_source_gep1075 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i8 0, i8 0
  store i8* %_secret_source_gep1075, i8** %_secret_arrview1074
  %_secret_dynarrarg1076 = load i8*, i8** %_secret_arrview1074
  %_public_structgep1077 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep1078 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep1077, i32 0, i32 0
  %_secret_lval1079 = load i32, i32* %_secret_structgep1078
  %_secret_lval1080 = load i32, i32* %_secret___v38_mask_
  %_secret_andtmp1081 = and i32 %_secret_lval1079, %_secret_lval1080
  call void @pmac_oreq(i8* %_secret_dynarrarg1076, i32 %_secret_andtmp1081)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1082 = alloca i8*
  %_secret_source_gep1083 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i8 0, i8 4
  store i8* %_secret_source_gep1083, i8** %_secret_arrview1082
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1084 = alloca i8*
  %_secret_source_gep1085 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i8 0, i8 4
  store i8* %_secret_source_gep1085, i8** %_secret_arrview1084
  %_secret_dynarrarg1086 = load i8*, i8** %_secret_arrview1084
  %_public_structgep1087 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep1088 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep1087, i32 0, i32 1
  %_secret_lval1089 = load i32, i32* %_secret_structgep1088
  %_secret_lval1090 = load i32, i32* %_secret___v38_mask_
  %_secret_andtmp1091 = and i32 %_secret_lval1089, %_secret_lval1090
  call void @pmac_oreq(i8* %_secret_dynarrarg1086, i32 %_secret_andtmp1091)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1092 = alloca i8*
  %_secret_source_gep1093 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i8 0, i8 8
  store i8* %_secret_source_gep1093, i8** %_secret_arrview1092
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1094 = alloca i8*
  %_secret_source_gep1095 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i8 0, i8 8
  store i8* %_secret_source_gep1095, i8** %_secret_arrview1094
  %_secret_dynarrarg1096 = load i8*, i8** %_secret_arrview1094
  %_public_structgep1097 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep1098 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep1097, i32 0, i32 2
  %_secret_lval1099 = load i32, i32* %_secret_structgep1098
  %_secret_lval1100 = load i32, i32* %_secret___v38_mask_
  %_secret_andtmp1101 = and i32 %_secret_lval1099, %_secret_lval1100
  call void @pmac_oreq(i8* %_secret_dynarrarg1096, i32 %_secret_andtmp1101)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1102 = alloca i8*
  %_secret_source_gep1103 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i8 0, i8 12
  store i8* %_secret_source_gep1103, i8** %_secret_arrview1102
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1104 = alloca i8*
  %_secret_source_gep1105 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i8 0, i8 12
  store i8* %_secret_source_gep1105, i8** %_secret_arrview1104
  %_secret_dynarrarg1106 = load i8*, i8** %_secret_arrview1104
  %_public_structgep1107 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep1108 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep1107, i32 0, i32 3
  %_secret_lval1109 = load i32, i32* %_secret_structgep1108
  %_secret_lval1110 = load i32, i32* %_secret___v38_mask_
  %_secret_andtmp1111 = and i32 %_secret_lval1109, %_secret_lval1110
  call void @pmac_oreq(i8* %_secret_dynarrarg1106, i32 %_secret_andtmp1111)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1112 = alloca i8*
  %_secret_source_gep1113 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i8 0, i8 16
  store i8* %_secret_source_gep1113, i8** %_secret_arrview1112
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1114 = alloca i8*
  %_secret_source_gep1115 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i8 0, i8 16
  store i8* %_secret_source_gep1115, i8** %_secret_arrview1114
  %_secret_dynarrarg1116 = load i8*, i8** %_secret_arrview1114
  %_public_structgep1117 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep1118 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep1117, i32 0, i32 4
  %_secret_lval1119 = load i32, i32* %_secret_structgep1118
  %_secret_lval1120 = load i32, i32* %_secret___v38_mask_
  %_secret_andtmp1121 = and i32 %_secret_lval1119, %_secret_lval1120
  call void @pmac_oreq(i8* %_secret_dynarrarg1116, i32 %_secret_andtmp1121)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1122 = alloca i8*
  %_secret_source_gep1123 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i8 0, i8 0
  store i8* %_secret_source_gep1123, i8** %_secret_arrview1122
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1124 = alloca i8*
  %_secret_source_gep1125 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i8 0, i8 0
  store i8* %_secret_source_gep1125, i8** %_secret_arrview1124
  %_secret_dynarrarg1126 = load i8*, i8** %_secret_arrview1124
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1127 = alloca i8*
  %_secret_source_gep1128 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i8 0, i8 0
  store i8* %_secret_source_gep1128, i8** %_secret_arrview1127
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1129 = alloca i8*
  %_secret_source_gep1130 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i8 0, i8 0
  store i8* %_secret_source_gep1130, i8** %_secret_arrview1129
  %_secret_dynarrarg1131 = load i8*, i8** %_secret_arrview1129
  %_secret_calltmp1132 = call i32 @_load32_le(i8* %_secret_dynarrarg1131)
  %_secret_calltmp1133 = call i32 @bswap4(i32 %_secret_calltmp1132)
  call void @_store32_le(i8* %_secret_dynarrarg1126, i32 %_secret_calltmp1133)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1134 = alloca i8*
  %_secret_source_gep1135 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i8 0, i8 4
  store i8* %_secret_source_gep1135, i8** %_secret_arrview1134
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1136 = alloca i8*
  %_secret_source_gep1137 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i8 0, i8 4
  store i8* %_secret_source_gep1137, i8** %_secret_arrview1136
  %_secret_dynarrarg1138 = load i8*, i8** %_secret_arrview1136
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1139 = alloca i8*
  %_secret_source_gep1140 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i8 0, i8 4
  store i8* %_secret_source_gep1140, i8** %_secret_arrview1139
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1141 = alloca i8*
  %_secret_source_gep1142 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i8 0, i8 4
  store i8* %_secret_source_gep1142, i8** %_secret_arrview1141
  %_secret_dynarrarg1143 = load i8*, i8** %_secret_arrview1141
  %_secret_calltmp1144 = call i32 @_load32_le(i8* %_secret_dynarrarg1143)
  %_secret_calltmp1145 = call i32 @bswap4(i32 %_secret_calltmp1144)
  call void @_store32_le(i8* %_secret_dynarrarg1138, i32 %_secret_calltmp1145)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1146 = alloca i8*
  %_secret_source_gep1147 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i8 0, i8 8
  store i8* %_secret_source_gep1147, i8** %_secret_arrview1146
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1148 = alloca i8*
  %_secret_source_gep1149 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i8 0, i8 8
  store i8* %_secret_source_gep1149, i8** %_secret_arrview1148
  %_secret_dynarrarg1150 = load i8*, i8** %_secret_arrview1148
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1151 = alloca i8*
  %_secret_source_gep1152 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i8 0, i8 8
  store i8* %_secret_source_gep1152, i8** %_secret_arrview1151
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1153 = alloca i8*
  %_secret_source_gep1154 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i8 0, i8 8
  store i8* %_secret_source_gep1154, i8** %_secret_arrview1153
  %_secret_dynarrarg1155 = load i8*, i8** %_secret_arrview1153
  %_secret_calltmp1156 = call i32 @_load32_le(i8* %_secret_dynarrarg1155)
  %_secret_calltmp1157 = call i32 @bswap4(i32 %_secret_calltmp1156)
  call void @_store32_le(i8* %_secret_dynarrarg1150, i32 %_secret_calltmp1157)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1158 = alloca i8*
  %_secret_source_gep1159 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i8 0, i8 12
  store i8* %_secret_source_gep1159, i8** %_secret_arrview1158
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1160 = alloca i8*
  %_secret_source_gep1161 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i8 0, i8 12
  store i8* %_secret_source_gep1161, i8** %_secret_arrview1160
  %_secret_dynarrarg1162 = load i8*, i8** %_secret_arrview1160
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1163 = alloca i8*
  %_secret_source_gep1164 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i8 0, i8 12
  store i8* %_secret_source_gep1164, i8** %_secret_arrview1163
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1165 = alloca i8*
  %_secret_source_gep1166 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i8 0, i8 12
  store i8* %_secret_source_gep1166, i8** %_secret_arrview1165
  %_secret_dynarrarg1167 = load i8*, i8** %_secret_arrview1165
  %_secret_calltmp1168 = call i32 @_load32_le(i8* %_secret_dynarrarg1167)
  %_secret_calltmp1169 = call i32 @bswap4(i32 %_secret_calltmp1168)
  call void @_store32_le(i8* %_secret_dynarrarg1162, i32 %_secret_calltmp1169)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1170 = alloca i8*
  %_secret_source_gep1171 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i8 0, i8 16
  store i8* %_secret_source_gep1171, i8** %_secret_arrview1170
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1172 = alloca i8*
  %_secret_source_gep1173 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i8 0, i8 16
  store i8* %_secret_source_gep1173, i8** %_secret_arrview1172
  %_secret_dynarrarg1174 = load i8*, i8** %_secret_arrview1172
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1175 = alloca i8*
  %_secret_source_gep1176 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i8 0, i8 16
  store i8* %_secret_source_gep1176, i8** %_secret_arrview1175
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1177 = alloca i8*
  %_secret_source_gep1178 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i8 0, i8 16
  store i8* %_secret_source_gep1178, i8** %_secret_arrview1177
  %_secret_dynarrarg1179 = load i8*, i8** %_secret_arrview1177
  %_secret_calltmp1180 = call i32 @_load32_le(i8* %_secret_dynarrarg1179)
  %_secret_calltmp1181 = call i32 @bswap4(i32 %_secret_calltmp1180)
  call void @_store32_le(i8* %_secret_dynarrarg1174, i32 %_secret_calltmp1181)
  %_public_lval1182 = load i32, i32* %_public___v14__len
  %_public_lval1183 = load i32, i32* %_public___v8_SHA_DIGEST_LENGTH
  %_public_addtmp1184 = add i32 %_public_lval1182, %_public_lval1183
  store i32 %_public_addtmp1184, i32* %_public___v14__len
  %_public_structgep1185 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_public_structgep1186 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 2
  call void @_structcopy_SHA_CTX(%SHA_CTX* %_public_structgep1185, %SHA_CTX* %_public_structgep1186)
  %_public_structgep1187 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep1188 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep1187, i32 0, i32 0
  %_secret_arrtoptr1189 = bitcast [20 x i8]* %_secret___v30_pmac to i8*
  call void @_sha1_update(i32* %_secret_structgep1188, i8* %_secret_arrtoptr1189, i64 20)
  %_secret_arrtoptr1190 = bitcast [20 x i8]* %_secret___v30_pmac to i8*
  %_public_structgep1191 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep1192 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep1191, i32 0, i32 0
  call void @SHA1_Final(i8* %_secret_arrtoptr1190, i32* %_secret_structgep1192)
  %_public_lval1193 = load i32, i32* %_public___v13_outp
  %_secret_lval1194 = load i32, i32* %_secret___v23_inp_len
  %_secret_addtmp1195 = add i32 %_public_lval1193, %_secret_lval1194
  store i32 %_secret_addtmp1195, i32* %_secret___v39_s_outp
  %_public_lval1196 = load i32, i32* %_public___v14__len
  %_secret_lval1197 = load i32, i32* %_secret___v23_inp_len
  %_secret_subtmp1198 = sub i32 %_public_lval1196, %_secret_lval1197
  store i32 %_secret_subtmp1198, i32* %_secret___v40_s_len
  %_public_lval1199 = load i32, i32* %_public____out_len
  %_public_subtmp1200 = sub i32 %_public_lval1199, 1
  %_public_lval1201 = load i32, i32* %_public___v21_maxpad
  %_public_subtmp1202 = sub i32 %_public_subtmp1200, %_public_lval1201
  %_public_lval1203 = load i32, i32* %_public___v8_SHA_DIGEST_LENGTH
  %_public_subtmp1204 = sub i32 %_public_subtmp1202, %_public_lval1203
  store i32 %_public_subtmp1204, i32* %_public___v41_p_outp
  %_secret_lval1205 = load i32, i32* %_secret___v39_s_outp
  %_public_lval1206 = load i32, i32* %_public___v41_p_outp
  %_secret_subtmp1207 = sub i32 %_secret_lval1205, %_public_lval1206
  store i32 %_secret_subtmp1207, i32* %_secret___v42_off
  %_public_lval1208 = load i32, i32* %_public___v21_maxpad
  %_public_lval1209 = load i32, i32* %_public___v8_SHA_DIGEST_LENGTH
  %_public_addtmp1210 = add i32 %_public_lval1208, %_public_lval1209
  store i32 %_public_addtmp1210, i32* %_public___v21_maxpad
  store i32 0, i32* %_secret___v43_s_res
  store i32 0, i32* %_secret___v44_i
  %_public_calltmp1211 = call i32 @__VERIFIER_nondet_unsigned_int()
  store i32 %_public_calltmp1211, i32* %_public___v45_j
  %_public_lval1212 = load i32, i32* %_public___v45_j
  %_public_lval1213 = load i32, i32* %_public___v21_maxpad
  %_public_ulttmp1214 = icmp ult i32 %_public_lval1212, %_public_lval1213
  %_public_branchcompare1215 = icmp eq i1 %_public_ulttmp1214, true
  br i1 %_public_branchcompare1215, label %thenbranch1216, label %elsebranch1295

thenbranch1216:                                   ; preds = %branchmerge956
  %_public_lval1217 = load i32, i32* %_public___v45_j
  %_public_lval1218 = load i32, i32* %_public___v45_j
  %_public_addtmp1219 = add i32 %_public_lval1218, 1
  %_public_ulttmp1220 = icmp ult i32 %_public_lval1217, %_public_addtmp1219
  %_public_zexttmp1221 = zext i1 %_public_ulttmp1220 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp1221)
  %_public_lval1222 = load i32, i32* %_public___v45_j
  %_public_ulttmp1223 = icmp ult i32 0, %_public_lval1222
  %_public_lval1224 = load i32, i32* %_public___v45_j
  %_public_eqtmp1225 = icmp eq i32 0, %_public_lval1224
  %_public_lortmp1226 = or i1 %_public_ulttmp1223, %_public_eqtmp1225
  %_public_zexttmp1227 = zext i1 %_public_lortmp1226 to i32
  call void @__VERIFIER_assume(i32 %_public_zexttmp1227)
  %_public_lval1228 = load i32, i32* %_public___v41_p_outp
  %_public_lval1229 = load i32, i32* %_public___v45_j
  %_public_addtmp1230 = add i32 %_public_lval1228, %_public_lval1229
  %_public_lhssext1231 = zext i32 %_public_addtmp1230 to i64
  %_public_ugtetmp1232 = icmp uge i64 %_public_lhssext1231, 0
  %_public_zexttmp1233 = zext i1 %_public_ugtetmp1232 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp1233)
  %_public_lval1234 = load i32, i32* %_public___v41_p_outp
  %_public_lval1235 = load i32, i32* %_public___v45_j
  %_public_addtmp1236 = add i32 %_public_lval1234, %_public_lval1235
  %_public_lval1237 = load i32, i32* %_public____out_len
  %_public_icast1238 = zext i32 %_public_lval1237 to i64
  %_public_lhssext1239 = zext i32 %_public_addtmp1236 to i64
  %_public_ulttmp1240 = icmp ult i64 %_public_lhssext1239, %_public_icast1238
  %_public_zexttmp1241 = zext i1 %_public_ulttmp1240 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp1241)
  %_public_lval1242 = load i32, i32* %_public___v41_p_outp
  %_public_lval1243 = load i32, i32* %_public___v45_j
  %_public_addtmp1244 = add i32 %_public_lval1242, %_public_lval1243
  %_secret_dyn1245 = load i8*, i8** %_secret_arrarg2
  %_secret_ptr1246 = getelementptr inbounds i8, i8* %_secret_dyn1245, i32 %_public_addtmp1244
  %_secret_lval1247 = load i8, i8* %_secret_ptr1246
  %_secret_zexttmp1248 = zext i8 %_secret_lval1247 to i32
  store i32 %_secret_zexttmp1248, i32* %_secret___v46_c
  call void @__VERIFIER_assert(i32 1)
  %_public_lval1249 = load i32, i32* %_public___v45_j
  %_secret_lval1250 = load i32, i32* %_secret___v42_off
  %_secret_subtmp1251 = sub i32 %_public_lval1249, %_secret_lval1250
  %_public_lval1252 = load i32, i32* %_public___v8_SHA_DIGEST_LENGTH
  %_secret_subtmp1253 = sub i32 %_secret_subtmp1251, %_public_lval1252
  %_secret_arshift1254 = ashr i32 %_secret_subtmp1253, 31
  store i32 %_secret_arshift1254, i32* %_secret___v47_cmask
  %_secret_lval1255 = load i32, i32* %_secret___v43_s_res
  %_secret_lval1256 = load i32, i32* %_secret___v46_c
  %_secret_lval1257 = load i32, i32* %_secret___v20_pad
  %_secret_xortmp = xor i32 %_secret_lval1256, %_secret_lval1257
  %_secret_lval1258 = load i32, i32* %_secret___v47_cmask
  %_secret_bnottmp1259 = xor i32 %_secret_lval1258, -1
  %_secret_andtmp1260 = and i32 %_secret_xortmp, %_secret_bnottmp1259
  %_secret_ortmp1261 = or i32 %_secret_lval1255, %_secret_andtmp1260
  store i32 %_secret_ortmp1261, i32* %_secret___v43_s_res
  %_secret_lval1262 = load i32, i32* %_secret___v47_cmask
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval1263 = load i32, i32* %_secret___v42_off
  %_secret_subtmp1264 = sub i32 %_secret_lval1263, 1
  %_public_lval1265 = load i32, i32* %_public___v45_j
  %_secret_subtmp1266 = sub i32 %_secret_subtmp1264, %_public_lval1265
  %_secret_arshift1267 = ashr i32 %_secret_subtmp1266, 31
  %_secret_andtmp1268 = and i32 %_secret_lval1262, %_secret_arshift1267
  store i32 %_secret_andtmp1268, i32* %_secret___v47_cmask
  %_secret_lval1269 = load i32, i32* %_secret___v43_s_res
  %_secret_lval1270 = load i32, i32* %_secret___v46_c
  %_secret_lval1271 = load i32, i32* %_secret___v44_i
  %_declassified_res = call i32 @fact.declassify.i32(i32 %_secret_lval1271)
  %_public_lhssext1272 = zext i32 %_declassified_res to i64
  %_public_ugtetmp1273 = icmp uge i64 %_public_lhssext1272, 0
  %_public_zexttmp1274 = zext i1 %_public_ugtetmp1273 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp1274)
  %_secret_lval1275 = load i32, i32* %_secret___v44_i
  %_declassified_res1276 = call i32 @fact.declassify.i32(i32 %_secret_lval1275)
  %_public_lhssext1277 = zext i32 %_declassified_res1276 to i64
  %_public_ulttmp1278 = icmp ult i64 %_public_lhssext1277, 20
  %_public_zexttmp1279 = zext i1 %_public_ulttmp1278 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp1279)
  %_secret_lval1280 = load i32, i32* %_secret___v44_i
  %_declassified_res1281 = call i32 @fact.declassify.i32(i32 %_secret_lval1280)
  %_secret_ptr1282 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i32 0, i32 %_declassified_res1281
  %_secret_lval1283 = load i8, i8* %_secret_ptr1282
  %_secret_rhssext1284 = zext i8 %_secret_lval1283 to i32
  %_secret_xortmp1285 = xor i32 %_secret_lval1270, %_secret_rhssext1284
  %_secret_lval1286 = load i32, i32* %_secret___v47_cmask
  %_secret_andtmp1287 = and i32 %_secret_xortmp1285, %_secret_lval1286
  %_secret_ortmp1288 = or i32 %_secret_lval1269, %_secret_andtmp1287
  store i32 %_secret_ortmp1288, i32* %_secret___v43_s_res
  %_secret_lval1289 = load i32, i32* %_secret___v44_i
  %_secret_lval1290 = load i32, i32* %_secret___v47_cmask
  %_secret_andtmp1291 = and i32 1, %_secret_lval1290
  %_secret_truncbinop1292 = trunc i32 %_secret_andtmp1291 to i8
  %_secret_rhssext1293 = zext i8 %_secret_truncbinop1292 to i32
  %_secret_addtmp1294 = add i32 %_secret_lval1289, %_secret_rhssext1293
  store i32 %_secret_addtmp1294, i32* %_secret___v44_i
  br label %branchmerge1296

elsebranch1295:                                   ; preds = %branchmerge956
  br label %branchmerge1296

branchmerge1296:                                  ; preds = %elsebranch1295, %thenbranch1216
  %_public_lval1297 = load i32, i32* %_public___v21_maxpad
  %_public_lval1298 = load i32, i32* %_public___v8_SHA_DIGEST_LENGTH
  %_public_subtmp1299 = sub i32 %_public_lval1297, %_public_lval1298
  store i32 %_public_subtmp1299, i32* %_public___v21_maxpad
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval1300 = load i32, i32* %_secret___v43_s_res
  %_secret_subtmp1301 = sub i32 0, %_secret_lval1300
  %_secret_lrshift1302 = lshr i32 %_secret_subtmp1301, 31
  %_secret_subtmp1303 = sub i32 0, %_secret_lrshift1302
  store i32 %_secret_subtmp1303, i32* %_secret___v43_s_res
  %_secret_lval1304 = load i32, i32* %_secret___v15_ret
  %_secret_lval1305 = load i32, i32* %_secret___v43_s_res
  %_secret_bnottmp1306 = xor i32 %_secret_lval1305, -1
  %_secret_andtmp1307 = and i32 %_secret_lval1304, %_secret_bnottmp1306
  store i32 %_secret_andtmp1307, i32* %_secret___v15_ret
  %_secret_lval1308 = load i32, i32* %_secret___v15_ret
  store i32 %_secret_lval1308, i32* %_secret___rval
  %_secret_lval1309 = load i32, i32* %_secret___rval
  ret i32 %_secret_lval1309
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

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i32, i1) #2

; Function Attrs: noinline
define internal void @_memzero(i8*, i32) #3 {
entry:
  call void @llvm.memset.p0i8.i32(i8* %0, i8 0, i32 %1, i32 1, i1 false)
  ret void
}

; Function Attrs: noinline
define internal i32 @fact.declassify.i32(i32 %_declassified_x) #3 {
entry:
  ret i32 %_declassified_x
}

attributes #0 = { alwaysinline }
attributes #1 = { alwaysinline readonly }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noinline }