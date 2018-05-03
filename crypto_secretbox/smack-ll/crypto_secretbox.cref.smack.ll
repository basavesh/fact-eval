; verify with: smack --bit-precise --verifier=boogie --modular --entry-point=[...]
; ModuleID = 'SmackModule'
source_filename = "SmackModule"

%poly1305_state_internal_t = type { [3 x i64], [3 x i64], [2 x i64], i64, [16 x i8], i8 }

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
  %_public_calltmp = call i32 @__VERIFIER_nondet_unsigned_int()
  store i32 %_public_calltmp, i32* %_public___v1_i
  %_public_lval = load i32, i32* %_public___v1_i
  %_public_ulttmp = icmp ult i32 %_public_lval, 16
  %_public_branchcompare = icmp eq i1 %_public_ulttmp, true
  br i1 %_public_branchcompare, label %thenbranch, label %elsebranch

thenbranch:                                       ; preds = %entry
  %_public_lval4 = load i32, i32* %_public___v1_i
  %_public_lval5 = load i32, i32* %_public___v1_i
  %_public_addtmp = add i32 %_public_lval5, 1
  %_public_ulttmp6 = icmp ult i32 %_public_lval4, %_public_addtmp
  %_public_zexttmp = zext i1 %_public_ulttmp6 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp)
  %_public_lval7 = load i32, i32* %_public___v1_i
  %_public_ulttmp8 = icmp ult i32 0, %_public_lval7
  %_public_lval9 = load i32, i32* %_public___v1_i
  %_public_eqtmp = icmp eq i32 0, %_public_lval9
  %_public_lortmp = or i1 %_public_ulttmp8, %_public_eqtmp
  %_public_zexttmp10 = zext i1 %_public_lortmp to i32
  call void @__VERIFIER_assume(i32 %_public_zexttmp10)
  %_public_lval11 = load i32, i32* %_public___v1_i
  %_public_lhssext = zext i32 %_public_lval11 to i64
  %_public_ugtetmp = icmp uge i64 %_public_lhssext, 0
  %_public_zexttmp12 = zext i1 %_public_ugtetmp to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp12)
  %_public_lval13 = load i32, i32* %_public___v1_i
  %_public_lhssext14 = zext i32 %_public_lval13 to i64
  %_public_ulttmp15 = icmp ult i64 %_public_lhssext14, 16
  %_public_zexttmp16 = zext i1 %_public_ulttmp15 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp16)
  %_public_lval17 = load i32, i32* %_public___v1_i
  %_secret_dyn = load i8*, i8** %_secret_arrarg
  %_secret_ptr = getelementptr inbounds i8, i8* %_secret_dyn, i32 %_public_lval17
  %_secret_lval = load i8, i8* %_secret_ptr
  %_public_lval18 = load i32, i32* %_public___v1_i
  %_public_lhssext19 = zext i32 %_public_lval18 to i64
  %_public_ugtetmp20 = icmp uge i64 %_public_lhssext19, 0
  %_public_zexttmp21 = zext i1 %_public_ugtetmp20 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp21)
  %_public_lval22 = load i32, i32* %_public___v1_i
  %_public_lhssext23 = zext i32 %_public_lval22 to i64
  %_public_ulttmp24 = icmp ult i64 %_public_lhssext23, 16
  %_public_zexttmp25 = zext i1 %_public_ulttmp24 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp25)
  %_public_lval26 = load i32, i32* %_public___v1_i
  %_secret_dyn27 = load i8*, i8** %_secret_arrarg2
  %_secret_ptr28 = getelementptr inbounds i8, i8* %_secret_dyn27, i32 %_public_lval26
  %_secret_lval29 = load i8, i8* %_secret_ptr28
  %_secret_neqtmp = icmp ne i8 %_secret_lval, %_secret_lval29
  store i1 %_secret_neqtmp, i1* %_secret___m1
  %_secret_lval30 = load i1, i1* %_secret___m1
  %_secret_landtmp = and i1 true, %_secret_lval30
  %_secret_lval31 = load i1, i1* %_secret___rnset
  %_secret_landtmp32 = and i1 %_secret_landtmp, %_secret_lval31
  %_secret_condtmp = icmp ne i1 %_secret_landtmp32, false
  %_secret_lval33 = load i1, i1* %_secret___rval
  %_secret_selecttmp = call i1 @select.cmov.asm.i1(i1 %_secret_condtmp, i1 false, i1 %_secret_lval33)
  store i1 %_secret_selecttmp, i1* %_secret___rval
  %_secret_lval34 = load i1, i1* %_secret___m1
  %_secret_landtmp35 = and i1 true, %_secret_lval34
  %_secret_lval36 = load i1, i1* %_secret___rnset
  %_secret_landtmp37 = and i1 %_secret_landtmp35, %_secret_lval36
  %_secret_condtmp38 = icmp ne i1 %_secret_landtmp37, false
  %_secret_lval39 = load i1, i1* %_secret___rnset
  %_secret_selecttmp40 = call i1 @select.cmov.asm.i1(i1 %_secret_condtmp38, i1 false, i1 %_secret_lval39)
  store i1 %_secret_selecttmp40, i1* %_secret___rnset
  %_secret_lval41 = load i1, i1* %_secret___m1
  %_secret_lnottmp = xor i1 %_secret_lval41, true
  store i1 %_secret_lnottmp, i1* %_secret___m1
  br label %branchmerge

elsebranch:                                       ; preds = %entry
  br label %branchmerge

branchmerge:                                      ; preds = %elsebranch, %thenbranch
  %_secret_lval42 = load i1, i1* %_secret___rnset
  %_secret_landtmp43 = and i1 true, %_secret_lval42
  %_secret_condtmp44 = icmp ne i1 %_secret_landtmp43, false
  %_secret_lval45 = load i1, i1* %_secret___rval
  %_secret_selecttmp46 = call i1 @select.cmov.asm.i1(i1 %_secret_condtmp44, i1 true, i1 %_secret_lval45)
  store i1 %_secret_selecttmp46, i1* %_secret___rval
  %_secret_lval47 = load i1, i1* %_secret___rnset
  %_secret_landtmp48 = and i1 true, %_secret_lval47
  %_secret_condtmp49 = icmp ne i1 %_secret_landtmp48, false
  %_secret_lval50 = load i1, i1* %_secret___rnset
  %_secret_selecttmp51 = call i1 @select.cmov.asm.i1(i1 %_secret_condtmp49, i1 false, i1 %_secret_lval50)
  store i1 %_secret_selecttmp51, i1* %_secret___rnset
  %_secret_lval52 = load i1, i1* %_secret___rval
  ret i1 %_secret_lval52
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
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval13 = load i64, i64* %_secret___m2
  %_secret_selecttmp14 = call i64 @select.cmov.sel.i64(i1 %_secret_condtmp12, i64 1099511627776, i64 %_secret_lval13)
  store i64 %_secret_selecttmp14, i64* %_secret___m2
  %_secret___m215 = load i64, i64* %_secret___m2
  store i64 %_secret___m215, i64* %_secret___v4_hibit
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_structgep16 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i32 0, i32 0
  %_secret_ptr = getelementptr inbounds [3 x i64], [3 x i64]* %_secret_structgep16, i8 0, i8 0
  %_secret_lval17 = load i64, i64* %_secret_ptr
  store i64 %_secret_lval17, i64* %_secret___v5_r0
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_structgep18 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i32 0, i32 0
  %_secret_ptr19 = getelementptr inbounds [3 x i64], [3 x i64]* %_secret_structgep18, i8 0, i8 1
  %_secret_lval20 = load i64, i64* %_secret_ptr19
  store i64 %_secret_lval20, i64* %_secret___v6_r1
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_structgep21 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i32 0, i32 0
  %_secret_ptr22 = getelementptr inbounds [3 x i64], [3 x i64]* %_secret_structgep21, i8 0, i8 2
  %_secret_lval23 = load i64, i64* %_secret_ptr22
  store i64 %_secret_lval23, i64* %_secret___v7_r2
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_structgep24 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i32 0, i32 1
  %_secret_ptr25 = getelementptr inbounds [3 x i64], [3 x i64]* %_secret_structgep24, i8 0, i8 0
  %_secret_lval26 = load i64, i64* %_secret_ptr25
  store i64 %_secret_lval26, i64* %_secret___v8_h0
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_structgep27 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i32 0, i32 1
  %_secret_ptr28 = getelementptr inbounds [3 x i64], [3 x i64]* %_secret_structgep27, i8 0, i8 1
  %_secret_lval29 = load i64, i64* %_secret_ptr28
  store i64 %_secret_lval29, i64* %_secret___v9_h1
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
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
  call void @__VERIFIER_assert(i32 1)
  %_public_lval = load i32, i32* %_public___m_len
  %_public_lrshift = lshr i32 %_public_lval, 4
  store i32 %_public_lrshift, i32* %_public___v13_mloops
  %_public_calltmp = call i32 @__VERIFIER_nondet_unsigned_int()
  store i32 %_public_calltmp, i32* %_public___v14_bindex
  %_public_lval36 = load i32, i32* %_public___v14_bindex
  %_public_lval37 = load i32, i32* %_public___v13_mloops
  %_public_ulttmp = icmp ult i32 %_public_lval36, %_public_lval37
  %_public_branchcompare = icmp eq i1 %_public_ulttmp, true
  br i1 %_public_branchcompare, label %thenbranch, label %elsebranch

thenbranch:                                       ; preds = %entry
  %_public_lval38 = load i32, i32* %_public___v14_bindex
  %_public_lval39 = load i32, i32* %_public___v14_bindex
  %_public_addtmp = add i32 %_public_lval39, 1
  %_public_ulttmp40 = icmp ult i32 %_public_lval38, %_public_addtmp
  %_public_zexttmp = zext i1 %_public_ulttmp40 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp)
  %_public_lval41 = load i32, i32* %_public___v14_bindex
  %_public_ulttmp42 = icmp ult i32 0, %_public_lval41
  %_public_lval43 = load i32, i32* %_public___v14_bindex
  %_public_eqtmp = icmp eq i32 0, %_public_lval43
  %_public_lortmp = or i1 %_public_ulttmp42, %_public_eqtmp
  %_public_zexttmp44 = zext i1 %_public_lortmp to i32
  call void @__VERIFIER_assume(i32 %_public_zexttmp44)
  %_public_lval45 = load i32, i32* %_public___v14_bindex
  %_public_multmp = mul i32 %_public_lval45, 16
  %_public_lhssext = zext i32 %_public_multmp to i64
  %_public_addtmp46 = add i64 %_public_lhssext, 8
  %_public_truncbinop = trunc i64 %_public_addtmp46 to i32
  %_public_lval47 = load i32, i32* %_public___v14_bindex
  %_public_multmp48 = mul i32 %_public_lval47, 16
  %_public_ugttmp = icmp ugt i32 %_public_truncbinop, %_public_multmp48
  %_public_zexttmp49 = zext i1 %_public_ugttmp to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp49)
  %_public_lval50 = load i32, i32* %_public___v14_bindex
  %_public_multmp51 = mul i32 %_public_lval50, 16
  %_public_lhssext52 = zext i32 %_public_multmp51 to i64
  %_public_ugtetmp = icmp uge i64 %_public_lhssext52, 0
  %_public_zexttmp53 = zext i1 %_public_ugtetmp to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp53)
  %_public_lval54 = load i32, i32* %_public___v14_bindex
  %_public_multmp55 = mul i32 %_public_lval54, 16
  %_public_lval56 = load i32, i32* %_public___m_len
  %_public_icast = zext i32 %_public_lval56 to i64
  %_public_lhssext57 = zext i32 %_public_multmp55 to i64
  %_public_ulttmp58 = icmp ult i64 %_public_lhssext57, %_public_icast
  %_public_zexttmp59 = zext i1 %_public_ulttmp58 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp59)
  %_public_lval60 = load i32, i32* %_public___v14_bindex
  %_public_multmp61 = mul i32 %_public_lval60, 16
  %_public_lhssext62 = zext i32 %_public_multmp61 to i64
  %_public_addtmp63 = add i64 %_public_lhssext62, 8
  %_public_truncbinop64 = trunc i64 %_public_addtmp63 to i32
  %_public_subtmp = sub i32 %_public_truncbinop64, 1
  %_public_lhssext65 = zext i32 %_public_subtmp to i64
  %_public_ugtetmp66 = icmp uge i64 %_public_lhssext65, 0
  %_public_zexttmp67 = zext i1 %_public_ugtetmp66 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp67)
  %_public_lval68 = load i32, i32* %_public___v14_bindex
  %_public_multmp69 = mul i32 %_public_lval68, 16
  %_public_lhssext70 = zext i32 %_public_multmp69 to i64
  %_public_addtmp71 = add i64 %_public_lhssext70, 8
  %_public_truncbinop72 = trunc i64 %_public_addtmp71 to i32
  %_public_subtmp73 = sub i32 %_public_truncbinop72, 1
  %_public_lval74 = load i32, i32* %_public___m_len
  %_public_icast75 = zext i32 %_public_lval74 to i64
  %_public_lhssext76 = zext i32 %_public_subtmp73 to i64
  %_public_ulttmp77 = icmp ult i64 %_public_lhssext76, %_public_icast75
  %_public_zexttmp78 = zext i1 %_public_ulttmp77 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp78)
  %_public_lval79 = load i32, i32* %_public___v14_bindex
  %_public_multmp80 = mul i32 %_public_lval79, 16
  %_secret_ldedviewptr = load i8*, i8** %_secret_arrarg
  %_secret_source_gep = getelementptr inbounds i8, i8* %_secret_ldedviewptr, i32 %_public_multmp80
  %_secret_arrviewdyn = alloca i8*
  store i8* %_secret_source_gep, i8** %_secret_arrviewdyn
  %_public_lval81 = load i32, i32* %_public___v14_bindex
  %_public_multmp82 = mul i32 %_public_lval81, 16
  %_public_lhssext83 = zext i32 %_public_multmp82 to i64
  %_public_addtmp84 = add i64 %_public_lhssext83, 8
  %_public_truncbinop85 = trunc i64 %_public_addtmp84 to i32
  %_public_lval86 = load i32, i32* %_public___v14_bindex
  %_public_multmp87 = mul i32 %_public_lval86, 16
  %_public_ugttmp88 = icmp ugt i32 %_public_truncbinop85, %_public_multmp87
  %_public_zexttmp89 = zext i1 %_public_ugttmp88 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp89)
  %_public_lval90 = load i32, i32* %_public___v14_bindex
  %_public_multmp91 = mul i32 %_public_lval90, 16
  %_public_lhssext92 = zext i32 %_public_multmp91 to i64
  %_public_ugtetmp93 = icmp uge i64 %_public_lhssext92, 0
  %_public_zexttmp94 = zext i1 %_public_ugtetmp93 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp94)
  %_public_lval95 = load i32, i32* %_public___v14_bindex
  %_public_multmp96 = mul i32 %_public_lval95, 16
  %_public_lval97 = load i32, i32* %_public___m_len
  %_public_icast98 = zext i32 %_public_lval97 to i64
  %_public_lhssext99 = zext i32 %_public_multmp96 to i64
  %_public_ulttmp100 = icmp ult i64 %_public_lhssext99, %_public_icast98
  %_public_zexttmp101 = zext i1 %_public_ulttmp100 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp101)
  %_public_lval102 = load i32, i32* %_public___v14_bindex
  %_public_multmp103 = mul i32 %_public_lval102, 16
  %_public_lhssext104 = zext i32 %_public_multmp103 to i64
  %_public_addtmp105 = add i64 %_public_lhssext104, 8
  %_public_truncbinop106 = trunc i64 %_public_addtmp105 to i32
  %_public_subtmp107 = sub i32 %_public_truncbinop106, 1
  %_public_lhssext108 = zext i32 %_public_subtmp107 to i64
  %_public_ugtetmp109 = icmp uge i64 %_public_lhssext108, 0
  %_public_zexttmp110 = zext i1 %_public_ugtetmp109 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp110)
  %_public_lval111 = load i32, i32* %_public___v14_bindex
  %_public_multmp112 = mul i32 %_public_lval111, 16
  %_public_lhssext113 = zext i32 %_public_multmp112 to i64
  %_public_addtmp114 = add i64 %_public_lhssext113, 8
  %_public_truncbinop115 = trunc i64 %_public_addtmp114 to i32
  %_public_subtmp116 = sub i32 %_public_truncbinop115, 1
  %_public_lval117 = load i32, i32* %_public___m_len
  %_public_icast118 = zext i32 %_public_lval117 to i64
  %_public_lhssext119 = zext i32 %_public_subtmp116 to i64
  %_public_ulttmp120 = icmp ult i64 %_public_lhssext119, %_public_icast118
  %_public_zexttmp121 = zext i1 %_public_ulttmp120 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp121)
  %_public_lval122 = load i32, i32* %_public___v14_bindex
  %_public_multmp123 = mul i32 %_public_lval122, 16
  %_secret_ldedviewptr124 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep125 = getelementptr inbounds i8, i8* %_secret_ldedviewptr124, i32 %_public_multmp123
  %_secret_arrviewdyn126 = alloca i8*
  store i8* %_secret_source_gep125, i8** %_secret_arrviewdyn126
  %_secret_dynarrarg = load i8*, i8** %_secret_arrviewdyn126
  %_secret_calltmp = call i64 @_load64_le(i8* %_secret_dynarrarg)
  store i64 %_secret_calltmp, i64* %_secret___v15_t0
  %_public_lval127 = load i32, i32* %_public___v14_bindex
  %_public_multmp128 = mul i32 %_public_lval127, 16
  %_public_addtmp129 = add i32 %_public_multmp128, 8
  %_public_lhssext130 = zext i32 %_public_addtmp129 to i64
  %_public_addtmp131 = add i64 %_public_lhssext130, 8
  %_public_truncbinop132 = trunc i64 %_public_addtmp131 to i32
  %_public_lval133 = load i32, i32* %_public___v14_bindex
  %_public_multmp134 = mul i32 %_public_lval133, 16
  %_public_addtmp135 = add i32 %_public_multmp134, 8
  %_public_ugttmp136 = icmp ugt i32 %_public_truncbinop132, %_public_addtmp135
  %_public_zexttmp137 = zext i1 %_public_ugttmp136 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp137)
  %_public_lval138 = load i32, i32* %_public___v14_bindex
  %_public_multmp139 = mul i32 %_public_lval138, 16
  %_public_addtmp140 = add i32 %_public_multmp139, 8
  %_public_lhssext141 = zext i32 %_public_addtmp140 to i64
  %_public_ugtetmp142 = icmp uge i64 %_public_lhssext141, 0
  %_public_zexttmp143 = zext i1 %_public_ugtetmp142 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp143)
  %_public_lval144 = load i32, i32* %_public___v14_bindex
  %_public_multmp145 = mul i32 %_public_lval144, 16
  %_public_addtmp146 = add i32 %_public_multmp145, 8
  %_public_lval147 = load i32, i32* %_public___m_len
  %_public_icast148 = zext i32 %_public_lval147 to i64
  %_public_lhssext149 = zext i32 %_public_addtmp146 to i64
  %_public_ulttmp150 = icmp ult i64 %_public_lhssext149, %_public_icast148
  %_public_zexttmp151 = zext i1 %_public_ulttmp150 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp151)
  %_public_lval152 = load i32, i32* %_public___v14_bindex
  %_public_multmp153 = mul i32 %_public_lval152, 16
  %_public_addtmp154 = add i32 %_public_multmp153, 8
  %_public_lhssext155 = zext i32 %_public_addtmp154 to i64
  %_public_addtmp156 = add i64 %_public_lhssext155, 8
  %_public_truncbinop157 = trunc i64 %_public_addtmp156 to i32
  %_public_subtmp158 = sub i32 %_public_truncbinop157, 1
  %_public_lhssext159 = zext i32 %_public_subtmp158 to i64
  %_public_ugtetmp160 = icmp uge i64 %_public_lhssext159, 0
  %_public_zexttmp161 = zext i1 %_public_ugtetmp160 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp161)
  %_public_lval162 = load i32, i32* %_public___v14_bindex
  %_public_multmp163 = mul i32 %_public_lval162, 16
  %_public_addtmp164 = add i32 %_public_multmp163, 8
  %_public_lhssext165 = zext i32 %_public_addtmp164 to i64
  %_public_addtmp166 = add i64 %_public_lhssext165, 8
  %_public_truncbinop167 = trunc i64 %_public_addtmp166 to i32
  %_public_subtmp168 = sub i32 %_public_truncbinop167, 1
  %_public_lval169 = load i32, i32* %_public___m_len
  %_public_icast170 = zext i32 %_public_lval169 to i64
  %_public_lhssext171 = zext i32 %_public_subtmp168 to i64
  %_public_ulttmp172 = icmp ult i64 %_public_lhssext171, %_public_icast170
  %_public_zexttmp173 = zext i1 %_public_ulttmp172 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp173)
  %_public_lval174 = load i32, i32* %_public___v14_bindex
  %_public_multmp175 = mul i32 %_public_lval174, 16
  %_public_addtmp176 = add i32 %_public_multmp175, 8
  %_secret_ldedviewptr177 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep178 = getelementptr inbounds i8, i8* %_secret_ldedviewptr177, i32 %_public_addtmp176
  %_secret_arrviewdyn179 = alloca i8*
  store i8* %_secret_source_gep178, i8** %_secret_arrviewdyn179
  %_public_lval180 = load i32, i32* %_public___v14_bindex
  %_public_multmp181 = mul i32 %_public_lval180, 16
  %_public_addtmp182 = add i32 %_public_multmp181, 8
  %_public_lhssext183 = zext i32 %_public_addtmp182 to i64
  %_public_addtmp184 = add i64 %_public_lhssext183, 8
  %_public_truncbinop185 = trunc i64 %_public_addtmp184 to i32
  %_public_lval186 = load i32, i32* %_public___v14_bindex
  %_public_multmp187 = mul i32 %_public_lval186, 16
  %_public_addtmp188 = add i32 %_public_multmp187, 8
  %_public_ugttmp189 = icmp ugt i32 %_public_truncbinop185, %_public_addtmp188
  %_public_zexttmp190 = zext i1 %_public_ugttmp189 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp190)
  %_public_lval191 = load i32, i32* %_public___v14_bindex
  %_public_multmp192 = mul i32 %_public_lval191, 16
  %_public_addtmp193 = add i32 %_public_multmp192, 8
  %_public_lhssext194 = zext i32 %_public_addtmp193 to i64
  %_public_ugtetmp195 = icmp uge i64 %_public_lhssext194, 0
  %_public_zexttmp196 = zext i1 %_public_ugtetmp195 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp196)
  %_public_lval197 = load i32, i32* %_public___v14_bindex
  %_public_multmp198 = mul i32 %_public_lval197, 16
  %_public_addtmp199 = add i32 %_public_multmp198, 8
  %_public_lval200 = load i32, i32* %_public___m_len
  %_public_icast201 = zext i32 %_public_lval200 to i64
  %_public_lhssext202 = zext i32 %_public_addtmp199 to i64
  %_public_ulttmp203 = icmp ult i64 %_public_lhssext202, %_public_icast201
  %_public_zexttmp204 = zext i1 %_public_ulttmp203 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp204)
  %_public_lval205 = load i32, i32* %_public___v14_bindex
  %_public_multmp206 = mul i32 %_public_lval205, 16
  %_public_addtmp207 = add i32 %_public_multmp206, 8
  %_public_lhssext208 = zext i32 %_public_addtmp207 to i64
  %_public_addtmp209 = add i64 %_public_lhssext208, 8
  %_public_truncbinop210 = trunc i64 %_public_addtmp209 to i32
  %_public_subtmp211 = sub i32 %_public_truncbinop210, 1
  %_public_lhssext212 = zext i32 %_public_subtmp211 to i64
  %_public_ugtetmp213 = icmp uge i64 %_public_lhssext212, 0
  %_public_zexttmp214 = zext i1 %_public_ugtetmp213 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp214)
  %_public_lval215 = load i32, i32* %_public___v14_bindex
  %_public_multmp216 = mul i32 %_public_lval215, 16
  %_public_addtmp217 = add i32 %_public_multmp216, 8
  %_public_lhssext218 = zext i32 %_public_addtmp217 to i64
  %_public_addtmp219 = add i64 %_public_lhssext218, 8
  %_public_truncbinop220 = trunc i64 %_public_addtmp219 to i32
  %_public_subtmp221 = sub i32 %_public_truncbinop220, 1
  %_public_lval222 = load i32, i32* %_public___m_len
  %_public_icast223 = zext i32 %_public_lval222 to i64
  %_public_lhssext224 = zext i32 %_public_subtmp221 to i64
  %_public_ulttmp225 = icmp ult i64 %_public_lhssext224, %_public_icast223
  %_public_zexttmp226 = zext i1 %_public_ulttmp225 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp226)
  %_public_lval227 = load i32, i32* %_public___v14_bindex
  %_public_multmp228 = mul i32 %_public_lval227, 16
  %_public_addtmp229 = add i32 %_public_multmp228, 8
  %_secret_ldedviewptr230 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep231 = getelementptr inbounds i8, i8* %_secret_ldedviewptr230, i32 %_public_addtmp229
  %_secret_arrviewdyn232 = alloca i8*
  store i8* %_secret_source_gep231, i8** %_secret_arrviewdyn232
  %_secret_dynarrarg233 = load i8*, i8** %_secret_arrviewdyn232
  %_secret_calltmp234 = call i64 @_load64_le(i8* %_secret_dynarrarg233)
  store i64 %_secret_calltmp234, i64* %_secret___v16_t1
  %_secret_lval235 = load i64, i64* %_secret___v8_h0
  %_secret_lval236 = load i64, i64* %_secret___v15_t0
  %_public_lval237 = load i64, i64* %_public___v2_mask44
  %_secret_andtmp = and i64 %_secret_lval236, %_public_lval237
  %_secret_addtmp = add i64 %_secret_lval235, %_secret_andtmp
  store i64 %_secret_addtmp, i64* %_secret___v8_h0
  %_secret_lval238 = load i64, i64* %_secret___v9_h1
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval239 = load i64, i64* %_secret___v15_t0
  %_secret_lrshift = lshr i64 %_secret_lval239, 44
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval240 = load i64, i64* %_secret___v16_t1
  %_secret_lshift = shl i64 %_secret_lval240, 20
  %_secret_ortmp = or i64 %_secret_lrshift, %_secret_lshift
  %_public_lval241 = load i64, i64* %_public___v2_mask44
  %_secret_andtmp242 = and i64 %_secret_ortmp, %_public_lval241
  %_secret_addtmp243 = add i64 %_secret_lval238, %_secret_andtmp242
  store i64 %_secret_addtmp243, i64* %_secret___v9_h1
  %_secret_lval244 = load i64, i64* %_secret___v10_h2
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval245 = load i64, i64* %_secret___v16_t1
  %_secret_lrshift246 = lshr i64 %_secret_lval245, 24
  %_public_lval247 = load i64, i64* %_public___v3_mask42
  %_secret_andtmp248 = and i64 %_secret_lrshift246, %_public_lval247
  %_secret_lval249 = load i64, i64* %_secret___v4_hibit
  %_secret_ortmp250 = or i64 %_secret_andtmp248, %_secret_lval249
  %_secret_addtmp251 = add i64 %_secret_lval244, %_secret_ortmp250
  store i64 %_secret_addtmp251, i64* %_secret___v10_h2
  %_secret_lval252 = load i64, i64* %_secret___v8_h0
  %_secret_ucast = zext i64 %_secret_lval252 to i128
  %_secret_lval253 = load i64, i64* %_secret___v5_r0
  %_secret_rhssext = zext i64 %_secret_lval253 to i128
  %_secret_multmp254 = mul i128 %_secret_ucast, %_secret_rhssext
  %_secret_lval255 = load i64, i64* %_secret___v9_h1
  %_secret_ucast256 = zext i64 %_secret_lval255 to i128
  %_secret_lval257 = load i64, i64* %_secret___v12_s2
  %_secret_rhssext258 = zext i64 %_secret_lval257 to i128
  %_secret_multmp259 = mul i128 %_secret_ucast256, %_secret_rhssext258
  %_secret_addtmp260 = add i128 %_secret_multmp254, %_secret_multmp259
  %_secret_lval261 = load i64, i64* %_secret___v10_h2
  %_secret_ucast262 = zext i64 %_secret_lval261 to i128
  %_secret_lval263 = load i64, i64* %_secret___v11_s1
  %_secret_rhssext264 = zext i64 %_secret_lval263 to i128
  %_secret_multmp265 = mul i128 %_secret_ucast262, %_secret_rhssext264
  %_secret_addtmp266 = add i128 %_secret_addtmp260, %_secret_multmp265
  store i128 %_secret_addtmp266, i128* %_secret___v17_d0
  %_secret_lval267 = load i64, i64* %_secret___v8_h0
  %_secret_ucast268 = zext i64 %_secret_lval267 to i128
  %_secret_lval269 = load i64, i64* %_secret___v6_r1
  %_secret_rhssext270 = zext i64 %_secret_lval269 to i128
  %_secret_multmp271 = mul i128 %_secret_ucast268, %_secret_rhssext270
  %_secret_lval272 = load i64, i64* %_secret___v9_h1
  %_secret_ucast273 = zext i64 %_secret_lval272 to i128
  %_secret_lval274 = load i64, i64* %_secret___v5_r0
  %_secret_rhssext275 = zext i64 %_secret_lval274 to i128
  %_secret_multmp276 = mul i128 %_secret_ucast273, %_secret_rhssext275
  %_secret_addtmp277 = add i128 %_secret_multmp271, %_secret_multmp276
  %_secret_lval278 = load i64, i64* %_secret___v10_h2
  %_secret_ucast279 = zext i64 %_secret_lval278 to i128
  %_secret_lval280 = load i64, i64* %_secret___v12_s2
  %_secret_rhssext281 = zext i64 %_secret_lval280 to i128
  %_secret_multmp282 = mul i128 %_secret_ucast279, %_secret_rhssext281
  %_secret_addtmp283 = add i128 %_secret_addtmp277, %_secret_multmp282
  store i128 %_secret_addtmp283, i128* %_secret___v18_d1
  %_secret_lval284 = load i64, i64* %_secret___v8_h0
  %_secret_ucast285 = zext i64 %_secret_lval284 to i128
  %_secret_lval286 = load i64, i64* %_secret___v7_r2
  %_secret_rhssext287 = zext i64 %_secret_lval286 to i128
  %_secret_multmp288 = mul i128 %_secret_ucast285, %_secret_rhssext287
  %_secret_lval289 = load i64, i64* %_secret___v9_h1
  %_secret_ucast290 = zext i64 %_secret_lval289 to i128
  %_secret_lval291 = load i64, i64* %_secret___v6_r1
  %_secret_rhssext292 = zext i64 %_secret_lval291 to i128
  %_secret_multmp293 = mul i128 %_secret_ucast290, %_secret_rhssext292
  %_secret_addtmp294 = add i128 %_secret_multmp288, %_secret_multmp293
  %_secret_lval295 = load i64, i64* %_secret___v10_h2
  %_secret_ucast296 = zext i64 %_secret_lval295 to i128
  %_secret_lval297 = load i64, i64* %_secret___v5_r0
  %_secret_rhssext298 = zext i64 %_secret_lval297 to i128
  %_secret_multmp299 = mul i128 %_secret_ucast296, %_secret_rhssext298
  %_secret_addtmp300 = add i128 %_secret_addtmp294, %_secret_multmp299
  store i128 %_secret_addtmp300, i128* %_secret___v19_d2
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval301 = load i128, i128* %_secret___v17_d0
  %_secret_lrshift302 = lshr i128 %_secret_lval301, 44
  %_secret_ucast303 = trunc i128 %_secret_lrshift302 to i64
  store i64 %_secret_ucast303, i64* %_secret___v20_c
  %_secret_lval304 = load i128, i128* %_secret___v17_d0
  %_public_lval305 = load i64, i64* %_public___v2_mask44
  %_secret_rhssext306 = zext i64 %_public_lval305 to i128
  %_secret_andtmp307 = and i128 %_secret_lval304, %_secret_rhssext306
  %_secret_truncbinop = trunc i128 %_secret_andtmp307 to i64
  store i64 %_secret_truncbinop, i64* %_secret___v8_h0
  %_secret_lval308 = load i128, i128* %_secret___v18_d1
  %_secret_lval309 = load i64, i64* %_secret___v20_c
  %_secret_rhssext310 = zext i64 %_secret_lval309 to i128
  %_secret_addtmp311 = add i128 %_secret_lval308, %_secret_rhssext310
  store i128 %_secret_addtmp311, i128* %_secret___v18_d1
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval312 = load i128, i128* %_secret___v18_d1
  %_secret_lrshift313 = lshr i128 %_secret_lval312, 44
  %_secret_ucast314 = trunc i128 %_secret_lrshift313 to i64
  store i64 %_secret_ucast314, i64* %_secret___v20_c
  %_secret_lval315 = load i128, i128* %_secret___v18_d1
  %_public_lval316 = load i64, i64* %_public___v2_mask44
  %_secret_rhssext317 = zext i64 %_public_lval316 to i128
  %_secret_andtmp318 = and i128 %_secret_lval315, %_secret_rhssext317
  %_secret_truncbinop319 = trunc i128 %_secret_andtmp318 to i64
  store i64 %_secret_truncbinop319, i64* %_secret___v9_h1
  %_secret_lval320 = load i128, i128* %_secret___v19_d2
  %_secret_lval321 = load i64, i64* %_secret___v20_c
  %_secret_rhssext322 = zext i64 %_secret_lval321 to i128
  %_secret_addtmp323 = add i128 %_secret_lval320, %_secret_rhssext322
  store i128 %_secret_addtmp323, i128* %_secret___v19_d2
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval324 = load i128, i128* %_secret___v19_d2
  %_secret_lrshift325 = lshr i128 %_secret_lval324, 42
  %_secret_ucast326 = trunc i128 %_secret_lrshift325 to i64
  store i64 %_secret_ucast326, i64* %_secret___v20_c
  %_secret_lval327 = load i128, i128* %_secret___v19_d2
  %_public_lval328 = load i64, i64* %_public___v3_mask42
  %_secret_rhssext329 = zext i64 %_public_lval328 to i128
  %_secret_andtmp330 = and i128 %_secret_lval327, %_secret_rhssext329
  %_secret_truncbinop331 = trunc i128 %_secret_andtmp330 to i64
  store i64 %_secret_truncbinop331, i64* %_secret___v10_h2
  %_secret_lval332 = load i64, i64* %_secret___v8_h0
  %_secret_lval333 = load i64, i64* %_secret___v20_c
  %_secret_multmp334 = mul i64 %_secret_lval333, 5
  %_secret_addtmp335 = add i64 %_secret_lval332, %_secret_multmp334
  store i64 %_secret_addtmp335, i64* %_secret___v8_h0
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval336 = load i64, i64* %_secret___v8_h0
  %_secret_lrshift337 = lshr i64 %_secret_lval336, 44
  store i64 %_secret_lrshift337, i64* %_secret___v20_c
  %_secret_lval338 = load i64, i64* %_secret___v8_h0
  %_public_lval339 = load i64, i64* %_public___v2_mask44
  %_secret_andtmp340 = and i64 %_secret_lval338, %_public_lval339
  store i64 %_secret_andtmp340, i64* %_secret___v8_h0
  %_secret_lval341 = load i64, i64* %_secret___v9_h1
  %_secret_lval342 = load i64, i64* %_secret___v20_c
  %_secret_addtmp343 = add i64 %_secret_lval341, %_secret_lval342
  store i64 %_secret_addtmp343, i64* %_secret___v9_h1
  br label %branchmerge

elsebranch:                                       ; preds = %entry
  br label %branchmerge

branchmerge:                                      ; preds = %elsebranch, %thenbranch
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_structgep344 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i32 0, i32 1
  %_secret_ptr345 = getelementptr inbounds [3 x i64], [3 x i64]* %_secret_structgep344, i8 0, i8 0
  %_secret_lval346 = load i64, i64* %_secret___v8_h0
  store i64 %_secret_lval346, i64* %_secret_ptr345
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_structgep347 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i32 0, i32 1
  %_secret_ptr348 = getelementptr inbounds [3 x i64], [3 x i64]* %_secret_structgep347, i8 0, i8 1
  %_secret_lval349 = load i64, i64* %_secret___v9_h1
  store i64 %_secret_lval349, i64* %_secret_ptr348
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_structgep350 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i32 0, i32 1
  %_secret_ptr351 = getelementptr inbounds [3 x i64], [3 x i64]* %_secret_structgep350, i8 0, i8 2
  %_secret_lval352 = load i64, i64* %_secret___v10_h2
  store i64 %_secret_lval352, i64* %_secret_ptr351
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
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_ldedviewptr = load i8*, i8** %_secret_arrarg
  %_secret_source_gep = getelementptr inbounds i8, i8* %_secret_ldedviewptr, i8 0
  %_secret_arrviewdyn = alloca i8*
  store i8* %_secret_source_gep, i8** %_secret_arrviewdyn
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_ldedviewptr2 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep3 = getelementptr inbounds i8, i8* %_secret_ldedviewptr2, i8 0
  %_secret_arrviewdyn4 = alloca i8*
  store i8* %_secret_source_gep3, i8** %_secret_arrviewdyn4
  %_secret_dynarrarg = load i8*, i8** %_secret_arrviewdyn4
  %_secret_calltmp = call i64 @_load64_le(i8* %_secret_dynarrarg)
  store i64 %_secret_calltmp, i64* %_secret___v21_t0
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_ldedviewptr5 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep6 = getelementptr inbounds i8, i8* %_secret_ldedviewptr5, i8 8
  %_secret_arrviewdyn7 = alloca i8*
  store i8* %_secret_source_gep6, i8** %_secret_arrviewdyn7
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_ldedviewptr8 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep9 = getelementptr inbounds i8, i8* %_secret_ldedviewptr8, i8 8
  %_secret_arrviewdyn10 = alloca i8*
  store i8* %_secret_source_gep9, i8** %_secret_arrviewdyn10
  %_secret_dynarrarg11 = load i8*, i8** %_secret_arrviewdyn10
  %_secret_calltmp12 = call i64 @_load64_le(i8* %_secret_dynarrarg11)
  store i64 %_secret_calltmp12, i64* %_secret___v22_t1
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_structgep = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i32 0, i32 0
  %_secret_ptr = getelementptr inbounds [3 x i64], [3 x i64]* %_secret_structgep, i8 0, i8 0
  %_secret_lval = load i64, i64* %_secret___v21_t0
  %_secret_andtmp = and i64 %_secret_lval, 17575274610687
  store i64 %_secret_andtmp, i64* %_secret_ptr
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_structgep13 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i32 0, i32 0
  %_secret_ptr14 = getelementptr inbounds [3 x i64], [3 x i64]* %_secret_structgep13, i8 0, i8 1
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval15 = load i64, i64* %_secret___v21_t0
  %_secret_lrshift = lshr i64 %_secret_lval15, 44
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval16 = load i64, i64* %_secret___v22_t1
  %_secret_lshift = shl i64 %_secret_lval16, 20
  %_secret_ortmp = or i64 %_secret_lrshift, %_secret_lshift
  %_secret_andtmp17 = and i64 %_secret_ortmp, 17592181915647
  store i64 %_secret_andtmp17, i64* %_secret_ptr14
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_structgep18 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i32 0, i32 0
  %_secret_ptr19 = getelementptr inbounds [3 x i64], [3 x i64]* %_secret_structgep18, i8 0, i8 2
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval20 = load i64, i64* %_secret___v22_t1
  %_secret_lrshift21 = lshr i64 %_secret_lval20, 24
  %_secret_andtmp22 = and i64 %_secret_lrshift21, 68719475727
  store i64 %_secret_andtmp22, i64* %_secret_ptr19
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_structgep23 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i32 0, i32 1
  %_secret_ptr24 = getelementptr inbounds [3 x i64], [3 x i64]* %_secret_structgep23, i8 0, i8 0
  store i64 0, i64* %_secret_ptr24
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_structgep25 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i32 0, i32 1
  %_secret_ptr26 = getelementptr inbounds [3 x i64], [3 x i64]* %_secret_structgep25, i8 0, i8 1
  store i64 0, i64* %_secret_ptr26
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_structgep27 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i32 0, i32 1
  %_secret_ptr28 = getelementptr inbounds [3 x i64], [3 x i64]* %_secret_structgep27, i8 0, i8 2
  store i64 0, i64* %_secret_ptr28
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_structgep29 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i32 0, i32 2
  %_secret_ptr30 = getelementptr inbounds [2 x i64], [2 x i64]* %_secret_structgep29, i8 0, i8 0
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_ldedviewptr31 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep32 = getelementptr inbounds i8, i8* %_secret_ldedviewptr31, i8 16
  %_secret_arrviewdyn33 = alloca i8*
  store i8* %_secret_source_gep32, i8** %_secret_arrviewdyn33
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_ldedviewptr34 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep35 = getelementptr inbounds i8, i8* %_secret_ldedviewptr34, i8 16
  %_secret_arrviewdyn36 = alloca i8*
  store i8* %_secret_source_gep35, i8** %_secret_arrviewdyn36
  %_secret_dynarrarg37 = load i8*, i8** %_secret_arrviewdyn36
  %_secret_calltmp38 = call i64 @_load64_le(i8* %_secret_dynarrarg37)
  store i64 %_secret_calltmp38, i64* %_secret_ptr30
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_structgep39 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i32 0, i32 2
  %_secret_ptr40 = getelementptr inbounds [2 x i64], [2 x i64]* %_secret_structgep39, i8 0, i8 1
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_ldedviewptr41 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep42 = getelementptr inbounds i8, i8* %_secret_ldedviewptr41, i8 24
  %_secret_arrviewdyn43 = alloca i8*
  store i8* %_secret_source_gep42, i8** %_secret_arrviewdyn43
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
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
  br i1 %_public_branchcompare, label %thenbranch, label %elsebranch66

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
  %_public_calltmp = call i64 @__VERIFIER_nondet_unsigned_long_long()
  store i64 %_public_calltmp, i64* %_public___v25_i
  %_public_lval10 = load i64, i64* %_public___v25_i
  %_public_lval11 = load i64, i64* %_public___v24_want
  %_public_ulttmp = icmp ult i64 %_public_lval10, %_public_lval11
  %_public_branchcompare12 = icmp eq i1 %_public_ulttmp, true
  br i1 %_public_branchcompare12, label %thenbranch13, label %elsebranch46

thenbranch13:                                     ; preds = %branchmerge
  %_public_lval14 = load i64, i64* %_public___v25_i
  %_public_lval15 = load i64, i64* %_public___v25_i
  %_public_addtmp = add i64 %_public_lval15, 1
  %_public_ulttmp16 = icmp ult i64 %_public_lval14, %_public_addtmp
  %_public_zexttmp17 = zext i1 %_public_ulttmp16 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp17)
  %_public_lval18 = load i64, i64* %_public___v25_i
  %_public_ulttmp19 = icmp ult i64 0, %_public_lval18
  %_public_lval20 = load i64, i64* %_public___v25_i
  %_public_eqtmp = icmp eq i64 0, %_public_lval20
  %_public_lortmp = or i1 %_public_ulttmp19, %_public_eqtmp
  %_public_zexttmp21 = zext i1 %_public_lortmp to i32
  call void @__VERIFIER_assume(i32 %_public_zexttmp21)
  %_public_structgep22 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i32 0, i32 3
  %_public_lval23 = load i64, i64* %_public_structgep22
  %_public_lval24 = load i64, i64* %_public___v25_i
  %_public_addtmp25 = add i64 %_public_lval23, %_public_lval24
  %_public_ugtetmp = icmp uge i64 %_public_addtmp25, 0
  %_public_zexttmp26 = zext i1 %_public_ugtetmp to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp26)
  %_public_structgep27 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i32 0, i32 3
  %_public_lval28 = load i64, i64* %_public_structgep27
  %_public_lval29 = load i64, i64* %_public___v25_i
  %_public_addtmp30 = add i64 %_public_lval28, %_public_lval29
  %_public_ulttmp31 = icmp ult i64 %_public_addtmp30, 16
  %_public_zexttmp32 = zext i1 %_public_ulttmp31 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp32)
  %_secret_structgep = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i32 0, i32 4
  %_public_structgep33 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i32 0, i32 3
  %_public_lval34 = load i64, i64* %_public_structgep33
  %_public_lval35 = load i64, i64* %_public___v25_i
  %_public_addtmp36 = add i64 %_public_lval34, %_public_lval35
  %_secret_ptr = getelementptr inbounds [16 x i8], [16 x i8]* %_secret_structgep, i64 0, i64 %_public_addtmp36
  %_public_lval37 = load i64, i64* %_public___v25_i
  %_public_ugtetmp38 = icmp uge i64 %_public_lval37, 0
  %_public_zexttmp39 = zext i1 %_public_ugtetmp38 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp39)
  %_public_lval40 = load i64, i64* %_public___v25_i
  %_public_lval41 = load i32, i32* %_public___m_len
  %_public_icast = zext i32 %_public_lval41 to i64
  %_public_ulttmp42 = icmp ult i64 %_public_lval40, %_public_icast
  %_public_zexttmp43 = zext i1 %_public_ulttmp42 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp43)
  %_public_lval44 = load i64, i64* %_public___v25_i
  %_secret_dyn = load i8*, i8** %_secret_arrarg
  %_secret_ptr45 = getelementptr inbounds i8, i8* %_secret_dyn, i64 %_public_lval44
  %_secret_lval = load i8, i8* %_secret_ptr45
  store i8 %_secret_lval, i8* %_secret_ptr
  br label %branchmerge47

elsebranch46:                                     ; preds = %branchmerge
  br label %branchmerge47

branchmerge47:                                    ; preds = %elsebranch46, %thenbranch13
  %_public_lval48 = load i64, i64* %_public___v23_mindex
  %_public_lval49 = load i64, i64* %_public___v24_want
  %_public_addtmp50 = add i64 %_public_lval48, %_public_lval49
  store i64 %_public_addtmp50, i64* %_public___v23_mindex
  %_public_structgep51 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i32 0, i32 3
  %_public_structgep52 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i32 0, i32 3
  %_public_lval53 = load i64, i64* %_public_structgep52
  %_public_lval54 = load i64, i64* %_public___v24_want
  %_public_addtmp55 = add i64 %_public_lval53, %_public_lval54
  store i64 %_public_addtmp55, i64* %_public_structgep51
  %_public_structgep56 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i32 0, i32 3
  %_public_lval57 = load i64, i64* %_public_structgep56
  %_public_ulttmp58 = icmp ult i64 %_public_lval57, 16
  %_public_branchcompare59 = icmp eq i1 %_public_ulttmp58, true
  br i1 %_public_branchcompare59, label %thenbranch60, label %elsebranch61

thenbranch60:                                     ; preds = %branchmerge47
  ret void

elsebranch61:                                     ; preds = %branchmerge47
  br label %branchmerge62

branchmerge62:                                    ; preds = %elsebranch61
  %_secret_structgep63 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i32 0, i32 4
  %_secret_structgep64 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i32 0, i32 4
  %_secret_arrtoptr = bitcast [16 x i8]* %_secret_structgep64 to i8*
  call void @_poly1305_blocks(%poly1305_state_internal_t* %state, i8* %_secret_arrtoptr, i32 16)
  %_public_structgep65 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i32 0, i32 3
  store i64 0, i64* %_public_structgep65
  br label %branchmerge67

elsebranch66:                                     ; preds = %entry
  br label %branchmerge67

branchmerge67:                                    ; preds = %elsebranch66, %branchmerge62
  %_public_lval68 = load i32, i32* %_public___m_len
  %_public_lval69 = load i64, i64* %_public___v23_mindex
  %_public_lhssext = zext i32 %_public_lval68 to i64
  %_public_subtmp70 = sub i64 %_public_lhssext, %_public_lval69
  %_public_ugtetmp71 = icmp uge i64 %_public_subtmp70, 16
  %_public_branchcompare72 = icmp eq i1 %_public_ugtetmp71, true
  br i1 %_public_branchcompare72, label %thenbranch73, label %elsebranch116

thenbranch73:                                     ; preds = %branchmerge67
  %_public_lval74 = load i32, i32* %_public___m_len
  %_public_lval75 = load i64, i64* %_public___v23_mindex
  %_public_lhssext76 = zext i32 %_public_lval74 to i64
  %_public_subtmp77 = sub i64 %_public_lhssext76, %_public_lval75
  %_public_andtmp = and i64 %_public_subtmp77, 4294967280
  %_public_truncbinop = trunc i64 %_public_andtmp to i32
  %_public_zexttmp78 = zext i32 %_public_truncbinop to i64
  store i64 %_public_zexttmp78, i64* %_public___v26_want
  %_public_lval79 = load i64, i64* %_public___v26_want
  %_public_trunctmp = trunc i64 %_public_lval79 to i32
  store i32 %_public_trunctmp, i32* %_public___v28___v27_len
  %_public_lval80 = load i64, i64* %_public___v23_mindex
  %_public_lval81 = load i32, i32* %_public___v28___v27_len
  %_public_icast82 = zext i32 %_public_lval81 to i64
  %_public_addtmp83 = add i64 %_public_lval80, %_public_icast82
  %_public_lval84 = load i64, i64* %_public___v23_mindex
  %_public_ugttmp85 = icmp ugt i64 %_public_addtmp83, %_public_lval84
  %_public_zexttmp86 = zext i1 %_public_ugttmp85 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp86)
  %_public_lval87 = load i64, i64* %_public___v23_mindex
  %_public_ugtetmp88 = icmp uge i64 %_public_lval87, 0
  %_public_zexttmp89 = zext i1 %_public_ugtetmp88 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp89)
  %_public_lval90 = load i64, i64* %_public___v23_mindex
  %_public_lval91 = load i32, i32* %_public___m_len
  %_public_icast92 = zext i32 %_public_lval91 to i64
  %_public_ulttmp93 = icmp ult i64 %_public_lval90, %_public_icast92
  %_public_zexttmp94 = zext i1 %_public_ulttmp93 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp94)
  %_public_lval95 = load i64, i64* %_public___v23_mindex
  %_public_lval96 = load i32, i32* %_public___v28___v27_len
  %_public_icast97 = zext i32 %_public_lval96 to i64
  %_public_addtmp98 = add i64 %_public_lval95, %_public_icast97
  %_public_subtmp99 = sub i64 %_public_addtmp98, 1
  %_public_ugtetmp100 = icmp uge i64 %_public_subtmp99, 0
  %_public_zexttmp101 = zext i1 %_public_ugtetmp100 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp101)
  %_public_lval102 = load i64, i64* %_public___v23_mindex
  %_public_lval103 = load i32, i32* %_public___v28___v27_len
  %_public_icast104 = zext i32 %_public_lval103 to i64
  %_public_addtmp105 = add i64 %_public_lval102, %_public_icast104
  %_public_subtmp106 = sub i64 %_public_addtmp105, 1
  %_public_lval107 = load i32, i32* %_public___m_len
  %_public_icast108 = zext i32 %_public_lval107 to i64
  %_public_ulttmp109 = icmp ult i64 %_public_subtmp106, %_public_icast108
  %_public_zexttmp110 = zext i1 %_public_ulttmp109 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp110)
  %_public_lval111 = load i64, i64* %_public___v23_mindex
  %_secret_ldedviewptr = load i8*, i8** %_secret_arrarg
  %_secret_source_gep = getelementptr inbounds i8, i8* %_secret_ldedviewptr, i64 %_public_lval111
  %_secret___v29_mview = alloca i8*
  store i8* %_secret_source_gep, i8** %_secret___v29_mview
  %_secret_dynarrarg = load i8*, i8** %_secret___v29_mview
  %_public_lval112 = load i32, i32* %_public___v28___v27_len
  call void @_poly1305_blocks(%poly1305_state_internal_t* %state, i8* %_secret_dynarrarg, i32 %_public_lval112)
  %_public_lval113 = load i64, i64* %_public___v23_mindex
  %_public_lval114 = load i64, i64* %_public___v26_want
  %_public_addtmp115 = add i64 %_public_lval113, %_public_lval114
  store i64 %_public_addtmp115, i64* %_public___v23_mindex
  br label %branchmerge117

elsebranch116:                                    ; preds = %branchmerge67
  br label %branchmerge117

branchmerge117:                                   ; preds = %elsebranch116, %thenbranch73
  %_public_lval118 = load i64, i64* %_public___v23_mindex
  %_public_lval119 = load i32, i32* %_public___m_len
  %_public_rhssext120 = zext i32 %_public_lval119 to i64
  %_public_ulttmp121 = icmp ult i64 %_public_lval118, %_public_rhssext120
  %_public_branchcompare122 = icmp eq i1 %_public_ulttmp121, true
  br i1 %_public_branchcompare122, label %thenbranch123, label %elsebranch188

thenbranch123:                                    ; preds = %branchmerge117
  %_public_lval124 = load i32, i32* %_public___m_len
  %_public_lval125 = load i64, i64* %_public___v23_mindex
  %_public_lhssext126 = zext i32 %_public_lval124 to i64
  %_public_subtmp127 = sub i64 %_public_lhssext126, %_public_lval125
  store i64 %_public_subtmp127, i64* %_public___v30_remaining
  %_public_calltmp128 = call i64 @__VERIFIER_nondet_unsigned_long_long()
  store i64 %_public_calltmp128, i64* %_public___v31_i
  %_public_lval129 = load i64, i64* %_public___v31_i
  %_public_lval130 = load i64, i64* %_public___v30_remaining
  %_public_ulttmp131 = icmp ult i64 %_public_lval129, %_public_lval130
  %_public_branchcompare132 = icmp eq i1 %_public_ulttmp131, true
  br i1 %_public_branchcompare132, label %thenbranch133, label %elsebranch181

thenbranch133:                                    ; preds = %thenbranch123
  %_public_lval134 = load i64, i64* %_public___v31_i
  %_public_lval135 = load i64, i64* %_public___v31_i
  %_public_addtmp136 = add i64 %_public_lval135, 1
  %_public_ulttmp137 = icmp ult i64 %_public_lval134, %_public_addtmp136
  %_public_zexttmp138 = zext i1 %_public_ulttmp137 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp138)
  %_public_lval139 = load i64, i64* %_public___v31_i
  %_public_ulttmp140 = icmp ult i64 0, %_public_lval139
  %_public_lval141 = load i64, i64* %_public___v31_i
  %_public_eqtmp142 = icmp eq i64 0, %_public_lval141
  %_public_lortmp143 = or i1 %_public_ulttmp140, %_public_eqtmp142
  %_public_zexttmp144 = zext i1 %_public_lortmp143 to i32
  call void @__VERIFIER_assume(i32 %_public_zexttmp144)
  %_public_structgep145 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i32 0, i32 3
  %_public_lval146 = load i64, i64* %_public_structgep145
  %_public_lval147 = load i64, i64* %_public___v31_i
  %_public_addtmp148 = add i64 %_public_lval146, %_public_lval147
  %_public_ugtetmp149 = icmp uge i64 %_public_addtmp148, 0
  %_public_zexttmp150 = zext i1 %_public_ugtetmp149 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp150)
  %_public_structgep151 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i32 0, i32 3
  %_public_lval152 = load i64, i64* %_public_structgep151
  %_public_lval153 = load i64, i64* %_public___v31_i
  %_public_addtmp154 = add i64 %_public_lval152, %_public_lval153
  %_public_ulttmp155 = icmp ult i64 %_public_addtmp154, 16
  %_public_zexttmp156 = zext i1 %_public_ulttmp155 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp156)
  %_secret_structgep157 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i32 0, i32 4
  %_public_structgep158 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i32 0, i32 3
  %_public_lval159 = load i64, i64* %_public_structgep158
  %_public_lval160 = load i64, i64* %_public___v31_i
  %_public_addtmp161 = add i64 %_public_lval159, %_public_lval160
  %_secret_ptr162 = getelementptr inbounds [16 x i8], [16 x i8]* %_secret_structgep157, i64 0, i64 %_public_addtmp161
  %_public_lval163 = load i64, i64* %_public___v23_mindex
  %_public_lval164 = load i64, i64* %_public___v31_i
  %_public_addtmp165 = add i64 %_public_lval163, %_public_lval164
  %_public_ugtetmp166 = icmp uge i64 %_public_addtmp165, 0
  %_public_zexttmp167 = zext i1 %_public_ugtetmp166 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp167)
  %_public_lval168 = load i64, i64* %_public___v23_mindex
  %_public_lval169 = load i64, i64* %_public___v31_i
  %_public_addtmp170 = add i64 %_public_lval168, %_public_lval169
  %_public_lval171 = load i32, i32* %_public___m_len
  %_public_icast172 = zext i32 %_public_lval171 to i64
  %_public_ulttmp173 = icmp ult i64 %_public_addtmp170, %_public_icast172
  %_public_zexttmp174 = zext i1 %_public_ulttmp173 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp174)
  %_public_lval175 = load i64, i64* %_public___v23_mindex
  %_public_lval176 = load i64, i64* %_public___v31_i
  %_public_addtmp177 = add i64 %_public_lval175, %_public_lval176
  %_secret_dyn178 = load i8*, i8** %_secret_arrarg
  %_secret_ptr179 = getelementptr inbounds i8, i8* %_secret_dyn178, i64 %_public_addtmp177
  %_secret_lval180 = load i8, i8* %_secret_ptr179
  store i8 %_secret_lval180, i8* %_secret_ptr162
  br label %branchmerge182

elsebranch181:                                    ; preds = %thenbranch123
  br label %branchmerge182

branchmerge182:                                   ; preds = %elsebranch181, %thenbranch133
  %_public_structgep183 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i32 0, i32 3
  %_public_structgep184 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i32 0, i32 3
  %_public_lval185 = load i64, i64* %_public_structgep184
  %_public_lval186 = load i64, i64* %_public___v30_remaining
  %_public_addtmp187 = add i64 %_public_lval185, %_public_lval186
  store i64 %_public_addtmp187, i64* %_public_structgep183
  br label %branchmerge189

elsebranch188:                                    ; preds = %branchmerge117
  br label %branchmerge189

branchmerge189:                                   ; preds = %elsebranch188, %branchmerge182
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
  br i1 %_public_branchcompare, label %thenbranch, label %elsebranch36

thenbranch:                                       ; preds = %entry
  %_public_structgep2 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i32 0, i32 3
  %_public_lval3 = load i64, i64* %_public_structgep2
  store i64 %_public_lval3, i64* %_public___v32_start
  %_public_lval4 = load i64, i64* %_public___v32_start
  %_public_ugtetmp = icmp uge i64 %_public_lval4, 0
  %_public_zexttmp = zext i1 %_public_ugtetmp to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp)
  %_public_lval5 = load i64, i64* %_public___v32_start
  %_public_ulttmp = icmp ult i64 %_public_lval5, 16
  %_public_zexttmp6 = zext i1 %_public_ulttmp to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp6)
  %_secret_structgep = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i32 0, i32 4
  %_public_lval7 = load i64, i64* %_public___v32_start
  %_secret_ptr = getelementptr inbounds [16 x i8], [16 x i8]* %_secret_structgep, i64 0, i64 %_public_lval7
  store i8 1, i8* %_secret_ptr
  %_public_calltmp = call i64 @__VERIFIER_nondet_unsigned_long_long()
  store i64 %_public_calltmp, i64* %_public___v33_i
  %_public_lval8 = load i64, i64* %_public___v33_i
  %_public_ulttmp9 = icmp ult i64 %_public_lval8, 16
  %_public_branchcompare10 = icmp eq i1 %_public_ulttmp9, true
  br i1 %_public_branchcompare10, label %thenbranch11, label %elsebranch

thenbranch11:                                     ; preds = %thenbranch
  %_public_lval12 = load i64, i64* %_public___v33_i
  %_public_lval13 = load i64, i64* %_public___v33_i
  %_public_addtmp = add i64 %_public_lval13, 1
  %_public_ulttmp14 = icmp ult i64 %_public_lval12, %_public_addtmp
  %_public_zexttmp15 = zext i1 %_public_ulttmp14 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp15)
  %_public_lval16 = load i64, i64* %_public___v32_start
  %_public_addtmp17 = add i64 %_public_lval16, 1
  %_public_lval18 = load i64, i64* %_public___v33_i
  %_public_ulttmp19 = icmp ult i64 %_public_addtmp17, %_public_lval18
  %_public_lval20 = load i64, i64* %_public___v32_start
  %_public_addtmp21 = add i64 %_public_lval20, 1
  %_public_lval22 = load i64, i64* %_public___v33_i
  %_public_eqtmp = icmp eq i64 %_public_addtmp21, %_public_lval22
  %_public_lortmp = or i1 %_public_ulttmp19, %_public_eqtmp
  %_public_zexttmp23 = zext i1 %_public_lortmp to i32
  call void @__VERIFIER_assume(i32 %_public_zexttmp23)
  %_public_lval24 = load i64, i64* %_public___v33_i
  %_public_ugtetmp25 = icmp uge i64 %_public_lval24, 0
  %_public_zexttmp26 = zext i1 %_public_ugtetmp25 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp26)
  %_public_lval27 = load i64, i64* %_public___v33_i
  %_public_ulttmp28 = icmp ult i64 %_public_lval27, 16
  %_public_zexttmp29 = zext i1 %_public_ulttmp28 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp29)
  %_secret_structgep30 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i32 0, i32 4
  %_public_lval31 = load i64, i64* %_public___v33_i
  %_secret_ptr32 = getelementptr inbounds [16 x i8], [16 x i8]* %_secret_structgep30, i64 0, i64 %_public_lval31
  store i8 0, i8* %_secret_ptr32
  br label %branchmerge

elsebranch:                                       ; preds = %thenbranch
  br label %branchmerge

branchmerge:                                      ; preds = %elsebranch, %thenbranch11
  %_secret_structgep33 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i32 0, i32 5
  store i8 1, i8* %_secret_structgep33
  %_secret_structgep34 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i32 0, i32 4
  %_secret_structgep35 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i32 0, i32 4
  %_secret_arrtoptr = bitcast [16 x i8]* %_secret_structgep35 to i8*
  call void @_poly1305_blocks(%poly1305_state_internal_t* %state, i8* %_secret_arrtoptr, i32 16)
  br label %branchmerge37

elsebranch36:                                     ; preds = %entry
  br label %branchmerge37

branchmerge37:                                    ; preds = %elsebranch36, %branchmerge
  store i64 17592186044415, i64* %_public___v34_mask44
  store i64 4398046511103, i64* %_public___v35_mask42
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_structgep38 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i32 0, i32 1
  %_secret_ptr39 = getelementptr inbounds [3 x i64], [3 x i64]* %_secret_structgep38, i8 0, i8 0
  %_secret_lval = load i64, i64* %_secret_ptr39
  store i64 %_secret_lval, i64* %_secret___v36_h0
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_structgep40 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i32 0, i32 1
  %_secret_ptr41 = getelementptr inbounds [3 x i64], [3 x i64]* %_secret_structgep40, i8 0, i8 1
  %_secret_lval42 = load i64, i64* %_secret_ptr41
  store i64 %_secret_lval42, i64* %_secret___v37_h1
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_structgep43 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i32 0, i32 1
  %_secret_ptr44 = getelementptr inbounds [3 x i64], [3 x i64]* %_secret_structgep43, i8 0, i8 2
  %_secret_lval45 = load i64, i64* %_secret_ptr44
  store i64 %_secret_lval45, i64* %_secret___v38_h2
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval46 = load i64, i64* %_secret___v37_h1
  %_secret_lrshift = lshr i64 %_secret_lval46, 44
  store i64 %_secret_lrshift, i64* %_secret___v39_c
  %_secret_lval47 = load i64, i64* %_secret___v37_h1
  %_public_lval48 = load i64, i64* %_public___v34_mask44
  %_secret_andtmp = and i64 %_secret_lval47, %_public_lval48
  store i64 %_secret_andtmp, i64* %_secret___v37_h1
  %_secret_lval49 = load i64, i64* %_secret___v38_h2
  %_secret_lval50 = load i64, i64* %_secret___v39_c
  %_secret_addtmp = add i64 %_secret_lval49, %_secret_lval50
  store i64 %_secret_addtmp, i64* %_secret___v38_h2
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval51 = load i64, i64* %_secret___v38_h2
  %_secret_lrshift52 = lshr i64 %_secret_lval51, 42
  store i64 %_secret_lrshift52, i64* %_secret___v39_c
  %_secret_lval53 = load i64, i64* %_secret___v38_h2
  %_public_lval54 = load i64, i64* %_public___v35_mask42
  %_secret_andtmp55 = and i64 %_secret_lval53, %_public_lval54
  store i64 %_secret_andtmp55, i64* %_secret___v38_h2
  %_secret_lval56 = load i64, i64* %_secret___v36_h0
  %_secret_lval57 = load i64, i64* %_secret___v39_c
  %_secret_multmp = mul i64 %_secret_lval57, 5
  %_secret_addtmp58 = add i64 %_secret_lval56, %_secret_multmp
  store i64 %_secret_addtmp58, i64* %_secret___v36_h0
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval59 = load i64, i64* %_secret___v36_h0
  %_secret_lrshift60 = lshr i64 %_secret_lval59, 44
  store i64 %_secret_lrshift60, i64* %_secret___v39_c
  %_secret_lval61 = load i64, i64* %_secret___v36_h0
  %_public_lval62 = load i64, i64* %_public___v34_mask44
  %_secret_andtmp63 = and i64 %_secret_lval61, %_public_lval62
  store i64 %_secret_andtmp63, i64* %_secret___v36_h0
  %_secret_lval64 = load i64, i64* %_secret___v37_h1
  %_secret_lval65 = load i64, i64* %_secret___v39_c
  %_secret_addtmp66 = add i64 %_secret_lval64, %_secret_lval65
  store i64 %_secret_addtmp66, i64* %_secret___v37_h1
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval67 = load i64, i64* %_secret___v37_h1
  %_secret_lrshift68 = lshr i64 %_secret_lval67, 44
  store i64 %_secret_lrshift68, i64* %_secret___v39_c
  %_secret_lval69 = load i64, i64* %_secret___v37_h1
  %_public_lval70 = load i64, i64* %_public___v34_mask44
  %_secret_andtmp71 = and i64 %_secret_lval69, %_public_lval70
  store i64 %_secret_andtmp71, i64* %_secret___v37_h1
  %_secret_lval72 = load i64, i64* %_secret___v38_h2
  %_secret_lval73 = load i64, i64* %_secret___v39_c
  %_secret_addtmp74 = add i64 %_secret_lval72, %_secret_lval73
  store i64 %_secret_addtmp74, i64* %_secret___v38_h2
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval75 = load i64, i64* %_secret___v38_h2
  %_secret_lrshift76 = lshr i64 %_secret_lval75, 42
  store i64 %_secret_lrshift76, i64* %_secret___v39_c
  %_secret_lval77 = load i64, i64* %_secret___v38_h2
  %_public_lval78 = load i64, i64* %_public___v35_mask42
  %_secret_andtmp79 = and i64 %_secret_lval77, %_public_lval78
  store i64 %_secret_andtmp79, i64* %_secret___v38_h2
  %_secret_lval80 = load i64, i64* %_secret___v36_h0
  %_secret_lval81 = load i64, i64* %_secret___v39_c
  %_secret_multmp82 = mul i64 %_secret_lval81, 5
  %_secret_addtmp83 = add i64 %_secret_lval80, %_secret_multmp82
  store i64 %_secret_addtmp83, i64* %_secret___v36_h0
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval84 = load i64, i64* %_secret___v36_h0
  %_secret_lrshift85 = lshr i64 %_secret_lval84, 44
  store i64 %_secret_lrshift85, i64* %_secret___v39_c
  %_secret_lval86 = load i64, i64* %_secret___v36_h0
  %_public_lval87 = load i64, i64* %_public___v34_mask44
  %_secret_andtmp88 = and i64 %_secret_lval86, %_public_lval87
  store i64 %_secret_andtmp88, i64* %_secret___v36_h0
  %_secret_lval89 = load i64, i64* %_secret___v37_h1
  %_secret_lval90 = load i64, i64* %_secret___v39_c
  %_secret_addtmp91 = add i64 %_secret_lval89, %_secret_lval90
  store i64 %_secret_addtmp91, i64* %_secret___v37_h1
  %_secret_lval92 = load i64, i64* %_secret___v36_h0
  %_secret_addtmp93 = add i64 %_secret_lval92, 5
  store i64 %_secret_addtmp93, i64* %_secret___v40_g0
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval94 = load i64, i64* %_secret___v40_g0
  %_secret_lrshift95 = lshr i64 %_secret_lval94, 44
  store i64 %_secret_lrshift95, i64* %_secret___v39_c
  %_secret_lval96 = load i64, i64* %_secret___v40_g0
  %_public_lval97 = load i64, i64* %_public___v34_mask44
  %_secret_andtmp98 = and i64 %_secret_lval96, %_public_lval97
  store i64 %_secret_andtmp98, i64* %_secret___v40_g0
  %_secret_lval99 = load i64, i64* %_secret___v37_h1
  %_secret_lval100 = load i64, i64* %_secret___v39_c
  %_secret_addtmp101 = add i64 %_secret_lval99, %_secret_lval100
  store i64 %_secret_addtmp101, i64* %_secret___v41_g1
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval102 = load i64, i64* %_secret___v41_g1
  %_secret_lrshift103 = lshr i64 %_secret_lval102, 44
  store i64 %_secret_lrshift103, i64* %_secret___v39_c
  %_secret_lval104 = load i64, i64* %_secret___v41_g1
  %_public_lval105 = load i64, i64* %_public___v34_mask44
  %_secret_andtmp106 = and i64 %_secret_lval104, %_public_lval105
  store i64 %_secret_andtmp106, i64* %_secret___v41_g1
  %_secret_lval107 = load i64, i64* %_secret___v38_h2
  %_secret_lval108 = load i64, i64* %_secret___v39_c
  %_secret_addtmp109 = add i64 %_secret_lval107, %_secret_lval108
  %_secret_subtmp = sub i64 %_secret_addtmp109, 4398046511104
  store i64 %_secret_subtmp, i64* %_secret___v42_g2
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval110 = load i64, i64* %_secret___v42_g2
  %_secret_lrshift111 = lshr i64 %_secret_lval110, 63
  %_secret_subtmp112 = sub i64 %_secret_lrshift111, 1
  store i64 %_secret_subtmp112, i64* %_secret___v39_c
  %_secret_lval113 = load i64, i64* %_secret___v40_g0
  %_secret_lval114 = load i64, i64* %_secret___v39_c
  %_secret_andtmp115 = and i64 %_secret_lval113, %_secret_lval114
  store i64 %_secret_andtmp115, i64* %_secret___v40_g0
  %_secret_lval116 = load i64, i64* %_secret___v41_g1
  %_secret_lval117 = load i64, i64* %_secret___v39_c
  %_secret_andtmp118 = and i64 %_secret_lval116, %_secret_lval117
  store i64 %_secret_andtmp118, i64* %_secret___v41_g1
  %_secret_lval119 = load i64, i64* %_secret___v42_g2
  %_secret_lval120 = load i64, i64* %_secret___v39_c
  %_secret_andtmp121 = and i64 %_secret_lval119, %_secret_lval120
  store i64 %_secret_andtmp121, i64* %_secret___v42_g2
  %_secret_lval122 = load i64, i64* %_secret___v39_c
  %_secret_bnottmp = xor i64 %_secret_lval122, -1
  store i64 %_secret_bnottmp, i64* %_secret___v39_c
  %_secret_lval123 = load i64, i64* %_secret___v36_h0
  %_secret_lval124 = load i64, i64* %_secret___v39_c
  %_secret_andtmp125 = and i64 %_secret_lval123, %_secret_lval124
  %_secret_lval126 = load i64, i64* %_secret___v40_g0
  %_secret_ortmp = or i64 %_secret_andtmp125, %_secret_lval126
  store i64 %_secret_ortmp, i64* %_secret___v36_h0
  %_secret_lval127 = load i64, i64* %_secret___v37_h1
  %_secret_lval128 = load i64, i64* %_secret___v39_c
  %_secret_andtmp129 = and i64 %_secret_lval127, %_secret_lval128
  %_secret_lval130 = load i64, i64* %_secret___v41_g1
  %_secret_ortmp131 = or i64 %_secret_andtmp129, %_secret_lval130
  store i64 %_secret_ortmp131, i64* %_secret___v37_h1
  %_secret_lval132 = load i64, i64* %_secret___v38_h2
  %_secret_lval133 = load i64, i64* %_secret___v39_c
  %_secret_andtmp134 = and i64 %_secret_lval132, %_secret_lval133
  %_secret_lval135 = load i64, i64* %_secret___v42_g2
  %_secret_ortmp136 = or i64 %_secret_andtmp134, %_secret_lval135
  store i64 %_secret_ortmp136, i64* %_secret___v38_h2
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_structgep137 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i32 0, i32 2
  %_secret_ptr138 = getelementptr inbounds [2 x i64], [2 x i64]* %_secret_structgep137, i8 0, i8 0
  %_secret_lval139 = load i64, i64* %_secret_ptr138
  store i64 %_secret_lval139, i64* %_secret___v43_t0
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_structgep140 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i32 0, i32 2
  %_secret_ptr141 = getelementptr inbounds [2 x i64], [2 x i64]* %_secret_structgep140, i8 0, i8 1
  %_secret_lval142 = load i64, i64* %_secret_ptr141
  store i64 %_secret_lval142, i64* %_secret___v44_t1
  %_secret_lval143 = load i64, i64* %_secret___v36_h0
  %_secret_lval144 = load i64, i64* %_secret___v43_t0
  %_public_lval145 = load i64, i64* %_public___v34_mask44
  %_secret_andtmp146 = and i64 %_secret_lval144, %_public_lval145
  %_secret_addtmp147 = add i64 %_secret_lval143, %_secret_andtmp146
  store i64 %_secret_addtmp147, i64* %_secret___v36_h0
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval148 = load i64, i64* %_secret___v36_h0
  %_secret_lrshift149 = lshr i64 %_secret_lval148, 44
  store i64 %_secret_lrshift149, i64* %_secret___v39_c
  %_secret_lval150 = load i64, i64* %_secret___v36_h0
  %_public_lval151 = load i64, i64* %_public___v34_mask44
  %_secret_andtmp152 = and i64 %_secret_lval150, %_public_lval151
  store i64 %_secret_andtmp152, i64* %_secret___v36_h0
  %_secret_lval153 = load i64, i64* %_secret___v37_h1
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval154 = load i64, i64* %_secret___v43_t0
  %_secret_lrshift155 = lshr i64 %_secret_lval154, 44
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval156 = load i64, i64* %_secret___v44_t1
  %_secret_lshift = shl i64 %_secret_lval156, 20
  %_secret_ortmp157 = or i64 %_secret_lrshift155, %_secret_lshift
  %_public_lval158 = load i64, i64* %_public___v34_mask44
  %_secret_andtmp159 = and i64 %_secret_ortmp157, %_public_lval158
  %_secret_lval160 = load i64, i64* %_secret___v39_c
  %_secret_addtmp161 = add i64 %_secret_andtmp159, %_secret_lval160
  %_secret_addtmp162 = add i64 %_secret_lval153, %_secret_addtmp161
  store i64 %_secret_addtmp162, i64* %_secret___v37_h1
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval163 = load i64, i64* %_secret___v37_h1
  %_secret_lrshift164 = lshr i64 %_secret_lval163, 44
  store i64 %_secret_lrshift164, i64* %_secret___v39_c
  %_secret_lval165 = load i64, i64* %_secret___v37_h1
  %_public_lval166 = load i64, i64* %_public___v34_mask44
  %_secret_andtmp167 = and i64 %_secret_lval165, %_public_lval166
  store i64 %_secret_andtmp167, i64* %_secret___v37_h1
  %_secret_lval168 = load i64, i64* %_secret___v38_h2
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval169 = load i64, i64* %_secret___v44_t1
  %_secret_lrshift170 = lshr i64 %_secret_lval169, 24
  %_public_lval171 = load i64, i64* %_public___v35_mask42
  %_secret_andtmp172 = and i64 %_secret_lrshift170, %_public_lval171
  %_secret_lval173 = load i64, i64* %_secret___v39_c
  %_secret_addtmp174 = add i64 %_secret_andtmp172, %_secret_lval173
  %_secret_addtmp175 = add i64 %_secret_lval168, %_secret_addtmp174
  store i64 %_secret_addtmp175, i64* %_secret___v38_h2
  %_secret_lval176 = load i64, i64* %_secret___v38_h2
  %_public_lval177 = load i64, i64* %_public___v35_mask42
  %_secret_andtmp178 = and i64 %_secret_lval176, %_public_lval177
  store i64 %_secret_andtmp178, i64* %_secret___v38_h2
  %_secret_lval179 = load i64, i64* %_secret___v36_h0
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval180 = load i64, i64* %_secret___v37_h1
  %_secret_lshift181 = shl i64 %_secret_lval180, 44
  %_secret_ortmp182 = or i64 %_secret_lval179, %_secret_lshift181
  store i64 %_secret_ortmp182, i64* %_secret___v36_h0
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval183 = load i64, i64* %_secret___v37_h1
  %_secret_lrshift184 = lshr i64 %_secret_lval183, 20
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval185 = load i64, i64* %_secret___v38_h2
  %_secret_lshift186 = shl i64 %_secret_lval185, 24
  %_secret_ortmp187 = or i64 %_secret_lrshift184, %_secret_lshift186
  store i64 %_secret_ortmp187, i64* %_secret___v37_h1
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_ldedviewptr = load i8*, i8** %_secret_arrarg
  %_secret_source_gep = getelementptr inbounds i8, i8* %_secret_ldedviewptr, i8 0
  %_secret_arrviewdyn = alloca i8*
  store i8* %_secret_source_gep, i8** %_secret_arrviewdyn
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_ldedviewptr188 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep189 = getelementptr inbounds i8, i8* %_secret_ldedviewptr188, i8 0
  %_secret_arrviewdyn190 = alloca i8*
  store i8* %_secret_source_gep189, i8** %_secret_arrviewdyn190
  %_secret_dynarrarg = load i8*, i8** %_secret_arrviewdyn190
  %_secret_lval191 = load i64, i64* %_secret___v36_h0
  call void @_store64_le(i8* %_secret_dynarrarg, i64 %_secret_lval191)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_ldedviewptr192 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep193 = getelementptr inbounds i8, i8* %_secret_ldedviewptr192, i8 8
  %_secret_arrviewdyn194 = alloca i8*
  store i8* %_secret_source_gep193, i8** %_secret_arrviewdyn194
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_ldedviewptr195 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep196 = getelementptr inbounds i8, i8* %_secret_ldedviewptr195, i8 8
  %_secret_arrviewdyn197 = alloca i8*
  store i8* %_secret_source_gep196, i8** %_secret_arrviewdyn197
  %_secret_dynarrarg198 = load i8*, i8** %_secret_arrviewdyn197
  %_secret_lval199 = load i64, i64* %_secret___v37_h1
  call void @_store64_le(i8* %_secret_dynarrarg198, i64 %_secret_lval199)
  %_secret_structgep200 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i32 0, i32 0
  %_secret_structgep201 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i32 0, i32 0
  %_secret_arrtoptr202 = bitcast [3 x i64]* %_secret_structgep201 to i64*
  call void @_fact_memzero64(i64* %_secret_arrtoptr202, i32 3)
  %_secret_structgep203 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i32 0, i32 1
  %_secret_structgep204 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i32 0, i32 1
  %_secret_arrtoptr205 = bitcast [3 x i64]* %_secret_structgep204 to i64*
  call void @_fact_memzero64(i64* %_secret_arrtoptr205, i32 3)
  %_secret_structgep206 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i32 0, i32 2
  %_secret_structgep207 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i32 0, i32 2
  %_secret_arrtoptr208 = bitcast [2 x i64]* %_secret_structgep207 to i64*
  call void @_fact_memzero64(i64* %_secret_arrtoptr208, i32 2)
  %_public_structgep209 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i32 0, i32 3
  store i64 0, i64* %_public_structgep209
  %_secret_structgep210 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i32 0, i32 4
  %_secret_structgep211 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i32 0, i32 4
  %_secret_arrtoptr212 = bitcast [16 x i8]* %_secret_structgep211 to i8*
  call void @_fact_memzero(i8* %_secret_arrtoptr212, i32 16)
  %_secret_structgep213 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i32 0, i32 5
  store i8 0, i8* %_secret_structgep213
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
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_ldedviewptr = load i8*, i8** %_secret_arrarg4
  %_secret_source_gep = getelementptr inbounds i8, i8* %_secret_ldedviewptr, i8 0
  %_secret_arrviewdyn = alloca i8*
  store i8* %_secret_source_gep, i8** %_secret_arrviewdyn
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_ldedviewptr9 = load i8*, i8** %_secret_arrarg4
  %_secret_source_gep10 = getelementptr inbounds i8, i8* %_secret_ldedviewptr9, i8 0
  %_secret_arrviewdyn11 = alloca i8*
  store i8* %_secret_source_gep10, i8** %_secret_arrviewdyn11
  %_secret_dynarrarg = load i8*, i8** %_secret_arrviewdyn11
  %_secret_calltmp = call i32 @_load32_le(i8* %_secret_dynarrarg)
  store i32 %_secret_calltmp, i32* %_secret___v55_x1
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_ldedviewptr12 = load i8*, i8** %_secret_arrarg4
  %_secret_source_gep13 = getelementptr inbounds i8, i8* %_secret_ldedviewptr12, i8 4
  %_secret_arrviewdyn14 = alloca i8*
  store i8* %_secret_source_gep13, i8** %_secret_arrviewdyn14
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_ldedviewptr15 = load i8*, i8** %_secret_arrarg4
  %_secret_source_gep16 = getelementptr inbounds i8, i8* %_secret_ldedviewptr15, i8 4
  %_secret_arrviewdyn17 = alloca i8*
  store i8* %_secret_source_gep16, i8** %_secret_arrviewdyn17
  %_secret_dynarrarg18 = load i8*, i8** %_secret_arrviewdyn17
  %_secret_calltmp19 = call i32 @_load32_le(i8* %_secret_dynarrarg18)
  store i32 %_secret_calltmp19, i32* %_secret___v56_x2
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_ldedviewptr20 = load i8*, i8** %_secret_arrarg4
  %_secret_source_gep21 = getelementptr inbounds i8, i8* %_secret_ldedviewptr20, i8 8
  %_secret_arrviewdyn22 = alloca i8*
  store i8* %_secret_source_gep21, i8** %_secret_arrviewdyn22
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_ldedviewptr23 = load i8*, i8** %_secret_arrarg4
  %_secret_source_gep24 = getelementptr inbounds i8, i8* %_secret_ldedviewptr23, i8 8
  %_secret_arrviewdyn25 = alloca i8*
  store i8* %_secret_source_gep24, i8** %_secret_arrviewdyn25
  %_secret_dynarrarg26 = load i8*, i8** %_secret_arrviewdyn25
  %_secret_calltmp27 = call i32 @_load32_le(i8* %_secret_dynarrarg26)
  store i32 %_secret_calltmp27, i32* %_secret___v57_x3
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_ldedviewptr28 = load i8*, i8** %_secret_arrarg4
  %_secret_source_gep29 = getelementptr inbounds i8, i8* %_secret_ldedviewptr28, i8 12
  %_secret_arrviewdyn30 = alloca i8*
  store i8* %_secret_source_gep29, i8** %_secret_arrviewdyn30
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_ldedviewptr31 = load i8*, i8** %_secret_arrarg4
  %_secret_source_gep32 = getelementptr inbounds i8, i8* %_secret_ldedviewptr31, i8 12
  %_secret_arrviewdyn33 = alloca i8*
  store i8* %_secret_source_gep32, i8** %_secret_arrviewdyn33
  %_secret_dynarrarg34 = load i8*, i8** %_secret_arrviewdyn33
  %_secret_calltmp35 = call i32 @_load32_le(i8* %_secret_dynarrarg34)
  store i32 %_secret_calltmp35, i32* %_secret___v58_x4
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_ldedviewptr36 = load i8*, i8** %_secret_arrarg4
  %_secret_source_gep37 = getelementptr inbounds i8, i8* %_secret_ldedviewptr36, i8 16
  %_secret_arrviewdyn38 = alloca i8*
  store i8* %_secret_source_gep37, i8** %_secret_arrviewdyn38
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_ldedviewptr39 = load i8*, i8** %_secret_arrarg4
  %_secret_source_gep40 = getelementptr inbounds i8, i8* %_secret_ldedviewptr39, i8 16
  %_secret_arrviewdyn41 = alloca i8*
  store i8* %_secret_source_gep40, i8** %_secret_arrviewdyn41
  %_secret_dynarrarg42 = load i8*, i8** %_secret_arrviewdyn41
  %_secret_calltmp43 = call i32 @_load32_le(i8* %_secret_dynarrarg42)
  store i32 %_secret_calltmp43, i32* %_secret___v59_x11
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_ldedviewptr44 = load i8*, i8** %_secret_arrarg4
  %_secret_source_gep45 = getelementptr inbounds i8, i8* %_secret_ldedviewptr44, i8 20
  %_secret_arrviewdyn46 = alloca i8*
  store i8* %_secret_source_gep45, i8** %_secret_arrviewdyn46
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_ldedviewptr47 = load i8*, i8** %_secret_arrarg4
  %_secret_source_gep48 = getelementptr inbounds i8, i8* %_secret_ldedviewptr47, i8 20
  %_secret_arrviewdyn49 = alloca i8*
  store i8* %_secret_source_gep48, i8** %_secret_arrviewdyn49
  %_secret_dynarrarg50 = load i8*, i8** %_secret_arrviewdyn49
  %_secret_calltmp51 = call i32 @_load32_le(i8* %_secret_dynarrarg50)
  store i32 %_secret_calltmp51, i32* %_secret___v60_x12
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_ldedviewptr52 = load i8*, i8** %_secret_arrarg4
  %_secret_source_gep53 = getelementptr inbounds i8, i8* %_secret_ldedviewptr52, i8 24
  %_secret_arrviewdyn54 = alloca i8*
  store i8* %_secret_source_gep53, i8** %_secret_arrviewdyn54
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_ldedviewptr55 = load i8*, i8** %_secret_arrarg4
  %_secret_source_gep56 = getelementptr inbounds i8, i8* %_secret_ldedviewptr55, i8 24
  %_secret_arrviewdyn57 = alloca i8*
  store i8* %_secret_source_gep56, i8** %_secret_arrviewdyn57
  %_secret_dynarrarg58 = load i8*, i8** %_secret_arrviewdyn57
  %_secret_calltmp59 = call i32 @_load32_le(i8* %_secret_dynarrarg58)
  store i32 %_secret_calltmp59, i32* %_secret___v61_x13
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_ldedviewptr60 = load i8*, i8** %_secret_arrarg4
  %_secret_source_gep61 = getelementptr inbounds i8, i8* %_secret_ldedviewptr60, i8 28
  %_secret_arrviewdyn62 = alloca i8*
  store i8* %_secret_source_gep61, i8** %_secret_arrviewdyn62
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
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
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_ldedviewptr76 = load i8*, i8** %_secret_arrarg2
  %_secret_source_gep77 = getelementptr inbounds i8, i8* %_secret_ldedviewptr76, i8 0
  %_secret_arrviewdyn78 = alloca i8*
  store i8* %_secret_source_gep77, i8** %_secret_arrviewdyn78
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_ldedviewptr79 = load i8*, i8** %_secret_arrarg2
  %_secret_source_gep80 = getelementptr inbounds i8, i8* %_secret_ldedviewptr79, i8 0
  %_secret_arrviewdyn81 = alloca i8*
  store i8* %_secret_source_gep80, i8** %_secret_arrviewdyn81
  %_secret_dynarrarg82 = load i8*, i8** %_secret_arrviewdyn81
  %_secret_calltmp83 = call i32 @_load32_le(i8* %_secret_dynarrarg82)
  store i32 %_secret_calltmp83, i32* %_secret___v71_x6
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_ldedviewptr84 = load i8*, i8** %_secret_arrarg2
  %_secret_source_gep85 = getelementptr inbounds i8, i8* %_secret_ldedviewptr84, i8 4
  %_secret_arrviewdyn86 = alloca i8*
  store i8* %_secret_source_gep85, i8** %_secret_arrviewdyn86
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_ldedviewptr87 = load i8*, i8** %_secret_arrarg2
  %_secret_source_gep88 = getelementptr inbounds i8, i8* %_secret_ldedviewptr87, i8 4
  %_secret_arrviewdyn89 = alloca i8*
  store i8* %_secret_source_gep88, i8** %_secret_arrviewdyn89
  %_secret_dynarrarg90 = load i8*, i8** %_secret_arrviewdyn89
  %_secret_calltmp91 = call i32 @_load32_le(i8* %_secret_dynarrarg90)
  store i32 %_secret_calltmp91, i32* %_secret___v72_x7
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_ldedviewptr92 = load i8*, i8** %_secret_arrarg2
  %_secret_source_gep93 = getelementptr inbounds i8, i8* %_secret_ldedviewptr92, i8 8
  %_secret_arrviewdyn94 = alloca i8*
  store i8* %_secret_source_gep93, i8** %_secret_arrviewdyn94
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_ldedviewptr95 = load i8*, i8** %_secret_arrarg2
  %_secret_source_gep96 = getelementptr inbounds i8, i8* %_secret_ldedviewptr95, i8 8
  %_secret_arrviewdyn97 = alloca i8*
  store i8* %_secret_source_gep96, i8** %_secret_arrviewdyn97
  %_secret_dynarrarg98 = load i8*, i8** %_secret_arrviewdyn97
  %_secret_calltmp99 = call i32 @_load32_le(i8* %_secret_dynarrarg98)
  store i32 %_secret_calltmp99, i32* %_secret___v73_x8
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_ldedviewptr100 = load i8*, i8** %_secret_arrarg2
  %_secret_source_gep101 = getelementptr inbounds i8, i8* %_secret_ldedviewptr100, i8 12
  %_secret_arrviewdyn102 = alloca i8*
  store i8* %_secret_source_gep101, i8** %_secret_arrviewdyn102
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
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
  %_public_calltmp = call i32 @__VERIFIER_nondet_unsigned_int()
  store i32 %_public_calltmp, i32* %_public___v79_i
  %_public_lval = load i32, i32* %_public___v79_i
  %_public_ulttmp = icmp ult i32 %_public_lval, 10
  %_public_branchcompare = icmp eq i1 %_public_ulttmp, true
  br i1 %_public_branchcompare, label %thenbranch, label %elsebranch

thenbranch:                                       ; preds = %entry
  %_public_lval112 = load i32, i32* %_public___v79_i
  %_public_lval113 = load i32, i32* %_public___v79_i
  %_public_addtmp = add i32 %_public_lval113, 1
  %_public_ulttmp114 = icmp ult i32 %_public_lval112, %_public_addtmp
  %_public_zexttmp = zext i1 %_public_ulttmp114 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp)
  %_public_lval115 = load i32, i32* %_public___v79_i
  %_public_ulttmp116 = icmp ult i32 0, %_public_lval115
  %_public_lval117 = load i32, i32* %_public___v79_i
  %_public_eqtmp = icmp eq i32 0, %_public_lval117
  %_public_lortmp = or i1 %_public_ulttmp116, %_public_eqtmp
  %_public_zexttmp118 = zext i1 %_public_lortmp to i32
  call void @__VERIFIER_assume(i32 %_public_zexttmp118)
  %_secret_lval119 = load i32, i32* %_secret___v58_x4
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval120 = load i32, i32* %_secret___v47_x0
  %_secret_lval121 = load i32, i32* %_secret___v60_x12
  %_secret_addtmp = add i32 %_secret_lval120, %_secret_lval121
  %rotltmp = call i32 @__rotl32(i32 %_secret_addtmp, i32 7)
  %_secret_xortmp = xor i32 %_secret_lval119, %rotltmp
  store i32 %_secret_xortmp, i32* %_secret___v58_x4
  %_secret_lval122 = load i32, i32* %_secret___v73_x8
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval123 = load i32, i32* %_secret___v58_x4
  %_secret_lval124 = load i32, i32* %_secret___v47_x0
  %_secret_addtmp125 = add i32 %_secret_lval123, %_secret_lval124
  %rotltmp126 = call i32 @__rotl32(i32 %_secret_addtmp125, i32 9)
  %_secret_xortmp127 = xor i32 %_secret_lval122, %rotltmp126
  store i32 %_secret_xortmp127, i32* %_secret___v73_x8
  %_secret_lval128 = load i32, i32* %_secret___v60_x12
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval129 = load i32, i32* %_secret___v73_x8
  %_secret_lval130 = load i32, i32* %_secret___v58_x4
  %_secret_addtmp131 = add i32 %_secret_lval129, %_secret_lval130
  %rotltmp132 = call i32 @__rotl32(i32 %_secret_addtmp131, i32 13)
  %_secret_xortmp133 = xor i32 %_secret_lval128, %rotltmp132
  store i32 %_secret_xortmp133, i32* %_secret___v60_x12
  %_secret_lval134 = load i32, i32* %_secret___v47_x0
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval135 = load i32, i32* %_secret___v60_x12
  %_secret_lval136 = load i32, i32* %_secret___v73_x8
  %_secret_addtmp137 = add i32 %_secret_lval135, %_secret_lval136
  %rotltmp138 = call i32 @__rotl32(i32 %_secret_addtmp137, i32 18)
  %_secret_xortmp139 = xor i32 %_secret_lval134, %rotltmp138
  store i32 %_secret_xortmp139, i32* %_secret___v47_x0
  %_secret_lval140 = load i32, i32* %_secret___v74_x9
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval141 = load i32, i32* %_secret___v48_x5
  %_secret_lval142 = load i32, i32* %_secret___v55_x1
  %_secret_addtmp143 = add i32 %_secret_lval141, %_secret_lval142
  %rotltmp144 = call i32 @__rotl32(i32 %_secret_addtmp143, i32 7)
  %_secret_xortmp145 = xor i32 %_secret_lval140, %rotltmp144
  store i32 %_secret_xortmp145, i32* %_secret___v74_x9
  %_secret_lval146 = load i32, i32* %_secret___v61_x13
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval147 = load i32, i32* %_secret___v74_x9
  %_secret_lval148 = load i32, i32* %_secret___v48_x5
  %_secret_addtmp149 = add i32 %_secret_lval147, %_secret_lval148
  %rotltmp150 = call i32 @__rotl32(i32 %_secret_addtmp149, i32 9)
  %_secret_xortmp151 = xor i32 %_secret_lval146, %rotltmp150
  store i32 %_secret_xortmp151, i32* %_secret___v61_x13
  %_secret_lval152 = load i32, i32* %_secret___v55_x1
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval153 = load i32, i32* %_secret___v61_x13
  %_secret_lval154 = load i32, i32* %_secret___v74_x9
  %_secret_addtmp155 = add i32 %_secret_lval153, %_secret_lval154
  %rotltmp156 = call i32 @__rotl32(i32 %_secret_addtmp155, i32 13)
  %_secret_xortmp157 = xor i32 %_secret_lval152, %rotltmp156
  store i32 %_secret_xortmp157, i32* %_secret___v55_x1
  %_secret_lval158 = load i32, i32* %_secret___v48_x5
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval159 = load i32, i32* %_secret___v55_x1
  %_secret_lval160 = load i32, i32* %_secret___v61_x13
  %_secret_addtmp161 = add i32 %_secret_lval159, %_secret_lval160
  %rotltmp162 = call i32 @__rotl32(i32 %_secret_addtmp161, i32 18)
  %_secret_xortmp163 = xor i32 %_secret_lval158, %rotltmp162
  store i32 %_secret_xortmp163, i32* %_secret___v48_x5
  %_secret_lval164 = load i32, i32* %_secret___v62_x14
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval165 = load i32, i32* %_secret___v49_x10
  %_secret_lval166 = load i32, i32* %_secret___v71_x6
  %_secret_addtmp167 = add i32 %_secret_lval165, %_secret_lval166
  %rotltmp168 = call i32 @__rotl32(i32 %_secret_addtmp167, i32 7)
  %_secret_xortmp169 = xor i32 %_secret_lval164, %rotltmp168
  store i32 %_secret_xortmp169, i32* %_secret___v62_x14
  %_secret_lval170 = load i32, i32* %_secret___v56_x2
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval171 = load i32, i32* %_secret___v62_x14
  %_secret_lval172 = load i32, i32* %_secret___v49_x10
  %_secret_addtmp173 = add i32 %_secret_lval171, %_secret_lval172
  %rotltmp174 = call i32 @__rotl32(i32 %_secret_addtmp173, i32 9)
  %_secret_xortmp175 = xor i32 %_secret_lval170, %rotltmp174
  store i32 %_secret_xortmp175, i32* %_secret___v56_x2
  %_secret_lval176 = load i32, i32* %_secret___v71_x6
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval177 = load i32, i32* %_secret___v56_x2
  %_secret_lval178 = load i32, i32* %_secret___v62_x14
  %_secret_addtmp179 = add i32 %_secret_lval177, %_secret_lval178
  %rotltmp180 = call i32 @__rotl32(i32 %_secret_addtmp179, i32 13)
  %_secret_xortmp181 = xor i32 %_secret_lval176, %rotltmp180
  store i32 %_secret_xortmp181, i32* %_secret___v71_x6
  %_secret_lval182 = load i32, i32* %_secret___v49_x10
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval183 = load i32, i32* %_secret___v71_x6
  %_secret_lval184 = load i32, i32* %_secret___v56_x2
  %_secret_addtmp185 = add i32 %_secret_lval183, %_secret_lval184
  %rotltmp186 = call i32 @__rotl32(i32 %_secret_addtmp185, i32 18)
  %_secret_xortmp187 = xor i32 %_secret_lval182, %rotltmp186
  store i32 %_secret_xortmp187, i32* %_secret___v49_x10
  %_secret_lval188 = load i32, i32* %_secret___v57_x3
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval189 = load i32, i32* %_secret___v50_x15
  %_secret_lval190 = load i32, i32* %_secret___v59_x11
  %_secret_addtmp191 = add i32 %_secret_lval189, %_secret_lval190
  %rotltmp192 = call i32 @__rotl32(i32 %_secret_addtmp191, i32 7)
  %_secret_xortmp193 = xor i32 %_secret_lval188, %rotltmp192
  store i32 %_secret_xortmp193, i32* %_secret___v57_x3
  %_secret_lval194 = load i32, i32* %_secret___v72_x7
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval195 = load i32, i32* %_secret___v57_x3
  %_secret_lval196 = load i32, i32* %_secret___v50_x15
  %_secret_addtmp197 = add i32 %_secret_lval195, %_secret_lval196
  %rotltmp198 = call i32 @__rotl32(i32 %_secret_addtmp197, i32 9)
  %_secret_xortmp199 = xor i32 %_secret_lval194, %rotltmp198
  store i32 %_secret_xortmp199, i32* %_secret___v72_x7
  %_secret_lval200 = load i32, i32* %_secret___v59_x11
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval201 = load i32, i32* %_secret___v72_x7
  %_secret_lval202 = load i32, i32* %_secret___v57_x3
  %_secret_addtmp203 = add i32 %_secret_lval201, %_secret_lval202
  %rotltmp204 = call i32 @__rotl32(i32 %_secret_addtmp203, i32 13)
  %_secret_xortmp205 = xor i32 %_secret_lval200, %rotltmp204
  store i32 %_secret_xortmp205, i32* %_secret___v59_x11
  %_secret_lval206 = load i32, i32* %_secret___v50_x15
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval207 = load i32, i32* %_secret___v59_x11
  %_secret_lval208 = load i32, i32* %_secret___v72_x7
  %_secret_addtmp209 = add i32 %_secret_lval207, %_secret_lval208
  %rotltmp210 = call i32 @__rotl32(i32 %_secret_addtmp209, i32 18)
  %_secret_xortmp211 = xor i32 %_secret_lval206, %rotltmp210
  store i32 %_secret_xortmp211, i32* %_secret___v50_x15
  %_secret_lval212 = load i32, i32* %_secret___v55_x1
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval213 = load i32, i32* %_secret___v47_x0
  %_secret_lval214 = load i32, i32* %_secret___v57_x3
  %_secret_addtmp215 = add i32 %_secret_lval213, %_secret_lval214
  %rotltmp216 = call i32 @__rotl32(i32 %_secret_addtmp215, i32 7)
  %_secret_xortmp217 = xor i32 %_secret_lval212, %rotltmp216
  store i32 %_secret_xortmp217, i32* %_secret___v55_x1
  %_secret_lval218 = load i32, i32* %_secret___v56_x2
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval219 = load i32, i32* %_secret___v55_x1
  %_secret_lval220 = load i32, i32* %_secret___v47_x0
  %_secret_addtmp221 = add i32 %_secret_lval219, %_secret_lval220
  %rotltmp222 = call i32 @__rotl32(i32 %_secret_addtmp221, i32 9)
  %_secret_xortmp223 = xor i32 %_secret_lval218, %rotltmp222
  store i32 %_secret_xortmp223, i32* %_secret___v56_x2
  %_secret_lval224 = load i32, i32* %_secret___v57_x3
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval225 = load i32, i32* %_secret___v56_x2
  %_secret_lval226 = load i32, i32* %_secret___v55_x1
  %_secret_addtmp227 = add i32 %_secret_lval225, %_secret_lval226
  %rotltmp228 = call i32 @__rotl32(i32 %_secret_addtmp227, i32 13)
  %_secret_xortmp229 = xor i32 %_secret_lval224, %rotltmp228
  store i32 %_secret_xortmp229, i32* %_secret___v57_x3
  %_secret_lval230 = load i32, i32* %_secret___v47_x0
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval231 = load i32, i32* %_secret___v57_x3
  %_secret_lval232 = load i32, i32* %_secret___v56_x2
  %_secret_addtmp233 = add i32 %_secret_lval231, %_secret_lval232
  %rotltmp234 = call i32 @__rotl32(i32 %_secret_addtmp233, i32 18)
  %_secret_xortmp235 = xor i32 %_secret_lval230, %rotltmp234
  store i32 %_secret_xortmp235, i32* %_secret___v47_x0
  %_secret_lval236 = load i32, i32* %_secret___v71_x6
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval237 = load i32, i32* %_secret___v48_x5
  %_secret_lval238 = load i32, i32* %_secret___v58_x4
  %_secret_addtmp239 = add i32 %_secret_lval237, %_secret_lval238
  %rotltmp240 = call i32 @__rotl32(i32 %_secret_addtmp239, i32 7)
  %_secret_xortmp241 = xor i32 %_secret_lval236, %rotltmp240
  store i32 %_secret_xortmp241, i32* %_secret___v71_x6
  %_secret_lval242 = load i32, i32* %_secret___v72_x7
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval243 = load i32, i32* %_secret___v71_x6
  %_secret_lval244 = load i32, i32* %_secret___v48_x5
  %_secret_addtmp245 = add i32 %_secret_lval243, %_secret_lval244
  %rotltmp246 = call i32 @__rotl32(i32 %_secret_addtmp245, i32 9)
  %_secret_xortmp247 = xor i32 %_secret_lval242, %rotltmp246
  store i32 %_secret_xortmp247, i32* %_secret___v72_x7
  %_secret_lval248 = load i32, i32* %_secret___v58_x4
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval249 = load i32, i32* %_secret___v72_x7
  %_secret_lval250 = load i32, i32* %_secret___v71_x6
  %_secret_addtmp251 = add i32 %_secret_lval249, %_secret_lval250
  %rotltmp252 = call i32 @__rotl32(i32 %_secret_addtmp251, i32 13)
  %_secret_xortmp253 = xor i32 %_secret_lval248, %rotltmp252
  store i32 %_secret_xortmp253, i32* %_secret___v58_x4
  %_secret_lval254 = load i32, i32* %_secret___v48_x5
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval255 = load i32, i32* %_secret___v58_x4
  %_secret_lval256 = load i32, i32* %_secret___v72_x7
  %_secret_addtmp257 = add i32 %_secret_lval255, %_secret_lval256
  %rotltmp258 = call i32 @__rotl32(i32 %_secret_addtmp257, i32 18)
  %_secret_xortmp259 = xor i32 %_secret_lval254, %rotltmp258
  store i32 %_secret_xortmp259, i32* %_secret___v48_x5
  %_secret_lval260 = load i32, i32* %_secret___v59_x11
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval261 = load i32, i32* %_secret___v49_x10
  %_secret_lval262 = load i32, i32* %_secret___v74_x9
  %_secret_addtmp263 = add i32 %_secret_lval261, %_secret_lval262
  %rotltmp264 = call i32 @__rotl32(i32 %_secret_addtmp263, i32 7)
  %_secret_xortmp265 = xor i32 %_secret_lval260, %rotltmp264
  store i32 %_secret_xortmp265, i32* %_secret___v59_x11
  %_secret_lval266 = load i32, i32* %_secret___v73_x8
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval267 = load i32, i32* %_secret___v59_x11
  %_secret_lval268 = load i32, i32* %_secret___v49_x10
  %_secret_addtmp269 = add i32 %_secret_lval267, %_secret_lval268
  %rotltmp270 = call i32 @__rotl32(i32 %_secret_addtmp269, i32 9)
  %_secret_xortmp271 = xor i32 %_secret_lval266, %rotltmp270
  store i32 %_secret_xortmp271, i32* %_secret___v73_x8
  %_secret_lval272 = load i32, i32* %_secret___v74_x9
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval273 = load i32, i32* %_secret___v73_x8
  %_secret_lval274 = load i32, i32* %_secret___v59_x11
  %_secret_addtmp275 = add i32 %_secret_lval273, %_secret_lval274
  %rotltmp276 = call i32 @__rotl32(i32 %_secret_addtmp275, i32 13)
  %_secret_xortmp277 = xor i32 %_secret_lval272, %rotltmp276
  store i32 %_secret_xortmp277, i32* %_secret___v74_x9
  %_secret_lval278 = load i32, i32* %_secret___v49_x10
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval279 = load i32, i32* %_secret___v74_x9
  %_secret_lval280 = load i32, i32* %_secret___v73_x8
  %_secret_addtmp281 = add i32 %_secret_lval279, %_secret_lval280
  %rotltmp282 = call i32 @__rotl32(i32 %_secret_addtmp281, i32 18)
  %_secret_xortmp283 = xor i32 %_secret_lval278, %rotltmp282
  store i32 %_secret_xortmp283, i32* %_secret___v49_x10
  %_secret_lval284 = load i32, i32* %_secret___v60_x12
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval285 = load i32, i32* %_secret___v50_x15
  %_secret_lval286 = load i32, i32* %_secret___v62_x14
  %_secret_addtmp287 = add i32 %_secret_lval285, %_secret_lval286
  %rotltmp288 = call i32 @__rotl32(i32 %_secret_addtmp287, i32 7)
  %_secret_xortmp289 = xor i32 %_secret_lval284, %rotltmp288
  store i32 %_secret_xortmp289, i32* %_secret___v60_x12
  %_secret_lval290 = load i32, i32* %_secret___v61_x13
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval291 = load i32, i32* %_secret___v60_x12
  %_secret_lval292 = load i32, i32* %_secret___v50_x15
  %_secret_addtmp293 = add i32 %_secret_lval291, %_secret_lval292
  %rotltmp294 = call i32 @__rotl32(i32 %_secret_addtmp293, i32 9)
  %_secret_xortmp295 = xor i32 %_secret_lval290, %rotltmp294
  store i32 %_secret_xortmp295, i32* %_secret___v61_x13
  %_secret_lval296 = load i32, i32* %_secret___v62_x14
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval297 = load i32, i32* %_secret___v61_x13
  %_secret_lval298 = load i32, i32* %_secret___v60_x12
  %_secret_addtmp299 = add i32 %_secret_lval297, %_secret_lval298
  %rotltmp300 = call i32 @__rotl32(i32 %_secret_addtmp299, i32 13)
  %_secret_xortmp301 = xor i32 %_secret_lval296, %rotltmp300
  store i32 %_secret_xortmp301, i32* %_secret___v62_x14
  %_secret_lval302 = load i32, i32* %_secret___v50_x15
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval303 = load i32, i32* %_secret___v62_x14
  %_secret_lval304 = load i32, i32* %_secret___v61_x13
  %_secret_addtmp305 = add i32 %_secret_lval303, %_secret_lval304
  %rotltmp306 = call i32 @__rotl32(i32 %_secret_addtmp305, i32 18)
  %_secret_xortmp307 = xor i32 %_secret_lval302, %rotltmp306
  store i32 %_secret_xortmp307, i32* %_secret___v50_x15
  br label %branchmerge

elsebranch:                                       ; preds = %entry
  br label %branchmerge

branchmerge:                                      ; preds = %elsebranch, %thenbranch
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_ldedviewptr308 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep309 = getelementptr inbounds i8, i8* %_secret_ldedviewptr308, i8 0
  %_secret_arrviewdyn310 = alloca i8*
  store i8* %_secret_source_gep309, i8** %_secret_arrviewdyn310
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_ldedviewptr311 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep312 = getelementptr inbounds i8, i8* %_secret_ldedviewptr311, i8 0
  %_secret_arrviewdyn313 = alloca i8*
  store i8* %_secret_source_gep312, i8** %_secret_arrviewdyn313
  %_secret_dynarrarg314 = load i8*, i8** %_secret_arrviewdyn313
  %_secret_lval315 = load i32, i32* %_secret___v47_x0
  %_secret_lval316 = load i32, i32* %_secret___v51_j0
  %_secret_addtmp317 = add i32 %_secret_lval315, %_secret_lval316
  call void @_store32_le(i8* %_secret_dynarrarg314, i32 %_secret_addtmp317)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_ldedviewptr318 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep319 = getelementptr inbounds i8, i8* %_secret_ldedviewptr318, i8 4
  %_secret_arrviewdyn320 = alloca i8*
  store i8* %_secret_source_gep319, i8** %_secret_arrviewdyn320
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_ldedviewptr321 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep322 = getelementptr inbounds i8, i8* %_secret_ldedviewptr321, i8 4
  %_secret_arrviewdyn323 = alloca i8*
  store i8* %_secret_source_gep322, i8** %_secret_arrviewdyn323
  %_secret_dynarrarg324 = load i8*, i8** %_secret_arrviewdyn323
  %_secret_lval325 = load i32, i32* %_secret___v55_x1
  %_secret_lval326 = load i32, i32* %_secret___v63_j1
  %_secret_addtmp327 = add i32 %_secret_lval325, %_secret_lval326
  call void @_store32_le(i8* %_secret_dynarrarg324, i32 %_secret_addtmp327)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_ldedviewptr328 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep329 = getelementptr inbounds i8, i8* %_secret_ldedviewptr328, i8 8
  %_secret_arrviewdyn330 = alloca i8*
  store i8* %_secret_source_gep329, i8** %_secret_arrviewdyn330
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_ldedviewptr331 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep332 = getelementptr inbounds i8, i8* %_secret_ldedviewptr331, i8 8
  %_secret_arrviewdyn333 = alloca i8*
  store i8* %_secret_source_gep332, i8** %_secret_arrviewdyn333
  %_secret_dynarrarg334 = load i8*, i8** %_secret_arrviewdyn333
  %_secret_lval335 = load i32, i32* %_secret___v56_x2
  %_secret_lval336 = load i32, i32* %_secret___v64_j2
  %_secret_addtmp337 = add i32 %_secret_lval335, %_secret_lval336
  call void @_store32_le(i8* %_secret_dynarrarg334, i32 %_secret_addtmp337)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_ldedviewptr338 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep339 = getelementptr inbounds i8, i8* %_secret_ldedviewptr338, i8 12
  %_secret_arrviewdyn340 = alloca i8*
  store i8* %_secret_source_gep339, i8** %_secret_arrviewdyn340
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_ldedviewptr341 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep342 = getelementptr inbounds i8, i8* %_secret_ldedviewptr341, i8 12
  %_secret_arrviewdyn343 = alloca i8*
  store i8* %_secret_source_gep342, i8** %_secret_arrviewdyn343
  %_secret_dynarrarg344 = load i8*, i8** %_secret_arrviewdyn343
  %_secret_lval345 = load i32, i32* %_secret___v57_x3
  %_secret_lval346 = load i32, i32* %_secret___v65_j3
  %_secret_addtmp347 = add i32 %_secret_lval345, %_secret_lval346
  call void @_store32_le(i8* %_secret_dynarrarg344, i32 %_secret_addtmp347)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_ldedviewptr348 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep349 = getelementptr inbounds i8, i8* %_secret_ldedviewptr348, i8 16
  %_secret_arrviewdyn350 = alloca i8*
  store i8* %_secret_source_gep349, i8** %_secret_arrviewdyn350
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_ldedviewptr351 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep352 = getelementptr inbounds i8, i8* %_secret_ldedviewptr351, i8 16
  %_secret_arrviewdyn353 = alloca i8*
  store i8* %_secret_source_gep352, i8** %_secret_arrviewdyn353
  %_secret_dynarrarg354 = load i8*, i8** %_secret_arrviewdyn353
  %_secret_lval355 = load i32, i32* %_secret___v58_x4
  %_secret_lval356 = load i32, i32* %_secret___v66_j4
  %_secret_addtmp357 = add i32 %_secret_lval355, %_secret_lval356
  call void @_store32_le(i8* %_secret_dynarrarg354, i32 %_secret_addtmp357)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_ldedviewptr358 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep359 = getelementptr inbounds i8, i8* %_secret_ldedviewptr358, i8 20
  %_secret_arrviewdyn360 = alloca i8*
  store i8* %_secret_source_gep359, i8** %_secret_arrviewdyn360
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_ldedviewptr361 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep362 = getelementptr inbounds i8, i8* %_secret_ldedviewptr361, i8 20
  %_secret_arrviewdyn363 = alloca i8*
  store i8* %_secret_source_gep362, i8** %_secret_arrviewdyn363
  %_secret_dynarrarg364 = load i8*, i8** %_secret_arrviewdyn363
  %_secret_lval365 = load i32, i32* %_secret___v48_x5
  %_secret_lval366 = load i32, i32* %_secret___v52_j5
  %_secret_addtmp367 = add i32 %_secret_lval365, %_secret_lval366
  call void @_store32_le(i8* %_secret_dynarrarg364, i32 %_secret_addtmp367)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_ldedviewptr368 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep369 = getelementptr inbounds i8, i8* %_secret_ldedviewptr368, i8 24
  %_secret_arrviewdyn370 = alloca i8*
  store i8* %_secret_source_gep369, i8** %_secret_arrviewdyn370
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_ldedviewptr371 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep372 = getelementptr inbounds i8, i8* %_secret_ldedviewptr371, i8 24
  %_secret_arrviewdyn373 = alloca i8*
  store i8* %_secret_source_gep372, i8** %_secret_arrviewdyn373
  %_secret_dynarrarg374 = load i8*, i8** %_secret_arrviewdyn373
  %_secret_lval375 = load i32, i32* %_secret___v71_x6
  %_secret_lval376 = load i32, i32* %_secret___v75_j6
  %_secret_addtmp377 = add i32 %_secret_lval375, %_secret_lval376
  call void @_store32_le(i8* %_secret_dynarrarg374, i32 %_secret_addtmp377)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_ldedviewptr378 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep379 = getelementptr inbounds i8, i8* %_secret_ldedviewptr378, i8 28
  %_secret_arrviewdyn380 = alloca i8*
  store i8* %_secret_source_gep379, i8** %_secret_arrviewdyn380
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_ldedviewptr381 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep382 = getelementptr inbounds i8, i8* %_secret_ldedviewptr381, i8 28
  %_secret_arrviewdyn383 = alloca i8*
  store i8* %_secret_source_gep382, i8** %_secret_arrviewdyn383
  %_secret_dynarrarg384 = load i8*, i8** %_secret_arrviewdyn383
  %_secret_lval385 = load i32, i32* %_secret___v72_x7
  %_secret_lval386 = load i32, i32* %_secret___v76_j7
  %_secret_addtmp387 = add i32 %_secret_lval385, %_secret_lval386
  call void @_store32_le(i8* %_secret_dynarrarg384, i32 %_secret_addtmp387)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_ldedviewptr388 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep389 = getelementptr inbounds i8, i8* %_secret_ldedviewptr388, i8 32
  %_secret_arrviewdyn390 = alloca i8*
  store i8* %_secret_source_gep389, i8** %_secret_arrviewdyn390
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_ldedviewptr391 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep392 = getelementptr inbounds i8, i8* %_secret_ldedviewptr391, i8 32
  %_secret_arrviewdyn393 = alloca i8*
  store i8* %_secret_source_gep392, i8** %_secret_arrviewdyn393
  %_secret_dynarrarg394 = load i8*, i8** %_secret_arrviewdyn393
  %_secret_lval395 = load i32, i32* %_secret___v73_x8
  %_secret_lval396 = load i32, i32* %_secret___v77_j8
  %_secret_addtmp397 = add i32 %_secret_lval395, %_secret_lval396
  call void @_store32_le(i8* %_secret_dynarrarg394, i32 %_secret_addtmp397)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_ldedviewptr398 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep399 = getelementptr inbounds i8, i8* %_secret_ldedviewptr398, i8 36
  %_secret_arrviewdyn400 = alloca i8*
  store i8* %_secret_source_gep399, i8** %_secret_arrviewdyn400
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_ldedviewptr401 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep402 = getelementptr inbounds i8, i8* %_secret_ldedviewptr401, i8 36
  %_secret_arrviewdyn403 = alloca i8*
  store i8* %_secret_source_gep402, i8** %_secret_arrviewdyn403
  %_secret_dynarrarg404 = load i8*, i8** %_secret_arrviewdyn403
  %_secret_lval405 = load i32, i32* %_secret___v74_x9
  %_secret_lval406 = load i32, i32* %_secret___v78_j9
  %_secret_addtmp407 = add i32 %_secret_lval405, %_secret_lval406
  call void @_store32_le(i8* %_secret_dynarrarg404, i32 %_secret_addtmp407)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_ldedviewptr408 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep409 = getelementptr inbounds i8, i8* %_secret_ldedviewptr408, i8 40
  %_secret_arrviewdyn410 = alloca i8*
  store i8* %_secret_source_gep409, i8** %_secret_arrviewdyn410
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_ldedviewptr411 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep412 = getelementptr inbounds i8, i8* %_secret_ldedviewptr411, i8 40
  %_secret_arrviewdyn413 = alloca i8*
  store i8* %_secret_source_gep412, i8** %_secret_arrviewdyn413
  %_secret_dynarrarg414 = load i8*, i8** %_secret_arrviewdyn413
  %_secret_lval415 = load i32, i32* %_secret___v49_x10
  %_secret_lval416 = load i32, i32* %_secret___v53_j10
  %_secret_addtmp417 = add i32 %_secret_lval415, %_secret_lval416
  call void @_store32_le(i8* %_secret_dynarrarg414, i32 %_secret_addtmp417)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_ldedviewptr418 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep419 = getelementptr inbounds i8, i8* %_secret_ldedviewptr418, i8 44
  %_secret_arrviewdyn420 = alloca i8*
  store i8* %_secret_source_gep419, i8** %_secret_arrviewdyn420
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_ldedviewptr421 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep422 = getelementptr inbounds i8, i8* %_secret_ldedviewptr421, i8 44
  %_secret_arrviewdyn423 = alloca i8*
  store i8* %_secret_source_gep422, i8** %_secret_arrviewdyn423
  %_secret_dynarrarg424 = load i8*, i8** %_secret_arrviewdyn423
  %_secret_lval425 = load i32, i32* %_secret___v59_x11
  %_secret_lval426 = load i32, i32* %_secret___v67_j11
  %_secret_addtmp427 = add i32 %_secret_lval425, %_secret_lval426
  call void @_store32_le(i8* %_secret_dynarrarg424, i32 %_secret_addtmp427)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_ldedviewptr428 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep429 = getelementptr inbounds i8, i8* %_secret_ldedviewptr428, i8 48
  %_secret_arrviewdyn430 = alloca i8*
  store i8* %_secret_source_gep429, i8** %_secret_arrviewdyn430
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_ldedviewptr431 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep432 = getelementptr inbounds i8, i8* %_secret_ldedviewptr431, i8 48
  %_secret_arrviewdyn433 = alloca i8*
  store i8* %_secret_source_gep432, i8** %_secret_arrviewdyn433
  %_secret_dynarrarg434 = load i8*, i8** %_secret_arrviewdyn433
  %_secret_lval435 = load i32, i32* %_secret___v60_x12
  %_secret_lval436 = load i32, i32* %_secret___v68_j12
  %_secret_addtmp437 = add i32 %_secret_lval435, %_secret_lval436
  call void @_store32_le(i8* %_secret_dynarrarg434, i32 %_secret_addtmp437)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_ldedviewptr438 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep439 = getelementptr inbounds i8, i8* %_secret_ldedviewptr438, i8 52
  %_secret_arrviewdyn440 = alloca i8*
  store i8* %_secret_source_gep439, i8** %_secret_arrviewdyn440
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_ldedviewptr441 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep442 = getelementptr inbounds i8, i8* %_secret_ldedviewptr441, i8 52
  %_secret_arrviewdyn443 = alloca i8*
  store i8* %_secret_source_gep442, i8** %_secret_arrviewdyn443
  %_secret_dynarrarg444 = load i8*, i8** %_secret_arrviewdyn443
  %_secret_lval445 = load i32, i32* %_secret___v61_x13
  %_secret_lval446 = load i32, i32* %_secret___v69_j13
  %_secret_addtmp447 = add i32 %_secret_lval445, %_secret_lval446
  call void @_store32_le(i8* %_secret_dynarrarg444, i32 %_secret_addtmp447)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_ldedviewptr448 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep449 = getelementptr inbounds i8, i8* %_secret_ldedviewptr448, i8 56
  %_secret_arrviewdyn450 = alloca i8*
  store i8* %_secret_source_gep449, i8** %_secret_arrviewdyn450
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_ldedviewptr451 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep452 = getelementptr inbounds i8, i8* %_secret_ldedviewptr451, i8 56
  %_secret_arrviewdyn453 = alloca i8*
  store i8* %_secret_source_gep452, i8** %_secret_arrviewdyn453
  %_secret_dynarrarg454 = load i8*, i8** %_secret_arrviewdyn453
  %_secret_lval455 = load i32, i32* %_secret___v62_x14
  %_secret_lval456 = load i32, i32* %_secret___v70_j14
  %_secret_addtmp457 = add i32 %_secret_lval455, %_secret_lval456
  call void @_store32_le(i8* %_secret_dynarrarg454, i32 %_secret_addtmp457)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_ldedviewptr458 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep459 = getelementptr inbounds i8, i8* %_secret_ldedviewptr458, i8 60
  %_secret_arrviewdyn460 = alloca i8*
  store i8* %_secret_source_gep459, i8** %_secret_arrviewdyn460
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_ldedviewptr461 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep462 = getelementptr inbounds i8, i8* %_secret_ldedviewptr461, i8 60
  %_secret_arrviewdyn463 = alloca i8*
  store i8* %_secret_source_gep462, i8** %_secret_arrviewdyn463
  %_secret_dynarrarg464 = load i8*, i8** %_secret_arrviewdyn463
  %_secret_lval465 = load i32, i32* %_secret___v50_x15
  %_secret_lval466 = load i32, i32* %_secret___v54_j15
  %_secret_addtmp467 = add i32 %_secret_lval465, %_secret_lval466
  call void @_store32_le(i8* %_secret_dynarrarg464, i32 %_secret_addtmp467)
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
  %_public_calltmp = call i32 @__VERIFIER_nondet_unsigned_int()
  store i32 %_public_calltmp, i32* %_public___v82_i
  %_public_lval7 = load i32, i32* %_public___v82_i
  %_public_ulttmp = icmp ult i32 %_public_lval7, 8
  %_public_branchcompare8 = icmp eq i1 %_public_ulttmp, true
  br i1 %_public_branchcompare8, label %thenbranch9, label %elsebranch35

thenbranch9:                                      ; preds = %branchmerge
  %_public_lval10 = load i32, i32* %_public___v82_i
  %_public_lval11 = load i32, i32* %_public___v82_i
  %_public_addtmp = add i32 %_public_lval11, 1
  %_public_ulttmp12 = icmp ult i32 %_public_lval10, %_public_addtmp
  %_public_zexttmp = zext i1 %_public_ulttmp12 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp)
  %_public_lval13 = load i32, i32* %_public___v82_i
  %_public_ulttmp14 = icmp ult i32 0, %_public_lval13
  %_public_lval15 = load i32, i32* %_public___v82_i
  %_public_eqtmp16 = icmp eq i32 0, %_public_lval15
  %_public_lortmp = or i1 %_public_ulttmp14, %_public_eqtmp16
  %_public_zexttmp17 = zext i1 %_public_lortmp to i32
  call void @__VERIFIER_assume(i32 %_public_zexttmp17)
  %_public_lval18 = load i32, i32* %_public___v82_i
  %_public_lhssext = zext i32 %_public_lval18 to i64
  %_public_ugtetmp = icmp uge i64 %_public_lhssext, 0
  %_public_zexttmp19 = zext i1 %_public_ugtetmp to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp19)
  %_public_lval20 = load i32, i32* %_public___v82_i
  %_public_lhssext21 = zext i32 %_public_lval20 to i64
  %_public_ulttmp22 = icmp ult i64 %_public_lhssext21, 16
  %_public_zexttmp23 = zext i1 %_public_ulttmp22 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp23)
  %_public_lval24 = load i32, i32* %_public___v82_i
  %_secret_ptr = getelementptr inbounds [16 x i8], [16 x i8]* %_secret___v81_in, i32 0, i32 %_public_lval24
  %_public_lval25 = load i32, i32* %_public___v82_i
  %_public_lhssext26 = zext i32 %_public_lval25 to i64
  %_public_ugtetmp27 = icmp uge i64 %_public_lhssext26, 0
  %_public_zexttmp28 = zext i1 %_public_ugtetmp27 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp28)
  %_public_lval29 = load i32, i32* %_public___v82_i
  %_public_lhssext30 = zext i32 %_public_lval29 to i64
  %_public_ulttmp31 = icmp ult i64 %_public_lhssext30, 8
  %_public_zexttmp32 = zext i1 %_public_ulttmp31 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp32)
  %_public_lval33 = load i32, i32* %_public___v82_i
  %_public_dyn = load i8*, i8** %_public_arrarg
  %_public_ptr = getelementptr inbounds i8, i8* %_public_dyn, i32 %_public_lval33
  %_public_lval34 = load i8, i8* %_public_ptr
  store i8 %_public_lval34, i8* %_secret_ptr
  br label %branchmerge36

elsebranch35:                                     ; preds = %branchmerge
  br label %branchmerge36

branchmerge36:                                    ; preds = %elsebranch35, %thenbranch9
  call void @__VERIFIER_assert(i32 1)
  %_public_lval37 = load i32, i32* %_public___c_len
  %_public_lrshift = lshr i32 %_public_lval37, 6
  store i32 %_public_lrshift, i32* %_public___v83_ctimes
  %_public_calltmp38 = call i32 @__VERIFIER_nondet_unsigned_int()
  store i32 %_public_calltmp38, i32* %_public___v84_j
  %_public_lval39 = load i32, i32* %_public___v84_j
  %_public_lval40 = load i32, i32* %_public___v83_ctimes
  %_public_ulttmp41 = icmp ult i32 %_public_lval39, %_public_lval40
  %_public_branchcompare42 = icmp eq i1 %_public_ulttmp41, true
  br i1 %_public_branchcompare42, label %thenbranch43, label %elsebranch181

thenbranch43:                                     ; preds = %branchmerge36
  %_public_lval44 = load i32, i32* %_public___v84_j
  %_public_lval45 = load i32, i32* %_public___v84_j
  %_public_addtmp46 = add i32 %_public_lval45, 1
  %_public_ulttmp47 = icmp ult i32 %_public_lval44, %_public_addtmp46
  %_public_zexttmp48 = zext i1 %_public_ulttmp47 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp48)
  %_public_lval49 = load i32, i32* %_public___v84_j
  %_public_ulttmp50 = icmp ult i32 0, %_public_lval49
  %_public_lval51 = load i32, i32* %_public___v84_j
  %_public_eqtmp52 = icmp eq i32 0, %_public_lval51
  %_public_lortmp53 = or i1 %_public_ulttmp50, %_public_eqtmp52
  %_public_zexttmp54 = zext i1 %_public_lortmp53 to i32
  call void @__VERIFIER_assume(i32 %_public_zexttmp54)
  %_public_lval55 = load i32, i32* %_public___v84_j
  %_public_multmp = mul i32 %_public_lval55, 64
  %_public_lhssext56 = zext i32 %_public_multmp to i64
  %_public_addtmp57 = add i64 %_public_lhssext56, 64
  %_public_truncbinop = trunc i64 %_public_addtmp57 to i32
  %_public_lval58 = load i32, i32* %_public___v84_j
  %_public_multmp59 = mul i32 %_public_lval58, 64
  %_public_ugttmp = icmp ugt i32 %_public_truncbinop, %_public_multmp59
  %_public_zexttmp60 = zext i1 %_public_ugttmp to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp60)
  %_public_lval61 = load i32, i32* %_public___v84_j
  %_public_multmp62 = mul i32 %_public_lval61, 64
  %_public_lhssext63 = zext i32 %_public_multmp62 to i64
  %_public_ugtetmp64 = icmp uge i64 %_public_lhssext63, 0
  %_public_zexttmp65 = zext i1 %_public_ugtetmp64 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp65)
  %_public_lval66 = load i32, i32* %_public___v84_j
  %_public_multmp67 = mul i32 %_public_lval66, 64
  %_public_lval68 = load i32, i32* %_public___c_len
  %_public_icast = zext i32 %_public_lval68 to i64
  %_public_lhssext69 = zext i32 %_public_multmp67 to i64
  %_public_ulttmp70 = icmp ult i64 %_public_lhssext69, %_public_icast
  %_public_zexttmp71 = zext i1 %_public_ulttmp70 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp71)
  %_public_lval72 = load i32, i32* %_public___v84_j
  %_public_multmp73 = mul i32 %_public_lval72, 64
  %_public_lhssext74 = zext i32 %_public_multmp73 to i64
  %_public_addtmp75 = add i64 %_public_lhssext74, 64
  %_public_truncbinop76 = trunc i64 %_public_addtmp75 to i32
  %_public_subtmp = sub i32 %_public_truncbinop76, 1
  %_public_lhssext77 = zext i32 %_public_subtmp to i64
  %_public_ugtetmp78 = icmp uge i64 %_public_lhssext77, 0
  %_public_zexttmp79 = zext i1 %_public_ugtetmp78 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp79)
  %_public_lval80 = load i32, i32* %_public___v84_j
  %_public_multmp81 = mul i32 %_public_lval80, 64
  %_public_lhssext82 = zext i32 %_public_multmp81 to i64
  %_public_addtmp83 = add i64 %_public_lhssext82, 64
  %_public_truncbinop84 = trunc i64 %_public_addtmp83 to i32
  %_public_subtmp85 = sub i32 %_public_truncbinop84, 1
  %_public_lval86 = load i32, i32* %_public___c_len
  %_public_icast87 = zext i32 %_public_lval86 to i64
  %_public_lhssext88 = zext i32 %_public_subtmp85 to i64
  %_public_ulttmp89 = icmp ult i64 %_public_lhssext88, %_public_icast87
  %_public_zexttmp90 = zext i1 %_public_ulttmp89 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp90)
  %_public_lval91 = load i32, i32* %_public___v84_j
  %_public_multmp92 = mul i32 %_public_lval91, 64
  %_secret_ldedviewptr = load i8*, i8** %_secret_arrarg
  %_secret_source_gep = getelementptr inbounds i8, i8* %_secret_ldedviewptr, i32 %_public_multmp92
  %_secret_arrviewdyn = alloca i8*
  store i8* %_secret_source_gep, i8** %_secret_arrviewdyn
  %_public_lval93 = load i32, i32* %_public___v84_j
  %_public_multmp94 = mul i32 %_public_lval93, 64
  %_public_lhssext95 = zext i32 %_public_multmp94 to i64
  %_public_addtmp96 = add i64 %_public_lhssext95, 64
  %_public_truncbinop97 = trunc i64 %_public_addtmp96 to i32
  %_public_lval98 = load i32, i32* %_public___v84_j
  %_public_multmp99 = mul i32 %_public_lval98, 64
  %_public_ugttmp100 = icmp ugt i32 %_public_truncbinop97, %_public_multmp99
  %_public_zexttmp101 = zext i1 %_public_ugttmp100 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp101)
  %_public_lval102 = load i32, i32* %_public___v84_j
  %_public_multmp103 = mul i32 %_public_lval102, 64
  %_public_lhssext104 = zext i32 %_public_multmp103 to i64
  %_public_ugtetmp105 = icmp uge i64 %_public_lhssext104, 0
  %_public_zexttmp106 = zext i1 %_public_ugtetmp105 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp106)
  %_public_lval107 = load i32, i32* %_public___v84_j
  %_public_multmp108 = mul i32 %_public_lval107, 64
  %_public_lval109 = load i32, i32* %_public___c_len
  %_public_icast110 = zext i32 %_public_lval109 to i64
  %_public_lhssext111 = zext i32 %_public_multmp108 to i64
  %_public_ulttmp112 = icmp ult i64 %_public_lhssext111, %_public_icast110
  %_public_zexttmp113 = zext i1 %_public_ulttmp112 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp113)
  %_public_lval114 = load i32, i32* %_public___v84_j
  %_public_multmp115 = mul i32 %_public_lval114, 64
  %_public_lhssext116 = zext i32 %_public_multmp115 to i64
  %_public_addtmp117 = add i64 %_public_lhssext116, 64
  %_public_truncbinop118 = trunc i64 %_public_addtmp117 to i32
  %_public_subtmp119 = sub i32 %_public_truncbinop118, 1
  %_public_lhssext120 = zext i32 %_public_subtmp119 to i64
  %_public_ugtetmp121 = icmp uge i64 %_public_lhssext120, 0
  %_public_zexttmp122 = zext i1 %_public_ugtetmp121 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp122)
  %_public_lval123 = load i32, i32* %_public___v84_j
  %_public_multmp124 = mul i32 %_public_lval123, 64
  %_public_lhssext125 = zext i32 %_public_multmp124 to i64
  %_public_addtmp126 = add i64 %_public_lhssext125, 64
  %_public_truncbinop127 = trunc i64 %_public_addtmp126 to i32
  %_public_subtmp128 = sub i32 %_public_truncbinop127, 1
  %_public_lval129 = load i32, i32* %_public___c_len
  %_public_icast130 = zext i32 %_public_lval129 to i64
  %_public_lhssext131 = zext i32 %_public_subtmp128 to i64
  %_public_ulttmp132 = icmp ult i64 %_public_lhssext131, %_public_icast130
  %_public_zexttmp133 = zext i1 %_public_ulttmp132 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp133)
  %_public_lval134 = load i32, i32* %_public___v84_j
  %_public_multmp135 = mul i32 %_public_lval134, 64
  %_secret_ldedviewptr136 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep137 = getelementptr inbounds i8, i8* %_secret_ldedviewptr136, i32 %_public_multmp135
  %_secret_arrviewdyn138 = alloca i8*
  store i8* %_secret_source_gep137, i8** %_secret_arrviewdyn138
  %_secret_dynarrarg = load i8*, i8** %_secret_arrviewdyn138
  %_secret_arrtoptr = bitcast [16 x i8]* %_secret___v81_in to i8*
  %_secret_arrtoptr139 = bitcast [32 x i8]* %_secret___v80_kcopy to i8*
  call void @_crypto_core_salsa20(i8* %_secret_dynarrarg, i8* %_secret_arrtoptr, i8* %_secret_arrtoptr139)
  store i32 1, i32* %_secret___v85_u
  %_public_calltmp140 = call i32 @__VERIFIER_nondet_unsigned_int()
  store i32 %_public_calltmp140, i32* %_public___v86_i
  %_public_lval141 = load i32, i32* %_public___v86_i
  %_public_ulttmp142 = icmp ult i32 %_public_lval141, 16
  %_public_branchcompare143 = icmp eq i1 %_public_ulttmp142, true
  br i1 %_public_branchcompare143, label %thenbranch144, label %elsebranch179

thenbranch144:                                    ; preds = %thenbranch43
  %_public_lval145 = load i32, i32* %_public___v86_i
  %_public_lval146 = load i32, i32* %_public___v86_i
  %_public_addtmp147 = add i32 %_public_lval146, 1
  %_public_ulttmp148 = icmp ult i32 %_public_lval145, %_public_addtmp147
  %_public_zexttmp149 = zext i1 %_public_ulttmp148 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp149)
  %_public_lval150 = load i32, i32* %_public___v86_i
  %_public_ulttmp151 = icmp ult i32 8, %_public_lval150
  %_public_lval152 = load i32, i32* %_public___v86_i
  %_public_eqtmp153 = icmp eq i32 8, %_public_lval152
  %_public_lortmp154 = or i1 %_public_ulttmp151, %_public_eqtmp153
  %_public_zexttmp155 = zext i1 %_public_lortmp154 to i32
  call void @__VERIFIER_assume(i32 %_public_zexttmp155)
  %_secret_lval = load i32, i32* %_secret___v85_u
  %_public_lval156 = load i32, i32* %_public___v86_i
  %_public_lhssext157 = zext i32 %_public_lval156 to i64
  %_public_ugtetmp158 = icmp uge i64 %_public_lhssext157, 0
  %_public_zexttmp159 = zext i1 %_public_ugtetmp158 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp159)
  %_public_lval160 = load i32, i32* %_public___v86_i
  %_public_lhssext161 = zext i32 %_public_lval160 to i64
  %_public_ulttmp162 = icmp ult i64 %_public_lhssext161, 16
  %_public_zexttmp163 = zext i1 %_public_ulttmp162 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp163)
  %_public_lval164 = load i32, i32* %_public___v86_i
  %_secret_ptr165 = getelementptr inbounds [16 x i8], [16 x i8]* %_secret___v81_in, i32 0, i32 %_public_lval164
  %_secret_lval166 = load i8, i8* %_secret_ptr165
  %_secret_rhssext = zext i8 %_secret_lval166 to i32
  %_secret_addtmp = add i32 %_secret_lval, %_secret_rhssext
  store i32 %_secret_addtmp, i32* %_secret___v85_u
  %_public_lval167 = load i32, i32* %_public___v86_i
  %_public_lhssext168 = zext i32 %_public_lval167 to i64
  %_public_ugtetmp169 = icmp uge i64 %_public_lhssext168, 0
  %_public_zexttmp170 = zext i1 %_public_ugtetmp169 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp170)
  %_public_lval171 = load i32, i32* %_public___v86_i
  %_public_lhssext172 = zext i32 %_public_lval171 to i64
  %_public_ulttmp173 = icmp ult i64 %_public_lhssext172, 16
  %_public_zexttmp174 = zext i1 %_public_ulttmp173 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp174)
  %_public_lval175 = load i32, i32* %_public___v86_i
  %_secret_ptr176 = getelementptr inbounds [16 x i8], [16 x i8]* %_secret___v81_in, i32 0, i32 %_public_lval175
  %_secret_lval177 = load i32, i32* %_secret___v85_u
  %_secret_ucast = trunc i32 %_secret_lval177 to i8
  store i8 %_secret_ucast, i8* %_secret_ptr176
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval178 = load i32, i32* %_secret___v85_u
  %_secret_lrshift = lshr i32 %_secret_lval178, 8
  store i32 %_secret_lrshift, i32* %_secret___v85_u
  br label %branchmerge180

elsebranch179:                                    ; preds = %thenbranch43
  br label %branchmerge180

branchmerge180:                                   ; preds = %elsebranch179, %thenbranch144
  br label %branchmerge182

elsebranch181:                                    ; preds = %branchmerge36
  br label %branchmerge182

branchmerge182:                                   ; preds = %elsebranch181, %branchmerge180
  %_secret___v87_block = alloca [64 x i8]
  %_public_lval183 = load i32, i32* %_public___v83_ctimes
  %_public_multmp184 = mul i32 %_public_lval183, 64
  %_public_lval185 = load i32, i32* %_public___c_len
  %_public_ulttmp186 = icmp ult i32 %_public_multmp184, %_public_lval185
  %_public_branchcompare187 = icmp eq i1 %_public_ulttmp186, true
  br i1 %_public_branchcompare187, label %thenbranch188, label %elsebranch291

thenbranch188:                                    ; preds = %branchmerge182
  %_secret_arrtoptr189 = bitcast [64 x i8]* %_secret___v87_block to i8*
  %_secret_arrtoptr190 = bitcast [16 x i8]* %_secret___v81_in to i8*
  %_secret_arrtoptr191 = bitcast [32 x i8]* %_secret___v80_kcopy to i8*
  call void @_crypto_core_salsa20(i8* %_secret_arrtoptr189, i8* %_secret_arrtoptr190, i8* %_secret_arrtoptr191)
  %_public_lval192 = load i32, i32* %_public___c_len
  %_public_lval193 = load i32, i32* %_public___v83_ctimes
  %_public_multmp194 = mul i32 %_public_lval193, 64
  %_public_subtmp195 = sub i32 %_public_lval192, %_public_multmp194
  store i32 %_public_subtmp195, i32* %_public___v88_remain
  %_public_lval196 = load i32, i32* %_public___v88_remain
  store i32 %_public_lval196, i32* %_public___v90___v89_len
  %_public_lval197 = load i32, i32* %_public___v83_ctimes
  %_public_multmp198 = mul i32 %_public_lval197, 64
  %_public_lval199 = load i32, i32* %_public___v90___v89_len
  %_public_icast200 = zext i32 %_public_lval199 to i64
  %_public_lhssext201 = zext i32 %_public_multmp198 to i64
  %_public_addtmp202 = add i64 %_public_lhssext201, %_public_icast200
  %_public_truncbinop203 = trunc i64 %_public_addtmp202 to i32
  %_public_lval204 = load i32, i32* %_public___v83_ctimes
  %_public_multmp205 = mul i32 %_public_lval204, 64
  %_public_ugttmp206 = icmp ugt i32 %_public_truncbinop203, %_public_multmp205
  %_public_zexttmp207 = zext i1 %_public_ugttmp206 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp207)
  %_public_lval208 = load i32, i32* %_public___v83_ctimes
  %_public_multmp209 = mul i32 %_public_lval208, 64
  %_public_lhssext210 = zext i32 %_public_multmp209 to i64
  %_public_ugtetmp211 = icmp uge i64 %_public_lhssext210, 0
  %_public_zexttmp212 = zext i1 %_public_ugtetmp211 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp212)
  %_public_lval213 = load i32, i32* %_public___v83_ctimes
  %_public_multmp214 = mul i32 %_public_lval213, 64
  %_public_lval215 = load i32, i32* %_public___c_len
  %_public_icast216 = zext i32 %_public_lval215 to i64
  %_public_lhssext217 = zext i32 %_public_multmp214 to i64
  %_public_ulttmp218 = icmp ult i64 %_public_lhssext217, %_public_icast216
  %_public_zexttmp219 = zext i1 %_public_ulttmp218 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp219)
  %_public_lval220 = load i32, i32* %_public___v83_ctimes
  %_public_multmp221 = mul i32 %_public_lval220, 64
  %_public_lval222 = load i32, i32* %_public___v90___v89_len
  %_public_icast223 = zext i32 %_public_lval222 to i64
  %_public_lhssext224 = zext i32 %_public_multmp221 to i64
  %_public_addtmp225 = add i64 %_public_lhssext224, %_public_icast223
  %_public_truncbinop226 = trunc i64 %_public_addtmp225 to i32
  %_public_subtmp227 = sub i32 %_public_truncbinop226, 1
  %_public_lhssext228 = zext i32 %_public_subtmp227 to i64
  %_public_ugtetmp229 = icmp uge i64 %_public_lhssext228, 0
  %_public_zexttmp230 = zext i1 %_public_ugtetmp229 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp230)
  %_public_lval231 = load i32, i32* %_public___v83_ctimes
  %_public_multmp232 = mul i32 %_public_lval231, 64
  %_public_lval233 = load i32, i32* %_public___v90___v89_len
  %_public_icast234 = zext i32 %_public_lval233 to i64
  %_public_lhssext235 = zext i32 %_public_multmp232 to i64
  %_public_addtmp236 = add i64 %_public_lhssext235, %_public_icast234
  %_public_truncbinop237 = trunc i64 %_public_addtmp236 to i32
  %_public_subtmp238 = sub i32 %_public_truncbinop237, 1
  %_public_lval239 = load i32, i32* %_public___c_len
  %_public_icast240 = zext i32 %_public_lval239 to i64
  %_public_lhssext241 = zext i32 %_public_subtmp238 to i64
  %_public_ulttmp242 = icmp ult i64 %_public_lhssext241, %_public_icast240
  %_public_zexttmp243 = zext i1 %_public_ulttmp242 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp243)
  %_public_lval244 = load i32, i32* %_public___v83_ctimes
  %_public_multmp245 = mul i32 %_public_lval244, 64
  %_secret_ldedviewptr246 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep247 = getelementptr inbounds i8, i8* %_secret_ldedviewptr246, i32 %_public_multmp245
  %_secret___v91_cview = alloca i8*
  store i8* %_secret_source_gep247, i8** %_secret___v91_cview
  %_public_calltmp249 = call i32 @__VERIFIER_nondet_unsigned_int()
  store i32 %_public_calltmp249, i32* %_public___v92_i
  %_public_lval250 = load i32, i32* %_public___v92_i
  %_public_lval251 = load i32, i32* %_public___v88_remain
  %_public_ulttmp252 = icmp ult i32 %_public_lval250, %_public_lval251
  %_public_branchcompare253 = icmp eq i1 %_public_ulttmp252, true
  br i1 %_public_branchcompare253, label %thenbranch254, label %elsebranch289

thenbranch254:                                    ; preds = %thenbranch188
  %_public_lval255 = load i32, i32* %_public___v92_i
  %_public_lval256 = load i32, i32* %_public___v92_i
  %_public_addtmp257 = add i32 %_public_lval256, 1
  %_public_ulttmp258 = icmp ult i32 %_public_lval255, %_public_addtmp257
  %_public_zexttmp259 = zext i1 %_public_ulttmp258 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp259)
  %_public_lval260 = load i32, i32* %_public___v92_i
  %_public_ulttmp261 = icmp ult i32 0, %_public_lval260
  %_public_lval262 = load i32, i32* %_public___v92_i
  %_public_eqtmp263 = icmp eq i32 0, %_public_lval262
  %_public_lortmp264 = or i1 %_public_ulttmp261, %_public_eqtmp263
  %_public_zexttmp265 = zext i1 %_public_lortmp264 to i32
  call void @__VERIFIER_assume(i32 %_public_zexttmp265)
  %_public_lval266 = load i32, i32* %_public___v92_i
  %_public_lhssext267 = zext i32 %_public_lval266 to i64
  %_public_ugtetmp268 = icmp uge i64 %_public_lhssext267, 0
  %_public_zexttmp269 = zext i1 %_public_ugtetmp268 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp269)
  %_public_lval270 = load i32, i32* %_public___v92_i
  %_public_lval271 = load i32, i32* %_public___v90___v89_len
  %_public_icast272 = zext i32 %_public_lval271 to i64
  %_public_lhssext273 = zext i32 %_public_lval270 to i64
  %_public_ulttmp274 = icmp ult i64 %_public_lhssext273, %_public_icast272
  %_public_zexttmp275 = zext i1 %_public_ulttmp274 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp275)
  %_public_lval276 = load i32, i32* %_public___v92_i
  %_secret_dyn = load i8*, i8** %_secret___v91_cview
  %_secret_ptr277 = getelementptr inbounds i8, i8* %_secret_dyn, i32 %_public_lval276
  %_public_lval278 = load i32, i32* %_public___v92_i
  %_public_lhssext279 = zext i32 %_public_lval278 to i64
  %_public_ugtetmp280 = icmp uge i64 %_public_lhssext279, 0
  %_public_zexttmp281 = zext i1 %_public_ugtetmp280 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp281)
  %_public_lval282 = load i32, i32* %_public___v92_i
  %_public_lhssext283 = zext i32 %_public_lval282 to i64
  %_public_ulttmp284 = icmp ult i64 %_public_lhssext283, 64
  %_public_zexttmp285 = zext i1 %_public_ulttmp284 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp285)
  %_public_lval286 = load i32, i32* %_public___v92_i
  %_secret_ptr287 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret___v87_block, i32 0, i32 %_public_lval286
  %_secret_lval288 = load i8, i8* %_secret_ptr287
  store i8 %_secret_lval288, i8* %_secret_ptr277
  br label %branchmerge290

elsebranch289:                                    ; preds = %thenbranch188
  br label %branchmerge290

branchmerge290:                                   ; preds = %elsebranch289, %thenbranch254
  br label %branchmerge292

elsebranch291:                                    ; preds = %branchmerge182
  br label %branchmerge292

branchmerge292:                                   ; preds = %elsebranch291, %branchmerge290
  %_secret_arrtoptr293 = bitcast [64 x i8]* %_secret___v87_block to i8*
  call void @_fact_memzero(i8* %_secret_arrtoptr293, i32 64)
  %_secret_arrtoptr294 = bitcast [32 x i8]* %_secret___v80_kcopy to i8*
  call void @_fact_memzero(i8* %_secret_arrtoptr294, i32 32)
  store i32 0, i32* %_public___rval
  %_public_lval295 = load i32, i32* %_public___rval
  ret i32 %_public_lval295
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
  %_public_calltmp = call i32 @__VERIFIER_nondet_unsigned_int()
  store i32 %_public_calltmp, i32* %_public___v96_i
  %_public_lval13 = load i32, i32* %_public___v96_i
  %_public_ulttmp = icmp ult i32 %_public_lval13, 8
  %_public_branchcompare14 = icmp eq i1 %_public_ulttmp, true
  br i1 %_public_branchcompare14, label %thenbranch15, label %elsebranch41

thenbranch15:                                     ; preds = %branchmerge
  %_public_lval16 = load i32, i32* %_public___v96_i
  %_public_lval17 = load i32, i32* %_public___v96_i
  %_public_addtmp = add i32 %_public_lval17, 1
  %_public_ulttmp18 = icmp ult i32 %_public_lval16, %_public_addtmp
  %_public_zexttmp = zext i1 %_public_ulttmp18 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp)
  %_public_lval19 = load i32, i32* %_public___v96_i
  %_public_ulttmp20 = icmp ult i32 0, %_public_lval19
  %_public_lval21 = load i32, i32* %_public___v96_i
  %_public_eqtmp22 = icmp eq i32 0, %_public_lval21
  %_public_lortmp = or i1 %_public_ulttmp20, %_public_eqtmp22
  %_public_zexttmp23 = zext i1 %_public_lortmp to i32
  call void @__VERIFIER_assume(i32 %_public_zexttmp23)
  %_public_lval24 = load i32, i32* %_public___v96_i
  %_public_lhssext = zext i32 %_public_lval24 to i64
  %_public_ugtetmp = icmp uge i64 %_public_lhssext, 0
  %_public_zexttmp25 = zext i1 %_public_ugtetmp to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp25)
  %_public_lval26 = load i32, i32* %_public___v96_i
  %_public_lhssext27 = zext i32 %_public_lval26 to i64
  %_public_ulttmp28 = icmp ult i64 %_public_lhssext27, 16
  %_public_zexttmp29 = zext i1 %_public_ulttmp28 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp29)
  %_public_lval30 = load i32, i32* %_public___v96_i
  %_secret_ptr = getelementptr inbounds [16 x i8], [16 x i8]* %_secret___v95_in, i32 0, i32 %_public_lval30
  %_public_lval31 = load i32, i32* %_public___v96_i
  %_public_lhssext32 = zext i32 %_public_lval31 to i64
  %_public_ugtetmp33 = icmp uge i64 %_public_lhssext32, 0
  %_public_zexttmp34 = zext i1 %_public_ugtetmp33 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp34)
  %_public_lval35 = load i32, i32* %_public___v96_i
  %_public_lhssext36 = zext i32 %_public_lval35 to i64
  %_public_ulttmp37 = icmp ult i64 %_public_lhssext36, 8
  %_public_zexttmp38 = zext i1 %_public_ulttmp37 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp38)
  %_public_lval39 = load i32, i32* %_public___v96_i
  %_secret_dyn = load i8*, i8** %_secret_arrarg6
  %_secret_ptr40 = getelementptr inbounds i8, i8* %_secret_dyn, i32 %_public_lval39
  %_secret_lval = load i8, i8* %_secret_ptr40
  store i8 %_secret_lval, i8* %_secret_ptr
  br label %branchmerge42

elsebranch41:                                     ; preds = %branchmerge
  br label %branchmerge42

branchmerge42:                                    ; preds = %elsebranch41, %thenbranch15
  %_public_calltmp43 = call i32 @__VERIFIER_nondet_unsigned_int()
  store i32 %_public_calltmp43, i32* %_public___v97_i
  %_public_lval44 = load i32, i32* %_public___v97_i
  %_public_ulttmp45 = icmp ult i32 %_public_lval44, 16
  %_public_branchcompare46 = icmp eq i1 %_public_ulttmp45, true
  br i1 %_public_branchcompare46, label %thenbranch47, label %elsebranch71

thenbranch47:                                     ; preds = %branchmerge42
  %_public_lval48 = load i32, i32* %_public___v97_i
  %_public_lval49 = load i32, i32* %_public___v97_i
  %_public_addtmp50 = add i32 %_public_lval49, 1
  %_public_ulttmp51 = icmp ult i32 %_public_lval48, %_public_addtmp50
  %_public_zexttmp52 = zext i1 %_public_ulttmp51 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp52)
  %_public_lval53 = load i32, i32* %_public___v97_i
  %_public_ulttmp54 = icmp ult i32 8, %_public_lval53
  %_public_lval55 = load i32, i32* %_public___v97_i
  %_public_eqtmp56 = icmp eq i32 8, %_public_lval55
  %_public_lortmp57 = or i1 %_public_ulttmp54, %_public_eqtmp56
  %_public_zexttmp58 = zext i1 %_public_lortmp57 to i32
  call void @__VERIFIER_assume(i32 %_public_zexttmp58)
  %_public_lval59 = load i32, i32* %_public___v97_i
  %_public_lhssext60 = zext i32 %_public_lval59 to i64
  %_public_ugtetmp61 = icmp uge i64 %_public_lhssext60, 0
  %_public_zexttmp62 = zext i1 %_public_ugtetmp61 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp62)
  %_public_lval63 = load i32, i32* %_public___v97_i
  %_public_lhssext64 = zext i32 %_public_lval63 to i64
  %_public_ulttmp65 = icmp ult i64 %_public_lhssext64, 16
  %_public_zexttmp66 = zext i1 %_public_ulttmp65 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp66)
  %_public_lval67 = load i32, i32* %_public___v97_i
  %_secret_ptr68 = getelementptr inbounds [16 x i8], [16 x i8]* %_secret___v95_in, i32 0, i32 %_public_lval67
  %_public_lval69 = load i64, i64* %_public___v93_ic
  %_public_andtmp = and i64 %_public_lval69, 255
  %_public_truncbinop = trunc i64 %_public_andtmp to i8
  store i8 %_public_truncbinop, i8* %_secret_ptr68
  call void @__VERIFIER_assert(i32 1)
  %_public_lval70 = load i64, i64* %_public___v93_ic
  %_public_lrshift = lshr i64 %_public_lval70, 8
  store i64 %_public_lrshift, i64* %_public___v93_ic
  br label %branchmerge72

elsebranch71:                                     ; preds = %branchmerge42
  br label %branchmerge72

branchmerge72:                                    ; preds = %elsebranch71, %thenbranch47
  call void @__VERIFIER_assert(i32 1)
  %_public_lval73 = load i32, i32* %_public___m_len
  %_public_lrshift74 = lshr i32 %_public_lval73, 6
  store i32 %_public_lrshift74, i32* %_public___v98_mtimes
  %_secret___v99_block = alloca [64 x i8]
  %_public_calltmp75 = call i32 @__VERIFIER_nondet_unsigned_int()
  store i32 %_public_calltmp75, i32* %_public___v100_j
  %_public_lval76 = load i32, i32* %_public___v100_j
  %_public_lval77 = load i32, i32* %_public___v98_mtimes
  %_public_ulttmp78 = icmp ult i32 %_public_lval76, %_public_lval77
  %_public_branchcompare79 = icmp eq i1 %_public_ulttmp78, true
  br i1 %_public_branchcompare79, label %thenbranch80, label %elsebranch272

thenbranch80:                                     ; preds = %branchmerge72
  %_public_lval81 = load i32, i32* %_public___v100_j
  %_public_lval82 = load i32, i32* %_public___v100_j
  %_public_addtmp83 = add i32 %_public_lval82, 1
  %_public_ulttmp84 = icmp ult i32 %_public_lval81, %_public_addtmp83
  %_public_zexttmp85 = zext i1 %_public_ulttmp84 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp85)
  %_public_lval86 = load i32, i32* %_public___v100_j
  %_public_ulttmp87 = icmp ult i32 0, %_public_lval86
  %_public_lval88 = load i32, i32* %_public___v100_j
  %_public_eqtmp89 = icmp eq i32 0, %_public_lval88
  %_public_lortmp90 = or i1 %_public_ulttmp87, %_public_eqtmp89
  %_public_zexttmp91 = zext i1 %_public_lortmp90 to i32
  call void @__VERIFIER_assume(i32 %_public_zexttmp91)
  %_secret_arrtoptr = bitcast [64 x i8]* %_secret___v99_block to i8*
  %_secret_arrtoptr92 = bitcast [16 x i8]* %_secret___v95_in to i8*
  %_secret_arrtoptr93 = bitcast [32 x i8]* %_secret___v94_kcopy to i8*
  call void @_crypto_core_salsa20(i8* %_secret_arrtoptr, i8* %_secret_arrtoptr92, i8* %_secret_arrtoptr93)
  %_public_lval94 = load i32, i32* %_public___v100_j
  %_public_multmp = mul i32 %_public_lval94, 64
  %_public_lhssext95 = zext i32 %_public_multmp to i64
  %_public_addtmp96 = add i64 %_public_lhssext95, 64
  %_public_truncbinop97 = trunc i64 %_public_addtmp96 to i32
  %_public_lval98 = load i32, i32* %_public___v100_j
  %_public_multmp99 = mul i32 %_public_lval98, 64
  %_public_ugttmp = icmp ugt i32 %_public_truncbinop97, %_public_multmp99
  %_public_zexttmp100 = zext i1 %_public_ugttmp to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp100)
  %_public_lval101 = load i32, i32* %_public___v100_j
  %_public_multmp102 = mul i32 %_public_lval101, 64
  %_public_lhssext103 = zext i32 %_public_multmp102 to i64
  %_public_ugtetmp104 = icmp uge i64 %_public_lhssext103, 0
  %_public_zexttmp105 = zext i1 %_public_ugtetmp104 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp105)
  %_public_lval106 = load i32, i32* %_public___v100_j
  %_public_multmp107 = mul i32 %_public_lval106, 64
  %_public_lval108 = load i32, i32* %_public___c_len
  %_public_icast = zext i32 %_public_lval108 to i64
  %_public_lhssext109 = zext i32 %_public_multmp107 to i64
  %_public_ulttmp110 = icmp ult i64 %_public_lhssext109, %_public_icast
  %_public_zexttmp111 = zext i1 %_public_ulttmp110 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp111)
  %_public_lval112 = load i32, i32* %_public___v100_j
  %_public_multmp113 = mul i32 %_public_lval112, 64
  %_public_lhssext114 = zext i32 %_public_multmp113 to i64
  %_public_addtmp115 = add i64 %_public_lhssext114, 64
  %_public_truncbinop116 = trunc i64 %_public_addtmp115 to i32
  %_public_subtmp = sub i32 %_public_truncbinop116, 1
  %_public_lhssext117 = zext i32 %_public_subtmp to i64
  %_public_ugtetmp118 = icmp uge i64 %_public_lhssext117, 0
  %_public_zexttmp119 = zext i1 %_public_ugtetmp118 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp119)
  %_public_lval120 = load i32, i32* %_public___v100_j
  %_public_multmp121 = mul i32 %_public_lval120, 64
  %_public_lhssext122 = zext i32 %_public_multmp121 to i64
  %_public_addtmp123 = add i64 %_public_lhssext122, 64
  %_public_truncbinop124 = trunc i64 %_public_addtmp123 to i32
  %_public_subtmp125 = sub i32 %_public_truncbinop124, 1
  %_public_lval126 = load i32, i32* %_public___c_len
  %_public_icast127 = zext i32 %_public_lval126 to i64
  %_public_lhssext128 = zext i32 %_public_subtmp125 to i64
  %_public_ulttmp129 = icmp ult i64 %_public_lhssext128, %_public_icast127
  %_public_zexttmp130 = zext i1 %_public_ulttmp129 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp130)
  %_public_lval131 = load i32, i32* %_public___v100_j
  %_public_multmp132 = mul i32 %_public_lval131, 64
  %_secret_ldedviewptr = load i8*, i8** %_secret_arrarg
  %_secret_source_gep = getelementptr inbounds i8, i8* %_secret_ldedviewptr, i32 %_public_multmp132
  %_secret___v101_cview = alloca i8*
  store i8* %_secret_source_gep, i8** %_secret___v101_cview
  %_public_lval133 = load i32, i32* %_public___v100_j
  %_public_multmp134 = mul i32 %_public_lval133, 64
  %_public_lhssext135 = zext i32 %_public_multmp134 to i64
  %_public_addtmp136 = add i64 %_public_lhssext135, 64
  %_public_truncbinop137 = trunc i64 %_public_addtmp136 to i32
  %_public_lval138 = load i32, i32* %_public___v100_j
  %_public_multmp139 = mul i32 %_public_lval138, 64
  %_public_ugttmp140 = icmp ugt i32 %_public_truncbinop137, %_public_multmp139
  %_public_zexttmp141 = zext i1 %_public_ugttmp140 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp141)
  %_public_lval142 = load i32, i32* %_public___v100_j
  %_public_multmp143 = mul i32 %_public_lval142, 64
  %_public_lhssext144 = zext i32 %_public_multmp143 to i64
  %_public_ugtetmp145 = icmp uge i64 %_public_lhssext144, 0
  %_public_zexttmp146 = zext i1 %_public_ugtetmp145 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp146)
  %_public_lval147 = load i32, i32* %_public___v100_j
  %_public_multmp148 = mul i32 %_public_lval147, 64
  %_public_lval149 = load i32, i32* %_public___m_len
  %_public_icast150 = zext i32 %_public_lval149 to i64
  %_public_lhssext151 = zext i32 %_public_multmp148 to i64
  %_public_ulttmp152 = icmp ult i64 %_public_lhssext151, %_public_icast150
  %_public_zexttmp153 = zext i1 %_public_ulttmp152 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp153)
  %_public_lval154 = load i32, i32* %_public___v100_j
  %_public_multmp155 = mul i32 %_public_lval154, 64
  %_public_lhssext156 = zext i32 %_public_multmp155 to i64
  %_public_addtmp157 = add i64 %_public_lhssext156, 64
  %_public_truncbinop158 = trunc i64 %_public_addtmp157 to i32
  %_public_subtmp159 = sub i32 %_public_truncbinop158, 1
  %_public_lhssext160 = zext i32 %_public_subtmp159 to i64
  %_public_ugtetmp161 = icmp uge i64 %_public_lhssext160, 0
  %_public_zexttmp162 = zext i1 %_public_ugtetmp161 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp162)
  %_public_lval163 = load i32, i32* %_public___v100_j
  %_public_multmp164 = mul i32 %_public_lval163, 64
  %_public_lhssext165 = zext i32 %_public_multmp164 to i64
  %_public_addtmp166 = add i64 %_public_lhssext165, 64
  %_public_truncbinop167 = trunc i64 %_public_addtmp166 to i32
  %_public_subtmp168 = sub i32 %_public_truncbinop167, 1
  %_public_lval169 = load i32, i32* %_public___m_len
  %_public_icast170 = zext i32 %_public_lval169 to i64
  %_public_lhssext171 = zext i32 %_public_subtmp168 to i64
  %_public_ulttmp172 = icmp ult i64 %_public_lhssext171, %_public_icast170
  %_public_zexttmp173 = zext i1 %_public_ulttmp172 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp173)
  %_public_lval174 = load i32, i32* %_public___v100_j
  %_public_multmp175 = mul i32 %_public_lval174, 64
  %_secret_ldedviewptr176 = load i8*, i8** %_secret_arrarg3
  %_secret_source_gep177 = getelementptr inbounds i8, i8* %_secret_ldedviewptr176, i32 %_public_multmp175
  %_secret___v102_mview = alloca i8*
  store i8* %_secret_source_gep177, i8** %_secret___v102_mview
  %_public_calltmp178 = call i32 @__VERIFIER_nondet_unsigned_int()
  store i32 %_public_calltmp178, i32* %_public___v103_i
  %_public_lval179 = load i32, i32* %_public___v103_i
  %_public_ulttmp180 = icmp ult i32 %_public_lval179, 64
  %_public_branchcompare181 = icmp eq i1 %_public_ulttmp180, true
  br i1 %_public_branchcompare181, label %thenbranch182, label %elsebranch228

thenbranch182:                                    ; preds = %thenbranch80
  %_public_lval183 = load i32, i32* %_public___v103_i
  %_public_lval184 = load i32, i32* %_public___v103_i
  %_public_addtmp185 = add i32 %_public_lval184, 1
  %_public_ulttmp186 = icmp ult i32 %_public_lval183, %_public_addtmp185
  %_public_zexttmp187 = zext i1 %_public_ulttmp186 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp187)
  %_public_lval188 = load i32, i32* %_public___v103_i
  %_public_ulttmp189 = icmp ult i32 0, %_public_lval188
  %_public_lval190 = load i32, i32* %_public___v103_i
  %_public_eqtmp191 = icmp eq i32 0, %_public_lval190
  %_public_lortmp192 = or i1 %_public_ulttmp189, %_public_eqtmp191
  %_public_zexttmp193 = zext i1 %_public_lortmp192 to i32
  call void @__VERIFIER_assume(i32 %_public_zexttmp193)
  %_public_lval194 = load i32, i32* %_public___v103_i
  %_public_lhssext195 = zext i32 %_public_lval194 to i64
  %_public_ugtetmp196 = icmp uge i64 %_public_lhssext195, 0
  %_public_zexttmp197 = zext i1 %_public_ugtetmp196 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp197)
  %_public_lval198 = load i32, i32* %_public___v103_i
  %_public_lhssext199 = zext i32 %_public_lval198 to i64
  %_public_ulttmp200 = icmp ult i64 %_public_lhssext199, 64
  %_public_zexttmp201 = zext i1 %_public_ulttmp200 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp201)
  %_public_lval202 = load i32, i32* %_public___v103_i
  %_secret_dyn203 = load i8*, i8** %_secret___v101_cview
  %_secret_ptr204 = getelementptr inbounds i8, i8* %_secret_dyn203, i32 %_public_lval202
  %_public_lval205 = load i32, i32* %_public___v103_i
  %_public_lhssext206 = zext i32 %_public_lval205 to i64
  %_public_ugtetmp207 = icmp uge i64 %_public_lhssext206, 0
  %_public_zexttmp208 = zext i1 %_public_ugtetmp207 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp208)
  %_public_lval209 = load i32, i32* %_public___v103_i
  %_public_lhssext210 = zext i32 %_public_lval209 to i64
  %_public_ulttmp211 = icmp ult i64 %_public_lhssext210, 64
  %_public_zexttmp212 = zext i1 %_public_ulttmp211 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp212)
  %_public_lval213 = load i32, i32* %_public___v103_i
  %_secret_dyn214 = load i8*, i8** %_secret___v102_mview
  %_secret_ptr215 = getelementptr inbounds i8, i8* %_secret_dyn214, i32 %_public_lval213
  %_secret_lval216 = load i8, i8* %_secret_ptr215
  %_public_lval217 = load i32, i32* %_public___v103_i
  %_public_lhssext218 = zext i32 %_public_lval217 to i64
  %_public_ugtetmp219 = icmp uge i64 %_public_lhssext218, 0
  %_public_zexttmp220 = zext i1 %_public_ugtetmp219 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp220)
  %_public_lval221 = load i32, i32* %_public___v103_i
  %_public_lhssext222 = zext i32 %_public_lval221 to i64
  %_public_ulttmp223 = icmp ult i64 %_public_lhssext222, 64
  %_public_zexttmp224 = zext i1 %_public_ulttmp223 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp224)
  %_public_lval225 = load i32, i32* %_public___v103_i
  %_secret_ptr226 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret___v99_block, i32 0, i32 %_public_lval225
  %_secret_lval227 = load i8, i8* %_secret_ptr226
  %_secret_xortmp = xor i8 %_secret_lval216, %_secret_lval227
  store i8 %_secret_xortmp, i8* %_secret_ptr204
  br label %branchmerge229

elsebranch228:                                    ; preds = %thenbranch80
  br label %branchmerge229

branchmerge229:                                   ; preds = %elsebranch228, %thenbranch182
  store i32 1, i32* %_secret___v104_u
  %_public_calltmp230 = call i32 @__VERIFIER_nondet_unsigned_int()
  store i32 %_public_calltmp230, i32* %_public___v105_i
  %_public_lval231 = load i32, i32* %_public___v105_i
  %_public_ulttmp232 = icmp ult i32 %_public_lval231, 16
  %_public_branchcompare233 = icmp eq i1 %_public_ulttmp232, true
  br i1 %_public_branchcompare233, label %thenbranch234, label %elsebranch270

thenbranch234:                                    ; preds = %branchmerge229
  %_public_lval235 = load i32, i32* %_public___v105_i
  %_public_lval236 = load i32, i32* %_public___v105_i
  %_public_addtmp237 = add i32 %_public_lval236, 1
  %_public_ulttmp238 = icmp ult i32 %_public_lval235, %_public_addtmp237
  %_public_zexttmp239 = zext i1 %_public_ulttmp238 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp239)
  %_public_lval240 = load i32, i32* %_public___v105_i
  %_public_ulttmp241 = icmp ult i32 8, %_public_lval240
  %_public_lval242 = load i32, i32* %_public___v105_i
  %_public_eqtmp243 = icmp eq i32 8, %_public_lval242
  %_public_lortmp244 = or i1 %_public_ulttmp241, %_public_eqtmp243
  %_public_zexttmp245 = zext i1 %_public_lortmp244 to i32
  call void @__VERIFIER_assume(i32 %_public_zexttmp245)
  %_secret_lval246 = load i32, i32* %_secret___v104_u
  %_public_lval247 = load i32, i32* %_public___v105_i
  %_public_lhssext248 = zext i32 %_public_lval247 to i64
  %_public_ugtetmp249 = icmp uge i64 %_public_lhssext248, 0
  %_public_zexttmp250 = zext i1 %_public_ugtetmp249 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp250)
  %_public_lval251 = load i32, i32* %_public___v105_i
  %_public_lhssext252 = zext i32 %_public_lval251 to i64
  %_public_ulttmp253 = icmp ult i64 %_public_lhssext252, 16
  %_public_zexttmp254 = zext i1 %_public_ulttmp253 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp254)
  %_public_lval255 = load i32, i32* %_public___v105_i
  %_secret_ptr256 = getelementptr inbounds [16 x i8], [16 x i8]* %_secret___v95_in, i32 0, i32 %_public_lval255
  %_secret_lval257 = load i8, i8* %_secret_ptr256
  %_secret_rhssext = zext i8 %_secret_lval257 to i32
  %_secret_addtmp = add i32 %_secret_lval246, %_secret_rhssext
  store i32 %_secret_addtmp, i32* %_secret___v104_u
  %_public_lval258 = load i32, i32* %_public___v105_i
  %_public_lhssext259 = zext i32 %_public_lval258 to i64
  %_public_ugtetmp260 = icmp uge i64 %_public_lhssext259, 0
  %_public_zexttmp261 = zext i1 %_public_ugtetmp260 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp261)
  %_public_lval262 = load i32, i32* %_public___v105_i
  %_public_lhssext263 = zext i32 %_public_lval262 to i64
  %_public_ulttmp264 = icmp ult i64 %_public_lhssext263, 16
  %_public_zexttmp265 = zext i1 %_public_ulttmp264 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp265)
  %_public_lval266 = load i32, i32* %_public___v105_i
  %_secret_ptr267 = getelementptr inbounds [16 x i8], [16 x i8]* %_secret___v95_in, i32 0, i32 %_public_lval266
  %_secret_lval268 = load i32, i32* %_secret___v104_u
  %_secret_ucast = trunc i32 %_secret_lval268 to i8
  store i8 %_secret_ucast, i8* %_secret_ptr267
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval269 = load i32, i32* %_secret___v104_u
  %_secret_lrshift = lshr i32 %_secret_lval269, 8
  store i32 %_secret_lrshift, i32* %_secret___v104_u
  br label %branchmerge271

elsebranch270:                                    ; preds = %branchmerge229
  br label %branchmerge271

branchmerge271:                                   ; preds = %elsebranch270, %thenbranch234
  br label %branchmerge273

elsebranch272:                                    ; preds = %branchmerge72
  br label %branchmerge273

branchmerge273:                                   ; preds = %elsebranch272, %branchmerge271
  %_public_lval274 = load i32, i32* %_public___v98_mtimes
  %_public_multmp275 = mul i32 %_public_lval274, 64
  %_public_lval276 = load i32, i32* %_public___m_len
  %_public_ulttmp277 = icmp ult i32 %_public_multmp275, %_public_lval276
  %_public_branchcompare278 = icmp eq i1 %_public_ulttmp277, true
  br i1 %_public_branchcompare278, label %thenbranch279, label %elsebranch449

thenbranch279:                                    ; preds = %branchmerge273
  %_public_lval280 = load i32, i32* %_public___m_len
  %_public_lval281 = load i32, i32* %_public___v98_mtimes
  %_public_multmp282 = mul i32 %_public_lval281, 64
  %_public_subtmp283 = sub i32 %_public_lval280, %_public_multmp282
  store i32 %_public_subtmp283, i32* %_public___v106_remain
  %_secret_arrtoptr284 = bitcast [64 x i8]* %_secret___v99_block to i8*
  %_secret_arrtoptr285 = bitcast [16 x i8]* %_secret___v95_in to i8*
  %_secret_arrtoptr286 = bitcast [32 x i8]* %_secret___v94_kcopy to i8*
  call void @_crypto_core_salsa20(i8* %_secret_arrtoptr284, i8* %_secret_arrtoptr285, i8* %_secret_arrtoptr286)
  %_public_lval287 = load i32, i32* %_public___v106_remain
  store i32 %_public_lval287, i32* %_public___v108___v107_len
  %_public_lval288 = load i32, i32* %_public___v98_mtimes
  %_public_multmp289 = mul i32 %_public_lval288, 64
  %_public_lval290 = load i32, i32* %_public___v108___v107_len
  %_public_icast291 = zext i32 %_public_lval290 to i64
  %_public_lhssext292 = zext i32 %_public_multmp289 to i64
  %_public_addtmp293 = add i64 %_public_lhssext292, %_public_icast291
  %_public_truncbinop294 = trunc i64 %_public_addtmp293 to i32
  %_public_lval295 = load i32, i32* %_public___v98_mtimes
  %_public_multmp296 = mul i32 %_public_lval295, 64
  %_public_ugttmp297 = icmp ugt i32 %_public_truncbinop294, %_public_multmp296
  %_public_zexttmp298 = zext i1 %_public_ugttmp297 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp298)
  %_public_lval299 = load i32, i32* %_public___v98_mtimes
  %_public_multmp300 = mul i32 %_public_lval299, 64
  %_public_lhssext301 = zext i32 %_public_multmp300 to i64
  %_public_ugtetmp302 = icmp uge i64 %_public_lhssext301, 0
  %_public_zexttmp303 = zext i1 %_public_ugtetmp302 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp303)
  %_public_lval304 = load i32, i32* %_public___v98_mtimes
  %_public_multmp305 = mul i32 %_public_lval304, 64
  %_public_lval306 = load i32, i32* %_public___c_len
  %_public_icast307 = zext i32 %_public_lval306 to i64
  %_public_lhssext308 = zext i32 %_public_multmp305 to i64
  %_public_ulttmp309 = icmp ult i64 %_public_lhssext308, %_public_icast307
  %_public_zexttmp310 = zext i1 %_public_ulttmp309 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp310)
  %_public_lval311 = load i32, i32* %_public___v98_mtimes
  %_public_multmp312 = mul i32 %_public_lval311, 64
  %_public_lval313 = load i32, i32* %_public___v108___v107_len
  %_public_icast314 = zext i32 %_public_lval313 to i64
  %_public_lhssext315 = zext i32 %_public_multmp312 to i64
  %_public_addtmp316 = add i64 %_public_lhssext315, %_public_icast314
  %_public_truncbinop317 = trunc i64 %_public_addtmp316 to i32
  %_public_subtmp318 = sub i32 %_public_truncbinop317, 1
  %_public_lhssext319 = zext i32 %_public_subtmp318 to i64
  %_public_ugtetmp320 = icmp uge i64 %_public_lhssext319, 0
  %_public_zexttmp321 = zext i1 %_public_ugtetmp320 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp321)
  %_public_lval322 = load i32, i32* %_public___v98_mtimes
  %_public_multmp323 = mul i32 %_public_lval322, 64
  %_public_lval324 = load i32, i32* %_public___v108___v107_len
  %_public_icast325 = zext i32 %_public_lval324 to i64
  %_public_lhssext326 = zext i32 %_public_multmp323 to i64
  %_public_addtmp327 = add i64 %_public_lhssext326, %_public_icast325
  %_public_truncbinop328 = trunc i64 %_public_addtmp327 to i32
  %_public_subtmp329 = sub i32 %_public_truncbinop328, 1
  %_public_lval330 = load i32, i32* %_public___c_len
  %_public_icast331 = zext i32 %_public_lval330 to i64
  %_public_lhssext332 = zext i32 %_public_subtmp329 to i64
  %_public_ulttmp333 = icmp ult i64 %_public_lhssext332, %_public_icast331
  %_public_zexttmp334 = zext i1 %_public_ulttmp333 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp334)
  %_public_lval335 = load i32, i32* %_public___v98_mtimes
  %_public_multmp336 = mul i32 %_public_lval335, 64
  %_secret_ldedviewptr337 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep338 = getelementptr inbounds i8, i8* %_secret_ldedviewptr337, i32 %_public_multmp336
  %_secret___v109_cview = alloca i8*
  store i8* %_secret_source_gep338, i8** %_secret___v109_cview
  %_public_lval339 = load i32, i32* %_public___v106_remain
  store i32 %_public_lval339, i32* %_public___v111___v110_len
  %_public_lval340 = load i32, i32* %_public___v98_mtimes
  %_public_multmp341 = mul i32 %_public_lval340, 64
  %_public_lval342 = load i32, i32* %_public___v111___v110_len
  %_public_icast343 = zext i32 %_public_lval342 to i64
  %_public_lhssext344 = zext i32 %_public_multmp341 to i64
  %_public_addtmp345 = add i64 %_public_lhssext344, %_public_icast343
  %_public_truncbinop346 = trunc i64 %_public_addtmp345 to i32
  %_public_lval347 = load i32, i32* %_public___v98_mtimes
  %_public_multmp348 = mul i32 %_public_lval347, 64
  %_public_ugttmp349 = icmp ugt i32 %_public_truncbinop346, %_public_multmp348
  %_public_zexttmp350 = zext i1 %_public_ugttmp349 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp350)
  %_public_lval351 = load i32, i32* %_public___v98_mtimes
  %_public_multmp352 = mul i32 %_public_lval351, 64
  %_public_lhssext353 = zext i32 %_public_multmp352 to i64
  %_public_ugtetmp354 = icmp uge i64 %_public_lhssext353, 0
  %_public_zexttmp355 = zext i1 %_public_ugtetmp354 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp355)
  %_public_lval356 = load i32, i32* %_public___v98_mtimes
  %_public_multmp357 = mul i32 %_public_lval356, 64
  %_public_lval358 = load i32, i32* %_public___m_len
  %_public_icast359 = zext i32 %_public_lval358 to i64
  %_public_lhssext360 = zext i32 %_public_multmp357 to i64
  %_public_ulttmp361 = icmp ult i64 %_public_lhssext360, %_public_icast359
  %_public_zexttmp362 = zext i1 %_public_ulttmp361 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp362)
  %_public_lval363 = load i32, i32* %_public___v98_mtimes
  %_public_multmp364 = mul i32 %_public_lval363, 64
  %_public_lval365 = load i32, i32* %_public___v111___v110_len
  %_public_icast366 = zext i32 %_public_lval365 to i64
  %_public_lhssext367 = zext i32 %_public_multmp364 to i64
  %_public_addtmp368 = add i64 %_public_lhssext367, %_public_icast366
  %_public_truncbinop369 = trunc i64 %_public_addtmp368 to i32
  %_public_subtmp370 = sub i32 %_public_truncbinop369, 1
  %_public_lhssext371 = zext i32 %_public_subtmp370 to i64
  %_public_ugtetmp372 = icmp uge i64 %_public_lhssext371, 0
  %_public_zexttmp373 = zext i1 %_public_ugtetmp372 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp373)
  %_public_lval374 = load i32, i32* %_public___v98_mtimes
  %_public_multmp375 = mul i32 %_public_lval374, 64
  %_public_lval376 = load i32, i32* %_public___v111___v110_len
  %_public_icast377 = zext i32 %_public_lval376 to i64
  %_public_lhssext378 = zext i32 %_public_multmp375 to i64
  %_public_addtmp379 = add i64 %_public_lhssext378, %_public_icast377
  %_public_truncbinop380 = trunc i64 %_public_addtmp379 to i32
  %_public_subtmp381 = sub i32 %_public_truncbinop380, 1
  %_public_lval382 = load i32, i32* %_public___m_len
  %_public_icast383 = zext i32 %_public_lval382 to i64
  %_public_lhssext384 = zext i32 %_public_subtmp381 to i64
  %_public_ulttmp385 = icmp ult i64 %_public_lhssext384, %_public_icast383
  %_public_zexttmp386 = zext i1 %_public_ulttmp385 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp386)
  %_public_lval387 = load i32, i32* %_public___v98_mtimes
  %_public_multmp388 = mul i32 %_public_lval387, 64
  %_secret_ldedviewptr389 = load i8*, i8** %_secret_arrarg3
  %_secret_source_gep390 = getelementptr inbounds i8, i8* %_secret_ldedviewptr389, i32 %_public_multmp388
  %_secret___v112_mview = alloca i8*
  store i8* %_secret_source_gep390, i8** %_secret___v112_mview
  %_public_calltmp391 = call i32 @__VERIFIER_nondet_unsigned_int()
  store i32 %_public_calltmp391, i32* %_public___v113_i
  %_public_lval392 = load i32, i32* %_public___v113_i
  %_public_lval393 = load i32, i32* %_public___v106_remain
  %_public_ulttmp394 = icmp ult i32 %_public_lval392, %_public_lval393
  %_public_branchcompare395 = icmp eq i1 %_public_ulttmp394, true
  br i1 %_public_branchcompare395, label %thenbranch396, label %elsebranch447

thenbranch396:                                    ; preds = %thenbranch279
  %_public_lval397 = load i32, i32* %_public___v113_i
  %_public_lval398 = load i32, i32* %_public___v113_i
  %_public_addtmp399 = add i32 %_public_lval398, 1
  %_public_ulttmp400 = icmp ult i32 %_public_lval397, %_public_addtmp399
  %_public_zexttmp401 = zext i1 %_public_ulttmp400 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp401)
  %_public_lval402 = load i32, i32* %_public___v113_i
  %_public_ulttmp403 = icmp ult i32 0, %_public_lval402
  %_public_lval404 = load i32, i32* %_public___v113_i
  %_public_eqtmp405 = icmp eq i32 0, %_public_lval404
  %_public_lortmp406 = or i1 %_public_ulttmp403, %_public_eqtmp405
  %_public_zexttmp407 = zext i1 %_public_lortmp406 to i32
  call void @__VERIFIER_assume(i32 %_public_zexttmp407)
  %_public_lval408 = load i32, i32* %_public___v113_i
  %_public_lhssext409 = zext i32 %_public_lval408 to i64
  %_public_ugtetmp410 = icmp uge i64 %_public_lhssext409, 0
  %_public_zexttmp411 = zext i1 %_public_ugtetmp410 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp411)
  %_public_lval412 = load i32, i32* %_public___v113_i
  %_public_lval413 = load i32, i32* %_public___v108___v107_len
  %_public_icast414 = zext i32 %_public_lval413 to i64
  %_public_lhssext415 = zext i32 %_public_lval412 to i64
  %_public_ulttmp416 = icmp ult i64 %_public_lhssext415, %_public_icast414
  %_public_zexttmp417 = zext i1 %_public_ulttmp416 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp417)
  %_public_lval418 = load i32, i32* %_public___v113_i
  %_secret_dyn419 = load i8*, i8** %_secret___v109_cview
  %_secret_ptr420 = getelementptr inbounds i8, i8* %_secret_dyn419, i32 %_public_lval418
  %_public_lval421 = load i32, i32* %_public___v113_i
  %_public_lhssext422 = zext i32 %_public_lval421 to i64
  %_public_ugtetmp423 = icmp uge i64 %_public_lhssext422, 0
  %_public_zexttmp424 = zext i1 %_public_ugtetmp423 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp424)
  %_public_lval425 = load i32, i32* %_public___v113_i
  %_public_lval426 = load i32, i32* %_public___v111___v110_len
  %_public_icast427 = zext i32 %_public_lval426 to i64
  %_public_lhssext428 = zext i32 %_public_lval425 to i64
  %_public_ulttmp429 = icmp ult i64 %_public_lhssext428, %_public_icast427
  %_public_zexttmp430 = zext i1 %_public_ulttmp429 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp430)
  %_public_lval431 = load i32, i32* %_public___v113_i
  %_secret_dyn432 = load i8*, i8** %_secret___v112_mview
  %_secret_ptr433 = getelementptr inbounds i8, i8* %_secret_dyn432, i32 %_public_lval431
  %_secret_lval434 = load i8, i8* %_secret_ptr433
  %_public_lval435 = load i32, i32* %_public___v113_i
  %_public_lhssext436 = zext i32 %_public_lval435 to i64
  %_public_ugtetmp437 = icmp uge i64 %_public_lhssext436, 0
  %_public_zexttmp438 = zext i1 %_public_ugtetmp437 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp438)
  %_public_lval439 = load i32, i32* %_public___v113_i
  %_public_lhssext440 = zext i32 %_public_lval439 to i64
  %_public_ulttmp441 = icmp ult i64 %_public_lhssext440, 64
  %_public_zexttmp442 = zext i1 %_public_ulttmp441 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp442)
  %_public_lval443 = load i32, i32* %_public___v113_i
  %_secret_ptr444 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret___v99_block, i32 0, i32 %_public_lval443
  %_secret_lval445 = load i8, i8* %_secret_ptr444
  %_secret_xortmp446 = xor i8 %_secret_lval434, %_secret_lval445
  store i8 %_secret_xortmp446, i8* %_secret_ptr420
  br label %branchmerge448

elsebranch447:                                    ; preds = %thenbranch279
  br label %branchmerge448

branchmerge448:                                   ; preds = %elsebranch447, %thenbranch396
  br label %branchmerge450

elsebranch449:                                    ; preds = %branchmerge273
  br label %branchmerge450

branchmerge450:                                   ; preds = %elsebranch449, %branchmerge448
  %_secret_arrtoptr451 = bitcast [64 x i8]* %_secret___v99_block to i8*
  call void @_memzero(i8* %_secret_arrtoptr451, i32 64)
  %_secret_arrtoptr452 = bitcast [32 x i8]* %_secret___v94_kcopy to i8*
  call void @_memzero(i8* %_secret_arrtoptr452, i32 32)
  store i32 0, i32* %_public___rval
  %_public_lval453 = load i32, i32* %_public___rval
  ret i32 %_public_lval453
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
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_ldedviewptr = load i8*, i8** %_secret_arrarg4
  %_secret_source_gep = getelementptr inbounds i8, i8* %_secret_ldedviewptr, i8 0
  %_secret_arrviewdyn = alloca i8*
  store i8* %_secret_source_gep, i8** %_secret_arrviewdyn
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_ldedviewptr6 = load i8*, i8** %_secret_arrarg4
  %_secret_source_gep7 = getelementptr inbounds i8, i8* %_secret_ldedviewptr6, i8 0
  %_secret_arrviewdyn8 = alloca i8*
  store i8* %_secret_source_gep7, i8** %_secret_arrviewdyn8
  %_secret_dynarrarg = load i8*, i8** %_secret_arrviewdyn8
  %_secret_calltmp = call i32 @_load32_le(i8* %_secret_dynarrarg)
  store i32 %_secret_calltmp, i32* %_secret___v118_x1
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_ldedviewptr9 = load i8*, i8** %_secret_arrarg4
  %_secret_source_gep10 = getelementptr inbounds i8, i8* %_secret_ldedviewptr9, i8 4
  %_secret_arrviewdyn11 = alloca i8*
  store i8* %_secret_source_gep10, i8** %_secret_arrviewdyn11
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_ldedviewptr12 = load i8*, i8** %_secret_arrarg4
  %_secret_source_gep13 = getelementptr inbounds i8, i8* %_secret_ldedviewptr12, i8 4
  %_secret_arrviewdyn14 = alloca i8*
  store i8* %_secret_source_gep13, i8** %_secret_arrviewdyn14
  %_secret_dynarrarg15 = load i8*, i8** %_secret_arrviewdyn14
  %_secret_calltmp16 = call i32 @_load32_le(i8* %_secret_dynarrarg15)
  store i32 %_secret_calltmp16, i32* %_secret___v119_x2
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_ldedviewptr17 = load i8*, i8** %_secret_arrarg4
  %_secret_source_gep18 = getelementptr inbounds i8, i8* %_secret_ldedviewptr17, i8 8
  %_secret_arrviewdyn19 = alloca i8*
  store i8* %_secret_source_gep18, i8** %_secret_arrviewdyn19
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_ldedviewptr20 = load i8*, i8** %_secret_arrarg4
  %_secret_source_gep21 = getelementptr inbounds i8, i8* %_secret_ldedviewptr20, i8 8
  %_secret_arrviewdyn22 = alloca i8*
  store i8* %_secret_source_gep21, i8** %_secret_arrviewdyn22
  %_secret_dynarrarg23 = load i8*, i8** %_secret_arrviewdyn22
  %_secret_calltmp24 = call i32 @_load32_le(i8* %_secret_dynarrarg23)
  store i32 %_secret_calltmp24, i32* %_secret___v120_x3
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_ldedviewptr25 = load i8*, i8** %_secret_arrarg4
  %_secret_source_gep26 = getelementptr inbounds i8, i8* %_secret_ldedviewptr25, i8 12
  %_secret_arrviewdyn27 = alloca i8*
  store i8* %_secret_source_gep26, i8** %_secret_arrviewdyn27
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_ldedviewptr28 = load i8*, i8** %_secret_arrarg4
  %_secret_source_gep29 = getelementptr inbounds i8, i8* %_secret_ldedviewptr28, i8 12
  %_secret_arrviewdyn30 = alloca i8*
  store i8* %_secret_source_gep29, i8** %_secret_arrviewdyn30
  %_secret_dynarrarg31 = load i8*, i8** %_secret_arrviewdyn30
  %_secret_calltmp32 = call i32 @_load32_le(i8* %_secret_dynarrarg31)
  store i32 %_secret_calltmp32, i32* %_secret___v121_x4
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_ldedviewptr33 = load i8*, i8** %_secret_arrarg4
  %_secret_source_gep34 = getelementptr inbounds i8, i8* %_secret_ldedviewptr33, i8 16
  %_secret_arrviewdyn35 = alloca i8*
  store i8* %_secret_source_gep34, i8** %_secret_arrviewdyn35
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_ldedviewptr36 = load i8*, i8** %_secret_arrarg4
  %_secret_source_gep37 = getelementptr inbounds i8, i8* %_secret_ldedviewptr36, i8 16
  %_secret_arrviewdyn38 = alloca i8*
  store i8* %_secret_source_gep37, i8** %_secret_arrviewdyn38
  %_secret_dynarrarg39 = load i8*, i8** %_secret_arrviewdyn38
  %_secret_calltmp40 = call i32 @_load32_le(i8* %_secret_dynarrarg39)
  store i32 %_secret_calltmp40, i32* %_secret___v122_x11
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_ldedviewptr41 = load i8*, i8** %_secret_arrarg4
  %_secret_source_gep42 = getelementptr inbounds i8, i8* %_secret_ldedviewptr41, i8 20
  %_secret_arrviewdyn43 = alloca i8*
  store i8* %_secret_source_gep42, i8** %_secret_arrviewdyn43
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_ldedviewptr44 = load i8*, i8** %_secret_arrarg4
  %_secret_source_gep45 = getelementptr inbounds i8, i8* %_secret_ldedviewptr44, i8 20
  %_secret_arrviewdyn46 = alloca i8*
  store i8* %_secret_source_gep45, i8** %_secret_arrviewdyn46
  %_secret_dynarrarg47 = load i8*, i8** %_secret_arrviewdyn46
  %_secret_calltmp48 = call i32 @_load32_le(i8* %_secret_dynarrarg47)
  store i32 %_secret_calltmp48, i32* %_secret___v123_x12
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_ldedviewptr49 = load i8*, i8** %_secret_arrarg4
  %_secret_source_gep50 = getelementptr inbounds i8, i8* %_secret_ldedviewptr49, i8 24
  %_secret_arrviewdyn51 = alloca i8*
  store i8* %_secret_source_gep50, i8** %_secret_arrviewdyn51
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_ldedviewptr52 = load i8*, i8** %_secret_arrarg4
  %_secret_source_gep53 = getelementptr inbounds i8, i8* %_secret_ldedviewptr52, i8 24
  %_secret_arrviewdyn54 = alloca i8*
  store i8* %_secret_source_gep53, i8** %_secret_arrviewdyn54
  %_secret_dynarrarg55 = load i8*, i8** %_secret_arrviewdyn54
  %_secret_calltmp56 = call i32 @_load32_le(i8* %_secret_dynarrarg55)
  store i32 %_secret_calltmp56, i32* %_secret___v124_x13
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_ldedviewptr57 = load i8*, i8** %_secret_arrarg4
  %_secret_source_gep58 = getelementptr inbounds i8, i8* %_secret_ldedviewptr57, i8 28
  %_secret_arrviewdyn59 = alloca i8*
  store i8* %_secret_source_gep58, i8** %_secret_arrviewdyn59
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_ldedviewptr60 = load i8*, i8** %_secret_arrarg4
  %_secret_source_gep61 = getelementptr inbounds i8, i8* %_secret_ldedviewptr60, i8 28
  %_secret_arrviewdyn62 = alloca i8*
  store i8* %_secret_source_gep61, i8** %_secret_arrviewdyn62
  %_secret_dynarrarg63 = load i8*, i8** %_secret_arrviewdyn62
  %_secret_calltmp64 = call i32 @_load32_le(i8* %_secret_dynarrarg63)
  store i32 %_secret_calltmp64, i32* %_secret___v125_x14
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_ldedviewptr65 = load i8*, i8** %_secret_arrarg2
  %_secret_source_gep66 = getelementptr inbounds i8, i8* %_secret_ldedviewptr65, i8 0
  %_secret_arrviewdyn67 = alloca i8*
  store i8* %_secret_source_gep66, i8** %_secret_arrviewdyn67
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_ldedviewptr68 = load i8*, i8** %_secret_arrarg2
  %_secret_source_gep69 = getelementptr inbounds i8, i8* %_secret_ldedviewptr68, i8 0
  %_secret_arrviewdyn70 = alloca i8*
  store i8* %_secret_source_gep69, i8** %_secret_arrviewdyn70
  %_secret_dynarrarg71 = load i8*, i8** %_secret_arrviewdyn70
  %_secret_calltmp72 = call i32 @_load32_le(i8* %_secret_dynarrarg71)
  store i32 %_secret_calltmp72, i32* %_secret___v126_x6
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_ldedviewptr73 = load i8*, i8** %_secret_arrarg2
  %_secret_source_gep74 = getelementptr inbounds i8, i8* %_secret_ldedviewptr73, i8 4
  %_secret_arrviewdyn75 = alloca i8*
  store i8* %_secret_source_gep74, i8** %_secret_arrviewdyn75
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_ldedviewptr76 = load i8*, i8** %_secret_arrarg2
  %_secret_source_gep77 = getelementptr inbounds i8, i8* %_secret_ldedviewptr76, i8 4
  %_secret_arrviewdyn78 = alloca i8*
  store i8* %_secret_source_gep77, i8** %_secret_arrviewdyn78
  %_secret_dynarrarg79 = load i8*, i8** %_secret_arrviewdyn78
  %_secret_calltmp80 = call i32 @_load32_le(i8* %_secret_dynarrarg79)
  store i32 %_secret_calltmp80, i32* %_secret___v127_x7
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_ldedviewptr81 = load i8*, i8** %_secret_arrarg2
  %_secret_source_gep82 = getelementptr inbounds i8, i8* %_secret_ldedviewptr81, i8 8
  %_secret_arrviewdyn83 = alloca i8*
  store i8* %_secret_source_gep82, i8** %_secret_arrviewdyn83
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_ldedviewptr84 = load i8*, i8** %_secret_arrarg2
  %_secret_source_gep85 = getelementptr inbounds i8, i8* %_secret_ldedviewptr84, i8 8
  %_secret_arrviewdyn86 = alloca i8*
  store i8* %_secret_source_gep85, i8** %_secret_arrviewdyn86
  %_secret_dynarrarg87 = load i8*, i8** %_secret_arrviewdyn86
  %_secret_calltmp88 = call i32 @_load32_le(i8* %_secret_dynarrarg87)
  store i32 %_secret_calltmp88, i32* %_secret___v128_x8
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_ldedviewptr89 = load i8*, i8** %_secret_arrarg2
  %_secret_source_gep90 = getelementptr inbounds i8, i8* %_secret_ldedviewptr89, i8 12
  %_secret_arrviewdyn91 = alloca i8*
  store i8* %_secret_source_gep90, i8** %_secret_arrviewdyn91
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_ldedviewptr92 = load i8*, i8** %_secret_arrarg2
  %_secret_source_gep93 = getelementptr inbounds i8, i8* %_secret_ldedviewptr92, i8 12
  %_secret_arrviewdyn94 = alloca i8*
  store i8* %_secret_source_gep93, i8** %_secret_arrviewdyn94
  %_secret_dynarrarg95 = load i8*, i8** %_secret_arrviewdyn94
  %_secret_calltmp96 = call i32 @_load32_le(i8* %_secret_dynarrarg95)
  store i32 %_secret_calltmp96, i32* %_secret___v129_x9
  %_public_calltmp = call i32 @__VERIFIER_nondet_unsigned_int()
  store i32 %_public_calltmp, i32* %_public___v130_i
  %_public_lval = load i32, i32* %_public___v130_i
  %_public_ulttmp = icmp ult i32 %_public_lval, 10
  %_public_branchcompare = icmp eq i1 %_public_ulttmp, true
  br i1 %_public_branchcompare, label %thenbranch, label %elsebranch

thenbranch:                                       ; preds = %entry
  %_public_lval97 = load i32, i32* %_public___v130_i
  %_public_lval98 = load i32, i32* %_public___v130_i
  %_public_addtmp = add i32 %_public_lval98, 1
  %_public_ulttmp99 = icmp ult i32 %_public_lval97, %_public_addtmp
  %_public_zexttmp = zext i1 %_public_ulttmp99 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp)
  %_public_lval100 = load i32, i32* %_public___v130_i
  %_public_ulttmp101 = icmp ult i32 0, %_public_lval100
  %_public_lval102 = load i32, i32* %_public___v130_i
  %_public_eqtmp = icmp eq i32 0, %_public_lval102
  %_public_lortmp = or i1 %_public_ulttmp101, %_public_eqtmp
  %_public_zexttmp103 = zext i1 %_public_lortmp to i32
  call void @__VERIFIER_assume(i32 %_public_zexttmp103)
  %_secret_lval = load i32, i32* %_secret___v121_x4
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval104 = load i32, i32* %_secret___v114_x0
  %_secret_lval105 = load i32, i32* %_secret___v123_x12
  %_secret_addtmp = add i32 %_secret_lval104, %_secret_lval105
  %rotltmp = call i32 @__rotl32(i32 %_secret_addtmp, i32 7)
  %_secret_xortmp = xor i32 %_secret_lval, %rotltmp
  store i32 %_secret_xortmp, i32* %_secret___v121_x4
  %_secret_lval106 = load i32, i32* %_secret___v128_x8
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval107 = load i32, i32* %_secret___v121_x4
  %_secret_lval108 = load i32, i32* %_secret___v114_x0
  %_secret_addtmp109 = add i32 %_secret_lval107, %_secret_lval108
  %rotltmp110 = call i32 @__rotl32(i32 %_secret_addtmp109, i32 9)
  %_secret_xortmp111 = xor i32 %_secret_lval106, %rotltmp110
  store i32 %_secret_xortmp111, i32* %_secret___v128_x8
  %_secret_lval112 = load i32, i32* %_secret___v123_x12
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval113 = load i32, i32* %_secret___v128_x8
  %_secret_lval114 = load i32, i32* %_secret___v121_x4
  %_secret_addtmp115 = add i32 %_secret_lval113, %_secret_lval114
  %rotltmp116 = call i32 @__rotl32(i32 %_secret_addtmp115, i32 13)
  %_secret_xortmp117 = xor i32 %_secret_lval112, %rotltmp116
  store i32 %_secret_xortmp117, i32* %_secret___v123_x12
  %_secret_lval118 = load i32, i32* %_secret___v114_x0
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval119 = load i32, i32* %_secret___v123_x12
  %_secret_lval120 = load i32, i32* %_secret___v128_x8
  %_secret_addtmp121 = add i32 %_secret_lval119, %_secret_lval120
  %rotltmp122 = call i32 @__rotl32(i32 %_secret_addtmp121, i32 18)
  %_secret_xortmp123 = xor i32 %_secret_lval118, %rotltmp122
  store i32 %_secret_xortmp123, i32* %_secret___v114_x0
  %_secret_lval124 = load i32, i32* %_secret___v129_x9
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval125 = load i32, i32* %_secret___v115_x5
  %_secret_lval126 = load i32, i32* %_secret___v118_x1
  %_secret_addtmp127 = add i32 %_secret_lval125, %_secret_lval126
  %rotltmp128 = call i32 @__rotl32(i32 %_secret_addtmp127, i32 7)
  %_secret_xortmp129 = xor i32 %_secret_lval124, %rotltmp128
  store i32 %_secret_xortmp129, i32* %_secret___v129_x9
  %_secret_lval130 = load i32, i32* %_secret___v124_x13
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval131 = load i32, i32* %_secret___v129_x9
  %_secret_lval132 = load i32, i32* %_secret___v115_x5
  %_secret_addtmp133 = add i32 %_secret_lval131, %_secret_lval132
  %rotltmp134 = call i32 @__rotl32(i32 %_secret_addtmp133, i32 9)
  %_secret_xortmp135 = xor i32 %_secret_lval130, %rotltmp134
  store i32 %_secret_xortmp135, i32* %_secret___v124_x13
  %_secret_lval136 = load i32, i32* %_secret___v118_x1
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval137 = load i32, i32* %_secret___v124_x13
  %_secret_lval138 = load i32, i32* %_secret___v129_x9
  %_secret_addtmp139 = add i32 %_secret_lval137, %_secret_lval138
  %rotltmp140 = call i32 @__rotl32(i32 %_secret_addtmp139, i32 13)
  %_secret_xortmp141 = xor i32 %_secret_lval136, %rotltmp140
  store i32 %_secret_xortmp141, i32* %_secret___v118_x1
  %_secret_lval142 = load i32, i32* %_secret___v115_x5
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval143 = load i32, i32* %_secret___v118_x1
  %_secret_lval144 = load i32, i32* %_secret___v124_x13
  %_secret_addtmp145 = add i32 %_secret_lval143, %_secret_lval144
  %rotltmp146 = call i32 @__rotl32(i32 %_secret_addtmp145, i32 18)
  %_secret_xortmp147 = xor i32 %_secret_lval142, %rotltmp146
  store i32 %_secret_xortmp147, i32* %_secret___v115_x5
  %_secret_lval148 = load i32, i32* %_secret___v125_x14
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval149 = load i32, i32* %_secret___v116_x10
  %_secret_lval150 = load i32, i32* %_secret___v126_x6
  %_secret_addtmp151 = add i32 %_secret_lval149, %_secret_lval150
  %rotltmp152 = call i32 @__rotl32(i32 %_secret_addtmp151, i32 7)
  %_secret_xortmp153 = xor i32 %_secret_lval148, %rotltmp152
  store i32 %_secret_xortmp153, i32* %_secret___v125_x14
  %_secret_lval154 = load i32, i32* %_secret___v119_x2
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval155 = load i32, i32* %_secret___v125_x14
  %_secret_lval156 = load i32, i32* %_secret___v116_x10
  %_secret_addtmp157 = add i32 %_secret_lval155, %_secret_lval156
  %rotltmp158 = call i32 @__rotl32(i32 %_secret_addtmp157, i32 9)
  %_secret_xortmp159 = xor i32 %_secret_lval154, %rotltmp158
  store i32 %_secret_xortmp159, i32* %_secret___v119_x2
  %_secret_lval160 = load i32, i32* %_secret___v126_x6
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval161 = load i32, i32* %_secret___v119_x2
  %_secret_lval162 = load i32, i32* %_secret___v125_x14
  %_secret_addtmp163 = add i32 %_secret_lval161, %_secret_lval162
  %rotltmp164 = call i32 @__rotl32(i32 %_secret_addtmp163, i32 13)
  %_secret_xortmp165 = xor i32 %_secret_lval160, %rotltmp164
  store i32 %_secret_xortmp165, i32* %_secret___v126_x6
  %_secret_lval166 = load i32, i32* %_secret___v116_x10
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval167 = load i32, i32* %_secret___v126_x6
  %_secret_lval168 = load i32, i32* %_secret___v119_x2
  %_secret_addtmp169 = add i32 %_secret_lval167, %_secret_lval168
  %rotltmp170 = call i32 @__rotl32(i32 %_secret_addtmp169, i32 18)
  %_secret_xortmp171 = xor i32 %_secret_lval166, %rotltmp170
  store i32 %_secret_xortmp171, i32* %_secret___v116_x10
  %_secret_lval172 = load i32, i32* %_secret___v120_x3
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval173 = load i32, i32* %_secret___v117_x15
  %_secret_lval174 = load i32, i32* %_secret___v122_x11
  %_secret_addtmp175 = add i32 %_secret_lval173, %_secret_lval174
  %rotltmp176 = call i32 @__rotl32(i32 %_secret_addtmp175, i32 7)
  %_secret_xortmp177 = xor i32 %_secret_lval172, %rotltmp176
  store i32 %_secret_xortmp177, i32* %_secret___v120_x3
  %_secret_lval178 = load i32, i32* %_secret___v127_x7
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval179 = load i32, i32* %_secret___v120_x3
  %_secret_lval180 = load i32, i32* %_secret___v117_x15
  %_secret_addtmp181 = add i32 %_secret_lval179, %_secret_lval180
  %rotltmp182 = call i32 @__rotl32(i32 %_secret_addtmp181, i32 9)
  %_secret_xortmp183 = xor i32 %_secret_lval178, %rotltmp182
  store i32 %_secret_xortmp183, i32* %_secret___v127_x7
  %_secret_lval184 = load i32, i32* %_secret___v122_x11
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval185 = load i32, i32* %_secret___v127_x7
  %_secret_lval186 = load i32, i32* %_secret___v120_x3
  %_secret_addtmp187 = add i32 %_secret_lval185, %_secret_lval186
  %rotltmp188 = call i32 @__rotl32(i32 %_secret_addtmp187, i32 13)
  %_secret_xortmp189 = xor i32 %_secret_lval184, %rotltmp188
  store i32 %_secret_xortmp189, i32* %_secret___v122_x11
  %_secret_lval190 = load i32, i32* %_secret___v117_x15
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval191 = load i32, i32* %_secret___v122_x11
  %_secret_lval192 = load i32, i32* %_secret___v127_x7
  %_secret_addtmp193 = add i32 %_secret_lval191, %_secret_lval192
  %rotltmp194 = call i32 @__rotl32(i32 %_secret_addtmp193, i32 18)
  %_secret_xortmp195 = xor i32 %_secret_lval190, %rotltmp194
  store i32 %_secret_xortmp195, i32* %_secret___v117_x15
  %_secret_lval196 = load i32, i32* %_secret___v118_x1
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval197 = load i32, i32* %_secret___v114_x0
  %_secret_lval198 = load i32, i32* %_secret___v120_x3
  %_secret_addtmp199 = add i32 %_secret_lval197, %_secret_lval198
  %rotltmp200 = call i32 @__rotl32(i32 %_secret_addtmp199, i32 7)
  %_secret_xortmp201 = xor i32 %_secret_lval196, %rotltmp200
  store i32 %_secret_xortmp201, i32* %_secret___v118_x1
  %_secret_lval202 = load i32, i32* %_secret___v119_x2
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval203 = load i32, i32* %_secret___v118_x1
  %_secret_lval204 = load i32, i32* %_secret___v114_x0
  %_secret_addtmp205 = add i32 %_secret_lval203, %_secret_lval204
  %rotltmp206 = call i32 @__rotl32(i32 %_secret_addtmp205, i32 9)
  %_secret_xortmp207 = xor i32 %_secret_lval202, %rotltmp206
  store i32 %_secret_xortmp207, i32* %_secret___v119_x2
  %_secret_lval208 = load i32, i32* %_secret___v120_x3
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval209 = load i32, i32* %_secret___v119_x2
  %_secret_lval210 = load i32, i32* %_secret___v118_x1
  %_secret_addtmp211 = add i32 %_secret_lval209, %_secret_lval210
  %rotltmp212 = call i32 @__rotl32(i32 %_secret_addtmp211, i32 13)
  %_secret_xortmp213 = xor i32 %_secret_lval208, %rotltmp212
  store i32 %_secret_xortmp213, i32* %_secret___v120_x3
  %_secret_lval214 = load i32, i32* %_secret___v114_x0
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval215 = load i32, i32* %_secret___v120_x3
  %_secret_lval216 = load i32, i32* %_secret___v119_x2
  %_secret_addtmp217 = add i32 %_secret_lval215, %_secret_lval216
  %rotltmp218 = call i32 @__rotl32(i32 %_secret_addtmp217, i32 18)
  %_secret_xortmp219 = xor i32 %_secret_lval214, %rotltmp218
  store i32 %_secret_xortmp219, i32* %_secret___v114_x0
  %_secret_lval220 = load i32, i32* %_secret___v126_x6
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval221 = load i32, i32* %_secret___v115_x5
  %_secret_lval222 = load i32, i32* %_secret___v121_x4
  %_secret_addtmp223 = add i32 %_secret_lval221, %_secret_lval222
  %rotltmp224 = call i32 @__rotl32(i32 %_secret_addtmp223, i32 7)
  %_secret_xortmp225 = xor i32 %_secret_lval220, %rotltmp224
  store i32 %_secret_xortmp225, i32* %_secret___v126_x6
  %_secret_lval226 = load i32, i32* %_secret___v127_x7
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval227 = load i32, i32* %_secret___v126_x6
  %_secret_lval228 = load i32, i32* %_secret___v115_x5
  %_secret_addtmp229 = add i32 %_secret_lval227, %_secret_lval228
  %rotltmp230 = call i32 @__rotl32(i32 %_secret_addtmp229, i32 9)
  %_secret_xortmp231 = xor i32 %_secret_lval226, %rotltmp230
  store i32 %_secret_xortmp231, i32* %_secret___v127_x7
  %_secret_lval232 = load i32, i32* %_secret___v121_x4
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval233 = load i32, i32* %_secret___v127_x7
  %_secret_lval234 = load i32, i32* %_secret___v126_x6
  %_secret_addtmp235 = add i32 %_secret_lval233, %_secret_lval234
  %rotltmp236 = call i32 @__rotl32(i32 %_secret_addtmp235, i32 13)
  %_secret_xortmp237 = xor i32 %_secret_lval232, %rotltmp236
  store i32 %_secret_xortmp237, i32* %_secret___v121_x4
  %_secret_lval238 = load i32, i32* %_secret___v115_x5
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval239 = load i32, i32* %_secret___v121_x4
  %_secret_lval240 = load i32, i32* %_secret___v127_x7
  %_secret_addtmp241 = add i32 %_secret_lval239, %_secret_lval240
  %rotltmp242 = call i32 @__rotl32(i32 %_secret_addtmp241, i32 18)
  %_secret_xortmp243 = xor i32 %_secret_lval238, %rotltmp242
  store i32 %_secret_xortmp243, i32* %_secret___v115_x5
  %_secret_lval244 = load i32, i32* %_secret___v122_x11
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval245 = load i32, i32* %_secret___v116_x10
  %_secret_lval246 = load i32, i32* %_secret___v129_x9
  %_secret_addtmp247 = add i32 %_secret_lval245, %_secret_lval246
  %rotltmp248 = call i32 @__rotl32(i32 %_secret_addtmp247, i32 7)
  %_secret_xortmp249 = xor i32 %_secret_lval244, %rotltmp248
  store i32 %_secret_xortmp249, i32* %_secret___v122_x11
  %_secret_lval250 = load i32, i32* %_secret___v128_x8
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval251 = load i32, i32* %_secret___v122_x11
  %_secret_lval252 = load i32, i32* %_secret___v116_x10
  %_secret_addtmp253 = add i32 %_secret_lval251, %_secret_lval252
  %rotltmp254 = call i32 @__rotl32(i32 %_secret_addtmp253, i32 9)
  %_secret_xortmp255 = xor i32 %_secret_lval250, %rotltmp254
  store i32 %_secret_xortmp255, i32* %_secret___v128_x8
  %_secret_lval256 = load i32, i32* %_secret___v129_x9
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval257 = load i32, i32* %_secret___v128_x8
  %_secret_lval258 = load i32, i32* %_secret___v122_x11
  %_secret_addtmp259 = add i32 %_secret_lval257, %_secret_lval258
  %rotltmp260 = call i32 @__rotl32(i32 %_secret_addtmp259, i32 13)
  %_secret_xortmp261 = xor i32 %_secret_lval256, %rotltmp260
  store i32 %_secret_xortmp261, i32* %_secret___v129_x9
  %_secret_lval262 = load i32, i32* %_secret___v116_x10
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval263 = load i32, i32* %_secret___v129_x9
  %_secret_lval264 = load i32, i32* %_secret___v128_x8
  %_secret_addtmp265 = add i32 %_secret_lval263, %_secret_lval264
  %rotltmp266 = call i32 @__rotl32(i32 %_secret_addtmp265, i32 18)
  %_secret_xortmp267 = xor i32 %_secret_lval262, %rotltmp266
  store i32 %_secret_xortmp267, i32* %_secret___v116_x10
  %_secret_lval268 = load i32, i32* %_secret___v123_x12
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval269 = load i32, i32* %_secret___v117_x15
  %_secret_lval270 = load i32, i32* %_secret___v125_x14
  %_secret_addtmp271 = add i32 %_secret_lval269, %_secret_lval270
  %rotltmp272 = call i32 @__rotl32(i32 %_secret_addtmp271, i32 7)
  %_secret_xortmp273 = xor i32 %_secret_lval268, %rotltmp272
  store i32 %_secret_xortmp273, i32* %_secret___v123_x12
  %_secret_lval274 = load i32, i32* %_secret___v124_x13
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval275 = load i32, i32* %_secret___v123_x12
  %_secret_lval276 = load i32, i32* %_secret___v117_x15
  %_secret_addtmp277 = add i32 %_secret_lval275, %_secret_lval276
  %rotltmp278 = call i32 @__rotl32(i32 %_secret_addtmp277, i32 9)
  %_secret_xortmp279 = xor i32 %_secret_lval274, %rotltmp278
  store i32 %_secret_xortmp279, i32* %_secret___v124_x13
  %_secret_lval280 = load i32, i32* %_secret___v125_x14
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval281 = load i32, i32* %_secret___v124_x13
  %_secret_lval282 = load i32, i32* %_secret___v123_x12
  %_secret_addtmp283 = add i32 %_secret_lval281, %_secret_lval282
  %rotltmp284 = call i32 @__rotl32(i32 %_secret_addtmp283, i32 13)
  %_secret_xortmp285 = xor i32 %_secret_lval280, %rotltmp284
  store i32 %_secret_xortmp285, i32* %_secret___v125_x14
  %_secret_lval286 = load i32, i32* %_secret___v117_x15
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval287 = load i32, i32* %_secret___v125_x14
  %_secret_lval288 = load i32, i32* %_secret___v124_x13
  %_secret_addtmp289 = add i32 %_secret_lval287, %_secret_lval288
  %rotltmp290 = call i32 @__rotl32(i32 %_secret_addtmp289, i32 18)
  %_secret_xortmp291 = xor i32 %_secret_lval286, %rotltmp290
  store i32 %_secret_xortmp291, i32* %_secret___v117_x15
  br label %branchmerge

elsebranch:                                       ; preds = %entry
  br label %branchmerge

branchmerge:                                      ; preds = %elsebranch, %thenbranch
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_ldedviewptr292 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep293 = getelementptr inbounds i8, i8* %_secret_ldedviewptr292, i8 0
  %_secret_arrviewdyn294 = alloca i8*
  store i8* %_secret_source_gep293, i8** %_secret_arrviewdyn294
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_ldedviewptr295 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep296 = getelementptr inbounds i8, i8* %_secret_ldedviewptr295, i8 0
  %_secret_arrviewdyn297 = alloca i8*
  store i8* %_secret_source_gep296, i8** %_secret_arrviewdyn297
  %_secret_dynarrarg298 = load i8*, i8** %_secret_arrviewdyn297
  %_secret_lval299 = load i32, i32* %_secret___v114_x0
  call void @_store32_le(i8* %_secret_dynarrarg298, i32 %_secret_lval299)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_ldedviewptr300 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep301 = getelementptr inbounds i8, i8* %_secret_ldedviewptr300, i8 4
  %_secret_arrviewdyn302 = alloca i8*
  store i8* %_secret_source_gep301, i8** %_secret_arrviewdyn302
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_ldedviewptr303 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep304 = getelementptr inbounds i8, i8* %_secret_ldedviewptr303, i8 4
  %_secret_arrviewdyn305 = alloca i8*
  store i8* %_secret_source_gep304, i8** %_secret_arrviewdyn305
  %_secret_dynarrarg306 = load i8*, i8** %_secret_arrviewdyn305
  %_secret_lval307 = load i32, i32* %_secret___v115_x5
  call void @_store32_le(i8* %_secret_dynarrarg306, i32 %_secret_lval307)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_ldedviewptr308 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep309 = getelementptr inbounds i8, i8* %_secret_ldedviewptr308, i8 8
  %_secret_arrviewdyn310 = alloca i8*
  store i8* %_secret_source_gep309, i8** %_secret_arrviewdyn310
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_ldedviewptr311 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep312 = getelementptr inbounds i8, i8* %_secret_ldedviewptr311, i8 8
  %_secret_arrviewdyn313 = alloca i8*
  store i8* %_secret_source_gep312, i8** %_secret_arrviewdyn313
  %_secret_dynarrarg314 = load i8*, i8** %_secret_arrviewdyn313
  %_secret_lval315 = load i32, i32* %_secret___v116_x10
  call void @_store32_le(i8* %_secret_dynarrarg314, i32 %_secret_lval315)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_ldedviewptr316 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep317 = getelementptr inbounds i8, i8* %_secret_ldedviewptr316, i8 12
  %_secret_arrviewdyn318 = alloca i8*
  store i8* %_secret_source_gep317, i8** %_secret_arrviewdyn318
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_ldedviewptr319 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep320 = getelementptr inbounds i8, i8* %_secret_ldedviewptr319, i8 12
  %_secret_arrviewdyn321 = alloca i8*
  store i8* %_secret_source_gep320, i8** %_secret_arrviewdyn321
  %_secret_dynarrarg322 = load i8*, i8** %_secret_arrviewdyn321
  %_secret_lval323 = load i32, i32* %_secret___v117_x15
  call void @_store32_le(i8* %_secret_dynarrarg322, i32 %_secret_lval323)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_ldedviewptr324 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep325 = getelementptr inbounds i8, i8* %_secret_ldedviewptr324, i8 16
  %_secret_arrviewdyn326 = alloca i8*
  store i8* %_secret_source_gep325, i8** %_secret_arrviewdyn326
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_ldedviewptr327 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep328 = getelementptr inbounds i8, i8* %_secret_ldedviewptr327, i8 16
  %_secret_arrviewdyn329 = alloca i8*
  store i8* %_secret_source_gep328, i8** %_secret_arrviewdyn329
  %_secret_dynarrarg330 = load i8*, i8** %_secret_arrviewdyn329
  %_secret_lval331 = load i32, i32* %_secret___v126_x6
  call void @_store32_le(i8* %_secret_dynarrarg330, i32 %_secret_lval331)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_ldedviewptr332 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep333 = getelementptr inbounds i8, i8* %_secret_ldedviewptr332, i8 20
  %_secret_arrviewdyn334 = alloca i8*
  store i8* %_secret_source_gep333, i8** %_secret_arrviewdyn334
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_ldedviewptr335 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep336 = getelementptr inbounds i8, i8* %_secret_ldedviewptr335, i8 20
  %_secret_arrviewdyn337 = alloca i8*
  store i8* %_secret_source_gep336, i8** %_secret_arrviewdyn337
  %_secret_dynarrarg338 = load i8*, i8** %_secret_arrviewdyn337
  %_secret_lval339 = load i32, i32* %_secret___v127_x7
  call void @_store32_le(i8* %_secret_dynarrarg338, i32 %_secret_lval339)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_ldedviewptr340 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep341 = getelementptr inbounds i8, i8* %_secret_ldedviewptr340, i8 24
  %_secret_arrviewdyn342 = alloca i8*
  store i8* %_secret_source_gep341, i8** %_secret_arrviewdyn342
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_ldedviewptr343 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep344 = getelementptr inbounds i8, i8* %_secret_ldedviewptr343, i8 24
  %_secret_arrviewdyn345 = alloca i8*
  store i8* %_secret_source_gep344, i8** %_secret_arrviewdyn345
  %_secret_dynarrarg346 = load i8*, i8** %_secret_arrviewdyn345
  %_secret_lval347 = load i32, i32* %_secret___v128_x8
  call void @_store32_le(i8* %_secret_dynarrarg346, i32 %_secret_lval347)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_ldedviewptr348 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep349 = getelementptr inbounds i8, i8* %_secret_ldedviewptr348, i8 28
  %_secret_arrviewdyn350 = alloca i8*
  store i8* %_secret_source_gep349, i8** %_secret_arrviewdyn350
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_ldedviewptr351 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep352 = getelementptr inbounds i8, i8* %_secret_ldedviewptr351, i8 28
  %_secret_arrviewdyn353 = alloca i8*
  store i8* %_secret_source_gep352, i8** %_secret_arrviewdyn353
  %_secret_dynarrarg354 = load i8*, i8** %_secret_arrviewdyn353
  %_secret_lval355 = load i32, i32* %_secret___v129_x9
  call void @_store32_le(i8* %_secret_dynarrarg354, i32 %_secret_lval355)
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
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_public_ldedviewptr = load i8*, i8** %_public_arrarg
  %_public_source_gep = getelementptr inbounds i8, i8* %_public_ldedviewptr, i8 0
  %_public_arrviewdyn = alloca i8*
  store i8* %_public_source_gep, i8** %_public_arrviewdyn
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_public_ldedviewptr6 = load i8*, i8** %_public_arrarg
  %_public_source_gep7 = getelementptr inbounds i8, i8* %_public_ldedviewptr6, i8 0
  %_public_arrviewdyn8 = alloca i8*
  store i8* %_public_source_gep7, i8** %_public_arrviewdyn8
  %_secret_dynarrarg = load i8*, i8** %_public_arrviewdyn8
  %_secret_dynarrarg9 = load i8*, i8** %_secret_arrarg4
  call void @_crypto_core_hsalsa20(i8* %_secret_arrtoptr, i8* %_secret_dynarrarg, i8* %_secret_dynarrarg9)
  %_secret_dynarrarg10 = load i8*, i8** %_secret_arrarg
  %_public_lval = load i32, i32* %_public___c_len
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_public_ldedviewptr11 = load i8*, i8** %_public_arrarg
  %_public_source_gep12 = getelementptr inbounds i8, i8* %_public_ldedviewptr11, i8 16
  %_public_arrviewdyn13 = alloca i8*
  store i8* %_public_source_gep12, i8** %_public_arrviewdyn13
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
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
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_public_ldedviewptr = load i8*, i8** %_public_arrarg
  %_public_source_gep = getelementptr inbounds i8, i8* %_public_ldedviewptr, i8 0
  %_public_arrviewdyn = alloca i8*
  store i8* %_public_source_gep, i8** %_public_arrviewdyn
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_public_ldedviewptr10 = load i8*, i8** %_public_arrarg
  %_public_source_gep11 = getelementptr inbounds i8, i8* %_public_ldedviewptr10, i8 0
  %_public_arrviewdyn12 = alloca i8*
  store i8* %_public_source_gep11, i8** %_public_arrviewdyn12
  %_secret_dynarrarg = load i8*, i8** %_public_arrviewdyn12
  %_secret_dynarrarg13 = load i8*, i8** %_secret_arrarg8
  call void @_crypto_core_hsalsa20(i8* %_secret_arrtoptr, i8* %_secret_dynarrarg, i8* %_secret_dynarrarg13)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
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
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_public_lval14 = load i32, i32* %_public___c_len
  %_public_icast = zext i32 %_public_lval14 to i64
  %_public_slttmp = icmp slt i64 16, %_public_icast
  %_public_zexttmp = zext i1 %_public_slttmp to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp)
  call void @__VERIFIER_assert(i32 1)
  %_public_lval15 = load i32, i32* %_public___c_len
  %_public_icast16 = zext i32 %_public_lval15 to i64
  %_public_slttmp17 = icmp slt i64 31, %_public_icast16
  %_public_zexttmp18 = zext i1 %_public_slttmp17 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp18)
  %_secret_ldedviewptr = load i8*, i8** %_secret_arrarg
  %_secret_source_gep = getelementptr inbounds i8, i8* %_secret_ldedviewptr, i8 16
  %_secret___v136_cview = alloca i8*
  store i8* %_secret_source_gep, i8** %_secret___v136_cview
  %_public_lval19 = load i32, i32* %_public___c_len
  %_public_subtmp = sub i32 %_public_lval19, 32
  store i32 %_public_subtmp, i32* %_public___v138___v137_len
  %_public_lval20 = load i32, i32* %_public___v138___v137_len
  %_public_icast21 = zext i32 %_public_lval20 to i64
  %_public_addtmp = add i64 32, %_public_icast21
  %_public_truncbinop = trunc i64 %_public_addtmp to i8
  %_public_sgttmp = icmp sgt i8 %_public_truncbinop, 32
  %_public_zexttmp22 = zext i1 %_public_sgttmp to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp22)
  call void @__VERIFIER_assert(i32 1)
  %_public_lval23 = load i32, i32* %_public___c_len
  %_public_icast24 = zext i32 %_public_lval23 to i64
  %_public_slttmp25 = icmp slt i64 32, %_public_icast24
  %_public_zexttmp26 = zext i1 %_public_slttmp25 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp26)
  %_public_lval27 = load i32, i32* %_public___v138___v137_len
  %_public_icast28 = zext i32 %_public_lval27 to i64
  %_public_addtmp29 = add i64 32, %_public_icast28
  %_public_truncbinop30 = trunc i64 %_public_addtmp29 to i8
  %_public_subtmp31 = sub i8 %_public_truncbinop30, 1
  %_public_lhssext = sext i8 %_public_subtmp31 to i64
  %_public_sgtetmp = icmp sge i64 %_public_lhssext, 0
  %_public_zexttmp32 = zext i1 %_public_sgtetmp to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp32)
  %_public_lval33 = load i32, i32* %_public___v138___v137_len
  %_public_icast34 = zext i32 %_public_lval33 to i64
  %_public_addtmp35 = add i64 32, %_public_icast34
  %_public_truncbinop36 = trunc i64 %_public_addtmp35 to i8
  %_public_subtmp37 = sub i8 %_public_truncbinop36, 1
  %_public_lval38 = load i32, i32* %_public___c_len
  %_public_icast39 = zext i32 %_public_lval38 to i64
  %_public_lhssext40 = sext i8 %_public_subtmp37 to i64
  %_public_slttmp41 = icmp slt i64 %_public_lhssext40, %_public_icast39
  %_public_zexttmp42 = zext i1 %_public_slttmp41 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp42)
  %_secret_ldedviewptr43 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep44 = getelementptr inbounds i8, i8* %_secret_ldedviewptr43, i8 32
  %_secret___v139_mview = alloca i8*
  store i8* %_secret_source_gep44, i8** %_secret___v139_mview
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_public_lval45 = load i32, i32* %_public___c_len
  %_public_icast46 = zext i32 %_public_lval45 to i64
  %_public_slttmp47 = icmp slt i64 0, %_public_icast46
  %_public_zexttmp48 = zext i1 %_public_slttmp47 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp48)
  call void @__VERIFIER_assert(i32 1)
  %_public_lval49 = load i32, i32* %_public___c_len
  %_public_icast50 = zext i32 %_public_lval49 to i64
  %_public_slttmp51 = icmp slt i64 31, %_public_icast50
  %_public_zexttmp52 = zext i1 %_public_slttmp51 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp52)
  %_secret_ldedviewptr53 = load i8*, i8** %_secret_arrarg
  %_secret_source_gep54 = getelementptr inbounds i8, i8* %_secret_ldedviewptr53, i8 0
  %_secret___v140_kview = alloca i8*
  store i8* %_secret_source_gep54, i8** %_secret___v140_kview
  %_secret_dynarrarg55 = load i8*, i8** %_secret___v136_cview
  %_secret_dynarrarg56 = load i8*, i8** %_secret___v139_mview
  %_public_lval57 = load i32, i32* %_public___v138___v137_len
  %_secret_dynarrarg58 = load i8*, i8** %_secret___v140_kview
  %1 = call i32 @_crypto_onetimeauth_poly1305(i8* %_secret_dynarrarg55, i8* %_secret_dynarrarg56, i32 %_public_lval57, i8* %_secret_dynarrarg58)
  %_public_calltmp = call i32 @__VERIFIER_nondet_signed_int()
  store i32 %_public_calltmp, i32* %_public___v141_i
  %_public_lval59 = load i32, i32* %_public___v141_i
  %_public_slttmp60 = icmp slt i32 %_public_lval59, 16
  %_public_branchcompare61 = icmp eq i1 %_public_slttmp60, true
  br i1 %_public_branchcompare61, label %thenbranch62, label %elsebranch83

thenbranch62:                                     ; preds = %branchmerge
  %_public_lval63 = load i32, i32* %_public___v141_i
  %_public_lval64 = load i32, i32* %_public___v141_i
  %_public_addtmp65 = add i32 %_public_lval64, 1
  %_public_slttmp66 = icmp slt i32 %_public_lval63, %_public_addtmp65
  %_public_zexttmp67 = zext i1 %_public_slttmp66 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp67)
  %_public_lval68 = load i32, i32* %_public___v141_i
  %_public_slttmp69 = icmp slt i32 0, %_public_lval68
  %_public_lval70 = load i32, i32* %_public___v141_i
  %_public_eqtmp = icmp eq i32 0, %_public_lval70
  %_public_lortmp = or i1 %_public_slttmp69, %_public_eqtmp
  %_public_zexttmp71 = zext i1 %_public_lortmp to i32
  call void @__VERIFIER_assume(i32 %_public_zexttmp71)
  %_public_lval72 = load i32, i32* %_public___v141_i
  %_public_lhssext73 = sext i32 %_public_lval72 to i64
  %_public_sgtetmp74 = icmp sge i64 %_public_lhssext73, 0
  %_public_zexttmp75 = zext i1 %_public_sgtetmp74 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp75)
  %_public_lval76 = load i32, i32* %_public___v141_i
  %_public_lval77 = load i32, i32* %_public___c_len
  %_public_icast78 = zext i32 %_public_lval77 to i64
  %_public_lhssext79 = sext i32 %_public_lval76 to i64
  %_public_slttmp80 = icmp slt i64 %_public_lhssext79, %_public_icast78
  %_public_zexttmp81 = zext i1 %_public_slttmp80 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp81)
  %_public_lval82 = load i32, i32* %_public___v141_i
  %_secret_dyn = load i8*, i8** %_secret_arrarg
  %_secret_ptr = getelementptr inbounds i8, i8* %_secret_dyn, i32 %_public_lval82
  store i8 0, i8* %_secret_ptr
  br label %branchmerge84

elsebranch83:                                     ; preds = %branchmerge
  br label %branchmerge84

branchmerge84:                                    ; preds = %elsebranch83, %thenbranch62
  store i1 true, i1* %_public___rval
  %_public_lval85 = load i1, i1* %_public___rval
  ret i1 %_public_lval85
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
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_public_lval10 = load i32, i32* %_public___c_len
  %_public_icast = zext i32 %_public_lval10 to i64
  %_public_slttmp = icmp slt i64 16, %_public_icast
  %_public_zexttmp = zext i1 %_public_slttmp to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp)
  call void @__VERIFIER_assert(i32 1)
  %_public_lval11 = load i32, i32* %_public___c_len
  %_public_icast12 = zext i32 %_public_lval11 to i64
  %_public_slttmp13 = icmp slt i64 31, %_public_icast12
  %_public_zexttmp14 = zext i1 %_public_slttmp13 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp14)
  %_public_ldedviewptr = load i8*, i8** %_public_arrarg
  %_public_source_gep = getelementptr inbounds i8, i8* %_public_ldedviewptr, i8 16
  %_public___v143_tmp1 = alloca i8*
  store i8* %_public_source_gep, i8** %_public___v143_tmp1
  %_public_lval15 = load i32, i32* %_public___c_len
  %_public_subtmp = sub i32 %_public_lval15, 32
  store i32 %_public_subtmp, i32* %_public___v145___v144_len
  %_public_lval16 = load i32, i32* %_public___v145___v144_len
  %_public_icast17 = zext i32 %_public_lval16 to i64
  %_public_addtmp = add i64 32, %_public_icast17
  %_public_truncbinop = trunc i64 %_public_addtmp to i8
  %_public_sgttmp = icmp sgt i8 %_public_truncbinop, 32
  %_public_zexttmp18 = zext i1 %_public_sgttmp to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp18)
  call void @__VERIFIER_assert(i32 1)
  %_public_lval19 = load i32, i32* %_public___c_len
  %_public_icast20 = zext i32 %_public_lval19 to i64
  %_public_slttmp21 = icmp slt i64 32, %_public_icast20
  %_public_zexttmp22 = zext i1 %_public_slttmp21 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp22)
  %_public_lval23 = load i32, i32* %_public___v145___v144_len
  %_public_icast24 = zext i32 %_public_lval23 to i64
  %_public_addtmp25 = add i64 32, %_public_icast24
  %_public_truncbinop26 = trunc i64 %_public_addtmp25 to i8
  %_public_subtmp27 = sub i8 %_public_truncbinop26, 1
  %_public_lhssext = sext i8 %_public_subtmp27 to i64
  %_public_sgtetmp = icmp sge i64 %_public_lhssext, 0
  %_public_zexttmp28 = zext i1 %_public_sgtetmp to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp28)
  %_public_lval29 = load i32, i32* %_public___v145___v144_len
  %_public_icast30 = zext i32 %_public_lval29 to i64
  %_public_addtmp31 = add i64 32, %_public_icast30
  %_public_truncbinop32 = trunc i64 %_public_addtmp31 to i8
  %_public_subtmp33 = sub i8 %_public_truncbinop32, 1
  %_public_lval34 = load i32, i32* %_public___c_len
  %_public_icast35 = zext i32 %_public_lval34 to i64
  %_public_lhssext36 = sext i8 %_public_subtmp33 to i64
  %_public_slttmp37 = icmp slt i64 %_public_lhssext36, %_public_icast35
  %_public_zexttmp38 = zext i1 %_public_slttmp37 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp38)
  %_public_ldedviewptr39 = load i8*, i8** %_public_arrarg
  %_public_source_gep40 = getelementptr inbounds i8, i8* %_public_ldedviewptr39, i8 32
  %_public___v146_cview = alloca i8*
  store i8* %_public_source_gep40, i8** %_public___v146_cview
  %_public_dynarrarg41 = load i8*, i8** %_public___v143_tmp1
  %_public_dynarrarg42 = load i8*, i8** %_public___v146_cview
  %_public_lval43 = load i32, i32* %_public___v145___v144_len
  %_secret_arrtoptr44 = bitcast [32 x i8]* %_secret___v142_subkey to i8*
  %_public_calltmp = call i1 @_crypto_onetimeauth_poly1305_verify(i8* %_public_dynarrarg41, i8* %_public_dynarrarg42, i32 %_public_lval43, i8* %_secret_arrtoptr44)
  %_public_lnottmp = xor i1 %_public_calltmp, true
  %_public_branchcompare45 = icmp eq i1 %_public_lnottmp, true
  br i1 %_public_branchcompare45, label %thenbranch46, label %elsebranch48

thenbranch46:                                     ; preds = %branchmerge
  store i1 false, i1* %_public___rval
  %_public_lval47 = load i1, i1* %_public___rval
  ret i1 %_public_lval47

elsebranch48:                                     ; preds = %branchmerge
  br label %branchmerge49

branchmerge49:                                    ; preds = %elsebranch48
  %_secret_dynarrarg50 = load i8*, i8** %_secret_arrarg
  %_public_lval51 = load i32, i32* %_public___m_len
  %_secret_dynarrarg52 = load i8*, i8** %_public_arrarg
  %_public_lval53 = load i32, i32* %_public___c_len
  %_public_dynarrarg54 = load i8*, i8** %_public_arrarg5
  %_secret_dynarrarg55 = load i8*, i8** %_secret_arrarg7
  %1 = call i32 @_crypto_stream_xsalsa20_xor(i8* %_secret_dynarrarg50, i32 %_public_lval51, i8* %_secret_dynarrarg52, i32 %_public_lval53, i8* %_public_dynarrarg54, i8* %_secret_dynarrarg55)
  %_public_calltmp56 = call i32 @__VERIFIER_nondet_unsigned_int()
  store i32 %_public_calltmp56, i32* %_public___v147_i
  %_public_lval57 = load i32, i32* %_public___v147_i
  %_public_ulttmp58 = icmp ult i32 %_public_lval57, 32
  %_public_branchcompare59 = icmp eq i1 %_public_ulttmp58, true
  br i1 %_public_branchcompare59, label %thenbranch60, label %elsebranch80

thenbranch60:                                     ; preds = %branchmerge49
  %_public_lval61 = load i32, i32* %_public___v147_i
  %_public_lval62 = load i32, i32* %_public___v147_i
  %_public_addtmp63 = add i32 %_public_lval62, 1
  %_public_ulttmp64 = icmp ult i32 %_public_lval61, %_public_addtmp63
  %_public_zexttmp65 = zext i1 %_public_ulttmp64 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp65)
  %_public_lval66 = load i32, i32* %_public___v147_i
  %_public_ulttmp67 = icmp ult i32 0, %_public_lval66
  %_public_lval68 = load i32, i32* %_public___v147_i
  %_public_eqtmp = icmp eq i32 0, %_public_lval68
  %_public_lortmp = or i1 %_public_ulttmp67, %_public_eqtmp
  %_public_zexttmp69 = zext i1 %_public_lortmp to i32
  call void @__VERIFIER_assume(i32 %_public_zexttmp69)
  %_public_lval70 = load i32, i32* %_public___v147_i
  %_public_lhssext71 = zext i32 %_public_lval70 to i64
  %_public_ugtetmp = icmp uge i64 %_public_lhssext71, 0
  %_public_zexttmp72 = zext i1 %_public_ugtetmp to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp72)
  %_public_lval73 = load i32, i32* %_public___v147_i
  %_public_lval74 = load i32, i32* %_public___m_len
  %_public_icast75 = zext i32 %_public_lval74 to i64
  %_public_lhssext76 = zext i32 %_public_lval73 to i64
  %_public_ulttmp77 = icmp ult i64 %_public_lhssext76, %_public_icast75
  %_public_zexttmp78 = zext i1 %_public_ulttmp77 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp78)
  %_public_lval79 = load i32, i32* %_public___v147_i
  %_secret_dyn = load i8*, i8** %_secret_arrarg
  %_secret_ptr = getelementptr inbounds i8, i8* %_secret_dyn, i32 %_public_lval79
  store i8 0, i8* %_secret_ptr
  br label %branchmerge81

elsebranch80:                                     ; preds = %branchmerge49
  br label %branchmerge81

branchmerge81:                                    ; preds = %elsebranch80, %thenbranch60
  store i1 true, i1* %_public___rval
  %_public_lval82 = load i1, i1* %_public___rval
  ret i1 %_public_lval82
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