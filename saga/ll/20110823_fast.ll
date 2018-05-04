; ModuleID = 'Module'
source_filename = "Module"

%AES_KEY = type { [60 x i32], i32 }
%SHA_CTX = type { [5 x i32], i32, i32, [64 x i8], i32 }
%EVP_AES_HMAC_SHA1 = type { %AES_KEY, %SHA_CTX, %SHA_CTX, %SHA_CTX, i64, [16 x i8] }

; Function Attrs: alwaysinline
define internal i16 @load16_be(i8* %_secret_arrarg1) #0 {
entry:
  %_secret_arrarg = alloca i8*
  store i8* %_secret_arrarg1, i8** %_secret_arrarg
  %_secret___rval = alloca i16
  %_secret___rnset = alloca i1
  %_secret___v1_x2 = alloca i16
  %_secret___v2_x1 = alloca i16
  store i16 0, i16* %_secret___rval
  store i1 true, i1* %_secret___rnset
  %_secret_dyn = load i8*, i8** %_secret_arrarg
  %_secret_ptr = getelementptr inbounds i8, i8* %_secret_dyn, i8 0
  %_secret_lval = load i8, i8* %_secret_ptr
  %_secret_ucast = zext i8 %_secret_lval to i16
  %_secret_lshift = shl i16 %_secret_ucast, 8
  store i16 %_secret_lshift, i16* %_secret___v1_x2
  %_secret_dyn2 = load i8*, i8** %_secret_arrarg
  %_secret_ptr3 = getelementptr inbounds i8, i8* %_secret_dyn2, i8 1
  %_secret_lval4 = load i8, i8* %_secret_ptr3
  %_secret_ucast5 = zext i8 %_secret_lval4 to i16
  store i16 %_secret_ucast5, i16* %_secret___v2_x1
  %_secret_lval6 = load i16, i16* %_secret___v2_x1
  %_secret_lval7 = load i16, i16* %_secret___v1_x2
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
define internal void @store32_be(i8* %_secret_arrarg1, i32 %_secret_n2) #0 {
entry:
  %_secret_arrarg = alloca i8*
  store i8* %_secret_arrarg1, i8** %_secret_arrarg
  %_secret_n = alloca i32
  store i32 %_secret_n2, i32* %_secret_n
  %_secret___rnset = alloca i1
  store i1 true, i1* %_secret___rnset
  %_secret_dyn = load i8*, i8** %_secret_arrarg
  %_secret_ptr = getelementptr inbounds i8, i8* %_secret_dyn, i8 0
  %_secret_lval = load i32, i32* %_secret_n
  %_secret_lrshift = lshr i32 %_secret_lval, 24
  %_secret_ucast = trunc i32 %_secret_lrshift to i8
  store i8 %_secret_ucast, i8* %_secret_ptr
  %_secret_dyn3 = load i8*, i8** %_secret_arrarg
  %_secret_ptr4 = getelementptr inbounds i8, i8* %_secret_dyn3, i8 1
  %_secret_lval5 = load i32, i32* %_secret_n
  %_secret_lrshift6 = lshr i32 %_secret_lval5, 16
  %_secret_ucast7 = trunc i32 %_secret_lrshift6 to i8
  store i8 %_secret_ucast7, i8* %_secret_ptr4
  %_secret_dyn8 = load i8*, i8** %_secret_arrarg
  %_secret_ptr9 = getelementptr inbounds i8, i8* %_secret_dyn8, i8 2
  %_secret_lval10 = load i32, i32* %_secret_n
  %_secret_lrshift11 = lshr i32 %_secret_lval10, 8
  %_secret_ucast12 = trunc i32 %_secret_lrshift11 to i8
  store i8 %_secret_ucast12, i8* %_secret_ptr9
  %_secret_dyn13 = load i8*, i8** %_secret_arrarg
  %_secret_ptr14 = getelementptr inbounds i8, i8* %_secret_dyn13, i8 3
  %_secret_lval15 = load i32, i32* %_secret_n
  %_secret_ucast16 = trunc i32 %_secret_lval15 to i8
  store i8 %_secret_ucast16, i8* %_secret_ptr14
  ret void
}

declare void @aesni_cbc_encrypt(i8*, i8*, i64, %AES_KEY*, i8*, i32)

declare void @sha1_block_data_order(%SHA_CTX*, i8*, i32)

define internal void @SHA1_Update_public(%SHA_CTX* %ctx, i8* %_secret_arrarg1, i32 %_public____in_len2) {
entry:
  %_secret_arrarg = alloca i8*
  store i8* %_secret_arrarg1, i8** %_secret_arrarg
  %_public____in_len = alloca i32
  store i32 %_public____in_len2, i32* %_public____in_len
  %_secret___rnset = alloca i1
  %_public___v3_SHA_LBLOCK = alloca i32
  %_public___v4_SHA_CBLOCK = alloca i32
  %_public___v5_l = alloca i64
  %_secret___v6_N = alloca i64
  %_public___v7_inp = alloca i32
  %_public___v8__len = alloca i32
  %_public___v9_num = alloca i32
  %_public___v10_res = alloca i32
  %_public___v12___v11_len = alloca i32
  %_public___v14___v13_len = alloca i32
  %_public___v15_n = alloca i32
  %_public___v17___v16_len = alloca i32
  %_public___v19___v18_len = alloca i32
  %_public___v21___v20_len = alloca i32
  store i1 true, i1* %_secret___rnset
  store i32 16, i32* %_public___v3_SHA_LBLOCK
  %_public_lval = load i32, i32* %_public___v3_SHA_LBLOCK
  %_public_multmp = mul i32 %_public_lval, 4
  store i32 %_public_multmp, i32* %_public___v4_SHA_CBLOCK
  %_public_lval3 = load i32, i32* %_public____in_len
  %_public_ucast = zext i32 %_public_lval3 to i64
  %_public_lshift = shl i64 %_public_ucast, 3
  store i64 %_public_lshift, i64* %_public___v5_l
  %_secret_structgep = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 2
  %_secret_lval = load i32, i32* %_secret_structgep
  %_secret_ucast = zext i32 %_secret_lval to i64
  %_secret_lshift = shl i64 %_secret_ucast, 32
  %_secret_structgep4 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 1
  %_secret_lval5 = load i32, i32* %_secret_structgep4
  %_secret_rhssext = zext i32 %_secret_lval5 to i64
  %_secret_ortmp = or i64 %_secret_lshift, %_secret_rhssext
  %_public_lval6 = load i64, i64* %_public___v5_l
  %_secret_addtmp = add i64 %_secret_ortmp, %_public_lval6
  store i64 %_secret_addtmp, i64* %_secret___v6_N
  %_secret_structgep7 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 2
  %_secret_lval8 = load i64, i64* %_secret___v6_N
  %_secret_lrshift = lshr i64 %_secret_lval8, 32
  %_secret_ucast9 = trunc i64 %_secret_lrshift to i32
  store i32 %_secret_ucast9, i32* %_secret_structgep7
  %_secret_structgep10 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 1
  %_secret_lval11 = load i64, i64* %_secret___v6_N
  %_secret_ucast12 = trunc i64 %_secret_lval11 to i32
  store i32 %_secret_ucast12, i32* %_secret_structgep10
  store i32 0, i32* %_public___v7_inp
  %_public_lval13 = load i32, i32* %_public____in_len
  store i32 %_public_lval13, i32* %_public___v8__len
  %_public_structgep = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 4
  %_public_lval14 = load i32, i32* %_public_structgep
  store i32 %_public_lval14, i32* %_public___v9_num
  %_public_lval15 = load i32, i32* %_public___v9_num
  %_public_ugttmp = icmp ugt i32 %_public_lval15, 0
  %_public_lval16 = load i32, i32* %_public___v8__len
  %_public_ugttmp17 = icmp ugt i32 %_public_lval16, 0
  %_public_landtmp = and i1 %_public_ugttmp, %_public_ugttmp17
  %_public_branchcompare = icmp eq i1 %_public_landtmp, true
  br i1 %_public_branchcompare, label %thenbranch, label %elsebranch59

thenbranch:                                       ; preds = %entry
  %_public_lval18 = load i32, i32* %_public____in_len
  %_public_lval19 = load i32, i32* %_public___v4_SHA_CBLOCK
  %_public_lval20 = load i32, i32* %_public___v9_num
  %_public_subtmp = sub i32 %_public_lval19, %_public_lval20
  %_public_ulttmp = icmp ult i32 %_public_lval18, %_public_subtmp
  %_public_condtmp = icmp ne i1 %_public_ulttmp, false
  %_public_lval21 = load i32, i32* %_public____in_len
  %_public_lval22 = load i32, i32* %_public___v4_SHA_CBLOCK
  %_public_lval23 = load i32, i32* %_public___v9_num
  %_public_subtmp24 = sub i32 %_public_lval22, %_public_lval23
  %_public_terntmp = select i1 %_public_condtmp, i32 %_public_lval21, i32 %_public_subtmp24
  store i32 %_public_terntmp, i32* %_public___v10_res
  %_public_lval25 = load i32, i32* %_public___v10_res
  store i32 %_public_lval25, i32* %_public___v12___v11_len
  %_public_lval26 = load i32, i32* %_public___v10_res
  store i32 %_public_lval26, i32* %_public___v14___v13_len
  %_public_lval27 = load i32, i32* %_public___v9_num
  %_secret_structgep28 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 3
  %_secret_arrview = alloca i8*
  %_secret_source_gep = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep28, i32 0, i32 %_public_lval27
  store i8* %_secret_source_gep, i8** %_secret_arrview
  %_public_lval29 = load i32, i32* %_public___v9_num
  %_secret_structgep30 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 3
  %_secret_arrview31 = alloca i8*
  %_secret_source_gep32 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep30, i32 0, i32 %_public_lval29
  store i8* %_secret_source_gep32, i8** %_secret_arrview31
  %_secret_dynarrarg = load i8*, i8** %_secret_arrview31
  %_public_lval33 = load i32, i32* %_public___v12___v11_len
  %_secret_ldedviewptr = load i8*, i8** %_secret_arrarg
  %_secret_source_gep34 = getelementptr inbounds i8, i8* %_secret_ldedviewptr, i8 0
  %_secret_arrviewdyn = alloca i8*
  store i8* %_secret_source_gep34, i8** %_secret_arrviewdyn
  %_secret_ldedviewptr35 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep36 = getelementptr inbounds i8, i8* %_secret_ldedviewptr35, i8 0
  %_secret_arrviewdyn37 = alloca i8*
  store i8* %_secret_source_gep36, i8** %_secret_arrviewdyn37
  %_secret_dynarrarg38 = load i8*, i8** %_secret_arrviewdyn37
  %_public_lval39 = load i32, i32* %_public___v14___v13_len
  call void @_arrcopy(i8* %_secret_dynarrarg, i32 %_public_lval33, i8* %_secret_dynarrarg38, i32 %_public_lval39)
  %_public_lval40 = load i32, i32* %_public___v10_res
  %_public_lval41 = load i32, i32* %_public___v9_num
  %_public_addtmp = add i32 %_public_lval40, %_public_lval41
  %_public_lval42 = load i32, i32* %_public___v4_SHA_CBLOCK
  %_public_eqtmp = icmp eq i32 %_public_addtmp, %_public_lval42
  %_public_branchcompare43 = icmp eq i1 %_public_eqtmp, true
  br i1 %_public_branchcompare43, label %thenbranch44, label %elsebranch

thenbranch44:                                     ; preds = %thenbranch
  %_secret_structgep45 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 3
  %_secret_structgep46 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 3
  %_secret_arrtoptr = bitcast [64 x i8]* %_secret_structgep46 to i8*
  call void @sha1_block_data_order(%SHA_CTX* %ctx, i8* %_secret_arrtoptr, i32 1)
  %_public_structgep47 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 4
  store i32 0, i32* %_public_structgep47
  br label %branchmerge

elsebranch:                                       ; preds = %thenbranch
  %_public_structgep48 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 4
  %_public_structgep49 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 4
  %_public_lval50 = load i32, i32* %_public_structgep49
  %_public_lval51 = load i32, i32* %_public___v10_res
  %_public_addtmp52 = add i32 %_public_lval50, %_public_lval51
  store i32 %_public_addtmp52, i32* %_public_structgep48
  br label %branchmerge

branchmerge:                                      ; preds = %elsebranch, %thenbranch44
  %_public_lval53 = load i32, i32* %_public___v7_inp
  %_public_lval54 = load i32, i32* %_public___v10_res
  %_public_addtmp55 = add i32 %_public_lval53, %_public_lval54
  store i32 %_public_addtmp55, i32* %_public___v7_inp
  %_public_lval56 = load i32, i32* %_public___v8__len
  %_public_lval57 = load i32, i32* %_public___v10_res
  %_public_subtmp58 = sub i32 %_public_lval56, %_public_lval57
  store i32 %_public_subtmp58, i32* %_public___v8__len
  br label %branchmerge60

elsebranch59:                                     ; preds = %entry
  br label %branchmerge60

branchmerge60:                                    ; preds = %elsebranch59, %branchmerge
  %_public_lval61 = load i32, i32* %_public___v8__len
  %_public_lval62 = load i32, i32* %_public___v4_SHA_CBLOCK
  %_public_udivtmp = udiv i32 %_public_lval61, %_public_lval62
  store i32 %_public_udivtmp, i32* %_public___v15_n
  %_public_lval63 = load i32, i32* %_public___v15_n
  %_public_ugttmp64 = icmp ugt i32 %_public_lval63, 0
  %_public_branchcompare65 = icmp eq i1 %_public_ugttmp64, true
  br i1 %_public_branchcompare65, label %thenbranch66, label %elsebranch90

thenbranch66:                                     ; preds = %branchmerge60
  %_public_lval67 = load i32, i32* %_public___v15_n
  %_public_lval68 = load i32, i32* %_public___v4_SHA_CBLOCK
  %_public_multmp69 = mul i32 %_public_lval67, %_public_lval68
  store i32 %_public_multmp69, i32* %_public___v17___v16_len
  %_public_lval70 = load i32, i32* %_public___v7_inp
  %_secret_ldedviewptr71 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep72 = getelementptr inbounds i8, i8* %_secret_ldedviewptr71, i32 %_public_lval70
  %_secret_arrviewdyn73 = alloca i8*
  store i8* %_secret_source_gep72, i8** %_secret_arrviewdyn73
  %_public_lval74 = load i32, i32* %_public___v7_inp
  %_secret_ldedviewptr75 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep76 = getelementptr inbounds i8, i8* %_secret_ldedviewptr75, i32 %_public_lval74
  %_secret_arrviewdyn77 = alloca i8*
  store i8* %_secret_source_gep76, i8** %_secret_arrviewdyn77
  %_secret_dynarrarg78 = load i8*, i8** %_secret_arrviewdyn77
  %_public_lval79 = load i32, i32* %_public___v15_n
  call void @sha1_block_data_order(%SHA_CTX* %ctx, i8* %_secret_dynarrarg78, i32 %_public_lval79)
  %_public_lval80 = load i32, i32* %_public___v7_inp
  %_public_lval81 = load i32, i32* %_public___v15_n
  %_public_lval82 = load i32, i32* %_public___v4_SHA_CBLOCK
  %_public_multmp83 = mul i32 %_public_lval81, %_public_lval82
  %_public_addtmp84 = add i32 %_public_lval80, %_public_multmp83
  store i32 %_public_addtmp84, i32* %_public___v7_inp
  %_public_lval85 = load i32, i32* %_public___v8__len
  %_public_lval86 = load i32, i32* %_public___v15_n
  %_public_lval87 = load i32, i32* %_public___v4_SHA_CBLOCK
  %_public_multmp88 = mul i32 %_public_lval86, %_public_lval87
  %_public_subtmp89 = sub i32 %_public_lval85, %_public_multmp88
  store i32 %_public_subtmp89, i32* %_public___v8__len
  br label %branchmerge91

elsebranch90:                                     ; preds = %branchmerge60
  br label %branchmerge91

branchmerge91:                                    ; preds = %elsebranch90, %thenbranch66
  %_public_lval92 = load i32, i32* %_public___v8__len
  %_public_ugttmp93 = icmp ugt i32 %_public_lval92, 0
  %_public_branchcompare94 = icmp eq i1 %_public_ugttmp93, true
  br i1 %_public_branchcompare94, label %thenbranch95, label %elsebranch121

thenbranch95:                                     ; preds = %branchmerge91
  %_public_lval96 = load i32, i32* %_public___v8__len
  store i32 %_public_lval96, i32* %_public___v19___v18_len
  %_public_lval97 = load i32, i32* %_public___v8__len
  store i32 %_public_lval97, i32* %_public___v21___v20_len
  %_secret_structgep98 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 3
  %_secret_arrview99 = alloca i8*
  %_secret_source_gep100 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep98, i8 0, i8 0
  store i8* %_secret_source_gep100, i8** %_secret_arrview99
  %_secret_structgep101 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 3
  %_secret_arrview102 = alloca i8*
  %_secret_source_gep103 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep101, i8 0, i8 0
  store i8* %_secret_source_gep103, i8** %_secret_arrview102
  %_secret_dynarrarg104 = load i8*, i8** %_secret_arrview102
  %_public_lval105 = load i32, i32* %_public___v19___v18_len
  %_public_lval106 = load i32, i32* %_public___v7_inp
  %_secret_ldedviewptr107 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep108 = getelementptr inbounds i8, i8* %_secret_ldedviewptr107, i32 %_public_lval106
  %_secret_arrviewdyn109 = alloca i8*
  store i8* %_secret_source_gep108, i8** %_secret_arrviewdyn109
  %_public_lval110 = load i32, i32* %_public___v7_inp
  %_secret_ldedviewptr111 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep112 = getelementptr inbounds i8, i8* %_secret_ldedviewptr111, i32 %_public_lval110
  %_secret_arrviewdyn113 = alloca i8*
  store i8* %_secret_source_gep112, i8** %_secret_arrviewdyn113
  %_secret_dynarrarg114 = load i8*, i8** %_secret_arrviewdyn113
  %_public_lval115 = load i32, i32* %_public___v21___v20_len
  call void @_arrcopy(i8* %_secret_dynarrarg104, i32 %_public_lval105, i8* %_secret_dynarrarg114, i32 %_public_lval115)
  %_public_structgep116 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 4
  %_public_structgep117 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 4
  %_public_lval118 = load i32, i32* %_public_structgep117
  %_public_lval119 = load i32, i32* %_public___v8__len
  %_public_addtmp120 = add i32 %_public_lval118, %_public_lval119
  store i32 %_public_addtmp120, i32* %_public_structgep116
  br label %branchmerge122

elsebranch121:                                    ; preds = %branchmerge91
  br label %branchmerge122

branchmerge122:                                   ; preds = %elsebranch121, %thenbranch95
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #1

; Function Attrs: alwaysinline
define internal void @_arrcopy(i8*, i32, i8*, i32) #0 {
entry:
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %0, i8* %2, i32 %1, i32 1, i1 false)
  ret void
}

define internal void @SHA1_Update_secret(%SHA_CTX* %ctx, i32* %_secret_ctx_num, i8* %_secret_arrarg1, i32 %_public____in_len2, i32 %_secret_slen3) {
entry:
  %_secret_arrarg = alloca i8*
  store i8* %_secret_arrarg1, i8** %_secret_arrarg
  %_public____in_len = alloca i32
  store i32 %_public____in_len2, i32* %_public____in_len
  %_secret_slen = alloca i32
  store i32 %_secret_slen3, i32* %_secret_slen
  %_secret___rnset = alloca i1
  %_public___v22_SHA_LBLOCK = alloca i32
  %_public___v23_SHA_CBLOCK = alloca i32
  %_secret___v24_l = alloca i64
  %_secret___v25_N = alloca i64
  %_public___v26_num = alloca i32
  %_public___v27_i = alloca i32
  %_public___v28_j = alloca i32
  %_secret___m1 = alloca i1
  %_secret___m2 = alloca i1
  %_public___v30_k = alloca i32
  store i1 true, i1* %_secret___rnset
  store i32 16, i32* %_public___v22_SHA_LBLOCK
  %_public_lval = load i32, i32* %_public___v22_SHA_LBLOCK
  %_public_multmp = mul i32 %_public_lval, 4
  store i32 %_public_multmp, i32* %_public___v23_SHA_CBLOCK
  %_secret_lval = load i32, i32* %_secret_slen
  %_secret_ucast = zext i32 %_secret_lval to i64
  %_secret_lshift = shl i64 %_secret_ucast, 3
  store i64 %_secret_lshift, i64* %_secret___v24_l
  %_secret_structgep = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 2
  %_secret_lval4 = load i32, i32* %_secret_structgep
  %_secret_ucast5 = zext i32 %_secret_lval4 to i64
  %_secret_lshift6 = shl i64 %_secret_ucast5, 32
  %_secret_structgep7 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 1
  %_secret_lval8 = load i32, i32* %_secret_structgep7
  %_secret_rhssext = zext i32 %_secret_lval8 to i64
  %_secret_ortmp = or i64 %_secret_lshift6, %_secret_rhssext
  %_secret_lval9 = load i64, i64* %_secret___v24_l
  %_secret_addtmp = add i64 %_secret_ortmp, %_secret_lval9
  store i64 %_secret_addtmp, i64* %_secret___v25_N
  %_secret_structgep10 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 2
  %_secret_lval11 = load i64, i64* %_secret___v25_N
  %_secret_lrshift = lshr i64 %_secret_lval11, 32
  %_secret_ucast12 = trunc i64 %_secret_lrshift to i32
  store i32 %_secret_ucast12, i32* %_secret_structgep10
  %_secret_structgep13 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 1
  %_secret_lval14 = load i64, i64* %_secret___v25_N
  %_secret_ucast15 = trunc i64 %_secret_lval14 to i32
  store i32 %_secret_ucast15, i32* %_secret_structgep13
  %_public_structgep = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 4
  %_public_lval16 = load i32, i32* %_public_structgep
  store i32 %_public_lval16, i32* %_public___v26_num
  store i32 0, i32* %_public___v27_i
  br label %loop_check

loop_check:                                       ; preds = %branchmerge, %entry
  %_public_lval17 = load i32, i32* %_public___v27_i
  %_public_lval18 = load i32, i32* %_public____in_len
  %_public_ulttmp = icmp ult i32 %_public_lval17, %_public_lval18
  br i1 %_public_ulttmp, label %loop_body, label %loop_end

loop_body:                                        ; preds = %loop_check
  %_public_lval19 = load i32, i32* %_public___v26_num
  %_public_lval20 = load i32, i32* %_public___v27_i
  %_public_addtmp = add i32 %_public_lval19, %_public_lval20
  %_public_lval21 = load i32, i32* %_public___v23_SHA_CBLOCK
  %_public_uremtmp = urem i32 %_public_addtmp, %_public_lval21
  store i32 %_public_uremtmp, i32* %_public___v28_j
  %_public_lval22 = load i32, i32* %_public___v27_i
  %_secret_lval23 = load i32, i32* %_secret_slen
  %_secret_ulttmp = icmp ult i32 %_public_lval22, %_secret_lval23
  store i1 %_secret_ulttmp, i1* %_secret___m1
  %_secret_structgep24 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 3
  %_public_lval25 = load i32, i32* %_public___v28_j
  %_secret_ptr = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep24, i32 0, i32 %_public_lval25
  %_secret_lval26 = load i1, i1* %_secret___m1
  %_secret_landtmp = and i1 true, %_secret_lval26
  %_secret_lval27 = load i1, i1* %_secret___rnset
  %_secret_landtmp28 = and i1 %_secret_landtmp, %_secret_lval27
  %_secret_condtmp = icmp ne i1 %_secret_landtmp28, false
  %_public_lval29 = load i32, i32* %_public___v27_i
  %_secret_dyn = load i8*, i8** %_secret_arrarg
  %_secret_ptr30 = getelementptr inbounds i8, i8* %_secret_dyn, i32 %_public_lval29
  %_secret_lval31 = load i8, i8* %_secret_ptr30
  %_secret_structgep32 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 3
  %_public_lval33 = load i32, i32* %_public___v28_j
  %_secret_ptr34 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep32, i32 0, i32 %_public_lval33
  %_secret_lval35 = load i8, i8* %_secret_ptr34
  %_secret_selecttmp = call i8 @select.cmov.asm.i8(i1 %_secret_condtmp, i8 %_secret_lval31, i8 %_secret_lval35)
  store i8 %_secret_selecttmp, i8* %_secret_ptr
  %_secret_lval36 = load i1, i1* %_secret___m1
  %_secret_lnottmp = xor i1 %_secret_lval36, true
  store i1 %_secret_lnottmp, i1* %_secret___m1
  %_public_lval37 = load i32, i32* %_public___v28_j
  %_public_lval38 = load i32, i32* %_public___v23_SHA_CBLOCK
  %_public_subtmp = sub i32 %_public_lval38, 1
  %_public_eqtmp = icmp eq i32 %_public_lval37, %_public_subtmp
  %_public_branchcompare = icmp eq i1 %_public_eqtmp, true
  br i1 %_public_branchcompare, label %thenbranch, label %elsebranch

loop_end:                                         ; preds = %loop_check
  %_public_lval71 = load i32, i32* %_public___v26_num
  %_secret_lval72 = load i32, i32* %_secret_slen
  %_secret_addtmp73 = add i32 %_public_lval71, %_secret_lval72
  %_public_lval74 = load i32, i32* %_public___v23_SHA_CBLOCK
  %_public_subtmp75 = sub i32 %_public_lval74, 1
  %_secret_andtmp = and i32 %_secret_addtmp73, %_public_subtmp75
  store i32 %_secret_andtmp, i32* %_secret_ctx_num
  %_public_structgep76 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 4
  %_public_lval77 = load i32, i32* %_public___v26_num
  %_public_lval78 = load i32, i32* %_public____in_len
  %_public_addtmp79 = add i32 %_public_lval77, %_public_lval78
  %_public_lval80 = load i32, i32* %_public___v23_SHA_CBLOCK
  %_public_uremtmp81 = urem i32 %_public_addtmp79, %_public_lval80
  store i32 %_public_uremtmp81, i32* %_public_structgep76
  ret void

thenbranch:                                       ; preds = %loop_body
  %_secret___v29_h = alloca [5 x i32]
  %_secret_structgep39 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 0
  %_secret_sourcecasted = bitcast [5 x i32]* %_secret_structgep39 to i8*
  %_secret_destcast = bitcast [5 x i32]* %_secret___v29_h to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %_secret_destcast, i8* %_secret_sourcecasted, i64 20, i32 0, i1 false)
  %_secret_structgep40 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 3
  %_secret_structgep41 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 3
  %_secret_arrtoptr = bitcast [64 x i8]* %_secret_structgep41 to i8*
  call void @sha1_block_data_order(%SHA_CTX* %ctx, i8* %_secret_arrtoptr, i32 1)
  %_public_lval42 = load i32, i32* %_public___v27_i
  %_secret_lval43 = load i32, i32* %_secret_slen
  %_secret_ugtetmp = icmp uge i32 %_public_lval42, %_secret_lval43
  store i1 %_secret_ugtetmp, i1* %_secret___m2
  store i32 0, i32* %_public___v30_k
  br label %loop_check44

loop_check44:                                     ; preds = %loop_body45, %thenbranch
  %_public_lval47 = load i32, i32* %_public___v30_k
  %_public_ulttmp48 = icmp ult i32 %_public_lval47, 5
  br i1 %_public_ulttmp48, label %loop_body45, label %loop_end46

loop_body45:                                      ; preds = %loop_check44
  %_secret_structgep49 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 0
  %_public_lval50 = load i32, i32* %_public___v30_k
  %_secret_ptr51 = getelementptr inbounds [5 x i32], [5 x i32]* %_secret_structgep49, i32 0, i32 %_public_lval50
  %_secret_lval52 = load i1, i1* %_secret___m2
  %_secret_landtmp53 = and i1 true, %_secret_lval52
  %_secret_lval54 = load i1, i1* %_secret___rnset
  %_secret_landtmp55 = and i1 %_secret_landtmp53, %_secret_lval54
  %_secret_condtmp56 = icmp ne i1 %_secret_landtmp55, false
  %_public_lval57 = load i32, i32* %_public___v30_k
  %_secret_ptr58 = getelementptr inbounds [5 x i32], [5 x i32]* %_secret___v29_h, i32 0, i32 %_public_lval57
  %_secret_lval59 = load i32, i32* %_secret_ptr58
  %_secret_structgep60 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 0
  %_public_lval61 = load i32, i32* %_public___v30_k
  %_secret_ptr62 = getelementptr inbounds [5 x i32], [5 x i32]* %_secret_structgep60, i32 0, i32 %_public_lval61
  %_secret_lval63 = load i32, i32* %_secret_ptr62
  %_secret_selecttmp64 = call i32 @select.cmov.sel.i32(i1 %_secret_condtmp56, i32 %_secret_lval59, i32 %_secret_lval63)
  store i32 %_secret_selecttmp64, i32* %_secret_ptr51
  %_public_lval65 = load i32, i32* %_public___v30_k
  %_public_addtmp66 = add i32 %_public_lval65, 1
  store i32 %_public_addtmp66, i32* %_public___v30_k
  br label %loop_check44

loop_end46:                                       ; preds = %loop_check44
  %_secret_lval67 = load i1, i1* %_secret___m2
  %_secret_lnottmp68 = xor i1 %_secret_lval67, true
  store i1 %_secret_lnottmp68, i1* %_secret___m2
  br label %branchmerge

elsebranch:                                       ; preds = %loop_body
  br label %branchmerge

branchmerge:                                      ; preds = %elsebranch, %loop_end46
  %_public_lval69 = load i32, i32* %_public___v27_i
  %_public_addtmp70 = add i32 %_public_lval69, 1
  store i32 %_public_addtmp70, i32* %_public___v27_i
  br label %loop_check
}

; Function Attrs: alwaysinline
define internal i8 @select.cmov.asm.i8(i1 %_secret_cond, i8 %_secret_a, i8 %_secret_b) #0 {
entry:
  %_secret_zext = zext i8 %_secret_a to i32
  %_secret_zext1 = zext i8 %_secret_b to i32
  %_secret_asm = call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %_secret_cond, i32 %_secret_zext, i32 %_secret_zext1)
  %_secret_trunc = trunc i32 %_secret_asm to i8
  ret i8 %_secret_trunc
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: alwaysinline
define internal i32 @select.cmov.sel.i32(i1 %_secret_cond, i32 %_secret_a, i32 %_secret_b) #0 {
entry:
  %_secret_select = select i1 %_secret_cond, i32 %_secret_a, i32 %_secret_b
  ret i32 %_secret_select
}

; Function Attrs: alwaysinline
define internal void @SHA1_MAKE_STRING(%SHA_CTX* %ctx, i8* %_secret_arrarg1) #0 {
entry:
  %_secret_arrarg = alloca i8*
  store i8* %_secret_arrarg1, i8** %_secret_arrarg
  %_secret___rnset = alloca i1
  %_public___v31_i = alloca i32
  store i1 true, i1* %_secret___rnset
  store i32 0, i32* %_public___v31_i
  br label %loop_check

loop_check:                                       ; preds = %loop_body, %entry
  %_public_lval = load i32, i32* %_public___v31_i
  %_public_ulttmp = icmp ult i32 %_public_lval, 5
  br i1 %_public_ulttmp, label %loop_body, label %loop_end

loop_body:                                        ; preds = %loop_check
  %_public_lval2 = load i32, i32* %_public___v31_i
  %_public_multmp = mul i32 %_public_lval2, 4
  %_secret_ldedviewptr = load i8*, i8** %_secret_arrarg
  %_secret_source_gep = getelementptr inbounds i8, i8* %_secret_ldedviewptr, i32 %_public_multmp
  %_secret_arrviewdyn = alloca i8*
  store i8* %_secret_source_gep, i8** %_secret_arrviewdyn
  %_public_lval3 = load i32, i32* %_public___v31_i
  %_public_multmp4 = mul i32 %_public_lval3, 4
  %_secret_ldedviewptr5 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep6 = getelementptr inbounds i8, i8* %_secret_ldedviewptr5, i32 %_public_multmp4
  %_secret_arrviewdyn7 = alloca i8*
  store i8* %_secret_source_gep6, i8** %_secret_arrviewdyn7
  %_secret_dynarrarg = load i8*, i8** %_secret_arrviewdyn7
  %_secret_structgep = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 0
  %_public_lval8 = load i32, i32* %_public___v31_i
  %_secret_ptr = getelementptr inbounds [5 x i32], [5 x i32]* %_secret_structgep, i32 0, i32 %_public_lval8
  %_secret_lval = load i32, i32* %_secret_ptr
  call void @store32_be(i8* %_secret_dynarrarg, i32 %_secret_lval)
  %_public_lval9 = load i32, i32* %_public___v31_i
  %_public_addtmp = add i32 %_public_lval9, 1
  store i32 %_public_addtmp, i32* %_public___v31_i
  br label %loop_check

loop_end:                                         ; preds = %loop_check
  ret void
}

define internal void @SHA1_Final_public(i8* %_secret_arrarg1, %SHA_CTX* %ctx) {
entry:
  %_secret_arrarg = alloca i8*
  store i8* %_secret_arrarg1, i8** %_secret_arrarg
  %_secret___rnset = alloca i1
  %_public___v32_num = alloca i32
  %_public___v34___v33_len = alloca i32
  %_public___v36___v35_len = alloca i32
  store i1 true, i1* %_secret___rnset
  %_public_structgep = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 4
  %_public_lval = load i32, i32* %_public_structgep
  store i32 %_public_lval, i32* %_public___v32_num
  %_secret_structgep = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 3
  %_public_lval2 = load i32, i32* %_public___v32_num
  %_secret_ptr = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep, i32 0, i32 %_public_lval2
  store i8 -128, i8* %_secret_ptr
  %_public_lval3 = load i32, i32* %_public___v32_num
  %_public_addtmp = add i32 %_public_lval3, 1
  store i32 %_public_addtmp, i32* %_public___v32_num
  %_public_lval4 = load i32, i32* %_public___v32_num
  %_public_ugttmp = icmp ugt i32 %_public_lval4, 56
  %_public_branchcompare = icmp eq i1 %_public_ugttmp, true
  br i1 %_public_branchcompare, label %thenbranch, label %elsebranch

thenbranch:                                       ; preds = %entry
  %_public_lval5 = load i32, i32* %_public___v32_num
  %_public_subtmp = sub i32 64, %_public_lval5
  store i32 %_public_subtmp, i32* %_public___v34___v33_len
  %_public_lval6 = load i32, i32* %_public___v32_num
  %_secret_structgep7 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 3
  %_secret_arrview = alloca i8*
  %_secret_source_gep = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep7, i32 0, i32 %_public_lval6
  store i8* %_secret_source_gep, i8** %_secret_arrview
  %_public_lval8 = load i32, i32* %_public___v32_num
  %_secret_structgep9 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 3
  %_secret_arrview10 = alloca i8*
  %_secret_source_gep11 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep9, i32 0, i32 %_public_lval8
  store i8* %_secret_source_gep11, i8** %_secret_arrview10
  %_secret_dynarrarg = load i8*, i8** %_secret_arrview10
  %_public_lval12 = load i32, i32* %_public___v34___v33_len
  call void @_memzero(i8* %_secret_dynarrarg, i32 %_public_lval12)
  %_secret_structgep13 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 3
  %_secret_structgep14 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 3
  %_secret_arrtoptr = bitcast [64 x i8]* %_secret_structgep14 to i8*
  call void @sha1_block_data_order(%SHA_CTX* %ctx, i8* %_secret_arrtoptr, i32 1)
  store i32 0, i32* %_public___v32_num
  br label %branchmerge

elsebranch:                                       ; preds = %entry
  br label %branchmerge

branchmerge:                                      ; preds = %elsebranch, %thenbranch
  %_public_lval15 = load i32, i32* %_public___v32_num
  %_public_subtmp16 = sub i32 56, %_public_lval15
  store i32 %_public_subtmp16, i32* %_public___v36___v35_len
  %_public_lval17 = load i32, i32* %_public___v32_num
  %_secret_structgep18 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 3
  %_secret_arrview19 = alloca i8*
  %_secret_source_gep20 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep18, i32 0, i32 %_public_lval17
  store i8* %_secret_source_gep20, i8** %_secret_arrview19
  %_public_lval21 = load i32, i32* %_public___v32_num
  %_secret_structgep22 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 3
  %_secret_arrview23 = alloca i8*
  %_secret_source_gep24 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep22, i32 0, i32 %_public_lval21
  store i8* %_secret_source_gep24, i8** %_secret_arrview23
  %_secret_dynarrarg25 = load i8*, i8** %_secret_arrview23
  %_public_lval26 = load i32, i32* %_public___v36___v35_len
  call void @_memzero(i8* %_secret_dynarrarg25, i32 %_public_lval26)
  %_secret_structgep27 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 3
  %_secret_arrview28 = alloca i8*
  %_secret_source_gep29 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep27, i8 0, i8 56
  store i8* %_secret_source_gep29, i8** %_secret_arrview28
  %_secret_structgep30 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 3
  %_secret_arrview31 = alloca i8*
  %_secret_source_gep32 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep30, i8 0, i8 56
  store i8* %_secret_source_gep32, i8** %_secret_arrview31
  %_secret_dynarrarg33 = load i8*, i8** %_secret_arrview31
  %_secret_structgep34 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 2
  %_secret_lval = load i32, i32* %_secret_structgep34
  call void @store32_be(i8* %_secret_dynarrarg33, i32 %_secret_lval)
  %_secret_structgep35 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 3
  %_secret_arrview36 = alloca i8*
  %_secret_source_gep37 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep35, i8 0, i8 60
  store i8* %_secret_source_gep37, i8** %_secret_arrview36
  %_secret_structgep38 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 3
  %_secret_arrview39 = alloca i8*
  %_secret_source_gep40 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep38, i8 0, i8 60
  store i8* %_secret_source_gep40, i8** %_secret_arrview39
  %_secret_dynarrarg41 = load i8*, i8** %_secret_arrview39
  %_secret_structgep42 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 1
  %_secret_lval43 = load i32, i32* %_secret_structgep42
  call void @store32_be(i8* %_secret_dynarrarg41, i32 %_secret_lval43)
  %_secret_structgep44 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 3
  %_secret_structgep45 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 3
  %_secret_arrtoptr46 = bitcast [64 x i8]* %_secret_structgep45 to i8*
  call void @sha1_block_data_order(%SHA_CTX* %ctx, i8* %_secret_arrtoptr46, i32 1)
  %_public_structgep47 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 4
  store i32 0, i32* %_public_structgep47
  %_secret_structgep48 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 3
  %_secret_structgep49 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 3
  %_secret_arrtoptr50 = bitcast [64 x i8]* %_secret_structgep49 to i8*
  call void @_memzero(i8* %_secret_arrtoptr50, i32 64)
  %_secret_dynarrarg51 = load i8*, i8** %_secret_arrarg
  call void @SHA1_MAKE_STRING(%SHA_CTX* %ctx, i8* %_secret_dynarrarg51)
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i32, i1) #1

; Function Attrs: noinline
define internal void @_memzero(i8*, i32) #2 {
entry:
  call void @llvm.memset.p0i8.i32(i8* %0, i8 0, i32 %1, i32 1, i1 false)
  ret void
}

define internal void @SHA1_Final_secret(i8* %_secret_arrarg1, %SHA_CTX* %ctx, i32 %_secret_ctx_num2) {
entry:
  %_secret_arrarg = alloca i8*
  store i8* %_secret_arrarg1, i8** %_secret_arrarg
  %_secret_ctx_num = alloca i32
  store i32 %_secret_ctx_num2, i32* %_secret_ctx_num
  %_secret___rnset = alloca i1
  %_secret___v37_len_in_first_block = alloca i1
  %_public___v38_i = alloca i32
  %_secret___m3 = alloca i1
  %_secret___m4 = alloca i1
  %_secret___m5 = alloca i1
  %_public___v39_shift = alloca i32
  %_public___v40_shift = alloca i32
  %_public___v42___v41_len = alloca i32
  %_secret___m6 = alloca i1
  %_public___v44_j = alloca i32
  store i1 true, i1* %_secret___rnset
  %_secret_lval = load i32, i32* %_secret_ctx_num
  %_secret_ulttmp = icmp ult i32 %_secret_lval, 56
  store i1 %_secret_ulttmp, i1* %_secret___v37_len_in_first_block
  store i32 0, i32* %_public___v38_i
  br label %loop_check

loop_check:                                       ; preds = %branchmerge84, %entry
  %_public_lval = load i32, i32* %_public___v38_i
  %_public_ulttmp = icmp ult i32 %_public_lval, 64
  br i1 %_public_ulttmp, label %loop_body, label %loop_end

loop_body:                                        ; preds = %loop_check
  %_public_lval3 = load i32, i32* %_public___v38_i
  %_secret_lval4 = load i32, i32* %_secret_ctx_num
  %_secret_eqtmp = icmp eq i32 %_public_lval3, %_secret_lval4
  store i1 %_secret_eqtmp, i1* %_secret___m3
  %_secret_structgep = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 3
  %_public_lval5 = load i32, i32* %_public___v38_i
  %_secret_ptr = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep, i32 0, i32 %_public_lval5
  %_secret_lval6 = load i1, i1* %_secret___m3
  %_secret_landtmp = and i1 true, %_secret_lval6
  %_secret_lval7 = load i1, i1* %_secret___rnset
  %_secret_landtmp8 = and i1 %_secret_landtmp, %_secret_lval7
  %_secret_condtmp = icmp ne i1 %_secret_landtmp8, false
  %_secret_structgep9 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 3
  %_public_lval10 = load i32, i32* %_public___v38_i
  %_secret_ptr11 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep9, i32 0, i32 %_public_lval10
  %_secret_lval12 = load i8, i8* %_secret_ptr11
  %_secret_selecttmp = call i8 @select.cmov.asm.i8(i1 %_secret_condtmp, i8 -128, i8 %_secret_lval12)
  store i8 %_secret_selecttmp, i8* %_secret_ptr
  %_secret_lval13 = load i1, i1* %_secret___m3
  %_secret_lnottmp = xor i1 %_secret_lval13, true
  store i1 %_secret_lnottmp, i1* %_secret___m3
  %_public_lval14 = load i32, i32* %_public___v38_i
  %_secret_lval15 = load i32, i32* %_secret_ctx_num
  %_secret_ugttmp = icmp ugt i32 %_public_lval14, %_secret_lval15
  store i1 %_secret_ugttmp, i1* %_secret___m4
  %_secret_structgep16 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 3
  %_public_lval17 = load i32, i32* %_public___v38_i
  %_secret_ptr18 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep16, i32 0, i32 %_public_lval17
  %_secret_lval19 = load i1, i1* %_secret___m4
  %_secret_landtmp20 = and i1 true, %_secret_lval19
  %_secret_lval21 = load i1, i1* %_secret___m3
  %_secret_landtmp22 = and i1 %_secret_landtmp20, %_secret_lval21
  %_secret_lval23 = load i1, i1* %_secret___rnset
  %_secret_landtmp24 = and i1 %_secret_landtmp22, %_secret_lval23
  %_secret_condtmp25 = icmp ne i1 %_secret_landtmp24, false
  %_secret_structgep26 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 3
  %_public_lval27 = load i32, i32* %_public___v38_i
  %_secret_ptr28 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep26, i32 0, i32 %_public_lval27
  %_secret_lval29 = load i8, i8* %_secret_ptr28
  %_secret_selecttmp30 = call i8 @select.cmov.asm.i8(i1 %_secret_condtmp25, i8 0, i8 %_secret_lval29)
  store i8 %_secret_selecttmp30, i8* %_secret_ptr18
  %_secret_lval31 = load i1, i1* %_secret___v37_len_in_first_block
  store i1 %_secret_lval31, i1* %_secret___m5
  %_public_lval32 = load i32, i32* %_public___v38_i
  %_public_ugtetmp = icmp uge i32 %_public_lval32, 60
  %_public_branchcompare = icmp eq i1 %_public_ugtetmp, true
  br i1 %_public_branchcompare, label %thenbranch, label %elsebranch

loop_end:                                         ; preds = %loop_check
  %_secret_structgep90 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 3
  %_secret_structgep91 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 3
  %_secret_arrtoptr = bitcast [64 x i8]* %_secret_structgep91 to i8*
  call void @sha1_block_data_order(%SHA_CTX* %ctx, i8* %_secret_arrtoptr, i32 1)
  store i32 56, i32* %_public___v42___v41_len
  %_secret_structgep92 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 3
  %_secret_arrview = alloca i8*
  %_secret_source_gep = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep92, i8 0, i8 0
  store i8* %_secret_source_gep, i8** %_secret_arrview
  %_secret_structgep93 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 3
  %_secret_arrview94 = alloca i8*
  %_secret_source_gep95 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep93, i8 0, i8 0
  store i8* %_secret_source_gep95, i8** %_secret_arrview94
  %_secret_dynarrarg = load i8*, i8** %_secret_arrview94
  %_public_lval96 = load i32, i32* %_public___v42___v41_len
  call void @_memzero(i8* %_secret_dynarrarg, i32 %_public_lval96)
  %_secret_structgep97 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 3
  %_secret_arrview98 = alloca i8*
  %_secret_source_gep99 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep97, i8 0, i8 56
  store i8* %_secret_source_gep99, i8** %_secret_arrview98
  %_secret_structgep100 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 3
  %_secret_arrview101 = alloca i8*
  %_secret_source_gep102 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep100, i8 0, i8 56
  store i8* %_secret_source_gep102, i8** %_secret_arrview101
  %_secret_dynarrarg103 = load i8*, i8** %_secret_arrview101
  %_secret_structgep104 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 2
  %_secret_lval105 = load i32, i32* %_secret_structgep104
  call void @store32_be(i8* %_secret_dynarrarg103, i32 %_secret_lval105)
  %_secret_structgep106 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 3
  %_secret_arrview107 = alloca i8*
  %_secret_source_gep108 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep106, i8 0, i8 60
  store i8* %_secret_source_gep108, i8** %_secret_arrview107
  %_secret_structgep109 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 3
  %_secret_arrview110 = alloca i8*
  %_secret_source_gep111 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep109, i8 0, i8 60
  store i8* %_secret_source_gep111, i8** %_secret_arrview110
  %_secret_dynarrarg112 = load i8*, i8** %_secret_arrview110
  %_secret_structgep113 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 1
  %_secret_lval114 = load i32, i32* %_secret_structgep113
  call void @store32_be(i8* %_secret_dynarrarg112, i32 %_secret_lval114)
  %_secret___v43_h = alloca [5 x i32]
  %_secret_structgep115 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 0
  %_secret_sourcecasted = bitcast [5 x i32]* %_secret_structgep115 to i8*
  %_secret_destcast = bitcast [5 x i32]* %_secret___v43_h to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %_secret_destcast, i8* %_secret_sourcecasted, i64 20, i32 0, i1 false)
  %_secret_structgep116 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 3
  %_secret_structgep117 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 3
  %_secret_arrtoptr118 = bitcast [64 x i8]* %_secret_structgep117 to i8*
  call void @sha1_block_data_order(%SHA_CTX* %ctx, i8* %_secret_arrtoptr118, i32 1)
  %_secret_lval119 = load i1, i1* %_secret___v37_len_in_first_block
  store i1 %_secret_lval119, i1* %_secret___m6
  store i32 0, i32* %_public___v44_j
  br label %loop_check120

thenbranch:                                       ; preds = %loop_body
  %_public_lval33 = load i32, i32* %_public___v38_i
  %_public_subtmp = sub i32 63, %_public_lval33
  %_public_multmp = mul i32 %_public_subtmp, 8
  store i32 %_public_multmp, i32* %_public___v39_shift
  %_secret_structgep34 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 3
  %_public_lval35 = load i32, i32* %_public___v38_i
  %_secret_ptr36 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep34, i32 0, i32 %_public_lval35
  %_secret_lval37 = load i1, i1* %_secret___m5
  %_secret_landtmp38 = and i1 true, %_secret_lval37
  %_secret_lval39 = load i1, i1* %_secret___m4
  %_secret_landtmp40 = and i1 %_secret_landtmp38, %_secret_lval39
  %_secret_lval41 = load i1, i1* %_secret___m3
  %_secret_landtmp42 = and i1 %_secret_landtmp40, %_secret_lval41
  %_secret_lval43 = load i1, i1* %_secret___rnset
  %_secret_landtmp44 = and i1 %_secret_landtmp42, %_secret_lval43
  %_secret_condtmp45 = icmp ne i1 %_secret_landtmp44, false
  %_secret_structgep46 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 1
  %_secret_lval47 = load i32, i32* %_secret_structgep46
  %_public_lval48 = load i32, i32* %_public___v39_shift
  %_secret_lrshift = lshr i32 %_secret_lval47, %_public_lval48
  %_secret_ucast = trunc i32 %_secret_lrshift to i8
  %_secret_structgep49 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 3
  %_public_lval50 = load i32, i32* %_public___v38_i
  %_secret_ptr51 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep49, i32 0, i32 %_public_lval50
  %_secret_lval52 = load i8, i8* %_secret_ptr51
  %_secret_selecttmp53 = call i8 @select.cmov.asm.i8(i1 %_secret_condtmp45, i8 %_secret_ucast, i8 %_secret_lval52)
  store i8 %_secret_selecttmp53, i8* %_secret_ptr36
  br label %branchmerge84

elsebranch:                                       ; preds = %loop_body
  %_public_lval54 = load i32, i32* %_public___v38_i
  %_public_ugtetmp55 = icmp uge i32 %_public_lval54, 56
  %_public_branchcompare56 = icmp eq i1 %_public_ugtetmp55, true
  br i1 %_public_branchcompare56, label %thenbranch57, label %elsebranch83

thenbranch57:                                     ; preds = %elsebranch
  %_public_lval58 = load i32, i32* %_public___v38_i
  %_public_subtmp59 = sub i32 59, %_public_lval58
  %_public_multmp60 = mul i32 %_public_subtmp59, 8
  store i32 %_public_multmp60, i32* %_public___v40_shift
  %_secret_structgep61 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 3
  %_public_lval62 = load i32, i32* %_public___v38_i
  %_secret_ptr63 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep61, i32 0, i32 %_public_lval62
  %_secret_lval64 = load i1, i1* %_secret___m5
  %_secret_landtmp65 = and i1 true, %_secret_lval64
  %_secret_lval66 = load i1, i1* %_secret___m4
  %_secret_landtmp67 = and i1 %_secret_landtmp65, %_secret_lval66
  %_secret_lval68 = load i1, i1* %_secret___m3
  %_secret_landtmp69 = and i1 %_secret_landtmp67, %_secret_lval68
  %_secret_lval70 = load i1, i1* %_secret___rnset
  %_secret_landtmp71 = and i1 %_secret_landtmp69, %_secret_lval70
  %_secret_condtmp72 = icmp ne i1 %_secret_landtmp71, false
  %_secret_structgep73 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 2
  %_secret_lval74 = load i32, i32* %_secret_structgep73
  %_public_lval75 = load i32, i32* %_public___v40_shift
  %_secret_lrshift76 = lshr i32 %_secret_lval74, %_public_lval75
  %_secret_ucast77 = trunc i32 %_secret_lrshift76 to i8
  %_secret_structgep78 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 3
  %_public_lval79 = load i32, i32* %_public___v38_i
  %_secret_ptr80 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep78, i32 0, i32 %_public_lval79
  %_secret_lval81 = load i8, i8* %_secret_ptr80
  %_secret_selecttmp82 = call i8 @select.cmov.asm.i8(i1 %_secret_condtmp72, i8 %_secret_ucast77, i8 %_secret_lval81)
  store i8 %_secret_selecttmp82, i8* %_secret_ptr63
  br label %branchmerge

elsebranch83:                                     ; preds = %elsebranch
  br label %branchmerge

branchmerge:                                      ; preds = %elsebranch83, %thenbranch57
  br label %branchmerge84

branchmerge84:                                    ; preds = %branchmerge, %thenbranch
  %_secret_lval85 = load i1, i1* %_secret___m5
  %_secret_lnottmp86 = xor i1 %_secret_lval85, true
  store i1 %_secret_lnottmp86, i1* %_secret___m5
  %_secret_lval87 = load i1, i1* %_secret___m4
  %_secret_lnottmp88 = xor i1 %_secret_lval87, true
  store i1 %_secret_lnottmp88, i1* %_secret___m4
  %_public_lval89 = load i32, i32* %_public___v38_i
  %_public_addtmp = add i32 %_public_lval89, 1
  store i32 %_public_addtmp, i32* %_public___v38_i
  br label %loop_check

loop_check120:                                    ; preds = %loop_body121, %loop_end
  %_public_lval123 = load i32, i32* %_public___v44_j
  %_public_ulttmp124 = icmp ult i32 %_public_lval123, 5
  br i1 %_public_ulttmp124, label %loop_body121, label %loop_end122

loop_body121:                                     ; preds = %loop_check120
  %_secret_structgep125 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 0
  %_public_lval126 = load i32, i32* %_public___v44_j
  %_secret_ptr127 = getelementptr inbounds [5 x i32], [5 x i32]* %_secret_structgep125, i32 0, i32 %_public_lval126
  %_secret_lval128 = load i1, i1* %_secret___m6
  %_secret_landtmp129 = and i1 true, %_secret_lval128
  %_secret_lval130 = load i1, i1* %_secret___rnset
  %_secret_landtmp131 = and i1 %_secret_landtmp129, %_secret_lval130
  %_secret_condtmp132 = icmp ne i1 %_secret_landtmp131, false
  %_public_lval133 = load i32, i32* %_public___v44_j
  %_secret_ptr134 = getelementptr inbounds [5 x i32], [5 x i32]* %_secret___v43_h, i32 0, i32 %_public_lval133
  %_secret_lval135 = load i32, i32* %_secret_ptr134
  %_secret_structgep136 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 0
  %_public_lval137 = load i32, i32* %_public___v44_j
  %_secret_ptr138 = getelementptr inbounds [5 x i32], [5 x i32]* %_secret_structgep136, i32 0, i32 %_public_lval137
  %_secret_lval139 = load i32, i32* %_secret_ptr138
  %_secret_selecttmp140 = call i32 @select.cmov.sel.i32(i1 %_secret_condtmp132, i32 %_secret_lval135, i32 %_secret_lval139)
  store i32 %_secret_selecttmp140, i32* %_secret_ptr127
  %_public_lval141 = load i32, i32* %_public___v44_j
  %_public_addtmp142 = add i32 %_public_lval141, 1
  store i32 %_public_addtmp142, i32* %_public___v44_j
  br label %loop_check120

loop_end122:                                      ; preds = %loop_check120
  %_secret_lval143 = load i1, i1* %_secret___m6
  %_secret_lnottmp144 = xor i1 %_secret_lval143, true
  store i1 %_secret_lnottmp144, i1* %_secret___m6
  %_public_structgep = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 4
  store i32 0, i32* %_public_structgep
  %_secret_structgep145 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 3
  %_secret_structgep146 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 3
  %_secret_arrtoptr147 = bitcast [64 x i8]* %_secret_structgep146 to i8*
  call void @_memzero(i8* %_secret_arrtoptr147, i32 64)
  %_secret_dynarrarg148 = load i8*, i8** %_secret_arrarg
  call void @SHA1_MAKE_STRING(%SHA_CTX* %ctx, i8* %_secret_dynarrarg148)
  ret void
}

define internal void @SHA1_Update_Final_secret(%SHA_CTX* %ctx, i8* %_secret_arrarg1, i32 %_public____in_len2, i32 %_secret_slen3, i8* %_secret_arrarg5) {
entry:
  %_secret_arrarg = alloca i8*
  store i8* %_secret_arrarg1, i8** %_secret_arrarg
  %_public____in_len = alloca i32
  store i32 %_public____in_len2, i32* %_public____in_len
  %_secret_slen = alloca i32
  store i32 %_secret_slen3, i32* %_secret_slen
  %_secret_arrarg4 = alloca i8*
  store i8* %_secret_arrarg5, i8** %_secret_arrarg4
  %_secret___rnset = alloca i1
  %_secret___v45_l = alloca i64
  %_secret___v46_N = alloca i64
  %_public___v47_maxlen = alloca i32
  %_public___v48_nblocks = alloca i32
  %_public___v49_remain = alloca i32
  %_public___v50_semi_block = alloca i32
  %_public___v51_nbytes = alloca i32
  %_secret___v52_num = alloca i32
  %_secret___v53_len_in_first_block = alloca i1
  %_secret___v54_done = alloca i1
  %_public___v55_i = alloca i32
  %_public___v56_j = alloca i32
  %_secret___m7 = alloca i1
  %_secret___m8 = alloca i1
  %_secret___m9 = alloca i1
  %_secret___m10 = alloca i1
  %_secret___m11 = alloca i1
  %_public___v57_shift = alloca i32
  %_secret___m12 = alloca i1
  %_public___v59_k = alloca i32
  %_secret___m13 = alloca i8
  %_secret___m14 = alloca i1
  %_secret___m15 = alloca i1
  store i1 true, i1* %_secret___rnset
  %_secret_lval = load i32, i32* %_secret_slen
  %_secret_ucast = zext i32 %_secret_lval to i64
  %_secret_lshift = shl i64 %_secret_ucast, 3
  store i64 %_secret_lshift, i64* %_secret___v45_l
  %_secret_structgep = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 2
  %_secret_lval6 = load i32, i32* %_secret_structgep
  %_secret_ucast7 = zext i32 %_secret_lval6 to i64
  %_secret_lshift8 = shl i64 %_secret_ucast7, 32
  %_secret_structgep9 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 1
  %_secret_lval10 = load i32, i32* %_secret_structgep9
  %_secret_rhssext = zext i32 %_secret_lval10 to i64
  %_secret_ortmp = or i64 %_secret_lshift8, %_secret_rhssext
  %_secret_lval11 = load i64, i64* %_secret___v45_l
  %_secret_addtmp = add i64 %_secret_ortmp, %_secret_lval11
  store i64 %_secret_addtmp, i64* %_secret___v46_N
  %_secret_structgep12 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 2
  %_secret_lval13 = load i64, i64* %_secret___v46_N
  %_secret_lrshift = lshr i64 %_secret_lval13, 32
  %_secret_ucast14 = trunc i64 %_secret_lrshift to i32
  store i32 %_secret_ucast14, i32* %_secret_structgep12
  %_secret_structgep15 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 1
  %_secret_lval16 = load i64, i64* %_secret___v46_N
  %_secret_ucast17 = trunc i64 %_secret_lval16 to i32
  store i32 %_secret_ucast17, i32* %_secret_structgep15
  %_public_lval = load i32, i32* %_public____in_len
  %_public_addtmp = add i32 %_public_lval, 1
  %_public_addtmp18 = add i32 %_public_addtmp, 8
  store i32 %_public_addtmp18, i32* %_public___v47_maxlen
  %_public_lval19 = load i32, i32* %_public___v47_maxlen
  %_public_udivtmp = udiv i32 %_public_lval19, 64
  store i32 %_public_udivtmp, i32* %_public___v48_nblocks
  %_public_lval20 = load i32, i32* %_public___v47_maxlen
  %_public_uremtmp = urem i32 %_public_lval20, 64
  store i32 %_public_uremtmp, i32* %_public___v49_remain
  %_public_lval21 = load i32, i32* %_public___v49_remain
  %_public_ugttmp = icmp ugt i32 %_public_lval21, 0
  %_public_condtmp = icmp ne i1 %_public_ugttmp, false
  %_public_terntmp = select i1 %_public_condtmp, i8 1, i8 0
  %_public_zexttmp = zext i8 %_public_terntmp to i32
  store i32 %_public_zexttmp, i32* %_public___v50_semi_block
  %_public_lval22 = load i32, i32* %_public___v48_nblocks
  %_public_lval23 = load i32, i32* %_public___v50_semi_block
  %_public_addtmp24 = add i32 %_public_lval22, %_public_lval23
  %_public_multmp = mul i32 %_public_addtmp24, 64
  store i32 %_public_multmp, i32* %_public___v51_nbytes
  %_secret_lval25 = load i32, i32* %_secret_slen
  %_secret_andtmp = and i32 %_secret_lval25, 63
  %_secret_truncbinop = trunc i32 %_secret_andtmp to i8
  %_secret_zexttmp = zext i8 %_secret_truncbinop to i32
  store i32 %_secret_zexttmp, i32* %_secret___v52_num
  %_secret_lval26 = load i32, i32* %_secret___v52_num
  %_secret_ulttmp = icmp ult i32 %_secret_lval26, 56
  store i1 %_secret_ulttmp, i1* %_secret___v53_len_in_first_block
  store i1 false, i1* %_secret___v54_done
  store i32 0, i32* %_public___v55_i
  br label %loop_check

loop_check:                                       ; preds = %branchmerge194, %entry
  %_public_lval27 = load i32, i32* %_public___v55_i
  %_public_lval28 = load i32, i32* %_public___v51_nbytes
  %_public_ulttmp = icmp ult i32 %_public_lval27, %_public_lval28
  br i1 %_public_ulttmp, label %loop_body, label %loop_end

loop_body:                                        ; preds = %loop_check
  %_public_lval29 = load i32, i32* %_public___v55_i
  %_public_uremtmp30 = urem i32 %_public_lval29, 64
  store i32 %_public_uremtmp30, i32* %_public___v56_j
  %_public_lval31 = load i32, i32* %_public___v55_i
  %_secret_lval32 = load i32, i32* %_secret_slen
  %_secret_ulttmp33 = icmp ult i32 %_public_lval31, %_secret_lval32
  store i1 %_secret_ulttmp33, i1* %_secret___m7
  %_public_lval34 = load i32, i32* %_public___v55_i
  %_public_lval35 = load i32, i32* %_public____in_len
  %_public_ulttmp36 = icmp ult i32 %_public_lval34, %_public_lval35
  %_public_branchcompare = icmp eq i1 %_public_ulttmp36, true
  br i1 %_public_branchcompare, label %thenbranch, label %elsebranch

loop_end:                                         ; preds = %loop_check
  %_public_structgep = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 4
  store i32 0, i32* %_public_structgep
  %_secret_structgep197 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 3
  %_secret_structgep198 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 3
  %_secret_arrtoptr199 = bitcast [64 x i8]* %_secret_structgep198 to i8*
  call void @_memzero(i8* %_secret_arrtoptr199, i32 64)
  %_secret_dynarrarg = load i8*, i8** %_secret_arrarg4
  call void @SHA1_MAKE_STRING(%SHA_CTX* %ctx, i8* %_secret_dynarrarg)
  ret void

thenbranch:                                       ; preds = %loop_body
  %_secret_structgep37 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 3
  %_public_lval38 = load i32, i32* %_public___v56_j
  %_secret_ptr = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep37, i32 0, i32 %_public_lval38
  %_secret_lval39 = load i1, i1* %_secret___m7
  %_secret_landtmp = and i1 true, %_secret_lval39
  %_secret_lval40 = load i1, i1* %_secret___rnset
  %_secret_landtmp41 = and i1 %_secret_landtmp, %_secret_lval40
  %_secret_condtmp = icmp ne i1 %_secret_landtmp41, false
  %_public_lval42 = load i32, i32* %_public___v55_i
  %_secret_dyn = load i8*, i8** %_secret_arrarg
  %_secret_ptr43 = getelementptr inbounds i8, i8* %_secret_dyn, i32 %_public_lval42
  %_secret_lval44 = load i8, i8* %_secret_ptr43
  %_secret_structgep45 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 3
  %_public_lval46 = load i32, i32* %_public___v56_j
  %_secret_ptr47 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep45, i32 0, i32 %_public_lval46
  %_secret_lval48 = load i8, i8* %_secret_ptr47
  %_secret_selecttmp = call i8 @select.cmov.asm.i8(i1 %_secret_condtmp, i8 %_secret_lval44, i8 %_secret_lval48)
  store i8 %_secret_selecttmp, i8* %_secret_ptr
  br label %branchmerge

elsebranch:                                       ; preds = %loop_body
  br label %branchmerge

branchmerge:                                      ; preds = %elsebranch, %thenbranch
  %_secret_lval49 = load i1, i1* %_secret___m7
  %_secret_lnottmp = xor i1 %_secret_lval49, true
  store i1 %_secret_lnottmp, i1* %_secret___m7
  %_public_lval50 = load i32, i32* %_public___v55_i
  %_secret_lval51 = load i32, i32* %_secret_slen
  %_secret_eqtmp = icmp eq i32 %_public_lval50, %_secret_lval51
  store i1 %_secret_eqtmp, i1* %_secret___m8
  %_secret_structgep52 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 3
  %_public_lval53 = load i32, i32* %_public___v56_j
  %_secret_ptr54 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep52, i32 0, i32 %_public_lval53
  %_secret_lval55 = load i1, i1* %_secret___m8
  %_secret_landtmp56 = and i1 true, %_secret_lval55
  %_secret_lval57 = load i1, i1* %_secret___m7
  %_secret_landtmp58 = and i1 %_secret_landtmp56, %_secret_lval57
  %_secret_lval59 = load i1, i1* %_secret___rnset
  %_secret_landtmp60 = and i1 %_secret_landtmp58, %_secret_lval59
  %_secret_condtmp61 = icmp ne i1 %_secret_landtmp60, false
  %_secret_structgep62 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 3
  %_public_lval63 = load i32, i32* %_public___v56_j
  %_secret_ptr64 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep62, i32 0, i32 %_public_lval63
  %_secret_lval65 = load i8, i8* %_secret_ptr64
  %_secret_selecttmp66 = call i8 @select.cmov.asm.i8(i1 %_secret_condtmp61, i8 -128, i8 %_secret_lval65)
  store i8 %_secret_selecttmp66, i8* %_secret_ptr54
  %_secret_lval67 = load i1, i1* %_secret___m8
  %_secret_lnottmp68 = xor i1 %_secret_lval67, true
  store i1 %_secret_lnottmp68, i1* %_secret___m8
  store i1 false, i1* %_secret___m9
  %_secret_lval69 = load i1, i1* %_secret___v53_len_in_first_block
  store i1 %_secret_lval69, i1* %_secret___m10
  %_secret_lval70 = load i1, i1* %_secret___m10
  %_secret_landtmp71 = and i1 true, %_secret_lval70
  %_secret_lval72 = load i1, i1* %_secret___m8
  %_secret_landtmp73 = and i1 %_secret_landtmp71, %_secret_lval72
  %_secret_lval74 = load i1, i1* %_secret___m7
  %_secret_landtmp75 = and i1 %_secret_landtmp73, %_secret_lval74
  %_secret_lval76 = load i1, i1* %_secret___rnset
  %_secret_landtmp77 = and i1 %_secret_landtmp75, %_secret_lval76
  %_secret_condtmp78 = icmp ne i1 %_secret_landtmp77, false
  %_secret_lval79 = load i1, i1* %_secret___m9
  %_secret_selecttmp80 = call i1 @select.cmov.asm.i1(i1 %_secret_condtmp78, i1 true, i1 %_secret_lval79)
  store i1 %_secret_selecttmp80, i1* %_secret___m9
  %_secret_lval81 = load i1, i1* %_secret___m10
  %_secret_lnottmp82 = xor i1 %_secret_lval81, true
  store i1 %_secret_lnottmp82, i1* %_secret___m10
  %_secret_lval83 = load i1, i1* %_secret___m10
  %_secret_landtmp84 = and i1 true, %_secret_lval83
  %_secret_lval85 = load i1, i1* %_secret___m8
  %_secret_landtmp86 = and i1 %_secret_landtmp84, %_secret_lval85
  %_secret_lval87 = load i1, i1* %_secret___m7
  %_secret_landtmp88 = and i1 %_secret_landtmp86, %_secret_lval87
  %_secret_lval89 = load i1, i1* %_secret___rnset
  %_secret_landtmp90 = and i1 %_secret_landtmp88, %_secret_lval89
  %_secret_condtmp91 = icmp ne i1 %_secret_landtmp90, false
  %_public_lval92 = load i32, i32* %_public___v55_i
  %_secret_lval93 = load i32, i32* %_secret_slen
  %_secret_addtmp94 = add i32 %_secret_lval93, 64
  %_secret_ugttmp = icmp ugt i32 %_public_lval92, %_secret_addtmp94
  %_secret_lval95 = load i1, i1* %_secret___m9
  %_secret_selecttmp96 = call i1 @select.cmov.asm.i1(i1 %_secret_condtmp91, i1 %_secret_ugttmp, i1 %_secret_lval95)
  store i1 %_secret_selecttmp96, i1* %_secret___m9
  %_secret___m997 = load i1, i1* %_secret___m9
  store i1 %_secret___m997, i1* %_secret___m11
  %_public_lval98 = load i32, i32* %_public___v56_j
  %_public_ugtetmp = icmp uge i32 %_public_lval98, 56
  %_public_branchcompare99 = icmp eq i1 %_public_ugtetmp, true
  br i1 %_public_branchcompare99, label %thenbranch100, label %elsebranch125

thenbranch100:                                    ; preds = %branchmerge
  %_public_lval101 = load i32, i32* %_public___v56_j
  %_public_subtmp = sub i32 63, %_public_lval101
  %_public_multmp102 = mul i32 %_public_subtmp, 8
  store i32 %_public_multmp102, i32* %_public___v57_shift
  %_secret_structgep103 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 3
  %_public_lval104 = load i32, i32* %_public___v56_j
  %_secret_ptr105 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep103, i32 0, i32 %_public_lval104
  %_secret_lval106 = load i1, i1* %_secret___m11
  %_secret_landtmp107 = and i1 true, %_secret_lval106
  %_secret_lval108 = load i1, i1* %_secret___m8
  %_secret_landtmp109 = and i1 %_secret_landtmp107, %_secret_lval108
  %_secret_lval110 = load i1, i1* %_secret___m7
  %_secret_landtmp111 = and i1 %_secret_landtmp109, %_secret_lval110
  %_secret_lval112 = load i1, i1* %_secret___rnset
  %_secret_landtmp113 = and i1 %_secret_landtmp111, %_secret_lval112
  %_secret_condtmp114 = icmp ne i1 %_secret_landtmp113, false
  %_secret_lval115 = load i64, i64* %_secret___v46_N
  %_public_lval116 = load i32, i32* %_public___v57_shift
  %_secret_rhssext117 = zext i32 %_public_lval116 to i64
  %_secret_lrshift118 = lshr i64 %_secret_lval115, %_secret_rhssext117
  %_secret_ucast119 = trunc i64 %_secret_lrshift118 to i8
  %_secret_structgep120 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 3
  %_public_lval121 = load i32, i32* %_public___v56_j
  %_secret_ptr122 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep120, i32 0, i32 %_public_lval121
  %_secret_lval123 = load i8, i8* %_secret_ptr122
  %_secret_selecttmp124 = call i8 @select.cmov.asm.i8(i1 %_secret_condtmp114, i8 %_secret_ucast119, i8 %_secret_lval123)
  store i8 %_secret_selecttmp124, i8* %_secret_ptr105
  br label %branchmerge126

elsebranch125:                                    ; preds = %branchmerge
  br label %branchmerge126

branchmerge126:                                   ; preds = %elsebranch125, %thenbranch100
  %_secret_lval127 = load i1, i1* %_secret___m11
  %_secret_lnottmp128 = xor i1 %_secret_lval127, true
  store i1 %_secret_lnottmp128, i1* %_secret___m11
  %_public_lval129 = load i32, i32* %_public___v56_j
  %_public_eqtmp = icmp eq i32 %_public_lval129, 63
  %_public_branchcompare130 = icmp eq i1 %_public_eqtmp, true
  br i1 %_public_branchcompare130, label %thenbranch131, label %elsebranch193

thenbranch131:                                    ; preds = %branchmerge126
  %_secret___v58_h = alloca [5 x i32]
  %_secret_structgep132 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 0
  %_secret_sourcecasted = bitcast [5 x i32]* %_secret_structgep132 to i8*
  %_secret_destcast = bitcast [5 x i32]* %_secret___v58_h to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %_secret_destcast, i8* %_secret_sourcecasted, i64 20, i32 0, i1 false)
  %_secret_structgep133 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 3
  %_secret_structgep134 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 3
  %_secret_arrtoptr = bitcast [64 x i8]* %_secret_structgep134 to i8*
  call void @sha1_block_data_order(%SHA_CTX* %ctx, i8* %_secret_arrtoptr, i32 1)
  %_secret_lval135 = load i1, i1* %_secret___v54_done
  store i1 %_secret_lval135, i1* %_secret___m12
  store i32 0, i32* %_public___v59_k
  br label %loop_check136

loop_check136:                                    ; preds = %loop_body137, %thenbranch131
  %_public_lval139 = load i32, i32* %_public___v59_k
  %_public_ulttmp140 = icmp ult i32 %_public_lval139, 5
  br i1 %_public_ulttmp140, label %loop_body137, label %loop_end138

loop_body137:                                     ; preds = %loop_check136
  %_secret_structgep141 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 0
  %_public_lval142 = load i32, i32* %_public___v59_k
  %_secret_ptr143 = getelementptr inbounds [5 x i32], [5 x i32]* %_secret_structgep141, i32 0, i32 %_public_lval142
  %_secret_lval144 = load i1, i1* %_secret___m12
  %_secret_landtmp145 = and i1 true, %_secret_lval144
  %_secret_lval146 = load i1, i1* %_secret___rnset
  %_secret_landtmp147 = and i1 %_secret_landtmp145, %_secret_lval146
  %_secret_condtmp148 = icmp ne i1 %_secret_landtmp147, false
  %_public_lval149 = load i32, i32* %_public___v59_k
  %_secret_ptr150 = getelementptr inbounds [5 x i32], [5 x i32]* %_secret___v58_h, i32 0, i32 %_public_lval149
  %_secret_lval151 = load i32, i32* %_secret_ptr150
  %_secret_structgep152 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 0
  %_public_lval153 = load i32, i32* %_public___v59_k
  %_secret_ptr154 = getelementptr inbounds [5 x i32], [5 x i32]* %_secret_structgep152, i32 0, i32 %_public_lval153
  %_secret_lval155 = load i32, i32* %_secret_ptr154
  %_secret_selecttmp156 = call i32 @select.cmov.sel.i32(i1 %_secret_condtmp148, i32 %_secret_lval151, i32 %_secret_lval155)
  store i32 %_secret_selecttmp156, i32* %_secret_ptr143
  %_public_lval157 = load i32, i32* %_public___v59_k
  %_public_addtmp158 = add i32 %_public_lval157, 1
  store i32 %_public_addtmp158, i32* %_public___v59_k
  br label %loop_check136

loop_end138:                                      ; preds = %loop_check136
  %_secret_lval159 = load i1, i1* %_secret___m12
  %_secret_lnottmp160 = xor i1 %_secret_lval159, true
  store i1 %_secret_lnottmp160, i1* %_secret___m12
  %_public_lval161 = load i32, i32* %_public___v55_i
  %_secret_lval162 = load i32, i32* %_secret_slen
  store i8 0, i8* %_secret___m13
  %_secret_lval163 = load i1, i1* %_secret___v53_len_in_first_block
  store i1 %_secret_lval163, i1* %_secret___m14
  %_secret_lval164 = load i1, i1* %_secret___m14
  %_secret_landtmp165 = and i1 true, %_secret_lval164
  %_secret_lval166 = load i1, i1* %_secret___rnset
  %_secret_landtmp167 = and i1 %_secret_landtmp165, %_secret_lval166
  %_secret_condtmp168 = icmp ne i1 %_secret_landtmp167, false
  %_secret_lval169 = load i8, i8* %_secret___m13
  %_secret_selecttmp170 = call i8 @select.cmov.asm.i8(i1 %_secret_condtmp168, i8 0, i8 %_secret_lval169)
  store i8 %_secret_selecttmp170, i8* %_secret___m13
  %_secret_lval171 = load i1, i1* %_secret___m14
  %_secret_lnottmp172 = xor i1 %_secret_lval171, true
  store i1 %_secret_lnottmp172, i1* %_secret___m14
  %_secret_lval173 = load i1, i1* %_secret___m14
  %_secret_landtmp174 = and i1 true, %_secret_lval173
  %_secret_lval175 = load i1, i1* %_secret___rnset
  %_secret_landtmp176 = and i1 %_secret_landtmp174, %_secret_lval175
  %_secret_condtmp177 = icmp ne i1 %_secret_landtmp176, false
  %_secret_lval178 = load i8, i8* %_secret___m13
  %_secret_selecttmp179 = call i8 @select.cmov.asm.i8(i1 %_secret_condtmp177, i8 64, i8 %_secret_lval178)
  store i8 %_secret_selecttmp179, i8* %_secret___m13
  %_secret___m13180 = load i8, i8* %_secret___m13
  %_secret_rhssext181 = zext i8 %_secret___m13180 to i32
  %_secret_addtmp182 = add i32 %_secret_lval162, %_secret_rhssext181
  %_secret_ugttmp183 = icmp ugt i32 %_public_lval161, %_secret_addtmp182
  store i1 %_secret_ugttmp183, i1* %_secret___m15
  %_secret_lval184 = load i1, i1* %_secret___m15
  %_secret_landtmp185 = and i1 true, %_secret_lval184
  %_secret_lval186 = load i1, i1* %_secret___rnset
  %_secret_landtmp187 = and i1 %_secret_landtmp185, %_secret_lval186
  %_secret_condtmp188 = icmp ne i1 %_secret_landtmp187, false
  %_secret_lval189 = load i1, i1* %_secret___v54_done
  %_secret_selecttmp190 = call i1 @select.cmov.asm.i1(i1 %_secret_condtmp188, i1 true, i1 %_secret_lval189)
  store i1 %_secret_selecttmp190, i1* %_secret___v54_done
  %_secret_lval191 = load i1, i1* %_secret___m15
  %_secret_lnottmp192 = xor i1 %_secret_lval191, true
  store i1 %_secret_lnottmp192, i1* %_secret___m15
  br label %branchmerge194

elsebranch193:                                    ; preds = %branchmerge126
  br label %branchmerge194

branchmerge194:                                   ; preds = %elsebranch193, %loop_end138
  %_public_lval195 = load i32, i32* %_public___v55_i
  %_public_addtmp196 = add i32 %_public_lval195, 1
  store i32 %_public_addtmp196, i32* %_public___v55_i
  br label %loop_check
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
  %_public___v60_NO_PAYLOAD_LENGTH = alloca i64
  %_public___v61_AES_BLOCK_SIZE = alloca i32
  %_public___v62_SHA_DIGEST_LENGTH = alloca i32
  %_public___v63_TLS1_1_VERSION = alloca i32
  %_public___v64_SHA_LBLOCK = alloca i32
  %_public___v65_SHA_CBLOCK = alloca i32
  %_secret___v66_ret = alloca i32
  %_public___v67_inp = alloca i32
  %_public___v68_outp = alloca i32
  %_public___v69__len = alloca i32
  %_public___v71___v70_len = alloca i32
  %_public___v73___v72_len = alloca i32
  %_secret___v74_pad = alloca i32
  %_public___v75_tmppad = alloca i32
  %_public___v76_maxpad = alloca i32
  %_secret___m16 = alloca i1
  %_secret___v77_inp_len = alloca i32
  %_secret___v78_ctx_num = alloca i32
  %_public___v81___v80_len = alloca i32
  %_public___v82_minlen = alloca i32
  %_public___v84___v83_len = alloca i32
  %_public___v86___v85_len = alloca i32
  %_public___v87_pub_start = alloca i32
  %_secret___m17 = alloca i1
  %_public___v88_i = alloca i32
  %_secret___m18 = alloca i1
  %_secret___m19 = alloca i1
  %_secret___m20 = alloca i1
  %_secret___v89_j = alloca i32
  %_secret___m21 = alloca i1
  store i32 0, i32* %_secret___rval
  store i1 true, i1* %_secret___rnset
  store i64 -1, i64* %_public___v60_NO_PAYLOAD_LENGTH
  store i32 16, i32* %_public___v61_AES_BLOCK_SIZE
  store i32 20, i32* %_public___v62_SHA_DIGEST_LENGTH
  store i32 770, i32* %_public___v63_TLS1_1_VERSION
  store i32 16, i32* %_public___v64_SHA_LBLOCK
  %_public_lval = load i32, i32* %_public___v64_SHA_LBLOCK
  %_public_multmp = mul i32 %_public_lval, 4
  store i32 %_public_multmp, i32* %_public___v65_SHA_CBLOCK
  store i32 1, i32* %_secret___v66_ret
  %_public_lval10 = load i32, i32* %_public____in_len
  %_public_lval11 = load i32, i32* %_public___v61_AES_BLOCK_SIZE
  %_public_uremtmp = urem i32 %_public_lval10, %_public_lval11
  %_public_neqtmp = icmp ne i32 %_public_uremtmp, 0
  %_public_branchcompare = icmp eq i1 %_public_neqtmp, true
  br i1 %_public_branchcompare, label %thenbranch, label %elsebranch

thenbranch:                                       ; preds = %entry
  store i32 0, i32* %_secret___rval
  %_secret_lval = load i32, i32* %_secret___rval
  ret i32 %_secret_lval

elsebranch:                                       ; preds = %entry
  br label %branchmerge

branchmerge:                                      ; preds = %elsebranch
  store i32 0, i32* %_public___v67_inp
  store i32 0, i32* %_public___v68_outp
  %_public_lval12 = load i32, i32* %_public____out_len
  store i32 %_public_lval12, i32* %_public___v69__len
  %_public_lval13 = load i16, i16* %_public_tls_ver
  %_public_lval14 = load i32, i32* %_public___v63_TLS1_1_VERSION
  %_public_lhssext = zext i16 %_public_lval13 to i32
  %_public_ugtetmp = icmp uge i32 %_public_lhssext, %_public_lval14
  %_public_branchcompare15 = icmp eq i1 %_public_ugtetmp, true
  br i1 %_public_branchcompare15, label %thenbranch16, label %elsebranch36

thenbranch16:                                     ; preds = %branchmerge
  %_public_lval17 = load i32, i32* %_public___v69__len
  %_public_lval18 = load i32, i32* %_public___v61_AES_BLOCK_SIZE
  %_public_lval19 = load i32, i32* %_public___v62_SHA_DIGEST_LENGTH
  %_public_addtmp = add i32 %_public_lval18, %_public_lval19
  %_public_addtmp20 = add i32 %_public_addtmp, 1
  %_public_ulttmp = icmp ult i32 %_public_lval17, %_public_addtmp20
  %_public_branchcompare21 = icmp eq i1 %_public_ulttmp, true
  br i1 %_public_branchcompare21, label %thenbranch22, label %elsebranch24

thenbranch22:                                     ; preds = %thenbranch16
  store i32 0, i32* %_secret___rval
  %_secret_lval23 = load i32, i32* %_secret___rval
  ret i32 %_secret_lval23

elsebranch24:                                     ; preds = %thenbranch16
  br label %branchmerge25

branchmerge25:                                    ; preds = %elsebranch24
  %_secret_dynarrarg = load i8*, i8** %_secret_arrarg
  %_secret_dynarrarg26 = load i8*, i8** %_secret_arrarg5
  %_public_lval27 = load i32, i32* %_public____in_len
  call void @_arrcopy(i8* %_secret_dynarrarg, i32 16, i8* %_secret_dynarrarg26, i32 %_public_lval27)
  %_public_lval28 = load i32, i32* %_public___v67_inp
  %_public_lval29 = load i32, i32* %_public___v61_AES_BLOCK_SIZE
  %_public_addtmp30 = add i32 %_public_lval28, %_public_lval29
  store i32 %_public_addtmp30, i32* %_public___v67_inp
  %_public_lval31 = load i32, i32* %_public___v68_outp
  %_public_lval32 = load i32, i32* %_public___v61_AES_BLOCK_SIZE
  %_public_addtmp33 = add i32 %_public_lval31, %_public_lval32
  store i32 %_public_addtmp33, i32* %_public___v68_outp
  %_public_lval34 = load i32, i32* %_public___v69__len
  %_public_lval35 = load i32, i32* %_public___v61_AES_BLOCK_SIZE
  %_public_subtmp = sub i32 %_public_lval34, %_public_lval35
  store i32 %_public_subtmp, i32* %_public___v69__len
  br label %branchmerge46

elsebranch36:                                     ; preds = %branchmerge
  %_public_lval37 = load i32, i32* %_public___v69__len
  %_public_lval38 = load i32, i32* %_public___v62_SHA_DIGEST_LENGTH
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

branchmerge46:                                    ; preds = %branchmerge45, %branchmerge25
  %_public_lval47 = load i32, i32* %_public___v69__len
  store i32 %_public_lval47, i32* %_public___v71___v70_len
  %_public_lval48 = load i32, i32* %_public___v69__len
  store i32 %_public_lval48, i32* %_public___v73___v72_len
  %_public_lval49 = load i32, i32* %_public___v67_inp
  %_secret_ldedviewptr = load i8*, i8** %_secret_arrarg5
  %_secret_source_gep = getelementptr inbounds i8, i8* %_secret_ldedviewptr, i32 %_public_lval49
  %_secret_arrviewdyn = alloca i8*
  store i8* %_secret_source_gep, i8** %_secret_arrviewdyn
  %_public_lval50 = load i32, i32* %_public___v67_inp
  %_secret_ldedviewptr51 = load i8*, i8** %_secret_arrarg5
  %_secret_source_gep52 = getelementptr inbounds i8, i8* %_secret_ldedviewptr51, i32 %_public_lval50
  %_secret_arrviewdyn53 = alloca i8*
  store i8* %_secret_source_gep52, i8** %_secret_arrviewdyn53
  %_secret_dynarrarg54 = load i8*, i8** %_secret_arrviewdyn53
  %_public_lval55 = load i32, i32* %_public___v68_outp
  %_secret_ldedviewptr56 = load i8*, i8** %_secret_arrarg2
  %_secret_source_gep57 = getelementptr inbounds i8, i8* %_secret_ldedviewptr56, i32 %_public_lval55
  %_secret_arrviewdyn58 = alloca i8*
  store i8* %_secret_source_gep57, i8** %_secret_arrviewdyn58
  %_public_lval59 = load i32, i32* %_public___v68_outp
  %_secret_ldedviewptr60 = load i8*, i8** %_secret_arrarg2
  %_secret_source_gep61 = getelementptr inbounds i8, i8* %_secret_ldedviewptr60, i32 %_public_lval59
  %_secret_arrviewdyn62 = alloca i8*
  store i8* %_secret_source_gep61, i8** %_secret_arrviewdyn62
  %_secret_dynarrarg63 = load i8*, i8** %_secret_arrviewdyn62
  %_public_lval64 = load i32, i32* %_public___v69__len
  %_public_zexttmp = zext i32 %_public_lval64 to i64
  %_public_structgep = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 0
  %_secret_dynarrarg65 = load i8*, i8** %_secret_arrarg
  call void @aesni_cbc_encrypt(i8* %_secret_dynarrarg54, i8* %_secret_dynarrarg63, i64 %_public_zexttmp, %AES_KEY* %_public_structgep, i8* %_secret_dynarrarg65, i32 0)
  %_public_lval66 = load i32, i32* %_public____out_len
  %_public_subtmp67 = sub i32 %_public_lval66, 1
  %_secret_dyn = load i8*, i8** %_secret_arrarg2
  %_secret_ptr = getelementptr inbounds i8, i8* %_secret_dyn, i32 %_public_subtmp67
  %_secret_lval68 = load i8, i8* %_secret_ptr
  %_secret_zexttmp = zext i8 %_secret_lval68 to i32
  store i32 %_secret_zexttmp, i32* %_secret___v74_pad
  %_public_lval69 = load i32, i32* %_public___v69__len
  %_public_lval70 = load i32, i32* %_public___v62_SHA_DIGEST_LENGTH
  %_public_addtmp71 = add i32 %_public_lval70, 1
  %_public_subtmp72 = sub i32 %_public_lval69, %_public_addtmp71
  store i32 %_public_subtmp72, i32* %_public___v75_tmppad
  %_public_lval73 = load i32, i32* %_public___v75_tmppad
  %_public_ugttmp = icmp ugt i32 %_public_lval73, 255
  %_public_condtmp = icmp ne i1 %_public_ugttmp, false
  %_public_lval74 = load i32, i32* %_public___v75_tmppad
  %_public_terntmp = select i1 %_public_condtmp, i32 255, i32 %_public_lval74
  store i32 %_public_terntmp, i32* %_public___v76_maxpad
  %_secret_lval75 = load i32, i32* %_secret___v74_pad
  %_public_lval76 = load i32, i32* %_public___v76_maxpad
  %_secret_ugttmp = icmp ugt i32 %_secret_lval75, %_public_lval76
  store i1 %_secret_ugttmp, i1* %_secret___m16
  %_secret_lval77 = load i1, i1* %_secret___m16
  %_secret_landtmp = and i1 true, %_secret_lval77
  %_secret_lval78 = load i1, i1* %_secret___rnset
  %_secret_landtmp79 = and i1 %_secret_landtmp, %_secret_lval78
  %_secret_condtmp = icmp ne i1 %_secret_landtmp79, false
  %_secret_lval80 = load i32, i32* %_secret___v66_ret
  %_secret_selecttmp = call i32 @select.cmov.sel.i32(i1 %_secret_condtmp, i32 0, i32 %_secret_lval80)
  store i32 %_secret_selecttmp, i32* %_secret___v66_ret
  %_secret_lval81 = load i1, i1* %_secret___m16
  %_secret_landtmp82 = and i1 true, %_secret_lval81
  %_secret_lval83 = load i1, i1* %_secret___rnset
  %_secret_landtmp84 = and i1 %_secret_landtmp82, %_secret_lval83
  %_secret_condtmp85 = icmp ne i1 %_secret_landtmp84, false
  %_public_lval86 = load i32, i32* %_public___v76_maxpad
  %_secret_lval87 = load i32, i32* %_secret___v74_pad
  %_secret_selecttmp88 = call i32 @select.cmov.sel.i32(i1 %_secret_condtmp85, i32 %_public_lval86, i32 %_secret_lval87)
  store i32 %_secret_selecttmp88, i32* %_secret___v74_pad
  %_secret_lval89 = load i1, i1* %_secret___m16
  %_secret_lnottmp = xor i1 %_secret_lval89, true
  store i1 %_secret_lnottmp, i1* %_secret___m16
  %_public_lval90 = load i32, i32* %_public___v69__len
  %_secret_lval91 = load i32, i32* %_secret___v74_pad
  %_secret_addtmp = add i32 %_secret_lval91, 1
  %_public_lval92 = load i32, i32* %_public___v62_SHA_DIGEST_LENGTH
  %_secret_addtmp93 = add i32 %_secret_addtmp, %_public_lval92
  %_secret_subtmp = sub i32 %_public_lval90, %_secret_addtmp93
  store i32 %_secret_subtmp, i32* %_secret___v77_inp_len
  %_public_lval94 = load i64, i64* %_public_plen
  %_public_subtmp95 = sub i64 %_public_lval94, 2
  %_secret_structgep = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 5
  %_secret_arrview = alloca i8*
  %_secret_source_gep96 = getelementptr inbounds [16 x i8], [16 x i8]* %_secret_structgep, i64 0, i64 %_public_subtmp95
  store i8* %_secret_source_gep96, i8** %_secret_arrview
  %_public_lval97 = load i64, i64* %_public_plen
  %_public_subtmp98 = sub i64 %_public_lval97, 2
  %_secret_structgep99 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 5
  %_secret_arrview100 = alloca i8*
  %_secret_source_gep101 = getelementptr inbounds [16 x i8], [16 x i8]* %_secret_structgep99, i64 0, i64 %_public_subtmp98
  store i8* %_secret_source_gep101, i8** %_secret_arrview100
  %_secret_dynarrarg102 = load i8*, i8** %_secret_arrview100
  %_secret_lval103 = load i32, i32* %_secret___v77_inp_len
  %_secret_ucast = trunc i32 %_secret_lval103 to i16
  call void @store16_be(i8* %_secret_dynarrarg102, i16 %_secret_ucast)
  store i32 0, i32* %_secret___v78_ctx_num
  %_secret___v79_pmac = alloca [20 x i8], align 32
  %_public_structgep104 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_public_structgep105 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 1
  call void @_structcopy_SHA_CTX(%SHA_CTX* %_public_structgep104, %SHA_CTX* %_public_structgep105)
  %_public_lval106 = load i64, i64* %_public_plen
  %_public_trunctmp = trunc i64 %_public_lval106 to i32
  store i32 %_public_trunctmp, i32* %_public___v81___v80_len
  %_public_structgep107 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep108 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 5
  %_secret_arrview109 = alloca i8*
  %_secret_source_gep110 = getelementptr inbounds [16 x i8], [16 x i8]* %_secret_structgep108, i8 0, i8 0
  store i8* %_secret_source_gep110, i8** %_secret_arrview109
  %_secret_structgep111 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 5
  %_secret_arrview112 = alloca i8*
  %_secret_source_gep113 = getelementptr inbounds [16 x i8], [16 x i8]* %_secret_structgep111, i8 0, i8 0
  store i8* %_secret_source_gep113, i8** %_secret_arrview112
  %_secret_dynarrarg114 = load i8*, i8** %_secret_arrview112
  %_public_lval115 = load i32, i32* %_public___v81___v80_len
  call void @SHA1_Update_public(%SHA_CTX* %_public_structgep107, i8* %_secret_dynarrarg114, i32 %_public_lval115)
  %_public_lval116 = load i32, i32* %_public___v69__len
  %_public_lval117 = load i32, i32* %_public___v65_SHA_CBLOCK
  %_public_addtmp118 = add i32 256, %_public_lval117
  %_public_lval119 = load i32, i32* %_public___v62_SHA_DIGEST_LENGTH
  %_public_addtmp120 = add i32 %_public_addtmp118, %_public_lval119
  %_public_ugtetmp121 = icmp uge i32 %_public_lval116, %_public_addtmp120
  %_public_condtmp122 = icmp ne i1 %_public_ugtetmp121, false
  %_public_lval123 = load i32, i32* %_public___v69__len
  %_public_lval124 = load i32, i32* %_public___v65_SHA_CBLOCK
  %_public_addtmp125 = add i32 256, %_public_lval124
  %_public_lval126 = load i32, i32* %_public___v62_SHA_DIGEST_LENGTH
  %_public_addtmp127 = add i32 %_public_addtmp125, %_public_lval126
  %_public_subtmp128 = sub i32 %_public_lval123, %_public_addtmp127
  %_public_lval129 = load i32, i32* %_public___v65_SHA_CBLOCK
  %_public_subtmp130 = sub i32 0, %_public_lval129
  %_public_andtmp = and i32 %_public_subtmp128, %_public_subtmp130
  %_public_lval131 = load i32, i32* %_public___v65_SHA_CBLOCK
  %_public_structgep132 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_public_structgep133 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep132, i32 0, i32 4
  %_public_lval134 = load i32, i32* %_public_structgep133
  %_public_subtmp135 = sub i32 %_public_lval131, %_public_lval134
  %_public_addtmp136 = add i32 %_public_andtmp, %_public_subtmp135
  %_public_terntmp137 = select i1 %_public_condtmp122, i32 %_public_addtmp136, i32 0
  store i32 %_public_terntmp137, i32* %_public___v82_minlen
  %_public_lval138 = load i32, i32* %_public___v82_minlen
  %_public_ugttmp139 = icmp ugt i32 %_public_lval138, 0
  %_public_branchcompare140 = icmp eq i1 %_public_ugttmp139, true
  br i1 %_public_branchcompare140, label %thenbranch141, label %elsebranch154

thenbranch141:                                    ; preds = %branchmerge46
  %_public_lval142 = load i32, i32* %_public___v82_minlen
  store i32 %_public_lval142, i32* %_public___v84___v83_len
  %_public_structgep143 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_public_lval144 = load i32, i32* %_public___v68_outp
  %_secret_ldedviewptr145 = load i8*, i8** %_secret_arrarg2
  %_secret_source_gep146 = getelementptr inbounds i8, i8* %_secret_ldedviewptr145, i32 %_public_lval144
  %_secret_arrviewdyn147 = alloca i8*
  store i8* %_secret_source_gep146, i8** %_secret_arrviewdyn147
  %_public_lval148 = load i32, i32* %_public___v68_outp
  %_secret_ldedviewptr149 = load i8*, i8** %_secret_arrarg2
  %_secret_source_gep150 = getelementptr inbounds i8, i8* %_secret_ldedviewptr149, i32 %_public_lval148
  %_secret_arrviewdyn151 = alloca i8*
  store i8* %_secret_source_gep150, i8** %_secret_arrviewdyn151
  %_secret_dynarrarg152 = load i8*, i8** %_secret_arrviewdyn151
  %_public_lval153 = load i32, i32* %_public___v84___v83_len
  call void @SHA1_Update_public(%SHA_CTX* %_public_structgep143, i8* %_secret_dynarrarg152, i32 %_public_lval153)
  br label %branchmerge155

elsebranch154:                                    ; preds = %branchmerge46
  br label %branchmerge155

branchmerge155:                                   ; preds = %elsebranch154, %thenbranch141
  %_public_lval156 = load i32, i32* %_public___v69__len
  %_public_lval157 = load i32, i32* %_public___v82_minlen
  %_public_subtmp158 = sub i32 %_public_lval156, %_public_lval157
  store i32 %_public_subtmp158, i32* %_public___v86___v85_len
  %_public_structgep159 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_public_lval160 = load i32, i32* %_public___v68_outp
  %_public_lval161 = load i32, i32* %_public___v82_minlen
  %_public_addtmp162 = add i32 %_public_lval160, %_public_lval161
  %_secret_ldedviewptr163 = load i8*, i8** %_secret_arrarg2
  %_secret_source_gep164 = getelementptr inbounds i8, i8* %_secret_ldedviewptr163, i32 %_public_addtmp162
  %_secret_arrviewdyn165 = alloca i8*
  store i8* %_secret_source_gep164, i8** %_secret_arrviewdyn165
  %_public_lval166 = load i32, i32* %_public___v68_outp
  %_public_lval167 = load i32, i32* %_public___v82_minlen
  %_public_addtmp168 = add i32 %_public_lval166, %_public_lval167
  %_secret_ldedviewptr169 = load i8*, i8** %_secret_arrarg2
  %_secret_source_gep170 = getelementptr inbounds i8, i8* %_secret_ldedviewptr169, i32 %_public_addtmp168
  %_secret_arrviewdyn171 = alloca i8*
  store i8* %_secret_source_gep170, i8** %_secret_arrviewdyn171
  %_secret_dynarrarg172 = load i8*, i8** %_secret_arrviewdyn171
  %_public_lval173 = load i32, i32* %_public___v86___v85_len
  %_secret_lval174 = load i32, i32* %_secret___v77_inp_len
  %_public_lval175 = load i32, i32* %_public___v82_minlen
  %_secret_subtmp176 = sub i32 %_secret_lval174, %_public_lval175
  call void @SHA1_Update_secret(%SHA_CTX* %_public_structgep159, i32* %_secret___v78_ctx_num, i8* %_secret_dynarrarg172, i32 %_public_lval173, i32 %_secret_subtmp176)
  %_secret_arrtoptr = bitcast [20 x i8]* %_secret___v79_pmac to i8*
  %_public_structgep177 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_lval178 = load i32, i32* %_secret___v78_ctx_num
  call void @SHA1_Final_secret(i8* %_secret_arrtoptr, %SHA_CTX* %_public_structgep177, i32 %_secret_lval178)
  %_public_structgep179 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_public_structgep180 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 2
  call void @_structcopy_SHA_CTX(%SHA_CTX* %_public_structgep179, %SHA_CTX* %_public_structgep180)
  %_public_structgep181 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_arrtoptr182 = bitcast [20 x i8]* %_secret___v79_pmac to i8*
  call void @SHA1_Update_public(%SHA_CTX* %_public_structgep181, i8* %_secret_arrtoptr182, i32 20)
  %_secret_arrtoptr183 = bitcast [20 x i8]* %_secret___v79_pmac to i8*
  %_public_structgep184 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  call void @SHA1_Final_public(i8* %_secret_arrtoptr183, %SHA_CTX* %_public_structgep184)
  %_public_lval185 = load i32, i32* %_public___v69__len
  %_public_lval186 = load i32, i32* %_public___v62_SHA_DIGEST_LENGTH
  %_public_addtmp187 = add i32 256, %_public_lval186
  %_public_ulttmp188 = icmp ult i32 %_public_lval185, %_public_addtmp187
  %_public_condtmp189 = icmp ne i1 %_public_ulttmp188, false
  %_public_lval190 = load i32, i32* %_public___v69__len
  %_public_lval191 = load i32, i32* %_public___v62_SHA_DIGEST_LENGTH
  %_public_addtmp192 = add i32 256, %_public_lval191
  %_public_subtmp193 = sub i32 %_public_lval190, %_public_addtmp192
  %_public_terntmp194 = select i1 %_public_condtmp189, i32 0, i32 %_public_subtmp193
  store i32 %_public_terntmp194, i32* %_public___v87_pub_start
  %_public_lval195 = load i32, i32* %_public___v68_outp
  %_secret_lval196 = load i32, i32* %_secret___v77_inp_len
  %_secret_addtmp197 = add i32 %_public_lval195, %_secret_lval196
  %_public_lval198 = load i32, i32* %_public___v62_SHA_DIGEST_LENGTH
  %_secret_addtmp199 = add i32 %_secret_addtmp197, %_public_lval198
  %_public_lval200 = load i32, i32* %_public___v69__len
  %_secret_ugttmp201 = icmp ugt i32 %_secret_addtmp199, %_public_lval200
  store i1 %_secret_ugttmp201, i1* %_secret___m17
  %_secret_lval202 = load i1, i1* %_secret___m17
  %_secret_landtmp203 = and i1 true, %_secret_lval202
  %_secret_lval204 = load i1, i1* %_secret___rnset
  %_secret_landtmp205 = and i1 %_secret_landtmp203, %_secret_lval204
  %_secret_condtmp206 = icmp ne i1 %_secret_landtmp205, false
  %_secret_lval207 = load i32, i32* %_secret___v66_ret
  %_secret_selecttmp208 = call i32 @select.cmov.sel.i32(i1 %_secret_condtmp206, i32 0, i32 %_secret_lval207)
  store i32 %_secret_selecttmp208, i32* %_secret___v66_ret
  %_secret_lval209 = load i1, i1* %_secret___m17
  %_secret_lnottmp210 = xor i1 %_secret_lval209, true
  store i1 %_secret_lnottmp210, i1* %_secret___m17
  %_public_lval211 = load i32, i32* %_public___v68_outp
  %_public_lval212 = load i32, i32* %_public___v87_pub_start
  %_public_addtmp213 = add i32 %_public_lval211, %_public_lval212
  store i32 %_public_addtmp213, i32* %_public___v88_i
  br label %loop_check

loop_check:                                       ; preds = %loop_body, %branchmerge155
  %_public_lval214 = load i32, i32* %_public___v88_i
  %_public_lval215 = load i32, i32* %_public___v69__len
  %_public_ulttmp216 = icmp ult i32 %_public_lval214, %_public_lval215
  br i1 %_public_ulttmp216, label %loop_body, label %loop_end

loop_body:                                        ; preds = %loop_check
  store i1 false, i1* %_secret___m18
  %_public_lval217 = load i32, i32* %_public___v88_i
  %_public_lval218 = load i32, i32* %_public___v68_outp
  %_secret_lval219 = load i32, i32* %_secret___v77_inp_len
  %_secret_addtmp220 = add i32 %_public_lval218, %_secret_lval219
  %_secret_ugtetmp = icmp uge i32 %_public_lval217, %_secret_addtmp220
  store i1 %_secret_ugtetmp, i1* %_secret___m19
  %_secret_lval221 = load i1, i1* %_secret___m19
  %_secret_landtmp222 = and i1 true, %_secret_lval221
  %_secret_lval223 = load i1, i1* %_secret___rnset
  %_secret_landtmp224 = and i1 %_secret_landtmp222, %_secret_lval223
  %_secret_condtmp225 = icmp ne i1 %_secret_landtmp224, false
  %_public_lval226 = load i32, i32* %_public___v88_i
  %_public_lval227 = load i32, i32* %_public___v68_outp
  %_secret_lval228 = load i32, i32* %_secret___v77_inp_len
  %_secret_addtmp229 = add i32 %_public_lval227, %_secret_lval228
  %_public_lval230 = load i32, i32* %_public___v62_SHA_DIGEST_LENGTH
  %_secret_addtmp231 = add i32 %_secret_addtmp229, %_public_lval230
  %_secret_ulttmp = icmp ult i32 %_public_lval226, %_secret_addtmp231
  %_secret_lval232 = load i1, i1* %_secret___m18
  %_secret_selecttmp233 = call i1 @select.cmov.asm.i1(i1 %_secret_condtmp225, i1 %_secret_ulttmp, i1 %_secret_lval232)
  store i1 %_secret_selecttmp233, i1* %_secret___m18
  %_secret_lval234 = load i1, i1* %_secret___m19
  %_secret_lnottmp235 = xor i1 %_secret_lval234, true
  store i1 %_secret_lnottmp235, i1* %_secret___m19
  %_secret_lval236 = load i1, i1* %_secret___m19
  %_secret_landtmp237 = and i1 true, %_secret_lval236
  %_secret_lval238 = load i1, i1* %_secret___rnset
  %_secret_landtmp239 = and i1 %_secret_landtmp237, %_secret_lval238
  %_secret_condtmp240 = icmp ne i1 %_secret_landtmp239, false
  %_secret_lval241 = load i1, i1* %_secret___m18
  %_secret_selecttmp242 = call i1 @select.cmov.asm.i1(i1 %_secret_condtmp240, i1 false, i1 %_secret_lval241)
  store i1 %_secret_selecttmp242, i1* %_secret___m18
  %_secret___m18243 = load i1, i1* %_secret___m18
  store i1 %_secret___m18243, i1* %_secret___m20
  %_public_lval244 = load i32, i32* %_public___v88_i
  %_public_lval245 = load i32, i32* %_public___v68_outp
  %_secret_lval246 = load i32, i32* %_secret___v77_inp_len
  %_secret_addtmp247 = add i32 %_public_lval245, %_secret_lval246
  %_secret_subtmp248 = sub i32 %_public_lval244, %_secret_addtmp247
  store i32 %_secret_subtmp248, i32* %_secret___v89_j
  %_public_lval249 = load i32, i32* %_public___v88_i
  %_secret_dyn250 = load i8*, i8** %_secret_arrarg2
  %_secret_ptr251 = getelementptr inbounds i8, i8* %_secret_dyn250, i32 %_public_lval249
  %_secret_lval252 = load i8, i8* %_secret_ptr251
  %_secret_lval253 = load i32, i32* %_secret___v89_j
  %_declassified_res = call i32 @fact.declassify.i32(i32 %_secret_lval253)
  %_secret_ptr254 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v79_pmac, i32 0, i32 %_declassified_res
  %_secret_lval255 = load i8, i8* %_secret_ptr254
  %_secret_neqtmp = icmp ne i8 %_secret_lval252, %_secret_lval255
  store i1 %_secret_neqtmp, i1* %_secret___m21
  %_secret_lval256 = load i1, i1* %_secret___m21
  %_secret_landtmp257 = and i1 true, %_secret_lval256
  %_secret_lval258 = load i1, i1* %_secret___m20
  %_secret_landtmp259 = and i1 %_secret_landtmp257, %_secret_lval258
  %_secret_lval260 = load i1, i1* %_secret___rnset
  %_secret_landtmp261 = and i1 %_secret_landtmp259, %_secret_lval260
  %_secret_condtmp262 = icmp ne i1 %_secret_landtmp261, false
  %_secret_lval263 = load i32, i32* %_secret___v66_ret
  %_secret_selecttmp264 = call i32 @select.cmov.sel.i32(i1 %_secret_condtmp262, i32 0, i32 %_secret_lval263)
  store i32 %_secret_selecttmp264, i32* %_secret___v66_ret
  %_secret_lval265 = load i1, i1* %_secret___m21
  %_secret_lnottmp266 = xor i1 %_secret_lval265, true
  store i1 %_secret_lnottmp266, i1* %_secret___m21
  %_secret_lval267 = load i1, i1* %_secret___m20
  %_secret_lnottmp268 = xor i1 %_secret_lval267, true
  store i1 %_secret_lnottmp268, i1* %_secret___m20
  %_public_lval269 = load i32, i32* %_public___v88_i
  %_public_addtmp270 = add i32 %_public_lval269, 1
  store i32 %_public_addtmp270, i32* %_public___v88_i
  br label %loop_check

loop_end:                                         ; preds = %loop_check
  %_secret_lval271 = load i32, i32* %_secret___v66_ret
  store i32 %_secret_lval271, i32* %_secret___rval
  %_secret_lval272 = load i32, i32* %_secret___rval
  ret i32 %_secret_lval272
}

; Function Attrs: alwaysinline
define internal void @_structcopy_SHA_CTX(%SHA_CTX*, %SHA_CTX*) #0 {
entry:
  %_secret_cast = bitcast %SHA_CTX* %0 to i8*
  %_secret_cast1 = bitcast %SHA_CTX* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %_secret_cast, i8* %_secret_cast1, i32 96, i32 4, i1 false)
  ret void
}

; Function Attrs: noinline
define internal i32 @fact.declassify.i32(i32 %_declassified_x) #2 {
entry:
  ret i32 %_declassified_x
}

attributes #0 = { alwaysinline }
attributes #1 = { argmemonly nounwind }
attributes #2 = { noinline }
