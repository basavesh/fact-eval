; ModuleID = 'Module'
source_filename = "Module"

; Function Attrs: alwaysinline
define internal void @"__memcpy[8]/secret"(i8* %dst, i8* %src, i64 %len) #0 {
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

declare void @_md_final_raw(i32, i8*, i8*)

declare void @_md_transform(i32, i8*, i8*)

define i32 @__ssl3_cbc_digest_record(i8* %__v1_md_state, i8* %__v2_mac_out, i8* %__v3_hmac_pad, i64 %__v4_md_size, i64 %__v5_md_block_size, i64 %__v6_log_md_block_size, i64 %__v7_sslv3_pad_length, i64 %__v8_md_length_size, i1 %__v9_length_is_big_endian, i32 %__v10_sha_type, i8* %__v11_header, i64 %__v20_header_length, i8* %__v12_data, i64 %__v60___v12_data_len, i64 %__v13_data_plus_mac_size, i8* %__v14_mac_secret, i64 %__v61___v14_mac_secret_len, i1 %__v15_is_sslv3) {
entry:
  %__rval = alloca i32
  store i32 0, i32* %__rval
  %__rctx = alloca i1
  store i1 true, i1* %__rctx
  %__v21_variance_blocks = select i1 %__v15_is_sslv3, i64 2, i64 6
  %__v22_length = add i64 %__v60___v12_data_len, %__v20_header_length
  %0 = sub i64 %__v22_length, %__v4_md_size
  %__v23_max_mac_bytes = sub i64 %0, 1
  %1 = add i64 %__v23_max_mac_bytes, 1
  %2 = add i64 %1, %__v8_md_length_size
  %3 = add i64 %2, %__v5_md_block_size
  %4 = sub i64 %3, 1
  %__v24_num_blocks = lshr i64 %4, %__v6_log_md_block_size
  %5 = add i64 %__v13_data_plus_mac_size, %__v20_header_length
  %__v25_mac_end_offset = sub i64 %5, %__v4_md_size
  %6 = sub i64 %__v5_md_block_size, 1
  %__v26_c = and i64 %__v25_mac_end_offset, %6
  %__v27_index_a = lshr i64 %__v25_mac_end_offset, %__v6_log_md_block_size
  %7 = add i64 %__v25_mac_end_offset, %__v8_md_length_size
  %__v28_index_b = lshr i64 %7, %__v6_log_md_block_size
  %__v29_num_starting_blocks = alloca i64
  store i64 0, i64* %__v29_num_starting_blocks
  %__v30_k = alloca i64
  store i64 0, i64* %__v30_k
  %8 = select i1 %__v15_is_sslv3, i64 1, i64 0
  %9 = add i64 %__v21_variance_blocks, %8
  %10 = icmp ugt i64 %__v24_num_blocks, %9
  br i1 %10, label %11, label %15

; <label>:11:                                     ; preds = %entry
  %12 = sub i64 %__v24_num_blocks, %__v21_variance_blocks
  store i64 %12, i64* %__v29_num_starting_blocks
  %13 = load i64, i64* %__v29_num_starting_blocks
  %14 = mul i64 %__v5_md_block_size, %13
  store i64 %14, i64* %__v30_k
  br label %16

; <label>:15:                                     ; preds = %entry
  br label %16

; <label>:16:                                     ; preds = %15, %11
  %__v31_first_block = alloca i8, i64 128
  call void @fact.memset.i8(i8* %__v31_first_block, i8 0, i64 128)
  %17 = mul i64 8, %__v25_mac_end_offset
  %__v32_bits = alloca i64
  store i64 %17, i64* %__v32_bits
  %18 = xor i1 %__v15_is_sslv3, true
  br i1 %18, label %19, label %24

; <label>:19:                                     ; preds = %16
  %20 = load i64, i64* %__v32_bits
  %21 = mul i64 8, %__v5_md_block_size
  %22 = add i64 %20, %21
  store i64 %22, i64* %__v32_bits
  %23 = icmp ugt i64 %__v61___v14_mac_secret_len, 128
  br i1 %23, label %26, label %27

; <label>:24:                                     ; preds = %16
  br label %25

; <label>:25:                                     ; preds = %24, %39
  %__v34_length_bytes = alloca i8, i64 16
  call void @fact.memset.i8(i8* %__v34_length_bytes, i8 0, i64 16)
  br i1 %__v9_length_is_big_endian, label %40, label %56

; <label>:26:                                     ; preds = %19
  ret i32 0

; <label>:27:                                     ; preds = %19
  br label %28

; <label>:28:                                     ; preds = %27
  %29 = getelementptr i8, i8* %__v3_hmac_pad, i64 0
  call void @"__memcpy[8]/secret"(i8* %29, i8* %__v14_mac_secret, i64 %__v61___v14_mac_secret_len)
  br label %30

; <label>:30:                                     ; preds = %37, %28
  %__v33_i = phi i64 [ 0, %28 ], [ %38, %37 ]
  %31 = icmp ult i64 %__v33_i, %__v5_md_block_size
  br i1 %31, label %32, label %39

; <label>:32:                                     ; preds = %30
  %33 = getelementptr i8, i8* %__v3_hmac_pad, i64 %__v33_i
  %34 = getelementptr i8, i8* %__v3_hmac_pad, i64 %__v33_i
  %35 = load i8, i8* %34
  %36 = xor i8 %35, 54
  store i8 %36, i8* %33
  br label %37

; <label>:37:                                     ; preds = %32
  %38 = add i64 %__v33_i, 1
  br label %30

; <label>:39:                                     ; preds = %30
  call void @_md_transform(i32 %__v10_sha_type, i8* %__v1_md_state, i8* %__v3_hmac_pad)
  br label %25

; <label>:40:                                     ; preds = %25
  %__v64_lexpr = sub i64 %__v8_md_length_size, 4
  %41 = getelementptr i8, i8* %__v34_length_bytes, i64 %__v64_lexpr
  %42 = load i64, i64* %__v32_bits
  %43 = lshr i64 %42, 24
  %44 = trunc i64 %43 to i8
  store i8 %44, i8* %41
  %__v65_lexpr = sub i64 %__v8_md_length_size, 3
  %45 = getelementptr i8, i8* %__v34_length_bytes, i64 %__v65_lexpr
  %46 = load i64, i64* %__v32_bits
  %47 = lshr i64 %46, 16
  %48 = trunc i64 %47 to i8
  store i8 %48, i8* %45
  %__v66_lexpr = sub i64 %__v8_md_length_size, 2
  %49 = getelementptr i8, i8* %__v34_length_bytes, i64 %__v66_lexpr
  %50 = load i64, i64* %__v32_bits
  %51 = lshr i64 %50, 8
  %52 = trunc i64 %51 to i8
  store i8 %52, i8* %49
  %__v67_lexpr = sub i64 %__v8_md_length_size, 1
  %53 = getelementptr i8, i8* %__v34_length_bytes, i64 %__v67_lexpr
  %54 = load i64, i64* %__v32_bits
  %55 = trunc i64 %54 to i8
  store i8 %55, i8* %53
  br label %72

; <label>:56:                                     ; preds = %25
  %__v68_lexpr = sub i64 %__v8_md_length_size, 5
  %57 = getelementptr i8, i8* %__v34_length_bytes, i64 %__v68_lexpr
  %58 = load i64, i64* %__v32_bits
  %59 = lshr i64 %58, 24
  %60 = trunc i64 %59 to i8
  store i8 %60, i8* %57
  %__v69_lexpr = sub i64 %__v8_md_length_size, 6
  %61 = getelementptr i8, i8* %__v34_length_bytes, i64 %__v69_lexpr
  %62 = load i64, i64* %__v32_bits
  %63 = lshr i64 %62, 16
  %64 = trunc i64 %63 to i8
  store i8 %64, i8* %61
  %__v70_lexpr = sub i64 %__v8_md_length_size, 7
  %65 = getelementptr i8, i8* %__v34_length_bytes, i64 %__v70_lexpr
  %66 = load i64, i64* %__v32_bits
  %67 = lshr i64 %66, 8
  %68 = trunc i64 %67 to i8
  store i8 %68, i8* %65
  %__v71_lexpr = sub i64 %__v8_md_length_size, 8
  %69 = getelementptr i8, i8* %__v34_length_bytes, i64 %__v71_lexpr
  %70 = load i64, i64* %__v32_bits
  %71 = trunc i64 %70 to i8
  store i8 %71, i8* %69
  br label %72

; <label>:72:                                     ; preds = %56, %40
  %73 = load i64, i64* %__v30_k
  %74 = icmp ugt i64 %73, 0
  br i1 %74, label %75, label %76

; <label>:75:                                     ; preds = %72
  br i1 %__v15_is_sslv3, label %82, label %84

; <label>:76:                                     ; preds = %72
  br label %77

; <label>:77:                                     ; preds = %76, %91
  %78 = load i64, i64* %__v29_num_starting_blocks
  %79 = load i64, i64* %__v29_num_starting_blocks
  %80 = add i64 %79, %__v21_variance_blocks
  %81 = add i64 %80, 1
  br label %117

; <label>:82:                                     ; preds = %75
  %83 = icmp ule i64 %__v20_header_length, %__v5_md_block_size
  br i1 %83, label %92, label %93

; <label>:84:                                     ; preds = %75
  %85 = getelementptr i8, i8* %__v31_first_block, i64 0
  %86 = getelementptr i8, i8* %__v11_header, i64 0
  call void @"__memcpy[8]/secret"(i8* %85, i8* %86, i64 13)
  %__v40_cpylen = sub i64 %__v5_md_block_size, 13
  %87 = getelementptr i8, i8* %__v31_first_block, i64 13
  %88 = getelementptr i8, i8* %__v12_data, i64 0
  call void @"__memcpy[8]/secret"(i8* %87, i8* %88, i64 %__v40_cpylen)
  call void @_md_transform(i32 %__v10_sha_type, i8* %__v1_md_state, i8* %__v31_first_block)
  %89 = load i64, i64* %__v30_k
  %90 = udiv i64 %89, %__v5_md_block_size
  br label %109

; <label>:91:                                     ; preds = %116, %108
  br label %77

; <label>:92:                                     ; preds = %82
  ret i32 0

; <label>:93:                                     ; preds = %82
  br label %94

; <label>:94:                                     ; preds = %93
  %__v35_overhang = sub i64 %__v20_header_length, %__v5_md_block_size
  call void @_md_transform(i32 %__v10_sha_type, i8* %__v1_md_state, i8* %__v11_header)
  %95 = getelementptr i8, i8* %__v31_first_block, i64 0
  %96 = getelementptr i8, i8* %__v11_header, i64 %__v5_md_block_size
  call void @"__memcpy[8]/secret"(i8* %95, i8* %96, i64 %__v35_overhang)
  %__v36_cpylen = sub i64 %__v5_md_block_size, %__v35_overhang
  %97 = getelementptr i8, i8* %__v31_first_block, i64 %__v35_overhang
  %98 = getelementptr i8, i8* %__v12_data, i64 0
  call void @"__memcpy[8]/secret"(i8* %97, i8* %98, i64 %__v36_cpylen)
  call void @_md_transform(i32 %__v10_sha_type, i8* %__v1_md_state, i8* %__v31_first_block)
  %99 = load i64, i64* %__v30_k
  %100 = udiv i64 %99, %__v5_md_block_size
  %__v37_loopbound = sub i64 %100, 1
  br label %101

; <label>:101:                                    ; preds = %106, %94
  %__v38_i = phi i64 [ 1, %94 ], [ %107, %106 ]
  %102 = icmp ult i64 %__v38_i, %__v37_loopbound
  br i1 %102, label %103, label %108

; <label>:103:                                    ; preds = %101
  %104 = mul i64 %__v5_md_block_size, %__v38_i
  %__v39_idx = sub i64 %104, %__v35_overhang
  %105 = getelementptr i8, i8* %__v12_data, i64 %__v39_idx
  call void @_md_transform(i32 %__v10_sha_type, i8* %__v1_md_state, i8* %105)
  br label %106

; <label>:106:                                    ; preds = %103
  %107 = add i64 %__v38_i, 1
  br label %101

; <label>:108:                                    ; preds = %101
  br label %91

; <label>:109:                                    ; preds = %114, %84
  %__v41_i = phi i64 [ 1, %84 ], [ %115, %114 ]
  %110 = icmp ult i64 %__v41_i, %90
  br i1 %110, label %111, label %116

; <label>:111:                                    ; preds = %109
  %112 = mul i64 %__v5_md_block_size, %__v41_i
  %__v42_idx = sub i64 %112, 13
  %113 = getelementptr i8, i8* %__v12_data, i64 %__v42_idx
  call void @_md_transform(i32 %__v10_sha_type, i8* %__v1_md_state, i8* %113)
  br label %114

; <label>:114:                                    ; preds = %111
  %115 = add i64 %__v41_i, 1
  br label %109

; <label>:116:                                    ; preds = %109
  br label %91

; <label>:117:                                    ; preds = %120, %77
  %__v43_i = phi i64 [ %78, %77 ], [ %121, %120 ]
  %118 = icmp ult i64 %__v43_i, %81
  br i1 %118, label %119, label %122

; <label>:119:                                    ; preds = %117
  %__v44_block = alloca i8, i64 128
  call void @fact.memset.i8(i8* %__v44_block, i8 0, i64 128)
  %__v45_is_block_a = icmp eq i64 %__v43_i, %__v27_index_a
  %__v46_is_block_b = icmp eq i64 %__v43_i, %__v28_index_b
  br label %123

; <label>:120:                                    ; preds = %180
  %121 = add i64 %__v43_i, 1
  br label %117

; <label>:122:                                    ; preds = %117
  ret i32 1

; <label>:123:                                    ; preds = %127, %119
  %__v47_j = phi i64 [ 0, %119 ], [ %128, %127 ]
  %124 = icmp ult i64 %__v47_j, %__v5_md_block_size
  br i1 %124, label %125, label %129

; <label>:125:                                    ; preds = %123
  %__v48_b = alloca i8
  store i8 0, i8* %__v48_b
  %__v49__k = load i64, i64* %__v30_k
  %126 = icmp ult i64 %__v49__k, %__v20_header_length
  br i1 %126, label %130, label %133

; <label>:127:                                    ; preds = %165
  %128 = add i64 %__v47_j, 1
  br label %123

; <label>:129:                                    ; preds = %123
  call void @_md_transform(i32 %__v10_sha_type, i8* %__v1_md_state, i8* %__v44_block)
  call void @_md_final_raw(i32 %__v10_sha_type, i8* %__v1_md_state, i8* %__v44_block)
  br label %168

; <label>:130:                                    ; preds = %125
  %131 = getelementptr i8, i8* %__v11_header, i64 %__v49__k
  %132 = load i8, i8* %131
  store i8 %132, i8* %__v48_b
  br label %136

; <label>:133:                                    ; preds = %125
  %134 = add i64 %__v60___v12_data_len, %__v20_header_length
  %135 = icmp ult i64 %__v49__k, %134
  br i1 %135, label %153, label %156

; <label>:136:                                    ; preds = %157, %130
  %137 = load i64, i64* %__v30_k
  %138 = add i64 %137, 1
  store i64 %138, i64* %__v30_k
  %139 = icmp uge i64 %__v47_j, %__v26_c
  %__v50_is_past_c = call i1 @fact.select.asm.i1(i1 %__v45_is_block_a, i1 %139, i1 false)
  %140 = add i64 %__v26_c, 1
  %141 = icmp uge i64 %__v47_j, %140
  %__m1 = call i1 @fact.select.asm.i1(i1 %__v45_is_block_a, i1 %141, i1 false)
  %142 = load i8, i8* %__v48_b
  %143 = call i8 @fact.select.asm.i8(i1 %__v50_is_past_c, i8 -128, i8 %142)
  store i8 %143, i8* %__v48_b
  %144 = and i1 true, %__m1
  %145 = load i8, i8* %__v48_b
  %146 = call i8 @fact.cmov.asm.i8(i1 %144, i8 0, i8 %145)
  store i8 %146, i8* %__v48_b
  %__m2 = xor i1 %__m1, true
  %147 = xor i1 %__v45_is_block_a, true
  %__m3 = call i1 @fact.select.asm.i1(i1 %__v46_is_block_b, i1 %147, i1 false)
  %148 = and i1 true, %__m3
  %149 = load i8, i8* %__v48_b
  %150 = call i8 @fact.cmov.asm.i8(i1 %148, i8 0, i8 %149)
  store i8 %150, i8* %__v48_b
  %__m4 = xor i1 %__m3, true
  %151 = sub i64 %__v5_md_block_size, %__v8_md_length_size
  %152 = icmp uge i64 %__v47_j, %151
  br i1 %152, label %158, label %164

; <label>:153:                                    ; preds = %133
  %__v72_lexpr = sub i64 %__v49__k, %__v20_header_length
  %154 = getelementptr i8, i8* %__v12_data, i64 %__v72_lexpr
  %155 = load i8, i8* %154
  store i8 %155, i8* %__v48_b
  br label %157

; <label>:156:                                    ; preds = %133
  br label %157

; <label>:157:                                    ; preds = %156, %153
  br label %136

; <label>:158:                                    ; preds = %136
  %159 = sub i64 %__v5_md_block_size, %__v8_md_length_size
  %__v73_lexpr = sub i64 %__v47_j, %159
  %160 = getelementptr i8, i8* %__v34_length_bytes, i64 %__v73_lexpr
  %161 = load i8, i8* %160
  %162 = load i8, i8* %__v48_b
  %163 = call i8 @fact.select.asm.i8(i1 %__v46_is_block_b, i8 %161, i8 %162)
  store i8 %163, i8* %__v48_b
  br label %165

; <label>:164:                                    ; preds = %136
  br label %165

; <label>:165:                                    ; preds = %164, %158
  %166 = getelementptr i8, i8* %__v44_block, i64 %__v47_j
  %167 = load i8, i8* %__v48_b
  store i8 %167, i8* %166
  br label %127

; <label>:168:                                    ; preds = %178, %129
  %__v52_j = phi i64 [ 0, %129 ], [ %179, %178 ]
  %169 = icmp ult i64 %__v52_j, %__v4_md_size
  br i1 %169, label %170, label %180

; <label>:170:                                    ; preds = %168
  %171 = getelementptr i8, i8* %__v2_mac_out, i64 %__v52_j
  %172 = getelementptr i8, i8* %__v2_mac_out, i64 %__v52_j
  %173 = load i8, i8* %172
  %174 = getelementptr i8, i8* %__v44_block, i64 %__v52_j
  %175 = load i8, i8* %174
  %176 = call i8 @fact.select.asm.i8(i1 %__v46_is_block_b, i8 %175, i8 0)
  %177 = or i8 %173, %176
  store i8 %177, i8* %171
  br label %178

; <label>:178:                                    ; preds = %170
  %179 = add i64 %__v52_j, 1
  br label %168

; <label>:180:                                    ; preds = %168
  br label %120
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
