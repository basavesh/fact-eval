; ModuleID = './20110823_fast.O3.bc'
source_filename = "Module"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%SHA_CTX = type { [5 x i32], i32, i32, [64 x i8], i32 }
%AES_KEY = type { [60 x i32], i32 }
%EVP_AES_HMAC_SHA1 = type { %AES_KEY, %SHA_CTX, %SHA_CTX, %SHA_CTX, i64, [16 x i8] }

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #0

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #0

declare void @sha1_block_data_order(%SHA_CTX*, i8*, i32) local_unnamed_addr

define internal fastcc void @SHA1_Final_secret(i8* nocapture %__v79_out, %SHA_CTX* %__v80_ctx, i32 %__v81_ctx_num) unnamed_addr {
entry:
  %0 = zext i32 %__v81_ctx_num to i64
  %__m23 = icmp ult i32 %__v81_ctx_num, 56
  %1 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %__v80_ctx, i64 0, i32 1
  %2 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %__v80_ctx, i64 0, i32 2
  br label %3

; <label>:3:                                      ; preds = %138, %entry
  %__v83_i4 = phi i64 [ 0, %entry ], [ %139, %138 ]
  %__m25 = icmp eq i64 %__v83_i4, %0
  %4 = getelementptr %SHA_CTX, %SHA_CTX* %__v80_ctx, i64 0, i32 3, i64 %__v83_i4
  %5 = load i8, i8* %4, align 1
  %6 = zext i8 %5 to i32
  %7 = tail call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m25, i32 128, i32 %6) #1
  %8 = trunc i32 %7 to i8
  store i8 %8, i8* %4, align 1
  %__m27 = icmp ugt i64 %__v83_i4, %0
  %9 = and i32 %7, 255
  %10 = tail call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m27, i32 0, i32 %9) #1
  %11 = trunc i32 %10 to i8
  store i8 %11, i8* %4, align 1
  %12 = icmp ugt i64 %__v83_i4, 59
  br i1 %12, label %126, label %135

; <label>:13:                                     ; preds = %138
  %14 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %__v80_ctx, i64 0, i32 3, i64 0
  tail call void @sha1_block_data_order(%SHA_CTX* nonnull %__v80_ctx, i8* nonnull %14, i32 1)
  tail call void @llvm.memset.p0i8.i64(i8* nonnull %14, i8 0, i64 56, i32 1, i1 false) #1
  %15 = getelementptr %SHA_CTX, %SHA_CTX* %__v80_ctx, i64 0, i32 3, i64 56
  %16 = load i32, i32* %2, align 4
  %17 = lshr i32 %16, 24
  %18 = trunc i32 %17 to i8
  store i8 %18, i8* %15, align 1
  %19 = getelementptr %SHA_CTX, %SHA_CTX* %__v80_ctx, i64 0, i32 3, i64 57
  %20 = lshr i32 %16, 16
  %21 = trunc i32 %20 to i8
  store i8 %21, i8* %19, align 1
  %22 = getelementptr %SHA_CTX, %SHA_CTX* %__v80_ctx, i64 0, i32 3, i64 58
  %23 = lshr i32 %16, 8
  %24 = trunc i32 %23 to i8
  store i8 %24, i8* %22, align 1
  %25 = getelementptr %SHA_CTX, %SHA_CTX* %__v80_ctx, i64 0, i32 3, i64 59
  %26 = trunc i32 %16 to i8
  store i8 %26, i8* %25, align 1
  %27 = getelementptr %SHA_CTX, %SHA_CTX* %__v80_ctx, i64 0, i32 3, i64 60
  %28 = load i32, i32* %1, align 4
  %29 = lshr i32 %28, 24
  %30 = trunc i32 %29 to i8
  store i8 %30, i8* %27, align 1
  %31 = getelementptr %SHA_CTX, %SHA_CTX* %__v80_ctx, i64 0, i32 3, i64 61
  %32 = lshr i32 %28, 16
  %33 = trunc i32 %32 to i8
  store i8 %33, i8* %31, align 1
  %34 = getelementptr %SHA_CTX, %SHA_CTX* %__v80_ctx, i64 0, i32 3, i64 62
  %35 = lshr i32 %28, 8
  %36 = trunc i32 %35 to i8
  store i8 %36, i8* %34, align 1
  %37 = getelementptr %SHA_CTX, %SHA_CTX* %__v80_ctx, i64 0, i32 3, i64 63
  %38 = trunc i32 %28 to i8
  store i8 %38, i8* %37, align 1
  %__v86_h1 = alloca [5 x i32], align 4
  %39 = bitcast [5 x i32]* %__v86_h1 to i8*
  %40 = bitcast %SHA_CTX* %__v80_ctx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %39, i8* %40, i64 20, i32 4, i1 false) #1
  tail call void @sha1_block_data_order(%SHA_CTX* nonnull %__v80_ctx, i8* nonnull %14, i32 1)
  %41 = getelementptr %SHA_CTX, %SHA_CTX* %__v80_ctx, i64 0, i32 0, i64 0
  %42 = getelementptr inbounds [5 x i32], [5 x i32]* %__v86_h1, i64 0, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %41, align 4
  %45 = tail call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m23, i32 %43, i32 %44) #1
  store i32 %45, i32* %41, align 4
  %46 = getelementptr %SHA_CTX, %SHA_CTX* %__v80_ctx, i64 0, i32 0, i64 1
  %47 = getelementptr inbounds [5 x i32], [5 x i32]* %__v86_h1, i64 0, i64 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %46, align 4
  %50 = tail call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m23, i32 %48, i32 %49) #1
  store i32 %50, i32* %46, align 4
  %51 = getelementptr %SHA_CTX, %SHA_CTX* %__v80_ctx, i64 0, i32 0, i64 2
  %52 = getelementptr inbounds [5 x i32], [5 x i32]* %__v86_h1, i64 0, i64 2
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %51, align 4
  %55 = tail call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m23, i32 %53, i32 %54) #1
  store i32 %55, i32* %51, align 4
  %56 = getelementptr %SHA_CTX, %SHA_CTX* %__v80_ctx, i64 0, i32 0, i64 3
  %57 = getelementptr inbounds [5 x i32], [5 x i32]* %__v86_h1, i64 0, i64 3
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %56, align 4
  %60 = tail call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m23, i32 %58, i32 %59) #1
  store i32 %60, i32* %56, align 4
  %61 = getelementptr %SHA_CTX, %SHA_CTX* %__v80_ctx, i64 0, i32 0, i64 4
  %62 = getelementptr inbounds [5 x i32], [5 x i32]* %__v86_h1, i64 0, i64 4
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %61, align 4
  %65 = tail call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m23, i32 %63, i32 %64) #1
  store i32 %65, i32* %61, align 4
  %66 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %__v80_ctx, i64 0, i32 4
  store i32 0, i32* %66, align 4
  tail call void @llvm.memset.p0i8.i64(i8* nonnull %14, i8 0, i64 64, i32 1, i1 true) #1
  %67 = load i32, i32* %41, align 4
  %68 = lshr i32 %67, 24
  %69 = trunc i32 %68 to i8
  store i8 %69, i8* %__v79_out, align 1
  %70 = getelementptr i8, i8* %__v79_out, i64 1
  %71 = lshr i32 %67, 16
  %72 = trunc i32 %71 to i8
  store i8 %72, i8* %70, align 1
  %73 = getelementptr i8, i8* %__v79_out, i64 2
  %74 = lshr i32 %67, 8
  %75 = trunc i32 %74 to i8
  store i8 %75, i8* %73, align 1
  %76 = getelementptr i8, i8* %__v79_out, i64 3
  %77 = trunc i32 %67 to i8
  store i8 %77, i8* %76, align 1
  %78 = getelementptr i8, i8* %__v79_out, i64 4
  %79 = load i32, i32* %46, align 4
  %80 = lshr i32 %79, 24
  %81 = trunc i32 %80 to i8
  store i8 %81, i8* %78, align 1
  %82 = getelementptr i8, i8* %__v79_out, i64 5
  %83 = lshr i32 %79, 16
  %84 = trunc i32 %83 to i8
  store i8 %84, i8* %82, align 1
  %85 = getelementptr i8, i8* %__v79_out, i64 6
  %86 = lshr i32 %79, 8
  %87 = trunc i32 %86 to i8
  store i8 %87, i8* %85, align 1
  %88 = getelementptr i8, i8* %__v79_out, i64 7
  %89 = trunc i32 %79 to i8
  store i8 %89, i8* %88, align 1
  %90 = getelementptr i8, i8* %__v79_out, i64 8
  %91 = load i32, i32* %51, align 4
  %92 = lshr i32 %91, 24
  %93 = trunc i32 %92 to i8
  store i8 %93, i8* %90, align 1
  %94 = getelementptr i8, i8* %__v79_out, i64 9
  %95 = lshr i32 %91, 16
  %96 = trunc i32 %95 to i8
  store i8 %96, i8* %94, align 1
  %97 = getelementptr i8, i8* %__v79_out, i64 10
  %98 = lshr i32 %91, 8
  %99 = trunc i32 %98 to i8
  store i8 %99, i8* %97, align 1
  %100 = getelementptr i8, i8* %__v79_out, i64 11
  %101 = trunc i32 %91 to i8
  store i8 %101, i8* %100, align 1
  %102 = getelementptr i8, i8* %__v79_out, i64 12
  %103 = load i32, i32* %56, align 4
  %104 = lshr i32 %103, 24
  %105 = trunc i32 %104 to i8
  store i8 %105, i8* %102, align 1
  %106 = getelementptr i8, i8* %__v79_out, i64 13
  %107 = lshr i32 %103, 16
  %108 = trunc i32 %107 to i8
  store i8 %108, i8* %106, align 1
  %109 = getelementptr i8, i8* %__v79_out, i64 14
  %110 = lshr i32 %103, 8
  %111 = trunc i32 %110 to i8
  store i8 %111, i8* %109, align 1
  %112 = getelementptr i8, i8* %__v79_out, i64 15
  %113 = trunc i32 %103 to i8
  store i8 %113, i8* %112, align 1
  %114 = getelementptr i8, i8* %__v79_out, i64 16
  %115 = load i32, i32* %61, align 4
  %116 = lshr i32 %115, 24
  %117 = trunc i32 %116 to i8
  store i8 %117, i8* %114, align 1
  %118 = getelementptr i8, i8* %__v79_out, i64 17
  %119 = lshr i32 %115, 16
  %120 = trunc i32 %119 to i8
  store i8 %120, i8* %118, align 1
  %121 = getelementptr i8, i8* %__v79_out, i64 18
  %122 = lshr i32 %115, 8
  %123 = trunc i32 %122 to i8
  store i8 %123, i8* %121, align 1
  %124 = getelementptr i8, i8* %__v79_out, i64 19
  %125 = trunc i32 %115 to i8
  store i8 %125, i8* %124, align 1
  ret void

; <label>:126:                                    ; preds = %3
  %127 = load i32, i32* %1, align 4
  %__v83_i.tr2 = trunc i64 %__v83_i4 to i32
  %128 = shl i32 %__v83_i.tr2, 3
  %129 = sub i32 504, %128
  %130 = lshr i32 %127, %129
  %131 = and i1 %__m23, %__m27
  %132 = and i32 %130, 255
  %133 = and i32 %10, 255
  %134 = tail call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %131, i32 %132, i32 %133) #1
  br label %.sink.split

; <label>:135:                                    ; preds = %3
  %136 = icmp ugt i64 %__v83_i4, 55
  br i1 %136, label %140, label %138

.sink.split:                                      ; preds = %126, %140
  %.sink5 = phi i32 [ %148, %140 ], [ %134, %126 ]
  %137 = trunc i32 %.sink5 to i8
  store i8 %137, i8* %4, align 1
  br label %138

; <label>:138:                                    ; preds = %.sink.split, %135
  %139 = add nuw nsw i64 %__v83_i4, 1
  %exitcond = icmp eq i64 %139, 64
  br i1 %exitcond, label %13, label %3

; <label>:140:                                    ; preds = %135
  %141 = load i32, i32* %2, align 4
  %__v83_i.tr = trunc i64 %__v83_i4 to i32
  %142 = shl i32 %__v83_i.tr, 3
  %143 = sub i32 472, %142
  %144 = lshr i32 %141, %143
  %145 = and i1 %__m23, %__m27
  %146 = and i32 %144, 255
  %147 = and i32 %10, 255
  %148 = tail call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %145, i32 %146, i32 %147) #1
  br label %.sink.split
}

define internal fastcc void @SHA1_Update_secret(%SHA_CTX* %__v35_ctx, i32* nocapture %__v36_ctx_num, i8* nocapture readonly %__v37__in, i64 %__v104___v37__in_len, i32 %__v38_slen) unnamed_addr {
entry:
  %0 = zext i32 %__v38_slen to i64
  %__v41_l = shl nuw nsw i64 %0, 3
  %1 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %__v35_ctx, i64 0, i32 2
  %2 = load i32, i32* %1, align 4
  %3 = zext i32 %2 to i64
  %4 = shl nuw i64 %3, 32
  %5 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %__v35_ctx, i64 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = zext i32 %6 to i64
  %8 = or i64 %4, %7
  %__v42_N = add i64 %8, %__v41_l
  %9 = lshr i64 %__v42_N, 32
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* %1, align 4
  %11 = trunc i64 %__v42_N to i32
  store i32 %11, i32* %5, align 4
  %12 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %__v35_ctx, i64 0, i32 4
  %__v43_num = load i32, i32* %12, align 4
  %13 = icmp eq i64 %__v104___v37__in_len, 0
  br i1 %13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %entry
  %14 = zext i32 %__v43_num to i64
  %15 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %__v35_ctx, i64 0, i32 3, i64 0
  %16 = bitcast %SHA_CTX* %__v35_ctx to i8*
  %17 = getelementptr %SHA_CTX, %SHA_CTX* %__v35_ctx, i64 0, i32 0, i64 0
  %18 = getelementptr %SHA_CTX, %SHA_CTX* %__v35_ctx, i64 0, i32 0, i64 1
  %19 = getelementptr %SHA_CTX, %SHA_CTX* %__v35_ctx, i64 0, i32 0, i64 2
  %20 = getelementptr %SHA_CTX, %SHA_CTX* %__v35_ctx, i64 0, i32 0, i64 3
  %21 = getelementptr %SHA_CTX, %SHA_CTX* %__v35_ctx, i64 0, i32 0, i64 4
  br label %22

; <label>:22:                                     ; preds = %.loopexit, %.lr.ph
  %__v44_i3 = phi i64 [ 0, %.lr.ph ], [ %59, %.loopexit ]
  %23 = add i64 %__v44_i3, %14
  %__v45_j = and i64 %23, 63
  %__m9 = icmp ult i64 %__v44_i3, %0
  %24 = getelementptr %SHA_CTX, %SHA_CTX* %__v35_ctx, i64 0, i32 3, i64 %__v45_j
  %25 = getelementptr i8, i8* %__v37__in, i64 %__v44_i3
  %26 = load i8, i8* %25, align 1
  %27 = load i8, i8* %24, align 1
  %28 = zext i8 %26 to i32
  %29 = zext i8 %27 to i32
  %30 = tail call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m9, i32 %28, i32 %29) #1
  %31 = trunc i32 %30 to i8
  store i8 %31, i8* %24, align 1
  %32 = icmp eq i64 %__v45_j, 63
  br i1 %32, label %.loopexit.loopexit4, label %.loopexit

._crit_edge:                                      ; preds = %.loopexit, %entry
  %33 = add i32 %__v43_num, %__v38_slen
  %34 = and i32 %33, 63
  store i32 %34, i32* %__v36_ctx_num, align 4
  %35 = trunc i64 %__v104___v37__in_len to i32
  %36 = add i32 %__v43_num, %35
  %37 = and i32 %36, 63
  store i32 %37, i32* %12, align 4
  ret void

.loopexit.loopexit4:                              ; preds = %22
  %__v46_h1 = alloca [5 x i32], align 4
  %38 = bitcast [5 x i32]* %__v46_h1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %38, i8* nonnull %16, i64 20, i32 4, i1 false) #1
  tail call void @sha1_block_data_order(%SHA_CTX* nonnull %__v35_ctx, i8* nonnull %15, i32 1)
  %__m11 = icmp uge i64 %__v44_i3, %0
  %39 = getelementptr inbounds [5 x i32], [5 x i32]* %__v46_h1, i64 0, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %17, align 4
  %42 = tail call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m11, i32 %40, i32 %41) #1
  store i32 %42, i32* %17, align 4
  %43 = getelementptr inbounds [5 x i32], [5 x i32]* %__v46_h1, i64 0, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %18, align 4
  %46 = tail call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m11, i32 %44, i32 %45) #1
  store i32 %46, i32* %18, align 4
  %47 = getelementptr inbounds [5 x i32], [5 x i32]* %__v46_h1, i64 0, i64 2
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %19, align 4
  %50 = tail call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m11, i32 %48, i32 %49) #1
  store i32 %50, i32* %19, align 4
  %51 = getelementptr inbounds [5 x i32], [5 x i32]* %__v46_h1, i64 0, i64 3
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %20, align 4
  %54 = tail call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m11, i32 %52, i32 %53) #1
  store i32 %54, i32* %20, align 4
  %55 = getelementptr inbounds [5 x i32], [5 x i32]* %__v46_h1, i64 0, i64 4
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %21, align 4
  %58 = tail call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m11, i32 %56, i32 %57) #1
  store i32 %58, i32* %21, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit4, %22
  %59 = add nuw i64 %__v44_i3, 1
  %exitcond = icmp eq i64 %59, %__v104___v37__in_len
  br i1 %exitcond, label %._crit_edge, label %22
}

declare void @aesni_cbc_encrypt(i8*, i8*, i64, %AES_KEY*, i8*, i32) local_unnamed_addr

define i32 @_aesni_cbc_hmac_sha1_cipher(i8* %__v1_iv, %EVP_AES_HMAC_SHA1* %__v2_key, i8* %__v3__out, i64 %__v102___v3__out_len, i8* %__v4__in, i64 %__v103___v4__in_len, i16 %__v5_tls_ver) local_unnamed_addr {
entry:
  %0 = and i64 %__v103___v4__in_len, 15
  %1 = icmp eq i64 %0, 0
  br i1 %1, label %2, label %.loopexit

.loopexit:                                        ; preds = %275, %SHA1_Final_public.exit, %entry, %7, %5
  %merge = phi i32 [ 0, %entry ], [ 0, %7 ], [ 0, %5 ], [ %269, %SHA1_Final_public.exit ], [ %290, %275 ]
  ret i32 %merge

; <label>:2:                                      ; preds = %entry
  %3 = trunc i64 %__v102___v3__out_len to i32
  %4 = icmp ugt i16 %__v5_tls_ver, 769
  br i1 %4, label %5, label %7

; <label>:5:                                      ; preds = %2
  %6 = icmp ult i32 %3, 37
  br i1 %6, label %.loopexit, label %80

; <label>:7:                                      ; preds = %2
  %8 = icmp ult i32 %3, 21
  br i1 %8, label %.loopexit, label %9

; <label>:9:                                      ; preds = %7, %80
  %10 = phi i32 [ %3, %7 ], [ %81, %80 ]
  %11 = phi i32 [ 0, %7 ], [ 16, %80 ]
  %__v111_lexpr = zext i32 %11 to i64
  %12 = getelementptr i8, i8* %__v4__in, i64 %__v111_lexpr
  %13 = getelementptr i8, i8* %__v3__out, i64 %__v111_lexpr
  %14 = zext i32 %10 to i64
  %15 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 0
  tail call void @aesni_cbc_encrypt(i8* %12, i8* %13, i64 %14, %AES_KEY* %15, i8* %__v1_iv, i32 0)
  %__v115_lexpr = add i64 %__v102___v3__out_len, -1
  %16 = getelementptr i8, i8* %__v3__out, i64 %__v115_lexpr
  %17 = load i8, i8* %16, align 1
  %18 = zext i8 %17 to i32
  %__v18_tmppad = add i32 %10, -21
  %19 = icmp ult i32 %__v18_tmppad, 255
  %__v19_maxpad = select i1 %19, i32 %__v18_tmppad, i32 255
  %__m1 = icmp ult i32 %__v19_maxpad, %18
  %20 = tail call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m1, i32 0, i32 1) #1
  %21 = tail call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m1, i32 %__v19_maxpad, i32 %18) #1
  %__v20_inp_len = sub i32 %__v18_tmppad, %21
  %22 = getelementptr %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 5, i64 11
  %23 = trunc i32 %__v20_inp_len to i16
  %24 = lshr i16 %23, 8
  %25 = trunc i16 %24 to i8
  store i8 %25, i8* %22, align 1
  %26 = getelementptr %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 5, i64 12
  %27 = trunc i32 %__v20_inp_len to i8
  store i8 %27, i8* %26, align 1
  %__v21_ctx_num = alloca i32, align 4
  store i32 0, i32* %__v21_ctx_num, align 4
  %__v22_pmac4 = alloca [20 x i8], align 1
  %__v22_pmac4.sub = getelementptr inbounds [20 x i8], [20 x i8]* %__v22_pmac4, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* nonnull %__v22_pmac4.sub, i8 0, i64 20, i32 1, i1 false) #1
  %28 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 3
  %29 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 1
  %30 = bitcast %SHA_CTX* %28 to i8*
  %31 = bitcast %SHA_CTX* %29 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %30, i8* nonnull %31, i64 96, i32 1, i1 false) #1
  %32 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 3, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = zext i32 %33 to i64
  %35 = shl nuw i64 %34, 32
  %36 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 3, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = zext i32 %37 to i64
  %39 = or i64 %35, %38
  %__v53_N.i = add i64 %39, 104
  %40 = lshr i64 %__v53_N.i, 32
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %32, align 4
  %42 = trunc i64 %__v53_N.i to i32
  store i32 %42, i32* %36, align 4
  %43 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 3, i32 4
  %__v56_num.i = load i32, i32* %43, align 4
  %44 = icmp eq i32 %__v56_num.i, 0
  br i1 %44, label %.thread28, label %45

; <label>:45:                                     ; preds = %9
  %46 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 5, i64 0
  %47 = sub i32 64, %__v56_num.i
  %48 = zext i32 %47 to i64
  %49 = icmp ult i64 %48, 13
  %__v57_res.i = select i1 %49, i64 %48, i64 13
  %__v133_lexpr.i = zext i32 %__v56_num.i to i64
  %50 = getelementptr %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 3, i32 3, i64 %__v133_lexpr.i
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %50, i8* nonnull %46, i64 %__v57_res.i, i32 1, i1 false) #1
  %51 = add nuw nsw i64 %__v57_res.i, %__v133_lexpr.i
  %52 = icmp eq i64 %51, 64
  br i1 %52, label %56, label %58

; <label>:53:                                     ; preds = %56, %58
  %storemerge.i = phi i32 [ 0, %56 ], [ %61, %58 ]
  store i32 %storemerge.i, i32* %43, align 4
  %54 = sub nsw i64 13, %__v57_res.i
  %__v58_n.i = lshr i64 %54, 6
  %55 = icmp eq i64 %__v58_n.i, 0
  br i1 %55, label %68, label %62

; <label>:56:                                     ; preds = %45
  %57 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 3, i32 3, i64 0
  tail call void @sha1_block_data_order(%SHA_CTX* nonnull %28, i8* nonnull %57, i32 1)
  br label %53

; <label>:58:                                     ; preds = %45
  %59 = load i32, i32* %43, align 4
  %60 = trunc i64 %__v57_res.i to i32
  %61 = add i32 %59, %60
  br label %53

; <label>:62:                                     ; preds = %53
  %63 = getelementptr %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 5, i64 %__v57_res.i
  %64 = trunc i64 %__v58_n.i to i32
  tail call void @sha1_block_data_order(%SHA_CTX* nonnull %28, i8* %63, i32 %64)
  %65 = and i64 %54, -64
  %66 = or i64 %65, %__v57_res.i
  %67 = sub nsw i64 %54, %65
  br label %68

; <label>:68:                                     ; preds = %62, %53
  %__v54_inp.1.i = phi i64 [ %66, %62 ], [ %__v57_res.i, %53 ]
  %__v55__len.1.i = phi i64 [ %67, %62 ], [ %54, %53 ]
  %69 = icmp eq i64 %__v55__len.1.i, 0
  br i1 %69, label %.SHA1_Update_public.exit_crit_edge, label %.thread28

.SHA1_Update_public.exit_crit_edge:               ; preds = %68
  %.pre = load i32, i32* %43, align 4
  br label %SHA1_Update_public.exit

.thread28:                                        ; preds = %9, %68
  %__v55__len.1.i30 = phi i64 [ %__v55__len.1.i, %68 ], [ 13, %9 ]
  %__v54_inp.1.i29 = phi i64 [ %__v54_inp.1.i, %68 ], [ 0, %9 ]
  %70 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 3, i32 3, i64 0
  %71 = getelementptr %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 5, i64 %__v54_inp.1.i29
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %70, i8* %71, i64 %__v55__len.1.i30, i32 1, i1 false) #1
  %72 = load i32, i32* %43, align 4
  %73 = trunc i64 %__v55__len.1.i30 to i32
  %74 = add i32 %72, %73
  store i32 %74, i32* %43, align 4
  br label %SHA1_Update_public.exit

SHA1_Update_public.exit:                          ; preds = %.SHA1_Update_public.exit_crit_edge, %.thread28
  %__v56_num.i6 = phi i32 [ %.pre, %.SHA1_Update_public.exit_crit_edge ], [ %74, %.thread28 ]
  %75 = icmp ugt i32 %10, 339
  %76 = add i32 %10, -276
  %77 = and i32 %76, -64
  %78 = sub i32 %77, %__v56_num.i6
  %__v23_minlen = select i1 %75, i32 %78, i32 0
  %79 = icmp eq i32 %__v23_minlen, 0
  br i1 %79, label %SHA1_Update_public.exit15, label %82

; <label>:80:                                     ; preds = %5
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %__v1_iv, i8* %__v4__in, i64 16, i32 1, i1 false) #1
  %81 = add i32 %3, -16
  br label %9

; <label>:82:                                     ; preds = %SHA1_Update_public.exit
  %__v120_lexpr = zext i32 %__v23_minlen to i64
  %__v52_l.i = shl nuw nsw i64 %__v120_lexpr, 3
  %83 = load i32, i32* %32, align 4
  %84 = zext i32 %83 to i64
  %85 = shl nuw i64 %84, 32
  %86 = load i32, i32* %36, align 4
  %87 = zext i32 %86 to i64
  %88 = or i64 %85, %87
  %__v53_N.i5 = add i64 %88, %__v52_l.i
  %89 = lshr i64 %__v53_N.i5, 32
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %32, align 4
  %91 = trunc i64 %__v53_N.i5 to i32
  store i32 %91, i32* %36, align 4
  %92 = icmp eq i32 %__v56_num.i6, 0
  br i1 %92, label %100, label %93

; <label>:93:                                     ; preds = %82
  %94 = sub i32 64, %__v56_num.i6
  %95 = zext i32 %94 to i64
  %96 = icmp ugt i64 %95, %__v120_lexpr
  %__v57_res.i7 = select i1 %96, i64 %__v120_lexpr, i64 %95
  %__v133_lexpr.i8 = zext i32 %__v56_num.i6 to i64
  %97 = getelementptr %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 3, i32 3, i64 %__v133_lexpr.i8
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %97, i8* %13, i64 %__v57_res.i7, i32 1, i1 false) #1
  %98 = add nuw nsw i64 %__v57_res.i7, %__v133_lexpr.i8
  %99 = icmp eq i64 %98, 64
  br i1 %99, label %102, label %104

; <label>:100:                                    ; preds = %82, %108
  %__v54_inp.0.i9 = phi i64 [ %__v57_res.i7, %108 ], [ 0, %82 ]
  %__v55__len.0.i10 = phi i64 [ %109, %108 ], [ %__v120_lexpr, %82 ]
  %__v58_n.i11 = lshr i64 %__v55__len.0.i10, 6
  %101 = icmp eq i64 %__v58_n.i11, 0
  br i1 %101, label %116, label %110

; <label>:102:                                    ; preds = %93
  %103 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 3, i32 3, i64 0
  tail call void @sha1_block_data_order(%SHA_CTX* nonnull %28, i8* nonnull %103, i32 1)
  br label %108

; <label>:104:                                    ; preds = %93
  %105 = load i32, i32* %43, align 4
  %106 = trunc i64 %__v57_res.i7 to i32
  %107 = add i32 %105, %106
  br label %108

; <label>:108:                                    ; preds = %104, %102
  %storemerge.i12 = phi i32 [ 0, %102 ], [ %107, %104 ]
  store i32 %storemerge.i12, i32* %43, align 4
  %109 = sub nsw i64 %__v120_lexpr, %__v57_res.i7
  br label %100

; <label>:110:                                    ; preds = %100
  %111 = getelementptr i8, i8* %13, i64 %__v54_inp.0.i9
  %112 = trunc i64 %__v58_n.i11 to i32
  tail call void @sha1_block_data_order(%SHA_CTX* nonnull %28, i8* %111, i32 %112)
  %113 = and i64 %__v55__len.0.i10, -64
  %114 = add nsw i64 %113, %__v54_inp.0.i9
  %115 = sub nsw i64 %__v55__len.0.i10, %113
  br label %116

; <label>:116:                                    ; preds = %110, %100
  %__v54_inp.1.i13 = phi i64 [ %114, %110 ], [ %__v54_inp.0.i9, %100 ]
  %__v55__len.1.i14 = phi i64 [ %115, %110 ], [ %__v55__len.0.i10, %100 ]
  %117 = icmp eq i64 %__v55__len.1.i14, 0
  br i1 %117, label %SHA1_Update_public.exit15, label %118

; <label>:118:                                    ; preds = %116
  %119 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 3, i32 3, i64 0
  %120 = getelementptr i8, i8* %13, i64 %__v54_inp.1.i13
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %119, i8* %120, i64 %__v55__len.1.i14, i32 1, i1 false) #1
  %121 = load i32, i32* %43, align 4
  %122 = trunc i64 %__v55__len.1.i14 to i32
  %123 = add i32 %121, %122
  store i32 %123, i32* %43, align 4
  br label %SHA1_Update_public.exit15

SHA1_Update_public.exit15:                        ; preds = %118, %116, %SHA1_Update_public.exit
  %124 = add i32 %__v23_minlen, %11
  %__v121_lexpr = zext i32 %124 to i64
  %125 = sub i32 %10, %__v23_minlen
  %__v124_lexpr = zext i32 %125 to i64
  %126 = getelementptr i8, i8* %__v3__out, i64 %__v121_lexpr
  %127 = sub i32 %__v20_inp_len, %__v23_minlen
  call fastcc void @SHA1_Update_secret(%SHA_CTX* nonnull %28, i32* nonnull %__v21_ctx_num, i8* %126, i64 %__v124_lexpr, i32 %127)
  %128 = load i32, i32* %__v21_ctx_num, align 4
  call fastcc void @SHA1_Final_secret(i8* nonnull %__v22_pmac4.sub, %SHA_CTX* nonnull %28, i32 %128)
  %129 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 2
  %130 = bitcast %SHA_CTX* %129 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %30, i8* nonnull %130, i64 96, i32 1, i1 false) #1
  %131 = load i32, i32* %32, align 4
  %132 = zext i32 %131 to i64
  %133 = shl nuw i64 %132, 32
  %134 = load i32, i32* %36, align 4
  %135 = zext i32 %134 to i64
  %136 = or i64 %133, %135
  %__v53_N.i16 = add i64 %136, 160
  %137 = lshr i64 %__v53_N.i16, 32
  %138 = trunc i64 %137 to i32
  store i32 %138, i32* %32, align 4
  %139 = trunc i64 %__v53_N.i16 to i32
  store i32 %139, i32* %36, align 4
  %__v56_num.i17 = load i32, i32* %43, align 4
  %140 = icmp eq i32 %__v56_num.i17, 0
  br i1 %140, label %.thread33, label %141

; <label>:141:                                    ; preds = %SHA1_Update_public.exit15
  %142 = sub i32 64, %__v56_num.i17
  %143 = zext i32 %142 to i64
  %144 = icmp ult i64 %143, 20
  %__v57_res.i18 = select i1 %144, i64 %143, i64 20
  %__v133_lexpr.i19 = zext i32 %__v56_num.i17 to i64
  %145 = getelementptr %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 3, i32 3, i64 %__v133_lexpr.i19
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %145, i8* nonnull %__v22_pmac4.sub, i64 %__v57_res.i18, i32 1, i1 false) #1
  %146 = add nuw nsw i64 %__v57_res.i18, %__v133_lexpr.i19
  %147 = icmp eq i64 %146, 64
  br i1 %147, label %151, label %153

; <label>:148:                                    ; preds = %151, %153
  %storemerge.i23 = phi i32 [ 0, %151 ], [ %156, %153 ]
  store i32 %storemerge.i23, i32* %43, align 4
  %149 = sub nsw i64 20, %__v57_res.i18
  %__v58_n.i22 = lshr i64 %149, 6
  %150 = icmp eq i64 %__v58_n.i22, 0
  br i1 %150, label %163, label %157

; <label>:151:                                    ; preds = %141
  %152 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 3, i32 3, i64 0
  tail call void @sha1_block_data_order(%SHA_CTX* nonnull %28, i8* nonnull %152, i32 1)
  br label %148

; <label>:153:                                    ; preds = %141
  %154 = load i32, i32* %43, align 4
  %155 = trunc i64 %__v57_res.i18 to i32
  %156 = add i32 %154, %155
  br label %148

; <label>:157:                                    ; preds = %148
  %158 = getelementptr [20 x i8], [20 x i8]* %__v22_pmac4, i64 0, i64 %__v57_res.i18
  %159 = trunc i64 %__v58_n.i22 to i32
  call void @sha1_block_data_order(%SHA_CTX* nonnull %28, i8* %158, i32 %159)
  %160 = and i64 %149, -64
  %161 = or i64 %160, %__v57_res.i18
  %162 = sub nsw i64 %149, %160
  br label %163

; <label>:163:                                    ; preds = %157, %148
  %__v54_inp.1.i24 = phi i64 [ %161, %157 ], [ %__v57_res.i18, %148 ]
  %__v55__len.1.i25 = phi i64 [ %162, %157 ], [ %149, %148 ]
  %164 = icmp eq i64 %__v55__len.1.i25, 0
  br i1 %164, label %.SHA1_Update_public.exit26_crit_edge, label %..thread33_crit_edge

..thread33_crit_edge:                             ; preds = %163
  %.pre42 = getelementptr [20 x i8], [20 x i8]* %__v22_pmac4, i64 0, i64 %__v54_inp.1.i24
  br label %.thread33

.SHA1_Update_public.exit26_crit_edge:             ; preds = %163
  %.pre40 = load i32, i32* %43, align 4
  %.pre41 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 3, i32 3, i64 0
  br label %SHA1_Update_public.exit26

.thread33:                                        ; preds = %..thread33_crit_edge, %SHA1_Update_public.exit15
  %.pre-phi43 = phi i8* [ %.pre42, %..thread33_crit_edge ], [ %__v22_pmac4.sub, %SHA1_Update_public.exit15 ]
  %__v55__len.1.i2535 = phi i64 [ %__v55__len.1.i25, %..thread33_crit_edge ], [ 20, %SHA1_Update_public.exit15 ]
  %165 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 3, i32 3, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %165, i8* %.pre-phi43, i64 %__v55__len.1.i2535, i32 1, i1 false) #1
  %166 = load i32, i32* %43, align 4
  %167 = trunc i64 %__v55__len.1.i2535 to i32
  %168 = add i32 %166, %167
  store i32 %168, i32* %43, align 4
  br label %SHA1_Update_public.exit26

SHA1_Update_public.exit26:                        ; preds = %.SHA1_Update_public.exit26_crit_edge, %.thread33
  %.pre-phi = phi i8* [ %.pre41, %.SHA1_Update_public.exit26_crit_edge ], [ %165, %.thread33 ]
  %169 = phi i32 [ %.pre40, %.SHA1_Update_public.exit26_crit_edge ], [ %168, %.thread33 ]
  %__v148_lexpr.i = zext i32 %169 to i64
  %170 = getelementptr %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 3, i32 3, i64 %__v148_lexpr.i
  store i8 -128, i8* %170, align 1
  %171 = add i32 %169, 1
  %172 = zext i32 %171 to i64
  %173 = icmp ugt i32 %171, 56
  br i1 %173, label %174, label %SHA1_Final_public.exit

; <label>:174:                                    ; preds = %SHA1_Update_public.exit26
  %__v154_lexpr.i = sub nsw i64 64, %172
  %175 = getelementptr %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 3, i32 3, i64 %172
  call void @llvm.memset.p0i8.i64(i8* %175, i8 0, i64 %__v154_lexpr.i, i32 1, i1 false) #1
  call void @sha1_block_data_order(%SHA_CTX* nonnull %28, i8* nonnull %.pre-phi, i32 1)
  br label %SHA1_Final_public.exit

SHA1_Final_public.exit:                           ; preds = %SHA1_Update_public.exit26, %174
  %__v90_num.0.i = phi i32 [ 0, %174 ], [ %171, %SHA1_Update_public.exit26 ]
  %176 = zext i32 %__v90_num.0.i to i64
  %__v160_lexpr.i = sub nsw i64 56, %176
  %177 = getelementptr %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 3, i32 3, i64 %176
  call void @llvm.memset.p0i8.i64(i8* %177, i8 0, i64 %__v160_lexpr.i, i32 1, i1 false) #1
  %178 = getelementptr %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 3, i32 3, i64 56
  %179 = load i32, i32* %32, align 4
  %180 = lshr i32 %179, 24
  %181 = trunc i32 %180 to i8
  store i8 %181, i8* %178, align 1
  %182 = getelementptr %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 3, i32 3, i64 57
  %183 = lshr i32 %179, 16
  %184 = trunc i32 %183 to i8
  store i8 %184, i8* %182, align 1
  %185 = getelementptr %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 3, i32 3, i64 58
  %186 = lshr i32 %179, 8
  %187 = trunc i32 %186 to i8
  store i8 %187, i8* %185, align 1
  %188 = getelementptr %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 3, i32 3, i64 59
  %189 = trunc i32 %179 to i8
  store i8 %189, i8* %188, align 1
  %190 = getelementptr %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 3, i32 3, i64 60
  %191 = load i32, i32* %36, align 4
  %192 = lshr i32 %191, 24
  %193 = trunc i32 %192 to i8
  store i8 %193, i8* %190, align 1
  %194 = getelementptr %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 3, i32 3, i64 61
  %195 = lshr i32 %191, 16
  %196 = trunc i32 %195 to i8
  store i8 %196, i8* %194, align 1
  %197 = getelementptr %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 3, i32 3, i64 62
  %198 = lshr i32 %191, 8
  %199 = trunc i32 %198 to i8
  store i8 %199, i8* %197, align 1
  %200 = getelementptr %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 3, i32 3, i64 63
  %201 = trunc i32 %191 to i8
  store i8 %201, i8* %200, align 1
  call void @sha1_block_data_order(%SHA_CTX* nonnull %28, i8* nonnull %.pre-phi, i32 1)
  store i32 0, i32* %43, align 4
  call void @llvm.memset.p0i8.i64(i8* nonnull %.pre-phi, i8 0, i64 64, i32 1, i1 true) #1
  %202 = getelementptr %SHA_CTX, %SHA_CTX* %28, i64 0, i32 0, i64 0
  %203 = load i32, i32* %202, align 4
  %204 = lshr i32 %203, 24
  %205 = trunc i32 %204 to i8
  store i8 %205, i8* %__v22_pmac4.sub, align 1
  %206 = getelementptr inbounds [20 x i8], [20 x i8]* %__v22_pmac4, i64 0, i64 1
  %207 = lshr i32 %203, 16
  %208 = trunc i32 %207 to i8
  store i8 %208, i8* %206, align 1
  %209 = getelementptr inbounds [20 x i8], [20 x i8]* %__v22_pmac4, i64 0, i64 2
  %210 = lshr i32 %203, 8
  %211 = trunc i32 %210 to i8
  store i8 %211, i8* %209, align 1
  %212 = getelementptr inbounds [20 x i8], [20 x i8]* %__v22_pmac4, i64 0, i64 3
  %213 = trunc i32 %203 to i8
  store i8 %213, i8* %212, align 1
  %214 = getelementptr inbounds [20 x i8], [20 x i8]* %__v22_pmac4, i64 0, i64 4
  %215 = getelementptr %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 3, i32 0, i64 1
  %216 = load i32, i32* %215, align 4
  %217 = lshr i32 %216, 24
  %218 = trunc i32 %217 to i8
  store i8 %218, i8* %214, align 1
  %219 = getelementptr inbounds [20 x i8], [20 x i8]* %__v22_pmac4, i64 0, i64 5
  %220 = lshr i32 %216, 16
  %221 = trunc i32 %220 to i8
  store i8 %221, i8* %219, align 1
  %222 = getelementptr inbounds [20 x i8], [20 x i8]* %__v22_pmac4, i64 0, i64 6
  %223 = lshr i32 %216, 8
  %224 = trunc i32 %223 to i8
  store i8 %224, i8* %222, align 1
  %225 = getelementptr inbounds [20 x i8], [20 x i8]* %__v22_pmac4, i64 0, i64 7
  %226 = trunc i32 %216 to i8
  store i8 %226, i8* %225, align 1
  %227 = getelementptr inbounds [20 x i8], [20 x i8]* %__v22_pmac4, i64 0, i64 8
  %228 = getelementptr %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 3, i32 0, i64 2
  %229 = load i32, i32* %228, align 4
  %230 = lshr i32 %229, 24
  %231 = trunc i32 %230 to i8
  store i8 %231, i8* %227, align 1
  %232 = getelementptr inbounds [20 x i8], [20 x i8]* %__v22_pmac4, i64 0, i64 9
  %233 = lshr i32 %229, 16
  %234 = trunc i32 %233 to i8
  store i8 %234, i8* %232, align 1
  %235 = getelementptr inbounds [20 x i8], [20 x i8]* %__v22_pmac4, i64 0, i64 10
  %236 = lshr i32 %229, 8
  %237 = trunc i32 %236 to i8
  store i8 %237, i8* %235, align 1
  %238 = getelementptr inbounds [20 x i8], [20 x i8]* %__v22_pmac4, i64 0, i64 11
  %239 = trunc i32 %229 to i8
  store i8 %239, i8* %238, align 1
  %240 = getelementptr inbounds [20 x i8], [20 x i8]* %__v22_pmac4, i64 0, i64 12
  %241 = getelementptr %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 3, i32 0, i64 3
  %242 = load i32, i32* %241, align 4
  %243 = lshr i32 %242, 24
  %244 = trunc i32 %243 to i8
  store i8 %244, i8* %240, align 1
  %245 = getelementptr inbounds [20 x i8], [20 x i8]* %__v22_pmac4, i64 0, i64 13
  %246 = lshr i32 %242, 16
  %247 = trunc i32 %246 to i8
  store i8 %247, i8* %245, align 1
  %248 = getelementptr inbounds [20 x i8], [20 x i8]* %__v22_pmac4, i64 0, i64 14
  %249 = lshr i32 %242, 8
  %250 = trunc i32 %249 to i8
  store i8 %250, i8* %248, align 1
  %251 = getelementptr inbounds [20 x i8], [20 x i8]* %__v22_pmac4, i64 0, i64 15
  %252 = trunc i32 %242 to i8
  store i8 %252, i8* %251, align 1
  %253 = getelementptr inbounds [20 x i8], [20 x i8]* %__v22_pmac4, i64 0, i64 16
  %254 = getelementptr %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 3, i32 0, i64 4
  %255 = load i32, i32* %254, align 4
  %256 = lshr i32 %255, 24
  %257 = trunc i32 %256 to i8
  store i8 %257, i8* %253, align 1
  %258 = getelementptr inbounds [20 x i8], [20 x i8]* %__v22_pmac4, i64 0, i64 17
  %259 = lshr i32 %255, 16
  %260 = trunc i32 %259 to i8
  store i8 %260, i8* %258, align 1
  %261 = getelementptr inbounds [20 x i8], [20 x i8]* %__v22_pmac4, i64 0, i64 18
  %262 = lshr i32 %255, 8
  %263 = trunc i32 %262 to i8
  store i8 %263, i8* %261, align 1
  %264 = getelementptr inbounds [20 x i8], [20 x i8]* %__v22_pmac4, i64 0, i64 19
  %265 = trunc i32 %255 to i8
  store i8 %265, i8* %264, align 1
  %266 = icmp ult i32 %10, 276
  %__v24_pub_start = select i1 %266, i32 0, i32 %76
  %267 = add i32 %__v20_inp_len, %11
  %268 = add i32 %267, 20
  %__m3 = icmp ugt i32 %268, %10
  %269 = call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m3, i32 0, i32 %20) #1
  %270 = add i32 %__v24_pub_start, %11
  %271 = icmp ult i32 %270, %10
  br i1 %271, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %SHA1_Final_public.exit
  %272 = zext i32 %270 to i64
  %273 = zext i32 %268 to i64
  %274 = zext i32 %267 to i64
  br label %275

; <label>:275:                                    ; preds = %.lr.ph, %275
  %indvars.iv = phi i64 [ %272, %.lr.ph ], [ %indvars.iv.next, %275 ]
  %__v25_i39 = phi i32 [ %270, %.lr.ph ], [ %291, %275 ]
  %__v13_ret.038 = phi i32 [ %269, %.lr.ph ], [ %290, %275 ]
  %276 = icmp uge i64 %indvars.iv, %274
  %277 = icmp ult i64 %indvars.iv, %273
  %278 = zext i1 %277 to i32
  %279 = call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %276, i32 %278, i32 0) #1
  %280 = and i32 %279, 1
  %281 = icmp ne i32 %280, 0
  %282 = trunc i64 %indvars.iv to i32
  %283 = sub i32 %282, %267
  %284 = call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %281, i32 %283, i32 0) #1
  %__v126_lexpr = zext i32 %284 to i64
  %285 = getelementptr i8, i8* %__v3__out, i64 %indvars.iv
  %286 = load i8, i8* %285, align 1
  %287 = getelementptr [20 x i8], [20 x i8]* %__v22_pmac4, i64 0, i64 %__v126_lexpr
  %288 = load i8, i8* %287, align 1
  %__m6 = icmp ne i8 %286, %288
  %289 = and i1 %281, %__m6
  %290 = call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %289, i32 0, i32 %__v13_ret.038) #1
  %291 = add i32 %__v25_i39, 1
  %292 = icmp ult i32 %291, %10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %292, label %275, label %.loopexit
}

attributes #0 = { argmemonly nounwind }
attributes #1 = { nounwind }
