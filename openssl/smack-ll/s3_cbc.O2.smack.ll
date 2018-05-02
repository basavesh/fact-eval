; verify with: smack --bit-precise --entry-point=[...]
; ModuleID = 'SmackModule'
source_filename = "SmackModule"

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

define internal void @_memcpy(i8* %_secret_arrarg1, i32 %_public___dst_len2, i8* %_secret_arrarg4, i32 %_public___src_len5) {
entry:
  %_secret_arrarg = alloca i8*
  store i8* %_secret_arrarg1, i8** %_secret_arrarg
  %_public___dst_len = alloca i32
  store i32 %_public___dst_len2, i32* %_public___dst_len
  %_secret_arrarg3 = alloca i8*
  store i8* %_secret_arrarg4, i8** %_secret_arrarg3
  %_public___src_len = alloca i32
  store i32 %_public___src_len5, i32* %_public___src_len
  %_secret___rnset = alloca i1
  %_public___v1_i = alloca i64
  store i1 true, i1* %_secret___rnset
  %_public_calltmp = call i64 @__VERIFIER_nondet_unsigned_long_long()
  store i64 %_public_calltmp, i64* %_public___v1_i
  %_public_lval = load i64, i64* %_public___v1_i
  %_public_lval6 = load i32, i32* %_public___src_len
  %_public_rhssext = zext i32 %_public_lval6 to i64
  %_public_ulttmp = icmp ult i64 %_public_lval, %_public_rhssext
  %_public_branchcompare = icmp eq i1 %_public_ulttmp, true
  br i1 %_public_branchcompare, label %thenbranch, label %elsebranch

thenbranch:                                       ; preds = %entry
  %_public_lval7 = load i64, i64* %_public___v1_i
  %_public_lval8 = load i64, i64* %_public___v1_i
  %_public_addtmp = add i64 %_public_lval8, 1
  %_public_ulttmp9 = icmp ult i64 %_public_lval7, %_public_addtmp
  %_public_zexttmp = zext i1 %_public_ulttmp9 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp)
  %_public_lval10 = load i64, i64* %_public___v1_i
  %_public_ulttmp11 = icmp ult i64 0, %_public_lval10
  %_public_lval12 = load i64, i64* %_public___v1_i
  %_public_eqtmp = icmp eq i64 0, %_public_lval12
  %_public_lortmp = or i1 %_public_ulttmp11, %_public_eqtmp
  %_public_zexttmp13 = zext i1 %_public_lortmp to i32
  call void @__VERIFIER_assume(i32 %_public_zexttmp13)
  %_public_lval14 = load i64, i64* %_public___v1_i
  %_public_ugtetmp = icmp uge i64 %_public_lval14, 0
  %_public_zexttmp15 = zext i1 %_public_ugtetmp to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp15)
  %_public_lval16 = load i64, i64* %_public___v1_i
  %_public_lval17 = load i32, i32* %_public___dst_len
  %_public_icast = zext i32 %_public_lval17 to i64
  %_public_ulttmp18 = icmp ult i64 %_public_lval16, %_public_icast
  %_public_zexttmp19 = zext i1 %_public_ulttmp18 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp19)
  %_public_lval20 = load i64, i64* %_public___v1_i
  %_secret_dyn = load i8*, i8** %_secret_arrarg
  %_secret_ptr = getelementptr inbounds i8, i8* %_secret_dyn, i64 %_public_lval20
  %_public_lval21 = load i64, i64* %_public___v1_i
  %_public_ugtetmp22 = icmp uge i64 %_public_lval21, 0
  %_public_zexttmp23 = zext i1 %_public_ugtetmp22 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp23)
  %_public_lval24 = load i64, i64* %_public___v1_i
  %_public_lval25 = load i32, i32* %_public___src_len
  %_public_icast26 = zext i32 %_public_lval25 to i64
  %_public_ulttmp27 = icmp ult i64 %_public_lval24, %_public_icast26
  %_public_zexttmp28 = zext i1 %_public_ulttmp27 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp28)
  %_public_lval29 = load i64, i64* %_public___v1_i
  %_secret_dyn30 = load i8*, i8** %_secret_arrarg3
  %_secret_ptr31 = getelementptr inbounds i8, i8* %_secret_dyn30, i64 %_public_lval29
  %_secret_lval = load i8, i8* %_secret_ptr31
  store i8 %_secret_lval, i8* %_secret_ptr
  br label %branchmerge

elsebranch:                                       ; preds = %entry
  br label %branchmerge

branchmerge:                                      ; preds = %elsebranch, %thenbranch
  ret void
}

; Function Attrs: alwaysinline
define internal i1 @_crypto_verify_16(i8* %_secret_arrarg1, i8* %_secret_arrarg3) #2 {
entry:
  %_secret_arrarg = alloca i8*
  store i8* %_secret_arrarg1, i8** %_secret_arrarg
  %_secret_arrarg2 = alloca i8*
  store i8* %_secret_arrarg3, i8** %_secret_arrarg2
  %_secret___rval = alloca i1
  %_secret___rnset = alloca i1
  %_public___v2_i = alloca i32
  %_secret___m1 = alloca i1
  store i1 false, i1* %_secret___rval
  store i1 true, i1* %_secret___rnset
  %_public_calltmp = call i32 @__VERIFIER_nondet_unsigned_int()
  store i32 %_public_calltmp, i32* %_public___v2_i
  %_public_lval = load i32, i32* %_public___v2_i
  %_public_ulttmp = icmp ult i32 %_public_lval, 16
  %_public_branchcompare = icmp eq i1 %_public_ulttmp, true
  br i1 %_public_branchcompare, label %thenbranch, label %elsebranch

thenbranch:                                       ; preds = %entry
  %_public_lval4 = load i32, i32* %_public___v2_i
  %_public_lval5 = load i32, i32* %_public___v2_i
  %_public_addtmp = add i32 %_public_lval5, 1
  %_public_ulttmp6 = icmp ult i32 %_public_lval4, %_public_addtmp
  %_public_zexttmp = zext i1 %_public_ulttmp6 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp)
  %_public_lval7 = load i32, i32* %_public___v2_i
  %_public_ulttmp8 = icmp ult i32 0, %_public_lval7
  %_public_lval9 = load i32, i32* %_public___v2_i
  %_public_eqtmp = icmp eq i32 0, %_public_lval9
  %_public_lortmp = or i1 %_public_ulttmp8, %_public_eqtmp
  %_public_zexttmp10 = zext i1 %_public_lortmp to i32
  call void @__VERIFIER_assume(i32 %_public_zexttmp10)
  %_public_lval11 = load i32, i32* %_public___v2_i
  %_public_lhssext = zext i32 %_public_lval11 to i64
  %_public_ugtetmp = icmp uge i64 %_public_lhssext, 0
  %_public_zexttmp12 = zext i1 %_public_ugtetmp to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp12)
  %_public_lval13 = load i32, i32* %_public___v2_i
  %_public_lhssext14 = zext i32 %_public_lval13 to i64
  %_public_ulttmp15 = icmp ult i64 %_public_lhssext14, 16
  %_public_zexttmp16 = zext i1 %_public_ulttmp15 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp16)
  %_public_lval17 = load i32, i32* %_public___v2_i
  %_secret_dyn = load i8*, i8** %_secret_arrarg
  %_secret_ptr = getelementptr inbounds i8, i8* %_secret_dyn, i32 %_public_lval17
  %_secret_lval = load i8, i8* %_secret_ptr
  %_public_lval18 = load i32, i32* %_public___v2_i
  %_public_lhssext19 = zext i32 %_public_lval18 to i64
  %_public_ugtetmp20 = icmp uge i64 %_public_lhssext19, 0
  %_public_zexttmp21 = zext i1 %_public_ugtetmp20 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp21)
  %_public_lval22 = load i32, i32* %_public___v2_i
  %_public_lhssext23 = zext i32 %_public_lval22 to i64
  %_public_ulttmp24 = icmp ult i64 %_public_lhssext23, 16
  %_public_zexttmp25 = zext i1 %_public_ulttmp24 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp25)
  %_public_lval26 = load i32, i32* %_public___v2_i
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

declare void @_md_transform(i32, i8*, i8*)

declare void @_md_final_raw(i32, i8*, i8*)

define i32 @__ssl3_cbc_digest_record(i8* %_secret_arrarg1, i8* %_secret_arrarg3, i8* %_secret_arrarg5, i64 %_public_md_size6, i64 %_public_md_block_size7, i64 %_public_log_md_block_size8, i64 %_public_sslv3_pad_length9, i64 %_public_md_length_size10, i1 %_public_length_is_big_endian11, i32 %_public_sha_type12, i8* %_secret_arrarg14, i8* %_secret_arrarg16, i32 %_public___data_len17, i64 %_secret_data_plus_mac_size18, i8* %_secret_arrarg20, i32 %_public___mac_secret_len21, i1 %_public_is_sslv322) {
entry:
  %_secret_arrarg = alloca i8*
  store i8* %_secret_arrarg1, i8** %_secret_arrarg
  %_secret_arrarg2 = alloca i8*
  store i8* %_secret_arrarg3, i8** %_secret_arrarg2
  %_secret_arrarg4 = alloca i8*
  store i8* %_secret_arrarg5, i8** %_secret_arrarg4
  %_public_md_size = alloca i64
  store i64 %_public_md_size6, i64* %_public_md_size
  %_public_md_block_size = alloca i64
  store i64 %_public_md_block_size7, i64* %_public_md_block_size
  %_public_log_md_block_size = alloca i64
  store i64 %_public_log_md_block_size8, i64* %_public_log_md_block_size
  %_public_sslv3_pad_length = alloca i64
  store i64 %_public_sslv3_pad_length9, i64* %_public_sslv3_pad_length
  %_public_md_length_size = alloca i64
  store i64 %_public_md_length_size10, i64* %_public_md_length_size
  %_public_length_is_big_endian = alloca i1
  store i1 %_public_length_is_big_endian11, i1* %_public_length_is_big_endian
  %_public_sha_type = alloca i32
  store i32 %_public_sha_type12, i32* %_public_sha_type
  %_secret_arrarg13 = alloca i8*
  store i8* %_secret_arrarg14, i8** %_secret_arrarg13
  %_secret_arrarg15 = alloca i8*
  store i8* %_secret_arrarg16, i8** %_secret_arrarg15
  %_public___data_len = alloca i32
  store i32 %_public___data_len17, i32* %_public___data_len
  %_secret_data_plus_mac_size = alloca i64
  store i64 %_secret_data_plus_mac_size18, i64* %_secret_data_plus_mac_size
  %_secret_arrarg19 = alloca i8*
  store i8* %_secret_arrarg20, i8** %_secret_arrarg19
  %_public___mac_secret_len = alloca i32
  store i32 %_public___mac_secret_len21, i32* %_public___mac_secret_len
  %_public_is_sslv3 = alloca i1
  store i1 %_public_is_sslv322, i1* %_public_is_sslv3
  %_secret___rval = alloca i32
  %_secret___rnset = alloca i1
  %_public___v3_MAX_HASH_BLOCK_SIZE = alloca i32
  %_public___v4_SIZEOF_LARGEST_DIGEST_CTX = alloca i32
  %_public___v5_MAX_HASH_BIT_COUNT_BYTES = alloca i32
  %_public___v6_EVP_MAX_MD_SIZE = alloca i32
  %_public___v7_header_length = alloca i64
  %_public___v8_variance_blocks = alloca i64
  %_public___v9_length = alloca i64
  %_public___v10_max_mac_bytes = alloca i64
  %_public___v11_num_blocks = alloca i64
  %_secret___v12_mac_end_offset = alloca i64
  %_secret___v13_c = alloca i64
  %_secret___v14_index_a = alloca i64
  %_secret___v15_index_b = alloca i64
  %_public___v16_num_starting_blocks = alloca i64
  %_public___v17_k = alloca i64
  %_secret___v19_bits = alloca i64
  %_public___v20_i = alloca i64
  %_public___v22_overhang = alloca i64
  %_public___v24___v23_len = alloca i32
  %_public___v26___v25_len = alloca i32
  %_public___v28___v27_len = alloca i32
  %_public___v29_i = alloca i64
  %_public___v31___v30_len = alloca i32
  %_public___v33___v32_len = alloca i32
  %_public___v35___v34_len = alloca i32
  %_public___v36_i = alloca i64
  %_public___v38___v37_len = alloca i32
  %_public___v39_i = alloca i64
  %_secret___v41_is_block_a = alloca i1
  %_secret___v42_is_block_b = alloca i1
  %_public___v43_j = alloca i64
  %_secret___v44_b = alloca i8
  %_secret___m2 = alloca i1
  %_secret___m3 = alloca i1
  %_secret___v45_is_past_c = alloca i1
  %_secret___m4 = alloca i1
  %_secret___m5 = alloca i1
  %_secret___v46_is_past_cp1 = alloca i1
  %_secret___m6 = alloca i8
  %_secret___m7 = alloca i1
  %_secret___m8 = alloca i1
  %_secret___m9 = alloca i1
  %_secret___m10 = alloca i1
  %_secret___m11 = alloca i1
  %_secret___m12 = alloca i8
  %_secret___m13 = alloca i1
  %_public___v47_j = alloca i64
  %_secret___m14 = alloca i8
  %_secret___m15 = alloca i1
  store i32 0, i32* %_secret___rval
  store i1 true, i1* %_secret___rnset
  store i32 128, i32* %_public___v3_MAX_HASH_BLOCK_SIZE
  store i32 216, i32* %_public___v4_SIZEOF_LARGEST_DIGEST_CTX
  store i32 16, i32* %_public___v5_MAX_HASH_BIT_COUNT_BYTES
  store i32 64, i32* %_public___v6_EVP_MAX_MD_SIZE
  %_public_lval = load i1, i1* %_public_is_sslv3
  %_public_condtmp = icmp ne i1 %_public_lval, false
  %_public_lval23 = load i32, i32* %_public___mac_secret_len
  %_public_lval24 = load i64, i64* %_public_sslv3_pad_length
  %_public_lhssext = zext i32 %_public_lval23 to i64
  %_public_addtmp = add i64 %_public_lhssext, %_public_lval24
  %_public_addtmp25 = add i64 %_public_addtmp, 8
  %_public_addtmp26 = add i64 %_public_addtmp25, 1
  %_public_addtmp27 = add i64 %_public_addtmp26, 2
  %_public_terntmp = select i1 %_public_condtmp, i64 %_public_addtmp27, i64 13
  store i64 %_public_terntmp, i64* %_public___v7_header_length
  %_public_lval28 = load i1, i1* %_public_is_sslv3
  %_public_condtmp29 = icmp ne i1 %_public_lval28, false
  %_public_terntmp30 = select i1 %_public_condtmp29, i8 2, i8 6
  %_public_zexttmp = zext i8 %_public_terntmp30 to i64
  store i64 %_public_zexttmp, i64* %_public___v8_variance_blocks
  %_public_lval31 = load i32, i32* %_public___data_len
  %_public_lval32 = load i64, i64* %_public___v7_header_length
  %_public_lhssext33 = zext i32 %_public_lval31 to i64
  %_public_addtmp34 = add i64 %_public_lhssext33, %_public_lval32
  store i64 %_public_addtmp34, i64* %_public___v9_length
  %_public_lval35 = load i64, i64* %_public___v9_length
  %_public_lval36 = load i64, i64* %_public_md_size
  %_public_subtmp = sub i64 %_public_lval35, %_public_lval36
  %_public_subtmp37 = sub i64 %_public_subtmp, 1
  store i64 %_public_subtmp37, i64* %_public___v10_max_mac_bytes
  %_public_lval38 = load i64, i64* %_public_log_md_block_size
  %_public_slttmp = icmp slt i64 %_public_lval38, 64
  %_public_zexttmp39 = zext i1 %_public_slttmp to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp39)
  %_public_lval40 = load i64, i64* %_public___v10_max_mac_bytes
  %_public_addtmp41 = add i64 %_public_lval40, 1
  %_public_lval42 = load i64, i64* %_public_md_length_size
  %_public_addtmp43 = add i64 %_public_addtmp41, %_public_lval42
  %_public_lval44 = load i64, i64* %_public_md_block_size
  %_public_addtmp45 = add i64 %_public_addtmp43, %_public_lval44
  %_public_subtmp46 = sub i64 %_public_addtmp45, 1
  %_public_lval47 = load i64, i64* %_public_log_md_block_size
  %_public_lrshift = lshr i64 %_public_subtmp46, %_public_lval47
  store i64 %_public_lrshift, i64* %_public___v11_num_blocks
  %_secret_lval = load i64, i64* %_secret_data_plus_mac_size
  %_public_lval48 = load i64, i64* %_public___v7_header_length
  %_secret_addtmp = add i64 %_secret_lval, %_public_lval48
  %_public_lval49 = load i64, i64* %_public_md_size
  %_secret_subtmp = sub i64 %_secret_addtmp, %_public_lval49
  store i64 %_secret_subtmp, i64* %_secret___v12_mac_end_offset
  %_secret_lval50 = load i64, i64* %_secret___v12_mac_end_offset
  %_public_lval51 = load i64, i64* %_public_md_block_size
  %_public_subtmp52 = sub i64 %_public_lval51, 1
  %_secret_andtmp = and i64 %_secret_lval50, %_public_subtmp52
  store i64 %_secret_andtmp, i64* %_secret___v13_c
  %_public_lval53 = load i64, i64* %_public_log_md_block_size
  %_public_slttmp54 = icmp slt i64 %_public_lval53, 64
  %_public_zexttmp55 = zext i1 %_public_slttmp54 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp55)
  %_secret_lval56 = load i64, i64* %_secret___v12_mac_end_offset
  %_public_lval57 = load i64, i64* %_public_log_md_block_size
  %_secret_lrshift = lshr i64 %_secret_lval56, %_public_lval57
  store i64 %_secret_lrshift, i64* %_secret___v14_index_a
  %_public_lval58 = load i64, i64* %_public_log_md_block_size
  %_public_slttmp59 = icmp slt i64 %_public_lval58, 64
  %_public_zexttmp60 = zext i1 %_public_slttmp59 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp60)
  %_secret_lval61 = load i64, i64* %_secret___v12_mac_end_offset
  %_public_lval62 = load i64, i64* %_public_md_length_size
  %_secret_addtmp63 = add i64 %_secret_lval61, %_public_lval62
  %_public_lval64 = load i64, i64* %_public_log_md_block_size
  %_secret_lrshift65 = lshr i64 %_secret_addtmp63, %_public_lval64
  store i64 %_secret_lrshift65, i64* %_secret___v15_index_b
  store i64 0, i64* %_public___v16_num_starting_blocks
  store i64 0, i64* %_public___v17_k
  %_public_lval66 = load i64, i64* %_public___v11_num_blocks
  %_public_lval67 = load i64, i64* %_public___v8_variance_blocks
  %_public_lval68 = load i1, i1* %_public_is_sslv3
  %_public_condtmp69 = icmp ne i1 %_public_lval68, false
  %_public_terntmp70 = select i1 %_public_condtmp69, i8 1, i8 0
  %_public_rhssext = zext i8 %_public_terntmp70 to i64
  %_public_addtmp71 = add i64 %_public_lval67, %_public_rhssext
  %_public_ugttmp = icmp ugt i64 %_public_lval66, %_public_addtmp71
  %_public_branchcompare = icmp eq i1 %_public_ugttmp, true
  br i1 %_public_branchcompare, label %thenbranch, label %elsebranch

thenbranch:                                       ; preds = %entry
  %_public_lval72 = load i64, i64* %_public___v11_num_blocks
  %_public_lval73 = load i64, i64* %_public___v8_variance_blocks
  %_public_subtmp74 = sub i64 %_public_lval72, %_public_lval73
  store i64 %_public_subtmp74, i64* %_public___v16_num_starting_blocks
  %_public_lval75 = load i64, i64* %_public_md_block_size
  %_public_lval76 = load i64, i64* %_public___v16_num_starting_blocks
  %_public_multmp = mul i64 %_public_lval75, %_public_lval76
  store i64 %_public_multmp, i64* %_public___v17_k
  br label %branchmerge

elsebranch:                                       ; preds = %entry
  br label %branchmerge

branchmerge:                                      ; preds = %elsebranch, %thenbranch
  %_secret___v18_first_block = alloca [128 x i8]
  %_secret_lval77 = load i64, i64* %_secret___v12_mac_end_offset
  %_secret_multmp = mul i64 8, %_secret_lval77
  store i64 %_secret_multmp, i64* %_secret___v19_bits
  %_public_lval78 = load i1, i1* %_public_is_sslv3
  %_public_lnottmp = xor i1 %_public_lval78, true
  %_public_branchcompare79 = icmp eq i1 %_public_lnottmp, true
  br i1 %_public_branchcompare79, label %thenbranch80, label %elsebranch129

thenbranch80:                                     ; preds = %branchmerge
  %_secret_lval81 = load i64, i64* %_secret___v19_bits
  %_public_lval82 = load i64, i64* %_public_md_block_size
  %_public_multmp83 = mul i64 8, %_public_lval82
  %_secret_addtmp84 = add i64 %_secret_lval81, %_public_multmp83
  store i64 %_secret_addtmp84, i64* %_secret___v19_bits
  %_public_lval85 = load i32, i32* %_public___mac_secret_len
  %_public_lval86 = load i32, i32* %_public___v3_MAX_HASH_BLOCK_SIZE
  %_public_ugttmp87 = icmp ugt i32 %_public_lval85, %_public_lval86
  %_public_branchcompare88 = icmp eq i1 %_public_ugttmp87, true
  br i1 %_public_branchcompare88, label %thenbranch89, label %elsebranch91

thenbranch89:                                     ; preds = %thenbranch80
  store i32 0, i32* %_secret___rval
  %_secret_lval90 = load i32, i32* %_secret___rval
  ret i32 %_secret_lval90

elsebranch91:                                     ; preds = %thenbranch80
  br label %branchmerge92

branchmerge92:                                    ; preds = %elsebranch91
  %_secret_dynarrarg = load i8*, i8** %_secret_arrarg4
  %_secret_dynarrarg93 = load i8*, i8** %_secret_arrarg19
  %_public_lval94 = load i32, i32* %_public___mac_secret_len
  call void @_memcpy(i8* %_secret_dynarrarg, i32 128, i8* %_secret_dynarrarg93, i32 %_public_lval94)
  %_public_calltmp = call i64 @__VERIFIER_nondet_unsigned_long_long()
  store i64 %_public_calltmp, i64* %_public___v20_i
  %_public_lval95 = load i64, i64* %_public___v20_i
  %_public_lval96 = load i64, i64* %_public_md_block_size
  %_public_ulttmp = icmp ult i64 %_public_lval95, %_public_lval96
  %_public_branchcompare97 = icmp eq i1 %_public_ulttmp, true
  br i1 %_public_branchcompare97, label %thenbranch98, label %elsebranch124

thenbranch98:                                     ; preds = %branchmerge92
  %_public_lval99 = load i64, i64* %_public___v20_i
  %_public_lval100 = load i64, i64* %_public___v20_i
  %_public_addtmp101 = add i64 %_public_lval100, 1
  %_public_ulttmp102 = icmp ult i64 %_public_lval99, %_public_addtmp101
  %_public_zexttmp103 = zext i1 %_public_ulttmp102 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp103)
  %_public_lval104 = load i64, i64* %_public___v20_i
  %_public_ulttmp105 = icmp ult i64 0, %_public_lval104
  %_public_lval106 = load i64, i64* %_public___v20_i
  %_public_eqtmp = icmp eq i64 0, %_public_lval106
  %_public_lortmp = or i1 %_public_ulttmp105, %_public_eqtmp
  %_public_zexttmp107 = zext i1 %_public_lortmp to i32
  call void @__VERIFIER_assume(i32 %_public_zexttmp107)
  %_public_lval108 = load i64, i64* %_public___v20_i
  %_public_ugtetmp = icmp uge i64 %_public_lval108, 0
  %_public_zexttmp109 = zext i1 %_public_ugtetmp to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp109)
  %_public_lval110 = load i64, i64* %_public___v20_i
  %_public_ulttmp111 = icmp ult i64 %_public_lval110, 128
  %_public_zexttmp112 = zext i1 %_public_ulttmp111 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp112)
  %_public_lval113 = load i64, i64* %_public___v20_i
  %_secret_dyn = load i8*, i8** %_secret_arrarg4
  %_secret_ptr = getelementptr inbounds i8, i8* %_secret_dyn, i64 %_public_lval113
  %_public_lval114 = load i64, i64* %_public___v20_i
  %_public_ugtetmp115 = icmp uge i64 %_public_lval114, 0
  %_public_zexttmp116 = zext i1 %_public_ugtetmp115 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp116)
  %_public_lval117 = load i64, i64* %_public___v20_i
  %_public_ulttmp118 = icmp ult i64 %_public_lval117, 128
  %_public_zexttmp119 = zext i1 %_public_ulttmp118 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp119)
  %_public_lval120 = load i64, i64* %_public___v20_i
  %_secret_dyn121 = load i8*, i8** %_secret_arrarg4
  %_secret_ptr122 = getelementptr inbounds i8, i8* %_secret_dyn121, i64 %_public_lval120
  %_secret_lval123 = load i8, i8* %_secret_ptr122
  %_secret_xortmp = xor i8 %_secret_lval123, 54
  store i8 %_secret_xortmp, i8* %_secret_ptr
  br label %branchmerge125

elsebranch124:                                    ; preds = %branchmerge92
  br label %branchmerge125

branchmerge125:                                   ; preds = %elsebranch124, %thenbranch98
  %_public_lval126 = load i32, i32* %_public_sha_type
  %_secret_dynarrarg127 = load i8*, i8** %_secret_arrarg
  %_secret_dynarrarg128 = load i8*, i8** %_secret_arrarg4
  call void @_md_transform(i32 %_public_lval126, i8* %_secret_dynarrarg127, i8* %_secret_dynarrarg128)
  br label %branchmerge130

elsebranch129:                                    ; preds = %branchmerge
  br label %branchmerge130

branchmerge130:                                   ; preds = %elsebranch129, %branchmerge125
  %_secret___v21_length_bytes = alloca [16 x i8]
  %_secret_sourcecasted = bitcast [16 x i8]* %_secret___v21_length_bytes to i8*
  call void @llvm.memset.p0i8.i64(i8* %_secret_sourcecasted, i8 0, i64 16, i32 0, i1 false)
  %_public_lval131 = load i1, i1* %_public_length_is_big_endian
  %_public_branchcompare132 = icmp eq i1 %_public_lval131, true
  br i1 %_public_branchcompare132, label %thenbranch133, label %elsebranch188

thenbranch133:                                    ; preds = %branchmerge130
  %_public_lval134 = load i64, i64* %_public_md_length_size
  %_public_subtmp135 = sub i64 %_public_lval134, 4
  %_public_ugtetmp136 = icmp uge i64 %_public_subtmp135, 0
  %_public_zexttmp137 = zext i1 %_public_ugtetmp136 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp137)
  %_public_lval138 = load i64, i64* %_public_md_length_size
  %_public_subtmp139 = sub i64 %_public_lval138, 4
  %_public_ulttmp140 = icmp ult i64 %_public_subtmp139, 16
  %_public_zexttmp141 = zext i1 %_public_ulttmp140 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp141)
  %_public_lval142 = load i64, i64* %_public_md_length_size
  %_public_subtmp143 = sub i64 %_public_lval142, 4
  %_secret_ptr144 = getelementptr inbounds [16 x i8], [16 x i8]* %_secret___v21_length_bytes, i64 0, i64 %_public_subtmp143
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval145 = load i64, i64* %_secret___v19_bits
  %_secret_lrshift146 = lshr i64 %_secret_lval145, 24
  %_secret_ucast = trunc i64 %_secret_lrshift146 to i8
  store i8 %_secret_ucast, i8* %_secret_ptr144
  %_public_lval147 = load i64, i64* %_public_md_length_size
  %_public_subtmp148 = sub i64 %_public_lval147, 3
  %_public_ugtetmp149 = icmp uge i64 %_public_subtmp148, 0
  %_public_zexttmp150 = zext i1 %_public_ugtetmp149 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp150)
  %_public_lval151 = load i64, i64* %_public_md_length_size
  %_public_subtmp152 = sub i64 %_public_lval151, 3
  %_public_ulttmp153 = icmp ult i64 %_public_subtmp152, 16
  %_public_zexttmp154 = zext i1 %_public_ulttmp153 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp154)
  %_public_lval155 = load i64, i64* %_public_md_length_size
  %_public_subtmp156 = sub i64 %_public_lval155, 3
  %_secret_ptr157 = getelementptr inbounds [16 x i8], [16 x i8]* %_secret___v21_length_bytes, i64 0, i64 %_public_subtmp156
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval158 = load i64, i64* %_secret___v19_bits
  %_secret_lrshift159 = lshr i64 %_secret_lval158, 16
  %_secret_ucast160 = trunc i64 %_secret_lrshift159 to i8
  store i8 %_secret_ucast160, i8* %_secret_ptr157
  %_public_lval161 = load i64, i64* %_public_md_length_size
  %_public_subtmp162 = sub i64 %_public_lval161, 2
  %_public_ugtetmp163 = icmp uge i64 %_public_subtmp162, 0
  %_public_zexttmp164 = zext i1 %_public_ugtetmp163 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp164)
  %_public_lval165 = load i64, i64* %_public_md_length_size
  %_public_subtmp166 = sub i64 %_public_lval165, 2
  %_public_ulttmp167 = icmp ult i64 %_public_subtmp166, 16
  %_public_zexttmp168 = zext i1 %_public_ulttmp167 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp168)
  %_public_lval169 = load i64, i64* %_public_md_length_size
  %_public_subtmp170 = sub i64 %_public_lval169, 2
  %_secret_ptr171 = getelementptr inbounds [16 x i8], [16 x i8]* %_secret___v21_length_bytes, i64 0, i64 %_public_subtmp170
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval172 = load i64, i64* %_secret___v19_bits
  %_secret_lrshift173 = lshr i64 %_secret_lval172, 8
  %_secret_ucast174 = trunc i64 %_secret_lrshift173 to i8
  store i8 %_secret_ucast174, i8* %_secret_ptr171
  %_public_lval175 = load i64, i64* %_public_md_length_size
  %_public_subtmp176 = sub i64 %_public_lval175, 1
  %_public_ugtetmp177 = icmp uge i64 %_public_subtmp176, 0
  %_public_zexttmp178 = zext i1 %_public_ugtetmp177 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp178)
  %_public_lval179 = load i64, i64* %_public_md_length_size
  %_public_subtmp180 = sub i64 %_public_lval179, 1
  %_public_ulttmp181 = icmp ult i64 %_public_subtmp180, 16
  %_public_zexttmp182 = zext i1 %_public_ulttmp181 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp182)
  %_public_lval183 = load i64, i64* %_public_md_length_size
  %_public_subtmp184 = sub i64 %_public_lval183, 1
  %_secret_ptr185 = getelementptr inbounds [16 x i8], [16 x i8]* %_secret___v21_length_bytes, i64 0, i64 %_public_subtmp184
  %_secret_lval186 = load i64, i64* %_secret___v19_bits
  %_secret_ucast187 = trunc i64 %_secret_lval186 to i8
  store i8 %_secret_ucast187, i8* %_secret_ptr185
  br label %branchmerge244

elsebranch188:                                    ; preds = %branchmerge130
  %_public_lval189 = load i64, i64* %_public_md_length_size
  %_public_subtmp190 = sub i64 %_public_lval189, 5
  %_public_ugtetmp191 = icmp uge i64 %_public_subtmp190, 0
  %_public_zexttmp192 = zext i1 %_public_ugtetmp191 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp192)
  %_public_lval193 = load i64, i64* %_public_md_length_size
  %_public_subtmp194 = sub i64 %_public_lval193, 5
  %_public_ulttmp195 = icmp ult i64 %_public_subtmp194, 16
  %_public_zexttmp196 = zext i1 %_public_ulttmp195 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp196)
  %_public_lval197 = load i64, i64* %_public_md_length_size
  %_public_subtmp198 = sub i64 %_public_lval197, 5
  %_secret_ptr199 = getelementptr inbounds [16 x i8], [16 x i8]* %_secret___v21_length_bytes, i64 0, i64 %_public_subtmp198
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval200 = load i64, i64* %_secret___v19_bits
  %_secret_lrshift201 = lshr i64 %_secret_lval200, 24
  %_secret_ucast202 = trunc i64 %_secret_lrshift201 to i8
  store i8 %_secret_ucast202, i8* %_secret_ptr199
  %_public_lval203 = load i64, i64* %_public_md_length_size
  %_public_subtmp204 = sub i64 %_public_lval203, 6
  %_public_ugtetmp205 = icmp uge i64 %_public_subtmp204, 0
  %_public_zexttmp206 = zext i1 %_public_ugtetmp205 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp206)
  %_public_lval207 = load i64, i64* %_public_md_length_size
  %_public_subtmp208 = sub i64 %_public_lval207, 6
  %_public_ulttmp209 = icmp ult i64 %_public_subtmp208, 16
  %_public_zexttmp210 = zext i1 %_public_ulttmp209 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp210)
  %_public_lval211 = load i64, i64* %_public_md_length_size
  %_public_subtmp212 = sub i64 %_public_lval211, 6
  %_secret_ptr213 = getelementptr inbounds [16 x i8], [16 x i8]* %_secret___v21_length_bytes, i64 0, i64 %_public_subtmp212
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval214 = load i64, i64* %_secret___v19_bits
  %_secret_lrshift215 = lshr i64 %_secret_lval214, 16
  %_secret_ucast216 = trunc i64 %_secret_lrshift215 to i8
  store i8 %_secret_ucast216, i8* %_secret_ptr213
  %_public_lval217 = load i64, i64* %_public_md_length_size
  %_public_subtmp218 = sub i64 %_public_lval217, 7
  %_public_ugtetmp219 = icmp uge i64 %_public_subtmp218, 0
  %_public_zexttmp220 = zext i1 %_public_ugtetmp219 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp220)
  %_public_lval221 = load i64, i64* %_public_md_length_size
  %_public_subtmp222 = sub i64 %_public_lval221, 7
  %_public_ulttmp223 = icmp ult i64 %_public_subtmp222, 16
  %_public_zexttmp224 = zext i1 %_public_ulttmp223 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp224)
  %_public_lval225 = load i64, i64* %_public_md_length_size
  %_public_subtmp226 = sub i64 %_public_lval225, 7
  %_secret_ptr227 = getelementptr inbounds [16 x i8], [16 x i8]* %_secret___v21_length_bytes, i64 0, i64 %_public_subtmp226
  call void @__VERIFIER_assert(i32 1)
  %_secret_lval228 = load i64, i64* %_secret___v19_bits
  %_secret_lrshift229 = lshr i64 %_secret_lval228, 8
  %_secret_ucast230 = trunc i64 %_secret_lrshift229 to i8
  store i8 %_secret_ucast230, i8* %_secret_ptr227
  %_public_lval231 = load i64, i64* %_public_md_length_size
  %_public_subtmp232 = sub i64 %_public_lval231, 8
  %_public_ugtetmp233 = icmp uge i64 %_public_subtmp232, 0
  %_public_zexttmp234 = zext i1 %_public_ugtetmp233 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp234)
  %_public_lval235 = load i64, i64* %_public_md_length_size
  %_public_subtmp236 = sub i64 %_public_lval235, 8
  %_public_ulttmp237 = icmp ult i64 %_public_subtmp236, 16
  %_public_zexttmp238 = zext i1 %_public_ulttmp237 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp238)
  %_public_lval239 = load i64, i64* %_public_md_length_size
  %_public_subtmp240 = sub i64 %_public_lval239, 8
  %_secret_ptr241 = getelementptr inbounds [16 x i8], [16 x i8]* %_secret___v21_length_bytes, i64 0, i64 %_public_subtmp240
  %_secret_lval242 = load i64, i64* %_secret___v19_bits
  %_secret_ucast243 = trunc i64 %_secret_lval242 to i8
  store i8 %_secret_ucast243, i8* %_secret_ptr241
  br label %branchmerge244

branchmerge244:                                   ; preds = %elsebranch188, %thenbranch133
  %_public_lval245 = load i64, i64* %_public___v17_k
  %_public_ugttmp246 = icmp ugt i64 %_public_lval245, 0
  %_public_branchcompare247 = icmp eq i1 %_public_ugttmp246, true
  br i1 %_public_branchcompare247, label %thenbranch248, label %elsebranch882

thenbranch248:                                    ; preds = %branchmerge244
  %_public_lval249 = load i1, i1* %_public_is_sslv3
  %_public_branchcompare250 = icmp eq i1 %_public_lval249, true
  br i1 %_public_branchcompare250, label %thenbranch251, label %elsebranch611

thenbranch251:                                    ; preds = %thenbranch248
  %_public_lval252 = load i64, i64* %_public___v7_header_length
  %_public_lval253 = load i64, i64* %_public_md_block_size
  %_public_ultetmp = icmp ule i64 %_public_lval252, %_public_lval253
  %_public_branchcompare254 = icmp eq i1 %_public_ultetmp, true
  br i1 %_public_branchcompare254, label %thenbranch255, label %elsebranch257

thenbranch255:                                    ; preds = %thenbranch251
  store i32 0, i32* %_secret___rval
  %_secret_lval256 = load i32, i32* %_secret___rval
  ret i32 %_secret_lval256

elsebranch257:                                    ; preds = %thenbranch251
  br label %branchmerge258

branchmerge258:                                   ; preds = %elsebranch257
  %_public_lval259 = load i64, i64* %_public___v7_header_length
  %_public_lval260 = load i64, i64* %_public_md_block_size
  %_public_subtmp261 = sub i64 %_public_lval259, %_public_lval260
  store i64 %_public_subtmp261, i64* %_public___v22_overhang
  %_public_lval262 = load i32, i32* %_public_sha_type
  %_secret_dynarrarg263 = load i8*, i8** %_secret_arrarg
  %_secret_dynarrarg264 = load i8*, i8** %_secret_arrarg13
  call void @_md_transform(i32 %_public_lval262, i8* %_secret_dynarrarg263, i8* %_secret_dynarrarg264)
  %_public_lval265 = load i64, i64* %_public___v22_overhang
  %_public_trunctmp = trunc i64 %_public_lval265 to i32
  store i32 %_public_trunctmp, i32* %_public___v24___v23_len
  %_secret_arrtoptr = bitcast [128 x i8]* %_secret___v18_first_block to i8*
  %_public_lval266 = load i64, i64* %_public_md_block_size
  %_public_lval267 = load i32, i32* %_public___v24___v23_len
  %_public_icast = zext i32 %_public_lval267 to i64
  %_public_addtmp268 = add i64 %_public_lval266, %_public_icast
  %_public_lval269 = load i64, i64* %_public_md_block_size
  %_public_ugttmp270 = icmp ugt i64 %_public_addtmp268, %_public_lval269
  %_public_zexttmp271 = zext i1 %_public_ugttmp270 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp271)
  %_public_lval272 = load i64, i64* %_public_md_block_size
  %_public_ugtetmp273 = icmp uge i64 %_public_lval272, 0
  %_public_zexttmp274 = zext i1 %_public_ugtetmp273 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp274)
  %_public_lval275 = load i64, i64* %_public_md_block_size
  %_public_ulttmp276 = icmp ult i64 %_public_lval275, 13
  %_public_zexttmp277 = zext i1 %_public_ulttmp276 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp277)
  %_public_lval278 = load i64, i64* %_public_md_block_size
  %_public_lval279 = load i32, i32* %_public___v24___v23_len
  %_public_icast280 = zext i32 %_public_lval279 to i64
  %_public_addtmp281 = add i64 %_public_lval278, %_public_icast280
  %_public_subtmp282 = sub i64 %_public_addtmp281, 1
  %_public_ugtetmp283 = icmp uge i64 %_public_subtmp282, 0
  %_public_zexttmp284 = zext i1 %_public_ugtetmp283 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp284)
  %_public_lval285 = load i64, i64* %_public_md_block_size
  %_public_lval286 = load i32, i32* %_public___v24___v23_len
  %_public_icast287 = zext i32 %_public_lval286 to i64
  %_public_addtmp288 = add i64 %_public_lval285, %_public_icast287
  %_public_subtmp289 = sub i64 %_public_addtmp288, 1
  %_public_ulttmp290 = icmp ult i64 %_public_subtmp289, 13
  %_public_zexttmp291 = zext i1 %_public_ulttmp290 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp291)
  %_public_lval292 = load i64, i64* %_public_md_block_size
  %_secret_ldedviewptr = load i8*, i8** %_secret_arrarg13
  %_secret_source_gep = getelementptr inbounds i8, i8* %_secret_ldedviewptr, i64 %_public_lval292
  %_secret_arrviewdyn = alloca i8*
  store i8* %_secret_source_gep, i8** %_secret_arrviewdyn
  %_public_lval293 = load i64, i64* %_public_md_block_size
  %_public_lval294 = load i32, i32* %_public___v24___v23_len
  %_public_icast295 = zext i32 %_public_lval294 to i64
  %_public_addtmp296 = add i64 %_public_lval293, %_public_icast295
  %_public_lval297 = load i64, i64* %_public_md_block_size
  %_public_ugttmp298 = icmp ugt i64 %_public_addtmp296, %_public_lval297
  %_public_zexttmp299 = zext i1 %_public_ugttmp298 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp299)
  %_public_lval300 = load i64, i64* %_public_md_block_size
  %_public_ugtetmp301 = icmp uge i64 %_public_lval300, 0
  %_public_zexttmp302 = zext i1 %_public_ugtetmp301 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp302)
  %_public_lval303 = load i64, i64* %_public_md_block_size
  %_public_ulttmp304 = icmp ult i64 %_public_lval303, 13
  %_public_zexttmp305 = zext i1 %_public_ulttmp304 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp305)
  %_public_lval306 = load i64, i64* %_public_md_block_size
  %_public_lval307 = load i32, i32* %_public___v24___v23_len
  %_public_icast308 = zext i32 %_public_lval307 to i64
  %_public_addtmp309 = add i64 %_public_lval306, %_public_icast308
  %_public_subtmp310 = sub i64 %_public_addtmp309, 1
  %_public_ugtetmp311 = icmp uge i64 %_public_subtmp310, 0
  %_public_zexttmp312 = zext i1 %_public_ugtetmp311 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp312)
  %_public_lval313 = load i64, i64* %_public_md_block_size
  %_public_lval314 = load i32, i32* %_public___v24___v23_len
  %_public_icast315 = zext i32 %_public_lval314 to i64
  %_public_addtmp316 = add i64 %_public_lval313, %_public_icast315
  %_public_subtmp317 = sub i64 %_public_addtmp316, 1
  %_public_ulttmp318 = icmp ult i64 %_public_subtmp317, 13
  %_public_zexttmp319 = zext i1 %_public_ulttmp318 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp319)
  %_public_lval320 = load i64, i64* %_public_md_block_size
  %_secret_ldedviewptr321 = load i8*, i8** %_secret_arrarg13
  %_secret_source_gep322 = getelementptr inbounds i8, i8* %_secret_ldedviewptr321, i64 %_public_lval320
  %_secret_arrviewdyn323 = alloca i8*
  store i8* %_secret_source_gep322, i8** %_secret_arrviewdyn323
  %_secret_dynarrarg324 = load i8*, i8** %_secret_arrviewdyn323
  %_public_lval325 = load i32, i32* %_public___v24___v23_len
  call void @_memcpy(i8* %_secret_arrtoptr, i32 128, i8* %_secret_dynarrarg324, i32 %_public_lval325)
  %_public_lval326 = load i64, i64* %_public_md_block_size
  %_public_lval327 = load i64, i64* %_public___v22_overhang
  %_public_subtmp328 = sub i64 %_public_lval326, %_public_lval327
  %_public_trunctmp329 = trunc i64 %_public_subtmp328 to i32
  store i32 %_public_trunctmp329, i32* %_public___v26___v25_len
  %_public_lval330 = load i64, i64* %_public_md_block_size
  %_public_lval331 = load i64, i64* %_public___v22_overhang
  %_public_subtmp332 = sub i64 %_public_lval330, %_public_lval331
  %_public_trunctmp333 = trunc i64 %_public_subtmp332 to i32
  store i32 %_public_trunctmp333, i32* %_public___v28___v27_len
  %_public_lval334 = load i64, i64* %_public___v22_overhang
  %_public_lval335 = load i32, i32* %_public___v26___v25_len
  %_public_icast336 = zext i32 %_public_lval335 to i64
  %_public_addtmp337 = add i64 %_public_lval334, %_public_icast336
  %_public_lval338 = load i64, i64* %_public___v22_overhang
  %_public_ugttmp339 = icmp ugt i64 %_public_addtmp337, %_public_lval338
  %_public_zexttmp340 = zext i1 %_public_ugttmp339 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp340)
  %_public_lval341 = load i64, i64* %_public___v22_overhang
  %_public_ugtetmp342 = icmp uge i64 %_public_lval341, 0
  %_public_zexttmp343 = zext i1 %_public_ugtetmp342 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp343)
  %_public_lval344 = load i64, i64* %_public___v22_overhang
  %_public_ulttmp345 = icmp ult i64 %_public_lval344, 128
  %_public_zexttmp346 = zext i1 %_public_ulttmp345 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp346)
  %_public_lval347 = load i64, i64* %_public___v22_overhang
  %_public_lval348 = load i32, i32* %_public___v26___v25_len
  %_public_icast349 = zext i32 %_public_lval348 to i64
  %_public_addtmp350 = add i64 %_public_lval347, %_public_icast349
  %_public_subtmp351 = sub i64 %_public_addtmp350, 1
  %_public_ugtetmp352 = icmp uge i64 %_public_subtmp351, 0
  %_public_zexttmp353 = zext i1 %_public_ugtetmp352 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp353)
  %_public_lval354 = load i64, i64* %_public___v22_overhang
  %_public_lval355 = load i32, i32* %_public___v26___v25_len
  %_public_icast356 = zext i32 %_public_lval355 to i64
  %_public_addtmp357 = add i64 %_public_lval354, %_public_icast356
  %_public_subtmp358 = sub i64 %_public_addtmp357, 1
  %_public_ulttmp359 = icmp ult i64 %_public_subtmp358, 128
  %_public_zexttmp360 = zext i1 %_public_ulttmp359 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp360)
  %_public_lval361 = load i64, i64* %_public___v22_overhang
  %_secret_arrview = alloca i8*
  %_secret_source_gep362 = getelementptr inbounds [128 x i8], [128 x i8]* %_secret___v18_first_block, i64 0, i64 %_public_lval361
  store i8* %_secret_source_gep362, i8** %_secret_arrview
  %_public_lval363 = load i64, i64* %_public___v22_overhang
  %_public_lval364 = load i32, i32* %_public___v26___v25_len
  %_public_icast365 = zext i32 %_public_lval364 to i64
  %_public_addtmp366 = add i64 %_public_lval363, %_public_icast365
  %_public_lval367 = load i64, i64* %_public___v22_overhang
  %_public_ugttmp368 = icmp ugt i64 %_public_addtmp366, %_public_lval367
  %_public_zexttmp369 = zext i1 %_public_ugttmp368 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp369)
  %_public_lval370 = load i64, i64* %_public___v22_overhang
  %_public_ugtetmp371 = icmp uge i64 %_public_lval370, 0
  %_public_zexttmp372 = zext i1 %_public_ugtetmp371 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp372)
  %_public_lval373 = load i64, i64* %_public___v22_overhang
  %_public_ulttmp374 = icmp ult i64 %_public_lval373, 128
  %_public_zexttmp375 = zext i1 %_public_ulttmp374 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp375)
  %_public_lval376 = load i64, i64* %_public___v22_overhang
  %_public_lval377 = load i32, i32* %_public___v26___v25_len
  %_public_icast378 = zext i32 %_public_lval377 to i64
  %_public_addtmp379 = add i64 %_public_lval376, %_public_icast378
  %_public_subtmp380 = sub i64 %_public_addtmp379, 1
  %_public_ugtetmp381 = icmp uge i64 %_public_subtmp380, 0
  %_public_zexttmp382 = zext i1 %_public_ugtetmp381 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp382)
  %_public_lval383 = load i64, i64* %_public___v22_overhang
  %_public_lval384 = load i32, i32* %_public___v26___v25_len
  %_public_icast385 = zext i32 %_public_lval384 to i64
  %_public_addtmp386 = add i64 %_public_lval383, %_public_icast385
  %_public_subtmp387 = sub i64 %_public_addtmp386, 1
  %_public_ulttmp388 = icmp ult i64 %_public_subtmp387, 128
  %_public_zexttmp389 = zext i1 %_public_ulttmp388 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp389)
  %_public_lval390 = load i64, i64* %_public___v22_overhang
  %_secret_arrview391 = alloca i8*
  %_secret_source_gep392 = getelementptr inbounds [128 x i8], [128 x i8]* %_secret___v18_first_block, i64 0, i64 %_public_lval390
  store i8* %_secret_source_gep392, i8** %_secret_arrview391
  %_secret_dynarrarg393 = load i8*, i8** %_secret_arrview391
  %_public_lval394 = load i32, i32* %_public___v26___v25_len
  %_public_lval395 = load i32, i32* %_public___v28___v27_len
  %_public_icast396 = zext i32 %_public_lval395 to i64
  %_public_addtmp397 = add i64 0, %_public_icast396
  %_public_truncbinop = trunc i64 %_public_addtmp397 to i8
  %_public_sgttmp = icmp sgt i8 %_public_truncbinop, 0
  %_public_zexttmp398 = zext i1 %_public_sgttmp to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp398)
  call void @__VERIFIER_assert(i32 1)
  %_public_lval399 = load i32, i32* %_public___data_len
  %_public_icast400 = zext i32 %_public_lval399 to i64
  %_public_slttmp401 = icmp slt i64 0, %_public_icast400
  %_public_zexttmp402 = zext i1 %_public_slttmp401 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp402)
  %_public_lval403 = load i32, i32* %_public___v28___v27_len
  %_public_icast404 = zext i32 %_public_lval403 to i64
  %_public_addtmp405 = add i64 0, %_public_icast404
  %_public_truncbinop406 = trunc i64 %_public_addtmp405 to i8
  %_public_subtmp407 = sub i8 %_public_truncbinop406, 1
  %_public_lhssext408 = sext i8 %_public_subtmp407 to i64
  %_public_sgtetmp = icmp sge i64 %_public_lhssext408, 0
  %_public_zexttmp409 = zext i1 %_public_sgtetmp to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp409)
  %_public_lval410 = load i32, i32* %_public___v28___v27_len
  %_public_icast411 = zext i32 %_public_lval410 to i64
  %_public_addtmp412 = add i64 0, %_public_icast411
  %_public_truncbinop413 = trunc i64 %_public_addtmp412 to i8
  %_public_subtmp414 = sub i8 %_public_truncbinop413, 1
  %_public_lval415 = load i32, i32* %_public___data_len
  %_public_icast416 = zext i32 %_public_lval415 to i64
  %_public_lhssext417 = sext i8 %_public_subtmp414 to i64
  %_public_slttmp418 = icmp slt i64 %_public_lhssext417, %_public_icast416
  %_public_zexttmp419 = zext i1 %_public_slttmp418 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp419)
  %_secret_ldedviewptr420 = load i8*, i8** %_secret_arrarg15
  %_secret_source_gep421 = getelementptr inbounds i8, i8* %_secret_ldedviewptr420, i8 0
  %_secret_arrviewdyn422 = alloca i8*
  store i8* %_secret_source_gep421, i8** %_secret_arrviewdyn422
  %_public_lval423 = load i32, i32* %_public___v28___v27_len
  %_public_icast424 = zext i32 %_public_lval423 to i64
  %_public_addtmp425 = add i64 0, %_public_icast424
  %_public_truncbinop426 = trunc i64 %_public_addtmp425 to i8
  %_public_sgttmp427 = icmp sgt i8 %_public_truncbinop426, 0
  %_public_zexttmp428 = zext i1 %_public_sgttmp427 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp428)
  call void @__VERIFIER_assert(i32 1)
  %_public_lval429 = load i32, i32* %_public___data_len
  %_public_icast430 = zext i32 %_public_lval429 to i64
  %_public_slttmp431 = icmp slt i64 0, %_public_icast430
  %_public_zexttmp432 = zext i1 %_public_slttmp431 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp432)
  %_public_lval433 = load i32, i32* %_public___v28___v27_len
  %_public_icast434 = zext i32 %_public_lval433 to i64
  %_public_addtmp435 = add i64 0, %_public_icast434
  %_public_truncbinop436 = trunc i64 %_public_addtmp435 to i8
  %_public_subtmp437 = sub i8 %_public_truncbinop436, 1
  %_public_lhssext438 = sext i8 %_public_subtmp437 to i64
  %_public_sgtetmp439 = icmp sge i64 %_public_lhssext438, 0
  %_public_zexttmp440 = zext i1 %_public_sgtetmp439 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp440)
  %_public_lval441 = load i32, i32* %_public___v28___v27_len
  %_public_icast442 = zext i32 %_public_lval441 to i64
  %_public_addtmp443 = add i64 0, %_public_icast442
  %_public_truncbinop444 = trunc i64 %_public_addtmp443 to i8
  %_public_subtmp445 = sub i8 %_public_truncbinop444, 1
  %_public_lval446 = load i32, i32* %_public___data_len
  %_public_icast447 = zext i32 %_public_lval446 to i64
  %_public_lhssext448 = sext i8 %_public_subtmp445 to i64
  %_public_slttmp449 = icmp slt i64 %_public_lhssext448, %_public_icast447
  %_public_zexttmp450 = zext i1 %_public_slttmp449 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp450)
  %_secret_ldedviewptr451 = load i8*, i8** %_secret_arrarg15
  %_secret_source_gep452 = getelementptr inbounds i8, i8* %_secret_ldedviewptr451, i8 0
  %_secret_arrviewdyn453 = alloca i8*
  store i8* %_secret_source_gep452, i8** %_secret_arrviewdyn453
  %_secret_dynarrarg454 = load i8*, i8** %_secret_arrviewdyn453
  %_public_lval455 = load i32, i32* %_public___v28___v27_len
  call void @_memcpy(i8* %_secret_dynarrarg393, i32 %_public_lval394, i8* %_secret_dynarrarg454, i32 %_public_lval455)
  %_public_lval456 = load i32, i32* %_public_sha_type
  %_secret_dynarrarg457 = load i8*, i8** %_secret_arrarg
  %_secret_arrtoptr458 = bitcast [128 x i8]* %_secret___v18_first_block to i8*
  call void @_md_transform(i32 %_public_lval456, i8* %_secret_dynarrarg457, i8* %_secret_arrtoptr458)
  %_public_calltmp459 = call i64 @__VERIFIER_nondet_unsigned_long_long()
  store i64 %_public_calltmp459, i64* %_public___v29_i
  %_public_lval460 = load i64, i64* %_public___v29_i
  %_public_lval461 = load i64, i64* %_public___v17_k
  %_public_lval462 = load i64, i64* %_public_md_block_size
  %_public_udivtmp = udiv i64 %_public_lval461, %_public_lval462
  %_public_subtmp463 = sub i64 %_public_udivtmp, 1
  %_public_ulttmp464 = icmp ult i64 %_public_lval460, %_public_subtmp463
  %_public_branchcompare465 = icmp eq i1 %_public_ulttmp464, true
  br i1 %_public_branchcompare465, label %thenbranch466, label %elsebranch609

thenbranch466:                                    ; preds = %branchmerge258
  %_public_lval467 = load i64, i64* %_public___v29_i
  %_public_lval468 = load i64, i64* %_public___v29_i
  %_public_addtmp469 = add i64 %_public_lval468, 1
  %_public_ulttmp470 = icmp ult i64 %_public_lval467, %_public_addtmp469
  %_public_zexttmp471 = zext i1 %_public_ulttmp470 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp471)
  %_public_lval472 = load i64, i64* %_public___v29_i
  %_public_ulttmp473 = icmp ult i64 1, %_public_lval472
  %_public_lval474 = load i64, i64* %_public___v29_i
  %_public_eqtmp475 = icmp eq i64 1, %_public_lval474
  %_public_lortmp476 = or i1 %_public_ulttmp473, %_public_eqtmp475
  %_public_zexttmp477 = zext i1 %_public_lortmp476 to i32
  call void @__VERIFIER_assume(i32 %_public_zexttmp477)
  %_public_lval478 = load i64, i64* %_public_md_block_size
  %_public_trunctmp479 = trunc i64 %_public_lval478 to i32
  store i32 %_public_trunctmp479, i32* %_public___v31___v30_len
  %_public_lval480 = load i32, i32* %_public_sha_type
  %_secret_dynarrarg481 = load i8*, i8** %_secret_arrarg
  %_public_lval482 = load i64, i64* %_public_md_block_size
  %_public_lval483 = load i64, i64* %_public___v29_i
  %_public_multmp484 = mul i64 %_public_lval482, %_public_lval483
  %_public_lval485 = load i64, i64* %_public___v22_overhang
  %_public_subtmp486 = sub i64 %_public_multmp484, %_public_lval485
  %_public_lval487 = load i32, i32* %_public___v31___v30_len
  %_public_icast488 = zext i32 %_public_lval487 to i64
  %_public_addtmp489 = add i64 %_public_subtmp486, %_public_icast488
  %_public_lval490 = load i64, i64* %_public_md_block_size
  %_public_lval491 = load i64, i64* %_public___v29_i
  %_public_multmp492 = mul i64 %_public_lval490, %_public_lval491
  %_public_lval493 = load i64, i64* %_public___v22_overhang
  %_public_subtmp494 = sub i64 %_public_multmp492, %_public_lval493
  %_public_ugttmp495 = icmp ugt i64 %_public_addtmp489, %_public_subtmp494
  %_public_zexttmp496 = zext i1 %_public_ugttmp495 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp496)
  %_public_lval497 = load i64, i64* %_public_md_block_size
  %_public_lval498 = load i64, i64* %_public___v29_i
  %_public_multmp499 = mul i64 %_public_lval497, %_public_lval498
  %_public_lval500 = load i64, i64* %_public___v22_overhang
  %_public_subtmp501 = sub i64 %_public_multmp499, %_public_lval500
  %_public_ugtetmp502 = icmp uge i64 %_public_subtmp501, 0
  %_public_zexttmp503 = zext i1 %_public_ugtetmp502 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp503)
  %_public_lval504 = load i64, i64* %_public_md_block_size
  %_public_lval505 = load i64, i64* %_public___v29_i
  %_public_multmp506 = mul i64 %_public_lval504, %_public_lval505
  %_public_lval507 = load i64, i64* %_public___v22_overhang
  %_public_subtmp508 = sub i64 %_public_multmp506, %_public_lval507
  %_public_lval509 = load i32, i32* %_public___data_len
  %_public_icast510 = zext i32 %_public_lval509 to i64
  %_public_ulttmp511 = icmp ult i64 %_public_subtmp508, %_public_icast510
  %_public_zexttmp512 = zext i1 %_public_ulttmp511 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp512)
  %_public_lval513 = load i64, i64* %_public_md_block_size
  %_public_lval514 = load i64, i64* %_public___v29_i
  %_public_multmp515 = mul i64 %_public_lval513, %_public_lval514
  %_public_lval516 = load i64, i64* %_public___v22_overhang
  %_public_subtmp517 = sub i64 %_public_multmp515, %_public_lval516
  %_public_lval518 = load i32, i32* %_public___v31___v30_len
  %_public_icast519 = zext i32 %_public_lval518 to i64
  %_public_addtmp520 = add i64 %_public_subtmp517, %_public_icast519
  %_public_subtmp521 = sub i64 %_public_addtmp520, 1
  %_public_ugtetmp522 = icmp uge i64 %_public_subtmp521, 0
  %_public_zexttmp523 = zext i1 %_public_ugtetmp522 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp523)
  %_public_lval524 = load i64, i64* %_public_md_block_size
  %_public_lval525 = load i64, i64* %_public___v29_i
  %_public_multmp526 = mul i64 %_public_lval524, %_public_lval525
  %_public_lval527 = load i64, i64* %_public___v22_overhang
  %_public_subtmp528 = sub i64 %_public_multmp526, %_public_lval527
  %_public_lval529 = load i32, i32* %_public___v31___v30_len
  %_public_icast530 = zext i32 %_public_lval529 to i64
  %_public_addtmp531 = add i64 %_public_subtmp528, %_public_icast530
  %_public_subtmp532 = sub i64 %_public_addtmp531, 1
  %_public_lval533 = load i32, i32* %_public___data_len
  %_public_icast534 = zext i32 %_public_lval533 to i64
  %_public_ulttmp535 = icmp ult i64 %_public_subtmp532, %_public_icast534
  %_public_zexttmp536 = zext i1 %_public_ulttmp535 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp536)
  %_public_lval537 = load i64, i64* %_public_md_block_size
  %_public_lval538 = load i64, i64* %_public___v29_i
  %_public_multmp539 = mul i64 %_public_lval537, %_public_lval538
  %_public_lval540 = load i64, i64* %_public___v22_overhang
  %_public_subtmp541 = sub i64 %_public_multmp539, %_public_lval540
  %_secret_ldedviewptr542 = load i8*, i8** %_secret_arrarg15
  %_secret_source_gep543 = getelementptr inbounds i8, i8* %_secret_ldedviewptr542, i64 %_public_subtmp541
  %_secret_arrviewdyn544 = alloca i8*
  store i8* %_secret_source_gep543, i8** %_secret_arrviewdyn544
  %_public_lval545 = load i64, i64* %_public_md_block_size
  %_public_lval546 = load i64, i64* %_public___v29_i
  %_public_multmp547 = mul i64 %_public_lval545, %_public_lval546
  %_public_lval548 = load i64, i64* %_public___v22_overhang
  %_public_subtmp549 = sub i64 %_public_multmp547, %_public_lval548
  %_public_lval550 = load i32, i32* %_public___v31___v30_len
  %_public_icast551 = zext i32 %_public_lval550 to i64
  %_public_addtmp552 = add i64 %_public_subtmp549, %_public_icast551
  %_public_lval553 = load i64, i64* %_public_md_block_size
  %_public_lval554 = load i64, i64* %_public___v29_i
  %_public_multmp555 = mul i64 %_public_lval553, %_public_lval554
  %_public_lval556 = load i64, i64* %_public___v22_overhang
  %_public_subtmp557 = sub i64 %_public_multmp555, %_public_lval556
  %_public_ugttmp558 = icmp ugt i64 %_public_addtmp552, %_public_subtmp557
  %_public_zexttmp559 = zext i1 %_public_ugttmp558 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp559)
  %_public_lval560 = load i64, i64* %_public_md_block_size
  %_public_lval561 = load i64, i64* %_public___v29_i
  %_public_multmp562 = mul i64 %_public_lval560, %_public_lval561
  %_public_lval563 = load i64, i64* %_public___v22_overhang
  %_public_subtmp564 = sub i64 %_public_multmp562, %_public_lval563
  %_public_ugtetmp565 = icmp uge i64 %_public_subtmp564, 0
  %_public_zexttmp566 = zext i1 %_public_ugtetmp565 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp566)
  %_public_lval567 = load i64, i64* %_public_md_block_size
  %_public_lval568 = load i64, i64* %_public___v29_i
  %_public_multmp569 = mul i64 %_public_lval567, %_public_lval568
  %_public_lval570 = load i64, i64* %_public___v22_overhang
  %_public_subtmp571 = sub i64 %_public_multmp569, %_public_lval570
  %_public_lval572 = load i32, i32* %_public___data_len
  %_public_icast573 = zext i32 %_public_lval572 to i64
  %_public_ulttmp574 = icmp ult i64 %_public_subtmp571, %_public_icast573
  %_public_zexttmp575 = zext i1 %_public_ulttmp574 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp575)
  %_public_lval576 = load i64, i64* %_public_md_block_size
  %_public_lval577 = load i64, i64* %_public___v29_i
  %_public_multmp578 = mul i64 %_public_lval576, %_public_lval577
  %_public_lval579 = load i64, i64* %_public___v22_overhang
  %_public_subtmp580 = sub i64 %_public_multmp578, %_public_lval579
  %_public_lval581 = load i32, i32* %_public___v31___v30_len
  %_public_icast582 = zext i32 %_public_lval581 to i64
  %_public_addtmp583 = add i64 %_public_subtmp580, %_public_icast582
  %_public_subtmp584 = sub i64 %_public_addtmp583, 1
  %_public_ugtetmp585 = icmp uge i64 %_public_subtmp584, 0
  %_public_zexttmp586 = zext i1 %_public_ugtetmp585 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp586)
  %_public_lval587 = load i64, i64* %_public_md_block_size
  %_public_lval588 = load i64, i64* %_public___v29_i
  %_public_multmp589 = mul i64 %_public_lval587, %_public_lval588
  %_public_lval590 = load i64, i64* %_public___v22_overhang
  %_public_subtmp591 = sub i64 %_public_multmp589, %_public_lval590
  %_public_lval592 = load i32, i32* %_public___v31___v30_len
  %_public_icast593 = zext i32 %_public_lval592 to i64
  %_public_addtmp594 = add i64 %_public_subtmp591, %_public_icast593
  %_public_subtmp595 = sub i64 %_public_addtmp594, 1
  %_public_lval596 = load i32, i32* %_public___data_len
  %_public_icast597 = zext i32 %_public_lval596 to i64
  %_public_ulttmp598 = icmp ult i64 %_public_subtmp595, %_public_icast597
  %_public_zexttmp599 = zext i1 %_public_ulttmp598 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp599)
  %_public_lval600 = load i64, i64* %_public_md_block_size
  %_public_lval601 = load i64, i64* %_public___v29_i
  %_public_multmp602 = mul i64 %_public_lval600, %_public_lval601
  %_public_lval603 = load i64, i64* %_public___v22_overhang
  %_public_subtmp604 = sub i64 %_public_multmp602, %_public_lval603
  %_secret_ldedviewptr605 = load i8*, i8** %_secret_arrarg15
  %_secret_source_gep606 = getelementptr inbounds i8, i8* %_secret_ldedviewptr605, i64 %_public_subtmp604
  %_secret_arrviewdyn607 = alloca i8*
  store i8* %_secret_source_gep606, i8** %_secret_arrviewdyn607
  %_secret_dynarrarg608 = load i8*, i8** %_secret_arrviewdyn607
  call void @_md_transform(i32 %_public_lval480, i8* %_secret_dynarrarg481, i8* %_secret_dynarrarg608)
  br label %branchmerge610

elsebranch609:                                    ; preds = %branchmerge258
  br label %branchmerge610

branchmerge610:                                   ; preds = %elsebranch609, %thenbranch466
  br label %branchmerge881

elsebranch611:                                    ; preds = %thenbranch248
  %_secret_arrtoptr612 = bitcast [128 x i8]* %_secret___v18_first_block to i8*
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_ldedviewptr613 = load i8*, i8** %_secret_arrarg13
  %_secret_source_gep614 = getelementptr inbounds i8, i8* %_secret_ldedviewptr613, i8 0
  %_secret_arrviewdyn615 = alloca i8*
  store i8* %_secret_source_gep614, i8** %_secret_arrviewdyn615
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_secret_ldedviewptr616 = load i8*, i8** %_secret_arrarg13
  %_secret_source_gep617 = getelementptr inbounds i8, i8* %_secret_ldedviewptr616, i8 0
  %_secret_arrviewdyn618 = alloca i8*
  store i8* %_secret_source_gep617, i8** %_secret_arrviewdyn618
  %_secret_dynarrarg619 = load i8*, i8** %_secret_arrviewdyn618
  call void @_memcpy(i8* %_secret_arrtoptr612, i32 128, i8* %_secret_dynarrarg619, i32 13)
  %_public_lval620 = load i64, i64* %_public_md_block_size
  %_public_subtmp621 = sub i64 %_public_lval620, 13
  %_public_trunctmp622 = trunc i64 %_public_subtmp621 to i32
  store i32 %_public_trunctmp622, i32* %_public___v33___v32_len
  %_public_lval623 = load i64, i64* %_public_md_block_size
  %_public_subtmp624 = sub i64 %_public_lval623, 13
  %_public_trunctmp625 = trunc i64 %_public_subtmp624 to i32
  store i32 %_public_trunctmp625, i32* %_public___v35___v34_len
  %_public_lval626 = load i32, i32* %_public___v33___v32_len
  %_public_icast627 = zext i32 %_public_lval626 to i64
  %_public_addtmp628 = add i64 13, %_public_icast627
  %_public_truncbinop629 = trunc i64 %_public_addtmp628 to i8
  %_public_sgttmp630 = icmp sgt i8 %_public_truncbinop629, 13
  %_public_zexttmp631 = zext i1 %_public_sgttmp630 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp631)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_public_lval632 = load i32, i32* %_public___v33___v32_len
  %_public_icast633 = zext i32 %_public_lval632 to i64
  %_public_addtmp634 = add i64 13, %_public_icast633
  %_public_truncbinop635 = trunc i64 %_public_addtmp634 to i8
  %_public_subtmp636 = sub i8 %_public_truncbinop635, 1
  %_public_lhssext637 = sext i8 %_public_subtmp636 to i64
  %_public_sgtetmp638 = icmp sge i64 %_public_lhssext637, 0
  %_public_zexttmp639 = zext i1 %_public_sgtetmp638 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp639)
  %_public_lval640 = load i32, i32* %_public___v33___v32_len
  %_public_icast641 = zext i32 %_public_lval640 to i64
  %_public_addtmp642 = add i64 13, %_public_icast641
  %_public_truncbinop643 = trunc i64 %_public_addtmp642 to i8
  %_public_subtmp644 = sub i8 %_public_truncbinop643, 1
  %_public_lhssext645 = sext i8 %_public_subtmp644 to i64
  %_public_slttmp646 = icmp slt i64 %_public_lhssext645, 128
  %_public_zexttmp647 = zext i1 %_public_slttmp646 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp647)
  %_secret_arrview648 = alloca i8*
  %_secret_source_gep649 = getelementptr inbounds [128 x i8], [128 x i8]* %_secret___v18_first_block, i8 0, i8 13
  store i8* %_secret_source_gep649, i8** %_secret_arrview648
  %_public_lval650 = load i32, i32* %_public___v33___v32_len
  %_public_icast651 = zext i32 %_public_lval650 to i64
  %_public_addtmp652 = add i64 13, %_public_icast651
  %_public_truncbinop653 = trunc i64 %_public_addtmp652 to i8
  %_public_sgttmp654 = icmp sgt i8 %_public_truncbinop653, 13
  %_public_zexttmp655 = zext i1 %_public_sgttmp654 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp655)
  call void @__VERIFIER_assert(i32 1)
  call void @__VERIFIER_assert(i32 1)
  %_public_lval656 = load i32, i32* %_public___v33___v32_len
  %_public_icast657 = zext i32 %_public_lval656 to i64
  %_public_addtmp658 = add i64 13, %_public_icast657
  %_public_truncbinop659 = trunc i64 %_public_addtmp658 to i8
  %_public_subtmp660 = sub i8 %_public_truncbinop659, 1
  %_public_lhssext661 = sext i8 %_public_subtmp660 to i64
  %_public_sgtetmp662 = icmp sge i64 %_public_lhssext661, 0
  %_public_zexttmp663 = zext i1 %_public_sgtetmp662 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp663)
  %_public_lval664 = load i32, i32* %_public___v33___v32_len
  %_public_icast665 = zext i32 %_public_lval664 to i64
  %_public_addtmp666 = add i64 13, %_public_icast665
  %_public_truncbinop667 = trunc i64 %_public_addtmp666 to i8
  %_public_subtmp668 = sub i8 %_public_truncbinop667, 1
  %_public_lhssext669 = sext i8 %_public_subtmp668 to i64
  %_public_slttmp670 = icmp slt i64 %_public_lhssext669, 128
  %_public_zexttmp671 = zext i1 %_public_slttmp670 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp671)
  %_secret_arrview672 = alloca i8*
  %_secret_source_gep673 = getelementptr inbounds [128 x i8], [128 x i8]* %_secret___v18_first_block, i8 0, i8 13
  store i8* %_secret_source_gep673, i8** %_secret_arrview672
  %_secret_dynarrarg674 = load i8*, i8** %_secret_arrview672
  %_public_lval675 = load i32, i32* %_public___v33___v32_len
  %_public_lval676 = load i32, i32* %_public___v35___v34_len
  %_public_icast677 = zext i32 %_public_lval676 to i64
  %_public_addtmp678 = add i64 0, %_public_icast677
  %_public_truncbinop679 = trunc i64 %_public_addtmp678 to i8
  %_public_sgttmp680 = icmp sgt i8 %_public_truncbinop679, 0
  %_public_zexttmp681 = zext i1 %_public_sgttmp680 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp681)
  call void @__VERIFIER_assert(i32 1)
  %_public_lval682 = load i32, i32* %_public___data_len
  %_public_icast683 = zext i32 %_public_lval682 to i64
  %_public_slttmp684 = icmp slt i64 0, %_public_icast683
  %_public_zexttmp685 = zext i1 %_public_slttmp684 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp685)
  %_public_lval686 = load i32, i32* %_public___v35___v34_len
  %_public_icast687 = zext i32 %_public_lval686 to i64
  %_public_addtmp688 = add i64 0, %_public_icast687
  %_public_truncbinop689 = trunc i64 %_public_addtmp688 to i8
  %_public_subtmp690 = sub i8 %_public_truncbinop689, 1
  %_public_lhssext691 = sext i8 %_public_subtmp690 to i64
  %_public_sgtetmp692 = icmp sge i64 %_public_lhssext691, 0
  %_public_zexttmp693 = zext i1 %_public_sgtetmp692 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp693)
  %_public_lval694 = load i32, i32* %_public___v35___v34_len
  %_public_icast695 = zext i32 %_public_lval694 to i64
  %_public_addtmp696 = add i64 0, %_public_icast695
  %_public_truncbinop697 = trunc i64 %_public_addtmp696 to i8
  %_public_subtmp698 = sub i8 %_public_truncbinop697, 1
  %_public_lval699 = load i32, i32* %_public___data_len
  %_public_icast700 = zext i32 %_public_lval699 to i64
  %_public_lhssext701 = sext i8 %_public_subtmp698 to i64
  %_public_slttmp702 = icmp slt i64 %_public_lhssext701, %_public_icast700
  %_public_zexttmp703 = zext i1 %_public_slttmp702 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp703)
  %_secret_ldedviewptr704 = load i8*, i8** %_secret_arrarg15
  %_secret_source_gep705 = getelementptr inbounds i8, i8* %_secret_ldedviewptr704, i8 0
  %_secret_arrviewdyn706 = alloca i8*
  store i8* %_secret_source_gep705, i8** %_secret_arrviewdyn706
  %_public_lval707 = load i32, i32* %_public___v35___v34_len
  %_public_icast708 = zext i32 %_public_lval707 to i64
  %_public_addtmp709 = add i64 0, %_public_icast708
  %_public_truncbinop710 = trunc i64 %_public_addtmp709 to i8
  %_public_sgttmp711 = icmp sgt i8 %_public_truncbinop710, 0
  %_public_zexttmp712 = zext i1 %_public_sgttmp711 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp712)
  call void @__VERIFIER_assert(i32 1)
  %_public_lval713 = load i32, i32* %_public___data_len
  %_public_icast714 = zext i32 %_public_lval713 to i64
  %_public_slttmp715 = icmp slt i64 0, %_public_icast714
  %_public_zexttmp716 = zext i1 %_public_slttmp715 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp716)
  %_public_lval717 = load i32, i32* %_public___v35___v34_len
  %_public_icast718 = zext i32 %_public_lval717 to i64
  %_public_addtmp719 = add i64 0, %_public_icast718
  %_public_truncbinop720 = trunc i64 %_public_addtmp719 to i8
  %_public_subtmp721 = sub i8 %_public_truncbinop720, 1
  %_public_lhssext722 = sext i8 %_public_subtmp721 to i64
  %_public_sgtetmp723 = icmp sge i64 %_public_lhssext722, 0
  %_public_zexttmp724 = zext i1 %_public_sgtetmp723 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp724)
  %_public_lval725 = load i32, i32* %_public___v35___v34_len
  %_public_icast726 = zext i32 %_public_lval725 to i64
  %_public_addtmp727 = add i64 0, %_public_icast726
  %_public_truncbinop728 = trunc i64 %_public_addtmp727 to i8
  %_public_subtmp729 = sub i8 %_public_truncbinop728, 1
  %_public_lval730 = load i32, i32* %_public___data_len
  %_public_icast731 = zext i32 %_public_lval730 to i64
  %_public_lhssext732 = sext i8 %_public_subtmp729 to i64
  %_public_slttmp733 = icmp slt i64 %_public_lhssext732, %_public_icast731
  %_public_zexttmp734 = zext i1 %_public_slttmp733 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp734)
  %_secret_ldedviewptr735 = load i8*, i8** %_secret_arrarg15
  %_secret_source_gep736 = getelementptr inbounds i8, i8* %_secret_ldedviewptr735, i8 0
  %_secret_arrviewdyn737 = alloca i8*
  store i8* %_secret_source_gep736, i8** %_secret_arrviewdyn737
  %_secret_dynarrarg738 = load i8*, i8** %_secret_arrviewdyn737
  %_public_lval739 = load i32, i32* %_public___v35___v34_len
  call void @_memcpy(i8* %_secret_dynarrarg674, i32 %_public_lval675, i8* %_secret_dynarrarg738, i32 %_public_lval739)
  %_public_lval740 = load i32, i32* %_public_sha_type
  %_secret_dynarrarg741 = load i8*, i8** %_secret_arrarg
  %_secret_arrtoptr742 = bitcast [128 x i8]* %_secret___v18_first_block to i8*
  call void @_md_transform(i32 %_public_lval740, i8* %_secret_dynarrarg741, i8* %_secret_arrtoptr742)
  %_public_calltmp743 = call i64 @__VERIFIER_nondet_unsigned_long_long()
  store i64 %_public_calltmp743, i64* %_public___v36_i
  %_public_lval744 = load i64, i64* %_public___v36_i
  %_public_lval745 = load i64, i64* %_public___v17_k
  %_public_lval746 = load i64, i64* %_public_md_block_size
  %_public_udivtmp747 = udiv i64 %_public_lval745, %_public_lval746
  %_public_ulttmp748 = icmp ult i64 %_public_lval744, %_public_udivtmp747
  %_public_branchcompare749 = icmp eq i1 %_public_ulttmp748, true
  br i1 %_public_branchcompare749, label %thenbranch750, label %elsebranch879

thenbranch750:                                    ; preds = %elsebranch611
  %_public_lval751 = load i64, i64* %_public___v36_i
  %_public_lval752 = load i64, i64* %_public___v36_i
  %_public_addtmp753 = add i64 %_public_lval752, 1
  %_public_ulttmp754 = icmp ult i64 %_public_lval751, %_public_addtmp753
  %_public_zexttmp755 = zext i1 %_public_ulttmp754 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp755)
  %_public_lval756 = load i64, i64* %_public___v36_i
  %_public_ulttmp757 = icmp ult i64 1, %_public_lval756
  %_public_lval758 = load i64, i64* %_public___v36_i
  %_public_eqtmp759 = icmp eq i64 1, %_public_lval758
  %_public_lortmp760 = or i1 %_public_ulttmp757, %_public_eqtmp759
  %_public_zexttmp761 = zext i1 %_public_lortmp760 to i32
  call void @__VERIFIER_assume(i32 %_public_zexttmp761)
  %_public_lval762 = load i64, i64* %_public_md_block_size
  %_public_trunctmp763 = trunc i64 %_public_lval762 to i32
  store i32 %_public_trunctmp763, i32* %_public___v38___v37_len
  %_public_lval764 = load i32, i32* %_public_sha_type
  %_secret_dynarrarg765 = load i8*, i8** %_secret_arrarg
  %_public_lval766 = load i64, i64* %_public_md_block_size
  %_public_lval767 = load i64, i64* %_public___v36_i
  %_public_multmp768 = mul i64 %_public_lval766, %_public_lval767
  %_public_subtmp769 = sub i64 %_public_multmp768, 13
  %_public_lval770 = load i32, i32* %_public___v38___v37_len
  %_public_icast771 = zext i32 %_public_lval770 to i64
  %_public_addtmp772 = add i64 %_public_subtmp769, %_public_icast771
  %_public_lval773 = load i64, i64* %_public_md_block_size
  %_public_lval774 = load i64, i64* %_public___v36_i
  %_public_multmp775 = mul i64 %_public_lval773, %_public_lval774
  %_public_subtmp776 = sub i64 %_public_multmp775, 13
  %_public_ugttmp777 = icmp ugt i64 %_public_addtmp772, %_public_subtmp776
  %_public_zexttmp778 = zext i1 %_public_ugttmp777 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp778)
  %_public_lval779 = load i64, i64* %_public_md_block_size
  %_public_lval780 = load i64, i64* %_public___v36_i
  %_public_multmp781 = mul i64 %_public_lval779, %_public_lval780
  %_public_subtmp782 = sub i64 %_public_multmp781, 13
  %_public_ugtetmp783 = icmp uge i64 %_public_subtmp782, 0
  %_public_zexttmp784 = zext i1 %_public_ugtetmp783 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp784)
  %_public_lval785 = load i64, i64* %_public_md_block_size
  %_public_lval786 = load i64, i64* %_public___v36_i
  %_public_multmp787 = mul i64 %_public_lval785, %_public_lval786
  %_public_subtmp788 = sub i64 %_public_multmp787, 13
  %_public_lval789 = load i32, i32* %_public___data_len
  %_public_icast790 = zext i32 %_public_lval789 to i64
  %_public_ulttmp791 = icmp ult i64 %_public_subtmp788, %_public_icast790
  %_public_zexttmp792 = zext i1 %_public_ulttmp791 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp792)
  %_public_lval793 = load i64, i64* %_public_md_block_size
  %_public_lval794 = load i64, i64* %_public___v36_i
  %_public_multmp795 = mul i64 %_public_lval793, %_public_lval794
  %_public_subtmp796 = sub i64 %_public_multmp795, 13
  %_public_lval797 = load i32, i32* %_public___v38___v37_len
  %_public_icast798 = zext i32 %_public_lval797 to i64
  %_public_addtmp799 = add i64 %_public_subtmp796, %_public_icast798
  %_public_subtmp800 = sub i64 %_public_addtmp799, 1
  %_public_ugtetmp801 = icmp uge i64 %_public_subtmp800, 0
  %_public_zexttmp802 = zext i1 %_public_ugtetmp801 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp802)
  %_public_lval803 = load i64, i64* %_public_md_block_size
  %_public_lval804 = load i64, i64* %_public___v36_i
  %_public_multmp805 = mul i64 %_public_lval803, %_public_lval804
  %_public_subtmp806 = sub i64 %_public_multmp805, 13
  %_public_lval807 = load i32, i32* %_public___v38___v37_len
  %_public_icast808 = zext i32 %_public_lval807 to i64
  %_public_addtmp809 = add i64 %_public_subtmp806, %_public_icast808
  %_public_subtmp810 = sub i64 %_public_addtmp809, 1
  %_public_lval811 = load i32, i32* %_public___data_len
  %_public_icast812 = zext i32 %_public_lval811 to i64
  %_public_ulttmp813 = icmp ult i64 %_public_subtmp810, %_public_icast812
  %_public_zexttmp814 = zext i1 %_public_ulttmp813 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp814)
  %_public_lval815 = load i64, i64* %_public_md_block_size
  %_public_lval816 = load i64, i64* %_public___v36_i
  %_public_multmp817 = mul i64 %_public_lval815, %_public_lval816
  %_public_subtmp818 = sub i64 %_public_multmp817, 13
  %_secret_ldedviewptr819 = load i8*, i8** %_secret_arrarg15
  %_secret_source_gep820 = getelementptr inbounds i8, i8* %_secret_ldedviewptr819, i64 %_public_subtmp818
  %_secret_arrviewdyn821 = alloca i8*
  store i8* %_secret_source_gep820, i8** %_secret_arrviewdyn821
  %_public_lval822 = load i64, i64* %_public_md_block_size
  %_public_lval823 = load i64, i64* %_public___v36_i
  %_public_multmp824 = mul i64 %_public_lval822, %_public_lval823
  %_public_subtmp825 = sub i64 %_public_multmp824, 13
  %_public_lval826 = load i32, i32* %_public___v38___v37_len
  %_public_icast827 = zext i32 %_public_lval826 to i64
  %_public_addtmp828 = add i64 %_public_subtmp825, %_public_icast827
  %_public_lval829 = load i64, i64* %_public_md_block_size
  %_public_lval830 = load i64, i64* %_public___v36_i
  %_public_multmp831 = mul i64 %_public_lval829, %_public_lval830
  %_public_subtmp832 = sub i64 %_public_multmp831, 13
  %_public_ugttmp833 = icmp ugt i64 %_public_addtmp828, %_public_subtmp832
  %_public_zexttmp834 = zext i1 %_public_ugttmp833 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp834)
  %_public_lval835 = load i64, i64* %_public_md_block_size
  %_public_lval836 = load i64, i64* %_public___v36_i
  %_public_multmp837 = mul i64 %_public_lval835, %_public_lval836
  %_public_subtmp838 = sub i64 %_public_multmp837, 13
  %_public_ugtetmp839 = icmp uge i64 %_public_subtmp838, 0
  %_public_zexttmp840 = zext i1 %_public_ugtetmp839 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp840)
  %_public_lval841 = load i64, i64* %_public_md_block_size
  %_public_lval842 = load i64, i64* %_public___v36_i
  %_public_multmp843 = mul i64 %_public_lval841, %_public_lval842
  %_public_subtmp844 = sub i64 %_public_multmp843, 13
  %_public_lval845 = load i32, i32* %_public___data_len
  %_public_icast846 = zext i32 %_public_lval845 to i64
  %_public_ulttmp847 = icmp ult i64 %_public_subtmp844, %_public_icast846
  %_public_zexttmp848 = zext i1 %_public_ulttmp847 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp848)
  %_public_lval849 = load i64, i64* %_public_md_block_size
  %_public_lval850 = load i64, i64* %_public___v36_i
  %_public_multmp851 = mul i64 %_public_lval849, %_public_lval850
  %_public_subtmp852 = sub i64 %_public_multmp851, 13
  %_public_lval853 = load i32, i32* %_public___v38___v37_len
  %_public_icast854 = zext i32 %_public_lval853 to i64
  %_public_addtmp855 = add i64 %_public_subtmp852, %_public_icast854
  %_public_subtmp856 = sub i64 %_public_addtmp855, 1
  %_public_ugtetmp857 = icmp uge i64 %_public_subtmp856, 0
  %_public_zexttmp858 = zext i1 %_public_ugtetmp857 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp858)
  %_public_lval859 = load i64, i64* %_public_md_block_size
  %_public_lval860 = load i64, i64* %_public___v36_i
  %_public_multmp861 = mul i64 %_public_lval859, %_public_lval860
  %_public_subtmp862 = sub i64 %_public_multmp861, 13
  %_public_lval863 = load i32, i32* %_public___v38___v37_len
  %_public_icast864 = zext i32 %_public_lval863 to i64
  %_public_addtmp865 = add i64 %_public_subtmp862, %_public_icast864
  %_public_subtmp866 = sub i64 %_public_addtmp865, 1
  %_public_lval867 = load i32, i32* %_public___data_len
  %_public_icast868 = zext i32 %_public_lval867 to i64
  %_public_ulttmp869 = icmp ult i64 %_public_subtmp866, %_public_icast868
  %_public_zexttmp870 = zext i1 %_public_ulttmp869 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp870)
  %_public_lval871 = load i64, i64* %_public_md_block_size
  %_public_lval872 = load i64, i64* %_public___v36_i
  %_public_multmp873 = mul i64 %_public_lval871, %_public_lval872
  %_public_subtmp874 = sub i64 %_public_multmp873, 13
  %_secret_ldedviewptr875 = load i8*, i8** %_secret_arrarg15
  %_secret_source_gep876 = getelementptr inbounds i8, i8* %_secret_ldedviewptr875, i64 %_public_subtmp874
  %_secret_arrviewdyn877 = alloca i8*
  store i8* %_secret_source_gep876, i8** %_secret_arrviewdyn877
  %_secret_dynarrarg878 = load i8*, i8** %_secret_arrviewdyn877
  call void @_md_transform(i32 %_public_lval764, i8* %_secret_dynarrarg765, i8* %_secret_dynarrarg878)
  br label %branchmerge880

elsebranch879:                                    ; preds = %elsebranch611
  br label %branchmerge880

branchmerge880:                                   ; preds = %elsebranch879, %thenbranch750
  br label %branchmerge881

branchmerge881:                                   ; preds = %branchmerge880, %branchmerge610
  br label %branchmerge883

elsebranch882:                                    ; preds = %branchmerge244
  br label %branchmerge883

branchmerge883:                                   ; preds = %elsebranch882, %branchmerge881
  %_public_calltmp884 = call i64 @__VERIFIER_nondet_unsigned_long_long()
  store i64 %_public_calltmp884, i64* %_public___v39_i
  %_public_lval885 = load i64, i64* %_public___v39_i
  %_public_lval886 = load i64, i64* %_public___v16_num_starting_blocks
  %_public_lval887 = load i64, i64* %_public___v8_variance_blocks
  %_public_addtmp888 = add i64 %_public_lval886, %_public_lval887
  %_public_addtmp889 = add i64 %_public_addtmp888, 1
  %_public_ulttmp890 = icmp ult i64 %_public_lval885, %_public_addtmp889
  %_public_branchcompare891 = icmp eq i1 %_public_ulttmp890, true
  br i1 %_public_branchcompare891, label %thenbranch892, label %elsebranch1203

thenbranch892:                                    ; preds = %branchmerge883
  %_public_lval893 = load i64, i64* %_public___v39_i
  %_public_lval894 = load i64, i64* %_public___v39_i
  %_public_addtmp895 = add i64 %_public_lval894, 1
  %_public_ulttmp896 = icmp ult i64 %_public_lval893, %_public_addtmp895
  %_public_zexttmp897 = zext i1 %_public_ulttmp896 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp897)
  %_public_lval898 = load i64, i64* %_public___v16_num_starting_blocks
  %_public_lval899 = load i64, i64* %_public___v39_i
  %_public_ulttmp900 = icmp ult i64 %_public_lval898, %_public_lval899
  %_public_lval901 = load i64, i64* %_public___v16_num_starting_blocks
  %_public_lval902 = load i64, i64* %_public___v39_i
  %_public_eqtmp903 = icmp eq i64 %_public_lval901, %_public_lval902
  %_public_lortmp904 = or i1 %_public_ulttmp900, %_public_eqtmp903
  %_public_zexttmp905 = zext i1 %_public_lortmp904 to i32
  call void @__VERIFIER_assume(i32 %_public_zexttmp905)
  %_secret___v40_block = alloca [128 x i8]
  %_secret_sourcecasted906 = bitcast [128 x i8]* %_secret___v40_block to i8*
  call void @llvm.memset.p0i8.i64(i8* %_secret_sourcecasted906, i8 0, i64 128, i32 0, i1 false)
  %_public_lval907 = load i64, i64* %_public___v39_i
  %_secret_lval908 = load i64, i64* %_secret___v14_index_a
  %_secret_eqtmp = icmp eq i64 %_public_lval907, %_secret_lval908
  store i1 %_secret_eqtmp, i1* %_secret___v41_is_block_a
  %_public_lval909 = load i64, i64* %_public___v39_i
  %_secret_lval910 = load i64, i64* %_secret___v15_index_b
  %_secret_eqtmp911 = icmp eq i64 %_public_lval909, %_secret_lval910
  store i1 %_secret_eqtmp911, i1* %_secret___v42_is_block_b
  %_public_calltmp912 = call i64 @__VERIFIER_nondet_unsigned_long_long()
  store i64 %_public_calltmp912, i64* %_public___v43_j
  %_public_lval913 = load i64, i64* %_public___v43_j
  %_public_lval914 = load i64, i64* %_public_md_block_size
  %_public_ulttmp915 = icmp ult i64 %_public_lval913, %_public_lval914
  %_public_branchcompare916 = icmp eq i1 %_public_ulttmp915, true
  br i1 %_public_branchcompare916, label %thenbranch917, label %elsebranch1130

thenbranch917:                                    ; preds = %thenbranch892
  %_public_lval918 = load i64, i64* %_public___v43_j
  %_public_lval919 = load i64, i64* %_public___v43_j
  %_public_addtmp920 = add i64 %_public_lval919, 1
  %_public_ulttmp921 = icmp ult i64 %_public_lval918, %_public_addtmp920
  %_public_zexttmp922 = zext i1 %_public_ulttmp921 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp922)
  %_public_lval923 = load i64, i64* %_public___v43_j
  %_public_ulttmp924 = icmp ult i64 0, %_public_lval923
  %_public_lval925 = load i64, i64* %_public___v43_j
  %_public_eqtmp926 = icmp eq i64 0, %_public_lval925
  %_public_lortmp927 = or i1 %_public_ulttmp924, %_public_eqtmp926
  %_public_zexttmp928 = zext i1 %_public_lortmp927 to i32
  call void @__VERIFIER_assume(i32 %_public_zexttmp928)
  store i8 0, i8* %_secret___v44_b
  %_public_lval929 = load i64, i64* %_public___v17_k
  %_public_lval930 = load i64, i64* %_public___v7_header_length
  %_public_ulttmp931 = icmp ult i64 %_public_lval929, %_public_lval930
  %_public_branchcompare932 = icmp eq i1 %_public_ulttmp931, true
  br i1 %_public_branchcompare932, label %thenbranch933, label %elsebranch944

thenbranch933:                                    ; preds = %thenbranch917
  %_public_lval934 = load i64, i64* %_public___v17_k
  %_public_ugtetmp935 = icmp uge i64 %_public_lval934, 0
  %_public_zexttmp936 = zext i1 %_public_ugtetmp935 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp936)
  %_public_lval937 = load i64, i64* %_public___v17_k
  %_public_ulttmp938 = icmp ult i64 %_public_lval937, 13
  %_public_zexttmp939 = zext i1 %_public_ulttmp938 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp939)
  %_public_lval940 = load i64, i64* %_public___v17_k
  %_secret_dyn941 = load i8*, i8** %_secret_arrarg13
  %_secret_ptr942 = getelementptr inbounds i8, i8* %_secret_dyn941, i64 %_public_lval940
  %_secret_lval943 = load i8, i8* %_secret_ptr942
  store i8 %_secret_lval943, i8* %_secret___v44_b
  br label %branchmerge973

elsebranch944:                                    ; preds = %thenbranch917
  %_public_lval945 = load i64, i64* %_public___v17_k
  %_public_lval946 = load i32, i32* %_public___data_len
  %_public_lval947 = load i64, i64* %_public___v7_header_length
  %_public_lhssext948 = zext i32 %_public_lval946 to i64
  %_public_addtmp949 = add i64 %_public_lhssext948, %_public_lval947
  %_public_ulttmp950 = icmp ult i64 %_public_lval945, %_public_addtmp949
  %_public_branchcompare951 = icmp eq i1 %_public_ulttmp950, true
  br i1 %_public_branchcompare951, label %thenbranch952, label %elsebranch971

thenbranch952:                                    ; preds = %elsebranch944
  %_public_lval953 = load i64, i64* %_public___v17_k
  %_public_lval954 = load i64, i64* %_public___v7_header_length
  %_public_subtmp955 = sub i64 %_public_lval953, %_public_lval954
  %_public_ugtetmp956 = icmp uge i64 %_public_subtmp955, 0
  %_public_zexttmp957 = zext i1 %_public_ugtetmp956 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp957)
  %_public_lval958 = load i64, i64* %_public___v17_k
  %_public_lval959 = load i64, i64* %_public___v7_header_length
  %_public_subtmp960 = sub i64 %_public_lval958, %_public_lval959
  %_public_lval961 = load i32, i32* %_public___data_len
  %_public_icast962 = zext i32 %_public_lval961 to i64
  %_public_ulttmp963 = icmp ult i64 %_public_subtmp960, %_public_icast962
  %_public_zexttmp964 = zext i1 %_public_ulttmp963 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp964)
  %_public_lval965 = load i64, i64* %_public___v17_k
  %_public_lval966 = load i64, i64* %_public___v7_header_length
  %_public_subtmp967 = sub i64 %_public_lval965, %_public_lval966
  %_secret_dyn968 = load i8*, i8** %_secret_arrarg15
  %_secret_ptr969 = getelementptr inbounds i8, i8* %_secret_dyn968, i64 %_public_subtmp967
  %_secret_lval970 = load i8, i8* %_secret_ptr969
  store i8 %_secret_lval970, i8* %_secret___v44_b
  br label %branchmerge972

elsebranch971:                                    ; preds = %elsebranch944
  br label %branchmerge972

branchmerge972:                                   ; preds = %elsebranch971, %thenbranch952
  br label %branchmerge973

branchmerge973:                                   ; preds = %branchmerge972, %thenbranch933
  %_public_lval974 = load i64, i64* %_public___v17_k
  %_public_addtmp975 = add i64 %_public_lval974, 1
  store i64 %_public_addtmp975, i64* %_public___v17_k
  store i1 false, i1* %_secret___m2
  %_secret_lval976 = load i1, i1* %_secret___v41_is_block_a
  store i1 %_secret_lval976, i1* %_secret___m3
  %_secret_lval977 = load i1, i1* %_secret___m3
  %_secret_landtmp = and i1 true, %_secret_lval977
  %_secret_lval978 = load i1, i1* %_secret___rnset
  %_secret_landtmp979 = and i1 %_secret_landtmp, %_secret_lval978
  %_secret_condtmp = icmp ne i1 %_secret_landtmp979, false
  %_public_lval980 = load i64, i64* %_public___v43_j
  %_secret_lval981 = load i64, i64* %_secret___v13_c
  %_secret_ugtetmp = icmp uge i64 %_public_lval980, %_secret_lval981
  %_secret_lval982 = load i1, i1* %_secret___m2
  %_secret_selecttmp = call i1 @select.cmov.asm.i1(i1 %_secret_condtmp, i1 %_secret_ugtetmp, i1 %_secret_lval982)
  store i1 %_secret_selecttmp, i1* %_secret___m2
  %_secret_lval983 = load i1, i1* %_secret___m3
  %_secret_lnottmp = xor i1 %_secret_lval983, true
  store i1 %_secret_lnottmp, i1* %_secret___m3
  %_secret_lval984 = load i1, i1* %_secret___m3
  %_secret_landtmp985 = and i1 true, %_secret_lval984
  %_secret_lval986 = load i1, i1* %_secret___rnset
  %_secret_landtmp987 = and i1 %_secret_landtmp985, %_secret_lval986
  %_secret_condtmp988 = icmp ne i1 %_secret_landtmp987, false
  %_secret_lval989 = load i1, i1* %_secret___m2
  %_secret_selecttmp990 = call i1 @select.cmov.asm.i1(i1 %_secret_condtmp988, i1 false, i1 %_secret_lval989)
  store i1 %_secret_selecttmp990, i1* %_secret___m2
  %_secret___m2991 = load i1, i1* %_secret___m2
  store i1 %_secret___m2991, i1* %_secret___v45_is_past_c
  store i1 false, i1* %_secret___m4
  %_secret_lval992 = load i1, i1* %_secret___v41_is_block_a
  store i1 %_secret_lval992, i1* %_secret___m5
  %_secret_lval993 = load i1, i1* %_secret___m5
  %_secret_landtmp994 = and i1 true, %_secret_lval993
  %_secret_lval995 = load i1, i1* %_secret___rnset
  %_secret_landtmp996 = and i1 %_secret_landtmp994, %_secret_lval995
  %_secret_condtmp997 = icmp ne i1 %_secret_landtmp996, false
  %_public_lval998 = load i64, i64* %_public___v43_j
  %_secret_lval999 = load i64, i64* %_secret___v13_c
  %_secret_addtmp1000 = add i64 %_secret_lval999, 1
  %_secret_ugtetmp1001 = icmp uge i64 %_public_lval998, %_secret_addtmp1000
  %_secret_lval1002 = load i1, i1* %_secret___m4
  %_secret_selecttmp1003 = call i1 @select.cmov.asm.i1(i1 %_secret_condtmp997, i1 %_secret_ugtetmp1001, i1 %_secret_lval1002)
  store i1 %_secret_selecttmp1003, i1* %_secret___m4
  %_secret_lval1004 = load i1, i1* %_secret___m5
  %_secret_lnottmp1005 = xor i1 %_secret_lval1004, true
  store i1 %_secret_lnottmp1005, i1* %_secret___m5
  %_secret_lval1006 = load i1, i1* %_secret___m5
  %_secret_landtmp1007 = and i1 true, %_secret_lval1006
  %_secret_lval1008 = load i1, i1* %_secret___rnset
  %_secret_landtmp1009 = and i1 %_secret_landtmp1007, %_secret_lval1008
  %_secret_condtmp1010 = icmp ne i1 %_secret_landtmp1009, false
  %_secret_lval1011 = load i1, i1* %_secret___m4
  %_secret_selecttmp1012 = call i1 @select.cmov.asm.i1(i1 %_secret_condtmp1010, i1 false, i1 %_secret_lval1011)
  store i1 %_secret_selecttmp1012, i1* %_secret___m4
  %_secret___m41013 = load i1, i1* %_secret___m4
  store i1 %_secret___m41013, i1* %_secret___v46_is_past_cp1
  store i8 0, i8* %_secret___m6
  %_secret_lval1014 = load i1, i1* %_secret___v45_is_past_c
  store i1 %_secret_lval1014, i1* %_secret___m7
  %_secret_lval1015 = load i1, i1* %_secret___m7
  %_secret_landtmp1016 = and i1 true, %_secret_lval1015
  %_secret_lval1017 = load i1, i1* %_secret___rnset
  %_secret_landtmp1018 = and i1 %_secret_landtmp1016, %_secret_lval1017
  %_secret_condtmp1019 = icmp ne i1 %_secret_landtmp1018, false
  %_secret_lval1020 = load i8, i8* %_secret___m6
  %_secret_selecttmp1021 = call i8 @select.cmov.asm.i8(i1 %_secret_condtmp1019, i8 -128, i8 %_secret_lval1020)
  store i8 %_secret_selecttmp1021, i8* %_secret___m6
  %_secret_lval1022 = load i1, i1* %_secret___m7
  %_secret_lnottmp1023 = xor i1 %_secret_lval1022, true
  store i1 %_secret_lnottmp1023, i1* %_secret___m7
  %_secret_lval1024 = load i1, i1* %_secret___m7
  %_secret_landtmp1025 = and i1 true, %_secret_lval1024
  %_secret_lval1026 = load i1, i1* %_secret___rnset
  %_secret_landtmp1027 = and i1 %_secret_landtmp1025, %_secret_lval1026
  %_secret_condtmp1028 = icmp ne i1 %_secret_landtmp1027, false
  %_secret_lval1029 = load i8, i8* %_secret___v44_b
  %_secret_lval1030 = load i8, i8* %_secret___m6
  %_secret_selecttmp1031 = call i8 @select.cmov.asm.i8(i1 %_secret_condtmp1028, i8 %_secret_lval1029, i8 %_secret_lval1030)
  store i8 %_secret_selecttmp1031, i8* %_secret___m6
  %_secret___m61032 = load i8, i8* %_secret___m6
  store i8 %_secret___m61032, i8* %_secret___v44_b
  %_secret_lval1033 = load i1, i1* %_secret___v46_is_past_cp1
  store i1 %_secret_lval1033, i1* %_secret___m8
  %_secret_lval1034 = load i1, i1* %_secret___m8
  %_secret_landtmp1035 = and i1 true, %_secret_lval1034
  %_secret_lval1036 = load i1, i1* %_secret___rnset
  %_secret_landtmp1037 = and i1 %_secret_landtmp1035, %_secret_lval1036
  %_secret_condtmp1038 = icmp ne i1 %_secret_landtmp1037, false
  %_secret_lval1039 = load i8, i8* %_secret___v44_b
  %_secret_selecttmp1040 = call i8 @select.cmov.asm.i8(i1 %_secret_condtmp1038, i8 0, i8 %_secret_lval1039)
  store i8 %_secret_selecttmp1040, i8* %_secret___v44_b
  %_secret_lval1041 = load i1, i1* %_secret___m8
  %_secret_lnottmp1042 = xor i1 %_secret_lval1041, true
  store i1 %_secret_lnottmp1042, i1* %_secret___m8
  store i1 false, i1* %_secret___m9
  %_secret_lval1043 = load i1, i1* %_secret___v42_is_block_b
  store i1 %_secret_lval1043, i1* %_secret___m10
  %_secret_lval1044 = load i1, i1* %_secret___m10
  %_secret_landtmp1045 = and i1 true, %_secret_lval1044
  %_secret_lval1046 = load i1, i1* %_secret___rnset
  %_secret_landtmp1047 = and i1 %_secret_landtmp1045, %_secret_lval1046
  %_secret_condtmp1048 = icmp ne i1 %_secret_landtmp1047, false
  %_secret_lval1049 = load i1, i1* %_secret___v41_is_block_a
  %_secret_lnottmp1050 = xor i1 %_secret_lval1049, true
  %_secret_lval1051 = load i1, i1* %_secret___m9
  %_secret_selecttmp1052 = call i1 @select.cmov.asm.i1(i1 %_secret_condtmp1048, i1 %_secret_lnottmp1050, i1 %_secret_lval1051)
  store i1 %_secret_selecttmp1052, i1* %_secret___m9
  %_secret_lval1053 = load i1, i1* %_secret___m10
  %_secret_lnottmp1054 = xor i1 %_secret_lval1053, true
  store i1 %_secret_lnottmp1054, i1* %_secret___m10
  %_secret_lval1055 = load i1, i1* %_secret___m10
  %_secret_landtmp1056 = and i1 true, %_secret_lval1055
  %_secret_lval1057 = load i1, i1* %_secret___rnset
  %_secret_landtmp1058 = and i1 %_secret_landtmp1056, %_secret_lval1057
  %_secret_condtmp1059 = icmp ne i1 %_secret_landtmp1058, false
  %_secret_lval1060 = load i1, i1* %_secret___m9
  %_secret_selecttmp1061 = call i1 @select.cmov.asm.i1(i1 %_secret_condtmp1059, i1 false, i1 %_secret_lval1060)
  store i1 %_secret_selecttmp1061, i1* %_secret___m9
  %_secret___m91062 = load i1, i1* %_secret___m9
  store i1 %_secret___m91062, i1* %_secret___m11
  %_secret_lval1063 = load i1, i1* %_secret___m11
  %_secret_landtmp1064 = and i1 true, %_secret_lval1063
  %_secret_lval1065 = load i1, i1* %_secret___rnset
  %_secret_landtmp1066 = and i1 %_secret_landtmp1064, %_secret_lval1065
  %_secret_condtmp1067 = icmp ne i1 %_secret_landtmp1066, false
  %_secret_lval1068 = load i8, i8* %_secret___v44_b
  %_secret_selecttmp1069 = call i8 @select.cmov.asm.i8(i1 %_secret_condtmp1067, i8 0, i8 %_secret_lval1068)
  store i8 %_secret_selecttmp1069, i8* %_secret___v44_b
  %_secret_lval1070 = load i1, i1* %_secret___m11
  %_secret_lnottmp1071 = xor i1 %_secret_lval1070, true
  store i1 %_secret_lnottmp1071, i1* %_secret___m11
  %_public_lval1072 = load i64, i64* %_public___v43_j
  %_public_lval1073 = load i64, i64* %_public_md_block_size
  %_public_lval1074 = load i64, i64* %_public_md_length_size
  %_public_subtmp1075 = sub i64 %_public_lval1073, %_public_lval1074
  %_public_ugtetmp1076 = icmp uge i64 %_public_lval1072, %_public_subtmp1075
  %_public_branchcompare1077 = icmp eq i1 %_public_ugtetmp1076, true
  br i1 %_public_branchcompare1077, label %thenbranch1078, label %elsebranch1119

thenbranch1078:                                   ; preds = %branchmerge973
  store i8 0, i8* %_secret___m12
  %_secret_lval1079 = load i1, i1* %_secret___v42_is_block_b
  store i1 %_secret_lval1079, i1* %_secret___m13
  %_secret_lval1080 = load i1, i1* %_secret___m13
  %_secret_landtmp1081 = and i1 true, %_secret_lval1080
  %_secret_lval1082 = load i1, i1* %_secret___rnset
  %_secret_landtmp1083 = and i1 %_secret_landtmp1081, %_secret_lval1082
  %_secret_condtmp1084 = icmp ne i1 %_secret_landtmp1083, false
  %_public_lval1085 = load i64, i64* %_public___v43_j
  %_public_lval1086 = load i64, i64* %_public_md_block_size
  %_public_lval1087 = load i64, i64* %_public_md_length_size
  %_public_subtmp1088 = sub i64 %_public_lval1086, %_public_lval1087
  %_public_subtmp1089 = sub i64 %_public_lval1085, %_public_subtmp1088
  %_public_ugtetmp1090 = icmp uge i64 %_public_subtmp1089, 0
  %_public_zexttmp1091 = zext i1 %_public_ugtetmp1090 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp1091)
  %_public_lval1092 = load i64, i64* %_public___v43_j
  %_public_lval1093 = load i64, i64* %_public_md_block_size
  %_public_lval1094 = load i64, i64* %_public_md_length_size
  %_public_subtmp1095 = sub i64 %_public_lval1093, %_public_lval1094
  %_public_subtmp1096 = sub i64 %_public_lval1092, %_public_subtmp1095
  %_public_ulttmp1097 = icmp ult i64 %_public_subtmp1096, 16
  %_public_zexttmp1098 = zext i1 %_public_ulttmp1097 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp1098)
  %_public_lval1099 = load i64, i64* %_public___v43_j
  %_public_lval1100 = load i64, i64* %_public_md_block_size
  %_public_lval1101 = load i64, i64* %_public_md_length_size
  %_public_subtmp1102 = sub i64 %_public_lval1100, %_public_lval1101
  %_public_subtmp1103 = sub i64 %_public_lval1099, %_public_subtmp1102
  %_secret_ptr1104 = getelementptr inbounds [16 x i8], [16 x i8]* %_secret___v21_length_bytes, i64 0, i64 %_public_subtmp1103
  %_secret_lval1105 = load i8, i8* %_secret_ptr1104
  %_secret_lval1106 = load i8, i8* %_secret___m12
  %_secret_selecttmp1107 = call i8 @select.cmov.asm.i8(i1 %_secret_condtmp1084, i8 %_secret_lval1105, i8 %_secret_lval1106)
  store i8 %_secret_selecttmp1107, i8* %_secret___m12
  %_secret_lval1108 = load i1, i1* %_secret___m13
  %_secret_lnottmp1109 = xor i1 %_secret_lval1108, true
  store i1 %_secret_lnottmp1109, i1* %_secret___m13
  %_secret_lval1110 = load i1, i1* %_secret___m13
  %_secret_landtmp1111 = and i1 true, %_secret_lval1110
  %_secret_lval1112 = load i1, i1* %_secret___rnset
  %_secret_landtmp1113 = and i1 %_secret_landtmp1111, %_secret_lval1112
  %_secret_condtmp1114 = icmp ne i1 %_secret_landtmp1113, false
  %_secret_lval1115 = load i8, i8* %_secret___v44_b
  %_secret_lval1116 = load i8, i8* %_secret___m12
  %_secret_selecttmp1117 = call i8 @select.cmov.asm.i8(i1 %_secret_condtmp1114, i8 %_secret_lval1115, i8 %_secret_lval1116)
  store i8 %_secret_selecttmp1117, i8* %_secret___m12
  %_secret___m121118 = load i8, i8* %_secret___m12
  store i8 %_secret___m121118, i8* %_secret___v44_b
  br label %branchmerge1120

elsebranch1119:                                   ; preds = %branchmerge973
  br label %branchmerge1120

branchmerge1120:                                  ; preds = %elsebranch1119, %thenbranch1078
  %_public_lval1121 = load i64, i64* %_public___v43_j
  %_public_ugtetmp1122 = icmp uge i64 %_public_lval1121, 0
  %_public_zexttmp1123 = zext i1 %_public_ugtetmp1122 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp1123)
  %_public_lval1124 = load i64, i64* %_public___v43_j
  %_public_ulttmp1125 = icmp ult i64 %_public_lval1124, 128
  %_public_zexttmp1126 = zext i1 %_public_ulttmp1125 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp1126)
  %_public_lval1127 = load i64, i64* %_public___v43_j
  %_secret_ptr1128 = getelementptr inbounds [128 x i8], [128 x i8]* %_secret___v40_block, i64 0, i64 %_public_lval1127
  %_secret_lval1129 = load i8, i8* %_secret___v44_b
  store i8 %_secret_lval1129, i8* %_secret_ptr1128
  br label %branchmerge1131

elsebranch1130:                                   ; preds = %thenbranch892
  br label %branchmerge1131

branchmerge1131:                                  ; preds = %elsebranch1130, %branchmerge1120
  %_public_lval1132 = load i32, i32* %_public_sha_type
  %_secret_dynarrarg1133 = load i8*, i8** %_secret_arrarg
  %_secret_arrtoptr1134 = bitcast [128 x i8]* %_secret___v40_block to i8*
  call void @_md_transform(i32 %_public_lval1132, i8* %_secret_dynarrarg1133, i8* %_secret_arrtoptr1134)
  %_public_lval1135 = load i32, i32* %_public_sha_type
  %_secret_dynarrarg1136 = load i8*, i8** %_secret_arrarg
  %_secret_arrtoptr1137 = bitcast [128 x i8]* %_secret___v40_block to i8*
  call void @_md_final_raw(i32 %_public_lval1135, i8* %_secret_dynarrarg1136, i8* %_secret_arrtoptr1137)
  %_public_calltmp1138 = call i64 @__VERIFIER_nondet_unsigned_long_long()
  store i64 %_public_calltmp1138, i64* %_public___v47_j
  %_public_lval1139 = load i64, i64* %_public___v47_j
  %_public_lval1140 = load i64, i64* %_public_md_size
  %_public_ulttmp1141 = icmp ult i64 %_public_lval1139, %_public_lval1140
  %_public_branchcompare1142 = icmp eq i1 %_public_ulttmp1141, true
  br i1 %_public_branchcompare1142, label %thenbranch1143, label %elsebranch1201

thenbranch1143:                                   ; preds = %branchmerge1131
  %_public_lval1144 = load i64, i64* %_public___v47_j
  %_public_lval1145 = load i64, i64* %_public___v47_j
  %_public_addtmp1146 = add i64 %_public_lval1145, 1
  %_public_ulttmp1147 = icmp ult i64 %_public_lval1144, %_public_addtmp1146
  %_public_zexttmp1148 = zext i1 %_public_ulttmp1147 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp1148)
  %_public_lval1149 = load i64, i64* %_public___v47_j
  %_public_ulttmp1150 = icmp ult i64 0, %_public_lval1149
  %_public_lval1151 = load i64, i64* %_public___v47_j
  %_public_eqtmp1152 = icmp eq i64 0, %_public_lval1151
  %_public_lortmp1153 = or i1 %_public_ulttmp1150, %_public_eqtmp1152
  %_public_zexttmp1154 = zext i1 %_public_lortmp1153 to i32
  call void @__VERIFIER_assume(i32 %_public_zexttmp1154)
  %_public_lval1155 = load i64, i64* %_public___v47_j
  %_public_ugtetmp1156 = icmp uge i64 %_public_lval1155, 0
  %_public_zexttmp1157 = zext i1 %_public_ugtetmp1156 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp1157)
  %_public_lval1158 = load i64, i64* %_public___v47_j
  %_public_ulttmp1159 = icmp ult i64 %_public_lval1158, 64
  %_public_zexttmp1160 = zext i1 %_public_ulttmp1159 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp1160)
  %_public_lval1161 = load i64, i64* %_public___v47_j
  %_secret_dyn1162 = load i8*, i8** %_secret_arrarg2
  %_secret_ptr1163 = getelementptr inbounds i8, i8* %_secret_dyn1162, i64 %_public_lval1161
  %_public_lval1164 = load i64, i64* %_public___v47_j
  %_public_ugtetmp1165 = icmp uge i64 %_public_lval1164, 0
  %_public_zexttmp1166 = zext i1 %_public_ugtetmp1165 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp1166)
  %_public_lval1167 = load i64, i64* %_public___v47_j
  %_public_ulttmp1168 = icmp ult i64 %_public_lval1167, 64
  %_public_zexttmp1169 = zext i1 %_public_ulttmp1168 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp1169)
  %_public_lval1170 = load i64, i64* %_public___v47_j
  %_secret_dyn1171 = load i8*, i8** %_secret_arrarg2
  %_secret_ptr1172 = getelementptr inbounds i8, i8* %_secret_dyn1171, i64 %_public_lval1170
  %_secret_lval1173 = load i8, i8* %_secret_ptr1172
  store i8 0, i8* %_secret___m14
  %_secret_lval1174 = load i1, i1* %_secret___v42_is_block_b
  store i1 %_secret_lval1174, i1* %_secret___m15
  %_secret_lval1175 = load i1, i1* %_secret___m15
  %_secret_landtmp1176 = and i1 true, %_secret_lval1175
  %_secret_lval1177 = load i1, i1* %_secret___rnset
  %_secret_landtmp1178 = and i1 %_secret_landtmp1176, %_secret_lval1177
  %_secret_condtmp1179 = icmp ne i1 %_secret_landtmp1178, false
  %_public_lval1180 = load i64, i64* %_public___v47_j
  %_public_ugtetmp1181 = icmp uge i64 %_public_lval1180, 0
  %_public_zexttmp1182 = zext i1 %_public_ugtetmp1181 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp1182)
  %_public_lval1183 = load i64, i64* %_public___v47_j
  %_public_ulttmp1184 = icmp ult i64 %_public_lval1183, 128
  %_public_zexttmp1185 = zext i1 %_public_ulttmp1184 to i32
  call void @__VERIFIER_assert(i32 %_public_zexttmp1185)
  %_public_lval1186 = load i64, i64* %_public___v47_j
  %_secret_ptr1187 = getelementptr inbounds [128 x i8], [128 x i8]* %_secret___v40_block, i64 0, i64 %_public_lval1186
  %_secret_lval1188 = load i8, i8* %_secret_ptr1187
  %_secret_lval1189 = load i8, i8* %_secret___m14
  %_secret_selecttmp1190 = call i8 @select.cmov.asm.i8(i1 %_secret_condtmp1179, i8 %_secret_lval1188, i8 %_secret_lval1189)
  store i8 %_secret_selecttmp1190, i8* %_secret___m14
  %_secret_lval1191 = load i1, i1* %_secret___m15
  %_secret_lnottmp1192 = xor i1 %_secret_lval1191, true
  store i1 %_secret_lnottmp1192, i1* %_secret___m15
  %_secret_lval1193 = load i1, i1* %_secret___m15
  %_secret_landtmp1194 = and i1 true, %_secret_lval1193
  %_secret_lval1195 = load i1, i1* %_secret___rnset
  %_secret_landtmp1196 = and i1 %_secret_landtmp1194, %_secret_lval1195
  %_secret_condtmp1197 = icmp ne i1 %_secret_landtmp1196, false
  %_secret_lval1198 = load i8, i8* %_secret___m14
  %_secret_selecttmp1199 = call i8 @select.cmov.asm.i8(i1 %_secret_condtmp1197, i8 0, i8 %_secret_lval1198)
  store i8 %_secret_selecttmp1199, i8* %_secret___m14
  %_secret___m141200 = load i8, i8* %_secret___m14
  %_secret_ortmp = or i8 %_secret_lval1173, %_secret___m141200
  store i8 %_secret_ortmp, i8* %_secret_ptr1163
  br label %branchmerge1202

elsebranch1201:                                   ; preds = %branchmerge1131
  br label %branchmerge1202

branchmerge1202:                                  ; preds = %elsebranch1201, %thenbranch1143
  br label %branchmerge1204

elsebranch1203:                                   ; preds = %branchmerge883
  br label %branchmerge1204

branchmerge1204:                                  ; preds = %elsebranch1203, %branchmerge1202
  store i32 1, i32* %_secret___rval
  %_secret_lval1205 = load i32, i32* %_secret___rval
  ret i32 %_secret_lval1205
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #0

; Function Attrs: alwaysinline
define internal i8 @select.cmov.asm.i8(i1 %_secret_cond, i8 %_secret_a, i8 %_secret_b) #2 {
entry:
  %_secret_zext = zext i8 %_secret_a to i32
  %_secret_zext1 = zext i8 %_secret_b to i32
  %_secret_asm = call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %_secret_cond, i32 %_secret_zext, i32 %_secret_zext1)
  %_secret_trunc = trunc i32 %_secret_asm to i8
  ret i8 %_secret_trunc
}

attributes #0 = { argmemonly nounwind }
attributes #1 = { noinline }
attributes #2 = { alwaysinline }