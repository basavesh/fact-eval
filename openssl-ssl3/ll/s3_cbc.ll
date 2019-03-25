; ModuleID = './s3_cbc.bc'
source_filename = "Module"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #0

declare void @_md_final_raw(i8*, i8*)

declare void @SHA1_Transform(i8*, i8*)

define i32 @__ssl3_cbc_digest_record(i8* %__v1_md_state, i8* %__v2_mac_out, i8* %__v3_header, i64 %__v46___v3_header_len, i8* %__v4_data, i64 %__v47___v4_data_len, i64 %__v5_data_plus_mac_size) {
entry:
  %__rval = alloca i32
  store i32 0, i32* %__rval
  %__rctx = alloca i1
  store i1 true, i1* %__rctx
  %__v15_length = add i64 %__v47___v4_data_len, %__v46___v3_header_len
  %0 = sub i64 %__v15_length, 20
  %__v16_max_mac_bytes = sub i64 %0, 1
  %1 = add i64 %__v16_max_mac_bytes, 1
  %2 = add i64 %1, 8
  %3 = add i64 %2, 64
  %4 = sub i64 %3, 1
  %__v17_num_blocks = udiv i64 %4, 64
  %5 = add i64 %__v5_data_plus_mac_size, %__v46___v3_header_len
  %__v18_mac_end_offset = sub i64 %5, 20
  %__v19_c = urem i64 %__v18_mac_end_offset, 64
  %__v20_index_a = udiv i64 %__v18_mac_end_offset, 64
  %6 = add i64 %__v18_mac_end_offset, 8
  %__v21_index_b = udiv i64 %6, 64
  %__v22_num_starting_blocks = alloca i64
  store i64 0, i64* %__v22_num_starting_blocks
  %__v23_k = alloca i64
  store i64 0, i64* %__v23_k
  %7 = icmp ugt i64 %__v17_num_blocks, 3
  br i1 %7, label %8, label %12

; <label>:8:                                      ; preds = %entry
  %9 = sub i64 %__v17_num_blocks, 2
  store i64 %9, i64* %__v22_num_starting_blocks
  %10 = load i64, i64* %__v22_num_starting_blocks
  %11 = mul i64 64, %10
  store i64 %11, i64* %__v23_k
  br label %13

; <label>:12:                                     ; preds = %entry
  br label %13

; <label>:13:                                     ; preds = %12, %8
  %__v24_first_block = alloca i8, i64 128
  call void @llvm.memset.p0i8.i64(i8* %__v24_first_block, i8 0, i64 128, i32 1, i1 false)
  %__v25_bits = mul i64 8, %__v18_mac_end_offset
  %__v26_length_bytes = alloca i8, i64 16
  call void @llvm.memset.p0i8.i64(i8* %__v26_length_bytes, i8 0, i64 16, i32 1, i1 false)
  %14 = getelementptr i8, i8* %__v26_length_bytes, i64 4
  %15 = lshr i64 %__v25_bits, 24
  %16 = trunc i64 %15 to i8
  store i8 %16, i8* %14
  %17 = getelementptr i8, i8* %__v26_length_bytes, i64 5
  %18 = lshr i64 %__v25_bits, 16
  %19 = trunc i64 %18 to i8
  store i8 %19, i8* %17
  %20 = getelementptr i8, i8* %__v26_length_bytes, i64 6
  %21 = lshr i64 %__v25_bits, 8
  %22 = trunc i64 %21 to i8
  store i8 %22, i8* %20
  %23 = getelementptr i8, i8* %__v26_length_bytes, i64 7
  %24 = trunc i64 %__v25_bits to i8
  store i8 %24, i8* %23
  %25 = load i64, i64* %__v23_k
  %26 = icmp ugt i64 %25, 0
  br i1 %26, label %27, label %29

; <label>:27:                                     ; preds = %13
  %28 = icmp ule i64 %__v46___v3_header_len, 64
  br i1 %28, label %35, label %36

; <label>:29:                                     ; preds = %13
  br label %30

; <label>:30:                                     ; preds = %51, %29
  %31 = load i64, i64* %__v22_num_starting_blocks
  %32 = load i64, i64* %__v22_num_starting_blocks
  %33 = add i64 %32, 2
  %34 = add i64 %33, 1
  br label %52

; <label>:35:                                     ; preds = %27
  ret i32 0

; <label>:36:                                     ; preds = %27
  br label %37

; <label>:37:                                     ; preds = %36
  %__v27_overhang = sub i64 %__v46___v3_header_len, 64
  call void @SHA1_Transform(i8* %__v1_md_state, i8* %__v3_header)
  %38 = getelementptr i8, i8* %__v24_first_block, i64 0
  %39 = getelementptr i8, i8* %__v3_header, i64 64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %38, i8* %39, i64 %__v27_overhang, i32 1, i1 false)
  %__v28_cpylen = sub i64 64, %__v27_overhang
  %40 = getelementptr i8, i8* %__v24_first_block, i64 %__v27_overhang
  %41 = getelementptr i8, i8* %__v4_data, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %40, i8* %41, i64 %__v28_cpylen, i32 1, i1 false)
  call void @SHA1_Transform(i8* %__v1_md_state, i8* %__v24_first_block)
  %42 = load i64, i64* %__v23_k
  %43 = udiv i64 %42, 64
  %__v29_loopbound = sub i64 %43, 1
  br label %44

; <label>:44:                                     ; preds = %49, %37
  %__v30_i = phi i64 [ 1, %37 ], [ %50, %49 ]
  %45 = icmp ult i64 %__v30_i, %__v29_loopbound
  br i1 %45, label %46, label %51

; <label>:46:                                     ; preds = %44
  %47 = mul i64 64, %__v30_i
  %__v31_idx = sub i64 %47, %__v27_overhang
  %48 = getelementptr i8, i8* %__v4_data, i64 %__v31_idx
  call void @SHA1_Transform(i8* %__v1_md_state, i8* %48)
  br label %49

; <label>:49:                                     ; preds = %46
  %50 = add i64 %__v30_i, 1
  br label %44

; <label>:51:                                     ; preds = %44
  br label %30

; <label>:52:                                     ; preds = %55, %30
  %__v32_i = phi i64 [ %31, %30 ], [ %56, %55 ]
  %53 = icmp ult i64 %__v32_i, %34
  br i1 %53, label %54, label %57

; <label>:54:                                     ; preds = %52
  %__v33_block = alloca i8, i64 128
  call void @llvm.memset.p0i8.i64(i8* %__v33_block, i8 0, i64 128, i32 1, i1 false)
  %__v34_is_block_a = icmp eq i64 %__v32_i, %__v20_index_a
  %__v35_is_block_b = icmp eq i64 %__v32_i, %__v21_index_b
  br label %58

; <label>:55:                                     ; preds = %133
  %56 = add i64 %__v32_i, 1
  br label %52

; <label>:57:                                     ; preds = %52
  ret i32 1

; <label>:58:                                     ; preds = %62, %54
  %__v36_j = phi i64 [ 0, %54 ], [ %63, %62 ]
  %59 = icmp ult i64 %__v36_j, 64
  br i1 %59, label %60, label %64

; <label>:60:                                     ; preds = %58
  %__v37_b = alloca i8
  store i8 0, i8* %__v37_b
  %__v38__k = load i64, i64* %__v23_k
  %61 = icmp ult i64 %__v38__k, %__v46___v3_header_len
  br i1 %61, label %65, label %68

; <label>:62:                                     ; preds = %116
  %63 = add i64 %__v36_j, 1
  br label %58

; <label>:64:                                     ; preds = %58
  call void @SHA1_Transform(i8* %__v1_md_state, i8* %__v33_block)
  call void @_md_final_raw(i8* %__v1_md_state, i8* %__v33_block)
  br label %119

; <label>:65:                                     ; preds = %60
  %66 = getelementptr i8, i8* %__v3_header, i64 %__v38__k
  %67 = load i8, i8* %66
  store i8 %67, i8* %__v37_b
  br label %71

; <label>:68:                                     ; preds = %60
  %69 = add i64 %__v47___v4_data_len, %__v46___v3_header_len
  %70 = icmp ult i64 %__v38__k, %69
  br i1 %70, label %102, label %105

; <label>:71:                                     ; preds = %106, %65
  %72 = load i64, i64* %__v23_k
  %73 = add i64 %72, 1
  store i64 %73, i64* %__v23_k
  %74 = icmp uge i64 %__v36_j, %__v19_c
  %75 = zext i1 %74 to i32
  %76 = call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %__v34_is_block_a, i32 %75, i32 0)
  %77 = trunc i32 %76 to i1
  %78 = add i64 %__v19_c, 1
  %79 = icmp uge i64 %__v36_j, %78
  %80 = zext i1 %79 to i32
  %81 = call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %__v34_is_block_a, i32 %80, i32 0)
  %82 = trunc i32 %81 to i1
  %83 = load i8, i8* %__v37_b
  %84 = zext i8 %83 to i32
  %85 = call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %77, i32 128, i32 %84)
  %86 = trunc i32 %85 to i8
  store i8 %86, i8* %__v37_b
  %87 = and i1 true, %82
  %88 = load i8, i8* %__v37_b
  %89 = zext i8 %88 to i32
  %90 = call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %87, i32 0, i32 %89)
  %91 = trunc i32 %90 to i8
  store i8 %91, i8* %__v37_b
  %__m2 = xor i1 %82, true
  %92 = xor i1 %__v34_is_block_a, true
  %93 = zext i1 %92 to i32
  %94 = call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %__v35_is_block_b, i32 %93, i32 0)
  %95 = trunc i32 %94 to i1
  %96 = and i1 true, %95
  %97 = load i8, i8* %__v37_b
  %98 = zext i8 %97 to i32
  %99 = call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %96, i32 0, i32 %98)
  %100 = trunc i32 %99 to i8
  store i8 %100, i8* %__v37_b
  %__m4 = xor i1 %95, true
  %101 = icmp uge i64 %__v36_j, 56
  br i1 %101, label %107, label %115

; <label>:102:                                    ; preds = %68
  %__v54_lexpr = sub i64 %__v38__k, %__v46___v3_header_len
  %103 = getelementptr i8, i8* %__v4_data, i64 %__v54_lexpr
  %104 = load i8, i8* %103
  store i8 %104, i8* %__v37_b
  br label %106

; <label>:105:                                    ; preds = %68
  br label %106

; <label>:106:                                    ; preds = %105, %102
  br label %71

; <label>:107:                                    ; preds = %71
  %__v55_lexpr = sub i64 %__v36_j, 56
  %108 = getelementptr i8, i8* %__v26_length_bytes, i64 %__v55_lexpr
  %109 = load i8, i8* %108
  %110 = load i8, i8* %__v37_b
  %111 = zext i8 %109 to i32
  %112 = zext i8 %110 to i32
  %113 = call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %__v35_is_block_b, i32 %111, i32 %112)
  %114 = trunc i32 %113 to i8
  store i8 %114, i8* %__v37_b
  br label %116

; <label>:115:                                    ; preds = %71
  br label %116

; <label>:116:                                    ; preds = %115, %107
  %117 = getelementptr i8, i8* %__v33_block, i64 %__v36_j
  %118 = load i8, i8* %__v37_b
  store i8 %118, i8* %117
  br label %62

; <label>:119:                                    ; preds = %131, %64
  %__v41_j = phi i64 [ 0, %64 ], [ %132, %131 ]
  %120 = icmp ult i64 %__v41_j, 20
  br i1 %120, label %121, label %133

; <label>:121:                                    ; preds = %119
  %122 = getelementptr i8, i8* %__v2_mac_out, i64 %__v41_j
  %123 = getelementptr i8, i8* %__v2_mac_out, i64 %__v41_j
  %124 = load i8, i8* %123
  %125 = getelementptr i8, i8* %__v33_block, i64 %__v41_j
  %126 = load i8, i8* %125
  %127 = zext i8 %126 to i32
  %128 = call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %__v35_is_block_b, i32 %127, i32 0)
  %129 = trunc i32 %128 to i8
  %130 = or i8 %124, %129
  store i8 %130, i8* %122
  br label %131

; <label>:131:                                    ; preds = %121
  %132 = add i64 %__v41_j, 1
  br label %119

; <label>:133:                                    ; preds = %119
  br label %55
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #0

attributes #0 = { argmemonly nounwind }
