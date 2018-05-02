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
  %_secret_structgep = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 5
  %_secret_arrview = alloca i8*
  %_secret_source_gep = getelementptr inbounds [16 x i8], [16 x i8]* %_secret_structgep, i64 0, i64 %_public_subtmp
  store i8* %_secret_source_gep, i8** %_secret_arrview
  %_public_lval11 = load i64, i64* %_public_plen
  %_public_subtmp12 = sub i64 %_public_lval11, 4
  %_secret_structgep13 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 5
  %_secret_arrview14 = alloca i8*
  %_secret_source_gep15 = getelementptr inbounds [16 x i8], [16 x i8]* %_secret_structgep13, i64 0, i64 %_public_subtmp12
  store i8* %_secret_source_gep15, i8** %_secret_arrview14
  %_secret_dynarrarg = load i8*, i8** %_secret_arrview14
  %_declassified__secret_calltmp = call i16 @load16_be(i8* %_secret_dynarrarg)
  store i16 %_declassified__secret_calltmp, i16* %_public___v19_tls_ver
  %_public_lval16 = load i16, i16* %_public___v19_tls_ver
  %_public_lval17 = load i32, i32* %_public___v12_TLS1_1_VERSION
  %_public_lhssext = zext i16 %_public_lval16 to i32
  %_declassified__public_ugtetmp = icmp uge i32 %_public_lhssext, %_public_lval17
  %_public_branchcompare = icmp eq i1 %_declassified__public_ugtetmp, true
  br i1 %_public_branchcompare, label %thenbranch, label %elsebranch36

thenbranch:                                       ; preds = %entry
  %_public_lval18 = load i32, i32* %_public___v17__len
  %_public_lval19 = load i32, i32* %_public___v10_AES_BLOCK_SIZE
  %_public_lval20 = load i32, i32* %_public___v11_SHA_DIGEST_LENGTH
  %_public_addtmp = add i32 %_public_lval19, %_public_lval20
  %_public_addtmp21 = add i32 %_public_addtmp, 1
  %_public_ulttmp = icmp ult i32 %_public_lval18, %_public_addtmp21
  %_public_branchcompare22 = icmp eq i1 %_public_ulttmp, true
  br i1 %_public_branchcompare22, label %thenbranch23, label %elsebranch

thenbranch23:                                     ; preds = %thenbranch
  store i32 0, i32* %_secret___rval
  %_secret_lval = load i32, i32* %_secret___rval
  ret i32 %_secret_lval

elsebranch:                                       ; preds = %thenbranch
  br label %branchmerge

branchmerge:                                      ; preds = %elsebranch
  %_secret_dynarrarg24 = load i8*, i8** %_secret_arrarg
  %_secret_dynarrarg25 = load i8*, i8** %_secret_arrarg5
  %_public_lval26 = load i32, i32* %_public____in_len
  call void @_arrcopy(i8* %_secret_dynarrarg24, i32 16, i8* %_secret_dynarrarg25, i32 %_public_lval26)
  %_public_lval27 = load i32, i32* %_public___v15_inp
  %_public_lval28 = load i32, i32* %_public___v10_AES_BLOCK_SIZE
  %_public_addtmp29 = add i32 %_public_lval27, %_public_lval28
  store i32 %_public_addtmp29, i32* %_public___v15_inp
  %_public_lval30 = load i32, i32* %_public___v16_outp
  %_public_lval31 = load i32, i32* %_public___v10_AES_BLOCK_SIZE
  %_public_addtmp32 = add i32 %_public_lval30, %_public_lval31
  store i32 %_public_addtmp32, i32* %_public___v16_outp
  %_public_lval33 = load i32, i32* %_public___v17__len
  %_public_lval34 = load i32, i32* %_public___v10_AES_BLOCK_SIZE
  %_public_subtmp35 = sub i32 %_public_lval33, %_public_lval34
  store i32 %_public_subtmp35, i32* %_public___v17__len
  br label %branchmerge46

elsebranch36:                                     ; preds = %entry
  %_public_lval37 = load i32, i32* %_public___v17__len
  %_public_lval38 = load i32, i32* %_public___v11_SHA_DIGEST_LENGTH
  %_public_addtmp39 = add i32 %_public_lval38, 1
  %_public_ulttmp40 = icmp ult i32 %_public_lval37, %_public_addtmp39
  %_public_branchcompare41 = icmp eq i1 %_public_ulttmp40, true
  br i1 %_public_branchcompare41, label %thenbranch42, label %elsebranch44

thenbranch42:                                     ; preds = %elsebranch36
  store i32 0, i32* %_secret___rval
  %_secret_lval43 = load i32, i32* %_secret___rval
  ret i32 %_secret_lval43

elsebranch44:                                     ; preds = %elsebranch36
  br label %branchmerge45

branchmerge45:                                    ; preds = %elsebranch44
  br label %branchmerge46

branchmerge46:                                    ; preds = %branchmerge45, %branchmerge
  %_public_lval47 = load i32, i32* %_public___v17__len
  store i32 %_public_lval47, i32* %_public___v21___v20_len
  %_public_lval48 = load i32, i32* %_public___v17__len
  store i32 %_public_lval48, i32* %_public___v23___v22_len
  %_public_lval49 = load i32, i32* %_public___v15_inp
  %_secret_ldedviewptr = load i8*, i8** %_secret_arrarg5
  %_secret_source_gep50 = getelementptr inbounds i8, i8* %_secret_ldedviewptr, i32 %_public_lval49
  %_secret_arrviewdyn = alloca i8*
  store i8* %_secret_source_gep50, i8** %_secret_arrviewdyn
  %_public_lval51 = load i32, i32* %_public___v15_inp
  %_secret_ldedviewptr52 = load i8*, i8** %_secret_arrarg5
  %_secret_source_gep53 = getelementptr inbounds i8, i8* %_secret_ldedviewptr52, i32 %_public_lval51
  %_secret_arrviewdyn54 = alloca i8*
  store i8* %_secret_source_gep53, i8** %_secret_arrviewdyn54
  %_secret_dynarrarg55 = load i8*, i8** %_secret_arrviewdyn54
  %_public_lval56 = load i32, i32* %_public___v16_outp
  %_secret_ldedviewptr57 = load i8*, i8** %_secret_arrarg2
  %_secret_source_gep58 = getelementptr inbounds i8, i8* %_secret_ldedviewptr57, i32 %_public_lval56
  %_secret_arrviewdyn59 = alloca i8*
  store i8* %_secret_source_gep58, i8** %_secret_arrviewdyn59
  %_public_lval60 = load i32, i32* %_public___v16_outp
  %_secret_ldedviewptr61 = load i8*, i8** %_secret_arrarg2
  %_secret_source_gep62 = getelementptr inbounds i8, i8* %_secret_ldedviewptr61, i32 %_public_lval60
  %_secret_arrviewdyn63 = alloca i8*
  store i8* %_secret_source_gep62, i8** %_secret_arrviewdyn63
  %_secret_dynarrarg64 = load i8*, i8** %_secret_arrviewdyn63
  %_public_lval65 = load i32, i32* %_public___v17__len
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
  %_secret_ptr = getelementptr inbounds i8, i8* %_secret_dyn, i32 %_public_subtmp71
  %_secret_lval72 = load i8, i8* %_secret_ptr
  %_secret_zexttmp = zext i8 %_secret_lval72 to i32
  store i32 %_secret_zexttmp, i32* %_secret___v24_pad
  %_public_lval73 = load i32, i32* %_public___v17__len
  %_public_lval74 = load i32, i32* %_public___v11_SHA_DIGEST_LENGTH
  %_public_addtmp75 = add i32 %_public_lval74, 1
  %_public_subtmp76 = sub i32 %_public_lval73, %_public_addtmp75
  store i32 %_public_subtmp76, i32* %_public___v25_tmppad
  %_public_lval77 = load i32, i32* %_public___v25_tmppad
  %_public_ugttmp = icmp ugt i32 %_public_lval77, 255
  %_public_condtmp = icmp ne i1 %_public_ugttmp, false
  %_public_lval78 = load i32, i32* %_public___v25_tmppad
  %_public_terntmp = select i1 %_public_condtmp, i32 255, i32 %_public_lval78
  store i32 %_public_terntmp, i32* %_public___v26_maxpad
  %_secret_lval79 = load i32, i32* %_secret___v24_pad
  %_public_lval80 = load i32, i32* %_public___v26_maxpad
  %_secret_ugttmp = icmp ugt i32 %_secret_lval79, %_public_lval80
  store i1 %_secret_ugttmp, i1* %_secret___m3
  %_secret_lval81 = load i1, i1* %_secret___m3
  %_secret_landtmp = and i1 true, %_secret_lval81
  %_secret_lval82 = load i1, i1* %_secret___rnset
  %_secret_landtmp83 = and i1 %_secret_landtmp, %_secret_lval82
  %_secret_condtmp = icmp ne i1 %_secret_landtmp83, false
  %_public_lval84 = load i32, i32* %_public___v26_maxpad
  %_secret_lval85 = load i32, i32* %_secret___v24_pad
  %_secret_selecttmp = call i32 @select.cmov.sel.i32(i1 %_secret_condtmp, i32 %_public_lval84, i32 %_secret_lval85)
  store i32 %_secret_selecttmp, i32* %_secret___v24_pad
  %_secret_lval86 = load i1, i1* %_secret___m3
  %_secret_landtmp87 = and i1 true, %_secret_lval86
  %_secret_lval88 = load i1, i1* %_secret___rnset
  %_secret_landtmp89 = and i1 %_secret_landtmp87, %_secret_lval88
  %_secret_condtmp90 = icmp ne i1 %_secret_landtmp89, false
  %_secret_lval91 = load i32, i32* %_secret___v18_ret
  %_secret_selecttmp92 = call i32 @select.cmov.sel.i32(i1 %_secret_condtmp90, i32 0, i32 %_secret_lval91)
  store i32 %_secret_selecttmp92, i32* %_secret___v18_ret
  %_secret_lval93 = load i1, i1* %_secret___m3
  %_secret_lnottmp = xor i1 %_secret_lval93, true
  store i1 %_secret_lnottmp, i1* %_secret___m3
  %_public_lval94 = load i32, i32* %_public___v17__len
  %_public_lval95 = load i32, i32* %_public___v11_SHA_DIGEST_LENGTH
  %_secret_lval96 = load i32, i32* %_secret___v24_pad
  %_secret_addtmp = add i32 %_public_lval95, %_secret_lval96
  %_secret_addtmp97 = add i32 %_secret_addtmp, 1
  %_secret_subtmp = sub i32 %_public_lval94, %_secret_addtmp97
  store i32 %_secret_subtmp, i32* %_secret___v27_inp_len
  %_public_lval98 = load i64, i64* %_public_plen
  %_public_subtmp99 = sub i64 %_public_lval98, 2
  %_secret_structgep100 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 5
  %_secret_arrview101 = alloca i8*
  %_secret_source_gep102 = getelementptr inbounds [16 x i8], [16 x i8]* %_secret_structgep100, i64 0, i64 %_public_subtmp99
  store i8* %_secret_source_gep102, i8** %_secret_arrview101
  %_public_lval103 = load i64, i64* %_public_plen
  %_public_subtmp104 = sub i64 %_public_lval103, 2
  %_secret_structgep105 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 5
  %_secret_arrview106 = alloca i8*
  %_secret_source_gep107 = getelementptr inbounds [16 x i8], [16 x i8]* %_secret_structgep105, i64 0, i64 %_public_subtmp104
  store i8* %_secret_source_gep107, i8** %_secret_arrview106
  %_secret_dynarrarg108 = load i8*, i8** %_secret_arrview106
  %_secret_lval109 = load i32, i32* %_secret___v27_inp_len
  %_secret_ucast = trunc i32 %_secret_lval109 to i16
  call void @store16_be(i8* %_secret_dynarrarg108, i16 %_secret_ucast)
  %_public_structgep110 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_public_structgep111 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 1
  call void @_structcopy_SHA_CTX(%SHA_CTX* %_public_structgep110, %SHA_CTX* %_public_structgep111)
  %_public_lval112 = load i64, i64* %_public_plen
  %_public_trunctmp = trunc i64 %_public_lval112 to i32
  store i32 %_public_trunctmp, i32* %_public___v29___v28_len
  %_public_structgep113 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep114 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep113, i32 0, i32 0
  %_secret_ptr115 = getelementptr inbounds [5 x i32], [5 x i32]* %_secret_structgep114, i8 0, i8 0
  %_secret_structgep116 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 5
  %_secret_arrview117 = alloca i8*
  %_secret_source_gep118 = getelementptr inbounds [16 x i8], [16 x i8]* %_secret_structgep116, i8 0, i8 0
  store i8* %_secret_source_gep118, i8** %_secret_arrview117
  %_secret_structgep119 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 5
  %_secret_arrview120 = alloca i8*
  %_secret_source_gep121 = getelementptr inbounds [16 x i8], [16 x i8]* %_secret_structgep119, i8 0, i8 0
  store i8* %_secret_source_gep121, i8** %_secret_arrview120
  %_secret_dynarrarg122 = load i8*, i8** %_secret_arrview120
  %_public_lval123 = load i64, i64* %_public_plen
  call void @_sha1_update(i32* %_secret_ptr115, i8* %_secret_dynarrarg122, i64 %_public_lval123)
  %_public_lval124 = load i32, i32* %_public___v17__len
  %_public_lval125 = load i32, i32* %_public___v11_SHA_DIGEST_LENGTH
  %_public_subtmp126 = sub i32 %_public_lval124, %_public_lval125
  store i32 %_public_subtmp126, i32* %_public___v17__len
  %_public_lval127 = load i32, i32* %_public___v17__len
  %_public_lval128 = load i32, i32* %_public___v14_SHA_CBLOCK
  %_public_addtmp129 = add i32 256, %_public_lval128
  %_public_ugtetmp = icmp uge i32 %_public_lval127, %_public_addtmp129
  %_public_branchcompare130 = icmp eq i1 %_public_ugtetmp, true
  br i1 %_public_branchcompare130, label %thenbranch131, label %elsebranch168

thenbranch131:                                    ; preds = %branchmerge46
  %_public_lval132 = load i32, i32* %_public___v17__len
  %_public_lval133 = load i32, i32* %_public___v14_SHA_CBLOCK
  %_public_addtmp134 = add i32 256, %_public_lval133
  %_public_subtmp135 = sub i32 %_public_lval132, %_public_addtmp134
  %_public_lval136 = load i32, i32* %_public___v14_SHA_CBLOCK
  %_public_subtmp137 = sub i32 0, %_public_lval136
  %_public_andtmp = and i32 %_public_subtmp135, %_public_subtmp137
  %_public_lval138 = load i32, i32* %_public___v14_SHA_CBLOCK
  %_public_addtmp139 = add i32 %_public_andtmp, %_public_lval138
  %_public_structgep140 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_public_structgep141 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep140, i32 0, i32 4
  %_public_lval142 = load i32, i32* %_public_structgep141
  %_public_subtmp143 = sub i32 %_public_addtmp139, %_public_lval142
  store i32 %_public_subtmp143, i32* %_public___v30_j
  %_public_lval144 = load i32, i32* %_public___v30_j
  store i32 %_public_lval144, i32* %_public___v32___v31_len
  %_public_structgep145 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep146 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep145, i32 0, i32 0
  %_secret_ptr147 = getelementptr inbounds [5 x i32], [5 x i32]* %_secret_structgep146, i8 0, i8 0
  %_public_lval148 = load i32, i32* %_public___v16_outp
  %_secret_ldedviewptr149 = load i8*, i8** %_secret_arrarg2
  %_secret_source_gep150 = getelementptr inbounds i8, i8* %_secret_ldedviewptr149, i32 %_public_lval148
  %_secret_arrviewdyn151 = alloca i8*
  store i8* %_secret_source_gep150, i8** %_secret_arrviewdyn151
  %_public_lval152 = load i32, i32* %_public___v16_outp
  %_secret_ldedviewptr153 = load i8*, i8** %_secret_arrarg2
  %_secret_source_gep154 = getelementptr inbounds i8, i8* %_secret_ldedviewptr153, i32 %_public_lval152
  %_secret_arrviewdyn155 = alloca i8*
  store i8* %_secret_source_gep154, i8** %_secret_arrviewdyn155
  %_secret_dynarrarg156 = load i8*, i8** %_secret_arrviewdyn155
  %_public_lval157 = load i32, i32* %_public___v30_j
  %_public_zexttmp158 = zext i32 %_public_lval157 to i64
  call void @_sha1_update(i32* %_secret_ptr147, i8* %_secret_dynarrarg156, i64 %_public_zexttmp158)
  %_public_lval159 = load i32, i32* %_public___v16_outp
  %_public_lval160 = load i32, i32* %_public___v30_j
  %_public_addtmp161 = add i32 %_public_lval159, %_public_lval160
  store i32 %_public_addtmp161, i32* %_public___v16_outp
  %_public_lval162 = load i32, i32* %_public___v17__len
  %_public_lval163 = load i32, i32* %_public___v30_j
  %_public_subtmp164 = sub i32 %_public_lval162, %_public_lval163
  store i32 %_public_subtmp164, i32* %_public___v17__len
  %_secret_lval165 = load i32, i32* %_secret___v27_inp_len
  %_public_lval166 = load i32, i32* %_public___v30_j
  %_secret_subtmp167 = sub i32 %_secret_lval165, %_public_lval166
  store i32 %_secret_subtmp167, i32* %_secret___v27_inp_len
  br label %branchmerge169

elsebranch168:                                    ; preds = %branchmerge46
  br label %branchmerge169

branchmerge169:                                   ; preds = %elsebranch168, %thenbranch131
  %_public_structgep170 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep171 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep170, i32 0, i32 1
  %_secret_lval172 = load i32, i32* %_secret_structgep171
  %_secret_lval173 = load i32, i32* %_secret___v27_inp_len
  %_secret_lshift = shl i32 %_secret_lval173, 3
  %_secret_addtmp174 = add i32 %_secret_lval172, %_secret_lshift
  %_secret_calltmp = call i32 @bswap4(i32 %_secret_addtmp174)
  store i32 %_secret_calltmp, i32* %_secret___v33_bitlen
  %_secret___v34_pmac = alloca [20 x i8], align 32
  %_secret_sourcecasted = bitcast [20 x i8]* %_secret___v34_pmac to i8*
  call void @llvm.memset.p0i8.i64(i8* %_secret_sourcecasted, i8 0, i64 20, i32 0, i1 false)
  %_public_structgep175 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_public_structgep176 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep175, i32 0, i32 4
  %_public_lval177 = load i32, i32* %_public_structgep176
  store i32 %_public_lval177, i32* %_public___v35_p_res
  store i32 0, i32* %_public___v36_j
  br label %loop_check

loop_check:                                       ; preds = %branchmerge339, %branchmerge169
  %_public_lval178 = load i32, i32* %_public___v36_j
  %_public_lval179 = load i32, i32* %_public___v17__len
  %_public_ulttmp180 = icmp ult i32 %_public_lval178, %_public_lval179
  br i1 %_public_ulttmp180, label %loop_body, label %loop_end

loop_body:                                        ; preds = %loop_check
  %_public_structgep181 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep182 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep181, i32 0, i32 3
  %_public_lval183 = load i32, i32* %_public___v35_p_res
  %_secret_ptr184 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep182, i32 0, i32 %_public_lval183
  store i8 0, i8* %_secret___m4
  %_public_lval185 = load i32, i32* %_public___v36_j
  %_secret_lval186 = load i32, i32* %_secret___v27_inp_len
  %_secret_ulttmp = icmp ult i32 %_public_lval185, %_secret_lval186
  store i1 %_secret_ulttmp, i1* %_secret___m5
  %_secret_lval187 = load i1, i1* %_secret___m5
  %_secret_landtmp188 = and i1 true, %_secret_lval187
  %_secret_lval189 = load i1, i1* %_secret___rnset
  %_secret_landtmp190 = and i1 %_secret_landtmp188, %_secret_lval189
  %_secret_condtmp191 = icmp ne i1 %_secret_landtmp190, false
  %_public_lval192 = load i32, i32* %_public___v16_outp
  %_public_lval193 = load i32, i32* %_public___v36_j
  %_public_addtmp194 = add i32 %_public_lval192, %_public_lval193
  %_secret_dyn195 = load i8*, i8** %_secret_arrarg2
  %_secret_ptr196 = getelementptr inbounds i8, i8* %_secret_dyn195, i32 %_public_addtmp194
  %_secret_lval197 = load i8, i8* %_secret_ptr196
  %_secret_lval198 = load i8, i8* %_secret___m4
  %_secret_selecttmp199 = call i8 @select.cmov.asm.i8(i1 %_secret_condtmp191, i8 %_secret_lval197, i8 %_secret_lval198)
  store i8 %_secret_selecttmp199, i8* %_secret___m4
  %_secret_lval200 = load i1, i1* %_secret___m5
  %_secret_lnottmp201 = xor i1 %_secret_lval200, true
  store i1 %_secret_lnottmp201, i1* %_secret___m5
  %_secret_lval202 = load i1, i1* %_secret___m5
  %_secret_landtmp203 = and i1 true, %_secret_lval202
  %_secret_lval204 = load i1, i1* %_secret___rnset
  %_secret_landtmp205 = and i1 %_secret_landtmp203, %_secret_lval204
  %_secret_condtmp206 = icmp ne i1 %_secret_landtmp205, false
  store i16 0, i16* %_secret___m6
  %_public_lval207 = load i32, i32* %_public___v36_j
  %_secret_lval208 = load i32, i32* %_secret___v27_inp_len
  %_secret_eqtmp = icmp eq i32 %_public_lval207, %_secret_lval208
  store i1 %_secret_eqtmp, i1* %_secret___m7
  %_secret_lval209 = load i1, i1* %_secret___m7
  %_secret_landtmp210 = and i1 true, %_secret_lval209
  %_secret_lval211 = load i1, i1* %_secret___m5
  %_secret_landtmp212 = and i1 %_secret_landtmp210, %_secret_lval211
  %_secret_lval213 = load i1, i1* %_secret___rnset
  %_secret_landtmp214 = and i1 %_secret_landtmp212, %_secret_lval213
  %_secret_condtmp215 = icmp ne i1 %_secret_landtmp214, false
  %_secret_lval216 = load i16, i16* %_secret___m6
  %_secret_selecttmp217 = call i16 @select.cmov.asm.i16(i1 %_secret_condtmp215, i16 128, i16 %_secret_lval216)
  store i16 %_secret_selecttmp217, i16* %_secret___m6
  %_secret_lval218 = load i1, i1* %_secret___m7
  %_secret_lnottmp219 = xor i1 %_secret_lval218, true
  store i1 %_secret_lnottmp219, i1* %_secret___m7
  %_secret_lval220 = load i1, i1* %_secret___m7
  %_secret_landtmp221 = and i1 true, %_secret_lval220
  %_secret_lval222 = load i1, i1* %_secret___m5
  %_secret_landtmp223 = and i1 %_secret_landtmp221, %_secret_lval222
  %_secret_lval224 = load i1, i1* %_secret___rnset
  %_secret_landtmp225 = and i1 %_secret_landtmp223, %_secret_lval224
  %_secret_condtmp226 = icmp ne i1 %_secret_landtmp225, false
  %_secret_lval227 = load i16, i16* %_secret___m6
  %_secret_selecttmp228 = call i16 @select.cmov.asm.i16(i1 %_secret_condtmp226, i16 0, i16 %_secret_lval227)
  store i16 %_secret_selecttmp228, i16* %_secret___m6
  %_secret___m6229 = load i16, i16* %_secret___m6
  %_secret_trunctmp = trunc i16 %_secret___m6229 to i8
  %_secret_lval230 = load i8, i8* %_secret___m4
  %_secret_selecttmp231 = call i8 @select.cmov.asm.i8(i1 %_secret_condtmp206, i8 %_secret_trunctmp, i8 %_secret_lval230)
  store i8 %_secret_selecttmp231, i8* %_secret___m4
  %_secret___m4232 = load i8, i8* %_secret___m4
  store i8 %_secret___m4232, i8* %_secret_ptr184
  %_public_lval233 = load i32, i32* %_public___v35_p_res
  %_public_addtmp234 = add i32 %_public_lval233, 1
  store i32 %_public_addtmp234, i32* %_public___v35_p_res
  %_public_lval235 = load i32, i32* %_public___v35_p_res
  %_public_lval236 = load i32, i32* %_public___v14_SHA_CBLOCK
  %_public_eqtmp = icmp eq i32 %_public_lval235, %_public_lval236
  %_public_branchcompare237 = icmp eq i1 %_public_eqtmp, true
  br i1 %_public_branchcompare237, label %thenbranch238, label %elsebranch338

loop_end:                                         ; preds = %loop_check
  %_public_lval342 = load i32, i32* %_public___v17__len
  store i32 %_public_lval342, i32* %_public___v39_j
  %_public_lval346 = load i32, i32* %_public___v35_p_res
  store i32 %_public_lval346, i32* %_public___v40_i
  br label %loop_check343

thenbranch238:                                    ; preds = %loop_body
  %_secret_lval239 = load i32, i32* %_secret___v27_inp_len
  %_secret_addtmp240 = add i32 %_secret_lval239, 7
  %_public_lval241 = load i32, i32* %_public___v36_j
  %_secret_ulttmp242 = icmp ult i32 %_secret_addtmp240, %_public_lval241
  store i1 %_secret_ulttmp242, i1* %_secret___v37_m1
  %_public_lval243 = load i32, i32* %_public___v13_SHA_LBLOCK
  %_public_subtmp244 = sub i32 %_public_lval243, 1
  %_public_multmp245 = mul i32 4, %_public_subtmp244
  %_public_structgep246 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep247 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep246, i32 0, i32 3
  %_secret_arrview248 = alloca i8*
  %_secret_source_gep249 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep247, i32 0, i32 %_public_multmp245
  store i8* %_secret_source_gep249, i8** %_secret_arrview248
  %_public_lval250 = load i32, i32* %_public___v13_SHA_LBLOCK
  %_public_subtmp251 = sub i32 %_public_lval250, 1
  %_public_multmp252 = mul i32 4, %_public_subtmp251
  %_public_structgep253 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep254 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep253, i32 0, i32 3
  %_secret_arrview255 = alloca i8*
  %_secret_source_gep256 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep254, i32 0, i32 %_public_multmp252
  store i8* %_secret_source_gep256, i8** %_secret_arrview255
  %_secret_dynarrarg257 = load i8*, i8** %_secret_arrview255
  %_secret_lval258 = load i32, i32* %_secret___v33_bitlen
  %_secret_lval259 = load i1, i1* %_secret___v37_m1
  call void @cond_store(i8* %_secret_dynarrarg257, i32 %_secret_lval258, i1 %_secret_lval259)
  %_public_structgep260 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_public_structgep261 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep262 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep261, i32 0, i32 3
  %_public_structgep263 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep264 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep263, i32 0, i32 3
  %_secret_arrtoptr265 = bitcast [64 x i8]* %_secret_structgep264 to i8*
  call void @sha1_block_data_order(%SHA_CTX* %_public_structgep260, i8* %_secret_arrtoptr265, i32 1)
  store i1 false, i1* %_secret___m8
  %_secret_lval266 = load i1, i1* %_secret___v37_m1
  store i1 %_secret_lval266, i1* %_secret___m9
  %_secret_lval267 = load i1, i1* %_secret___m9
  %_secret_landtmp268 = and i1 true, %_secret_lval267
  %_secret_lval269 = load i1, i1* %_secret___rnset
  %_secret_landtmp270 = and i1 %_secret_landtmp268, %_secret_lval269
  %_secret_condtmp271 = icmp ne i1 %_secret_landtmp270, false
  %_public_lval272 = load i32, i32* %_public___v36_j
  %_secret_lval273 = load i32, i32* %_secret___v27_inp_len
  %_secret_addtmp274 = add i32 %_secret_lval273, 72
  %_secret_ulttmp275 = icmp ult i32 %_public_lval272, %_secret_addtmp274
  %_secret_lval276 = load i1, i1* %_secret___m8
  %_secret_selecttmp277 = call i1 @select.cmov.asm.i1(i1 %_secret_condtmp271, i1 %_secret_ulttmp275, i1 %_secret_lval276)
  store i1 %_secret_selecttmp277, i1* %_secret___m8
  %_secret_lval278 = load i1, i1* %_secret___m9
  %_secret_lnottmp279 = xor i1 %_secret_lval278, true
  store i1 %_secret_lnottmp279, i1* %_secret___m9
  %_secret_lval280 = load i1, i1* %_secret___m9
  %_secret_landtmp281 = and i1 true, %_secret_lval280
  %_secret_lval282 = load i1, i1* %_secret___rnset
  %_secret_landtmp283 = and i1 %_secret_landtmp281, %_secret_lval282
  %_secret_condtmp284 = icmp ne i1 %_secret_landtmp283, false
  %_secret_lval285 = load i1, i1* %_secret___m8
  %_secret_selecttmp286 = call i1 @select.cmov.asm.i1(i1 %_secret_condtmp284, i1 false, i1 %_secret_lval285)
  store i1 %_secret_selecttmp286, i1* %_secret___m8
  %_secret___m8287 = load i1, i1* %_secret___m8
  store i1 %_secret___m8287, i1* %_secret___v38_m2
  %_secret_arrview288 = alloca i8*
  %_secret_source_gep289 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i8 0, i8 0
  store i8* %_secret_source_gep289, i8** %_secret_arrview288
  %_secret_arrview290 = alloca i8*
  %_secret_source_gep291 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i8 0, i8 0
  store i8* %_secret_source_gep291, i8** %_secret_arrview290
  %_secret_dynarrarg292 = load i8*, i8** %_secret_arrview290
  %_public_structgep293 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep294 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep293, i32 0, i32 0
  %_secret_ptr295 = getelementptr inbounds [5 x i32], [5 x i32]* %_secret_structgep294, i8 0, i8 0
  %_secret_lval296 = load i32, i32* %_secret_ptr295
  %_secret_lval297 = load i1, i1* %_secret___v38_m2
  call void @cond_store(i8* %_secret_dynarrarg292, i32 %_secret_lval296, i1 %_secret_lval297)
  %_secret_arrview298 = alloca i8*
  %_secret_source_gep299 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i8 0, i8 4
  store i8* %_secret_source_gep299, i8** %_secret_arrview298
  %_secret_arrview300 = alloca i8*
  %_secret_source_gep301 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i8 0, i8 4
  store i8* %_secret_source_gep301, i8** %_secret_arrview300
  %_secret_dynarrarg302 = load i8*, i8** %_secret_arrview300
  %_public_structgep303 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep304 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep303, i32 0, i32 0
  %_secret_ptr305 = getelementptr inbounds [5 x i32], [5 x i32]* %_secret_structgep304, i8 0, i8 1
  %_secret_lval306 = load i32, i32* %_secret_ptr305
  %_secret_lval307 = load i1, i1* %_secret___v38_m2
  call void @cond_store(i8* %_secret_dynarrarg302, i32 %_secret_lval306, i1 %_secret_lval307)
  %_secret_arrview308 = alloca i8*
  %_secret_source_gep309 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i8 0, i8 8
  store i8* %_secret_source_gep309, i8** %_secret_arrview308
  %_secret_arrview310 = alloca i8*
  %_secret_source_gep311 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i8 0, i8 8
  store i8* %_secret_source_gep311, i8** %_secret_arrview310
  %_secret_dynarrarg312 = load i8*, i8** %_secret_arrview310
  %_public_structgep313 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep314 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep313, i32 0, i32 0
  %_secret_ptr315 = getelementptr inbounds [5 x i32], [5 x i32]* %_secret_structgep314, i8 0, i8 2
  %_secret_lval316 = load i32, i32* %_secret_ptr315
  %_secret_lval317 = load i1, i1* %_secret___v38_m2
  call void @cond_store(i8* %_secret_dynarrarg312, i32 %_secret_lval316, i1 %_secret_lval317)
  %_secret_arrview318 = alloca i8*
  %_secret_source_gep319 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i8 0, i8 12
  store i8* %_secret_source_gep319, i8** %_secret_arrview318
  %_secret_arrview320 = alloca i8*
  %_secret_source_gep321 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i8 0, i8 12
  store i8* %_secret_source_gep321, i8** %_secret_arrview320
  %_secret_dynarrarg322 = load i8*, i8** %_secret_arrview320
  %_public_structgep323 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep324 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep323, i32 0, i32 0
  %_secret_ptr325 = getelementptr inbounds [5 x i32], [5 x i32]* %_secret_structgep324, i8 0, i8 3
  %_secret_lval326 = load i32, i32* %_secret_ptr325
  %_secret_lval327 = load i1, i1* %_secret___v38_m2
  call void @cond_store(i8* %_secret_dynarrarg322, i32 %_secret_lval326, i1 %_secret_lval327)
  %_secret_arrview328 = alloca i8*
  %_secret_source_gep329 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i8 0, i8 16
  store i8* %_secret_source_gep329, i8** %_secret_arrview328
  %_secret_arrview330 = alloca i8*
  %_secret_source_gep331 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i8 0, i8 16
  store i8* %_secret_source_gep331, i8** %_secret_arrview330
  %_secret_dynarrarg332 = load i8*, i8** %_secret_arrview330
  %_public_structgep333 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep334 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep333, i32 0, i32 0
  %_secret_ptr335 = getelementptr inbounds [5 x i32], [5 x i32]* %_secret_structgep334, i8 0, i8 4
  %_secret_lval336 = load i32, i32* %_secret_ptr335
  %_secret_lval337 = load i1, i1* %_secret___v38_m2
  call void @cond_store(i8* %_secret_dynarrarg332, i32 %_secret_lval336, i1 %_secret_lval337)
  store i32 0, i32* %_public___v35_p_res
  br label %branchmerge339

elsebranch338:                                    ; preds = %loop_body
  br label %branchmerge339

branchmerge339:                                   ; preds = %elsebranch338, %thenbranch238
  %_public_lval340 = load i32, i32* %_public___v36_j
  %_public_addtmp341 = add i32 %_public_lval340, 1
  store i32 %_public_addtmp341, i32* %_public___v36_j
  br label %loop_check

loop_check343:                                    ; preds = %loop_body344, %loop_end
  %_public_lval347 = load i32, i32* %_public___v40_i
  %_public_lval348 = load i32, i32* %_public___v14_SHA_CBLOCK
  %_public_ulttmp349 = icmp ult i32 %_public_lval347, %_public_lval348
  br i1 %_public_ulttmp349, label %loop_body344, label %loop_end345

loop_body344:                                     ; preds = %loop_check343
  %_public_structgep350 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep351 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep350, i32 0, i32 3
  %_public_lval352 = load i32, i32* %_public___v40_i
  %_secret_ptr353 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep351, i32 0, i32 %_public_lval352
  store i8 0, i8* %_secret_ptr353
  %_public_lval354 = load i32, i32* %_public___v39_j
  %_public_addtmp355 = add i32 %_public_lval354, 1
  store i32 %_public_addtmp355, i32* %_public___v39_j
  %_public_lval356 = load i32, i32* %_public___v40_i
  %_public_addtmp357 = add i32 %_public_lval356, 1
  store i32 %_public_addtmp357, i32* %_public___v40_i
  br label %loop_check343

loop_end345:                                      ; preds = %loop_check343
  %_public_lval358 = load i32, i32* %_public___v35_p_res
  %_public_lval359 = load i32, i32* %_public___v14_SHA_CBLOCK
  %_public_subtmp360 = sub i32 %_public_lval359, 8
  %_public_ugttmp361 = icmp ugt i32 %_public_lval358, %_public_subtmp360
  %_public_branchcompare362 = icmp eq i1 %_public_ugttmp361, true
  br i1 %_public_branchcompare362, label %thenbranch363, label %elsebranch470

thenbranch363:                                    ; preds = %loop_end345
  %_secret_lval364 = load i32, i32* %_secret___v27_inp_len
  %_secret_addtmp365 = add i32 %_secret_lval364, 8
  %_public_lval366 = load i32, i32* %_public___v39_j
  %_secret_ulttmp367 = icmp ult i32 %_secret_addtmp365, %_public_lval366
  store i1 %_secret_ulttmp367, i1* %_secret___v41_m1
  %_public_lval368 = load i32, i32* %_public___v13_SHA_LBLOCK
  %_public_subtmp369 = sub i32 %_public_lval368, 1
  %_public_multmp370 = mul i32 4, %_public_subtmp369
  %_public_structgep371 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep372 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep371, i32 0, i32 3
  %_secret_arrview373 = alloca i8*
  %_secret_source_gep374 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep372, i32 0, i32 %_public_multmp370
  store i8* %_secret_source_gep374, i8** %_secret_arrview373
  %_public_lval375 = load i32, i32* %_public___v13_SHA_LBLOCK
  %_public_subtmp376 = sub i32 %_public_lval375, 1
  %_public_multmp377 = mul i32 4, %_public_subtmp376
  %_public_structgep378 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep379 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep378, i32 0, i32 3
  %_secret_arrview380 = alloca i8*
  %_secret_source_gep381 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep379, i32 0, i32 %_public_multmp377
  store i8* %_secret_source_gep381, i8** %_secret_arrview380
  %_secret_dynarrarg382 = load i8*, i8** %_secret_arrview380
  %_secret_lval383 = load i32, i32* %_secret___v33_bitlen
  %_secret_lval384 = load i1, i1* %_secret___v41_m1
  call void @cond_store(i8* %_secret_dynarrarg382, i32 %_secret_lval383, i1 %_secret_lval384)
  %_public_structgep385 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_public_structgep386 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep387 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep386, i32 0, i32 3
  %_public_structgep388 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep389 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep388, i32 0, i32 3
  %_secret_arrtoptr390 = bitcast [64 x i8]* %_secret_structgep389 to i8*
  call void @sha1_block_data_order(%SHA_CTX* %_public_structgep385, i8* %_secret_arrtoptr390, i32 1)
  store i1 false, i1* %_secret___m10
  %_secret_lval391 = load i1, i1* %_secret___v41_m1
  store i1 %_secret_lval391, i1* %_secret___m11
  %_secret_lval392 = load i1, i1* %_secret___m11
  %_secret_landtmp393 = and i1 true, %_secret_lval392
  %_secret_lval394 = load i1, i1* %_secret___rnset
  %_secret_landtmp395 = and i1 %_secret_landtmp393, %_secret_lval394
  %_secret_condtmp396 = icmp ne i1 %_secret_landtmp395, false
  %_public_lval397 = load i32, i32* %_public___v39_j
  %_secret_lval398 = load i32, i32* %_secret___v27_inp_len
  %_secret_addtmp399 = add i32 %_secret_lval398, 73
  %_secret_ulttmp400 = icmp ult i32 %_public_lval397, %_secret_addtmp399
  %_secret_lval401 = load i1, i1* %_secret___m10
  %_secret_selecttmp402 = call i1 @select.cmov.asm.i1(i1 %_secret_condtmp396, i1 %_secret_ulttmp400, i1 %_secret_lval401)
  store i1 %_secret_selecttmp402, i1* %_secret___m10
  %_secret_lval403 = load i1, i1* %_secret___m11
  %_secret_lnottmp404 = xor i1 %_secret_lval403, true
  store i1 %_secret_lnottmp404, i1* %_secret___m11
  %_secret_lval405 = load i1, i1* %_secret___m11
  %_secret_landtmp406 = and i1 true, %_secret_lval405
  %_secret_lval407 = load i1, i1* %_secret___rnset
  %_secret_landtmp408 = and i1 %_secret_landtmp406, %_secret_lval407
  %_secret_condtmp409 = icmp ne i1 %_secret_landtmp408, false
  %_secret_lval410 = load i1, i1* %_secret___m10
  %_secret_selecttmp411 = call i1 @select.cmov.asm.i1(i1 %_secret_condtmp409, i1 false, i1 %_secret_lval410)
  store i1 %_secret_selecttmp411, i1* %_secret___m10
  %_secret___m10412 = load i1, i1* %_secret___m10
  store i1 %_secret___m10412, i1* %_secret___v42_m2
  %_secret_arrview413 = alloca i8*
  %_secret_source_gep414 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i8 0, i8 0
  store i8* %_secret_source_gep414, i8** %_secret_arrview413
  %_secret_arrview415 = alloca i8*
  %_secret_source_gep416 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i8 0, i8 0
  store i8* %_secret_source_gep416, i8** %_secret_arrview415
  %_secret_dynarrarg417 = load i8*, i8** %_secret_arrview415
  %_public_structgep418 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep419 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep418, i32 0, i32 0
  %_secret_ptr420 = getelementptr inbounds [5 x i32], [5 x i32]* %_secret_structgep419, i8 0, i8 0
  %_secret_lval421 = load i32, i32* %_secret_ptr420
  %_secret_lval422 = load i1, i1* %_secret___v42_m2
  call void @cond_store(i8* %_secret_dynarrarg417, i32 %_secret_lval421, i1 %_secret_lval422)
  %_secret_arrview423 = alloca i8*
  %_secret_source_gep424 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i8 0, i8 4
  store i8* %_secret_source_gep424, i8** %_secret_arrview423
  %_secret_arrview425 = alloca i8*
  %_secret_source_gep426 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i8 0, i8 4
  store i8* %_secret_source_gep426, i8** %_secret_arrview425
  %_secret_dynarrarg427 = load i8*, i8** %_secret_arrview425
  %_public_structgep428 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep429 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep428, i32 0, i32 0
  %_secret_ptr430 = getelementptr inbounds [5 x i32], [5 x i32]* %_secret_structgep429, i8 0, i8 1
  %_secret_lval431 = load i32, i32* %_secret_ptr430
  %_secret_lval432 = load i1, i1* %_secret___v42_m2
  call void @cond_store(i8* %_secret_dynarrarg427, i32 %_secret_lval431, i1 %_secret_lval432)
  %_secret_arrview433 = alloca i8*
  %_secret_source_gep434 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i8 0, i8 8
  store i8* %_secret_source_gep434, i8** %_secret_arrview433
  %_secret_arrview435 = alloca i8*
  %_secret_source_gep436 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i8 0, i8 8
  store i8* %_secret_source_gep436, i8** %_secret_arrview435
  %_secret_dynarrarg437 = load i8*, i8** %_secret_arrview435
  %_public_structgep438 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep439 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep438, i32 0, i32 0
  %_secret_ptr440 = getelementptr inbounds [5 x i32], [5 x i32]* %_secret_structgep439, i8 0, i8 2
  %_secret_lval441 = load i32, i32* %_secret_ptr440
  %_secret_lval442 = load i1, i1* %_secret___v42_m2
  call void @cond_store(i8* %_secret_dynarrarg437, i32 %_secret_lval441, i1 %_secret_lval442)
  %_secret_arrview443 = alloca i8*
  %_secret_source_gep444 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i8 0, i8 12
  store i8* %_secret_source_gep444, i8** %_secret_arrview443
  %_secret_arrview445 = alloca i8*
  %_secret_source_gep446 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i8 0, i8 12
  store i8* %_secret_source_gep446, i8** %_secret_arrview445
  %_secret_dynarrarg447 = load i8*, i8** %_secret_arrview445
  %_public_structgep448 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep449 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep448, i32 0, i32 0
  %_secret_ptr450 = getelementptr inbounds [5 x i32], [5 x i32]* %_secret_structgep449, i8 0, i8 3
  %_secret_lval451 = load i32, i32* %_secret_ptr450
  %_secret_lval452 = load i1, i1* %_secret___v42_m2
  call void @cond_store(i8* %_secret_dynarrarg447, i32 %_secret_lval451, i1 %_secret_lval452)
  %_secret_arrview453 = alloca i8*
  %_secret_source_gep454 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i8 0, i8 16
  store i8* %_secret_source_gep454, i8** %_secret_arrview453
  %_secret_arrview455 = alloca i8*
  %_secret_source_gep456 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i8 0, i8 16
  store i8* %_secret_source_gep456, i8** %_secret_arrview455
  %_secret_dynarrarg457 = load i8*, i8** %_secret_arrview455
  %_public_structgep458 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep459 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep458, i32 0, i32 0
  %_secret_ptr460 = getelementptr inbounds [5 x i32], [5 x i32]* %_secret_structgep459, i8 0, i8 4
  %_secret_lval461 = load i32, i32* %_secret_ptr460
  %_secret_lval462 = load i1, i1* %_secret___v42_m2
  call void @cond_store(i8* %_secret_dynarrarg457, i32 %_secret_lval461, i1 %_secret_lval462)
  %_public_structgep463 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep464 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep463, i32 0, i32 3
  %_public_structgep465 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep466 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep465, i32 0, i32 3
  %_secret_arrtoptr467 = bitcast [64 x i8]* %_secret_structgep466 to i8*
  call void @_memzero(i8* %_secret_arrtoptr467, i32 64)
  %_public_lval468 = load i32, i32* %_public___v39_j
  %_public_addtmp469 = add i32 %_public_lval468, 64
  store i32 %_public_addtmp469, i32* %_public___v39_j
  br label %branchmerge471

elsebranch470:                                    ; preds = %loop_end345
  br label %branchmerge471

branchmerge471:                                   ; preds = %elsebranch470, %thenbranch363
  %_public_lval472 = load i32, i32* %_public___v13_SHA_LBLOCK
  %_public_subtmp473 = sub i32 %_public_lval472, 1
  %_public_multmp474 = mul i32 4, %_public_subtmp473
  %_public_structgep475 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep476 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep475, i32 0, i32 3
  %_secret_arrview477 = alloca i8*
  %_secret_source_gep478 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep476, i32 0, i32 %_public_multmp474
  store i8* %_secret_source_gep478, i8** %_secret_arrview477
  %_public_lval479 = load i32, i32* %_public___v13_SHA_LBLOCK
  %_public_subtmp480 = sub i32 %_public_lval479, 1
  %_public_multmp481 = mul i32 4, %_public_subtmp480
  %_public_structgep482 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep483 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep482, i32 0, i32 3
  %_secret_arrview484 = alloca i8*
  %_secret_source_gep485 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep483, i32 0, i32 %_public_multmp481
  store i8* %_secret_source_gep485, i8** %_secret_arrview484
  %_secret_dynarrarg486 = load i8*, i8** %_secret_arrview484
  %_secret_lval487 = load i32, i32* %_secret___v33_bitlen
  call void @_store32_le(i8* %_secret_dynarrarg486, i32 %_secret_lval487)
  %_public_structgep488 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_public_structgep489 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep490 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep489, i32 0, i32 3
  %_public_structgep491 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep492 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep491, i32 0, i32 3
  %_secret_arrtoptr493 = bitcast [64 x i8]* %_secret_structgep492 to i8*
  call void @sha1_block_data_order(%SHA_CTX* %_public_structgep488, i8* %_secret_arrtoptr493, i32 1)
  %_public_lval494 = load i32, i32* %_public___v39_j
  %_secret_lval495 = load i32, i32* %_secret___v27_inp_len
  %_secret_addtmp496 = add i32 %_secret_lval495, 73
  %_secret_ulttmp497 = icmp ult i32 %_public_lval494, %_secret_addtmp496
  store i1 %_secret_ulttmp497, i1* %_secret___v43_m2
  %_secret_arrview498 = alloca i8*
  %_secret_source_gep499 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i8 0, i8 0
  store i8* %_secret_source_gep499, i8** %_secret_arrview498
  %_secret_arrview500 = alloca i8*
  %_secret_source_gep501 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i8 0, i8 0
  store i8* %_secret_source_gep501, i8** %_secret_arrview500
  %_secret_dynarrarg502 = load i8*, i8** %_secret_arrview500
  %_public_structgep503 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep504 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep503, i32 0, i32 0
  %_secret_ptr505 = getelementptr inbounds [5 x i32], [5 x i32]* %_secret_structgep504, i8 0, i8 0
  %_secret_lval506 = load i32, i32* %_secret_ptr505
  %_secret_lval507 = load i1, i1* %_secret___v43_m2
  call void @cond_store(i8* %_secret_dynarrarg502, i32 %_secret_lval506, i1 %_secret_lval507)
  %_secret_arrview508 = alloca i8*
  %_secret_source_gep509 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i8 0, i8 4
  store i8* %_secret_source_gep509, i8** %_secret_arrview508
  %_secret_arrview510 = alloca i8*
  %_secret_source_gep511 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i8 0, i8 4
  store i8* %_secret_source_gep511, i8** %_secret_arrview510
  %_secret_dynarrarg512 = load i8*, i8** %_secret_arrview510
  %_public_structgep513 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep514 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep513, i32 0, i32 0
  %_secret_ptr515 = getelementptr inbounds [5 x i32], [5 x i32]* %_secret_structgep514, i8 0, i8 1
  %_secret_lval516 = load i32, i32* %_secret_ptr515
  %_secret_lval517 = load i1, i1* %_secret___v43_m2
  call void @cond_store(i8* %_secret_dynarrarg512, i32 %_secret_lval516, i1 %_secret_lval517)
  %_secret_arrview518 = alloca i8*
  %_secret_source_gep519 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i8 0, i8 8
  store i8* %_secret_source_gep519, i8** %_secret_arrview518
  %_secret_arrview520 = alloca i8*
  %_secret_source_gep521 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i8 0, i8 8
  store i8* %_secret_source_gep521, i8** %_secret_arrview520
  %_secret_dynarrarg522 = load i8*, i8** %_secret_arrview520
  %_public_structgep523 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep524 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep523, i32 0, i32 0
  %_secret_ptr525 = getelementptr inbounds [5 x i32], [5 x i32]* %_secret_structgep524, i8 0, i8 2
  %_secret_lval526 = load i32, i32* %_secret_ptr525
  %_secret_lval527 = load i1, i1* %_secret___v43_m2
  call void @cond_store(i8* %_secret_dynarrarg522, i32 %_secret_lval526, i1 %_secret_lval527)
  %_secret_arrview528 = alloca i8*
  %_secret_source_gep529 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i8 0, i8 12
  store i8* %_secret_source_gep529, i8** %_secret_arrview528
  %_secret_arrview530 = alloca i8*
  %_secret_source_gep531 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i8 0, i8 12
  store i8* %_secret_source_gep531, i8** %_secret_arrview530
  %_secret_dynarrarg532 = load i8*, i8** %_secret_arrview530
  %_public_structgep533 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep534 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep533, i32 0, i32 0
  %_secret_ptr535 = getelementptr inbounds [5 x i32], [5 x i32]* %_secret_structgep534, i8 0, i8 3
  %_secret_lval536 = load i32, i32* %_secret_ptr535
  %_secret_lval537 = load i1, i1* %_secret___v43_m2
  call void @cond_store(i8* %_secret_dynarrarg532, i32 %_secret_lval536, i1 %_secret_lval537)
  %_secret_arrview538 = alloca i8*
  %_secret_source_gep539 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i8 0, i8 16
  store i8* %_secret_source_gep539, i8** %_secret_arrview538
  %_secret_arrview540 = alloca i8*
  %_secret_source_gep541 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i8 0, i8 16
  store i8* %_secret_source_gep541, i8** %_secret_arrview540
  %_secret_dynarrarg542 = load i8*, i8** %_secret_arrview540
  %_public_structgep543 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep544 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep543, i32 0, i32 0
  %_secret_ptr545 = getelementptr inbounds [5 x i32], [5 x i32]* %_secret_structgep544, i8 0, i8 4
  %_secret_lval546 = load i32, i32* %_secret_ptr545
  %_secret_lval547 = load i1, i1* %_secret___v43_m2
  call void @cond_store(i8* %_secret_dynarrarg542, i32 %_secret_lval546, i1 %_secret_lval547)
  %_secret_arrview548 = alloca i8*
  %_secret_source_gep549 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i8 0, i8 0
  store i8* %_secret_source_gep549, i8** %_secret_arrview548
  %_secret_arrview550 = alloca i8*
  %_secret_source_gep551 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i8 0, i8 0
  store i8* %_secret_source_gep551, i8** %_secret_arrview550
  %_secret_dynarrarg552 = load i8*, i8** %_secret_arrview550
  %_secret_arrview553 = alloca i8*
  %_secret_source_gep554 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i8 0, i8 0
  store i8* %_secret_source_gep554, i8** %_secret_arrview553
  %_secret_arrview555 = alloca i8*
  %_secret_source_gep556 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i8 0, i8 0
  store i8* %_secret_source_gep556, i8** %_secret_arrview555
  %_secret_dynarrarg557 = load i8*, i8** %_secret_arrview555
  %_secret_calltmp558 = call i32 @_load32_le(i8* %_secret_dynarrarg557)
  %_secret_calltmp559 = call i32 @bswap4(i32 %_secret_calltmp558)
  call void @_store32_le(i8* %_secret_dynarrarg552, i32 %_secret_calltmp559)
  %_secret_arrview560 = alloca i8*
  %_secret_source_gep561 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i8 0, i8 4
  store i8* %_secret_source_gep561, i8** %_secret_arrview560
  %_secret_arrview562 = alloca i8*
  %_secret_source_gep563 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i8 0, i8 4
  store i8* %_secret_source_gep563, i8** %_secret_arrview562
  %_secret_dynarrarg564 = load i8*, i8** %_secret_arrview562
  %_secret_arrview565 = alloca i8*
  %_secret_source_gep566 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i8 0, i8 4
  store i8* %_secret_source_gep566, i8** %_secret_arrview565
  %_secret_arrview567 = alloca i8*
  %_secret_source_gep568 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i8 0, i8 4
  store i8* %_secret_source_gep568, i8** %_secret_arrview567
  %_secret_dynarrarg569 = load i8*, i8** %_secret_arrview567
  %_secret_calltmp570 = call i32 @_load32_le(i8* %_secret_dynarrarg569)
  %_secret_calltmp571 = call i32 @bswap4(i32 %_secret_calltmp570)
  call void @_store32_le(i8* %_secret_dynarrarg564, i32 %_secret_calltmp571)
  %_secret_arrview572 = alloca i8*
  %_secret_source_gep573 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i8 0, i8 8
  store i8* %_secret_source_gep573, i8** %_secret_arrview572
  %_secret_arrview574 = alloca i8*
  %_secret_source_gep575 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i8 0, i8 8
  store i8* %_secret_source_gep575, i8** %_secret_arrview574
  %_secret_dynarrarg576 = load i8*, i8** %_secret_arrview574
  %_secret_arrview577 = alloca i8*
  %_secret_source_gep578 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i8 0, i8 8
  store i8* %_secret_source_gep578, i8** %_secret_arrview577
  %_secret_arrview579 = alloca i8*
  %_secret_source_gep580 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i8 0, i8 8
  store i8* %_secret_source_gep580, i8** %_secret_arrview579
  %_secret_dynarrarg581 = load i8*, i8** %_secret_arrview579
  %_secret_calltmp582 = call i32 @_load32_le(i8* %_secret_dynarrarg581)
  %_secret_calltmp583 = call i32 @bswap4(i32 %_secret_calltmp582)
  call void @_store32_le(i8* %_secret_dynarrarg576, i32 %_secret_calltmp583)
  %_secret_arrview584 = alloca i8*
  %_secret_source_gep585 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i8 0, i8 12
  store i8* %_secret_source_gep585, i8** %_secret_arrview584
  %_secret_arrview586 = alloca i8*
  %_secret_source_gep587 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i8 0, i8 12
  store i8* %_secret_source_gep587, i8** %_secret_arrview586
  %_secret_dynarrarg588 = load i8*, i8** %_secret_arrview586
  %_secret_arrview589 = alloca i8*
  %_secret_source_gep590 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i8 0, i8 12
  store i8* %_secret_source_gep590, i8** %_secret_arrview589
  %_secret_arrview591 = alloca i8*
  %_secret_source_gep592 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i8 0, i8 12
  store i8* %_secret_source_gep592, i8** %_secret_arrview591
  %_secret_dynarrarg593 = load i8*, i8** %_secret_arrview591
  %_secret_calltmp594 = call i32 @_load32_le(i8* %_secret_dynarrarg593)
  %_secret_calltmp595 = call i32 @bswap4(i32 %_secret_calltmp594)
  call void @_store32_le(i8* %_secret_dynarrarg588, i32 %_secret_calltmp595)
  %_secret_arrview596 = alloca i8*
  %_secret_source_gep597 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i8 0, i8 16
  store i8* %_secret_source_gep597, i8** %_secret_arrview596
  %_secret_arrview598 = alloca i8*
  %_secret_source_gep599 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i8 0, i8 16
  store i8* %_secret_source_gep599, i8** %_secret_arrview598
  %_secret_dynarrarg600 = load i8*, i8** %_secret_arrview598
  %_secret_arrview601 = alloca i8*
  %_secret_source_gep602 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i8 0, i8 16
  store i8* %_secret_source_gep602, i8** %_secret_arrview601
  %_secret_arrview603 = alloca i8*
  %_secret_source_gep604 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i8 0, i8 16
  store i8* %_secret_source_gep604, i8** %_secret_arrview603
  %_secret_dynarrarg605 = load i8*, i8** %_secret_arrview603
  %_secret_calltmp606 = call i32 @_load32_le(i8* %_secret_dynarrarg605)
  %_secret_calltmp607 = call i32 @bswap4(i32 %_secret_calltmp606)
  call void @_store32_le(i8* %_secret_dynarrarg600, i32 %_secret_calltmp607)
  %_public_lval608 = load i32, i32* %_public___v17__len
  %_public_lval609 = load i32, i32* %_public___v11_SHA_DIGEST_LENGTH
  %_public_addtmp610 = add i32 %_public_lval608, %_public_lval609
  store i32 %_public_addtmp610, i32* %_public___v17__len
  %_public_structgep611 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_public_structgep612 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 2
  call void @_structcopy_SHA_CTX(%SHA_CTX* %_public_structgep611, %SHA_CTX* %_public_structgep612)
  %_public_structgep613 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep614 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep613, i32 0, i32 0
  %_secret_ptr615 = getelementptr inbounds [5 x i32], [5 x i32]* %_secret_structgep614, i8 0, i8 0
  %_secret_arrtoptr616 = bitcast [20 x i8]* %_secret___v34_pmac to i8*
  call void @_sha1_update(i32* %_secret_ptr615, i8* %_secret_arrtoptr616, i64 20)
  %_secret_arrtoptr617 = bitcast [20 x i8]* %_secret___v34_pmac to i8*
  %_public_structgep618 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep619 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep618, i32 0, i32 0
  %_secret_ptr620 = getelementptr inbounds [5 x i32], [5 x i32]* %_secret_structgep619, i8 0, i8 0
  call void @SHA1_Final(i8* %_secret_arrtoptr617, i32* %_secret_ptr620)
  %_public_lval621 = load i32, i32* %_public___v16_outp
  %_secret_lval622 = load i32, i32* %_secret___v27_inp_len
  %_secret_addtmp623 = add i32 %_public_lval621, %_secret_lval622
  store i32 %_secret_addtmp623, i32* %_secret___v44_s_outp
  %_public_lval624 = load i32, i32* %_public____out_len
  %_public_subtmp625 = sub i32 %_public_lval624, 1
  %_public_lval626 = load i32, i32* %_public___v26_maxpad
  %_public_subtmp627 = sub i32 %_public_subtmp625, %_public_lval626
  %_public_lval628 = load i32, i32* %_public___v11_SHA_DIGEST_LENGTH
  %_public_subtmp629 = sub i32 %_public_subtmp627, %_public_lval628
  store i32 %_public_subtmp629, i32* %_public___v45_p_outp
  store i32 0, i32* %_secret___v46_i
  store i32 0, i32* %_public___v47_j
  br label %loop_check630

loop_check630:                                    ; preds = %loop_body631, %branchmerge471
  %_public_lval633 = load i32, i32* %_public___v47_j
  %_public_lval634 = load i32, i32* %_public___v26_maxpad
  %_public_lval635 = load i32, i32* %_public___v11_SHA_DIGEST_LENGTH
  %_public_addtmp636 = add i32 %_public_lval634, %_public_lval635
  %_public_ulttmp637 = icmp ult i32 %_public_lval633, %_public_addtmp636
  br i1 %_public_ulttmp637, label %loop_body631, label %loop_end632

loop_body631:                                     ; preds = %loop_check630
  %_public_lval638 = load i32, i32* %_public___v45_p_outp
  %_public_lval639 = load i32, i32* %_public___v47_j
  %_public_addtmp640 = add i32 %_public_lval638, %_public_lval639
  %_secret_dyn641 = load i8*, i8** %_secret_arrarg2
  %_secret_ptr642 = getelementptr inbounds i8, i8* %_secret_dyn641, i32 %_public_addtmp640
  %_secret_lval643 = load i8, i8* %_secret_ptr642
  %_secret_zexttmp644 = zext i8 %_secret_lval643 to i32
  store i32 %_secret_zexttmp644, i32* %_secret___v48_c
  %_public_lval645 = load i32, i32* %_public___v45_p_outp
  %_public_lval646 = load i32, i32* %_public___v47_j
  %_public_addtmp647 = add i32 %_public_lval645, %_public_lval646
  %_secret_lval648 = load i32, i32* %_secret___v44_s_outp
  %_public_lval649 = load i32, i32* %_public___v11_SHA_DIGEST_LENGTH
  %_secret_addtmp650 = add i32 %_secret_lval648, %_public_lval649
  %_secret_ugtetmp = icmp uge i32 %_public_addtmp647, %_secret_addtmp650
  store i1 %_secret_ugtetmp, i1* %_secret___m12
  %_secret_lval651 = load i32, i32* %_secret___v48_c
  %_secret_lval652 = load i32, i32* %_secret___v24_pad
  %_secret_neqtmp = icmp ne i32 %_secret_lval651, %_secret_lval652
  store i1 %_secret_neqtmp, i1* %_secret___m13
  %_secret_lval653 = load i1, i1* %_secret___m13
  %_secret_landtmp654 = and i1 true, %_secret_lval653
  %_secret_lval655 = load i1, i1* %_secret___m12
  %_secret_landtmp656 = and i1 %_secret_landtmp654, %_secret_lval655
  %_secret_lval657 = load i1, i1* %_secret___rnset
  %_secret_landtmp658 = and i1 %_secret_landtmp656, %_secret_lval657
  %_secret_condtmp659 = icmp ne i1 %_secret_landtmp658, false
  %_secret_lval660 = load i32, i32* %_secret___v18_ret
  %_secret_selecttmp661 = call i32 @select.cmov.sel.i32(i1 %_secret_condtmp659, i32 0, i32 %_secret_lval660)
  store i32 %_secret_selecttmp661, i32* %_secret___v18_ret
  %_secret_lval662 = load i1, i1* %_secret___m13
  %_secret_lnottmp663 = xor i1 %_secret_lval662, true
  store i1 %_secret_lnottmp663, i1* %_secret___m13
  %_secret_lval664 = load i1, i1* %_secret___m12
  %_secret_lnottmp665 = xor i1 %_secret_lval664, true
  store i1 %_secret_lnottmp665, i1* %_secret___m12
  %_public_lval666 = load i32, i32* %_public___v45_p_outp
  %_public_lval667 = load i32, i32* %_public___v47_j
  %_public_addtmp668 = add i32 %_public_lval666, %_public_lval667
  %_secret_lval669 = load i32, i32* %_secret___v44_s_outp
  %_secret_ugtetmp670 = icmp uge i32 %_public_addtmp668, %_secret_lval669
  store i1 %_secret_ugtetmp670, i1* %_secret___m14
  %_secret_lval671 = load i32, i32* %_secret___v48_c
  %_declassified__secret_lval672 = load i32, i32* %_secret___v46_i
  %_secret_ptr673 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i32 0, i32 %_declassified__secret_lval672
  %_secret_lval674 = load i8, i8* %_secret_ptr673
  %_secret_rhssext = zext i8 %_secret_lval674 to i32
  %_secret_neqtmp675 = icmp ne i32 %_secret_lval671, %_secret_rhssext
  store i1 %_secret_neqtmp675, i1* %_secret___m15
  %_secret_lval676 = load i1, i1* %_secret___m15
  %_secret_landtmp677 = and i1 true, %_secret_lval676
  %_secret_lval678 = load i1, i1* %_secret___m14
  %_secret_landtmp679 = and i1 %_secret_landtmp677, %_secret_lval678
  %_secret_lval680 = load i1, i1* %_secret___m12
  %_secret_landtmp681 = and i1 %_secret_landtmp679, %_secret_lval680
  %_secret_lval682 = load i1, i1* %_secret___rnset
  %_secret_landtmp683 = and i1 %_secret_landtmp681, %_secret_lval682
  %_secret_condtmp684 = icmp ne i1 %_secret_landtmp683, false
  %_secret_lval685 = load i32, i32* %_secret___v18_ret
  %_secret_selecttmp686 = call i32 @select.cmov.sel.i32(i1 %_secret_condtmp684, i32 0, i32 %_secret_lval685)
  store i32 %_secret_selecttmp686, i32* %_secret___v18_ret
  %_secret_lval687 = load i1, i1* %_secret___m15
  %_secret_lnottmp688 = xor i1 %_secret_lval687, true
  store i1 %_secret_lnottmp688, i1* %_secret___m15
  %_secret_lval689 = load i1, i1* %_secret___m14
  %_secret_landtmp690 = and i1 true, %_secret_lval689
  %_secret_lval691 = load i1, i1* %_secret___m12
  %_secret_landtmp692 = and i1 %_secret_landtmp690, %_secret_lval691
  %_secret_lval693 = load i1, i1* %_secret___rnset
  %_secret_landtmp694 = and i1 %_secret_landtmp692, %_secret_lval693
  %_secret_condtmp695 = icmp ne i1 %_secret_landtmp694, false
  %_secret_lval696 = load i32, i32* %_secret___v46_i
  %_secret_addtmp697 = add i32 %_secret_lval696, 1
  %_secret_lval698 = load i32, i32* %_secret___v46_i
  %_secret_selecttmp699 = call i32 @select.cmov.sel.i32(i1 %_secret_condtmp695, i32 %_secret_addtmp697, i32 %_secret_lval698)
  store i32 %_secret_selecttmp699, i32* %_secret___v46_i
  %_secret_lval700 = load i1, i1* %_secret___m14
  %_secret_lnottmp701 = xor i1 %_secret_lval700, true
  store i1 %_secret_lnottmp701, i1* %_secret___m14
  %_public_lval702 = load i32, i32* %_public___v47_j
  %_public_addtmp703 = add i32 %_public_lval702, 1
  store i32 %_public_addtmp703, i32* %_public___v47_j
  br label %loop_check630

loop_end632:                                      ; preds = %loop_check630
  %_secret_lval704 = load i32, i32* %_secret___v18_ret
  store i32 %_secret_lval704, i32* %_secret___rval
  %_secret_lval705 = load i32, i32* %_secret___rval
  ret i32 %_secret_lval705
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
