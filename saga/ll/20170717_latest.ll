; ModuleID = 'Module'
source_filename = "Module"

%SHA_CTX = type { [5 x i32], i32, i32, [64 x i8], i32 }
%EVP_AES_HMAC_SHA1 = type { %AES_KEY, %SHA_CTX, %SHA_CTX, %SHA_CTX, i64, [16 x i8] }
%AES_KEY = type { [60 x i32], i32 }

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
  %_secret_dyn = load i8*, i8** %_secret_arrarg
  %_secret_ptr = getelementptr inbounds i8, i8* %_secret_dyn, i8 0
  %_secret_lval = load i8, i8* %_secret_ptr
  %_secret_ucast = zext i8 %_secret_lval to i16
  %_secret_lshift = shl i16 %_secret_ucast, 8
  store i16 %_secret_lshift, i16* %_secret___v5_x2
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
  %_secret_dyn = load i8*, i8** %_secret_arrarg
  %_secret_ptr = getelementptr inbounds i8, i8* %_secret_dyn, i8 0
  %_secret_lval = load i16, i16* %_secret_n
  %_secret_lrshift = lshr i16 %_secret_lval, 8
  %_secret_ucast = trunc i16 %_secret_lrshift to i8
  store i8 %_secret_ucast, i8* %_secret_ptr
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
  %_secret_ldedviewptr = load i8*, i8** %_secret_arrarg5
  %_secret_source_gep = getelementptr inbounds i8, i8* %_secret_ldedviewptr, i32 %_public_lval42
  %_secret_arrviewdyn = alloca i8*
  store i8* %_secret_source_gep, i8** %_secret_arrviewdyn
  %_public_lval43 = load i32, i32* %_public___v15_inp
  %_secret_ldedviewptr44 = load i8*, i8** %_secret_arrarg5
  %_secret_source_gep45 = getelementptr inbounds i8, i8* %_secret_ldedviewptr44, i32 %_public_lval43
  %_secret_arrviewdyn46 = alloca i8*
  store i8* %_secret_source_gep45, i8** %_secret_arrviewdyn46
  %_secret_dynarrarg47 = load i8*, i8** %_secret_arrviewdyn46
  %_public_lval48 = load i32, i32* %_public___v16_outp
  %_secret_ldedviewptr49 = load i8*, i8** %_secret_arrarg2
  %_secret_source_gep50 = getelementptr inbounds i8, i8* %_secret_ldedviewptr49, i32 %_public_lval48
  %_secret_arrviewdyn51 = alloca i8*
  store i8* %_secret_source_gep50, i8** %_secret_arrviewdyn51
  %_public_lval52 = load i32, i32* %_public___v16_outp
  %_secret_ldedviewptr53 = load i8*, i8** %_secret_arrarg2
  %_secret_source_gep54 = getelementptr inbounds i8, i8* %_secret_ldedviewptr53, i32 %_public_lval52
  %_secret_arrviewdyn55 = alloca i8*
  store i8* %_secret_source_gep54, i8** %_secret_arrviewdyn55
  %_secret_dynarrarg56 = load i8*, i8** %_secret_arrviewdyn55
  %_public_lval57 = load i32, i32* %_public___v17__len
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
  store i32 %_secret_zexttmp, i32* %_secret___v23_pad
  %_public_lval64 = load i32, i32* %_public___v17__len
  %_public_lval65 = load i32, i32* %_public___v11_SHA_DIGEST_LENGTH
  %_public_addtmp66 = add i32 %_public_lval65, 1
  %_public_subtmp67 = sub i32 %_public_lval64, %_public_addtmp66
  store i32 %_public_subtmp67, i32* %_public___v24_tmppad
  %_public_lval68 = load i32, i32* %_public___v24_tmppad
  %_public_ugttmp = icmp ugt i32 %_public_lval68, 255
  %_public_condtmp = icmp ne i1 %_public_ugttmp, false
  %_public_lval69 = load i32, i32* %_public___v24_tmppad
  %_public_terntmp = select i1 %_public_condtmp, i32 255, i32 %_public_lval69
  store i32 %_public_terntmp, i32* %_public___v25_maxpad
  %_secret_lval70 = load i32, i32* %_secret___v23_pad
  %_public_lval71 = load i32, i32* %_public___v25_maxpad
  %_secret_ugttmp = icmp ugt i32 %_secret_lval70, %_public_lval71
  store i1 %_secret_ugttmp, i1* %_secret___m3
  %_secret_lval72 = load i1, i1* %_secret___m3
  %_secret_landtmp = and i1 true, %_secret_lval72
  %_secret_lval73 = load i1, i1* %_secret___rnset
  %_secret_landtmp74 = and i1 %_secret_landtmp, %_secret_lval73
  %_secret_condtmp = icmp ne i1 %_secret_landtmp74, false
  %_public_lval75 = load i32, i32* %_public___v25_maxpad
  %_secret_lval76 = load i32, i32* %_secret___v23_pad
  %_secret_selecttmp = call i32 @select.cmov.sel.i32(i1 %_secret_condtmp, i32 %_public_lval75, i32 %_secret_lval76)
  store i32 %_secret_selecttmp, i32* %_secret___v23_pad
  %_secret_lval77 = load i1, i1* %_secret___m3
  %_secret_landtmp78 = and i1 true, %_secret_lval77
  %_secret_lval79 = load i1, i1* %_secret___rnset
  %_secret_landtmp80 = and i1 %_secret_landtmp78, %_secret_lval79
  %_secret_condtmp81 = icmp ne i1 %_secret_landtmp80, false
  %_secret_lval82 = load i32, i32* %_secret___v18_ret
  %_secret_selecttmp83 = call i32 @select.cmov.sel.i32(i1 %_secret_condtmp81, i32 0, i32 %_secret_lval82)
  store i32 %_secret_selecttmp83, i32* %_secret___v18_ret
  %_secret_lval84 = load i1, i1* %_secret___m3
  %_secret_lnottmp = xor i1 %_secret_lval84, true
  store i1 %_secret_lnottmp, i1* %_secret___m3
  %_public_lval85 = load i32, i32* %_public___v17__len
  %_public_lval86 = load i32, i32* %_public___v11_SHA_DIGEST_LENGTH
  %_secret_lval87 = load i32, i32* %_secret___v23_pad
  %_secret_addtmp = add i32 %_public_lval86, %_secret_lval87
  %_secret_addtmp88 = add i32 %_secret_addtmp, 1
  %_secret_subtmp = sub i32 %_public_lval85, %_secret_addtmp88
  store i32 %_secret_subtmp, i32* %_secret___v26_inp_len
  %_public_lval89 = load i64, i64* %_public_plen
  %_public_subtmp90 = sub i64 %_public_lval89, 2
  %_secret_structgep91 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 5
  %_secret_arrview = alloca i8*
  %_secret_source_gep92 = getelementptr inbounds [16 x i8], [16 x i8]* %_secret_structgep91, i64 0, i64 %_public_subtmp90
  store i8* %_secret_source_gep92, i8** %_secret_arrview
  %_public_lval93 = load i64, i64* %_public_plen
  %_public_subtmp94 = sub i64 %_public_lval93, 2
  %_secret_structgep95 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 5
  %_secret_arrview96 = alloca i8*
  %_secret_source_gep97 = getelementptr inbounds [16 x i8], [16 x i8]* %_secret_structgep95, i64 0, i64 %_public_subtmp94
  store i8* %_secret_source_gep97, i8** %_secret_arrview96
  %_secret_dynarrarg98 = load i8*, i8** %_secret_arrview96
  %_secret_lval99 = load i32, i32* %_secret___v26_inp_len
  %_secret_ucast = trunc i32 %_secret_lval99 to i16
  call void @store16_be(i8* %_secret_dynarrarg98, i16 %_secret_ucast)
  %_public_structgep100 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_public_structgep101 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 1
  call void @_structcopy_SHA_CTX(%SHA_CTX* %_public_structgep100, %SHA_CTX* %_public_structgep101)
  %_public_lval102 = load i64, i64* %_public_plen
  %_public_trunctmp = trunc i64 %_public_lval102 to i32
  store i32 %_public_trunctmp, i32* %_public___v28___v27_len
  %_public_structgep103 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep104 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep103, i32 0, i32 0
  %_secret_ptr105 = getelementptr inbounds [5 x i32], [5 x i32]* %_secret_structgep104, i8 0, i8 0
  %_secret_structgep106 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 5
  %_secret_arrview107 = alloca i8*
  %_secret_source_gep108 = getelementptr inbounds [16 x i8], [16 x i8]* %_secret_structgep106, i8 0, i8 0
  store i8* %_secret_source_gep108, i8** %_secret_arrview107
  %_secret_structgep109 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 5
  %_secret_arrview110 = alloca i8*
  %_secret_source_gep111 = getelementptr inbounds [16 x i8], [16 x i8]* %_secret_structgep109, i8 0, i8 0
  store i8* %_secret_source_gep111, i8** %_secret_arrview110
  %_secret_dynarrarg112 = load i8*, i8** %_secret_arrview110
  %_public_lval113 = load i64, i64* %_public_plen
  call void @_sha1_update(i32* %_secret_ptr105, i8* %_secret_dynarrarg112, i64 %_public_lval113)
  %_public_lval114 = load i32, i32* %_public___v17__len
  %_public_lval115 = load i32, i32* %_public___v11_SHA_DIGEST_LENGTH
  %_public_subtmp116 = sub i32 %_public_lval114, %_public_lval115
  store i32 %_public_subtmp116, i32* %_public___v17__len
  %_public_lval117 = load i32, i32* %_public___v17__len
  %_public_lval118 = load i32, i32* %_public___v14_SHA_CBLOCK
  %_public_addtmp119 = add i32 256, %_public_lval118
  %_public_ugtetmp120 = icmp uge i32 %_public_lval117, %_public_addtmp119
  %_public_branchcompare121 = icmp eq i1 %_public_ugtetmp120, true
  br i1 %_public_branchcompare121, label %thenbranch122, label %elsebranch159

thenbranch122:                                    ; preds = %branchmerge39
  %_public_lval123 = load i32, i32* %_public___v17__len
  %_public_lval124 = load i32, i32* %_public___v14_SHA_CBLOCK
  %_public_addtmp125 = add i32 256, %_public_lval124
  %_public_subtmp126 = sub i32 %_public_lval123, %_public_addtmp125
  %_public_lval127 = load i32, i32* %_public___v14_SHA_CBLOCK
  %_public_subtmp128 = sub i32 0, %_public_lval127
  %_public_andtmp = and i32 %_public_subtmp126, %_public_subtmp128
  %_public_lval129 = load i32, i32* %_public___v14_SHA_CBLOCK
  %_public_addtmp130 = add i32 %_public_andtmp, %_public_lval129
  %_public_structgep131 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_public_structgep132 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep131, i32 0, i32 4
  %_public_lval133 = load i32, i32* %_public_structgep132
  %_public_subtmp134 = sub i32 %_public_addtmp130, %_public_lval133
  store i32 %_public_subtmp134, i32* %_public___v29_j
  %_public_lval135 = load i32, i32* %_public___v29_j
  store i32 %_public_lval135, i32* %_public___v31___v30_len
  %_public_structgep136 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep137 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep136, i32 0, i32 0
  %_secret_ptr138 = getelementptr inbounds [5 x i32], [5 x i32]* %_secret_structgep137, i8 0, i8 0
  %_public_lval139 = load i32, i32* %_public___v16_outp
  %_secret_ldedviewptr140 = load i8*, i8** %_secret_arrarg2
  %_secret_source_gep141 = getelementptr inbounds i8, i8* %_secret_ldedviewptr140, i32 %_public_lval139
  %_secret_arrviewdyn142 = alloca i8*
  store i8* %_secret_source_gep141, i8** %_secret_arrviewdyn142
  %_public_lval143 = load i32, i32* %_public___v16_outp
  %_secret_ldedviewptr144 = load i8*, i8** %_secret_arrarg2
  %_secret_source_gep145 = getelementptr inbounds i8, i8* %_secret_ldedviewptr144, i32 %_public_lval143
  %_secret_arrviewdyn146 = alloca i8*
  store i8* %_secret_source_gep145, i8** %_secret_arrviewdyn146
  %_secret_dynarrarg147 = load i8*, i8** %_secret_arrviewdyn146
  %_public_lval148 = load i32, i32* %_public___v29_j
  %_public_zexttmp149 = zext i32 %_public_lval148 to i64
  call void @_sha1_update(i32* %_secret_ptr138, i8* %_secret_dynarrarg147, i64 %_public_zexttmp149)
  %_public_lval150 = load i32, i32* %_public___v16_outp
  %_public_lval151 = load i32, i32* %_public___v29_j
  %_public_addtmp152 = add i32 %_public_lval150, %_public_lval151
  store i32 %_public_addtmp152, i32* %_public___v16_outp
  %_public_lval153 = load i32, i32* %_public___v17__len
  %_public_lval154 = load i32, i32* %_public___v29_j
  %_public_subtmp155 = sub i32 %_public_lval153, %_public_lval154
  store i32 %_public_subtmp155, i32* %_public___v17__len
  %_secret_lval156 = load i32, i32* %_secret___v26_inp_len
  %_public_lval157 = load i32, i32* %_public___v29_j
  %_secret_subtmp158 = sub i32 %_secret_lval156, %_public_lval157
  store i32 %_secret_subtmp158, i32* %_secret___v26_inp_len
  br label %branchmerge160

elsebranch159:                                    ; preds = %branchmerge39
  br label %branchmerge160

branchmerge160:                                   ; preds = %elsebranch159, %thenbranch122
  %_public_structgep161 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep162 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep161, i32 0, i32 1
  %_secret_lval163 = load i32, i32* %_secret_structgep162
  %_secret_lval164 = load i32, i32* %_secret___v26_inp_len
  %_secret_lshift = shl i32 %_secret_lval164, 3
  %_secret_addtmp165 = add i32 %_secret_lval163, %_secret_lshift
  %_secret_calltmp = call i32 @bswap4(i32 %_secret_addtmp165)
  store i32 %_secret_calltmp, i32* %_secret___v32_bitlen
  %_secret___v33_pmac = alloca [20 x i8], align 32
  %_secret_sourcecasted = bitcast [20 x i8]* %_secret___v33_pmac to i8*
  call void @llvm.memset.p0i8.i64(i8* %_secret_sourcecasted, i8 0, i64 20, i32 0, i1 false)
  %_public_structgep166 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_public_structgep167 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep166, i32 0, i32 4
  %_public_lval168 = load i32, i32* %_public_structgep167
  store i32 %_public_lval168, i32* %_public___v34_p_res
  store i32 0, i32* %_public___v35_j
  br label %loop_check

loop_check:                                       ; preds = %branchmerge330, %branchmerge160
  %_public_lval169 = load i32, i32* %_public___v35_j
  %_public_lval170 = load i32, i32* %_public___v17__len
  %_public_ulttmp171 = icmp ult i32 %_public_lval169, %_public_lval170
  br i1 %_public_ulttmp171, label %loop_body, label %loop_end

loop_body:                                        ; preds = %loop_check
  %_public_structgep172 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep173 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep172, i32 0, i32 3
  %_public_lval174 = load i32, i32* %_public___v34_p_res
  %_secret_ptr175 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep173, i32 0, i32 %_public_lval174
  store i8 0, i8* %_secret___m4
  %_public_lval176 = load i32, i32* %_public___v35_j
  %_secret_lval177 = load i32, i32* %_secret___v26_inp_len
  %_secret_ulttmp = icmp ult i32 %_public_lval176, %_secret_lval177
  store i1 %_secret_ulttmp, i1* %_secret___m5
  %_secret_lval178 = load i1, i1* %_secret___m5
  %_secret_landtmp179 = and i1 true, %_secret_lval178
  %_secret_lval180 = load i1, i1* %_secret___rnset
  %_secret_landtmp181 = and i1 %_secret_landtmp179, %_secret_lval180
  %_secret_condtmp182 = icmp ne i1 %_secret_landtmp181, false
  %_public_lval183 = load i32, i32* %_public___v16_outp
  %_public_lval184 = load i32, i32* %_public___v35_j
  %_public_addtmp185 = add i32 %_public_lval183, %_public_lval184
  %_secret_dyn186 = load i8*, i8** %_secret_arrarg2
  %_secret_ptr187 = getelementptr inbounds i8, i8* %_secret_dyn186, i32 %_public_addtmp185
  %_secret_lval188 = load i8, i8* %_secret_ptr187
  %_secret_lval189 = load i8, i8* %_secret___m4
  %_secret_selecttmp190 = call i8 @select.cmov.asm.i8(i1 %_secret_condtmp182, i8 %_secret_lval188, i8 %_secret_lval189)
  store i8 %_secret_selecttmp190, i8* %_secret___m4
  %_secret_lval191 = load i1, i1* %_secret___m5
  %_secret_lnottmp192 = xor i1 %_secret_lval191, true
  store i1 %_secret_lnottmp192, i1* %_secret___m5
  %_secret_lval193 = load i1, i1* %_secret___m5
  %_secret_landtmp194 = and i1 true, %_secret_lval193
  %_secret_lval195 = load i1, i1* %_secret___rnset
  %_secret_landtmp196 = and i1 %_secret_landtmp194, %_secret_lval195
  %_secret_condtmp197 = icmp ne i1 %_secret_landtmp196, false
  store i16 0, i16* %_secret___m6
  %_public_lval198 = load i32, i32* %_public___v35_j
  %_secret_lval199 = load i32, i32* %_secret___v26_inp_len
  %_secret_eqtmp = icmp eq i32 %_public_lval198, %_secret_lval199
  store i1 %_secret_eqtmp, i1* %_secret___m7
  %_secret_lval200 = load i1, i1* %_secret___m7
  %_secret_landtmp201 = and i1 true, %_secret_lval200
  %_secret_lval202 = load i1, i1* %_secret___m5
  %_secret_landtmp203 = and i1 %_secret_landtmp201, %_secret_lval202
  %_secret_lval204 = load i1, i1* %_secret___rnset
  %_secret_landtmp205 = and i1 %_secret_landtmp203, %_secret_lval204
  %_secret_condtmp206 = icmp ne i1 %_secret_landtmp205, false
  %_secret_lval207 = load i16, i16* %_secret___m6
  %_secret_selecttmp208 = call i16 @select.cmov.asm.i16(i1 %_secret_condtmp206, i16 128, i16 %_secret_lval207)
  store i16 %_secret_selecttmp208, i16* %_secret___m6
  %_secret_lval209 = load i1, i1* %_secret___m7
  %_secret_lnottmp210 = xor i1 %_secret_lval209, true
  store i1 %_secret_lnottmp210, i1* %_secret___m7
  %_secret_lval211 = load i1, i1* %_secret___m7
  %_secret_landtmp212 = and i1 true, %_secret_lval211
  %_secret_lval213 = load i1, i1* %_secret___m5
  %_secret_landtmp214 = and i1 %_secret_landtmp212, %_secret_lval213
  %_secret_lval215 = load i1, i1* %_secret___rnset
  %_secret_landtmp216 = and i1 %_secret_landtmp214, %_secret_lval215
  %_secret_condtmp217 = icmp ne i1 %_secret_landtmp216, false
  %_secret_lval218 = load i16, i16* %_secret___m6
  %_secret_selecttmp219 = call i16 @select.cmov.asm.i16(i1 %_secret_condtmp217, i16 0, i16 %_secret_lval218)
  store i16 %_secret_selecttmp219, i16* %_secret___m6
  %_secret___m6220 = load i16, i16* %_secret___m6
  %_secret_trunctmp = trunc i16 %_secret___m6220 to i8
  %_secret_lval221 = load i8, i8* %_secret___m4
  %_secret_selecttmp222 = call i8 @select.cmov.asm.i8(i1 %_secret_condtmp197, i8 %_secret_trunctmp, i8 %_secret_lval221)
  store i8 %_secret_selecttmp222, i8* %_secret___m4
  %_secret___m4223 = load i8, i8* %_secret___m4
  store i8 %_secret___m4223, i8* %_secret_ptr175
  %_public_lval224 = load i32, i32* %_public___v34_p_res
  %_public_addtmp225 = add i32 %_public_lval224, 1
  store i32 %_public_addtmp225, i32* %_public___v34_p_res
  %_public_lval226 = load i32, i32* %_public___v34_p_res
  %_public_lval227 = load i32, i32* %_public___v14_SHA_CBLOCK
  %_public_eqtmp = icmp eq i32 %_public_lval226, %_public_lval227
  %_public_branchcompare228 = icmp eq i1 %_public_eqtmp, true
  br i1 %_public_branchcompare228, label %thenbranch229, label %elsebranch329

loop_end:                                         ; preds = %loop_check
  %_public_lval333 = load i32, i32* %_public___v17__len
  store i32 %_public_lval333, i32* %_public___v38_j
  %_public_lval337 = load i32, i32* %_public___v34_p_res
  store i32 %_public_lval337, i32* %_public___v39_i
  br label %loop_check334

thenbranch229:                                    ; preds = %loop_body
  %_secret_lval230 = load i32, i32* %_secret___v26_inp_len
  %_secret_addtmp231 = add i32 %_secret_lval230, 7
  %_public_lval232 = load i32, i32* %_public___v35_j
  %_secret_ulttmp233 = icmp ult i32 %_secret_addtmp231, %_public_lval232
  store i1 %_secret_ulttmp233, i1* %_secret___v36_m1
  %_public_lval234 = load i32, i32* %_public___v13_SHA_LBLOCK
  %_public_subtmp235 = sub i32 %_public_lval234, 1
  %_public_multmp236 = mul i32 4, %_public_subtmp235
  %_public_structgep237 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep238 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep237, i32 0, i32 3
  %_secret_arrview239 = alloca i8*
  %_secret_source_gep240 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep238, i32 0, i32 %_public_multmp236
  store i8* %_secret_source_gep240, i8** %_secret_arrview239
  %_public_lval241 = load i32, i32* %_public___v13_SHA_LBLOCK
  %_public_subtmp242 = sub i32 %_public_lval241, 1
  %_public_multmp243 = mul i32 4, %_public_subtmp242
  %_public_structgep244 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep245 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep244, i32 0, i32 3
  %_secret_arrview246 = alloca i8*
  %_secret_source_gep247 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep245, i32 0, i32 %_public_multmp243
  store i8* %_secret_source_gep247, i8** %_secret_arrview246
  %_secret_dynarrarg248 = load i8*, i8** %_secret_arrview246
  %_secret_lval249 = load i32, i32* %_secret___v32_bitlen
  %_secret_lval250 = load i1, i1* %_secret___v36_m1
  call void @cond_store(i8* %_secret_dynarrarg248, i32 %_secret_lval249, i1 %_secret_lval250)
  %_public_structgep251 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_public_structgep252 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep253 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep252, i32 0, i32 3
  %_public_structgep254 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep255 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep254, i32 0, i32 3
  %_secret_arrtoptr256 = bitcast [64 x i8]* %_secret_structgep255 to i8*
  call void @sha1_block_data_order(%SHA_CTX* %_public_structgep251, i8* %_secret_arrtoptr256, i32 1)
  store i1 false, i1* %_secret___m8
  %_secret_lval257 = load i1, i1* %_secret___v36_m1
  store i1 %_secret_lval257, i1* %_secret___m9
  %_secret_lval258 = load i1, i1* %_secret___m9
  %_secret_landtmp259 = and i1 true, %_secret_lval258
  %_secret_lval260 = load i1, i1* %_secret___rnset
  %_secret_landtmp261 = and i1 %_secret_landtmp259, %_secret_lval260
  %_secret_condtmp262 = icmp ne i1 %_secret_landtmp261, false
  %_public_lval263 = load i32, i32* %_public___v35_j
  %_secret_lval264 = load i32, i32* %_secret___v26_inp_len
  %_secret_addtmp265 = add i32 %_secret_lval264, 72
  %_secret_ulttmp266 = icmp ult i32 %_public_lval263, %_secret_addtmp265
  %_secret_lval267 = load i1, i1* %_secret___m8
  %_secret_selecttmp268 = call i1 @select.cmov.asm.i1(i1 %_secret_condtmp262, i1 %_secret_ulttmp266, i1 %_secret_lval267)
  store i1 %_secret_selecttmp268, i1* %_secret___m8
  %_secret_lval269 = load i1, i1* %_secret___m9
  %_secret_lnottmp270 = xor i1 %_secret_lval269, true
  store i1 %_secret_lnottmp270, i1* %_secret___m9
  %_secret_lval271 = load i1, i1* %_secret___m9
  %_secret_landtmp272 = and i1 true, %_secret_lval271
  %_secret_lval273 = load i1, i1* %_secret___rnset
  %_secret_landtmp274 = and i1 %_secret_landtmp272, %_secret_lval273
  %_secret_condtmp275 = icmp ne i1 %_secret_landtmp274, false
  %_secret_lval276 = load i1, i1* %_secret___m8
  %_secret_selecttmp277 = call i1 @select.cmov.asm.i1(i1 %_secret_condtmp275, i1 false, i1 %_secret_lval276)
  store i1 %_secret_selecttmp277, i1* %_secret___m8
  %_secret___m8278 = load i1, i1* %_secret___m8
  store i1 %_secret___m8278, i1* %_secret___v37_m2
  %_secret_arrview279 = alloca i8*
  %_secret_source_gep280 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i8 0, i8 0
  store i8* %_secret_source_gep280, i8** %_secret_arrview279
  %_secret_arrview281 = alloca i8*
  %_secret_source_gep282 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i8 0, i8 0
  store i8* %_secret_source_gep282, i8** %_secret_arrview281
  %_secret_dynarrarg283 = load i8*, i8** %_secret_arrview281
  %_public_structgep284 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep285 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep284, i32 0, i32 0
  %_secret_ptr286 = getelementptr inbounds [5 x i32], [5 x i32]* %_secret_structgep285, i8 0, i8 0
  %_secret_lval287 = load i32, i32* %_secret_ptr286
  %_secret_lval288 = load i1, i1* %_secret___v37_m2
  call void @cond_store(i8* %_secret_dynarrarg283, i32 %_secret_lval287, i1 %_secret_lval288)
  %_secret_arrview289 = alloca i8*
  %_secret_source_gep290 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i8 0, i8 4
  store i8* %_secret_source_gep290, i8** %_secret_arrview289
  %_secret_arrview291 = alloca i8*
  %_secret_source_gep292 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i8 0, i8 4
  store i8* %_secret_source_gep292, i8** %_secret_arrview291
  %_secret_dynarrarg293 = load i8*, i8** %_secret_arrview291
  %_public_structgep294 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep295 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep294, i32 0, i32 0
  %_secret_ptr296 = getelementptr inbounds [5 x i32], [5 x i32]* %_secret_structgep295, i8 0, i8 1
  %_secret_lval297 = load i32, i32* %_secret_ptr296
  %_secret_lval298 = load i1, i1* %_secret___v37_m2
  call void @cond_store(i8* %_secret_dynarrarg293, i32 %_secret_lval297, i1 %_secret_lval298)
  %_secret_arrview299 = alloca i8*
  %_secret_source_gep300 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i8 0, i8 8
  store i8* %_secret_source_gep300, i8** %_secret_arrview299
  %_secret_arrview301 = alloca i8*
  %_secret_source_gep302 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i8 0, i8 8
  store i8* %_secret_source_gep302, i8** %_secret_arrview301
  %_secret_dynarrarg303 = load i8*, i8** %_secret_arrview301
  %_public_structgep304 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep305 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep304, i32 0, i32 0
  %_secret_ptr306 = getelementptr inbounds [5 x i32], [5 x i32]* %_secret_structgep305, i8 0, i8 2
  %_secret_lval307 = load i32, i32* %_secret_ptr306
  %_secret_lval308 = load i1, i1* %_secret___v37_m2
  call void @cond_store(i8* %_secret_dynarrarg303, i32 %_secret_lval307, i1 %_secret_lval308)
  %_secret_arrview309 = alloca i8*
  %_secret_source_gep310 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i8 0, i8 12
  store i8* %_secret_source_gep310, i8** %_secret_arrview309
  %_secret_arrview311 = alloca i8*
  %_secret_source_gep312 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i8 0, i8 12
  store i8* %_secret_source_gep312, i8** %_secret_arrview311
  %_secret_dynarrarg313 = load i8*, i8** %_secret_arrview311
  %_public_structgep314 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep315 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep314, i32 0, i32 0
  %_secret_ptr316 = getelementptr inbounds [5 x i32], [5 x i32]* %_secret_structgep315, i8 0, i8 3
  %_secret_lval317 = load i32, i32* %_secret_ptr316
  %_secret_lval318 = load i1, i1* %_secret___v37_m2
  call void @cond_store(i8* %_secret_dynarrarg313, i32 %_secret_lval317, i1 %_secret_lval318)
  %_secret_arrview319 = alloca i8*
  %_secret_source_gep320 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i8 0, i8 16
  store i8* %_secret_source_gep320, i8** %_secret_arrview319
  %_secret_arrview321 = alloca i8*
  %_secret_source_gep322 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i8 0, i8 16
  store i8* %_secret_source_gep322, i8** %_secret_arrview321
  %_secret_dynarrarg323 = load i8*, i8** %_secret_arrview321
  %_public_structgep324 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep325 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep324, i32 0, i32 0
  %_secret_ptr326 = getelementptr inbounds [5 x i32], [5 x i32]* %_secret_structgep325, i8 0, i8 4
  %_secret_lval327 = load i32, i32* %_secret_ptr326
  %_secret_lval328 = load i1, i1* %_secret___v37_m2
  call void @cond_store(i8* %_secret_dynarrarg323, i32 %_secret_lval327, i1 %_secret_lval328)
  store i32 0, i32* %_public___v34_p_res
  br label %branchmerge330

elsebranch329:                                    ; preds = %loop_body
  br label %branchmerge330

branchmerge330:                                   ; preds = %elsebranch329, %thenbranch229
  %_public_lval331 = load i32, i32* %_public___v35_j
  %_public_addtmp332 = add i32 %_public_lval331, 1
  store i32 %_public_addtmp332, i32* %_public___v35_j
  br label %loop_check

loop_check334:                                    ; preds = %loop_body335, %loop_end
  %_public_lval338 = load i32, i32* %_public___v39_i
  %_public_lval339 = load i32, i32* %_public___v14_SHA_CBLOCK
  %_public_ulttmp340 = icmp ult i32 %_public_lval338, %_public_lval339
  br i1 %_public_ulttmp340, label %loop_body335, label %loop_end336

loop_body335:                                     ; preds = %loop_check334
  %_public_structgep341 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep342 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep341, i32 0, i32 3
  %_public_lval343 = load i32, i32* %_public___v39_i
  %_secret_ptr344 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep342, i32 0, i32 %_public_lval343
  store i8 0, i8* %_secret_ptr344
  %_public_lval345 = load i32, i32* %_public___v38_j
  %_public_addtmp346 = add i32 %_public_lval345, 1
  store i32 %_public_addtmp346, i32* %_public___v38_j
  %_public_lval347 = load i32, i32* %_public___v39_i
  %_public_addtmp348 = add i32 %_public_lval347, 1
  store i32 %_public_addtmp348, i32* %_public___v39_i
  br label %loop_check334

loop_end336:                                      ; preds = %loop_check334
  %_public_lval349 = load i32, i32* %_public___v34_p_res
  %_public_lval350 = load i32, i32* %_public___v14_SHA_CBLOCK
  %_public_subtmp351 = sub i32 %_public_lval350, 8
  %_public_ugttmp352 = icmp ugt i32 %_public_lval349, %_public_subtmp351
  %_public_branchcompare353 = icmp eq i1 %_public_ugttmp352, true
  br i1 %_public_branchcompare353, label %thenbranch354, label %elsebranch461

thenbranch354:                                    ; preds = %loop_end336
  %_secret_lval355 = load i32, i32* %_secret___v26_inp_len
  %_secret_addtmp356 = add i32 %_secret_lval355, 8
  %_public_lval357 = load i32, i32* %_public___v38_j
  %_secret_ulttmp358 = icmp ult i32 %_secret_addtmp356, %_public_lval357
  store i1 %_secret_ulttmp358, i1* %_secret___v40_m1
  %_public_lval359 = load i32, i32* %_public___v13_SHA_LBLOCK
  %_public_subtmp360 = sub i32 %_public_lval359, 1
  %_public_multmp361 = mul i32 4, %_public_subtmp360
  %_public_structgep362 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep363 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep362, i32 0, i32 3
  %_secret_arrview364 = alloca i8*
  %_secret_source_gep365 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep363, i32 0, i32 %_public_multmp361
  store i8* %_secret_source_gep365, i8** %_secret_arrview364
  %_public_lval366 = load i32, i32* %_public___v13_SHA_LBLOCK
  %_public_subtmp367 = sub i32 %_public_lval366, 1
  %_public_multmp368 = mul i32 4, %_public_subtmp367
  %_public_structgep369 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep370 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep369, i32 0, i32 3
  %_secret_arrview371 = alloca i8*
  %_secret_source_gep372 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep370, i32 0, i32 %_public_multmp368
  store i8* %_secret_source_gep372, i8** %_secret_arrview371
  %_secret_dynarrarg373 = load i8*, i8** %_secret_arrview371
  %_secret_lval374 = load i32, i32* %_secret___v32_bitlen
  %_secret_lval375 = load i1, i1* %_secret___v40_m1
  call void @cond_store(i8* %_secret_dynarrarg373, i32 %_secret_lval374, i1 %_secret_lval375)
  %_public_structgep376 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_public_structgep377 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep378 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep377, i32 0, i32 3
  %_public_structgep379 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep380 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep379, i32 0, i32 3
  %_secret_arrtoptr381 = bitcast [64 x i8]* %_secret_structgep380 to i8*
  call void @sha1_block_data_order(%SHA_CTX* %_public_structgep376, i8* %_secret_arrtoptr381, i32 1)
  store i1 false, i1* %_secret___m10
  %_secret_lval382 = load i1, i1* %_secret___v40_m1
  store i1 %_secret_lval382, i1* %_secret___m11
  %_secret_lval383 = load i1, i1* %_secret___m11
  %_secret_landtmp384 = and i1 true, %_secret_lval383
  %_secret_lval385 = load i1, i1* %_secret___rnset
  %_secret_landtmp386 = and i1 %_secret_landtmp384, %_secret_lval385
  %_secret_condtmp387 = icmp ne i1 %_secret_landtmp386, false
  %_public_lval388 = load i32, i32* %_public___v38_j
  %_secret_lval389 = load i32, i32* %_secret___v26_inp_len
  %_secret_addtmp390 = add i32 %_secret_lval389, 73
  %_secret_ulttmp391 = icmp ult i32 %_public_lval388, %_secret_addtmp390
  %_secret_lval392 = load i1, i1* %_secret___m10
  %_secret_selecttmp393 = call i1 @select.cmov.asm.i1(i1 %_secret_condtmp387, i1 %_secret_ulttmp391, i1 %_secret_lval392)
  store i1 %_secret_selecttmp393, i1* %_secret___m10
  %_secret_lval394 = load i1, i1* %_secret___m11
  %_secret_lnottmp395 = xor i1 %_secret_lval394, true
  store i1 %_secret_lnottmp395, i1* %_secret___m11
  %_secret_lval396 = load i1, i1* %_secret___m11
  %_secret_landtmp397 = and i1 true, %_secret_lval396
  %_secret_lval398 = load i1, i1* %_secret___rnset
  %_secret_landtmp399 = and i1 %_secret_landtmp397, %_secret_lval398
  %_secret_condtmp400 = icmp ne i1 %_secret_landtmp399, false
  %_secret_lval401 = load i1, i1* %_secret___m10
  %_secret_selecttmp402 = call i1 @select.cmov.asm.i1(i1 %_secret_condtmp400, i1 false, i1 %_secret_lval401)
  store i1 %_secret_selecttmp402, i1* %_secret___m10
  %_secret___m10403 = load i1, i1* %_secret___m10
  store i1 %_secret___m10403, i1* %_secret___v41_m2
  %_secret_arrview404 = alloca i8*
  %_secret_source_gep405 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i8 0, i8 0
  store i8* %_secret_source_gep405, i8** %_secret_arrview404
  %_secret_arrview406 = alloca i8*
  %_secret_source_gep407 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i8 0, i8 0
  store i8* %_secret_source_gep407, i8** %_secret_arrview406
  %_secret_dynarrarg408 = load i8*, i8** %_secret_arrview406
  %_public_structgep409 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep410 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep409, i32 0, i32 0
  %_secret_ptr411 = getelementptr inbounds [5 x i32], [5 x i32]* %_secret_structgep410, i8 0, i8 0
  %_secret_lval412 = load i32, i32* %_secret_ptr411
  %_secret_lval413 = load i1, i1* %_secret___v41_m2
  call void @cond_store(i8* %_secret_dynarrarg408, i32 %_secret_lval412, i1 %_secret_lval413)
  %_secret_arrview414 = alloca i8*
  %_secret_source_gep415 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i8 0, i8 4
  store i8* %_secret_source_gep415, i8** %_secret_arrview414
  %_secret_arrview416 = alloca i8*
  %_secret_source_gep417 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i8 0, i8 4
  store i8* %_secret_source_gep417, i8** %_secret_arrview416
  %_secret_dynarrarg418 = load i8*, i8** %_secret_arrview416
  %_public_structgep419 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep420 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep419, i32 0, i32 0
  %_secret_ptr421 = getelementptr inbounds [5 x i32], [5 x i32]* %_secret_structgep420, i8 0, i8 1
  %_secret_lval422 = load i32, i32* %_secret_ptr421
  %_secret_lval423 = load i1, i1* %_secret___v41_m2
  call void @cond_store(i8* %_secret_dynarrarg418, i32 %_secret_lval422, i1 %_secret_lval423)
  %_secret_arrview424 = alloca i8*
  %_secret_source_gep425 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i8 0, i8 8
  store i8* %_secret_source_gep425, i8** %_secret_arrview424
  %_secret_arrview426 = alloca i8*
  %_secret_source_gep427 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i8 0, i8 8
  store i8* %_secret_source_gep427, i8** %_secret_arrview426
  %_secret_dynarrarg428 = load i8*, i8** %_secret_arrview426
  %_public_structgep429 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep430 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep429, i32 0, i32 0
  %_secret_ptr431 = getelementptr inbounds [5 x i32], [5 x i32]* %_secret_structgep430, i8 0, i8 2
  %_secret_lval432 = load i32, i32* %_secret_ptr431
  %_secret_lval433 = load i1, i1* %_secret___v41_m2
  call void @cond_store(i8* %_secret_dynarrarg428, i32 %_secret_lval432, i1 %_secret_lval433)
  %_secret_arrview434 = alloca i8*
  %_secret_source_gep435 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i8 0, i8 12
  store i8* %_secret_source_gep435, i8** %_secret_arrview434
  %_secret_arrview436 = alloca i8*
  %_secret_source_gep437 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i8 0, i8 12
  store i8* %_secret_source_gep437, i8** %_secret_arrview436
  %_secret_dynarrarg438 = load i8*, i8** %_secret_arrview436
  %_public_structgep439 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep440 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep439, i32 0, i32 0
  %_secret_ptr441 = getelementptr inbounds [5 x i32], [5 x i32]* %_secret_structgep440, i8 0, i8 3
  %_secret_lval442 = load i32, i32* %_secret_ptr441
  %_secret_lval443 = load i1, i1* %_secret___v41_m2
  call void @cond_store(i8* %_secret_dynarrarg438, i32 %_secret_lval442, i1 %_secret_lval443)
  %_secret_arrview444 = alloca i8*
  %_secret_source_gep445 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i8 0, i8 16
  store i8* %_secret_source_gep445, i8** %_secret_arrview444
  %_secret_arrview446 = alloca i8*
  %_secret_source_gep447 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i8 0, i8 16
  store i8* %_secret_source_gep447, i8** %_secret_arrview446
  %_secret_dynarrarg448 = load i8*, i8** %_secret_arrview446
  %_public_structgep449 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep450 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep449, i32 0, i32 0
  %_secret_ptr451 = getelementptr inbounds [5 x i32], [5 x i32]* %_secret_structgep450, i8 0, i8 4
  %_secret_lval452 = load i32, i32* %_secret_ptr451
  %_secret_lval453 = load i1, i1* %_secret___v41_m2
  call void @cond_store(i8* %_secret_dynarrarg448, i32 %_secret_lval452, i1 %_secret_lval453)
  %_public_structgep454 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep455 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep454, i32 0, i32 3
  %_public_structgep456 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep457 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep456, i32 0, i32 3
  %_secret_arrtoptr458 = bitcast [64 x i8]* %_secret_structgep457 to i8*
  call void @_memzero(i8* %_secret_arrtoptr458, i32 64)
  %_public_lval459 = load i32, i32* %_public___v38_j
  %_public_addtmp460 = add i32 %_public_lval459, 64
  store i32 %_public_addtmp460, i32* %_public___v38_j
  br label %branchmerge462

elsebranch461:                                    ; preds = %loop_end336
  br label %branchmerge462

branchmerge462:                                   ; preds = %elsebranch461, %thenbranch354
  %_public_lval463 = load i32, i32* %_public___v13_SHA_LBLOCK
  %_public_subtmp464 = sub i32 %_public_lval463, 1
  %_public_multmp465 = mul i32 4, %_public_subtmp464
  %_public_structgep466 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep467 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep466, i32 0, i32 3
  %_secret_arrview468 = alloca i8*
  %_secret_source_gep469 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep467, i32 0, i32 %_public_multmp465
  store i8* %_secret_source_gep469, i8** %_secret_arrview468
  %_public_lval470 = load i32, i32* %_public___v13_SHA_LBLOCK
  %_public_subtmp471 = sub i32 %_public_lval470, 1
  %_public_multmp472 = mul i32 4, %_public_subtmp471
  %_public_structgep473 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep474 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep473, i32 0, i32 3
  %_secret_arrview475 = alloca i8*
  %_secret_source_gep476 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep474, i32 0, i32 %_public_multmp472
  store i8* %_secret_source_gep476, i8** %_secret_arrview475
  %_secret_dynarrarg477 = load i8*, i8** %_secret_arrview475
  %_secret_lval478 = load i32, i32* %_secret___v32_bitlen
  call void @_store32_le(i8* %_secret_dynarrarg477, i32 %_secret_lval478)
  %_public_structgep479 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_public_structgep480 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep481 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep480, i32 0, i32 3
  %_public_structgep482 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep483 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep482, i32 0, i32 3
  %_secret_arrtoptr484 = bitcast [64 x i8]* %_secret_structgep483 to i8*
  call void @sha1_block_data_order(%SHA_CTX* %_public_structgep479, i8* %_secret_arrtoptr484, i32 1)
  %_public_lval485 = load i32, i32* %_public___v38_j
  %_secret_lval486 = load i32, i32* %_secret___v26_inp_len
  %_secret_addtmp487 = add i32 %_secret_lval486, 73
  %_secret_ulttmp488 = icmp ult i32 %_public_lval485, %_secret_addtmp487
  store i1 %_secret_ulttmp488, i1* %_secret___v42_m2
  %_secret_arrview489 = alloca i8*
  %_secret_source_gep490 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i8 0, i8 0
  store i8* %_secret_source_gep490, i8** %_secret_arrview489
  %_secret_arrview491 = alloca i8*
  %_secret_source_gep492 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i8 0, i8 0
  store i8* %_secret_source_gep492, i8** %_secret_arrview491
  %_secret_dynarrarg493 = load i8*, i8** %_secret_arrview491
  %_public_structgep494 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep495 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep494, i32 0, i32 0
  %_secret_ptr496 = getelementptr inbounds [5 x i32], [5 x i32]* %_secret_structgep495, i8 0, i8 0
  %_secret_lval497 = load i32, i32* %_secret_ptr496
  %_secret_lval498 = load i1, i1* %_secret___v42_m2
  call void @cond_store(i8* %_secret_dynarrarg493, i32 %_secret_lval497, i1 %_secret_lval498)
  %_secret_arrview499 = alloca i8*
  %_secret_source_gep500 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i8 0, i8 4
  store i8* %_secret_source_gep500, i8** %_secret_arrview499
  %_secret_arrview501 = alloca i8*
  %_secret_source_gep502 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i8 0, i8 4
  store i8* %_secret_source_gep502, i8** %_secret_arrview501
  %_secret_dynarrarg503 = load i8*, i8** %_secret_arrview501
  %_public_structgep504 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep505 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep504, i32 0, i32 0
  %_secret_ptr506 = getelementptr inbounds [5 x i32], [5 x i32]* %_secret_structgep505, i8 0, i8 1
  %_secret_lval507 = load i32, i32* %_secret_ptr506
  %_secret_lval508 = load i1, i1* %_secret___v42_m2
  call void @cond_store(i8* %_secret_dynarrarg503, i32 %_secret_lval507, i1 %_secret_lval508)
  %_secret_arrview509 = alloca i8*
  %_secret_source_gep510 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i8 0, i8 8
  store i8* %_secret_source_gep510, i8** %_secret_arrview509
  %_secret_arrview511 = alloca i8*
  %_secret_source_gep512 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i8 0, i8 8
  store i8* %_secret_source_gep512, i8** %_secret_arrview511
  %_secret_dynarrarg513 = load i8*, i8** %_secret_arrview511
  %_public_structgep514 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep515 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep514, i32 0, i32 0
  %_secret_ptr516 = getelementptr inbounds [5 x i32], [5 x i32]* %_secret_structgep515, i8 0, i8 2
  %_secret_lval517 = load i32, i32* %_secret_ptr516
  %_secret_lval518 = load i1, i1* %_secret___v42_m2
  call void @cond_store(i8* %_secret_dynarrarg513, i32 %_secret_lval517, i1 %_secret_lval518)
  %_secret_arrview519 = alloca i8*
  %_secret_source_gep520 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i8 0, i8 12
  store i8* %_secret_source_gep520, i8** %_secret_arrview519
  %_secret_arrview521 = alloca i8*
  %_secret_source_gep522 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i8 0, i8 12
  store i8* %_secret_source_gep522, i8** %_secret_arrview521
  %_secret_dynarrarg523 = load i8*, i8** %_secret_arrview521
  %_public_structgep524 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep525 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep524, i32 0, i32 0
  %_secret_ptr526 = getelementptr inbounds [5 x i32], [5 x i32]* %_secret_structgep525, i8 0, i8 3
  %_secret_lval527 = load i32, i32* %_secret_ptr526
  %_secret_lval528 = load i1, i1* %_secret___v42_m2
  call void @cond_store(i8* %_secret_dynarrarg523, i32 %_secret_lval527, i1 %_secret_lval528)
  %_secret_arrview529 = alloca i8*
  %_secret_source_gep530 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i8 0, i8 16
  store i8* %_secret_source_gep530, i8** %_secret_arrview529
  %_secret_arrview531 = alloca i8*
  %_secret_source_gep532 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i8 0, i8 16
  store i8* %_secret_source_gep532, i8** %_secret_arrview531
  %_secret_dynarrarg533 = load i8*, i8** %_secret_arrview531
  %_public_structgep534 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep535 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep534, i32 0, i32 0
  %_secret_ptr536 = getelementptr inbounds [5 x i32], [5 x i32]* %_secret_structgep535, i8 0, i8 4
  %_secret_lval537 = load i32, i32* %_secret_ptr536
  %_secret_lval538 = load i1, i1* %_secret___v42_m2
  call void @cond_store(i8* %_secret_dynarrarg533, i32 %_secret_lval537, i1 %_secret_lval538)
  %_secret_arrview539 = alloca i8*
  %_secret_source_gep540 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i8 0, i8 0
  store i8* %_secret_source_gep540, i8** %_secret_arrview539
  %_secret_arrview541 = alloca i8*
  %_secret_source_gep542 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i8 0, i8 0
  store i8* %_secret_source_gep542, i8** %_secret_arrview541
  %_secret_dynarrarg543 = load i8*, i8** %_secret_arrview541
  %_secret_arrview544 = alloca i8*
  %_secret_source_gep545 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i8 0, i8 0
  store i8* %_secret_source_gep545, i8** %_secret_arrview544
  %_secret_arrview546 = alloca i8*
  %_secret_source_gep547 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i8 0, i8 0
  store i8* %_secret_source_gep547, i8** %_secret_arrview546
  %_secret_dynarrarg548 = load i8*, i8** %_secret_arrview546
  %_secret_calltmp549 = call i32 @_load32_le(i8* %_secret_dynarrarg548)
  %_secret_calltmp550 = call i32 @bswap4(i32 %_secret_calltmp549)
  call void @_store32_le(i8* %_secret_dynarrarg543, i32 %_secret_calltmp550)
  %_secret_arrview551 = alloca i8*
  %_secret_source_gep552 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i8 0, i8 4
  store i8* %_secret_source_gep552, i8** %_secret_arrview551
  %_secret_arrview553 = alloca i8*
  %_secret_source_gep554 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i8 0, i8 4
  store i8* %_secret_source_gep554, i8** %_secret_arrview553
  %_secret_dynarrarg555 = load i8*, i8** %_secret_arrview553
  %_secret_arrview556 = alloca i8*
  %_secret_source_gep557 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i8 0, i8 4
  store i8* %_secret_source_gep557, i8** %_secret_arrview556
  %_secret_arrview558 = alloca i8*
  %_secret_source_gep559 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i8 0, i8 4
  store i8* %_secret_source_gep559, i8** %_secret_arrview558
  %_secret_dynarrarg560 = load i8*, i8** %_secret_arrview558
  %_secret_calltmp561 = call i32 @_load32_le(i8* %_secret_dynarrarg560)
  %_secret_calltmp562 = call i32 @bswap4(i32 %_secret_calltmp561)
  call void @_store32_le(i8* %_secret_dynarrarg555, i32 %_secret_calltmp562)
  %_secret_arrview563 = alloca i8*
  %_secret_source_gep564 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i8 0, i8 8
  store i8* %_secret_source_gep564, i8** %_secret_arrview563
  %_secret_arrview565 = alloca i8*
  %_secret_source_gep566 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i8 0, i8 8
  store i8* %_secret_source_gep566, i8** %_secret_arrview565
  %_secret_dynarrarg567 = load i8*, i8** %_secret_arrview565
  %_secret_arrview568 = alloca i8*
  %_secret_source_gep569 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i8 0, i8 8
  store i8* %_secret_source_gep569, i8** %_secret_arrview568
  %_secret_arrview570 = alloca i8*
  %_secret_source_gep571 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i8 0, i8 8
  store i8* %_secret_source_gep571, i8** %_secret_arrview570
  %_secret_dynarrarg572 = load i8*, i8** %_secret_arrview570
  %_secret_calltmp573 = call i32 @_load32_le(i8* %_secret_dynarrarg572)
  %_secret_calltmp574 = call i32 @bswap4(i32 %_secret_calltmp573)
  call void @_store32_le(i8* %_secret_dynarrarg567, i32 %_secret_calltmp574)
  %_secret_arrview575 = alloca i8*
  %_secret_source_gep576 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i8 0, i8 12
  store i8* %_secret_source_gep576, i8** %_secret_arrview575
  %_secret_arrview577 = alloca i8*
  %_secret_source_gep578 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i8 0, i8 12
  store i8* %_secret_source_gep578, i8** %_secret_arrview577
  %_secret_dynarrarg579 = load i8*, i8** %_secret_arrview577
  %_secret_arrview580 = alloca i8*
  %_secret_source_gep581 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i8 0, i8 12
  store i8* %_secret_source_gep581, i8** %_secret_arrview580
  %_secret_arrview582 = alloca i8*
  %_secret_source_gep583 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i8 0, i8 12
  store i8* %_secret_source_gep583, i8** %_secret_arrview582
  %_secret_dynarrarg584 = load i8*, i8** %_secret_arrview582
  %_secret_calltmp585 = call i32 @_load32_le(i8* %_secret_dynarrarg584)
  %_secret_calltmp586 = call i32 @bswap4(i32 %_secret_calltmp585)
  call void @_store32_le(i8* %_secret_dynarrarg579, i32 %_secret_calltmp586)
  %_secret_arrview587 = alloca i8*
  %_secret_source_gep588 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i8 0, i8 16
  store i8* %_secret_source_gep588, i8** %_secret_arrview587
  %_secret_arrview589 = alloca i8*
  %_secret_source_gep590 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i8 0, i8 16
  store i8* %_secret_source_gep590, i8** %_secret_arrview589
  %_secret_dynarrarg591 = load i8*, i8** %_secret_arrview589
  %_secret_arrview592 = alloca i8*
  %_secret_source_gep593 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i8 0, i8 16
  store i8* %_secret_source_gep593, i8** %_secret_arrview592
  %_secret_arrview594 = alloca i8*
  %_secret_source_gep595 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i8 0, i8 16
  store i8* %_secret_source_gep595, i8** %_secret_arrview594
  %_secret_dynarrarg596 = load i8*, i8** %_secret_arrview594
  %_secret_calltmp597 = call i32 @_load32_le(i8* %_secret_dynarrarg596)
  %_secret_calltmp598 = call i32 @bswap4(i32 %_secret_calltmp597)
  call void @_store32_le(i8* %_secret_dynarrarg591, i32 %_secret_calltmp598)
  %_public_lval599 = load i32, i32* %_public___v17__len
  %_public_lval600 = load i32, i32* %_public___v11_SHA_DIGEST_LENGTH
  %_public_addtmp601 = add i32 %_public_lval599, %_public_lval600
  store i32 %_public_addtmp601, i32* %_public___v17__len
  %_public_structgep602 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_public_structgep603 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 2
  call void @_structcopy_SHA_CTX(%SHA_CTX* %_public_structgep602, %SHA_CTX* %_public_structgep603)
  %_public_structgep604 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep605 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep604, i32 0, i32 0
  %_secret_ptr606 = getelementptr inbounds [5 x i32], [5 x i32]* %_secret_structgep605, i8 0, i8 0
  %_secret_arrtoptr607 = bitcast [20 x i8]* %_secret___v33_pmac to i8*
  call void @_sha1_update(i32* %_secret_ptr606, i8* %_secret_arrtoptr607, i64 20)
  %_secret_arrtoptr608 = bitcast [20 x i8]* %_secret___v33_pmac to i8*
  %_public_structgep609 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep610 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep609, i32 0, i32 0
  %_secret_ptr611 = getelementptr inbounds [5 x i32], [5 x i32]* %_secret_structgep610, i8 0, i8 0
  call void @SHA1_Final(i8* %_secret_arrtoptr608, i32* %_secret_ptr611)
  %_public_lval612 = load i32, i32* %_public___v16_outp
  %_secret_lval613 = load i32, i32* %_secret___v26_inp_len
  %_secret_addtmp614 = add i32 %_public_lval612, %_secret_lval613
  store i32 %_secret_addtmp614, i32* %_secret___v43_s_outp
  %_public_lval615 = load i32, i32* %_public____out_len
  %_public_subtmp616 = sub i32 %_public_lval615, 1
  %_public_lval617 = load i32, i32* %_public___v25_maxpad
  %_public_subtmp618 = sub i32 %_public_subtmp616, %_public_lval617
  %_public_lval619 = load i32, i32* %_public___v11_SHA_DIGEST_LENGTH
  %_public_subtmp620 = sub i32 %_public_subtmp618, %_public_lval619
  store i32 %_public_subtmp620, i32* %_public___v44_p_outp
  store i32 0, i32* %_secret___v45_i
  store i32 0, i32* %_public___v46_j
  br label %loop_check621

loop_check621:                                    ; preds = %loop_body622, %branchmerge462
  %_public_lval624 = load i32, i32* %_public___v46_j
  %_public_lval625 = load i32, i32* %_public___v25_maxpad
  %_public_lval626 = load i32, i32* %_public___v11_SHA_DIGEST_LENGTH
  %_public_addtmp627 = add i32 %_public_lval625, %_public_lval626
  %_public_ulttmp628 = icmp ult i32 %_public_lval624, %_public_addtmp627
  br i1 %_public_ulttmp628, label %loop_body622, label %loop_end623

loop_body622:                                     ; preds = %loop_check621
  %_public_lval629 = load i32, i32* %_public___v44_p_outp
  %_public_lval630 = load i32, i32* %_public___v46_j
  %_public_addtmp631 = add i32 %_public_lval629, %_public_lval630
  %_secret_dyn632 = load i8*, i8** %_secret_arrarg2
  %_secret_ptr633 = getelementptr inbounds i8, i8* %_secret_dyn632, i32 %_public_addtmp631
  %_secret_lval634 = load i8, i8* %_secret_ptr633
  %_secret_zexttmp635 = zext i8 %_secret_lval634 to i32
  store i32 %_secret_zexttmp635, i32* %_secret___v47_c
  %_public_lval636 = load i32, i32* %_public___v44_p_outp
  %_public_lval637 = load i32, i32* %_public___v46_j
  %_public_addtmp638 = add i32 %_public_lval636, %_public_lval637
  %_secret_lval639 = load i32, i32* %_secret___v43_s_outp
  %_public_lval640 = load i32, i32* %_public___v11_SHA_DIGEST_LENGTH
  %_secret_addtmp641 = add i32 %_secret_lval639, %_public_lval640
  %_secret_ugtetmp = icmp uge i32 %_public_addtmp638, %_secret_addtmp641
  store i1 %_secret_ugtetmp, i1* %_secret___m12
  %_secret_lval642 = load i32, i32* %_secret___v47_c
  %_secret_lval643 = load i32, i32* %_secret___v23_pad
  %_secret_neqtmp = icmp ne i32 %_secret_lval642, %_secret_lval643
  store i1 %_secret_neqtmp, i1* %_secret___m13
  %_secret_lval644 = load i1, i1* %_secret___m13
  %_secret_landtmp645 = and i1 true, %_secret_lval644
  %_secret_lval646 = load i1, i1* %_secret___m12
  %_secret_landtmp647 = and i1 %_secret_landtmp645, %_secret_lval646
  %_secret_lval648 = load i1, i1* %_secret___rnset
  %_secret_landtmp649 = and i1 %_secret_landtmp647, %_secret_lval648
  %_secret_condtmp650 = icmp ne i1 %_secret_landtmp649, false
  %_secret_lval651 = load i32, i32* %_secret___v18_ret
  %_secret_selecttmp652 = call i32 @select.cmov.sel.i32(i1 %_secret_condtmp650, i32 0, i32 %_secret_lval651)
  store i32 %_secret_selecttmp652, i32* %_secret___v18_ret
  %_secret_lval653 = load i1, i1* %_secret___m13
  %_secret_lnottmp654 = xor i1 %_secret_lval653, true
  store i1 %_secret_lnottmp654, i1* %_secret___m13
  %_secret_lval655 = load i1, i1* %_secret___m12
  %_secret_lnottmp656 = xor i1 %_secret_lval655, true
  store i1 %_secret_lnottmp656, i1* %_secret___m12
  %_public_lval657 = load i32, i32* %_public___v44_p_outp
  %_public_lval658 = load i32, i32* %_public___v46_j
  %_public_addtmp659 = add i32 %_public_lval657, %_public_lval658
  %_secret_lval660 = load i32, i32* %_secret___v43_s_outp
  %_secret_ugtetmp661 = icmp uge i32 %_public_addtmp659, %_secret_lval660
  store i1 %_secret_ugtetmp661, i1* %_secret___m14
  %_secret_lval662 = load i32, i32* %_secret___v47_c
  %_secret_lval663 = load i32, i32* %_secret___v45_i
  %_declassified_res = call i32 @fact.declassify.i32(i32 %_secret_lval663)
  %_secret_ptr664 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i32 0, i32 %_declassified_res
  %_secret_lval665 = load i8, i8* %_secret_ptr664
  %_secret_rhssext = zext i8 %_secret_lval665 to i32
  %_secret_neqtmp666 = icmp ne i32 %_secret_lval662, %_secret_rhssext
  store i1 %_secret_neqtmp666, i1* %_secret___m15
  %_secret_lval667 = load i1, i1* %_secret___m15
  %_secret_landtmp668 = and i1 true, %_secret_lval667
  %_secret_lval669 = load i1, i1* %_secret___m14
  %_secret_landtmp670 = and i1 %_secret_landtmp668, %_secret_lval669
  %_secret_lval671 = load i1, i1* %_secret___m12
  %_secret_landtmp672 = and i1 %_secret_landtmp670, %_secret_lval671
  %_secret_lval673 = load i1, i1* %_secret___rnset
  %_secret_landtmp674 = and i1 %_secret_landtmp672, %_secret_lval673
  %_secret_condtmp675 = icmp ne i1 %_secret_landtmp674, false
  %_secret_lval676 = load i32, i32* %_secret___v18_ret
  %_secret_selecttmp677 = call i32 @select.cmov.sel.i32(i1 %_secret_condtmp675, i32 0, i32 %_secret_lval676)
  store i32 %_secret_selecttmp677, i32* %_secret___v18_ret
  %_secret_lval678 = load i1, i1* %_secret___m15
  %_secret_lnottmp679 = xor i1 %_secret_lval678, true
  store i1 %_secret_lnottmp679, i1* %_secret___m15
  %_secret_lval680 = load i1, i1* %_secret___m14
  %_secret_landtmp681 = and i1 true, %_secret_lval680
  %_secret_lval682 = load i1, i1* %_secret___m12
  %_secret_landtmp683 = and i1 %_secret_landtmp681, %_secret_lval682
  %_secret_lval684 = load i1, i1* %_secret___rnset
  %_secret_landtmp685 = and i1 %_secret_landtmp683, %_secret_lval684
  %_secret_condtmp686 = icmp ne i1 %_secret_landtmp685, false
  %_secret_lval687 = load i32, i32* %_secret___v45_i
  %_secret_addtmp688 = add i32 %_secret_lval687, 1
  %_secret_lval689 = load i32, i32* %_secret___v45_i
  %_secret_selecttmp690 = call i32 @select.cmov.sel.i32(i1 %_secret_condtmp686, i32 %_secret_addtmp688, i32 %_secret_lval689)
  store i32 %_secret_selecttmp690, i32* %_secret___v45_i
  %_secret_lval691 = load i1, i1* %_secret___m14
  %_secret_lnottmp692 = xor i1 %_secret_lval691, true
  store i1 %_secret_lnottmp692, i1* %_secret___m14
  %_public_lval693 = load i32, i32* %_public___v46_j
  %_public_addtmp694 = add i32 %_public_lval693, 1
  store i32 %_public_addtmp694, i32* %_public___v46_j
  br label %loop_check621

loop_end623:                                      ; preds = %loop_check621
  %_secret_lval695 = load i32, i32* %_secret___v18_ret
  store i32 %_secret_lval695, i32* %_secret___rval
  %_secret_lval696 = load i32, i32* %_secret___rval
  ret i32 %_secret_lval696
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

; Function Attrs: noinline
define internal i32 @fact.declassify.i32(i32 %_declassified_x) #3 {
entry:
  ret i32 %_declassified_x
}

attributes #0 = { alwaysinline }
attributes #1 = { alwaysinline readonly }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noinline }
