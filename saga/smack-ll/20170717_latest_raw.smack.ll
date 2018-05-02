; verify with: smack --bit-precise --entry-point=[...]
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
  %_public___v16_tls_ver = alloca i16
  %_public___v18___v17_len = alloca i32
  %_public___v20___v19_len = alloca i32
  %_secret___v21_pad = alloca i32
  %_public___v22_maxpad = alloca i32
  %_secret___v23_mask = alloca i32
  %_secret___v24_inp_len = alloca i32
  %_public___v26___v25_len = alloca i32
  %_public___v27_j = alloca i32
  %_public___v29___v28_len = alloca i32
  %_secret___v30_bitlen = alloca i32
  %_public___v32_p_res = alloca i32
  %_public___v33_j = alloca i32
  %_secret___v34_c = alloca i32
  %_secret___v35_mask = alloca i32
  %_public___v36_j = alloca i32
  %_public___v37_i = alloca i32
  %_secret___v38_mask = alloca i32
  %_secret___v39_mask_ = alloca i32
  %_secret___v40_s_outp = alloca i32
  %_secret___v41_s_len = alloca i32
  %_public___v42_p_outp = alloca i32
  %_secret___v43_off = alloca i32
  %_secret___v44_s_res = alloca i32
  %_secret___v45_i = alloca i32
  %_public___v46_j = alloca i32
  %_secret___v47_c = alloca i32
  %_secret___v48_cmask = alloca i32
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
  %_public_lval9 = load i32, i32* %_public____out_len
  store i32 %_public_lval9, i32* %_public___v14__len
  store i32 1, i32* %_secret___v15_ret
  call void @__VERIFIER_assert(i32 1)
  %_public_lval10 = load i64, i64* %_public_plen
  %_public_subtmp = sub i64 %_public_lval10, 4
  %_public_ugtetmp = icmp uge i64 %_public_subtmp, 0
  %_public_zexttmp = zext i1 %_public_ugtetmp to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp)
  %_public_lval11 = load i64, i64* %_public_plen
  %_public_subtmp12 = sub i64 %_public_lval11, 4
  %_public_ulttmp = icmp ult i64 %_public_subtmp12, 16
  %_public_zexttmp13 = zext i1 %_public_ulttmp to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp13)
  %_secret_structgep = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 5
  %_public_lval14 = load i64, i64* %_public_plen
  %_public_subtmp15 = sub i64 %_public_lval14, 4
  %_secret_ptr = getelementptr inbounds [16 x i8], [16 x i8]* %_secret_structgep, i64 0, i64 %_public_subtmp15
  %_secret_lval = load i8, i8* %_secret_ptr
  %_secret_ucast = zext i8 %_secret_lval to i16
  %_secret_lshift = shl i16 %_secret_ucast, 8
  %_public_lval16 = load i64, i64* %_public_plen
  %_public_subtmp17 = sub i64 %_public_lval16, 3
  %_public_ugtetmp18 = icmp uge i64 %_public_subtmp17, 0
  %_public_zexttmp19 = zext i1 %_public_ugtetmp18 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp19)
  %_public_lval20 = load i64, i64* %_public_plen
  %_public_subtmp21 = sub i64 %_public_lval20, 3
  %_public_ulttmp22 = icmp ult i64 %_public_subtmp21, 16
  %_public_zexttmp23 = zext i1 %_public_ulttmp22 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp23)
  %_secret_structgep24 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 5
  %_public_lval25 = load i64, i64* %_public_plen
  %_public_subtmp26 = sub i64 %_public_lval25, 3
  %_secret_ptr27 = getelementptr inbounds [16 x i8], [16 x i8]* %_secret_structgep24, i64 0, i64 %_public_subtmp26
  %_secret_lval28 = load i8, i8* %_secret_ptr27
  %_secret_ucast29 = zext i8 %_secret_lval28 to i16
  %_declassified__secret_ortmp = or i16 %_secret_lshift, %_secret_ucast29
  store i16 %_declassified__secret_ortmp, i16* %_public___v16_tls_ver
  %_public_lval30 = load i16, i16* %_public___v16_tls_ver
  %_public_lval31 = load i32, i32* %_public___v9_TLS1_1_VERSION
  %_public_lhssext = zext i16 %_public_lval30 to i32
  %_public_ugtetmp32 = icmp uge i32 %_public_lhssext, %_public_lval31
  %_public_branchcompare = icmp eq i1 %_public_ugtetmp32, true
  br i1 %_public_branchcompare, label %thenbranch, label %elsebranch52

thenbranch:                                       ; preds = %entry
  %_public_lval33 = load i32, i32* %_public___v14__len
  %_public_lval34 = load i32, i32* %_public___v7_AES_BLOCK_SIZE
  %_public_lval35 = load i32, i32* %_public___v8_SHA_DIGEST_LENGTH
  %_public_addtmp = add i32 %_public_lval34, %_public_lval35
  %_public_addtmp36 = add i32 %_public_addtmp, 1
  %_public_ulttmp37 = icmp ult i32 %_public_lval33, %_public_addtmp36
  %_public_branchcompare38 = icmp eq i1 %_public_ulttmp37, true
  br i1 %_public_branchcompare38, label %thenbranch39, label %elsebranch

thenbranch39:                                     ; preds = %thenbranch
  store i32 0, i32* %_secret___rval
  %_secret_lval40 = load i32, i32* %_secret___rval
  ret i32 %_secret_lval40

elsebranch:                                       ; preds = %thenbranch
  br label %branchmerge

branchmerge:                                      ; preds = %elsebranch
  %_secret_dynarrarg = load i8*, i8** %_secret_arrarg
  %_secret_dynarrarg41 = load i8*, i8** %_secret_arrarg5
  %_public_lval42 = load i32, i32* %_public____in_len
  call void @_arrcopy(i8* %_secret_dynarrarg, i32 16, i8* %_secret_dynarrarg41, i32 %_public_lval42)
  %_public_lval43 = load i32, i32* %_public___v12_inp
  %_public_lval44 = load i32, i32* %_public___v7_AES_BLOCK_SIZE
  %_public_addtmp45 = add i32 %_public_lval43, %_public_lval44
  store i32 %_public_addtmp45, i32* %_public___v12_inp
  %_public_lval46 = load i32, i32* %_public___v13_outp
  %_public_lval47 = load i32, i32* %_public___v7_AES_BLOCK_SIZE
  %_public_addtmp48 = add i32 %_public_lval46, %_public_lval47
  store i32 %_public_addtmp48, i32* %_public___v13_outp
  %_public_lval49 = load i32, i32* %_public___v14__len
  %_public_lval50 = load i32, i32* %_public___v7_AES_BLOCK_SIZE
  %_public_subtmp51 = sub i32 %_public_lval49, %_public_lval50
  store i32 %_public_subtmp51, i32* %_public___v14__len
  br label %branchmerge62

elsebranch52:                                     ; preds = %entry
  %_public_lval53 = load i32, i32* %_public___v14__len
  %_public_lval54 = load i32, i32* %_public___v8_SHA_DIGEST_LENGTH
  %_public_addtmp55 = add i32 %_public_lval54, 1
  %_public_ulttmp56 = icmp ult i32 %_public_lval53, %_public_addtmp55
  %_public_branchcompare57 = icmp eq i1 %_public_ulttmp56, true
  br i1 %_public_branchcompare57, label %thenbranch58, label %elsebranch60

thenbranch58:                                     ; preds = %elsebranch52
  store i32 0, i32* %_secret___rval
  %_secret_lval59 = load i32, i32* %_secret___rval
  ret i32 %_secret_lval59

elsebranch60:                                     ; preds = %elsebranch52
  br label %branchmerge61

branchmerge61:                                    ; preds = %elsebranch60
  br label %branchmerge62

branchmerge62:                                    ; preds = %branchmerge61, %branchmerge
  %_public_lval63 = load i32, i32* %_public___v14__len
  store i32 %_public_lval63, i32* %_public___v18___v17_len
  %_public_lval64 = load i32, i32* %_public___v14__len
  store i32 %_public_lval64, i32* %_public___v20___v19_len
  %_public_lval65 = load i32, i32* %_public___v12_inp
  %_public_lval66 = load i32, i32* %_public___v18___v17_len
  %_public_icast = zext i32 %_public_lval66 to i64
  %_public_lhssext67 = zext i32 %_public_lval65 to i64
  %_public_addtmp68 = add i64 %_public_lhssext67, %_public_icast
  %_public_truncbinop = trunc i64 %_public_addtmp68 to i32
  %_public_lval69 = load i32, i32* %_public___v12_inp
  %_public_ugttmp = icmp ugt i32 %_public_truncbinop, %_public_lval69
  %_public_zexttmp70 = zext i1 %_public_ugttmp to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp70)
  %_public_lval71 = load i32, i32* %_public___v12_inp
  %_public_lhssext72 = zext i32 %_public_lval71 to i64
  %_public_ugtetmp73 = icmp uge i64 %_public_lhssext72, 0
  %_public_zexttmp74 = zext i1 %_public_ugtetmp73 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp74)
  %_public_lval75 = load i32, i32* %_public___v12_inp
  %_public_lval76 = load i32, i32* %_public____in_len
  %_public_icast77 = zext i32 %_public_lval76 to i64
  %_public_lhssext78 = zext i32 %_public_lval75 to i64
  %_public_ulttmp79 = icmp ult i64 %_public_lhssext78, %_public_icast77
  %_public_zexttmp80 = zext i1 %_public_ulttmp79 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp80)
  %_public_lval81 = load i32, i32* %_public___v12_inp
  %_public_lval82 = load i32, i32* %_public___v18___v17_len
  %_public_icast83 = zext i32 %_public_lval82 to i64
  %_public_lhssext84 = zext i32 %_public_lval81 to i64
  %_public_addtmp85 = add i64 %_public_lhssext84, %_public_icast83
  %_public_truncbinop86 = trunc i64 %_public_addtmp85 to i32
  %_public_subtmp87 = sub i32 %_public_truncbinop86, 1
  %_public_lhssext88 = zext i32 %_public_subtmp87 to i64
  %_public_ugtetmp89 = icmp uge i64 %_public_lhssext88, 0
  %_public_zexttmp90 = zext i1 %_public_ugtetmp89 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp90)
  %_public_lval91 = load i32, i32* %_public___v12_inp
  %_public_lval92 = load i32, i32* %_public___v18___v17_len
  %_public_icast93 = zext i32 %_public_lval92 to i64
  %_public_lhssext94 = zext i32 %_public_lval91 to i64
  %_public_addtmp95 = add i64 %_public_lhssext94, %_public_icast93
  %_public_truncbinop96 = trunc i64 %_public_addtmp95 to i32
  %_public_subtmp97 = sub i32 %_public_truncbinop96, 1
  %_public_lval98 = load i32, i32* %_public____in_len
  %_public_icast99 = zext i32 %_public_lval98 to i64
  %_public_lhssext100 = zext i32 %_public_subtmp97 to i64
  %_public_ulttmp101 = icmp ult i64 %_public_lhssext100, %_public_icast99
  %_public_zexttmp102 = zext i1 %_public_ulttmp101 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp102)
  %_public_lval103 = load i32, i32* %_public___v12_inp
  %_secret_ldedviewptr = load i8*, i8** %_secret_arrarg5
  %_secret_source_gep = getelementptr inbounds i8, i8* %_secret_ldedviewptr, i32 %_public_lval103
  %_secret_arrviewdyn = alloca i8*
  store i8* %_secret_source_gep, i8** %_secret_arrviewdyn
  %_public_lval104 = load i32, i32* %_public___v12_inp
  %_public_lval105 = load i32, i32* %_public___v18___v17_len
  %_public_icast106 = zext i32 %_public_lval105 to i64
  %_public_lhssext107 = zext i32 %_public_lval104 to i64
  %_public_addtmp108 = add i64 %_public_lhssext107, %_public_icast106
  %_public_truncbinop109 = trunc i64 %_public_addtmp108 to i32
  %_public_lval110 = load i32, i32* %_public___v12_inp
  %_public_ugttmp111 = icmp ugt i32 %_public_truncbinop109, %_public_lval110
  %_public_zexttmp112 = zext i1 %_public_ugttmp111 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp112)
  %_public_lval113 = load i32, i32* %_public___v12_inp
  %_public_lhssext114 = zext i32 %_public_lval113 to i64
  %_public_ugtetmp115 = icmp uge i64 %_public_lhssext114, 0
  %_public_zexttmp116 = zext i1 %_public_ugtetmp115 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp116)
  %_public_lval117 = load i32, i32* %_public___v12_inp
  %_public_lval118 = load i32, i32* %_public____in_len
  %_public_icast119 = zext i32 %_public_lval118 to i64
  %_public_lhssext120 = zext i32 %_public_lval117 to i64
  %_public_ulttmp121 = icmp ult i64 %_public_lhssext120, %_public_icast119
  %_public_zexttmp122 = zext i1 %_public_ulttmp121 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp122)
  %_public_lval123 = load i32, i32* %_public___v12_inp
  %_public_lval124 = load i32, i32* %_public___v18___v17_len
  %_public_icast125 = zext i32 %_public_lval124 to i64
  %_public_lhssext126 = zext i32 %_public_lval123 to i64
  %_public_addtmp127 = add i64 %_public_lhssext126, %_public_icast125
  %_public_truncbinop128 = trunc i64 %_public_addtmp127 to i32
  %_public_subtmp129 = sub i32 %_public_truncbinop128, 1
  %_public_lhssext130 = zext i32 %_public_subtmp129 to i64
  %_public_ugtetmp131 = icmp uge i64 %_public_lhssext130, 0
  %_public_zexttmp132 = zext i1 %_public_ugtetmp131 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp132)
  %_public_lval133 = load i32, i32* %_public___v12_inp
  %_public_lval134 = load i32, i32* %_public___v18___v17_len
  %_public_icast135 = zext i32 %_public_lval134 to i64
  %_public_lhssext136 = zext i32 %_public_lval133 to i64
  %_public_addtmp137 = add i64 %_public_lhssext136, %_public_icast135
  %_public_truncbinop138 = trunc i64 %_public_addtmp137 to i32
  %_public_subtmp139 = sub i32 %_public_truncbinop138, 1
  %_public_lval140 = load i32, i32* %_public____in_len
  %_public_icast141 = zext i32 %_public_lval140 to i64
  %_public_lhssext142 = zext i32 %_public_subtmp139 to i64
  %_public_ulttmp143 = icmp ult i64 %_public_lhssext142, %_public_icast141
  %_public_zexttmp144 = zext i1 %_public_ulttmp143 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp144)
  %_public_lval145 = load i32, i32* %_public___v12_inp
  %_secret_ldedviewptr146 = load i8*, i8** %_secret_arrarg5
  %_secret_source_gep147 = getelementptr inbounds i8, i8* %_secret_ldedviewptr146, i32 %_public_lval145
  %_secret_arrviewdyn148 = alloca i8*
  store i8* %_secret_source_gep147, i8** %_secret_arrviewdyn148
  %_secret_dynarrarg149 = load i8*, i8** %_secret_arrviewdyn148
  %_public_lval150 = load i32, i32* %_public___v13_outp
  %_public_lval151 = load i32, i32* %_public___v20___v19_len
  %_public_icast152 = zext i32 %_public_lval151 to i64
  %_public_lhssext153 = zext i32 %_public_lval150 to i64
  %_public_addtmp154 = add i64 %_public_lhssext153, %_public_icast152
  %_public_truncbinop155 = trunc i64 %_public_addtmp154 to i32
  %_public_lval156 = load i32, i32* %_public___v13_outp
  %_public_ugttmp157 = icmp ugt i32 %_public_truncbinop155, %_public_lval156
  %_public_zexttmp158 = zext i1 %_public_ugttmp157 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp158)
  %_public_lval159 = load i32, i32* %_public___v13_outp
  %_public_lhssext160 = zext i32 %_public_lval159 to i64
  %_public_ugtetmp161 = icmp uge i64 %_public_lhssext160, 0
  %_public_zexttmp162 = zext i1 %_public_ugtetmp161 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp162)
  %_public_lval163 = load i32, i32* %_public___v13_outp
  %_public_lval164 = load i32, i32* %_public____out_len
  %_public_icast165 = zext i32 %_public_lval164 to i64
  %_public_lhssext166 = zext i32 %_public_lval163 to i64
  %_public_ulttmp167 = icmp ult i64 %_public_lhssext166, %_public_icast165
  %_public_zexttmp168 = zext i1 %_public_ulttmp167 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp168)
  %_public_lval169 = load i32, i32* %_public___v13_outp
  %_public_lval170 = load i32, i32* %_public___v20___v19_len
  %_public_icast171 = zext i32 %_public_lval170 to i64
  %_public_lhssext172 = zext i32 %_public_lval169 to i64
  %_public_addtmp173 = add i64 %_public_lhssext172, %_public_icast171
  %_public_truncbinop174 = trunc i64 %_public_addtmp173 to i32
  %_public_subtmp175 = sub i32 %_public_truncbinop174, 1
  %_public_lhssext176 = zext i32 %_public_subtmp175 to i64
  %_public_ugtetmp177 = icmp uge i64 %_public_lhssext176, 0
  %_public_zexttmp178 = zext i1 %_public_ugtetmp177 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp178)
  %_public_lval179 = load i32, i32* %_public___v13_outp
  %_public_lval180 = load i32, i32* %_public___v20___v19_len
  %_public_icast181 = zext i32 %_public_lval180 to i64
  %_public_lhssext182 = zext i32 %_public_lval179 to i64
  %_public_addtmp183 = add i64 %_public_lhssext182, %_public_icast181
  %_public_truncbinop184 = trunc i64 %_public_addtmp183 to i32
  %_public_subtmp185 = sub i32 %_public_truncbinop184, 1
  %_public_lval186 = load i32, i32* %_public____out_len
  %_public_icast187 = zext i32 %_public_lval186 to i64
  %_public_lhssext188 = zext i32 %_public_subtmp185 to i64
  %_public_ulttmp189 = icmp ult i64 %_public_lhssext188, %_public_icast187
  %_public_zexttmp190 = zext i1 %_public_ulttmp189 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp190)
  %_public_lval191 = load i32, i32* %_public___v13_outp
  %_secret_ldedviewptr192 = load i8*, i8** %_secret_arrarg2
  %_secret_source_gep193 = getelementptr inbounds i8, i8* %_secret_ldedviewptr192, i32 %_public_lval191
  %_secret_arrviewdyn194 = alloca i8*
  store i8* %_secret_source_gep193, i8** %_secret_arrviewdyn194
  %_public_lval195 = load i32, i32* %_public___v13_outp
  %_public_lval196 = load i32, i32* %_public___v20___v19_len
  %_public_icast197 = zext i32 %_public_lval196 to i64
  %_public_lhssext198 = zext i32 %_public_lval195 to i64
  %_public_addtmp199 = add i64 %_public_lhssext198, %_public_icast197
  %_public_truncbinop200 = trunc i64 %_public_addtmp199 to i32
  %_public_lval201 = load i32, i32* %_public___v13_outp
  %_public_ugttmp202 = icmp ugt i32 %_public_truncbinop200, %_public_lval201
  %_public_zexttmp203 = zext i1 %_public_ugttmp202 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp203)
  %_public_lval204 = load i32, i32* %_public___v13_outp
  %_public_lhssext205 = zext i32 %_public_lval204 to i64
  %_public_ugtetmp206 = icmp uge i64 %_public_lhssext205, 0
  %_public_zexttmp207 = zext i1 %_public_ugtetmp206 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp207)
  %_public_lval208 = load i32, i32* %_public___v13_outp
  %_public_lval209 = load i32, i32* %_public____out_len
  %_public_icast210 = zext i32 %_public_lval209 to i64
  %_public_lhssext211 = zext i32 %_public_lval208 to i64
  %_public_ulttmp212 = icmp ult i64 %_public_lhssext211, %_public_icast210
  %_public_zexttmp213 = zext i1 %_public_ulttmp212 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp213)
  %_public_lval214 = load i32, i32* %_public___v13_outp
  %_public_lval215 = load i32, i32* %_public___v20___v19_len
  %_public_icast216 = zext i32 %_public_lval215 to i64
  %_public_lhssext217 = zext i32 %_public_lval214 to i64
  %_public_addtmp218 = add i64 %_public_lhssext217, %_public_icast216
  %_public_truncbinop219 = trunc i64 %_public_addtmp218 to i32
  %_public_subtmp220 = sub i32 %_public_truncbinop219, 1
  %_public_lhssext221 = zext i32 %_public_subtmp220 to i64
  %_public_ugtetmp222 = icmp uge i64 %_public_lhssext221, 0
  %_public_zexttmp223 = zext i1 %_public_ugtetmp222 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp223)
  %_public_lval224 = load i32, i32* %_public___v13_outp
  %_public_lval225 = load i32, i32* %_public___v20___v19_len
  %_public_icast226 = zext i32 %_public_lval225 to i64
  %_public_lhssext227 = zext i32 %_public_lval224 to i64
  %_public_addtmp228 = add i64 %_public_lhssext227, %_public_icast226
  %_public_truncbinop229 = trunc i64 %_public_addtmp228 to i32
  %_public_subtmp230 = sub i32 %_public_truncbinop229, 1
  %_public_lval231 = load i32, i32* %_public____out_len
  %_public_icast232 = zext i32 %_public_lval231 to i64
  %_public_lhssext233 = zext i32 %_public_subtmp230 to i64
  %_public_ulttmp234 = icmp ult i64 %_public_lhssext233, %_public_icast232
  %_public_zexttmp235 = zext i1 %_public_ulttmp234 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp235)
  %_public_lval236 = load i32, i32* %_public___v13_outp
  %_secret_ldedviewptr237 = load i8*, i8** %_secret_arrarg2
  %_secret_source_gep238 = getelementptr inbounds i8, i8* %_secret_ldedviewptr237, i32 %_public_lval236
  %_secret_arrviewdyn239 = alloca i8*
  store i8* %_secret_source_gep238, i8** %_secret_arrviewdyn239
  %_secret_dynarrarg240 = load i8*, i8** %_secret_arrviewdyn239
  %_public_lval241 = load i32, i32* %_public___v14__len
  %_public_zexttmp242 = zext i32 %_public_lval241 to i64
  %_public_structgep = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 0
  %_secret_structgep243 = getelementptr inbounds %AES_KEY, %AES_KEY* %_public_structgep, i32 0, i32 0
  %_public_structgep244 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 0
  %_secret_structgep245 = getelementptr inbounds %AES_KEY, %AES_KEY* %_public_structgep244, i32 0, i32 0
  %_secret_arrtoptr = bitcast [60 x i32]* %_secret_structgep245 to i32*
  %_secret_dynarrarg246 = load i8*, i8** %_secret_arrarg
  call void @aesni_cbc_encrypt(i8* %_secret_dynarrarg149, i8* %_secret_dynarrarg240, i64 %_public_zexttmp242, i32* %_secret_arrtoptr, i8* %_secret_dynarrarg246, i32 0)
  %_public_lval247 = load i32, i32* %_public____out_len
  %_public_subtmp248 = sub i32 %_public_lval247, 1
  %_public_lhssext249 = zext i32 %_public_subtmp248 to i64
  %_public_ugtetmp250 = icmp uge i64 %_public_lhssext249, 0
  %_public_zexttmp251 = zext i1 %_public_ugtetmp250 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp251)
  %_public_lval252 = load i32, i32* %_public____out_len
  %_public_subtmp253 = sub i32 %_public_lval252, 1
  %_public_lval254 = load i32, i32* %_public____out_len
  %_public_icast255 = zext i32 %_public_lval254 to i64
  %_public_lhssext256 = zext i32 %_public_subtmp253 to i64
  %_public_ulttmp257 = icmp ult i64 %_public_lhssext256, %_public_icast255
  %_public_zexttmp258 = zext i1 %_public_ulttmp257 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp258)
  %_public_lval259 = load i32, i32* %_public____out_len
  %_public_subtmp260 = sub i32 %_public_lval259, 1
  %_secret_dyn = load i8*, i8** %_secret_arrarg2
  %_secret_ptr261 = getelementptr inbounds i8, i8* %_secret_dyn, i32 %_public_subtmp260
  %_secret_lval262 = load i8, i8* %_secret_ptr261
  %_secret_zexttmp = zext i8 %_secret_lval262 to i32
  store i32 %_secret_zexttmp, i32* %_secret___v21_pad
  %_public_lval263 = load i32, i32* %_public___v14__len
  %_public_lval264 = load i32, i32* %_public___v8_SHA_DIGEST_LENGTH
  %_public_addtmp265 = add i32 %_public_lval264, 1
  %_public_subtmp266 = sub i32 %_public_lval263, %_public_addtmp265
  store i32 %_public_subtmp266, i32* %_public___v22_maxpad
  %_public_lval267 = load i32, i32* %_public___v22_maxpad
  call void @__VERIFIER_assert(i32 1)
  %_public_lval268 = load i32, i32* %_public___v22_maxpad
  %_public_subtmp269 = sub i32 255, %_public_lval268
  %_public_arshift = ashr i32 %_public_subtmp269, 24
  %_public_ortmp = or i32 %_public_lval267, %_public_arshift
  store i32 %_public_ortmp, i32* %_public___v22_maxpad
  %_public_lval270 = load i32, i32* %_public___v22_maxpad
  %_public_andtmp = and i32 %_public_lval270, 255
  %_public_truncbinop271 = trunc i32 %_public_andtmp to i8
  %_public_zexttmp272 = zext i8 %_public_truncbinop271 to i32
  store i32 %_public_zexttmp272, i32* %_public___v22_maxpad
  %_public_lval273 = load i32, i32* %_public___v22_maxpad
  %_secret_lval274 = load i32, i32* %_secret___v21_pad
  %_secret_calltmp = call i32 @constant_time_ge(i32 %_public_lval273, i32 %_secret_lval274)
  store i32 %_secret_calltmp, i32* %_secret___v23_mask
  %_secret_lval275 = load i32, i32* %_secret___v15_ret
  %_secret_lval276 = load i32, i32* %_secret___v23_mask
  %_secret_andtmp = and i32 %_secret_lval275, %_secret_lval276
  store i32 %_secret_andtmp, i32* %_secret___v15_ret
  %_secret_lval277 = load i32, i32* %_secret___v23_mask
  %_secret_lval278 = load i32, i32* %_secret___v21_pad
  %_public_lval279 = load i32, i32* %_public___v22_maxpad
  %_secret_calltmp280 = call i32 @constant_time_select(i32 %_secret_lval277, i32 %_secret_lval278, i32 %_public_lval279)
  store i32 %_secret_calltmp280, i32* %_secret___v21_pad
  %_public_lval281 = load i32, i32* %_public___v14__len
  %_public_lval282 = load i32, i32* %_public___v8_SHA_DIGEST_LENGTH
  %_secret_lval283 = load i32, i32* %_secret___v21_pad
  %_secret_addtmp = add i32 %_public_lval282, %_secret_lval283
  %_secret_addtmp284 = add i32 %_secret_addtmp, 1
  %_secret_subtmp = sub i32 %_public_lval281, %_secret_addtmp284
  store i32 %_secret_subtmp, i32* %_secret___v24_inp_len
  %_public_lval285 = load i64, i64* %_public_plen
  %_public_subtmp286 = sub i64 %_public_lval285, 2
  %_public_ugtetmp287 = icmp uge i64 %_public_subtmp286, 0
  %_public_zexttmp288 = zext i1 %_public_ugtetmp287 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp288)
  %_public_lval289 = load i64, i64* %_public_plen
  %_public_subtmp290 = sub i64 %_public_lval289, 2
  %_public_ulttmp291 = icmp ult i64 %_public_subtmp290, 16
  %_public_zexttmp292 = zext i1 %_public_ulttmp291 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp292)
  %_secret_structgep293 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 5
  %_public_lval294 = load i64, i64* %_public_plen
  %_public_subtmp295 = sub i64 %_public_lval294, 2
  %_secret_ptr296 = getelementptr inbounds [16 x i8], [16 x i8]* %_secret_structgep293, i64 0, i64 %_public_subtmp295
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval297 = load i32, i32* %_secret___v24_inp_len
  %_secret_lrshift = lshr i32 %_secret_lval297, 8
  %_secret_ucast298 = trunc i32 %_secret_lrshift to i8
  store i8 %_secret_ucast298, i8* %_secret_ptr296
  %_public_lval299 = load i64, i64* %_public_plen
  %_public_subtmp300 = sub i64 %_public_lval299, 1
  %_public_ugtetmp301 = icmp uge i64 %_public_subtmp300, 0
  %_public_zexttmp302 = zext i1 %_public_ugtetmp301 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp302)
  %_public_lval303 = load i64, i64* %_public_plen
  %_public_subtmp304 = sub i64 %_public_lval303, 1
  %_public_ulttmp305 = icmp ult i64 %_public_subtmp304, 16
  %_public_zexttmp306 = zext i1 %_public_ulttmp305 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp306)
  %_secret_structgep307 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 5
  %_public_lval308 = load i64, i64* %_public_plen
  %_public_subtmp309 = sub i64 %_public_lval308, 1
  %_secret_ptr310 = getelementptr inbounds [16 x i8], [16 x i8]* %_secret_structgep307, i64 0, i64 %_public_subtmp309
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval311 = load i32, i32* %_secret___v24_inp_len
  %_secret_lrshift312 = lshr i32 %_secret_lval311, 0
  %_secret_ucast313 = trunc i32 %_secret_lrshift312 to i8
  store i8 %_secret_ucast313, i8* %_secret_ptr310
  %_public_structgep314 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_public_structgep315 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 1
  call void @_structcopy_SHA_CTX(%SHA_CTX* %_public_structgep314, %SHA_CTX* %_public_structgep315)
  %_public_lval316 = load i64, i64* %_public_plen
  %_public_trunctmp = trunc i64 %_public_lval316 to i32
  store i32 %_public_trunctmp, i32* %_public___v26___v25_len
  %_public_structgep317 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep318 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep317, i32 0, i32 0
  %_public_lval319 = load i32, i32* %_public___v26___v25_len
  %_public_icast320 = zext i32 %_public_lval319 to i64
  %_public_addtmp321 = add i64 0, %_public_icast320
  %_public_truncbinop322 = trunc i64 %_public_addtmp321 to i8
  %_public_sgttmp = icmp sgt i8 %_public_truncbinop322, 0
  %_public_zexttmp323 = zext i1 %_public_sgttmp to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp323)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_public_lval324 = load i32, i32* %_public___v26___v25_len
  %_public_icast325 = zext i32 %_public_lval324 to i64
  %_public_addtmp326 = add i64 0, %_public_icast325
  %_public_truncbinop327 = trunc i64 %_public_addtmp326 to i8
  %_public_subtmp328 = sub i8 %_public_truncbinop327, 1
  %_public_lhssext329 = sext i8 %_public_subtmp328 to i64
  %_public_sgtetmp = icmp sge i64 %_public_lhssext329, 0
  %_public_zexttmp330 = zext i1 %_public_sgtetmp to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp330)
  %_public_lval331 = load i32, i32* %_public___v26___v25_len
  %_public_icast332 = zext i32 %_public_lval331 to i64
  %_public_addtmp333 = add i64 0, %_public_icast332
  %_public_truncbinop334 = trunc i64 %_public_addtmp333 to i8
  %_public_subtmp335 = sub i8 %_public_truncbinop334, 1
  %_public_lhssext336 = sext i8 %_public_subtmp335 to i64
  %_public_slttmp = icmp slt i64 %_public_lhssext336, 16
  %_public_zexttmp337 = zext i1 %_public_slttmp to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp337)
  %_secret_structgep338 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 5
  %_secret_arrview = alloca i8*
  %_secret_source_gep339 = getelementptr inbounds [16 x i8], [16 x i8]* %_secret_structgep338, i8 0, i8 0
  store i8* %_secret_source_gep339, i8** %_secret_arrview
  %_public_lval340 = load i32, i32* %_public___v26___v25_len
  %_public_icast341 = zext i32 %_public_lval340 to i64
  %_public_addtmp342 = add i64 0, %_public_icast341
  %_public_truncbinop343 = trunc i64 %_public_addtmp342 to i8
  %_public_sgttmp344 = icmp sgt i8 %_public_truncbinop343, 0
  %_public_zexttmp345 = zext i1 %_public_sgttmp344 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp345)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_public_lval346 = load i32, i32* %_public___v26___v25_len
  %_public_icast347 = zext i32 %_public_lval346 to i64
  %_public_addtmp348 = add i64 0, %_public_icast347
  %_public_truncbinop349 = trunc i64 %_public_addtmp348 to i8
  %_public_subtmp350 = sub i8 %_public_truncbinop349, 1
  %_public_lhssext351 = sext i8 %_public_subtmp350 to i64
  %_public_sgtetmp352 = icmp sge i64 %_public_lhssext351, 0
  %_public_zexttmp353 = zext i1 %_public_sgtetmp352 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp353)
  %_public_lval354 = load i32, i32* %_public___v26___v25_len
  %_public_icast355 = zext i32 %_public_lval354 to i64
  %_public_addtmp356 = add i64 0, %_public_icast355
  %_public_truncbinop357 = trunc i64 %_public_addtmp356 to i8
  %_public_subtmp358 = sub i8 %_public_truncbinop357, 1
  %_public_lhssext359 = sext i8 %_public_subtmp358 to i64
  %_public_slttmp360 = icmp slt i64 %_public_lhssext359, 16
  %_public_zexttmp361 = zext i1 %_public_slttmp360 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp361)
  %_secret_structgep362 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 5
  %_secret_arrview363 = alloca i8*
  %_secret_source_gep364 = getelementptr inbounds [16 x i8], [16 x i8]* %_secret_structgep362, i8 0, i8 0
  store i8* %_secret_source_gep364, i8** %_secret_arrview363
  %_secret_dynarrarg365 = load i8*, i8** %_secret_arrview363
  %_public_lval366 = load i64, i64* %_public_plen
  call void @_sha1_update(i32* %_secret_structgep318, i8* %_secret_dynarrarg365, i64 %_public_lval366)
  %_public_lval367 = load i32, i32* %_public___v14__len
  %_public_lval368 = load i32, i32* %_public___v8_SHA_DIGEST_LENGTH
  %_public_subtmp369 = sub i32 %_public_lval367, %_public_lval368
  store i32 %_public_subtmp369, i32* %_public___v14__len
  %_public_lval370 = load i32, i32* %_public___v14__len
  %_public_lval371 = load i32, i32* %_public___v11_SHA_CBLOCK
  %_public_addtmp372 = add i32 256, %_public_lval371
  %_public_ugtetmp373 = icmp uge i32 %_public_lval370, %_public_addtmp372
  %_public_branchcompare374 = icmp eq i1 %_public_ugtetmp373, true
  br i1 %_public_branchcompare374, label %thenbranch375, label %elsebranch495

thenbranch375:                                    ; preds = %branchmerge62
  %_public_lval376 = load i32, i32* %_public___v14__len
  %_public_lval377 = load i32, i32* %_public___v11_SHA_CBLOCK
  %_public_addtmp378 = add i32 256, %_public_lval377
  %_public_subtmp379 = sub i32 %_public_lval376, %_public_addtmp378
  %_public_lval380 = load i32, i32* %_public___v11_SHA_CBLOCK
  %_public_subtmp381 = sub i32 0, %_public_lval380
  %_public_andtmp382 = and i32 %_public_subtmp379, %_public_subtmp381
  store i32 %_public_andtmp382, i32* %_public___v27_j
  %_public_lval383 = load i32, i32* %_public___v27_j
  %_public_lval384 = load i32, i32* %_public___v11_SHA_CBLOCK
  %_public_structgep385 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_public_structgep386 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep385, i32 0, i32 8
  %_public_lval387 = load i32, i32* %_public_structgep386
  %_public_subtmp388 = sub i32 %_public_lval384, %_public_lval387
  %_public_addtmp389 = add i32 %_public_lval383, %_public_subtmp388
  store i32 %_public_addtmp389, i32* %_public___v27_j
  %_public_lval390 = load i32, i32* %_public___v27_j
  store i32 %_public_lval390, i32* %_public___v29___v28_len
  %_public_structgep391 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep392 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep391, i32 0, i32 0
  %_public_lval393 = load i32, i32* %_public___v13_outp
  %_public_lval394 = load i32, i32* %_public___v29___v28_len
  %_public_icast395 = zext i32 %_public_lval394 to i64
  %_public_lhssext396 = zext i32 %_public_lval393 to i64
  %_public_addtmp397 = add i64 %_public_lhssext396, %_public_icast395
  %_public_truncbinop398 = trunc i64 %_public_addtmp397 to i32
  %_public_lval399 = load i32, i32* %_public___v13_outp
  %_public_ugttmp400 = icmp ugt i32 %_public_truncbinop398, %_public_lval399
  %_public_zexttmp401 = zext i1 %_public_ugttmp400 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp401)
  %_public_lval402 = load i32, i32* %_public___v13_outp
  %_public_lhssext403 = zext i32 %_public_lval402 to i64
  %_public_ugtetmp404 = icmp uge i64 %_public_lhssext403, 0
  %_public_zexttmp405 = zext i1 %_public_ugtetmp404 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp405)
  %_public_lval406 = load i32, i32* %_public___v13_outp
  %_public_lval407 = load i32, i32* %_public____out_len
  %_public_icast408 = zext i32 %_public_lval407 to i64
  %_public_lhssext409 = zext i32 %_public_lval406 to i64
  %_public_ulttmp410 = icmp ult i64 %_public_lhssext409, %_public_icast408
  %_public_zexttmp411 = zext i1 %_public_ulttmp410 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp411)
  %_public_lval412 = load i32, i32* %_public___v13_outp
  %_public_lval413 = load i32, i32* %_public___v29___v28_len
  %_public_icast414 = zext i32 %_public_lval413 to i64
  %_public_lhssext415 = zext i32 %_public_lval412 to i64
  %_public_addtmp416 = add i64 %_public_lhssext415, %_public_icast414
  %_public_truncbinop417 = trunc i64 %_public_addtmp416 to i32
  %_public_subtmp418 = sub i32 %_public_truncbinop417, 1
  %_public_lhssext419 = zext i32 %_public_subtmp418 to i64
  %_public_ugtetmp420 = icmp uge i64 %_public_lhssext419, 0
  %_public_zexttmp421 = zext i1 %_public_ugtetmp420 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp421)
  %_public_lval422 = load i32, i32* %_public___v13_outp
  %_public_lval423 = load i32, i32* %_public___v29___v28_len
  %_public_icast424 = zext i32 %_public_lval423 to i64
  %_public_lhssext425 = zext i32 %_public_lval422 to i64
  %_public_addtmp426 = add i64 %_public_lhssext425, %_public_icast424
  %_public_truncbinop427 = trunc i64 %_public_addtmp426 to i32
  %_public_subtmp428 = sub i32 %_public_truncbinop427, 1
  %_public_lval429 = load i32, i32* %_public____out_len
  %_public_icast430 = zext i32 %_public_lval429 to i64
  %_public_lhssext431 = zext i32 %_public_subtmp428 to i64
  %_public_ulttmp432 = icmp ult i64 %_public_lhssext431, %_public_icast430
  %_public_zexttmp433 = zext i1 %_public_ulttmp432 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp433)
  %_public_lval434 = load i32, i32* %_public___v13_outp
  %_secret_ldedviewptr435 = load i8*, i8** %_secret_arrarg2
  %_secret_source_gep436 = getelementptr inbounds i8, i8* %_secret_ldedviewptr435, i32 %_public_lval434
  %_secret_arrviewdyn437 = alloca i8*
  store i8* %_secret_source_gep436, i8** %_secret_arrviewdyn437
  %_public_lval438 = load i32, i32* %_public___v13_outp
  %_public_lval439 = load i32, i32* %_public___v29___v28_len
  %_public_icast440 = zext i32 %_public_lval439 to i64
  %_public_lhssext441 = zext i32 %_public_lval438 to i64
  %_public_addtmp442 = add i64 %_public_lhssext441, %_public_icast440
  %_public_truncbinop443 = trunc i64 %_public_addtmp442 to i32
  %_public_lval444 = load i32, i32* %_public___v13_outp
  %_public_ugttmp445 = icmp ugt i32 %_public_truncbinop443, %_public_lval444
  %_public_zexttmp446 = zext i1 %_public_ugttmp445 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp446)
  %_public_lval447 = load i32, i32* %_public___v13_outp
  %_public_lhssext448 = zext i32 %_public_lval447 to i64
  %_public_ugtetmp449 = icmp uge i64 %_public_lhssext448, 0
  %_public_zexttmp450 = zext i1 %_public_ugtetmp449 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp450)
  %_public_lval451 = load i32, i32* %_public___v13_outp
  %_public_lval452 = load i32, i32* %_public____out_len
  %_public_icast453 = zext i32 %_public_lval452 to i64
  %_public_lhssext454 = zext i32 %_public_lval451 to i64
  %_public_ulttmp455 = icmp ult i64 %_public_lhssext454, %_public_icast453
  %_public_zexttmp456 = zext i1 %_public_ulttmp455 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp456)
  %_public_lval457 = load i32, i32* %_public___v13_outp
  %_public_lval458 = load i32, i32* %_public___v29___v28_len
  %_public_icast459 = zext i32 %_public_lval458 to i64
  %_public_lhssext460 = zext i32 %_public_lval457 to i64
  %_public_addtmp461 = add i64 %_public_lhssext460, %_public_icast459
  %_public_truncbinop462 = trunc i64 %_public_addtmp461 to i32
  %_public_subtmp463 = sub i32 %_public_truncbinop462, 1
  %_public_lhssext464 = zext i32 %_public_subtmp463 to i64
  %_public_ugtetmp465 = icmp uge i64 %_public_lhssext464, 0
  %_public_zexttmp466 = zext i1 %_public_ugtetmp465 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp466)
  %_public_lval467 = load i32, i32* %_public___v13_outp
  %_public_lval468 = load i32, i32* %_public___v29___v28_len
  %_public_icast469 = zext i32 %_public_lval468 to i64
  %_public_lhssext470 = zext i32 %_public_lval467 to i64
  %_public_addtmp471 = add i64 %_public_lhssext470, %_public_icast469
  %_public_truncbinop472 = trunc i64 %_public_addtmp471 to i32
  %_public_subtmp473 = sub i32 %_public_truncbinop472, 1
  %_public_lval474 = load i32, i32* %_public____out_len
  %_public_icast475 = zext i32 %_public_lval474 to i64
  %_public_lhssext476 = zext i32 %_public_subtmp473 to i64
  %_public_ulttmp477 = icmp ult i64 %_public_lhssext476, %_public_icast475
  %_public_zexttmp478 = zext i1 %_public_ulttmp477 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp478)
  %_public_lval479 = load i32, i32* %_public___v13_outp
  %_secret_ldedviewptr480 = load i8*, i8** %_secret_arrarg2
  %_secret_source_gep481 = getelementptr inbounds i8, i8* %_secret_ldedviewptr480, i32 %_public_lval479
  %_secret_arrviewdyn482 = alloca i8*
  store i8* %_secret_source_gep481, i8** %_secret_arrviewdyn482
  %_secret_dynarrarg483 = load i8*, i8** %_secret_arrviewdyn482
  %_public_lval484 = load i32, i32* %_public___v27_j
  %_public_zexttmp485 = zext i32 %_public_lval484 to i64
  call void @_sha1_update(i32* %_secret_structgep392, i8* %_secret_dynarrarg483, i64 %_public_zexttmp485)
  %_public_lval486 = load i32, i32* %_public___v13_outp
  %_public_lval487 = load i32, i32* %_public___v27_j
  %_public_addtmp488 = add i32 %_public_lval486, %_public_lval487
  store i32 %_public_addtmp488, i32* %_public___v13_outp
  %_public_lval489 = load i32, i32* %_public___v14__len
  %_public_lval490 = load i32, i32* %_public___v27_j
  %_public_subtmp491 = sub i32 %_public_lval489, %_public_lval490
  store i32 %_public_subtmp491, i32* %_public___v14__len
  %_secret_lval492 = load i32, i32* %_secret___v24_inp_len
  %_public_lval493 = load i32, i32* %_public___v27_j
  %_secret_subtmp494 = sub i32 %_secret_lval492, %_public_lval493
  store i32 %_secret_subtmp494, i32* %_secret___v24_inp_len
  br label %branchmerge496

elsebranch495:                                    ; preds = %branchmerge62
  br label %branchmerge496

branchmerge496:                                   ; preds = %elsebranch495, %thenbranch375
  %_public_structgep497 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep498 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep497, i32 0, i32 5
  %_secret_lval499 = load i32, i32* %_secret_structgep498
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval500 = load i32, i32* %_secret___v24_inp_len
  %_secret_lshift501 = shl i32 %_secret_lval500, 3
  %_secret_addtmp502 = add i32 %_secret_lval499, %_secret_lshift501
  store i32 %_secret_addtmp502, i32* %_secret___v30_bitlen
  %_secret_lval503 = load i32, i32* %_secret___v30_bitlen
  %_secret_calltmp504 = call i32 @bswap4(i32 %_secret_lval503)
  store i32 %_secret_calltmp504, i32* %_secret___v30_bitlen
  %_secret___v31_pmac = alloca [20 x i8], align 32
  %_secret_sourcecasted = bitcast [20 x i8]* %_secret___v31_pmac to i8*
  call void @llvm.memset.p0i8.i64(i8* %_secret_sourcecasted, i8 0, i64 20, i32 0, i1 false)
  %_public_structgep505 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_public_structgep506 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep505, i32 0, i32 8
  %_public_lval507 = load i32, i32* %_public_structgep506
  store i32 %_public_lval507, i32* %_public___v32_p_res
  %_public_calltmp = call i32 @__VERIFIER_nondet_unsigned_int()
  store i32 %_public_calltmp, i32* %_public___v33_j
  %_public_lval508 = load i32, i32* %_public___v33_j
  %_public_lval509 = load i32, i32* %_public___v14__len
  %_public_ulttmp510 = icmp ult i32 %_public_lval508, %_public_lval509
  %_public_branchcompare511 = icmp eq i1 %_public_ulttmp510, true
  br i1 %_public_branchcompare511, label %thenbranch512, label %elsebranch757

thenbranch512:                                    ; preds = %branchmerge496
  %_public_lval513 = load i32, i32* %_public___v33_j
  %_public_lval514 = load i32, i32* %_public___v33_j
  %_public_addtmp515 = add i32 %_public_lval514, 1
  %_public_ulttmp516 = icmp ult i32 %_public_lval513, %_public_addtmp515
  %_public_zexttmp517 = zext i1 %_public_ulttmp516 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp517)
  %_public_lval518 = load i32, i32* %_public___v33_j
  %_public_ulttmp519 = icmp ult i32 0, %_public_lval518
  %_public_lval520 = load i32, i32* %_public___v33_j
  %_public_eqtmp = icmp eq i32 0, %_public_lval520
  %_public_lortmp = or i1 %_public_ulttmp519, %_public_eqtmp
  %_public_zexttmp521 = zext i1 %_public_lortmp to i32
  call void @__VERIFIER_assume(i32 %_public_zexttmp521)
  %_public_lval522 = load i32, i32* %_public___v13_outp
  %_public_lval523 = load i32, i32* %_public___v33_j
  %_public_addtmp524 = add i32 %_public_lval522, %_public_lval523
  %_public_lhssext525 = zext i32 %_public_addtmp524 to i64
  %_public_ugtetmp526 = icmp uge i64 %_public_lhssext525, 0
  %_public_zexttmp527 = zext i1 %_public_ugtetmp526 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp527)
  %_public_lval528 = load i32, i32* %_public___v13_outp
  %_public_lval529 = load i32, i32* %_public___v33_j
  %_public_addtmp530 = add i32 %_public_lval528, %_public_lval529
  %_public_lval531 = load i32, i32* %_public____out_len
  %_public_icast532 = zext i32 %_public_lval531 to i64
  %_public_lhssext533 = zext i32 %_public_addtmp530 to i64
  %_public_ulttmp534 = icmp ult i64 %_public_lhssext533, %_public_icast532
  %_public_zexttmp535 = zext i1 %_public_ulttmp534 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp535)
  %_public_lval536 = load i32, i32* %_public___v13_outp
  %_public_lval537 = load i32, i32* %_public___v33_j
  %_public_addtmp538 = add i32 %_public_lval536, %_public_lval537
  %_secret_dyn539 = load i8*, i8** %_secret_arrarg2
  %_secret_ptr540 = getelementptr inbounds i8, i8* %_secret_dyn539, i32 %_public_addtmp538
  %_secret_lval541 = load i8, i8* %_secret_ptr540
  %_secret_zexttmp542 = zext i8 %_secret_lval541 to i32
  store i32 %_secret_zexttmp542, i32* %_secret___v34_c
  call void @__VERIFIER_assert(i32 1)
  %_public_lval543 = load i32, i32* %_public___v33_j
  %_secret_lval544 = load i32, i32* %_secret___v24_inp_len
  %_secret_subtmp545 = sub i32 %_public_lval543, %_secret_lval544
  %_secret_arshift = ashr i32 %_secret_subtmp545, 24
  store i32 %_secret_arshift, i32* %_secret___v35_mask
  %_secret_lval546 = load i32, i32* %_secret___v34_c
  %_secret_lval547 = load i32, i32* %_secret___v35_mask
  %_secret_andtmp548 = and i32 %_secret_lval546, %_secret_lval547
  store i32 %_secret_andtmp548, i32* %_secret___v34_c
  %_secret_lval549 = load i32, i32* %_secret___v34_c
  %_secret_lval550 = load i32, i32* %_secret___v35_mask
  %_secret_bnottmp = xor i32 %_secret_lval550, -1
  %_secret_andtmp551 = and i32 128, %_secret_bnottmp
  %_secret_truncbinop = trunc i32 %_secret_andtmp551 to i8
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval552 = load i32, i32* %_secret___v24_inp_len
  %_public_lval553 = load i32, i32* %_public___v33_j
  %_secret_subtmp554 = sub i32 %_secret_lval552, %_public_lval553
  %_secret_lrshift555 = lshr i32 %_secret_subtmp554, 24
  %_secret_bnottmp556 = xor i32 %_secret_lrshift555, -1
  %_secret_lhssext = zext i8 %_secret_truncbinop to i32
  %_secret_andtmp557 = and i32 %_secret_lhssext, %_secret_bnottmp556
  %_secret_truncbinop558 = trunc i32 %_secret_andtmp557 to i8
  %_secret_rhssext = zext i8 %_secret_truncbinop558 to i32
  %_secret_ortmp = or i32 %_secret_lval549, %_secret_rhssext
  store i32 %_secret_ortmp, i32* %_secret___v34_c
  %_public_lval559 = load i32, i32* %_public___v32_p_res
  %_public_lhssext560 = zext i32 %_public_lval559 to i64
  %_public_ugtetmp561 = icmp uge i64 %_public_lhssext560, 0
  %_public_zexttmp562 = zext i1 %_public_ugtetmp561 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp562)
  %_public_lval563 = load i32, i32* %_public___v32_p_res
  %_public_lhssext564 = zext i32 %_public_lval563 to i64
  %_public_ulttmp565 = icmp ult i64 %_public_lhssext564, 64
  %_public_zexttmp566 = zext i1 %_public_ulttmp565 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp566)
  %_public_structgep567 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep568 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep567, i32 0, i32 7
  %_public_lval569 = load i32, i32* %_public___v32_p_res
  %_secret_ptr570 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep568, i32 0, i32 %_public_lval569
  %_secret_lval571 = load i32, i32* %_secret___v34_c
  %_secret_ucast572 = trunc i32 %_secret_lval571 to i8
  store i8 %_secret_ucast572, i8* %_secret_ptr570
  %_public_lval573 = load i32, i32* %_public___v32_p_res
  %_public_addtmp574 = add i32 %_public_lval573, 1
  store i32 %_public_addtmp574, i32* %_public___v32_p_res
  %_public_lval575 = load i32, i32* %_public___v32_p_res
  %_public_lval576 = load i32, i32* %_public___v11_SHA_CBLOCK
  %_public_eqtmp577 = icmp eq i32 %_public_lval575, %_public_lval576
  %_public_branchcompare578 = icmp eq i1 %_public_eqtmp577, true
  br i1 %_public_branchcompare578, label %thenbranch579, label %elsebranch755

thenbranch579:                                    ; preds = %thenbranch512
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval580 = load i32, i32* %_secret___v24_inp_len
  %_secret_addtmp581 = add i32 %_secret_lval580, 7
  %_public_lval582 = load i32, i32* %_public___v33_j
  %_secret_subtmp583 = sub i32 %_secret_addtmp581, %_public_lval582
  %_secret_lrshift584 = lshr i32 %_secret_subtmp583, 31
  %_secret_subtmp585 = sub i32 0, %_secret_lrshift584
  store i32 %_secret_subtmp585, i32* %_secret___v35_mask
  %_public_lval586 = load i32, i32* %_public___v10_SHA_LBLOCK
  %_public_subtmp587 = sub i32 %_public_lval586, 1
  %_public_multmp588 = mul i32 4, %_public_subtmp587
  %_public_lhssext589 = zext i32 %_public_multmp588 to i64
  %_public_addtmp590 = add i64 %_public_lhssext589, 4
  %_public_truncbinop591 = trunc i64 %_public_addtmp590 to i32
  %_public_lval592 = load i32, i32* %_public___v10_SHA_LBLOCK
  %_public_subtmp593 = sub i32 %_public_lval592, 1
  %_public_multmp594 = mul i32 4, %_public_subtmp593
  %_public_ugttmp595 = icmp ugt i32 %_public_truncbinop591, %_public_multmp594
  %_public_zexttmp596 = zext i1 %_public_ugttmp595 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp596)
  %_public_lval597 = load i32, i32* %_public___v10_SHA_LBLOCK
  %_public_subtmp598 = sub i32 %_public_lval597, 1
  %_public_multmp599 = mul i32 4, %_public_subtmp598
  %_public_lhssext600 = zext i32 %_public_multmp599 to i64
  %_public_ugtetmp601 = icmp uge i64 %_public_lhssext600, 0
  %_public_zexttmp602 = zext i1 %_public_ugtetmp601 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp602)
  %_public_lval603 = load i32, i32* %_public___v10_SHA_LBLOCK
  %_public_subtmp604 = sub i32 %_public_lval603, 1
  %_public_multmp605 = mul i32 4, %_public_subtmp604
  %_public_lhssext606 = zext i32 %_public_multmp605 to i64
  %_public_ulttmp607 = icmp ult i64 %_public_lhssext606, 64
  %_public_zexttmp608 = zext i1 %_public_ulttmp607 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp608)
  %_public_lval609 = load i32, i32* %_public___v10_SHA_LBLOCK
  %_public_subtmp610 = sub i32 %_public_lval609, 1
  %_public_multmp611 = mul i32 4, %_public_subtmp610
  %_public_lhssext612 = zext i32 %_public_multmp611 to i64
  %_public_addtmp613 = add i64 %_public_lhssext612, 4
  %_public_truncbinop614 = trunc i64 %_public_addtmp613 to i32
  %_public_subtmp615 = sub i32 %_public_truncbinop614, 1
  %_public_lhssext616 = zext i32 %_public_subtmp615 to i64
  %_public_ugtetmp617 = icmp uge i64 %_public_lhssext616, 0
  %_public_zexttmp618 = zext i1 %_public_ugtetmp617 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp618)
  %_public_lval619 = load i32, i32* %_public___v10_SHA_LBLOCK
  %_public_subtmp620 = sub i32 %_public_lval619, 1
  %_public_multmp621 = mul i32 4, %_public_subtmp620
  %_public_lhssext622 = zext i32 %_public_multmp621 to i64
  %_public_addtmp623 = add i64 %_public_lhssext622, 4
  %_public_truncbinop624 = trunc i64 %_public_addtmp623 to i32
  %_public_subtmp625 = sub i32 %_public_truncbinop624, 1
  %_public_lhssext626 = zext i32 %_public_subtmp625 to i64
  %_public_ulttmp627 = icmp ult i64 %_public_lhssext626, 64
  %_public_zexttmp628 = zext i1 %_public_ulttmp627 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp628)
  %_public_lval629 = load i32, i32* %_public___v10_SHA_LBLOCK
  %_public_subtmp630 = sub i32 %_public_lval629, 1
  %_public_multmp631 = mul i32 4, %_public_subtmp630
  %_public_structgep632 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep633 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep632, i32 0, i32 7
  %_secret_arrview634 = alloca i8*
  %_secret_source_gep635 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep633, i32 0, i32 %_public_multmp631
  store i8* %_secret_source_gep635, i8** %_secret_arrview634
  %_public_lval636 = load i32, i32* %_public___v10_SHA_LBLOCK
  %_public_subtmp637 = sub i32 %_public_lval636, 1
  %_public_multmp638 = mul i32 4, %_public_subtmp637
  %_public_lhssext639 = zext i32 %_public_multmp638 to i64
  %_public_addtmp640 = add i64 %_public_lhssext639, 4
  %_public_truncbinop641 = trunc i64 %_public_addtmp640 to i32
  %_public_lval642 = load i32, i32* %_public___v10_SHA_LBLOCK
  %_public_subtmp643 = sub i32 %_public_lval642, 1
  %_public_multmp644 = mul i32 4, %_public_subtmp643
  %_public_ugttmp645 = icmp ugt i32 %_public_truncbinop641, %_public_multmp644
  %_public_zexttmp646 = zext i1 %_public_ugttmp645 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp646)
  %_public_lval647 = load i32, i32* %_public___v10_SHA_LBLOCK
  %_public_subtmp648 = sub i32 %_public_lval647, 1
  %_public_multmp649 = mul i32 4, %_public_subtmp648
  %_public_lhssext650 = zext i32 %_public_multmp649 to i64
  %_public_ugtetmp651 = icmp uge i64 %_public_lhssext650, 0
  %_public_zexttmp652 = zext i1 %_public_ugtetmp651 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp652)
  %_public_lval653 = load i32, i32* %_public___v10_SHA_LBLOCK
  %_public_subtmp654 = sub i32 %_public_lval653, 1
  %_public_multmp655 = mul i32 4, %_public_subtmp654
  %_public_lhssext656 = zext i32 %_public_multmp655 to i64
  %_public_ulttmp657 = icmp ult i64 %_public_lhssext656, 64
  %_public_zexttmp658 = zext i1 %_public_ulttmp657 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp658)
  %_public_lval659 = load i32, i32* %_public___v10_SHA_LBLOCK
  %_public_subtmp660 = sub i32 %_public_lval659, 1
  %_public_multmp661 = mul i32 4, %_public_subtmp660
  %_public_lhssext662 = zext i32 %_public_multmp661 to i64
  %_public_addtmp663 = add i64 %_public_lhssext662, 4
  %_public_truncbinop664 = trunc i64 %_public_addtmp663 to i32
  %_public_subtmp665 = sub i32 %_public_truncbinop664, 1
  %_public_lhssext666 = zext i32 %_public_subtmp665 to i64
  %_public_ugtetmp667 = icmp uge i64 %_public_lhssext666, 0
  %_public_zexttmp668 = zext i1 %_public_ugtetmp667 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp668)
  %_public_lval669 = load i32, i32* %_public___v10_SHA_LBLOCK
  %_public_subtmp670 = sub i32 %_public_lval669, 1
  %_public_multmp671 = mul i32 4, %_public_subtmp670
  %_public_lhssext672 = zext i32 %_public_multmp671 to i64
  %_public_addtmp673 = add i64 %_public_lhssext672, 4
  %_public_truncbinop674 = trunc i64 %_public_addtmp673 to i32
  %_public_subtmp675 = sub i32 %_public_truncbinop674, 1
  %_public_lhssext676 = zext i32 %_public_subtmp675 to i64
  %_public_ulttmp677 = icmp ult i64 %_public_lhssext676, 64
  %_public_zexttmp678 = zext i1 %_public_ulttmp677 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp678)
  %_public_lval679 = load i32, i32* %_public___v10_SHA_LBLOCK
  %_public_subtmp680 = sub i32 %_public_lval679, 1
  %_public_multmp681 = mul i32 4, %_public_subtmp680
  %_public_structgep682 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep683 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep682, i32 0, i32 7
  %_secret_arrview684 = alloca i8*
  %_secret_source_gep685 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep683, i32 0, i32 %_public_multmp681
  store i8* %_secret_source_gep685, i8** %_secret_arrview684
  %_secret_dynarrarg686 = load i8*, i8** %_secret_arrview684
  %_secret_lval687 = load i32, i32* %_secret___v30_bitlen
  %_secret_lval688 = load i32, i32* %_secret___v35_mask
  %_secret_andtmp689 = and i32 %_secret_lval687, %_secret_lval688
  call void @pmac_oreq(i8* %_secret_dynarrarg686, i32 %_secret_andtmp689)
  %_public_structgep690 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep691 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep690, i32 0, i32 0
  %_public_structgep692 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep693 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep692, i32 0, i32 7
  %_public_structgep694 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep695 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep694, i32 0, i32 7
  %_secret_arrtoptr696 = bitcast [64 x i8]* %_secret_structgep695 to i8*
  call void @sha1_block_data_order(i32* %_secret_structgep691, i8* %_secret_arrtoptr696, i32 1)
  %_secret_lval697 = load i32, i32* %_secret___v35_mask
  call void @__VERIFIER_assert(i32 1)
  %_public_lval698 = load i32, i32* %_public___v33_j
  %_secret_lval699 = load i32, i32* %_secret___v24_inp_len
  %_secret_subtmp700 = sub i32 %_public_lval698, %_secret_lval699
  %_secret_subtmp701 = sub i32 %_secret_subtmp700, 72
  %_secret_lrshift702 = lshr i32 %_secret_subtmp701, 31
  %_secret_subtmp703 = sub i32 0, %_secret_lrshift702
  %_secret_andtmp704 = and i32 %_secret_lval697, %_secret_subtmp703
  store i32 %_secret_andtmp704, i32* %_secret___v35_mask
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview705 = alloca i8*
  %_secret_source_gep706 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i8 0, i8 0
  store i8* %_secret_source_gep706, i8** %_secret_arrview705
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview707 = alloca i8*
  %_secret_source_gep708 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i8 0, i8 0
  store i8* %_secret_source_gep708, i8** %_secret_arrview707
  %_secret_dynarrarg709 = load i8*, i8** %_secret_arrview707
  %_public_structgep710 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep711 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep710, i32 0, i32 0
  %_secret_lval712 = load i32, i32* %_secret_structgep711
  %_secret_lval713 = load i32, i32* %_secret___v35_mask
  %_secret_andtmp714 = and i32 %_secret_lval712, %_secret_lval713
  call void @pmac_oreq(i8* %_secret_dynarrarg709, i32 %_secret_andtmp714)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview715 = alloca i8*
  %_secret_source_gep716 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i8 0, i8 4
  store i8* %_secret_source_gep716, i8** %_secret_arrview715
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview717 = alloca i8*
  %_secret_source_gep718 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i8 0, i8 4
  store i8* %_secret_source_gep718, i8** %_secret_arrview717
  %_secret_dynarrarg719 = load i8*, i8** %_secret_arrview717
  %_public_structgep720 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep721 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep720, i32 0, i32 1
  %_secret_lval722 = load i32, i32* %_secret_structgep721
  %_secret_lval723 = load i32, i32* %_secret___v35_mask
  %_secret_andtmp724 = and i32 %_secret_lval722, %_secret_lval723
  call void @pmac_oreq(i8* %_secret_dynarrarg719, i32 %_secret_andtmp724)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview725 = alloca i8*
  %_secret_source_gep726 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i8 0, i8 8
  store i8* %_secret_source_gep726, i8** %_secret_arrview725
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview727 = alloca i8*
  %_secret_source_gep728 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i8 0, i8 8
  store i8* %_secret_source_gep728, i8** %_secret_arrview727
  %_secret_dynarrarg729 = load i8*, i8** %_secret_arrview727
  %_public_structgep730 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep731 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep730, i32 0, i32 2
  %_secret_lval732 = load i32, i32* %_secret_structgep731
  %_secret_lval733 = load i32, i32* %_secret___v35_mask
  %_secret_andtmp734 = and i32 %_secret_lval732, %_secret_lval733
  call void @pmac_oreq(i8* %_secret_dynarrarg729, i32 %_secret_andtmp734)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview735 = alloca i8*
  %_secret_source_gep736 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i8 0, i8 12
  store i8* %_secret_source_gep736, i8** %_secret_arrview735
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview737 = alloca i8*
  %_secret_source_gep738 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i8 0, i8 12
  store i8* %_secret_source_gep738, i8** %_secret_arrview737
  %_secret_dynarrarg739 = load i8*, i8** %_secret_arrview737
  %_public_structgep740 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep741 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep740, i32 0, i32 3
  %_secret_lval742 = load i32, i32* %_secret_structgep741
  %_secret_lval743 = load i32, i32* %_secret___v35_mask
  %_secret_andtmp744 = and i32 %_secret_lval742, %_secret_lval743
  call void @pmac_oreq(i8* %_secret_dynarrarg739, i32 %_secret_andtmp744)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview745 = alloca i8*
  %_secret_source_gep746 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i8 0, i8 16
  store i8* %_secret_source_gep746, i8** %_secret_arrview745
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview747 = alloca i8*
  %_secret_source_gep748 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i8 0, i8 16
  store i8* %_secret_source_gep748, i8** %_secret_arrview747
  %_secret_dynarrarg749 = load i8*, i8** %_secret_arrview747
  %_public_structgep750 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep751 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep750, i32 0, i32 4
  %_secret_lval752 = load i32, i32* %_secret_structgep751
  %_secret_lval753 = load i32, i32* %_secret___v35_mask
  %_secret_andtmp754 = and i32 %_secret_lval752, %_secret_lval753
  call void @pmac_oreq(i8* %_secret_dynarrarg749, i32 %_secret_andtmp754)
  store i32 0, i32* %_public___v32_p_res
  br label %branchmerge756

elsebranch755:                                    ; preds = %thenbranch512
  br label %branchmerge756

branchmerge756:                                   ; preds = %elsebranch755, %thenbranch579
  br label %branchmerge758

elsebranch757:                                    ; preds = %branchmerge496
  br label %branchmerge758

branchmerge758:                                   ; preds = %elsebranch757, %branchmerge756
  %_public_lval759 = load i32, i32* %_public___v14__len
  store i32 %_public_lval759, i32* %_public___v36_j
  %_public_calltmp760 = call i32 @__VERIFIER_nondet_unsigned_int()
  store i32 %_public_calltmp760, i32* %_public___v37_i
  %_public_lval761 = load i32, i32* %_public___v37_i
  %_public_lval762 = load i32, i32* %_public___v11_SHA_CBLOCK
  %_public_ulttmp763 = icmp ult i32 %_public_lval761, %_public_lval762
  %_public_branchcompare764 = icmp eq i1 %_public_ulttmp763, true
  br i1 %_public_branchcompare764, label %thenbranch765, label %elsebranch793

thenbranch765:                                    ; preds = %branchmerge758
  %_public_lval766 = load i32, i32* %_public___v37_i
  %_public_lval767 = load i32, i32* %_public___v37_i
  %_public_addtmp768 = add i32 %_public_lval767, 1
  %_public_ulttmp769 = icmp ult i32 %_public_lval766, %_public_addtmp768
  %_public_zexttmp770 = zext i1 %_public_ulttmp769 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp770)
  %_public_lval771 = load i32, i32* %_public___v32_p_res
  %_public_lval772 = load i32, i32* %_public___v37_i
  %_public_ulttmp773 = icmp ult i32 %_public_lval771, %_public_lval772
  %_public_lval774 = load i32, i32* %_public___v32_p_res
  %_public_lval775 = load i32, i32* %_public___v37_i
  %_public_eqtmp776 = icmp eq i32 %_public_lval774, %_public_lval775
  %_public_lortmp777 = or i1 %_public_ulttmp773, %_public_eqtmp776
  %_public_zexttmp778 = zext i1 %_public_lortmp777 to i32
  call void @__VERIFIER_assume(i32 %_public_zexttmp778)
  %_public_lval779 = load i32, i32* %_public___v37_i
  %_public_lhssext780 = zext i32 %_public_lval779 to i64
  %_public_ugtetmp781 = icmp uge i64 %_public_lhssext780, 0
  %_public_zexttmp782 = zext i1 %_public_ugtetmp781 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp782)
  %_public_lval783 = load i32, i32* %_public___v37_i
  %_public_lhssext784 = zext i32 %_public_lval783 to i64
  %_public_ulttmp785 = icmp ult i64 %_public_lhssext784, 64
  %_public_zexttmp786 = zext i1 %_public_ulttmp785 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp786)
  %_public_structgep787 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep788 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep787, i32 0, i32 7
  %_public_lval789 = load i32, i32* %_public___v37_i
  %_secret_ptr790 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep788, i32 0, i32 %_public_lval789
  store i8 0, i8* %_secret_ptr790
  %_public_lval791 = load i32, i32* %_public___v36_j
  %_public_addtmp792 = add i32 %_public_lval791, 1
  store i32 %_public_addtmp792, i32* %_public___v36_j
  br label %branchmerge794

elsebranch793:                                    ; preds = %branchmerge758
  br label %branchmerge794

branchmerge794:                                   ; preds = %elsebranch793, %thenbranch765
  %_public_lval795 = load i32, i32* %_public___v32_p_res
  %_public_lval796 = load i32, i32* %_public___v11_SHA_CBLOCK
  %_public_subtmp797 = sub i32 %_public_lval796, 8
  %_public_ugttmp798 = icmp ugt i32 %_public_lval795, %_public_subtmp797
  %_public_branchcompare799 = icmp eq i1 %_public_ugttmp798, true
  br i1 %_public_branchcompare799, label %thenbranch800, label %elsebranch983

thenbranch800:                                    ; preds = %branchmerge794
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval801 = load i32, i32* %_secret___v24_inp_len
  %_secret_addtmp802 = add i32 %_secret_lval801, 8
  %_public_lval803 = load i32, i32* %_public___v36_j
  %_secret_subtmp804 = sub i32 %_secret_addtmp802, %_public_lval803
  %_secret_lrshift805 = lshr i32 %_secret_subtmp804, 31
  %_secret_subtmp806 = sub i32 0, %_secret_lrshift805
  store i32 %_secret_subtmp806, i32* %_secret___v38_mask
  %_public_lval807 = load i32, i32* %_public___v10_SHA_LBLOCK
  %_public_subtmp808 = sub i32 %_public_lval807, 1
  %_public_multmp809 = mul i32 4, %_public_subtmp808
  %_public_lhssext810 = zext i32 %_public_multmp809 to i64
  %_public_addtmp811 = add i64 %_public_lhssext810, 4
  %_public_truncbinop812 = trunc i64 %_public_addtmp811 to i32
  %_public_lval813 = load i32, i32* %_public___v10_SHA_LBLOCK
  %_public_subtmp814 = sub i32 %_public_lval813, 1
  %_public_multmp815 = mul i32 4, %_public_subtmp814
  %_public_ugttmp816 = icmp ugt i32 %_public_truncbinop812, %_public_multmp815
  %_public_zexttmp817 = zext i1 %_public_ugttmp816 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp817)
  %_public_lval818 = load i32, i32* %_public___v10_SHA_LBLOCK
  %_public_subtmp819 = sub i32 %_public_lval818, 1
  %_public_multmp820 = mul i32 4, %_public_subtmp819
  %_public_lhssext821 = zext i32 %_public_multmp820 to i64
  %_public_ugtetmp822 = icmp uge i64 %_public_lhssext821, 0
  %_public_zexttmp823 = zext i1 %_public_ugtetmp822 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp823)
  %_public_lval824 = load i32, i32* %_public___v10_SHA_LBLOCK
  %_public_subtmp825 = sub i32 %_public_lval824, 1
  %_public_multmp826 = mul i32 4, %_public_subtmp825
  %_public_lhssext827 = zext i32 %_public_multmp826 to i64
  %_public_ulttmp828 = icmp ult i64 %_public_lhssext827, 64
  %_public_zexttmp829 = zext i1 %_public_ulttmp828 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp829)
  %_public_lval830 = load i32, i32* %_public___v10_SHA_LBLOCK
  %_public_subtmp831 = sub i32 %_public_lval830, 1
  %_public_multmp832 = mul i32 4, %_public_subtmp831
  %_public_lhssext833 = zext i32 %_public_multmp832 to i64
  %_public_addtmp834 = add i64 %_public_lhssext833, 4
  %_public_truncbinop835 = trunc i64 %_public_addtmp834 to i32
  %_public_subtmp836 = sub i32 %_public_truncbinop835, 1
  %_public_lhssext837 = zext i32 %_public_subtmp836 to i64
  %_public_ugtetmp838 = icmp uge i64 %_public_lhssext837, 0
  %_public_zexttmp839 = zext i1 %_public_ugtetmp838 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp839)
  %_public_lval840 = load i32, i32* %_public___v10_SHA_LBLOCK
  %_public_subtmp841 = sub i32 %_public_lval840, 1
  %_public_multmp842 = mul i32 4, %_public_subtmp841
  %_public_lhssext843 = zext i32 %_public_multmp842 to i64
  %_public_addtmp844 = add i64 %_public_lhssext843, 4
  %_public_truncbinop845 = trunc i64 %_public_addtmp844 to i32
  %_public_subtmp846 = sub i32 %_public_truncbinop845, 1
  %_public_lhssext847 = zext i32 %_public_subtmp846 to i64
  %_public_ulttmp848 = icmp ult i64 %_public_lhssext847, 64
  %_public_zexttmp849 = zext i1 %_public_ulttmp848 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp849)
  %_public_lval850 = load i32, i32* %_public___v10_SHA_LBLOCK
  %_public_subtmp851 = sub i32 %_public_lval850, 1
  %_public_multmp852 = mul i32 4, %_public_subtmp851
  %_public_structgep853 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep854 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep853, i32 0, i32 7
  %_secret_arrview855 = alloca i8*
  %_secret_source_gep856 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep854, i32 0, i32 %_public_multmp852
  store i8* %_secret_source_gep856, i8** %_secret_arrview855
  %_public_lval857 = load i32, i32* %_public___v10_SHA_LBLOCK
  %_public_subtmp858 = sub i32 %_public_lval857, 1
  %_public_multmp859 = mul i32 4, %_public_subtmp858
  %_public_lhssext860 = zext i32 %_public_multmp859 to i64
  %_public_addtmp861 = add i64 %_public_lhssext860, 4
  %_public_truncbinop862 = trunc i64 %_public_addtmp861 to i32
  %_public_lval863 = load i32, i32* %_public___v10_SHA_LBLOCK
  %_public_subtmp864 = sub i32 %_public_lval863, 1
  %_public_multmp865 = mul i32 4, %_public_subtmp864
  %_public_ugttmp866 = icmp ugt i32 %_public_truncbinop862, %_public_multmp865
  %_public_zexttmp867 = zext i1 %_public_ugttmp866 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp867)
  %_public_lval868 = load i32, i32* %_public___v10_SHA_LBLOCK
  %_public_subtmp869 = sub i32 %_public_lval868, 1
  %_public_multmp870 = mul i32 4, %_public_subtmp869
  %_public_lhssext871 = zext i32 %_public_multmp870 to i64
  %_public_ugtetmp872 = icmp uge i64 %_public_lhssext871, 0
  %_public_zexttmp873 = zext i1 %_public_ugtetmp872 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp873)
  %_public_lval874 = load i32, i32* %_public___v10_SHA_LBLOCK
  %_public_subtmp875 = sub i32 %_public_lval874, 1
  %_public_multmp876 = mul i32 4, %_public_subtmp875
  %_public_lhssext877 = zext i32 %_public_multmp876 to i64
  %_public_ulttmp878 = icmp ult i64 %_public_lhssext877, 64
  %_public_zexttmp879 = zext i1 %_public_ulttmp878 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp879)
  %_public_lval880 = load i32, i32* %_public___v10_SHA_LBLOCK
  %_public_subtmp881 = sub i32 %_public_lval880, 1
  %_public_multmp882 = mul i32 4, %_public_subtmp881
  %_public_lhssext883 = zext i32 %_public_multmp882 to i64
  %_public_addtmp884 = add i64 %_public_lhssext883, 4
  %_public_truncbinop885 = trunc i64 %_public_addtmp884 to i32
  %_public_subtmp886 = sub i32 %_public_truncbinop885, 1
  %_public_lhssext887 = zext i32 %_public_subtmp886 to i64
  %_public_ugtetmp888 = icmp uge i64 %_public_lhssext887, 0
  %_public_zexttmp889 = zext i1 %_public_ugtetmp888 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp889)
  %_public_lval890 = load i32, i32* %_public___v10_SHA_LBLOCK
  %_public_subtmp891 = sub i32 %_public_lval890, 1
  %_public_multmp892 = mul i32 4, %_public_subtmp891
  %_public_lhssext893 = zext i32 %_public_multmp892 to i64
  %_public_addtmp894 = add i64 %_public_lhssext893, 4
  %_public_truncbinop895 = trunc i64 %_public_addtmp894 to i32
  %_public_subtmp896 = sub i32 %_public_truncbinop895, 1
  %_public_lhssext897 = zext i32 %_public_subtmp896 to i64
  %_public_ulttmp898 = icmp ult i64 %_public_lhssext897, 64
  %_public_zexttmp899 = zext i1 %_public_ulttmp898 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp899)
  %_public_lval900 = load i32, i32* %_public___v10_SHA_LBLOCK
  %_public_subtmp901 = sub i32 %_public_lval900, 1
  %_public_multmp902 = mul i32 4, %_public_subtmp901
  %_public_structgep903 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep904 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep903, i32 0, i32 7
  %_secret_arrview905 = alloca i8*
  %_secret_source_gep906 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep904, i32 0, i32 %_public_multmp902
  store i8* %_secret_source_gep906, i8** %_secret_arrview905
  %_secret_dynarrarg907 = load i8*, i8** %_secret_arrview905
  %_secret_lval908 = load i32, i32* %_secret___v30_bitlen
  %_secret_lval909 = load i32, i32* %_secret___v38_mask
  %_secret_andtmp910 = and i32 %_secret_lval908, %_secret_lval909
  call void @pmac_oreq(i8* %_secret_dynarrarg907, i32 %_secret_andtmp910)
  %_public_structgep911 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep912 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep911, i32 0, i32 0
  %_public_structgep913 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep914 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep913, i32 0, i32 7
  %_public_structgep915 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep916 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep915, i32 0, i32 7
  %_secret_arrtoptr917 = bitcast [64 x i8]* %_secret_structgep916 to i8*
  call void @sha1_block_data_order(i32* %_secret_structgep912, i8* %_secret_arrtoptr917, i32 1)
  %_secret_lval918 = load i32, i32* %_secret___v38_mask
  call void @__VERIFIER_assert(i32 1)
  %_public_lval919 = load i32, i32* %_public___v36_j
  %_secret_lval920 = load i32, i32* %_secret___v24_inp_len
  %_secret_subtmp921 = sub i32 %_public_lval919, %_secret_lval920
  %_secret_subtmp922 = sub i32 %_secret_subtmp921, 72
  %_secret_lrshift923 = lshr i32 %_secret_subtmp922, 31
  %_secret_subtmp924 = sub i32 0, %_secret_lrshift923
  %_secret_andtmp925 = and i32 %_secret_lval918, %_secret_subtmp924
  store i32 %_secret_andtmp925, i32* %_secret___v38_mask
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview926 = alloca i8*
  %_secret_source_gep927 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i8 0, i8 0
  store i8* %_secret_source_gep927, i8** %_secret_arrview926
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview928 = alloca i8*
  %_secret_source_gep929 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i8 0, i8 0
  store i8* %_secret_source_gep929, i8** %_secret_arrview928
  %_secret_dynarrarg930 = load i8*, i8** %_secret_arrview928
  %_public_structgep931 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep932 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep931, i32 0, i32 0
  %_secret_lval933 = load i32, i32* %_secret_structgep932
  %_secret_lval934 = load i32, i32* %_secret___v38_mask
  %_secret_andtmp935 = and i32 %_secret_lval933, %_secret_lval934
  call void @pmac_oreq(i8* %_secret_dynarrarg930, i32 %_secret_andtmp935)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview936 = alloca i8*
  %_secret_source_gep937 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i8 0, i8 4
  store i8* %_secret_source_gep937, i8** %_secret_arrview936
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview938 = alloca i8*
  %_secret_source_gep939 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i8 0, i8 4
  store i8* %_secret_source_gep939, i8** %_secret_arrview938
  %_secret_dynarrarg940 = load i8*, i8** %_secret_arrview938
  %_public_structgep941 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep942 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep941, i32 0, i32 1
  %_secret_lval943 = load i32, i32* %_secret_structgep942
  %_secret_lval944 = load i32, i32* %_secret___v38_mask
  %_secret_andtmp945 = and i32 %_secret_lval943, %_secret_lval944
  call void @pmac_oreq(i8* %_secret_dynarrarg940, i32 %_secret_andtmp945)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview946 = alloca i8*
  %_secret_source_gep947 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i8 0, i8 8
  store i8* %_secret_source_gep947, i8** %_secret_arrview946
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview948 = alloca i8*
  %_secret_source_gep949 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i8 0, i8 8
  store i8* %_secret_source_gep949, i8** %_secret_arrview948
  %_secret_dynarrarg950 = load i8*, i8** %_secret_arrview948
  %_public_structgep951 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep952 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep951, i32 0, i32 2
  %_secret_lval953 = load i32, i32* %_secret_structgep952
  %_secret_lval954 = load i32, i32* %_secret___v38_mask
  %_secret_andtmp955 = and i32 %_secret_lval953, %_secret_lval954
  call void @pmac_oreq(i8* %_secret_dynarrarg950, i32 %_secret_andtmp955)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview956 = alloca i8*
  %_secret_source_gep957 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i8 0, i8 12
  store i8* %_secret_source_gep957, i8** %_secret_arrview956
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview958 = alloca i8*
  %_secret_source_gep959 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i8 0, i8 12
  store i8* %_secret_source_gep959, i8** %_secret_arrview958
  %_secret_dynarrarg960 = load i8*, i8** %_secret_arrview958
  %_public_structgep961 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep962 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep961, i32 0, i32 3
  %_secret_lval963 = load i32, i32* %_secret_structgep962
  %_secret_lval964 = load i32, i32* %_secret___v38_mask
  %_secret_andtmp965 = and i32 %_secret_lval963, %_secret_lval964
  call void @pmac_oreq(i8* %_secret_dynarrarg960, i32 %_secret_andtmp965)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview966 = alloca i8*
  %_secret_source_gep967 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i8 0, i8 16
  store i8* %_secret_source_gep967, i8** %_secret_arrview966
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview968 = alloca i8*
  %_secret_source_gep969 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i8 0, i8 16
  store i8* %_secret_source_gep969, i8** %_secret_arrview968
  %_secret_dynarrarg970 = load i8*, i8** %_secret_arrview968
  %_public_structgep971 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep972 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep971, i32 0, i32 4
  %_secret_lval973 = load i32, i32* %_secret_structgep972
  %_secret_lval974 = load i32, i32* %_secret___v38_mask
  %_secret_andtmp975 = and i32 %_secret_lval973, %_secret_lval974
  call void @pmac_oreq(i8* %_secret_dynarrarg970, i32 %_secret_andtmp975)
  %_public_structgep976 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep977 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep976, i32 0, i32 7
  %_public_structgep978 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep979 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep978, i32 0, i32 7
  %_secret_arrtoptr980 = bitcast [64 x i8]* %_secret_structgep979 to i8*
  call void @_memzero(i8* %_secret_arrtoptr980, i32 64)
  %_public_lval981 = load i32, i32* %_public___v36_j
  %_public_addtmp982 = add i32 %_public_lval981, 64
  store i32 %_public_addtmp982, i32* %_public___v36_j
  br label %branchmerge984

elsebranch983:                                    ; preds = %branchmerge794
  br label %branchmerge984

branchmerge984:                                   ; preds = %elsebranch983, %thenbranch800
  %_public_lval985 = load i32, i32* %_public___v10_SHA_LBLOCK
  %_public_subtmp986 = sub i32 %_public_lval985, 1
  %_public_multmp987 = mul i32 4, %_public_subtmp986
  %_public_lhssext988 = zext i32 %_public_multmp987 to i64
  %_public_addtmp989 = add i64 %_public_lhssext988, 4
  %_public_truncbinop990 = trunc i64 %_public_addtmp989 to i32
  %_public_lval991 = load i32, i32* %_public___v10_SHA_LBLOCK
  %_public_subtmp992 = sub i32 %_public_lval991, 1
  %_public_multmp993 = mul i32 4, %_public_subtmp992
  %_public_ugttmp994 = icmp ugt i32 %_public_truncbinop990, %_public_multmp993
  %_public_zexttmp995 = zext i1 %_public_ugttmp994 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp995)
  %_public_lval996 = load i32, i32* %_public___v10_SHA_LBLOCK
  %_public_subtmp997 = sub i32 %_public_lval996, 1
  %_public_multmp998 = mul i32 4, %_public_subtmp997
  %_public_lhssext999 = zext i32 %_public_multmp998 to i64
  %_public_ugtetmp1000 = icmp uge i64 %_public_lhssext999, 0
  %_public_zexttmp1001 = zext i1 %_public_ugtetmp1000 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp1001)
  %_public_lval1002 = load i32, i32* %_public___v10_SHA_LBLOCK
  %_public_subtmp1003 = sub i32 %_public_lval1002, 1
  %_public_multmp1004 = mul i32 4, %_public_subtmp1003
  %_public_lhssext1005 = zext i32 %_public_multmp1004 to i64
  %_public_ulttmp1006 = icmp ult i64 %_public_lhssext1005, 64
  %_public_zexttmp1007 = zext i1 %_public_ulttmp1006 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp1007)
  %_public_lval1008 = load i32, i32* %_public___v10_SHA_LBLOCK
  %_public_subtmp1009 = sub i32 %_public_lval1008, 1
  %_public_multmp1010 = mul i32 4, %_public_subtmp1009
  %_public_lhssext1011 = zext i32 %_public_multmp1010 to i64
  %_public_addtmp1012 = add i64 %_public_lhssext1011, 4
  %_public_truncbinop1013 = trunc i64 %_public_addtmp1012 to i32
  %_public_subtmp1014 = sub i32 %_public_truncbinop1013, 1
  %_public_lhssext1015 = zext i32 %_public_subtmp1014 to i64
  %_public_ugtetmp1016 = icmp uge i64 %_public_lhssext1015, 0
  %_public_zexttmp1017 = zext i1 %_public_ugtetmp1016 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp1017)
  %_public_lval1018 = load i32, i32* %_public___v10_SHA_LBLOCK
  %_public_subtmp1019 = sub i32 %_public_lval1018, 1
  %_public_multmp1020 = mul i32 4, %_public_subtmp1019
  %_public_lhssext1021 = zext i32 %_public_multmp1020 to i64
  %_public_addtmp1022 = add i64 %_public_lhssext1021, 4
  %_public_truncbinop1023 = trunc i64 %_public_addtmp1022 to i32
  %_public_subtmp1024 = sub i32 %_public_truncbinop1023, 1
  %_public_lhssext1025 = zext i32 %_public_subtmp1024 to i64
  %_public_ulttmp1026 = icmp ult i64 %_public_lhssext1025, 64
  %_public_zexttmp1027 = zext i1 %_public_ulttmp1026 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp1027)
  %_public_lval1028 = load i32, i32* %_public___v10_SHA_LBLOCK
  %_public_subtmp1029 = sub i32 %_public_lval1028, 1
  %_public_multmp1030 = mul i32 4, %_public_subtmp1029
  %_public_structgep1031 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep1032 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep1031, i32 0, i32 7
  %_secret_arrview1033 = alloca i8*
  %_secret_source_gep1034 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep1032, i32 0, i32 %_public_multmp1030
  store i8* %_secret_source_gep1034, i8** %_secret_arrview1033
  %_public_lval1035 = load i32, i32* %_public___v10_SHA_LBLOCK
  %_public_subtmp1036 = sub i32 %_public_lval1035, 1
  %_public_multmp1037 = mul i32 4, %_public_subtmp1036
  %_public_lhssext1038 = zext i32 %_public_multmp1037 to i64
  %_public_addtmp1039 = add i64 %_public_lhssext1038, 4
  %_public_truncbinop1040 = trunc i64 %_public_addtmp1039 to i32
  %_public_lval1041 = load i32, i32* %_public___v10_SHA_LBLOCK
  %_public_subtmp1042 = sub i32 %_public_lval1041, 1
  %_public_multmp1043 = mul i32 4, %_public_subtmp1042
  %_public_ugttmp1044 = icmp ugt i32 %_public_truncbinop1040, %_public_multmp1043
  %_public_zexttmp1045 = zext i1 %_public_ugttmp1044 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp1045)
  %_public_lval1046 = load i32, i32* %_public___v10_SHA_LBLOCK
  %_public_subtmp1047 = sub i32 %_public_lval1046, 1
  %_public_multmp1048 = mul i32 4, %_public_subtmp1047
  %_public_lhssext1049 = zext i32 %_public_multmp1048 to i64
  %_public_ugtetmp1050 = icmp uge i64 %_public_lhssext1049, 0
  %_public_zexttmp1051 = zext i1 %_public_ugtetmp1050 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp1051)
  %_public_lval1052 = load i32, i32* %_public___v10_SHA_LBLOCK
  %_public_subtmp1053 = sub i32 %_public_lval1052, 1
  %_public_multmp1054 = mul i32 4, %_public_subtmp1053
  %_public_lhssext1055 = zext i32 %_public_multmp1054 to i64
  %_public_ulttmp1056 = icmp ult i64 %_public_lhssext1055, 64
  %_public_zexttmp1057 = zext i1 %_public_ulttmp1056 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp1057)
  %_public_lval1058 = load i32, i32* %_public___v10_SHA_LBLOCK
  %_public_subtmp1059 = sub i32 %_public_lval1058, 1
  %_public_multmp1060 = mul i32 4, %_public_subtmp1059
  %_public_lhssext1061 = zext i32 %_public_multmp1060 to i64
  %_public_addtmp1062 = add i64 %_public_lhssext1061, 4
  %_public_truncbinop1063 = trunc i64 %_public_addtmp1062 to i32
  %_public_subtmp1064 = sub i32 %_public_truncbinop1063, 1
  %_public_lhssext1065 = zext i32 %_public_subtmp1064 to i64
  %_public_ugtetmp1066 = icmp uge i64 %_public_lhssext1065, 0
  %_public_zexttmp1067 = zext i1 %_public_ugtetmp1066 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp1067)
  %_public_lval1068 = load i32, i32* %_public___v10_SHA_LBLOCK
  %_public_subtmp1069 = sub i32 %_public_lval1068, 1
  %_public_multmp1070 = mul i32 4, %_public_subtmp1069
  %_public_lhssext1071 = zext i32 %_public_multmp1070 to i64
  %_public_addtmp1072 = add i64 %_public_lhssext1071, 4
  %_public_truncbinop1073 = trunc i64 %_public_addtmp1072 to i32
  %_public_subtmp1074 = sub i32 %_public_truncbinop1073, 1
  %_public_lhssext1075 = zext i32 %_public_subtmp1074 to i64
  %_public_ulttmp1076 = icmp ult i64 %_public_lhssext1075, 64
  %_public_zexttmp1077 = zext i1 %_public_ulttmp1076 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp1077)
  %_public_lval1078 = load i32, i32* %_public___v10_SHA_LBLOCK
  %_public_subtmp1079 = sub i32 %_public_lval1078, 1
  %_public_multmp1080 = mul i32 4, %_public_subtmp1079
  %_public_structgep1081 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep1082 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep1081, i32 0, i32 7
  %_secret_arrview1083 = alloca i8*
  %_secret_source_gep1084 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep1082, i32 0, i32 %_public_multmp1080
  store i8* %_secret_source_gep1084, i8** %_secret_arrview1083
  %_secret_dynarrarg1085 = load i8*, i8** %_secret_arrview1083
  %_secret_lval1086 = load i32, i32* %_secret___v30_bitlen
  call void @_store32_le(i8* %_secret_dynarrarg1085, i32 %_secret_lval1086)
  %_public_structgep1087 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep1088 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep1087, i32 0, i32 0
  %_public_structgep1089 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep1090 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep1089, i32 0, i32 7
  %_public_structgep1091 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep1092 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep1091, i32 0, i32 7
  %_secret_arrtoptr1093 = bitcast [64 x i8]* %_secret_structgep1092 to i8*
  call void @sha1_block_data_order(i32* %_secret_structgep1088, i8* %_secret_arrtoptr1093, i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_public_lval1094 = load i32, i32* %_public___v36_j
  %_secret_lval1095 = load i32, i32* %_secret___v24_inp_len
  %_secret_subtmp1096 = sub i32 %_public_lval1094, %_secret_lval1095
  %_secret_subtmp1097 = sub i32 %_secret_subtmp1096, 72
  %_secret_lrshift1098 = lshr i32 %_secret_subtmp1097, 31
  %_secret_subtmp1099 = sub i32 0, %_secret_lrshift1098
  store i32 %_secret_subtmp1099, i32* %_secret___v39_mask_
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1100 = alloca i8*
  %_secret_source_gep1101 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i8 0, i8 0
  store i8* %_secret_source_gep1101, i8** %_secret_arrview1100
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1102 = alloca i8*
  %_secret_source_gep1103 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i8 0, i8 0
  store i8* %_secret_source_gep1103, i8** %_secret_arrview1102
  %_secret_dynarrarg1104 = load i8*, i8** %_secret_arrview1102
  %_public_structgep1105 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep1106 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep1105, i32 0, i32 0
  %_secret_lval1107 = load i32, i32* %_secret_structgep1106
  %_secret_lval1108 = load i32, i32* %_secret___v39_mask_
  %_secret_andtmp1109 = and i32 %_secret_lval1107, %_secret_lval1108
  call void @pmac_oreq(i8* %_secret_dynarrarg1104, i32 %_secret_andtmp1109)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1110 = alloca i8*
  %_secret_source_gep1111 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i8 0, i8 4
  store i8* %_secret_source_gep1111, i8** %_secret_arrview1110
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1112 = alloca i8*
  %_secret_source_gep1113 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i8 0, i8 4
  store i8* %_secret_source_gep1113, i8** %_secret_arrview1112
  %_secret_dynarrarg1114 = load i8*, i8** %_secret_arrview1112
  %_public_structgep1115 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep1116 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep1115, i32 0, i32 1
  %_secret_lval1117 = load i32, i32* %_secret_structgep1116
  %_secret_lval1118 = load i32, i32* %_secret___v39_mask_
  %_secret_andtmp1119 = and i32 %_secret_lval1117, %_secret_lval1118
  call void @pmac_oreq(i8* %_secret_dynarrarg1114, i32 %_secret_andtmp1119)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1120 = alloca i8*
  %_secret_source_gep1121 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i8 0, i8 8
  store i8* %_secret_source_gep1121, i8** %_secret_arrview1120
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1122 = alloca i8*
  %_secret_source_gep1123 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i8 0, i8 8
  store i8* %_secret_source_gep1123, i8** %_secret_arrview1122
  %_secret_dynarrarg1124 = load i8*, i8** %_secret_arrview1122
  %_public_structgep1125 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep1126 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep1125, i32 0, i32 2
  %_secret_lval1127 = load i32, i32* %_secret_structgep1126
  %_secret_lval1128 = load i32, i32* %_secret___v39_mask_
  %_secret_andtmp1129 = and i32 %_secret_lval1127, %_secret_lval1128
  call void @pmac_oreq(i8* %_secret_dynarrarg1124, i32 %_secret_andtmp1129)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1130 = alloca i8*
  %_secret_source_gep1131 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i8 0, i8 12
  store i8* %_secret_source_gep1131, i8** %_secret_arrview1130
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1132 = alloca i8*
  %_secret_source_gep1133 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i8 0, i8 12
  store i8* %_secret_source_gep1133, i8** %_secret_arrview1132
  %_secret_dynarrarg1134 = load i8*, i8** %_secret_arrview1132
  %_public_structgep1135 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep1136 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep1135, i32 0, i32 3
  %_secret_lval1137 = load i32, i32* %_secret_structgep1136
  %_secret_lval1138 = load i32, i32* %_secret___v39_mask_
  %_secret_andtmp1139 = and i32 %_secret_lval1137, %_secret_lval1138
  call void @pmac_oreq(i8* %_secret_dynarrarg1134, i32 %_secret_andtmp1139)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1140 = alloca i8*
  %_secret_source_gep1141 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i8 0, i8 16
  store i8* %_secret_source_gep1141, i8** %_secret_arrview1140
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1142 = alloca i8*
  %_secret_source_gep1143 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i8 0, i8 16
  store i8* %_secret_source_gep1143, i8** %_secret_arrview1142
  %_secret_dynarrarg1144 = load i8*, i8** %_secret_arrview1142
  %_public_structgep1145 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep1146 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep1145, i32 0, i32 4
  %_secret_lval1147 = load i32, i32* %_secret_structgep1146
  %_secret_lval1148 = load i32, i32* %_secret___v39_mask_
  %_secret_andtmp1149 = and i32 %_secret_lval1147, %_secret_lval1148
  call void @pmac_oreq(i8* %_secret_dynarrarg1144, i32 %_secret_andtmp1149)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1150 = alloca i8*
  %_secret_source_gep1151 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i8 0, i8 0
  store i8* %_secret_source_gep1151, i8** %_secret_arrview1150
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1152 = alloca i8*
  %_secret_source_gep1153 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i8 0, i8 0
  store i8* %_secret_source_gep1153, i8** %_secret_arrview1152
  %_secret_dynarrarg1154 = load i8*, i8** %_secret_arrview1152
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1155 = alloca i8*
  %_secret_source_gep1156 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i8 0, i8 0
  store i8* %_secret_source_gep1156, i8** %_secret_arrview1155
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1157 = alloca i8*
  %_secret_source_gep1158 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i8 0, i8 0
  store i8* %_secret_source_gep1158, i8** %_secret_arrview1157
  %_secret_dynarrarg1159 = load i8*, i8** %_secret_arrview1157
  %_secret_calltmp1160 = call i32 @_load32_le(i8* %_secret_dynarrarg1159)
  %_secret_calltmp1161 = call i32 @bswap4(i32 %_secret_calltmp1160)
  call void @_store32_le(i8* %_secret_dynarrarg1154, i32 %_secret_calltmp1161)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1162 = alloca i8*
  %_secret_source_gep1163 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i8 0, i8 4
  store i8* %_secret_source_gep1163, i8** %_secret_arrview1162
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1164 = alloca i8*
  %_secret_source_gep1165 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i8 0, i8 4
  store i8* %_secret_source_gep1165, i8** %_secret_arrview1164
  %_secret_dynarrarg1166 = load i8*, i8** %_secret_arrview1164
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1167 = alloca i8*
  %_secret_source_gep1168 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i8 0, i8 4
  store i8* %_secret_source_gep1168, i8** %_secret_arrview1167
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1169 = alloca i8*
  %_secret_source_gep1170 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i8 0, i8 4
  store i8* %_secret_source_gep1170, i8** %_secret_arrview1169
  %_secret_dynarrarg1171 = load i8*, i8** %_secret_arrview1169
  %_secret_calltmp1172 = call i32 @_load32_le(i8* %_secret_dynarrarg1171)
  %_secret_calltmp1173 = call i32 @bswap4(i32 %_secret_calltmp1172)
  call void @_store32_le(i8* %_secret_dynarrarg1166, i32 %_secret_calltmp1173)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1174 = alloca i8*
  %_secret_source_gep1175 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i8 0, i8 8
  store i8* %_secret_source_gep1175, i8** %_secret_arrview1174
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1176 = alloca i8*
  %_secret_source_gep1177 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i8 0, i8 8
  store i8* %_secret_source_gep1177, i8** %_secret_arrview1176
  %_secret_dynarrarg1178 = load i8*, i8** %_secret_arrview1176
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1179 = alloca i8*
  %_secret_source_gep1180 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i8 0, i8 8
  store i8* %_secret_source_gep1180, i8** %_secret_arrview1179
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1181 = alloca i8*
  %_secret_source_gep1182 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i8 0, i8 8
  store i8* %_secret_source_gep1182, i8** %_secret_arrview1181
  %_secret_dynarrarg1183 = load i8*, i8** %_secret_arrview1181
  %_secret_calltmp1184 = call i32 @_load32_le(i8* %_secret_dynarrarg1183)
  %_secret_calltmp1185 = call i32 @bswap4(i32 %_secret_calltmp1184)
  call void @_store32_le(i8* %_secret_dynarrarg1178, i32 %_secret_calltmp1185)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1186 = alloca i8*
  %_secret_source_gep1187 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i8 0, i8 12
  store i8* %_secret_source_gep1187, i8** %_secret_arrview1186
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1188 = alloca i8*
  %_secret_source_gep1189 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i8 0, i8 12
  store i8* %_secret_source_gep1189, i8** %_secret_arrview1188
  %_secret_dynarrarg1190 = load i8*, i8** %_secret_arrview1188
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1191 = alloca i8*
  %_secret_source_gep1192 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i8 0, i8 12
  store i8* %_secret_source_gep1192, i8** %_secret_arrview1191
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1193 = alloca i8*
  %_secret_source_gep1194 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i8 0, i8 12
  store i8* %_secret_source_gep1194, i8** %_secret_arrview1193
  %_secret_dynarrarg1195 = load i8*, i8** %_secret_arrview1193
  %_secret_calltmp1196 = call i32 @_load32_le(i8* %_secret_dynarrarg1195)
  %_secret_calltmp1197 = call i32 @bswap4(i32 %_secret_calltmp1196)
  call void @_store32_le(i8* %_secret_dynarrarg1190, i32 %_secret_calltmp1197)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1198 = alloca i8*
  %_secret_source_gep1199 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i8 0, i8 16
  store i8* %_secret_source_gep1199, i8** %_secret_arrview1198
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1200 = alloca i8*
  %_secret_source_gep1201 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i8 0, i8 16
  store i8* %_secret_source_gep1201, i8** %_secret_arrview1200
  %_secret_dynarrarg1202 = load i8*, i8** %_secret_arrview1200
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1203 = alloca i8*
  %_secret_source_gep1204 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i8 0, i8 16
  store i8* %_secret_source_gep1204, i8** %_secret_arrview1203
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_arrview1205 = alloca i8*
  %_secret_source_gep1206 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i8 0, i8 16
  store i8* %_secret_source_gep1206, i8** %_secret_arrview1205
  %_secret_dynarrarg1207 = load i8*, i8** %_secret_arrview1205
  %_secret_calltmp1208 = call i32 @_load32_le(i8* %_secret_dynarrarg1207)
  %_secret_calltmp1209 = call i32 @bswap4(i32 %_secret_calltmp1208)
  call void @_store32_le(i8* %_secret_dynarrarg1202, i32 %_secret_calltmp1209)
  %_public_lval1210 = load i32, i32* %_public___v14__len
  %_public_lval1211 = load i32, i32* %_public___v8_SHA_DIGEST_LENGTH
  %_public_addtmp1212 = add i32 %_public_lval1210, %_public_lval1211
  store i32 %_public_addtmp1212, i32* %_public___v14__len
  %_public_structgep1213 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_public_structgep1214 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 2
  call void @_structcopy_SHA_CTX(%SHA_CTX* %_public_structgep1213, %SHA_CTX* %_public_structgep1214)
  %_public_structgep1215 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep1216 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep1215, i32 0, i32 0
  %_secret_arrtoptr1217 = bitcast [20 x i8]* %_secret___v31_pmac to i8*
  call void @_sha1_update(i32* %_secret_structgep1216, i8* %_secret_arrtoptr1217, i64 20)
  %_secret_arrtoptr1218 = bitcast [20 x i8]* %_secret___v31_pmac to i8*
  %_public_structgep1219 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep1220 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep1219, i32 0, i32 0
  call void @SHA1_Final(i8* %_secret_arrtoptr1218, i32* %_secret_structgep1220)
  %_public_lval1221 = load i32, i32* %_public___v13_outp
  %_secret_lval1222 = load i32, i32* %_secret___v24_inp_len
  %_secret_addtmp1223 = add i32 %_public_lval1221, %_secret_lval1222
  store i32 %_secret_addtmp1223, i32* %_secret___v40_s_outp
  %_public_lval1224 = load i32, i32* %_public___v14__len
  %_secret_lval1225 = load i32, i32* %_secret___v24_inp_len
  %_secret_subtmp1226 = sub i32 %_public_lval1224, %_secret_lval1225
  store i32 %_secret_subtmp1226, i32* %_secret___v41_s_len
  %_public_lval1227 = load i32, i32* %_public____out_len
  %_public_subtmp1228 = sub i32 %_public_lval1227, 1
  %_public_lval1229 = load i32, i32* %_public___v22_maxpad
  %_public_subtmp1230 = sub i32 %_public_subtmp1228, %_public_lval1229
  %_public_lval1231 = load i32, i32* %_public___v8_SHA_DIGEST_LENGTH
  %_public_subtmp1232 = sub i32 %_public_subtmp1230, %_public_lval1231
  store i32 %_public_subtmp1232, i32* %_public___v42_p_outp
  %_secret_lval1233 = load i32, i32* %_secret___v40_s_outp
  %_public_lval1234 = load i32, i32* %_public___v42_p_outp
  %_secret_subtmp1235 = sub i32 %_secret_lval1233, %_public_lval1234
  store i32 %_secret_subtmp1235, i32* %_secret___v43_off
  %_public_lval1236 = load i32, i32* %_public___v22_maxpad
  %_public_lval1237 = load i32, i32* %_public___v8_SHA_DIGEST_LENGTH
  %_public_addtmp1238 = add i32 %_public_lval1236, %_public_lval1237
  store i32 %_public_addtmp1238, i32* %_public___v22_maxpad
  store i32 0, i32* %_secret___v44_s_res
  store i32 0, i32* %_secret___v45_i
  %_public_calltmp1239 = call i32 @__VERIFIER_nondet_unsigned_int()
  store i32 %_public_calltmp1239, i32* %_public___v46_j
  %_public_lval1240 = load i32, i32* %_public___v46_j
  %_public_lval1241 = load i32, i32* %_public___v22_maxpad
  %_public_ulttmp1242 = icmp ult i32 %_public_lval1240, %_public_lval1241
  %_public_branchcompare1243 = icmp eq i1 %_public_ulttmp1242, true
  br i1 %_public_branchcompare1243, label %thenbranch1244, label %elsebranch1321

thenbranch1244:                                   ; preds = %branchmerge984
  %_public_lval1245 = load i32, i32* %_public___v46_j
  %_public_lval1246 = load i32, i32* %_public___v46_j
  %_public_addtmp1247 = add i32 %_public_lval1246, 1
  %_public_ulttmp1248 = icmp ult i32 %_public_lval1245, %_public_addtmp1247
  %_public_zexttmp1249 = zext i1 %_public_ulttmp1248 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp1249)
  %_public_lval1250 = load i32, i32* %_public___v46_j
  %_public_ulttmp1251 = icmp ult i32 0, %_public_lval1250
  %_public_lval1252 = load i32, i32* %_public___v46_j
  %_public_eqtmp1253 = icmp eq i32 0, %_public_lval1252
  %_public_lortmp1254 = or i1 %_public_ulttmp1251, %_public_eqtmp1253
  %_public_zexttmp1255 = zext i1 %_public_lortmp1254 to i32
  call void @__VERIFIER_assume(i32 %_public_zexttmp1255)
  %_public_lval1256 = load i32, i32* %_public___v42_p_outp
  %_public_lval1257 = load i32, i32* %_public___v46_j
  %_public_addtmp1258 = add i32 %_public_lval1256, %_public_lval1257
  %_public_lhssext1259 = zext i32 %_public_addtmp1258 to i64
  %_public_ugtetmp1260 = icmp uge i64 %_public_lhssext1259, 0
  %_public_zexttmp1261 = zext i1 %_public_ugtetmp1260 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp1261)
  %_public_lval1262 = load i32, i32* %_public___v42_p_outp
  %_public_lval1263 = load i32, i32* %_public___v46_j
  %_public_addtmp1264 = add i32 %_public_lval1262, %_public_lval1263
  %_public_lval1265 = load i32, i32* %_public____out_len
  %_public_icast1266 = zext i32 %_public_lval1265 to i64
  %_public_lhssext1267 = zext i32 %_public_addtmp1264 to i64
  %_public_ulttmp1268 = icmp ult i64 %_public_lhssext1267, %_public_icast1266
  %_public_zexttmp1269 = zext i1 %_public_ulttmp1268 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp1269)
  %_public_lval1270 = load i32, i32* %_public___v42_p_outp
  %_public_lval1271 = load i32, i32* %_public___v46_j
  %_public_addtmp1272 = add i32 %_public_lval1270, %_public_lval1271
  %_secret_dyn1273 = load i8*, i8** %_secret_arrarg2
  %_secret_ptr1274 = getelementptr inbounds i8, i8* %_secret_dyn1273, i32 %_public_addtmp1272
  %_secret_lval1275 = load i8, i8* %_secret_ptr1274
  %_secret_zexttmp1276 = zext i8 %_secret_lval1275 to i32
  store i32 %_secret_zexttmp1276, i32* %_secret___v47_c
  call void @__VERIFIER_assert(i32 1)
  %_public_lval1277 = load i32, i32* %_public___v46_j
  %_secret_lval1278 = load i32, i32* %_secret___v43_off
  %_secret_subtmp1279 = sub i32 %_public_lval1277, %_secret_lval1278
  %_public_lval1280 = load i32, i32* %_public___v8_SHA_DIGEST_LENGTH
  %_secret_subtmp1281 = sub i32 %_secret_subtmp1279, %_public_lval1280
  %_secret_arshift1282 = ashr i32 %_secret_subtmp1281, 31
  store i32 %_secret_arshift1282, i32* %_secret___v48_cmask
  %_secret_lval1283 = load i32, i32* %_secret___v44_s_res
  %_secret_lval1284 = load i32, i32* %_secret___v47_c
  %_secret_lval1285 = load i32, i32* %_secret___v21_pad
  %_secret_xortmp = xor i32 %_secret_lval1284, %_secret_lval1285
  %_secret_lval1286 = load i32, i32* %_secret___v48_cmask
  %_secret_bnottmp1287 = xor i32 %_secret_lval1286, -1
  %_secret_andtmp1288 = and i32 %_secret_xortmp, %_secret_bnottmp1287
  %_secret_ortmp1289 = or i32 %_secret_lval1283, %_secret_andtmp1288
  store i32 %_secret_ortmp1289, i32* %_secret___v44_s_res
  %_secret_lval1290 = load i32, i32* %_secret___v48_cmask
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval1291 = load i32, i32* %_secret___v43_off
  %_secret_subtmp1292 = sub i32 %_secret_lval1291, 1
  %_public_lval1293 = load i32, i32* %_public___v46_j
  %_secret_subtmp1294 = sub i32 %_secret_subtmp1292, %_public_lval1293
  %_secret_arshift1295 = ashr i32 %_secret_subtmp1294, 31
  %_secret_andtmp1296 = and i32 %_secret_lval1290, %_secret_arshift1295
  store i32 %_secret_andtmp1296, i32* %_secret___v48_cmask
  %_secret_lval1297 = load i32, i32* %_secret___v44_s_res
  %_secret_lval1298 = load i32, i32* %_secret___v47_c
  %_declassified__secret_lval1299 = load i32, i32* %_secret___v45_i
  %_public_lhssext1300 = zext i32 %_declassified__secret_lval1299 to i64
  %_public_ugtetmp1301 = icmp uge i64 %_public_lhssext1300, 0
  %_public_zexttmp1302 = zext i1 %_public_ugtetmp1301 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp1302)
  %_declassified__secret_lval1303 = load i32, i32* %_secret___v45_i
  %_public_lhssext1304 = zext i32 %_declassified__secret_lval1303 to i64
  %_public_ulttmp1305 = icmp ult i64 %_public_lhssext1304, 20
  %_public_zexttmp1306 = zext i1 %_public_ulttmp1305 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp1306)
  %_declassified__secret_lval1307 = load i32, i32* %_secret___v45_i
  %_secret_ptr1308 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i32 0, i32 %_declassified__secret_lval1307
  %_secret_lval1309 = load i8, i8* %_secret_ptr1308
  %_secret_rhssext1310 = zext i8 %_secret_lval1309 to i32
  %_secret_xortmp1311 = xor i32 %_secret_lval1298, %_secret_rhssext1310
  %_secret_lval1312 = load i32, i32* %_secret___v48_cmask
  %_secret_andtmp1313 = and i32 %_secret_xortmp1311, %_secret_lval1312
  %_secret_ortmp1314 = or i32 %_secret_lval1297, %_secret_andtmp1313
  store i32 %_secret_ortmp1314, i32* %_secret___v44_s_res
  %_secret_lval1315 = load i32, i32* %_secret___v45_i
  %_secret_lval1316 = load i32, i32* %_secret___v48_cmask
  %_secret_andtmp1317 = and i32 1, %_secret_lval1316
  %_secret_truncbinop1318 = trunc i32 %_secret_andtmp1317 to i8
  %_secret_rhssext1319 = zext i8 %_secret_truncbinop1318 to i32
  %_secret_addtmp1320 = add i32 %_secret_lval1315, %_secret_rhssext1319
  store i32 %_secret_addtmp1320, i32* %_secret___v45_i
  br label %branchmerge1322

elsebranch1321:                                   ; preds = %branchmerge984
  br label %branchmerge1322

branchmerge1322:                                  ; preds = %elsebranch1321, %thenbranch1244
  %_public_lval1323 = load i32, i32* %_public___v22_maxpad
  %_public_lval1324 = load i32, i32* %_public___v8_SHA_DIGEST_LENGTH
  %_public_subtmp1325 = sub i32 %_public_lval1323, %_public_lval1324
  store i32 %_public_subtmp1325, i32* %_public___v22_maxpad
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval1326 = load i32, i32* %_secret___v44_s_res
  %_secret_subtmp1327 = sub i32 0, %_secret_lval1326
  %_secret_lrshift1328 = lshr i32 %_secret_subtmp1327, 31
  %_secret_subtmp1329 = sub i32 0, %_secret_lrshift1328
  store i32 %_secret_subtmp1329, i32* %_secret___v44_s_res
  %_secret_lval1330 = load i32, i32* %_secret___v15_ret
  %_secret_lval1331 = load i32, i32* %_secret___v44_s_res
  %_secret_bnottmp1332 = xor i32 %_secret_lval1331, -1
  %_secret_andtmp1333 = and i32 %_secret_lval1330, %_secret_bnottmp1332
  store i32 %_secret_andtmp1333, i32* %_secret___v15_ret
  %_secret_lval1334 = load i32, i32* %_secret___v15_ret
  store i32 %_secret_lval1334, i32* %_secret___rval
  %_secret_lval1335 = load i32, i32* %_secret___rval
  ret i32 %_secret_lval1335
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

attributes #0 = { alwaysinline }
attributes #1 = { alwaysinline readonly }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noinline }