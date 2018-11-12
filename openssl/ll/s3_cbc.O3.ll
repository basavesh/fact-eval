; ModuleID = './s3_cbc.O3.bc'
source_filename = "Module"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #0

declare void @_md_final_raw(i8*, i8*) local_unnamed_addr

declare void @SHA1_Transform(i8*, i8*) local_unnamed_addr

define i32 @__ssl3_cbc_digest_record(i8* %__v1_md_state, i8* nocapture %__v2_mac_out, i8* %__v3_header, i64 %__v46___v3_header_len, i8* %__v4_data, i64 %__v47___v4_data_len, i64 %__v5_data_plus_mac_size) local_unnamed_addr {
entry:
  %__v15_length = add i64 %__v47___v4_data_len, %__v46___v3_header_len
  %0 = add i64 %__v15_length, 51
  %1 = add i64 %__v5_data_plus_mac_size, %__v46___v3_header_len
  %__v18_mac_end_offset = add i64 %1, -20
  %__v19_c = and i64 %__v18_mac_end_offset, 63
  %__v20_index_a = lshr i64 %__v18_mac_end_offset, 6
  %2 = add i64 %1, -12
  %__v21_index_b = lshr i64 %2, 6
  %3 = icmp ugt i64 %0, 255
  br i1 %3, label %4, label %7

; <label>:4:                                      ; preds = %entry
  %__v17_num_blocks = lshr i64 %0, 6
  %5 = add nsw i64 %__v17_num_blocks, -2
  %6 = shl i64 %5, 6
  br label %7

; <label>:7:                                      ; preds = %entry, %4
  %__v22_num_starting_blocks.0 = phi i64 [ %5, %4 ], [ 0, %entry ]
  %__v23_k.0 = phi i64 [ %6, %4 ], [ 0, %entry ]
  %__v24_first_block6 = alloca [128 x i8], align 1
  %__v24_first_block6.sub = getelementptr inbounds [128 x i8], [128 x i8]* %__v24_first_block6, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* nonnull %__v24_first_block6.sub, i8 0, i64 128, i32 1, i1 false) #1
  %__v26_length_bytes7 = alloca [16 x i8], align 1
  %__v26_length_bytes7.sub = getelementptr inbounds [16 x i8], [16 x i8]* %__v26_length_bytes7, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* nonnull %__v26_length_bytes7.sub, i8 0, i64 16, i32 1, i1 false) #1
  %8 = getelementptr inbounds [16 x i8], [16 x i8]* %__v26_length_bytes7, i64 0, i64 4
  %9 = lshr i64 %__v18_mac_end_offset, 21
  %10 = trunc i64 %9 to i8
  store i8 %10, i8* %8, align 1
  %11 = getelementptr inbounds [16 x i8], [16 x i8]* %__v26_length_bytes7, i64 0, i64 5
  %12 = lshr i64 %__v18_mac_end_offset, 13
  %13 = trunc i64 %12 to i8
  store i8 %13, i8* %11, align 1
  %14 = getelementptr inbounds [16 x i8], [16 x i8]* %__v26_length_bytes7, i64 0, i64 6
  %15 = lshr i64 %__v18_mac_end_offset, 5
  %16 = trunc i64 %15 to i8
  store i8 %16, i8* %14, align 1
  %17 = getelementptr inbounds [16 x i8], [16 x i8]* %__v26_length_bytes7, i64 0, i64 7
  %__v18_mac_end_offset.tr = trunc i64 %__v18_mac_end_offset to i8
  %18 = shl i8 %__v18_mac_end_offset.tr, 3
  store i8 %18, i8* %17, align 1
  %19 = icmp eq i64 %__v23_k.0, 0
  br i1 %19, label %.lr.ph, label %20

; <label>:20:                                     ; preds = %7
  %21 = icmp ult i64 %__v46___v3_header_len, 65
  br i1 %21, label %.loopexit, label %43

.loopexit9:                                       ; preds = %.lr.ph16
  %22 = icmp ult i64 %__v22_num_starting_blocks.0, -3
  br i1 %22, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %7, %43, %.loopexit9
  %23 = add nsw i64 %__v22_num_starting_blocks.0, 3
  %24 = getelementptr i8, i8* %__v2_mac_out, i64 1
  %25 = getelementptr i8, i8* %__v2_mac_out, i64 2
  %26 = getelementptr i8, i8* %__v2_mac_out, i64 3
  %27 = getelementptr i8, i8* %__v2_mac_out, i64 4
  %28 = getelementptr i8, i8* %__v2_mac_out, i64 5
  %29 = getelementptr i8, i8* %__v2_mac_out, i64 6
  %30 = getelementptr i8, i8* %__v2_mac_out, i64 7
  %31 = getelementptr i8, i8* %__v2_mac_out, i64 8
  %32 = getelementptr i8, i8* %__v2_mac_out, i64 9
  %33 = getelementptr i8, i8* %__v2_mac_out, i64 10
  %34 = getelementptr i8, i8* %__v2_mac_out, i64 11
  %35 = getelementptr i8, i8* %__v2_mac_out, i64 12
  %36 = getelementptr i8, i8* %__v2_mac_out, i64 13
  %37 = getelementptr i8, i8* %__v2_mac_out, i64 14
  %38 = getelementptr i8, i8* %__v2_mac_out, i64 15
  %39 = getelementptr i8, i8* %__v2_mac_out, i64 16
  %40 = getelementptr i8, i8* %__v2_mac_out, i64 17
  %41 = getelementptr i8, i8* %__v2_mac_out, i64 18
  %42 = getelementptr i8, i8* %__v2_mac_out, i64 19
  br label %51

.loopexit:                                        ; preds = %56, %.loopexit9, %20
  %merge = phi i32 [ 0, %20 ], [ 1, %.loopexit9 ], [ 1, %56 ]
  ret i32 %merge

; <label>:43:                                     ; preds = %20
  %__v27_overhang = add i64 %__v46___v3_header_len, -64
  tail call void @SHA1_Transform(i8* %__v1_md_state, i8* %__v3_header)
  %44 = getelementptr i8, i8* %__v3_header, i64 64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %__v24_first_block6.sub, i8* %44, i64 %__v27_overhang, i32 1, i1 false) #1
  %__v28_cpylen = sub i64 128, %__v46___v3_header_len
  %45 = getelementptr [128 x i8], [128 x i8]* %__v24_first_block6, i64 0, i64 %__v27_overhang
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %45, i8* %__v4_data, i64 %__v28_cpylen, i32 1, i1 false) #1
  call void @SHA1_Transform(i8* %__v1_md_state, i8* nonnull %__v24_first_block6.sub)
  %46 = lshr exact i64 %__v23_k.0, 6
  %__v29_loopbound = add nsw i64 %46, -1
  %47 = icmp ugt i64 %__v29_loopbound, 1
  br i1 %47, label %.lr.ph16.preheader, label %.lr.ph

.lr.ph16.preheader:                               ; preds = %43
  br label %.lr.ph16

.lr.ph16:                                         ; preds = %.lr.ph16.preheader, %.lr.ph16
  %__v30_i15 = phi i64 [ %50, %.lr.ph16 ], [ 1, %.lr.ph16.preheader ]
  %48 = shl i64 %__v30_i15, 6
  %__v31_idx = sub i64 %48, %__v27_overhang
  %49 = getelementptr i8, i8* %__v4_data, i64 %__v31_idx
  call void @SHA1_Transform(i8* %__v1_md_state, i8* %49)
  %50 = add nuw i64 %__v30_i15, 1
  %exitcond18 = icmp eq i64 %50, %__v29_loopbound
  br i1 %exitcond18, label %.loopexit9, label %.lr.ph16

; <label>:51:                                     ; preds = %.lr.ph, %56
  %__v32_i14 = phi i64 [ %__v22_num_starting_blocks.0, %.lr.ph ], [ %197, %56 ]
  %__v23_k.113 = phi i64 [ %__v23_k.0, %.lr.ph ], [ %196, %56 ]
  %__v33_block8 = alloca [128 x i8], align 1
  %__v33_block8.sub = getelementptr inbounds [128 x i8], [128 x i8]* %__v33_block8, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* nonnull %__v33_block8.sub, i8 0, i64 128, i32 1, i1 false) #1
  %__v34_is_block_a = icmp eq i64 %__v32_i14, %__v20_index_a
  %__v35_is_block_b = icmp eq i64 %__v32_i14, %__v21_index_b
  %52 = xor i1 %__v34_is_block_a, true
  %53 = zext i1 %52 to i32
  br label %54

; <label>:54:                                     ; preds = %235, %51
  %__v36_j11 = phi i64 [ 0, %51 ], [ %238, %235 ]
  %__v23_k.210 = phi i64 [ %__v23_k.113, %51 ], [ %206, %235 ]
  %55 = icmp ult i64 %__v23_k.210, %__v46___v3_header_len
  br i1 %55, label %199, label %201

; <label>:56:                                     ; preds = %235
  call void @SHA1_Transform(i8* %__v1_md_state, i8* nonnull %__v33_block8.sub)
  call void @_md_final_raw(i8* %__v1_md_state, i8* nonnull %__v33_block8.sub)
  %57 = load i8, i8* %__v2_mac_out, align 1
  %58 = load i8, i8* %__v33_block8.sub, align 1
  %59 = zext i8 %58 to i32
  %60 = call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %__v35_is_block_b, i32 %59, i32 0) #1
  %61 = trunc i32 %60 to i8
  %62 = or i8 %57, %61
  store i8 %62, i8* %__v2_mac_out, align 1
  %63 = load i8, i8* %24, align 1
  %64 = getelementptr inbounds [128 x i8], [128 x i8]* %__v33_block8, i64 0, i64 1
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i32
  %67 = call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %__v35_is_block_b, i32 %66, i32 0) #1
  %68 = trunc i32 %67 to i8
  %69 = or i8 %63, %68
  store i8 %69, i8* %24, align 1
  %70 = load i8, i8* %25, align 1
  %71 = getelementptr inbounds [128 x i8], [128 x i8]* %__v33_block8, i64 0, i64 2
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i32
  %74 = call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %__v35_is_block_b, i32 %73, i32 0) #1
  %75 = trunc i32 %74 to i8
  %76 = or i8 %70, %75
  store i8 %76, i8* %25, align 1
  %77 = load i8, i8* %26, align 1
  %78 = getelementptr inbounds [128 x i8], [128 x i8]* %__v33_block8, i64 0, i64 3
  %79 = load i8, i8* %78, align 1
  %80 = zext i8 %79 to i32
  %81 = call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %__v35_is_block_b, i32 %80, i32 0) #1
  %82 = trunc i32 %81 to i8
  %83 = or i8 %77, %82
  store i8 %83, i8* %26, align 1
  %84 = load i8, i8* %27, align 1
  %85 = getelementptr inbounds [128 x i8], [128 x i8]* %__v33_block8, i64 0, i64 4
  %86 = load i8, i8* %85, align 1
  %87 = zext i8 %86 to i32
  %88 = call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %__v35_is_block_b, i32 %87, i32 0) #1
  %89 = trunc i32 %88 to i8
  %90 = or i8 %84, %89
  store i8 %90, i8* %27, align 1
  %91 = load i8, i8* %28, align 1
  %92 = getelementptr inbounds [128 x i8], [128 x i8]* %__v33_block8, i64 0, i64 5
  %93 = load i8, i8* %92, align 1
  %94 = zext i8 %93 to i32
  %95 = call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %__v35_is_block_b, i32 %94, i32 0) #1
  %96 = trunc i32 %95 to i8
  %97 = or i8 %91, %96
  store i8 %97, i8* %28, align 1
  %98 = load i8, i8* %29, align 1
  %99 = getelementptr inbounds [128 x i8], [128 x i8]* %__v33_block8, i64 0, i64 6
  %100 = load i8, i8* %99, align 1
  %101 = zext i8 %100 to i32
  %102 = call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %__v35_is_block_b, i32 %101, i32 0) #1
  %103 = trunc i32 %102 to i8
  %104 = or i8 %98, %103
  store i8 %104, i8* %29, align 1
  %105 = load i8, i8* %30, align 1
  %106 = getelementptr inbounds [128 x i8], [128 x i8]* %__v33_block8, i64 0, i64 7
  %107 = load i8, i8* %106, align 1
  %108 = zext i8 %107 to i32
  %109 = call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %__v35_is_block_b, i32 %108, i32 0) #1
  %110 = trunc i32 %109 to i8
  %111 = or i8 %105, %110
  store i8 %111, i8* %30, align 1
  %112 = load i8, i8* %31, align 1
  %113 = getelementptr inbounds [128 x i8], [128 x i8]* %__v33_block8, i64 0, i64 8
  %114 = load i8, i8* %113, align 1
  %115 = zext i8 %114 to i32
  %116 = call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %__v35_is_block_b, i32 %115, i32 0) #1
  %117 = trunc i32 %116 to i8
  %118 = or i8 %112, %117
  store i8 %118, i8* %31, align 1
  %119 = load i8, i8* %32, align 1
  %120 = getelementptr inbounds [128 x i8], [128 x i8]* %__v33_block8, i64 0, i64 9
  %121 = load i8, i8* %120, align 1
  %122 = zext i8 %121 to i32
  %123 = call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %__v35_is_block_b, i32 %122, i32 0) #1
  %124 = trunc i32 %123 to i8
  %125 = or i8 %119, %124
  store i8 %125, i8* %32, align 1
  %126 = load i8, i8* %33, align 1
  %127 = getelementptr inbounds [128 x i8], [128 x i8]* %__v33_block8, i64 0, i64 10
  %128 = load i8, i8* %127, align 1
  %129 = zext i8 %128 to i32
  %130 = call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %__v35_is_block_b, i32 %129, i32 0) #1
  %131 = trunc i32 %130 to i8
  %132 = or i8 %126, %131
  store i8 %132, i8* %33, align 1
  %133 = load i8, i8* %34, align 1
  %134 = getelementptr inbounds [128 x i8], [128 x i8]* %__v33_block8, i64 0, i64 11
  %135 = load i8, i8* %134, align 1
  %136 = zext i8 %135 to i32
  %137 = call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %__v35_is_block_b, i32 %136, i32 0) #1
  %138 = trunc i32 %137 to i8
  %139 = or i8 %133, %138
  store i8 %139, i8* %34, align 1
  %140 = load i8, i8* %35, align 1
  %141 = getelementptr inbounds [128 x i8], [128 x i8]* %__v33_block8, i64 0, i64 12
  %142 = load i8, i8* %141, align 1
  %143 = zext i8 %142 to i32
  %144 = call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %__v35_is_block_b, i32 %143, i32 0) #1
  %145 = trunc i32 %144 to i8
  %146 = or i8 %140, %145
  store i8 %146, i8* %35, align 1
  %147 = load i8, i8* %36, align 1
  %148 = getelementptr inbounds [128 x i8], [128 x i8]* %__v33_block8, i64 0, i64 13
  %149 = load i8, i8* %148, align 1
  %150 = zext i8 %149 to i32
  %151 = call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %__v35_is_block_b, i32 %150, i32 0) #1
  %152 = trunc i32 %151 to i8
  %153 = or i8 %147, %152
  store i8 %153, i8* %36, align 1
  %154 = load i8, i8* %37, align 1
  %155 = getelementptr inbounds [128 x i8], [128 x i8]* %__v33_block8, i64 0, i64 14
  %156 = load i8, i8* %155, align 1
  %157 = zext i8 %156 to i32
  %158 = call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %__v35_is_block_b, i32 %157, i32 0) #1
  %159 = trunc i32 %158 to i8
  %160 = or i8 %154, %159
  store i8 %160, i8* %37, align 1
  %161 = load i8, i8* %38, align 1
  %162 = getelementptr inbounds [128 x i8], [128 x i8]* %__v33_block8, i64 0, i64 15
  %163 = load i8, i8* %162, align 1
  %164 = zext i8 %163 to i32
  %165 = call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %__v35_is_block_b, i32 %164, i32 0) #1
  %166 = trunc i32 %165 to i8
  %167 = or i8 %161, %166
  store i8 %167, i8* %38, align 1
  %168 = load i8, i8* %39, align 1
  %169 = getelementptr inbounds [128 x i8], [128 x i8]* %__v33_block8, i64 0, i64 16
  %170 = load i8, i8* %169, align 1
  %171 = zext i8 %170 to i32
  %172 = call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %__v35_is_block_b, i32 %171, i32 0) #1
  %173 = trunc i32 %172 to i8
  %174 = or i8 %168, %173
  store i8 %174, i8* %39, align 1
  %175 = load i8, i8* %40, align 1
  %176 = getelementptr inbounds [128 x i8], [128 x i8]* %__v33_block8, i64 0, i64 17
  %177 = load i8, i8* %176, align 1
  %178 = zext i8 %177 to i32
  %179 = call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %__v35_is_block_b, i32 %178, i32 0) #1
  %180 = trunc i32 %179 to i8
  %181 = or i8 %175, %180
  store i8 %181, i8* %40, align 1
  %182 = load i8, i8* %41, align 1
  %183 = getelementptr inbounds [128 x i8], [128 x i8]* %__v33_block8, i64 0, i64 18
  %184 = load i8, i8* %183, align 1
  %185 = zext i8 %184 to i32
  %186 = call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %__v35_is_block_b, i32 %185, i32 0) #1
  %187 = trunc i32 %186 to i8
  %188 = or i8 %182, %187
  store i8 %188, i8* %41, align 1
  %189 = load i8, i8* %42, align 1
  %190 = getelementptr inbounds [128 x i8], [128 x i8]* %__v33_block8, i64 0, i64 19
  %191 = load i8, i8* %190, align 1
  %192 = zext i8 %191 to i32
  %193 = call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %__v35_is_block_b, i32 %192, i32 0) #1
  %194 = trunc i32 %193 to i8
  %195 = or i8 %189, %194
  store i8 %195, i8* %42, align 1
  %196 = add i64 %__v23_k.113, 64
  %197 = add nuw nsw i64 %__v32_i14, 1
  %198 = icmp ult i64 %197, %23
  br i1 %198, label %51, label %.loopexit

; <label>:199:                                    ; preds = %54
  %200 = getelementptr i8, i8* %__v3_header, i64 %__v23_k.210
  br label %.sink.split

; <label>:201:                                    ; preds = %54
  %202 = icmp ult i64 %__v23_k.210, %__v15_length
  br i1 %202, label %227, label %204

.sink.split:                                      ; preds = %199, %227
  %.sink = phi i8* [ %228, %227 ], [ %200, %199 ]
  %203 = load i8, i8* %.sink, align 1
  br label %204

; <label>:204:                                    ; preds = %.sink.split, %201
  %205 = phi i8 [ 0, %201 ], [ %203, %.sink.split ]
  %206 = add i64 %__v23_k.210, 1
  %207 = icmp uge i64 %__v36_j11, %__v19_c
  %208 = zext i1 %207 to i32
  %209 = call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %__v34_is_block_a, i32 %208, i32 0) #1
  %210 = and i32 %209, 1
  %211 = icmp ne i32 %210, 0
  %212 = icmp ugt i64 %__v36_j11, %__v19_c
  %213 = zext i1 %212 to i32
  %214 = call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %__v34_is_block_a, i32 %213, i32 0) #1
  %215 = and i32 %214, 1
  %216 = icmp ne i32 %215, 0
  %217 = zext i8 %205 to i32
  %218 = call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %211, i32 128, i32 %217) #1
  %219 = and i32 %218, 255
  %220 = call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %216, i32 0, i32 %219) #1
  %221 = call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %__v35_is_block_b, i32 %53, i32 0) #1
  %222 = and i32 %221, 1
  %223 = icmp ne i32 %222, 0
  %224 = and i32 %220, 255
  %225 = call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %223, i32 0, i32 %224) #1
  %226 = icmp ugt i64 %__v36_j11, 55
  br i1 %226, label %229, label %235

; <label>:227:                                    ; preds = %201
  %__v54_lexpr = sub i64 %__v23_k.210, %__v46___v3_header_len
  %228 = getelementptr i8, i8* %__v4_data, i64 %__v54_lexpr
  br label %.sink.split

; <label>:229:                                    ; preds = %204
  %__v55_lexpr = add nsw i64 %__v36_j11, -56
  %230 = getelementptr [16 x i8], [16 x i8]* %__v26_length_bytes7, i64 0, i64 %__v55_lexpr
  %231 = load i8, i8* %230, align 1
  %232 = zext i8 %231 to i32
  %233 = and i32 %225, 255
  %234 = call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %__v35_is_block_b, i32 %232, i32 %233) #1
  br label %235

; <label>:235:                                    ; preds = %204, %229
  %.in = phi i32 [ %225, %204 ], [ %234, %229 ]
  %236 = trunc i32 %.in to i8
  %237 = getelementptr [128 x i8], [128 x i8]* %__v33_block8, i64 0, i64 %__v36_j11
  store i8 %236, i8* %237, align 1
  %238 = add nuw nsw i64 %__v36_j11, 1
  %exitcond = icmp eq i64 %238, 64
  br i1 %exitcond, label %56, label %54
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #0

attributes #0 = { argmemonly nounwind }
attributes #1 = { nounwind }
