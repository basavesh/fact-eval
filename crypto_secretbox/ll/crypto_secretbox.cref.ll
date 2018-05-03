; ModuleID = 'Module'
source_filename = "Module"

%poly1305_state_internal_t = type { [3 x i64], [3 x i64], [2 x i64], i64, [16 x i8], i8 }

define internal void @_fact_memzero(i8* %_secret_arrarg1, i32 %_public___buf_len2) {
entry:
  %_secret_arrarg = alloca i8*
  store i8* %_secret_arrarg1, i8** %_secret_arrarg
  %_public___buf_len = alloca i32
  store i32 %_public___buf_len2, i32* %_public___buf_len
  %_secret___rnset = alloca i1
  store i1 true, i1* %_secret___rnset
  %_secret_dynarrarg = load i8*, i8** %_secret_arrarg
  %_public_lval = load i32, i32* %_public___buf_len
  call void @_memzero(i8* %_secret_dynarrarg, i32 %_public_lval)
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i32, i1) #0

; Function Attrs: noinline
define internal void @_memzero(i8*, i32) #1 {
entry:
  call void @llvm.memset.p0i8.i32(i8* %0, i8 0, i32 %1, i32 1, i1 false)
  ret void
}

define internal void @_fact_memzero64(i64* %_secret_arrarg1, i32 %_public___buf_len2) {
entry:
  %_secret_arrarg = alloca i64*
  store i64* %_secret_arrarg1, i64** %_secret_arrarg
  %_public___buf_len = alloca i32
  store i32 %_public___buf_len2, i32* %_public___buf_len
  %_secret___rnset = alloca i1
  store i1 true, i1* %_secret___rnset
  %_secret_dynarrarg = load i64*, i64** %_secret_arrarg
  %_public_lval = load i32, i32* %_public___buf_len
  call void @_memzero64(i64* %_secret_dynarrarg, i32 %_public_lval)
  ret void
}

; Function Attrs: noinline
define internal void @_memzero64(i64*, i32) #1 {
entry:
  %_secret_cast = bitcast i64* %0 to i8*
  call void @llvm.memset.p0i8.i32(i8* %_secret_cast, i8 0, i32 %1, i32 8, i1 false)
  ret void
}

define internal i1 @_crypto_verify_16(i8* %_secret_arrarg1, i8* %_secret_arrarg3) {
entry:
  %_secret_arrarg = alloca i8*
  store i8* %_secret_arrarg1, i8** %_secret_arrarg
  %_secret_arrarg2 = alloca i8*
  store i8* %_secret_arrarg3, i8** %_secret_arrarg2
  %_secret___rval = alloca i1
  %_secret___rnset = alloca i1
  %_public___v1_i = alloca i32
  %_secret___m1 = alloca i1
  store i1 false, i1* %_secret___rval
  store i1 true, i1* %_secret___rnset
  store i32 0, i32* %_public___v1_i
  br label %loop_check

loop_check:                                       ; preds = %loop_body, %entry
  %_public_lval = load i32, i32* %_public___v1_i
  %_public_ulttmp = icmp ult i32 %_public_lval, 16
  br i1 %_public_ulttmp, label %loop_body, label %loop_end

loop_body:                                        ; preds = %loop_check
  %_public_lval4 = load i32, i32* %_public___v1_i
  %_secret_dyn = load i8*, i8** %_secret_arrarg
  %_secret_ptr = getelementptr inbounds i8, i8* %_secret_dyn, i32 %_public_lval4
  %_secret_lval = load i8, i8* %_secret_ptr
  %_public_lval5 = load i32, i32* %_public___v1_i
  %_secret_dyn6 = load i8*, i8** %_secret_arrarg2
  %_secret_ptr7 = getelementptr inbounds i8, i8* %_secret_dyn6, i32 %_public_lval5
  %_secret_lval8 = load i8, i8* %_secret_ptr7
  %_secret_neqtmp = icmp ne i8 %_secret_lval, %_secret_lval8
  store i1 %_secret_neqtmp, i1* %_secret___m1
  %_secret_lval9 = load i1, i1* %_secret___m1
  %_secret_landtmp = and i1 true, %_secret_lval9
  %_secret_lval10 = load i1, i1* %_secret___rnset
  %_secret_landtmp11 = and i1 %_secret_landtmp, %_secret_lval10
  %_secret_condtmp = icmp ne i1 %_secret_landtmp11, false
  %_secret_lval12 = load i1, i1* %_secret___rval
  %_secret_selecttmp = call i1 @select.cmov.asm.i1(i1 %_secret_condtmp, i1 false, i1 %_secret_lval12)
  store i1 %_secret_selecttmp, i1* %_secret___rval
  %_secret_lval13 = load i1, i1* %_secret___m1
  %_secret_landtmp14 = and i1 true, %_secret_lval13
  %_secret_lval15 = load i1, i1* %_secret___rnset
  %_secret_landtmp16 = and i1 %_secret_landtmp14, %_secret_lval15
  %_secret_condtmp17 = icmp ne i1 %_secret_landtmp16, false
  %_secret_lval18 = load i1, i1* %_secret___rnset
  %_secret_selecttmp19 = call i1 @select.cmov.asm.i1(i1 %_secret_condtmp17, i1 false, i1 %_secret_lval18)
  store i1 %_secret_selecttmp19, i1* %_secret___rnset
  %_secret_lval20 = load i1, i1* %_secret___m1
  %_secret_lnottmp = xor i1 %_secret_lval20, true
  store i1 %_secret_lnottmp, i1* %_secret___m1
  %_public_lval21 = load i32, i32* %_public___v1_i
  %_public_addtmp = add i32 %_public_lval21, 1
  store i32 %_public_addtmp, i32* %_public___v1_i
  br label %loop_check

loop_end:                                         ; preds = %loop_check
  %_secret_lval22 = load i1, i1* %_secret___rnset
  %_secret_landtmp23 = and i1 true, %_secret_lval22
  %_secret_condtmp24 = icmp ne i1 %_secret_landtmp23, false
  %_secret_lval25 = load i1, i1* %_secret___rval
  %_secret_selecttmp26 = call i1 @select.cmov.asm.i1(i1 %_secret_condtmp24, i1 true, i1 %_secret_lval25)
  store i1 %_secret_selecttmp26, i1* %_secret___rval
  %_secret_lval27 = load i1, i1* %_secret___rnset
  %_secret_landtmp28 = and i1 true, %_secret_lval27
  %_secret_condtmp29 = icmp ne i1 %_secret_landtmp28, false
  %_secret_lval30 = load i1, i1* %_secret___rnset
  %_secret_selecttmp31 = call i1 @select.cmov.asm.i1(i1 %_secret_condtmp29, i1 false, i1 %_secret_lval30)
  store i1 %_secret_selecttmp31, i1* %_secret___rnset
  %_secret_lval32 = load i1, i1* %_secret___rval
  ret i1 %_secret_lval32
}

; Function Attrs: alwaysinline
define internal i1 @select.cmov.asm.i1(i1 %_secret_cond, i1 %_secret_a, i1 %_secret_b) #2 {
entry:
  %_secret_zext = zext i1 %_secret_a to i32
  %_secret_zext1 = zext i1 %_secret_b to i32
  %_secret_asm = call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %_secret_cond, i32 %_secret_zext, i32 %_secret_zext1)
  %_secret_trunc = trunc i32 %_secret_asm to i1
  ret i1 %_secret_trunc
}

define internal void @_poly1305_blocks(%poly1305_state_internal_t* %state, i8* %_secret_arrarg1, i32 %_public___m_len2) {
entry:
  %_secret_arrarg = alloca i8*
  store i8* %_secret_arrarg1, i8** %_secret_arrarg
  %_public___m_len = alloca i32
  store i32 %_public___m_len2, i32* %_public___m_len
  %_secret___rnset = alloca i1
  %_public___v2_mask44 = alloca i64
  %_public___v3_mask42 = alloca i64
  %_secret___m2 = alloca i64
  %_secret___m3 = alloca i1
  %_secret___v4_hibit = alloca i64
  %_secret___v5_r0 = alloca i64
  %_secret___v6_r1 = alloca i64
  %_secret___v7_r2 = alloca i64
  %_secret___v8_h0 = alloca i64
  %_secret___v9_h1 = alloca i64
  %_secret___v10_h2 = alloca i64
  %_secret___v11_s1 = alloca i64
  %_secret___v12_s2 = alloca i64
  %_public___v13_mloops = alloca i32
  %_public___v14_bindex = alloca i32
  %_secret___v15_t0 = alloca i64
  %_secret___v16_t1 = alloca i64
  %_secret___v17_d0 = alloca i128
  %_secret___v18_d1 = alloca i128
  %_secret___v19_d2 = alloca i128
  %_secret___v20_c = alloca i64
  store i1 true, i1* %_secret___rnset
  store i64 17592186044415, i64* %_public___v2_mask44
  store i64 4398046511103, i64* %_public___v3_mask42
  store i64 0, i64* %_secret___m2
  %_secret_structgep = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i32 0, i32 5
  %_secret_lval = load i8, i8* %_secret_structgep
  %_secret_neqtmp = icmp ne i8 %_secret_lval, 0
  store i1 %_secret_neqtmp, i1* %_secret___m3
  %_secret_lval3 = load i1, i1* %_secret___m3
  %_secret_landtmp = and i1 true, %_secret_lval3
  %_secret_lval4 = load i1, i1* %_secret___rnset
  %_secret_landtmp5 = and i1 %_secret_landtmp, %_secret_lval4
  %_secret_condtmp = icmp ne i1 %_secret_landtmp5, false
  %_secret_lval6 = load i64, i64* %_secret___m2
  %_secret_selecttmp = call i64 @select.cmov.sel.i64(i1 %_secret_condtmp, i64 0, i64 %_secret_lval6)
  store i64 %_secret_selecttmp, i64* %_secret___m2
  %_secret_lval7 = load i1, i1* %_secret___m3
  %_secret_lnottmp = xor i1 %_secret_lval7, true
  store i1 %_secret_lnottmp, i1* %_secret___m3
  %_secret_lval8 = load i1, i1* %_secret___m3
  %_secret_landtmp9 = and i1 true, %_secret_lval8
  %_secret_lval10 = load i1, i1* %_secret___rnset
  %_secret_landtmp11 = and i1 %_secret_landtmp9, %_secret_lval10
  %_secret_condtmp12 = icmp ne i1 %_secret_landtmp11, false
  %_secret_lval13 = load i64, i64* %_secret___m2
  %_secret_selecttmp14 = call i64 @select.cmov.sel.i64(i1 %_secret_condtmp12, i64 1099511627776, i64 %_secret_lval13)
  store i64 %_secret_selecttmp14, i64* %_secret___m2
  %_secret___m215 = load i64, i64* %_secret___m2
  store i64 %_secret___m215, i64* %_secret___v4_hibit
  %_secret_structgep16 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i32 0, i32 0
  %_secret_ptr = getelementptr inbounds [3 x i64], [3 x i64]* %_secret_structgep16, i8 0, i8 0
  %_secret_lval17 = load i64, i64* %_secret_ptr
  store i64 %_secret_lval17, i64* %_secret___v5_r0
  %_secret_structgep18 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i32 0, i32 0
  %_secret_ptr19 = getelementptr inbounds [3 x i64], [3 x i64]* %_secret_structgep18, i8 0, i8 1
  %_secret_lval20 = load i64, i64* %_secret_ptr19
  store i64 %_secret_lval20, i64* %_secret___v6_r1
  %_secret_structgep21 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i32 0, i32 0
  %_secret_ptr22 = getelementptr inbounds [3 x i64], [3 x i64]* %_secret_structgep21, i8 0, i8 2
  %_secret_lval23 = load i64, i64* %_secret_ptr22
  store i64 %_secret_lval23, i64* %_secret___v7_r2
  %_secret_structgep24 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i32 0, i32 1
  %_secret_ptr25 = getelementptr inbounds [3 x i64], [3 x i64]* %_secret_structgep24, i8 0, i8 0
  %_secret_lval26 = load i64, i64* %_secret_ptr25
  store i64 %_secret_lval26, i64* %_secret___v8_h0
  %_secret_structgep27 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i32 0, i32 1
  %_secret_ptr28 = getelementptr inbounds [3 x i64], [3 x i64]* %_secret_structgep27, i8 0, i8 1
  %_secret_lval29 = load i64, i64* %_secret_ptr28
  store i64 %_secret_lval29, i64* %_secret___v9_h1
  %_secret_structgep30 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i32 0, i32 1
  %_secret_ptr31 = getelementptr inbounds [3 x i64], [3 x i64]* %_secret_structgep30, i8 0, i8 2
  %_secret_lval32 = load i64, i64* %_secret_ptr31
  store i64 %_secret_lval32, i64* %_secret___v10_h2
  %_secret_lval33 = load i64, i64* %_secret___v6_r1
  %_secret_multmp = mul i64 %_secret_lval33, 20
  store i64 %_secret_multmp, i64* %_secret___v11_s1
  %_secret_lval34 = load i64, i64* %_secret___v7_r2
  %_secret_multmp35 = mul i64 %_secret_lval34, 20
  store i64 %_secret_multmp35, i64* %_secret___v12_s2
  %_public_lval = load i32, i32* %_public___m_len
  %_public_lrshift = lshr i32 %_public_lval, 4
  store i32 %_public_lrshift, i32* %_public___v13_mloops
  store i32 0, i32* %_public___v14_bindex
  br label %loop_check

loop_check:                                       ; preds = %loop_body, %entry
  %_public_lval36 = load i32, i32* %_public___v14_bindex
  %_public_lval37 = load i32, i32* %_public___v13_mloops
  %_public_ulttmp = icmp ult i32 %_public_lval36, %_public_lval37
  br i1 %_public_ulttmp, label %loop_body, label %loop_end

loop_body:                                        ; preds = %loop_check
  %_public_lval38 = load i32, i32* %_public___v14_bindex
  %_public_multmp = mul i32 %_public_lval38, 16
  %_secret_ldedviewptr = load i8*, i8** %_secret_arrarg
  %_secret_source_gep = getelementptr inbounds i8, i8* %_secret_ldedviewptr, i32 %_public_multmp
  %_secret_arrviewdyn = alloca i8*
  store i8* %_secret_source_gep, i8** %_secret_arrviewdyn
  %_public_lval39 = load i32, i32* %_public___v14_bindex
  %_public_multmp40 = mul i32 %_public_lval39, 16
  %_secret_ldedviewptr41 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep42 = getelementptr inbounds i8, i8* %_secret_ldedviewptr41, i32 %_public_multmp40
  %_secret_arrviewdyn43 = alloca i8*
  store i8* %_secret_source_gep42, i8** %_secret_arrviewdyn43
  %_secret_dynarrarg = load i8*, i8** %_secret_arrviewdyn43
  %_secret_calltmp = call i64 @_load64_le(i8* %_secret_dynarrarg)
  store i64 %_secret_calltmp, i64* %_secret___v15_t0
  %_public_lval44 = load i32, i32* %_public___v14_bindex
  %_public_multmp45 = mul i32 %_public_lval44, 16
  %_public_addtmp = add i32 %_public_multmp45, 8
  %_secret_ldedviewptr46 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep47 = getelementptr inbounds i8, i8* %_secret_ldedviewptr46, i32 %_public_addtmp
  %_secret_arrviewdyn48 = alloca i8*
  store i8* %_secret_source_gep47, i8** %_secret_arrviewdyn48
  %_public_lval49 = load i32, i32* %_public___v14_bindex
  %_public_multmp50 = mul i32 %_public_lval49, 16
  %_public_addtmp51 = add i32 %_public_multmp50, 8
  %_secret_ldedviewptr52 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep53 = getelementptr inbounds i8, i8* %_secret_ldedviewptr52, i32 %_public_addtmp51
  %_secret_arrviewdyn54 = alloca i8*
  store i8* %_secret_source_gep53, i8** %_secret_arrviewdyn54
  %_secret_dynarrarg55 = load i8*, i8** %_secret_arrviewdyn54
  %_secret_calltmp56 = call i64 @_load64_le(i8* %_secret_dynarrarg55)
  store i64 %_secret_calltmp56, i64* %_secret___v16_t1
  %_secret_lval57 = load i64, i64* %_secret___v8_h0
  %_secret_lval58 = load i64, i64* %_secret___v15_t0
  %_public_lval59 = load i64, i64* %_public___v2_mask44
  %_secret_andtmp = and i64 %_secret_lval58, %_public_lval59
  %_secret_addtmp = add i64 %_secret_lval57, %_secret_andtmp
  store i64 %_secret_addtmp, i64* %_secret___v8_h0
  %_secret_lval60 = load i64, i64* %_secret___v9_h1
  %_secret_lval61 = load i64, i64* %_secret___v15_t0
  %_secret_lrshift = lshr i64 %_secret_lval61, 44
  %_secret_lval62 = load i64, i64* %_secret___v16_t1
  %_secret_lshift = shl i64 %_secret_lval62, 20
  %_secret_ortmp = or i64 %_secret_lrshift, %_secret_lshift
  %_public_lval63 = load i64, i64* %_public___v2_mask44
  %_secret_andtmp64 = and i64 %_secret_ortmp, %_public_lval63
  %_secret_addtmp65 = add i64 %_secret_lval60, %_secret_andtmp64
  store i64 %_secret_addtmp65, i64* %_secret___v9_h1
  %_secret_lval66 = load i64, i64* %_secret___v10_h2
  %_secret_lval67 = load i64, i64* %_secret___v16_t1
  %_secret_lrshift68 = lshr i64 %_secret_lval67, 24
  %_public_lval69 = load i64, i64* %_public___v3_mask42
  %_secret_andtmp70 = and i64 %_secret_lrshift68, %_public_lval69
  %_secret_lval71 = load i64, i64* %_secret___v4_hibit
  %_secret_ortmp72 = or i64 %_secret_andtmp70, %_secret_lval71
  %_secret_addtmp73 = add i64 %_secret_lval66, %_secret_ortmp72
  store i64 %_secret_addtmp73, i64* %_secret___v10_h2
  %_secret_lval74 = load i64, i64* %_secret___v8_h0
  %_secret_ucast = zext i64 %_secret_lval74 to i128
  %_secret_lval75 = load i64, i64* %_secret___v5_r0
  %_secret_rhssext = zext i64 %_secret_lval75 to i128
  %_secret_multmp76 = mul i128 %_secret_ucast, %_secret_rhssext
  %_secret_lval77 = load i64, i64* %_secret___v9_h1
  %_secret_ucast78 = zext i64 %_secret_lval77 to i128
  %_secret_lval79 = load i64, i64* %_secret___v12_s2
  %_secret_rhssext80 = zext i64 %_secret_lval79 to i128
  %_secret_multmp81 = mul i128 %_secret_ucast78, %_secret_rhssext80
  %_secret_addtmp82 = add i128 %_secret_multmp76, %_secret_multmp81
  %_secret_lval83 = load i64, i64* %_secret___v10_h2
  %_secret_ucast84 = zext i64 %_secret_lval83 to i128
  %_secret_lval85 = load i64, i64* %_secret___v11_s1
  %_secret_rhssext86 = zext i64 %_secret_lval85 to i128
  %_secret_multmp87 = mul i128 %_secret_ucast84, %_secret_rhssext86
  %_secret_addtmp88 = add i128 %_secret_addtmp82, %_secret_multmp87
  store i128 %_secret_addtmp88, i128* %_secret___v17_d0
  %_secret_lval89 = load i64, i64* %_secret___v8_h0
  %_secret_ucast90 = zext i64 %_secret_lval89 to i128
  %_secret_lval91 = load i64, i64* %_secret___v6_r1
  %_secret_rhssext92 = zext i64 %_secret_lval91 to i128
  %_secret_multmp93 = mul i128 %_secret_ucast90, %_secret_rhssext92
  %_secret_lval94 = load i64, i64* %_secret___v9_h1
  %_secret_ucast95 = zext i64 %_secret_lval94 to i128
  %_secret_lval96 = load i64, i64* %_secret___v5_r0
  %_secret_rhssext97 = zext i64 %_secret_lval96 to i128
  %_secret_multmp98 = mul i128 %_secret_ucast95, %_secret_rhssext97
  %_secret_addtmp99 = add i128 %_secret_multmp93, %_secret_multmp98
  %_secret_lval100 = load i64, i64* %_secret___v10_h2
  %_secret_ucast101 = zext i64 %_secret_lval100 to i128
  %_secret_lval102 = load i64, i64* %_secret___v12_s2
  %_secret_rhssext103 = zext i64 %_secret_lval102 to i128
  %_secret_multmp104 = mul i128 %_secret_ucast101, %_secret_rhssext103
  %_secret_addtmp105 = add i128 %_secret_addtmp99, %_secret_multmp104
  store i128 %_secret_addtmp105, i128* %_secret___v18_d1
  %_secret_lval106 = load i64, i64* %_secret___v8_h0
  %_secret_ucast107 = zext i64 %_secret_lval106 to i128
  %_secret_lval108 = load i64, i64* %_secret___v7_r2
  %_secret_rhssext109 = zext i64 %_secret_lval108 to i128
  %_secret_multmp110 = mul i128 %_secret_ucast107, %_secret_rhssext109
  %_secret_lval111 = load i64, i64* %_secret___v9_h1
  %_secret_ucast112 = zext i64 %_secret_lval111 to i128
  %_secret_lval113 = load i64, i64* %_secret___v6_r1
  %_secret_rhssext114 = zext i64 %_secret_lval113 to i128
  %_secret_multmp115 = mul i128 %_secret_ucast112, %_secret_rhssext114
  %_secret_addtmp116 = add i128 %_secret_multmp110, %_secret_multmp115
  %_secret_lval117 = load i64, i64* %_secret___v10_h2
  %_secret_ucast118 = zext i64 %_secret_lval117 to i128
  %_secret_lval119 = load i64, i64* %_secret___v5_r0
  %_secret_rhssext120 = zext i64 %_secret_lval119 to i128
  %_secret_multmp121 = mul i128 %_secret_ucast118, %_secret_rhssext120
  %_secret_addtmp122 = add i128 %_secret_addtmp116, %_secret_multmp121
  store i128 %_secret_addtmp122, i128* %_secret___v19_d2
  %_secret_lval123 = load i128, i128* %_secret___v17_d0
  %_secret_lrshift124 = lshr i128 %_secret_lval123, 44
  %_secret_ucast125 = trunc i128 %_secret_lrshift124 to i64
  store i64 %_secret_ucast125, i64* %_secret___v20_c
  %_secret_lval126 = load i128, i128* %_secret___v17_d0
  %_public_lval127 = load i64, i64* %_public___v2_mask44
  %_secret_rhssext128 = zext i64 %_public_lval127 to i128
  %_secret_andtmp129 = and i128 %_secret_lval126, %_secret_rhssext128
  %_secret_truncbinop = trunc i128 %_secret_andtmp129 to i64
  store i64 %_secret_truncbinop, i64* %_secret___v8_h0
  %_secret_lval130 = load i128, i128* %_secret___v18_d1
  %_secret_lval131 = load i64, i64* %_secret___v20_c
  %_secret_rhssext132 = zext i64 %_secret_lval131 to i128
  %_secret_addtmp133 = add i128 %_secret_lval130, %_secret_rhssext132
  store i128 %_secret_addtmp133, i128* %_secret___v18_d1
  %_secret_lval134 = load i128, i128* %_secret___v18_d1
  %_secret_lrshift135 = lshr i128 %_secret_lval134, 44
  %_secret_ucast136 = trunc i128 %_secret_lrshift135 to i64
  store i64 %_secret_ucast136, i64* %_secret___v20_c
  %_secret_lval137 = load i128, i128* %_secret___v18_d1
  %_public_lval138 = load i64, i64* %_public___v2_mask44
  %_secret_rhssext139 = zext i64 %_public_lval138 to i128
  %_secret_andtmp140 = and i128 %_secret_lval137, %_secret_rhssext139
  %_secret_truncbinop141 = trunc i128 %_secret_andtmp140 to i64
  store i64 %_secret_truncbinop141, i64* %_secret___v9_h1
  %_secret_lval142 = load i128, i128* %_secret___v19_d2
  %_secret_lval143 = load i64, i64* %_secret___v20_c
  %_secret_rhssext144 = zext i64 %_secret_lval143 to i128
  %_secret_addtmp145 = add i128 %_secret_lval142, %_secret_rhssext144
  store i128 %_secret_addtmp145, i128* %_secret___v19_d2
  %_secret_lval146 = load i128, i128* %_secret___v19_d2
  %_secret_lrshift147 = lshr i128 %_secret_lval146, 42
  %_secret_ucast148 = trunc i128 %_secret_lrshift147 to i64
  store i64 %_secret_ucast148, i64* %_secret___v20_c
  %_secret_lval149 = load i128, i128* %_secret___v19_d2
  %_public_lval150 = load i64, i64* %_public___v3_mask42
  %_secret_rhssext151 = zext i64 %_public_lval150 to i128
  %_secret_andtmp152 = and i128 %_secret_lval149, %_secret_rhssext151
  %_secret_truncbinop153 = trunc i128 %_secret_andtmp152 to i64
  store i64 %_secret_truncbinop153, i64* %_secret___v10_h2
  %_secret_lval154 = load i64, i64* %_secret___v8_h0
  %_secret_lval155 = load i64, i64* %_secret___v20_c
  %_secret_multmp156 = mul i64 %_secret_lval155, 5
  %_secret_addtmp157 = add i64 %_secret_lval154, %_secret_multmp156
  store i64 %_secret_addtmp157, i64* %_secret___v8_h0
  %_secret_lval158 = load i64, i64* %_secret___v8_h0
  %_secret_lrshift159 = lshr i64 %_secret_lval158, 44
  store i64 %_secret_lrshift159, i64* %_secret___v20_c
  %_secret_lval160 = load i64, i64* %_secret___v8_h0
  %_public_lval161 = load i64, i64* %_public___v2_mask44
  %_secret_andtmp162 = and i64 %_secret_lval160, %_public_lval161
  store i64 %_secret_andtmp162, i64* %_secret___v8_h0
  %_secret_lval163 = load i64, i64* %_secret___v9_h1
  %_secret_lval164 = load i64, i64* %_secret___v20_c
  %_secret_addtmp165 = add i64 %_secret_lval163, %_secret_lval164
  store i64 %_secret_addtmp165, i64* %_secret___v9_h1
  %_public_lval166 = load i32, i32* %_public___v14_bindex
  %_public_addtmp167 = add i32 %_public_lval166, 1
  store i32 %_public_addtmp167, i32* %_public___v14_bindex
  br label %loop_check

loop_end:                                         ; preds = %loop_check
  %_secret_structgep168 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i32 0, i32 1
  %_secret_ptr169 = getelementptr inbounds [3 x i64], [3 x i64]* %_secret_structgep168, i8 0, i8 0
  %_secret_lval170 = load i64, i64* %_secret___v8_h0
  store i64 %_secret_lval170, i64* %_secret_ptr169
  %_secret_structgep171 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i32 0, i32 1
  %_secret_ptr172 = getelementptr inbounds [3 x i64], [3 x i64]* %_secret_structgep171, i8 0, i8 1
  %_secret_lval173 = load i64, i64* %_secret___v9_h1
  store i64 %_secret_lval173, i64* %_secret_ptr172
  %_secret_structgep174 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i32 0, i32 1
  %_secret_ptr175 = getelementptr inbounds [3 x i64], [3 x i64]* %_secret_structgep174, i8 0, i8 2
  %_secret_lval176 = load i64, i64* %_secret___v10_h2
  store i64 %_secret_lval176, i64* %_secret_ptr175
  ret void
}

; Function Attrs: alwaysinline
define internal i64 @select.cmov.sel.i64(i1 %_secret_cond, i64 %_secret_a, i64 %_secret_b) #2 {
entry:
  %_secret_select = select i1 %_secret_cond, i64 %_secret_a, i64 %_secret_b
  ret i64 %_secret_select
}

; Function Attrs: alwaysinline readonly
define internal i64 @_load64_le(i8*) #3 {
entry:
  %_secret_cast = bitcast i8* %0 to i64*
  %_secret_ld = load i64, i64* %_secret_cast
  ret i64 %_secret_ld
}

define internal void @_poly1305_init(%poly1305_state_internal_t* %state, i8* %_secret_arrarg1) {
entry:
  %_secret_arrarg = alloca i8*
  store i8* %_secret_arrarg1, i8** %_secret_arrarg
  %_secret___rnset = alloca i1
  %_secret___v21_t0 = alloca i64
  %_secret___v22_t1 = alloca i64
  store i1 true, i1* %_secret___rnset
  %_secret_ldedviewptr = load i8*, i8** %_secret_arrarg
  %_secret_source_gep = getelementptr inbounds i8, i8* %_secret_ldedviewptr, i8 0
  %_secret_arrviewdyn = alloca i8*
  store i8* %_secret_source_gep, i8** %_secret_arrviewdyn
  %_secret_ldedviewptr2 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep3 = getelementptr inbounds i8, i8* %_secret_ldedviewptr2, i8 0
  %_secret_arrviewdyn4 = alloca i8*
  store i8* %_secret_source_gep3, i8** %_secret_arrviewdyn4
  %_secret_dynarrarg = load i8*, i8** %_secret_arrviewdyn4
  %_secret_calltmp = call i64 @_load64_le(i8* %_secret_dynarrarg)
  store i64 %_secret_calltmp, i64* %_secret___v21_t0
  %_secret_ldedviewptr5 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep6 = getelementptr inbounds i8, i8* %_secret_ldedviewptr5, i8 8
  %_secret_arrviewdyn7 = alloca i8*
  store i8* %_secret_source_gep6, i8** %_secret_arrviewdyn7
  %_secret_ldedviewptr8 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep9 = getelementptr inbounds i8, i8* %_secret_ldedviewptr8, i8 8
  %_secret_arrviewdyn10 = alloca i8*
  store i8* %_secret_source_gep9, i8** %_secret_arrviewdyn10
  %_secret_dynarrarg11 = load i8*, i8** %_secret_arrviewdyn10
  %_secret_calltmp12 = call i64 @_load64_le(i8* %_secret_dynarrarg11)
  store i64 %_secret_calltmp12, i64* %_secret___v22_t1
  %_secret_structgep = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i32 0, i32 0
  %_secret_ptr = getelementptr inbounds [3 x i64], [3 x i64]* %_secret_structgep, i8 0, i8 0
  %_secret_lval = load i64, i64* %_secret___v21_t0
  %_secret_andtmp = and i64 %_secret_lval, 17575274610687
  store i64 %_secret_andtmp, i64* %_secret_ptr
  %_secret_structgep13 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i32 0, i32 0
  %_secret_ptr14 = getelementptr inbounds [3 x i64], [3 x i64]* %_secret_structgep13, i8 0, i8 1
  %_secret_lval15 = load i64, i64* %_secret___v21_t0
  %_secret_lrshift = lshr i64 %_secret_lval15, 44
  %_secret_lval16 = load i64, i64* %_secret___v22_t1
  %_secret_lshift = shl i64 %_secret_lval16, 20
  %_secret_ortmp = or i64 %_secret_lrshift, %_secret_lshift
  %_secret_andtmp17 = and i64 %_secret_ortmp, 17592181915647
  store i64 %_secret_andtmp17, i64* %_secret_ptr14
  %_secret_structgep18 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i32 0, i32 0
  %_secret_ptr19 = getelementptr inbounds [3 x i64], [3 x i64]* %_secret_structgep18, i8 0, i8 2
  %_secret_lval20 = load i64, i64* %_secret___v22_t1
  %_secret_lrshift21 = lshr i64 %_secret_lval20, 24
  %_secret_andtmp22 = and i64 %_secret_lrshift21, 68719475727
  store i64 %_secret_andtmp22, i64* %_secret_ptr19
  %_secret_structgep23 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i32 0, i32 1
  %_secret_ptr24 = getelementptr inbounds [3 x i64], [3 x i64]* %_secret_structgep23, i8 0, i8 0
  store i64 0, i64* %_secret_ptr24
  %_secret_structgep25 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i32 0, i32 1
  %_secret_ptr26 = getelementptr inbounds [3 x i64], [3 x i64]* %_secret_structgep25, i8 0, i8 1
  store i64 0, i64* %_secret_ptr26
  %_secret_structgep27 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i32 0, i32 1
  %_secret_ptr28 = getelementptr inbounds [3 x i64], [3 x i64]* %_secret_structgep27, i8 0, i8 2
  store i64 0, i64* %_secret_ptr28
  %_secret_structgep29 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i32 0, i32 2
  %_secret_ptr30 = getelementptr inbounds [2 x i64], [2 x i64]* %_secret_structgep29, i8 0, i8 0
  %_secret_ldedviewptr31 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep32 = getelementptr inbounds i8, i8* %_secret_ldedviewptr31, i8 16
  %_secret_arrviewdyn33 = alloca i8*
  store i8* %_secret_source_gep32, i8** %_secret_arrviewdyn33
  %_secret_ldedviewptr34 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep35 = getelementptr inbounds i8, i8* %_secret_ldedviewptr34, i8 16
  %_secret_arrviewdyn36 = alloca i8*
  store i8* %_secret_source_gep35, i8** %_secret_arrviewdyn36
  %_secret_dynarrarg37 = load i8*, i8** %_secret_arrviewdyn36
  %_secret_calltmp38 = call i64 @_load64_le(i8* %_secret_dynarrarg37)
  store i64 %_secret_calltmp38, i64* %_secret_ptr30
  %_secret_structgep39 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i32 0, i32 2
  %_secret_ptr40 = getelementptr inbounds [2 x i64], [2 x i64]* %_secret_structgep39, i8 0, i8 1
  %_secret_ldedviewptr41 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep42 = getelementptr inbounds i8, i8* %_secret_ldedviewptr41, i8 24
  %_secret_arrviewdyn43 = alloca i8*
  store i8* %_secret_source_gep42, i8** %_secret_arrviewdyn43
  %_secret_ldedviewptr44 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep45 = getelementptr inbounds i8, i8* %_secret_ldedviewptr44, i8 24
  %_secret_arrviewdyn46 = alloca i8*
  store i8* %_secret_source_gep45, i8** %_secret_arrviewdyn46
  %_secret_dynarrarg47 = load i8*, i8** %_secret_arrviewdyn46
  %_secret_calltmp48 = call i64 @_load64_le(i8* %_secret_dynarrarg47)
  store i64 %_secret_calltmp48, i64* %_secret_ptr40
  %_public_structgep = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i32 0, i32 3
  store i64 0, i64* %_public_structgep
  %_secret_structgep49 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i32 0, i32 5
  store i8 0, i8* %_secret_structgep49
  ret void
}

define internal void @_poly1305_update(%poly1305_state_internal_t* %state, i8* %_secret_arrarg1, i32 %_public___m_len2) {
entry:
  %_secret_arrarg = alloca i8*
  store i8* %_secret_arrarg1, i8** %_secret_arrarg
  %_public___m_len = alloca i32
  store i32 %_public___m_len2, i32* %_public___m_len
  %_secret___rnset = alloca i1
  %_public___v23_mindex = alloca i64
  %_public___v24_want = alloca i64
  %_public___v25_i = alloca i64
  %_public___v26_want = alloca i64
  %_public___v28___v27_len = alloca i32
  %_public___v30_remaining = alloca i64
  %_public___v31_i = alloca i64
  store i1 true, i1* %_secret___rnset
  store i64 0, i64* %_public___v23_mindex
  %_public_structgep = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i32 0, i32 3
  %_public_lval = load i64, i64* %_public_structgep
  %_public_neqtmp = icmp ne i64 %_public_lval, 0
  %_public_branchcompare = icmp eq i1 %_public_neqtmp, true
  br i1 %_public_branchcompare, label %thenbranch, label %elsebranch37

thenbranch:                                       ; preds = %entry
  %_public_structgep3 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i32 0, i32 3
  %_public_lval4 = load i64, i64* %_public_structgep3
  %_public_subtmp = sub i64 16, %_public_lval4
  store i64 %_public_subtmp, i64* %_public___v24_want
  %_public_lval5 = load i64, i64* %_public___v24_want
  %_public_lval6 = load i32, i32* %_public___m_len
  %_public_rhssext = zext i32 %_public_lval6 to i64
  %_public_ugttmp = icmp ugt i64 %_public_lval5, %_public_rhssext
  %_public_branchcompare7 = icmp eq i1 %_public_ugttmp, true
  br i1 %_public_branchcompare7, label %thenbranch8, label %elsebranch

thenbranch8:                                      ; preds = %thenbranch
  %_public_lval9 = load i32, i32* %_public___m_len
  %_public_zexttmp = zext i32 %_public_lval9 to i64
  store i64 %_public_zexttmp, i64* %_public___v24_want
  br label %branchmerge

elsebranch:                                       ; preds = %thenbranch
  br label %branchmerge

branchmerge:                                      ; preds = %elsebranch, %thenbranch8
  store i64 0, i64* %_public___v25_i
  br label %loop_check

loop_check:                                       ; preds = %loop_body, %branchmerge
  %_public_lval10 = load i64, i64* %_public___v25_i
  %_public_lval11 = load i64, i64* %_public___v24_want
  %_public_ulttmp = icmp ult i64 %_public_lval10, %_public_lval11
  br i1 %_public_ulttmp, label %loop_body, label %loop_end

loop_body:                                        ; preds = %loop_check
  %_secret_structgep = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i32 0, i32 4
  %_public_structgep12 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i32 0, i32 3
  %_public_lval13 = load i64, i64* %_public_structgep12
  %_public_lval14 = load i64, i64* %_public___v25_i
  %_public_addtmp = add i64 %_public_lval13, %_public_lval14
  %_secret_ptr = getelementptr inbounds [16 x i8], [16 x i8]* %_secret_structgep, i64 0, i64 %_public_addtmp
  %_public_lval15 = load i64, i64* %_public___v25_i
  %_secret_dyn = load i8*, i8** %_secret_arrarg
  %_secret_ptr16 = getelementptr inbounds i8, i8* %_secret_dyn, i64 %_public_lval15
  %_secret_lval = load i8, i8* %_secret_ptr16
  store i8 %_secret_lval, i8* %_secret_ptr
  %_public_lval17 = load i64, i64* %_public___v25_i
  %_public_addtmp18 = add i64 %_public_lval17, 1
  store i64 %_public_addtmp18, i64* %_public___v25_i
  br label %loop_check

loop_end:                                         ; preds = %loop_check
  %_public_lval19 = load i64, i64* %_public___v23_mindex
  %_public_lval20 = load i64, i64* %_public___v24_want
  %_public_addtmp21 = add i64 %_public_lval19, %_public_lval20
  store i64 %_public_addtmp21, i64* %_public___v23_mindex
  %_public_structgep22 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i32 0, i32 3
  %_public_structgep23 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i32 0, i32 3
  %_public_lval24 = load i64, i64* %_public_structgep23
  %_public_lval25 = load i64, i64* %_public___v24_want
  %_public_addtmp26 = add i64 %_public_lval24, %_public_lval25
  store i64 %_public_addtmp26, i64* %_public_structgep22
  %_public_structgep27 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i32 0, i32 3
  %_public_lval28 = load i64, i64* %_public_structgep27
  %_public_ulttmp29 = icmp ult i64 %_public_lval28, 16
  %_public_branchcompare30 = icmp eq i1 %_public_ulttmp29, true
  br i1 %_public_branchcompare30, label %thenbranch31, label %elsebranch32

thenbranch31:                                     ; preds = %loop_end
  ret void

elsebranch32:                                     ; preds = %loop_end
  br label %branchmerge33

branchmerge33:                                    ; preds = %elsebranch32
  %_secret_structgep34 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i32 0, i32 4
  %_secret_structgep35 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i32 0, i32 4
  %_secret_arrtoptr = bitcast [16 x i8]* %_secret_structgep35 to i8*
  call void @_poly1305_blocks(%poly1305_state_internal_t* %state, i8* %_secret_arrtoptr, i32 16)
  %_public_structgep36 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i32 0, i32 3
  store i64 0, i64* %_public_structgep36
  br label %branchmerge38

elsebranch37:                                     ; preds = %entry
  br label %branchmerge38

branchmerge38:                                    ; preds = %elsebranch37, %branchmerge33
  %_public_lval39 = load i32, i32* %_public___m_len
  %_public_lval40 = load i64, i64* %_public___v23_mindex
  %_public_lhssext = zext i32 %_public_lval39 to i64
  %_public_subtmp41 = sub i64 %_public_lhssext, %_public_lval40
  %_public_ugtetmp = icmp uge i64 %_public_subtmp41, 16
  %_public_branchcompare42 = icmp eq i1 %_public_ugtetmp, true
  br i1 %_public_branchcompare42, label %thenbranch43, label %elsebranch55

thenbranch43:                                     ; preds = %branchmerge38
  %_public_lval44 = load i32, i32* %_public___m_len
  %_public_lval45 = load i64, i64* %_public___v23_mindex
  %_public_lhssext46 = zext i32 %_public_lval44 to i64
  %_public_subtmp47 = sub i64 %_public_lhssext46, %_public_lval45
  %_public_andtmp = and i64 %_public_subtmp47, 4294967280
  %_public_truncbinop = trunc i64 %_public_andtmp to i32
  %_public_zexttmp48 = zext i32 %_public_truncbinop to i64
  store i64 %_public_zexttmp48, i64* %_public___v26_want
  %_public_lval49 = load i64, i64* %_public___v26_want
  %_public_trunctmp = trunc i64 %_public_lval49 to i32
  store i32 %_public_trunctmp, i32* %_public___v28___v27_len
  %_public_lval50 = load i64, i64* %_public___v23_mindex
  %_secret_ldedviewptr = load i8*, i8** %_secret_arrarg
  %_secret_source_gep = getelementptr inbounds i8, i8* %_secret_ldedviewptr, i64 %_public_lval50
  %_secret___v29_mview = alloca i8*
  store i8* %_secret_source_gep, i8** %_secret___v29_mview
  %_secret_dynarrarg = load i8*, i8** %_secret___v29_mview
  %_public_lval51 = load i32, i32* %_public___v28___v27_len
  call void @_poly1305_blocks(%poly1305_state_internal_t* %state, i8* %_secret_dynarrarg, i32 %_public_lval51)
  %_public_lval52 = load i64, i64* %_public___v23_mindex
  %_public_lval53 = load i64, i64* %_public___v26_want
  %_public_addtmp54 = add i64 %_public_lval52, %_public_lval53
  store i64 %_public_addtmp54, i64* %_public___v23_mindex
  br label %branchmerge56

elsebranch55:                                     ; preds = %branchmerge38
  br label %branchmerge56

branchmerge56:                                    ; preds = %elsebranch55, %thenbranch43
  %_public_lval57 = load i64, i64* %_public___v23_mindex
  %_public_lval58 = load i32, i32* %_public___m_len
  %_public_rhssext59 = zext i32 %_public_lval58 to i64
  %_public_ulttmp60 = icmp ult i64 %_public_lval57, %_public_rhssext59
  %_public_branchcompare61 = icmp eq i1 %_public_ulttmp60, true
  br i1 %_public_branchcompare61, label %thenbranch62, label %elsebranch92

thenbranch62:                                     ; preds = %branchmerge56
  %_public_lval63 = load i32, i32* %_public___m_len
  %_public_lval64 = load i64, i64* %_public___v23_mindex
  %_public_lhssext65 = zext i32 %_public_lval63 to i64
  %_public_subtmp66 = sub i64 %_public_lhssext65, %_public_lval64
  store i64 %_public_subtmp66, i64* %_public___v30_remaining
  store i64 0, i64* %_public___v31_i
  br label %loop_check67

loop_check67:                                     ; preds = %loop_body68, %thenbranch62
  %_public_lval70 = load i64, i64* %_public___v31_i
  %_public_lval71 = load i64, i64* %_public___v30_remaining
  %_public_ulttmp72 = icmp ult i64 %_public_lval70, %_public_lval71
  br i1 %_public_ulttmp72, label %loop_body68, label %loop_end69

loop_body68:                                      ; preds = %loop_check67
  %_secret_structgep73 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i32 0, i32 4
  %_public_structgep74 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i32 0, i32 3
  %_public_lval75 = load i64, i64* %_public_structgep74
  %_public_lval76 = load i64, i64* %_public___v31_i
  %_public_addtmp77 = add i64 %_public_lval75, %_public_lval76
  %_secret_ptr78 = getelementptr inbounds [16 x i8], [16 x i8]* %_secret_structgep73, i64 0, i64 %_public_addtmp77
  %_public_lval79 = load i64, i64* %_public___v23_mindex
  %_public_lval80 = load i64, i64* %_public___v31_i
  %_public_addtmp81 = add i64 %_public_lval79, %_public_lval80
  %_secret_dyn82 = load i8*, i8** %_secret_arrarg
  %_secret_ptr83 = getelementptr inbounds i8, i8* %_secret_dyn82, i64 %_public_addtmp81
  %_secret_lval84 = load i8, i8* %_secret_ptr83
  store i8 %_secret_lval84, i8* %_secret_ptr78
  %_public_lval85 = load i64, i64* %_public___v31_i
  %_public_addtmp86 = add i64 %_public_lval85, 1
  store i64 %_public_addtmp86, i64* %_public___v31_i
  br label %loop_check67

loop_end69:                                       ; preds = %loop_check67
  %_public_structgep87 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i32 0, i32 3
  %_public_structgep88 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i32 0, i32 3
  %_public_lval89 = load i64, i64* %_public_structgep88
  %_public_lval90 = load i64, i64* %_public___v30_remaining
  %_public_addtmp91 = add i64 %_public_lval89, %_public_lval90
  store i64 %_public_addtmp91, i64* %_public_structgep87
  br label %branchmerge93

elsebranch92:                                     ; preds = %branchmerge56
  br label %branchmerge93

branchmerge93:                                    ; preds = %elsebranch92, %loop_end69
  ret void
}

define internal void @_poly1305_finish(%poly1305_state_internal_t* %state, i8* %_secret_arrarg1) {
entry:
  %_secret_arrarg = alloca i8*
  store i8* %_secret_arrarg1, i8** %_secret_arrarg
  %_secret___rnset = alloca i1
  %_public___v32_start = alloca i64
  %_public___v33_i = alloca i64
  %_public___v34_mask44 = alloca i64
  %_public___v35_mask42 = alloca i64
  %_secret___v36_h0 = alloca i64
  %_secret___v37_h1 = alloca i64
  %_secret___v38_h2 = alloca i64
  %_secret___v39_c = alloca i64
  %_secret___v40_g0 = alloca i64
  %_secret___v41_g1 = alloca i64
  %_secret___v42_g2 = alloca i64
  %_secret___v43_t0 = alloca i64
  %_secret___v44_t1 = alloca i64
  store i1 true, i1* %_secret___rnset
  %_public_structgep = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i32 0, i32 3
  %_public_lval = load i64, i64* %_public_structgep
  %_public_neqtmp = icmp ne i64 %_public_lval, 0
  %_public_branchcompare = icmp eq i1 %_public_neqtmp, true
  br i1 %_public_branchcompare, label %thenbranch, label %elsebranch

thenbranch:                                       ; preds = %entry
  %_public_structgep2 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i32 0, i32 3
  %_public_lval3 = load i64, i64* %_public_structgep2
  store i64 %_public_lval3, i64* %_public___v32_start
  %_secret_structgep = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i32 0, i32 4
  %_public_lval4 = load i64, i64* %_public___v32_start
  %_secret_ptr = getelementptr inbounds [16 x i8], [16 x i8]* %_secret_structgep, i64 0, i64 %_public_lval4
  store i8 1, i8* %_secret_ptr
  %_public_lval5 = load i64, i64* %_public___v32_start
  %_public_addtmp = add i64 %_public_lval5, 1
  store i64 %_public_addtmp, i64* %_public___v33_i
  br label %loop_check

loop_check:                                       ; preds = %loop_body, %thenbranch
  %_public_lval6 = load i64, i64* %_public___v33_i
  %_public_ulttmp = icmp ult i64 %_public_lval6, 16
  br i1 %_public_ulttmp, label %loop_body, label %loop_end

loop_body:                                        ; preds = %loop_check
  %_secret_structgep7 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i32 0, i32 4
  %_public_lval8 = load i64, i64* %_public___v33_i
  %_secret_ptr9 = getelementptr inbounds [16 x i8], [16 x i8]* %_secret_structgep7, i64 0, i64 %_public_lval8
  store i8 0, i8* %_secret_ptr9
  %_public_lval10 = load i64, i64* %_public___v33_i
  %_public_addtmp11 = add i64 %_public_lval10, 1
  store i64 %_public_addtmp11, i64* %_public___v33_i
  br label %loop_check

loop_end:                                         ; preds = %loop_check
  %_secret_structgep12 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i32 0, i32 5
  store i8 1, i8* %_secret_structgep12
  %_secret_structgep13 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i32 0, i32 4
  %_secret_structgep14 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i32 0, i32 4
  %_secret_arrtoptr = bitcast [16 x i8]* %_secret_structgep14 to i8*
  call void @_poly1305_blocks(%poly1305_state_internal_t* %state, i8* %_secret_arrtoptr, i32 16)
  br label %branchmerge

elsebranch:                                       ; preds = %entry
  br label %branchmerge

branchmerge:                                      ; preds = %elsebranch, %loop_end
  store i64 17592186044415, i64* %_public___v34_mask44
  store i64 4398046511103, i64* %_public___v35_mask42
  %_secret_structgep15 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i32 0, i32 1
  %_secret_ptr16 = getelementptr inbounds [3 x i64], [3 x i64]* %_secret_structgep15, i8 0, i8 0
  %_secret_lval = load i64, i64* %_secret_ptr16
  store i64 %_secret_lval, i64* %_secret___v36_h0
  %_secret_structgep17 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i32 0, i32 1
  %_secret_ptr18 = getelementptr inbounds [3 x i64], [3 x i64]* %_secret_structgep17, i8 0, i8 1
  %_secret_lval19 = load i64, i64* %_secret_ptr18
  store i64 %_secret_lval19, i64* %_secret___v37_h1
  %_secret_structgep20 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i32 0, i32 1
  %_secret_ptr21 = getelementptr inbounds [3 x i64], [3 x i64]* %_secret_structgep20, i8 0, i8 2
  %_secret_lval22 = load i64, i64* %_secret_ptr21
  store i64 %_secret_lval22, i64* %_secret___v38_h2
  %_secret_lval23 = load i64, i64* %_secret___v37_h1
  %_secret_lrshift = lshr i64 %_secret_lval23, 44
  store i64 %_secret_lrshift, i64* %_secret___v39_c
  %_secret_lval24 = load i64, i64* %_secret___v37_h1
  %_public_lval25 = load i64, i64* %_public___v34_mask44
  %_secret_andtmp = and i64 %_secret_lval24, %_public_lval25
  store i64 %_secret_andtmp, i64* %_secret___v37_h1
  %_secret_lval26 = load i64, i64* %_secret___v38_h2
  %_secret_lval27 = load i64, i64* %_secret___v39_c
  %_secret_addtmp = add i64 %_secret_lval26, %_secret_lval27
  store i64 %_secret_addtmp, i64* %_secret___v38_h2
  %_secret_lval28 = load i64, i64* %_secret___v38_h2
  %_secret_lrshift29 = lshr i64 %_secret_lval28, 42
  store i64 %_secret_lrshift29, i64* %_secret___v39_c
  %_secret_lval30 = load i64, i64* %_secret___v38_h2
  %_public_lval31 = load i64, i64* %_public___v35_mask42
  %_secret_andtmp32 = and i64 %_secret_lval30, %_public_lval31
  store i64 %_secret_andtmp32, i64* %_secret___v38_h2
  %_secret_lval33 = load i64, i64* %_secret___v36_h0
  %_secret_lval34 = load i64, i64* %_secret___v39_c
  %_secret_multmp = mul i64 %_secret_lval34, 5
  %_secret_addtmp35 = add i64 %_secret_lval33, %_secret_multmp
  store i64 %_secret_addtmp35, i64* %_secret___v36_h0
  %_secret_lval36 = load i64, i64* %_secret___v36_h0
  %_secret_lrshift37 = lshr i64 %_secret_lval36, 44
  store i64 %_secret_lrshift37, i64* %_secret___v39_c
  %_secret_lval38 = load i64, i64* %_secret___v36_h0
  %_public_lval39 = load i64, i64* %_public___v34_mask44
  %_secret_andtmp40 = and i64 %_secret_lval38, %_public_lval39
  store i64 %_secret_andtmp40, i64* %_secret___v36_h0
  %_secret_lval41 = load i64, i64* %_secret___v37_h1
  %_secret_lval42 = load i64, i64* %_secret___v39_c
  %_secret_addtmp43 = add i64 %_secret_lval41, %_secret_lval42
  store i64 %_secret_addtmp43, i64* %_secret___v37_h1
  %_secret_lval44 = load i64, i64* %_secret___v37_h1
  %_secret_lrshift45 = lshr i64 %_secret_lval44, 44
  store i64 %_secret_lrshift45, i64* %_secret___v39_c
  %_secret_lval46 = load i64, i64* %_secret___v37_h1
  %_public_lval47 = load i64, i64* %_public___v34_mask44
  %_secret_andtmp48 = and i64 %_secret_lval46, %_public_lval47
  store i64 %_secret_andtmp48, i64* %_secret___v37_h1
  %_secret_lval49 = load i64, i64* %_secret___v38_h2
  %_secret_lval50 = load i64, i64* %_secret___v39_c
  %_secret_addtmp51 = add i64 %_secret_lval49, %_secret_lval50
  store i64 %_secret_addtmp51, i64* %_secret___v38_h2
  %_secret_lval52 = load i64, i64* %_secret___v38_h2
  %_secret_lrshift53 = lshr i64 %_secret_lval52, 42
  store i64 %_secret_lrshift53, i64* %_secret___v39_c
  %_secret_lval54 = load i64, i64* %_secret___v38_h2
  %_public_lval55 = load i64, i64* %_public___v35_mask42
  %_secret_andtmp56 = and i64 %_secret_lval54, %_public_lval55
  store i64 %_secret_andtmp56, i64* %_secret___v38_h2
  %_secret_lval57 = load i64, i64* %_secret___v36_h0
  %_secret_lval58 = load i64, i64* %_secret___v39_c
  %_secret_multmp59 = mul i64 %_secret_lval58, 5
  %_secret_addtmp60 = add i64 %_secret_lval57, %_secret_multmp59
  store i64 %_secret_addtmp60, i64* %_secret___v36_h0
  %_secret_lval61 = load i64, i64* %_secret___v36_h0
  %_secret_lrshift62 = lshr i64 %_secret_lval61, 44
  store i64 %_secret_lrshift62, i64* %_secret___v39_c
  %_secret_lval63 = load i64, i64* %_secret___v36_h0
  %_public_lval64 = load i64, i64* %_public___v34_mask44
  %_secret_andtmp65 = and i64 %_secret_lval63, %_public_lval64
  store i64 %_secret_andtmp65, i64* %_secret___v36_h0
  %_secret_lval66 = load i64, i64* %_secret___v37_h1
  %_secret_lval67 = load i64, i64* %_secret___v39_c
  %_secret_addtmp68 = add i64 %_secret_lval66, %_secret_lval67
  store i64 %_secret_addtmp68, i64* %_secret___v37_h1
  %_secret_lval69 = load i64, i64* %_secret___v36_h0
  %_secret_addtmp70 = add i64 %_secret_lval69, 5
  store i64 %_secret_addtmp70, i64* %_secret___v40_g0
  %_secret_lval71 = load i64, i64* %_secret___v40_g0
  %_secret_lrshift72 = lshr i64 %_secret_lval71, 44
  store i64 %_secret_lrshift72, i64* %_secret___v39_c
  %_secret_lval73 = load i64, i64* %_secret___v40_g0
  %_public_lval74 = load i64, i64* %_public___v34_mask44
  %_secret_andtmp75 = and i64 %_secret_lval73, %_public_lval74
  store i64 %_secret_andtmp75, i64* %_secret___v40_g0
  %_secret_lval76 = load i64, i64* %_secret___v37_h1
  %_secret_lval77 = load i64, i64* %_secret___v39_c
  %_secret_addtmp78 = add i64 %_secret_lval76, %_secret_lval77
  store i64 %_secret_addtmp78, i64* %_secret___v41_g1
  %_secret_lval79 = load i64, i64* %_secret___v41_g1
  %_secret_lrshift80 = lshr i64 %_secret_lval79, 44
  store i64 %_secret_lrshift80, i64* %_secret___v39_c
  %_secret_lval81 = load i64, i64* %_secret___v41_g1
  %_public_lval82 = load i64, i64* %_public___v34_mask44
  %_secret_andtmp83 = and i64 %_secret_lval81, %_public_lval82
  store i64 %_secret_andtmp83, i64* %_secret___v41_g1
  %_secret_lval84 = load i64, i64* %_secret___v38_h2
  %_secret_lval85 = load i64, i64* %_secret___v39_c
  %_secret_addtmp86 = add i64 %_secret_lval84, %_secret_lval85
  %_secret_subtmp = sub i64 %_secret_addtmp86, 4398046511104
  store i64 %_secret_subtmp, i64* %_secret___v42_g2
  %_secret_lval87 = load i64, i64* %_secret___v42_g2
  %_secret_lrshift88 = lshr i64 %_secret_lval87, 63
  %_secret_subtmp89 = sub i64 %_secret_lrshift88, 1
  store i64 %_secret_subtmp89, i64* %_secret___v39_c
  %_secret_lval90 = load i64, i64* %_secret___v40_g0
  %_secret_lval91 = load i64, i64* %_secret___v39_c
  %_secret_andtmp92 = and i64 %_secret_lval90, %_secret_lval91
  store i64 %_secret_andtmp92, i64* %_secret___v40_g0
  %_secret_lval93 = load i64, i64* %_secret___v41_g1
  %_secret_lval94 = load i64, i64* %_secret___v39_c
  %_secret_andtmp95 = and i64 %_secret_lval93, %_secret_lval94
  store i64 %_secret_andtmp95, i64* %_secret___v41_g1
  %_secret_lval96 = load i64, i64* %_secret___v42_g2
  %_secret_lval97 = load i64, i64* %_secret___v39_c
  %_secret_andtmp98 = and i64 %_secret_lval96, %_secret_lval97
  store i64 %_secret_andtmp98, i64* %_secret___v42_g2
  %_secret_lval99 = load i64, i64* %_secret___v39_c
  %_secret_bnottmp = xor i64 %_secret_lval99, -1
  store i64 %_secret_bnottmp, i64* %_secret___v39_c
  %_secret_lval100 = load i64, i64* %_secret___v36_h0
  %_secret_lval101 = load i64, i64* %_secret___v39_c
  %_secret_andtmp102 = and i64 %_secret_lval100, %_secret_lval101
  %_secret_lval103 = load i64, i64* %_secret___v40_g0
  %_secret_ortmp = or i64 %_secret_andtmp102, %_secret_lval103
  store i64 %_secret_ortmp, i64* %_secret___v36_h0
  %_secret_lval104 = load i64, i64* %_secret___v37_h1
  %_secret_lval105 = load i64, i64* %_secret___v39_c
  %_secret_andtmp106 = and i64 %_secret_lval104, %_secret_lval105
  %_secret_lval107 = load i64, i64* %_secret___v41_g1
  %_secret_ortmp108 = or i64 %_secret_andtmp106, %_secret_lval107
  store i64 %_secret_ortmp108, i64* %_secret___v37_h1
  %_secret_lval109 = load i64, i64* %_secret___v38_h2
  %_secret_lval110 = load i64, i64* %_secret___v39_c
  %_secret_andtmp111 = and i64 %_secret_lval109, %_secret_lval110
  %_secret_lval112 = load i64, i64* %_secret___v42_g2
  %_secret_ortmp113 = or i64 %_secret_andtmp111, %_secret_lval112
  store i64 %_secret_ortmp113, i64* %_secret___v38_h2
  %_secret_structgep114 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i32 0, i32 2
  %_secret_ptr115 = getelementptr inbounds [2 x i64], [2 x i64]* %_secret_structgep114, i8 0, i8 0
  %_secret_lval116 = load i64, i64* %_secret_ptr115
  store i64 %_secret_lval116, i64* %_secret___v43_t0
  %_secret_structgep117 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i32 0, i32 2
  %_secret_ptr118 = getelementptr inbounds [2 x i64], [2 x i64]* %_secret_structgep117, i8 0, i8 1
  %_secret_lval119 = load i64, i64* %_secret_ptr118
  store i64 %_secret_lval119, i64* %_secret___v44_t1
  %_secret_lval120 = load i64, i64* %_secret___v36_h0
  %_secret_lval121 = load i64, i64* %_secret___v43_t0
  %_public_lval122 = load i64, i64* %_public___v34_mask44
  %_secret_andtmp123 = and i64 %_secret_lval121, %_public_lval122
  %_secret_addtmp124 = add i64 %_secret_lval120, %_secret_andtmp123
  store i64 %_secret_addtmp124, i64* %_secret___v36_h0
  %_secret_lval125 = load i64, i64* %_secret___v36_h0
  %_secret_lrshift126 = lshr i64 %_secret_lval125, 44
  store i64 %_secret_lrshift126, i64* %_secret___v39_c
  %_secret_lval127 = load i64, i64* %_secret___v36_h0
  %_public_lval128 = load i64, i64* %_public___v34_mask44
  %_secret_andtmp129 = and i64 %_secret_lval127, %_public_lval128
  store i64 %_secret_andtmp129, i64* %_secret___v36_h0
  %_secret_lval130 = load i64, i64* %_secret___v37_h1
  %_secret_lval131 = load i64, i64* %_secret___v43_t0
  %_secret_lrshift132 = lshr i64 %_secret_lval131, 44
  %_secret_lval133 = load i64, i64* %_secret___v44_t1
  %_secret_lshift = shl i64 %_secret_lval133, 20
  %_secret_ortmp134 = or i64 %_secret_lrshift132, %_secret_lshift
  %_public_lval135 = load i64, i64* %_public___v34_mask44
  %_secret_andtmp136 = and i64 %_secret_ortmp134, %_public_lval135
  %_secret_lval137 = load i64, i64* %_secret___v39_c
  %_secret_addtmp138 = add i64 %_secret_andtmp136, %_secret_lval137
  %_secret_addtmp139 = add i64 %_secret_lval130, %_secret_addtmp138
  store i64 %_secret_addtmp139, i64* %_secret___v37_h1
  %_secret_lval140 = load i64, i64* %_secret___v37_h1
  %_secret_lrshift141 = lshr i64 %_secret_lval140, 44
  store i64 %_secret_lrshift141, i64* %_secret___v39_c
  %_secret_lval142 = load i64, i64* %_secret___v37_h1
  %_public_lval143 = load i64, i64* %_public___v34_mask44
  %_secret_andtmp144 = and i64 %_secret_lval142, %_public_lval143
  store i64 %_secret_andtmp144, i64* %_secret___v37_h1
  %_secret_lval145 = load i64, i64* %_secret___v38_h2
  %_secret_lval146 = load i64, i64* %_secret___v44_t1
  %_secret_lrshift147 = lshr i64 %_secret_lval146, 24
  %_public_lval148 = load i64, i64* %_public___v35_mask42
  %_secret_andtmp149 = and i64 %_secret_lrshift147, %_public_lval148
  %_secret_lval150 = load i64, i64* %_secret___v39_c
  %_secret_addtmp151 = add i64 %_secret_andtmp149, %_secret_lval150
  %_secret_addtmp152 = add i64 %_secret_lval145, %_secret_addtmp151
  store i64 %_secret_addtmp152, i64* %_secret___v38_h2
  %_secret_lval153 = load i64, i64* %_secret___v38_h2
  %_public_lval154 = load i64, i64* %_public___v35_mask42
  %_secret_andtmp155 = and i64 %_secret_lval153, %_public_lval154
  store i64 %_secret_andtmp155, i64* %_secret___v38_h2
  %_secret_lval156 = load i64, i64* %_secret___v36_h0
  %_secret_lval157 = load i64, i64* %_secret___v37_h1
  %_secret_lshift158 = shl i64 %_secret_lval157, 44
  %_secret_ortmp159 = or i64 %_secret_lval156, %_secret_lshift158
  store i64 %_secret_ortmp159, i64* %_secret___v36_h0
  %_secret_lval160 = load i64, i64* %_secret___v37_h1
  %_secret_lrshift161 = lshr i64 %_secret_lval160, 20
  %_secret_lval162 = load i64, i64* %_secret___v38_h2
  %_secret_lshift163 = shl i64 %_secret_lval162, 24
  %_secret_ortmp164 = or i64 %_secret_lrshift161, %_secret_lshift163
  store i64 %_secret_ortmp164, i64* %_secret___v37_h1
  %_secret_ldedviewptr = load i8*, i8** %_secret_arrarg
  %_secret_source_gep = getelementptr inbounds i8, i8* %_secret_ldedviewptr, i8 0
  %_secret_arrviewdyn = alloca i8*
  store i8* %_secret_source_gep, i8** %_secret_arrviewdyn
  %_secret_ldedviewptr165 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep166 = getelementptr inbounds i8, i8* %_secret_ldedviewptr165, i8 0
  %_secret_arrviewdyn167 = alloca i8*
  store i8* %_secret_source_gep166, i8** %_secret_arrviewdyn167
  %_secret_dynarrarg = load i8*, i8** %_secret_arrviewdyn167
  %_secret_lval168 = load i64, i64* %_secret___v36_h0
  call void @_store64_le(i8* %_secret_dynarrarg, i64 %_secret_lval168)
  %_secret_ldedviewptr169 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep170 = getelementptr inbounds i8, i8* %_secret_ldedviewptr169, i8 8
  %_secret_arrviewdyn171 = alloca i8*
  store i8* %_secret_source_gep170, i8** %_secret_arrviewdyn171
  %_secret_ldedviewptr172 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep173 = getelementptr inbounds i8, i8* %_secret_ldedviewptr172, i8 8
  %_secret_arrviewdyn174 = alloca i8*
  store i8* %_secret_source_gep173, i8** %_secret_arrviewdyn174
  %_secret_dynarrarg175 = load i8*, i8** %_secret_arrviewdyn174
  %_secret_lval176 = load i64, i64* %_secret___v37_h1
  call void @_store64_le(i8* %_secret_dynarrarg175, i64 %_secret_lval176)
  %_secret_structgep177 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i32 0, i32 0
  %_secret_structgep178 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i32 0, i32 0
  %_secret_arrtoptr179 = bitcast [3 x i64]* %_secret_structgep178 to i64*
  call void @_fact_memzero64(i64* %_secret_arrtoptr179, i32 3)
  %_secret_structgep180 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i32 0, i32 1
  %_secret_structgep181 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i32 0, i32 1
  %_secret_arrtoptr182 = bitcast [3 x i64]* %_secret_structgep181 to i64*
  call void @_fact_memzero64(i64* %_secret_arrtoptr182, i32 3)
  %_secret_structgep183 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i32 0, i32 2
  %_secret_structgep184 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i32 0, i32 2
  %_secret_arrtoptr185 = bitcast [2 x i64]* %_secret_structgep184 to i64*
  call void @_fact_memzero64(i64* %_secret_arrtoptr185, i32 2)
  %_public_structgep186 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i32 0, i32 3
  store i64 0, i64* %_public_structgep186
  %_secret_structgep187 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i32 0, i32 4
  %_secret_structgep188 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i32 0, i32 4
  %_secret_arrtoptr189 = bitcast [16 x i8]* %_secret_structgep188 to i8*
  call void @_fact_memzero(i8* %_secret_arrtoptr189, i32 16)
  %_secret_structgep190 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i32 0, i32 5
  store i8 0, i8* %_secret_structgep190
  ret void
}

; Function Attrs: alwaysinline
define internal void @_store64_le(i8*, i64) #2 {
entry:
  %_secret_cast = bitcast i8* %0 to i64*
  store i64 %1, i64* %_secret_cast
  ret void
}

define internal i32 @_crypto_onetimeauth_poly1305(i8* %_secret_arrarg1, i8* %_secret_arrarg3, i32 %_public___m_len4, i8* %_secret_arrarg6) {
entry:
  %_secret_arrarg = alloca i8*
  store i8* %_secret_arrarg1, i8** %_secret_arrarg
  %_secret_arrarg2 = alloca i8*
  store i8* %_secret_arrarg3, i8** %_secret_arrarg2
  %_public___m_len = alloca i32
  store i32 %_public___m_len4, i32* %_public___m_len
  %_secret_arrarg5 = alloca i8*
  store i8* %_secret_arrarg6, i8** %_secret_arrarg5
  %_public___rval = alloca i32
  %_secret___rnset = alloca i1
  %_public___v45_state = alloca %poly1305_state_internal_t
  %_public_sourcecasted = bitcast %poly1305_state_internal_t* %_public___v45_state to i8*
  call void @llvm.memset.p0i8.i64(i8* %_public_sourcecasted, i8 0, i64 92, i32 4, i1 false)
  store i32 0, i32* %_public___rval
  store i1 true, i1* %_secret___rnset
  %_secret_structgep = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %_public___v45_state, i32 0, i32 0
  %_secret_structgep7 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %_public___v45_state, i32 0, i32 0
  %_secret_arrtoptr = bitcast [3 x i64]* %_secret_structgep7 to i64*
  call void @_fact_memzero64(i64* %_secret_arrtoptr, i32 3)
  %_secret_structgep8 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %_public___v45_state, i32 0, i32 1
  %_secret_structgep9 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %_public___v45_state, i32 0, i32 1
  %_secret_arrtoptr10 = bitcast [3 x i64]* %_secret_structgep9 to i64*
  call void @_fact_memzero64(i64* %_secret_arrtoptr10, i32 3)
  %_secret_structgep11 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %_public___v45_state, i32 0, i32 2
  %_secret_structgep12 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %_public___v45_state, i32 0, i32 2
  %_secret_arrtoptr13 = bitcast [2 x i64]* %_secret_structgep12 to i64*
  call void @_fact_memzero64(i64* %_secret_arrtoptr13, i32 2)
  %_public_structgep = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %_public___v45_state, i32 0, i32 3
  store i64 0, i64* %_public_structgep
  %_secret_structgep14 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %_public___v45_state, i32 0, i32 4
  %_secret_structgep15 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %_public___v45_state, i32 0, i32 4
  %_secret_arrtoptr16 = bitcast [16 x i8]* %_secret_structgep15 to i8*
  call void @_fact_memzero(i8* %_secret_arrtoptr16, i32 16)
  %_secret_structgep17 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %_public___v45_state, i32 0, i32 5
  store i8 0, i8* %_secret_structgep17
  %_secret_dynarrarg = load i8*, i8** %_secret_arrarg5
  call void @_poly1305_init(%poly1305_state_internal_t* %_public___v45_state, i8* %_secret_dynarrarg)
  %_secret_dynarrarg18 = load i8*, i8** %_secret_arrarg2
  %_public_lval = load i32, i32* %_public___m_len
  call void @_poly1305_update(%poly1305_state_internal_t* %_public___v45_state, i8* %_secret_dynarrarg18, i32 %_public_lval)
  %_secret_dynarrarg19 = load i8*, i8** %_secret_arrarg
  call void @_poly1305_finish(%poly1305_state_internal_t* %_public___v45_state, i8* %_secret_dynarrarg19)
  store i32 0, i32* %_public___rval
  %_public_lval20 = load i32, i32* %_public___rval
  ret i32 %_public_lval20
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #0

define internal i1 @_crypto_onetimeauth_poly1305_verify(i8* %_public_arrarg1, i8* %_public_arrarg3, i32 %_public___in_len4, i8* %_secret_arrarg5) {
entry:
  %_public_arrarg = alloca i8*
  store i8* %_public_arrarg1, i8** %_public_arrarg
  %_public_arrarg2 = alloca i8*
  store i8* %_public_arrarg3, i8** %_public_arrarg2
  %_public___in_len = alloca i32
  store i32 %_public___in_len4, i32* %_public___in_len
  %_secret_arrarg = alloca i8*
  store i8* %_secret_arrarg5, i8** %_secret_arrarg
  %_public___rval = alloca i1
  %_secret___rnset = alloca i1
  store i1 false, i1* %_public___rval
  store i1 true, i1* %_secret___rnset
  %_secret___v46_correct = alloca [16 x i8]
  %_secret_arrtoptr = bitcast [16 x i8]* %_secret___v46_correct to i8*
  %_secret_dynarrarg = load i8*, i8** %_public_arrarg2
  %_public_lval = load i32, i32* %_public___in_len
  %_secret_dynarrarg6 = load i8*, i8** %_secret_arrarg
  %0 = call i32 @_crypto_onetimeauth_poly1305(i8* %_secret_arrtoptr, i8* %_secret_dynarrarg, i32 %_public_lval, i8* %_secret_dynarrarg6)
  %_secret_dynarrarg7 = load i8*, i8** %_public_arrarg
  %_secret_arrtoptr8 = bitcast [16 x i8]* %_secret___v46_correct to i8*
  %_secret_calltmp = call i1 @_crypto_verify_16(i8* %_secret_dynarrarg7, i8* %_secret_arrtoptr8)
  %_declassified_res = call i1 @fact.declassify.i1(i1 %_secret_calltmp)
  store i1 %_declassified_res, i1* %_public___rval
  %_public_lval9 = load i1, i1* %_public___rval
  ret i1 %_public_lval9
}

; Function Attrs: noinline
define internal i1 @fact.declassify.i1(i1 %_declassified_x) #1 {
entry:
  ret i1 %_declassified_x
}

define internal void @_crypto_core_salsa20(i8* %_secret_arrarg1, i8* %_secret_arrarg3, i8* %_secret_arrarg5) {
entry:
  %_secret_arrarg = alloca i8*
  store i8* %_secret_arrarg1, i8** %_secret_arrarg
  %_secret_arrarg2 = alloca i8*
  store i8* %_secret_arrarg3, i8** %_secret_arrarg2
  %_secret_arrarg4 = alloca i8*
  store i8* %_secret_arrarg5, i8** %_secret_arrarg4
  %_secret___rnset = alloca i1
  %_secret___v47_x0 = alloca i32
  %_secret___v48_x5 = alloca i32
  %_secret___v49_x10 = alloca i32
  %_secret___v50_x15 = alloca i32
  %_secret___v51_j0 = alloca i32
  %_secret___v52_j5 = alloca i32
  %_secret___v53_j10 = alloca i32
  %_secret___v54_j15 = alloca i32
  %_secret___v55_x1 = alloca i32
  %_secret___v56_x2 = alloca i32
  %_secret___v57_x3 = alloca i32
  %_secret___v58_x4 = alloca i32
  %_secret___v59_x11 = alloca i32
  %_secret___v60_x12 = alloca i32
  %_secret___v61_x13 = alloca i32
  %_secret___v62_x14 = alloca i32
  %_secret___v63_j1 = alloca i32
  %_secret___v64_j2 = alloca i32
  %_secret___v65_j3 = alloca i32
  %_secret___v66_j4 = alloca i32
  %_secret___v67_j11 = alloca i32
  %_secret___v68_j12 = alloca i32
  %_secret___v69_j13 = alloca i32
  %_secret___v70_j14 = alloca i32
  %_secret___v71_x6 = alloca i32
  %_secret___v72_x7 = alloca i32
  %_secret___v73_x8 = alloca i32
  %_secret___v74_x9 = alloca i32
  %_secret___v75_j6 = alloca i32
  %_secret___v76_j7 = alloca i32
  %_secret___v77_j8 = alloca i32
  %_secret___v78_j9 = alloca i32
  %_public___v79_i = alloca i32
  store i1 true, i1* %_secret___rnset
  store i32 1634760805, i32* %_secret___v47_x0
  store i32 857760878, i32* %_secret___v48_x5
  store i32 2036477234, i32* %_secret___v49_x10
  store i32 1797285236, i32* %_secret___v50_x15
  %_secret_lval = load i32, i32* %_secret___v47_x0
  store i32 %_secret_lval, i32* %_secret___v51_j0
  %_secret_lval6 = load i32, i32* %_secret___v48_x5
  store i32 %_secret_lval6, i32* %_secret___v52_j5
  %_secret_lval7 = load i32, i32* %_secret___v49_x10
  store i32 %_secret_lval7, i32* %_secret___v53_j10
  %_secret_lval8 = load i32, i32* %_secret___v50_x15
  store i32 %_secret_lval8, i32* %_secret___v54_j15
  %_secret_ldedviewptr = load i8*, i8** %_secret_arrarg4
  %_secret_source_gep = getelementptr inbounds i8, i8* %_secret_ldedviewptr, i8 0
  %_secret_arrviewdyn = alloca i8*
  store i8* %_secret_source_gep, i8** %_secret_arrviewdyn
  %_secret_ldedviewptr9 = load i8*, i8** %_secret_arrarg4
  %_secret_source_gep10 = getelementptr inbounds i8, i8* %_secret_ldedviewptr9, i8 0
  %_secret_arrviewdyn11 = alloca i8*
  store i8* %_secret_source_gep10, i8** %_secret_arrviewdyn11
  %_secret_dynarrarg = load i8*, i8** %_secret_arrviewdyn11
  %_secret_calltmp = call i32 @_load32_le(i8* %_secret_dynarrarg)
  store i32 %_secret_calltmp, i32* %_secret___v55_x1
  %_secret_ldedviewptr12 = load i8*, i8** %_secret_arrarg4
  %_secret_source_gep13 = getelementptr inbounds i8, i8* %_secret_ldedviewptr12, i8 4
  %_secret_arrviewdyn14 = alloca i8*
  store i8* %_secret_source_gep13, i8** %_secret_arrviewdyn14
  %_secret_ldedviewptr15 = load i8*, i8** %_secret_arrarg4
  %_secret_source_gep16 = getelementptr inbounds i8, i8* %_secret_ldedviewptr15, i8 4
  %_secret_arrviewdyn17 = alloca i8*
  store i8* %_secret_source_gep16, i8** %_secret_arrviewdyn17
  %_secret_dynarrarg18 = load i8*, i8** %_secret_arrviewdyn17
  %_secret_calltmp19 = call i32 @_load32_le(i8* %_secret_dynarrarg18)
  store i32 %_secret_calltmp19, i32* %_secret___v56_x2
  %_secret_ldedviewptr20 = load i8*, i8** %_secret_arrarg4
  %_secret_source_gep21 = getelementptr inbounds i8, i8* %_secret_ldedviewptr20, i8 8
  %_secret_arrviewdyn22 = alloca i8*
  store i8* %_secret_source_gep21, i8** %_secret_arrviewdyn22
  %_secret_ldedviewptr23 = load i8*, i8** %_secret_arrarg4
  %_secret_source_gep24 = getelementptr inbounds i8, i8* %_secret_ldedviewptr23, i8 8
  %_secret_arrviewdyn25 = alloca i8*
  store i8* %_secret_source_gep24, i8** %_secret_arrviewdyn25
  %_secret_dynarrarg26 = load i8*, i8** %_secret_arrviewdyn25
  %_secret_calltmp27 = call i32 @_load32_le(i8* %_secret_dynarrarg26)
  store i32 %_secret_calltmp27, i32* %_secret___v57_x3
  %_secret_ldedviewptr28 = load i8*, i8** %_secret_arrarg4
  %_secret_source_gep29 = getelementptr inbounds i8, i8* %_secret_ldedviewptr28, i8 12
  %_secret_arrviewdyn30 = alloca i8*
  store i8* %_secret_source_gep29, i8** %_secret_arrviewdyn30
  %_secret_ldedviewptr31 = load i8*, i8** %_secret_arrarg4
  %_secret_source_gep32 = getelementptr inbounds i8, i8* %_secret_ldedviewptr31, i8 12
  %_secret_arrviewdyn33 = alloca i8*
  store i8* %_secret_source_gep32, i8** %_secret_arrviewdyn33
  %_secret_dynarrarg34 = load i8*, i8** %_secret_arrviewdyn33
  %_secret_calltmp35 = call i32 @_load32_le(i8* %_secret_dynarrarg34)
  store i32 %_secret_calltmp35, i32* %_secret___v58_x4
  %_secret_ldedviewptr36 = load i8*, i8** %_secret_arrarg4
  %_secret_source_gep37 = getelementptr inbounds i8, i8* %_secret_ldedviewptr36, i8 16
  %_secret_arrviewdyn38 = alloca i8*
  store i8* %_secret_source_gep37, i8** %_secret_arrviewdyn38
  %_secret_ldedviewptr39 = load i8*, i8** %_secret_arrarg4
  %_secret_source_gep40 = getelementptr inbounds i8, i8* %_secret_ldedviewptr39, i8 16
  %_secret_arrviewdyn41 = alloca i8*
  store i8* %_secret_source_gep40, i8** %_secret_arrviewdyn41
  %_secret_dynarrarg42 = load i8*, i8** %_secret_arrviewdyn41
  %_secret_calltmp43 = call i32 @_load32_le(i8* %_secret_dynarrarg42)
  store i32 %_secret_calltmp43, i32* %_secret___v59_x11
  %_secret_ldedviewptr44 = load i8*, i8** %_secret_arrarg4
  %_secret_source_gep45 = getelementptr inbounds i8, i8* %_secret_ldedviewptr44, i8 20
  %_secret_arrviewdyn46 = alloca i8*
  store i8* %_secret_source_gep45, i8** %_secret_arrviewdyn46
  %_secret_ldedviewptr47 = load i8*, i8** %_secret_arrarg4
  %_secret_source_gep48 = getelementptr inbounds i8, i8* %_secret_ldedviewptr47, i8 20
  %_secret_arrviewdyn49 = alloca i8*
  store i8* %_secret_source_gep48, i8** %_secret_arrviewdyn49
  %_secret_dynarrarg50 = load i8*, i8** %_secret_arrviewdyn49
  %_secret_calltmp51 = call i32 @_load32_le(i8* %_secret_dynarrarg50)
  store i32 %_secret_calltmp51, i32* %_secret___v60_x12
  %_secret_ldedviewptr52 = load i8*, i8** %_secret_arrarg4
  %_secret_source_gep53 = getelementptr inbounds i8, i8* %_secret_ldedviewptr52, i8 24
  %_secret_arrviewdyn54 = alloca i8*
  store i8* %_secret_source_gep53, i8** %_secret_arrviewdyn54
  %_secret_ldedviewptr55 = load i8*, i8** %_secret_arrarg4
  %_secret_source_gep56 = getelementptr inbounds i8, i8* %_secret_ldedviewptr55, i8 24
  %_secret_arrviewdyn57 = alloca i8*
  store i8* %_secret_source_gep56, i8** %_secret_arrviewdyn57
  %_secret_dynarrarg58 = load i8*, i8** %_secret_arrviewdyn57
  %_secret_calltmp59 = call i32 @_load32_le(i8* %_secret_dynarrarg58)
  store i32 %_secret_calltmp59, i32* %_secret___v61_x13
  %_secret_ldedviewptr60 = load i8*, i8** %_secret_arrarg4
  %_secret_source_gep61 = getelementptr inbounds i8, i8* %_secret_ldedviewptr60, i8 28
  %_secret_arrviewdyn62 = alloca i8*
  store i8* %_secret_source_gep61, i8** %_secret_arrviewdyn62
  %_secret_ldedviewptr63 = load i8*, i8** %_secret_arrarg4
  %_secret_source_gep64 = getelementptr inbounds i8, i8* %_secret_ldedviewptr63, i8 28
  %_secret_arrviewdyn65 = alloca i8*
  store i8* %_secret_source_gep64, i8** %_secret_arrviewdyn65
  %_secret_dynarrarg66 = load i8*, i8** %_secret_arrviewdyn65
  %_secret_calltmp67 = call i32 @_load32_le(i8* %_secret_dynarrarg66)
  store i32 %_secret_calltmp67, i32* %_secret___v62_x14
  %_secret_lval68 = load i32, i32* %_secret___v55_x1
  store i32 %_secret_lval68, i32* %_secret___v63_j1
  %_secret_lval69 = load i32, i32* %_secret___v56_x2
  store i32 %_secret_lval69, i32* %_secret___v64_j2
  %_secret_lval70 = load i32, i32* %_secret___v57_x3
  store i32 %_secret_lval70, i32* %_secret___v65_j3
  %_secret_lval71 = load i32, i32* %_secret___v58_x4
  store i32 %_secret_lval71, i32* %_secret___v66_j4
  %_secret_lval72 = load i32, i32* %_secret___v59_x11
  store i32 %_secret_lval72, i32* %_secret___v67_j11
  %_secret_lval73 = load i32, i32* %_secret___v60_x12
  store i32 %_secret_lval73, i32* %_secret___v68_j12
  %_secret_lval74 = load i32, i32* %_secret___v61_x13
  store i32 %_secret_lval74, i32* %_secret___v69_j13
  %_secret_lval75 = load i32, i32* %_secret___v62_x14
  store i32 %_secret_lval75, i32* %_secret___v70_j14
  %_secret_ldedviewptr76 = load i8*, i8** %_secret_arrarg2
  %_secret_source_gep77 = getelementptr inbounds i8, i8* %_secret_ldedviewptr76, i8 0
  %_secret_arrviewdyn78 = alloca i8*
  store i8* %_secret_source_gep77, i8** %_secret_arrviewdyn78
  %_secret_ldedviewptr79 = load i8*, i8** %_secret_arrarg2
  %_secret_source_gep80 = getelementptr inbounds i8, i8* %_secret_ldedviewptr79, i8 0
  %_secret_arrviewdyn81 = alloca i8*
  store i8* %_secret_source_gep80, i8** %_secret_arrviewdyn81
  %_secret_dynarrarg82 = load i8*, i8** %_secret_arrviewdyn81
  %_secret_calltmp83 = call i32 @_load32_le(i8* %_secret_dynarrarg82)
  store i32 %_secret_calltmp83, i32* %_secret___v71_x6
  %_secret_ldedviewptr84 = load i8*, i8** %_secret_arrarg2
  %_secret_source_gep85 = getelementptr inbounds i8, i8* %_secret_ldedviewptr84, i8 4
  %_secret_arrviewdyn86 = alloca i8*
  store i8* %_secret_source_gep85, i8** %_secret_arrviewdyn86
  %_secret_ldedviewptr87 = load i8*, i8** %_secret_arrarg2
  %_secret_source_gep88 = getelementptr inbounds i8, i8* %_secret_ldedviewptr87, i8 4
  %_secret_arrviewdyn89 = alloca i8*
  store i8* %_secret_source_gep88, i8** %_secret_arrviewdyn89
  %_secret_dynarrarg90 = load i8*, i8** %_secret_arrviewdyn89
  %_secret_calltmp91 = call i32 @_load32_le(i8* %_secret_dynarrarg90)
  store i32 %_secret_calltmp91, i32* %_secret___v72_x7
  %_secret_ldedviewptr92 = load i8*, i8** %_secret_arrarg2
  %_secret_source_gep93 = getelementptr inbounds i8, i8* %_secret_ldedviewptr92, i8 8
  %_secret_arrviewdyn94 = alloca i8*
  store i8* %_secret_source_gep93, i8** %_secret_arrviewdyn94
  %_secret_ldedviewptr95 = load i8*, i8** %_secret_arrarg2
  %_secret_source_gep96 = getelementptr inbounds i8, i8* %_secret_ldedviewptr95, i8 8
  %_secret_arrviewdyn97 = alloca i8*
  store i8* %_secret_source_gep96, i8** %_secret_arrviewdyn97
  %_secret_dynarrarg98 = load i8*, i8** %_secret_arrviewdyn97
  %_secret_calltmp99 = call i32 @_load32_le(i8* %_secret_dynarrarg98)
  store i32 %_secret_calltmp99, i32* %_secret___v73_x8
  %_secret_ldedviewptr100 = load i8*, i8** %_secret_arrarg2
  %_secret_source_gep101 = getelementptr inbounds i8, i8* %_secret_ldedviewptr100, i8 12
  %_secret_arrviewdyn102 = alloca i8*
  store i8* %_secret_source_gep101, i8** %_secret_arrviewdyn102
  %_secret_ldedviewptr103 = load i8*, i8** %_secret_arrarg2
  %_secret_source_gep104 = getelementptr inbounds i8, i8* %_secret_ldedviewptr103, i8 12
  %_secret_arrviewdyn105 = alloca i8*
  store i8* %_secret_source_gep104, i8** %_secret_arrviewdyn105
  %_secret_dynarrarg106 = load i8*, i8** %_secret_arrviewdyn105
  %_secret_calltmp107 = call i32 @_load32_le(i8* %_secret_dynarrarg106)
  store i32 %_secret_calltmp107, i32* %_secret___v74_x9
  %_secret_lval108 = load i32, i32* %_secret___v71_x6
  store i32 %_secret_lval108, i32* %_secret___v75_j6
  %_secret_lval109 = load i32, i32* %_secret___v72_x7
  store i32 %_secret_lval109, i32* %_secret___v76_j7
  %_secret_lval110 = load i32, i32* %_secret___v73_x8
  store i32 %_secret_lval110, i32* %_secret___v77_j8
  %_secret_lval111 = load i32, i32* %_secret___v74_x9
  store i32 %_secret_lval111, i32* %_secret___v78_j9
  store i32 0, i32* %_public___v79_i
  br label %loop_check

loop_check:                                       ; preds = %loop_body, %entry
  %_public_lval = load i32, i32* %_public___v79_i
  %_public_ulttmp = icmp ult i32 %_public_lval, 10
  br i1 %_public_ulttmp, label %loop_body, label %loop_end

loop_body:                                        ; preds = %loop_check
  %_secret_lval112 = load i32, i32* %_secret___v58_x4
  %_secret_lval113 = load i32, i32* %_secret___v47_x0
  %_secret_lval114 = load i32, i32* %_secret___v60_x12
  %_secret_addtmp = add i32 %_secret_lval113, %_secret_lval114
  %_secret_rotltmp = call i32 @__rotl32(i32 %_secret_addtmp, i32 7)
  %_secret_xortmp = xor i32 %_secret_lval112, %_secret_rotltmp
  store i32 %_secret_xortmp, i32* %_secret___v58_x4
  %_secret_lval115 = load i32, i32* %_secret___v73_x8
  %_secret_lval116 = load i32, i32* %_secret___v58_x4
  %_secret_lval117 = load i32, i32* %_secret___v47_x0
  %_secret_addtmp118 = add i32 %_secret_lval116, %_secret_lval117
  %_secret_rotltmp119 = call i32 @__rotl32(i32 %_secret_addtmp118, i32 9)
  %_secret_xortmp120 = xor i32 %_secret_lval115, %_secret_rotltmp119
  store i32 %_secret_xortmp120, i32* %_secret___v73_x8
  %_secret_lval121 = load i32, i32* %_secret___v60_x12
  %_secret_lval122 = load i32, i32* %_secret___v73_x8
  %_secret_lval123 = load i32, i32* %_secret___v58_x4
  %_secret_addtmp124 = add i32 %_secret_lval122, %_secret_lval123
  %_secret_rotltmp125 = call i32 @__rotl32(i32 %_secret_addtmp124, i32 13)
  %_secret_xortmp126 = xor i32 %_secret_lval121, %_secret_rotltmp125
  store i32 %_secret_xortmp126, i32* %_secret___v60_x12
  %_secret_lval127 = load i32, i32* %_secret___v47_x0
  %_secret_lval128 = load i32, i32* %_secret___v60_x12
  %_secret_lval129 = load i32, i32* %_secret___v73_x8
  %_secret_addtmp130 = add i32 %_secret_lval128, %_secret_lval129
  %_secret_rotltmp131 = call i32 @__rotl32(i32 %_secret_addtmp130, i32 18)
  %_secret_xortmp132 = xor i32 %_secret_lval127, %_secret_rotltmp131
  store i32 %_secret_xortmp132, i32* %_secret___v47_x0
  %_secret_lval133 = load i32, i32* %_secret___v74_x9
  %_secret_lval134 = load i32, i32* %_secret___v48_x5
  %_secret_lval135 = load i32, i32* %_secret___v55_x1
  %_secret_addtmp136 = add i32 %_secret_lval134, %_secret_lval135
  %_secret_rotltmp137 = call i32 @__rotl32(i32 %_secret_addtmp136, i32 7)
  %_secret_xortmp138 = xor i32 %_secret_lval133, %_secret_rotltmp137
  store i32 %_secret_xortmp138, i32* %_secret___v74_x9
  %_secret_lval139 = load i32, i32* %_secret___v61_x13
  %_secret_lval140 = load i32, i32* %_secret___v74_x9
  %_secret_lval141 = load i32, i32* %_secret___v48_x5
  %_secret_addtmp142 = add i32 %_secret_lval140, %_secret_lval141
  %_secret_rotltmp143 = call i32 @__rotl32(i32 %_secret_addtmp142, i32 9)
  %_secret_xortmp144 = xor i32 %_secret_lval139, %_secret_rotltmp143
  store i32 %_secret_xortmp144, i32* %_secret___v61_x13
  %_secret_lval145 = load i32, i32* %_secret___v55_x1
  %_secret_lval146 = load i32, i32* %_secret___v61_x13
  %_secret_lval147 = load i32, i32* %_secret___v74_x9
  %_secret_addtmp148 = add i32 %_secret_lval146, %_secret_lval147
  %_secret_rotltmp149 = call i32 @__rotl32(i32 %_secret_addtmp148, i32 13)
  %_secret_xortmp150 = xor i32 %_secret_lval145, %_secret_rotltmp149
  store i32 %_secret_xortmp150, i32* %_secret___v55_x1
  %_secret_lval151 = load i32, i32* %_secret___v48_x5
  %_secret_lval152 = load i32, i32* %_secret___v55_x1
  %_secret_lval153 = load i32, i32* %_secret___v61_x13
  %_secret_addtmp154 = add i32 %_secret_lval152, %_secret_lval153
  %_secret_rotltmp155 = call i32 @__rotl32(i32 %_secret_addtmp154, i32 18)
  %_secret_xortmp156 = xor i32 %_secret_lval151, %_secret_rotltmp155
  store i32 %_secret_xortmp156, i32* %_secret___v48_x5
  %_secret_lval157 = load i32, i32* %_secret___v62_x14
  %_secret_lval158 = load i32, i32* %_secret___v49_x10
  %_secret_lval159 = load i32, i32* %_secret___v71_x6
  %_secret_addtmp160 = add i32 %_secret_lval158, %_secret_lval159
  %_secret_rotltmp161 = call i32 @__rotl32(i32 %_secret_addtmp160, i32 7)
  %_secret_xortmp162 = xor i32 %_secret_lval157, %_secret_rotltmp161
  store i32 %_secret_xortmp162, i32* %_secret___v62_x14
  %_secret_lval163 = load i32, i32* %_secret___v56_x2
  %_secret_lval164 = load i32, i32* %_secret___v62_x14
  %_secret_lval165 = load i32, i32* %_secret___v49_x10
  %_secret_addtmp166 = add i32 %_secret_lval164, %_secret_lval165
  %_secret_rotltmp167 = call i32 @__rotl32(i32 %_secret_addtmp166, i32 9)
  %_secret_xortmp168 = xor i32 %_secret_lval163, %_secret_rotltmp167
  store i32 %_secret_xortmp168, i32* %_secret___v56_x2
  %_secret_lval169 = load i32, i32* %_secret___v71_x6
  %_secret_lval170 = load i32, i32* %_secret___v56_x2
  %_secret_lval171 = load i32, i32* %_secret___v62_x14
  %_secret_addtmp172 = add i32 %_secret_lval170, %_secret_lval171
  %_secret_rotltmp173 = call i32 @__rotl32(i32 %_secret_addtmp172, i32 13)
  %_secret_xortmp174 = xor i32 %_secret_lval169, %_secret_rotltmp173
  store i32 %_secret_xortmp174, i32* %_secret___v71_x6
  %_secret_lval175 = load i32, i32* %_secret___v49_x10
  %_secret_lval176 = load i32, i32* %_secret___v71_x6
  %_secret_lval177 = load i32, i32* %_secret___v56_x2
  %_secret_addtmp178 = add i32 %_secret_lval176, %_secret_lval177
  %_secret_rotltmp179 = call i32 @__rotl32(i32 %_secret_addtmp178, i32 18)
  %_secret_xortmp180 = xor i32 %_secret_lval175, %_secret_rotltmp179
  store i32 %_secret_xortmp180, i32* %_secret___v49_x10
  %_secret_lval181 = load i32, i32* %_secret___v57_x3
  %_secret_lval182 = load i32, i32* %_secret___v50_x15
  %_secret_lval183 = load i32, i32* %_secret___v59_x11
  %_secret_addtmp184 = add i32 %_secret_lval182, %_secret_lval183
  %_secret_rotltmp185 = call i32 @__rotl32(i32 %_secret_addtmp184, i32 7)
  %_secret_xortmp186 = xor i32 %_secret_lval181, %_secret_rotltmp185
  store i32 %_secret_xortmp186, i32* %_secret___v57_x3
  %_secret_lval187 = load i32, i32* %_secret___v72_x7
  %_secret_lval188 = load i32, i32* %_secret___v57_x3
  %_secret_lval189 = load i32, i32* %_secret___v50_x15
  %_secret_addtmp190 = add i32 %_secret_lval188, %_secret_lval189
  %_secret_rotltmp191 = call i32 @__rotl32(i32 %_secret_addtmp190, i32 9)
  %_secret_xortmp192 = xor i32 %_secret_lval187, %_secret_rotltmp191
  store i32 %_secret_xortmp192, i32* %_secret___v72_x7
  %_secret_lval193 = load i32, i32* %_secret___v59_x11
  %_secret_lval194 = load i32, i32* %_secret___v72_x7
  %_secret_lval195 = load i32, i32* %_secret___v57_x3
  %_secret_addtmp196 = add i32 %_secret_lval194, %_secret_lval195
  %_secret_rotltmp197 = call i32 @__rotl32(i32 %_secret_addtmp196, i32 13)
  %_secret_xortmp198 = xor i32 %_secret_lval193, %_secret_rotltmp197
  store i32 %_secret_xortmp198, i32* %_secret___v59_x11
  %_secret_lval199 = load i32, i32* %_secret___v50_x15
  %_secret_lval200 = load i32, i32* %_secret___v59_x11
  %_secret_lval201 = load i32, i32* %_secret___v72_x7
  %_secret_addtmp202 = add i32 %_secret_lval200, %_secret_lval201
  %_secret_rotltmp203 = call i32 @__rotl32(i32 %_secret_addtmp202, i32 18)
  %_secret_xortmp204 = xor i32 %_secret_lval199, %_secret_rotltmp203
  store i32 %_secret_xortmp204, i32* %_secret___v50_x15
  %_secret_lval205 = load i32, i32* %_secret___v55_x1
  %_secret_lval206 = load i32, i32* %_secret___v47_x0
  %_secret_lval207 = load i32, i32* %_secret___v57_x3
  %_secret_addtmp208 = add i32 %_secret_lval206, %_secret_lval207
  %_secret_rotltmp209 = call i32 @__rotl32(i32 %_secret_addtmp208, i32 7)
  %_secret_xortmp210 = xor i32 %_secret_lval205, %_secret_rotltmp209
  store i32 %_secret_xortmp210, i32* %_secret___v55_x1
  %_secret_lval211 = load i32, i32* %_secret___v56_x2
  %_secret_lval212 = load i32, i32* %_secret___v55_x1
  %_secret_lval213 = load i32, i32* %_secret___v47_x0
  %_secret_addtmp214 = add i32 %_secret_lval212, %_secret_lval213
  %_secret_rotltmp215 = call i32 @__rotl32(i32 %_secret_addtmp214, i32 9)
  %_secret_xortmp216 = xor i32 %_secret_lval211, %_secret_rotltmp215
  store i32 %_secret_xortmp216, i32* %_secret___v56_x2
  %_secret_lval217 = load i32, i32* %_secret___v57_x3
  %_secret_lval218 = load i32, i32* %_secret___v56_x2
  %_secret_lval219 = load i32, i32* %_secret___v55_x1
  %_secret_addtmp220 = add i32 %_secret_lval218, %_secret_lval219
  %_secret_rotltmp221 = call i32 @__rotl32(i32 %_secret_addtmp220, i32 13)
  %_secret_xortmp222 = xor i32 %_secret_lval217, %_secret_rotltmp221
  store i32 %_secret_xortmp222, i32* %_secret___v57_x3
  %_secret_lval223 = load i32, i32* %_secret___v47_x0
  %_secret_lval224 = load i32, i32* %_secret___v57_x3
  %_secret_lval225 = load i32, i32* %_secret___v56_x2
  %_secret_addtmp226 = add i32 %_secret_lval224, %_secret_lval225
  %_secret_rotltmp227 = call i32 @__rotl32(i32 %_secret_addtmp226, i32 18)
  %_secret_xortmp228 = xor i32 %_secret_lval223, %_secret_rotltmp227
  store i32 %_secret_xortmp228, i32* %_secret___v47_x0
  %_secret_lval229 = load i32, i32* %_secret___v71_x6
  %_secret_lval230 = load i32, i32* %_secret___v48_x5
  %_secret_lval231 = load i32, i32* %_secret___v58_x4
  %_secret_addtmp232 = add i32 %_secret_lval230, %_secret_lval231
  %_secret_rotltmp233 = call i32 @__rotl32(i32 %_secret_addtmp232, i32 7)
  %_secret_xortmp234 = xor i32 %_secret_lval229, %_secret_rotltmp233
  store i32 %_secret_xortmp234, i32* %_secret___v71_x6
  %_secret_lval235 = load i32, i32* %_secret___v72_x7
  %_secret_lval236 = load i32, i32* %_secret___v71_x6
  %_secret_lval237 = load i32, i32* %_secret___v48_x5
  %_secret_addtmp238 = add i32 %_secret_lval236, %_secret_lval237
  %_secret_rotltmp239 = call i32 @__rotl32(i32 %_secret_addtmp238, i32 9)
  %_secret_xortmp240 = xor i32 %_secret_lval235, %_secret_rotltmp239
  store i32 %_secret_xortmp240, i32* %_secret___v72_x7
  %_secret_lval241 = load i32, i32* %_secret___v58_x4
  %_secret_lval242 = load i32, i32* %_secret___v72_x7
  %_secret_lval243 = load i32, i32* %_secret___v71_x6
  %_secret_addtmp244 = add i32 %_secret_lval242, %_secret_lval243
  %_secret_rotltmp245 = call i32 @__rotl32(i32 %_secret_addtmp244, i32 13)
  %_secret_xortmp246 = xor i32 %_secret_lval241, %_secret_rotltmp245
  store i32 %_secret_xortmp246, i32* %_secret___v58_x4
  %_secret_lval247 = load i32, i32* %_secret___v48_x5
  %_secret_lval248 = load i32, i32* %_secret___v58_x4
  %_secret_lval249 = load i32, i32* %_secret___v72_x7
  %_secret_addtmp250 = add i32 %_secret_lval248, %_secret_lval249
  %_secret_rotltmp251 = call i32 @__rotl32(i32 %_secret_addtmp250, i32 18)
  %_secret_xortmp252 = xor i32 %_secret_lval247, %_secret_rotltmp251
  store i32 %_secret_xortmp252, i32* %_secret___v48_x5
  %_secret_lval253 = load i32, i32* %_secret___v59_x11
  %_secret_lval254 = load i32, i32* %_secret___v49_x10
  %_secret_lval255 = load i32, i32* %_secret___v74_x9
  %_secret_addtmp256 = add i32 %_secret_lval254, %_secret_lval255
  %_secret_rotltmp257 = call i32 @__rotl32(i32 %_secret_addtmp256, i32 7)
  %_secret_xortmp258 = xor i32 %_secret_lval253, %_secret_rotltmp257
  store i32 %_secret_xortmp258, i32* %_secret___v59_x11
  %_secret_lval259 = load i32, i32* %_secret___v73_x8
  %_secret_lval260 = load i32, i32* %_secret___v59_x11
  %_secret_lval261 = load i32, i32* %_secret___v49_x10
  %_secret_addtmp262 = add i32 %_secret_lval260, %_secret_lval261
  %_secret_rotltmp263 = call i32 @__rotl32(i32 %_secret_addtmp262, i32 9)
  %_secret_xortmp264 = xor i32 %_secret_lval259, %_secret_rotltmp263
  store i32 %_secret_xortmp264, i32* %_secret___v73_x8
  %_secret_lval265 = load i32, i32* %_secret___v74_x9
  %_secret_lval266 = load i32, i32* %_secret___v73_x8
  %_secret_lval267 = load i32, i32* %_secret___v59_x11
  %_secret_addtmp268 = add i32 %_secret_lval266, %_secret_lval267
  %_secret_rotltmp269 = call i32 @__rotl32(i32 %_secret_addtmp268, i32 13)
  %_secret_xortmp270 = xor i32 %_secret_lval265, %_secret_rotltmp269
  store i32 %_secret_xortmp270, i32* %_secret___v74_x9
  %_secret_lval271 = load i32, i32* %_secret___v49_x10
  %_secret_lval272 = load i32, i32* %_secret___v74_x9
  %_secret_lval273 = load i32, i32* %_secret___v73_x8
  %_secret_addtmp274 = add i32 %_secret_lval272, %_secret_lval273
  %_secret_rotltmp275 = call i32 @__rotl32(i32 %_secret_addtmp274, i32 18)
  %_secret_xortmp276 = xor i32 %_secret_lval271, %_secret_rotltmp275
  store i32 %_secret_xortmp276, i32* %_secret___v49_x10
  %_secret_lval277 = load i32, i32* %_secret___v60_x12
  %_secret_lval278 = load i32, i32* %_secret___v50_x15
  %_secret_lval279 = load i32, i32* %_secret___v62_x14
  %_secret_addtmp280 = add i32 %_secret_lval278, %_secret_lval279
  %_secret_rotltmp281 = call i32 @__rotl32(i32 %_secret_addtmp280, i32 7)
  %_secret_xortmp282 = xor i32 %_secret_lval277, %_secret_rotltmp281
  store i32 %_secret_xortmp282, i32* %_secret___v60_x12
  %_secret_lval283 = load i32, i32* %_secret___v61_x13
  %_secret_lval284 = load i32, i32* %_secret___v60_x12
  %_secret_lval285 = load i32, i32* %_secret___v50_x15
  %_secret_addtmp286 = add i32 %_secret_lval284, %_secret_lval285
  %_secret_rotltmp287 = call i32 @__rotl32(i32 %_secret_addtmp286, i32 9)
  %_secret_xortmp288 = xor i32 %_secret_lval283, %_secret_rotltmp287
  store i32 %_secret_xortmp288, i32* %_secret___v61_x13
  %_secret_lval289 = load i32, i32* %_secret___v62_x14
  %_secret_lval290 = load i32, i32* %_secret___v61_x13
  %_secret_lval291 = load i32, i32* %_secret___v60_x12
  %_secret_addtmp292 = add i32 %_secret_lval290, %_secret_lval291
  %_secret_rotltmp293 = call i32 @__rotl32(i32 %_secret_addtmp292, i32 13)
  %_secret_xortmp294 = xor i32 %_secret_lval289, %_secret_rotltmp293
  store i32 %_secret_xortmp294, i32* %_secret___v62_x14
  %_secret_lval295 = load i32, i32* %_secret___v50_x15
  %_secret_lval296 = load i32, i32* %_secret___v62_x14
  %_secret_lval297 = load i32, i32* %_secret___v61_x13
  %_secret_addtmp298 = add i32 %_secret_lval296, %_secret_lval297
  %_secret_rotltmp299 = call i32 @__rotl32(i32 %_secret_addtmp298, i32 18)
  %_secret_xortmp300 = xor i32 %_secret_lval295, %_secret_rotltmp299
  store i32 %_secret_xortmp300, i32* %_secret___v50_x15
  %_public_lval301 = load i32, i32* %_public___v79_i
  %_public_addtmp = add i32 %_public_lval301, 1
  store i32 %_public_addtmp, i32* %_public___v79_i
  br label %loop_check

loop_end:                                         ; preds = %loop_check
  %_secret_ldedviewptr302 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep303 = getelementptr inbounds i8, i8* %_secret_ldedviewptr302, i8 0
  %_secret_arrviewdyn304 = alloca i8*
  store i8* %_secret_source_gep303, i8** %_secret_arrviewdyn304
  %_secret_ldedviewptr305 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep306 = getelementptr inbounds i8, i8* %_secret_ldedviewptr305, i8 0
  %_secret_arrviewdyn307 = alloca i8*
  store i8* %_secret_source_gep306, i8** %_secret_arrviewdyn307
  %_secret_dynarrarg308 = load i8*, i8** %_secret_arrviewdyn307
  %_secret_lval309 = load i32, i32* %_secret___v47_x0
  %_secret_lval310 = load i32, i32* %_secret___v51_j0
  %_secret_addtmp311 = add i32 %_secret_lval309, %_secret_lval310
  call void @_store32_le(i8* %_secret_dynarrarg308, i32 %_secret_addtmp311)
  %_secret_ldedviewptr312 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep313 = getelementptr inbounds i8, i8* %_secret_ldedviewptr312, i8 4
  %_secret_arrviewdyn314 = alloca i8*
  store i8* %_secret_source_gep313, i8** %_secret_arrviewdyn314
  %_secret_ldedviewptr315 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep316 = getelementptr inbounds i8, i8* %_secret_ldedviewptr315, i8 4
  %_secret_arrviewdyn317 = alloca i8*
  store i8* %_secret_source_gep316, i8** %_secret_arrviewdyn317
  %_secret_dynarrarg318 = load i8*, i8** %_secret_arrviewdyn317
  %_secret_lval319 = load i32, i32* %_secret___v55_x1
  %_secret_lval320 = load i32, i32* %_secret___v63_j1
  %_secret_addtmp321 = add i32 %_secret_lval319, %_secret_lval320
  call void @_store32_le(i8* %_secret_dynarrarg318, i32 %_secret_addtmp321)
  %_secret_ldedviewptr322 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep323 = getelementptr inbounds i8, i8* %_secret_ldedviewptr322, i8 8
  %_secret_arrviewdyn324 = alloca i8*
  store i8* %_secret_source_gep323, i8** %_secret_arrviewdyn324
  %_secret_ldedviewptr325 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep326 = getelementptr inbounds i8, i8* %_secret_ldedviewptr325, i8 8
  %_secret_arrviewdyn327 = alloca i8*
  store i8* %_secret_source_gep326, i8** %_secret_arrviewdyn327
  %_secret_dynarrarg328 = load i8*, i8** %_secret_arrviewdyn327
  %_secret_lval329 = load i32, i32* %_secret___v56_x2
  %_secret_lval330 = load i32, i32* %_secret___v64_j2
  %_secret_addtmp331 = add i32 %_secret_lval329, %_secret_lval330
  call void @_store32_le(i8* %_secret_dynarrarg328, i32 %_secret_addtmp331)
  %_secret_ldedviewptr332 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep333 = getelementptr inbounds i8, i8* %_secret_ldedviewptr332, i8 12
  %_secret_arrviewdyn334 = alloca i8*
  store i8* %_secret_source_gep333, i8** %_secret_arrviewdyn334
  %_secret_ldedviewptr335 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep336 = getelementptr inbounds i8, i8* %_secret_ldedviewptr335, i8 12
  %_secret_arrviewdyn337 = alloca i8*
  store i8* %_secret_source_gep336, i8** %_secret_arrviewdyn337
  %_secret_dynarrarg338 = load i8*, i8** %_secret_arrviewdyn337
  %_secret_lval339 = load i32, i32* %_secret___v57_x3
  %_secret_lval340 = load i32, i32* %_secret___v65_j3
  %_secret_addtmp341 = add i32 %_secret_lval339, %_secret_lval340
  call void @_store32_le(i8* %_secret_dynarrarg338, i32 %_secret_addtmp341)
  %_secret_ldedviewptr342 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep343 = getelementptr inbounds i8, i8* %_secret_ldedviewptr342, i8 16
  %_secret_arrviewdyn344 = alloca i8*
  store i8* %_secret_source_gep343, i8** %_secret_arrviewdyn344
  %_secret_ldedviewptr345 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep346 = getelementptr inbounds i8, i8* %_secret_ldedviewptr345, i8 16
  %_secret_arrviewdyn347 = alloca i8*
  store i8* %_secret_source_gep346, i8** %_secret_arrviewdyn347
  %_secret_dynarrarg348 = load i8*, i8** %_secret_arrviewdyn347
  %_secret_lval349 = load i32, i32* %_secret___v58_x4
  %_secret_lval350 = load i32, i32* %_secret___v66_j4
  %_secret_addtmp351 = add i32 %_secret_lval349, %_secret_lval350
  call void @_store32_le(i8* %_secret_dynarrarg348, i32 %_secret_addtmp351)
  %_secret_ldedviewptr352 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep353 = getelementptr inbounds i8, i8* %_secret_ldedviewptr352, i8 20
  %_secret_arrviewdyn354 = alloca i8*
  store i8* %_secret_source_gep353, i8** %_secret_arrviewdyn354
  %_secret_ldedviewptr355 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep356 = getelementptr inbounds i8, i8* %_secret_ldedviewptr355, i8 20
  %_secret_arrviewdyn357 = alloca i8*
  store i8* %_secret_source_gep356, i8** %_secret_arrviewdyn357
  %_secret_dynarrarg358 = load i8*, i8** %_secret_arrviewdyn357
  %_secret_lval359 = load i32, i32* %_secret___v48_x5
  %_secret_lval360 = load i32, i32* %_secret___v52_j5
  %_secret_addtmp361 = add i32 %_secret_lval359, %_secret_lval360
  call void @_store32_le(i8* %_secret_dynarrarg358, i32 %_secret_addtmp361)
  %_secret_ldedviewptr362 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep363 = getelementptr inbounds i8, i8* %_secret_ldedviewptr362, i8 24
  %_secret_arrviewdyn364 = alloca i8*
  store i8* %_secret_source_gep363, i8** %_secret_arrviewdyn364
  %_secret_ldedviewptr365 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep366 = getelementptr inbounds i8, i8* %_secret_ldedviewptr365, i8 24
  %_secret_arrviewdyn367 = alloca i8*
  store i8* %_secret_source_gep366, i8** %_secret_arrviewdyn367
  %_secret_dynarrarg368 = load i8*, i8** %_secret_arrviewdyn367
  %_secret_lval369 = load i32, i32* %_secret___v71_x6
  %_secret_lval370 = load i32, i32* %_secret___v75_j6
  %_secret_addtmp371 = add i32 %_secret_lval369, %_secret_lval370
  call void @_store32_le(i8* %_secret_dynarrarg368, i32 %_secret_addtmp371)
  %_secret_ldedviewptr372 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep373 = getelementptr inbounds i8, i8* %_secret_ldedviewptr372, i8 28
  %_secret_arrviewdyn374 = alloca i8*
  store i8* %_secret_source_gep373, i8** %_secret_arrviewdyn374
  %_secret_ldedviewptr375 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep376 = getelementptr inbounds i8, i8* %_secret_ldedviewptr375, i8 28
  %_secret_arrviewdyn377 = alloca i8*
  store i8* %_secret_source_gep376, i8** %_secret_arrviewdyn377
  %_secret_dynarrarg378 = load i8*, i8** %_secret_arrviewdyn377
  %_secret_lval379 = load i32, i32* %_secret___v72_x7
  %_secret_lval380 = load i32, i32* %_secret___v76_j7
  %_secret_addtmp381 = add i32 %_secret_lval379, %_secret_lval380
  call void @_store32_le(i8* %_secret_dynarrarg378, i32 %_secret_addtmp381)
  %_secret_ldedviewptr382 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep383 = getelementptr inbounds i8, i8* %_secret_ldedviewptr382, i8 32
  %_secret_arrviewdyn384 = alloca i8*
  store i8* %_secret_source_gep383, i8** %_secret_arrviewdyn384
  %_secret_ldedviewptr385 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep386 = getelementptr inbounds i8, i8* %_secret_ldedviewptr385, i8 32
  %_secret_arrviewdyn387 = alloca i8*
  store i8* %_secret_source_gep386, i8** %_secret_arrviewdyn387
  %_secret_dynarrarg388 = load i8*, i8** %_secret_arrviewdyn387
  %_secret_lval389 = load i32, i32* %_secret___v73_x8
  %_secret_lval390 = load i32, i32* %_secret___v77_j8
  %_secret_addtmp391 = add i32 %_secret_lval389, %_secret_lval390
  call void @_store32_le(i8* %_secret_dynarrarg388, i32 %_secret_addtmp391)
  %_secret_ldedviewptr392 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep393 = getelementptr inbounds i8, i8* %_secret_ldedviewptr392, i8 36
  %_secret_arrviewdyn394 = alloca i8*
  store i8* %_secret_source_gep393, i8** %_secret_arrviewdyn394
  %_secret_ldedviewptr395 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep396 = getelementptr inbounds i8, i8* %_secret_ldedviewptr395, i8 36
  %_secret_arrviewdyn397 = alloca i8*
  store i8* %_secret_source_gep396, i8** %_secret_arrviewdyn397
  %_secret_dynarrarg398 = load i8*, i8** %_secret_arrviewdyn397
  %_secret_lval399 = load i32, i32* %_secret___v74_x9
  %_secret_lval400 = load i32, i32* %_secret___v78_j9
  %_secret_addtmp401 = add i32 %_secret_lval399, %_secret_lval400
  call void @_store32_le(i8* %_secret_dynarrarg398, i32 %_secret_addtmp401)
  %_secret_ldedviewptr402 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep403 = getelementptr inbounds i8, i8* %_secret_ldedviewptr402, i8 40
  %_secret_arrviewdyn404 = alloca i8*
  store i8* %_secret_source_gep403, i8** %_secret_arrviewdyn404
  %_secret_ldedviewptr405 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep406 = getelementptr inbounds i8, i8* %_secret_ldedviewptr405, i8 40
  %_secret_arrviewdyn407 = alloca i8*
  store i8* %_secret_source_gep406, i8** %_secret_arrviewdyn407
  %_secret_dynarrarg408 = load i8*, i8** %_secret_arrviewdyn407
  %_secret_lval409 = load i32, i32* %_secret___v49_x10
  %_secret_lval410 = load i32, i32* %_secret___v53_j10
  %_secret_addtmp411 = add i32 %_secret_lval409, %_secret_lval410
  call void @_store32_le(i8* %_secret_dynarrarg408, i32 %_secret_addtmp411)
  %_secret_ldedviewptr412 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep413 = getelementptr inbounds i8, i8* %_secret_ldedviewptr412, i8 44
  %_secret_arrviewdyn414 = alloca i8*
  store i8* %_secret_source_gep413, i8** %_secret_arrviewdyn414
  %_secret_ldedviewptr415 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep416 = getelementptr inbounds i8, i8* %_secret_ldedviewptr415, i8 44
  %_secret_arrviewdyn417 = alloca i8*
  store i8* %_secret_source_gep416, i8** %_secret_arrviewdyn417
  %_secret_dynarrarg418 = load i8*, i8** %_secret_arrviewdyn417
  %_secret_lval419 = load i32, i32* %_secret___v59_x11
  %_secret_lval420 = load i32, i32* %_secret___v67_j11
  %_secret_addtmp421 = add i32 %_secret_lval419, %_secret_lval420
  call void @_store32_le(i8* %_secret_dynarrarg418, i32 %_secret_addtmp421)
  %_secret_ldedviewptr422 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep423 = getelementptr inbounds i8, i8* %_secret_ldedviewptr422, i8 48
  %_secret_arrviewdyn424 = alloca i8*
  store i8* %_secret_source_gep423, i8** %_secret_arrviewdyn424
  %_secret_ldedviewptr425 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep426 = getelementptr inbounds i8, i8* %_secret_ldedviewptr425, i8 48
  %_secret_arrviewdyn427 = alloca i8*
  store i8* %_secret_source_gep426, i8** %_secret_arrviewdyn427
  %_secret_dynarrarg428 = load i8*, i8** %_secret_arrviewdyn427
  %_secret_lval429 = load i32, i32* %_secret___v60_x12
  %_secret_lval430 = load i32, i32* %_secret___v68_j12
  %_secret_addtmp431 = add i32 %_secret_lval429, %_secret_lval430
  call void @_store32_le(i8* %_secret_dynarrarg428, i32 %_secret_addtmp431)
  %_secret_ldedviewptr432 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep433 = getelementptr inbounds i8, i8* %_secret_ldedviewptr432, i8 52
  %_secret_arrviewdyn434 = alloca i8*
  store i8* %_secret_source_gep433, i8** %_secret_arrviewdyn434
  %_secret_ldedviewptr435 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep436 = getelementptr inbounds i8, i8* %_secret_ldedviewptr435, i8 52
  %_secret_arrviewdyn437 = alloca i8*
  store i8* %_secret_source_gep436, i8** %_secret_arrviewdyn437
  %_secret_dynarrarg438 = load i8*, i8** %_secret_arrviewdyn437
  %_secret_lval439 = load i32, i32* %_secret___v61_x13
  %_secret_lval440 = load i32, i32* %_secret___v69_j13
  %_secret_addtmp441 = add i32 %_secret_lval439, %_secret_lval440
  call void @_store32_le(i8* %_secret_dynarrarg438, i32 %_secret_addtmp441)
  %_secret_ldedviewptr442 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep443 = getelementptr inbounds i8, i8* %_secret_ldedviewptr442, i8 56
  %_secret_arrviewdyn444 = alloca i8*
  store i8* %_secret_source_gep443, i8** %_secret_arrviewdyn444
  %_secret_ldedviewptr445 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep446 = getelementptr inbounds i8, i8* %_secret_ldedviewptr445, i8 56
  %_secret_arrviewdyn447 = alloca i8*
  store i8* %_secret_source_gep446, i8** %_secret_arrviewdyn447
  %_secret_dynarrarg448 = load i8*, i8** %_secret_arrviewdyn447
  %_secret_lval449 = load i32, i32* %_secret___v62_x14
  %_secret_lval450 = load i32, i32* %_secret___v70_j14
  %_secret_addtmp451 = add i32 %_secret_lval449, %_secret_lval450
  call void @_store32_le(i8* %_secret_dynarrarg448, i32 %_secret_addtmp451)
  %_secret_ldedviewptr452 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep453 = getelementptr inbounds i8, i8* %_secret_ldedviewptr452, i8 60
  %_secret_arrviewdyn454 = alloca i8*
  store i8* %_secret_source_gep453, i8** %_secret_arrviewdyn454
  %_secret_ldedviewptr455 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep456 = getelementptr inbounds i8, i8* %_secret_ldedviewptr455, i8 60
  %_secret_arrviewdyn457 = alloca i8*
  store i8* %_secret_source_gep456, i8** %_secret_arrviewdyn457
  %_secret_dynarrarg458 = load i8*, i8** %_secret_arrviewdyn457
  %_secret_lval459 = load i32, i32* %_secret___v50_x15
  %_secret_lval460 = load i32, i32* %_secret___v54_j15
  %_secret_addtmp461 = add i32 %_secret_lval459, %_secret_lval460
  call void @_store32_le(i8* %_secret_dynarrarg458, i32 %_secret_addtmp461)
  ret void
}

; Function Attrs: alwaysinline readonly
define internal i32 @_load32_le(i8*) #3 {
entry:
  %_secret_cast = bitcast i8* %0 to i32*
  %_secret_ld = load i32, i32* %_secret_cast
  ret i32 %_secret_ld
}

; Function Attrs: alwaysinline
define internal i32 @__rotl32(i32 %_secret_x, i32 %_secret_n) #2 {
entry:
  %_secret_lshift = shl i32 %_secret_x, %_secret_n
  %_secret_subtmp = sub i32 32, %_secret_n
  %_secret_lrshift = lshr i32 %_secret_x, %_secret_subtmp
  %_secret_rotltmp = or i32 %_secret_lshift, %_secret_lrshift
  ret i32 %_secret_rotltmp
}

; Function Attrs: alwaysinline
define internal void @_store32_le(i8*, i32) #2 {
entry:
  %_secret_cast = bitcast i8* %0 to i32*
  store i32 %1, i32* %_secret_cast
  ret void
}

define internal i32 @_crypto_stream_salsa20(i8* %_secret_arrarg1, i32 %_public___c_len2, i8* %_public_arrarg3, i8* %_secret_arrarg5) {
entry:
  %_secret_arrarg = alloca i8*
  store i8* %_secret_arrarg1, i8** %_secret_arrarg
  %_public___c_len = alloca i32
  store i32 %_public___c_len2, i32* %_public___c_len
  %_public_arrarg = alloca i8*
  store i8* %_public_arrarg3, i8** %_public_arrarg
  %_secret_arrarg4 = alloca i8*
  store i8* %_secret_arrarg5, i8** %_secret_arrarg4
  %_public___rval = alloca i32
  %_secret___rnset = alloca i1
  %_public___v82_i = alloca i32
  %_public___v83_ctimes = alloca i32
  %_public___v84_j = alloca i32
  %_secret___v85_u = alloca i32
  %_public___v86_i = alloca i32
  %_public___v88_remain = alloca i32
  %_public___v90___v89_len = alloca i32
  %_public___v92_i = alloca i32
  store i32 0, i32* %_public___rval
  store i1 true, i1* %_secret___rnset
  %_public_lval = load i32, i32* %_public___c_len
  %_public_eqtmp = icmp eq i32 %_public_lval, 0
  %_public_branchcompare = icmp eq i1 %_public_eqtmp, true
  br i1 %_public_branchcompare, label %thenbranch, label %elsebranch

thenbranch:                                       ; preds = %entry
  store i32 0, i32* %_public___rval
  %_public_lval6 = load i32, i32* %_public___rval
  ret i32 %_public_lval6

elsebranch:                                       ; preds = %entry
  br label %branchmerge

branchmerge:                                      ; preds = %elsebranch
  %_secret___v80_kcopy = alloca [32 x i8]
  %_secret_ldedtocopy = load i8*, i8** %_secret_arrarg4
  %_secret_destcast = bitcast [32 x i8]* %_secret___v80_kcopy to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %_secret_destcast, i8* %_secret_ldedtocopy, i64 32, i32 0, i1 false)
  %_secret___v81_in = alloca [16 x i8]
  %_secret_sourcecasted = bitcast [16 x i8]* %_secret___v81_in to i8*
  call void @llvm.memset.p0i8.i64(i8* %_secret_sourcecasted, i8 0, i64 16, i32 0, i1 false)
  store i32 0, i32* %_public___v82_i
  br label %loop_check

loop_check:                                       ; preds = %loop_body, %branchmerge
  %_public_lval7 = load i32, i32* %_public___v82_i
  %_public_ulttmp = icmp ult i32 %_public_lval7, 8
  br i1 %_public_ulttmp, label %loop_body, label %loop_end

loop_body:                                        ; preds = %loop_check
  %_public_lval8 = load i32, i32* %_public___v82_i
  %_secret_ptr = getelementptr inbounds [16 x i8], [16 x i8]* %_secret___v81_in, i32 0, i32 %_public_lval8
  %_public_lval9 = load i32, i32* %_public___v82_i
  %_public_dyn = load i8*, i8** %_public_arrarg
  %_public_ptr = getelementptr inbounds i8, i8* %_public_dyn, i32 %_public_lval9
  %_public_lval10 = load i8, i8* %_public_ptr
  store i8 %_public_lval10, i8* %_secret_ptr
  %_public_lval11 = load i32, i32* %_public___v82_i
  %_public_addtmp = add i32 %_public_lval11, 1
  store i32 %_public_addtmp, i32* %_public___v82_i
  br label %loop_check

loop_end:                                         ; preds = %loop_check
  %_public_lval12 = load i32, i32* %_public___c_len
  %_public_lrshift = lshr i32 %_public_lval12, 6
  store i32 %_public_lrshift, i32* %_public___v83_ctimes
  store i32 0, i32* %_public___v84_j
  br label %loop_check13

loop_check13:                                     ; preds = %loop_end28, %loop_end
  %_public_lval16 = load i32, i32* %_public___v84_j
  %_public_lval17 = load i32, i32* %_public___v83_ctimes
  %_public_ulttmp18 = icmp ult i32 %_public_lval16, %_public_lval17
  br i1 %_public_ulttmp18, label %loop_body14, label %loop_end15

loop_body14:                                      ; preds = %loop_check13
  %_public_lval19 = load i32, i32* %_public___v84_j
  %_public_multmp = mul i32 %_public_lval19, 64
  %_secret_ldedviewptr = load i8*, i8** %_secret_arrarg
  %_secret_source_gep = getelementptr inbounds i8, i8* %_secret_ldedviewptr, i32 %_public_multmp
  %_secret_arrviewdyn = alloca i8*
  store i8* %_secret_source_gep, i8** %_secret_arrviewdyn
  %_public_lval20 = load i32, i32* %_public___v84_j
  %_public_multmp21 = mul i32 %_public_lval20, 64
  %_secret_ldedviewptr22 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep23 = getelementptr inbounds i8, i8* %_secret_ldedviewptr22, i32 %_public_multmp21
  %_secret_arrviewdyn24 = alloca i8*
  store i8* %_secret_source_gep23, i8** %_secret_arrviewdyn24
  %_secret_dynarrarg = load i8*, i8** %_secret_arrviewdyn24
  %_secret_arrtoptr = bitcast [16 x i8]* %_secret___v81_in to i8*
  %_secret_arrtoptr25 = bitcast [32 x i8]* %_secret___v80_kcopy to i8*
  call void @_crypto_core_salsa20(i8* %_secret_dynarrarg, i8* %_secret_arrtoptr, i8* %_secret_arrtoptr25)
  store i32 1, i32* %_secret___v85_u
  store i32 8, i32* %_public___v86_i
  br label %loop_check26

loop_end15:                                       ; preds = %loop_check13
  %_secret___v87_block = alloca [64 x i8]
  %_public_lval42 = load i32, i32* %_public___v83_ctimes
  %_public_multmp43 = mul i32 %_public_lval42, 64
  %_public_lval44 = load i32, i32* %_public___c_len
  %_public_ulttmp45 = icmp ult i32 %_public_multmp43, %_public_lval44
  %_public_branchcompare46 = icmp eq i1 %_public_ulttmp45, true
  br i1 %_public_branchcompare46, label %thenbranch47, label %elsebranch73

loop_check26:                                     ; preds = %loop_body27, %loop_body14
  %_public_lval29 = load i32, i32* %_public___v86_i
  %_public_ulttmp30 = icmp ult i32 %_public_lval29, 16
  br i1 %_public_ulttmp30, label %loop_body27, label %loop_end28

loop_body27:                                      ; preds = %loop_check26
  %_secret_lval = load i32, i32* %_secret___v85_u
  %_public_lval31 = load i32, i32* %_public___v86_i
  %_secret_ptr32 = getelementptr inbounds [16 x i8], [16 x i8]* %_secret___v81_in, i32 0, i32 %_public_lval31
  %_secret_lval33 = load i8, i8* %_secret_ptr32
  %_secret_rhssext = zext i8 %_secret_lval33 to i32
  %_secret_addtmp = add i32 %_secret_lval, %_secret_rhssext
  store i32 %_secret_addtmp, i32* %_secret___v85_u
  %_public_lval34 = load i32, i32* %_public___v86_i
  %_secret_ptr35 = getelementptr inbounds [16 x i8], [16 x i8]* %_secret___v81_in, i32 0, i32 %_public_lval34
  %_secret_lval36 = load i32, i32* %_secret___v85_u
  %_secret_ucast = trunc i32 %_secret_lval36 to i8
  store i8 %_secret_ucast, i8* %_secret_ptr35
  %_secret_lval37 = load i32, i32* %_secret___v85_u
  %_secret_lrshift = lshr i32 %_secret_lval37, 8
  store i32 %_secret_lrshift, i32* %_secret___v85_u
  %_public_lval38 = load i32, i32* %_public___v86_i
  %_public_addtmp39 = add i32 %_public_lval38, 1
  store i32 %_public_addtmp39, i32* %_public___v86_i
  br label %loop_check26

loop_end28:                                       ; preds = %loop_check26
  %_public_lval40 = load i32, i32* %_public___v84_j
  %_public_addtmp41 = add i32 %_public_lval40, 1
  store i32 %_public_addtmp41, i32* %_public___v84_j
  br label %loop_check13

thenbranch47:                                     ; preds = %loop_end15
  %_secret_arrtoptr48 = bitcast [64 x i8]* %_secret___v87_block to i8*
  %_secret_arrtoptr49 = bitcast [16 x i8]* %_secret___v81_in to i8*
  %_secret_arrtoptr50 = bitcast [32 x i8]* %_secret___v80_kcopy to i8*
  call void @_crypto_core_salsa20(i8* %_secret_arrtoptr48, i8* %_secret_arrtoptr49, i8* %_secret_arrtoptr50)
  %_public_lval51 = load i32, i32* %_public___c_len
  %_public_lval52 = load i32, i32* %_public___v83_ctimes
  %_public_multmp53 = mul i32 %_public_lval52, 64
  %_public_subtmp = sub i32 %_public_lval51, %_public_multmp53
  store i32 %_public_subtmp, i32* %_public___v88_remain
  %_public_lval54 = load i32, i32* %_public___v88_remain
  store i32 %_public_lval54, i32* %_public___v90___v89_len
  %_public_lval55 = load i32, i32* %_public___v83_ctimes
  %_public_multmp56 = mul i32 %_public_lval55, 64
  %_secret_ldedviewptr57 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep58 = getelementptr inbounds i8, i8* %_secret_ldedviewptr57, i32 %_public_multmp56
  %_secret___v91_cview = alloca i8*
  store i8* %_secret_source_gep58, i8** %_secret___v91_cview
  store i32 0, i32* %_public___v92_i
  br label %loop_check60

loop_check60:                                     ; preds = %loop_body61, %thenbranch47
  %_public_lval63 = load i32, i32* %_public___v92_i
  %_public_lval64 = load i32, i32* %_public___v88_remain
  %_public_ulttmp65 = icmp ult i32 %_public_lval63, %_public_lval64
  br i1 %_public_ulttmp65, label %loop_body61, label %loop_end62

loop_body61:                                      ; preds = %loop_check60
  %_public_lval66 = load i32, i32* %_public___v92_i
  %_secret_dyn = load i8*, i8** %_secret___v91_cview
  %_secret_ptr67 = getelementptr inbounds i8, i8* %_secret_dyn, i32 %_public_lval66
  %_public_lval68 = load i32, i32* %_public___v92_i
  %_secret_ptr69 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret___v87_block, i32 0, i32 %_public_lval68
  %_secret_lval70 = load i8, i8* %_secret_ptr69
  store i8 %_secret_lval70, i8* %_secret_ptr67
  %_public_lval71 = load i32, i32* %_public___v92_i
  %_public_addtmp72 = add i32 %_public_lval71, 1
  store i32 %_public_addtmp72, i32* %_public___v92_i
  br label %loop_check60

loop_end62:                                       ; preds = %loop_check60
  br label %branchmerge74

elsebranch73:                                     ; preds = %loop_end15
  br label %branchmerge74

branchmerge74:                                    ; preds = %elsebranch73, %loop_end62
  %_secret_arrtoptr75 = bitcast [64 x i8]* %_secret___v87_block to i8*
  call void @_fact_memzero(i8* %_secret_arrtoptr75, i32 64)
  %_secret_arrtoptr76 = bitcast [32 x i8]* %_secret___v80_kcopy to i8*
  call void @_fact_memzero(i8* %_secret_arrtoptr76, i32 32)
  store i32 0, i32* %_public___rval
  %_public_lval77 = load i32, i32* %_public___rval
  ret i32 %_public_lval77
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #0

define internal i32 @_crypto_stream_salsa20_xor_ic(i8* %_secret_arrarg1, i32 %_public___c_len2, i8* %_secret_arrarg4, i32 %_public___m_len5, i8* %_secret_arrarg7, i64 %_public_ic_val8, i8* %_secret_arrarg10) {
entry:
  %_secret_arrarg = alloca i8*
  store i8* %_secret_arrarg1, i8** %_secret_arrarg
  %_public___c_len = alloca i32
  store i32 %_public___c_len2, i32* %_public___c_len
  %_secret_arrarg3 = alloca i8*
  store i8* %_secret_arrarg4, i8** %_secret_arrarg3
  %_public___m_len = alloca i32
  store i32 %_public___m_len5, i32* %_public___m_len
  %_secret_arrarg6 = alloca i8*
  store i8* %_secret_arrarg7, i8** %_secret_arrarg6
  %_public_ic_val = alloca i64
  store i64 %_public_ic_val8, i64* %_public_ic_val
  %_secret_arrarg9 = alloca i8*
  store i8* %_secret_arrarg10, i8** %_secret_arrarg9
  %_public___rval = alloca i32
  %_secret___rnset = alloca i1
  %_public___v93_ic = alloca i64
  %_public___v96_i = alloca i32
  %_public___v97_i = alloca i32
  %_public___v98_mtimes = alloca i32
  %_public___v100_j = alloca i32
  %_public___v103_i = alloca i32
  %_secret___v104_u = alloca i32
  %_public___v105_i = alloca i32
  %_public___v106_remain = alloca i32
  %_public___v108___v107_len = alloca i32
  %_public___v111___v110_len = alloca i32
  %_public___v113_i = alloca i32
  store i32 0, i32* %_public___rval
  store i1 true, i1* %_secret___rnset
  %_public_lval = load i32, i32* %_public___m_len
  %_public_eqtmp = icmp eq i32 %_public_lval, 0
  %_public_branchcompare = icmp eq i1 %_public_eqtmp, true
  br i1 %_public_branchcompare, label %thenbranch, label %elsebranch

thenbranch:                                       ; preds = %entry
  store i32 0, i32* %_public___rval
  %_public_lval11 = load i32, i32* %_public___rval
  ret i32 %_public_lval11

elsebranch:                                       ; preds = %entry
  br label %branchmerge

branchmerge:                                      ; preds = %elsebranch
  %_public_lval12 = load i64, i64* %_public_ic_val
  store i64 %_public_lval12, i64* %_public___v93_ic
  %_secret___v94_kcopy = alloca [32 x i8]
  %_secret_ldedtocopy = load i8*, i8** %_secret_arrarg9
  %_secret_destcast = bitcast [32 x i8]* %_secret___v94_kcopy to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %_secret_destcast, i8* %_secret_ldedtocopy, i64 32, i32 0, i1 false)
  %_secret___v95_in = alloca [16 x i8]
  %_secret_sourcecasted = bitcast [16 x i8]* %_secret___v95_in to i8*
  call void @llvm.memset.p0i8.i64(i8* %_secret_sourcecasted, i8 0, i64 16, i32 0, i1 false)
  store i32 0, i32* %_public___v96_i
  br label %loop_check

loop_check:                                       ; preds = %loop_body, %branchmerge
  %_public_lval13 = load i32, i32* %_public___v96_i
  %_public_ulttmp = icmp ult i32 %_public_lval13, 8
  br i1 %_public_ulttmp, label %loop_body, label %loop_end

loop_body:                                        ; preds = %loop_check
  %_public_lval14 = load i32, i32* %_public___v96_i
  %_secret_ptr = getelementptr inbounds [16 x i8], [16 x i8]* %_secret___v95_in, i32 0, i32 %_public_lval14
  %_public_lval15 = load i32, i32* %_public___v96_i
  %_secret_dyn = load i8*, i8** %_secret_arrarg6
  %_secret_ptr16 = getelementptr inbounds i8, i8* %_secret_dyn, i32 %_public_lval15
  %_secret_lval = load i8, i8* %_secret_ptr16
  store i8 %_secret_lval, i8* %_secret_ptr
  %_public_lval17 = load i32, i32* %_public___v96_i
  %_public_addtmp = add i32 %_public_lval17, 1
  store i32 %_public_addtmp, i32* %_public___v96_i
  br label %loop_check

loop_end:                                         ; preds = %loop_check
  store i32 8, i32* %_public___v97_i
  br label %loop_check18

loop_check18:                                     ; preds = %loop_body19, %loop_end
  %_public_lval21 = load i32, i32* %_public___v97_i
  %_public_ulttmp22 = icmp ult i32 %_public_lval21, 16
  br i1 %_public_ulttmp22, label %loop_body19, label %loop_end20

loop_body19:                                      ; preds = %loop_check18
  %_public_lval23 = load i32, i32* %_public___v97_i
  %_secret_ptr24 = getelementptr inbounds [16 x i8], [16 x i8]* %_secret___v95_in, i32 0, i32 %_public_lval23
  %_public_lval25 = load i64, i64* %_public___v93_ic
  %_public_andtmp = and i64 %_public_lval25, 255
  %_public_truncbinop = trunc i64 %_public_andtmp to i8
  store i8 %_public_truncbinop, i8* %_secret_ptr24
  %_public_lval26 = load i64, i64* %_public___v93_ic
  %_public_lrshift = lshr i64 %_public_lval26, 8
  store i64 %_public_lrshift, i64* %_public___v93_ic
  %_public_lval27 = load i32, i32* %_public___v97_i
  %_public_addtmp28 = add i32 %_public_lval27, 1
  store i32 %_public_addtmp28, i32* %_public___v97_i
  br label %loop_check18

loop_end20:                                       ; preds = %loop_check18
  %_public_lval29 = load i32, i32* %_public___m_len
  %_public_lrshift30 = lshr i32 %_public_lval29, 6
  store i32 %_public_lrshift30, i32* %_public___v98_mtimes
  %_secret___v99_block = alloca [64 x i8]
  store i32 0, i32* %_public___v100_j
  br label %loop_check31

loop_check31:                                     ; preds = %loop_end63, %loop_end20
  %_public_lval34 = load i32, i32* %_public___v100_j
  %_public_lval35 = load i32, i32* %_public___v98_mtimes
  %_public_ulttmp36 = icmp ult i32 %_public_lval34, %_public_lval35
  br i1 %_public_ulttmp36, label %loop_body32, label %loop_end33

loop_body32:                                      ; preds = %loop_check31
  %_secret_arrtoptr = bitcast [64 x i8]* %_secret___v99_block to i8*
  %_secret_arrtoptr37 = bitcast [16 x i8]* %_secret___v95_in to i8*
  %_secret_arrtoptr38 = bitcast [32 x i8]* %_secret___v94_kcopy to i8*
  call void @_crypto_core_salsa20(i8* %_secret_arrtoptr, i8* %_secret_arrtoptr37, i8* %_secret_arrtoptr38)
  %_public_lval39 = load i32, i32* %_public___v100_j
  %_public_multmp = mul i32 %_public_lval39, 64
  %_secret_ldedviewptr = load i8*, i8** %_secret_arrarg
  %_secret_source_gep = getelementptr inbounds i8, i8* %_secret_ldedviewptr, i32 %_public_multmp
  %_secret___v101_cview = alloca i8*
  store i8* %_secret_source_gep, i8** %_secret___v101_cview
  %_public_lval40 = load i32, i32* %_public___v100_j
  %_public_multmp41 = mul i32 %_public_lval40, 64
  %_secret_ldedviewptr42 = load i8*, i8** %_secret_arrarg3
  %_secret_source_gep43 = getelementptr inbounds i8, i8* %_secret_ldedviewptr42, i32 %_public_multmp41
  %_secret___v102_mview = alloca i8*
  store i8* %_secret_source_gep43, i8** %_secret___v102_mview
  store i32 0, i32* %_public___v103_i
  br label %loop_check44

loop_end33:                                       ; preds = %loop_check31
  %_public_lval78 = load i32, i32* %_public___v98_mtimes
  %_public_multmp79 = mul i32 %_public_lval78, 64
  %_public_lval80 = load i32, i32* %_public___m_len
  %_public_ulttmp81 = icmp ult i32 %_public_multmp79, %_public_lval80
  %_public_branchcompare82 = icmp eq i1 %_public_ulttmp81, true
  br i1 %_public_branchcompare82, label %thenbranch83, label %elsebranch119

loop_check44:                                     ; preds = %loop_body45, %loop_body32
  %_public_lval47 = load i32, i32* %_public___v103_i
  %_public_ulttmp48 = icmp ult i32 %_public_lval47, 64
  br i1 %_public_ulttmp48, label %loop_body45, label %loop_end46

loop_body45:                                      ; preds = %loop_check44
  %_public_lval49 = load i32, i32* %_public___v103_i
  %_secret_dyn50 = load i8*, i8** %_secret___v101_cview
  %_secret_ptr51 = getelementptr inbounds i8, i8* %_secret_dyn50, i32 %_public_lval49
  %_public_lval52 = load i32, i32* %_public___v103_i
  %_secret_dyn53 = load i8*, i8** %_secret___v102_mview
  %_secret_ptr54 = getelementptr inbounds i8, i8* %_secret_dyn53, i32 %_public_lval52
  %_secret_lval55 = load i8, i8* %_secret_ptr54
  %_public_lval56 = load i32, i32* %_public___v103_i
  %_secret_ptr57 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret___v99_block, i32 0, i32 %_public_lval56
  %_secret_lval58 = load i8, i8* %_secret_ptr57
  %_secret_xortmp = xor i8 %_secret_lval55, %_secret_lval58
  store i8 %_secret_xortmp, i8* %_secret_ptr51
  %_public_lval59 = load i32, i32* %_public___v103_i
  %_public_addtmp60 = add i32 %_public_lval59, 1
  store i32 %_public_addtmp60, i32* %_public___v103_i
  br label %loop_check44

loop_end46:                                       ; preds = %loop_check44
  store i32 1, i32* %_secret___v104_u
  store i32 8, i32* %_public___v105_i
  br label %loop_check61

loop_check61:                                     ; preds = %loop_body62, %loop_end46
  %_public_lval64 = load i32, i32* %_public___v105_i
  %_public_ulttmp65 = icmp ult i32 %_public_lval64, 16
  br i1 %_public_ulttmp65, label %loop_body62, label %loop_end63

loop_body62:                                      ; preds = %loop_check61
  %_secret_lval66 = load i32, i32* %_secret___v104_u
  %_public_lval67 = load i32, i32* %_public___v105_i
  %_secret_ptr68 = getelementptr inbounds [16 x i8], [16 x i8]* %_secret___v95_in, i32 0, i32 %_public_lval67
  %_secret_lval69 = load i8, i8* %_secret_ptr68
  %_secret_rhssext = zext i8 %_secret_lval69 to i32
  %_secret_addtmp = add i32 %_secret_lval66, %_secret_rhssext
  store i32 %_secret_addtmp, i32* %_secret___v104_u
  %_public_lval70 = load i32, i32* %_public___v105_i
  %_secret_ptr71 = getelementptr inbounds [16 x i8], [16 x i8]* %_secret___v95_in, i32 0, i32 %_public_lval70
  %_secret_lval72 = load i32, i32* %_secret___v104_u
  %_secret_ucast = trunc i32 %_secret_lval72 to i8
  store i8 %_secret_ucast, i8* %_secret_ptr71
  %_secret_lval73 = load i32, i32* %_secret___v104_u
  %_secret_lrshift = lshr i32 %_secret_lval73, 8
  store i32 %_secret_lrshift, i32* %_secret___v104_u
  %_public_lval74 = load i32, i32* %_public___v105_i
  %_public_addtmp75 = add i32 %_public_lval74, 1
  store i32 %_public_addtmp75, i32* %_public___v105_i
  br label %loop_check61

loop_end63:                                       ; preds = %loop_check61
  %_public_lval76 = load i32, i32* %_public___v100_j
  %_public_addtmp77 = add i32 %_public_lval76, 1
  store i32 %_public_addtmp77, i32* %_public___v100_j
  br label %loop_check31

thenbranch83:                                     ; preds = %loop_end33
  %_public_lval84 = load i32, i32* %_public___m_len
  %_public_lval85 = load i32, i32* %_public___v98_mtimes
  %_public_multmp86 = mul i32 %_public_lval85, 64
  %_public_subtmp = sub i32 %_public_lval84, %_public_multmp86
  store i32 %_public_subtmp, i32* %_public___v106_remain
  %_secret_arrtoptr87 = bitcast [64 x i8]* %_secret___v99_block to i8*
  %_secret_arrtoptr88 = bitcast [16 x i8]* %_secret___v95_in to i8*
  %_secret_arrtoptr89 = bitcast [32 x i8]* %_secret___v94_kcopy to i8*
  call void @_crypto_core_salsa20(i8* %_secret_arrtoptr87, i8* %_secret_arrtoptr88, i8* %_secret_arrtoptr89)
  %_public_lval90 = load i32, i32* %_public___v106_remain
  store i32 %_public_lval90, i32* %_public___v108___v107_len
  %_public_lval91 = load i32, i32* %_public___v98_mtimes
  %_public_multmp92 = mul i32 %_public_lval91, 64
  %_secret_ldedviewptr93 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep94 = getelementptr inbounds i8, i8* %_secret_ldedviewptr93, i32 %_public_multmp92
  %_secret___v109_cview = alloca i8*
  store i8* %_secret_source_gep94, i8** %_secret___v109_cview
  %_public_lval95 = load i32, i32* %_public___v106_remain
  store i32 %_public_lval95, i32* %_public___v111___v110_len
  %_public_lval96 = load i32, i32* %_public___v98_mtimes
  %_public_multmp97 = mul i32 %_public_lval96, 64
  %_secret_ldedviewptr98 = load i8*, i8** %_secret_arrarg3
  %_secret_source_gep99 = getelementptr inbounds i8, i8* %_secret_ldedviewptr98, i32 %_public_multmp97
  %_secret___v112_mview = alloca i8*
  store i8* %_secret_source_gep99, i8** %_secret___v112_mview
  store i32 0, i32* %_public___v113_i
  br label %loop_check100

loop_check100:                                    ; preds = %loop_body101, %thenbranch83
  %_public_lval103 = load i32, i32* %_public___v113_i
  %_public_lval104 = load i32, i32* %_public___v106_remain
  %_public_ulttmp105 = icmp ult i32 %_public_lval103, %_public_lval104
  br i1 %_public_ulttmp105, label %loop_body101, label %loop_end102

loop_body101:                                     ; preds = %loop_check100
  %_public_lval106 = load i32, i32* %_public___v113_i
  %_secret_dyn107 = load i8*, i8** %_secret___v109_cview
  %_secret_ptr108 = getelementptr inbounds i8, i8* %_secret_dyn107, i32 %_public_lval106
  %_public_lval109 = load i32, i32* %_public___v113_i
  %_secret_dyn110 = load i8*, i8** %_secret___v112_mview
  %_secret_ptr111 = getelementptr inbounds i8, i8* %_secret_dyn110, i32 %_public_lval109
  %_secret_lval112 = load i8, i8* %_secret_ptr111
  %_public_lval113 = load i32, i32* %_public___v113_i
  %_secret_ptr114 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret___v99_block, i32 0, i32 %_public_lval113
  %_secret_lval115 = load i8, i8* %_secret_ptr114
  %_secret_xortmp116 = xor i8 %_secret_lval112, %_secret_lval115
  store i8 %_secret_xortmp116, i8* %_secret_ptr108
  %_public_lval117 = load i32, i32* %_public___v113_i
  %_public_addtmp118 = add i32 %_public_lval117, 1
  store i32 %_public_addtmp118, i32* %_public___v113_i
  br label %loop_check100

loop_end102:                                      ; preds = %loop_check100
  br label %branchmerge120

elsebranch119:                                    ; preds = %loop_end33
  br label %branchmerge120

branchmerge120:                                   ; preds = %elsebranch119, %loop_end102
  %_secret_arrtoptr121 = bitcast [64 x i8]* %_secret___v99_block to i8*
  call void @_memzero(i8* %_secret_arrtoptr121, i32 64)
  %_secret_arrtoptr122 = bitcast [32 x i8]* %_secret___v94_kcopy to i8*
  call void @_memzero(i8* %_secret_arrtoptr122, i32 32)
  store i32 0, i32* %_public___rval
  %_public_lval123 = load i32, i32* %_public___rval
  ret i32 %_public_lval123
}

define internal void @_crypto_core_hsalsa20(i8* %_secret_arrarg1, i8* %_secret_arrarg3, i8* %_secret_arrarg5) {
entry:
  %_secret_arrarg = alloca i8*
  store i8* %_secret_arrarg1, i8** %_secret_arrarg
  %_secret_arrarg2 = alloca i8*
  store i8* %_secret_arrarg3, i8** %_secret_arrarg2
  %_secret_arrarg4 = alloca i8*
  store i8* %_secret_arrarg5, i8** %_secret_arrarg4
  %_secret___rnset = alloca i1
  %_secret___v114_x0 = alloca i32
  %_secret___v115_x5 = alloca i32
  %_secret___v116_x10 = alloca i32
  %_secret___v117_x15 = alloca i32
  %_secret___v118_x1 = alloca i32
  %_secret___v119_x2 = alloca i32
  %_secret___v120_x3 = alloca i32
  %_secret___v121_x4 = alloca i32
  %_secret___v122_x11 = alloca i32
  %_secret___v123_x12 = alloca i32
  %_secret___v124_x13 = alloca i32
  %_secret___v125_x14 = alloca i32
  %_secret___v126_x6 = alloca i32
  %_secret___v127_x7 = alloca i32
  %_secret___v128_x8 = alloca i32
  %_secret___v129_x9 = alloca i32
  %_public___v130_i = alloca i32
  store i1 true, i1* %_secret___rnset
  store i32 1634760805, i32* %_secret___v114_x0
  store i32 857760878, i32* %_secret___v115_x5
  store i32 2036477234, i32* %_secret___v116_x10
  store i32 1797285236, i32* %_secret___v117_x15
  %_secret_ldedviewptr = load i8*, i8** %_secret_arrarg4
  %_secret_source_gep = getelementptr inbounds i8, i8* %_secret_ldedviewptr, i8 0
  %_secret_arrviewdyn = alloca i8*
  store i8* %_secret_source_gep, i8** %_secret_arrviewdyn
  %_secret_ldedviewptr6 = load i8*, i8** %_secret_arrarg4
  %_secret_source_gep7 = getelementptr inbounds i8, i8* %_secret_ldedviewptr6, i8 0
  %_secret_arrviewdyn8 = alloca i8*
  store i8* %_secret_source_gep7, i8** %_secret_arrviewdyn8
  %_secret_dynarrarg = load i8*, i8** %_secret_arrviewdyn8
  %_secret_calltmp = call i32 @_load32_le(i8* %_secret_dynarrarg)
  store i32 %_secret_calltmp, i32* %_secret___v118_x1
  %_secret_ldedviewptr9 = load i8*, i8** %_secret_arrarg4
  %_secret_source_gep10 = getelementptr inbounds i8, i8* %_secret_ldedviewptr9, i8 4
  %_secret_arrviewdyn11 = alloca i8*
  store i8* %_secret_source_gep10, i8** %_secret_arrviewdyn11
  %_secret_ldedviewptr12 = load i8*, i8** %_secret_arrarg4
  %_secret_source_gep13 = getelementptr inbounds i8, i8* %_secret_ldedviewptr12, i8 4
  %_secret_arrviewdyn14 = alloca i8*
  store i8* %_secret_source_gep13, i8** %_secret_arrviewdyn14
  %_secret_dynarrarg15 = load i8*, i8** %_secret_arrviewdyn14
  %_secret_calltmp16 = call i32 @_load32_le(i8* %_secret_dynarrarg15)
  store i32 %_secret_calltmp16, i32* %_secret___v119_x2
  %_secret_ldedviewptr17 = load i8*, i8** %_secret_arrarg4
  %_secret_source_gep18 = getelementptr inbounds i8, i8* %_secret_ldedviewptr17, i8 8
  %_secret_arrviewdyn19 = alloca i8*
  store i8* %_secret_source_gep18, i8** %_secret_arrviewdyn19
  %_secret_ldedviewptr20 = load i8*, i8** %_secret_arrarg4
  %_secret_source_gep21 = getelementptr inbounds i8, i8* %_secret_ldedviewptr20, i8 8
  %_secret_arrviewdyn22 = alloca i8*
  store i8* %_secret_source_gep21, i8** %_secret_arrviewdyn22
  %_secret_dynarrarg23 = load i8*, i8** %_secret_arrviewdyn22
  %_secret_calltmp24 = call i32 @_load32_le(i8* %_secret_dynarrarg23)
  store i32 %_secret_calltmp24, i32* %_secret___v120_x3
  %_secret_ldedviewptr25 = load i8*, i8** %_secret_arrarg4
  %_secret_source_gep26 = getelementptr inbounds i8, i8* %_secret_ldedviewptr25, i8 12
  %_secret_arrviewdyn27 = alloca i8*
  store i8* %_secret_source_gep26, i8** %_secret_arrviewdyn27
  %_secret_ldedviewptr28 = load i8*, i8** %_secret_arrarg4
  %_secret_source_gep29 = getelementptr inbounds i8, i8* %_secret_ldedviewptr28, i8 12
  %_secret_arrviewdyn30 = alloca i8*
  store i8* %_secret_source_gep29, i8** %_secret_arrviewdyn30
  %_secret_dynarrarg31 = load i8*, i8** %_secret_arrviewdyn30
  %_secret_calltmp32 = call i32 @_load32_le(i8* %_secret_dynarrarg31)
  store i32 %_secret_calltmp32, i32* %_secret___v121_x4
  %_secret_ldedviewptr33 = load i8*, i8** %_secret_arrarg4
  %_secret_source_gep34 = getelementptr inbounds i8, i8* %_secret_ldedviewptr33, i8 16
  %_secret_arrviewdyn35 = alloca i8*
  store i8* %_secret_source_gep34, i8** %_secret_arrviewdyn35
  %_secret_ldedviewptr36 = load i8*, i8** %_secret_arrarg4
  %_secret_source_gep37 = getelementptr inbounds i8, i8* %_secret_ldedviewptr36, i8 16
  %_secret_arrviewdyn38 = alloca i8*
  store i8* %_secret_source_gep37, i8** %_secret_arrviewdyn38
  %_secret_dynarrarg39 = load i8*, i8** %_secret_arrviewdyn38
  %_secret_calltmp40 = call i32 @_load32_le(i8* %_secret_dynarrarg39)
  store i32 %_secret_calltmp40, i32* %_secret___v122_x11
  %_secret_ldedviewptr41 = load i8*, i8** %_secret_arrarg4
  %_secret_source_gep42 = getelementptr inbounds i8, i8* %_secret_ldedviewptr41, i8 20
  %_secret_arrviewdyn43 = alloca i8*
  store i8* %_secret_source_gep42, i8** %_secret_arrviewdyn43
  %_secret_ldedviewptr44 = load i8*, i8** %_secret_arrarg4
  %_secret_source_gep45 = getelementptr inbounds i8, i8* %_secret_ldedviewptr44, i8 20
  %_secret_arrviewdyn46 = alloca i8*
  store i8* %_secret_source_gep45, i8** %_secret_arrviewdyn46
  %_secret_dynarrarg47 = load i8*, i8** %_secret_arrviewdyn46
  %_secret_calltmp48 = call i32 @_load32_le(i8* %_secret_dynarrarg47)
  store i32 %_secret_calltmp48, i32* %_secret___v123_x12
  %_secret_ldedviewptr49 = load i8*, i8** %_secret_arrarg4
  %_secret_source_gep50 = getelementptr inbounds i8, i8* %_secret_ldedviewptr49, i8 24
  %_secret_arrviewdyn51 = alloca i8*
  store i8* %_secret_source_gep50, i8** %_secret_arrviewdyn51
  %_secret_ldedviewptr52 = load i8*, i8** %_secret_arrarg4
  %_secret_source_gep53 = getelementptr inbounds i8, i8* %_secret_ldedviewptr52, i8 24
  %_secret_arrviewdyn54 = alloca i8*
  store i8* %_secret_source_gep53, i8** %_secret_arrviewdyn54
  %_secret_dynarrarg55 = load i8*, i8** %_secret_arrviewdyn54
  %_secret_calltmp56 = call i32 @_load32_le(i8* %_secret_dynarrarg55)
  store i32 %_secret_calltmp56, i32* %_secret___v124_x13
  %_secret_ldedviewptr57 = load i8*, i8** %_secret_arrarg4
  %_secret_source_gep58 = getelementptr inbounds i8, i8* %_secret_ldedviewptr57, i8 28
  %_secret_arrviewdyn59 = alloca i8*
  store i8* %_secret_source_gep58, i8** %_secret_arrviewdyn59
  %_secret_ldedviewptr60 = load i8*, i8** %_secret_arrarg4
  %_secret_source_gep61 = getelementptr inbounds i8, i8* %_secret_ldedviewptr60, i8 28
  %_secret_arrviewdyn62 = alloca i8*
  store i8* %_secret_source_gep61, i8** %_secret_arrviewdyn62
  %_secret_dynarrarg63 = load i8*, i8** %_secret_arrviewdyn62
  %_secret_calltmp64 = call i32 @_load32_le(i8* %_secret_dynarrarg63)
  store i32 %_secret_calltmp64, i32* %_secret___v125_x14
  %_secret_ldedviewptr65 = load i8*, i8** %_secret_arrarg2
  %_secret_source_gep66 = getelementptr inbounds i8, i8* %_secret_ldedviewptr65, i8 0
  %_secret_arrviewdyn67 = alloca i8*
  store i8* %_secret_source_gep66, i8** %_secret_arrviewdyn67
  %_secret_ldedviewptr68 = load i8*, i8** %_secret_arrarg2
  %_secret_source_gep69 = getelementptr inbounds i8, i8* %_secret_ldedviewptr68, i8 0
  %_secret_arrviewdyn70 = alloca i8*
  store i8* %_secret_source_gep69, i8** %_secret_arrviewdyn70
  %_secret_dynarrarg71 = load i8*, i8** %_secret_arrviewdyn70
  %_secret_calltmp72 = call i32 @_load32_le(i8* %_secret_dynarrarg71)
  store i32 %_secret_calltmp72, i32* %_secret___v126_x6
  %_secret_ldedviewptr73 = load i8*, i8** %_secret_arrarg2
  %_secret_source_gep74 = getelementptr inbounds i8, i8* %_secret_ldedviewptr73, i8 4
  %_secret_arrviewdyn75 = alloca i8*
  store i8* %_secret_source_gep74, i8** %_secret_arrviewdyn75
  %_secret_ldedviewptr76 = load i8*, i8** %_secret_arrarg2
  %_secret_source_gep77 = getelementptr inbounds i8, i8* %_secret_ldedviewptr76, i8 4
  %_secret_arrviewdyn78 = alloca i8*
  store i8* %_secret_source_gep77, i8** %_secret_arrviewdyn78
  %_secret_dynarrarg79 = load i8*, i8** %_secret_arrviewdyn78
  %_secret_calltmp80 = call i32 @_load32_le(i8* %_secret_dynarrarg79)
  store i32 %_secret_calltmp80, i32* %_secret___v127_x7
  %_secret_ldedviewptr81 = load i8*, i8** %_secret_arrarg2
  %_secret_source_gep82 = getelementptr inbounds i8, i8* %_secret_ldedviewptr81, i8 8
  %_secret_arrviewdyn83 = alloca i8*
  store i8* %_secret_source_gep82, i8** %_secret_arrviewdyn83
  %_secret_ldedviewptr84 = load i8*, i8** %_secret_arrarg2
  %_secret_source_gep85 = getelementptr inbounds i8, i8* %_secret_ldedviewptr84, i8 8
  %_secret_arrviewdyn86 = alloca i8*
  store i8* %_secret_source_gep85, i8** %_secret_arrviewdyn86
  %_secret_dynarrarg87 = load i8*, i8** %_secret_arrviewdyn86
  %_secret_calltmp88 = call i32 @_load32_le(i8* %_secret_dynarrarg87)
  store i32 %_secret_calltmp88, i32* %_secret___v128_x8
  %_secret_ldedviewptr89 = load i8*, i8** %_secret_arrarg2
  %_secret_source_gep90 = getelementptr inbounds i8, i8* %_secret_ldedviewptr89, i8 12
  %_secret_arrviewdyn91 = alloca i8*
  store i8* %_secret_source_gep90, i8** %_secret_arrviewdyn91
  %_secret_ldedviewptr92 = load i8*, i8** %_secret_arrarg2
  %_secret_source_gep93 = getelementptr inbounds i8, i8* %_secret_ldedviewptr92, i8 12
  %_secret_arrviewdyn94 = alloca i8*
  store i8* %_secret_source_gep93, i8** %_secret_arrviewdyn94
  %_secret_dynarrarg95 = load i8*, i8** %_secret_arrviewdyn94
  %_secret_calltmp96 = call i32 @_load32_le(i8* %_secret_dynarrarg95)
  store i32 %_secret_calltmp96, i32* %_secret___v129_x9
  store i32 0, i32* %_public___v130_i
  br label %loop_check

loop_check:                                       ; preds = %loop_body, %entry
  %_public_lval = load i32, i32* %_public___v130_i
  %_public_ulttmp = icmp ult i32 %_public_lval, 10
  br i1 %_public_ulttmp, label %loop_body, label %loop_end

loop_body:                                        ; preds = %loop_check
  %_secret_lval = load i32, i32* %_secret___v121_x4
  %_secret_lval97 = load i32, i32* %_secret___v114_x0
  %_secret_lval98 = load i32, i32* %_secret___v123_x12
  %_secret_addtmp = add i32 %_secret_lval97, %_secret_lval98
  %_secret_rotltmp = call i32 @__rotl32(i32 %_secret_addtmp, i32 7)
  %_secret_xortmp = xor i32 %_secret_lval, %_secret_rotltmp
  store i32 %_secret_xortmp, i32* %_secret___v121_x4
  %_secret_lval99 = load i32, i32* %_secret___v128_x8
  %_secret_lval100 = load i32, i32* %_secret___v121_x4
  %_secret_lval101 = load i32, i32* %_secret___v114_x0
  %_secret_addtmp102 = add i32 %_secret_lval100, %_secret_lval101
  %_secret_rotltmp103 = call i32 @__rotl32(i32 %_secret_addtmp102, i32 9)
  %_secret_xortmp104 = xor i32 %_secret_lval99, %_secret_rotltmp103
  store i32 %_secret_xortmp104, i32* %_secret___v128_x8
  %_secret_lval105 = load i32, i32* %_secret___v123_x12
  %_secret_lval106 = load i32, i32* %_secret___v128_x8
  %_secret_lval107 = load i32, i32* %_secret___v121_x4
  %_secret_addtmp108 = add i32 %_secret_lval106, %_secret_lval107
  %_secret_rotltmp109 = call i32 @__rotl32(i32 %_secret_addtmp108, i32 13)
  %_secret_xortmp110 = xor i32 %_secret_lval105, %_secret_rotltmp109
  store i32 %_secret_xortmp110, i32* %_secret___v123_x12
  %_secret_lval111 = load i32, i32* %_secret___v114_x0
  %_secret_lval112 = load i32, i32* %_secret___v123_x12
  %_secret_lval113 = load i32, i32* %_secret___v128_x8
  %_secret_addtmp114 = add i32 %_secret_lval112, %_secret_lval113
  %_secret_rotltmp115 = call i32 @__rotl32(i32 %_secret_addtmp114, i32 18)
  %_secret_xortmp116 = xor i32 %_secret_lval111, %_secret_rotltmp115
  store i32 %_secret_xortmp116, i32* %_secret___v114_x0
  %_secret_lval117 = load i32, i32* %_secret___v129_x9
  %_secret_lval118 = load i32, i32* %_secret___v115_x5
  %_secret_lval119 = load i32, i32* %_secret___v118_x1
  %_secret_addtmp120 = add i32 %_secret_lval118, %_secret_lval119
  %_secret_rotltmp121 = call i32 @__rotl32(i32 %_secret_addtmp120, i32 7)
  %_secret_xortmp122 = xor i32 %_secret_lval117, %_secret_rotltmp121
  store i32 %_secret_xortmp122, i32* %_secret___v129_x9
  %_secret_lval123 = load i32, i32* %_secret___v124_x13
  %_secret_lval124 = load i32, i32* %_secret___v129_x9
  %_secret_lval125 = load i32, i32* %_secret___v115_x5
  %_secret_addtmp126 = add i32 %_secret_lval124, %_secret_lval125
  %_secret_rotltmp127 = call i32 @__rotl32(i32 %_secret_addtmp126, i32 9)
  %_secret_xortmp128 = xor i32 %_secret_lval123, %_secret_rotltmp127
  store i32 %_secret_xortmp128, i32* %_secret___v124_x13
  %_secret_lval129 = load i32, i32* %_secret___v118_x1
  %_secret_lval130 = load i32, i32* %_secret___v124_x13
  %_secret_lval131 = load i32, i32* %_secret___v129_x9
  %_secret_addtmp132 = add i32 %_secret_lval130, %_secret_lval131
  %_secret_rotltmp133 = call i32 @__rotl32(i32 %_secret_addtmp132, i32 13)
  %_secret_xortmp134 = xor i32 %_secret_lval129, %_secret_rotltmp133
  store i32 %_secret_xortmp134, i32* %_secret___v118_x1
  %_secret_lval135 = load i32, i32* %_secret___v115_x5
  %_secret_lval136 = load i32, i32* %_secret___v118_x1
  %_secret_lval137 = load i32, i32* %_secret___v124_x13
  %_secret_addtmp138 = add i32 %_secret_lval136, %_secret_lval137
  %_secret_rotltmp139 = call i32 @__rotl32(i32 %_secret_addtmp138, i32 18)
  %_secret_xortmp140 = xor i32 %_secret_lval135, %_secret_rotltmp139
  store i32 %_secret_xortmp140, i32* %_secret___v115_x5
  %_secret_lval141 = load i32, i32* %_secret___v125_x14
  %_secret_lval142 = load i32, i32* %_secret___v116_x10
  %_secret_lval143 = load i32, i32* %_secret___v126_x6
  %_secret_addtmp144 = add i32 %_secret_lval142, %_secret_lval143
  %_secret_rotltmp145 = call i32 @__rotl32(i32 %_secret_addtmp144, i32 7)
  %_secret_xortmp146 = xor i32 %_secret_lval141, %_secret_rotltmp145
  store i32 %_secret_xortmp146, i32* %_secret___v125_x14
  %_secret_lval147 = load i32, i32* %_secret___v119_x2
  %_secret_lval148 = load i32, i32* %_secret___v125_x14
  %_secret_lval149 = load i32, i32* %_secret___v116_x10
  %_secret_addtmp150 = add i32 %_secret_lval148, %_secret_lval149
  %_secret_rotltmp151 = call i32 @__rotl32(i32 %_secret_addtmp150, i32 9)
  %_secret_xortmp152 = xor i32 %_secret_lval147, %_secret_rotltmp151
  store i32 %_secret_xortmp152, i32* %_secret___v119_x2
  %_secret_lval153 = load i32, i32* %_secret___v126_x6
  %_secret_lval154 = load i32, i32* %_secret___v119_x2
  %_secret_lval155 = load i32, i32* %_secret___v125_x14
  %_secret_addtmp156 = add i32 %_secret_lval154, %_secret_lval155
  %_secret_rotltmp157 = call i32 @__rotl32(i32 %_secret_addtmp156, i32 13)
  %_secret_xortmp158 = xor i32 %_secret_lval153, %_secret_rotltmp157
  store i32 %_secret_xortmp158, i32* %_secret___v126_x6
  %_secret_lval159 = load i32, i32* %_secret___v116_x10
  %_secret_lval160 = load i32, i32* %_secret___v126_x6
  %_secret_lval161 = load i32, i32* %_secret___v119_x2
  %_secret_addtmp162 = add i32 %_secret_lval160, %_secret_lval161
  %_secret_rotltmp163 = call i32 @__rotl32(i32 %_secret_addtmp162, i32 18)
  %_secret_xortmp164 = xor i32 %_secret_lval159, %_secret_rotltmp163
  store i32 %_secret_xortmp164, i32* %_secret___v116_x10
  %_secret_lval165 = load i32, i32* %_secret___v120_x3
  %_secret_lval166 = load i32, i32* %_secret___v117_x15
  %_secret_lval167 = load i32, i32* %_secret___v122_x11
  %_secret_addtmp168 = add i32 %_secret_lval166, %_secret_lval167
  %_secret_rotltmp169 = call i32 @__rotl32(i32 %_secret_addtmp168, i32 7)
  %_secret_xortmp170 = xor i32 %_secret_lval165, %_secret_rotltmp169
  store i32 %_secret_xortmp170, i32* %_secret___v120_x3
  %_secret_lval171 = load i32, i32* %_secret___v127_x7
  %_secret_lval172 = load i32, i32* %_secret___v120_x3
  %_secret_lval173 = load i32, i32* %_secret___v117_x15
  %_secret_addtmp174 = add i32 %_secret_lval172, %_secret_lval173
  %_secret_rotltmp175 = call i32 @__rotl32(i32 %_secret_addtmp174, i32 9)
  %_secret_xortmp176 = xor i32 %_secret_lval171, %_secret_rotltmp175
  store i32 %_secret_xortmp176, i32* %_secret___v127_x7
  %_secret_lval177 = load i32, i32* %_secret___v122_x11
  %_secret_lval178 = load i32, i32* %_secret___v127_x7
  %_secret_lval179 = load i32, i32* %_secret___v120_x3
  %_secret_addtmp180 = add i32 %_secret_lval178, %_secret_lval179
  %_secret_rotltmp181 = call i32 @__rotl32(i32 %_secret_addtmp180, i32 13)
  %_secret_xortmp182 = xor i32 %_secret_lval177, %_secret_rotltmp181
  store i32 %_secret_xortmp182, i32* %_secret___v122_x11
  %_secret_lval183 = load i32, i32* %_secret___v117_x15
  %_secret_lval184 = load i32, i32* %_secret___v122_x11
  %_secret_lval185 = load i32, i32* %_secret___v127_x7
  %_secret_addtmp186 = add i32 %_secret_lval184, %_secret_lval185
  %_secret_rotltmp187 = call i32 @__rotl32(i32 %_secret_addtmp186, i32 18)
  %_secret_xortmp188 = xor i32 %_secret_lval183, %_secret_rotltmp187
  store i32 %_secret_xortmp188, i32* %_secret___v117_x15
  %_secret_lval189 = load i32, i32* %_secret___v118_x1
  %_secret_lval190 = load i32, i32* %_secret___v114_x0
  %_secret_lval191 = load i32, i32* %_secret___v120_x3
  %_secret_addtmp192 = add i32 %_secret_lval190, %_secret_lval191
  %_secret_rotltmp193 = call i32 @__rotl32(i32 %_secret_addtmp192, i32 7)
  %_secret_xortmp194 = xor i32 %_secret_lval189, %_secret_rotltmp193
  store i32 %_secret_xortmp194, i32* %_secret___v118_x1
  %_secret_lval195 = load i32, i32* %_secret___v119_x2
  %_secret_lval196 = load i32, i32* %_secret___v118_x1
  %_secret_lval197 = load i32, i32* %_secret___v114_x0
  %_secret_addtmp198 = add i32 %_secret_lval196, %_secret_lval197
  %_secret_rotltmp199 = call i32 @__rotl32(i32 %_secret_addtmp198, i32 9)
  %_secret_xortmp200 = xor i32 %_secret_lval195, %_secret_rotltmp199
  store i32 %_secret_xortmp200, i32* %_secret___v119_x2
  %_secret_lval201 = load i32, i32* %_secret___v120_x3
  %_secret_lval202 = load i32, i32* %_secret___v119_x2
  %_secret_lval203 = load i32, i32* %_secret___v118_x1
  %_secret_addtmp204 = add i32 %_secret_lval202, %_secret_lval203
  %_secret_rotltmp205 = call i32 @__rotl32(i32 %_secret_addtmp204, i32 13)
  %_secret_xortmp206 = xor i32 %_secret_lval201, %_secret_rotltmp205
  store i32 %_secret_xortmp206, i32* %_secret___v120_x3
  %_secret_lval207 = load i32, i32* %_secret___v114_x0
  %_secret_lval208 = load i32, i32* %_secret___v120_x3
  %_secret_lval209 = load i32, i32* %_secret___v119_x2
  %_secret_addtmp210 = add i32 %_secret_lval208, %_secret_lval209
  %_secret_rotltmp211 = call i32 @__rotl32(i32 %_secret_addtmp210, i32 18)
  %_secret_xortmp212 = xor i32 %_secret_lval207, %_secret_rotltmp211
  store i32 %_secret_xortmp212, i32* %_secret___v114_x0
  %_secret_lval213 = load i32, i32* %_secret___v126_x6
  %_secret_lval214 = load i32, i32* %_secret___v115_x5
  %_secret_lval215 = load i32, i32* %_secret___v121_x4
  %_secret_addtmp216 = add i32 %_secret_lval214, %_secret_lval215
  %_secret_rotltmp217 = call i32 @__rotl32(i32 %_secret_addtmp216, i32 7)
  %_secret_xortmp218 = xor i32 %_secret_lval213, %_secret_rotltmp217
  store i32 %_secret_xortmp218, i32* %_secret___v126_x6
  %_secret_lval219 = load i32, i32* %_secret___v127_x7
  %_secret_lval220 = load i32, i32* %_secret___v126_x6
  %_secret_lval221 = load i32, i32* %_secret___v115_x5
  %_secret_addtmp222 = add i32 %_secret_lval220, %_secret_lval221
  %_secret_rotltmp223 = call i32 @__rotl32(i32 %_secret_addtmp222, i32 9)
  %_secret_xortmp224 = xor i32 %_secret_lval219, %_secret_rotltmp223
  store i32 %_secret_xortmp224, i32* %_secret___v127_x7
  %_secret_lval225 = load i32, i32* %_secret___v121_x4
  %_secret_lval226 = load i32, i32* %_secret___v127_x7
  %_secret_lval227 = load i32, i32* %_secret___v126_x6
  %_secret_addtmp228 = add i32 %_secret_lval226, %_secret_lval227
  %_secret_rotltmp229 = call i32 @__rotl32(i32 %_secret_addtmp228, i32 13)
  %_secret_xortmp230 = xor i32 %_secret_lval225, %_secret_rotltmp229
  store i32 %_secret_xortmp230, i32* %_secret___v121_x4
  %_secret_lval231 = load i32, i32* %_secret___v115_x5
  %_secret_lval232 = load i32, i32* %_secret___v121_x4
  %_secret_lval233 = load i32, i32* %_secret___v127_x7
  %_secret_addtmp234 = add i32 %_secret_lval232, %_secret_lval233
  %_secret_rotltmp235 = call i32 @__rotl32(i32 %_secret_addtmp234, i32 18)
  %_secret_xortmp236 = xor i32 %_secret_lval231, %_secret_rotltmp235
  store i32 %_secret_xortmp236, i32* %_secret___v115_x5
  %_secret_lval237 = load i32, i32* %_secret___v122_x11
  %_secret_lval238 = load i32, i32* %_secret___v116_x10
  %_secret_lval239 = load i32, i32* %_secret___v129_x9
  %_secret_addtmp240 = add i32 %_secret_lval238, %_secret_lval239
  %_secret_rotltmp241 = call i32 @__rotl32(i32 %_secret_addtmp240, i32 7)
  %_secret_xortmp242 = xor i32 %_secret_lval237, %_secret_rotltmp241
  store i32 %_secret_xortmp242, i32* %_secret___v122_x11
  %_secret_lval243 = load i32, i32* %_secret___v128_x8
  %_secret_lval244 = load i32, i32* %_secret___v122_x11
  %_secret_lval245 = load i32, i32* %_secret___v116_x10
  %_secret_addtmp246 = add i32 %_secret_lval244, %_secret_lval245
  %_secret_rotltmp247 = call i32 @__rotl32(i32 %_secret_addtmp246, i32 9)
  %_secret_xortmp248 = xor i32 %_secret_lval243, %_secret_rotltmp247
  store i32 %_secret_xortmp248, i32* %_secret___v128_x8
  %_secret_lval249 = load i32, i32* %_secret___v129_x9
  %_secret_lval250 = load i32, i32* %_secret___v128_x8
  %_secret_lval251 = load i32, i32* %_secret___v122_x11
  %_secret_addtmp252 = add i32 %_secret_lval250, %_secret_lval251
  %_secret_rotltmp253 = call i32 @__rotl32(i32 %_secret_addtmp252, i32 13)
  %_secret_xortmp254 = xor i32 %_secret_lval249, %_secret_rotltmp253
  store i32 %_secret_xortmp254, i32* %_secret___v129_x9
  %_secret_lval255 = load i32, i32* %_secret___v116_x10
  %_secret_lval256 = load i32, i32* %_secret___v129_x9
  %_secret_lval257 = load i32, i32* %_secret___v128_x8
  %_secret_addtmp258 = add i32 %_secret_lval256, %_secret_lval257
  %_secret_rotltmp259 = call i32 @__rotl32(i32 %_secret_addtmp258, i32 18)
  %_secret_xortmp260 = xor i32 %_secret_lval255, %_secret_rotltmp259
  store i32 %_secret_xortmp260, i32* %_secret___v116_x10
  %_secret_lval261 = load i32, i32* %_secret___v123_x12
  %_secret_lval262 = load i32, i32* %_secret___v117_x15
  %_secret_lval263 = load i32, i32* %_secret___v125_x14
  %_secret_addtmp264 = add i32 %_secret_lval262, %_secret_lval263
  %_secret_rotltmp265 = call i32 @__rotl32(i32 %_secret_addtmp264, i32 7)
  %_secret_xortmp266 = xor i32 %_secret_lval261, %_secret_rotltmp265
  store i32 %_secret_xortmp266, i32* %_secret___v123_x12
  %_secret_lval267 = load i32, i32* %_secret___v124_x13
  %_secret_lval268 = load i32, i32* %_secret___v123_x12
  %_secret_lval269 = load i32, i32* %_secret___v117_x15
  %_secret_addtmp270 = add i32 %_secret_lval268, %_secret_lval269
  %_secret_rotltmp271 = call i32 @__rotl32(i32 %_secret_addtmp270, i32 9)
  %_secret_xortmp272 = xor i32 %_secret_lval267, %_secret_rotltmp271
  store i32 %_secret_xortmp272, i32* %_secret___v124_x13
  %_secret_lval273 = load i32, i32* %_secret___v125_x14
  %_secret_lval274 = load i32, i32* %_secret___v124_x13
  %_secret_lval275 = load i32, i32* %_secret___v123_x12
  %_secret_addtmp276 = add i32 %_secret_lval274, %_secret_lval275
  %_secret_rotltmp277 = call i32 @__rotl32(i32 %_secret_addtmp276, i32 13)
  %_secret_xortmp278 = xor i32 %_secret_lval273, %_secret_rotltmp277
  store i32 %_secret_xortmp278, i32* %_secret___v125_x14
  %_secret_lval279 = load i32, i32* %_secret___v117_x15
  %_secret_lval280 = load i32, i32* %_secret___v125_x14
  %_secret_lval281 = load i32, i32* %_secret___v124_x13
  %_secret_addtmp282 = add i32 %_secret_lval280, %_secret_lval281
  %_secret_rotltmp283 = call i32 @__rotl32(i32 %_secret_addtmp282, i32 18)
  %_secret_xortmp284 = xor i32 %_secret_lval279, %_secret_rotltmp283
  store i32 %_secret_xortmp284, i32* %_secret___v117_x15
  %_public_lval285 = load i32, i32* %_public___v130_i
  %_public_addtmp = add i32 %_public_lval285, 1
  store i32 %_public_addtmp, i32* %_public___v130_i
  br label %loop_check

loop_end:                                         ; preds = %loop_check
  %_secret_ldedviewptr286 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep287 = getelementptr inbounds i8, i8* %_secret_ldedviewptr286, i8 0
  %_secret_arrviewdyn288 = alloca i8*
  store i8* %_secret_source_gep287, i8** %_secret_arrviewdyn288
  %_secret_ldedviewptr289 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep290 = getelementptr inbounds i8, i8* %_secret_ldedviewptr289, i8 0
  %_secret_arrviewdyn291 = alloca i8*
  store i8* %_secret_source_gep290, i8** %_secret_arrviewdyn291
  %_secret_dynarrarg292 = load i8*, i8** %_secret_arrviewdyn291
  %_secret_lval293 = load i32, i32* %_secret___v114_x0
  call void @_store32_le(i8* %_secret_dynarrarg292, i32 %_secret_lval293)
  %_secret_ldedviewptr294 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep295 = getelementptr inbounds i8, i8* %_secret_ldedviewptr294, i8 4
  %_secret_arrviewdyn296 = alloca i8*
  store i8* %_secret_source_gep295, i8** %_secret_arrviewdyn296
  %_secret_ldedviewptr297 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep298 = getelementptr inbounds i8, i8* %_secret_ldedviewptr297, i8 4
  %_secret_arrviewdyn299 = alloca i8*
  store i8* %_secret_source_gep298, i8** %_secret_arrviewdyn299
  %_secret_dynarrarg300 = load i8*, i8** %_secret_arrviewdyn299
  %_secret_lval301 = load i32, i32* %_secret___v115_x5
  call void @_store32_le(i8* %_secret_dynarrarg300, i32 %_secret_lval301)
  %_secret_ldedviewptr302 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep303 = getelementptr inbounds i8, i8* %_secret_ldedviewptr302, i8 8
  %_secret_arrviewdyn304 = alloca i8*
  store i8* %_secret_source_gep303, i8** %_secret_arrviewdyn304
  %_secret_ldedviewptr305 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep306 = getelementptr inbounds i8, i8* %_secret_ldedviewptr305, i8 8
  %_secret_arrviewdyn307 = alloca i8*
  store i8* %_secret_source_gep306, i8** %_secret_arrviewdyn307
  %_secret_dynarrarg308 = load i8*, i8** %_secret_arrviewdyn307
  %_secret_lval309 = load i32, i32* %_secret___v116_x10
  call void @_store32_le(i8* %_secret_dynarrarg308, i32 %_secret_lval309)
  %_secret_ldedviewptr310 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep311 = getelementptr inbounds i8, i8* %_secret_ldedviewptr310, i8 12
  %_secret_arrviewdyn312 = alloca i8*
  store i8* %_secret_source_gep311, i8** %_secret_arrviewdyn312
  %_secret_ldedviewptr313 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep314 = getelementptr inbounds i8, i8* %_secret_ldedviewptr313, i8 12
  %_secret_arrviewdyn315 = alloca i8*
  store i8* %_secret_source_gep314, i8** %_secret_arrviewdyn315
  %_secret_dynarrarg316 = load i8*, i8** %_secret_arrviewdyn315
  %_secret_lval317 = load i32, i32* %_secret___v117_x15
  call void @_store32_le(i8* %_secret_dynarrarg316, i32 %_secret_lval317)
  %_secret_ldedviewptr318 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep319 = getelementptr inbounds i8, i8* %_secret_ldedviewptr318, i8 16
  %_secret_arrviewdyn320 = alloca i8*
  store i8* %_secret_source_gep319, i8** %_secret_arrviewdyn320
  %_secret_ldedviewptr321 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep322 = getelementptr inbounds i8, i8* %_secret_ldedviewptr321, i8 16
  %_secret_arrviewdyn323 = alloca i8*
  store i8* %_secret_source_gep322, i8** %_secret_arrviewdyn323
  %_secret_dynarrarg324 = load i8*, i8** %_secret_arrviewdyn323
  %_secret_lval325 = load i32, i32* %_secret___v126_x6
  call void @_store32_le(i8* %_secret_dynarrarg324, i32 %_secret_lval325)
  %_secret_ldedviewptr326 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep327 = getelementptr inbounds i8, i8* %_secret_ldedviewptr326, i8 20
  %_secret_arrviewdyn328 = alloca i8*
  store i8* %_secret_source_gep327, i8** %_secret_arrviewdyn328
  %_secret_ldedviewptr329 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep330 = getelementptr inbounds i8, i8* %_secret_ldedviewptr329, i8 20
  %_secret_arrviewdyn331 = alloca i8*
  store i8* %_secret_source_gep330, i8** %_secret_arrviewdyn331
  %_secret_dynarrarg332 = load i8*, i8** %_secret_arrviewdyn331
  %_secret_lval333 = load i32, i32* %_secret___v127_x7
  call void @_store32_le(i8* %_secret_dynarrarg332, i32 %_secret_lval333)
  %_secret_ldedviewptr334 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep335 = getelementptr inbounds i8, i8* %_secret_ldedviewptr334, i8 24
  %_secret_arrviewdyn336 = alloca i8*
  store i8* %_secret_source_gep335, i8** %_secret_arrviewdyn336
  %_secret_ldedviewptr337 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep338 = getelementptr inbounds i8, i8* %_secret_ldedviewptr337, i8 24
  %_secret_arrviewdyn339 = alloca i8*
  store i8* %_secret_source_gep338, i8** %_secret_arrviewdyn339
  %_secret_dynarrarg340 = load i8*, i8** %_secret_arrviewdyn339
  %_secret_lval341 = load i32, i32* %_secret___v128_x8
  call void @_store32_le(i8* %_secret_dynarrarg340, i32 %_secret_lval341)
  %_secret_ldedviewptr342 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep343 = getelementptr inbounds i8, i8* %_secret_ldedviewptr342, i8 28
  %_secret_arrviewdyn344 = alloca i8*
  store i8* %_secret_source_gep343, i8** %_secret_arrviewdyn344
  %_secret_ldedviewptr345 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep346 = getelementptr inbounds i8, i8* %_secret_ldedviewptr345, i8 28
  %_secret_arrviewdyn347 = alloca i8*
  store i8* %_secret_source_gep346, i8** %_secret_arrviewdyn347
  %_secret_dynarrarg348 = load i8*, i8** %_secret_arrviewdyn347
  %_secret_lval349 = load i32, i32* %_secret___v129_x9
  call void @_store32_le(i8* %_secret_dynarrarg348, i32 %_secret_lval349)
  ret void
}

define internal i32 @_crypto_stream_xsalsa20(i8* %_secret_arrarg1, i32 %_public___c_len2, i8* %_public_arrarg3, i8* %_secret_arrarg5) {
entry:
  %_secret_arrarg = alloca i8*
  store i8* %_secret_arrarg1, i8** %_secret_arrarg
  %_public___c_len = alloca i32
  store i32 %_public___c_len2, i32* %_public___c_len
  %_public_arrarg = alloca i8*
  store i8* %_public_arrarg3, i8** %_public_arrarg
  %_secret_arrarg4 = alloca i8*
  store i8* %_secret_arrarg5, i8** %_secret_arrarg4
  %_public___rval = alloca i32
  %_secret___rnset = alloca i1
  %_public___v132_ret = alloca i32
  store i32 0, i32* %_public___rval
  store i1 true, i1* %_secret___rnset
  %_secret___v131_subkey = alloca [32 x i8]
  %_secret_arrtoptr = bitcast [32 x i8]* %_secret___v131_subkey to i8*
  %_public_ldedviewptr = load i8*, i8** %_public_arrarg
  %_public_source_gep = getelementptr inbounds i8, i8* %_public_ldedviewptr, i8 0
  %_public_arrviewdyn = alloca i8*
  store i8* %_public_source_gep, i8** %_public_arrviewdyn
  %_public_ldedviewptr6 = load i8*, i8** %_public_arrarg
  %_public_source_gep7 = getelementptr inbounds i8, i8* %_public_ldedviewptr6, i8 0
  %_public_arrviewdyn8 = alloca i8*
  store i8* %_public_source_gep7, i8** %_public_arrviewdyn8
  %_secret_dynarrarg = load i8*, i8** %_public_arrviewdyn8
  %_secret_dynarrarg9 = load i8*, i8** %_secret_arrarg4
  call void @_crypto_core_hsalsa20(i8* %_secret_arrtoptr, i8* %_secret_dynarrarg, i8* %_secret_dynarrarg9)
  %_secret_dynarrarg10 = load i8*, i8** %_secret_arrarg
  %_public_lval = load i32, i32* %_public___c_len
  %_public_ldedviewptr11 = load i8*, i8** %_public_arrarg
  %_public_source_gep12 = getelementptr inbounds i8, i8* %_public_ldedviewptr11, i8 16
  %_public_arrviewdyn13 = alloca i8*
  store i8* %_public_source_gep12, i8** %_public_arrviewdyn13
  %_public_ldedviewptr14 = load i8*, i8** %_public_arrarg
  %_public_source_gep15 = getelementptr inbounds i8, i8* %_public_ldedviewptr14, i8 16
  %_public_arrviewdyn16 = alloca i8*
  store i8* %_public_source_gep15, i8** %_public_arrviewdyn16
  %_public_dynarrarg = load i8*, i8** %_public_arrviewdyn16
  %_secret_arrtoptr17 = bitcast [32 x i8]* %_secret___v131_subkey to i8*
  %_public_calltmp = call i32 @_crypto_stream_salsa20(i8* %_secret_dynarrarg10, i32 %_public_lval, i8* %_public_dynarrarg, i8* %_secret_arrtoptr17)
  store i32 %_public_calltmp, i32* %_public___v132_ret
  %_secret_arrtoptr18 = bitcast [32 x i8]* %_secret___v131_subkey to i8*
  call void @_fact_memzero(i8* %_secret_arrtoptr18, i32 32)
  %_public_lval19 = load i32, i32* %_public___v132_ret
  store i32 %_public_lval19, i32* %_public___rval
  %_public_lval20 = load i32, i32* %_public___rval
  ret i32 %_public_lval20
}

define internal i32 @_crypto_stream_xsalsa20_xor_ic(i8* %_secret_arrarg1, i32 %_public___c_len2, i8* %_secret_arrarg4, i32 %_public___m_len5, i8* %_public_arrarg6, i64 %_public_ic7, i8* %_secret_arrarg9) {
entry:
  %_secret_arrarg = alloca i8*
  store i8* %_secret_arrarg1, i8** %_secret_arrarg
  %_public___c_len = alloca i32
  store i32 %_public___c_len2, i32* %_public___c_len
  %_secret_arrarg3 = alloca i8*
  store i8* %_secret_arrarg4, i8** %_secret_arrarg3
  %_public___m_len = alloca i32
  store i32 %_public___m_len5, i32* %_public___m_len
  %_public_arrarg = alloca i8*
  store i8* %_public_arrarg6, i8** %_public_arrarg
  %_public_ic = alloca i64
  store i64 %_public_ic7, i64* %_public_ic
  %_secret_arrarg8 = alloca i8*
  store i8* %_secret_arrarg9, i8** %_secret_arrarg8
  %_public___rval = alloca i32
  %_secret___rnset = alloca i1
  %_public___v135_ret = alloca i32
  store i32 0, i32* %_public___rval
  store i1 true, i1* %_secret___rnset
  %_secret___v133_subkey = alloca [32 x i8]
  %_secret_arrtoptr = bitcast [32 x i8]* %_secret___v133_subkey to i8*
  %_public_ldedviewptr = load i8*, i8** %_public_arrarg
  %_public_source_gep = getelementptr inbounds i8, i8* %_public_ldedviewptr, i8 0
  %_public_arrviewdyn = alloca i8*
  store i8* %_public_source_gep, i8** %_public_arrviewdyn
  %_public_ldedviewptr10 = load i8*, i8** %_public_arrarg
  %_public_source_gep11 = getelementptr inbounds i8, i8* %_public_ldedviewptr10, i8 0
  %_public_arrviewdyn12 = alloca i8*
  store i8* %_public_source_gep11, i8** %_public_arrviewdyn12
  %_secret_dynarrarg = load i8*, i8** %_public_arrviewdyn12
  %_secret_dynarrarg13 = load i8*, i8** %_secret_arrarg8
  call void @_crypto_core_hsalsa20(i8* %_secret_arrtoptr, i8* %_secret_dynarrarg, i8* %_secret_dynarrarg13)
  %_public_ldedviewptr14 = load i8*, i8** %_public_arrarg
  %_public_source_gep15 = getelementptr inbounds i8, i8* %_public_ldedviewptr14, i8 16
  %_public___v134_tmp = alloca i8*
  store i8* %_public_source_gep15, i8** %_public___v134_tmp
  %_secret_dynarrarg17 = load i8*, i8** %_secret_arrarg
  %_public_lval = load i32, i32* %_public___c_len
  %_secret_dynarrarg18 = load i8*, i8** %_secret_arrarg3
  %_public_lval19 = load i32, i32* %_public___m_len
  %_secret_dynarrarg20 = load i8*, i8** %_public___v134_tmp
  %_public_lval21 = load i64, i64* %_public_ic
  %_secret_arrtoptr22 = bitcast [32 x i8]* %_secret___v133_subkey to i8*
  %_public_calltmp = call i32 @_crypto_stream_salsa20_xor_ic(i8* %_secret_dynarrarg17, i32 %_public_lval, i8* %_secret_dynarrarg18, i32 %_public_lval19, i8* %_secret_dynarrarg20, i64 %_public_lval21, i8* %_secret_arrtoptr22)
  store i32 %_public_calltmp, i32* %_public___v135_ret
  %_secret_arrtoptr23 = bitcast [32 x i8]* %_secret___v133_subkey to i8*
  call void @_fact_memzero(i8* %_secret_arrtoptr23, i32 32)
  %_public_lval24 = load i32, i32* %_public___v135_ret
  store i32 %_public_lval24, i32* %_public___rval
  %_public_lval25 = load i32, i32* %_public___rval
  ret i32 %_public_lval25
}

define internal i32 @_crypto_stream_xsalsa20_xor(i8* %_secret_arrarg1, i32 %_public___c_len2, i8* %_secret_arrarg4, i32 %_public___m_len5, i8* %_public_arrarg6, i8* %_secret_arrarg8) {
entry:
  %_secret_arrarg = alloca i8*
  store i8* %_secret_arrarg1, i8** %_secret_arrarg
  %_public___c_len = alloca i32
  store i32 %_public___c_len2, i32* %_public___c_len
  %_secret_arrarg3 = alloca i8*
  store i8* %_secret_arrarg4, i8** %_secret_arrarg3
  %_public___m_len = alloca i32
  store i32 %_public___m_len5, i32* %_public___m_len
  %_public_arrarg = alloca i8*
  store i8* %_public_arrarg6, i8** %_public_arrarg
  %_secret_arrarg7 = alloca i8*
  store i8* %_secret_arrarg8, i8** %_secret_arrarg7
  %_public___rval = alloca i32
  %_secret___rnset = alloca i1
  store i32 0, i32* %_public___rval
  store i1 true, i1* %_secret___rnset
  %_secret_dynarrarg = load i8*, i8** %_secret_arrarg
  %_public_lval = load i32, i32* %_public___c_len
  %_secret_dynarrarg9 = load i8*, i8** %_secret_arrarg3
  %_public_lval10 = load i32, i32* %_public___m_len
  %_public_dynarrarg = load i8*, i8** %_public_arrarg
  %_secret_dynarrarg11 = load i8*, i8** %_secret_arrarg7
  %_public_calltmp = call i32 @_crypto_stream_xsalsa20_xor_ic(i8* %_secret_dynarrarg, i32 %_public_lval, i8* %_secret_dynarrarg9, i32 %_public_lval10, i8* %_public_dynarrarg, i64 0, i8* %_secret_dynarrarg11)
  store i32 %_public_calltmp, i32* %_public___rval
  %_public_lval12 = load i32, i32* %_public___rval
  ret i32 %_public_lval12
}

define internal i1 @_crypto_secretbox_xsalsa20poly1305(i8* %_secret_arrarg1, i32 %_public___c_len2, i8* %_secret_arrarg4, i32 %_public___m_len5, i8* %_public_arrarg6, i8* %_secret_arrarg8) {
entry:
  %_secret_arrarg = alloca i8*
  store i8* %_secret_arrarg1, i8** %_secret_arrarg
  %_public___c_len = alloca i32
  store i32 %_public___c_len2, i32* %_public___c_len
  %_secret_arrarg3 = alloca i8*
  store i8* %_secret_arrarg4, i8** %_secret_arrarg3
  %_public___m_len = alloca i32
  store i32 %_public___m_len5, i32* %_public___m_len
  %_public_arrarg = alloca i8*
  store i8* %_public_arrarg6, i8** %_public_arrarg
  %_secret_arrarg7 = alloca i8*
  store i8* %_secret_arrarg8, i8** %_secret_arrarg7
  %_public___rval = alloca i1
  %_secret___rnset = alloca i1
  %_public___v138___v137_len = alloca i32
  %_public___v141_i = alloca i32
  store i1 false, i1* %_public___rval
  store i1 true, i1* %_secret___rnset
  %_public_lval = load i32, i32* %_public___m_len
  %_public_ulttmp = icmp ult i32 %_public_lval, 32
  %_public_branchcompare = icmp eq i1 %_public_ulttmp, true
  br i1 %_public_branchcompare, label %thenbranch, label %elsebranch

thenbranch:                                       ; preds = %entry
  store i1 false, i1* %_public___rval
  %_public_lval9 = load i1, i1* %_public___rval
  ret i1 %_public_lval9

elsebranch:                                       ; preds = %entry
  br label %branchmerge

branchmerge:                                      ; preds = %elsebranch
  %_secret_dynarrarg = load i8*, i8** %_secret_arrarg
  %_public_lval10 = load i32, i32* %_public___c_len
  %_secret_dynarrarg11 = load i8*, i8** %_secret_arrarg3
  %_public_lval12 = load i32, i32* %_public___m_len
  %_public_dynarrarg = load i8*, i8** %_public_arrarg
  %_secret_dynarrarg13 = load i8*, i8** %_secret_arrarg7
  %0 = call i32 @_crypto_stream_xsalsa20_xor(i8* %_secret_dynarrarg, i32 %_public_lval10, i8* %_secret_dynarrarg11, i32 %_public_lval12, i8* %_public_dynarrarg, i8* %_secret_dynarrarg13)
  %_secret_ldedviewptr = load i8*, i8** %_secret_arrarg
  %_secret_source_gep = getelementptr inbounds i8, i8* %_secret_ldedviewptr, i8 16
  %_secret___v136_cview = alloca i8*
  store i8* %_secret_source_gep, i8** %_secret___v136_cview
  %_public_lval14 = load i32, i32* %_public___c_len
  %_public_subtmp = sub i32 %_public_lval14, 32
  store i32 %_public_subtmp, i32* %_public___v138___v137_len
  %_secret_ldedviewptr15 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep16 = getelementptr inbounds i8, i8* %_secret_ldedviewptr15, i8 32
  %_secret___v139_mview = alloca i8*
  store i8* %_secret_source_gep16, i8** %_secret___v139_mview
  %_secret_ldedviewptr17 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep18 = getelementptr inbounds i8, i8* %_secret_ldedviewptr17, i8 0
  %_secret___v140_kview = alloca i8*
  store i8* %_secret_source_gep18, i8** %_secret___v140_kview
  %_secret_dynarrarg19 = load i8*, i8** %_secret___v136_cview
  %_secret_dynarrarg20 = load i8*, i8** %_secret___v139_mview
  %_public_lval21 = load i32, i32* %_public___v138___v137_len
  %_secret_dynarrarg22 = load i8*, i8** %_secret___v140_kview
  %1 = call i32 @_crypto_onetimeauth_poly1305(i8* %_secret_dynarrarg19, i8* %_secret_dynarrarg20, i32 %_public_lval21, i8* %_secret_dynarrarg22)
  store i32 0, i32* %_public___v141_i
  br label %loop_check

loop_check:                                       ; preds = %loop_body, %branchmerge
  %_public_lval23 = load i32, i32* %_public___v141_i
  %_public_slttmp = icmp slt i32 %_public_lval23, 16
  br i1 %_public_slttmp, label %loop_body, label %loop_end

loop_body:                                        ; preds = %loop_check
  %_public_lval24 = load i32, i32* %_public___v141_i
  %_secret_dyn = load i8*, i8** %_secret_arrarg
  %_secret_ptr = getelementptr inbounds i8, i8* %_secret_dyn, i32 %_public_lval24
  store i8 0, i8* %_secret_ptr
  %_public_lval25 = load i32, i32* %_public___v141_i
  %_public_addtmp = add i32 %_public_lval25, 1
  store i32 %_public_addtmp, i32* %_public___v141_i
  br label %loop_check

loop_end:                                         ; preds = %loop_check
  store i1 true, i1* %_public___rval
  %_public_lval26 = load i1, i1* %_public___rval
  ret i1 %_public_lval26
}

define internal i1 @_crypto_secretbox_xsalsa20poly1305_open(i8* %_secret_arrarg1, i32 %_public___m_len2, i8* %_public_arrarg3, i32 %_public___c_len4, i8* %_public_arrarg6, i8* %_secret_arrarg8) {
entry:
  %_secret_arrarg = alloca i8*
  store i8* %_secret_arrarg1, i8** %_secret_arrarg
  %_public___m_len = alloca i32
  store i32 %_public___m_len2, i32* %_public___m_len
  %_public_arrarg = alloca i8*
  store i8* %_public_arrarg3, i8** %_public_arrarg
  %_public___c_len = alloca i32
  store i32 %_public___c_len4, i32* %_public___c_len
  %_public_arrarg5 = alloca i8*
  store i8* %_public_arrarg6, i8** %_public_arrarg5
  %_secret_arrarg7 = alloca i8*
  store i8* %_secret_arrarg8, i8** %_secret_arrarg7
  %_public___rval = alloca i1
  %_secret___rnset = alloca i1
  %_public___v145___v144_len = alloca i32
  %_public___v147_i = alloca i32
  store i1 false, i1* %_public___rval
  store i1 true, i1* %_secret___rnset
  %_public_lval = load i32, i32* %_public___c_len
  %_public_ulttmp = icmp ult i32 %_public_lval, 32
  %_public_branchcompare = icmp eq i1 %_public_ulttmp, true
  br i1 %_public_branchcompare, label %thenbranch, label %elsebranch

thenbranch:                                       ; preds = %entry
  store i1 false, i1* %_public___rval
  %_public_lval9 = load i1, i1* %_public___rval
  ret i1 %_public_lval9

elsebranch:                                       ; preds = %entry
  br label %branchmerge

branchmerge:                                      ; preds = %elsebranch
  %_secret___v142_subkey = alloca [32 x i8]
  %_secret_arrtoptr = bitcast [32 x i8]* %_secret___v142_subkey to i8*
  %_public_dynarrarg = load i8*, i8** %_public_arrarg5
  %_secret_dynarrarg = load i8*, i8** %_secret_arrarg7
  %0 = call i32 @_crypto_stream_xsalsa20(i8* %_secret_arrtoptr, i32 32, i8* %_public_dynarrarg, i8* %_secret_dynarrarg)
  %_public_ldedviewptr = load i8*, i8** %_public_arrarg
  %_public_source_gep = getelementptr inbounds i8, i8* %_public_ldedviewptr, i8 16
  %_public___v143_tmp1 = alloca i8*
  store i8* %_public_source_gep, i8** %_public___v143_tmp1
  %_public_lval10 = load i32, i32* %_public___c_len
  %_public_subtmp = sub i32 %_public_lval10, 32
  store i32 %_public_subtmp, i32* %_public___v145___v144_len
  %_public_ldedviewptr11 = load i8*, i8** %_public_arrarg
  %_public_source_gep12 = getelementptr inbounds i8, i8* %_public_ldedviewptr11, i8 32
  %_public___v146_cview = alloca i8*
  store i8* %_public_source_gep12, i8** %_public___v146_cview
  %_public_dynarrarg13 = load i8*, i8** %_public___v143_tmp1
  %_public_dynarrarg14 = load i8*, i8** %_public___v146_cview
  %_public_lval15 = load i32, i32* %_public___v145___v144_len
  %_secret_arrtoptr16 = bitcast [32 x i8]* %_secret___v142_subkey to i8*
  %_public_calltmp = call i1 @_crypto_onetimeauth_poly1305_verify(i8* %_public_dynarrarg13, i8* %_public_dynarrarg14, i32 %_public_lval15, i8* %_secret_arrtoptr16)
  %_public_lnottmp = xor i1 %_public_calltmp, true
  %_public_branchcompare17 = icmp eq i1 %_public_lnottmp, true
  br i1 %_public_branchcompare17, label %thenbranch18, label %elsebranch20

thenbranch18:                                     ; preds = %branchmerge
  store i1 false, i1* %_public___rval
  %_public_lval19 = load i1, i1* %_public___rval
  ret i1 %_public_lval19

elsebranch20:                                     ; preds = %branchmerge
  br label %branchmerge21

branchmerge21:                                    ; preds = %elsebranch20
  %_secret_dynarrarg22 = load i8*, i8** %_secret_arrarg
  %_public_lval23 = load i32, i32* %_public___m_len
  %_secret_dynarrarg24 = load i8*, i8** %_public_arrarg
  %_public_lval25 = load i32, i32* %_public___c_len
  %_public_dynarrarg26 = load i8*, i8** %_public_arrarg5
  %_secret_dynarrarg27 = load i8*, i8** %_secret_arrarg7
  %1 = call i32 @_crypto_stream_xsalsa20_xor(i8* %_secret_dynarrarg22, i32 %_public_lval23, i8* %_secret_dynarrarg24, i32 %_public_lval25, i8* %_public_dynarrarg26, i8* %_secret_dynarrarg27)
  store i32 0, i32* %_public___v147_i
  br label %loop_check

loop_check:                                       ; preds = %loop_body, %branchmerge21
  %_public_lval28 = load i32, i32* %_public___v147_i
  %_public_ulttmp29 = icmp ult i32 %_public_lval28, 32
  br i1 %_public_ulttmp29, label %loop_body, label %loop_end

loop_body:                                        ; preds = %loop_check
  %_public_lval30 = load i32, i32* %_public___v147_i
  %_secret_dyn = load i8*, i8** %_secret_arrarg
  %_secret_ptr = getelementptr inbounds i8, i8* %_secret_dyn, i32 %_public_lval30
  store i8 0, i8* %_secret_ptr
  %_public_lval31 = load i32, i32* %_public___v147_i
  %_public_addtmp = add i32 %_public_lval31, 1
  store i32 %_public_addtmp, i32* %_public___v147_i
  br label %loop_check

loop_end:                                         ; preds = %loop_check
  store i1 true, i1* %_public___rval
  %_public_lval32 = load i1, i1* %_public___rval
  ret i1 %_public_lval32
}

define i1 @_crypto_secretbox(i8* %_secret_arrarg1, i32 %_public___c_len2, i8* %_secret_arrarg4, i32 %_public___m_len5, i8* %_public_arrarg6, i8* %_secret_arrarg8) {
entry:
  %_secret_arrarg = alloca i8*
  store i8* %_secret_arrarg1, i8** %_secret_arrarg
  %_public___c_len = alloca i32
  store i32 %_public___c_len2, i32* %_public___c_len
  %_secret_arrarg3 = alloca i8*
  store i8* %_secret_arrarg4, i8** %_secret_arrarg3
  %_public___m_len = alloca i32
  store i32 %_public___m_len5, i32* %_public___m_len
  %_public_arrarg = alloca i8*
  store i8* %_public_arrarg6, i8** %_public_arrarg
  %_secret_arrarg7 = alloca i8*
  store i8* %_secret_arrarg8, i8** %_secret_arrarg7
  %_public___rval = alloca i1
  %_secret___rnset = alloca i1
  store i1 false, i1* %_public___rval
  store i1 true, i1* %_secret___rnset
  %_secret_dynarrarg = load i8*, i8** %_secret_arrarg
  %_public_lval = load i32, i32* %_public___c_len
  %_secret_dynarrarg9 = load i8*, i8** %_secret_arrarg3
  %_public_lval10 = load i32, i32* %_public___m_len
  %_public_dynarrarg = load i8*, i8** %_public_arrarg
  %_secret_dynarrarg11 = load i8*, i8** %_secret_arrarg7
  %_public_calltmp = call i1 @_crypto_secretbox_xsalsa20poly1305(i8* %_secret_dynarrarg, i32 %_public_lval, i8* %_secret_dynarrarg9, i32 %_public_lval10, i8* %_public_dynarrarg, i8* %_secret_dynarrarg11)
  store i1 %_public_calltmp, i1* %_public___rval
  %_public_lval12 = load i1, i1* %_public___rval
  ret i1 %_public_lval12
}

define i1 @_crypto_secretbox_open(i8* %_secret_arrarg1, i32 %_public___m_len2, i8* %_public_arrarg3, i32 %_public___c_len4, i8* %_public_arrarg6, i8* %_secret_arrarg8) {
entry:
  %_secret_arrarg = alloca i8*
  store i8* %_secret_arrarg1, i8** %_secret_arrarg
  %_public___m_len = alloca i32
  store i32 %_public___m_len2, i32* %_public___m_len
  %_public_arrarg = alloca i8*
  store i8* %_public_arrarg3, i8** %_public_arrarg
  %_public___c_len = alloca i32
  store i32 %_public___c_len4, i32* %_public___c_len
  %_public_arrarg5 = alloca i8*
  store i8* %_public_arrarg6, i8** %_public_arrarg5
  %_secret_arrarg7 = alloca i8*
  store i8* %_secret_arrarg8, i8** %_secret_arrarg7
  %_public___rval = alloca i1
  %_secret___rnset = alloca i1
  store i1 false, i1* %_public___rval
  store i1 true, i1* %_secret___rnset
  %_secret_dynarrarg = load i8*, i8** %_secret_arrarg
  %_public_lval = load i32, i32* %_public___m_len
  %_public_dynarrarg = load i8*, i8** %_public_arrarg
  %_public_lval9 = load i32, i32* %_public___c_len
  %_public_dynarrarg10 = load i8*, i8** %_public_arrarg5
  %_secret_dynarrarg11 = load i8*, i8** %_secret_arrarg7
  %_public_calltmp = call i1 @_crypto_secretbox_xsalsa20poly1305_open(i8* %_secret_dynarrarg, i32 %_public_lval, i8* %_public_dynarrarg, i32 %_public_lval9, i8* %_public_dynarrarg10, i8* %_secret_dynarrarg11)
  store i1 %_public_calltmp, i1* %_public___rval
  %_public_lval12 = load i1, i1* %_public___rval
  ret i1 %_public_lval12
}

attributes #0 = { argmemonly nounwind }
attributes #1 = { noinline }
attributes #2 = { alwaysinline }
attributes #3 = { alwaysinline readonly }
