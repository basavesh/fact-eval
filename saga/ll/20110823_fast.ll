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
  %_secret___v70_tls_ver = alloca i16
  %_public___v72___v71_len = alloca i32
  %_public___v74___v73_len = alloca i32
  %_secret___v75_pad = alloca i32
  %_public___v76_tmppad = alloca i32
  %_public___v77_maxpad = alloca i32
  %_secret___m16 = alloca i1
  %_secret___v78_inp_len = alloca i32
  %_secret___v79_ctx_num = alloca i32
  %_public___v82___v81_len = alloca i32
  %_public___v83_minlen = alloca i32
  %_public___v85___v84_len = alloca i32
  %_public___v87___v86_len = alloca i32
  %_public___v88_pub_start = alloca i32
  %_secret___m17 = alloca i1
  %_public___v89_i = alloca i32
  %_secret___m18 = alloca i1
  %_secret___m19 = alloca i1
  %_secret___m20 = alloca i1
  %_secret___v90_j = alloca i32
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
  %_public_lval9 = load i32, i32* %_public____in_len
  %_public_lval10 = load i32, i32* %_public___v61_AES_BLOCK_SIZE
  %_public_uremtmp = urem i32 %_public_lval9, %_public_lval10
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
  %_public_lval11 = load i32, i32* %_public____out_len
  store i32 %_public_lval11, i32* %_public___v69__len
  %_public_lval12 = load i64, i64* %_public_plen
  %_public_subtmp = sub i64 %_public_lval12, 4
  %_secret_structgep = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 5
  %_secret_arrview = alloca i8*
  %_secret_source_gep = getelementptr inbounds [16 x i8], [16 x i8]* %_secret_structgep, i64 0, i64 %_public_subtmp
  store i8* %_secret_source_gep, i8** %_secret_arrview
  %_public_lval13 = load i64, i64* %_public_plen
  %_public_subtmp14 = sub i64 %_public_lval13, 4
  %_secret_structgep15 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 5
  %_secret_arrview16 = alloca i8*
  %_secret_source_gep17 = getelementptr inbounds [16 x i8], [16 x i8]* %_secret_structgep15, i64 0, i64 %_public_subtmp14
  store i8* %_secret_source_gep17, i8** %_secret_arrview16
  %_secret_dynarrarg = load i8*, i8** %_secret_arrview16
  %_secret_calltmp = call i16 @load16_be(i8* %_secret_dynarrarg)
  store i16 %_secret_calltmp, i16* %_secret___v70_tls_ver
  %_secret_lval18 = load i16, i16* %_secret___v70_tls_ver
  %_public_lval19 = load i32, i32* %_public___v63_TLS1_1_VERSION
  %_secret_lhssext = zext i16 %_secret_lval18 to i32
  %_declassified__secret_ugtetmp = icmp uge i32 %_secret_lhssext, %_public_lval19
  %_public_branchcompare20 = icmp eq i1 %_declassified__secret_ugtetmp, true
  br i1 %_public_branchcompare20, label %thenbranch21, label %elsebranch43

thenbranch21:                                     ; preds = %branchmerge
  %_public_lval22 = load i32, i32* %_public___v69__len
  %_public_lval23 = load i32, i32* %_public___v61_AES_BLOCK_SIZE
  %_public_lval24 = load i32, i32* %_public___v62_SHA_DIGEST_LENGTH
  %_public_addtmp = add i32 %_public_lval23, %_public_lval24
  %_public_addtmp25 = add i32 %_public_addtmp, 1
  %_public_ulttmp = icmp ult i32 %_public_lval22, %_public_addtmp25
  %_public_branchcompare26 = icmp eq i1 %_public_ulttmp, true
  br i1 %_public_branchcompare26, label %thenbranch27, label %elsebranch29

thenbranch27:                                     ; preds = %thenbranch21
  store i32 0, i32* %_secret___rval
  %_secret_lval28 = load i32, i32* %_secret___rval
  ret i32 %_secret_lval28

elsebranch29:                                     ; preds = %thenbranch21
  br label %branchmerge30

branchmerge30:                                    ; preds = %elsebranch29
  %_secret_dynarrarg31 = load i8*, i8** %_secret_arrarg
  %_secret_dynarrarg32 = load i8*, i8** %_secret_arrarg5
  %_public_lval33 = load i32, i32* %_public____in_len
  call void @_arrcopy(i8* %_secret_dynarrarg31, i32 16, i8* %_secret_dynarrarg32, i32 %_public_lval33)
  %_public_lval34 = load i32, i32* %_public___v67_inp
  %_public_lval35 = load i32, i32* %_public___v61_AES_BLOCK_SIZE
  %_public_addtmp36 = add i32 %_public_lval34, %_public_lval35
  store i32 %_public_addtmp36, i32* %_public___v67_inp
  %_public_lval37 = load i32, i32* %_public___v68_outp
  %_public_lval38 = load i32, i32* %_public___v61_AES_BLOCK_SIZE
  %_public_addtmp39 = add i32 %_public_lval37, %_public_lval38
  store i32 %_public_addtmp39, i32* %_public___v68_outp
  %_public_lval40 = load i32, i32* %_public___v69__len
  %_public_lval41 = load i32, i32* %_public___v61_AES_BLOCK_SIZE
  %_public_subtmp42 = sub i32 %_public_lval40, %_public_lval41
  store i32 %_public_subtmp42, i32* %_public___v69__len
  br label %branchmerge53

elsebranch43:                                     ; preds = %branchmerge
  %_public_lval44 = load i32, i32* %_public___v69__len
  %_public_lval45 = load i32, i32* %_public___v62_SHA_DIGEST_LENGTH
  %_public_addtmp46 = add i32 %_public_lval45, 1
  %_public_ulttmp47 = icmp ult i32 %_public_lval44, %_public_addtmp46
  %_public_branchcompare48 = icmp eq i1 %_public_ulttmp47, true
  br i1 %_public_branchcompare48, label %thenbranch49, label %elsebranch51

thenbranch49:                                     ; preds = %elsebranch43
  store i32 0, i32* %_secret___rval
  %_secret_lval50 = load i32, i32* %_secret___rval
  ret i32 %_secret_lval50

elsebranch51:                                     ; preds = %elsebranch43
  br label %branchmerge52

branchmerge52:                                    ; preds = %elsebranch51
  br label %branchmerge53

branchmerge53:                                    ; preds = %branchmerge52, %branchmerge30
  %_public_lval54 = load i32, i32* %_public___v69__len
  store i32 %_public_lval54, i32* %_public___v72___v71_len
  %_public_lval55 = load i32, i32* %_public___v69__len
  store i32 %_public_lval55, i32* %_public___v74___v73_len
  %_public_lval56 = load i32, i32* %_public___v67_inp
  %_secret_ldedviewptr = load i8*, i8** %_secret_arrarg5
  %_secret_source_gep57 = getelementptr inbounds i8, i8* %_secret_ldedviewptr, i32 %_public_lval56
  %_secret_arrviewdyn = alloca i8*
  store i8* %_secret_source_gep57, i8** %_secret_arrviewdyn
  %_public_lval58 = load i32, i32* %_public___v67_inp
  %_secret_ldedviewptr59 = load i8*, i8** %_secret_arrarg5
  %_secret_source_gep60 = getelementptr inbounds i8, i8* %_secret_ldedviewptr59, i32 %_public_lval58
  %_secret_arrviewdyn61 = alloca i8*
  store i8* %_secret_source_gep60, i8** %_secret_arrviewdyn61
  %_secret_dynarrarg62 = load i8*, i8** %_secret_arrviewdyn61
  %_public_lval63 = load i32, i32* %_public___v68_outp
  %_secret_ldedviewptr64 = load i8*, i8** %_secret_arrarg2
  %_secret_source_gep65 = getelementptr inbounds i8, i8* %_secret_ldedviewptr64, i32 %_public_lval63
  %_secret_arrviewdyn66 = alloca i8*
  store i8* %_secret_source_gep65, i8** %_secret_arrviewdyn66
  %_public_lval67 = load i32, i32* %_public___v68_outp
  %_secret_ldedviewptr68 = load i8*, i8** %_secret_arrarg2
  %_secret_source_gep69 = getelementptr inbounds i8, i8* %_secret_ldedviewptr68, i32 %_public_lval67
  %_secret_arrviewdyn70 = alloca i8*
  store i8* %_secret_source_gep69, i8** %_secret_arrviewdyn70
  %_secret_dynarrarg71 = load i8*, i8** %_secret_arrviewdyn70
  %_public_lval72 = load i32, i32* %_public___v69__len
  %_public_zexttmp = zext i32 %_public_lval72 to i64
  %_public_structgep = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 0
  %_secret_dynarrarg73 = load i8*, i8** %_secret_arrarg
  call void @aesni_cbc_encrypt(i8* %_secret_dynarrarg62, i8* %_secret_dynarrarg71, i64 %_public_zexttmp, %AES_KEY* %_public_structgep, i8* %_secret_dynarrarg73, i32 0)
  %_public_lval74 = load i32, i32* %_public____out_len
  %_public_subtmp75 = sub i32 %_public_lval74, 1
  %_secret_dyn = load i8*, i8** %_secret_arrarg2
  %_secret_ptr = getelementptr inbounds i8, i8* %_secret_dyn, i32 %_public_subtmp75
  %_secret_lval76 = load i8, i8* %_secret_ptr
  %_secret_zexttmp = zext i8 %_secret_lval76 to i32
  store i32 %_secret_zexttmp, i32* %_secret___v75_pad
  %_public_lval77 = load i32, i32* %_public___v69__len
  %_public_lval78 = load i32, i32* %_public___v62_SHA_DIGEST_LENGTH
  %_public_addtmp79 = add i32 %_public_lval78, 1
  %_public_subtmp80 = sub i32 %_public_lval77, %_public_addtmp79
  store i32 %_public_subtmp80, i32* %_public___v76_tmppad
  %_public_lval81 = load i32, i32* %_public___v76_tmppad
  %_public_ugttmp = icmp ugt i32 %_public_lval81, 255
  %_public_condtmp = icmp ne i1 %_public_ugttmp, false
  %_public_lval82 = load i32, i32* %_public___v76_tmppad
  %_public_terntmp = select i1 %_public_condtmp, i32 255, i32 %_public_lval82
  store i32 %_public_terntmp, i32* %_public___v77_maxpad
  %_secret_lval83 = load i32, i32* %_secret___v75_pad
  %_public_lval84 = load i32, i32* %_public___v77_maxpad
  %_secret_ugttmp = icmp ugt i32 %_secret_lval83, %_public_lval84
  store i1 %_secret_ugttmp, i1* %_secret___m16
  %_secret_lval85 = load i1, i1* %_secret___m16
  %_secret_landtmp = and i1 true, %_secret_lval85
  %_secret_lval86 = load i1, i1* %_secret___rnset
  %_secret_landtmp87 = and i1 %_secret_landtmp, %_secret_lval86
  %_secret_condtmp = icmp ne i1 %_secret_landtmp87, false
  %_secret_lval88 = load i32, i32* %_secret___v66_ret
  %_secret_selecttmp = call i32 @select.cmov.sel.i32(i1 %_secret_condtmp, i32 0, i32 %_secret_lval88)
  store i32 %_secret_selecttmp, i32* %_secret___v66_ret
  %_secret_lval89 = load i1, i1* %_secret___m16
  %_secret_landtmp90 = and i1 true, %_secret_lval89
  %_secret_lval91 = load i1, i1* %_secret___rnset
  %_secret_landtmp92 = and i1 %_secret_landtmp90, %_secret_lval91
  %_secret_condtmp93 = icmp ne i1 %_secret_landtmp92, false
  %_public_lval94 = load i32, i32* %_public___v77_maxpad
  %_secret_lval95 = load i32, i32* %_secret___v75_pad
  %_secret_selecttmp96 = call i32 @select.cmov.sel.i32(i1 %_secret_condtmp93, i32 %_public_lval94, i32 %_secret_lval95)
  store i32 %_secret_selecttmp96, i32* %_secret___v75_pad
  %_secret_lval97 = load i1, i1* %_secret___m16
  %_secret_lnottmp = xor i1 %_secret_lval97, true
  store i1 %_secret_lnottmp, i1* %_secret___m16
  %_public_lval98 = load i32, i32* %_public___v69__len
  %_secret_lval99 = load i32, i32* %_secret___v75_pad
  %_secret_addtmp = add i32 %_secret_lval99, 1
  %_public_lval100 = load i32, i32* %_public___v62_SHA_DIGEST_LENGTH
  %_secret_addtmp101 = add i32 %_secret_addtmp, %_public_lval100
  %_secret_subtmp = sub i32 %_public_lval98, %_secret_addtmp101
  store i32 %_secret_subtmp, i32* %_secret___v78_inp_len
  %_public_lval102 = load i64, i64* %_public_plen
  %_public_subtmp103 = sub i64 %_public_lval102, 2
  %_secret_structgep104 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 5
  %_secret_arrview105 = alloca i8*
  %_secret_source_gep106 = getelementptr inbounds [16 x i8], [16 x i8]* %_secret_structgep104, i64 0, i64 %_public_subtmp103
  store i8* %_secret_source_gep106, i8** %_secret_arrview105
  %_public_lval107 = load i64, i64* %_public_plen
  %_public_subtmp108 = sub i64 %_public_lval107, 2
  %_secret_structgep109 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 5
  %_secret_arrview110 = alloca i8*
  %_secret_source_gep111 = getelementptr inbounds [16 x i8], [16 x i8]* %_secret_structgep109, i64 0, i64 %_public_subtmp108
  store i8* %_secret_source_gep111, i8** %_secret_arrview110
  %_secret_dynarrarg112 = load i8*, i8** %_secret_arrview110
  %_secret_lval113 = load i32, i32* %_secret___v78_inp_len
  %_secret_ucast = trunc i32 %_secret_lval113 to i16
  call void @store16_be(i8* %_secret_dynarrarg112, i16 %_secret_ucast)
  store i32 0, i32* %_secret___v79_ctx_num
  %_secret___v80_pmac = alloca [20 x i8], align 32
  %_public_structgep114 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_public_structgep115 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 1
  call void @_structcopy_SHA_CTX(%SHA_CTX* %_public_structgep114, %SHA_CTX* %_public_structgep115)
  %_public_lval116 = load i64, i64* %_public_plen
  %_public_trunctmp = trunc i64 %_public_lval116 to i32
  store i32 %_public_trunctmp, i32* %_public___v82___v81_len
  %_public_structgep117 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_structgep118 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 5
  %_secret_arrview119 = alloca i8*
  %_secret_source_gep120 = getelementptr inbounds [16 x i8], [16 x i8]* %_secret_structgep118, i8 0, i8 0
  store i8* %_secret_source_gep120, i8** %_secret_arrview119
  %_secret_structgep121 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 5
  %_secret_arrview122 = alloca i8*
  %_secret_source_gep123 = getelementptr inbounds [16 x i8], [16 x i8]* %_secret_structgep121, i8 0, i8 0
  store i8* %_secret_source_gep123, i8** %_secret_arrview122
  %_secret_dynarrarg124 = load i8*, i8** %_secret_arrview122
  %_public_lval125 = load i32, i32* %_public___v82___v81_len
  call void @SHA1_Update_public(%SHA_CTX* %_public_structgep117, i8* %_secret_dynarrarg124, i32 %_public_lval125)
  %_public_lval126 = load i32, i32* %_public___v69__len
  %_public_lval127 = load i32, i32* %_public___v65_SHA_CBLOCK
  %_public_addtmp128 = add i32 256, %_public_lval127
  %_public_lval129 = load i32, i32* %_public___v62_SHA_DIGEST_LENGTH
  %_public_addtmp130 = add i32 %_public_addtmp128, %_public_lval129
  %_public_ugtetmp = icmp uge i32 %_public_lval126, %_public_addtmp130
  %_public_condtmp131 = icmp ne i1 %_public_ugtetmp, false
  %_public_lval132 = load i32, i32* %_public___v69__len
  %_public_lval133 = load i32, i32* %_public___v65_SHA_CBLOCK
  %_public_addtmp134 = add i32 256, %_public_lval133
  %_public_lval135 = load i32, i32* %_public___v62_SHA_DIGEST_LENGTH
  %_public_addtmp136 = add i32 %_public_addtmp134, %_public_lval135
  %_public_subtmp137 = sub i32 %_public_lval132, %_public_addtmp136
  %_public_lval138 = load i32, i32* %_public___v65_SHA_CBLOCK
  %_public_subtmp139 = sub i32 0, %_public_lval138
  %_public_andtmp = and i32 %_public_subtmp137, %_public_subtmp139
  %_public_lval140 = load i32, i32* %_public___v65_SHA_CBLOCK
  %_public_structgep141 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_public_structgep142 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep141, i32 0, i32 4
  %_public_lval143 = load i32, i32* %_public_structgep142
  %_public_subtmp144 = sub i32 %_public_lval140, %_public_lval143
  %_public_addtmp145 = add i32 %_public_andtmp, %_public_subtmp144
  %_public_terntmp146 = select i1 %_public_condtmp131, i32 %_public_addtmp145, i32 0
  store i32 %_public_terntmp146, i32* %_public___v83_minlen
  %_public_lval147 = load i32, i32* %_public___v83_minlen
  %_public_ugttmp148 = icmp ugt i32 %_public_lval147, 0
  %_public_branchcompare149 = icmp eq i1 %_public_ugttmp148, true
  br i1 %_public_branchcompare149, label %thenbranch150, label %elsebranch163

thenbranch150:                                    ; preds = %branchmerge53
  %_public_lval151 = load i32, i32* %_public___v83_minlen
  store i32 %_public_lval151, i32* %_public___v85___v84_len
  %_public_structgep152 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_public_lval153 = load i32, i32* %_public___v68_outp
  %_secret_ldedviewptr154 = load i8*, i8** %_secret_arrarg2
  %_secret_source_gep155 = getelementptr inbounds i8, i8* %_secret_ldedviewptr154, i32 %_public_lval153
  %_secret_arrviewdyn156 = alloca i8*
  store i8* %_secret_source_gep155, i8** %_secret_arrviewdyn156
  %_public_lval157 = load i32, i32* %_public___v68_outp
  %_secret_ldedviewptr158 = load i8*, i8** %_secret_arrarg2
  %_secret_source_gep159 = getelementptr inbounds i8, i8* %_secret_ldedviewptr158, i32 %_public_lval157
  %_secret_arrviewdyn160 = alloca i8*
  store i8* %_secret_source_gep159, i8** %_secret_arrviewdyn160
  %_secret_dynarrarg161 = load i8*, i8** %_secret_arrviewdyn160
  %_public_lval162 = load i32, i32* %_public___v85___v84_len
  call void @SHA1_Update_public(%SHA_CTX* %_public_structgep152, i8* %_secret_dynarrarg161, i32 %_public_lval162)
  br label %branchmerge164

elsebranch163:                                    ; preds = %branchmerge53
  br label %branchmerge164

branchmerge164:                                   ; preds = %elsebranch163, %thenbranch150
  %_public_lval165 = load i32, i32* %_public___v69__len
  %_public_lval166 = load i32, i32* %_public___v83_minlen
  %_public_subtmp167 = sub i32 %_public_lval165, %_public_lval166
  store i32 %_public_subtmp167, i32* %_public___v87___v86_len
  %_public_structgep168 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_public_lval169 = load i32, i32* %_public___v68_outp
  %_public_lval170 = load i32, i32* %_public___v83_minlen
  %_public_addtmp171 = add i32 %_public_lval169, %_public_lval170
  %_secret_ldedviewptr172 = load i8*, i8** %_secret_arrarg2
  %_secret_source_gep173 = getelementptr inbounds i8, i8* %_secret_ldedviewptr172, i32 %_public_addtmp171
  %_secret_arrviewdyn174 = alloca i8*
  store i8* %_secret_source_gep173, i8** %_secret_arrviewdyn174
  %_public_lval175 = load i32, i32* %_public___v68_outp
  %_public_lval176 = load i32, i32* %_public___v83_minlen
  %_public_addtmp177 = add i32 %_public_lval175, %_public_lval176
  %_secret_ldedviewptr178 = load i8*, i8** %_secret_arrarg2
  %_secret_source_gep179 = getelementptr inbounds i8, i8* %_secret_ldedviewptr178, i32 %_public_addtmp177
  %_secret_arrviewdyn180 = alloca i8*
  store i8* %_secret_source_gep179, i8** %_secret_arrviewdyn180
  %_secret_dynarrarg181 = load i8*, i8** %_secret_arrviewdyn180
  %_public_lval182 = load i32, i32* %_public___v87___v86_len
  %_secret_lval183 = load i32, i32* %_secret___v78_inp_len
  %_public_lval184 = load i32, i32* %_public___v83_minlen
  %_secret_subtmp185 = sub i32 %_secret_lval183, %_public_lval184
  call void @SHA1_Update_secret(%SHA_CTX* %_public_structgep168, i32* %_secret___v79_ctx_num, i8* %_secret_dynarrarg181, i32 %_public_lval182, i32 %_secret_subtmp185)
  %_secret_arrtoptr = bitcast [20 x i8]* %_secret___v80_pmac to i8*
  %_public_structgep186 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_lval187 = load i32, i32* %_secret___v79_ctx_num
  call void @SHA1_Final_secret(i8* %_secret_arrtoptr, %SHA_CTX* %_public_structgep186, i32 %_secret_lval187)
  %_public_structgep188 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_public_structgep189 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 2
  call void @_structcopy_SHA_CTX(%SHA_CTX* %_public_structgep188, %SHA_CTX* %_public_structgep189)
  %_public_structgep190 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_arrtoptr191 = bitcast [20 x i8]* %_secret___v80_pmac to i8*
  call void @SHA1_Update_public(%SHA_CTX* %_public_structgep190, i8* %_secret_arrtoptr191, i32 20)
  %_secret_arrtoptr192 = bitcast [20 x i8]* %_secret___v80_pmac to i8*
  %_public_structgep193 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  call void @SHA1_Final_public(i8* %_secret_arrtoptr192, %SHA_CTX* %_public_structgep193)
  %_public_lval194 = load i32, i32* %_public___v69__len
  %_public_lval195 = load i32, i32* %_public___v62_SHA_DIGEST_LENGTH
  %_public_addtmp196 = add i32 256, %_public_lval195
  %_public_ulttmp197 = icmp ult i32 %_public_lval194, %_public_addtmp196
  %_public_condtmp198 = icmp ne i1 %_public_ulttmp197, false
  %_public_lval199 = load i32, i32* %_public___v69__len
  %_public_lval200 = load i32, i32* %_public___v62_SHA_DIGEST_LENGTH
  %_public_addtmp201 = add i32 256, %_public_lval200
  %_public_subtmp202 = sub i32 %_public_lval199, %_public_addtmp201
  %_public_terntmp203 = select i1 %_public_condtmp198, i32 0, i32 %_public_subtmp202
  store i32 %_public_terntmp203, i32* %_public___v88_pub_start
  %_public_lval204 = load i32, i32* %_public___v68_outp
  %_secret_lval205 = load i32, i32* %_secret___v78_inp_len
  %_secret_addtmp206 = add i32 %_public_lval204, %_secret_lval205
  %_public_lval207 = load i32, i32* %_public___v62_SHA_DIGEST_LENGTH
  %_secret_addtmp208 = add i32 %_secret_addtmp206, %_public_lval207
  %_public_lval209 = load i32, i32* %_public___v69__len
  %_secret_ugttmp210 = icmp ugt i32 %_secret_addtmp208, %_public_lval209
  store i1 %_secret_ugttmp210, i1* %_secret___m17
  %_secret_lval211 = load i1, i1* %_secret___m17
  %_secret_landtmp212 = and i1 true, %_secret_lval211
  %_secret_lval213 = load i1, i1* %_secret___rnset
  %_secret_landtmp214 = and i1 %_secret_landtmp212, %_secret_lval213
  %_secret_condtmp215 = icmp ne i1 %_secret_landtmp214, false
  %_secret_lval216 = load i32, i32* %_secret___v66_ret
  %_secret_selecttmp217 = call i32 @select.cmov.sel.i32(i1 %_secret_condtmp215, i32 0, i32 %_secret_lval216)
  store i32 %_secret_selecttmp217, i32* %_secret___v66_ret
  %_secret_lval218 = load i1, i1* %_secret___m17
  %_secret_lnottmp219 = xor i1 %_secret_lval218, true
  store i1 %_secret_lnottmp219, i1* %_secret___m17
  %_public_lval220 = load i32, i32* %_public___v68_outp
  %_public_lval221 = load i32, i32* %_public___v88_pub_start
  %_public_addtmp222 = add i32 %_public_lval220, %_public_lval221
  store i32 %_public_addtmp222, i32* %_public___v89_i
  br label %loop_check

loop_check:                                       ; preds = %loop_body, %branchmerge164
  %_public_lval223 = load i32, i32* %_public___v89_i
  %_public_lval224 = load i32, i32* %_public___v69__len
  %_public_ulttmp225 = icmp ult i32 %_public_lval223, %_public_lval224
  br i1 %_public_ulttmp225, label %loop_body, label %loop_end

loop_body:                                        ; preds = %loop_check
  store i1 false, i1* %_secret___m18
  %_public_lval226 = load i32, i32* %_public___v89_i
  %_public_lval227 = load i32, i32* %_public___v68_outp
  %_secret_lval228 = load i32, i32* %_secret___v78_inp_len
  %_secret_addtmp229 = add i32 %_public_lval227, %_secret_lval228
  %_secret_ugtetmp = icmp uge i32 %_public_lval226, %_secret_addtmp229
  store i1 %_secret_ugtetmp, i1* %_secret___m19
  %_secret_lval230 = load i1, i1* %_secret___m19
  %_secret_landtmp231 = and i1 true, %_secret_lval230
  %_secret_lval232 = load i1, i1* %_secret___rnset
  %_secret_landtmp233 = and i1 %_secret_landtmp231, %_secret_lval232
  %_secret_condtmp234 = icmp ne i1 %_secret_landtmp233, false
  %_public_lval235 = load i32, i32* %_public___v89_i
  %_public_lval236 = load i32, i32* %_public___v68_outp
  %_secret_lval237 = load i32, i32* %_secret___v78_inp_len
  %_secret_addtmp238 = add i32 %_public_lval236, %_secret_lval237
  %_public_lval239 = load i32, i32* %_public___v62_SHA_DIGEST_LENGTH
  %_secret_addtmp240 = add i32 %_secret_addtmp238, %_public_lval239
  %_secret_ulttmp = icmp ult i32 %_public_lval235, %_secret_addtmp240
  %_secret_lval241 = load i1, i1* %_secret___m18
  %_secret_selecttmp242 = call i1 @select.cmov.asm.i1(i1 %_secret_condtmp234, i1 %_secret_ulttmp, i1 %_secret_lval241)
  store i1 %_secret_selecttmp242, i1* %_secret___m18
  %_secret_lval243 = load i1, i1* %_secret___m19
  %_secret_lnottmp244 = xor i1 %_secret_lval243, true
  store i1 %_secret_lnottmp244, i1* %_secret___m19
  %_secret_lval245 = load i1, i1* %_secret___m19
  %_secret_landtmp246 = and i1 true, %_secret_lval245
  %_secret_lval247 = load i1, i1* %_secret___rnset
  %_secret_landtmp248 = and i1 %_secret_landtmp246, %_secret_lval247
  %_secret_condtmp249 = icmp ne i1 %_secret_landtmp248, false
  %_secret_lval250 = load i1, i1* %_secret___m18
  %_secret_selecttmp251 = call i1 @select.cmov.asm.i1(i1 %_secret_condtmp249, i1 false, i1 %_secret_lval250)
  store i1 %_secret_selecttmp251, i1* %_secret___m18
  %_secret___m18252 = load i1, i1* %_secret___m18
  store i1 %_secret___m18252, i1* %_secret___m20
  %_public_lval253 = load i32, i32* %_public___v89_i
  %_public_lval254 = load i32, i32* %_public___v68_outp
  %_secret_lval255 = load i32, i32* %_secret___v78_inp_len
  %_secret_addtmp256 = add i32 %_public_lval254, %_secret_lval255
  %_secret_subtmp257 = sub i32 %_public_lval253, %_secret_addtmp256
  store i32 %_secret_subtmp257, i32* %_secret___v90_j
  %_public_lval258 = load i32, i32* %_public___v89_i
  %_secret_dyn259 = load i8*, i8** %_secret_arrarg2
  %_secret_ptr260 = getelementptr inbounds i8, i8* %_secret_dyn259, i32 %_public_lval258
  %_secret_lval261 = load i8, i8* %_secret_ptr260
  %_declassified__secret_lval262 = load i32, i32* %_secret___v90_j
  %_secret_ptr263 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v80_pmac, i32 0, i32 %_declassified__secret_lval262
  %_secret_lval264 = load i8, i8* %_secret_ptr263
  %_secret_neqtmp = icmp ne i8 %_secret_lval261, %_secret_lval264
  store i1 %_secret_neqtmp, i1* %_secret___m21
  %_secret_lval265 = load i1, i1* %_secret___m21
  %_secret_landtmp266 = and i1 true, %_secret_lval265
  %_secret_lval267 = load i1, i1* %_secret___m20
  %_secret_landtmp268 = and i1 %_secret_landtmp266, %_secret_lval267
  %_secret_lval269 = load i1, i1* %_secret___rnset
  %_secret_landtmp270 = and i1 %_secret_landtmp268, %_secret_lval269
  %_secret_condtmp271 = icmp ne i1 %_secret_landtmp270, false
  %_secret_lval272 = load i32, i32* %_secret___v66_ret
  %_secret_selecttmp273 = call i32 @select.cmov.sel.i32(i1 %_secret_condtmp271, i32 0, i32 %_secret_lval272)
  store i32 %_secret_selecttmp273, i32* %_secret___v66_ret
  %_secret_lval274 = load i1, i1* %_secret___m21
  %_secret_lnottmp275 = xor i1 %_secret_lval274, true
  store i1 %_secret_lnottmp275, i1* %_secret___m21
  %_secret_lval276 = load i1, i1* %_secret___m20
  %_secret_lnottmp277 = xor i1 %_secret_lval276, true
  store i1 %_secret_lnottmp277, i1* %_secret___m20
  %_public_lval278 = load i32, i32* %_public___v89_i
  %_public_addtmp279 = add i32 %_public_lval278, 1
  store i32 %_public_addtmp279, i32* %_public___v89_i
  br label %loop_check

loop_end:                                         ; preds = %loop_check
  %_secret_lval280 = load i32, i32* %_secret___v66_ret
  store i32 %_secret_lval280, i32* %_secret___rval
  %_secret_lval281 = load i32, i32* %_secret___rval
  ret i32 %_secret_lval281
}

; Function Attrs: alwaysinline
define internal void @_structcopy_SHA_CTX(%SHA_CTX*, %SHA_CTX*) #0 {
entry:
  %_secret_cast = bitcast %SHA_CTX* %0 to i8*
  %_secret_cast1 = bitcast %SHA_CTX* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %_secret_cast, i8* %_secret_cast1, i32 96, i32 4, i1 false)
  ret void
}

attributes #0 = { alwaysinline }
attributes #1 = { argmemonly nounwind }
attributes #2 = { noinline }
