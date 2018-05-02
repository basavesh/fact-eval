; ModuleID = 'Module'
source_filename = "Module"

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
  store i64 0, i64* %_public___v1_i
  br label %loop_check

loop_check:                                       ; preds = %loop_body, %entry
  %_public_lval = load i64, i64* %_public___v1_i
  %_public_lval6 = load i32, i32* %_public___src_len
  %_public_rhssext = zext i32 %_public_lval6 to i64
  %_public_ulttmp = icmp ult i64 %_public_lval, %_public_rhssext
  br i1 %_public_ulttmp, label %loop_body, label %loop_end

loop_body:                                        ; preds = %loop_check
  %_public_lval7 = load i64, i64* %_public___v1_i
  %_secret_dyn = load i8*, i8** %_secret_arrarg
  %_secret_ptr = getelementptr inbounds i8, i8* %_secret_dyn, i64 %_public_lval7
  %_public_lval8 = load i64, i64* %_public___v1_i
  %_secret_dyn9 = load i8*, i8** %_secret_arrarg3
  %_secret_ptr10 = getelementptr inbounds i8, i8* %_secret_dyn9, i64 %_public_lval8
  %_secret_lval = load i8, i8* %_secret_ptr10
  store i8 %_secret_lval, i8* %_secret_ptr
  %_public_lval11 = load i64, i64* %_public___v1_i
  %_public_addtmp = add i64 %_public_lval11, 1
  store i64 %_public_addtmp, i64* %_public___v1_i
  br label %loop_check

loop_end:                                         ; preds = %loop_check
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
  store i32 0, i32* %_public___v2_i
  br label %loop_check

loop_check:                                       ; preds = %loop_body, %entry
  %_public_lval = load i32, i32* %_public___v2_i
  %_public_ulttmp = icmp ult i32 %_public_lval, 16
  br i1 %_public_ulttmp, label %loop_body, label %loop_end

loop_body:                                        ; preds = %loop_check
  %_public_lval4 = load i32, i32* %_public___v2_i
  %_secret_dyn = load i8*, i8** %_secret_arrarg
  %_secret_ptr = getelementptr inbounds i8, i8* %_secret_dyn, i32 %_public_lval4
  %_secret_lval = load i8, i8* %_secret_ptr
  %_public_lval5 = load i32, i32* %_public___v2_i
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
  %_public_lval21 = load i32, i32* %_public___v2_i
  %_public_addtmp = add i32 %_public_lval21, 1
  store i32 %_public_addtmp, i32* %_public___v2_i
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
  %_public_lval38 = load i64, i64* %_public___v10_max_mac_bytes
  %_public_addtmp39 = add i64 %_public_lval38, 1
  %_public_lval40 = load i64, i64* %_public_md_length_size
  %_public_addtmp41 = add i64 %_public_addtmp39, %_public_lval40
  %_public_lval42 = load i64, i64* %_public_md_block_size
  %_public_addtmp43 = add i64 %_public_addtmp41, %_public_lval42
  %_public_subtmp44 = sub i64 %_public_addtmp43, 1
  %_public_lval45 = load i64, i64* %_public_log_md_block_size
  %_public_lrshift = lshr i64 %_public_subtmp44, %_public_lval45
  store i64 %_public_lrshift, i64* %_public___v11_num_blocks
  %_secret_lval = load i64, i64* %_secret_data_plus_mac_size
  %_public_lval46 = load i64, i64* %_public___v7_header_length
  %_secret_addtmp = add i64 %_secret_lval, %_public_lval46
  %_public_lval47 = load i64, i64* %_public_md_size
  %_secret_subtmp = sub i64 %_secret_addtmp, %_public_lval47
  store i64 %_secret_subtmp, i64* %_secret___v12_mac_end_offset
  %_secret_lval48 = load i64, i64* %_secret___v12_mac_end_offset
  %_public_lval49 = load i64, i64* %_public_md_block_size
  %_public_subtmp50 = sub i64 %_public_lval49, 1
  %_secret_andtmp = and i64 %_secret_lval48, %_public_subtmp50
  store i64 %_secret_andtmp, i64* %_secret___v13_c
  %_secret_lval51 = load i64, i64* %_secret___v12_mac_end_offset
  %_public_lval52 = load i64, i64* %_public_log_md_block_size
  %_secret_lrshift = lshr i64 %_secret_lval51, %_public_lval52
  store i64 %_secret_lrshift, i64* %_secret___v14_index_a
  %_secret_lval53 = load i64, i64* %_secret___v12_mac_end_offset
  %_public_lval54 = load i64, i64* %_public_md_length_size
  %_secret_addtmp55 = add i64 %_secret_lval53, %_public_lval54
  %_public_lval56 = load i64, i64* %_public_log_md_block_size
  %_secret_lrshift57 = lshr i64 %_secret_addtmp55, %_public_lval56
  store i64 %_secret_lrshift57, i64* %_secret___v15_index_b
  store i64 0, i64* %_public___v16_num_starting_blocks
  store i64 0, i64* %_public___v17_k
  %_public_lval58 = load i64, i64* %_public___v11_num_blocks
  %_public_lval59 = load i64, i64* %_public___v8_variance_blocks
  %_public_lval60 = load i1, i1* %_public_is_sslv3
  %_public_condtmp61 = icmp ne i1 %_public_lval60, false
  %_public_terntmp62 = select i1 %_public_condtmp61, i8 1, i8 0
  %_public_rhssext = zext i8 %_public_terntmp62 to i64
  %_public_addtmp63 = add i64 %_public_lval59, %_public_rhssext
  %_public_ugttmp = icmp ugt i64 %_public_lval58, %_public_addtmp63
  %_public_branchcompare = icmp eq i1 %_public_ugttmp, true
  br i1 %_public_branchcompare, label %thenbranch, label %elsebranch

thenbranch:                                       ; preds = %entry
  %_public_lval64 = load i64, i64* %_public___v11_num_blocks
  %_public_lval65 = load i64, i64* %_public___v8_variance_blocks
  %_public_subtmp66 = sub i64 %_public_lval64, %_public_lval65
  store i64 %_public_subtmp66, i64* %_public___v16_num_starting_blocks
  %_public_lval67 = load i64, i64* %_public_md_block_size
  %_public_lval68 = load i64, i64* %_public___v16_num_starting_blocks
  %_public_multmp = mul i64 %_public_lval67, %_public_lval68
  store i64 %_public_multmp, i64* %_public___v17_k
  br label %branchmerge

elsebranch:                                       ; preds = %entry
  br label %branchmerge

branchmerge:                                      ; preds = %elsebranch, %thenbranch
  %_secret___v18_first_block = alloca [128 x i8]
  %_secret_lval69 = load i64, i64* %_secret___v12_mac_end_offset
  %_secret_multmp = mul i64 8, %_secret_lval69
  store i64 %_secret_multmp, i64* %_secret___v19_bits
  %_public_lval70 = load i1, i1* %_public_is_sslv3
  %_public_lnottmp = xor i1 %_public_lval70, true
  %_public_branchcompare71 = icmp eq i1 %_public_lnottmp, true
  br i1 %_public_branchcompare71, label %thenbranch72, label %elsebranch99

thenbranch72:                                     ; preds = %branchmerge
  %_secret_lval73 = load i64, i64* %_secret___v19_bits
  %_public_lval74 = load i64, i64* %_public_md_block_size
  %_public_multmp75 = mul i64 8, %_public_lval74
  %_secret_addtmp76 = add i64 %_secret_lval73, %_public_multmp75
  store i64 %_secret_addtmp76, i64* %_secret___v19_bits
  %_public_lval77 = load i32, i32* %_public___mac_secret_len
  %_public_lval78 = load i32, i32* %_public___v3_MAX_HASH_BLOCK_SIZE
  %_public_ugttmp79 = icmp ugt i32 %_public_lval77, %_public_lval78
  %_public_branchcompare80 = icmp eq i1 %_public_ugttmp79, true
  br i1 %_public_branchcompare80, label %thenbranch81, label %elsebranch83

thenbranch81:                                     ; preds = %thenbranch72
  store i32 0, i32* %_secret___rval
  %_secret_lval82 = load i32, i32* %_secret___rval
  ret i32 %_secret_lval82

elsebranch83:                                     ; preds = %thenbranch72
  br label %branchmerge84

branchmerge84:                                    ; preds = %elsebranch83
  %_secret_dynarrarg = load i8*, i8** %_secret_arrarg4
  %_secret_dynarrarg85 = load i8*, i8** %_secret_arrarg19
  %_public_lval86 = load i32, i32* %_public___mac_secret_len
  call void @_memcpy(i8* %_secret_dynarrarg, i32 128, i8* %_secret_dynarrarg85, i32 %_public_lval86)
  store i64 0, i64* %_public___v20_i
  br label %loop_check

loop_check:                                       ; preds = %loop_body, %branchmerge84
  %_public_lval87 = load i64, i64* %_public___v20_i
  %_public_lval88 = load i64, i64* %_public_md_block_size
  %_public_ulttmp = icmp ult i64 %_public_lval87, %_public_lval88
  br i1 %_public_ulttmp, label %loop_body, label %loop_end

loop_body:                                        ; preds = %loop_check
  %_public_lval89 = load i64, i64* %_public___v20_i
  %_secret_dyn = load i8*, i8** %_secret_arrarg4
  %_secret_ptr = getelementptr inbounds i8, i8* %_secret_dyn, i64 %_public_lval89
  %_public_lval90 = load i64, i64* %_public___v20_i
  %_secret_dyn91 = load i8*, i8** %_secret_arrarg4
  %_secret_ptr92 = getelementptr inbounds i8, i8* %_secret_dyn91, i64 %_public_lval90
  %_secret_lval93 = load i8, i8* %_secret_ptr92
  %_secret_xortmp = xor i8 %_secret_lval93, 54
  store i8 %_secret_xortmp, i8* %_secret_ptr
  %_public_lval94 = load i64, i64* %_public___v20_i
  %_public_addtmp95 = add i64 %_public_lval94, 1
  store i64 %_public_addtmp95, i64* %_public___v20_i
  br label %loop_check

loop_end:                                         ; preds = %loop_check
  %_public_lval96 = load i32, i32* %_public_sha_type
  %_secret_dynarrarg97 = load i8*, i8** %_secret_arrarg
  %_secret_dynarrarg98 = load i8*, i8** %_secret_arrarg4
  call void @_md_transform(i32 %_public_lval96, i8* %_secret_dynarrarg97, i8* %_secret_dynarrarg98)
  br label %branchmerge100

elsebranch99:                                     ; preds = %branchmerge
  br label %branchmerge100

branchmerge100:                                   ; preds = %elsebranch99, %loop_end
  %_secret___v21_length_bytes = alloca [16 x i8]
  %_secret_sourcecasted = bitcast [16 x i8]* %_secret___v21_length_bytes to i8*
  call void @llvm.memset.p0i8.i64(i8* %_secret_sourcecasted, i8 0, i64 16, i32 0, i1 false)
  %_public_lval101 = load i1, i1* %_public_length_is_big_endian
  %_public_branchcompare102 = icmp eq i1 %_public_lval101, true
  br i1 %_public_branchcompare102, label %thenbranch103, label %elsebranch126

thenbranch103:                                    ; preds = %branchmerge100
  %_public_lval104 = load i64, i64* %_public_md_length_size
  %_public_subtmp105 = sub i64 %_public_lval104, 4
  %_secret_ptr106 = getelementptr inbounds [16 x i8], [16 x i8]* %_secret___v21_length_bytes, i64 0, i64 %_public_subtmp105
  %_secret_lval107 = load i64, i64* %_secret___v19_bits
  %_secret_lrshift108 = lshr i64 %_secret_lval107, 24
  %_secret_ucast = trunc i64 %_secret_lrshift108 to i8
  store i8 %_secret_ucast, i8* %_secret_ptr106
  %_public_lval109 = load i64, i64* %_public_md_length_size
  %_public_subtmp110 = sub i64 %_public_lval109, 3
  %_secret_ptr111 = getelementptr inbounds [16 x i8], [16 x i8]* %_secret___v21_length_bytes, i64 0, i64 %_public_subtmp110
  %_secret_lval112 = load i64, i64* %_secret___v19_bits
  %_secret_lrshift113 = lshr i64 %_secret_lval112, 16
  %_secret_ucast114 = trunc i64 %_secret_lrshift113 to i8
  store i8 %_secret_ucast114, i8* %_secret_ptr111
  %_public_lval115 = load i64, i64* %_public_md_length_size
  %_public_subtmp116 = sub i64 %_public_lval115, 2
  %_secret_ptr117 = getelementptr inbounds [16 x i8], [16 x i8]* %_secret___v21_length_bytes, i64 0, i64 %_public_subtmp116
  %_secret_lval118 = load i64, i64* %_secret___v19_bits
  %_secret_lrshift119 = lshr i64 %_secret_lval118, 8
  %_secret_ucast120 = trunc i64 %_secret_lrshift119 to i8
  store i8 %_secret_ucast120, i8* %_secret_ptr117
  %_public_lval121 = load i64, i64* %_public_md_length_size
  %_public_subtmp122 = sub i64 %_public_lval121, 1
  %_secret_ptr123 = getelementptr inbounds [16 x i8], [16 x i8]* %_secret___v21_length_bytes, i64 0, i64 %_public_subtmp122
  %_secret_lval124 = load i64, i64* %_secret___v19_bits
  %_secret_ucast125 = trunc i64 %_secret_lval124 to i8
  store i8 %_secret_ucast125, i8* %_secret_ptr123
  br label %branchmerge150

elsebranch126:                                    ; preds = %branchmerge100
  %_public_lval127 = load i64, i64* %_public_md_length_size
  %_public_subtmp128 = sub i64 %_public_lval127, 5
  %_secret_ptr129 = getelementptr inbounds [16 x i8], [16 x i8]* %_secret___v21_length_bytes, i64 0, i64 %_public_subtmp128
  %_secret_lval130 = load i64, i64* %_secret___v19_bits
  %_secret_lrshift131 = lshr i64 %_secret_lval130, 24
  %_secret_ucast132 = trunc i64 %_secret_lrshift131 to i8
  store i8 %_secret_ucast132, i8* %_secret_ptr129
  %_public_lval133 = load i64, i64* %_public_md_length_size
  %_public_subtmp134 = sub i64 %_public_lval133, 6
  %_secret_ptr135 = getelementptr inbounds [16 x i8], [16 x i8]* %_secret___v21_length_bytes, i64 0, i64 %_public_subtmp134
  %_secret_lval136 = load i64, i64* %_secret___v19_bits
  %_secret_lrshift137 = lshr i64 %_secret_lval136, 16
  %_secret_ucast138 = trunc i64 %_secret_lrshift137 to i8
  store i8 %_secret_ucast138, i8* %_secret_ptr135
  %_public_lval139 = load i64, i64* %_public_md_length_size
  %_public_subtmp140 = sub i64 %_public_lval139, 7
  %_secret_ptr141 = getelementptr inbounds [16 x i8], [16 x i8]* %_secret___v21_length_bytes, i64 0, i64 %_public_subtmp140
  %_secret_lval142 = load i64, i64* %_secret___v19_bits
  %_secret_lrshift143 = lshr i64 %_secret_lval142, 8
  %_secret_ucast144 = trunc i64 %_secret_lrshift143 to i8
  store i8 %_secret_ucast144, i8* %_secret_ptr141
  %_public_lval145 = load i64, i64* %_public_md_length_size
  %_public_subtmp146 = sub i64 %_public_lval145, 8
  %_secret_ptr147 = getelementptr inbounds [16 x i8], [16 x i8]* %_secret___v21_length_bytes, i64 0, i64 %_public_subtmp146
  %_secret_lval148 = load i64, i64* %_secret___v19_bits
  %_secret_ucast149 = trunc i64 %_secret_lval148 to i8
  store i8 %_secret_ucast149, i8* %_secret_ptr147
  br label %branchmerge150

branchmerge150:                                   ; preds = %elsebranch126, %thenbranch103
  %_public_lval151 = load i64, i64* %_public___v17_k
  %_public_ugttmp152 = icmp ugt i64 %_public_lval151, 0
  %_public_branchcompare153 = icmp eq i1 %_public_ugttmp152, true
  br i1 %_public_branchcompare153, label %thenbranch154, label %elsebranch298

thenbranch154:                                    ; preds = %branchmerge150
  %_public_lval155 = load i1, i1* %_public_is_sslv3
  %_public_branchcompare156 = icmp eq i1 %_public_lval155, true
  br i1 %_public_branchcompare156, label %thenbranch157, label %elsebranch236

thenbranch157:                                    ; preds = %thenbranch154
  %_public_lval158 = load i64, i64* %_public___v7_header_length
  %_public_lval159 = load i64, i64* %_public_md_block_size
  %_public_ultetmp = icmp ule i64 %_public_lval158, %_public_lval159
  %_public_branchcompare160 = icmp eq i1 %_public_ultetmp, true
  br i1 %_public_branchcompare160, label %thenbranch161, label %elsebranch163

thenbranch161:                                    ; preds = %thenbranch157
  store i32 0, i32* %_secret___rval
  %_secret_lval162 = load i32, i32* %_secret___rval
  ret i32 %_secret_lval162

elsebranch163:                                    ; preds = %thenbranch157
  br label %branchmerge164

branchmerge164:                                   ; preds = %elsebranch163
  %_public_lval165 = load i64, i64* %_public___v7_header_length
  %_public_lval166 = load i64, i64* %_public_md_block_size
  %_public_subtmp167 = sub i64 %_public_lval165, %_public_lval166
  store i64 %_public_subtmp167, i64* %_public___v22_overhang
  %_public_lval168 = load i32, i32* %_public_sha_type
  %_secret_dynarrarg169 = load i8*, i8** %_secret_arrarg
  %_secret_dynarrarg170 = load i8*, i8** %_secret_arrarg13
  call void @_md_transform(i32 %_public_lval168, i8* %_secret_dynarrarg169, i8* %_secret_dynarrarg170)
  %_public_lval171 = load i64, i64* %_public___v22_overhang
  %_public_trunctmp = trunc i64 %_public_lval171 to i32
  store i32 %_public_trunctmp, i32* %_public___v24___v23_len
  %_secret_arrtoptr = bitcast [128 x i8]* %_secret___v18_first_block to i8*
  %_public_lval172 = load i64, i64* %_public_md_block_size
  %_secret_ldedviewptr = load i8*, i8** %_secret_arrarg13
  %_secret_source_gep = getelementptr inbounds i8, i8* %_secret_ldedviewptr, i64 %_public_lval172
  %_secret_arrviewdyn = alloca i8*
  store i8* %_secret_source_gep, i8** %_secret_arrviewdyn
  %_public_lval173 = load i64, i64* %_public_md_block_size
  %_secret_ldedviewptr174 = load i8*, i8** %_secret_arrarg13
  %_secret_source_gep175 = getelementptr inbounds i8, i8* %_secret_ldedviewptr174, i64 %_public_lval173
  %_secret_arrviewdyn176 = alloca i8*
  store i8* %_secret_source_gep175, i8** %_secret_arrviewdyn176
  %_secret_dynarrarg177 = load i8*, i8** %_secret_arrviewdyn176
  %_public_lval178 = load i32, i32* %_public___v24___v23_len
  call void @_memcpy(i8* %_secret_arrtoptr, i32 128, i8* %_secret_dynarrarg177, i32 %_public_lval178)
  %_public_lval179 = load i64, i64* %_public_md_block_size
  %_public_lval180 = load i64, i64* %_public___v22_overhang
  %_public_subtmp181 = sub i64 %_public_lval179, %_public_lval180
  %_public_trunctmp182 = trunc i64 %_public_subtmp181 to i32
  store i32 %_public_trunctmp182, i32* %_public___v26___v25_len
  %_public_lval183 = load i64, i64* %_public_md_block_size
  %_public_lval184 = load i64, i64* %_public___v22_overhang
  %_public_subtmp185 = sub i64 %_public_lval183, %_public_lval184
  %_public_trunctmp186 = trunc i64 %_public_subtmp185 to i32
  store i32 %_public_trunctmp186, i32* %_public___v28___v27_len
  %_public_lval187 = load i64, i64* %_public___v22_overhang
  %_secret_arrview = alloca i8*
  %_secret_source_gep188 = getelementptr inbounds [128 x i8], [128 x i8]* %_secret___v18_first_block, i64 0, i64 %_public_lval187
  store i8* %_secret_source_gep188, i8** %_secret_arrview
  %_public_lval189 = load i64, i64* %_public___v22_overhang
  %_secret_arrview190 = alloca i8*
  %_secret_source_gep191 = getelementptr inbounds [128 x i8], [128 x i8]* %_secret___v18_first_block, i64 0, i64 %_public_lval189
  store i8* %_secret_source_gep191, i8** %_secret_arrview190
  %_secret_dynarrarg192 = load i8*, i8** %_secret_arrview190
  %_public_lval193 = load i32, i32* %_public___v26___v25_len
  %_secret_ldedviewptr194 = load i8*, i8** %_secret_arrarg15
  %_secret_source_gep195 = getelementptr inbounds i8, i8* %_secret_ldedviewptr194, i8 0
  %_secret_arrviewdyn196 = alloca i8*
  store i8* %_secret_source_gep195, i8** %_secret_arrviewdyn196
  %_secret_ldedviewptr197 = load i8*, i8** %_secret_arrarg15
  %_secret_source_gep198 = getelementptr inbounds i8, i8* %_secret_ldedviewptr197, i8 0
  %_secret_arrviewdyn199 = alloca i8*
  store i8* %_secret_source_gep198, i8** %_secret_arrviewdyn199
  %_secret_dynarrarg200 = load i8*, i8** %_secret_arrviewdyn199
  %_public_lval201 = load i32, i32* %_public___v28___v27_len
  call void @_memcpy(i8* %_secret_dynarrarg192, i32 %_public_lval193, i8* %_secret_dynarrarg200, i32 %_public_lval201)
  %_public_lval202 = load i32, i32* %_public_sha_type
  %_secret_dynarrarg203 = load i8*, i8** %_secret_arrarg
  %_secret_arrtoptr204 = bitcast [128 x i8]* %_secret___v18_first_block to i8*
  call void @_md_transform(i32 %_public_lval202, i8* %_secret_dynarrarg203, i8* %_secret_arrtoptr204)
  store i64 1, i64* %_public___v29_i
  br label %loop_check205

loop_check205:                                    ; preds = %loop_body206, %branchmerge164
  %_public_lval208 = load i64, i64* %_public___v29_i
  %_public_lval209 = load i64, i64* %_public___v17_k
  %_public_lval210 = load i64, i64* %_public_md_block_size
  %_public_udivtmp = udiv i64 %_public_lval209, %_public_lval210
  %_public_subtmp211 = sub i64 %_public_udivtmp, 1
  %_public_ulttmp212 = icmp ult i64 %_public_lval208, %_public_subtmp211
  br i1 %_public_ulttmp212, label %loop_body206, label %loop_end207

loop_body206:                                     ; preds = %loop_check205
  %_public_lval213 = load i64, i64* %_public_md_block_size
  %_public_trunctmp214 = trunc i64 %_public_lval213 to i32
  store i32 %_public_trunctmp214, i32* %_public___v31___v30_len
  %_public_lval215 = load i32, i32* %_public_sha_type
  %_secret_dynarrarg216 = load i8*, i8** %_secret_arrarg
  %_public_lval217 = load i64, i64* %_public_md_block_size
  %_public_lval218 = load i64, i64* %_public___v29_i
  %_public_multmp219 = mul i64 %_public_lval217, %_public_lval218
  %_public_lval220 = load i64, i64* %_public___v22_overhang
  %_public_subtmp221 = sub i64 %_public_multmp219, %_public_lval220
  %_secret_ldedviewptr222 = load i8*, i8** %_secret_arrarg15
  %_secret_source_gep223 = getelementptr inbounds i8, i8* %_secret_ldedviewptr222, i64 %_public_subtmp221
  %_secret_arrviewdyn224 = alloca i8*
  store i8* %_secret_source_gep223, i8** %_secret_arrviewdyn224
  %_public_lval225 = load i64, i64* %_public_md_block_size
  %_public_lval226 = load i64, i64* %_public___v29_i
  %_public_multmp227 = mul i64 %_public_lval225, %_public_lval226
  %_public_lval228 = load i64, i64* %_public___v22_overhang
  %_public_subtmp229 = sub i64 %_public_multmp227, %_public_lval228
  %_secret_ldedviewptr230 = load i8*, i8** %_secret_arrarg15
  %_secret_source_gep231 = getelementptr inbounds i8, i8* %_secret_ldedviewptr230, i64 %_public_subtmp229
  %_secret_arrviewdyn232 = alloca i8*
  store i8* %_secret_source_gep231, i8** %_secret_arrviewdyn232
  %_secret_dynarrarg233 = load i8*, i8** %_secret_arrviewdyn232
  call void @_md_transform(i32 %_public_lval215, i8* %_secret_dynarrarg216, i8* %_secret_dynarrarg233)
  %_public_lval234 = load i64, i64* %_public___v29_i
  %_public_addtmp235 = add i64 %_public_lval234, 1
  store i64 %_public_addtmp235, i64* %_public___v29_i
  br label %loop_check205

loop_end207:                                      ; preds = %loop_check205
  br label %branchmerge297

elsebranch236:                                    ; preds = %thenbranch154
  %_secret_arrtoptr237 = bitcast [128 x i8]* %_secret___v18_first_block to i8*
  %_secret_ldedviewptr238 = load i8*, i8** %_secret_arrarg13
  %_secret_source_gep239 = getelementptr inbounds i8, i8* %_secret_ldedviewptr238, i8 0
  %_secret_arrviewdyn240 = alloca i8*
  store i8* %_secret_source_gep239, i8** %_secret_arrviewdyn240
  %_secret_ldedviewptr241 = load i8*, i8** %_secret_arrarg13
  %_secret_source_gep242 = getelementptr inbounds i8, i8* %_secret_ldedviewptr241, i8 0
  %_secret_arrviewdyn243 = alloca i8*
  store i8* %_secret_source_gep242, i8** %_secret_arrviewdyn243
  %_secret_dynarrarg244 = load i8*, i8** %_secret_arrviewdyn243
  call void @_memcpy(i8* %_secret_arrtoptr237, i32 128, i8* %_secret_dynarrarg244, i32 13)
  %_public_lval245 = load i64, i64* %_public_md_block_size
  %_public_subtmp246 = sub i64 %_public_lval245, 13
  %_public_trunctmp247 = trunc i64 %_public_subtmp246 to i32
  store i32 %_public_trunctmp247, i32* %_public___v33___v32_len
  %_public_lval248 = load i64, i64* %_public_md_block_size
  %_public_subtmp249 = sub i64 %_public_lval248, 13
  %_public_trunctmp250 = trunc i64 %_public_subtmp249 to i32
  store i32 %_public_trunctmp250, i32* %_public___v35___v34_len
  %_secret_arrview251 = alloca i8*
  %_secret_source_gep252 = getelementptr inbounds [128 x i8], [128 x i8]* %_secret___v18_first_block, i8 0, i8 13
  store i8* %_secret_source_gep252, i8** %_secret_arrview251
  %_secret_arrview253 = alloca i8*
  %_secret_source_gep254 = getelementptr inbounds [128 x i8], [128 x i8]* %_secret___v18_first_block, i8 0, i8 13
  store i8* %_secret_source_gep254, i8** %_secret_arrview253
  %_secret_dynarrarg255 = load i8*, i8** %_secret_arrview253
  %_public_lval256 = load i32, i32* %_public___v33___v32_len
  %_secret_ldedviewptr257 = load i8*, i8** %_secret_arrarg15
  %_secret_source_gep258 = getelementptr inbounds i8, i8* %_secret_ldedviewptr257, i8 0
  %_secret_arrviewdyn259 = alloca i8*
  store i8* %_secret_source_gep258, i8** %_secret_arrviewdyn259
  %_secret_ldedviewptr260 = load i8*, i8** %_secret_arrarg15
  %_secret_source_gep261 = getelementptr inbounds i8, i8* %_secret_ldedviewptr260, i8 0
  %_secret_arrviewdyn262 = alloca i8*
  store i8* %_secret_source_gep261, i8** %_secret_arrviewdyn262
  %_secret_dynarrarg263 = load i8*, i8** %_secret_arrviewdyn262
  %_public_lval264 = load i32, i32* %_public___v35___v34_len
  call void @_memcpy(i8* %_secret_dynarrarg255, i32 %_public_lval256, i8* %_secret_dynarrarg263, i32 %_public_lval264)
  %_public_lval265 = load i32, i32* %_public_sha_type
  %_secret_dynarrarg266 = load i8*, i8** %_secret_arrarg
  %_secret_arrtoptr267 = bitcast [128 x i8]* %_secret___v18_first_block to i8*
  call void @_md_transform(i32 %_public_lval265, i8* %_secret_dynarrarg266, i8* %_secret_arrtoptr267)
  store i64 1, i64* %_public___v36_i
  br label %loop_check268

loop_check268:                                    ; preds = %loop_body269, %elsebranch236
  %_public_lval271 = load i64, i64* %_public___v36_i
  %_public_lval272 = load i64, i64* %_public___v17_k
  %_public_lval273 = load i64, i64* %_public_md_block_size
  %_public_udivtmp274 = udiv i64 %_public_lval272, %_public_lval273
  %_public_ulttmp275 = icmp ult i64 %_public_lval271, %_public_udivtmp274
  br i1 %_public_ulttmp275, label %loop_body269, label %loop_end270

loop_body269:                                     ; preds = %loop_check268
  %_public_lval276 = load i64, i64* %_public_md_block_size
  %_public_trunctmp277 = trunc i64 %_public_lval276 to i32
  store i32 %_public_trunctmp277, i32* %_public___v38___v37_len
  %_public_lval278 = load i32, i32* %_public_sha_type
  %_secret_dynarrarg279 = load i8*, i8** %_secret_arrarg
  %_public_lval280 = load i64, i64* %_public_md_block_size
  %_public_lval281 = load i64, i64* %_public___v36_i
  %_public_multmp282 = mul i64 %_public_lval280, %_public_lval281
  %_public_subtmp283 = sub i64 %_public_multmp282, 13
  %_secret_ldedviewptr284 = load i8*, i8** %_secret_arrarg15
  %_secret_source_gep285 = getelementptr inbounds i8, i8* %_secret_ldedviewptr284, i64 %_public_subtmp283
  %_secret_arrviewdyn286 = alloca i8*
  store i8* %_secret_source_gep285, i8** %_secret_arrviewdyn286
  %_public_lval287 = load i64, i64* %_public_md_block_size
  %_public_lval288 = load i64, i64* %_public___v36_i
  %_public_multmp289 = mul i64 %_public_lval287, %_public_lval288
  %_public_subtmp290 = sub i64 %_public_multmp289, 13
  %_secret_ldedviewptr291 = load i8*, i8** %_secret_arrarg15
  %_secret_source_gep292 = getelementptr inbounds i8, i8* %_secret_ldedviewptr291, i64 %_public_subtmp290
  %_secret_arrviewdyn293 = alloca i8*
  store i8* %_secret_source_gep292, i8** %_secret_arrviewdyn293
  %_secret_dynarrarg294 = load i8*, i8** %_secret_arrviewdyn293
  call void @_md_transform(i32 %_public_lval278, i8* %_secret_dynarrarg279, i8* %_secret_dynarrarg294)
  %_public_lval295 = load i64, i64* %_public___v36_i
  %_public_addtmp296 = add i64 %_public_lval295, 1
  store i64 %_public_addtmp296, i64* %_public___v36_i
  br label %loop_check268

loop_end270:                                      ; preds = %loop_check268
  br label %branchmerge297

branchmerge297:                                   ; preds = %loop_end270, %loop_end207
  br label %branchmerge299

elsebranch298:                                    ; preds = %branchmerge150
  br label %branchmerge299

branchmerge299:                                   ; preds = %elsebranch298, %branchmerge297
  %_public_lval303 = load i64, i64* %_public___v16_num_starting_blocks
  store i64 %_public_lval303, i64* %_public___v39_i
  br label %loop_check300

loop_check300:                                    ; preds = %loop_end494, %branchmerge299
  %_public_lval304 = load i64, i64* %_public___v39_i
  %_public_lval305 = load i64, i64* %_public___v16_num_starting_blocks
  %_public_lval306 = load i64, i64* %_public___v8_variance_blocks
  %_public_addtmp307 = add i64 %_public_lval305, %_public_lval306
  %_public_addtmp308 = add i64 %_public_addtmp307, 1
  %_public_ulttmp309 = icmp ult i64 %_public_lval304, %_public_addtmp308
  br i1 %_public_ulttmp309, label %loop_body301, label %loop_end302

loop_body301:                                     ; preds = %loop_check300
  %_secret___v40_block = alloca [128 x i8]
  %_secret_sourcecasted310 = bitcast [128 x i8]* %_secret___v40_block to i8*
  call void @llvm.memset.p0i8.i64(i8* %_secret_sourcecasted310, i8 0, i64 128, i32 0, i1 false)
  %_public_lval311 = load i64, i64* %_public___v39_i
  %_secret_lval312 = load i64, i64* %_secret___v14_index_a
  %_secret_eqtmp = icmp eq i64 %_public_lval311, %_secret_lval312
  store i1 %_secret_eqtmp, i1* %_secret___v41_is_block_a
  %_public_lval313 = load i64, i64* %_public___v39_i
  %_secret_lval314 = load i64, i64* %_secret___v15_index_b
  %_secret_eqtmp315 = icmp eq i64 %_public_lval313, %_secret_lval314
  store i1 %_secret_eqtmp315, i1* %_secret___v42_is_block_b
  store i64 0, i64* %_public___v43_j
  br label %loop_check316

loop_end302:                                      ; preds = %loop_check300
  store i32 1, i32* %_secret___rval
  %_secret_lval530 = load i32, i32* %_secret___rval
  ret i32 %_secret_lval530

loop_check316:                                    ; preds = %branchmerge480, %loop_body301
  %_public_lval319 = load i64, i64* %_public___v43_j
  %_public_lval320 = load i64, i64* %_public_md_block_size
  %_public_ulttmp321 = icmp ult i64 %_public_lval319, %_public_lval320
  br i1 %_public_ulttmp321, label %loop_body317, label %loop_end318

loop_body317:                                     ; preds = %loop_check316
  store i8 0, i8* %_secret___v44_b
  %_public_lval322 = load i64, i64* %_public___v17_k
  %_public_lval323 = load i64, i64* %_public___v7_header_length
  %_public_ulttmp324 = icmp ult i64 %_public_lval322, %_public_lval323
  %_public_branchcompare325 = icmp eq i1 %_public_ulttmp324, true
  br i1 %_public_branchcompare325, label %thenbranch326, label %elsebranch331

loop_end318:                                      ; preds = %loop_check316
  %_public_lval486 = load i32, i32* %_public_sha_type
  %_secret_dynarrarg487 = load i8*, i8** %_secret_arrarg
  %_secret_arrtoptr488 = bitcast [128 x i8]* %_secret___v40_block to i8*
  call void @_md_transform(i32 %_public_lval486, i8* %_secret_dynarrarg487, i8* %_secret_arrtoptr488)
  %_public_lval489 = load i32, i32* %_public_sha_type
  %_secret_dynarrarg490 = load i8*, i8** %_secret_arrarg
  %_secret_arrtoptr491 = bitcast [128 x i8]* %_secret___v40_block to i8*
  call void @_md_final_raw(i32 %_public_lval489, i8* %_secret_dynarrarg490, i8* %_secret_arrtoptr491)
  store i64 0, i64* %_public___v47_j
  br label %loop_check492

thenbranch326:                                    ; preds = %loop_body317
  %_public_lval327 = load i64, i64* %_public___v17_k
  %_secret_dyn328 = load i8*, i8** %_secret_arrarg13
  %_secret_ptr329 = getelementptr inbounds i8, i8* %_secret_dyn328, i64 %_public_lval327
  %_secret_lval330 = load i8, i8* %_secret_ptr329
  store i8 %_secret_lval330, i8* %_secret___v44_b
  br label %branchmerge348

elsebranch331:                                    ; preds = %loop_body317
  %_public_lval332 = load i64, i64* %_public___v17_k
  %_public_lval333 = load i32, i32* %_public___data_len
  %_public_lval334 = load i64, i64* %_public___v7_header_length
  %_public_lhssext335 = zext i32 %_public_lval333 to i64
  %_public_addtmp336 = add i64 %_public_lhssext335, %_public_lval334
  %_public_ulttmp337 = icmp ult i64 %_public_lval332, %_public_addtmp336
  %_public_branchcompare338 = icmp eq i1 %_public_ulttmp337, true
  br i1 %_public_branchcompare338, label %thenbranch339, label %elsebranch346

thenbranch339:                                    ; preds = %elsebranch331
  %_public_lval340 = load i64, i64* %_public___v17_k
  %_public_lval341 = load i64, i64* %_public___v7_header_length
  %_public_subtmp342 = sub i64 %_public_lval340, %_public_lval341
  %_secret_dyn343 = load i8*, i8** %_secret_arrarg15
  %_secret_ptr344 = getelementptr inbounds i8, i8* %_secret_dyn343, i64 %_public_subtmp342
  %_secret_lval345 = load i8, i8* %_secret_ptr344
  store i8 %_secret_lval345, i8* %_secret___v44_b
  br label %branchmerge347

elsebranch346:                                    ; preds = %elsebranch331
  br label %branchmerge347

branchmerge347:                                   ; preds = %elsebranch346, %thenbranch339
  br label %branchmerge348

branchmerge348:                                   ; preds = %branchmerge347, %thenbranch326
  %_public_lval349 = load i64, i64* %_public___v17_k
  %_public_addtmp350 = add i64 %_public_lval349, 1
  store i64 %_public_addtmp350, i64* %_public___v17_k
  store i1 false, i1* %_secret___m2
  %_secret_lval351 = load i1, i1* %_secret___v41_is_block_a
  store i1 %_secret_lval351, i1* %_secret___m3
  %_secret_lval352 = load i1, i1* %_secret___m3
  %_secret_landtmp = and i1 true, %_secret_lval352
  %_secret_lval353 = load i1, i1* %_secret___rnset
  %_secret_landtmp354 = and i1 %_secret_landtmp, %_secret_lval353
  %_secret_condtmp = icmp ne i1 %_secret_landtmp354, false
  %_public_lval355 = load i64, i64* %_public___v43_j
  %_secret_lval356 = load i64, i64* %_secret___v13_c
  %_secret_ugtetmp = icmp uge i64 %_public_lval355, %_secret_lval356
  %_secret_lval357 = load i1, i1* %_secret___m2
  %_secret_selecttmp = call i1 @select.cmov.asm.i1(i1 %_secret_condtmp, i1 %_secret_ugtetmp, i1 %_secret_lval357)
  store i1 %_secret_selecttmp, i1* %_secret___m2
  %_secret_lval358 = load i1, i1* %_secret___m3
  %_secret_lnottmp = xor i1 %_secret_lval358, true
  store i1 %_secret_lnottmp, i1* %_secret___m3
  %_secret_lval359 = load i1, i1* %_secret___m3
  %_secret_landtmp360 = and i1 true, %_secret_lval359
  %_secret_lval361 = load i1, i1* %_secret___rnset
  %_secret_landtmp362 = and i1 %_secret_landtmp360, %_secret_lval361
  %_secret_condtmp363 = icmp ne i1 %_secret_landtmp362, false
  %_secret_lval364 = load i1, i1* %_secret___m2
  %_secret_selecttmp365 = call i1 @select.cmov.asm.i1(i1 %_secret_condtmp363, i1 false, i1 %_secret_lval364)
  store i1 %_secret_selecttmp365, i1* %_secret___m2
  %_secret___m2366 = load i1, i1* %_secret___m2
  store i1 %_secret___m2366, i1* %_secret___v45_is_past_c
  store i1 false, i1* %_secret___m4
  %_secret_lval367 = load i1, i1* %_secret___v41_is_block_a
  store i1 %_secret_lval367, i1* %_secret___m5
  %_secret_lval368 = load i1, i1* %_secret___m5
  %_secret_landtmp369 = and i1 true, %_secret_lval368
  %_secret_lval370 = load i1, i1* %_secret___rnset
  %_secret_landtmp371 = and i1 %_secret_landtmp369, %_secret_lval370
  %_secret_condtmp372 = icmp ne i1 %_secret_landtmp371, false
  %_public_lval373 = load i64, i64* %_public___v43_j
  %_secret_lval374 = load i64, i64* %_secret___v13_c
  %_secret_addtmp375 = add i64 %_secret_lval374, 1
  %_secret_ugtetmp376 = icmp uge i64 %_public_lval373, %_secret_addtmp375
  %_secret_lval377 = load i1, i1* %_secret___m4
  %_secret_selecttmp378 = call i1 @select.cmov.asm.i1(i1 %_secret_condtmp372, i1 %_secret_ugtetmp376, i1 %_secret_lval377)
  store i1 %_secret_selecttmp378, i1* %_secret___m4
  %_secret_lval379 = load i1, i1* %_secret___m5
  %_secret_lnottmp380 = xor i1 %_secret_lval379, true
  store i1 %_secret_lnottmp380, i1* %_secret___m5
  %_secret_lval381 = load i1, i1* %_secret___m5
  %_secret_landtmp382 = and i1 true, %_secret_lval381
  %_secret_lval383 = load i1, i1* %_secret___rnset
  %_secret_landtmp384 = and i1 %_secret_landtmp382, %_secret_lval383
  %_secret_condtmp385 = icmp ne i1 %_secret_landtmp384, false
  %_secret_lval386 = load i1, i1* %_secret___m4
  %_secret_selecttmp387 = call i1 @select.cmov.asm.i1(i1 %_secret_condtmp385, i1 false, i1 %_secret_lval386)
  store i1 %_secret_selecttmp387, i1* %_secret___m4
  %_secret___m4388 = load i1, i1* %_secret___m4
  store i1 %_secret___m4388, i1* %_secret___v46_is_past_cp1
  store i8 0, i8* %_secret___m6
  %_secret_lval389 = load i1, i1* %_secret___v45_is_past_c
  store i1 %_secret_lval389, i1* %_secret___m7
  %_secret_lval390 = load i1, i1* %_secret___m7
  %_secret_landtmp391 = and i1 true, %_secret_lval390
  %_secret_lval392 = load i1, i1* %_secret___rnset
  %_secret_landtmp393 = and i1 %_secret_landtmp391, %_secret_lval392
  %_secret_condtmp394 = icmp ne i1 %_secret_landtmp393, false
  %_secret_lval395 = load i8, i8* %_secret___m6
  %_secret_selecttmp396 = call i8 @select.cmov.asm.i8(i1 %_secret_condtmp394, i8 -128, i8 %_secret_lval395)
  store i8 %_secret_selecttmp396, i8* %_secret___m6
  %_secret_lval397 = load i1, i1* %_secret___m7
  %_secret_lnottmp398 = xor i1 %_secret_lval397, true
  store i1 %_secret_lnottmp398, i1* %_secret___m7
  %_secret_lval399 = load i1, i1* %_secret___m7
  %_secret_landtmp400 = and i1 true, %_secret_lval399
  %_secret_lval401 = load i1, i1* %_secret___rnset
  %_secret_landtmp402 = and i1 %_secret_landtmp400, %_secret_lval401
  %_secret_condtmp403 = icmp ne i1 %_secret_landtmp402, false
  %_secret_lval404 = load i8, i8* %_secret___v44_b
  %_secret_lval405 = load i8, i8* %_secret___m6
  %_secret_selecttmp406 = call i8 @select.cmov.asm.i8(i1 %_secret_condtmp403, i8 %_secret_lval404, i8 %_secret_lval405)
  store i8 %_secret_selecttmp406, i8* %_secret___m6
  %_secret___m6407 = load i8, i8* %_secret___m6
  store i8 %_secret___m6407, i8* %_secret___v44_b
  %_secret_lval408 = load i1, i1* %_secret___v46_is_past_cp1
  store i1 %_secret_lval408, i1* %_secret___m8
  %_secret_lval409 = load i1, i1* %_secret___m8
  %_secret_landtmp410 = and i1 true, %_secret_lval409
  %_secret_lval411 = load i1, i1* %_secret___rnset
  %_secret_landtmp412 = and i1 %_secret_landtmp410, %_secret_lval411
  %_secret_condtmp413 = icmp ne i1 %_secret_landtmp412, false
  %_secret_lval414 = load i8, i8* %_secret___v44_b
  %_secret_selecttmp415 = call i8 @select.cmov.asm.i8(i1 %_secret_condtmp413, i8 0, i8 %_secret_lval414)
  store i8 %_secret_selecttmp415, i8* %_secret___v44_b
  %_secret_lval416 = load i1, i1* %_secret___m8
  %_secret_lnottmp417 = xor i1 %_secret_lval416, true
  store i1 %_secret_lnottmp417, i1* %_secret___m8
  store i1 false, i1* %_secret___m9
  %_secret_lval418 = load i1, i1* %_secret___v42_is_block_b
  store i1 %_secret_lval418, i1* %_secret___m10
  %_secret_lval419 = load i1, i1* %_secret___m10
  %_secret_landtmp420 = and i1 true, %_secret_lval419
  %_secret_lval421 = load i1, i1* %_secret___rnset
  %_secret_landtmp422 = and i1 %_secret_landtmp420, %_secret_lval421
  %_secret_condtmp423 = icmp ne i1 %_secret_landtmp422, false
  %_secret_lval424 = load i1, i1* %_secret___v41_is_block_a
  %_secret_lnottmp425 = xor i1 %_secret_lval424, true
  %_secret_lval426 = load i1, i1* %_secret___m9
  %_secret_selecttmp427 = call i1 @select.cmov.asm.i1(i1 %_secret_condtmp423, i1 %_secret_lnottmp425, i1 %_secret_lval426)
  store i1 %_secret_selecttmp427, i1* %_secret___m9
  %_secret_lval428 = load i1, i1* %_secret___m10
  %_secret_lnottmp429 = xor i1 %_secret_lval428, true
  store i1 %_secret_lnottmp429, i1* %_secret___m10
  %_secret_lval430 = load i1, i1* %_secret___m10
  %_secret_landtmp431 = and i1 true, %_secret_lval430
  %_secret_lval432 = load i1, i1* %_secret___rnset
  %_secret_landtmp433 = and i1 %_secret_landtmp431, %_secret_lval432
  %_secret_condtmp434 = icmp ne i1 %_secret_landtmp433, false
  %_secret_lval435 = load i1, i1* %_secret___m9
  %_secret_selecttmp436 = call i1 @select.cmov.asm.i1(i1 %_secret_condtmp434, i1 false, i1 %_secret_lval435)
  store i1 %_secret_selecttmp436, i1* %_secret___m9
  %_secret___m9437 = load i1, i1* %_secret___m9
  store i1 %_secret___m9437, i1* %_secret___m11
  %_secret_lval438 = load i1, i1* %_secret___m11
  %_secret_landtmp439 = and i1 true, %_secret_lval438
  %_secret_lval440 = load i1, i1* %_secret___rnset
  %_secret_landtmp441 = and i1 %_secret_landtmp439, %_secret_lval440
  %_secret_condtmp442 = icmp ne i1 %_secret_landtmp441, false
  %_secret_lval443 = load i8, i8* %_secret___v44_b
  %_secret_selecttmp444 = call i8 @select.cmov.asm.i8(i1 %_secret_condtmp442, i8 0, i8 %_secret_lval443)
  store i8 %_secret_selecttmp444, i8* %_secret___v44_b
  %_secret_lval445 = load i1, i1* %_secret___m11
  %_secret_lnottmp446 = xor i1 %_secret_lval445, true
  store i1 %_secret_lnottmp446, i1* %_secret___m11
  %_public_lval447 = load i64, i64* %_public___v43_j
  %_public_lval448 = load i64, i64* %_public_md_block_size
  %_public_lval449 = load i64, i64* %_public_md_length_size
  %_public_subtmp450 = sub i64 %_public_lval448, %_public_lval449
  %_public_ugtetmp = icmp uge i64 %_public_lval447, %_public_subtmp450
  %_public_branchcompare451 = icmp eq i1 %_public_ugtetmp, true
  br i1 %_public_branchcompare451, label %thenbranch452, label %elsebranch479

thenbranch452:                                    ; preds = %branchmerge348
  store i8 0, i8* %_secret___m12
  %_secret_lval453 = load i1, i1* %_secret___v42_is_block_b
  store i1 %_secret_lval453, i1* %_secret___m13
  %_secret_lval454 = load i1, i1* %_secret___m13
  %_secret_landtmp455 = and i1 true, %_secret_lval454
  %_secret_lval456 = load i1, i1* %_secret___rnset
  %_secret_landtmp457 = and i1 %_secret_landtmp455, %_secret_lval456
  %_secret_condtmp458 = icmp ne i1 %_secret_landtmp457, false
  %_public_lval459 = load i64, i64* %_public___v43_j
  %_public_lval460 = load i64, i64* %_public_md_block_size
  %_public_lval461 = load i64, i64* %_public_md_length_size
  %_public_subtmp462 = sub i64 %_public_lval460, %_public_lval461
  %_public_subtmp463 = sub i64 %_public_lval459, %_public_subtmp462
  %_secret_ptr464 = getelementptr inbounds [16 x i8], [16 x i8]* %_secret___v21_length_bytes, i64 0, i64 %_public_subtmp463
  %_secret_lval465 = load i8, i8* %_secret_ptr464
  %_secret_lval466 = load i8, i8* %_secret___m12
  %_secret_selecttmp467 = call i8 @select.cmov.asm.i8(i1 %_secret_condtmp458, i8 %_secret_lval465, i8 %_secret_lval466)
  store i8 %_secret_selecttmp467, i8* %_secret___m12
  %_secret_lval468 = load i1, i1* %_secret___m13
  %_secret_lnottmp469 = xor i1 %_secret_lval468, true
  store i1 %_secret_lnottmp469, i1* %_secret___m13
  %_secret_lval470 = load i1, i1* %_secret___m13
  %_secret_landtmp471 = and i1 true, %_secret_lval470
  %_secret_lval472 = load i1, i1* %_secret___rnset
  %_secret_landtmp473 = and i1 %_secret_landtmp471, %_secret_lval472
  %_secret_condtmp474 = icmp ne i1 %_secret_landtmp473, false
  %_secret_lval475 = load i8, i8* %_secret___v44_b
  %_secret_lval476 = load i8, i8* %_secret___m12
  %_secret_selecttmp477 = call i8 @select.cmov.asm.i8(i1 %_secret_condtmp474, i8 %_secret_lval475, i8 %_secret_lval476)
  store i8 %_secret_selecttmp477, i8* %_secret___m12
  %_secret___m12478 = load i8, i8* %_secret___m12
  store i8 %_secret___m12478, i8* %_secret___v44_b
  br label %branchmerge480

elsebranch479:                                    ; preds = %branchmerge348
  br label %branchmerge480

branchmerge480:                                   ; preds = %elsebranch479, %thenbranch452
  %_public_lval481 = load i64, i64* %_public___v43_j
  %_secret_ptr482 = getelementptr inbounds [128 x i8], [128 x i8]* %_secret___v40_block, i64 0, i64 %_public_lval481
  %_secret_lval483 = load i8, i8* %_secret___v44_b
  store i8 %_secret_lval483, i8* %_secret_ptr482
  %_public_lval484 = load i64, i64* %_public___v43_j
  %_public_addtmp485 = add i64 %_public_lval484, 1
  store i64 %_public_addtmp485, i64* %_public___v43_j
  br label %loop_check316

loop_check492:                                    ; preds = %loop_body493, %loop_end318
  %_public_lval495 = load i64, i64* %_public___v47_j
  %_public_lval496 = load i64, i64* %_public_md_size
  %_public_ulttmp497 = icmp ult i64 %_public_lval495, %_public_lval496
  br i1 %_public_ulttmp497, label %loop_body493, label %loop_end494

loop_body493:                                     ; preds = %loop_check492
  %_public_lval498 = load i64, i64* %_public___v47_j
  %_secret_dyn499 = load i8*, i8** %_secret_arrarg2
  %_secret_ptr500 = getelementptr inbounds i8, i8* %_secret_dyn499, i64 %_public_lval498
  %_public_lval501 = load i64, i64* %_public___v47_j
  %_secret_dyn502 = load i8*, i8** %_secret_arrarg2
  %_secret_ptr503 = getelementptr inbounds i8, i8* %_secret_dyn502, i64 %_public_lval501
  %_secret_lval504 = load i8, i8* %_secret_ptr503
  store i8 0, i8* %_secret___m14
  %_secret_lval505 = load i1, i1* %_secret___v42_is_block_b
  store i1 %_secret_lval505, i1* %_secret___m15
  %_secret_lval506 = load i1, i1* %_secret___m15
  %_secret_landtmp507 = and i1 true, %_secret_lval506
  %_secret_lval508 = load i1, i1* %_secret___rnset
  %_secret_landtmp509 = and i1 %_secret_landtmp507, %_secret_lval508
  %_secret_condtmp510 = icmp ne i1 %_secret_landtmp509, false
  %_public_lval511 = load i64, i64* %_public___v47_j
  %_secret_ptr512 = getelementptr inbounds [128 x i8], [128 x i8]* %_secret___v40_block, i64 0, i64 %_public_lval511
  %_secret_lval513 = load i8, i8* %_secret_ptr512
  %_secret_lval514 = load i8, i8* %_secret___m14
  %_secret_selecttmp515 = call i8 @select.cmov.asm.i8(i1 %_secret_condtmp510, i8 %_secret_lval513, i8 %_secret_lval514)
  store i8 %_secret_selecttmp515, i8* %_secret___m14
  %_secret_lval516 = load i1, i1* %_secret___m15
  %_secret_lnottmp517 = xor i1 %_secret_lval516, true
  store i1 %_secret_lnottmp517, i1* %_secret___m15
  %_secret_lval518 = load i1, i1* %_secret___m15
  %_secret_landtmp519 = and i1 true, %_secret_lval518
  %_secret_lval520 = load i1, i1* %_secret___rnset
  %_secret_landtmp521 = and i1 %_secret_landtmp519, %_secret_lval520
  %_secret_condtmp522 = icmp ne i1 %_secret_landtmp521, false
  %_secret_lval523 = load i8, i8* %_secret___m14
  %_secret_selecttmp524 = call i8 @select.cmov.asm.i8(i1 %_secret_condtmp522, i8 0, i8 %_secret_lval523)
  store i8 %_secret_selecttmp524, i8* %_secret___m14
  %_secret___m14525 = load i8, i8* %_secret___m14
  %_secret_ortmp = or i8 %_secret_lval504, %_secret___m14525
  store i8 %_secret_ortmp, i8* %_secret_ptr500
  %_public_lval526 = load i64, i64* %_public___v47_j
  %_public_addtmp527 = add i64 %_public_lval526, 1
  store i64 %_public_addtmp527, i64* %_public___v47_j
  br label %loop_check492

loop_end494:                                      ; preds = %loop_check492
  %_public_lval528 = load i64, i64* %_public___v39_i
  %_public_addtmp529 = add i64 %_public_lval528, 1
  store i64 %_public_addtmp529, i64* %_public___v39_i
  br label %loop_check300
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
