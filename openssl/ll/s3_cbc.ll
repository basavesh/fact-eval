; ModuleID = 'Module'
source_filename = "Module"

; Function Attrs: alwaysinline
define internal void @"__memcpy[8]_secret"(i8* %dst, i8* %src, i64 %len) #0 {
entry:
  call void @fact.memcpy.i8(i8* %dst, i8* %src, i64 %len)
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: alwaysinline
define internal void @fact.memcpy.i8(i8* %dst, i8* %src, i64 %len) #0 {
entry:
  %0 = mul i64 %len, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %dst, i8* %src, i64 %0, i32 1, i1 false)
  ret void
}

declare void @_md_final_raw(i8*, i8*)

declare void @SHA1_Transform(i8*, i8*)

define i32 @__ssl3_cbc_digest_record(i8* %__v1_md_state, i8* %__v2_mac_out, i8* %__v3_hmac_pad, i8* %__v4_header, i64 %__v47___v4_header_len, i8* %__v5_data, i64 %__v48___v5_data_len, i64 %__v6_data_plus_mac_size) {
entry:
  %__rval = alloca i32
  store i32 0, i32* %__rval
  %__rctx = alloca i1
  store i1 true, i1* %__rctx
  %__v16_length = add i64 %__v48___v5_data_len, %__v47___v4_header_len
  %0 = sub i64 %__v16_length, 20
  %__v17_max_mac_bytes = sub i64 %0, 1
  %1 = add i64 %__v17_max_mac_bytes, 1
  %2 = add i64 %1, 8
  %3 = add i64 %2, 64
  %4 = sub i64 %3, 1
  %__v18_num_blocks = udiv i64 %4, 64
  %5 = add i64 %__v6_data_plus_mac_size, %__v47___v4_header_len
  %__v19_mac_end_offset = sub i64 %5, 20
  %__v20_c = urem i64 %__v19_mac_end_offset, 64
  %__v21_index_a = udiv i64 %__v19_mac_end_offset, 64
  %6 = add i64 %__v19_mac_end_offset, 8
  %__v22_index_b = udiv i64 %6, 64
  %__v23_num_starting_blocks = alloca i64
  store i64 0, i64* %__v23_num_starting_blocks
  %__v24_k = alloca i64
  store i64 0, i64* %__v24_k
  %7 = icmp ugt i64 %__v18_num_blocks, 3
  br i1 %7, label %8, label %12

; <label>:8:                                      ; preds = %entry
  %9 = sub i64 %__v18_num_blocks, 2
  store i64 %9, i64* %__v23_num_starting_blocks
  %10 = load i64, i64* %__v23_num_starting_blocks
  %11 = mul i64 64, %10
  store i64 %11, i64* %__v24_k
  br label %13

; <label>:12:                                     ; preds = %entry
  br label %13

; <label>:13:                                     ; preds = %12, %8
  %__v25_first_block = alloca i8, i64 128
  call void @fact.memset.i8(i8* %__v25_first_block, i8 0, i64 128)
  %__v26_bits = mul i64 8, %__v19_mac_end_offset
  %__v27_length_bytes = alloca i8, i64 16
  call void @fact.memset.i8(i8* %__v27_length_bytes, i8 0, i64 16)
  %14 = getelementptr i8, i8* %__v27_length_bytes, i64 4
  %15 = lshr i64 %__v26_bits, 24
  %16 = trunc i64 %15 to i8
  store i8 %16, i8* %14
  %17 = getelementptr i8, i8* %__v27_length_bytes, i64 5
  %18 = lshr i64 %__v26_bits, 16
  %19 = trunc i64 %18 to i8
  store i8 %19, i8* %17
  %20 = getelementptr i8, i8* %__v27_length_bytes, i64 6
  %21 = lshr i64 %__v26_bits, 8
  %22 = trunc i64 %21 to i8
  store i8 %22, i8* %20
  %23 = getelementptr i8, i8* %__v27_length_bytes, i64 7
  %24 = trunc i64 %__v26_bits to i8
  store i8 %24, i8* %23
  %25 = load i64, i64* %__v24_k
  %26 = icmp ugt i64 %25, 0
  br i1 %26, label %27, label %29

; <label>:27:                                     ; preds = %13
  %28 = icmp ule i64 %__v47___v4_header_len, 64
  br i1 %28, label %35, label %36

; <label>:29:                                     ; preds = %13
  br label %30

; <label>:30:                                     ; preds = %29, %51
  %31 = load i64, i64* %__v23_num_starting_blocks
  %32 = load i64, i64* %__v23_num_starting_blocks
  %33 = add i64 %32, 2
  %34 = add i64 %33, 1
  br label %52

; <label>:35:                                     ; preds = %27
  ret i32 0

; <label>:36:                                     ; preds = %27
  br label %37

; <label>:37:                                     ; preds = %36
  %__v28_overhang = sub i64 %__v47___v4_header_len, 64
  call void @SHA1_Transform(i8* %__v1_md_state, i8* %__v4_header)
  %38 = getelementptr i8, i8* %__v25_first_block, i64 0
  %39 = getelementptr i8, i8* %__v4_header, i64 64
  call void @"__memcpy[8]_secret"(i8* %38, i8* %39, i64 %__v28_overhang)
  %__v29_cpylen = sub i64 64, %__v28_overhang
  %40 = getelementptr i8, i8* %__v25_first_block, i64 %__v28_overhang
  %41 = getelementptr i8, i8* %__v5_data, i64 0
  call void @"__memcpy[8]_secret"(i8* %40, i8* %41, i64 %__v29_cpylen)
  call void @SHA1_Transform(i8* %__v1_md_state, i8* %__v25_first_block)
  %42 = load i64, i64* %__v24_k
  %43 = udiv i64 %42, 64
  %__v30_loopbound = sub i64 %43, 1
  br label %44

; <label>:44:                                     ; preds = %49, %37
  %__v31_i = phi i64 [ 1, %37 ], [ %50, %49 ]
  %45 = icmp ult i64 %__v31_i, %__v30_loopbound
  br i1 %45, label %46, label %51

; <label>:46:                                     ; preds = %44
  %47 = mul i64 64, %__v31_i
  %__v32_idx = sub i64 %47, %__v28_overhang
  %48 = getelementptr i8, i8* %__v5_data, i64 %__v32_idx
  call void @SHA1_Transform(i8* %__v1_md_state, i8* %48)
  br label %49

; <label>:49:                                     ; preds = %46
  %50 = add i64 %__v31_i, 1
  br label %44

; <label>:51:                                     ; preds = %44
  br label %30

; <label>:52:                                     ; preds = %55, %30
  %__v33_i = phi i64 [ %31, %30 ], [ %56, %55 ]
  %53 = icmp ult i64 %__v33_i, %34
  br i1 %53, label %54, label %57

; <label>:54:                                     ; preds = %52
  %__v34_block = alloca i8, i64 128
  call void @fact.memset.i8(i8* %__v34_block, i8 0, i64 128)
  %__v35_is_block_a = icmp eq i64 %__v33_i, %__v21_index_a
  %__v36_is_block_b = icmp eq i64 %__v33_i, %__v22_index_b
  br label %58

; <label>:55:                                     ; preds = %113
  %56 = add i64 %__v33_i, 1
  br label %52

; <label>:57:                                     ; preds = %52
  ret i32 1

; <label>:58:                                     ; preds = %62, %54
  %__v37_j = phi i64 [ 0, %54 ], [ %63, %62 ]
  %59 = icmp ult i64 %__v37_j, 64
  br i1 %59, label %60, label %64

; <label>:60:                                     ; preds = %58
  %__v38_b = alloca i8
  store i8 0, i8* %__v38_b
  %__v39__k = load i64, i64* %__v24_k
  %61 = icmp ult i64 %__v39__k, %__v47___v4_header_len
  br i1 %61, label %65, label %68

; <label>:62:                                     ; preds = %98
  %63 = add i64 %__v37_j, 1
  br label %58

; <label>:64:                                     ; preds = %58
  call void @SHA1_Transform(i8* %__v1_md_state, i8* %__v34_block)
  call void @_md_final_raw(i8* %__v1_md_state, i8* %__v34_block)
  br label %101

; <label>:65:                                     ; preds = %60
  %66 = getelementptr i8, i8* %__v4_header, i64 %__v39__k
  %67 = load i8, i8* %66
  store i8 %67, i8* %__v38_b
  br label %71

; <label>:68:                                     ; preds = %60
  %69 = add i64 %__v48___v5_data_len, %__v47___v4_header_len
  %70 = icmp ult i64 %__v39__k, %69
  br i1 %70, label %87, label %90

; <label>:71:                                     ; preds = %91, %65
  %72 = load i64, i64* %__v24_k
  %73 = add i64 %72, 1
  store i64 %73, i64* %__v24_k
  %74 = icmp uge i64 %__v37_j, %__v20_c
  %__v40_is_past_c = call i1 @fact.select.asm.i1(i1 %__v35_is_block_a, i1 %74, i1 false)
  %75 = add i64 %__v20_c, 1
  %76 = icmp uge i64 %__v37_j, %75
  %__m1 = call i1 @fact.select.asm.i1(i1 %__v35_is_block_a, i1 %76, i1 false)
  %77 = load i8, i8* %__v38_b
  %78 = call i8 @fact.select.asm.i8(i1 %__v40_is_past_c, i8 -128, i8 %77)
  store i8 %78, i8* %__v38_b
  %79 = and i1 true, %__m1
  %80 = load i8, i8* %__v38_b
  %81 = call i8 @fact.cmov.asm.i8(i1 %79, i8 0, i8 %80)
  store i8 %81, i8* %__v38_b
  %__m2 = xor i1 %__m1, true
  %82 = xor i1 %__v35_is_block_a, true
  %__m3 = call i1 @fact.select.asm.i1(i1 %__v36_is_block_b, i1 %82, i1 false)
  %83 = and i1 true, %__m3
  %84 = load i8, i8* %__v38_b
  %85 = call i8 @fact.cmov.asm.i8(i1 %83, i8 0, i8 %84)
  store i8 %85, i8* %__v38_b
  %__m4 = xor i1 %__m3, true
  %86 = icmp uge i64 %__v37_j, 56
  br i1 %86, label %92, label %97

; <label>:87:                                     ; preds = %68
  %__v55_lexpr = sub i64 %__v39__k, %__v47___v4_header_len
  %88 = getelementptr i8, i8* %__v5_data, i64 %__v55_lexpr
  %89 = load i8, i8* %88
  store i8 %89, i8* %__v38_b
  br label %91

; <label>:90:                                     ; preds = %68
  br label %91

; <label>:91:                                     ; preds = %90, %87
  br label %71

; <label>:92:                                     ; preds = %71
  %__v56_lexpr = sub i64 %__v37_j, 56
  %93 = getelementptr i8, i8* %__v27_length_bytes, i64 %__v56_lexpr
  %94 = load i8, i8* %93
  %95 = load i8, i8* %__v38_b
  %96 = call i8 @fact.select.asm.i8(i1 %__v36_is_block_b, i8 %94, i8 %95)
  store i8 %96, i8* %__v38_b
  br label %98

; <label>:97:                                     ; preds = %71
  br label %98

; <label>:98:                                     ; preds = %97, %92
  %99 = getelementptr i8, i8* %__v34_block, i64 %__v37_j
  %100 = load i8, i8* %__v38_b
  store i8 %100, i8* %99
  br label %62

; <label>:101:                                    ; preds = %111, %64
  %__v42_j = phi i64 [ 0, %64 ], [ %112, %111 ]
  %102 = icmp ult i64 %__v42_j, 20
  br i1 %102, label %103, label %113

; <label>:103:                                    ; preds = %101
  %104 = getelementptr i8, i8* %__v2_mac_out, i64 %__v42_j
  %105 = getelementptr i8, i8* %__v2_mac_out, i64 %__v42_j
  %106 = load i8, i8* %105
  %107 = getelementptr i8, i8* %__v34_block, i64 %__v42_j
  %108 = load i8, i8* %107
  %109 = call i8 @fact.select.asm.i8(i1 %__v36_is_block_b, i8 %108, i8 0)
  %110 = or i8 %106, %109
  store i8 %110, i8* %104
  br label %111

; <label>:111:                                    ; preds = %103
  %112 = add i64 %__v42_j, 1
  br label %101

; <label>:113:                                    ; preds = %101
  br label %55
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #1

; Function Attrs: alwaysinline
define internal void @fact.memset.i8(i8* %dst, i8 %n, i64 %len) #0 {
entry:
  %0 = mul i64 %len, 1
  call void @llvm.memset.p0i8.i64(i8* %dst, i8 %n, i64 %0, i32 1, i1 false)
  ret void
}

; Function Attrs: alwaysinline
define internal i1 @fact.select.asm.i1(i1 %cond, i1 %x, i1 %y) #0 {
entry:
  %0 = zext i1 %x to i32
  %1 = zext i1 %y to i32
  %2 = call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %cond, i32 %0, i32 %1)
  %3 = trunc i32 %2 to i1
  ret i1 %3
}

; Function Attrs: alwaysinline
define internal i8 @fact.select.asm.i8(i1 %cond, i8 %x, i8 %y) #0 {
entry:
  %0 = zext i8 %x to i32
  %1 = zext i8 %y to i32
  %2 = call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %cond, i32 %0, i32 %1)
  %3 = trunc i32 %2 to i8
  ret i8 %3
}

; Function Attrs: alwaysinline
define internal i8 @fact.cmov.asm.i8(i1 %cond, i8 %x, i8 %y) #0 {
entry:
  %0 = zext i8 %x to i32
  %1 = zext i8 %y to i32
  %2 = call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %cond, i32 %0, i32 %1)
  %3 = trunc i32 %2 to i8
  ret i8 %3
}

attributes #0 = { alwaysinline }
attributes #1 = { argmemonly nounwind }
