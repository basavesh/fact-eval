; verify with: smack --bit-precise --entry-point=[...]
; ModuleID = 'SmackModule'
source_filename = "SmackModule"

%AES_KEY = type { [60 x i32], i32 }
%SHA_CTX = type { [5 x i32], i32, i32, [64 x i8], i32 }
%EVP_AES_HMAC_SHA1 = type { %AES_KEY, %SHA_CTX, %SHA_CTX, %SHA_CTX, i64, [16 x i8] }

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
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_dyn = load i8*, i8** %_secret_arrarg
  %_secret_ptr = getelementptr inbounds i8, i8* %_secret_dyn, i8 0
  %_secret_lval = load i8, i8* %_secret_ptr
  %_secret_ucast = zext i8 %_secret_lval to i16
  %_secret_lshift = shl i16 %_secret_ucast, 8
  store i16 %_secret_lshift, i16* %_secret___v1_x2
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
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
define internal void @store32_be(i8* %_secret_arrarg1, i32 %_secret_n2) #0 {
entry:
  %_secret_arrarg = alloca i8*
  store i8* %_secret_arrarg1, i8** %_secret_arrarg
  %_secret_n = alloca i32
  store i32 %_secret_n2, i32* %_secret_n
  %_secret___rnset = alloca i1
  store i1 true, i1* %_secret___rnset
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_dyn = load i8*, i8** %_secret_arrarg
  %_secret_ptr = getelementptr inbounds i8, i8* %_secret_dyn, i8 0
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval = load i32, i32* %_secret_n
  %_secret_lrshift = lshr i32 %_secret_lval, 24
  %_secret_ucast = trunc i32 %_secret_lrshift to i8
  store i8 %_secret_ucast, i8* %_secret_ptr
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_dyn3 = load i8*, i8** %_secret_arrarg
  %_secret_ptr4 = getelementptr inbounds i8, i8* %_secret_dyn3, i8 1
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval5 = load i32, i32* %_secret_n
  %_secret_lrshift6 = lshr i32 %_secret_lval5, 16
  %_secret_ucast7 = trunc i32 %_secret_lrshift6 to i8
  store i8 %_secret_ucast7, i8* %_secret_ptr4
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_dyn8 = load i8*, i8** %_secret_arrarg
  %_secret_ptr9 = getelementptr inbounds i8, i8* %_secret_dyn8, i8 2
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval10 = load i32, i32* %_secret_n
  %_secret_lrshift11 = lshr i32 %_secret_lval10, 8
  %_secret_ucast12 = trunc i32 %_secret_lrshift11 to i8
  store i8 %_secret_ucast12, i8* %_secret_ptr9
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
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
  call void @__VERIFIER_assert(i32 1)
  %_public_lval3 = load i32, i32* %_public____in_len
  %_public_ucast = zext i32 %_public_lval3 to i64
  %_public_lshift = shl i64 %_public_ucast, 3
  store i64 %_public_lshift, i64* %_public___v5_l
  call void @__VERIFIER_assert(i32 1)
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
  call void @__VERIFIER_assert(i32 1)
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
  br i1 %_public_branchcompare, label %thenbranch, label %elsebranch181

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
  %_public_lval28 = load i32, i32* %_public___v12___v11_len
  %_public_icast = zext i32 %_public_lval28 to i64
  %_public_lhssext = zext i32 %_public_lval27 to i64
  %_public_addtmp = add i64 %_public_lhssext, %_public_icast
  %_public_truncbinop = trunc i64 %_public_addtmp to i32
  %_public_lval29 = load i32, i32* %_public___v9_num
  %_public_ugttmp30 = icmp ugt i32 %_public_truncbinop, %_public_lval29
  %_public_zexttmp = zext i1 %_public_ugttmp30 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp)
  %_public_lval31 = load i32, i32* %_public___v9_num
  %_public_lhssext32 = zext i32 %_public_lval31 to i64
  %_public_ugtetmp = icmp uge i64 %_public_lhssext32, 0
  %_public_zexttmp33 = zext i1 %_public_ugtetmp to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp33)
  %_public_lval34 = load i32, i32* %_public___v9_num
  %_public_lhssext35 = zext i32 %_public_lval34 to i64
  %_public_ulttmp36 = icmp ult i64 %_public_lhssext35, 64
  %_public_zexttmp37 = zext i1 %_public_ulttmp36 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp37)
  %_public_lval38 = load i32, i32* %_public___v9_num
  %_public_lval39 = load i32, i32* %_public___v12___v11_len
  %_public_icast40 = zext i32 %_public_lval39 to i64
  %_public_lhssext41 = zext i32 %_public_lval38 to i64
  %_public_addtmp42 = add i64 %_public_lhssext41, %_public_icast40
  %_public_truncbinop43 = trunc i64 %_public_addtmp42 to i32
  %_public_subtmp44 = sub i32 %_public_truncbinop43, 1
  %_public_lhssext45 = zext i32 %_public_subtmp44 to i64
  %_public_ugtetmp46 = icmp uge i64 %_public_lhssext45, 0
  %_public_zexttmp47 = zext i1 %_public_ugtetmp46 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp47)
  %_public_lval48 = load i32, i32* %_public___v9_num
  %_public_lval49 = load i32, i32* %_public___v12___v11_len
  %_public_icast50 = zext i32 %_public_lval49 to i64
  %_public_lhssext51 = zext i32 %_public_lval48 to i64
  %_public_addtmp52 = add i64 %_public_lhssext51, %_public_icast50
  %_public_truncbinop53 = trunc i64 %_public_addtmp52 to i32
  %_public_subtmp54 = sub i32 %_public_truncbinop53, 1
  %_public_lhssext55 = zext i32 %_public_subtmp54 to i64
  %_public_ulttmp56 = icmp ult i64 %_public_lhssext55, 64
  %_public_zexttmp57 = zext i1 %_public_ulttmp56 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp57)
  %_public_lval58 = load i32, i32* %_public___v9_num
  %_secret_structgep59 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 3
  %_secret_arrview = alloca i8*
  %_secret_source_gep = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep59, i32 0, i32 %_public_lval58
  store i8* %_secret_source_gep, i8** %_secret_arrview
  %_public_lval60 = load i32, i32* %_public___v9_num
  %_public_lval61 = load i32, i32* %_public___v12___v11_len
  %_public_icast62 = zext i32 %_public_lval61 to i64
  %_public_lhssext63 = zext i32 %_public_lval60 to i64
  %_public_addtmp64 = add i64 %_public_lhssext63, %_public_icast62
  %_public_truncbinop65 = trunc i64 %_public_addtmp64 to i32
  %_public_lval66 = load i32, i32* %_public___v9_num
  %_public_ugttmp67 = icmp ugt i32 %_public_truncbinop65, %_public_lval66
  %_public_zexttmp68 = zext i1 %_public_ugttmp67 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp68)
  %_public_lval69 = load i32, i32* %_public___v9_num
  %_public_lhssext70 = zext i32 %_public_lval69 to i64
  %_public_ugtetmp71 = icmp uge i64 %_public_lhssext70, 0
  %_public_zexttmp72 = zext i1 %_public_ugtetmp71 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp72)
  %_public_lval73 = load i32, i32* %_public___v9_num
  %_public_lhssext74 = zext i32 %_public_lval73 to i64
  %_public_ulttmp75 = icmp ult i64 %_public_lhssext74, 64
  %_public_zexttmp76 = zext i1 %_public_ulttmp75 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp76)
  %_public_lval77 = load i32, i32* %_public___v9_num
  %_public_lval78 = load i32, i32* %_public___v12___v11_len
  %_public_icast79 = zext i32 %_public_lval78 to i64
  %_public_lhssext80 = zext i32 %_public_lval77 to i64
  %_public_addtmp81 = add i64 %_public_lhssext80, %_public_icast79
  %_public_truncbinop82 = trunc i64 %_public_addtmp81 to i32
  %_public_subtmp83 = sub i32 %_public_truncbinop82, 1
  %_public_lhssext84 = zext i32 %_public_subtmp83 to i64
  %_public_ugtetmp85 = icmp uge i64 %_public_lhssext84, 0
  %_public_zexttmp86 = zext i1 %_public_ugtetmp85 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp86)
  %_public_lval87 = load i32, i32* %_public___v9_num
  %_public_lval88 = load i32, i32* %_public___v12___v11_len
  %_public_icast89 = zext i32 %_public_lval88 to i64
  %_public_lhssext90 = zext i32 %_public_lval87 to i64
  %_public_addtmp91 = add i64 %_public_lhssext90, %_public_icast89
  %_public_truncbinop92 = trunc i64 %_public_addtmp91 to i32
  %_public_subtmp93 = sub i32 %_public_truncbinop92, 1
  %_public_lhssext94 = zext i32 %_public_subtmp93 to i64
  %_public_ulttmp95 = icmp ult i64 %_public_lhssext94, 64
  %_public_zexttmp96 = zext i1 %_public_ulttmp95 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp96)
  %_public_lval97 = load i32, i32* %_public___v9_num
  %_secret_structgep98 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 3
  %_secret_arrview99 = alloca i8*
  %_secret_source_gep100 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep98, i32 0, i32 %_public_lval97
  store i8* %_secret_source_gep100, i8** %_secret_arrview99
  %_secret_dynarrarg = load i8*, i8** %_secret_arrview99
  %_public_lval101 = load i32, i32* %_public___v12___v11_len
  %_public_lval102 = load i32, i32* %_public___v14___v13_len
  %_public_icast103 = zext i32 %_public_lval102 to i64
  %_public_addtmp104 = add i64 0, %_public_icast103
  %_public_truncbinop105 = trunc i64 %_public_addtmp104 to i8
  %_public_sgttmp = icmp sgt i8 %_public_truncbinop105, 0
  %_public_zexttmp106 = zext i1 %_public_sgttmp to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp106)
  call void @__VERIFIER_assert(i32 1)
  %_public_lval107 = load i32, i32* %_public____in_len
  %_public_icast108 = zext i32 %_public_lval107 to i64
  %_public_slttmp = icmp slt i64 0, %_public_icast108
  %_public_zexttmp109 = zext i1 %_public_slttmp to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp109)
  %_public_lval110 = load i32, i32* %_public___v14___v13_len
  %_public_icast111 = zext i32 %_public_lval110 to i64
  %_public_addtmp112 = add i64 0, %_public_icast111
  %_public_truncbinop113 = trunc i64 %_public_addtmp112 to i8
  %_public_subtmp114 = sub i8 %_public_truncbinop113, 1
  %_public_lhssext115 = sext i8 %_public_subtmp114 to i64
  %_public_sgtetmp = icmp sge i64 %_public_lhssext115, 0
  %_public_zexttmp116 = zext i1 %_public_sgtetmp to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp116)
  %_public_lval117 = load i32, i32* %_public___v14___v13_len
  %_public_icast118 = zext i32 %_public_lval117 to i64
  %_public_addtmp119 = add i64 0, %_public_icast118
  %_public_truncbinop120 = trunc i64 %_public_addtmp119 to i8
  %_public_subtmp121 = sub i8 %_public_truncbinop120, 1
  %_public_lval122 = load i32, i32* %_public____in_len
  %_public_icast123 = zext i32 %_public_lval122 to i64
  %_public_lhssext124 = sext i8 %_public_subtmp121 to i64
  %_public_slttmp125 = icmp slt i64 %_public_lhssext124, %_public_icast123
  %_public_zexttmp126 = zext i1 %_public_slttmp125 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp126)
  %_secret_ldedviewptr = load i8*, i8** %_secret_arrarg
  %_secret_source_gep127 = getelementptr inbounds i8, i8* %_secret_ldedviewptr, i8 0
  %_secret_arrviewdyn = alloca i8*
  store i8* %_secret_source_gep127, i8** %_secret_arrviewdyn
  %_public_lval128 = load i32, i32* %_public___v14___v13_len
  %_public_icast129 = zext i32 %_public_lval128 to i64
  %_public_addtmp130 = add i64 0, %_public_icast129
  %_public_truncbinop131 = trunc i64 %_public_addtmp130 to i8
  %_public_sgttmp132 = icmp sgt i8 %_public_truncbinop131, 0
  %_public_zexttmp133 = zext i1 %_public_sgttmp132 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp133)
  call void @__VERIFIER_assert(i32 1)
  %_public_lval134 = load i32, i32* %_public____in_len
  %_public_icast135 = zext i32 %_public_lval134 to i64
  %_public_slttmp136 = icmp slt i64 0, %_public_icast135
  %_public_zexttmp137 = zext i1 %_public_slttmp136 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp137)
  %_public_lval138 = load i32, i32* %_public___v14___v13_len
  %_public_icast139 = zext i32 %_public_lval138 to i64
  %_public_addtmp140 = add i64 0, %_public_icast139
  %_public_truncbinop141 = trunc i64 %_public_addtmp140 to i8
  %_public_subtmp142 = sub i8 %_public_truncbinop141, 1
  %_public_lhssext143 = sext i8 %_public_subtmp142 to i64
  %_public_sgtetmp144 = icmp sge i64 %_public_lhssext143, 0
  %_public_zexttmp145 = zext i1 %_public_sgtetmp144 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp145)
  %_public_lval146 = load i32, i32* %_public___v14___v13_len
  %_public_icast147 = zext i32 %_public_lval146 to i64
  %_public_addtmp148 = add i64 0, %_public_icast147
  %_public_truncbinop149 = trunc i64 %_public_addtmp148 to i8
  %_public_subtmp150 = sub i8 %_public_truncbinop149, 1
  %_public_lval151 = load i32, i32* %_public____in_len
  %_public_icast152 = zext i32 %_public_lval151 to i64
  %_public_lhssext153 = sext i8 %_public_subtmp150 to i64
  %_public_slttmp154 = icmp slt i64 %_public_lhssext153, %_public_icast152
  %_public_zexttmp155 = zext i1 %_public_slttmp154 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp155)
  %_secret_ldedviewptr156 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep157 = getelementptr inbounds i8, i8* %_secret_ldedviewptr156, i8 0
  %_secret_arrviewdyn158 = alloca i8*
  store i8* %_secret_source_gep157, i8** %_secret_arrviewdyn158
  %_secret_dynarrarg159 = load i8*, i8** %_secret_arrviewdyn158
  %_public_lval160 = load i32, i32* %_public___v14___v13_len
  call void @_arrcopy(i8* %_secret_dynarrarg, i32 %_public_lval101, i8* %_secret_dynarrarg159, i32 %_public_lval160)
  %_public_lval161 = load i32, i32* %_public___v10_res
  %_public_lval162 = load i32, i32* %_public___v9_num
  %_public_addtmp163 = add i32 %_public_lval161, %_public_lval162
  %_public_lval164 = load i32, i32* %_public___v4_SHA_CBLOCK
  %_public_eqtmp = icmp eq i32 %_public_addtmp163, %_public_lval164
  %_public_branchcompare165 = icmp eq i1 %_public_eqtmp, true
  br i1 %_public_branchcompare165, label %thenbranch166, label %elsebranch

thenbranch166:                                    ; preds = %thenbranch
  %_secret_structgep167 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 3
  %_secret_structgep168 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 3
  %_secret_arrtoptr = bitcast [64 x i8]* %_secret_structgep168 to i8*
  call void @sha1_block_data_order(%SHA_CTX* %ctx, i8* %_secret_arrtoptr, i32 1)
  %_public_structgep169 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 4
  store i32 0, i32* %_public_structgep169
  br label %branchmerge

elsebranch:                                       ; preds = %thenbranch
  %_public_structgep170 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 4
  %_public_structgep171 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 4
  %_public_lval172 = load i32, i32* %_public_structgep171
  %_public_lval173 = load i32, i32* %_public___v10_res
  %_public_addtmp174 = add i32 %_public_lval172, %_public_lval173
  store i32 %_public_addtmp174, i32* %_public_structgep170
  br label %branchmerge

branchmerge:                                      ; preds = %elsebranch, %thenbranch166
  %_public_lval175 = load i32, i32* %_public___v7_inp
  %_public_lval176 = load i32, i32* %_public___v10_res
  %_public_addtmp177 = add i32 %_public_lval175, %_public_lval176
  store i32 %_public_addtmp177, i32* %_public___v7_inp
  %_public_lval178 = load i32, i32* %_public___v8__len
  %_public_lval179 = load i32, i32* %_public___v10_res
  %_public_subtmp180 = sub i32 %_public_lval178, %_public_lval179
  store i32 %_public_subtmp180, i32* %_public___v8__len
  br label %branchmerge182

elsebranch181:                                    ; preds = %entry
  br label %branchmerge182

branchmerge182:                                   ; preds = %elsebranch181, %branchmerge
  %_public_lval183 = load i32, i32* %_public___v4_SHA_CBLOCK
  %_public_icast184 = zext i32 %_public_lval183 to i64
  %_public_neqtmp = icmp ne i64 %_public_icast184, 0
  %_public_zexttmp185 = zext i1 %_public_neqtmp to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp185)
  %_public_lval186 = load i32, i32* %_public___v8__len
  %_public_lval187 = load i32, i32* %_public___v4_SHA_CBLOCK
  %_public_udivtmp = udiv i32 %_public_lval186, %_public_lval187
  store i32 %_public_udivtmp, i32* %_public___v15_n
  %_public_lval188 = load i32, i32* %_public___v15_n
  %_public_ugttmp189 = icmp ugt i32 %_public_lval188, 0
  %_public_branchcompare190 = icmp eq i1 %_public_ugttmp189, true
  br i1 %_public_branchcompare190, label %thenbranch191, label %elsebranch297

thenbranch191:                                    ; preds = %branchmerge182
  %_public_lval192 = load i32, i32* %_public___v15_n
  %_public_lval193 = load i32, i32* %_public___v4_SHA_CBLOCK
  %_public_multmp194 = mul i32 %_public_lval192, %_public_lval193
  store i32 %_public_multmp194, i32* %_public___v17___v16_len
  %_public_lval195 = load i32, i32* %_public___v7_inp
  %_public_lval196 = load i32, i32* %_public___v17___v16_len
  %_public_icast197 = zext i32 %_public_lval196 to i64
  %_public_lhssext198 = zext i32 %_public_lval195 to i64
  %_public_addtmp199 = add i64 %_public_lhssext198, %_public_icast197
  %_public_truncbinop200 = trunc i64 %_public_addtmp199 to i32
  %_public_lval201 = load i32, i32* %_public___v7_inp
  %_public_ugttmp202 = icmp ugt i32 %_public_truncbinop200, %_public_lval201
  %_public_zexttmp203 = zext i1 %_public_ugttmp202 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp203)
  %_public_lval204 = load i32, i32* %_public___v7_inp
  %_public_lhssext205 = zext i32 %_public_lval204 to i64
  %_public_ugtetmp206 = icmp uge i64 %_public_lhssext205, 0
  %_public_zexttmp207 = zext i1 %_public_ugtetmp206 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp207)
  %_public_lval208 = load i32, i32* %_public___v7_inp
  %_public_lval209 = load i32, i32* %_public____in_len
  %_public_icast210 = zext i32 %_public_lval209 to i64
  %_public_lhssext211 = zext i32 %_public_lval208 to i64
  %_public_ulttmp212 = icmp ult i64 %_public_lhssext211, %_public_icast210
  %_public_zexttmp213 = zext i1 %_public_ulttmp212 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp213)
  %_public_lval214 = load i32, i32* %_public___v7_inp
  %_public_lval215 = load i32, i32* %_public___v17___v16_len
  %_public_icast216 = zext i32 %_public_lval215 to i64
  %_public_lhssext217 = zext i32 %_public_lval214 to i64
  %_public_addtmp218 = add i64 %_public_lhssext217, %_public_icast216
  %_public_truncbinop219 = trunc i64 %_public_addtmp218 to i32
  %_public_subtmp220 = sub i32 %_public_truncbinop219, 1
  %_public_lhssext221 = zext i32 %_public_subtmp220 to i64
  %_public_ugtetmp222 = icmp uge i64 %_public_lhssext221, 0
  %_public_zexttmp223 = zext i1 %_public_ugtetmp222 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp223)
  %_public_lval224 = load i32, i32* %_public___v7_inp
  %_public_lval225 = load i32, i32* %_public___v17___v16_len
  %_public_icast226 = zext i32 %_public_lval225 to i64
  %_public_lhssext227 = zext i32 %_public_lval224 to i64
  %_public_addtmp228 = add i64 %_public_lhssext227, %_public_icast226
  %_public_truncbinop229 = trunc i64 %_public_addtmp228 to i32
  %_public_subtmp230 = sub i32 %_public_truncbinop229, 1
  %_public_lval231 = load i32, i32* %_public____in_len
  %_public_icast232 = zext i32 %_public_lval231 to i64
  %_public_lhssext233 = zext i32 %_public_subtmp230 to i64
  %_public_ulttmp234 = icmp ult i64 %_public_lhssext233, %_public_icast232
  %_public_zexttmp235 = zext i1 %_public_ulttmp234 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp235)
  %_public_lval236 = load i32, i32* %_public___v7_inp
  %_secret_ldedviewptr237 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep238 = getelementptr inbounds i8, i8* %_secret_ldedviewptr237, i32 %_public_lval236
  %_secret_arrviewdyn239 = alloca i8*
  store i8* %_secret_source_gep238, i8** %_secret_arrviewdyn239
  %_public_lval240 = load i32, i32* %_public___v7_inp
  %_public_lval241 = load i32, i32* %_public___v17___v16_len
  %_public_icast242 = zext i32 %_public_lval241 to i64
  %_public_lhssext243 = zext i32 %_public_lval240 to i64
  %_public_addtmp244 = add i64 %_public_lhssext243, %_public_icast242
  %_public_truncbinop245 = trunc i64 %_public_addtmp244 to i32
  %_public_lval246 = load i32, i32* %_public___v7_inp
  %_public_ugttmp247 = icmp ugt i32 %_public_truncbinop245, %_public_lval246
  %_public_zexttmp248 = zext i1 %_public_ugttmp247 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp248)
  %_public_lval249 = load i32, i32* %_public___v7_inp
  %_public_lhssext250 = zext i32 %_public_lval249 to i64
  %_public_ugtetmp251 = icmp uge i64 %_public_lhssext250, 0
  %_public_zexttmp252 = zext i1 %_public_ugtetmp251 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp252)
  %_public_lval253 = load i32, i32* %_public___v7_inp
  %_public_lval254 = load i32, i32* %_public____in_len
  %_public_icast255 = zext i32 %_public_lval254 to i64
  %_public_lhssext256 = zext i32 %_public_lval253 to i64
  %_public_ulttmp257 = icmp ult i64 %_public_lhssext256, %_public_icast255
  %_public_zexttmp258 = zext i1 %_public_ulttmp257 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp258)
  %_public_lval259 = load i32, i32* %_public___v7_inp
  %_public_lval260 = load i32, i32* %_public___v17___v16_len
  %_public_icast261 = zext i32 %_public_lval260 to i64
  %_public_lhssext262 = zext i32 %_public_lval259 to i64
  %_public_addtmp263 = add i64 %_public_lhssext262, %_public_icast261
  %_public_truncbinop264 = trunc i64 %_public_addtmp263 to i32
  %_public_subtmp265 = sub i32 %_public_truncbinop264, 1
  %_public_lhssext266 = zext i32 %_public_subtmp265 to i64
  %_public_ugtetmp267 = icmp uge i64 %_public_lhssext266, 0
  %_public_zexttmp268 = zext i1 %_public_ugtetmp267 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp268)
  %_public_lval269 = load i32, i32* %_public___v7_inp
  %_public_lval270 = load i32, i32* %_public___v17___v16_len
  %_public_icast271 = zext i32 %_public_lval270 to i64
  %_public_lhssext272 = zext i32 %_public_lval269 to i64
  %_public_addtmp273 = add i64 %_public_lhssext272, %_public_icast271
  %_public_truncbinop274 = trunc i64 %_public_addtmp273 to i32
  %_public_subtmp275 = sub i32 %_public_truncbinop274, 1
  %_public_lval276 = load i32, i32* %_public____in_len
  %_public_icast277 = zext i32 %_public_lval276 to i64
  %_public_lhssext278 = zext i32 %_public_subtmp275 to i64
  %_public_ulttmp279 = icmp ult i64 %_public_lhssext278, %_public_icast277
  %_public_zexttmp280 = zext i1 %_public_ulttmp279 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp280)
  %_public_lval281 = load i32, i32* %_public___v7_inp
  %_secret_ldedviewptr282 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep283 = getelementptr inbounds i8, i8* %_secret_ldedviewptr282, i32 %_public_lval281
  %_secret_arrviewdyn284 = alloca i8*
  store i8* %_secret_source_gep283, i8** %_secret_arrviewdyn284
  %_secret_dynarrarg285 = load i8*, i8** %_secret_arrviewdyn284
  %_public_lval286 = load i32, i32* %_public___v15_n
  call void @sha1_block_data_order(%SHA_CTX* %ctx, i8* %_secret_dynarrarg285, i32 %_public_lval286)
  %_public_lval287 = load i32, i32* %_public___v7_inp
  %_public_lval288 = load i32, i32* %_public___v15_n
  %_public_lval289 = load i32, i32* %_public___v4_SHA_CBLOCK
  %_public_multmp290 = mul i32 %_public_lval288, %_public_lval289
  %_public_addtmp291 = add i32 %_public_lval287, %_public_multmp290
  store i32 %_public_addtmp291, i32* %_public___v7_inp
  %_public_lval292 = load i32, i32* %_public___v8__len
  %_public_lval293 = load i32, i32* %_public___v15_n
  %_public_lval294 = load i32, i32* %_public___v4_SHA_CBLOCK
  %_public_multmp295 = mul i32 %_public_lval293, %_public_lval294
  %_public_subtmp296 = sub i32 %_public_lval292, %_public_multmp295
  store i32 %_public_subtmp296, i32* %_public___v8__len
  br label %branchmerge298

elsebranch297:                                    ; preds = %branchmerge182
  br label %branchmerge298

branchmerge298:                                   ; preds = %elsebranch297, %thenbranch191
  %_public_lval299 = load i32, i32* %_public___v8__len
  %_public_ugttmp300 = icmp ugt i32 %_public_lval299, 0
  %_public_branchcompare301 = icmp eq i1 %_public_ugttmp300, true
  br i1 %_public_branchcompare301, label %thenbranch302, label %elsebranch454

thenbranch302:                                    ; preds = %branchmerge298
  %_public_lval303 = load i32, i32* %_public___v8__len
  store i32 %_public_lval303, i32* %_public___v19___v18_len
  %_public_lval304 = load i32, i32* %_public___v8__len
  store i32 %_public_lval304, i32* %_public___v21___v20_len
  %_public_lval305 = load i32, i32* %_public___v19___v18_len
  %_public_icast306 = zext i32 %_public_lval305 to i64
  %_public_addtmp307 = add i64 0, %_public_icast306
  %_public_truncbinop308 = trunc i64 %_public_addtmp307 to i8
  %_public_sgttmp309 = icmp sgt i8 %_public_truncbinop308, 0
  %_public_zexttmp310 = zext i1 %_public_sgttmp309 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp310)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_public_lval311 = load i32, i32* %_public___v19___v18_len
  %_public_icast312 = zext i32 %_public_lval311 to i64
  %_public_addtmp313 = add i64 0, %_public_icast312
  %_public_truncbinop314 = trunc i64 %_public_addtmp313 to i8
  %_public_subtmp315 = sub i8 %_public_truncbinop314, 1
  %_public_lhssext316 = sext i8 %_public_subtmp315 to i64
  %_public_sgtetmp317 = icmp sge i64 %_public_lhssext316, 0
  %_public_zexttmp318 = zext i1 %_public_sgtetmp317 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp318)
  %_public_lval319 = load i32, i32* %_public___v19___v18_len
  %_public_icast320 = zext i32 %_public_lval319 to i64
  %_public_addtmp321 = add i64 0, %_public_icast320
  %_public_truncbinop322 = trunc i64 %_public_addtmp321 to i8
  %_public_subtmp323 = sub i8 %_public_truncbinop322, 1
  %_public_lhssext324 = sext i8 %_public_subtmp323 to i64
  %_public_slttmp325 = icmp slt i64 %_public_lhssext324, 64
  %_public_zexttmp326 = zext i1 %_public_slttmp325 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp326)
  %_secret_structgep327 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 3
  %_secret_arrview328 = alloca i8*
  %_secret_source_gep329 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep327, i8 0, i8 0
  store i8* %_secret_source_gep329, i8** %_secret_arrview328
  %_public_lval330 = load i32, i32* %_public___v19___v18_len
  %_public_icast331 = zext i32 %_public_lval330 to i64
  %_public_addtmp332 = add i64 0, %_public_icast331
  %_public_truncbinop333 = trunc i64 %_public_addtmp332 to i8
  %_public_sgttmp334 = icmp sgt i8 %_public_truncbinop333, 0
  %_public_zexttmp335 = zext i1 %_public_sgttmp334 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp335)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_public_lval336 = load i32, i32* %_public___v19___v18_len
  %_public_icast337 = zext i32 %_public_lval336 to i64
  %_public_addtmp338 = add i64 0, %_public_icast337
  %_public_truncbinop339 = trunc i64 %_public_addtmp338 to i8
  %_public_subtmp340 = sub i8 %_public_truncbinop339, 1
  %_public_lhssext341 = sext i8 %_public_subtmp340 to i64
  %_public_sgtetmp342 = icmp sge i64 %_public_lhssext341, 0
  %_public_zexttmp343 = zext i1 %_public_sgtetmp342 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp343)
  %_public_lval344 = load i32, i32* %_public___v19___v18_len
  %_public_icast345 = zext i32 %_public_lval344 to i64
  %_public_addtmp346 = add i64 0, %_public_icast345
  %_public_truncbinop347 = trunc i64 %_public_addtmp346 to i8
  %_public_subtmp348 = sub i8 %_public_truncbinop347, 1
  %_public_lhssext349 = sext i8 %_public_subtmp348 to i64
  %_public_slttmp350 = icmp slt i64 %_public_lhssext349, 64
  %_public_zexttmp351 = zext i1 %_public_slttmp350 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp351)
  %_secret_structgep352 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 3
  %_secret_arrview353 = alloca i8*
  %_secret_source_gep354 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep352, i8 0, i8 0
  store i8* %_secret_source_gep354, i8** %_secret_arrview353
  %_secret_dynarrarg355 = load i8*, i8** %_secret_arrview353
  %_public_lval356 = load i32, i32* %_public___v19___v18_len
  %_public_lval357 = load i32, i32* %_public___v7_inp
  %_public_lval358 = load i32, i32* %_public___v21___v20_len
  %_public_icast359 = zext i32 %_public_lval358 to i64
  %_public_lhssext360 = zext i32 %_public_lval357 to i64
  %_public_addtmp361 = add i64 %_public_lhssext360, %_public_icast359
  %_public_truncbinop362 = trunc i64 %_public_addtmp361 to i32
  %_public_lval363 = load i32, i32* %_public___v7_inp
  %_public_ugttmp364 = icmp ugt i32 %_public_truncbinop362, %_public_lval363
  %_public_zexttmp365 = zext i1 %_public_ugttmp364 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp365)
  %_public_lval366 = load i32, i32* %_public___v7_inp
  %_public_lhssext367 = zext i32 %_public_lval366 to i64
  %_public_ugtetmp368 = icmp uge i64 %_public_lhssext367, 0
  %_public_zexttmp369 = zext i1 %_public_ugtetmp368 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp369)
  %_public_lval370 = load i32, i32* %_public___v7_inp
  %_public_lval371 = load i32, i32* %_public____in_len
  %_public_icast372 = zext i32 %_public_lval371 to i64
  %_public_lhssext373 = zext i32 %_public_lval370 to i64
  %_public_ulttmp374 = icmp ult i64 %_public_lhssext373, %_public_icast372
  %_public_zexttmp375 = zext i1 %_public_ulttmp374 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp375)
  %_public_lval376 = load i32, i32* %_public___v7_inp
  %_public_lval377 = load i32, i32* %_public___v21___v20_len
  %_public_icast378 = zext i32 %_public_lval377 to i64
  %_public_lhssext379 = zext i32 %_public_lval376 to i64
  %_public_addtmp380 = add i64 %_public_lhssext379, %_public_icast378
  %_public_truncbinop381 = trunc i64 %_public_addtmp380 to i32
  %_public_subtmp382 = sub i32 %_public_truncbinop381, 1
  %_public_lhssext383 = zext i32 %_public_subtmp382 to i64
  %_public_ugtetmp384 = icmp uge i64 %_public_lhssext383, 0
  %_public_zexttmp385 = zext i1 %_public_ugtetmp384 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp385)
  %_public_lval386 = load i32, i32* %_public___v7_inp
  %_public_lval387 = load i32, i32* %_public___v21___v20_len
  %_public_icast388 = zext i32 %_public_lval387 to i64
  %_public_lhssext389 = zext i32 %_public_lval386 to i64
  %_public_addtmp390 = add i64 %_public_lhssext389, %_public_icast388
  %_public_truncbinop391 = trunc i64 %_public_addtmp390 to i32
  %_public_subtmp392 = sub i32 %_public_truncbinop391, 1
  %_public_lval393 = load i32, i32* %_public____in_len
  %_public_icast394 = zext i32 %_public_lval393 to i64
  %_public_lhssext395 = zext i32 %_public_subtmp392 to i64
  %_public_ulttmp396 = icmp ult i64 %_public_lhssext395, %_public_icast394
  %_public_zexttmp397 = zext i1 %_public_ulttmp396 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp397)
  %_public_lval398 = load i32, i32* %_public___v7_inp
  %_secret_ldedviewptr399 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep400 = getelementptr inbounds i8, i8* %_secret_ldedviewptr399, i32 %_public_lval398
  %_secret_arrviewdyn401 = alloca i8*
  store i8* %_secret_source_gep400, i8** %_secret_arrviewdyn401
  %_public_lval402 = load i32, i32* %_public___v7_inp
  %_public_lval403 = load i32, i32* %_public___v21___v20_len
  %_public_icast404 = zext i32 %_public_lval403 to i64
  %_public_lhssext405 = zext i32 %_public_lval402 to i64
  %_public_addtmp406 = add i64 %_public_lhssext405, %_public_icast404
  %_public_truncbinop407 = trunc i64 %_public_addtmp406 to i32
  %_public_lval408 = load i32, i32* %_public___v7_inp
  %_public_ugttmp409 = icmp ugt i32 %_public_truncbinop407, %_public_lval408
  %_public_zexttmp410 = zext i1 %_public_ugttmp409 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp410)
  %_public_lval411 = load i32, i32* %_public___v7_inp
  %_public_lhssext412 = zext i32 %_public_lval411 to i64
  %_public_ugtetmp413 = icmp uge i64 %_public_lhssext412, 0
  %_public_zexttmp414 = zext i1 %_public_ugtetmp413 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp414)
  %_public_lval415 = load i32, i32* %_public___v7_inp
  %_public_lval416 = load i32, i32* %_public____in_len
  %_public_icast417 = zext i32 %_public_lval416 to i64
  %_public_lhssext418 = zext i32 %_public_lval415 to i64
  %_public_ulttmp419 = icmp ult i64 %_public_lhssext418, %_public_icast417
  %_public_zexttmp420 = zext i1 %_public_ulttmp419 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp420)
  %_public_lval421 = load i32, i32* %_public___v7_inp
  %_public_lval422 = load i32, i32* %_public___v21___v20_len
  %_public_icast423 = zext i32 %_public_lval422 to i64
  %_public_lhssext424 = zext i32 %_public_lval421 to i64
  %_public_addtmp425 = add i64 %_public_lhssext424, %_public_icast423
  %_public_truncbinop426 = trunc i64 %_public_addtmp425 to i32
  %_public_subtmp427 = sub i32 %_public_truncbinop426, 1
  %_public_lhssext428 = zext i32 %_public_subtmp427 to i64
  %_public_ugtetmp429 = icmp uge i64 %_public_lhssext428, 0
  %_public_zexttmp430 = zext i1 %_public_ugtetmp429 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp430)
  %_public_lval431 = load i32, i32* %_public___v7_inp
  %_public_lval432 = load i32, i32* %_public___v21___v20_len
  %_public_icast433 = zext i32 %_public_lval432 to i64
  %_public_lhssext434 = zext i32 %_public_lval431 to i64
  %_public_addtmp435 = add i64 %_public_lhssext434, %_public_icast433
  %_public_truncbinop436 = trunc i64 %_public_addtmp435 to i32
  %_public_subtmp437 = sub i32 %_public_truncbinop436, 1
  %_public_lval438 = load i32, i32* %_public____in_len
  %_public_icast439 = zext i32 %_public_lval438 to i64
  %_public_lhssext440 = zext i32 %_public_subtmp437 to i64
  %_public_ulttmp441 = icmp ult i64 %_public_lhssext440, %_public_icast439
  %_public_zexttmp442 = zext i1 %_public_ulttmp441 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp442)
  %_public_lval443 = load i32, i32* %_public___v7_inp
  %_secret_ldedviewptr444 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep445 = getelementptr inbounds i8, i8* %_secret_ldedviewptr444, i32 %_public_lval443
  %_secret_arrviewdyn446 = alloca i8*
  store i8* %_secret_source_gep445, i8** %_secret_arrviewdyn446
  %_secret_dynarrarg447 = load i8*, i8** %_secret_arrviewdyn446
  %_public_lval448 = load i32, i32* %_public___v21___v20_len
  call void @_arrcopy(i8* %_secret_dynarrarg355, i32 %_public_lval356, i8* %_secret_dynarrarg447, i32 %_public_lval448)
  %_public_structgep449 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 4
  %_public_structgep450 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 4
  %_public_lval451 = load i32, i32* %_public_structgep450
  %_public_lval452 = load i32, i32* %_public___v8__len
  %_public_addtmp453 = add i32 %_public_lval451, %_public_lval452
  store i32 %_public_addtmp453, i32* %_public_structgep449
  br label %branchmerge455

elsebranch454:                                    ; preds = %branchmerge298
  br label %branchmerge455

branchmerge455:                                   ; preds = %elsebranch454, %thenbranch302
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
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval = load i32, i32* %_secret_slen
  %_secret_ucast = zext i32 %_secret_lval to i64
  %_secret_lshift = shl i64 %_secret_ucast, 3
  store i64 %_secret_lshift, i64* %_secret___v24_l
  call void @__VERIFIER_assert(i32 1)
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
  call void @__VERIFIER_assert(i32 1)
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
  %_public_calltmp = call i32 @__VERIFIER_nondet_unsigned_int()
  store i32 %_public_calltmp, i32* %_public___v27_i
  %_public_lval17 = load i32, i32* %_public___v27_i
  %_public_lval18 = load i32, i32* %_public____in_len
  %_public_ulttmp = icmp ult i32 %_public_lval17, %_public_lval18
  %_public_branchcompare = icmp eq i1 %_public_ulttmp, true
  br i1 %_public_branchcompare, label %thenbranch, label %elsebranch141

thenbranch:                                       ; preds = %entry
  %_public_lval19 = load i32, i32* %_public___v27_i
  %_public_lval20 = load i32, i32* %_public___v27_i
  %_public_addtmp = add i32 %_public_lval20, 1
  %_public_ulttmp21 = icmp ult i32 %_public_lval19, %_public_addtmp
  %_public_zexttmp = zext i1 %_public_ulttmp21 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp)
  %_public_lval22 = load i32, i32* %_public___v27_i
  %_public_ulttmp23 = icmp ult i32 0, %_public_lval22
  %_public_lval24 = load i32, i32* %_public___v27_i
  %_public_eqtmp = icmp eq i32 0, %_public_lval24
  %_public_lortmp = or i1 %_public_ulttmp23, %_public_eqtmp
  %_public_zexttmp25 = zext i1 %_public_lortmp to i32
  call void @__VERIFIER_assume(i32 %_public_zexttmp25)
  %_public_lval26 = load i32, i32* %_public___v23_SHA_CBLOCK
  %_public_icast = zext i32 %_public_lval26 to i64
  %_public_neqtmp = icmp ne i64 %_public_icast, 0
  %_public_zexttmp27 = zext i1 %_public_neqtmp to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp27)
  %_public_lval28 = load i32, i32* %_public___v26_num
  %_public_lval29 = load i32, i32* %_public___v27_i
  %_public_addtmp30 = add i32 %_public_lval28, %_public_lval29
  %_public_lval31 = load i32, i32* %_public___v23_SHA_CBLOCK
  %_public_uremtmp = urem i32 %_public_addtmp30, %_public_lval31
  store i32 %_public_uremtmp, i32* %_public___v28_j
  %_public_lval32 = load i32, i32* %_public___v27_i
  %_secret_lval33 = load i32, i32* %_secret_slen
  %_secret_ulttmp = icmp ult i32 %_public_lval32, %_secret_lval33
  store i1 %_secret_ulttmp, i1* %_secret___m1
  %_public_lval34 = load i32, i32* %_public___v28_j
  %_public_lhssext = zext i32 %_public_lval34 to i64
  %_public_ugtetmp = icmp uge i64 %_public_lhssext, 0
  %_public_zexttmp35 = zext i1 %_public_ugtetmp to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp35)
  %_public_lval36 = load i32, i32* %_public___v28_j
  %_public_lhssext37 = zext i32 %_public_lval36 to i64
  %_public_ulttmp38 = icmp ult i64 %_public_lhssext37, 64
  %_public_zexttmp39 = zext i1 %_public_ulttmp38 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp39)
  %_secret_structgep40 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 3
  %_public_lval41 = load i32, i32* %_public___v28_j
  %_secret_ptr = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep40, i32 0, i32 %_public_lval41
  %_secret_lval42 = load i1, i1* %_secret___m1
  %_secret_landtmp = and i1 true, %_secret_lval42
  %_secret_lval43 = load i1, i1* %_secret___rnset
  %_secret_landtmp44 = and i1 %_secret_landtmp, %_secret_lval43
  %_secret_condtmp = icmp ne i1 %_secret_landtmp44, false
  %_public_lval45 = load i32, i32* %_public___v27_i
  %_public_lhssext46 = zext i32 %_public_lval45 to i64
  %_public_ugtetmp47 = icmp uge i64 %_public_lhssext46, 0
  %_public_zexttmp48 = zext i1 %_public_ugtetmp47 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp48)
  %_public_lval49 = load i32, i32* %_public___v27_i
  %_public_lval50 = load i32, i32* %_public____in_len
  %_public_icast51 = zext i32 %_public_lval50 to i64
  %_public_lhssext52 = zext i32 %_public_lval49 to i64
  %_public_ulttmp53 = icmp ult i64 %_public_lhssext52, %_public_icast51
  %_public_zexttmp54 = zext i1 %_public_ulttmp53 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp54)
  %_public_lval55 = load i32, i32* %_public___v27_i
  %_secret_dyn = load i8*, i8** %_secret_arrarg
  %_secret_ptr56 = getelementptr inbounds i8, i8* %_secret_dyn, i32 %_public_lval55
  %_secret_lval57 = load i8, i8* %_secret_ptr56
  %_public_lval58 = load i32, i32* %_public___v28_j
  %_public_lhssext59 = zext i32 %_public_lval58 to i64
  %_public_ugtetmp60 = icmp uge i64 %_public_lhssext59, 0
  %_public_zexttmp61 = zext i1 %_public_ugtetmp60 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp61)
  %_public_lval62 = load i32, i32* %_public___v28_j
  %_public_lhssext63 = zext i32 %_public_lval62 to i64
  %_public_ulttmp64 = icmp ult i64 %_public_lhssext63, 64
  %_public_zexttmp65 = zext i1 %_public_ulttmp64 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp65)
  %_secret_structgep66 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 3
  %_public_lval67 = load i32, i32* %_public___v28_j
  %_secret_ptr68 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep66, i32 0, i32 %_public_lval67
  %_secret_lval69 = load i8, i8* %_secret_ptr68
  %_secret_selecttmp = call i8 @select.cmov.asm.i8(i1 %_secret_condtmp, i8 %_secret_lval57, i8 %_secret_lval69)
  store i8 %_secret_selecttmp, i8* %_secret_ptr
  %_secret_lval70 = load i1, i1* %_secret___m1
  %_secret_lnottmp = xor i1 %_secret_lval70, true
  store i1 %_secret_lnottmp, i1* %_secret___m1
  %_public_lval71 = load i32, i32* %_public___v28_j
  %_public_lval72 = load i32, i32* %_public___v23_SHA_CBLOCK
  %_public_subtmp = sub i32 %_public_lval72, 1
  %_public_eqtmp73 = icmp eq i32 %_public_lval71, %_public_subtmp
  %_public_branchcompare74 = icmp eq i1 %_public_eqtmp73, true
  br i1 %_public_branchcompare74, label %thenbranch75, label %elsebranch139

thenbranch75:                                     ; preds = %thenbranch
  %_secret___v29_h = alloca [5 x i32]
  %_secret_structgep76 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 0
  %_secret_sourcecasted = bitcast [5 x i32]* %_secret_structgep76 to i8*
  %_secret_destcast = bitcast [5 x i32]* %_secret___v29_h to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %_secret_destcast, i8* %_secret_sourcecasted, i64 20, i32 0, i1 false)
  %_secret_structgep77 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 3
  %_secret_structgep78 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 3
  %_secret_arrtoptr = bitcast [64 x i8]* %_secret_structgep78 to i8*
  call void @sha1_block_data_order(%SHA_CTX* %ctx, i8* %_secret_arrtoptr, i32 1)
  %_public_lval79 = load i32, i32* %_public___v27_i
  %_secret_lval80 = load i32, i32* %_secret_slen
  %_secret_ugtetmp = icmp uge i32 %_public_lval79, %_secret_lval80
  store i1 %_secret_ugtetmp, i1* %_secret___m2
  %_public_calltmp81 = call i32 @__VERIFIER_nondet_unsigned_int()
  store i32 %_public_calltmp81, i32* %_public___v30_k
  %_public_lval82 = load i32, i32* %_public___v30_k
  %_public_ulttmp83 = icmp ult i32 %_public_lval82, 5
  %_public_branchcompare84 = icmp eq i1 %_public_ulttmp83, true
  br i1 %_public_branchcompare84, label %thenbranch85, label %elsebranch

thenbranch85:                                     ; preds = %thenbranch75
  %_public_lval86 = load i32, i32* %_public___v30_k
  %_public_lval87 = load i32, i32* %_public___v30_k
  %_public_addtmp88 = add i32 %_public_lval87, 1
  %_public_ulttmp89 = icmp ult i32 %_public_lval86, %_public_addtmp88
  %_public_zexttmp90 = zext i1 %_public_ulttmp89 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp90)
  %_public_lval91 = load i32, i32* %_public___v30_k
  %_public_ulttmp92 = icmp ult i32 0, %_public_lval91
  %_public_lval93 = load i32, i32* %_public___v30_k
  %_public_eqtmp94 = icmp eq i32 0, %_public_lval93
  %_public_lortmp95 = or i1 %_public_ulttmp92, %_public_eqtmp94
  %_public_zexttmp96 = zext i1 %_public_lortmp95 to i32
  call void @__VERIFIER_assume(i32 %_public_zexttmp96)
  %_public_lval97 = load i32, i32* %_public___v30_k
  %_public_lhssext98 = zext i32 %_public_lval97 to i64
  %_public_ugtetmp99 = icmp uge i64 %_public_lhssext98, 0
  %_public_zexttmp100 = zext i1 %_public_ugtetmp99 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp100)
  %_public_lval101 = load i32, i32* %_public___v30_k
  %_public_lhssext102 = zext i32 %_public_lval101 to i64
  %_public_ulttmp103 = icmp ult i64 %_public_lhssext102, 5
  %_public_zexttmp104 = zext i1 %_public_ulttmp103 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp104)
  %_secret_structgep105 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 0
  %_public_lval106 = load i32, i32* %_public___v30_k
  %_secret_ptr107 = getelementptr inbounds [5 x i32], [5 x i32]* %_secret_structgep105, i32 0, i32 %_public_lval106
  %_secret_lval108 = load i1, i1* %_secret___m2
  %_secret_landtmp109 = and i1 true, %_secret_lval108
  %_secret_lval110 = load i1, i1* %_secret___rnset
  %_secret_landtmp111 = and i1 %_secret_landtmp109, %_secret_lval110
  %_secret_condtmp112 = icmp ne i1 %_secret_landtmp111, false
  %_public_lval113 = load i32, i32* %_public___v30_k
  %_public_lhssext114 = zext i32 %_public_lval113 to i64
  %_public_ugtetmp115 = icmp uge i64 %_public_lhssext114, 0
  %_public_zexttmp116 = zext i1 %_public_ugtetmp115 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp116)
  %_public_lval117 = load i32, i32* %_public___v30_k
  %_public_lhssext118 = zext i32 %_public_lval117 to i64
  %_public_ulttmp119 = icmp ult i64 %_public_lhssext118, 5
  %_public_zexttmp120 = zext i1 %_public_ulttmp119 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp120)
  %_public_lval121 = load i32, i32* %_public___v30_k
  %_secret_ptr122 = getelementptr inbounds [5 x i32], [5 x i32]* %_secret___v29_h, i32 0, i32 %_public_lval121
  %_secret_lval123 = load i32, i32* %_secret_ptr122
  %_public_lval124 = load i32, i32* %_public___v30_k
  %_public_lhssext125 = zext i32 %_public_lval124 to i64
  %_public_ugtetmp126 = icmp uge i64 %_public_lhssext125, 0
  %_public_zexttmp127 = zext i1 %_public_ugtetmp126 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp127)
  %_public_lval128 = load i32, i32* %_public___v30_k
  %_public_lhssext129 = zext i32 %_public_lval128 to i64
  %_public_ulttmp130 = icmp ult i64 %_public_lhssext129, 5
  %_public_zexttmp131 = zext i1 %_public_ulttmp130 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp131)
  %_secret_structgep132 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 0
  %_public_lval133 = load i32, i32* %_public___v30_k
  %_secret_ptr134 = getelementptr inbounds [5 x i32], [5 x i32]* %_secret_structgep132, i32 0, i32 %_public_lval133
  %_secret_lval135 = load i32, i32* %_secret_ptr134
  %_secret_selecttmp136 = call i32 @select.cmov.sel.i32(i1 %_secret_condtmp112, i32 %_secret_lval123, i32 %_secret_lval135)
  store i32 %_secret_selecttmp136, i32* %_secret_ptr107
  br label %branchmerge

elsebranch:                                       ; preds = %thenbranch75
  br label %branchmerge

branchmerge:                                      ; preds = %elsebranch, %thenbranch85
  %_secret_lval137 = load i1, i1* %_secret___m2
  %_secret_lnottmp138 = xor i1 %_secret_lval137, true
  store i1 %_secret_lnottmp138, i1* %_secret___m2
  br label %branchmerge140

elsebranch139:                                    ; preds = %thenbranch
  br label %branchmerge140

branchmerge140:                                   ; preds = %elsebranch139, %branchmerge
  br label %branchmerge142

elsebranch141:                                    ; preds = %entry
  br label %branchmerge142

branchmerge142:                                   ; preds = %elsebranch141, %branchmerge140
  %_public_lval143 = load i32, i32* %_public___v26_num
  %_secret_lval144 = load i32, i32* %_secret_slen
  %_secret_addtmp145 = add i32 %_public_lval143, %_secret_lval144
  %_public_lval146 = load i32, i32* %_public___v23_SHA_CBLOCK
  %_public_subtmp147 = sub i32 %_public_lval146, 1
  %_secret_andtmp = and i32 %_secret_addtmp145, %_public_subtmp147
  store i32 %_secret_andtmp, i32* %_secret_ctx_num
  %_public_structgep148 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 4
  %_public_lval149 = load i32, i32* %_public___v23_SHA_CBLOCK
  %_public_icast150 = zext i32 %_public_lval149 to i64
  %_public_neqtmp151 = icmp ne i64 %_public_icast150, 0
  %_public_zexttmp152 = zext i1 %_public_neqtmp151 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp152)
  %_public_lval153 = load i32, i32* %_public___v26_num
  %_public_lval154 = load i32, i32* %_public____in_len
  %_public_addtmp155 = add i32 %_public_lval153, %_public_lval154
  %_public_lval156 = load i32, i32* %_public___v23_SHA_CBLOCK
  %_public_uremtmp157 = urem i32 %_public_addtmp155, %_public_lval156
  store i32 %_public_uremtmp157, i32* %_public_structgep148
  ret void
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
  %_public_calltmp = call i32 @__VERIFIER_nondet_unsigned_int()
  store i32 %_public_calltmp, i32* %_public___v31_i
  %_public_lval = load i32, i32* %_public___v31_i
  %_public_ulttmp = icmp ult i32 %_public_lval, 5
  %_public_branchcompare = icmp eq i1 %_public_ulttmp, true
  br i1 %_public_branchcompare, label %thenbranch, label %elsebranch

thenbranch:                                       ; preds = %entry
  %_public_lval2 = load i32, i32* %_public___v31_i
  %_public_lval3 = load i32, i32* %_public___v31_i
  %_public_addtmp = add i32 %_public_lval3, 1
  %_public_ulttmp4 = icmp ult i32 %_public_lval2, %_public_addtmp
  %_public_zexttmp = zext i1 %_public_ulttmp4 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp)
  %_public_lval5 = load i32, i32* %_public___v31_i
  %_public_ulttmp6 = icmp ult i32 0, %_public_lval5
  %_public_lval7 = load i32, i32* %_public___v31_i
  %_public_eqtmp = icmp eq i32 0, %_public_lval7
  %_public_lortmp = or i1 %_public_ulttmp6, %_public_eqtmp
  %_public_zexttmp8 = zext i1 %_public_lortmp to i32
  call void @__VERIFIER_assume(i32 %_public_zexttmp8)
  %_public_lval9 = load i32, i32* %_public___v31_i
  %_public_multmp = mul i32 %_public_lval9, 4
  %_public_lhssext = zext i32 %_public_multmp to i64
  %_public_addtmp10 = add i64 %_public_lhssext, 4
  %_public_truncbinop = trunc i64 %_public_addtmp10 to i32
  %_public_lval11 = load i32, i32* %_public___v31_i
  %_public_multmp12 = mul i32 %_public_lval11, 4
  %_public_ugttmp = icmp ugt i32 %_public_truncbinop, %_public_multmp12
  %_public_zexttmp13 = zext i1 %_public_ugttmp to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp13)
  %_public_lval14 = load i32, i32* %_public___v31_i
  %_public_multmp15 = mul i32 %_public_lval14, 4
  %_public_lhssext16 = zext i32 %_public_multmp15 to i64
  %_public_ugtetmp = icmp uge i64 %_public_lhssext16, 0
  %_public_zexttmp17 = zext i1 %_public_ugtetmp to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp17)
  %_public_lval18 = load i32, i32* %_public___v31_i
  %_public_multmp19 = mul i32 %_public_lval18, 4
  %_public_lhssext20 = zext i32 %_public_multmp19 to i64
  %_public_ulttmp21 = icmp ult i64 %_public_lhssext20, 20
  %_public_zexttmp22 = zext i1 %_public_ulttmp21 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp22)
  %_public_lval23 = load i32, i32* %_public___v31_i
  %_public_multmp24 = mul i32 %_public_lval23, 4
  %_public_lhssext25 = zext i32 %_public_multmp24 to i64
  %_public_addtmp26 = add i64 %_public_lhssext25, 4
  %_public_truncbinop27 = trunc i64 %_public_addtmp26 to i32
  %_public_subtmp = sub i32 %_public_truncbinop27, 1
  %_public_lhssext28 = zext i32 %_public_subtmp to i64
  %_public_ugtetmp29 = icmp uge i64 %_public_lhssext28, 0
  %_public_zexttmp30 = zext i1 %_public_ugtetmp29 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp30)
  %_public_lval31 = load i32, i32* %_public___v31_i
  %_public_multmp32 = mul i32 %_public_lval31, 4
  %_public_lhssext33 = zext i32 %_public_multmp32 to i64
  %_public_addtmp34 = add i64 %_public_lhssext33, 4
  %_public_truncbinop35 = trunc i64 %_public_addtmp34 to i32
  %_public_subtmp36 = sub i32 %_public_truncbinop35, 1
  %_public_lhssext37 = zext i32 %_public_subtmp36 to i64
  %_public_ulttmp38 = icmp ult i64 %_public_lhssext37, 20
  %_public_zexttmp39 = zext i1 %_public_ulttmp38 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp39)
  %_public_lval40 = load i32, i32* %_public___v31_i
  %_public_multmp41 = mul i32 %_public_lval40, 4
  %_secret_ldedviewptr = load i8*, i8** %_secret_arrarg
  %_secret_source_gep = getelementptr inbounds i8, i8* %_secret_ldedviewptr, i32 %_public_multmp41
  %_secret_arrviewdyn = alloca i8*
  store i8* %_secret_source_gep, i8** %_secret_arrviewdyn
  %_public_lval42 = load i32, i32* %_public___v31_i
  %_public_multmp43 = mul i32 %_public_lval42, 4
  %_public_lhssext44 = zext i32 %_public_multmp43 to i64
  %_public_addtmp45 = add i64 %_public_lhssext44, 4
  %_public_truncbinop46 = trunc i64 %_public_addtmp45 to i32
  %_public_lval47 = load i32, i32* %_public___v31_i
  %_public_multmp48 = mul i32 %_public_lval47, 4
  %_public_ugttmp49 = icmp ugt i32 %_public_truncbinop46, %_public_multmp48
  %_public_zexttmp50 = zext i1 %_public_ugttmp49 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp50)
  %_public_lval51 = load i32, i32* %_public___v31_i
  %_public_multmp52 = mul i32 %_public_lval51, 4
  %_public_lhssext53 = zext i32 %_public_multmp52 to i64
  %_public_ugtetmp54 = icmp uge i64 %_public_lhssext53, 0
  %_public_zexttmp55 = zext i1 %_public_ugtetmp54 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp55)
  %_public_lval56 = load i32, i32* %_public___v31_i
  %_public_multmp57 = mul i32 %_public_lval56, 4
  %_public_lhssext58 = zext i32 %_public_multmp57 to i64
  %_public_ulttmp59 = icmp ult i64 %_public_lhssext58, 20
  %_public_zexttmp60 = zext i1 %_public_ulttmp59 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp60)
  %_public_lval61 = load i32, i32* %_public___v31_i
  %_public_multmp62 = mul i32 %_public_lval61, 4
  %_public_lhssext63 = zext i32 %_public_multmp62 to i64
  %_public_addtmp64 = add i64 %_public_lhssext63, 4
  %_public_truncbinop65 = trunc i64 %_public_addtmp64 to i32
  %_public_subtmp66 = sub i32 %_public_truncbinop65, 1
  %_public_lhssext67 = zext i32 %_public_subtmp66 to i64
  %_public_ugtetmp68 = icmp uge i64 %_public_lhssext67, 0
  %_public_zexttmp69 = zext i1 %_public_ugtetmp68 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp69)
  %_public_lval70 = load i32, i32* %_public___v31_i
  %_public_multmp71 = mul i32 %_public_lval70, 4
  %_public_lhssext72 = zext i32 %_public_multmp71 to i64
  %_public_addtmp73 = add i64 %_public_lhssext72, 4
  %_public_truncbinop74 = trunc i64 %_public_addtmp73 to i32
  %_public_subtmp75 = sub i32 %_public_truncbinop74, 1
  %_public_lhssext76 = zext i32 %_public_subtmp75 to i64
  %_public_ulttmp77 = icmp ult i64 %_public_lhssext76, 20
  %_public_zexttmp78 = zext i1 %_public_ulttmp77 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp78)
  %_public_lval79 = load i32, i32* %_public___v31_i
  %_public_multmp80 = mul i32 %_public_lval79, 4
  %_secret_ldedviewptr81 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep82 = getelementptr inbounds i8, i8* %_secret_ldedviewptr81, i32 %_public_multmp80
  %_secret_arrviewdyn83 = alloca i8*
  store i8* %_secret_source_gep82, i8** %_secret_arrviewdyn83
  %_secret_dynarrarg = load i8*, i8** %_secret_arrviewdyn83
  %_public_lval84 = load i32, i32* %_public___v31_i
  %_public_lhssext85 = zext i32 %_public_lval84 to i64
  %_public_ugtetmp86 = icmp uge i64 %_public_lhssext85, 0
  %_public_zexttmp87 = zext i1 %_public_ugtetmp86 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp87)
  %_public_lval88 = load i32, i32* %_public___v31_i
  %_public_lhssext89 = zext i32 %_public_lval88 to i64
  %_public_ulttmp90 = icmp ult i64 %_public_lhssext89, 5
  %_public_zexttmp91 = zext i1 %_public_ulttmp90 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp91)
  %_secret_structgep = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 0
  %_public_lval92 = load i32, i32* %_public___v31_i
  %_secret_ptr = getelementptr inbounds [5 x i32], [5 x i32]* %_secret_structgep, i32 0, i32 %_public_lval92
  %_secret_lval = load i32, i32* %_secret_ptr
  call void @store32_be(i8* %_secret_dynarrarg, i32 %_secret_lval)
  br label %branchmerge

elsebranch:                                       ; preds = %entry
  br label %branchmerge

branchmerge:                                      ; preds = %elsebranch, %thenbranch
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
  %_public_lval2 = load i32, i32* %_public___v32_num
  %_public_lhssext = zext i32 %_public_lval2 to i64
  %_public_ugtetmp = icmp uge i64 %_public_lhssext, 0
  %_public_zexttmp = zext i1 %_public_ugtetmp to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp)
  %_public_lval3 = load i32, i32* %_public___v32_num
  %_public_lhssext4 = zext i32 %_public_lval3 to i64
  %_public_ulttmp = icmp ult i64 %_public_lhssext4, 64
  %_public_zexttmp5 = zext i1 %_public_ulttmp to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp5)
  %_secret_structgep = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 3
  %_public_lval6 = load i32, i32* %_public___v32_num
  %_secret_ptr = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep, i32 0, i32 %_public_lval6
  store i8 -128, i8* %_secret_ptr
  %_public_lval7 = load i32, i32* %_public___v32_num
  %_public_addtmp = add i32 %_public_lval7, 1
  store i32 %_public_addtmp, i32* %_public___v32_num
  %_public_lval8 = load i32, i32* %_public___v32_num
  %_public_ugttmp = icmp ugt i32 %_public_lval8, 56
  %_public_branchcompare = icmp eq i1 %_public_ugttmp, true
  br i1 %_public_branchcompare, label %thenbranch, label %elsebranch

thenbranch:                                       ; preds = %entry
  %_public_lval9 = load i32, i32* %_public___v32_num
  %_public_subtmp = sub i32 64, %_public_lval9
  store i32 %_public_subtmp, i32* %_public___v34___v33_len
  %_public_lval10 = load i32, i32* %_public___v32_num
  %_public_lval11 = load i32, i32* %_public___v34___v33_len
  %_public_icast = zext i32 %_public_lval11 to i64
  %_public_lhssext12 = zext i32 %_public_lval10 to i64
  %_public_addtmp13 = add i64 %_public_lhssext12, %_public_icast
  %_public_truncbinop = trunc i64 %_public_addtmp13 to i32
  %_public_lval14 = load i32, i32* %_public___v32_num
  %_public_ugttmp15 = icmp ugt i32 %_public_truncbinop, %_public_lval14
  %_public_zexttmp16 = zext i1 %_public_ugttmp15 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp16)
  %_public_lval17 = load i32, i32* %_public___v32_num
  %_public_lhssext18 = zext i32 %_public_lval17 to i64
  %_public_ugtetmp19 = icmp uge i64 %_public_lhssext18, 0
  %_public_zexttmp20 = zext i1 %_public_ugtetmp19 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp20)
  %_public_lval21 = load i32, i32* %_public___v32_num
  %_public_lhssext22 = zext i32 %_public_lval21 to i64
  %_public_ulttmp23 = icmp ult i64 %_public_lhssext22, 64
  %_public_zexttmp24 = zext i1 %_public_ulttmp23 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp24)
  %_public_lval25 = load i32, i32* %_public___v32_num
  %_public_lval26 = load i32, i32* %_public___v34___v33_len
  %_public_icast27 = zext i32 %_public_lval26 to i64
  %_public_lhssext28 = zext i32 %_public_lval25 to i64
  %_public_addtmp29 = add i64 %_public_lhssext28, %_public_icast27
  %_public_truncbinop30 = trunc i64 %_public_addtmp29 to i32
  %_public_subtmp31 = sub i32 %_public_truncbinop30, 1
  %_public_lhssext32 = zext i32 %_public_subtmp31 to i64
  %_public_ugtetmp33 = icmp uge i64 %_public_lhssext32, 0
  %_public_zexttmp34 = zext i1 %_public_ugtetmp33 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp34)
  %_public_lval35 = load i32, i32* %_public___v32_num
  %_public_lval36 = load i32, i32* %_public___v34___v33_len
  %_public_icast37 = zext i32 %_public_lval36 to i64
  %_public_lhssext38 = zext i32 %_public_lval35 to i64
  %_public_addtmp39 = add i64 %_public_lhssext38, %_public_icast37
  %_public_truncbinop40 = trunc i64 %_public_addtmp39 to i32
  %_public_subtmp41 = sub i32 %_public_truncbinop40, 1
  %_public_lhssext42 = zext i32 %_public_subtmp41 to i64
  %_public_ulttmp43 = icmp ult i64 %_public_lhssext42, 64
  %_public_zexttmp44 = zext i1 %_public_ulttmp43 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp44)
  %_public_lval45 = load i32, i32* %_public___v32_num
  %_secret_structgep46 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 3
  %_secret_arrview = alloca i8*
  %_secret_source_gep = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep46, i32 0, i32 %_public_lval45
  store i8* %_secret_source_gep, i8** %_secret_arrview
  %_public_lval47 = load i32, i32* %_public___v32_num
  %_public_lval48 = load i32, i32* %_public___v34___v33_len
  %_public_icast49 = zext i32 %_public_lval48 to i64
  %_public_lhssext50 = zext i32 %_public_lval47 to i64
  %_public_addtmp51 = add i64 %_public_lhssext50, %_public_icast49
  %_public_truncbinop52 = trunc i64 %_public_addtmp51 to i32
  %_public_lval53 = load i32, i32* %_public___v32_num
  %_public_ugttmp54 = icmp ugt i32 %_public_truncbinop52, %_public_lval53
  %_public_zexttmp55 = zext i1 %_public_ugttmp54 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp55)
  %_public_lval56 = load i32, i32* %_public___v32_num
  %_public_lhssext57 = zext i32 %_public_lval56 to i64
  %_public_ugtetmp58 = icmp uge i64 %_public_lhssext57, 0
  %_public_zexttmp59 = zext i1 %_public_ugtetmp58 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp59)
  %_public_lval60 = load i32, i32* %_public___v32_num
  %_public_lhssext61 = zext i32 %_public_lval60 to i64
  %_public_ulttmp62 = icmp ult i64 %_public_lhssext61, 64
  %_public_zexttmp63 = zext i1 %_public_ulttmp62 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp63)
  %_public_lval64 = load i32, i32* %_public___v32_num
  %_public_lval65 = load i32, i32* %_public___v34___v33_len
  %_public_icast66 = zext i32 %_public_lval65 to i64
  %_public_lhssext67 = zext i32 %_public_lval64 to i64
  %_public_addtmp68 = add i64 %_public_lhssext67, %_public_icast66
  %_public_truncbinop69 = trunc i64 %_public_addtmp68 to i32
  %_public_subtmp70 = sub i32 %_public_truncbinop69, 1
  %_public_lhssext71 = zext i32 %_public_subtmp70 to i64
  %_public_ugtetmp72 = icmp uge i64 %_public_lhssext71, 0
  %_public_zexttmp73 = zext i1 %_public_ugtetmp72 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp73)
  %_public_lval74 = load i32, i32* %_public___v32_num
  %_public_lval75 = load i32, i32* %_public___v34___v33_len
  %_public_icast76 = zext i32 %_public_lval75 to i64
  %_public_lhssext77 = zext i32 %_public_lval74 to i64
  %_public_addtmp78 = add i64 %_public_lhssext77, %_public_icast76
  %_public_truncbinop79 = trunc i64 %_public_addtmp78 to i32
  %_public_subtmp80 = sub i32 %_public_truncbinop79, 1
  %_public_lhssext81 = zext i32 %_public_subtmp80 to i64
  %_public_ulttmp82 = icmp ult i64 %_public_lhssext81, 64
  %_public_zexttmp83 = zext i1 %_public_ulttmp82 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp83)
  %_public_lval84 = load i32, i32* %_public___v32_num
  %_secret_structgep85 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 3
  %_secret_arrview86 = alloca i8*
  %_secret_source_gep87 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep85, i32 0, i32 %_public_lval84
  store i8* %_secret_source_gep87, i8** %_secret_arrview86
  %_secret_dynarrarg = load i8*, i8** %_secret_arrview86
  %_public_lval88 = load i32, i32* %_public___v34___v33_len
  call void @_memzero(i8* %_secret_dynarrarg, i32 %_public_lval88)
  %_secret_structgep89 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 3
  %_secret_structgep90 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 3
  %_secret_arrtoptr = bitcast [64 x i8]* %_secret_structgep90 to i8*
  call void @sha1_block_data_order(%SHA_CTX* %ctx, i8* %_secret_arrtoptr, i32 1)
  store i32 0, i32* %_public___v32_num
  br label %branchmerge

elsebranch:                                       ; preds = %entry
  br label %branchmerge

branchmerge:                                      ; preds = %elsebranch, %thenbranch
  %_public_lval91 = load i32, i32* %_public___v32_num
  %_public_subtmp92 = sub i32 56, %_public_lval91
  store i32 %_public_subtmp92, i32* %_public___v36___v35_len
  %_public_lval93 = load i32, i32* %_public___v32_num
  %_public_lval94 = load i32, i32* %_public___v36___v35_len
  %_public_icast95 = zext i32 %_public_lval94 to i64
  %_public_lhssext96 = zext i32 %_public_lval93 to i64
  %_public_addtmp97 = add i64 %_public_lhssext96, %_public_icast95
  %_public_truncbinop98 = trunc i64 %_public_addtmp97 to i32
  %_public_lval99 = load i32, i32* %_public___v32_num
  %_public_ugttmp100 = icmp ugt i32 %_public_truncbinop98, %_public_lval99
  %_public_zexttmp101 = zext i1 %_public_ugttmp100 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp101)
  %_public_lval102 = load i32, i32* %_public___v32_num
  %_public_lhssext103 = zext i32 %_public_lval102 to i64
  %_public_ugtetmp104 = icmp uge i64 %_public_lhssext103, 0
  %_public_zexttmp105 = zext i1 %_public_ugtetmp104 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp105)
  %_public_lval106 = load i32, i32* %_public___v32_num
  %_public_lhssext107 = zext i32 %_public_lval106 to i64
  %_public_ulttmp108 = icmp ult i64 %_public_lhssext107, 64
  %_public_zexttmp109 = zext i1 %_public_ulttmp108 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp109)
  %_public_lval110 = load i32, i32* %_public___v32_num
  %_public_lval111 = load i32, i32* %_public___v36___v35_len
  %_public_icast112 = zext i32 %_public_lval111 to i64
  %_public_lhssext113 = zext i32 %_public_lval110 to i64
  %_public_addtmp114 = add i64 %_public_lhssext113, %_public_icast112
  %_public_truncbinop115 = trunc i64 %_public_addtmp114 to i32
  %_public_subtmp116 = sub i32 %_public_truncbinop115, 1
  %_public_lhssext117 = zext i32 %_public_subtmp116 to i64
  %_public_ugtetmp118 = icmp uge i64 %_public_lhssext117, 0
  %_public_zexttmp119 = zext i1 %_public_ugtetmp118 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp119)
  %_public_lval120 = load i32, i32* %_public___v32_num
  %_public_lval121 = load i32, i32* %_public___v36___v35_len
  %_public_icast122 = zext i32 %_public_lval121 to i64
  %_public_lhssext123 = zext i32 %_public_lval120 to i64
  %_public_addtmp124 = add i64 %_public_lhssext123, %_public_icast122
  %_public_truncbinop125 = trunc i64 %_public_addtmp124 to i32
  %_public_subtmp126 = sub i32 %_public_truncbinop125, 1
  %_public_lhssext127 = zext i32 %_public_subtmp126 to i64
  %_public_ulttmp128 = icmp ult i64 %_public_lhssext127, 64
  %_public_zexttmp129 = zext i1 %_public_ulttmp128 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp129)
  %_public_lval130 = load i32, i32* %_public___v32_num
  %_secret_structgep131 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 3
  %_secret_arrview132 = alloca i8*
  %_secret_source_gep133 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep131, i32 0, i32 %_public_lval130
  store i8* %_secret_source_gep133, i8** %_secret_arrview132
  %_public_lval134 = load i32, i32* %_public___v32_num
  %_public_lval135 = load i32, i32* %_public___v36___v35_len
  %_public_icast136 = zext i32 %_public_lval135 to i64
  %_public_lhssext137 = zext i32 %_public_lval134 to i64
  %_public_addtmp138 = add i64 %_public_lhssext137, %_public_icast136
  %_public_truncbinop139 = trunc i64 %_public_addtmp138 to i32
  %_public_lval140 = load i32, i32* %_public___v32_num
  %_public_ugttmp141 = icmp ugt i32 %_public_truncbinop139, %_public_lval140
  %_public_zexttmp142 = zext i1 %_public_ugttmp141 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp142)
  %_public_lval143 = load i32, i32* %_public___v32_num
  %_public_lhssext144 = zext i32 %_public_lval143 to i64
  %_public_ugtetmp145 = icmp uge i64 %_public_lhssext144, 0
  %_public_zexttmp146 = zext i1 %_public_ugtetmp145 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp146)
  %_public_lval147 = load i32, i32* %_public___v32_num
  %_public_lhssext148 = zext i32 %_public_lval147 to i64
  %_public_ulttmp149 = icmp ult i64 %_public_lhssext148, 64
  %_public_zexttmp150 = zext i1 %_public_ulttmp149 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp150)
  %_public_lval151 = load i32, i32* %_public___v32_num
  %_public_lval152 = load i32, i32* %_public___v36___v35_len
  %_public_icast153 = zext i32 %_public_lval152 to i64
  %_public_lhssext154 = zext i32 %_public_lval151 to i64
  %_public_addtmp155 = add i64 %_public_lhssext154, %_public_icast153
  %_public_truncbinop156 = trunc i64 %_public_addtmp155 to i32
  %_public_subtmp157 = sub i32 %_public_truncbinop156, 1
  %_public_lhssext158 = zext i32 %_public_subtmp157 to i64
  %_public_ugtetmp159 = icmp uge i64 %_public_lhssext158, 0
  %_public_zexttmp160 = zext i1 %_public_ugtetmp159 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp160)
  %_public_lval161 = load i32, i32* %_public___v32_num
  %_public_lval162 = load i32, i32* %_public___v36___v35_len
  %_public_icast163 = zext i32 %_public_lval162 to i64
  %_public_lhssext164 = zext i32 %_public_lval161 to i64
  %_public_addtmp165 = add i64 %_public_lhssext164, %_public_icast163
  %_public_truncbinop166 = trunc i64 %_public_addtmp165 to i32
  %_public_subtmp167 = sub i32 %_public_truncbinop166, 1
  %_public_lhssext168 = zext i32 %_public_subtmp167 to i64
  %_public_ulttmp169 = icmp ult i64 %_public_lhssext168, 64
  %_public_zexttmp170 = zext i1 %_public_ulttmp169 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp170)
  %_public_lval171 = load i32, i32* %_public___v32_num
  %_secret_structgep172 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 3
  %_secret_arrview173 = alloca i8*
  %_secret_source_gep174 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep172, i32 0, i32 %_public_lval171
  store i8* %_secret_source_gep174, i8** %_secret_arrview173
  %_secret_dynarrarg175 = load i8*, i8** %_secret_arrview173
  %_public_lval176 = load i32, i32* %_public___v36___v35_len
  call void @_memzero(i8* %_secret_dynarrarg175, i32 %_public_lval176)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_structgep177 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 3
  %_secret_arrview178 = alloca i8*
  %_secret_source_gep179 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep177, i8 0, i8 56
  store i8* %_secret_source_gep179, i8** %_secret_arrview178
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_structgep180 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 3
  %_secret_arrview181 = alloca i8*
  %_secret_source_gep182 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep180, i8 0, i8 56
  store i8* %_secret_source_gep182, i8** %_secret_arrview181
  %_secret_dynarrarg183 = load i8*, i8** %_secret_arrview181
  %_secret_structgep184 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 2
  %_secret_lval = load i32, i32* %_secret_structgep184
  call void @store32_be(i8* %_secret_dynarrarg183, i32 %_secret_lval)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_structgep185 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 3
  %_secret_arrview186 = alloca i8*
  %_secret_source_gep187 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep185, i8 0, i8 60
  store i8* %_secret_source_gep187, i8** %_secret_arrview186
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_structgep188 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 3
  %_secret_arrview189 = alloca i8*
  %_secret_source_gep190 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep188, i8 0, i8 60
  store i8* %_secret_source_gep190, i8** %_secret_arrview189
  %_secret_dynarrarg191 = load i8*, i8** %_secret_arrview189
  %_secret_structgep192 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 1
  %_secret_lval193 = load i32, i32* %_secret_structgep192
  call void @store32_be(i8* %_secret_dynarrarg191, i32 %_secret_lval193)
  %_secret_structgep194 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 3
  %_secret_structgep195 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 3
  %_secret_arrtoptr196 = bitcast [64 x i8]* %_secret_structgep195 to i8*
  call void @sha1_block_data_order(%SHA_CTX* %ctx, i8* %_secret_arrtoptr196, i32 1)
  %_public_structgep197 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 4
  store i32 0, i32* %_public_structgep197
  %_secret_structgep198 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 3
  %_secret_structgep199 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 3
  %_secret_arrtoptr200 = bitcast [64 x i8]* %_secret_structgep199 to i8*
  call void @_memzero(i8* %_secret_arrtoptr200, i32 64)
  %_secret_dynarrarg201 = load i8*, i8** %_secret_arrarg
  call void @SHA1_MAKE_STRING(%SHA_CTX* %ctx, i8* %_secret_dynarrarg201)
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
  %_public_calltmp = call i32 @__VERIFIER_nondet_unsigned_int()
  store i32 %_public_calltmp, i32* %_public___v38_i
  %_public_lval = load i32, i32* %_public___v38_i
  %_public_ulttmp = icmp ult i32 %_public_lval, 64
  %_public_branchcompare = icmp eq i1 %_public_ulttmp, true
  br i1 %_public_branchcompare, label %thenbranch, label %elsebranch167

thenbranch:                                       ; preds = %entry
  %_public_lval3 = load i32, i32* %_public___v38_i
  %_public_lval4 = load i32, i32* %_public___v38_i
  %_public_addtmp = add i32 %_public_lval4, 1
  %_public_ulttmp5 = icmp ult i32 %_public_lval3, %_public_addtmp
  %_public_zexttmp = zext i1 %_public_ulttmp5 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp)
  %_public_lval6 = load i32, i32* %_public___v38_i
  %_public_ulttmp7 = icmp ult i32 0, %_public_lval6
  %_public_lval8 = load i32, i32* %_public___v38_i
  %_public_eqtmp = icmp eq i32 0, %_public_lval8
  %_public_lortmp = or i1 %_public_ulttmp7, %_public_eqtmp
  %_public_zexttmp9 = zext i1 %_public_lortmp to i32
  call void @__VERIFIER_assume(i32 %_public_zexttmp9)
  %_public_lval10 = load i32, i32* %_public___v38_i
  %_secret_lval11 = load i32, i32* %_secret_ctx_num
  %_secret_eqtmp = icmp eq i32 %_public_lval10, %_secret_lval11
  store i1 %_secret_eqtmp, i1* %_secret___m3
  %_public_lval12 = load i32, i32* %_public___v38_i
  %_public_lhssext = zext i32 %_public_lval12 to i64
  %_public_ugtetmp = icmp uge i64 %_public_lhssext, 0
  %_public_zexttmp13 = zext i1 %_public_ugtetmp to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp13)
  %_public_lval14 = load i32, i32* %_public___v38_i
  %_public_lhssext15 = zext i32 %_public_lval14 to i64
  %_public_ulttmp16 = icmp ult i64 %_public_lhssext15, 64
  %_public_zexttmp17 = zext i1 %_public_ulttmp16 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp17)
  %_secret_structgep = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 3
  %_public_lval18 = load i32, i32* %_public___v38_i
  %_secret_ptr = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep, i32 0, i32 %_public_lval18
  %_secret_lval19 = load i1, i1* %_secret___m3
  %_secret_landtmp = and i1 true, %_secret_lval19
  %_secret_lval20 = load i1, i1* %_secret___rnset
  %_secret_landtmp21 = and i1 %_secret_landtmp, %_secret_lval20
  %_secret_condtmp = icmp ne i1 %_secret_landtmp21, false
  %_public_lval22 = load i32, i32* %_public___v38_i
  %_public_lhssext23 = zext i32 %_public_lval22 to i64
  %_public_ugtetmp24 = icmp uge i64 %_public_lhssext23, 0
  %_public_zexttmp25 = zext i1 %_public_ugtetmp24 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp25)
  %_public_lval26 = load i32, i32* %_public___v38_i
  %_public_lhssext27 = zext i32 %_public_lval26 to i64
  %_public_ulttmp28 = icmp ult i64 %_public_lhssext27, 64
  %_public_zexttmp29 = zext i1 %_public_ulttmp28 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp29)
  %_secret_structgep30 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 3
  %_public_lval31 = load i32, i32* %_public___v38_i
  %_secret_ptr32 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep30, i32 0, i32 %_public_lval31
  %_secret_lval33 = load i8, i8* %_secret_ptr32
  %_secret_selecttmp = call i8 @select.cmov.asm.i8(i1 %_secret_condtmp, i8 -128, i8 %_secret_lval33)
  store i8 %_secret_selecttmp, i8* %_secret_ptr
  %_secret_lval34 = load i1, i1* %_secret___m3
  %_secret_lnottmp = xor i1 %_secret_lval34, true
  store i1 %_secret_lnottmp, i1* %_secret___m3
  %_public_lval35 = load i32, i32* %_public___v38_i
  %_secret_lval36 = load i32, i32* %_secret_ctx_num
  %_secret_ugttmp = icmp ugt i32 %_public_lval35, %_secret_lval36
  store i1 %_secret_ugttmp, i1* %_secret___m4
  %_public_lval37 = load i32, i32* %_public___v38_i
  %_public_lhssext38 = zext i32 %_public_lval37 to i64
  %_public_ugtetmp39 = icmp uge i64 %_public_lhssext38, 0
  %_public_zexttmp40 = zext i1 %_public_ugtetmp39 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp40)
  %_public_lval41 = load i32, i32* %_public___v38_i
  %_public_lhssext42 = zext i32 %_public_lval41 to i64
  %_public_ulttmp43 = icmp ult i64 %_public_lhssext42, 64
  %_public_zexttmp44 = zext i1 %_public_ulttmp43 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp44)
  %_secret_structgep45 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 3
  %_public_lval46 = load i32, i32* %_public___v38_i
  %_secret_ptr47 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep45, i32 0, i32 %_public_lval46
  %_secret_lval48 = load i1, i1* %_secret___m4
  %_secret_landtmp49 = and i1 true, %_secret_lval48
  %_secret_lval50 = load i1, i1* %_secret___m3
  %_secret_landtmp51 = and i1 %_secret_landtmp49, %_secret_lval50
  %_secret_lval52 = load i1, i1* %_secret___rnset
  %_secret_landtmp53 = and i1 %_secret_landtmp51, %_secret_lval52
  %_secret_condtmp54 = icmp ne i1 %_secret_landtmp53, false
  %_public_lval55 = load i32, i32* %_public___v38_i
  %_public_lhssext56 = zext i32 %_public_lval55 to i64
  %_public_ugtetmp57 = icmp uge i64 %_public_lhssext56, 0
  %_public_zexttmp58 = zext i1 %_public_ugtetmp57 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp58)
  %_public_lval59 = load i32, i32* %_public___v38_i
  %_public_lhssext60 = zext i32 %_public_lval59 to i64
  %_public_ulttmp61 = icmp ult i64 %_public_lhssext60, 64
  %_public_zexttmp62 = zext i1 %_public_ulttmp61 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp62)
  %_secret_structgep63 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 3
  %_public_lval64 = load i32, i32* %_public___v38_i
  %_secret_ptr65 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep63, i32 0, i32 %_public_lval64
  %_secret_lval66 = load i8, i8* %_secret_ptr65
  %_secret_selecttmp67 = call i8 @select.cmov.asm.i8(i1 %_secret_condtmp54, i8 0, i8 %_secret_lval66)
  store i8 %_secret_selecttmp67, i8* %_secret_ptr47
  %_secret_lval68 = load i1, i1* %_secret___v37_len_in_first_block
  store i1 %_secret_lval68, i1* %_secret___m5
  %_public_lval69 = load i32, i32* %_public___v38_i
  %_public_ugtetmp70 = icmp uge i32 %_public_lval69, 60
  %_public_branchcompare71 = icmp eq i1 %_public_ugtetmp70, true
  br i1 %_public_branchcompare71, label %thenbranch72, label %elsebranch

thenbranch72:                                     ; preds = %thenbranch
  %_public_lval73 = load i32, i32* %_public___v38_i
  %_public_subtmp = sub i32 63, %_public_lval73
  %_public_multmp = mul i32 %_public_subtmp, 8
  store i32 %_public_multmp, i32* %_public___v39_shift
  %_public_lval74 = load i32, i32* %_public___v38_i
  %_public_lhssext75 = zext i32 %_public_lval74 to i64
  %_public_ugtetmp76 = icmp uge i64 %_public_lhssext75, 0
  %_public_zexttmp77 = zext i1 %_public_ugtetmp76 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp77)
  %_public_lval78 = load i32, i32* %_public___v38_i
  %_public_lhssext79 = zext i32 %_public_lval78 to i64
  %_public_ulttmp80 = icmp ult i64 %_public_lhssext79, 64
  %_public_zexttmp81 = zext i1 %_public_ulttmp80 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp81)
  %_secret_structgep82 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 3
  %_public_lval83 = load i32, i32* %_public___v38_i
  %_secret_ptr84 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep82, i32 0, i32 %_public_lval83
  %_secret_lval85 = load i1, i1* %_secret___m5
  %_secret_landtmp86 = and i1 true, %_secret_lval85
  %_secret_lval87 = load i1, i1* %_secret___m4
  %_secret_landtmp88 = and i1 %_secret_landtmp86, %_secret_lval87
  %_secret_lval89 = load i1, i1* %_secret___m3
  %_secret_landtmp90 = and i1 %_secret_landtmp88, %_secret_lval89
  %_secret_lval91 = load i1, i1* %_secret___rnset
  %_secret_landtmp92 = and i1 %_secret_landtmp90, %_secret_lval91
  %_secret_condtmp93 = icmp ne i1 %_secret_landtmp92, false
  %_public_lval94 = load i32, i32* %_public___v39_shift
  %_public_icast = zext i32 %_public_lval94 to i64
  %_public_slttmp = icmp slt i64 %_public_icast, 32
  %_public_zexttmp95 = zext i1 %_public_slttmp to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp95)
  %_secret_structgep96 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 1
  %_secret_lval97 = load i32, i32* %_secret_structgep96
  %_public_lval98 = load i32, i32* %_public___v39_shift
  %_secret_lrshift = lshr i32 %_secret_lval97, %_public_lval98
  %_secret_ucast = trunc i32 %_secret_lrshift to i8
  %_public_lval99 = load i32, i32* %_public___v38_i
  %_public_lhssext100 = zext i32 %_public_lval99 to i64
  %_public_ugtetmp101 = icmp uge i64 %_public_lhssext100, 0
  %_public_zexttmp102 = zext i1 %_public_ugtetmp101 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp102)
  %_public_lval103 = load i32, i32* %_public___v38_i
  %_public_lhssext104 = zext i32 %_public_lval103 to i64
  %_public_ulttmp105 = icmp ult i64 %_public_lhssext104, 64
  %_public_zexttmp106 = zext i1 %_public_ulttmp105 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp106)
  %_secret_structgep107 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 3
  %_public_lval108 = load i32, i32* %_public___v38_i
  %_secret_ptr109 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep107, i32 0, i32 %_public_lval108
  %_secret_lval110 = load i8, i8* %_secret_ptr109
  %_secret_selecttmp111 = call i8 @select.cmov.asm.i8(i1 %_secret_condtmp93, i8 %_secret_ucast, i8 %_secret_lval110)
  store i8 %_secret_selecttmp111, i8* %_secret_ptr84
  br label %branchmerge162

elsebranch:                                       ; preds = %thenbranch
  %_public_lval112 = load i32, i32* %_public___v38_i
  %_public_ugtetmp113 = icmp uge i32 %_public_lval112, 56
  %_public_branchcompare114 = icmp eq i1 %_public_ugtetmp113, true
  br i1 %_public_branchcompare114, label %thenbranch115, label %elsebranch161

thenbranch115:                                    ; preds = %elsebranch
  %_public_lval116 = load i32, i32* %_public___v38_i
  %_public_subtmp117 = sub i32 59, %_public_lval116
  %_public_multmp118 = mul i32 %_public_subtmp117, 8
  store i32 %_public_multmp118, i32* %_public___v40_shift
  %_public_lval119 = load i32, i32* %_public___v38_i
  %_public_lhssext120 = zext i32 %_public_lval119 to i64
  %_public_ugtetmp121 = icmp uge i64 %_public_lhssext120, 0
  %_public_zexttmp122 = zext i1 %_public_ugtetmp121 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp122)
  %_public_lval123 = load i32, i32* %_public___v38_i
  %_public_lhssext124 = zext i32 %_public_lval123 to i64
  %_public_ulttmp125 = icmp ult i64 %_public_lhssext124, 64
  %_public_zexttmp126 = zext i1 %_public_ulttmp125 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp126)
  %_secret_structgep127 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 3
  %_public_lval128 = load i32, i32* %_public___v38_i
  %_secret_ptr129 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep127, i32 0, i32 %_public_lval128
  %_secret_lval130 = load i1, i1* %_secret___m5
  %_secret_landtmp131 = and i1 true, %_secret_lval130
  %_secret_lval132 = load i1, i1* %_secret___m4
  %_secret_landtmp133 = and i1 %_secret_landtmp131, %_secret_lval132
  %_secret_lval134 = load i1, i1* %_secret___m3
  %_secret_landtmp135 = and i1 %_secret_landtmp133, %_secret_lval134
  %_secret_lval136 = load i1, i1* %_secret___rnset
  %_secret_landtmp137 = and i1 %_secret_landtmp135, %_secret_lval136
  %_secret_condtmp138 = icmp ne i1 %_secret_landtmp137, false
  %_public_lval139 = load i32, i32* %_public___v40_shift
  %_public_icast140 = zext i32 %_public_lval139 to i64
  %_public_slttmp141 = icmp slt i64 %_public_icast140, 32
  %_public_zexttmp142 = zext i1 %_public_slttmp141 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp142)
  %_secret_structgep143 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 2
  %_secret_lval144 = load i32, i32* %_secret_structgep143
  %_public_lval145 = load i32, i32* %_public___v40_shift
  %_secret_lrshift146 = lshr i32 %_secret_lval144, %_public_lval145
  %_secret_ucast147 = trunc i32 %_secret_lrshift146 to i8
  %_public_lval148 = load i32, i32* %_public___v38_i
  %_public_lhssext149 = zext i32 %_public_lval148 to i64
  %_public_ugtetmp150 = icmp uge i64 %_public_lhssext149, 0
  %_public_zexttmp151 = zext i1 %_public_ugtetmp150 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp151)
  %_public_lval152 = load i32, i32* %_public___v38_i
  %_public_lhssext153 = zext i32 %_public_lval152 to i64
  %_public_ulttmp154 = icmp ult i64 %_public_lhssext153, 64
  %_public_zexttmp155 = zext i1 %_public_ulttmp154 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp155)
  %_secret_structgep156 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 3
  %_public_lval157 = load i32, i32* %_public___v38_i
  %_secret_ptr158 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep156, i32 0, i32 %_public_lval157
  %_secret_lval159 = load i8, i8* %_secret_ptr158
  %_secret_selecttmp160 = call i8 @select.cmov.asm.i8(i1 %_secret_condtmp138, i8 %_secret_ucast147, i8 %_secret_lval159)
  store i8 %_secret_selecttmp160, i8* %_secret_ptr129
  br label %branchmerge

elsebranch161:                                    ; preds = %elsebranch
  br label %branchmerge

branchmerge:                                      ; preds = %elsebranch161, %thenbranch115
  br label %branchmerge162

branchmerge162:                                   ; preds = %branchmerge, %thenbranch72
  %_secret_lval163 = load i1, i1* %_secret___m5
  %_secret_lnottmp164 = xor i1 %_secret_lval163, true
  store i1 %_secret_lnottmp164, i1* %_secret___m5
  %_secret_lval165 = load i1, i1* %_secret___m4
  %_secret_lnottmp166 = xor i1 %_secret_lval165, true
  store i1 %_secret_lnottmp166, i1* %_secret___m4
  br label %branchmerge168

elsebranch167:                                    ; preds = %entry
  br label %branchmerge168

branchmerge168:                                   ; preds = %elsebranch167, %branchmerge162
  %_secret_structgep169 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 3
  %_secret_structgep170 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 3
  %_secret_arrtoptr = bitcast [64 x i8]* %_secret_structgep170 to i8*
  call void @sha1_block_data_order(%SHA_CTX* %ctx, i8* %_secret_arrtoptr, i32 1)
  store i32 56, i32* %_public___v42___v41_len
  %_public_lval171 = load i32, i32* %_public___v42___v41_len
  %_public_icast172 = zext i32 %_public_lval171 to i64
  %_public_addtmp173 = add i64 0, %_public_icast172
  %_public_truncbinop = trunc i64 %_public_addtmp173 to i8
  %_public_sgttmp = icmp sgt i8 %_public_truncbinop, 0
  %_public_zexttmp174 = zext i1 %_public_sgttmp to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp174)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_public_lval175 = load i32, i32* %_public___v42___v41_len
  %_public_icast176 = zext i32 %_public_lval175 to i64
  %_public_addtmp177 = add i64 0, %_public_icast176
  %_public_truncbinop178 = trunc i64 %_public_addtmp177 to i8
  %_public_subtmp179 = sub i8 %_public_truncbinop178, 1
  %_public_lhssext180 = sext i8 %_public_subtmp179 to i64
  %_public_sgtetmp = icmp sge i64 %_public_lhssext180, 0
  %_public_zexttmp181 = zext i1 %_public_sgtetmp to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp181)
  %_public_lval182 = load i32, i32* %_public___v42___v41_len
  %_public_icast183 = zext i32 %_public_lval182 to i64
  %_public_addtmp184 = add i64 0, %_public_icast183
  %_public_truncbinop185 = trunc i64 %_public_addtmp184 to i8
  %_public_subtmp186 = sub i8 %_public_truncbinop185, 1
  %_public_lhssext187 = sext i8 %_public_subtmp186 to i64
  %_public_slttmp188 = icmp slt i64 %_public_lhssext187, 64
  %_public_zexttmp189 = zext i1 %_public_slttmp188 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp189)
  %_secret_structgep190 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 3
  %_secret_arrview = alloca i8*
  %_secret_source_gep = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep190, i8 0, i8 0
  store i8* %_secret_source_gep, i8** %_secret_arrview
  %_public_lval191 = load i32, i32* %_public___v42___v41_len
  %_public_icast192 = zext i32 %_public_lval191 to i64
  %_public_addtmp193 = add i64 0, %_public_icast192
  %_public_truncbinop194 = trunc i64 %_public_addtmp193 to i8
  %_public_sgttmp195 = icmp sgt i8 %_public_truncbinop194, 0
  %_public_zexttmp196 = zext i1 %_public_sgttmp195 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp196)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_public_lval197 = load i32, i32* %_public___v42___v41_len
  %_public_icast198 = zext i32 %_public_lval197 to i64
  %_public_addtmp199 = add i64 0, %_public_icast198
  %_public_truncbinop200 = trunc i64 %_public_addtmp199 to i8
  %_public_subtmp201 = sub i8 %_public_truncbinop200, 1
  %_public_lhssext202 = sext i8 %_public_subtmp201 to i64
  %_public_sgtetmp203 = icmp sge i64 %_public_lhssext202, 0
  %_public_zexttmp204 = zext i1 %_public_sgtetmp203 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp204)
  %_public_lval205 = load i32, i32* %_public___v42___v41_len
  %_public_icast206 = zext i32 %_public_lval205 to i64
  %_public_addtmp207 = add i64 0, %_public_icast206
  %_public_truncbinop208 = trunc i64 %_public_addtmp207 to i8
  %_public_subtmp209 = sub i8 %_public_truncbinop208, 1
  %_public_lhssext210 = sext i8 %_public_subtmp209 to i64
  %_public_slttmp211 = icmp slt i64 %_public_lhssext210, 64
  %_public_zexttmp212 = zext i1 %_public_slttmp211 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp212)
  %_secret_structgep213 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 3
  %_secret_arrview214 = alloca i8*
  %_secret_source_gep215 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep213, i8 0, i8 0
  store i8* %_secret_source_gep215, i8** %_secret_arrview214
  %_secret_dynarrarg = load i8*, i8** %_secret_arrview214
  %_public_lval216 = load i32, i32* %_public___v42___v41_len
  call void @_memzero(i8* %_secret_dynarrarg, i32 %_public_lval216)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_structgep217 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 3
  %_secret_arrview218 = alloca i8*
  %_secret_source_gep219 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep217, i8 0, i8 56
  store i8* %_secret_source_gep219, i8** %_secret_arrview218
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_structgep220 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 3
  %_secret_arrview221 = alloca i8*
  %_secret_source_gep222 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep220, i8 0, i8 56
  store i8* %_secret_source_gep222, i8** %_secret_arrview221
  %_secret_dynarrarg223 = load i8*, i8** %_secret_arrview221
  %_secret_structgep224 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 2
  %_secret_lval225 = load i32, i32* %_secret_structgep224
  call void @store32_be(i8* %_secret_dynarrarg223, i32 %_secret_lval225)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_structgep226 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 3
  %_secret_arrview227 = alloca i8*
  %_secret_source_gep228 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep226, i8 0, i8 60
  store i8* %_secret_source_gep228, i8** %_secret_arrview227
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_structgep229 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 3
  %_secret_arrview230 = alloca i8*
  %_secret_source_gep231 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep229, i8 0, i8 60
  store i8* %_secret_source_gep231, i8** %_secret_arrview230
  %_secret_dynarrarg232 = load i8*, i8** %_secret_arrview230
  %_secret_structgep233 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 1
  %_secret_lval234 = load i32, i32* %_secret_structgep233
  call void @store32_be(i8* %_secret_dynarrarg232, i32 %_secret_lval234)
  %_secret___v43_h = alloca [5 x i32]
  %_secret_structgep235 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 0
  %_secret_sourcecasted = bitcast [5 x i32]* %_secret_structgep235 to i8*
  %_secret_destcast = bitcast [5 x i32]* %_secret___v43_h to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %_secret_destcast, i8* %_secret_sourcecasted, i64 20, i32 0, i1 false)
  %_secret_structgep236 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 3
  %_secret_structgep237 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 3
  %_secret_arrtoptr238 = bitcast [64 x i8]* %_secret_structgep237 to i8*
  call void @sha1_block_data_order(%SHA_CTX* %ctx, i8* %_secret_arrtoptr238, i32 1)
  %_secret_lval239 = load i1, i1* %_secret___v37_len_in_first_block
  store i1 %_secret_lval239, i1* %_secret___m6
  %_public_calltmp240 = call i32 @__VERIFIER_nondet_unsigned_int()
  store i32 %_public_calltmp240, i32* %_public___v44_j
  %_public_lval241 = load i32, i32* %_public___v44_j
  %_public_ulttmp242 = icmp ult i32 %_public_lval241, 5
  %_public_branchcompare243 = icmp eq i1 %_public_ulttmp242, true
  br i1 %_public_branchcompare243, label %thenbranch244, label %elsebranch296

thenbranch244:                                    ; preds = %branchmerge168
  %_public_lval245 = load i32, i32* %_public___v44_j
  %_public_lval246 = load i32, i32* %_public___v44_j
  %_public_addtmp247 = add i32 %_public_lval246, 1
  %_public_ulttmp248 = icmp ult i32 %_public_lval245, %_public_addtmp247
  %_public_zexttmp249 = zext i1 %_public_ulttmp248 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp249)
  %_public_lval250 = load i32, i32* %_public___v44_j
  %_public_ulttmp251 = icmp ult i32 0, %_public_lval250
  %_public_lval252 = load i32, i32* %_public___v44_j
  %_public_eqtmp253 = icmp eq i32 0, %_public_lval252
  %_public_lortmp254 = or i1 %_public_ulttmp251, %_public_eqtmp253
  %_public_zexttmp255 = zext i1 %_public_lortmp254 to i32
  call void @__VERIFIER_assume(i32 %_public_zexttmp255)
  %_public_lval256 = load i32, i32* %_public___v44_j
  %_public_lhssext257 = zext i32 %_public_lval256 to i64
  %_public_ugtetmp258 = icmp uge i64 %_public_lhssext257, 0
  %_public_zexttmp259 = zext i1 %_public_ugtetmp258 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp259)
  %_public_lval260 = load i32, i32* %_public___v44_j
  %_public_lhssext261 = zext i32 %_public_lval260 to i64
  %_public_ulttmp262 = icmp ult i64 %_public_lhssext261, 5
  %_public_zexttmp263 = zext i1 %_public_ulttmp262 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp263)
  %_secret_structgep264 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 0
  %_public_lval265 = load i32, i32* %_public___v44_j
  %_secret_ptr266 = getelementptr inbounds [5 x i32], [5 x i32]* %_secret_structgep264, i32 0, i32 %_public_lval265
  %_secret_lval267 = load i1, i1* %_secret___m6
  %_secret_landtmp268 = and i1 true, %_secret_lval267
  %_secret_lval269 = load i1, i1* %_secret___rnset
  %_secret_landtmp270 = and i1 %_secret_landtmp268, %_secret_lval269
  %_secret_condtmp271 = icmp ne i1 %_secret_landtmp270, false
  %_public_lval272 = load i32, i32* %_public___v44_j
  %_public_lhssext273 = zext i32 %_public_lval272 to i64
  %_public_ugtetmp274 = icmp uge i64 %_public_lhssext273, 0
  %_public_zexttmp275 = zext i1 %_public_ugtetmp274 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp275)
  %_public_lval276 = load i32, i32* %_public___v44_j
  %_public_lhssext277 = zext i32 %_public_lval276 to i64
  %_public_ulttmp278 = icmp ult i64 %_public_lhssext277, 5
  %_public_zexttmp279 = zext i1 %_public_ulttmp278 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp279)
  %_public_lval280 = load i32, i32* %_public___v44_j
  %_secret_ptr281 = getelementptr inbounds [5 x i32], [5 x i32]* %_secret___v43_h, i32 0, i32 %_public_lval280
  %_secret_lval282 = load i32, i32* %_secret_ptr281
  %_public_lval283 = load i32, i32* %_public___v44_j
  %_public_lhssext284 = zext i32 %_public_lval283 to i64
  %_public_ugtetmp285 = icmp uge i64 %_public_lhssext284, 0
  %_public_zexttmp286 = zext i1 %_public_ugtetmp285 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp286)
  %_public_lval287 = load i32, i32* %_public___v44_j
  %_public_lhssext288 = zext i32 %_public_lval287 to i64
  %_public_ulttmp289 = icmp ult i64 %_public_lhssext288, 5
  %_public_zexttmp290 = zext i1 %_public_ulttmp289 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp290)
  %_secret_structgep291 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 0
  %_public_lval292 = load i32, i32* %_public___v44_j
  %_secret_ptr293 = getelementptr inbounds [5 x i32], [5 x i32]* %_secret_structgep291, i32 0, i32 %_public_lval292
  %_secret_lval294 = load i32, i32* %_secret_ptr293
  %_secret_selecttmp295 = call i32 @select.cmov.sel.i32(i1 %_secret_condtmp271, i32 %_secret_lval282, i32 %_secret_lval294)
  store i32 %_secret_selecttmp295, i32* %_secret_ptr266
  br label %branchmerge297

elsebranch296:                                    ; preds = %branchmerge168
  br label %branchmerge297

branchmerge297:                                   ; preds = %elsebranch296, %thenbranch244
  %_secret_lval298 = load i1, i1* %_secret___m6
  %_secret_lnottmp299 = xor i1 %_secret_lval298, true
  store i1 %_secret_lnottmp299, i1* %_secret___m6
  %_public_structgep = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 4
  store i32 0, i32* %_public_structgep
  %_secret_structgep300 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 3
  %_secret_structgep301 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 3
  %_secret_arrtoptr302 = bitcast [64 x i8]* %_secret_structgep301 to i8*
  call void @_memzero(i8* %_secret_arrtoptr302, i32 64)
  %_secret_dynarrarg303 = load i8*, i8** %_secret_arrarg
  call void @SHA1_MAKE_STRING(%SHA_CTX* %ctx, i8* %_secret_dynarrarg303)
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
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval = load i32, i32* %_secret_slen
  %_secret_ucast = zext i32 %_secret_lval to i64
  %_secret_lshift = shl i64 %_secret_ucast, 3
  store i64 %_secret_lshift, i64* %_secret___v45_l
  call void @__VERIFIER_assert(i32 1)
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
  call void @__VERIFIER_assert(i32 1)
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
  call void @__VERIFIER_assert(i32 1)
  %_public_lval19 = load i32, i32* %_public___v47_maxlen
  %_public_udivtmp = udiv i32 %_public_lval19, 64
  store i32 %_public_udivtmp, i32* %_public___v48_nblocks
  call void @__VERIFIER_assert(i32 1)
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
  %_public_calltmp = call i32 @__VERIFIER_nondet_unsigned_int()
  store i32 %_public_calltmp, i32* %_public___v55_i
  %_public_lval27 = load i32, i32* %_public___v55_i
  %_public_lval28 = load i32, i32* %_public___v51_nbytes
  %_public_ulttmp = icmp ult i32 %_public_lval27, %_public_lval28
  %_public_branchcompare = icmp eq i1 %_public_ulttmp, true
  br i1 %_public_branchcompare, label %thenbranch, label %elsebranch301

thenbranch:                                       ; preds = %entry
  %_public_lval29 = load i32, i32* %_public___v55_i
  %_public_lval30 = load i32, i32* %_public___v55_i
  %_public_addtmp31 = add i32 %_public_lval30, 1
  %_public_ulttmp32 = icmp ult i32 %_public_lval29, %_public_addtmp31
  %_public_zexttmp33 = zext i1 %_public_ulttmp32 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp33)
  %_public_lval34 = load i32, i32* %_public___v55_i
  %_public_ulttmp35 = icmp ult i32 0, %_public_lval34
  %_public_lval36 = load i32, i32* %_public___v55_i
  %_public_eqtmp = icmp eq i32 0, %_public_lval36
  %_public_lortmp = or i1 %_public_ulttmp35, %_public_eqtmp
  %_public_zexttmp37 = zext i1 %_public_lortmp to i32
  call void @__VERIFIER_assume(i32 %_public_zexttmp37)
  call void @__VERIFIER_assert(i32 1)
  %_public_lval38 = load i32, i32* %_public___v55_i
  %_public_uremtmp39 = urem i32 %_public_lval38, 64
  store i32 %_public_uremtmp39, i32* %_public___v56_j
  %_public_lval40 = load i32, i32* %_public___v55_i
  %_secret_lval41 = load i32, i32* %_secret_slen
  %_secret_ulttmp42 = icmp ult i32 %_public_lval40, %_secret_lval41
  store i1 %_secret_ulttmp42, i1* %_secret___m7
  %_public_lval43 = load i32, i32* %_public___v55_i
  %_public_lval44 = load i32, i32* %_public____in_len
  %_public_ulttmp45 = icmp ult i32 %_public_lval43, %_public_lval44
  %_public_branchcompare46 = icmp eq i1 %_public_ulttmp45, true
  br i1 %_public_branchcompare46, label %thenbranch47, label %elsebranch

thenbranch47:                                     ; preds = %thenbranch
  %_public_lval48 = load i32, i32* %_public___v56_j
  %_public_lhssext = zext i32 %_public_lval48 to i64
  %_public_ugtetmp = icmp uge i64 %_public_lhssext, 0
  %_public_zexttmp49 = zext i1 %_public_ugtetmp to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp49)
  %_public_lval50 = load i32, i32* %_public___v56_j
  %_public_lhssext51 = zext i32 %_public_lval50 to i64
  %_public_ulttmp52 = icmp ult i64 %_public_lhssext51, 64
  %_public_zexttmp53 = zext i1 %_public_ulttmp52 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp53)
  %_secret_structgep54 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 3
  %_public_lval55 = load i32, i32* %_public___v56_j
  %_secret_ptr = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep54, i32 0, i32 %_public_lval55
  %_secret_lval56 = load i1, i1* %_secret___m7
  %_secret_landtmp = and i1 true, %_secret_lval56
  %_secret_lval57 = load i1, i1* %_secret___rnset
  %_secret_landtmp58 = and i1 %_secret_landtmp, %_secret_lval57
  %_secret_condtmp = icmp ne i1 %_secret_landtmp58, false
  %_public_lval59 = load i32, i32* %_public___v55_i
  %_public_lhssext60 = zext i32 %_public_lval59 to i64
  %_public_ugtetmp61 = icmp uge i64 %_public_lhssext60, 0
  %_public_zexttmp62 = zext i1 %_public_ugtetmp61 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp62)
  %_public_lval63 = load i32, i32* %_public___v55_i
  %_public_lval64 = load i32, i32* %_public____in_len
  %_public_icast = zext i32 %_public_lval64 to i64
  %_public_lhssext65 = zext i32 %_public_lval63 to i64
  %_public_ulttmp66 = icmp ult i64 %_public_lhssext65, %_public_icast
  %_public_zexttmp67 = zext i1 %_public_ulttmp66 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp67)
  %_public_lval68 = load i32, i32* %_public___v55_i
  %_secret_dyn = load i8*, i8** %_secret_arrarg
  %_secret_ptr69 = getelementptr inbounds i8, i8* %_secret_dyn, i32 %_public_lval68
  %_secret_lval70 = load i8, i8* %_secret_ptr69
  %_public_lval71 = load i32, i32* %_public___v56_j
  %_public_lhssext72 = zext i32 %_public_lval71 to i64
  %_public_ugtetmp73 = icmp uge i64 %_public_lhssext72, 0
  %_public_zexttmp74 = zext i1 %_public_ugtetmp73 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp74)
  %_public_lval75 = load i32, i32* %_public___v56_j
  %_public_lhssext76 = zext i32 %_public_lval75 to i64
  %_public_ulttmp77 = icmp ult i64 %_public_lhssext76, 64
  %_public_zexttmp78 = zext i1 %_public_ulttmp77 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp78)
  %_secret_structgep79 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 3
  %_public_lval80 = load i32, i32* %_public___v56_j
  %_secret_ptr81 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep79, i32 0, i32 %_public_lval80
  %_secret_lval82 = load i8, i8* %_secret_ptr81
  %_secret_selecttmp = call i8 @select.cmov.asm.i8(i1 %_secret_condtmp, i8 %_secret_lval70, i8 %_secret_lval82)
  store i8 %_secret_selecttmp, i8* %_secret_ptr
  br label %branchmerge

elsebranch:                                       ; preds = %thenbranch
  br label %branchmerge

branchmerge:                                      ; preds = %elsebranch, %thenbranch47
  %_secret_lval83 = load i1, i1* %_secret___m7
  %_secret_lnottmp = xor i1 %_secret_lval83, true
  store i1 %_secret_lnottmp, i1* %_secret___m7
  %_public_lval84 = load i32, i32* %_public___v55_i
  %_secret_lval85 = load i32, i32* %_secret_slen
  %_secret_eqtmp = icmp eq i32 %_public_lval84, %_secret_lval85
  store i1 %_secret_eqtmp, i1* %_secret___m8
  %_public_lval86 = load i32, i32* %_public___v56_j
  %_public_lhssext87 = zext i32 %_public_lval86 to i64
  %_public_ugtetmp88 = icmp uge i64 %_public_lhssext87, 0
  %_public_zexttmp89 = zext i1 %_public_ugtetmp88 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp89)
  %_public_lval90 = load i32, i32* %_public___v56_j
  %_public_lhssext91 = zext i32 %_public_lval90 to i64
  %_public_ulttmp92 = icmp ult i64 %_public_lhssext91, 64
  %_public_zexttmp93 = zext i1 %_public_ulttmp92 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp93)
  %_secret_structgep94 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 3
  %_public_lval95 = load i32, i32* %_public___v56_j
  %_secret_ptr96 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep94, i32 0, i32 %_public_lval95
  %_secret_lval97 = load i1, i1* %_secret___m8
  %_secret_landtmp98 = and i1 true, %_secret_lval97
  %_secret_lval99 = load i1, i1* %_secret___m7
  %_secret_landtmp100 = and i1 %_secret_landtmp98, %_secret_lval99
  %_secret_lval101 = load i1, i1* %_secret___rnset
  %_secret_landtmp102 = and i1 %_secret_landtmp100, %_secret_lval101
  %_secret_condtmp103 = icmp ne i1 %_secret_landtmp102, false
  %_public_lval104 = load i32, i32* %_public___v56_j
  %_public_lhssext105 = zext i32 %_public_lval104 to i64
  %_public_ugtetmp106 = icmp uge i64 %_public_lhssext105, 0
  %_public_zexttmp107 = zext i1 %_public_ugtetmp106 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp107)
  %_public_lval108 = load i32, i32* %_public___v56_j
  %_public_lhssext109 = zext i32 %_public_lval108 to i64
  %_public_ulttmp110 = icmp ult i64 %_public_lhssext109, 64
  %_public_zexttmp111 = zext i1 %_public_ulttmp110 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp111)
  %_secret_structgep112 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 3
  %_public_lval113 = load i32, i32* %_public___v56_j
  %_secret_ptr114 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep112, i32 0, i32 %_public_lval113
  %_secret_lval115 = load i8, i8* %_secret_ptr114
  %_secret_selecttmp116 = call i8 @select.cmov.asm.i8(i1 %_secret_condtmp103, i8 -128, i8 %_secret_lval115)
  store i8 %_secret_selecttmp116, i8* %_secret_ptr96
  %_secret_lval117 = load i1, i1* %_secret___m8
  %_secret_lnottmp118 = xor i1 %_secret_lval117, true
  store i1 %_secret_lnottmp118, i1* %_secret___m8
  store i1 false, i1* %_secret___m9
  %_secret_lval119 = load i1, i1* %_secret___v53_len_in_first_block
  store i1 %_secret_lval119, i1* %_secret___m10
  %_secret_lval120 = load i1, i1* %_secret___m10
  %_secret_landtmp121 = and i1 true, %_secret_lval120
  %_secret_lval122 = load i1, i1* %_secret___m8
  %_secret_landtmp123 = and i1 %_secret_landtmp121, %_secret_lval122
  %_secret_lval124 = load i1, i1* %_secret___m7
  %_secret_landtmp125 = and i1 %_secret_landtmp123, %_secret_lval124
  %_secret_lval126 = load i1, i1* %_secret___rnset
  %_secret_landtmp127 = and i1 %_secret_landtmp125, %_secret_lval126
  %_secret_condtmp128 = icmp ne i1 %_secret_landtmp127, false
  %_secret_lval129 = load i1, i1* %_secret___m9
  %_secret_selecttmp130 = call i1 @select.cmov.asm.i1(i1 %_secret_condtmp128, i1 true, i1 %_secret_lval129)
  store i1 %_secret_selecttmp130, i1* %_secret___m9
  %_secret_lval131 = load i1, i1* %_secret___m10
  %_secret_lnottmp132 = xor i1 %_secret_lval131, true
  store i1 %_secret_lnottmp132, i1* %_secret___m10
  %_secret_lval133 = load i1, i1* %_secret___m10
  %_secret_landtmp134 = and i1 true, %_secret_lval133
  %_secret_lval135 = load i1, i1* %_secret___m8
  %_secret_landtmp136 = and i1 %_secret_landtmp134, %_secret_lval135
  %_secret_lval137 = load i1, i1* %_secret___m7
  %_secret_landtmp138 = and i1 %_secret_landtmp136, %_secret_lval137
  %_secret_lval139 = load i1, i1* %_secret___rnset
  %_secret_landtmp140 = and i1 %_secret_landtmp138, %_secret_lval139
  %_secret_condtmp141 = icmp ne i1 %_secret_landtmp140, false
  %_public_lval142 = load i32, i32* %_public___v55_i
  %_secret_lval143 = load i32, i32* %_secret_slen
  %_secret_addtmp144 = add i32 %_secret_lval143, 64
  %_secret_ugttmp = icmp ugt i32 %_public_lval142, %_secret_addtmp144
  %_secret_lval145 = load i1, i1* %_secret___m9
  %_secret_selecttmp146 = call i1 @select.cmov.asm.i1(i1 %_secret_condtmp141, i1 %_secret_ugttmp, i1 %_secret_lval145)
  store i1 %_secret_selecttmp146, i1* %_secret___m9
  %_secret___m9147 = load i1, i1* %_secret___m9
  store i1 %_secret___m9147, i1* %_secret___m11
  %_public_lval148 = load i32, i32* %_public___v56_j
  %_public_ugtetmp149 = icmp uge i32 %_public_lval148, 56
  %_public_branchcompare150 = icmp eq i1 %_public_ugtetmp149, true
  br i1 %_public_branchcompare150, label %thenbranch151, label %elsebranch195

thenbranch151:                                    ; preds = %branchmerge
  %_public_lval152 = load i32, i32* %_public___v56_j
  %_public_subtmp = sub i32 63, %_public_lval152
  %_public_multmp153 = mul i32 %_public_subtmp, 8
  store i32 %_public_multmp153, i32* %_public___v57_shift
  %_public_lval154 = load i32, i32* %_public___v56_j
  %_public_lhssext155 = zext i32 %_public_lval154 to i64
  %_public_ugtetmp156 = icmp uge i64 %_public_lhssext155, 0
  %_public_zexttmp157 = zext i1 %_public_ugtetmp156 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp157)
  %_public_lval158 = load i32, i32* %_public___v56_j
  %_public_lhssext159 = zext i32 %_public_lval158 to i64
  %_public_ulttmp160 = icmp ult i64 %_public_lhssext159, 64
  %_public_zexttmp161 = zext i1 %_public_ulttmp160 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp161)
  %_secret_structgep162 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 3
  %_public_lval163 = load i32, i32* %_public___v56_j
  %_secret_ptr164 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep162, i32 0, i32 %_public_lval163
  %_secret_lval165 = load i1, i1* %_secret___m11
  %_secret_landtmp166 = and i1 true, %_secret_lval165
  %_secret_lval167 = load i1, i1* %_secret___m8
  %_secret_landtmp168 = and i1 %_secret_landtmp166, %_secret_lval167
  %_secret_lval169 = load i1, i1* %_secret___m7
  %_secret_landtmp170 = and i1 %_secret_landtmp168, %_secret_lval169
  %_secret_lval171 = load i1, i1* %_secret___rnset
  %_secret_landtmp172 = and i1 %_secret_landtmp170, %_secret_lval171
  %_secret_condtmp173 = icmp ne i1 %_secret_landtmp172, false
  %_public_lval174 = load i32, i32* %_public___v57_shift
  %_public_icast175 = zext i32 %_public_lval174 to i64
  %_public_slttmp = icmp slt i64 %_public_icast175, 64
  %_public_zexttmp176 = zext i1 %_public_slttmp to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp176)
  %_secret_lval177 = load i64, i64* %_secret___v46_N
  %_public_lval178 = load i32, i32* %_public___v57_shift
  %_secret_rhssext179 = zext i32 %_public_lval178 to i64
  %_secret_lrshift180 = lshr i64 %_secret_lval177, %_secret_rhssext179
  %_secret_ucast181 = trunc i64 %_secret_lrshift180 to i8
  %_public_lval182 = load i32, i32* %_public___v56_j
  %_public_lhssext183 = zext i32 %_public_lval182 to i64
  %_public_ugtetmp184 = icmp uge i64 %_public_lhssext183, 0
  %_public_zexttmp185 = zext i1 %_public_ugtetmp184 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp185)
  %_public_lval186 = load i32, i32* %_public___v56_j
  %_public_lhssext187 = zext i32 %_public_lval186 to i64
  %_public_ulttmp188 = icmp ult i64 %_public_lhssext187, 64
  %_public_zexttmp189 = zext i1 %_public_ulttmp188 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp189)
  %_secret_structgep190 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 3
  %_public_lval191 = load i32, i32* %_public___v56_j
  %_secret_ptr192 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret_structgep190, i32 0, i32 %_public_lval191
  %_secret_lval193 = load i8, i8* %_secret_ptr192
  %_secret_selecttmp194 = call i8 @select.cmov.asm.i8(i1 %_secret_condtmp173, i8 %_secret_ucast181, i8 %_secret_lval193)
  store i8 %_secret_selecttmp194, i8* %_secret_ptr164
  br label %branchmerge196

elsebranch195:                                    ; preds = %branchmerge
  br label %branchmerge196

branchmerge196:                                   ; preds = %elsebranch195, %thenbranch151
  %_secret_lval197 = load i1, i1* %_secret___m11
  %_secret_lnottmp198 = xor i1 %_secret_lval197, true
  store i1 %_secret_lnottmp198, i1* %_secret___m11
  %_public_lval199 = load i32, i32* %_public___v56_j
  %_public_eqtmp200 = icmp eq i32 %_public_lval199, 63
  %_public_branchcompare201 = icmp eq i1 %_public_eqtmp200, true
  br i1 %_public_branchcompare201, label %thenbranch202, label %elsebranch299

thenbranch202:                                    ; preds = %branchmerge196
  %_secret___v58_h = alloca [5 x i32]
  %_secret_structgep203 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 0
  %_secret_sourcecasted = bitcast [5 x i32]* %_secret_structgep203 to i8*
  %_secret_destcast = bitcast [5 x i32]* %_secret___v58_h to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %_secret_destcast, i8* %_secret_sourcecasted, i64 20, i32 0, i1 false)
  %_secret_structgep204 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 3
  %_secret_structgep205 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 3
  %_secret_arrtoptr = bitcast [64 x i8]* %_secret_structgep205 to i8*
  call void @sha1_block_data_order(%SHA_CTX* %ctx, i8* %_secret_arrtoptr, i32 1)
  %_secret_lval206 = load i1, i1* %_secret___v54_done
  store i1 %_secret_lval206, i1* %_secret___m12
  %_public_calltmp207 = call i32 @__VERIFIER_nondet_unsigned_int()
  store i32 %_public_calltmp207, i32* %_public___v59_k
  %_public_lval208 = load i32, i32* %_public___v59_k
  %_public_ulttmp209 = icmp ult i32 %_public_lval208, 5
  %_public_branchcompare210 = icmp eq i1 %_public_ulttmp209, true
  br i1 %_public_branchcompare210, label %thenbranch211, label %elsebranch263

thenbranch211:                                    ; preds = %thenbranch202
  %_public_lval212 = load i32, i32* %_public___v59_k
  %_public_lval213 = load i32, i32* %_public___v59_k
  %_public_addtmp214 = add i32 %_public_lval213, 1
  %_public_ulttmp215 = icmp ult i32 %_public_lval212, %_public_addtmp214
  %_public_zexttmp216 = zext i1 %_public_ulttmp215 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp216)
  %_public_lval217 = load i32, i32* %_public___v59_k
  %_public_ulttmp218 = icmp ult i32 0, %_public_lval217
  %_public_lval219 = load i32, i32* %_public___v59_k
  %_public_eqtmp220 = icmp eq i32 0, %_public_lval219
  %_public_lortmp221 = or i1 %_public_ulttmp218, %_public_eqtmp220
  %_public_zexttmp222 = zext i1 %_public_lortmp221 to i32
  call void @__VERIFIER_assume(i32 %_public_zexttmp222)
  %_public_lval223 = load i32, i32* %_public___v59_k
  %_public_lhssext224 = zext i32 %_public_lval223 to i64
  %_public_ugtetmp225 = icmp uge i64 %_public_lhssext224, 0
  %_public_zexttmp226 = zext i1 %_public_ugtetmp225 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp226)
  %_public_lval227 = load i32, i32* %_public___v59_k
  %_public_lhssext228 = zext i32 %_public_lval227 to i64
  %_public_ulttmp229 = icmp ult i64 %_public_lhssext228, 5
  %_public_zexttmp230 = zext i1 %_public_ulttmp229 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp230)
  %_secret_structgep231 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 0
  %_public_lval232 = load i32, i32* %_public___v59_k
  %_secret_ptr233 = getelementptr inbounds [5 x i32], [5 x i32]* %_secret_structgep231, i32 0, i32 %_public_lval232
  %_secret_lval234 = load i1, i1* %_secret___m12
  %_secret_landtmp235 = and i1 true, %_secret_lval234
  %_secret_lval236 = load i1, i1* %_secret___rnset
  %_secret_landtmp237 = and i1 %_secret_landtmp235, %_secret_lval236
  %_secret_condtmp238 = icmp ne i1 %_secret_landtmp237, false
  %_public_lval239 = load i32, i32* %_public___v59_k
  %_public_lhssext240 = zext i32 %_public_lval239 to i64
  %_public_ugtetmp241 = icmp uge i64 %_public_lhssext240, 0
  %_public_zexttmp242 = zext i1 %_public_ugtetmp241 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp242)
  %_public_lval243 = load i32, i32* %_public___v59_k
  %_public_lhssext244 = zext i32 %_public_lval243 to i64
  %_public_ulttmp245 = icmp ult i64 %_public_lhssext244, 5
  %_public_zexttmp246 = zext i1 %_public_ulttmp245 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp246)
  %_public_lval247 = load i32, i32* %_public___v59_k
  %_secret_ptr248 = getelementptr inbounds [5 x i32], [5 x i32]* %_secret___v58_h, i32 0, i32 %_public_lval247
  %_secret_lval249 = load i32, i32* %_secret_ptr248
  %_public_lval250 = load i32, i32* %_public___v59_k
  %_public_lhssext251 = zext i32 %_public_lval250 to i64
  %_public_ugtetmp252 = icmp uge i64 %_public_lhssext251, 0
  %_public_zexttmp253 = zext i1 %_public_ugtetmp252 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp253)
  %_public_lval254 = load i32, i32* %_public___v59_k
  %_public_lhssext255 = zext i32 %_public_lval254 to i64
  %_public_ulttmp256 = icmp ult i64 %_public_lhssext255, 5
  %_public_zexttmp257 = zext i1 %_public_ulttmp256 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp257)
  %_secret_structgep258 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 0
  %_public_lval259 = load i32, i32* %_public___v59_k
  %_secret_ptr260 = getelementptr inbounds [5 x i32], [5 x i32]* %_secret_structgep258, i32 0, i32 %_public_lval259
  %_secret_lval261 = load i32, i32* %_secret_ptr260
  %_secret_selecttmp262 = call i32 @select.cmov.sel.i32(i1 %_secret_condtmp238, i32 %_secret_lval249, i32 %_secret_lval261)
  store i32 %_secret_selecttmp262, i32* %_secret_ptr233
  br label %branchmerge264

elsebranch263:                                    ; preds = %thenbranch202
  br label %branchmerge264

branchmerge264:                                   ; preds = %elsebranch263, %thenbranch211
  %_secret_lval265 = load i1, i1* %_secret___m12
  %_secret_lnottmp266 = xor i1 %_secret_lval265, true
  store i1 %_secret_lnottmp266, i1* %_secret___m12
  %_public_lval267 = load i32, i32* %_public___v55_i
  %_secret_lval268 = load i32, i32* %_secret_slen
  store i8 0, i8* %_secret___m13
  %_secret_lval269 = load i1, i1* %_secret___v53_len_in_first_block
  store i1 %_secret_lval269, i1* %_secret___m14
  %_secret_lval270 = load i1, i1* %_secret___m14
  %_secret_landtmp271 = and i1 true, %_secret_lval270
  %_secret_lval272 = load i1, i1* %_secret___rnset
  %_secret_landtmp273 = and i1 %_secret_landtmp271, %_secret_lval272
  %_secret_condtmp274 = icmp ne i1 %_secret_landtmp273, false
  %_secret_lval275 = load i8, i8* %_secret___m13
  %_secret_selecttmp276 = call i8 @select.cmov.asm.i8(i1 %_secret_condtmp274, i8 0, i8 %_secret_lval275)
  store i8 %_secret_selecttmp276, i8* %_secret___m13
  %_secret_lval277 = load i1, i1* %_secret___m14
  %_secret_lnottmp278 = xor i1 %_secret_lval277, true
  store i1 %_secret_lnottmp278, i1* %_secret___m14
  %_secret_lval279 = load i1, i1* %_secret___m14
  %_secret_landtmp280 = and i1 true, %_secret_lval279
  %_secret_lval281 = load i1, i1* %_secret___rnset
  %_secret_landtmp282 = and i1 %_secret_landtmp280, %_secret_lval281
  %_secret_condtmp283 = icmp ne i1 %_secret_landtmp282, false
  %_secret_lval284 = load i8, i8* %_secret___m13
  %_secret_selecttmp285 = call i8 @select.cmov.asm.i8(i1 %_secret_condtmp283, i8 64, i8 %_secret_lval284)
  store i8 %_secret_selecttmp285, i8* %_secret___m13
  %_secret___m13286 = load i8, i8* %_secret___m13
  %_secret_rhssext287 = zext i8 %_secret___m13286 to i32
  %_secret_addtmp288 = add i32 %_secret_lval268, %_secret_rhssext287
  %_secret_ugttmp289 = icmp ugt i32 %_public_lval267, %_secret_addtmp288
  store i1 %_secret_ugttmp289, i1* %_secret___m15
  %_secret_lval290 = load i1, i1* %_secret___m15
  %_secret_landtmp291 = and i1 true, %_secret_lval290
  %_secret_lval292 = load i1, i1* %_secret___rnset
  %_secret_landtmp293 = and i1 %_secret_landtmp291, %_secret_lval292
  %_secret_condtmp294 = icmp ne i1 %_secret_landtmp293, false
  %_secret_lval295 = load i1, i1* %_secret___v54_done
  %_secret_selecttmp296 = call i1 @select.cmov.asm.i1(i1 %_secret_condtmp294, i1 true, i1 %_secret_lval295)
  store i1 %_secret_selecttmp296, i1* %_secret___v54_done
  %_secret_lval297 = load i1, i1* %_secret___m15
  %_secret_lnottmp298 = xor i1 %_secret_lval297, true
  store i1 %_secret_lnottmp298, i1* %_secret___m15
  br label %branchmerge300

elsebranch299:                                    ; preds = %branchmerge196
  br label %branchmerge300

branchmerge300:                                   ; preds = %elsebranch299, %branchmerge264
  br label %branchmerge302

elsebranch301:                                    ; preds = %entry
  br label %branchmerge302

branchmerge302:                                   ; preds = %elsebranch301, %branchmerge300
  %_public_structgep = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 4
  store i32 0, i32* %_public_structgep
  %_secret_structgep303 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 3
  %_secret_structgep304 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i32 0, i32 3
  %_secret_arrtoptr305 = bitcast [64 x i8]* %_secret_structgep304 to i8*
  call void @_memzero(i8* %_secret_arrtoptr305, i32 64)
  %_secret_dynarrarg = load i8*, i8** %_secret_arrarg4
  call void @SHA1_MAKE_STRING(%SHA_CTX* %ctx, i8* %_secret_dynarrarg)
  ret void
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
  %_public_lval9 = load i32, i32* %_public___v61_AES_BLOCK_SIZE
  %_public_icast = zext i32 %_public_lval9 to i64
  %_public_neqtmp = icmp ne i64 %_public_icast, 0
  %_public_zexttmp = zext i1 %_public_neqtmp to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp)
  %_public_lval10 = load i32, i32* %_public____in_len
  %_public_lval11 = load i32, i32* %_public___v61_AES_BLOCK_SIZE
  %_public_uremtmp = urem i32 %_public_lval10, %_public_lval11
  %_public_neqtmp12 = icmp ne i32 %_public_uremtmp, 0
  %_public_branchcompare = icmp eq i1 %_public_neqtmp12, true
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
  %_public_lval13 = load i32, i32* %_public____out_len
  store i32 %_public_lval13, i32* %_public___v69__len
  %_public_lval14 = load i64, i64* %_public_plen
  %_public_subtmp = sub i64 %_public_lval14, 4
  %_public_addtmp = add i64 %_public_subtmp, 2
  %_public_lval15 = load i64, i64* %_public_plen
  %_public_subtmp16 = sub i64 %_public_lval15, 4
  %_public_ugttmp = icmp ugt i64 %_public_addtmp, %_public_subtmp16
  %_public_zexttmp17 = zext i1 %_public_ugttmp to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp17)
  %_public_lval18 = load i64, i64* %_public_plen
  %_public_subtmp19 = sub i64 %_public_lval18, 4
  %_public_ugtetmp = icmp uge i64 %_public_subtmp19, 0
  %_public_zexttmp20 = zext i1 %_public_ugtetmp to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp20)
  %_public_lval21 = load i64, i64* %_public_plen
  %_public_subtmp22 = sub i64 %_public_lval21, 4
  %_public_ulttmp = icmp ult i64 %_public_subtmp22, 16
  %_public_zexttmp23 = zext i1 %_public_ulttmp to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp23)
  %_public_lval24 = load i64, i64* %_public_plen
  %_public_subtmp25 = sub i64 %_public_lval24, 4
  %_public_addtmp26 = add i64 %_public_subtmp25, 2
  %_public_subtmp27 = sub i64 %_public_addtmp26, 1
  %_public_ugtetmp28 = icmp uge i64 %_public_subtmp27, 0
  %_public_zexttmp29 = zext i1 %_public_ugtetmp28 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp29)
  %_public_lval30 = load i64, i64* %_public_plen
  %_public_subtmp31 = sub i64 %_public_lval30, 4
  %_public_addtmp32 = add i64 %_public_subtmp31, 2
  %_public_subtmp33 = sub i64 %_public_addtmp32, 1
  %_public_ulttmp34 = icmp ult i64 %_public_subtmp33, 16
  %_public_zexttmp35 = zext i1 %_public_ulttmp34 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp35)
  %_public_lval36 = load i64, i64* %_public_plen
  %_public_subtmp37 = sub i64 %_public_lval36, 4
  %_secret_structgep = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 5
  %_secret_arrview = alloca i8*
  %_secret_source_gep = getelementptr inbounds [16 x i8], [16 x i8]* %_secret_structgep, i64 0, i64 %_public_subtmp37
  store i8* %_secret_source_gep, i8** %_secret_arrview
  %_public_lval38 = load i64, i64* %_public_plen
  %_public_subtmp39 = sub i64 %_public_lval38, 4
  %_public_addtmp40 = add i64 %_public_subtmp39, 2
  %_public_lval41 = load i64, i64* %_public_plen
  %_public_subtmp42 = sub i64 %_public_lval41, 4
  %_public_ugttmp43 = icmp ugt i64 %_public_addtmp40, %_public_subtmp42
  %_public_zexttmp44 = zext i1 %_public_ugttmp43 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp44)
  %_public_lval45 = load i64, i64* %_public_plen
  %_public_subtmp46 = sub i64 %_public_lval45, 4
  %_public_ugtetmp47 = icmp uge i64 %_public_subtmp46, 0
  %_public_zexttmp48 = zext i1 %_public_ugtetmp47 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp48)
  %_public_lval49 = load i64, i64* %_public_plen
  %_public_subtmp50 = sub i64 %_public_lval49, 4
  %_public_ulttmp51 = icmp ult i64 %_public_subtmp50, 16
  %_public_zexttmp52 = zext i1 %_public_ulttmp51 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp52)
  %_public_lval53 = load i64, i64* %_public_plen
  %_public_subtmp54 = sub i64 %_public_lval53, 4
  %_public_addtmp55 = add i64 %_public_subtmp54, 2
  %_public_subtmp56 = sub i64 %_public_addtmp55, 1
  %_public_ugtetmp57 = icmp uge i64 %_public_subtmp56, 0
  %_public_zexttmp58 = zext i1 %_public_ugtetmp57 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp58)
  %_public_lval59 = load i64, i64* %_public_plen
  %_public_subtmp60 = sub i64 %_public_lval59, 4
  %_public_addtmp61 = add i64 %_public_subtmp60, 2
  %_public_subtmp62 = sub i64 %_public_addtmp61, 1
  %_public_ulttmp63 = icmp ult i64 %_public_subtmp62, 16
  %_public_zexttmp64 = zext i1 %_public_ulttmp63 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp64)
  %_public_lval65 = load i64, i64* %_public_plen
  %_public_subtmp66 = sub i64 %_public_lval65, 4
  %_secret_structgep67 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 5
  %_secret_arrview68 = alloca i8*
  %_secret_source_gep69 = getelementptr inbounds [16 x i8], [16 x i8]* %_secret_structgep67, i64 0, i64 %_public_subtmp66
  store i8* %_secret_source_gep69, i8** %_secret_arrview68
  %_secret_dynarrarg = load i8*, i8** %_secret_arrview68
  %_secret_calltmp = call i16 @load16_be(i8* %_secret_dynarrarg)
  store i16 %_secret_calltmp, i16* %_secret___v70_tls_ver
  %_secret_lval70 = load i16, i16* %_secret___v70_tls_ver
  %_public_lval71 = load i32, i32* %_public___v63_TLS1_1_VERSION
  %_secret_lhssext = zext i16 %_secret_lval70 to i32
  %_declassified__secret_ugtetmp = icmp uge i32 %_secret_lhssext, %_public_lval71
  %_public_branchcompare72 = icmp eq i1 %_declassified__secret_ugtetmp, true
  br i1 %_public_branchcompare72, label %thenbranch73, label %elsebranch97

thenbranch73:                                     ; preds = %branchmerge
  %_public_lval74 = load i32, i32* %_public___v69__len
  %_public_lval75 = load i32, i32* %_public___v61_AES_BLOCK_SIZE
  %_public_lval76 = load i32, i32* %_public___v62_SHA_DIGEST_LENGTH
  %_public_addtmp77 = add i32 %_public_lval75, %_public_lval76
  %_public_addtmp78 = add i32 %_public_addtmp77, 1
  %_public_ulttmp79 = icmp ult i32 %_public_lval74, %_public_addtmp78
  %_public_branchcompare80 = icmp eq i1 %_public_ulttmp79, true
  br i1 %_public_branchcompare80, label %thenbranch81, label %elsebranch83

thenbranch81:                                     ; preds = %thenbranch73
  store i32 0, i32* %_secret___rval
  %_secret_lval82 = load i32, i32* %_secret___rval
  ret i32 %_secret_lval82

elsebranch83:                                     ; preds = %thenbranch73
  br label %branchmerge84

branchmerge84:                                    ; preds = %elsebranch83
  %_secret_dynarrarg85 = load i8*, i8** %_secret_arrarg
  %_secret_dynarrarg86 = load i8*, i8** %_secret_arrarg5
  %_public_lval87 = load i32, i32* %_public____in_len
  call void @_arrcopy(i8* %_secret_dynarrarg85, i32 16, i8* %_secret_dynarrarg86, i32 %_public_lval87)
  %_public_lval88 = load i32, i32* %_public___v67_inp
  %_public_lval89 = load i32, i32* %_public___v61_AES_BLOCK_SIZE
  %_public_addtmp90 = add i32 %_public_lval88, %_public_lval89
  store i32 %_public_addtmp90, i32* %_public___v67_inp
  %_public_lval91 = load i32, i32* %_public___v68_outp
  %_public_lval92 = load i32, i32* %_public___v61_AES_BLOCK_SIZE
  %_public_addtmp93 = add i32 %_public_lval91, %_public_lval92
  store i32 %_public_addtmp93, i32* %_public___v68_outp
  %_public_lval94 = load i32, i32* %_public___v69__len
  %_public_lval95 = load i32, i32* %_public___v61_AES_BLOCK_SIZE
  %_public_subtmp96 = sub i32 %_public_lval94, %_public_lval95
  store i32 %_public_subtmp96, i32* %_public___v69__len
  br label %branchmerge107

elsebranch97:                                     ; preds = %branchmerge
  %_public_lval98 = load i32, i32* %_public___v69__len
  %_public_lval99 = load i32, i32* %_public___v62_SHA_DIGEST_LENGTH
  %_public_addtmp100 = add i32 %_public_lval99, 1
  %_public_ulttmp101 = icmp ult i32 %_public_lval98, %_public_addtmp100
  %_public_branchcompare102 = icmp eq i1 %_public_ulttmp101, true
  br i1 %_public_branchcompare102, label %thenbranch103, label %elsebranch105

thenbranch103:                                    ; preds = %elsebranch97
  store i32 0, i32* %_secret___rval
  %_secret_lval104 = load i32, i32* %_secret___rval
  ret i32 %_secret_lval104

elsebranch105:                                    ; preds = %elsebranch97
  br label %branchmerge106

branchmerge106:                                   ; preds = %elsebranch105
  br label %branchmerge107

branchmerge107:                                   ; preds = %branchmerge106, %branchmerge84
  %_public_lval108 = load i32, i32* %_public___v69__len
  store i32 %_public_lval108, i32* %_public___v72___v71_len
  %_public_lval109 = load i32, i32* %_public___v69__len
  store i32 %_public_lval109, i32* %_public___v74___v73_len
  %_public_lval110 = load i32, i32* %_public___v67_inp
  %_public_lval111 = load i32, i32* %_public___v72___v71_len
  %_public_icast112 = zext i32 %_public_lval111 to i64
  %_public_lhssext = zext i32 %_public_lval110 to i64
  %_public_addtmp113 = add i64 %_public_lhssext, %_public_icast112
  %_public_truncbinop = trunc i64 %_public_addtmp113 to i32
  %_public_lval114 = load i32, i32* %_public___v67_inp
  %_public_ugttmp115 = icmp ugt i32 %_public_truncbinop, %_public_lval114
  %_public_zexttmp116 = zext i1 %_public_ugttmp115 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp116)
  %_public_lval117 = load i32, i32* %_public___v67_inp
  %_public_lhssext118 = zext i32 %_public_lval117 to i64
  %_public_ugtetmp119 = icmp uge i64 %_public_lhssext118, 0
  %_public_zexttmp120 = zext i1 %_public_ugtetmp119 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp120)
  %_public_lval121 = load i32, i32* %_public___v67_inp
  %_public_lval122 = load i32, i32* %_public____in_len
  %_public_icast123 = zext i32 %_public_lval122 to i64
  %_public_lhssext124 = zext i32 %_public_lval121 to i64
  %_public_ulttmp125 = icmp ult i64 %_public_lhssext124, %_public_icast123
  %_public_zexttmp126 = zext i1 %_public_ulttmp125 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp126)
  %_public_lval127 = load i32, i32* %_public___v67_inp
  %_public_lval128 = load i32, i32* %_public___v72___v71_len
  %_public_icast129 = zext i32 %_public_lval128 to i64
  %_public_lhssext130 = zext i32 %_public_lval127 to i64
  %_public_addtmp131 = add i64 %_public_lhssext130, %_public_icast129
  %_public_truncbinop132 = trunc i64 %_public_addtmp131 to i32
  %_public_subtmp133 = sub i32 %_public_truncbinop132, 1
  %_public_lhssext134 = zext i32 %_public_subtmp133 to i64
  %_public_ugtetmp135 = icmp uge i64 %_public_lhssext134, 0
  %_public_zexttmp136 = zext i1 %_public_ugtetmp135 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp136)
  %_public_lval137 = load i32, i32* %_public___v67_inp
  %_public_lval138 = load i32, i32* %_public___v72___v71_len
  %_public_icast139 = zext i32 %_public_lval138 to i64
  %_public_lhssext140 = zext i32 %_public_lval137 to i64
  %_public_addtmp141 = add i64 %_public_lhssext140, %_public_icast139
  %_public_truncbinop142 = trunc i64 %_public_addtmp141 to i32
  %_public_subtmp143 = sub i32 %_public_truncbinop142, 1
  %_public_lval144 = load i32, i32* %_public____in_len
  %_public_icast145 = zext i32 %_public_lval144 to i64
  %_public_lhssext146 = zext i32 %_public_subtmp143 to i64
  %_public_ulttmp147 = icmp ult i64 %_public_lhssext146, %_public_icast145
  %_public_zexttmp148 = zext i1 %_public_ulttmp147 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp148)
  %_public_lval149 = load i32, i32* %_public___v67_inp
  %_secret_ldedviewptr = load i8*, i8** %_secret_arrarg5
  %_secret_source_gep150 = getelementptr inbounds i8, i8* %_secret_ldedviewptr, i32 %_public_lval149
  %_secret_arrviewdyn = alloca i8*
  store i8* %_secret_source_gep150, i8** %_secret_arrviewdyn
  %_public_lval151 = load i32, i32* %_public___v67_inp
  %_public_lval152 = load i32, i32* %_public___v72___v71_len
  %_public_icast153 = zext i32 %_public_lval152 to i64
  %_public_lhssext154 = zext i32 %_public_lval151 to i64
  %_public_addtmp155 = add i64 %_public_lhssext154, %_public_icast153
  %_public_truncbinop156 = trunc i64 %_public_addtmp155 to i32
  %_public_lval157 = load i32, i32* %_public___v67_inp
  %_public_ugttmp158 = icmp ugt i32 %_public_truncbinop156, %_public_lval157
  %_public_zexttmp159 = zext i1 %_public_ugttmp158 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp159)
  %_public_lval160 = load i32, i32* %_public___v67_inp
  %_public_lhssext161 = zext i32 %_public_lval160 to i64
  %_public_ugtetmp162 = icmp uge i64 %_public_lhssext161, 0
  %_public_zexttmp163 = zext i1 %_public_ugtetmp162 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp163)
  %_public_lval164 = load i32, i32* %_public___v67_inp
  %_public_lval165 = load i32, i32* %_public____in_len
  %_public_icast166 = zext i32 %_public_lval165 to i64
  %_public_lhssext167 = zext i32 %_public_lval164 to i64
  %_public_ulttmp168 = icmp ult i64 %_public_lhssext167, %_public_icast166
  %_public_zexttmp169 = zext i1 %_public_ulttmp168 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp169)
  %_public_lval170 = load i32, i32* %_public___v67_inp
  %_public_lval171 = load i32, i32* %_public___v72___v71_len
  %_public_icast172 = zext i32 %_public_lval171 to i64
  %_public_lhssext173 = zext i32 %_public_lval170 to i64
  %_public_addtmp174 = add i64 %_public_lhssext173, %_public_icast172
  %_public_truncbinop175 = trunc i64 %_public_addtmp174 to i32
  %_public_subtmp176 = sub i32 %_public_truncbinop175, 1
  %_public_lhssext177 = zext i32 %_public_subtmp176 to i64
  %_public_ugtetmp178 = icmp uge i64 %_public_lhssext177, 0
  %_public_zexttmp179 = zext i1 %_public_ugtetmp178 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp179)
  %_public_lval180 = load i32, i32* %_public___v67_inp
  %_public_lval181 = load i32, i32* %_public___v72___v71_len
  %_public_icast182 = zext i32 %_public_lval181 to i64
  %_public_lhssext183 = zext i32 %_public_lval180 to i64
  %_public_addtmp184 = add i64 %_public_lhssext183, %_public_icast182
  %_public_truncbinop185 = trunc i64 %_public_addtmp184 to i32
  %_public_subtmp186 = sub i32 %_public_truncbinop185, 1
  %_public_lval187 = load i32, i32* %_public____in_len
  %_public_icast188 = zext i32 %_public_lval187 to i64
  %_public_lhssext189 = zext i32 %_public_subtmp186 to i64
  %_public_ulttmp190 = icmp ult i64 %_public_lhssext189, %_public_icast188
  %_public_zexttmp191 = zext i1 %_public_ulttmp190 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp191)
  %_public_lval192 = load i32, i32* %_public___v67_inp
  %_secret_ldedviewptr193 = load i8*, i8** %_secret_arrarg5
  %_secret_source_gep194 = getelementptr inbounds i8, i8* %_secret_ldedviewptr193, i32 %_public_lval192
  %_secret_arrviewdyn195 = alloca i8*
  store i8* %_secret_source_gep194, i8** %_secret_arrviewdyn195
  %_secret_dynarrarg196 = load i8*, i8** %_secret_arrviewdyn195
  %_public_lval197 = load i32, i32* %_public___v68_outp
  %_public_lval198 = load i32, i32* %_public___v74___v73_len
  %_public_icast199 = zext i32 %_public_lval198 to i64
  %_public_lhssext200 = zext i32 %_public_lval197 to i64
  %_public_addtmp201 = add i64 %_public_lhssext200, %_public_icast199
  %_public_truncbinop202 = trunc i64 %_public_addtmp201 to i32
  %_public_lval203 = load i32, i32* %_public___v68_outp
  %_public_ugttmp204 = icmp ugt i32 %_public_truncbinop202, %_public_lval203
  %_public_zexttmp205 = zext i1 %_public_ugttmp204 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp205)
  %_public_lval206 = load i32, i32* %_public___v68_outp
  %_public_lhssext207 = zext i32 %_public_lval206 to i64
  %_public_ugtetmp208 = icmp uge i64 %_public_lhssext207, 0
  %_public_zexttmp209 = zext i1 %_public_ugtetmp208 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp209)
  %_public_lval210 = load i32, i32* %_public___v68_outp
  %_public_lval211 = load i32, i32* %_public____out_len
  %_public_icast212 = zext i32 %_public_lval211 to i64
  %_public_lhssext213 = zext i32 %_public_lval210 to i64
  %_public_ulttmp214 = icmp ult i64 %_public_lhssext213, %_public_icast212
  %_public_zexttmp215 = zext i1 %_public_ulttmp214 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp215)
  %_public_lval216 = load i32, i32* %_public___v68_outp
  %_public_lval217 = load i32, i32* %_public___v74___v73_len
  %_public_icast218 = zext i32 %_public_lval217 to i64
  %_public_lhssext219 = zext i32 %_public_lval216 to i64
  %_public_addtmp220 = add i64 %_public_lhssext219, %_public_icast218
  %_public_truncbinop221 = trunc i64 %_public_addtmp220 to i32
  %_public_subtmp222 = sub i32 %_public_truncbinop221, 1
  %_public_lhssext223 = zext i32 %_public_subtmp222 to i64
  %_public_ugtetmp224 = icmp uge i64 %_public_lhssext223, 0
  %_public_zexttmp225 = zext i1 %_public_ugtetmp224 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp225)
  %_public_lval226 = load i32, i32* %_public___v68_outp
  %_public_lval227 = load i32, i32* %_public___v74___v73_len
  %_public_icast228 = zext i32 %_public_lval227 to i64
  %_public_lhssext229 = zext i32 %_public_lval226 to i64
  %_public_addtmp230 = add i64 %_public_lhssext229, %_public_icast228
  %_public_truncbinop231 = trunc i64 %_public_addtmp230 to i32
  %_public_subtmp232 = sub i32 %_public_truncbinop231, 1
  %_public_lval233 = load i32, i32* %_public____out_len
  %_public_icast234 = zext i32 %_public_lval233 to i64
  %_public_lhssext235 = zext i32 %_public_subtmp232 to i64
  %_public_ulttmp236 = icmp ult i64 %_public_lhssext235, %_public_icast234
  %_public_zexttmp237 = zext i1 %_public_ulttmp236 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp237)
  %_public_lval238 = load i32, i32* %_public___v68_outp
  %_secret_ldedviewptr239 = load i8*, i8** %_secret_arrarg2
  %_secret_source_gep240 = getelementptr inbounds i8, i8* %_secret_ldedviewptr239, i32 %_public_lval238
  %_secret_arrviewdyn241 = alloca i8*
  store i8* %_secret_source_gep240, i8** %_secret_arrviewdyn241
  %_public_lval242 = load i32, i32* %_public___v68_outp
  %_public_lval243 = load i32, i32* %_public___v74___v73_len
  %_public_icast244 = zext i32 %_public_lval243 to i64
  %_public_lhssext245 = zext i32 %_public_lval242 to i64
  %_public_addtmp246 = add i64 %_public_lhssext245, %_public_icast244
  %_public_truncbinop247 = trunc i64 %_public_addtmp246 to i32
  %_public_lval248 = load i32, i32* %_public___v68_outp
  %_public_ugttmp249 = icmp ugt i32 %_public_truncbinop247, %_public_lval248
  %_public_zexttmp250 = zext i1 %_public_ugttmp249 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp250)
  %_public_lval251 = load i32, i32* %_public___v68_outp
  %_public_lhssext252 = zext i32 %_public_lval251 to i64
  %_public_ugtetmp253 = icmp uge i64 %_public_lhssext252, 0
  %_public_zexttmp254 = zext i1 %_public_ugtetmp253 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp254)
  %_public_lval255 = load i32, i32* %_public___v68_outp
  %_public_lval256 = load i32, i32* %_public____out_len
  %_public_icast257 = zext i32 %_public_lval256 to i64
  %_public_lhssext258 = zext i32 %_public_lval255 to i64
  %_public_ulttmp259 = icmp ult i64 %_public_lhssext258, %_public_icast257
  %_public_zexttmp260 = zext i1 %_public_ulttmp259 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp260)
  %_public_lval261 = load i32, i32* %_public___v68_outp
  %_public_lval262 = load i32, i32* %_public___v74___v73_len
  %_public_icast263 = zext i32 %_public_lval262 to i64
  %_public_lhssext264 = zext i32 %_public_lval261 to i64
  %_public_addtmp265 = add i64 %_public_lhssext264, %_public_icast263
  %_public_truncbinop266 = trunc i64 %_public_addtmp265 to i32
  %_public_subtmp267 = sub i32 %_public_truncbinop266, 1
  %_public_lhssext268 = zext i32 %_public_subtmp267 to i64
  %_public_ugtetmp269 = icmp uge i64 %_public_lhssext268, 0
  %_public_zexttmp270 = zext i1 %_public_ugtetmp269 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp270)
  %_public_lval271 = load i32, i32* %_public___v68_outp
  %_public_lval272 = load i32, i32* %_public___v74___v73_len
  %_public_icast273 = zext i32 %_public_lval272 to i64
  %_public_lhssext274 = zext i32 %_public_lval271 to i64
  %_public_addtmp275 = add i64 %_public_lhssext274, %_public_icast273
  %_public_truncbinop276 = trunc i64 %_public_addtmp275 to i32
  %_public_subtmp277 = sub i32 %_public_truncbinop276, 1
  %_public_lval278 = load i32, i32* %_public____out_len
  %_public_icast279 = zext i32 %_public_lval278 to i64
  %_public_lhssext280 = zext i32 %_public_subtmp277 to i64
  %_public_ulttmp281 = icmp ult i64 %_public_lhssext280, %_public_icast279
  %_public_zexttmp282 = zext i1 %_public_ulttmp281 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp282)
  %_public_lval283 = load i32, i32* %_public___v68_outp
  %_secret_ldedviewptr284 = load i8*, i8** %_secret_arrarg2
  %_secret_source_gep285 = getelementptr inbounds i8, i8* %_secret_ldedviewptr284, i32 %_public_lval283
  %_secret_arrviewdyn286 = alloca i8*
  store i8* %_secret_source_gep285, i8** %_secret_arrviewdyn286
  %_secret_dynarrarg287 = load i8*, i8** %_secret_arrviewdyn286
  %_public_lval288 = load i32, i32* %_public___v69__len
  %_public_zexttmp289 = zext i32 %_public_lval288 to i64
  %_public_structgep = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 0
  %_secret_dynarrarg290 = load i8*, i8** %_secret_arrarg
  call void @aesni_cbc_encrypt(i8* %_secret_dynarrarg196, i8* %_secret_dynarrarg287, i64 %_public_zexttmp289, %AES_KEY* %_public_structgep, i8* %_secret_dynarrarg290, i32 0)
  %_public_lval291 = load i32, i32* %_public____out_len
  %_public_subtmp292 = sub i32 %_public_lval291, 1
  %_public_lhssext293 = zext i32 %_public_subtmp292 to i64
  %_public_ugtetmp294 = icmp uge i64 %_public_lhssext293, 0
  %_public_zexttmp295 = zext i1 %_public_ugtetmp294 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp295)
  %_public_lval296 = load i32, i32* %_public____out_len
  %_public_subtmp297 = sub i32 %_public_lval296, 1
  %_public_lval298 = load i32, i32* %_public____out_len
  %_public_icast299 = zext i32 %_public_lval298 to i64
  %_public_lhssext300 = zext i32 %_public_subtmp297 to i64
  %_public_ulttmp301 = icmp ult i64 %_public_lhssext300, %_public_icast299
  %_public_zexttmp302 = zext i1 %_public_ulttmp301 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp302)
  %_public_lval303 = load i32, i32* %_public____out_len
  %_public_subtmp304 = sub i32 %_public_lval303, 1
  %_secret_dyn = load i8*, i8** %_secret_arrarg2
  %_secret_ptr = getelementptr inbounds i8, i8* %_secret_dyn, i32 %_public_subtmp304
  %_secret_lval305 = load i8, i8* %_secret_ptr
  %_secret_zexttmp = zext i8 %_secret_lval305 to i32
  store i32 %_secret_zexttmp, i32* %_secret___v75_pad
  %_public_lval306 = load i32, i32* %_public___v69__len
  %_public_lval307 = load i32, i32* %_public___v62_SHA_DIGEST_LENGTH
  %_public_addtmp308 = add i32 %_public_lval307, 1
  %_public_subtmp309 = sub i32 %_public_lval306, %_public_addtmp308
  store i32 %_public_subtmp309, i32* %_public___v76_tmppad
  %_public_lval310 = load i32, i32* %_public___v76_tmppad
  %_public_ugttmp311 = icmp ugt i32 %_public_lval310, 255
  %_public_condtmp = icmp ne i1 %_public_ugttmp311, false
  %_public_lval312 = load i32, i32* %_public___v76_tmppad
  %_public_terntmp = select i1 %_public_condtmp, i32 255, i32 %_public_lval312
  store i32 %_public_terntmp, i32* %_public___v77_maxpad
  %_secret_lval313 = load i32, i32* %_secret___v75_pad
  %_public_lval314 = load i32, i32* %_public___v77_maxpad
  %_secret_ugttmp = icmp ugt i32 %_secret_lval313, %_public_lval314
  store i1 %_secret_ugttmp, i1* %_secret___m16
  %_secret_lval315 = load i1, i1* %_secret___m16
  %_secret_landtmp = and i1 true, %_secret_lval315
  %_secret_lval316 = load i1, i1* %_secret___rnset
  %_secret_landtmp317 = and i1 %_secret_landtmp, %_secret_lval316
  %_secret_condtmp = icmp ne i1 %_secret_landtmp317, false
  %_secret_lval318 = load i32, i32* %_secret___v66_ret
  %_secret_selecttmp = call i32 @select.cmov.sel.i32(i1 %_secret_condtmp, i32 0, i32 %_secret_lval318)
  store i32 %_secret_selecttmp, i32* %_secret___v66_ret
  %_secret_lval319 = load i1, i1* %_secret___m16
  %_secret_landtmp320 = and i1 true, %_secret_lval319
  %_secret_lval321 = load i1, i1* %_secret___rnset
  %_secret_landtmp322 = and i1 %_secret_landtmp320, %_secret_lval321
  %_secret_condtmp323 = icmp ne i1 %_secret_landtmp322, false
  %_public_lval324 = load i32, i32* %_public___v77_maxpad
  %_secret_lval325 = load i32, i32* %_secret___v75_pad
  %_secret_selecttmp326 = call i32 @select.cmov.sel.i32(i1 %_secret_condtmp323, i32 %_public_lval324, i32 %_secret_lval325)
  store i32 %_secret_selecttmp326, i32* %_secret___v75_pad
  %_secret_lval327 = load i1, i1* %_secret___m16
  %_secret_lnottmp = xor i1 %_secret_lval327, true
  store i1 %_secret_lnottmp, i1* %_secret___m16
  %_public_lval328 = load i32, i32* %_public___v69__len
  %_secret_lval329 = load i32, i32* %_secret___v75_pad
  %_secret_addtmp = add i32 %_secret_lval329, 1
  %_public_lval330 = load i32, i32* %_public___v62_SHA_DIGEST_LENGTH
  %_secret_addtmp331 = add i32 %_secret_addtmp, %_public_lval330
  %_secret_subtmp = sub i32 %_public_lval328, %_secret_addtmp331
  store i32 %_secret_subtmp, i32* %_secret___v78_inp_len
  %_public_lval332 = load i64, i64* %_public_plen
  %_public_subtmp333 = sub i64 %_public_lval332, 2
  %_public_addtmp334 = add i64 %_public_subtmp333, 2
  %_public_lval335 = load i64, i64* %_public_plen
  %_public_subtmp336 = sub i64 %_public_lval335, 2
  %_public_ugttmp337 = icmp ugt i64 %_public_addtmp334, %_public_subtmp336
  %_public_zexttmp338 = zext i1 %_public_ugttmp337 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp338)
  %_public_lval339 = load i64, i64* %_public_plen
  %_public_subtmp340 = sub i64 %_public_lval339, 2
  %_public_ugtetmp341 = icmp uge i64 %_public_subtmp340, 0
  %_public_zexttmp342 = zext i1 %_public_ugtetmp341 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp342)
  %_public_lval343 = load i64, i64* %_public_plen
  %_public_subtmp344 = sub i64 %_public_lval343, 2
  %_public_ulttmp345 = icmp ult i64 %_public_subtmp344, 16
  %_public_zexttmp346 = zext i1 %_public_ulttmp345 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp346)
  %_public_lval347 = load i64, i64* %_public_plen
  %_public_subtmp348 = sub i64 %_public_lval347, 2
  %_public_addtmp349 = add i64 %_public_subtmp348, 2
  %_public_subtmp350 = sub i64 %_public_addtmp349, 1
  %_public_ugtetmp351 = icmp uge i64 %_public_subtmp350, 0
  %_public_zexttmp352 = zext i1 %_public_ugtetmp351 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp352)
  %_public_lval353 = load i64, i64* %_public_plen
  %_public_subtmp354 = sub i64 %_public_lval353, 2
  %_public_addtmp355 = add i64 %_public_subtmp354, 2
  %_public_subtmp356 = sub i64 %_public_addtmp355, 1
  %_public_ulttmp357 = icmp ult i64 %_public_subtmp356, 16
  %_public_zexttmp358 = zext i1 %_public_ulttmp357 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp358)
  %_public_lval359 = load i64, i64* %_public_plen
  %_public_subtmp360 = sub i64 %_public_lval359, 2
  %_secret_structgep361 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 5
  %_secret_arrview362 = alloca i8*
  %_secret_source_gep363 = getelementptr inbounds [16 x i8], [16 x i8]* %_secret_structgep361, i64 0, i64 %_public_subtmp360
  store i8* %_secret_source_gep363, i8** %_secret_arrview362
  %_public_lval364 = load i64, i64* %_public_plen
  %_public_subtmp365 = sub i64 %_public_lval364, 2
  %_public_addtmp366 = add i64 %_public_subtmp365, 2
  %_public_lval367 = load i64, i64* %_public_plen
  %_public_subtmp368 = sub i64 %_public_lval367, 2
  %_public_ugttmp369 = icmp ugt i64 %_public_addtmp366, %_public_subtmp368
  %_public_zexttmp370 = zext i1 %_public_ugttmp369 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp370)
  %_public_lval371 = load i64, i64* %_public_plen
  %_public_subtmp372 = sub i64 %_public_lval371, 2
  %_public_ugtetmp373 = icmp uge i64 %_public_subtmp372, 0
  %_public_zexttmp374 = zext i1 %_public_ugtetmp373 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp374)
  %_public_lval375 = load i64, i64* %_public_plen
  %_public_subtmp376 = sub i64 %_public_lval375, 2
  %_public_ulttmp377 = icmp ult i64 %_public_subtmp376, 16
  %_public_zexttmp378 = zext i1 %_public_ulttmp377 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp378)
  %_public_lval379 = load i64, i64* %_public_plen
  %_public_subtmp380 = sub i64 %_public_lval379, 2
  %_public_addtmp381 = add i64 %_public_subtmp380, 2
  %_public_subtmp382 = sub i64 %_public_addtmp381, 1
  %_public_ugtetmp383 = icmp uge i64 %_public_subtmp382, 0
  %_public_zexttmp384 = zext i1 %_public_ugtetmp383 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp384)
  %_public_lval385 = load i64, i64* %_public_plen
  %_public_subtmp386 = sub i64 %_public_lval385, 2
  %_public_addtmp387 = add i64 %_public_subtmp386, 2
  %_public_subtmp388 = sub i64 %_public_addtmp387, 1
  %_public_ulttmp389 = icmp ult i64 %_public_subtmp388, 16
  %_public_zexttmp390 = zext i1 %_public_ulttmp389 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp390)
  %_public_lval391 = load i64, i64* %_public_plen
  %_public_subtmp392 = sub i64 %_public_lval391, 2
  %_secret_structgep393 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 5
  %_secret_arrview394 = alloca i8*
  %_secret_source_gep395 = getelementptr inbounds [16 x i8], [16 x i8]* %_secret_structgep393, i64 0, i64 %_public_subtmp392
  store i8* %_secret_source_gep395, i8** %_secret_arrview394
  %_secret_dynarrarg396 = load i8*, i8** %_secret_arrview394
  %_secret_lval397 = load i32, i32* %_secret___v78_inp_len
  %_secret_ucast = trunc i32 %_secret_lval397 to i16
  call void @store16_be(i8* %_secret_dynarrarg396, i16 %_secret_ucast)
  store i32 0, i32* %_secret___v79_ctx_num
  %_secret___v80_pmac = alloca [20 x i8], align 32
  %_public_structgep398 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_public_structgep399 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 1
  call void @_structcopy_SHA_CTX(%SHA_CTX* %_public_structgep398, %SHA_CTX* %_public_structgep399)
  %_public_lval400 = load i64, i64* %_public_plen
  %_public_trunctmp = trunc i64 %_public_lval400 to i32
  store i32 %_public_trunctmp, i32* %_public___v82___v81_len
  %_public_structgep401 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_public_lval402 = load i32, i32* %_public___v82___v81_len
  %_public_icast403 = zext i32 %_public_lval402 to i64
  %_public_addtmp404 = add i64 0, %_public_icast403
  %_public_truncbinop405 = trunc i64 %_public_addtmp404 to i8
  %_public_sgttmp = icmp sgt i8 %_public_truncbinop405, 0
  %_public_zexttmp406 = zext i1 %_public_sgttmp to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp406)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_public_lval407 = load i32, i32* %_public___v82___v81_len
  %_public_icast408 = zext i32 %_public_lval407 to i64
  %_public_addtmp409 = add i64 0, %_public_icast408
  %_public_truncbinop410 = trunc i64 %_public_addtmp409 to i8
  %_public_subtmp411 = sub i8 %_public_truncbinop410, 1
  %_public_lhssext412 = sext i8 %_public_subtmp411 to i64
  %_public_sgtetmp = icmp sge i64 %_public_lhssext412, 0
  %_public_zexttmp413 = zext i1 %_public_sgtetmp to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp413)
  %_public_lval414 = load i32, i32* %_public___v82___v81_len
  %_public_icast415 = zext i32 %_public_lval414 to i64
  %_public_addtmp416 = add i64 0, %_public_icast415
  %_public_truncbinop417 = trunc i64 %_public_addtmp416 to i8
  %_public_subtmp418 = sub i8 %_public_truncbinop417, 1
  %_public_lhssext419 = sext i8 %_public_subtmp418 to i64
  %_public_slttmp = icmp slt i64 %_public_lhssext419, 16
  %_public_zexttmp420 = zext i1 %_public_slttmp to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp420)
  %_secret_structgep421 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 5
  %_secret_arrview422 = alloca i8*
  %_secret_source_gep423 = getelementptr inbounds [16 x i8], [16 x i8]* %_secret_structgep421, i8 0, i8 0
  store i8* %_secret_source_gep423, i8** %_secret_arrview422
  %_public_lval424 = load i32, i32* %_public___v82___v81_len
  %_public_icast425 = zext i32 %_public_lval424 to i64
  %_public_addtmp426 = add i64 0, %_public_icast425
  %_public_truncbinop427 = trunc i64 %_public_addtmp426 to i8
  %_public_sgttmp428 = icmp sgt i8 %_public_truncbinop427, 0
  %_public_zexttmp429 = zext i1 %_public_sgttmp428 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp429)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_public_lval430 = load i32, i32* %_public___v82___v81_len
  %_public_icast431 = zext i32 %_public_lval430 to i64
  %_public_addtmp432 = add i64 0, %_public_icast431
  %_public_truncbinop433 = trunc i64 %_public_addtmp432 to i8
  %_public_subtmp434 = sub i8 %_public_truncbinop433, 1
  %_public_lhssext435 = sext i8 %_public_subtmp434 to i64
  %_public_sgtetmp436 = icmp sge i64 %_public_lhssext435, 0
  %_public_zexttmp437 = zext i1 %_public_sgtetmp436 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp437)
  %_public_lval438 = load i32, i32* %_public___v82___v81_len
  %_public_icast439 = zext i32 %_public_lval438 to i64
  %_public_addtmp440 = add i64 0, %_public_icast439
  %_public_truncbinop441 = trunc i64 %_public_addtmp440 to i8
  %_public_subtmp442 = sub i8 %_public_truncbinop441, 1
  %_public_lhssext443 = sext i8 %_public_subtmp442 to i64
  %_public_slttmp444 = icmp slt i64 %_public_lhssext443, 16
  %_public_zexttmp445 = zext i1 %_public_slttmp444 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp445)
  %_secret_structgep446 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 5
  %_secret_arrview447 = alloca i8*
  %_secret_source_gep448 = getelementptr inbounds [16 x i8], [16 x i8]* %_secret_structgep446, i8 0, i8 0
  store i8* %_secret_source_gep448, i8** %_secret_arrview447
  %_secret_dynarrarg449 = load i8*, i8** %_secret_arrview447
  %_public_lval450 = load i32, i32* %_public___v82___v81_len
  call void @SHA1_Update_public(%SHA_CTX* %_public_structgep401, i8* %_secret_dynarrarg449, i32 %_public_lval450)
  %_public_lval451 = load i32, i32* %_public___v69__len
  %_public_lval452 = load i32, i32* %_public___v65_SHA_CBLOCK
  %_public_addtmp453 = add i32 256, %_public_lval452
  %_public_lval454 = load i32, i32* %_public___v62_SHA_DIGEST_LENGTH
  %_public_addtmp455 = add i32 %_public_addtmp453, %_public_lval454
  %_public_ugtetmp456 = icmp uge i32 %_public_lval451, %_public_addtmp455
  %_public_condtmp457 = icmp ne i1 %_public_ugtetmp456, false
  %_public_lval458 = load i32, i32* %_public___v69__len
  %_public_lval459 = load i32, i32* %_public___v65_SHA_CBLOCK
  %_public_addtmp460 = add i32 256, %_public_lval459
  %_public_lval461 = load i32, i32* %_public___v62_SHA_DIGEST_LENGTH
  %_public_addtmp462 = add i32 %_public_addtmp460, %_public_lval461
  %_public_subtmp463 = sub i32 %_public_lval458, %_public_addtmp462
  %_public_lval464 = load i32, i32* %_public___v65_SHA_CBLOCK
  %_public_subtmp465 = sub i32 0, %_public_lval464
  %_public_andtmp = and i32 %_public_subtmp463, %_public_subtmp465
  %_public_lval466 = load i32, i32* %_public___v65_SHA_CBLOCK
  %_public_structgep467 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_public_structgep468 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep467, i32 0, i32 4
  %_public_lval469 = load i32, i32* %_public_structgep468
  %_public_subtmp470 = sub i32 %_public_lval466, %_public_lval469
  %_public_addtmp471 = add i32 %_public_andtmp, %_public_subtmp470
  %_public_terntmp472 = select i1 %_public_condtmp457, i32 %_public_addtmp471, i32 0
  store i32 %_public_terntmp472, i32* %_public___v83_minlen
  %_public_lval473 = load i32, i32* %_public___v83_minlen
  %_public_ugttmp474 = icmp ugt i32 %_public_lval473, 0
  %_public_branchcompare475 = icmp eq i1 %_public_ugttmp474, true
  br i1 %_public_branchcompare475, label %thenbranch476, label %elsebranch571

thenbranch476:                                    ; preds = %branchmerge107
  %_public_lval477 = load i32, i32* %_public___v83_minlen
  store i32 %_public_lval477, i32* %_public___v85___v84_len
  %_public_structgep478 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_public_lval479 = load i32, i32* %_public___v68_outp
  %_public_lval480 = load i32, i32* %_public___v85___v84_len
  %_public_icast481 = zext i32 %_public_lval480 to i64
  %_public_lhssext482 = zext i32 %_public_lval479 to i64
  %_public_addtmp483 = add i64 %_public_lhssext482, %_public_icast481
  %_public_truncbinop484 = trunc i64 %_public_addtmp483 to i32
  %_public_lval485 = load i32, i32* %_public___v68_outp
  %_public_ugttmp486 = icmp ugt i32 %_public_truncbinop484, %_public_lval485
  %_public_zexttmp487 = zext i1 %_public_ugttmp486 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp487)
  %_public_lval488 = load i32, i32* %_public___v68_outp
  %_public_lhssext489 = zext i32 %_public_lval488 to i64
  %_public_ugtetmp490 = icmp uge i64 %_public_lhssext489, 0
  %_public_zexttmp491 = zext i1 %_public_ugtetmp490 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp491)
  %_public_lval492 = load i32, i32* %_public___v68_outp
  %_public_lval493 = load i32, i32* %_public____out_len
  %_public_icast494 = zext i32 %_public_lval493 to i64
  %_public_lhssext495 = zext i32 %_public_lval492 to i64
  %_public_ulttmp496 = icmp ult i64 %_public_lhssext495, %_public_icast494
  %_public_zexttmp497 = zext i1 %_public_ulttmp496 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp497)
  %_public_lval498 = load i32, i32* %_public___v68_outp
  %_public_lval499 = load i32, i32* %_public___v85___v84_len
  %_public_icast500 = zext i32 %_public_lval499 to i64
  %_public_lhssext501 = zext i32 %_public_lval498 to i64
  %_public_addtmp502 = add i64 %_public_lhssext501, %_public_icast500
  %_public_truncbinop503 = trunc i64 %_public_addtmp502 to i32
  %_public_subtmp504 = sub i32 %_public_truncbinop503, 1
  %_public_lhssext505 = zext i32 %_public_subtmp504 to i64
  %_public_ugtetmp506 = icmp uge i64 %_public_lhssext505, 0
  %_public_zexttmp507 = zext i1 %_public_ugtetmp506 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp507)
  %_public_lval508 = load i32, i32* %_public___v68_outp
  %_public_lval509 = load i32, i32* %_public___v85___v84_len
  %_public_icast510 = zext i32 %_public_lval509 to i64
  %_public_lhssext511 = zext i32 %_public_lval508 to i64
  %_public_addtmp512 = add i64 %_public_lhssext511, %_public_icast510
  %_public_truncbinop513 = trunc i64 %_public_addtmp512 to i32
  %_public_subtmp514 = sub i32 %_public_truncbinop513, 1
  %_public_lval515 = load i32, i32* %_public____out_len
  %_public_icast516 = zext i32 %_public_lval515 to i64
  %_public_lhssext517 = zext i32 %_public_subtmp514 to i64
  %_public_ulttmp518 = icmp ult i64 %_public_lhssext517, %_public_icast516
  %_public_zexttmp519 = zext i1 %_public_ulttmp518 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp519)
  %_public_lval520 = load i32, i32* %_public___v68_outp
  %_secret_ldedviewptr521 = load i8*, i8** %_secret_arrarg2
  %_secret_source_gep522 = getelementptr inbounds i8, i8* %_secret_ldedviewptr521, i32 %_public_lval520
  %_secret_arrviewdyn523 = alloca i8*
  store i8* %_secret_source_gep522, i8** %_secret_arrviewdyn523
  %_public_lval524 = load i32, i32* %_public___v68_outp
  %_public_lval525 = load i32, i32* %_public___v85___v84_len
  %_public_icast526 = zext i32 %_public_lval525 to i64
  %_public_lhssext527 = zext i32 %_public_lval524 to i64
  %_public_addtmp528 = add i64 %_public_lhssext527, %_public_icast526
  %_public_truncbinop529 = trunc i64 %_public_addtmp528 to i32
  %_public_lval530 = load i32, i32* %_public___v68_outp
  %_public_ugttmp531 = icmp ugt i32 %_public_truncbinop529, %_public_lval530
  %_public_zexttmp532 = zext i1 %_public_ugttmp531 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp532)
  %_public_lval533 = load i32, i32* %_public___v68_outp
  %_public_lhssext534 = zext i32 %_public_lval533 to i64
  %_public_ugtetmp535 = icmp uge i64 %_public_lhssext534, 0
  %_public_zexttmp536 = zext i1 %_public_ugtetmp535 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp536)
  %_public_lval537 = load i32, i32* %_public___v68_outp
  %_public_lval538 = load i32, i32* %_public____out_len
  %_public_icast539 = zext i32 %_public_lval538 to i64
  %_public_lhssext540 = zext i32 %_public_lval537 to i64
  %_public_ulttmp541 = icmp ult i64 %_public_lhssext540, %_public_icast539
  %_public_zexttmp542 = zext i1 %_public_ulttmp541 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp542)
  %_public_lval543 = load i32, i32* %_public___v68_outp
  %_public_lval544 = load i32, i32* %_public___v85___v84_len
  %_public_icast545 = zext i32 %_public_lval544 to i64
  %_public_lhssext546 = zext i32 %_public_lval543 to i64
  %_public_addtmp547 = add i64 %_public_lhssext546, %_public_icast545
  %_public_truncbinop548 = trunc i64 %_public_addtmp547 to i32
  %_public_subtmp549 = sub i32 %_public_truncbinop548, 1
  %_public_lhssext550 = zext i32 %_public_subtmp549 to i64
  %_public_ugtetmp551 = icmp uge i64 %_public_lhssext550, 0
  %_public_zexttmp552 = zext i1 %_public_ugtetmp551 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp552)
  %_public_lval553 = load i32, i32* %_public___v68_outp
  %_public_lval554 = load i32, i32* %_public___v85___v84_len
  %_public_icast555 = zext i32 %_public_lval554 to i64
  %_public_lhssext556 = zext i32 %_public_lval553 to i64
  %_public_addtmp557 = add i64 %_public_lhssext556, %_public_icast555
  %_public_truncbinop558 = trunc i64 %_public_addtmp557 to i32
  %_public_subtmp559 = sub i32 %_public_truncbinop558, 1
  %_public_lval560 = load i32, i32* %_public____out_len
  %_public_icast561 = zext i32 %_public_lval560 to i64
  %_public_lhssext562 = zext i32 %_public_subtmp559 to i64
  %_public_ulttmp563 = icmp ult i64 %_public_lhssext562, %_public_icast561
  %_public_zexttmp564 = zext i1 %_public_ulttmp563 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp564)
  %_public_lval565 = load i32, i32* %_public___v68_outp
  %_secret_ldedviewptr566 = load i8*, i8** %_secret_arrarg2
  %_secret_source_gep567 = getelementptr inbounds i8, i8* %_secret_ldedviewptr566, i32 %_public_lval565
  %_secret_arrviewdyn568 = alloca i8*
  store i8* %_secret_source_gep567, i8** %_secret_arrviewdyn568
  %_secret_dynarrarg569 = load i8*, i8** %_secret_arrviewdyn568
  %_public_lval570 = load i32, i32* %_public___v85___v84_len
  call void @SHA1_Update_public(%SHA_CTX* %_public_structgep478, i8* %_secret_dynarrarg569, i32 %_public_lval570)
  br label %branchmerge572

elsebranch571:                                    ; preds = %branchmerge107
  br label %branchmerge572

branchmerge572:                                   ; preds = %elsebranch571, %thenbranch476
  %_public_lval573 = load i32, i32* %_public___v69__len
  %_public_lval574 = load i32, i32* %_public___v83_minlen
  %_public_subtmp575 = sub i32 %_public_lval573, %_public_lval574
  store i32 %_public_subtmp575, i32* %_public___v87___v86_len
  %_public_structgep576 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_public_lval577 = load i32, i32* %_public___v68_outp
  %_public_lval578 = load i32, i32* %_public___v83_minlen
  %_public_addtmp579 = add i32 %_public_lval577, %_public_lval578
  %_public_lval580 = load i32, i32* %_public___v87___v86_len
  %_public_icast581 = zext i32 %_public_lval580 to i64
  %_public_lhssext582 = zext i32 %_public_addtmp579 to i64
  %_public_addtmp583 = add i64 %_public_lhssext582, %_public_icast581
  %_public_truncbinop584 = trunc i64 %_public_addtmp583 to i32
  %_public_lval585 = load i32, i32* %_public___v68_outp
  %_public_lval586 = load i32, i32* %_public___v83_minlen
  %_public_addtmp587 = add i32 %_public_lval585, %_public_lval586
  %_public_ugttmp588 = icmp ugt i32 %_public_truncbinop584, %_public_addtmp587
  %_public_zexttmp589 = zext i1 %_public_ugttmp588 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp589)
  %_public_lval590 = load i32, i32* %_public___v68_outp
  %_public_lval591 = load i32, i32* %_public___v83_minlen
  %_public_addtmp592 = add i32 %_public_lval590, %_public_lval591
  %_public_lhssext593 = zext i32 %_public_addtmp592 to i64
  %_public_ugtetmp594 = icmp uge i64 %_public_lhssext593, 0
  %_public_zexttmp595 = zext i1 %_public_ugtetmp594 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp595)
  %_public_lval596 = load i32, i32* %_public___v68_outp
  %_public_lval597 = load i32, i32* %_public___v83_minlen
  %_public_addtmp598 = add i32 %_public_lval596, %_public_lval597
  %_public_lval599 = load i32, i32* %_public____out_len
  %_public_icast600 = zext i32 %_public_lval599 to i64
  %_public_lhssext601 = zext i32 %_public_addtmp598 to i64
  %_public_ulttmp602 = icmp ult i64 %_public_lhssext601, %_public_icast600
  %_public_zexttmp603 = zext i1 %_public_ulttmp602 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp603)
  %_public_lval604 = load i32, i32* %_public___v68_outp
  %_public_lval605 = load i32, i32* %_public___v83_minlen
  %_public_addtmp606 = add i32 %_public_lval604, %_public_lval605
  %_public_lval607 = load i32, i32* %_public___v87___v86_len
  %_public_icast608 = zext i32 %_public_lval607 to i64
  %_public_lhssext609 = zext i32 %_public_addtmp606 to i64
  %_public_addtmp610 = add i64 %_public_lhssext609, %_public_icast608
  %_public_truncbinop611 = trunc i64 %_public_addtmp610 to i32
  %_public_subtmp612 = sub i32 %_public_truncbinop611, 1
  %_public_lhssext613 = zext i32 %_public_subtmp612 to i64
  %_public_ugtetmp614 = icmp uge i64 %_public_lhssext613, 0
  %_public_zexttmp615 = zext i1 %_public_ugtetmp614 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp615)
  %_public_lval616 = load i32, i32* %_public___v68_outp
  %_public_lval617 = load i32, i32* %_public___v83_minlen
  %_public_addtmp618 = add i32 %_public_lval616, %_public_lval617
  %_public_lval619 = load i32, i32* %_public___v87___v86_len
  %_public_icast620 = zext i32 %_public_lval619 to i64
  %_public_lhssext621 = zext i32 %_public_addtmp618 to i64
  %_public_addtmp622 = add i64 %_public_lhssext621, %_public_icast620
  %_public_truncbinop623 = trunc i64 %_public_addtmp622 to i32
  %_public_subtmp624 = sub i32 %_public_truncbinop623, 1
  %_public_lval625 = load i32, i32* %_public____out_len
  %_public_icast626 = zext i32 %_public_lval625 to i64
  %_public_lhssext627 = zext i32 %_public_subtmp624 to i64
  %_public_ulttmp628 = icmp ult i64 %_public_lhssext627, %_public_icast626
  %_public_zexttmp629 = zext i1 %_public_ulttmp628 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp629)
  %_public_lval630 = load i32, i32* %_public___v68_outp
  %_public_lval631 = load i32, i32* %_public___v83_minlen
  %_public_addtmp632 = add i32 %_public_lval630, %_public_lval631
  %_secret_ldedviewptr633 = load i8*, i8** %_secret_arrarg2
  %_secret_source_gep634 = getelementptr inbounds i8, i8* %_secret_ldedviewptr633, i32 %_public_addtmp632
  %_secret_arrviewdyn635 = alloca i8*
  store i8* %_secret_source_gep634, i8** %_secret_arrviewdyn635
  %_public_lval636 = load i32, i32* %_public___v68_outp
  %_public_lval637 = load i32, i32* %_public___v83_minlen
  %_public_addtmp638 = add i32 %_public_lval636, %_public_lval637
  %_public_lval639 = load i32, i32* %_public___v87___v86_len
  %_public_icast640 = zext i32 %_public_lval639 to i64
  %_public_lhssext641 = zext i32 %_public_addtmp638 to i64
  %_public_addtmp642 = add i64 %_public_lhssext641, %_public_icast640
  %_public_truncbinop643 = trunc i64 %_public_addtmp642 to i32
  %_public_lval644 = load i32, i32* %_public___v68_outp
  %_public_lval645 = load i32, i32* %_public___v83_minlen
  %_public_addtmp646 = add i32 %_public_lval644, %_public_lval645
  %_public_ugttmp647 = icmp ugt i32 %_public_truncbinop643, %_public_addtmp646
  %_public_zexttmp648 = zext i1 %_public_ugttmp647 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp648)
  %_public_lval649 = load i32, i32* %_public___v68_outp
  %_public_lval650 = load i32, i32* %_public___v83_minlen
  %_public_addtmp651 = add i32 %_public_lval649, %_public_lval650
  %_public_lhssext652 = zext i32 %_public_addtmp651 to i64
  %_public_ugtetmp653 = icmp uge i64 %_public_lhssext652, 0
  %_public_zexttmp654 = zext i1 %_public_ugtetmp653 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp654)
  %_public_lval655 = load i32, i32* %_public___v68_outp
  %_public_lval656 = load i32, i32* %_public___v83_minlen
  %_public_addtmp657 = add i32 %_public_lval655, %_public_lval656
  %_public_lval658 = load i32, i32* %_public____out_len
  %_public_icast659 = zext i32 %_public_lval658 to i64
  %_public_lhssext660 = zext i32 %_public_addtmp657 to i64
  %_public_ulttmp661 = icmp ult i64 %_public_lhssext660, %_public_icast659
  %_public_zexttmp662 = zext i1 %_public_ulttmp661 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp662)
  %_public_lval663 = load i32, i32* %_public___v68_outp
  %_public_lval664 = load i32, i32* %_public___v83_minlen
  %_public_addtmp665 = add i32 %_public_lval663, %_public_lval664
  %_public_lval666 = load i32, i32* %_public___v87___v86_len
  %_public_icast667 = zext i32 %_public_lval666 to i64
  %_public_lhssext668 = zext i32 %_public_addtmp665 to i64
  %_public_addtmp669 = add i64 %_public_lhssext668, %_public_icast667
  %_public_truncbinop670 = trunc i64 %_public_addtmp669 to i32
  %_public_subtmp671 = sub i32 %_public_truncbinop670, 1
  %_public_lhssext672 = zext i32 %_public_subtmp671 to i64
  %_public_ugtetmp673 = icmp uge i64 %_public_lhssext672, 0
  %_public_zexttmp674 = zext i1 %_public_ugtetmp673 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp674)
  %_public_lval675 = load i32, i32* %_public___v68_outp
  %_public_lval676 = load i32, i32* %_public___v83_minlen
  %_public_addtmp677 = add i32 %_public_lval675, %_public_lval676
  %_public_lval678 = load i32, i32* %_public___v87___v86_len
  %_public_icast679 = zext i32 %_public_lval678 to i64
  %_public_lhssext680 = zext i32 %_public_addtmp677 to i64
  %_public_addtmp681 = add i64 %_public_lhssext680, %_public_icast679
  %_public_truncbinop682 = trunc i64 %_public_addtmp681 to i32
  %_public_subtmp683 = sub i32 %_public_truncbinop682, 1
  %_public_lval684 = load i32, i32* %_public____out_len
  %_public_icast685 = zext i32 %_public_lval684 to i64
  %_public_lhssext686 = zext i32 %_public_subtmp683 to i64
  %_public_ulttmp687 = icmp ult i64 %_public_lhssext686, %_public_icast685
  %_public_zexttmp688 = zext i1 %_public_ulttmp687 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp688)
  %_public_lval689 = load i32, i32* %_public___v68_outp
  %_public_lval690 = load i32, i32* %_public___v83_minlen
  %_public_addtmp691 = add i32 %_public_lval689, %_public_lval690
  %_secret_ldedviewptr692 = load i8*, i8** %_secret_arrarg2
  %_secret_source_gep693 = getelementptr inbounds i8, i8* %_secret_ldedviewptr692, i32 %_public_addtmp691
  %_secret_arrviewdyn694 = alloca i8*
  store i8* %_secret_source_gep693, i8** %_secret_arrviewdyn694
  %_secret_dynarrarg695 = load i8*, i8** %_secret_arrviewdyn694
  %_public_lval696 = load i32, i32* %_public___v87___v86_len
  %_secret_lval697 = load i32, i32* %_secret___v78_inp_len
  %_public_lval698 = load i32, i32* %_public___v83_minlen
  %_secret_subtmp699 = sub i32 %_secret_lval697, %_public_lval698
  call void @SHA1_Update_secret(%SHA_CTX* %_public_structgep576, i32* %_secret___v79_ctx_num, i8* %_secret_dynarrarg695, i32 %_public_lval696, i32 %_secret_subtmp699)
  %_secret_arrtoptr = bitcast [20 x i8]* %_secret___v80_pmac to i8*
  %_public_structgep700 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_lval701 = load i32, i32* %_secret___v79_ctx_num
  call void @SHA1_Final_secret(i8* %_secret_arrtoptr, %SHA_CTX* %_public_structgep700, i32 %_secret_lval701)
  %_public_structgep702 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_public_structgep703 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 2
  call void @_structcopy_SHA_CTX(%SHA_CTX* %_public_structgep702, %SHA_CTX* %_public_structgep703)
  %_public_structgep704 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  %_secret_arrtoptr705 = bitcast [20 x i8]* %_secret___v80_pmac to i8*
  call void @SHA1_Update_public(%SHA_CTX* %_public_structgep704, i8* %_secret_arrtoptr705, i32 20)
  %_secret_arrtoptr706 = bitcast [20 x i8]* %_secret___v80_pmac to i8*
  %_public_structgep707 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i32 0, i32 3
  call void @SHA1_Final_public(i8* %_secret_arrtoptr706, %SHA_CTX* %_public_structgep707)
  %_public_lval708 = load i32, i32* %_public___v69__len
  %_public_lval709 = load i32, i32* %_public___v62_SHA_DIGEST_LENGTH
  %_public_addtmp710 = add i32 256, %_public_lval709
  %_public_ulttmp711 = icmp ult i32 %_public_lval708, %_public_addtmp710
  %_public_condtmp712 = icmp ne i1 %_public_ulttmp711, false
  %_public_lval713 = load i32, i32* %_public___v69__len
  %_public_lval714 = load i32, i32* %_public___v62_SHA_DIGEST_LENGTH
  %_public_addtmp715 = add i32 256, %_public_lval714
  %_public_subtmp716 = sub i32 %_public_lval713, %_public_addtmp715
  %_public_terntmp717 = select i1 %_public_condtmp712, i32 0, i32 %_public_subtmp716
  store i32 %_public_terntmp717, i32* %_public___v88_pub_start
  %_public_lval718 = load i32, i32* %_public___v68_outp
  %_secret_lval719 = load i32, i32* %_secret___v78_inp_len
  %_secret_addtmp720 = add i32 %_public_lval718, %_secret_lval719
  %_public_lval721 = load i32, i32* %_public___v62_SHA_DIGEST_LENGTH
  %_secret_addtmp722 = add i32 %_secret_addtmp720, %_public_lval721
  %_public_lval723 = load i32, i32* %_public___v69__len
  %_secret_ugttmp724 = icmp ugt i32 %_secret_addtmp722, %_public_lval723
  store i1 %_secret_ugttmp724, i1* %_secret___m17
  %_secret_lval725 = load i1, i1* %_secret___m17
  %_secret_landtmp726 = and i1 true, %_secret_lval725
  %_secret_lval727 = load i1, i1* %_secret___rnset
  %_secret_landtmp728 = and i1 %_secret_landtmp726, %_secret_lval727
  %_secret_condtmp729 = icmp ne i1 %_secret_landtmp728, false
  %_secret_lval730 = load i32, i32* %_secret___v66_ret
  %_secret_selecttmp731 = call i32 @select.cmov.sel.i32(i1 %_secret_condtmp729, i32 0, i32 %_secret_lval730)
  store i32 %_secret_selecttmp731, i32* %_secret___v66_ret
  %_secret_lval732 = load i1, i1* %_secret___m17
  %_secret_lnottmp733 = xor i1 %_secret_lval732, true
  store i1 %_secret_lnottmp733, i1* %_secret___m17
  %_public_calltmp = call i32 @__VERIFIER_nondet_unsigned_int()
  store i32 %_public_calltmp, i32* %_public___v89_i
  %_public_lval734 = load i32, i32* %_public___v89_i
  %_public_lval735 = load i32, i32* %_public___v69__len
  %_public_ulttmp736 = icmp ult i32 %_public_lval734, %_public_lval735
  %_public_branchcompare737 = icmp eq i1 %_public_ulttmp736, true
  br i1 %_public_branchcompare737, label %thenbranch738, label %elsebranch824

thenbranch738:                                    ; preds = %branchmerge572
  %_public_lval739 = load i32, i32* %_public___v89_i
  %_public_lval740 = load i32, i32* %_public___v89_i
  %_public_addtmp741 = add i32 %_public_lval740, 1
  %_public_ulttmp742 = icmp ult i32 %_public_lval739, %_public_addtmp741
  %_public_zexttmp743 = zext i1 %_public_ulttmp742 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp743)
  %_public_lval744 = load i32, i32* %_public___v68_outp
  %_public_lval745 = load i32, i32* %_public___v88_pub_start
  %_public_addtmp746 = add i32 %_public_lval744, %_public_lval745
  %_public_lval747 = load i32, i32* %_public___v89_i
  %_public_ulttmp748 = icmp ult i32 %_public_addtmp746, %_public_lval747
  %_public_lval749 = load i32, i32* %_public___v68_outp
  %_public_lval750 = load i32, i32* %_public___v88_pub_start
  %_public_addtmp751 = add i32 %_public_lval749, %_public_lval750
  %_public_lval752 = load i32, i32* %_public___v89_i
  %_public_eqtmp = icmp eq i32 %_public_addtmp751, %_public_lval752
  %_public_lortmp = or i1 %_public_ulttmp748, %_public_eqtmp
  %_public_zexttmp753 = zext i1 %_public_lortmp to i32
  call void @__VERIFIER_assume(i32 %_public_zexttmp753)
  store i1 false, i1* %_secret___m18
  %_public_lval754 = load i32, i32* %_public___v89_i
  %_public_lval755 = load i32, i32* %_public___v68_outp
  %_secret_lval756 = load i32, i32* %_secret___v78_inp_len
  %_secret_addtmp757 = add i32 %_public_lval755, %_secret_lval756
  %_secret_ugtetmp = icmp uge i32 %_public_lval754, %_secret_addtmp757
  store i1 %_secret_ugtetmp, i1* %_secret___m19
  %_secret_lval758 = load i1, i1* %_secret___m19
  %_secret_landtmp759 = and i1 true, %_secret_lval758
  %_secret_lval760 = load i1, i1* %_secret___rnset
  %_secret_landtmp761 = and i1 %_secret_landtmp759, %_secret_lval760
  %_secret_condtmp762 = icmp ne i1 %_secret_landtmp761, false
  %_public_lval763 = load i32, i32* %_public___v89_i
  %_public_lval764 = load i32, i32* %_public___v68_outp
  %_secret_lval765 = load i32, i32* %_secret___v78_inp_len
  %_secret_addtmp766 = add i32 %_public_lval764, %_secret_lval765
  %_public_lval767 = load i32, i32* %_public___v62_SHA_DIGEST_LENGTH
  %_secret_addtmp768 = add i32 %_secret_addtmp766, %_public_lval767
  %_secret_ulttmp = icmp ult i32 %_public_lval763, %_secret_addtmp768
  %_secret_lval769 = load i1, i1* %_secret___m18
  %_secret_selecttmp770 = call i1 @select.cmov.asm.i1(i1 %_secret_condtmp762, i1 %_secret_ulttmp, i1 %_secret_lval769)
  store i1 %_secret_selecttmp770, i1* %_secret___m18
  %_secret_lval771 = load i1, i1* %_secret___m19
  %_secret_lnottmp772 = xor i1 %_secret_lval771, true
  store i1 %_secret_lnottmp772, i1* %_secret___m19
  %_secret_lval773 = load i1, i1* %_secret___m19
  %_secret_landtmp774 = and i1 true, %_secret_lval773
  %_secret_lval775 = load i1, i1* %_secret___rnset
  %_secret_landtmp776 = and i1 %_secret_landtmp774, %_secret_lval775
  %_secret_condtmp777 = icmp ne i1 %_secret_landtmp776, false
  %_secret_lval778 = load i1, i1* %_secret___m18
  %_secret_selecttmp779 = call i1 @select.cmov.asm.i1(i1 %_secret_condtmp777, i1 false, i1 %_secret_lval778)
  store i1 %_secret_selecttmp779, i1* %_secret___m18
  %_secret___m18780 = load i1, i1* %_secret___m18
  store i1 %_secret___m18780, i1* %_secret___m20
  %_public_lval781 = load i32, i32* %_public___v89_i
  %_public_lval782 = load i32, i32* %_public___v68_outp
  %_secret_lval783 = load i32, i32* %_secret___v78_inp_len
  %_secret_addtmp784 = add i32 %_public_lval782, %_secret_lval783
  %_secret_subtmp785 = sub i32 %_public_lval781, %_secret_addtmp784
  store i32 %_secret_subtmp785, i32* %_secret___v90_j
  %_public_lval786 = load i32, i32* %_public___v89_i
  %_public_lhssext787 = zext i32 %_public_lval786 to i64
  %_public_ugtetmp788 = icmp uge i64 %_public_lhssext787, 0
  %_public_zexttmp789 = zext i1 %_public_ugtetmp788 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp789)
  %_public_lval790 = load i32, i32* %_public___v89_i
  %_public_lval791 = load i32, i32* %_public____out_len
  %_public_icast792 = zext i32 %_public_lval791 to i64
  %_public_lhssext793 = zext i32 %_public_lval790 to i64
  %_public_ulttmp794 = icmp ult i64 %_public_lhssext793, %_public_icast792
  %_public_zexttmp795 = zext i1 %_public_ulttmp794 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp795)
  %_public_lval796 = load i32, i32* %_public___v89_i
  %_secret_dyn797 = load i8*, i8** %_secret_arrarg2
  %_secret_ptr798 = getelementptr inbounds i8, i8* %_secret_dyn797, i32 %_public_lval796
  %_secret_lval799 = load i8, i8* %_secret_ptr798
  %_declassified__secret_lval800 = load i32, i32* %_secret___v90_j
  %_public_lhssext801 = zext i32 %_declassified__secret_lval800 to i64
  %_public_ugtetmp802 = icmp uge i64 %_public_lhssext801, 0
  %_public_zexttmp803 = zext i1 %_public_ugtetmp802 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp803)
  %_declassified__secret_lval804 = load i32, i32* %_secret___v90_j
  %_public_lhssext805 = zext i32 %_declassified__secret_lval804 to i64
  %_public_ulttmp806 = icmp ult i64 %_public_lhssext805, 20
  %_public_zexttmp807 = zext i1 %_public_ulttmp806 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp807)
  %_declassified__secret_lval808 = load i32, i32* %_secret___v90_j
  %_secret_ptr809 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v80_pmac, i32 0, i32 %_declassified__secret_lval808
  %_secret_lval810 = load i8, i8* %_secret_ptr809
  %_secret_neqtmp = icmp ne i8 %_secret_lval799, %_secret_lval810
  store i1 %_secret_neqtmp, i1* %_secret___m21
  %_secret_lval811 = load i1, i1* %_secret___m21
  %_secret_landtmp812 = and i1 true, %_secret_lval811
  %_secret_lval813 = load i1, i1* %_secret___m20
  %_secret_landtmp814 = and i1 %_secret_landtmp812, %_secret_lval813
  %_secret_lval815 = load i1, i1* %_secret___rnset
  %_secret_landtmp816 = and i1 %_secret_landtmp814, %_secret_lval815
  %_secret_condtmp817 = icmp ne i1 %_secret_landtmp816, false
  %_secret_lval818 = load i32, i32* %_secret___v66_ret
  %_secret_selecttmp819 = call i32 @select.cmov.sel.i32(i1 %_secret_condtmp817, i32 0, i32 %_secret_lval818)
  store i32 %_secret_selecttmp819, i32* %_secret___v66_ret
  %_secret_lval820 = load i1, i1* %_secret___m21
  %_secret_lnottmp821 = xor i1 %_secret_lval820, true
  store i1 %_secret_lnottmp821, i1* %_secret___m21
  %_secret_lval822 = load i1, i1* %_secret___m20
  %_secret_lnottmp823 = xor i1 %_secret_lval822, true
  store i1 %_secret_lnottmp823, i1* %_secret___m20
  br label %branchmerge825

elsebranch824:                                    ; preds = %branchmerge572
  br label %branchmerge825

branchmerge825:                                   ; preds = %elsebranch824, %thenbranch738
  %_secret_lval826 = load i32, i32* %_secret___v66_ret
  store i32 %_secret_lval826, i32* %_secret___rval
  %_secret_lval827 = load i32, i32* %_secret___rval
  ret i32 %_secret_lval827
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