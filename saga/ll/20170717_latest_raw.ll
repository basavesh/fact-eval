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
  %_secret_ldedviewptr = load i8*, i8** %_secret_arrarg5
  %_secret_source_gep = getelementptr inbounds i8, i8* %_secret_ldedviewptr, i32 %_public_lval42
  %_secret_arrviewdyn = alloca i8*
  store i8* %_secret_source_gep, i8** %_secret_arrviewdyn
  %_public_lval43 = load i32, i32* %_public___v12_inp
  %_secret_ldedviewptr44 = load i8*, i8** %_secret_arrarg5
  %_secret_source_gep45 = getelementptr inbounds i8, i8* %_secret_ldedviewptr44, i32 %_public_lval43
  %_secret_arrviewdyn46 = alloca i8*
  store i8* %_secret_source_gep45, i8** %_secret_arrviewdyn46
  %_secret_dynarrarg47 = load i8*, i8** %_secret_arrviewdyn46
  %_public_lval48 = load i32, i32* %_public___v13_outp
  %_secret_ldedviewptr49 = load i8*, i8** %_secret_arrarg2
  %_secret_source_gep50 = getelementptr inbounds i8, i8* %_secret_ldedviewptr49, i32 %_public_lval48
  %_secret_arrviewdyn51 = alloca i8*
  store i8* %_secret_source_gep50, i8** %_secret_arrviewdyn51
  %_public_lval52 = load i32, i32* %_public___v13_outp
  %_secret_ldedviewptr53 = load i8*, i8** %_secret_arrarg2
  %_secret_source_gep54 = getelementptr inbounds i8, i8* %_secret_ldedviewptr53, i32 %_public_lval52
  %_secret_arrviewdyn55 = alloca i8*
  store i8* %_secret_source_gep54, i8** %_secret_arrviewdyn55
  %_secret_dynarrarg56 = load i8*, i8** %_secret_arrviewdyn55
  %_public_lval57 = load i32, i32* %_public___v14__len
  %_public_zexttmp = zext i32 %_public_lval57 to i64
  %_public_structgep = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 0
  %_secret_structgep = getelementptr inbounds %AES_KEY, %AES_KEY* %_public_structgep, i32 0, i32 0
  %_public_structgep58 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 0
  %_secret_structgep59 = getelementptr inbounds %AES_KEY, %AES_KEY* %_public_structgep58, i32 0, i32 0
  %_secret_arrtoptr = bitcast [60 x i32]* %_secret_structgep59 to i32*
  %_secret_dynarrarg60 = load i8*, i8** %_secret_arrarg
  call void @aesni_cbc_encrypt(i8* %_secret_dynarrarg47, i8* %_secret_dynarrarg56, i64 %_public_zexttmp, i32* %_secret_arrtoptr, i8* %_secret_dynarrarg60, i32 0)
  %_public_lval61 = load i32, i32* %_public____out_len
  %_public_subtmp62 = sub i32 %_public_lval61, 1
  %_secret_dyn = load i8*, i8** %_secret_arrarg2
  %_secret_ptr = getelementptr inbounds i8, i8* %_secret_dyn, i32 %_public_subtmp62
  %_secret_lval63 = load i8, i8* %_secret_ptr
  %_secret_zexttmp = zext i8 %_secret_lval63 to i32
  store i32 %_secret_zexttmp, i32* %_secret___v20_pad
  %_public_lval64 = load i32, i32* %_public___v14__len
  %_public_lval65 = load i32, i32* %_public___v8_SHA_DIGEST_LENGTH
  %_public_addtmp66 = add i32 %_public_lval65, 1
  %_public_subtmp67 = sub i32 %_public_lval64, %_public_addtmp66
  store i32 %_public_subtmp67, i32* %_public___v21_maxpad
  %_public_lval68 = load i32, i32* %_public___v21_maxpad
  %_public_lval69 = load i32, i32* %_public___v21_maxpad
  %_public_subtmp70 = sub i32 255, %_public_lval69
  %_public_arshift = ashr i32 %_public_subtmp70, 24
  %_public_ortmp = or i32 %_public_lval68, %_public_arshift
  store i32 %_public_ortmp, i32* %_public___v21_maxpad
  %_public_lval71 = load i32, i32* %_public___v21_maxpad
  %_public_andtmp = and i32 %_public_lval71, 255
  %_public_truncbinop = trunc i32 %_public_andtmp to i8
  %_public_zexttmp72 = zext i8 %_public_truncbinop to i32
  store i32 %_public_zexttmp72, i32* %_public___v21_maxpad
  %_public_lval73 = load i32, i32* %_public___v21_maxpad
  %_secret_lval74 = load i32, i32* %_secret___v20_pad
  %_secret_calltmp = call i32 @constant_time_ge(i32 %_public_lval73, i32 %_secret_lval74)
  store i32 %_secret_calltmp, i32* %_secret___v22_mask
  %_secret_lval75 = load i32, i32* %_secret___v15_ret
  %_secret_lval76 = load i32, i32* %_secret___v22_mask
  %_secret_andtmp = and i32 %_secret_lval75, %_secret_lval76
  store i32 %_secret_andtmp, i32* %_secret___v15_ret
  %_secret_lval77 = load i32, i32* %_secret___v22_mask
  %_secret_lval78 = load i32, i32* %_secret___v20_pad
  %_public_lval79 = load i32, i32* %_public___v21_maxpad
  %_secret_calltmp80 = call i32 @constant_time_select(i32 %_secret_lval77, i32 %_secret_lval78, i32 %_public_lval79)
  store i32 %_secret_calltmp80, i32* %_secret___v20_pad
  %_public_lval81 = load i32, i32* %_public___v14__len
  %_public_lval82 = load i32, i32* %_public___v8_SHA_DIGEST_LENGTH
  %_secret_lval83 = load i32, i32* %_secret___v20_pad
  %_secret_addtmp = add i32 %_public_lval82, %_secret_lval83
  %_secret_addtmp84 = add i32 %_secret_addtmp, 1
  %_secret_subtmp = sub i32 %_public_lval81, %_secret_addtmp84
  store i32 %_secret_subtmp, i32* %_secret___v23_inp_len
  %_secret_structgep85 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 5
  %_public_lval86 = load i64, i64* %_public_plen
  %_public_subtmp87 = sub i64 %_public_lval86, 2
  %_secret_ptr88 = getelementptr inbounds [16 x i8], [16 x i8]* %_secret_structgep85, i64 0, i64 %_public_subtmp87
  %_secret_lval89 = load i32, i32* %_secret___v23_inp_len
  %_secret_lrshift = lshr i32 %_secret_lval89, 8
  %_secret_ucast = trunc i32 %_secret_lrshift to i8
  store i8 %_secret_ucast, i8* %_secret_ptr88
  %_secret_structgep90 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 5
  %_public_lval91 = load i64, i64* %_public_plen
  %_public_subtmp92 = sub i64 %_public_lval91, 1
  %_secret_ptr93 = getelementptr inbounds [16 x i8], [16 x i8]* %_secret_structgep90, i64 0, i64 %_public_subtmp92
  %_secret_lval94 = load i32, i32* %_secret___v23_inp_len
  %_secret_lrshift95 = lshr i32 %_secret_lval94, 0
  %_secret_ucast96 = trunc i32 %_secret_lrshift95 to i8
  store i8 %_secret_ucast96, i8* %_secret_ptr93
  %_public_structgep97 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_public_structgep98 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 1
  call void @_structcopy_SHA_CTX(%SHA_CTX* %_public_structgep97, %SHA_CTX* %_public_structgep98)
  %_public_lval99 = load i64, i64* %_public_plen
  %_public_trunctmp = trunc i64 %_public_lval99 to i32
  store i32 %_public_trunctmp, i32* %_public___v25___v24_len
  %_public_structgep100 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep101 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep100, i32 0, i32 0
  %_secret_structgep102 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 5
  %_secret_arrview = alloca i8*
  %_secret_source_gep103 = getelementptr inbounds [16 x i8], [16 x i8]* %_secret_structgep102, i8 0, i8 0
  store i8* %_secret_source_gep103, i8** %_secret_arrview
  %_secret_structgep104 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 5
  %_secret_arrview105 = alloca i8*
  %_secret_source_gep106 = getelementptr inbounds [16 x i8], [16 x i8]* %_secret_structgep104, i8 0, i8 0
  store i8* %_secret_source_gep106, i8** %_secret_arrview105
  %_secret_dynarrarg107 = load i8*, i8** %_secret_arrview105
  %_public_lval108 = load i64, i64* %_public_plen
  call void @_sha1_update(i32* %_secret_structgep101, i8* %_secret_dynarrarg107, i64 %_public_lval108)
  %_public_lval109 = load i32, i32* %_public___v14__len
  %_public_lval110 = load i32, i32* %_public___v8_SHA_DIGEST_LENGTH
  %_public_subtmp111 = sub i32 %_public_lval109, %_public_lval110
  store i32 %_public_subtmp111, i32* %_public___v14__len
  %_public_lval112 = load i32, i32* %_public___v14__len
  %_public_lval113 = load i32, i32* %_public___v11_SHA_CBLOCK
  %_public_addtmp114 = add i32 256, %_public_lval113
  %_public_ugtetmp115 = icmp uge i32 %_public_lval112, %_public_addtmp114
  %_public_branchcompare116 = icmp eq i1 %_public_ugtetmp115, true
  br i1 %_public_branchcompare116, label %thenbranch117, label %elsebranch155

thenbranch117:                                    ; preds = %branchmerge39
  %_public_lval118 = load i32, i32* %_public___v14__len
  %_public_lval119 = load i32, i32* %_public___v11_SHA_CBLOCK
  %_public_addtmp120 = add i32 256, %_public_lval119
  %_public_subtmp121 = sub i32 %_public_lval118, %_public_addtmp120
  %_public_lval122 = load i32, i32* %_public___v11_SHA_CBLOCK
  %_public_subtmp123 = sub i32 0, %_public_lval122
  %_public_andtmp124 = and i32 %_public_subtmp121, %_public_subtmp123
  store i32 %_public_andtmp124, i32* %_public___v26_j
  %_public_lval125 = load i32, i32* %_public___v26_j
  %_public_lval126 = load i32, i32* %_public___v11_SHA_CBLOCK
  %_public_structgep127 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_public_structgep128 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep127, i32 0, i32 8
  %_public_lval129 = load i32, i32* %_public_structgep128
  %_public_subtmp130 = sub i32 %_public_lval126, %_public_lval129
  %_public_addtmp131 = add i32 %_public_lval125, %_public_subtmp130
  store i32 %_public_addtmp131, i32* %_public___v26_j
  %_public_lval132 = load i32, i32* %_public___v26_j
  store i32 %_public_lval132, i32* %_public___v28___v27_len
  %_public_structgep133 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep134 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep133, i32 0, i32 0
  %_public_lval135 = load i32, i32* %_public___v13_outp
  %_secret_ldedviewptr136 = load i8*, i8** %_secret_arrarg2
  %_secret_source_gep137 = getelementptr inbounds i8, i8* %_secret_ldedviewptr136, i32 %_public_lval135
  %_secret_arrviewdyn138 = alloca i8*
  store i8* %_secret_source_gep137, i8** %_secret_arrviewdyn138
  %_public_lval139 = load i32, i32* %_public___v13_outp
  %_secret_ldedviewptr140 = load i8*, i8** %_secret_arrarg2
  %_secret_source_gep141 = getelementptr inbounds i8, i8* %_secret_ldedviewptr140, i32 %_public_lval139
  %_secret_arrviewdyn142 = alloca i8*
  store i8* %_secret_source_gep141, i8** %_secret_arrviewdyn142
  %_secret_dynarrarg143 = load i8*, i8** %_secret_arrviewdyn142
  %_public_lval144 = load i32, i32* %_public___v26_j
  %_public_zexttmp145 = zext i32 %_public_lval144 to i64
  call void @_sha1_update(i32* %_secret_structgep134, i8* %_secret_dynarrarg143, i64 %_public_zexttmp145)
  %_public_lval146 = load i32, i32* %_public___v13_outp
  %_public_lval147 = load i32, i32* %_public___v26_j
  %_public_addtmp148 = add i32 %_public_lval146, %_public_lval147
  store i32 %_public_addtmp148, i32* %_public___v13_outp
  %_public_lval149 = load i32, i32* %_public___v14__len
  %_public_lval150 = load i32, i32* %_public___v26_j
  %_public_subtmp151 = sub i32 %_public_lval149, %_public_lval150
  store i32 %_public_subtmp151, i32* %_public___v14__len
  %_secret_lval152 = load i32, i32* %_secret___v23_inp_len
  %_public_lval153 = load i32, i32* %_public___v26_j
  %_secret_subtmp154 = sub i32 %_secret_lval152, %_public_lval153
  store i32 %_secret_subtmp154, i32* %_secret___v23_inp_len
  br label %branchmerge156

elsebranch155:                                    ; preds = %branchmerge39
  br label %branchmerge156

branchmerge156:                                   ; preds = %elsebranch155, %thenbranch117
  %_public_structgep157 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep158 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep157, i32 0, i32 5
  %_secret_lval159 = load i32, i32* %_secret_structgep158
  %_secret_lval160 = load i32, i32* %_secret___v23_inp_len
  %_secret_lshift = shl i32 %_secret_lval160, 3
  %_secret_addtmp161 = add i32 %_secret_lval159, %_secret_lshift
  store i32 %_secret_addtmp161, i32* %_secret___v29_bitlen
  %_secret_lval162 = load i32, i32* %_secret___v29_bitlen
  %_secret_calltmp163 = call i32 @bswap4(i32 %_secret_lval162)
  store i32 %_secret_calltmp163, i32* %_secret___v29_bitlen
  %_secret___v30_pmac = alloca [20 x i8], align 32
  %_secret_sourcecasted = bitcast [20 x i8]* %_secret___v30_pmac to i8*
  call void @llvm.memset.p0i8.i64(i8* %_secret_sourcecasted, i8 0, i64 20, i32 0, i1 false)
  %_public_structgep164 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_public_structgep165 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep164, i32 0, i32 8
  %_public_lval166 = load i32, i32* %_public_structgep165
  store i32 %_public_lval166, i32* %_public___v31_p_res
  store i32 0, i32* %_public___v32_j
  br label %loop_check

loop_check:                                       ; preds = %branchmerge295, %branchmerge156
  %_public_lval167 = load i32, i32* %_public___v32_j
  %_public_lval168 = load i32, i32* %_public___v14__len
  %_public_ulttmp169 = icmp ult i32 %_public_lval167, %_public_lval168
  br i1 %_public_ulttmp169, label %loop_body, label %loop_end

loop_body:                                        ; preds = %loop_check
  %_public_lval170 = load i32, i32* %_public___v13_outp
  %_public_lval171 = load i32, i32* %_public___v32_j
  %_public_addtmp172 = add i32 %_public_lval170, %_public_lval171
  %_secret_dyn173 = load i8*, i8** %_secret_arrarg2
  %_secret_ptr174 = getelementptr inbounds i8, i8* %_secret_dyn173, i32 %_public_addtmp172
  %_secret_lval175 = load i8, i8* %_secret_ptr174
  %_secret_zexttmp176 = zext i8 %_secret_lval175 to i32
  store i32 %_secret_zexttmp176, i32* %_secret___v33_c
  %_public_lval177 = load i32, i32* %_public___v32_j
  %_secret_lval178 = load i32, i32* %_secret___v23_inp_len
  %_secret_subtmp179 = sub i32 %_public_lval177, %_secret_lval178
  %_secret_arshift = ashr i32 %_secret_subtmp179, 24
  store i32 %_secret_arshift, i32* %_secret___v34_mask
  %_secret_lval180 = load i32, i32* %_secret___v33_c
  %_secret_lval181 = load i32, i32* %_secret___v34_mask
  %_secret_andtmp182 = and i32 %_secret_lval180, %_secret_lval181
  store i32 %_secret_andtmp182, i32* %_secret___v33_c
  %_secret_lval183 = load i32, i32* %_secret___v33_c
  %_secret_lval184 = load i32, i32* %_secret___v34_mask
  %_secret_bnottmp = xor i32 %_secret_lval184, -1
  %_secret_andtmp185 = and i32 128, %_secret_bnottmp
  %_secret_truncbinop = trunc i32 %_secret_andtmp185 to i8
  %_secret_lval186 = load i32, i32* %_secret___v23_inp_len
  %_public_lval187 = load i32, i32* %_public___v32_j
  %_secret_subtmp188 = sub i32 %_secret_lval186, %_public_lval187
  %_secret_lrshift189 = lshr i32 %_secret_subtmp188, 24
  %_secret_bnottmp190 = xor i32 %_secret_lrshift189, -1
  %_secret_lhssext = zext i8 %_secret_truncbinop to i32
  %_secret_andtmp191 = and i32 %_secret_lhssext, %_secret_bnottmp190
  %_secret_truncbinop192 = trunc i32 %_secret_andtmp191 to i8
  %_secret_rhssext = zext i8 %_secret_truncbinop192 to i32
  %_secret_ortmp = or i32 %_secret_lval183, %_secret_rhssext
  store i32 %_secret_ortmp, i32* %_secret___v33_c
  %_public_structgep193 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep194 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep193, i32 0, i32 7
  %_public_lval195 = load i32, i32* %_public___v31_p_res
  %_secret_ptr196 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep194, i32 0, i32 %_public_lval195
  %_secret_lval197 = load i32, i32* %_secret___v33_c
  %_secret_ucast198 = trunc i32 %_secret_lval197 to i8
  store i8 %_secret_ucast198, i8* %_secret_ptr196
  %_public_lval199 = load i32, i32* %_public___v31_p_res
  %_public_addtmp200 = add i32 %_public_lval199, 1
  store i32 %_public_addtmp200, i32* %_public___v31_p_res
  %_public_lval201 = load i32, i32* %_public___v31_p_res
  %_public_lval202 = load i32, i32* %_public___v11_SHA_CBLOCK
  %_public_eqtmp = icmp eq i32 %_public_lval201, %_public_lval202
  %_public_branchcompare203 = icmp eq i1 %_public_eqtmp, true
  br i1 %_public_branchcompare203, label %thenbranch204, label %elsebranch294

loop_end:                                         ; preds = %loop_check
  %_public_lval298 = load i32, i32* %_public___v14__len
  store i32 %_public_lval298, i32* %_public___v35_j
  %_public_lval302 = load i32, i32* %_public___v31_p_res
  store i32 %_public_lval302, i32* %_public___v36_i
  br label %loop_check299

thenbranch204:                                    ; preds = %loop_body
  %_secret_lval205 = load i32, i32* %_secret___v23_inp_len
  %_secret_addtmp206 = add i32 %_secret_lval205, 7
  %_public_lval207 = load i32, i32* %_public___v32_j
  %_secret_subtmp208 = sub i32 %_secret_addtmp206, %_public_lval207
  %_secret_lrshift209 = lshr i32 %_secret_subtmp208, 31
  %_secret_subtmp210 = sub i32 0, %_secret_lrshift209
  store i32 %_secret_subtmp210, i32* %_secret___v34_mask
  %_public_lval211 = load i32, i32* %_public___v10_SHA_LBLOCK
  %_public_subtmp212 = sub i32 %_public_lval211, 1
  %_public_multmp213 = mul i32 4, %_public_subtmp212
  %_public_structgep214 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep215 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep214, i32 0, i32 7
  %_secret_arrview216 = alloca i8*
  %_secret_source_gep217 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep215, i32 0, i32 %_public_multmp213
  store i8* %_secret_source_gep217, i8** %_secret_arrview216
  %_public_lval218 = load i32, i32* %_public___v10_SHA_LBLOCK
  %_public_subtmp219 = sub i32 %_public_lval218, 1
  %_public_multmp220 = mul i32 4, %_public_subtmp219
  %_public_structgep221 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep222 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep221, i32 0, i32 7
  %_secret_arrview223 = alloca i8*
  %_secret_source_gep224 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep222, i32 0, i32 %_public_multmp220
  store i8* %_secret_source_gep224, i8** %_secret_arrview223
  %_secret_dynarrarg225 = load i8*, i8** %_secret_arrview223
  %_secret_lval226 = load i32, i32* %_secret___v29_bitlen
  %_secret_lval227 = load i32, i32* %_secret___v34_mask
  %_secret_andtmp228 = and i32 %_secret_lval226, %_secret_lval227
  call void @pmac_oreq(i8* %_secret_dynarrarg225, i32 %_secret_andtmp228)
  %_public_structgep229 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep230 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep229, i32 0, i32 0
  %_public_structgep231 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep232 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep231, i32 0, i32 7
  %_public_structgep233 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep234 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep233, i32 0, i32 7
  %_secret_arrtoptr235 = bitcast [64 x i8]* %_secret_structgep234 to i8*
  call void @sha1_block_data_order(i32* %_secret_structgep230, i8* %_secret_arrtoptr235, i32 1)
  %_secret_lval236 = load i32, i32* %_secret___v34_mask
  %_public_lval237 = load i32, i32* %_public___v32_j
  %_secret_lval238 = load i32, i32* %_secret___v23_inp_len
  %_secret_subtmp239 = sub i32 %_public_lval237, %_secret_lval238
  %_secret_subtmp240 = sub i32 %_secret_subtmp239, 72
  %_secret_lrshift241 = lshr i32 %_secret_subtmp240, 31
  %_secret_subtmp242 = sub i32 0, %_secret_lrshift241
  %_secret_andtmp243 = and i32 %_secret_lval236, %_secret_subtmp242
  store i32 %_secret_andtmp243, i32* %_secret___v34_mask
  %_secret_arrview244 = alloca i8*
  %_secret_source_gep245 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i8 0, i8 0
  store i8* %_secret_source_gep245, i8** %_secret_arrview244
  %_secret_arrview246 = alloca i8*
  %_secret_source_gep247 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i8 0, i8 0
  store i8* %_secret_source_gep247, i8** %_secret_arrview246
  %_secret_dynarrarg248 = load i8*, i8** %_secret_arrview246
  %_public_structgep249 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep250 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep249, i32 0, i32 0
  %_secret_lval251 = load i32, i32* %_secret_structgep250
  %_secret_lval252 = load i32, i32* %_secret___v34_mask
  %_secret_andtmp253 = and i32 %_secret_lval251, %_secret_lval252
  call void @pmac_oreq(i8* %_secret_dynarrarg248, i32 %_secret_andtmp253)
  %_secret_arrview254 = alloca i8*
  %_secret_source_gep255 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i8 0, i8 4
  store i8* %_secret_source_gep255, i8** %_secret_arrview254
  %_secret_arrview256 = alloca i8*
  %_secret_source_gep257 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i8 0, i8 4
  store i8* %_secret_source_gep257, i8** %_secret_arrview256
  %_secret_dynarrarg258 = load i8*, i8** %_secret_arrview256
  %_public_structgep259 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep260 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep259, i32 0, i32 1
  %_secret_lval261 = load i32, i32* %_secret_structgep260
  %_secret_lval262 = load i32, i32* %_secret___v34_mask
  %_secret_andtmp263 = and i32 %_secret_lval261, %_secret_lval262
  call void @pmac_oreq(i8* %_secret_dynarrarg258, i32 %_secret_andtmp263)
  %_secret_arrview264 = alloca i8*
  %_secret_source_gep265 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i8 0, i8 8
  store i8* %_secret_source_gep265, i8** %_secret_arrview264
  %_secret_arrview266 = alloca i8*
  %_secret_source_gep267 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i8 0, i8 8
  store i8* %_secret_source_gep267, i8** %_secret_arrview266
  %_secret_dynarrarg268 = load i8*, i8** %_secret_arrview266
  %_public_structgep269 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep270 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep269, i32 0, i32 2
  %_secret_lval271 = load i32, i32* %_secret_structgep270
  %_secret_lval272 = load i32, i32* %_secret___v34_mask
  %_secret_andtmp273 = and i32 %_secret_lval271, %_secret_lval272
  call void @pmac_oreq(i8* %_secret_dynarrarg268, i32 %_secret_andtmp273)
  %_secret_arrview274 = alloca i8*
  %_secret_source_gep275 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i8 0, i8 12
  store i8* %_secret_source_gep275, i8** %_secret_arrview274
  %_secret_arrview276 = alloca i8*
  %_secret_source_gep277 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i8 0, i8 12
  store i8* %_secret_source_gep277, i8** %_secret_arrview276
  %_secret_dynarrarg278 = load i8*, i8** %_secret_arrview276
  %_public_structgep279 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep280 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep279, i32 0, i32 3
  %_secret_lval281 = load i32, i32* %_secret_structgep280
  %_secret_lval282 = load i32, i32* %_secret___v34_mask
  %_secret_andtmp283 = and i32 %_secret_lval281, %_secret_lval282
  call void @pmac_oreq(i8* %_secret_dynarrarg278, i32 %_secret_andtmp283)
  %_secret_arrview284 = alloca i8*
  %_secret_source_gep285 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i8 0, i8 16
  store i8* %_secret_source_gep285, i8** %_secret_arrview284
  %_secret_arrview286 = alloca i8*
  %_secret_source_gep287 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i8 0, i8 16
  store i8* %_secret_source_gep287, i8** %_secret_arrview286
  %_secret_dynarrarg288 = load i8*, i8** %_secret_arrview286
  %_public_structgep289 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep290 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep289, i32 0, i32 4
  %_secret_lval291 = load i32, i32* %_secret_structgep290
  %_secret_lval292 = load i32, i32* %_secret___v34_mask
  %_secret_andtmp293 = and i32 %_secret_lval291, %_secret_lval292
  call void @pmac_oreq(i8* %_secret_dynarrarg288, i32 %_secret_andtmp293)
  store i32 0, i32* %_public___v31_p_res
  br label %branchmerge295

elsebranch294:                                    ; preds = %loop_body
  br label %branchmerge295

branchmerge295:                                   ; preds = %elsebranch294, %thenbranch204
  %_public_lval296 = load i32, i32* %_public___v32_j
  %_public_addtmp297 = add i32 %_public_lval296, 1
  store i32 %_public_addtmp297, i32* %_public___v32_j
  br label %loop_check

loop_check299:                                    ; preds = %loop_body300, %loop_end
  %_public_lval303 = load i32, i32* %_public___v36_i
  %_public_lval304 = load i32, i32* %_public___v11_SHA_CBLOCK
  %_public_ulttmp305 = icmp ult i32 %_public_lval303, %_public_lval304
  br i1 %_public_ulttmp305, label %loop_body300, label %loop_end301

loop_body300:                                     ; preds = %loop_check299
  %_public_structgep306 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep307 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep306, i32 0, i32 7
  %_public_lval308 = load i32, i32* %_public___v36_i
  %_secret_ptr309 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep307, i32 0, i32 %_public_lval308
  store i8 0, i8* %_secret_ptr309
  %_public_lval310 = load i32, i32* %_public___v35_j
  %_public_addtmp311 = add i32 %_public_lval310, 1
  store i32 %_public_addtmp311, i32* %_public___v35_j
  %_public_lval312 = load i32, i32* %_public___v36_i
  %_public_addtmp313 = add i32 %_public_lval312, 1
  store i32 %_public_addtmp313, i32* %_public___v36_i
  br label %loop_check299

loop_end301:                                      ; preds = %loop_check299
  %_public_lval314 = load i32, i32* %_public___v31_p_res
  %_public_lval315 = load i32, i32* %_public___v11_SHA_CBLOCK
  %_public_subtmp316 = sub i32 %_public_lval315, 8
  %_public_ugttmp = icmp ugt i32 %_public_lval314, %_public_subtmp316
  %_public_branchcompare317 = icmp eq i1 %_public_ugttmp, true
  br i1 %_public_branchcompare317, label %thenbranch318, label %elsebranch415

thenbranch318:                                    ; preds = %loop_end301
  %_secret_lval319 = load i32, i32* %_secret___v23_inp_len
  %_secret_addtmp320 = add i32 %_secret_lval319, 8
  %_public_lval321 = load i32, i32* %_public___v35_j
  %_secret_subtmp322 = sub i32 %_secret_addtmp320, %_public_lval321
  %_secret_lrshift323 = lshr i32 %_secret_subtmp322, 31
  %_secret_subtmp324 = sub i32 0, %_secret_lrshift323
  store i32 %_secret_subtmp324, i32* %_secret___v37_mask
  %_public_lval325 = load i32, i32* %_public___v10_SHA_LBLOCK
  %_public_subtmp326 = sub i32 %_public_lval325, 1
  %_public_multmp327 = mul i32 4, %_public_subtmp326
  %_public_structgep328 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep329 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep328, i32 0, i32 7
  %_secret_arrview330 = alloca i8*
  %_secret_source_gep331 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep329, i32 0, i32 %_public_multmp327
  store i8* %_secret_source_gep331, i8** %_secret_arrview330
  %_public_lval332 = load i32, i32* %_public___v10_SHA_LBLOCK
  %_public_subtmp333 = sub i32 %_public_lval332, 1
  %_public_multmp334 = mul i32 4, %_public_subtmp333
  %_public_structgep335 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep336 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep335, i32 0, i32 7
  %_secret_arrview337 = alloca i8*
  %_secret_source_gep338 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep336, i32 0, i32 %_public_multmp334
  store i8* %_secret_source_gep338, i8** %_secret_arrview337
  %_secret_dynarrarg339 = load i8*, i8** %_secret_arrview337
  %_secret_lval340 = load i32, i32* %_secret___v29_bitlen
  %_secret_lval341 = load i32, i32* %_secret___v37_mask
  %_secret_andtmp342 = and i32 %_secret_lval340, %_secret_lval341
  call void @pmac_oreq(i8* %_secret_dynarrarg339, i32 %_secret_andtmp342)
  %_public_structgep343 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep344 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep343, i32 0, i32 0
  %_public_structgep345 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep346 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep345, i32 0, i32 7
  %_public_structgep347 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep348 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep347, i32 0, i32 7
  %_secret_arrtoptr349 = bitcast [64 x i8]* %_secret_structgep348 to i8*
  call void @sha1_block_data_order(i32* %_secret_structgep344, i8* %_secret_arrtoptr349, i32 1)
  %_secret_lval350 = load i32, i32* %_secret___v37_mask
  %_public_lval351 = load i32, i32* %_public___v35_j
  %_secret_lval352 = load i32, i32* %_secret___v23_inp_len
  %_secret_subtmp353 = sub i32 %_public_lval351, %_secret_lval352
  %_secret_subtmp354 = sub i32 %_secret_subtmp353, 72
  %_secret_lrshift355 = lshr i32 %_secret_subtmp354, 31
  %_secret_subtmp356 = sub i32 0, %_secret_lrshift355
  %_secret_andtmp357 = and i32 %_secret_lval350, %_secret_subtmp356
  store i32 %_secret_andtmp357, i32* %_secret___v37_mask
  %_secret_arrview358 = alloca i8*
  %_secret_source_gep359 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i8 0, i8 0
  store i8* %_secret_source_gep359, i8** %_secret_arrview358
  %_secret_arrview360 = alloca i8*
  %_secret_source_gep361 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i8 0, i8 0
  store i8* %_secret_source_gep361, i8** %_secret_arrview360
  %_secret_dynarrarg362 = load i8*, i8** %_secret_arrview360
  %_public_structgep363 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep364 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep363, i32 0, i32 0
  %_secret_lval365 = load i32, i32* %_secret_structgep364
  %_secret_lval366 = load i32, i32* %_secret___v37_mask
  %_secret_andtmp367 = and i32 %_secret_lval365, %_secret_lval366
  call void @pmac_oreq(i8* %_secret_dynarrarg362, i32 %_secret_andtmp367)
  %_secret_arrview368 = alloca i8*
  %_secret_source_gep369 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i8 0, i8 4
  store i8* %_secret_source_gep369, i8** %_secret_arrview368
  %_secret_arrview370 = alloca i8*
  %_secret_source_gep371 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i8 0, i8 4
  store i8* %_secret_source_gep371, i8** %_secret_arrview370
  %_secret_dynarrarg372 = load i8*, i8** %_secret_arrview370
  %_public_structgep373 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep374 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep373, i32 0, i32 1
  %_secret_lval375 = load i32, i32* %_secret_structgep374
  %_secret_lval376 = load i32, i32* %_secret___v37_mask
  %_secret_andtmp377 = and i32 %_secret_lval375, %_secret_lval376
  call void @pmac_oreq(i8* %_secret_dynarrarg372, i32 %_secret_andtmp377)
  %_secret_arrview378 = alloca i8*
  %_secret_source_gep379 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i8 0, i8 8
  store i8* %_secret_source_gep379, i8** %_secret_arrview378
  %_secret_arrview380 = alloca i8*
  %_secret_source_gep381 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i8 0, i8 8
  store i8* %_secret_source_gep381, i8** %_secret_arrview380
  %_secret_dynarrarg382 = load i8*, i8** %_secret_arrview380
  %_public_structgep383 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep384 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep383, i32 0, i32 2
  %_secret_lval385 = load i32, i32* %_secret_structgep384
  %_secret_lval386 = load i32, i32* %_secret___v37_mask
  %_secret_andtmp387 = and i32 %_secret_lval385, %_secret_lval386
  call void @pmac_oreq(i8* %_secret_dynarrarg382, i32 %_secret_andtmp387)
  %_secret_arrview388 = alloca i8*
  %_secret_source_gep389 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i8 0, i8 12
  store i8* %_secret_source_gep389, i8** %_secret_arrview388
  %_secret_arrview390 = alloca i8*
  %_secret_source_gep391 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i8 0, i8 12
  store i8* %_secret_source_gep391, i8** %_secret_arrview390
  %_secret_dynarrarg392 = load i8*, i8** %_secret_arrview390
  %_public_structgep393 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep394 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep393, i32 0, i32 3
  %_secret_lval395 = load i32, i32* %_secret_structgep394
  %_secret_lval396 = load i32, i32* %_secret___v37_mask
  %_secret_andtmp397 = and i32 %_secret_lval395, %_secret_lval396
  call void @pmac_oreq(i8* %_secret_dynarrarg392, i32 %_secret_andtmp397)
  %_secret_arrview398 = alloca i8*
  %_secret_source_gep399 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i8 0, i8 16
  store i8* %_secret_source_gep399, i8** %_secret_arrview398
  %_secret_arrview400 = alloca i8*
  %_secret_source_gep401 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i8 0, i8 16
  store i8* %_secret_source_gep401, i8** %_secret_arrview400
  %_secret_dynarrarg402 = load i8*, i8** %_secret_arrview400
  %_public_structgep403 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep404 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep403, i32 0, i32 4
  %_secret_lval405 = load i32, i32* %_secret_structgep404
  %_secret_lval406 = load i32, i32* %_secret___v37_mask
  %_secret_andtmp407 = and i32 %_secret_lval405, %_secret_lval406
  call void @pmac_oreq(i8* %_secret_dynarrarg402, i32 %_secret_andtmp407)
  %_public_structgep408 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep409 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep408, i32 0, i32 7
  %_public_structgep410 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep411 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep410, i32 0, i32 7
  %_secret_arrtoptr412 = bitcast [64 x i8]* %_secret_structgep411 to i8*
  call void @_memzero(i8* %_secret_arrtoptr412, i32 64)
  %_public_lval413 = load i32, i32* %_public___v35_j
  %_public_addtmp414 = add i32 %_public_lval413, 64
  store i32 %_public_addtmp414, i32* %_public___v35_j
  br label %branchmerge416

elsebranch415:                                    ; preds = %loop_end301
  br label %branchmerge416

branchmerge416:                                   ; preds = %elsebranch415, %thenbranch318
  %_public_lval417 = load i32, i32* %_public___v10_SHA_LBLOCK
  %_public_subtmp418 = sub i32 %_public_lval417, 1
  %_public_multmp419 = mul i32 4, %_public_subtmp418
  %_public_structgep420 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep421 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep420, i32 0, i32 7
  %_secret_arrview422 = alloca i8*
  %_secret_source_gep423 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep421, i32 0, i32 %_public_multmp419
  store i8* %_secret_source_gep423, i8** %_secret_arrview422
  %_public_lval424 = load i32, i32* %_public___v10_SHA_LBLOCK
  %_public_subtmp425 = sub i32 %_public_lval424, 1
  %_public_multmp426 = mul i32 4, %_public_subtmp425
  %_public_structgep427 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep428 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep427, i32 0, i32 7
  %_secret_arrview429 = alloca i8*
  %_secret_source_gep430 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep428, i32 0, i32 %_public_multmp426
  store i8* %_secret_source_gep430, i8** %_secret_arrview429
  %_secret_dynarrarg431 = load i8*, i8** %_secret_arrview429
  %_secret_lval432 = load i32, i32* %_secret___v29_bitlen
  call void @_store32_le(i8* %_secret_dynarrarg431, i32 %_secret_lval432)
  %_public_structgep433 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep434 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep433, i32 0, i32 0
  %_public_structgep435 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep436 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep435, i32 0, i32 7
  %_public_structgep437 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep438 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep437, i32 0, i32 7
  %_secret_arrtoptr439 = bitcast [64 x i8]* %_secret_structgep438 to i8*
  call void @sha1_block_data_order(i32* %_secret_structgep434, i8* %_secret_arrtoptr439, i32 1)
  %_public_lval440 = load i32, i32* %_public___v35_j
  %_secret_lval441 = load i32, i32* %_secret___v23_inp_len
  %_secret_subtmp442 = sub i32 %_public_lval440, %_secret_lval441
  %_secret_subtmp443 = sub i32 %_secret_subtmp442, 72
  %_secret_lrshift444 = lshr i32 %_secret_subtmp443, 31
  %_secret_subtmp445 = sub i32 0, %_secret_lrshift444
  store i32 %_secret_subtmp445, i32* %_secret___v38_mask_
  %_secret_arrview446 = alloca i8*
  %_secret_source_gep447 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i8 0, i8 0
  store i8* %_secret_source_gep447, i8** %_secret_arrview446
  %_secret_arrview448 = alloca i8*
  %_secret_source_gep449 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i8 0, i8 0
  store i8* %_secret_source_gep449, i8** %_secret_arrview448
  %_secret_dynarrarg450 = load i8*, i8** %_secret_arrview448
  %_public_structgep451 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep452 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep451, i32 0, i32 0
  %_secret_lval453 = load i32, i32* %_secret_structgep452
  %_secret_lval454 = load i32, i32* %_secret___v38_mask_
  %_secret_andtmp455 = and i32 %_secret_lval453, %_secret_lval454
  call void @pmac_oreq(i8* %_secret_dynarrarg450, i32 %_secret_andtmp455)
  %_secret_arrview456 = alloca i8*
  %_secret_source_gep457 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i8 0, i8 4
  store i8* %_secret_source_gep457, i8** %_secret_arrview456
  %_secret_arrview458 = alloca i8*
  %_secret_source_gep459 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i8 0, i8 4
  store i8* %_secret_source_gep459, i8** %_secret_arrview458
  %_secret_dynarrarg460 = load i8*, i8** %_secret_arrview458
  %_public_structgep461 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep462 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep461, i32 0, i32 1
  %_secret_lval463 = load i32, i32* %_secret_structgep462
  %_secret_lval464 = load i32, i32* %_secret___v38_mask_
  %_secret_andtmp465 = and i32 %_secret_lval463, %_secret_lval464
  call void @pmac_oreq(i8* %_secret_dynarrarg460, i32 %_secret_andtmp465)
  %_secret_arrview466 = alloca i8*
  %_secret_source_gep467 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i8 0, i8 8
  store i8* %_secret_source_gep467, i8** %_secret_arrview466
  %_secret_arrview468 = alloca i8*
  %_secret_source_gep469 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i8 0, i8 8
  store i8* %_secret_source_gep469, i8** %_secret_arrview468
  %_secret_dynarrarg470 = load i8*, i8** %_secret_arrview468
  %_public_structgep471 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep472 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep471, i32 0, i32 2
  %_secret_lval473 = load i32, i32* %_secret_structgep472
  %_secret_lval474 = load i32, i32* %_secret___v38_mask_
  %_secret_andtmp475 = and i32 %_secret_lval473, %_secret_lval474
  call void @pmac_oreq(i8* %_secret_dynarrarg470, i32 %_secret_andtmp475)
  %_secret_arrview476 = alloca i8*
  %_secret_source_gep477 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i8 0, i8 12
  store i8* %_secret_source_gep477, i8** %_secret_arrview476
  %_secret_arrview478 = alloca i8*
  %_secret_source_gep479 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i8 0, i8 12
  store i8* %_secret_source_gep479, i8** %_secret_arrview478
  %_secret_dynarrarg480 = load i8*, i8** %_secret_arrview478
  %_public_structgep481 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep482 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep481, i32 0, i32 3
  %_secret_lval483 = load i32, i32* %_secret_structgep482
  %_secret_lval484 = load i32, i32* %_secret___v38_mask_
  %_secret_andtmp485 = and i32 %_secret_lval483, %_secret_lval484
  call void @pmac_oreq(i8* %_secret_dynarrarg480, i32 %_secret_andtmp485)
  %_secret_arrview486 = alloca i8*
  %_secret_source_gep487 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i8 0, i8 16
  store i8* %_secret_source_gep487, i8** %_secret_arrview486
  %_secret_arrview488 = alloca i8*
  %_secret_source_gep489 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i8 0, i8 16
  store i8* %_secret_source_gep489, i8** %_secret_arrview488
  %_secret_dynarrarg490 = load i8*, i8** %_secret_arrview488
  %_public_structgep491 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep492 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep491, i32 0, i32 4
  %_secret_lval493 = load i32, i32* %_secret_structgep492
  %_secret_lval494 = load i32, i32* %_secret___v38_mask_
  %_secret_andtmp495 = and i32 %_secret_lval493, %_secret_lval494
  call void @pmac_oreq(i8* %_secret_dynarrarg490, i32 %_secret_andtmp495)
  %_secret_arrview496 = alloca i8*
  %_secret_source_gep497 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i8 0, i8 0
  store i8* %_secret_source_gep497, i8** %_secret_arrview496
  %_secret_arrview498 = alloca i8*
  %_secret_source_gep499 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i8 0, i8 0
  store i8* %_secret_source_gep499, i8** %_secret_arrview498
  %_secret_dynarrarg500 = load i8*, i8** %_secret_arrview498
  %_secret_arrview501 = alloca i8*
  %_secret_source_gep502 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i8 0, i8 0
  store i8* %_secret_source_gep502, i8** %_secret_arrview501
  %_secret_arrview503 = alloca i8*
  %_secret_source_gep504 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i8 0, i8 0
  store i8* %_secret_source_gep504, i8** %_secret_arrview503
  %_secret_dynarrarg505 = load i8*, i8** %_secret_arrview503
  %_secret_calltmp506 = call i32 @_load32_le(i8* %_secret_dynarrarg505)
  %_secret_calltmp507 = call i32 @bswap4(i32 %_secret_calltmp506)
  call void @_store32_le(i8* %_secret_dynarrarg500, i32 %_secret_calltmp507)
  %_secret_arrview508 = alloca i8*
  %_secret_source_gep509 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i8 0, i8 4
  store i8* %_secret_source_gep509, i8** %_secret_arrview508
  %_secret_arrview510 = alloca i8*
  %_secret_source_gep511 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i8 0, i8 4
  store i8* %_secret_source_gep511, i8** %_secret_arrview510
  %_secret_dynarrarg512 = load i8*, i8** %_secret_arrview510
  %_secret_arrview513 = alloca i8*
  %_secret_source_gep514 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i8 0, i8 4
  store i8* %_secret_source_gep514, i8** %_secret_arrview513
  %_secret_arrview515 = alloca i8*
  %_secret_source_gep516 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i8 0, i8 4
  store i8* %_secret_source_gep516, i8** %_secret_arrview515
  %_secret_dynarrarg517 = load i8*, i8** %_secret_arrview515
  %_secret_calltmp518 = call i32 @_load32_le(i8* %_secret_dynarrarg517)
  %_secret_calltmp519 = call i32 @bswap4(i32 %_secret_calltmp518)
  call void @_store32_le(i8* %_secret_dynarrarg512, i32 %_secret_calltmp519)
  %_secret_arrview520 = alloca i8*
  %_secret_source_gep521 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i8 0, i8 8
  store i8* %_secret_source_gep521, i8** %_secret_arrview520
  %_secret_arrview522 = alloca i8*
  %_secret_source_gep523 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i8 0, i8 8
  store i8* %_secret_source_gep523, i8** %_secret_arrview522
  %_secret_dynarrarg524 = load i8*, i8** %_secret_arrview522
  %_secret_arrview525 = alloca i8*
  %_secret_source_gep526 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i8 0, i8 8
  store i8* %_secret_source_gep526, i8** %_secret_arrview525
  %_secret_arrview527 = alloca i8*
  %_secret_source_gep528 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i8 0, i8 8
  store i8* %_secret_source_gep528, i8** %_secret_arrview527
  %_secret_dynarrarg529 = load i8*, i8** %_secret_arrview527
  %_secret_calltmp530 = call i32 @_load32_le(i8* %_secret_dynarrarg529)
  %_secret_calltmp531 = call i32 @bswap4(i32 %_secret_calltmp530)
  call void @_store32_le(i8* %_secret_dynarrarg524, i32 %_secret_calltmp531)
  %_secret_arrview532 = alloca i8*
  %_secret_source_gep533 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i8 0, i8 12
  store i8* %_secret_source_gep533, i8** %_secret_arrview532
  %_secret_arrview534 = alloca i8*
  %_secret_source_gep535 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i8 0, i8 12
  store i8* %_secret_source_gep535, i8** %_secret_arrview534
  %_secret_dynarrarg536 = load i8*, i8** %_secret_arrview534
  %_secret_arrview537 = alloca i8*
  %_secret_source_gep538 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i8 0, i8 12
  store i8* %_secret_source_gep538, i8** %_secret_arrview537
  %_secret_arrview539 = alloca i8*
  %_secret_source_gep540 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i8 0, i8 12
  store i8* %_secret_source_gep540, i8** %_secret_arrview539
  %_secret_dynarrarg541 = load i8*, i8** %_secret_arrview539
  %_secret_calltmp542 = call i32 @_load32_le(i8* %_secret_dynarrarg541)
  %_secret_calltmp543 = call i32 @bswap4(i32 %_secret_calltmp542)
  call void @_store32_le(i8* %_secret_dynarrarg536, i32 %_secret_calltmp543)
  %_secret_arrview544 = alloca i8*
  %_secret_source_gep545 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i8 0, i8 16
  store i8* %_secret_source_gep545, i8** %_secret_arrview544
  %_secret_arrview546 = alloca i8*
  %_secret_source_gep547 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i8 0, i8 16
  store i8* %_secret_source_gep547, i8** %_secret_arrview546
  %_secret_dynarrarg548 = load i8*, i8** %_secret_arrview546
  %_secret_arrview549 = alloca i8*
  %_secret_source_gep550 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i8 0, i8 16
  store i8* %_secret_source_gep550, i8** %_secret_arrview549
  %_secret_arrview551 = alloca i8*
  %_secret_source_gep552 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i8 0, i8 16
  store i8* %_secret_source_gep552, i8** %_secret_arrview551
  %_secret_dynarrarg553 = load i8*, i8** %_secret_arrview551
  %_secret_calltmp554 = call i32 @_load32_le(i8* %_secret_dynarrarg553)
  %_secret_calltmp555 = call i32 @bswap4(i32 %_secret_calltmp554)
  call void @_store32_le(i8* %_secret_dynarrarg548, i32 %_secret_calltmp555)
  %_public_lval556 = load i32, i32* %_public___v14__len
  %_public_lval557 = load i32, i32* %_public___v8_SHA_DIGEST_LENGTH
  %_public_addtmp558 = add i32 %_public_lval556, %_public_lval557
  store i32 %_public_addtmp558, i32* %_public___v14__len
  %_public_structgep559 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_public_structgep560 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 2
  call void @_structcopy_SHA_CTX(%SHA_CTX* %_public_structgep559, %SHA_CTX* %_public_structgep560)
  %_public_structgep561 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep562 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep561, i32 0, i32 0
  %_secret_arrtoptr563 = bitcast [20 x i8]* %_secret___v30_pmac to i8*
  call void @_sha1_update(i32* %_secret_structgep562, i8* %_secret_arrtoptr563, i64 20)
  %_secret_arrtoptr564 = bitcast [20 x i8]* %_secret___v30_pmac to i8*
  %_public_structgep565 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep566 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep565, i32 0, i32 0
  call void @SHA1_Final(i8* %_secret_arrtoptr564, i32* %_secret_structgep566)
  %_public_lval567 = load i32, i32* %_public___v13_outp
  %_secret_lval568 = load i32, i32* %_secret___v23_inp_len
  %_secret_addtmp569 = add i32 %_public_lval567, %_secret_lval568
  store i32 %_secret_addtmp569, i32* %_secret___v39_s_outp
  %_public_lval570 = load i32, i32* %_public___v14__len
  %_secret_lval571 = load i32, i32* %_secret___v23_inp_len
  %_secret_subtmp572 = sub i32 %_public_lval570, %_secret_lval571
  store i32 %_secret_subtmp572, i32* %_secret___v40_s_len
  %_public_lval573 = load i32, i32* %_public____out_len
  %_public_subtmp574 = sub i32 %_public_lval573, 1
  %_public_lval575 = load i32, i32* %_public___v21_maxpad
  %_public_subtmp576 = sub i32 %_public_subtmp574, %_public_lval575
  %_public_lval577 = load i32, i32* %_public___v8_SHA_DIGEST_LENGTH
  %_public_subtmp578 = sub i32 %_public_subtmp576, %_public_lval577
  store i32 %_public_subtmp578, i32* %_public___v41_p_outp
  %_secret_lval579 = load i32, i32* %_secret___v39_s_outp
  %_public_lval580 = load i32, i32* %_public___v41_p_outp
  %_secret_subtmp581 = sub i32 %_secret_lval579, %_public_lval580
  store i32 %_secret_subtmp581, i32* %_secret___v42_off
  %_public_lval582 = load i32, i32* %_public___v21_maxpad
  %_public_lval583 = load i32, i32* %_public___v8_SHA_DIGEST_LENGTH
  %_public_addtmp584 = add i32 %_public_lval582, %_public_lval583
  store i32 %_public_addtmp584, i32* %_public___v21_maxpad
  store i32 0, i32* %_secret___v43_s_res
  store i32 0, i32* %_secret___v44_i
  store i32 0, i32* %_public___v45_j
  br label %loop_check585

loop_check585:                                    ; preds = %loop_body586, %branchmerge416
  %_public_lval588 = load i32, i32* %_public___v45_j
  %_public_lval589 = load i32, i32* %_public___v21_maxpad
  %_public_ulttmp590 = icmp ult i32 %_public_lval588, %_public_lval589
  br i1 %_public_ulttmp590, label %loop_body586, label %loop_end587

loop_body586:                                     ; preds = %loop_check585
  %_public_lval591 = load i32, i32* %_public___v41_p_outp
  %_public_lval592 = load i32, i32* %_public___v45_j
  %_public_addtmp593 = add i32 %_public_lval591, %_public_lval592
  %_secret_dyn594 = load i8*, i8** %_secret_arrarg2
  %_secret_ptr595 = getelementptr inbounds i8, i8* %_secret_dyn594, i32 %_public_addtmp593
  %_secret_lval596 = load i8, i8* %_secret_ptr595
  %_secret_zexttmp597 = zext i8 %_secret_lval596 to i32
  store i32 %_secret_zexttmp597, i32* %_secret___v46_c
  %_public_lval598 = load i32, i32* %_public___v45_j
  %_secret_lval599 = load i32, i32* %_secret___v42_off
  %_secret_subtmp600 = sub i32 %_public_lval598, %_secret_lval599
  %_public_lval601 = load i32, i32* %_public___v8_SHA_DIGEST_LENGTH
  %_secret_subtmp602 = sub i32 %_secret_subtmp600, %_public_lval601
  %_secret_arshift603 = ashr i32 %_secret_subtmp602, 31
  store i32 %_secret_arshift603, i32* %_secret___v47_cmask
  %_secret_lval604 = load i32, i32* %_secret___v43_s_res
  %_secret_lval605 = load i32, i32* %_secret___v46_c
  %_secret_lval606 = load i32, i32* %_secret___v20_pad
  %_secret_xortmp = xor i32 %_secret_lval605, %_secret_lval606
  %_secret_lval607 = load i32, i32* %_secret___v47_cmask
  %_secret_bnottmp608 = xor i32 %_secret_lval607, -1
  %_secret_andtmp609 = and i32 %_secret_xortmp, %_secret_bnottmp608
  %_secret_ortmp610 = or i32 %_secret_lval604, %_secret_andtmp609
  store i32 %_secret_ortmp610, i32* %_secret___v43_s_res
  %_secret_lval611 = load i32, i32* %_secret___v47_cmask
  %_secret_lval612 = load i32, i32* %_secret___v42_off
  %_secret_subtmp613 = sub i32 %_secret_lval612, 1
  %_public_lval614 = load i32, i32* %_public___v45_j
  %_secret_subtmp615 = sub i32 %_secret_subtmp613, %_public_lval614
  %_secret_arshift616 = ashr i32 %_secret_subtmp615, 31
  %_secret_andtmp617 = and i32 %_secret_lval611, %_secret_arshift616
  store i32 %_secret_andtmp617, i32* %_secret___v47_cmask
  %_secret_lval618 = load i32, i32* %_secret___v43_s_res
  %_secret_lval619 = load i32, i32* %_secret___v46_c
  %_declassified__secret_lval620 = load i32, i32* %_secret___v44_i
  %_secret_ptr621 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i32 0, i32 %_declassified__secret_lval620
  %_secret_lval622 = load i8, i8* %_secret_ptr621
  %_secret_rhssext623 = zext i8 %_secret_lval622 to i32
  %_secret_xortmp624 = xor i32 %_secret_lval619, %_secret_rhssext623
  %_secret_lval625 = load i32, i32* %_secret___v47_cmask
  %_secret_andtmp626 = and i32 %_secret_xortmp624, %_secret_lval625
  %_secret_ortmp627 = or i32 %_secret_lval618, %_secret_andtmp626
  store i32 %_secret_ortmp627, i32* %_secret___v43_s_res
  %_secret_lval628 = load i32, i32* %_secret___v44_i
  %_secret_lval629 = load i32, i32* %_secret___v47_cmask
  %_secret_andtmp630 = and i32 1, %_secret_lval629
  %_secret_truncbinop631 = trunc i32 %_secret_andtmp630 to i8
  %_secret_rhssext632 = zext i8 %_secret_truncbinop631 to i32
  %_secret_addtmp633 = add i32 %_secret_lval628, %_secret_rhssext632
  store i32 %_secret_addtmp633, i32* %_secret___v44_i
  %_public_lval634 = load i32, i32* %_public___v45_j
  %_public_addtmp635 = add i32 %_public_lval634, 1
  store i32 %_public_addtmp635, i32* %_public___v45_j
  br label %loop_check585

loop_end587:                                      ; preds = %loop_check585
  %_public_lval636 = load i32, i32* %_public___v21_maxpad
  %_public_lval637 = load i32, i32* %_public___v8_SHA_DIGEST_LENGTH
  %_public_subtmp638 = sub i32 %_public_lval636, %_public_lval637
  store i32 %_public_subtmp638, i32* %_public___v21_maxpad
  %_secret_lval639 = load i32, i32* %_secret___v43_s_res
  %_secret_subtmp640 = sub i32 0, %_secret_lval639
  %_secret_lrshift641 = lshr i32 %_secret_subtmp640, 31
  %_secret_subtmp642 = sub i32 0, %_secret_lrshift641
  store i32 %_secret_subtmp642, i32* %_secret___v43_s_res
  %_secret_lval643 = load i32, i32* %_secret___v15_ret
  %_secret_lval644 = load i32, i32* %_secret___v43_s_res
  %_secret_bnottmp645 = xor i32 %_secret_lval644, -1
  %_secret_andtmp646 = and i32 %_secret_lval643, %_secret_bnottmp645
  store i32 %_secret_andtmp646, i32* %_secret___v15_ret
  %_secret_lval647 = load i32, i32* %_secret___v15_ret
  store i32 %_secret_lval647, i32* %_secret___rval
  %_secret_lval648 = load i32, i32* %_secret___rval
  ret i32 %_secret_lval648
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
