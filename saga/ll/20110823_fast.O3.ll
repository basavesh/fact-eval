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

; <label>:3:                                      ; preds = %54, %entry
  %__v83_i4 = phi i64 [ 0, %entry ], [ %55, %54 ]
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
  br i1 %12, label %42, label %51

; <label>:13:                                     ; preds = %54
  %14 = bitcast %SHA_CTX* %__v80_ctx to i8*
  %15 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %__v80_ctx, i64 0, i32 3, i64 0
  tail call void @sha1_block_data_order(%SHA_CTX* nonnull %__v80_ctx, i8* nonnull %15, i32 1)
  tail call void @llvm.memset.p0i8.i64(i8* nonnull %15, i8 0, i64 56, i32 1, i1 false) #1
  %16 = getelementptr %SHA_CTX, %SHA_CTX* %__v80_ctx, i64 0, i32 3, i64 56
  %17 = load i32, i32* %2, align 4
  %18 = lshr i32 %17, 24
  %19 = trunc i32 %18 to i8
  store i8 %19, i8* %16, align 1
  %20 = getelementptr %SHA_CTX, %SHA_CTX* %__v80_ctx, i64 0, i32 3, i64 57
  %21 = lshr i32 %17, 16
  %22 = trunc i32 %21 to i8
  store i8 %22, i8* %20, align 1
  %23 = getelementptr %SHA_CTX, %SHA_CTX* %__v80_ctx, i64 0, i32 3, i64 58
  %24 = lshr i32 %17, 8
  %25 = trunc i32 %24 to i8
  store i8 %25, i8* %23, align 1
  %26 = getelementptr %SHA_CTX, %SHA_CTX* %__v80_ctx, i64 0, i32 3, i64 59
  %27 = trunc i32 %17 to i8
  store i8 %27, i8* %26, align 1
  %28 = getelementptr %SHA_CTX, %SHA_CTX* %__v80_ctx, i64 0, i32 3, i64 60
  %29 = load i32, i32* %1, align 4
  %30 = lshr i32 %29, 24
  %31 = trunc i32 %30 to i8
  store i8 %31, i8* %28, align 1
  %32 = getelementptr %SHA_CTX, %SHA_CTX* %__v80_ctx, i64 0, i32 3, i64 61
  %33 = lshr i32 %29, 16
  %34 = trunc i32 %33 to i8
  store i8 %34, i8* %32, align 1
  %35 = getelementptr %SHA_CTX, %SHA_CTX* %__v80_ctx, i64 0, i32 3, i64 62
  %36 = lshr i32 %29, 8
  %37 = trunc i32 %36 to i8
  store i8 %37, i8* %35, align 1
  %38 = getelementptr %SHA_CTX, %SHA_CTX* %__v80_ctx, i64 0, i32 3, i64 63
  %39 = trunc i32 %29 to i8
  store i8 %39, i8* %38, align 1
  %40 = getelementptr %SHA_CTX, %SHA_CTX* %__v80_ctx, i64 0, i32 0, i64 0
  %__v86_h1 = alloca [5 x i32], align 4
  %41 = bitcast [5 x i32]* %__v86_h1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %41, i8* %14, i64 20, i32 4, i1 false) #1
  tail call void @sha1_block_data_order(%SHA_CTX* nonnull %__v80_ctx, i8* nonnull %15, i32 1)
  br i1 %__m23, label %.split.us, label %.us-lcssa.us

.split.us:                                        ; preds = %13
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %41, i64 20, i32 4, i1 false)
  br label %.us-lcssa.us

; <label>:42:                                     ; preds = %3
  %43 = load i32, i32* %1, align 4
  %__v83_i.tr2 = trunc i64 %__v83_i4 to i32
  %44 = shl i32 %__v83_i.tr2, 3
  %45 = sub i32 504, %44
  %46 = lshr i32 %43, %45
  %47 = and i1 %__m23, %__m27
  %48 = and i32 %46, 255
  %49 = and i32 %10, 255
  %50 = tail call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %47, i32 %48, i32 %49) #1
  br label %.sink.split

; <label>:51:                                     ; preds = %3
  %52 = icmp ugt i64 %__v83_i4, 55
  br i1 %52, label %56, label %54

.sink.split:                                      ; preds = %42, %56
  %.sink6 = phi i32 [ %64, %56 ], [ %50, %42 ]
  %53 = trunc i32 %.sink6 to i8
  store i8 %53, i8* %4, align 1
  br label %54

; <label>:54:                                     ; preds = %.sink.split, %51
  %55 = add nuw nsw i64 %__v83_i4, 1
  %exitcond = icmp eq i64 %55, 64
  br i1 %exitcond, label %13, label %3

; <label>:56:                                     ; preds = %51
  %57 = load i32, i32* %2, align 4
  %__v83_i.tr = trunc i64 %__v83_i4 to i32
  %58 = shl i32 %__v83_i.tr, 3
  %59 = sub i32 472, %58
  %60 = lshr i32 %57, %59
  %61 = and i1 %__m23, %__m27
  %62 = and i32 %60, 255
  %63 = and i32 %10, 255
  %64 = tail call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %61, i32 %62, i32 %63) #1
  br label %.sink.split

.us-lcssa.us:                                     ; preds = %13, %.split.us
  %65 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %__v80_ctx, i64 0, i32 4
  store i32 0, i32* %65, align 4
  tail call void @llvm.memset.p0i8.i64(i8* nonnull %15, i8 0, i64 64, i32 1, i1 true) #1
  %66 = load i32, i32* %40, align 4
  %67 = lshr i32 %66, 24
  %68 = trunc i32 %67 to i8
  store i8 %68, i8* %__v79_out, align 1
  %69 = getelementptr i8, i8* %__v79_out, i64 1
  %70 = lshr i32 %66, 16
  %71 = trunc i32 %70 to i8
  store i8 %71, i8* %69, align 1
  %72 = getelementptr i8, i8* %__v79_out, i64 2
  %73 = lshr i32 %66, 8
  %74 = trunc i32 %73 to i8
  store i8 %74, i8* %72, align 1
  %75 = getelementptr i8, i8* %__v79_out, i64 3
  %76 = trunc i32 %66 to i8
  store i8 %76, i8* %75, align 1
  %77 = getelementptr i8, i8* %__v79_out, i64 4
  %78 = getelementptr %SHA_CTX, %SHA_CTX* %__v80_ctx, i64 0, i32 0, i64 1
  %79 = load i32, i32* %78, align 4
  %80 = lshr i32 %79, 24
  %81 = trunc i32 %80 to i8
  store i8 %81, i8* %77, align 1
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
  %91 = getelementptr %SHA_CTX, %SHA_CTX* %__v80_ctx, i64 0, i32 0, i64 2
  %92 = load i32, i32* %91, align 4
  %93 = lshr i32 %92, 24
  %94 = trunc i32 %93 to i8
  store i8 %94, i8* %90, align 1
  %95 = getelementptr i8, i8* %__v79_out, i64 9
  %96 = lshr i32 %92, 16
  %97 = trunc i32 %96 to i8
  store i8 %97, i8* %95, align 1
  %98 = getelementptr i8, i8* %__v79_out, i64 10
  %99 = lshr i32 %92, 8
  %100 = trunc i32 %99 to i8
  store i8 %100, i8* %98, align 1
  %101 = getelementptr i8, i8* %__v79_out, i64 11
  %102 = trunc i32 %92 to i8
  store i8 %102, i8* %101, align 1
  %103 = getelementptr i8, i8* %__v79_out, i64 12
  %104 = getelementptr %SHA_CTX, %SHA_CTX* %__v80_ctx, i64 0, i32 0, i64 3
  %105 = load i32, i32* %104, align 4
  %106 = lshr i32 %105, 24
  %107 = trunc i32 %106 to i8
  store i8 %107, i8* %103, align 1
  %108 = getelementptr i8, i8* %__v79_out, i64 13
  %109 = lshr i32 %105, 16
  %110 = trunc i32 %109 to i8
  store i8 %110, i8* %108, align 1
  %111 = getelementptr i8, i8* %__v79_out, i64 14
  %112 = lshr i32 %105, 8
  %113 = trunc i32 %112 to i8
  store i8 %113, i8* %111, align 1
  %114 = getelementptr i8, i8* %__v79_out, i64 15
  %115 = trunc i32 %105 to i8
  store i8 %115, i8* %114, align 1
  %116 = getelementptr i8, i8* %__v79_out, i64 16
  %117 = getelementptr %SHA_CTX, %SHA_CTX* %__v80_ctx, i64 0, i32 0, i64 4
  %118 = load i32, i32* %117, align 4
  %119 = lshr i32 %118, 24
  %120 = trunc i32 %119 to i8
  store i8 %120, i8* %116, align 1
  %121 = getelementptr i8, i8* %__v79_out, i64 17
  %122 = lshr i32 %118, 16
  %123 = trunc i32 %122 to i8
  store i8 %123, i8* %121, align 1
  %124 = getelementptr i8, i8* %__v79_out, i64 18
  %125 = lshr i32 %118, 8
  %126 = trunc i32 %125 to i8
  store i8 %126, i8* %124, align 1
  %127 = getelementptr i8, i8* %__v79_out, i64 19
  %128 = trunc i32 %118 to i8
  store i8 %128, i8* %127, align 1
  ret void
}

define internal fastcc void @SHA1_Update_secret(%SHA_CTX* %__v35_ctx, i32* nocapture %__v36_ctx_num, i8* nocapture readonly %__v37__in, i64 %__v104___v37__in_len, i32 %__v38_slen) unnamed_addr {
entry:
  %0 = bitcast %SHA_CTX* %__v35_ctx to i8*
  %1 = zext i32 %__v38_slen to i64
  %__v41_l = shl nuw nsw i64 %1, 3
  %2 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %__v35_ctx, i64 0, i32 2
  %3 = load i32, i32* %2, align 4
  %4 = zext i32 %3 to i64
  %5 = shl nuw i64 %4, 32
  %6 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %__v35_ctx, i64 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = zext i32 %7 to i64
  %9 = or i64 %5, %8
  %__v42_N = add i64 %9, %__v41_l
  %10 = lshr i64 %__v42_N, 32
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %2, align 4
  %12 = trunc i64 %__v42_N to i32
  store i32 %12, i32* %6, align 4
  %13 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %__v35_ctx, i64 0, i32 4
  %__v43_num = load i32, i32* %13, align 4
  %14 = icmp eq i64 %__v104___v37__in_len, 0
  br i1 %14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %entry
  %15 = zext i32 %__v43_num to i64
  %16 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %__v35_ctx, i64 0, i32 3, i64 0
  br label %17

; <label>:17:                                     ; preds = %.loopexit, %.lr.ph
  %__v44_i3 = phi i64 [ 0, %.lr.ph ], [ %35, %.loopexit ]
  %18 = add i64 %__v44_i3, %15
  %__v45_j = and i64 %18, 63
  %__m9 = icmp ult i64 %__v44_i3, %1
  %19 = getelementptr %SHA_CTX, %SHA_CTX* %__v35_ctx, i64 0, i32 3, i64 %__v45_j
  %20 = getelementptr i8, i8* %__v37__in, i64 %__v44_i3
  %21 = load i8, i8* %20, align 1
  %22 = load i8, i8* %19, align 1
  %23 = zext i8 %21 to i32
  %24 = zext i8 %22 to i32
  %25 = tail call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m9, i32 %23, i32 %24) #1
  %26 = trunc i32 %25 to i8
  store i8 %26, i8* %19, align 1
  %27 = icmp eq i64 %__v45_j, 63
  br i1 %27, label %33, label %.loopexit

._crit_edge:                                      ; preds = %.loopexit, %entry
  %28 = add i32 %__v43_num, %__v38_slen
  %29 = and i32 %28, 63
  store i32 %29, i32* %__v36_ctx_num, align 4
  %30 = trunc i64 %__v104___v37__in_len to i32
  %31 = add i32 %__v43_num, %30
  %32 = and i32 %31, 63
  store i32 %32, i32* %13, align 4
  ret void

; <label>:33:                                     ; preds = %17
  %__v46_h1 = alloca [5 x i32], align 4
  %34 = bitcast [5 x i32]* %__v46_h1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %34, i8* nonnull %0, i64 20, i32 4, i1 false) #1
  tail call void @sha1_block_data_order(%SHA_CTX* nonnull %__v35_ctx, i8* nonnull %16, i32 1)
  br i1 %__m9, label %.loopexit, label %.split

.split:                                           ; preds = %33
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %0, i8* nonnull %34, i64 20, i32 4, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %33, %.split, %17
  %35 = add nuw i64 %__v44_i3, 1
  %exitcond = icmp eq i64 %35, %__v104___v37__in_len
  br i1 %exitcond, label %._crit_edge, label %17
}

declare void @aesni_cbc_encrypt(i8*, i8*, i64, %AES_KEY*, i8*, i32) local_unnamed_addr

define i32 @_aesni_cbc_hmac_sha1_cipher(i8* %__v1_iv, %EVP_AES_HMAC_SHA1* %__v2_key, i8* %__v3__out, i64 %__v102___v3__out_len, i8* %__v4__in, i64 %__v103___v4__in_len, i16 %__v5_tls_ver) local_unnamed_addr {
entry:
  %0 = and i64 %__v103___v4__in_len, 15
  %1 = icmp eq i64 %0, 0
  br i1 %1, label %2, label %.loopexit

.loopexit:                                        ; preds = %274, %SHA1_Final_public.exit, %entry, %7, %5
  %merge = phi i32 [ 0, %entry ], [ 0, %7 ], [ 0, %5 ], [ %268, %SHA1_Final_public.exit ], [ %289, %274 ]
  ret i32 %merge

; <label>:2:                                      ; preds = %entry
  %3 = trunc i64 %__v102___v3__out_len to i32
  %4 = icmp ugt i16 %__v5_tls_ver, 769
  br i1 %4, label %5, label %7

; <label>:5:                                      ; preds = %2
  %6 = icmp ult i32 %3, 37
  br i1 %6, label %.loopexit, label %79

; <label>:7:                                      ; preds = %2
  %8 = icmp ult i32 %3, 21
  br i1 %8, label %.loopexit, label %9

; <label>:9:                                      ; preds = %7, %79
  %10 = phi i32 [ %3, %7 ], [ %80, %79 ]
  %11 = phi i32 [ 0, %7 ], [ 16, %79 ]
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
  %not.__m1 = xor i1 %__m1, true
  %20 = select i1 %__m1, i32 %__v19_maxpad, i32 %18
  %__v20_inp_len = sub i32 %__v18_tmppad, %20
  %21 = getelementptr %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 5, i64 11
  %22 = trunc i32 %__v20_inp_len to i16
  %23 = lshr i16 %22, 8
  %24 = trunc i16 %23 to i8
  store i8 %24, i8* %21, align 1
  %25 = getelementptr %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 5, i64 12
  %26 = trunc i32 %__v20_inp_len to i8
  store i8 %26, i8* %25, align 1
  %__v21_ctx_num = alloca i32, align 4
  store i32 0, i32* %__v21_ctx_num, align 4
  %__v22_pmac4 = alloca [20 x i8], align 1
  %__v22_pmac4.sub = getelementptr inbounds [20 x i8], [20 x i8]* %__v22_pmac4, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* nonnull %__v22_pmac4.sub, i8 0, i64 20, i32 1, i1 false) #1
  %27 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 3
  %28 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 1
  %29 = bitcast %SHA_CTX* %27 to i8*
  %30 = bitcast %SHA_CTX* %28 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* nonnull %30, i64 96, i32 1, i1 false) #1
  %31 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 3, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = zext i32 %32 to i64
  %34 = shl nuw i64 %33, 32
  %35 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 3, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = zext i32 %36 to i64
  %38 = or i64 %34, %37
  %__v53_N.i5 = add i64 %38, 104
  %39 = lshr i64 %__v53_N.i5, 32
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %31, align 4
  %41 = trunc i64 %__v53_N.i5 to i32
  store i32 %41, i32* %35, align 4
  %42 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 3, i32 4
  %__v56_num.i6 = load i32, i32* %42, align 4
  %43 = icmp eq i32 %__v56_num.i6, 0
  br i1 %43, label %.thread28, label %44

; <label>:44:                                     ; preds = %9
  %45 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 5, i64 0
  %46 = sub i32 64, %__v56_num.i6
  %47 = zext i32 %46 to i64
  %48 = icmp ult i64 %47, 13
  %__v57_res.i7 = select i1 %48, i64 %47, i64 13
  %__v133_lexpr.i8 = zext i32 %__v56_num.i6 to i64
  %49 = getelementptr %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 3, i32 3, i64 %__v133_lexpr.i8
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %49, i8* nonnull %45, i64 %__v57_res.i7, i32 1, i1 false) #1
  %50 = add nuw nsw i64 %__v57_res.i7, %__v133_lexpr.i8
  %51 = icmp eq i64 %50, 64
  br i1 %51, label %55, label %57

; <label>:52:                                     ; preds = %55, %57
  %storemerge.i12 = phi i32 [ 0, %55 ], [ %60, %57 ]
  store i32 %storemerge.i12, i32* %42, align 4
  %53 = sub nsw i64 13, %__v57_res.i7
  %__v58_n.i11 = lshr i64 %53, 6
  %54 = icmp eq i64 %__v58_n.i11, 0
  br i1 %54, label %67, label %61

; <label>:55:                                     ; preds = %44
  %56 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 3, i32 3, i64 0
  tail call void @sha1_block_data_order(%SHA_CTX* nonnull %27, i8* nonnull %56, i32 1)
  br label %52

; <label>:57:                                     ; preds = %44
  %58 = load i32, i32* %42, align 4
  %59 = trunc i64 %__v57_res.i7 to i32
  %60 = add i32 %58, %59
  br label %52

; <label>:61:                                     ; preds = %52
  %62 = getelementptr %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 5, i64 %__v57_res.i7
  %63 = trunc i64 %__v58_n.i11 to i32
  tail call void @sha1_block_data_order(%SHA_CTX* nonnull %27, i8* %62, i32 %63)
  %64 = and i64 %53, -64
  %65 = or i64 %64, %__v57_res.i7
  %66 = sub nsw i64 %53, %64
  br label %67

; <label>:67:                                     ; preds = %61, %52
  %__v54_inp.1.i13 = phi i64 [ %65, %61 ], [ %__v57_res.i7, %52 ]
  %__v55__len.1.i14 = phi i64 [ %66, %61 ], [ %53, %52 ]
  %68 = icmp eq i64 %__v55__len.1.i14, 0
  br i1 %68, label %.SHA1_Update_public.exit15_crit_edge, label %.thread28

.SHA1_Update_public.exit15_crit_edge:             ; preds = %67
  %.pre = load i32, i32* %42, align 4
  br label %SHA1_Update_public.exit15

.thread28:                                        ; preds = %9, %67
  %__v55__len.1.i1430 = phi i64 [ %__v55__len.1.i14, %67 ], [ 13, %9 ]
  %__v54_inp.1.i1329 = phi i64 [ %__v54_inp.1.i13, %67 ], [ 0, %9 ]
  %69 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 3, i32 3, i64 0
  %70 = getelementptr %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 5, i64 %__v54_inp.1.i1329
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %69, i8* %70, i64 %__v55__len.1.i1430, i32 1, i1 false) #1
  %71 = load i32, i32* %42, align 4
  %72 = trunc i64 %__v55__len.1.i1430 to i32
  %73 = add i32 %71, %72
  store i32 %73, i32* %42, align 4
  br label %SHA1_Update_public.exit15

SHA1_Update_public.exit15:                        ; preds = %.SHA1_Update_public.exit15_crit_edge, %.thread28
  %__v56_num.i17 = phi i32 [ %.pre, %.SHA1_Update_public.exit15_crit_edge ], [ %73, %.thread28 ]
  %74 = icmp ugt i32 %10, 339
  %75 = add i32 %10, -276
  %76 = and i32 %75, -64
  %77 = sub i32 %76, %__v56_num.i17
  %__v23_minlen = select i1 %74, i32 %77, i32 0
  %78 = icmp eq i32 %__v23_minlen, 0
  br i1 %78, label %SHA1_Update_public.exit26, label %81

; <label>:79:                                     ; preds = %5
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %__v1_iv, i8* %__v4__in, i64 16, i32 1, i1 false) #1
  %80 = add i32 %3, -16
  br label %9

; <label>:81:                                     ; preds = %SHA1_Update_public.exit15
  %__v120_lexpr = zext i32 %__v23_minlen to i64
  %__v52_l.i = shl nuw nsw i64 %__v120_lexpr, 3
  %82 = load i32, i32* %31, align 4
  %83 = zext i32 %82 to i64
  %84 = shl nuw i64 %83, 32
  %85 = load i32, i32* %35, align 4
  %86 = zext i32 %85 to i64
  %87 = or i64 %84, %86
  %__v53_N.i16 = add i64 %87, %__v52_l.i
  %88 = lshr i64 %__v53_N.i16, 32
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %31, align 4
  %90 = trunc i64 %__v53_N.i16 to i32
  store i32 %90, i32* %35, align 4
  %91 = icmp eq i32 %__v56_num.i17, 0
  br i1 %91, label %99, label %92

; <label>:92:                                     ; preds = %81
  %93 = sub i32 64, %__v56_num.i17
  %94 = zext i32 %93 to i64
  %95 = icmp ugt i64 %94, %__v120_lexpr
  %__v57_res.i18 = select i1 %95, i64 %__v120_lexpr, i64 %94
  %__v133_lexpr.i19 = zext i32 %__v56_num.i17 to i64
  %96 = getelementptr %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 3, i32 3, i64 %__v133_lexpr.i19
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %96, i8* %13, i64 %__v57_res.i18, i32 1, i1 false) #1
  %97 = add nuw nsw i64 %__v57_res.i18, %__v133_lexpr.i19
  %98 = icmp eq i64 %97, 64
  br i1 %98, label %101, label %103

; <label>:99:                                     ; preds = %81, %107
  %__v54_inp.0.i20 = phi i64 [ %__v57_res.i18, %107 ], [ 0, %81 ]
  %__v55__len.0.i21 = phi i64 [ %108, %107 ], [ %__v120_lexpr, %81 ]
  %__v58_n.i22 = lshr i64 %__v55__len.0.i21, 6
  %100 = icmp eq i64 %__v58_n.i22, 0
  br i1 %100, label %115, label %109

; <label>:101:                                    ; preds = %92
  %102 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 3, i32 3, i64 0
  tail call void @sha1_block_data_order(%SHA_CTX* nonnull %27, i8* nonnull %102, i32 1)
  br label %107

; <label>:103:                                    ; preds = %92
  %104 = load i32, i32* %42, align 4
  %105 = trunc i64 %__v57_res.i18 to i32
  %106 = add i32 %104, %105
  br label %107

; <label>:107:                                    ; preds = %103, %101
  %storemerge.i23 = phi i32 [ 0, %101 ], [ %106, %103 ]
  store i32 %storemerge.i23, i32* %42, align 4
  %108 = sub nsw i64 %__v120_lexpr, %__v57_res.i18
  br label %99

; <label>:109:                                    ; preds = %99
  %110 = getelementptr i8, i8* %13, i64 %__v54_inp.0.i20
  %111 = trunc i64 %__v58_n.i22 to i32
  tail call void @sha1_block_data_order(%SHA_CTX* nonnull %27, i8* %110, i32 %111)
  %112 = and i64 %__v55__len.0.i21, -64
  %113 = add nsw i64 %112, %__v54_inp.0.i20
  %114 = sub nsw i64 %__v55__len.0.i21, %112
  br label %115

; <label>:115:                                    ; preds = %109, %99
  %__v54_inp.1.i24 = phi i64 [ %113, %109 ], [ %__v54_inp.0.i20, %99 ]
  %__v55__len.1.i25 = phi i64 [ %114, %109 ], [ %__v55__len.0.i21, %99 ]
  %116 = icmp eq i64 %__v55__len.1.i25, 0
  br i1 %116, label %SHA1_Update_public.exit26, label %117

; <label>:117:                                    ; preds = %115
  %118 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 3, i32 3, i64 0
  %119 = getelementptr i8, i8* %13, i64 %__v54_inp.1.i24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %118, i8* %119, i64 %__v55__len.1.i25, i32 1, i1 false) #1
  %120 = load i32, i32* %42, align 4
  %121 = trunc i64 %__v55__len.1.i25 to i32
  %122 = add i32 %120, %121
  store i32 %122, i32* %42, align 4
  br label %SHA1_Update_public.exit26

SHA1_Update_public.exit26:                        ; preds = %117, %115, %SHA1_Update_public.exit15
  %123 = add i32 %__v23_minlen, %11
  %__v121_lexpr = zext i32 %123 to i64
  %124 = sub i32 %10, %__v23_minlen
  %__v124_lexpr = zext i32 %124 to i64
  %125 = getelementptr i8, i8* %__v3__out, i64 %__v121_lexpr
  %126 = sub i32 %__v20_inp_len, %__v23_minlen
  call fastcc void @SHA1_Update_secret(%SHA_CTX* nonnull %27, i32* nonnull %__v21_ctx_num, i8* %125, i64 %__v124_lexpr, i32 %126)
  %127 = load i32, i32* %__v21_ctx_num, align 4
  call fastcc void @SHA1_Final_secret(i8* nonnull %__v22_pmac4.sub, %SHA_CTX* nonnull %27, i32 %127)
  %128 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 2
  %129 = bitcast %SHA_CTX* %128 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* nonnull %129, i64 96, i32 1, i1 false) #1
  %130 = load i32, i32* %31, align 4
  %131 = zext i32 %130 to i64
  %132 = shl nuw i64 %131, 32
  %133 = load i32, i32* %35, align 4
  %134 = zext i32 %133 to i64
  %135 = or i64 %132, %134
  %__v53_N.i = add i64 %135, 160
  %136 = lshr i64 %__v53_N.i, 32
  %137 = trunc i64 %136 to i32
  store i32 %137, i32* %31, align 4
  %138 = trunc i64 %__v53_N.i to i32
  store i32 %138, i32* %35, align 4
  %__v56_num.i = load i32, i32* %42, align 4
  %139 = icmp eq i32 %__v56_num.i, 0
  br i1 %139, label %.thread33, label %140

; <label>:140:                                    ; preds = %SHA1_Update_public.exit26
  %141 = sub i32 64, %__v56_num.i
  %142 = zext i32 %141 to i64
  %143 = icmp ult i64 %142, 20
  %__v57_res.i = select i1 %143, i64 %142, i64 20
  %__v133_lexpr.i = zext i32 %__v56_num.i to i64
  %144 = getelementptr %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 3, i32 3, i64 %__v133_lexpr.i
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %144, i8* nonnull %__v22_pmac4.sub, i64 %__v57_res.i, i32 1, i1 false) #1
  %145 = add nuw nsw i64 %__v57_res.i, %__v133_lexpr.i
  %146 = icmp eq i64 %145, 64
  br i1 %146, label %150, label %152

; <label>:147:                                    ; preds = %150, %152
  %storemerge.i = phi i32 [ 0, %150 ], [ %155, %152 ]
  store i32 %storemerge.i, i32* %42, align 4
  %148 = sub nsw i64 20, %__v57_res.i
  %__v58_n.i = lshr i64 %148, 6
  %149 = icmp eq i64 %__v58_n.i, 0
  br i1 %149, label %162, label %156

; <label>:150:                                    ; preds = %140
  %151 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 3, i32 3, i64 0
  tail call void @sha1_block_data_order(%SHA_CTX* nonnull %27, i8* nonnull %151, i32 1)
  br label %147

; <label>:152:                                    ; preds = %140
  %153 = load i32, i32* %42, align 4
  %154 = trunc i64 %__v57_res.i to i32
  %155 = add i32 %153, %154
  br label %147

; <label>:156:                                    ; preds = %147
  %157 = getelementptr [20 x i8], [20 x i8]* %__v22_pmac4, i64 0, i64 %__v57_res.i
  %158 = trunc i64 %__v58_n.i to i32
  call void @sha1_block_data_order(%SHA_CTX* nonnull %27, i8* %157, i32 %158)
  %159 = and i64 %148, -64
  %160 = or i64 %159, %__v57_res.i
  %161 = sub nsw i64 %148, %159
  br label %162

; <label>:162:                                    ; preds = %156, %147
  %__v54_inp.1.i = phi i64 [ %160, %156 ], [ %__v57_res.i, %147 ]
  %__v55__len.1.i = phi i64 [ %161, %156 ], [ %148, %147 ]
  %163 = icmp eq i64 %__v55__len.1.i, 0
  br i1 %163, label %.SHA1_Update_public.exit_crit_edge, label %..thread33_crit_edge

..thread33_crit_edge:                             ; preds = %162
  %.pre42 = getelementptr [20 x i8], [20 x i8]* %__v22_pmac4, i64 0, i64 %__v54_inp.1.i
  br label %.thread33

.SHA1_Update_public.exit_crit_edge:               ; preds = %162
  %.pre40 = load i32, i32* %42, align 4
  %.pre41 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 3, i32 3, i64 0
  br label %SHA1_Update_public.exit

.thread33:                                        ; preds = %..thread33_crit_edge, %SHA1_Update_public.exit26
  %.pre-phi43 = phi i8* [ %.pre42, %..thread33_crit_edge ], [ %__v22_pmac4.sub, %SHA1_Update_public.exit26 ]
  %__v55__len.1.i35 = phi i64 [ %__v55__len.1.i, %..thread33_crit_edge ], [ 20, %SHA1_Update_public.exit26 ]
  %164 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 3, i32 3, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %164, i8* %.pre-phi43, i64 %__v55__len.1.i35, i32 1, i1 false) #1
  %165 = load i32, i32* %42, align 4
  %166 = trunc i64 %__v55__len.1.i35 to i32
  %167 = add i32 %165, %166
  store i32 %167, i32* %42, align 4
  br label %SHA1_Update_public.exit

SHA1_Update_public.exit:                          ; preds = %.SHA1_Update_public.exit_crit_edge, %.thread33
  %.pre-phi = phi i8* [ %.pre41, %.SHA1_Update_public.exit_crit_edge ], [ %164, %.thread33 ]
  %168 = phi i32 [ %.pre40, %.SHA1_Update_public.exit_crit_edge ], [ %167, %.thread33 ]
  %__v148_lexpr.i = zext i32 %168 to i64
  %169 = getelementptr %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 3, i32 3, i64 %__v148_lexpr.i
  store i8 -128, i8* %169, align 1
  %170 = add i32 %168, 1
  %171 = zext i32 %170 to i64
  %172 = icmp ugt i32 %170, 56
  br i1 %172, label %173, label %SHA1_Final_public.exit

; <label>:173:                                    ; preds = %SHA1_Update_public.exit
  %__v154_lexpr.i = sub nsw i64 64, %171
  %174 = getelementptr %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 3, i32 3, i64 %171
  call void @llvm.memset.p0i8.i64(i8* %174, i8 0, i64 %__v154_lexpr.i, i32 1, i1 false) #1
  call void @sha1_block_data_order(%SHA_CTX* nonnull %27, i8* nonnull %.pre-phi, i32 1)
  br label %SHA1_Final_public.exit

SHA1_Final_public.exit:                           ; preds = %SHA1_Update_public.exit, %173
  %__v90_num.0.i = phi i32 [ 0, %173 ], [ %170, %SHA1_Update_public.exit ]
  %175 = zext i32 %__v90_num.0.i to i64
  %__v160_lexpr.i = sub nsw i64 56, %175
  %176 = getelementptr %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 3, i32 3, i64 %175
  call void @llvm.memset.p0i8.i64(i8* %176, i8 0, i64 %__v160_lexpr.i, i32 1, i1 false) #1
  %177 = getelementptr %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 3, i32 3, i64 56
  %178 = load i32, i32* %31, align 4
  %179 = lshr i32 %178, 24
  %180 = trunc i32 %179 to i8
  store i8 %180, i8* %177, align 1
  %181 = getelementptr %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 3, i32 3, i64 57
  %182 = lshr i32 %178, 16
  %183 = trunc i32 %182 to i8
  store i8 %183, i8* %181, align 1
  %184 = getelementptr %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 3, i32 3, i64 58
  %185 = lshr i32 %178, 8
  %186 = trunc i32 %185 to i8
  store i8 %186, i8* %184, align 1
  %187 = getelementptr %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 3, i32 3, i64 59
  %188 = trunc i32 %178 to i8
  store i8 %188, i8* %187, align 1
  %189 = getelementptr %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 3, i32 3, i64 60
  %190 = load i32, i32* %35, align 4
  %191 = lshr i32 %190, 24
  %192 = trunc i32 %191 to i8
  store i8 %192, i8* %189, align 1
  %193 = getelementptr %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 3, i32 3, i64 61
  %194 = lshr i32 %190, 16
  %195 = trunc i32 %194 to i8
  store i8 %195, i8* %193, align 1
  %196 = getelementptr %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 3, i32 3, i64 62
  %197 = lshr i32 %190, 8
  %198 = trunc i32 %197 to i8
  store i8 %198, i8* %196, align 1
  %199 = getelementptr %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 3, i32 3, i64 63
  %200 = trunc i32 %190 to i8
  store i8 %200, i8* %199, align 1
  call void @sha1_block_data_order(%SHA_CTX* nonnull %27, i8* nonnull %.pre-phi, i32 1)
  store i32 0, i32* %42, align 4
  call void @llvm.memset.p0i8.i64(i8* nonnull %.pre-phi, i8 0, i64 64, i32 1, i1 true) #1
  %201 = getelementptr %SHA_CTX, %SHA_CTX* %27, i64 0, i32 0, i64 0
  %202 = load i32, i32* %201, align 4
  %203 = lshr i32 %202, 24
  %204 = trunc i32 %203 to i8
  store i8 %204, i8* %__v22_pmac4.sub, align 1
  %205 = getelementptr inbounds [20 x i8], [20 x i8]* %__v22_pmac4, i64 0, i64 1
  %206 = lshr i32 %202, 16
  %207 = trunc i32 %206 to i8
  store i8 %207, i8* %205, align 1
  %208 = getelementptr inbounds [20 x i8], [20 x i8]* %__v22_pmac4, i64 0, i64 2
  %209 = lshr i32 %202, 8
  %210 = trunc i32 %209 to i8
  store i8 %210, i8* %208, align 1
  %211 = getelementptr inbounds [20 x i8], [20 x i8]* %__v22_pmac4, i64 0, i64 3
  %212 = trunc i32 %202 to i8
  store i8 %212, i8* %211, align 1
  %213 = getelementptr inbounds [20 x i8], [20 x i8]* %__v22_pmac4, i64 0, i64 4
  %214 = getelementptr %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 3, i32 0, i64 1
  %215 = load i32, i32* %214, align 4
  %216 = lshr i32 %215, 24
  %217 = trunc i32 %216 to i8
  store i8 %217, i8* %213, align 1
  %218 = getelementptr inbounds [20 x i8], [20 x i8]* %__v22_pmac4, i64 0, i64 5
  %219 = lshr i32 %215, 16
  %220 = trunc i32 %219 to i8
  store i8 %220, i8* %218, align 1
  %221 = getelementptr inbounds [20 x i8], [20 x i8]* %__v22_pmac4, i64 0, i64 6
  %222 = lshr i32 %215, 8
  %223 = trunc i32 %222 to i8
  store i8 %223, i8* %221, align 1
  %224 = getelementptr inbounds [20 x i8], [20 x i8]* %__v22_pmac4, i64 0, i64 7
  %225 = trunc i32 %215 to i8
  store i8 %225, i8* %224, align 1
  %226 = getelementptr inbounds [20 x i8], [20 x i8]* %__v22_pmac4, i64 0, i64 8
  %227 = getelementptr %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 3, i32 0, i64 2
  %228 = load i32, i32* %227, align 4
  %229 = lshr i32 %228, 24
  %230 = trunc i32 %229 to i8
  store i8 %230, i8* %226, align 1
  %231 = getelementptr inbounds [20 x i8], [20 x i8]* %__v22_pmac4, i64 0, i64 9
  %232 = lshr i32 %228, 16
  %233 = trunc i32 %232 to i8
  store i8 %233, i8* %231, align 1
  %234 = getelementptr inbounds [20 x i8], [20 x i8]* %__v22_pmac4, i64 0, i64 10
  %235 = lshr i32 %228, 8
  %236 = trunc i32 %235 to i8
  store i8 %236, i8* %234, align 1
  %237 = getelementptr inbounds [20 x i8], [20 x i8]* %__v22_pmac4, i64 0, i64 11
  %238 = trunc i32 %228 to i8
  store i8 %238, i8* %237, align 1
  %239 = getelementptr inbounds [20 x i8], [20 x i8]* %__v22_pmac4, i64 0, i64 12
  %240 = getelementptr %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 3, i32 0, i64 3
  %241 = load i32, i32* %240, align 4
  %242 = lshr i32 %241, 24
  %243 = trunc i32 %242 to i8
  store i8 %243, i8* %239, align 1
  %244 = getelementptr inbounds [20 x i8], [20 x i8]* %__v22_pmac4, i64 0, i64 13
  %245 = lshr i32 %241, 16
  %246 = trunc i32 %245 to i8
  store i8 %246, i8* %244, align 1
  %247 = getelementptr inbounds [20 x i8], [20 x i8]* %__v22_pmac4, i64 0, i64 14
  %248 = lshr i32 %241, 8
  %249 = trunc i32 %248 to i8
  store i8 %249, i8* %247, align 1
  %250 = getelementptr inbounds [20 x i8], [20 x i8]* %__v22_pmac4, i64 0, i64 15
  %251 = trunc i32 %241 to i8
  store i8 %251, i8* %250, align 1
  %252 = getelementptr inbounds [20 x i8], [20 x i8]* %__v22_pmac4, i64 0, i64 16
  %253 = getelementptr %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 3, i32 0, i64 4
  %254 = load i32, i32* %253, align 4
  %255 = lshr i32 %254, 24
  %256 = trunc i32 %255 to i8
  store i8 %256, i8* %252, align 1
  %257 = getelementptr inbounds [20 x i8], [20 x i8]* %__v22_pmac4, i64 0, i64 17
  %258 = lshr i32 %254, 16
  %259 = trunc i32 %258 to i8
  store i8 %259, i8* %257, align 1
  %260 = getelementptr inbounds [20 x i8], [20 x i8]* %__v22_pmac4, i64 0, i64 18
  %261 = lshr i32 %254, 8
  %262 = trunc i32 %261 to i8
  store i8 %262, i8* %260, align 1
  %263 = getelementptr inbounds [20 x i8], [20 x i8]* %__v22_pmac4, i64 0, i64 19
  %264 = trunc i32 %254 to i8
  store i8 %264, i8* %263, align 1
  %265 = icmp ult i32 %10, 276
  %__v24_pub_start = select i1 %265, i32 0, i32 %75
  %266 = add i32 %__v20_inp_len, %11
  %267 = add i32 %266, 20
  %__m3 = icmp ule i32 %267, %10
  %narrow = and i1 %__m3, %not.__m1
  %268 = zext i1 %narrow to i32
  %269 = add i32 %__v24_pub_start, %11
  %270 = icmp ult i32 %269, %10
  br i1 %270, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %SHA1_Final_public.exit
  %271 = zext i32 %269 to i64
  %272 = zext i32 %267 to i64
  %273 = zext i32 %266 to i64
  br label %274

; <label>:274:                                    ; preds = %.lr.ph, %274
  %indvars.iv = phi i64 [ %271, %.lr.ph ], [ %indvars.iv.next, %274 ]
  %__v25_i39 = phi i32 [ %269, %.lr.ph ], [ %290, %274 ]
  %__v13_ret.038 = phi i32 [ %268, %.lr.ph ], [ %289, %274 ]
  %275 = icmp uge i64 %indvars.iv, %273
  %276 = icmp ult i64 %indvars.iv, %272
  %277 = zext i1 %276 to i32
  %278 = call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %275, i32 %277, i32 0) #1
  %279 = and i32 %278, 1
  %280 = icmp ne i32 %279, 0
  %281 = trunc i64 %indvars.iv to i32
  %282 = sub i32 %281, %266
  %283 = zext i32 %282 to i64
  %__v126_lexpr = select i1 %280, i64 %283, i64 0
  %284 = getelementptr i8, i8* %__v3__out, i64 %indvars.iv
  %285 = load i8, i8* %284, align 1
  %286 = getelementptr [20 x i8], [20 x i8]* %__v22_pmac4, i64 0, i64 %__v126_lexpr
  %287 = load i8, i8* %286, align 1
  %__m6 = icmp ne i8 %285, %287
  %288 = and i1 %280, %__m6
  %289 = select i1 %288, i32 0, i32 %__v13_ret.038
  %290 = add i32 %__v25_i39, 1
  %291 = icmp ult i32 %290, %10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %291, label %274, label %.loopexit
}

attributes #0 = { argmemonly nounwind }
attributes #1 = { nounwind }
