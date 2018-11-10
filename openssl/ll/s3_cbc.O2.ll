; ModuleID = './s3_cbc.O2.bc'
source_filename = "Module"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #0

declare void @_md_final_raw(i8*, i8*) local_unnamed_addr

declare void @SHA1_Transform(i8*, i8*) local_unnamed_addr

define i32 @__ssl3_cbc_digest_record(i8* %__v1_md_state, i8* nocapture %__v2_mac_out, i8* nocapture readnone %__v3_hmac_pad, i8* %__v4_header, i64 %__v47___v4_header_len, i8* %__v5_data, i64 %__v48___v5_data_len, i64 %__v6_data_plus_mac_size) local_unnamed_addr {
entry:
  %__v16_length = add i64 %__v48___v5_data_len, %__v47___v4_header_len
  %0 = add i64 %__v16_length, 51
  %1 = add i64 %__v6_data_plus_mac_size, %__v47___v4_header_len
  %__v19_mac_end_offset = add i64 %1, -20
  %__v20_c = and i64 %__v19_mac_end_offset, 63
  %__v21_index_a = lshr i64 %__v19_mac_end_offset, 6
  %2 = add i64 %1, -12
  %__v22_index_b = lshr i64 %2, 6
  %3 = icmp ugt i64 %0, 255
  br i1 %3, label %4, label %7

; <label>:4:                                      ; preds = %entry
  %__v18_num_blocks = lshr i64 %0, 6
  %5 = add nsw i64 %__v18_num_blocks, -2
  %6 = shl i64 %5, 6
  br label %7

; <label>:7:                                      ; preds = %entry, %4
  %__v23_num_starting_blocks.0 = phi i64 [ %5, %4 ], [ 0, %entry ]
  %__v24_k.0 = phi i64 [ %6, %4 ], [ 0, %entry ]
  %__v25_first_block6 = alloca [128 x i8], align 1
  %__v25_first_block6.sub = getelementptr inbounds [128 x i8], [128 x i8]* %__v25_first_block6, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* nonnull %__v25_first_block6.sub, i8 0, i64 128, i32 1, i1 false) #1
  %__v27_length_bytes7 = alloca [16 x i8], align 1
  %__v27_length_bytes7.sub = getelementptr inbounds [16 x i8], [16 x i8]* %__v27_length_bytes7, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* nonnull %__v27_length_bytes7.sub, i8 0, i64 16, i32 1, i1 false) #1
  %8 = getelementptr inbounds [16 x i8], [16 x i8]* %__v27_length_bytes7, i64 0, i64 4
  %9 = lshr i64 %__v19_mac_end_offset, 21
  %10 = trunc i64 %9 to i8
  store i8 %10, i8* %8, align 1
  %11 = getelementptr inbounds [16 x i8], [16 x i8]* %__v27_length_bytes7, i64 0, i64 5
  %12 = lshr i64 %__v19_mac_end_offset, 13
  %13 = trunc i64 %12 to i8
  store i8 %13, i8* %11, align 1
  %14 = getelementptr inbounds [16 x i8], [16 x i8]* %__v27_length_bytes7, i64 0, i64 6
  %15 = lshr i64 %__v19_mac_end_offset, 5
  %16 = trunc i64 %15 to i8
  store i8 %16, i8* %14, align 1
  %17 = getelementptr inbounds [16 x i8], [16 x i8]* %__v27_length_bytes7, i64 0, i64 7
  %__v19_mac_end_offset.tr = trunc i64 %__v19_mac_end_offset to i8
  %18 = shl i8 %__v19_mac_end_offset.tr, 3
  store i8 %18, i8* %17, align 1
  %19 = icmp eq i64 %__v24_k.0, 0
  br i1 %19, label %.lr.ph, label %20

; <label>:20:                                     ; preds = %7
  %21 = icmp ult i64 %__v47___v4_header_len, 65
  br i1 %21, label %.loopexit, label %24

.loopexit9:                                       ; preds = %.lr.ph16
  %22 = icmp ult i64 %__v23_num_starting_blocks.0, -3
  br i1 %22, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %7, %24, %.loopexit9
  %23 = add nsw i64 %__v23_num_starting_blocks.0, 3
  br label %32

.loopexit:                                        ; preds = %88, %.loopexit9, %20
  %merge = phi i32 [ 0, %20 ], [ 1, %.loopexit9 ], [ 1, %88 ]
  ret i32 %merge

; <label>:24:                                     ; preds = %20
  %__v28_overhang = add i64 %__v47___v4_header_len, -64
  tail call void @SHA1_Transform(i8* %__v1_md_state, i8* %__v4_header)
  %25 = getelementptr i8, i8* %__v4_header, i64 64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %__v25_first_block6.sub, i8* %25, i64 %__v28_overhang, i32 1, i1 false) #1
  %__v29_cpylen = sub i64 128, %__v47___v4_header_len
  %26 = getelementptr [128 x i8], [128 x i8]* %__v25_first_block6, i64 0, i64 %__v28_overhang
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %__v5_data, i64 %__v29_cpylen, i32 1, i1 false) #1
  call void @SHA1_Transform(i8* %__v1_md_state, i8* nonnull %__v25_first_block6.sub)
  %27 = lshr exact i64 %__v24_k.0, 6
  %__v30_loopbound = add nsw i64 %27, -1
  %28 = icmp ugt i64 %__v30_loopbound, 1
  br i1 %28, label %.lr.ph16.preheader, label %.lr.ph

.lr.ph16.preheader:                               ; preds = %24
  br label %.lr.ph16

.lr.ph16:                                         ; preds = %.lr.ph16.preheader, %.lr.ph16
  %__v31_i15 = phi i64 [ %31, %.lr.ph16 ], [ 1, %.lr.ph16.preheader ]
  %29 = shl i64 %__v31_i15, 6
  %__v32_idx = sub i64 %29, %__v28_overhang
  %30 = getelementptr i8, i8* %__v5_data, i64 %__v32_idx
  call void @SHA1_Transform(i8* %__v1_md_state, i8* %30)
  %31 = add nuw i64 %__v31_i15, 1
  %exitcond18 = icmp eq i64 %31, %__v30_loopbound
  br i1 %exitcond18, label %.loopexit9, label %.lr.ph16

; <label>:32:                                     ; preds = %.lr.ph, %88
  %__v33_i14 = phi i64 [ %__v23_num_starting_blocks.0, %.lr.ph ], [ %90, %88 ]
  %__v24_k.113 = phi i64 [ %__v24_k.0, %.lr.ph ], [ %89, %88 ]
  %__v34_block8 = alloca [128 x i8], align 1
  %__v34_block8.sub = getelementptr inbounds [128 x i8], [128 x i8]* %__v34_block8, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* nonnull %__v34_block8.sub, i8 0, i64 128, i32 1, i1 false) #1
  %__v35_is_block_a = icmp eq i64 %__v33_i14, %__v21_index_a
  %__v36_is_block_b = icmp eq i64 %__v33_i14, %__v22_index_b
  %33 = xor i1 %__v35_is_block_a, true
  %34 = zext i1 %33 to i32
  br label %35

; <label>:35:                                     ; preds = %74, %32
  %__v37_j11 = phi i64 [ 0, %32 ], [ %77, %74 ]
  %__v24_k.210 = phi i64 [ %__v24_k.113, %32 ], [ %45, %74 ]
  %36 = icmp ult i64 %__v24_k.210, %__v47___v4_header_len
  br i1 %36, label %38, label %40

; <label>:37:                                     ; preds = %74
  call void @SHA1_Transform(i8* %__v1_md_state, i8* nonnull %__v34_block8.sub)
  call void @_md_final_raw(i8* %__v1_md_state, i8* nonnull %__v34_block8.sub)
  br label %78

; <label>:38:                                     ; preds = %35
  %39 = getelementptr i8, i8* %__v4_header, i64 %__v24_k.210
  br label %.sink.split

; <label>:40:                                     ; preds = %35
  %41 = icmp ult i64 %__v24_k.210, %__v16_length
  br i1 %41, label %66, label %43

.sink.split:                                      ; preds = %38, %66
  %.sink = phi i8* [ %67, %66 ], [ %39, %38 ]
  %42 = load i8, i8* %.sink, align 1
  br label %43

; <label>:43:                                     ; preds = %.sink.split, %40
  %44 = phi i8 [ 0, %40 ], [ %42, %.sink.split ]
  %45 = add i64 %__v24_k.210, 1
  %46 = icmp uge i64 %__v37_j11, %__v20_c
  %47 = zext i1 %46 to i32
  %48 = call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %__v35_is_block_a, i32 %47, i32 0) #1
  %49 = and i32 %48, 1
  %50 = icmp ne i32 %49, 0
  %51 = icmp ugt i64 %__v37_j11, %__v20_c
  %52 = zext i1 %51 to i32
  %53 = call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %__v35_is_block_a, i32 %52, i32 0) #1
  %54 = and i32 %53, 1
  %55 = icmp ne i32 %54, 0
  %56 = zext i8 %44 to i32
  %57 = call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %50, i32 128, i32 %56) #1
  %58 = and i32 %57, 255
  %59 = call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %55, i32 0, i32 %58) #1
  %60 = call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %__v36_is_block_b, i32 %34, i32 0) #1
  %61 = and i32 %60, 1
  %62 = icmp ne i32 %61, 0
  %63 = and i32 %59, 255
  %64 = call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %62, i32 0, i32 %63) #1
  %65 = icmp ugt i64 %__v37_j11, 55
  br i1 %65, label %68, label %74

; <label>:66:                                     ; preds = %40
  %__v55_lexpr = sub i64 %__v24_k.210, %__v47___v4_header_len
  %67 = getelementptr i8, i8* %__v5_data, i64 %__v55_lexpr
  br label %.sink.split

; <label>:68:                                     ; preds = %43
  %__v56_lexpr = add nsw i64 %__v37_j11, -56
  %69 = getelementptr [16 x i8], [16 x i8]* %__v27_length_bytes7, i64 0, i64 %__v56_lexpr
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i32
  %72 = and i32 %64, 255
  %73 = call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %__v36_is_block_b, i32 %71, i32 %72) #1
  br label %74

; <label>:74:                                     ; preds = %43, %68
  %.in = phi i32 [ %64, %43 ], [ %73, %68 ]
  %75 = trunc i32 %.in to i8
  %76 = getelementptr [128 x i8], [128 x i8]* %__v34_block8, i64 0, i64 %__v37_j11
  store i8 %75, i8* %76, align 1
  %77 = add nuw nsw i64 %__v37_j11, 1
  %exitcond = icmp eq i64 %77, 64
  br i1 %exitcond, label %37, label %35

; <label>:78:                                     ; preds = %78, %37
  %__v42_j12 = phi i64 [ 0, %37 ], [ %87, %78 ]
  %79 = getelementptr i8, i8* %__v2_mac_out, i64 %__v42_j12
  %80 = load i8, i8* %79, align 1
  %81 = getelementptr [128 x i8], [128 x i8]* %__v34_block8, i64 0, i64 %__v42_j12
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i32
  %84 = call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %__v36_is_block_b, i32 %83, i32 0) #1
  %85 = trunc i32 %84 to i8
  %86 = or i8 %80, %85
  store i8 %86, i8* %79, align 1
  %87 = add nuw nsw i64 %__v42_j12, 1
  %exitcond17 = icmp eq i64 %87, 20
  br i1 %exitcond17, label %88, label %78

; <label>:88:                                     ; preds = %78
  %89 = add i64 %__v24_k.113, 64
  %90 = add nuw nsw i64 %__v33_i14, 1
  %91 = icmp ult i64 %90, %23
  br i1 %91, label %32, label %.loopexit
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #0

attributes #0 = { argmemonly nounwind }
attributes #1 = { nounwind }
