; ModuleID = 'Module'
source_filename = "Module"

%EVP_AES_HMAC_SHA1 = type { %AES_KEY, %SHA_CTX, %SHA_CTX, %SHA_CTX, i64, [16 x i8] }
%AES_KEY = type { [60 x i32], i32 }
%SHA_CTX = type { i32, i32, i32, i32, i32, i32, i32, [64 x i8], i32 }

; Function Attrs: alwaysinline
define internal i32 @constant_time_msb(i32 %_secret_a1) #0 {
entry:
  %_secret_a = alloca i32
  store i32 %_secret_a1, i32* %_secret_a
  %_secret___rval = alloca i32
  %_secret___rnset = alloca i1
  store i32 0, i32* %_secret___rval
  store i1 true, i1* %_secret___rnset
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
  %_secret_lval = load i32, i32* %_secret_n
  %_secret_lrshift = lshr i32 %_secret_lval, 0
  %_secret_andtmp = and i32 %_secret_lrshift, 255
  %_secret_truncbinop = trunc i32 %_secret_andtmp to i8
  %_secret_ucast = zext i8 %_secret_truncbinop to i32
  %_secret_lshift = shl i32 %_secret_ucast, 24
  store i32 %_secret_lshift, i32* %_secret___v1_x4
  %_secret_lval2 = load i32, i32* %_secret_n
  %_secret_lrshift3 = lshr i32 %_secret_lval2, 8
  %_secret_andtmp4 = and i32 %_secret_lrshift3, 255
  %_secret_truncbinop5 = trunc i32 %_secret_andtmp4 to i8
  %_secret_ucast6 = zext i8 %_secret_truncbinop5 to i32
  %_secret_lshift7 = shl i32 %_secret_ucast6, 16
  store i32 %_secret_lshift7, i32* %_secret___v2_x3
  %_secret_lval8 = load i32, i32* %_secret_n
  %_secret_lrshift9 = lshr i32 %_secret_lval8, 16
  %_secret_andtmp10 = and i32 %_secret_lrshift9, 255
  %_secret_truncbinop11 = trunc i32 %_secret_andtmp10 to i8
  %_secret_ucast12 = zext i8 %_secret_truncbinop11 to i32
  %_secret_lshift13 = shl i32 %_secret_ucast12, 8
  store i32 %_secret_lshift13, i32* %_secret___v3_x2
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
  %_secret_structgep = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 5
  %_public_lval10 = load i64, i64* %_public_plen
  %_public_subtmp = sub i64 %_public_lval10, 4
  %_secret_ptr = getelementptr inbounds [16 x i8], [16 x i8]* %_secret_structgep, i64 0, i64 %_public_subtmp
  %_secret_lval = load i8, i8* %_secret_ptr
  %_secret_ucast = zext i8 %_secret_lval to i16
  %_secret_lshift = shl i16 %_secret_ucast, 8
  %_secret_structgep11 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 5
  %_public_lval12 = load i64, i64* %_public_plen
  %_public_subtmp13 = sub i64 %_public_lval12, 3
  %_secret_ptr14 = getelementptr inbounds [16 x i8], [16 x i8]* %_secret_structgep11, i64 0, i64 %_public_subtmp13
  %_secret_lval15 = load i8, i8* %_secret_ptr14
  %_secret_ucast16 = zext i8 %_secret_lval15 to i16
  %_declassified__secret_ortmp = or i16 %_secret_lshift, %_secret_ucast16
  store i16 %_declassified__secret_ortmp, i16* %_public___v16_tls_ver
  %_public_lval17 = load i16, i16* %_public___v16_tls_ver
  %_public_lval18 = load i32, i32* %_public___v9_TLS1_1_VERSION
  %_public_lhssext = zext i16 %_public_lval17 to i32
  %_public_ugtetmp = icmp uge i32 %_public_lhssext, %_public_lval18
  %_public_branchcompare = icmp eq i1 %_public_ugtetmp, true
  br i1 %_public_branchcompare, label %thenbranch, label %elsebranch37

thenbranch:                                       ; preds = %entry
  %_public_lval19 = load i32, i32* %_public___v14__len
  %_public_lval20 = load i32, i32* %_public___v7_AES_BLOCK_SIZE
  %_public_lval21 = load i32, i32* %_public___v8_SHA_DIGEST_LENGTH
  %_public_addtmp = add i32 %_public_lval20, %_public_lval21
  %_public_addtmp22 = add i32 %_public_addtmp, 1
  %_public_ulttmp = icmp ult i32 %_public_lval19, %_public_addtmp22
  %_public_branchcompare23 = icmp eq i1 %_public_ulttmp, true
  br i1 %_public_branchcompare23, label %thenbranch24, label %elsebranch

thenbranch24:                                     ; preds = %thenbranch
  store i32 0, i32* %_secret___rval
  %_secret_lval25 = load i32, i32* %_secret___rval
  ret i32 %_secret_lval25

elsebranch:                                       ; preds = %thenbranch
  br label %branchmerge

branchmerge:                                      ; preds = %elsebranch
  %_secret_dynarrarg = load i8*, i8** %_secret_arrarg
  %_secret_dynarrarg26 = load i8*, i8** %_secret_arrarg5
  %_public_lval27 = load i32, i32* %_public____in_len
  call void @_arrcopy(i8* %_secret_dynarrarg, i32 16, i8* %_secret_dynarrarg26, i32 %_public_lval27)
  %_public_lval28 = load i32, i32* %_public___v12_inp
  %_public_lval29 = load i32, i32* %_public___v7_AES_BLOCK_SIZE
  %_public_addtmp30 = add i32 %_public_lval28, %_public_lval29
  store i32 %_public_addtmp30, i32* %_public___v12_inp
  %_public_lval31 = load i32, i32* %_public___v13_outp
  %_public_lval32 = load i32, i32* %_public___v7_AES_BLOCK_SIZE
  %_public_addtmp33 = add i32 %_public_lval31, %_public_lval32
  store i32 %_public_addtmp33, i32* %_public___v13_outp
  %_public_lval34 = load i32, i32* %_public___v14__len
  %_public_lval35 = load i32, i32* %_public___v7_AES_BLOCK_SIZE
  %_public_subtmp36 = sub i32 %_public_lval34, %_public_lval35
  store i32 %_public_subtmp36, i32* %_public___v14__len
  br label %branchmerge47

elsebranch37:                                     ; preds = %entry
  %_public_lval38 = load i32, i32* %_public___v14__len
  %_public_lval39 = load i32, i32* %_public___v8_SHA_DIGEST_LENGTH
  %_public_addtmp40 = add i32 %_public_lval39, 1
  %_public_ulttmp41 = icmp ult i32 %_public_lval38, %_public_addtmp40
  %_public_branchcompare42 = icmp eq i1 %_public_ulttmp41, true
  br i1 %_public_branchcompare42, label %thenbranch43, label %elsebranch45

thenbranch43:                                     ; preds = %elsebranch37
  store i32 0, i32* %_secret___rval
  %_secret_lval44 = load i32, i32* %_secret___rval
  ret i32 %_secret_lval44

elsebranch45:                                     ; preds = %elsebranch37
  br label %branchmerge46

branchmerge46:                                    ; preds = %elsebranch45
  br label %branchmerge47

branchmerge47:                                    ; preds = %branchmerge46, %branchmerge
  %_public_lval48 = load i32, i32* %_public___v14__len
  store i32 %_public_lval48, i32* %_public___v18___v17_len
  %_public_lval49 = load i32, i32* %_public___v14__len
  store i32 %_public_lval49, i32* %_public___v20___v19_len
  %_public_lval50 = load i32, i32* %_public___v12_inp
  %_secret_ldedviewptr = load i8*, i8** %_secret_arrarg5
  %_secret_source_gep = getelementptr inbounds i8, i8* %_secret_ldedviewptr, i32 %_public_lval50
  %_secret_arrviewdyn = alloca i8*
  store i8* %_secret_source_gep, i8** %_secret_arrviewdyn
  %_public_lval51 = load i32, i32* %_public___v12_inp
  %_secret_ldedviewptr52 = load i8*, i8** %_secret_arrarg5
  %_secret_source_gep53 = getelementptr inbounds i8, i8* %_secret_ldedviewptr52, i32 %_public_lval51
  %_secret_arrviewdyn54 = alloca i8*
  store i8* %_secret_source_gep53, i8** %_secret_arrviewdyn54
  %_secret_dynarrarg55 = load i8*, i8** %_secret_arrviewdyn54
  %_public_lval56 = load i32, i32* %_public___v13_outp
  %_secret_ldedviewptr57 = load i8*, i8** %_secret_arrarg2
  %_secret_source_gep58 = getelementptr inbounds i8, i8* %_secret_ldedviewptr57, i32 %_public_lval56
  %_secret_arrviewdyn59 = alloca i8*
  store i8* %_secret_source_gep58, i8** %_secret_arrviewdyn59
  %_public_lval60 = load i32, i32* %_public___v13_outp
  %_secret_ldedviewptr61 = load i8*, i8** %_secret_arrarg2
  %_secret_source_gep62 = getelementptr inbounds i8, i8* %_secret_ldedviewptr61, i32 %_public_lval60
  %_secret_arrviewdyn63 = alloca i8*
  store i8* %_secret_source_gep62, i8** %_secret_arrviewdyn63
  %_secret_dynarrarg64 = load i8*, i8** %_secret_arrviewdyn63
  %_public_lval65 = load i32, i32* %_public___v14__len
  %_public_zexttmp = zext i32 %_public_lval65 to i64
  %_public_structgep = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 0
  %_secret_structgep66 = getelementptr inbounds %AES_KEY, %AES_KEY* %_public_structgep, i32 0, i32 0
  %_public_structgep67 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 0
  %_secret_structgep68 = getelementptr inbounds %AES_KEY, %AES_KEY* %_public_structgep67, i32 0, i32 0
  %_secret_arrtoptr = bitcast [60 x i32]* %_secret_structgep68 to i32*
  %_secret_dynarrarg69 = load i8*, i8** %_secret_arrarg
  call void @aesni_cbc_encrypt(i8* %_secret_dynarrarg55, i8* %_secret_dynarrarg64, i64 %_public_zexttmp, i32* %_secret_arrtoptr, i8* %_secret_dynarrarg69, i32 0)
  %_public_lval70 = load i32, i32* %_public____out_len
  %_public_subtmp71 = sub i32 %_public_lval70, 1
  %_secret_dyn = load i8*, i8** %_secret_arrarg2
  %_secret_ptr72 = getelementptr inbounds i8, i8* %_secret_dyn, i32 %_public_subtmp71
  %_secret_lval73 = load i8, i8* %_secret_ptr72
  %_secret_zexttmp = zext i8 %_secret_lval73 to i32
  store i32 %_secret_zexttmp, i32* %_secret___v21_pad
  %_public_lval74 = load i32, i32* %_public___v14__len
  %_public_lval75 = load i32, i32* %_public___v8_SHA_DIGEST_LENGTH
  %_public_addtmp76 = add i32 %_public_lval75, 1
  %_public_subtmp77 = sub i32 %_public_lval74, %_public_addtmp76
  store i32 %_public_subtmp77, i32* %_public___v22_maxpad
  %_public_lval78 = load i32, i32* %_public___v22_maxpad
  %_public_lval79 = load i32, i32* %_public___v22_maxpad
  %_public_subtmp80 = sub i32 255, %_public_lval79
  %_public_arshift = ashr i32 %_public_subtmp80, 24
  %_public_ortmp = or i32 %_public_lval78, %_public_arshift
  store i32 %_public_ortmp, i32* %_public___v22_maxpad
  %_public_lval81 = load i32, i32* %_public___v22_maxpad
  %_public_andtmp = and i32 %_public_lval81, 255
  %_public_truncbinop = trunc i32 %_public_andtmp to i8
  %_public_zexttmp82 = zext i8 %_public_truncbinop to i32
  store i32 %_public_zexttmp82, i32* %_public___v22_maxpad
  %_public_lval83 = load i32, i32* %_public___v22_maxpad
  %_secret_lval84 = load i32, i32* %_secret___v21_pad
  %_secret_calltmp = call i32 @constant_time_ge(i32 %_public_lval83, i32 %_secret_lval84)
  store i32 %_secret_calltmp, i32* %_secret___v23_mask
  %_secret_lval85 = load i32, i32* %_secret___v15_ret
  %_secret_lval86 = load i32, i32* %_secret___v23_mask
  %_secret_andtmp = and i32 %_secret_lval85, %_secret_lval86
  store i32 %_secret_andtmp, i32* %_secret___v15_ret
  %_secret_lval87 = load i32, i32* %_secret___v23_mask
  %_secret_lval88 = load i32, i32* %_secret___v21_pad
  %_public_lval89 = load i32, i32* %_public___v22_maxpad
  %_secret_calltmp90 = call i32 @constant_time_select(i32 %_secret_lval87, i32 %_secret_lval88, i32 %_public_lval89)
  store i32 %_secret_calltmp90, i32* %_secret___v21_pad
  %_public_lval91 = load i32, i32* %_public___v14__len
  %_public_lval92 = load i32, i32* %_public___v8_SHA_DIGEST_LENGTH
  %_secret_lval93 = load i32, i32* %_secret___v21_pad
  %_secret_addtmp = add i32 %_public_lval92, %_secret_lval93
  %_secret_addtmp94 = add i32 %_secret_addtmp, 1
  %_secret_subtmp = sub i32 %_public_lval91, %_secret_addtmp94
  store i32 %_secret_subtmp, i32* %_secret___v24_inp_len
  %_secret_structgep95 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 5
  %_public_lval96 = load i64, i64* %_public_plen
  %_public_subtmp97 = sub i64 %_public_lval96, 2
  %_secret_ptr98 = getelementptr inbounds [16 x i8], [16 x i8]* %_secret_structgep95, i64 0, i64 %_public_subtmp97
  %_secret_lval99 = load i32, i32* %_secret___v24_inp_len
  %_secret_lrshift = lshr i32 %_secret_lval99, 8
  %_secret_ucast100 = trunc i32 %_secret_lrshift to i8
  store i8 %_secret_ucast100, i8* %_secret_ptr98
  %_secret_structgep101 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 5
  %_public_lval102 = load i64, i64* %_public_plen
  %_public_subtmp103 = sub i64 %_public_lval102, 1
  %_secret_ptr104 = getelementptr inbounds [16 x i8], [16 x i8]* %_secret_structgep101, i64 0, i64 %_public_subtmp103
  %_secret_lval105 = load i32, i32* %_secret___v24_inp_len
  %_secret_lrshift106 = lshr i32 %_secret_lval105, 0
  %_secret_ucast107 = trunc i32 %_secret_lrshift106 to i8
  store i8 %_secret_ucast107, i8* %_secret_ptr104
  %_public_structgep108 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_public_structgep109 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 1
  call void @_structcopy_SHA_CTX(%SHA_CTX* %_public_structgep108, %SHA_CTX* %_public_structgep109)
  %_public_lval110 = load i64, i64* %_public_plen
  %_public_trunctmp = trunc i64 %_public_lval110 to i32
  store i32 %_public_trunctmp, i32* %_public___v26___v25_len
  %_public_structgep111 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep112 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep111, i32 0, i32 0
  %_secret_structgep113 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 5
  %_secret_arrview = alloca i8*
  %_secret_source_gep114 = getelementptr inbounds [16 x i8], [16 x i8]* %_secret_structgep113, i8 0, i8 0
  store i8* %_secret_source_gep114, i8** %_secret_arrview
  %_secret_structgep115 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 5
  %_secret_arrview116 = alloca i8*
  %_secret_source_gep117 = getelementptr inbounds [16 x i8], [16 x i8]* %_secret_structgep115, i8 0, i8 0
  store i8* %_secret_source_gep117, i8** %_secret_arrview116
  %_secret_dynarrarg118 = load i8*, i8** %_secret_arrview116
  %_public_lval119 = load i64, i64* %_public_plen
  call void @_sha1_update(i32* %_secret_structgep112, i8* %_secret_dynarrarg118, i64 %_public_lval119)
  %_public_lval120 = load i32, i32* %_public___v14__len
  %_public_lval121 = load i32, i32* %_public___v8_SHA_DIGEST_LENGTH
  %_public_subtmp122 = sub i32 %_public_lval120, %_public_lval121
  store i32 %_public_subtmp122, i32* %_public___v14__len
  %_public_lval123 = load i32, i32* %_public___v14__len
  %_public_lval124 = load i32, i32* %_public___v11_SHA_CBLOCK
  %_public_addtmp125 = add i32 256, %_public_lval124
  %_public_ugtetmp126 = icmp uge i32 %_public_lval123, %_public_addtmp125
  %_public_branchcompare127 = icmp eq i1 %_public_ugtetmp126, true
  br i1 %_public_branchcompare127, label %thenbranch128, label %elsebranch166

thenbranch128:                                    ; preds = %branchmerge47
  %_public_lval129 = load i32, i32* %_public___v14__len
  %_public_lval130 = load i32, i32* %_public___v11_SHA_CBLOCK
  %_public_addtmp131 = add i32 256, %_public_lval130
  %_public_subtmp132 = sub i32 %_public_lval129, %_public_addtmp131
  %_public_lval133 = load i32, i32* %_public___v11_SHA_CBLOCK
  %_public_subtmp134 = sub i32 0, %_public_lval133
  %_public_andtmp135 = and i32 %_public_subtmp132, %_public_subtmp134
  store i32 %_public_andtmp135, i32* %_public___v27_j
  %_public_lval136 = load i32, i32* %_public___v27_j
  %_public_lval137 = load i32, i32* %_public___v11_SHA_CBLOCK
  %_public_structgep138 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_public_structgep139 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep138, i32 0, i32 8
  %_public_lval140 = load i32, i32* %_public_structgep139
  %_public_subtmp141 = sub i32 %_public_lval137, %_public_lval140
  %_public_addtmp142 = add i32 %_public_lval136, %_public_subtmp141
  store i32 %_public_addtmp142, i32* %_public___v27_j
  %_public_lval143 = load i32, i32* %_public___v27_j
  store i32 %_public_lval143, i32* %_public___v29___v28_len
  %_public_structgep144 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep145 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep144, i32 0, i32 0
  %_public_lval146 = load i32, i32* %_public___v13_outp
  %_secret_ldedviewptr147 = load i8*, i8** %_secret_arrarg2
  %_secret_source_gep148 = getelementptr inbounds i8, i8* %_secret_ldedviewptr147, i32 %_public_lval146
  %_secret_arrviewdyn149 = alloca i8*
  store i8* %_secret_source_gep148, i8** %_secret_arrviewdyn149
  %_public_lval150 = load i32, i32* %_public___v13_outp
  %_secret_ldedviewptr151 = load i8*, i8** %_secret_arrarg2
  %_secret_source_gep152 = getelementptr inbounds i8, i8* %_secret_ldedviewptr151, i32 %_public_lval150
  %_secret_arrviewdyn153 = alloca i8*
  store i8* %_secret_source_gep152, i8** %_secret_arrviewdyn153
  %_secret_dynarrarg154 = load i8*, i8** %_secret_arrviewdyn153
  %_public_lval155 = load i32, i32* %_public___v27_j
  %_public_zexttmp156 = zext i32 %_public_lval155 to i64
  call void @_sha1_update(i32* %_secret_structgep145, i8* %_secret_dynarrarg154, i64 %_public_zexttmp156)
  %_public_lval157 = load i32, i32* %_public___v13_outp
  %_public_lval158 = load i32, i32* %_public___v27_j
  %_public_addtmp159 = add i32 %_public_lval157, %_public_lval158
  store i32 %_public_addtmp159, i32* %_public___v13_outp
  %_public_lval160 = load i32, i32* %_public___v14__len
  %_public_lval161 = load i32, i32* %_public___v27_j
  %_public_subtmp162 = sub i32 %_public_lval160, %_public_lval161
  store i32 %_public_subtmp162, i32* %_public___v14__len
  %_secret_lval163 = load i32, i32* %_secret___v24_inp_len
  %_public_lval164 = load i32, i32* %_public___v27_j
  %_secret_subtmp165 = sub i32 %_secret_lval163, %_public_lval164
  store i32 %_secret_subtmp165, i32* %_secret___v24_inp_len
  br label %branchmerge167

elsebranch166:                                    ; preds = %branchmerge47
  br label %branchmerge167

branchmerge167:                                   ; preds = %elsebranch166, %thenbranch128
  %_public_structgep168 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep169 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep168, i32 0, i32 5
  %_secret_lval170 = load i32, i32* %_secret_structgep169
  %_secret_lval171 = load i32, i32* %_secret___v24_inp_len
  %_secret_lshift172 = shl i32 %_secret_lval171, 3
  %_secret_addtmp173 = add i32 %_secret_lval170, %_secret_lshift172
  store i32 %_secret_addtmp173, i32* %_secret___v30_bitlen
  %_secret_lval174 = load i32, i32* %_secret___v30_bitlen
  %_secret_calltmp175 = call i32 @bswap4(i32 %_secret_lval174)
  store i32 %_secret_calltmp175, i32* %_secret___v30_bitlen
  %_secret___v31_pmac = alloca [20 x i8], align 32
  %_secret_sourcecasted = bitcast [20 x i8]* %_secret___v31_pmac to i8*
  call void @llvm.memset.p0i8.i64(i8* %_secret_sourcecasted, i8 0, i64 20, i32 0, i1 false)
  %_public_structgep176 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_public_structgep177 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep176, i32 0, i32 8
  %_public_lval178 = load i32, i32* %_public_structgep177
  store i32 %_public_lval178, i32* %_public___v32_p_res
  store i32 0, i32* %_public___v33_j
  br label %loop_check

loop_check:                                       ; preds = %branchmerge307, %branchmerge167
  %_public_lval179 = load i32, i32* %_public___v33_j
  %_public_lval180 = load i32, i32* %_public___v14__len
  %_public_ulttmp181 = icmp ult i32 %_public_lval179, %_public_lval180
  br i1 %_public_ulttmp181, label %loop_body, label %loop_end

loop_body:                                        ; preds = %loop_check
  %_public_lval182 = load i32, i32* %_public___v13_outp
  %_public_lval183 = load i32, i32* %_public___v33_j
  %_public_addtmp184 = add i32 %_public_lval182, %_public_lval183
  %_secret_dyn185 = load i8*, i8** %_secret_arrarg2
  %_secret_ptr186 = getelementptr inbounds i8, i8* %_secret_dyn185, i32 %_public_addtmp184
  %_secret_lval187 = load i8, i8* %_secret_ptr186
  %_secret_zexttmp188 = zext i8 %_secret_lval187 to i32
  store i32 %_secret_zexttmp188, i32* %_secret___v34_c
  %_public_lval189 = load i32, i32* %_public___v33_j
  %_secret_lval190 = load i32, i32* %_secret___v24_inp_len
  %_secret_subtmp191 = sub i32 %_public_lval189, %_secret_lval190
  %_secret_arshift = ashr i32 %_secret_subtmp191, 24
  store i32 %_secret_arshift, i32* %_secret___v35_mask
  %_secret_lval192 = load i32, i32* %_secret___v34_c
  %_secret_lval193 = load i32, i32* %_secret___v35_mask
  %_secret_andtmp194 = and i32 %_secret_lval192, %_secret_lval193
  store i32 %_secret_andtmp194, i32* %_secret___v34_c
  %_secret_lval195 = load i32, i32* %_secret___v34_c
  %_secret_lval196 = load i32, i32* %_secret___v35_mask
  %_secret_bnottmp = xor i32 %_secret_lval196, -1
  %_secret_andtmp197 = and i32 128, %_secret_bnottmp
  %_secret_truncbinop = trunc i32 %_secret_andtmp197 to i8
  %_secret_lval198 = load i32, i32* %_secret___v24_inp_len
  %_public_lval199 = load i32, i32* %_public___v33_j
  %_secret_subtmp200 = sub i32 %_secret_lval198, %_public_lval199
  %_secret_lrshift201 = lshr i32 %_secret_subtmp200, 24
  %_secret_bnottmp202 = xor i32 %_secret_lrshift201, -1
  %_secret_lhssext = zext i8 %_secret_truncbinop to i32
  %_secret_andtmp203 = and i32 %_secret_lhssext, %_secret_bnottmp202
  %_secret_truncbinop204 = trunc i32 %_secret_andtmp203 to i8
  %_secret_rhssext = zext i8 %_secret_truncbinop204 to i32
  %_secret_ortmp = or i32 %_secret_lval195, %_secret_rhssext
  store i32 %_secret_ortmp, i32* %_secret___v34_c
  %_public_structgep205 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep206 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep205, i32 0, i32 7
  %_public_lval207 = load i32, i32* %_public___v32_p_res
  %_secret_ptr208 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep206, i32 0, i32 %_public_lval207
  %_secret_lval209 = load i32, i32* %_secret___v34_c
  %_secret_ucast210 = trunc i32 %_secret_lval209 to i8
  store i8 %_secret_ucast210, i8* %_secret_ptr208
  %_public_lval211 = load i32, i32* %_public___v32_p_res
  %_public_addtmp212 = add i32 %_public_lval211, 1
  store i32 %_public_addtmp212, i32* %_public___v32_p_res
  %_public_lval213 = load i32, i32* %_public___v32_p_res
  %_public_lval214 = load i32, i32* %_public___v11_SHA_CBLOCK
  %_public_eqtmp = icmp eq i32 %_public_lval213, %_public_lval214
  %_public_branchcompare215 = icmp eq i1 %_public_eqtmp, true
  br i1 %_public_branchcompare215, label %thenbranch216, label %elsebranch306

loop_end:                                         ; preds = %loop_check
  %_public_lval310 = load i32, i32* %_public___v14__len
  store i32 %_public_lval310, i32* %_public___v36_j
  %_public_lval314 = load i32, i32* %_public___v32_p_res
  store i32 %_public_lval314, i32* %_public___v37_i
  br label %loop_check311

thenbranch216:                                    ; preds = %loop_body
  %_secret_lval217 = load i32, i32* %_secret___v24_inp_len
  %_secret_addtmp218 = add i32 %_secret_lval217, 7
  %_public_lval219 = load i32, i32* %_public___v33_j
  %_secret_subtmp220 = sub i32 %_secret_addtmp218, %_public_lval219
  %_secret_lrshift221 = lshr i32 %_secret_subtmp220, 31
  %_secret_subtmp222 = sub i32 0, %_secret_lrshift221
  store i32 %_secret_subtmp222, i32* %_secret___v35_mask
  %_public_lval223 = load i32, i32* %_public___v10_SHA_LBLOCK
  %_public_subtmp224 = sub i32 %_public_lval223, 1
  %_public_multmp225 = mul i32 4, %_public_subtmp224
  %_public_structgep226 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep227 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep226, i32 0, i32 7
  %_secret_arrview228 = alloca i8*
  %_secret_source_gep229 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep227, i32 0, i32 %_public_multmp225
  store i8* %_secret_source_gep229, i8** %_secret_arrview228
  %_public_lval230 = load i32, i32* %_public___v10_SHA_LBLOCK
  %_public_subtmp231 = sub i32 %_public_lval230, 1
  %_public_multmp232 = mul i32 4, %_public_subtmp231
  %_public_structgep233 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep234 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep233, i32 0, i32 7
  %_secret_arrview235 = alloca i8*
  %_secret_source_gep236 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep234, i32 0, i32 %_public_multmp232
  store i8* %_secret_source_gep236, i8** %_secret_arrview235
  %_secret_dynarrarg237 = load i8*, i8** %_secret_arrview235
  %_secret_lval238 = load i32, i32* %_secret___v30_bitlen
  %_secret_lval239 = load i32, i32* %_secret___v35_mask
  %_secret_andtmp240 = and i32 %_secret_lval238, %_secret_lval239
  call void @pmac_oreq(i8* %_secret_dynarrarg237, i32 %_secret_andtmp240)
  %_public_structgep241 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep242 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep241, i32 0, i32 0
  %_public_structgep243 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep244 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep243, i32 0, i32 7
  %_public_structgep245 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep246 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep245, i32 0, i32 7
  %_secret_arrtoptr247 = bitcast [64 x i8]* %_secret_structgep246 to i8*
  call void @sha1_block_data_order(i32* %_secret_structgep242, i8* %_secret_arrtoptr247, i32 1)
  %_secret_lval248 = load i32, i32* %_secret___v35_mask
  %_public_lval249 = load i32, i32* %_public___v33_j
  %_secret_lval250 = load i32, i32* %_secret___v24_inp_len
  %_secret_subtmp251 = sub i32 %_public_lval249, %_secret_lval250
  %_secret_subtmp252 = sub i32 %_secret_subtmp251, 72
  %_secret_lrshift253 = lshr i32 %_secret_subtmp252, 31
  %_secret_subtmp254 = sub i32 0, %_secret_lrshift253
  %_secret_andtmp255 = and i32 %_secret_lval248, %_secret_subtmp254
  store i32 %_secret_andtmp255, i32* %_secret___v35_mask
  %_secret_arrview256 = alloca i8*
  %_secret_source_gep257 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i8 0, i8 0
  store i8* %_secret_source_gep257, i8** %_secret_arrview256
  %_secret_arrview258 = alloca i8*
  %_secret_source_gep259 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i8 0, i8 0
  store i8* %_secret_source_gep259, i8** %_secret_arrview258
  %_secret_dynarrarg260 = load i8*, i8** %_secret_arrview258
  %_public_structgep261 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep262 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep261, i32 0, i32 0
  %_secret_lval263 = load i32, i32* %_secret_structgep262
  %_secret_lval264 = load i32, i32* %_secret___v35_mask
  %_secret_andtmp265 = and i32 %_secret_lval263, %_secret_lval264
  call void @pmac_oreq(i8* %_secret_dynarrarg260, i32 %_secret_andtmp265)
  %_secret_arrview266 = alloca i8*
  %_secret_source_gep267 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i8 0, i8 4
  store i8* %_secret_source_gep267, i8** %_secret_arrview266
  %_secret_arrview268 = alloca i8*
  %_secret_source_gep269 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i8 0, i8 4
  store i8* %_secret_source_gep269, i8** %_secret_arrview268
  %_secret_dynarrarg270 = load i8*, i8** %_secret_arrview268
  %_public_structgep271 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep272 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep271, i32 0, i32 1
  %_secret_lval273 = load i32, i32* %_secret_structgep272
  %_secret_lval274 = load i32, i32* %_secret___v35_mask
  %_secret_andtmp275 = and i32 %_secret_lval273, %_secret_lval274
  call void @pmac_oreq(i8* %_secret_dynarrarg270, i32 %_secret_andtmp275)
  %_secret_arrview276 = alloca i8*
  %_secret_source_gep277 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i8 0, i8 8
  store i8* %_secret_source_gep277, i8** %_secret_arrview276
  %_secret_arrview278 = alloca i8*
  %_secret_source_gep279 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i8 0, i8 8
  store i8* %_secret_source_gep279, i8** %_secret_arrview278
  %_secret_dynarrarg280 = load i8*, i8** %_secret_arrview278
  %_public_structgep281 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep282 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep281, i32 0, i32 2
  %_secret_lval283 = load i32, i32* %_secret_structgep282
  %_secret_lval284 = load i32, i32* %_secret___v35_mask
  %_secret_andtmp285 = and i32 %_secret_lval283, %_secret_lval284
  call void @pmac_oreq(i8* %_secret_dynarrarg280, i32 %_secret_andtmp285)
  %_secret_arrview286 = alloca i8*
  %_secret_source_gep287 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i8 0, i8 12
  store i8* %_secret_source_gep287, i8** %_secret_arrview286
  %_secret_arrview288 = alloca i8*
  %_secret_source_gep289 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i8 0, i8 12
  store i8* %_secret_source_gep289, i8** %_secret_arrview288
  %_secret_dynarrarg290 = load i8*, i8** %_secret_arrview288
  %_public_structgep291 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep292 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep291, i32 0, i32 3
  %_secret_lval293 = load i32, i32* %_secret_structgep292
  %_secret_lval294 = load i32, i32* %_secret___v35_mask
  %_secret_andtmp295 = and i32 %_secret_lval293, %_secret_lval294
  call void @pmac_oreq(i8* %_secret_dynarrarg290, i32 %_secret_andtmp295)
  %_secret_arrview296 = alloca i8*
  %_secret_source_gep297 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i8 0, i8 16
  store i8* %_secret_source_gep297, i8** %_secret_arrview296
  %_secret_arrview298 = alloca i8*
  %_secret_source_gep299 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i8 0, i8 16
  store i8* %_secret_source_gep299, i8** %_secret_arrview298
  %_secret_dynarrarg300 = load i8*, i8** %_secret_arrview298
  %_public_structgep301 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep302 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep301, i32 0, i32 4
  %_secret_lval303 = load i32, i32* %_secret_structgep302
  %_secret_lval304 = load i32, i32* %_secret___v35_mask
  %_secret_andtmp305 = and i32 %_secret_lval303, %_secret_lval304
  call void @pmac_oreq(i8* %_secret_dynarrarg300, i32 %_secret_andtmp305)
  store i32 0, i32* %_public___v32_p_res
  br label %branchmerge307

elsebranch306:                                    ; preds = %loop_body
  br label %branchmerge307

branchmerge307:                                   ; preds = %elsebranch306, %thenbranch216
  %_public_lval308 = load i32, i32* %_public___v33_j
  %_public_addtmp309 = add i32 %_public_lval308, 1
  store i32 %_public_addtmp309, i32* %_public___v33_j
  br label %loop_check

loop_check311:                                    ; preds = %loop_body312, %loop_end
  %_public_lval315 = load i32, i32* %_public___v37_i
  %_public_lval316 = load i32, i32* %_public___v11_SHA_CBLOCK
  %_public_ulttmp317 = icmp ult i32 %_public_lval315, %_public_lval316
  br i1 %_public_ulttmp317, label %loop_body312, label %loop_end313

loop_body312:                                     ; preds = %loop_check311
  %_public_structgep318 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep319 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep318, i32 0, i32 7
  %_public_lval320 = load i32, i32* %_public___v37_i
  %_secret_ptr321 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep319, i32 0, i32 %_public_lval320
  store i8 0, i8* %_secret_ptr321
  %_public_lval322 = load i32, i32* %_public___v36_j
  %_public_addtmp323 = add i32 %_public_lval322, 1
  store i32 %_public_addtmp323, i32* %_public___v36_j
  %_public_lval324 = load i32, i32* %_public___v37_i
  %_public_addtmp325 = add i32 %_public_lval324, 1
  store i32 %_public_addtmp325, i32* %_public___v37_i
  br label %loop_check311

loop_end313:                                      ; preds = %loop_check311
  %_public_lval326 = load i32, i32* %_public___v32_p_res
  %_public_lval327 = load i32, i32* %_public___v11_SHA_CBLOCK
  %_public_subtmp328 = sub i32 %_public_lval327, 8
  %_public_ugttmp = icmp ugt i32 %_public_lval326, %_public_subtmp328
  %_public_branchcompare329 = icmp eq i1 %_public_ugttmp, true
  br i1 %_public_branchcompare329, label %thenbranch330, label %elsebranch427

thenbranch330:                                    ; preds = %loop_end313
  %_secret_lval331 = load i32, i32* %_secret___v24_inp_len
  %_secret_addtmp332 = add i32 %_secret_lval331, 8
  %_public_lval333 = load i32, i32* %_public___v36_j
  %_secret_subtmp334 = sub i32 %_secret_addtmp332, %_public_lval333
  %_secret_lrshift335 = lshr i32 %_secret_subtmp334, 31
  %_secret_subtmp336 = sub i32 0, %_secret_lrshift335
  store i32 %_secret_subtmp336, i32* %_secret___v38_mask
  %_public_lval337 = load i32, i32* %_public___v10_SHA_LBLOCK
  %_public_subtmp338 = sub i32 %_public_lval337, 1
  %_public_multmp339 = mul i32 4, %_public_subtmp338
  %_public_structgep340 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep341 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep340, i32 0, i32 7
  %_secret_arrview342 = alloca i8*
  %_secret_source_gep343 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep341, i32 0, i32 %_public_multmp339
  store i8* %_secret_source_gep343, i8** %_secret_arrview342
  %_public_lval344 = load i32, i32* %_public___v10_SHA_LBLOCK
  %_public_subtmp345 = sub i32 %_public_lval344, 1
  %_public_multmp346 = mul i32 4, %_public_subtmp345
  %_public_structgep347 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep348 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep347, i32 0, i32 7
  %_secret_arrview349 = alloca i8*
  %_secret_source_gep350 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep348, i32 0, i32 %_public_multmp346
  store i8* %_secret_source_gep350, i8** %_secret_arrview349
  %_secret_dynarrarg351 = load i8*, i8** %_secret_arrview349
  %_secret_lval352 = load i32, i32* %_secret___v30_bitlen
  %_secret_lval353 = load i32, i32* %_secret___v38_mask
  %_secret_andtmp354 = and i32 %_secret_lval352, %_secret_lval353
  call void @pmac_oreq(i8* %_secret_dynarrarg351, i32 %_secret_andtmp354)
  %_public_structgep355 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep356 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep355, i32 0, i32 0
  %_public_structgep357 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep358 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep357, i32 0, i32 7
  %_public_structgep359 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep360 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep359, i32 0, i32 7
  %_secret_arrtoptr361 = bitcast [64 x i8]* %_secret_structgep360 to i8*
  call void @sha1_block_data_order(i32* %_secret_structgep356, i8* %_secret_arrtoptr361, i32 1)
  %_secret_lval362 = load i32, i32* %_secret___v38_mask
  %_public_lval363 = load i32, i32* %_public___v36_j
  %_secret_lval364 = load i32, i32* %_secret___v24_inp_len
  %_secret_subtmp365 = sub i32 %_public_lval363, %_secret_lval364
  %_secret_subtmp366 = sub i32 %_secret_subtmp365, 72
  %_secret_lrshift367 = lshr i32 %_secret_subtmp366, 31
  %_secret_subtmp368 = sub i32 0, %_secret_lrshift367
  %_secret_andtmp369 = and i32 %_secret_lval362, %_secret_subtmp368
  store i32 %_secret_andtmp369, i32* %_secret___v38_mask
  %_secret_arrview370 = alloca i8*
  %_secret_source_gep371 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i8 0, i8 0
  store i8* %_secret_source_gep371, i8** %_secret_arrview370
  %_secret_arrview372 = alloca i8*
  %_secret_source_gep373 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i8 0, i8 0
  store i8* %_secret_source_gep373, i8** %_secret_arrview372
  %_secret_dynarrarg374 = load i8*, i8** %_secret_arrview372
  %_public_structgep375 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep376 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep375, i32 0, i32 0
  %_secret_lval377 = load i32, i32* %_secret_structgep376
  %_secret_lval378 = load i32, i32* %_secret___v38_mask
  %_secret_andtmp379 = and i32 %_secret_lval377, %_secret_lval378
  call void @pmac_oreq(i8* %_secret_dynarrarg374, i32 %_secret_andtmp379)
  %_secret_arrview380 = alloca i8*
  %_secret_source_gep381 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i8 0, i8 4
  store i8* %_secret_source_gep381, i8** %_secret_arrview380
  %_secret_arrview382 = alloca i8*
  %_secret_source_gep383 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i8 0, i8 4
  store i8* %_secret_source_gep383, i8** %_secret_arrview382
  %_secret_dynarrarg384 = load i8*, i8** %_secret_arrview382
  %_public_structgep385 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep386 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep385, i32 0, i32 1
  %_secret_lval387 = load i32, i32* %_secret_structgep386
  %_secret_lval388 = load i32, i32* %_secret___v38_mask
  %_secret_andtmp389 = and i32 %_secret_lval387, %_secret_lval388
  call void @pmac_oreq(i8* %_secret_dynarrarg384, i32 %_secret_andtmp389)
  %_secret_arrview390 = alloca i8*
  %_secret_source_gep391 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i8 0, i8 8
  store i8* %_secret_source_gep391, i8** %_secret_arrview390
  %_secret_arrview392 = alloca i8*
  %_secret_source_gep393 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i8 0, i8 8
  store i8* %_secret_source_gep393, i8** %_secret_arrview392
  %_secret_dynarrarg394 = load i8*, i8** %_secret_arrview392
  %_public_structgep395 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep396 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep395, i32 0, i32 2
  %_secret_lval397 = load i32, i32* %_secret_structgep396
  %_secret_lval398 = load i32, i32* %_secret___v38_mask
  %_secret_andtmp399 = and i32 %_secret_lval397, %_secret_lval398
  call void @pmac_oreq(i8* %_secret_dynarrarg394, i32 %_secret_andtmp399)
  %_secret_arrview400 = alloca i8*
  %_secret_source_gep401 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i8 0, i8 12
  store i8* %_secret_source_gep401, i8** %_secret_arrview400
  %_secret_arrview402 = alloca i8*
  %_secret_source_gep403 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i8 0, i8 12
  store i8* %_secret_source_gep403, i8** %_secret_arrview402
  %_secret_dynarrarg404 = load i8*, i8** %_secret_arrview402
  %_public_structgep405 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep406 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep405, i32 0, i32 3
  %_secret_lval407 = load i32, i32* %_secret_structgep406
  %_secret_lval408 = load i32, i32* %_secret___v38_mask
  %_secret_andtmp409 = and i32 %_secret_lval407, %_secret_lval408
  call void @pmac_oreq(i8* %_secret_dynarrarg404, i32 %_secret_andtmp409)
  %_secret_arrview410 = alloca i8*
  %_secret_source_gep411 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i8 0, i8 16
  store i8* %_secret_source_gep411, i8** %_secret_arrview410
  %_secret_arrview412 = alloca i8*
  %_secret_source_gep413 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i8 0, i8 16
  store i8* %_secret_source_gep413, i8** %_secret_arrview412
  %_secret_dynarrarg414 = load i8*, i8** %_secret_arrview412
  %_public_structgep415 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep416 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep415, i32 0, i32 4
  %_secret_lval417 = load i32, i32* %_secret_structgep416
  %_secret_lval418 = load i32, i32* %_secret___v38_mask
  %_secret_andtmp419 = and i32 %_secret_lval417, %_secret_lval418
  call void @pmac_oreq(i8* %_secret_dynarrarg414, i32 %_secret_andtmp419)
  %_public_structgep420 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep421 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep420, i32 0, i32 7
  %_public_structgep422 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep423 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep422, i32 0, i32 7
  %_secret_arrtoptr424 = bitcast [64 x i8]* %_secret_structgep423 to i8*
  call void @_memzero(i8* %_secret_arrtoptr424, i32 64)
  %_public_lval425 = load i32, i32* %_public___v36_j
  %_public_addtmp426 = add i32 %_public_lval425, 64
  store i32 %_public_addtmp426, i32* %_public___v36_j
  br label %branchmerge428

elsebranch427:                                    ; preds = %loop_end313
  br label %branchmerge428

branchmerge428:                                   ; preds = %elsebranch427, %thenbranch330
  %_public_lval429 = load i32, i32* %_public___v10_SHA_LBLOCK
  %_public_subtmp430 = sub i32 %_public_lval429, 1
  %_public_multmp431 = mul i32 4, %_public_subtmp430
  %_public_structgep432 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep433 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep432, i32 0, i32 7
  %_secret_arrview434 = alloca i8*
  %_secret_source_gep435 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep433, i32 0, i32 %_public_multmp431
  store i8* %_secret_source_gep435, i8** %_secret_arrview434
  %_public_lval436 = load i32, i32* %_public___v10_SHA_LBLOCK
  %_public_subtmp437 = sub i32 %_public_lval436, 1
  %_public_multmp438 = mul i32 4, %_public_subtmp437
  %_public_structgep439 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep440 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep439, i32 0, i32 7
  %_secret_arrview441 = alloca i8*
  %_secret_source_gep442 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep440, i32 0, i32 %_public_multmp438
  store i8* %_secret_source_gep442, i8** %_secret_arrview441
  %_secret_dynarrarg443 = load i8*, i8** %_secret_arrview441
  %_secret_lval444 = load i32, i32* %_secret___v30_bitlen
  call void @_store32_le(i8* %_secret_dynarrarg443, i32 %_secret_lval444)
  %_public_structgep445 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep446 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep445, i32 0, i32 0
  %_public_structgep447 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep448 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep447, i32 0, i32 7
  %_public_structgep449 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep450 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep449, i32 0, i32 7
  %_secret_arrtoptr451 = bitcast [64 x i8]* %_secret_structgep450 to i8*
  call void @sha1_block_data_order(i32* %_secret_structgep446, i8* %_secret_arrtoptr451, i32 1)
  %_public_lval452 = load i32, i32* %_public___v36_j
  %_secret_lval453 = load i32, i32* %_secret___v24_inp_len
  %_secret_subtmp454 = sub i32 %_public_lval452, %_secret_lval453
  %_secret_subtmp455 = sub i32 %_secret_subtmp454, 72
  %_secret_lrshift456 = lshr i32 %_secret_subtmp455, 31
  %_secret_subtmp457 = sub i32 0, %_secret_lrshift456
  store i32 %_secret_subtmp457, i32* %_secret___v39_mask_
  %_secret_arrview458 = alloca i8*
  %_secret_source_gep459 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i8 0, i8 0
  store i8* %_secret_source_gep459, i8** %_secret_arrview458
  %_secret_arrview460 = alloca i8*
  %_secret_source_gep461 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i8 0, i8 0
  store i8* %_secret_source_gep461, i8** %_secret_arrview460
  %_secret_dynarrarg462 = load i8*, i8** %_secret_arrview460
  %_public_structgep463 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep464 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep463, i32 0, i32 0
  %_secret_lval465 = load i32, i32* %_secret_structgep464
  %_secret_lval466 = load i32, i32* %_secret___v39_mask_
  %_secret_andtmp467 = and i32 %_secret_lval465, %_secret_lval466
  call void @pmac_oreq(i8* %_secret_dynarrarg462, i32 %_secret_andtmp467)
  %_secret_arrview468 = alloca i8*
  %_secret_source_gep469 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i8 0, i8 4
  store i8* %_secret_source_gep469, i8** %_secret_arrview468
  %_secret_arrview470 = alloca i8*
  %_secret_source_gep471 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i8 0, i8 4
  store i8* %_secret_source_gep471, i8** %_secret_arrview470
  %_secret_dynarrarg472 = load i8*, i8** %_secret_arrview470
  %_public_structgep473 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep474 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep473, i32 0, i32 1
  %_secret_lval475 = load i32, i32* %_secret_structgep474
  %_secret_lval476 = load i32, i32* %_secret___v39_mask_
  %_secret_andtmp477 = and i32 %_secret_lval475, %_secret_lval476
  call void @pmac_oreq(i8* %_secret_dynarrarg472, i32 %_secret_andtmp477)
  %_secret_arrview478 = alloca i8*
  %_secret_source_gep479 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i8 0, i8 8
  store i8* %_secret_source_gep479, i8** %_secret_arrview478
  %_secret_arrview480 = alloca i8*
  %_secret_source_gep481 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i8 0, i8 8
  store i8* %_secret_source_gep481, i8** %_secret_arrview480
  %_secret_dynarrarg482 = load i8*, i8** %_secret_arrview480
  %_public_structgep483 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep484 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep483, i32 0, i32 2
  %_secret_lval485 = load i32, i32* %_secret_structgep484
  %_secret_lval486 = load i32, i32* %_secret___v39_mask_
  %_secret_andtmp487 = and i32 %_secret_lval485, %_secret_lval486
  call void @pmac_oreq(i8* %_secret_dynarrarg482, i32 %_secret_andtmp487)
  %_secret_arrview488 = alloca i8*
  %_secret_source_gep489 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i8 0, i8 12
  store i8* %_secret_source_gep489, i8** %_secret_arrview488
  %_secret_arrview490 = alloca i8*
  %_secret_source_gep491 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i8 0, i8 12
  store i8* %_secret_source_gep491, i8** %_secret_arrview490
  %_secret_dynarrarg492 = load i8*, i8** %_secret_arrview490
  %_public_structgep493 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep494 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep493, i32 0, i32 3
  %_secret_lval495 = load i32, i32* %_secret_structgep494
  %_secret_lval496 = load i32, i32* %_secret___v39_mask_
  %_secret_andtmp497 = and i32 %_secret_lval495, %_secret_lval496
  call void @pmac_oreq(i8* %_secret_dynarrarg492, i32 %_secret_andtmp497)
  %_secret_arrview498 = alloca i8*
  %_secret_source_gep499 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i8 0, i8 16
  store i8* %_secret_source_gep499, i8** %_secret_arrview498
  %_secret_arrview500 = alloca i8*
  %_secret_source_gep501 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i8 0, i8 16
  store i8* %_secret_source_gep501, i8** %_secret_arrview500
  %_secret_dynarrarg502 = load i8*, i8** %_secret_arrview500
  %_public_structgep503 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep504 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep503, i32 0, i32 4
  %_secret_lval505 = load i32, i32* %_secret_structgep504
  %_secret_lval506 = load i32, i32* %_secret___v39_mask_
  %_secret_andtmp507 = and i32 %_secret_lval505, %_secret_lval506
  call void @pmac_oreq(i8* %_secret_dynarrarg502, i32 %_secret_andtmp507)
  %_secret_arrview508 = alloca i8*
  %_secret_source_gep509 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i8 0, i8 0
  store i8* %_secret_source_gep509, i8** %_secret_arrview508
  %_secret_arrview510 = alloca i8*
  %_secret_source_gep511 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i8 0, i8 0
  store i8* %_secret_source_gep511, i8** %_secret_arrview510
  %_secret_dynarrarg512 = load i8*, i8** %_secret_arrview510
  %_secret_arrview513 = alloca i8*
  %_secret_source_gep514 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i8 0, i8 0
  store i8* %_secret_source_gep514, i8** %_secret_arrview513
  %_secret_arrview515 = alloca i8*
  %_secret_source_gep516 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i8 0, i8 0
  store i8* %_secret_source_gep516, i8** %_secret_arrview515
  %_secret_dynarrarg517 = load i8*, i8** %_secret_arrview515
  %_secret_calltmp518 = call i32 @_load32_le(i8* %_secret_dynarrarg517)
  %_secret_calltmp519 = call i32 @bswap4(i32 %_secret_calltmp518)
  call void @_store32_le(i8* %_secret_dynarrarg512, i32 %_secret_calltmp519)
  %_secret_arrview520 = alloca i8*
  %_secret_source_gep521 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i8 0, i8 4
  store i8* %_secret_source_gep521, i8** %_secret_arrview520
  %_secret_arrview522 = alloca i8*
  %_secret_source_gep523 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i8 0, i8 4
  store i8* %_secret_source_gep523, i8** %_secret_arrview522
  %_secret_dynarrarg524 = load i8*, i8** %_secret_arrview522
  %_secret_arrview525 = alloca i8*
  %_secret_source_gep526 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i8 0, i8 4
  store i8* %_secret_source_gep526, i8** %_secret_arrview525
  %_secret_arrview527 = alloca i8*
  %_secret_source_gep528 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i8 0, i8 4
  store i8* %_secret_source_gep528, i8** %_secret_arrview527
  %_secret_dynarrarg529 = load i8*, i8** %_secret_arrview527
  %_secret_calltmp530 = call i32 @_load32_le(i8* %_secret_dynarrarg529)
  %_secret_calltmp531 = call i32 @bswap4(i32 %_secret_calltmp530)
  call void @_store32_le(i8* %_secret_dynarrarg524, i32 %_secret_calltmp531)
  %_secret_arrview532 = alloca i8*
  %_secret_source_gep533 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i8 0, i8 8
  store i8* %_secret_source_gep533, i8** %_secret_arrview532
  %_secret_arrview534 = alloca i8*
  %_secret_source_gep535 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i8 0, i8 8
  store i8* %_secret_source_gep535, i8** %_secret_arrview534
  %_secret_dynarrarg536 = load i8*, i8** %_secret_arrview534
  %_secret_arrview537 = alloca i8*
  %_secret_source_gep538 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i8 0, i8 8
  store i8* %_secret_source_gep538, i8** %_secret_arrview537
  %_secret_arrview539 = alloca i8*
  %_secret_source_gep540 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i8 0, i8 8
  store i8* %_secret_source_gep540, i8** %_secret_arrview539
  %_secret_dynarrarg541 = load i8*, i8** %_secret_arrview539
  %_secret_calltmp542 = call i32 @_load32_le(i8* %_secret_dynarrarg541)
  %_secret_calltmp543 = call i32 @bswap4(i32 %_secret_calltmp542)
  call void @_store32_le(i8* %_secret_dynarrarg536, i32 %_secret_calltmp543)
  %_secret_arrview544 = alloca i8*
  %_secret_source_gep545 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i8 0, i8 12
  store i8* %_secret_source_gep545, i8** %_secret_arrview544
  %_secret_arrview546 = alloca i8*
  %_secret_source_gep547 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i8 0, i8 12
  store i8* %_secret_source_gep547, i8** %_secret_arrview546
  %_secret_dynarrarg548 = load i8*, i8** %_secret_arrview546
  %_secret_arrview549 = alloca i8*
  %_secret_source_gep550 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i8 0, i8 12
  store i8* %_secret_source_gep550, i8** %_secret_arrview549
  %_secret_arrview551 = alloca i8*
  %_secret_source_gep552 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i8 0, i8 12
  store i8* %_secret_source_gep552, i8** %_secret_arrview551
  %_secret_dynarrarg553 = load i8*, i8** %_secret_arrview551
  %_secret_calltmp554 = call i32 @_load32_le(i8* %_secret_dynarrarg553)
  %_secret_calltmp555 = call i32 @bswap4(i32 %_secret_calltmp554)
  call void @_store32_le(i8* %_secret_dynarrarg548, i32 %_secret_calltmp555)
  %_secret_arrview556 = alloca i8*
  %_secret_source_gep557 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i8 0, i8 16
  store i8* %_secret_source_gep557, i8** %_secret_arrview556
  %_secret_arrview558 = alloca i8*
  %_secret_source_gep559 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i8 0, i8 16
  store i8* %_secret_source_gep559, i8** %_secret_arrview558
  %_secret_dynarrarg560 = load i8*, i8** %_secret_arrview558
  %_secret_arrview561 = alloca i8*
  %_secret_source_gep562 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i8 0, i8 16
  store i8* %_secret_source_gep562, i8** %_secret_arrview561
  %_secret_arrview563 = alloca i8*
  %_secret_source_gep564 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i8 0, i8 16
  store i8* %_secret_source_gep564, i8** %_secret_arrview563
  %_secret_dynarrarg565 = load i8*, i8** %_secret_arrview563
  %_secret_calltmp566 = call i32 @_load32_le(i8* %_secret_dynarrarg565)
  %_secret_calltmp567 = call i32 @bswap4(i32 %_secret_calltmp566)
  call void @_store32_le(i8* %_secret_dynarrarg560, i32 %_secret_calltmp567)
  %_public_lval568 = load i32, i32* %_public___v14__len
  %_public_lval569 = load i32, i32* %_public___v8_SHA_DIGEST_LENGTH
  %_public_addtmp570 = add i32 %_public_lval568, %_public_lval569
  store i32 %_public_addtmp570, i32* %_public___v14__len
  %_public_structgep571 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_public_structgep572 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 2
  call void @_structcopy_SHA_CTX(%SHA_CTX* %_public_structgep571, %SHA_CTX* %_public_structgep572)
  %_public_structgep573 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep574 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep573, i32 0, i32 0
  %_secret_arrtoptr575 = bitcast [20 x i8]* %_secret___v31_pmac to i8*
  call void @_sha1_update(i32* %_secret_structgep574, i8* %_secret_arrtoptr575, i64 20)
  %_secret_arrtoptr576 = bitcast [20 x i8]* %_secret___v31_pmac to i8*
  %_public_structgep577 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep578 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep577, i32 0, i32 0
  call void @SHA1_Final(i8* %_secret_arrtoptr576, i32* %_secret_structgep578)
  %_public_lval579 = load i32, i32* %_public___v13_outp
  %_secret_lval580 = load i32, i32* %_secret___v24_inp_len
  %_secret_addtmp581 = add i32 %_public_lval579, %_secret_lval580
  store i32 %_secret_addtmp581, i32* %_secret___v40_s_outp
  %_public_lval582 = load i32, i32* %_public___v14__len
  %_secret_lval583 = load i32, i32* %_secret___v24_inp_len
  %_secret_subtmp584 = sub i32 %_public_lval582, %_secret_lval583
  store i32 %_secret_subtmp584, i32* %_secret___v41_s_len
  %_public_lval585 = load i32, i32* %_public____out_len
  %_public_subtmp586 = sub i32 %_public_lval585, 1
  %_public_lval587 = load i32, i32* %_public___v22_maxpad
  %_public_subtmp588 = sub i32 %_public_subtmp586, %_public_lval587
  %_public_lval589 = load i32, i32* %_public___v8_SHA_DIGEST_LENGTH
  %_public_subtmp590 = sub i32 %_public_subtmp588, %_public_lval589
  store i32 %_public_subtmp590, i32* %_public___v42_p_outp
  %_secret_lval591 = load i32, i32* %_secret___v40_s_outp
  %_public_lval592 = load i32, i32* %_public___v42_p_outp
  %_secret_subtmp593 = sub i32 %_secret_lval591, %_public_lval592
  store i32 %_secret_subtmp593, i32* %_secret___v43_off
  %_public_lval594 = load i32, i32* %_public___v22_maxpad
  %_public_lval595 = load i32, i32* %_public___v8_SHA_DIGEST_LENGTH
  %_public_addtmp596 = add i32 %_public_lval594, %_public_lval595
  store i32 %_public_addtmp596, i32* %_public___v22_maxpad
  store i32 0, i32* %_secret___v44_s_res
  store i32 0, i32* %_secret___v45_i
  store i32 0, i32* %_public___v46_j
  br label %loop_check597

loop_check597:                                    ; preds = %loop_body598, %branchmerge428
  %_public_lval600 = load i32, i32* %_public___v46_j
  %_public_lval601 = load i32, i32* %_public___v22_maxpad
  %_public_ulttmp602 = icmp ult i32 %_public_lval600, %_public_lval601
  br i1 %_public_ulttmp602, label %loop_body598, label %loop_end599

loop_body598:                                     ; preds = %loop_check597
  %_public_lval603 = load i32, i32* %_public___v42_p_outp
  %_public_lval604 = load i32, i32* %_public___v46_j
  %_public_addtmp605 = add i32 %_public_lval603, %_public_lval604
  %_secret_dyn606 = load i8*, i8** %_secret_arrarg2
  %_secret_ptr607 = getelementptr inbounds i8, i8* %_secret_dyn606, i32 %_public_addtmp605
  %_secret_lval608 = load i8, i8* %_secret_ptr607
  %_secret_zexttmp609 = zext i8 %_secret_lval608 to i32
  store i32 %_secret_zexttmp609, i32* %_secret___v47_c
  %_public_lval610 = load i32, i32* %_public___v46_j
  %_secret_lval611 = load i32, i32* %_secret___v43_off
  %_secret_subtmp612 = sub i32 %_public_lval610, %_secret_lval611
  %_public_lval613 = load i32, i32* %_public___v8_SHA_DIGEST_LENGTH
  %_secret_subtmp614 = sub i32 %_secret_subtmp612, %_public_lval613
  %_secret_arshift615 = ashr i32 %_secret_subtmp614, 31
  store i32 %_secret_arshift615, i32* %_secret___v48_cmask
  %_secret_lval616 = load i32, i32* %_secret___v44_s_res
  %_secret_lval617 = load i32, i32* %_secret___v47_c
  %_secret_lval618 = load i32, i32* %_secret___v21_pad
  %_secret_xortmp = xor i32 %_secret_lval617, %_secret_lval618
  %_secret_lval619 = load i32, i32* %_secret___v48_cmask
  %_secret_bnottmp620 = xor i32 %_secret_lval619, -1
  %_secret_andtmp621 = and i32 %_secret_xortmp, %_secret_bnottmp620
  %_secret_ortmp622 = or i32 %_secret_lval616, %_secret_andtmp621
  store i32 %_secret_ortmp622, i32* %_secret___v44_s_res
  %_secret_lval623 = load i32, i32* %_secret___v48_cmask
  %_secret_lval624 = load i32, i32* %_secret___v43_off
  %_secret_subtmp625 = sub i32 %_secret_lval624, 1
  %_public_lval626 = load i32, i32* %_public___v46_j
  %_secret_subtmp627 = sub i32 %_secret_subtmp625, %_public_lval626
  %_secret_arshift628 = ashr i32 %_secret_subtmp627, 31
  %_secret_andtmp629 = and i32 %_secret_lval623, %_secret_arshift628
  store i32 %_secret_andtmp629, i32* %_secret___v48_cmask
  %_secret_lval630 = load i32, i32* %_secret___v44_s_res
  %_secret_lval631 = load i32, i32* %_secret___v47_c
  %_declassified__secret_lval632 = load i32, i32* %_secret___v45_i
  %_secret_ptr633 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i32 0, i32 %_declassified__secret_lval632
  %_secret_lval634 = load i8, i8* %_secret_ptr633
  %_secret_rhssext635 = zext i8 %_secret_lval634 to i32
  %_secret_xortmp636 = xor i32 %_secret_lval631, %_secret_rhssext635
  %_secret_lval637 = load i32, i32* %_secret___v48_cmask
  %_secret_andtmp638 = and i32 %_secret_xortmp636, %_secret_lval637
  %_secret_ortmp639 = or i32 %_secret_lval630, %_secret_andtmp638
  store i32 %_secret_ortmp639, i32* %_secret___v44_s_res
  %_secret_lval640 = load i32, i32* %_secret___v45_i
  %_secret_lval641 = load i32, i32* %_secret___v48_cmask
  %_secret_andtmp642 = and i32 1, %_secret_lval641
  %_secret_truncbinop643 = trunc i32 %_secret_andtmp642 to i8
  %_secret_rhssext644 = zext i8 %_secret_truncbinop643 to i32
  %_secret_addtmp645 = add i32 %_secret_lval640, %_secret_rhssext644
  store i32 %_secret_addtmp645, i32* %_secret___v45_i
  %_public_lval646 = load i32, i32* %_public___v46_j
  %_public_addtmp647 = add i32 %_public_lval646, 1
  store i32 %_public_addtmp647, i32* %_public___v46_j
  br label %loop_check597

loop_end599:                                      ; preds = %loop_check597
  %_public_lval648 = load i32, i32* %_public___v22_maxpad
  %_public_lval649 = load i32, i32* %_public___v8_SHA_DIGEST_LENGTH
  %_public_subtmp650 = sub i32 %_public_lval648, %_public_lval649
  store i32 %_public_subtmp650, i32* %_public___v22_maxpad
  %_secret_lval651 = load i32, i32* %_secret___v44_s_res
  %_secret_subtmp652 = sub i32 0, %_secret_lval651
  %_secret_lrshift653 = lshr i32 %_secret_subtmp652, 31
  %_secret_subtmp654 = sub i32 0, %_secret_lrshift653
  store i32 %_secret_subtmp654, i32* %_secret___v44_s_res
  %_secret_lval655 = load i32, i32* %_secret___v15_ret
  %_secret_lval656 = load i32, i32* %_secret___v44_s_res
  %_secret_bnottmp657 = xor i32 %_secret_lval656, -1
  %_secret_andtmp658 = and i32 %_secret_lval655, %_secret_bnottmp657
  store i32 %_secret_andtmp658, i32* %_secret___v15_ret
  %_secret_lval659 = load i32, i32* %_secret___v15_ret
  store i32 %_secret_lval659, i32* %_secret___rval
  %_secret_lval660 = load i32, i32* %_secret___rval
  ret i32 %_secret_lval660
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
