; ModuleID = './20110823_fast.bc'
source_filename = "Module"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%SHA_CTX = type { [5 x i32], i32, i32, [64 x i8], i32 }
%AES_KEY = type { [60 x i32], i32 }
%EVP_AES_HMAC_SHA1 = type { %AES_KEY, %SHA_CTX, %SHA_CTX, %SHA_CTX, i64, [16 x i8] }

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #0

; Function Attrs: alwaysinline
define internal void @"__smemzero[8]_secret"(i8* %dst, i64 %len) #1 {
entry:
  call void @llvm.memset.p0i8.i64(i8* %dst, i8 0, i64 %len, i32 1, i1 true)
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #0

; Function Attrs: alwaysinline
define internal void @SHA1_MAKE_STRING(%SHA_CTX* %__v94_ctx, i8* %__v95_out) #1 {
entry:
  %__rctx.i = alloca i1
  %__rctx = alloca i1
  store i1 true, i1* %__rctx
  br label %0

; <label>:0:                                      ; preds = %19, %entry
  %__v96_i = phi i32 [ 0, %entry ], [ %20, %19 ]
  %1 = icmp ult i32 %__v96_i, 5
  br i1 %1, label %2, label %21

; <label>:2:                                      ; preds = %0
  %3 = mul i32 %__v96_i, 4
  %__v164_lexpr = zext i32 %3 to i64
  %__v165_lexpr = zext i32 %__v96_i to i64
  %4 = getelementptr i8, i8* %__v95_out, i64 %__v164_lexpr
  %5 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %__v94_ctx, i32 0, i32 0
  %6 = bitcast [5 x i32]* %5 to i32*
  %7 = getelementptr i32, i32* %6, i64 %__v165_lexpr
  %8 = load i32, i32* %7
  store i1 true, i1* %__rctx.i
  %9 = lshr i32 %8, 24
  %10 = trunc i32 %9 to i8
  store i8 %10, i8* %4
  %11 = getelementptr i8, i8* %4, i64 1
  %12 = lshr i32 %8, 16
  %13 = trunc i32 %12 to i8
  store i8 %13, i8* %11
  %14 = getelementptr i8, i8* %4, i64 2
  %15 = lshr i32 %8, 8
  %16 = trunc i32 %15 to i8
  store i8 %16, i8* %14
  %17 = getelementptr i8, i8* %4, i64 3
  %18 = trunc i32 %8 to i8
  store i8 %18, i8* %17
  br label %19

; <label>:19:                                     ; preds = %2
  %20 = add i32 %__v96_i, 1
  br label %0

; <label>:21:                                     ; preds = %0
  ret void
}

declare void @sha1_block_data_order(%SHA_CTX*, i8*, i32)

define internal void @SHA1_Final_public(i8* %__v88_out, %SHA_CTX* %__v89_ctx) {
entry:
  %__rctx.i2 = alloca i1
  %__rctx.i1 = alloca i1
  %__rctx.i.i = alloca i1
  %__rctx.i = alloca i1
  %__rctx = alloca i1
  store i1 true, i1* %__rctx
  %0 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %__v89_ctx, i32 0, i32 4
  %1 = load i32, i32* %0
  %__v90_num = alloca i32
  store i32 %1, i32* %__v90_num
  %2 = load i32, i32* %__v90_num
  %__v148_lexpr = zext i32 %2 to i64
  %3 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %__v89_ctx, i32 0, i32 3
  %4 = bitcast [64 x i8]* %3 to i8*
  %5 = getelementptr i8, i8* %4, i64 %__v148_lexpr
  store i8 -128, i8* %5
  %6 = load i32, i32* %__v90_num
  %7 = add i32 %6, 1
  store i32 %7, i32* %__v90_num
  %8 = load i32, i32* %__v90_num
  %9 = zext i32 %8 to i64
  %10 = icmp ugt i64 %9, 56
  br i1 %10, label %11, label %26

; <label>:11:                                     ; preds = %entry
  %12 = load i32, i32* %__v90_num
  %__v149_lexpr = zext i32 %12 to i64
  %13 = load i32, i32* %__v90_num
  %14 = zext i32 %13 to i64
  %__v150_lexpr = sub i64 64, %14
  %15 = load i32, i32* %__v90_num
  %__v151_lexpr = zext i32 %15 to i64
  %16 = load i32, i32* %__v90_num
  %17 = zext i32 %16 to i64
  %__v152_lexpr = sub i64 64, %17
  %18 = load i32, i32* %__v90_num
  %__v153_lexpr = zext i32 %18 to i64
  %19 = load i32, i32* %__v90_num
  %20 = zext i32 %19 to i64
  %__v154_lexpr = sub i64 64, %20
  %21 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %__v89_ctx, i32 0, i32 3
  %22 = bitcast [64 x i8]* %21 to i8*
  %23 = getelementptr i8, i8* %22, i64 %__v151_lexpr
  call void @llvm.memset.p0i8.i64(i8* %23, i8 0, i64 %__v154_lexpr, i32 1, i1 false)
  %24 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %__v89_ctx, i32 0, i32 3
  %25 = bitcast [64 x i8]* %24 to i8*
  call void @sha1_block_data_order(%SHA_CTX* %__v89_ctx, i8* %25, i32 1)
  store i32 0, i32* %__v90_num
  br label %27

; <label>:26:                                     ; preds = %entry
  br label %27

; <label>:27:                                     ; preds = %26, %11
  %28 = load i32, i32* %__v90_num
  %__v155_lexpr = zext i32 %28 to i64
  %29 = load i32, i32* %__v90_num
  %30 = zext i32 %29 to i64
  %__v156_lexpr = sub i64 56, %30
  %31 = load i32, i32* %__v90_num
  %__v157_lexpr = zext i32 %31 to i64
  %32 = load i32, i32* %__v90_num
  %33 = zext i32 %32 to i64
  %__v158_lexpr = sub i64 56, %33
  %34 = load i32, i32* %__v90_num
  %__v159_lexpr = zext i32 %34 to i64
  %35 = load i32, i32* %__v90_num
  %36 = zext i32 %35 to i64
  %__v160_lexpr = sub i64 56, %36
  %37 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %__v89_ctx, i32 0, i32 3
  %38 = bitcast [64 x i8]* %37 to i8*
  %39 = getelementptr i8, i8* %38, i64 %__v157_lexpr
  call void @llvm.memset.p0i8.i64(i8* %39, i8 0, i64 %__v160_lexpr, i32 1, i1 false)
  %40 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %__v89_ctx, i32 0, i32 3
  %41 = bitcast [64 x i8]* %40 to i8*
  %42 = getelementptr i8, i8* %41, i64 56
  %43 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %__v89_ctx, i32 0, i32 2
  %44 = load i32, i32* %43
  store i1 true, i1* %__rctx.i2
  %45 = lshr i32 %44, 24
  %46 = trunc i32 %45 to i8
  store i8 %46, i8* %42
  %47 = getelementptr i8, i8* %42, i64 1
  %48 = lshr i32 %44, 16
  %49 = trunc i32 %48 to i8
  store i8 %49, i8* %47
  %50 = getelementptr i8, i8* %42, i64 2
  %51 = lshr i32 %44, 8
  %52 = trunc i32 %51 to i8
  store i8 %52, i8* %50
  %53 = getelementptr i8, i8* %42, i64 3
  %54 = trunc i32 %44 to i8
  store i8 %54, i8* %53
  %55 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %__v89_ctx, i32 0, i32 3
  %56 = bitcast [64 x i8]* %55 to i8*
  %57 = getelementptr i8, i8* %56, i64 60
  %58 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %__v89_ctx, i32 0, i32 1
  %59 = load i32, i32* %58
  store i1 true, i1* %__rctx.i1
  %60 = lshr i32 %59, 24
  %61 = trunc i32 %60 to i8
  store i8 %61, i8* %57
  %62 = getelementptr i8, i8* %57, i64 1
  %63 = lshr i32 %59, 16
  %64 = trunc i32 %63 to i8
  store i8 %64, i8* %62
  %65 = getelementptr i8, i8* %57, i64 2
  %66 = lshr i32 %59, 8
  %67 = trunc i32 %66 to i8
  store i8 %67, i8* %65
  %68 = getelementptr i8, i8* %57, i64 3
  %69 = trunc i32 %59 to i8
  store i8 %69, i8* %68
  %70 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %__v89_ctx, i32 0, i32 3
  %71 = bitcast [64 x i8]* %70 to i8*
  call void @sha1_block_data_order(%SHA_CTX* %__v89_ctx, i8* %71, i32 1)
  %72 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %__v89_ctx, i32 0, i32 4
  store i32 0, i32* %72
  %73 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %__v89_ctx, i32 0, i32 3
  %74 = bitcast [64 x i8]* %73 to i8*
  call void @llvm.memset.p0i8.i64(i8* %74, i8 0, i64 64, i32 1, i1 true)
  store i1 true, i1* %__rctx.i
  br label %75

; <label>:75:                                     ; preds = %77, %27
  %__v96_i.i = phi i32 [ 0, %27 ], [ %94, %77 ]
  %76 = icmp ult i32 %__v96_i.i, 5
  br i1 %76, label %77, label %SHA1_MAKE_STRING.exit

; <label>:77:                                     ; preds = %75
  %78 = mul i32 %__v96_i.i, 4
  %__v164_lexpr.i = zext i32 %78 to i64
  %__v165_lexpr.i = zext i32 %__v96_i.i to i64
  %79 = getelementptr i8, i8* %__v88_out, i64 %__v164_lexpr.i
  %80 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %__v89_ctx, i32 0, i32 0
  %81 = bitcast [5 x i32]* %80 to i32*
  %82 = getelementptr i32, i32* %81, i64 %__v165_lexpr.i
  %83 = load i32, i32* %82
  store i1 true, i1* %__rctx.i.i
  %84 = lshr i32 %83, 24
  %85 = trunc i32 %84 to i8
  store i8 %85, i8* %79
  %86 = getelementptr i8, i8* %79, i64 1
  %87 = lshr i32 %83, 16
  %88 = trunc i32 %87 to i8
  store i8 %88, i8* %86
  %89 = getelementptr i8, i8* %79, i64 2
  %90 = lshr i32 %83, 8
  %91 = trunc i32 %90 to i8
  store i8 %91, i8* %89
  %92 = getelementptr i8, i8* %79, i64 3
  %93 = trunc i32 %83 to i8
  store i8 %93, i8* %92
  %94 = add i32 %__v96_i.i, 1
  br label %75

SHA1_MAKE_STRING.exit:                            ; preds = %75
  ret void
}

define internal void @SHA1_Final_secret(i8* %__v79_out, %SHA_CTX* %__v80_ctx, i32 %__v81_ctx_num) {
entry:
  %__rctx.i2 = alloca i1
  %__rctx.i1 = alloca i1
  %__rctx.i.i = alloca i1
  %__rctx.i = alloca i1
  %__rctx = alloca i1
  store i1 true, i1* %__rctx
  %0 = zext i32 %__v81_ctx_num to i64
  %__m23 = icmp ult i64 %0, 56
  br label %1

; <label>:1:                                      ; preds = %24, %entry
  %__v83_i = phi i64 [ 0, %entry ], [ %25, %24 ]
  %2 = icmp ult i64 %__v83_i, 64
  br i1 %2, label %3, label %26

; <label>:3:                                      ; preds = %1
  %4 = zext i32 %__v81_ctx_num to i64
  %__m25 = icmp eq i64 %__v83_i, %4
  %5 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %__v80_ctx, i32 0, i32 3
  %6 = bitcast [64 x i8]* %5 to i8*
  %7 = getelementptr i8, i8* %6, i64 %__v83_i
  %8 = and i1 true, %__m25
  %9 = load i8, i8* %7
  %10 = zext i8 %9 to i32
  %11 = call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %8, i32 128, i32 %10)
  %12 = trunc i32 %11 to i8
  store i8 %12, i8* %7
  %__m26 = xor i1 %__m25, true
  %13 = zext i32 %__v81_ctx_num to i64
  %__m27 = icmp ugt i64 %__v83_i, %13
  %14 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %__v80_ctx, i32 0, i32 3
  %15 = bitcast [64 x i8]* %14 to i8*
  %16 = getelementptr i8, i8* %15, i64 %__v83_i
  %17 = and i1 true, %__m27
  %18 = and i1 %17, %__m26
  %19 = load i8, i8* %16
  %20 = zext i8 %19 to i32
  %21 = call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %18, i32 0, i32 %20)
  %22 = trunc i32 %21 to i8
  store i8 %22, i8* %16
  %23 = icmp uge i64 %__v83_i, 60
  br i1 %23, label %68, label %86

; <label>:24:                                     ; preds = %88
  %25 = add i64 %__v83_i, 1
  br label %1

; <label>:26:                                     ; preds = %1
  %27 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %__v80_ctx, i32 0, i32 3
  %28 = bitcast [64 x i8]* %27 to i8*
  call void @sha1_block_data_order(%SHA_CTX* %__v80_ctx, i8* %28, i32 1)
  %29 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %__v80_ctx, i32 0, i32 3
  %30 = bitcast [64 x i8]* %29 to i8*
  %31 = getelementptr i8, i8* %30, i64 0
  call void @llvm.memset.p0i8.i64(i8* %31, i8 0, i64 56, i32 1, i1 false)
  %32 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %__v80_ctx, i32 0, i32 3
  %33 = bitcast [64 x i8]* %32 to i8*
  %34 = getelementptr i8, i8* %33, i64 56
  %35 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %__v80_ctx, i32 0, i32 2
  %36 = load i32, i32* %35
  store i1 true, i1* %__rctx.i1
  %37 = lshr i32 %36, 24
  %38 = trunc i32 %37 to i8
  store i8 %38, i8* %34
  %39 = getelementptr i8, i8* %34, i64 1
  %40 = lshr i32 %36, 16
  %41 = trunc i32 %40 to i8
  store i8 %41, i8* %39
  %42 = getelementptr i8, i8* %34, i64 2
  %43 = lshr i32 %36, 8
  %44 = trunc i32 %43 to i8
  store i8 %44, i8* %42
  %45 = getelementptr i8, i8* %34, i64 3
  %46 = trunc i32 %36 to i8
  store i8 %46, i8* %45
  %47 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %__v80_ctx, i32 0, i32 3
  %48 = bitcast [64 x i8]* %47 to i8*
  %49 = getelementptr i8, i8* %48, i64 60
  %50 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %__v80_ctx, i32 0, i32 1
  %51 = load i32, i32* %50
  store i1 true, i1* %__rctx.i2
  %52 = lshr i32 %51, 24
  %53 = trunc i32 %52 to i8
  store i8 %53, i8* %49
  %54 = getelementptr i8, i8* %49, i64 1
  %55 = lshr i32 %51, 16
  %56 = trunc i32 %55 to i8
  store i8 %56, i8* %54
  %57 = getelementptr i8, i8* %49, i64 2
  %58 = lshr i32 %51, 8
  %59 = trunc i32 %58 to i8
  store i8 %59, i8* %57
  %60 = getelementptr i8, i8* %49, i64 3
  %61 = trunc i32 %51 to i8
  store i8 %61, i8* %60
  %62 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %__v80_ctx, i32 0, i32 0
  %63 = bitcast [5 x i32]* %62 to i32*
  %__v86_h = alloca i32, i64 5
  %64 = bitcast i32* %__v86_h to i8*
  %65 = bitcast i32* %63 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %64, i8* %65, i64 20, i32 4, i1 false)
  %66 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %__v80_ctx, i32 0, i32 3
  %67 = bitcast [64 x i8]* %66 to i8*
  call void @sha1_block_data_order(%SHA_CTX* %__v80_ctx, i8* %67, i32 1)
  br label %109

; <label>:68:                                     ; preds = %3
  %69 = sub i64 63, %__v83_i
  %__v84_shift = mul i64 %69, 8
  %70 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %__v80_ctx, i32 0, i32 3
  %71 = bitcast [64 x i8]* %70 to i8*
  %72 = getelementptr i8, i8* %71, i64 %__v83_i
  %73 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %__v80_ctx, i32 0, i32 1
  %74 = load i32, i32* %73
  %75 = trunc i64 %__v84_shift to i32
  %76 = lshr i32 %74, %75
  %77 = trunc i32 %76 to i8
  %78 = and i1 true, %__m23
  %79 = and i1 %78, %__m27
  %80 = and i1 %79, %__m26
  %81 = load i8, i8* %72
  %82 = zext i8 %77 to i32
  %83 = zext i8 %81 to i32
  %84 = call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %80, i32 %82, i32 %83)
  %85 = trunc i32 %84 to i8
  store i8 %85, i8* %72
  br label %88

; <label>:86:                                     ; preds = %3
  %87 = icmp uge i64 %__v83_i, 56
  br i1 %87, label %89, label %107

; <label>:88:                                     ; preds = %108, %68
  %__m29 = xor i1 %__m23, true
  %__m30 = xor i1 %__m27, true
  br label %24

; <label>:89:                                     ; preds = %86
  %90 = sub i64 59, %__v83_i
  %__v85_shift = mul i64 %90, 8
  %91 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %__v80_ctx, i32 0, i32 3
  %92 = bitcast [64 x i8]* %91 to i8*
  %93 = getelementptr i8, i8* %92, i64 %__v83_i
  %94 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %__v80_ctx, i32 0, i32 2
  %95 = load i32, i32* %94
  %96 = trunc i64 %__v85_shift to i32
  %97 = lshr i32 %95, %96
  %98 = trunc i32 %97 to i8
  %99 = and i1 true, %__m23
  %100 = and i1 %99, %__m27
  %101 = and i1 %100, %__m26
  %102 = load i8, i8* %93
  %103 = zext i8 %98 to i32
  %104 = zext i8 %102 to i32
  %105 = call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %101, i32 %103, i32 %104)
  %106 = trunc i32 %105 to i8
  store i8 %106, i8* %93
  br label %108

; <label>:107:                                    ; preds = %86
  br label %108

; <label>:108:                                    ; preds = %107, %89
  br label %88

; <label>:109:                                    ; preds = %120, %26
  %__v87_j = phi i32 [ 0, %26 ], [ %121, %120 ]
  %110 = icmp ult i32 %__v87_j, 5
  br i1 %110, label %111, label %122

; <label>:111:                                    ; preds = %109
  %__v146_lexpr = zext i32 %__v87_j to i64
  %__v147_lexpr = zext i32 %__v87_j to i64
  %112 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %__v80_ctx, i32 0, i32 0
  %113 = bitcast [5 x i32]* %112 to i32*
  %114 = getelementptr i32, i32* %113, i64 %__v146_lexpr
  %115 = getelementptr i32, i32* %__v86_h, i64 %__v147_lexpr
  %116 = load i32, i32* %115
  %117 = and i1 true, %__m23
  %118 = load i32, i32* %114
  %119 = call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %117, i32 %116, i32 %118)
  store i32 %119, i32* %114
  br label %120

; <label>:120:                                    ; preds = %111
  %121 = add i32 %__v87_j, 1
  br label %109

; <label>:122:                                    ; preds = %109
  %__m24 = xor i1 %__m23, true
  %123 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %__v80_ctx, i32 0, i32 4
  store i32 0, i32* %123
  %124 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %__v80_ctx, i32 0, i32 3
  %125 = bitcast [64 x i8]* %124 to i8*
  call void @llvm.memset.p0i8.i64(i8* %125, i8 0, i64 64, i32 1, i1 true)
  store i1 true, i1* %__rctx.i
  br label %126

; <label>:126:                                    ; preds = %128, %122
  %__v96_i.i = phi i32 [ 0, %122 ], [ %145, %128 ]
  %127 = icmp ult i32 %__v96_i.i, 5
  br i1 %127, label %128, label %SHA1_MAKE_STRING.exit

; <label>:128:                                    ; preds = %126
  %129 = mul i32 %__v96_i.i, 4
  %__v164_lexpr.i = zext i32 %129 to i64
  %__v165_lexpr.i = zext i32 %__v96_i.i to i64
  %130 = getelementptr i8, i8* %__v79_out, i64 %__v164_lexpr.i
  %131 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %__v80_ctx, i32 0, i32 0
  %132 = bitcast [5 x i32]* %131 to i32*
  %133 = getelementptr i32, i32* %132, i64 %__v165_lexpr.i
  %134 = load i32, i32* %133
  store i1 true, i1* %__rctx.i.i
  %135 = lshr i32 %134, 24
  %136 = trunc i32 %135 to i8
  store i8 %136, i8* %130
  %137 = getelementptr i8, i8* %130, i64 1
  %138 = lshr i32 %134, 16
  %139 = trunc i32 %138 to i8
  store i8 %139, i8* %137
  %140 = getelementptr i8, i8* %130, i64 2
  %141 = lshr i32 %134, 8
  %142 = trunc i32 %141 to i8
  store i8 %142, i8* %140
  %143 = getelementptr i8, i8* %130, i64 3
  %144 = trunc i32 %134 to i8
  store i8 %144, i8* %143
  %145 = add i32 %__v96_i.i, 1
  br label %126

SHA1_MAKE_STRING.exit:                            ; preds = %126
  ret void
}

; Function Attrs: alwaysinline
define internal i8 @fact.cmov.asm.i8(i1 %cond, i8 %x, i8 %y) #1 {
entry:
  %0 = zext i8 %x to i32
  %1 = zext i8 %y to i32
  %2 = call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %cond, i32 %0, i32 %1)
  %3 = trunc i32 %2 to i8
  ret i8 %3
}

; Function Attrs: alwaysinline
define internal void @fact.memcpy.i32(i32* %dst, i32* %src, i64 %len) #1 {
entry:
  %0 = bitcast i32* %dst to i8*
  %1 = bitcast i32* %src to i8*
  %2 = mul i64 %len, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 %2, i32 4, i1 false)
  ret void
}

; Function Attrs: alwaysinline
define internal i32 @fact.cmov.asm.i32(i1 %cond, i32 %x, i32 %y) #1 {
entry:
  %0 = call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %cond, i32 %x, i32 %y)
  ret i32 %0
}

define internal void @SHA1_Update_Final_secret(%SHA_CTX* %__v60_ctx, i8* %__v61__in, i64 %__v106___v61__in_len, i32 %__v62_slen, i8* %__v63_out) {
entry:
  %__rctx = alloca i1
  store i1 true, i1* %__rctx
  %0 = zext i32 %__v62_slen to i64
  %__v64_l = shl i64 %0, 3
  %1 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %__v60_ctx, i32 0, i32 2
  %2 = load i32, i32* %1
  %3 = zext i32 %2 to i64
  %4 = shl i64 %3, 32
  %5 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %__v60_ctx, i32 0, i32 1
  %6 = load i32, i32* %5
  %7 = zext i32 %6 to i64
  %8 = or i64 %4, %7
  %__v65_N = add i64 %8, %__v64_l
  %9 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %__v60_ctx, i32 0, i32 2
  %10 = lshr i64 %__v65_N, 32
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %9
  %12 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %__v60_ctx, i32 0, i32 1
  %13 = trunc i64 %__v65_N to i32
  store i32 %13, i32* %12
  %14 = add i64 %__v106___v61__in_len, 1
  %__v66_maxlen = add i64 %14, 8
  %__v67_nblocks = udiv i64 %__v66_maxlen, 64
  %__v68_remain = urem i64 %__v66_maxlen, 64
  %15 = icmp ugt i64 %__v68_remain, 0
  %__v69_semi_block = select i1 %15, i64 1, i64 0
  %16 = add i64 %__v67_nblocks, %__v69_semi_block
  %__v70_nbytes = mul i64 %16, 64
  %17 = and i32 %__v62_slen, 63
  %__v71_num = zext i32 %17 to i64
  %__v72_len_in_first_block = icmp ult i64 %__v71_num, 56
  %__v73_done = alloca i1
  store i1 false, i1* %__v73_done
  br label %18

; <label>:18:                                     ; preds = %23, %entry
  %__v74_i = phi i64 [ 0, %entry ], [ %24, %23 ]
  %19 = icmp ult i64 %__v74_i, %__v70_nbytes
  br i1 %19, label %20, label %25

; <label>:20:                                     ; preds = %18
  %__v75_j = urem i64 %__v74_i, 64
  %21 = zext i32 %__v62_slen to i64
  %__m13 = icmp ult i64 %__v74_i, %21
  %22 = icmp ult i64 %__v74_i, %__v106___v61__in_len
  br i1 %22, label %29, label %38

; <label>:23:                                     ; preds = %73
  %24 = add i64 %__v74_i, 1
  br label %18

; <label>:25:                                     ; preds = %18
  %26 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %__v60_ctx, i32 0, i32 4
  store i32 0, i32* %26
  %27 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %__v60_ctx, i32 0, i32 3
  %28 = bitcast [64 x i8]* %27 to i8*
  call void @"__smemzero[8]_secret"(i8* %28, i64 64)
  call void @SHA1_MAKE_STRING(%SHA_CTX* %__v60_ctx, i8* %__v63_out)
  ret void

; <label>:29:                                     ; preds = %20
  %30 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %__v60_ctx, i32 0, i32 3
  %31 = bitcast [64 x i8]* %30 to i8*
  %32 = getelementptr i8, i8* %31, i64 %__v75_j
  %33 = getelementptr i8, i8* %__v61__in, i64 %__v74_i
  %34 = load i8, i8* %33
  %35 = and i1 true, %__m13
  %36 = load i8, i8* %32
  %37 = call i8 @fact.cmov.asm.i8(i1 %35, i8 %34, i8 %36)
  store i8 %37, i8* %32
  br label %39

; <label>:38:                                     ; preds = %20
  br label %39

; <label>:39:                                     ; preds = %38, %29
  %__m14 = xor i1 %__m13, true
  %40 = zext i32 %__v62_slen to i64
  %__m15 = icmp eq i64 %__v74_i, %40
  %41 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %__v60_ctx, i32 0, i32 3
  %42 = bitcast [64 x i8]* %41 to i8*
  %43 = getelementptr i8, i8* %42, i64 %__v75_j
  %44 = and i1 true, %__m15
  %45 = and i1 %44, %__m14
  %46 = load i8, i8* %43
  %47 = call i8 @fact.cmov.asm.i8(i1 %45, i8 -128, i8 %46)
  store i8 %47, i8* %43
  %__m16 = xor i1 %__m15, true
  %48 = zext i32 %__v62_slen to i64
  %49 = add i64 %48, 64
  %50 = icmp ugt i64 %__v74_i, %49
  %__m17 = call i1 @fact.select.asm.i1(i1 %__v72_len_in_first_block, i1 true, i1 %50)
  %51 = icmp uge i64 %__v75_j, 56
  br i1 %51, label %52, label %64

; <label>:52:                                     ; preds = %39
  %53 = sub i64 63, %__v75_j
  %__v76_shift = mul i64 %53, 8
  %54 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %__v60_ctx, i32 0, i32 3
  %55 = bitcast [64 x i8]* %54 to i8*
  %56 = getelementptr i8, i8* %55, i64 %__v75_j
  %57 = lshr i64 %__v65_N, %__v76_shift
  %58 = trunc i64 %57 to i8
  %59 = and i1 true, %__m17
  %60 = and i1 %59, %__m16
  %61 = and i1 %60, %__m14
  %62 = load i8, i8* %56
  %63 = call i8 @fact.cmov.asm.i8(i1 %61, i8 %58, i8 %62)
  store i8 %63, i8* %56
  br label %65

; <label>:64:                                     ; preds = %39
  br label %65

; <label>:65:                                     ; preds = %64, %52
  %__m18 = xor i1 %__m17, true
  %66 = icmp eq i64 %__v75_j, 63
  br i1 %66, label %67, label %72

; <label>:67:                                     ; preds = %65
  %68 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %__v60_ctx, i32 0, i32 0
  %69 = bitcast [5 x i32]* %68 to i32*
  %__v77_h = alloca i32, i64 5
  call void @fact.memcpy.i32(i32* %__v77_h, i32* %69, i64 5)
  %70 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %__v60_ctx, i32 0, i32 3
  %71 = bitcast [64 x i8]* %70 to i8*
  call void @sha1_block_data_order(%SHA_CTX* %__v60_ctx, i8* %71, i32 1)
  %__m19 = load i1, i1* %__v73_done
  br label %74

; <label>:72:                                     ; preds = %65
  br label %73

; <label>:73:                                     ; preds = %87, %72
  br label %23

; <label>:74:                                     ; preds = %85, %67
  %__v78_k = phi i32 [ 0, %67 ], [ %86, %85 ]
  %75 = icmp ult i32 %__v78_k, 5
  br i1 %75, label %76, label %87

; <label>:76:                                     ; preds = %74
  %__v139_lexpr = zext i32 %__v78_k to i64
  %__v140_lexpr = zext i32 %__v78_k to i64
  %77 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %__v60_ctx, i32 0, i32 0
  %78 = bitcast [5 x i32]* %77 to i32*
  %79 = getelementptr i32, i32* %78, i64 %__v139_lexpr
  %80 = getelementptr i32, i32* %__v77_h, i64 %__v140_lexpr
  %81 = load i32, i32* %80
  %82 = and i1 true, %__m19
  %83 = load i32, i32* %79
  %84 = call i32 @fact.cmov.asm.i32(i1 %82, i32 %81, i32 %83)
  store i32 %84, i32* %79
  br label %85

; <label>:85:                                     ; preds = %76
  %86 = add i32 %__v78_k, 1
  br label %74

; <label>:87:                                     ; preds = %74
  %__m20 = xor i1 %__m19, true
  %88 = zext i32 %__v62_slen to i64
  %89 = call i64 @fact.select.asm.i64(i1 %__v72_len_in_first_block, i64 0, i64 64)
  %90 = add i64 %88, %89
  %__m21 = icmp ugt i64 %__v74_i, %90
  %91 = and i1 true, %__m21
  %92 = load i1, i1* %__v73_done
  %93 = call i1 @fact.cmov.asm.i1(i1 %91, i1 true, i1 %92)
  store i1 %93, i1* %__v73_done
  %__m22 = xor i1 %__m21, true
  br label %73
}

; Function Attrs: alwaysinline
define internal i1 @fact.select.asm.i1(i1 %cond, i1 %x, i1 %y) #1 {
entry:
  %0 = zext i1 %x to i32
  %1 = zext i1 %y to i32
  %2 = call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %cond, i32 %0, i32 %1)
  %3 = trunc i32 %2 to i1
  ret i1 %3
}

; Function Attrs: alwaysinline
define internal i64 @fact.select.asm.i64(i1 %cond, i64 %x, i64 %y) #1 {
entry:
  %0 = call i64 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %cond, i64 %x, i64 %y)
  ret i64 %0
}

; Function Attrs: alwaysinline
define internal i1 @fact.cmov.asm.i1(i1 %cond, i1 %x, i1 %y) #1 {
entry:
  %0 = zext i1 %x to i32
  %1 = zext i1 %y to i32
  %2 = call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %cond, i32 %0, i32 %1)
  %3 = trunc i32 %2 to i1
  ret i1 %3
}

define internal void @SHA1_Update_public(%SHA_CTX* %__v48_ctx, i8* %__v49__in, i64 %__v105___v49__in_len) {
entry:
  %__rctx = alloca i1
  store i1 true, i1* %__rctx
  %__v52_l = shl i64 %__v105___v49__in_len, 3
  %0 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %__v48_ctx, i32 0, i32 2
  %1 = load i32, i32* %0
  %2 = zext i32 %1 to i64
  %3 = shl i64 %2, 32
  %4 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %__v48_ctx, i32 0, i32 1
  %5 = load i32, i32* %4
  %6 = zext i32 %5 to i64
  %7 = or i64 %3, %6
  %__v53_N = add i64 %7, %__v52_l
  %8 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %__v48_ctx, i32 0, i32 2
  %9 = lshr i64 %__v53_N, 32
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* %8
  %11 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %__v48_ctx, i32 0, i32 1
  %12 = trunc i64 %__v53_N to i32
  store i32 %12, i32* %11
  %__v54_inp = alloca i64
  store i64 0, i64* %__v54_inp
  %__v55__len = alloca i64
  store i64 %__v105___v49__in_len, i64* %__v55__len
  %13 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %__v48_ctx, i32 0, i32 4
  %__v56_num = load i32, i32* %13
  %14 = icmp ugt i32 %__v56_num, 0
  %15 = load i64, i64* %__v55__len
  %16 = icmp ugt i64 %15, 0
  %17 = and i1 %14, %16
  br i1 %17, label %18, label %31

; <label>:18:                                     ; preds = %entry
  %19 = sub i32 64, %__v56_num
  %20 = zext i32 %19 to i64
  %21 = icmp ult i64 %__v105___v49__in_len, %20
  %22 = sub i32 64, %__v56_num
  %23 = zext i32 %22 to i64
  %__v57_res = select i1 %21, i64 %__v105___v49__in_len, i64 %23
  %__v132_lexpr = zext i32 %__v56_num to i64
  %__v133_lexpr = zext i32 %__v56_num to i64
  %24 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %__v48_ctx, i32 0, i32 3
  %25 = bitcast [64 x i8]* %24 to i8*
  %26 = getelementptr i8, i8* %25, i64 %__v133_lexpr
  %27 = getelementptr i8, i8* %__v49__in, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %27, i64 %__v57_res, i32 1, i1 false)
  %28 = zext i32 %__v56_num to i64
  %29 = add i64 %__v57_res, %28
  %30 = icmp eq i64 %29, 64
  br i1 %30, label %35, label %39

; <label>:31:                                     ; preds = %entry
  br label %32

; <label>:32:                                     ; preds = %45, %31
  %33 = load i64, i64* %__v55__len
  %__v58_n = udiv i64 %33, 64
  %34 = icmp ugt i64 %__v58_n, 0
  br i1 %34, label %50, label %59

; <label>:35:                                     ; preds = %18
  %36 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %__v48_ctx, i32 0, i32 3
  %37 = bitcast [64 x i8]* %36 to i8*
  call void @sha1_block_data_order(%SHA_CTX* %__v48_ctx, i8* %37, i32 1)
  %38 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %__v48_ctx, i32 0, i32 4
  store i32 0, i32* %38
  br label %45

; <label>:39:                                     ; preds = %18
  %40 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %__v48_ctx, i32 0, i32 4
  %41 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %__v48_ctx, i32 0, i32 4
  %42 = load i32, i32* %41
  %43 = trunc i64 %__v57_res to i32
  %44 = add i32 %42, %43
  store i32 %44, i32* %40
  br label %45

; <label>:45:                                     ; preds = %39, %35
  %46 = load i64, i64* %__v54_inp
  %47 = add i64 %46, %__v57_res
  store i64 %47, i64* %__v54_inp
  %48 = load i64, i64* %__v55__len
  %49 = sub i64 %48, %__v57_res
  store i64 %49, i64* %__v55__len
  br label %32

; <label>:50:                                     ; preds = %32
  %__v134_lexpr = load i64, i64* %__v54_inp
  %__v135_lexpr = mul i64 %__v58_n, 64
  %51 = getelementptr i8, i8* %__v49__in, i64 %__v134_lexpr
  %52 = trunc i64 %__v58_n to i32
  call void @sha1_block_data_order(%SHA_CTX* %__v48_ctx, i8* %51, i32 %52)
  %53 = load i64, i64* %__v54_inp
  %54 = mul i64 %__v58_n, 64
  %55 = add i64 %53, %54
  store i64 %55, i64* %__v54_inp
  %56 = load i64, i64* %__v55__len
  %57 = mul i64 %__v58_n, 64
  %58 = sub i64 %56, %57
  store i64 %58, i64* %__v55__len
  br label %60

; <label>:59:                                     ; preds = %32
  br label %60

; <label>:60:                                     ; preds = %59, %50
  %61 = load i64, i64* %__v55__len
  %62 = icmp ugt i64 %61, 0
  br i1 %62, label %63, label %74

; <label>:63:                                     ; preds = %60
  %__v59___len = load i64, i64* %__v55__len
  %__v136_lexpr = load i64, i64* %__v54_inp
  %__v137_lexpr = load i64, i64* %__v54_inp
  %__v138_lexpr = load i64, i64* %__v54_inp
  %64 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %__v48_ctx, i32 0, i32 3
  %65 = bitcast [64 x i8]* %64 to i8*
  %66 = getelementptr i8, i8* %65, i64 0
  %67 = getelementptr i8, i8* %__v49__in, i64 %__v137_lexpr
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %66, i8* %67, i64 %__v59___len, i32 1, i1 false)
  %68 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %__v48_ctx, i32 0, i32 4
  %69 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %__v48_ctx, i32 0, i32 4
  %70 = load i32, i32* %69
  %71 = load i64, i64* %__v55__len
  %72 = trunc i64 %71 to i32
  %73 = add i32 %70, %72
  store i32 %73, i32* %68
  br label %75

; <label>:74:                                     ; preds = %60
  br label %75

; <label>:75:                                     ; preds = %74, %63
  ret void
}

define internal void @SHA1_Update_secret(%SHA_CTX* %__v35_ctx, i32* %__v36_ctx_num, i8* %__v37__in, i64 %__v104___v37__in_len, i32 %__v38_slen) {
entry:
  %__rctx = alloca i1
  store i1 true, i1* %__rctx
  %0 = zext i32 %__v38_slen to i64
  %__v41_l = shl i64 %0, 3
  %1 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %__v35_ctx, i32 0, i32 2
  %2 = load i32, i32* %1
  %3 = zext i32 %2 to i64
  %4 = shl i64 %3, 32
  %5 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %__v35_ctx, i32 0, i32 1
  %6 = load i32, i32* %5
  %7 = zext i32 %6 to i64
  %8 = or i64 %4, %7
  %__v42_N = add i64 %8, %__v41_l
  %9 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %__v35_ctx, i32 0, i32 2
  %10 = lshr i64 %__v42_N, 32
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %9
  %12 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %__v35_ctx, i32 0, i32 1
  %13 = trunc i64 %__v42_N to i32
  store i32 %13, i32* %12
  %14 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %__v35_ctx, i32 0, i32 4
  %__v43_num = load i32, i32* %14
  br label %15

; <label>:15:                                     ; preds = %33, %entry
  %__v44_i = phi i64 [ 0, %entry ], [ %34, %33 ]
  %16 = icmp ult i64 %__v44_i, %__v104___v37__in_len
  br i1 %16, label %17, label %35

; <label>:17:                                     ; preds = %15
  %18 = zext i32 %__v43_num to i64
  %19 = add i64 %18, %__v44_i
  %__v45_j = urem i64 %19, 64
  %20 = zext i32 %__v38_slen to i64
  %__m9 = icmp ult i64 %__v44_i, %20
  %21 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %__v35_ctx, i32 0, i32 3
  %22 = bitcast [64 x i8]* %21 to i8*
  %23 = getelementptr i8, i8* %22, i64 %__v45_j
  %24 = getelementptr i8, i8* %__v37__in, i64 %__v44_i
  %25 = load i8, i8* %24
  %26 = and i1 true, %__m9
  %27 = load i8, i8* %23
  %28 = zext i8 %25 to i32
  %29 = zext i8 %27 to i32
  %30 = call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %26, i32 %28, i32 %29)
  %31 = trunc i32 %30 to i8
  store i8 %31, i8* %23
  %__m10 = xor i1 %__m9, true
  %32 = icmp eq i64 %__v45_j, 63
  br i1 %32, label %43, label %51

; <label>:33:                                     ; preds = %52
  %34 = add i64 %__v44_i, 1
  br label %15

; <label>:35:                                     ; preds = %15
  %36 = add i32 %__v43_num, %__v38_slen
  %37 = and i32 %36, 63
  store i32 %37, i32* %__v36_ctx_num
  %38 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %__v35_ctx, i32 0, i32 4
  %39 = zext i32 %__v43_num to i64
  %40 = add i64 %39, %__v104___v37__in_len
  %41 = trunc i64 %40 to i32
  %42 = urem i32 %41, 64
  store i32 %42, i32* %38
  ret void

; <label>:43:                                     ; preds = %17
  %44 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %__v35_ctx, i32 0, i32 0
  %45 = bitcast [5 x i32]* %44 to i32*
  %__v46_h = alloca i32, i64 5
  %46 = bitcast i32* %__v46_h to i8*
  %47 = bitcast i32* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %46, i8* %47, i64 20, i32 4, i1 false)
  %48 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %__v35_ctx, i32 0, i32 3
  %49 = bitcast [64 x i8]* %48 to i8*
  call void @sha1_block_data_order(%SHA_CTX* %__v35_ctx, i8* %49, i32 1)
  %50 = zext i32 %__v38_slen to i64
  %__m11 = icmp uge i64 %__v44_i, %50
  br label %53

; <label>:51:                                     ; preds = %17
  br label %52

; <label>:52:                                     ; preds = %66, %51
  br label %33

; <label>:53:                                     ; preds = %64, %43
  %__v47_k = phi i32 [ 0, %43 ], [ %65, %64 ]
  %54 = icmp ult i32 %__v47_k, 5
  br i1 %54, label %55, label %66

; <label>:55:                                     ; preds = %53
  %__v130_lexpr = zext i32 %__v47_k to i64
  %__v131_lexpr = zext i32 %__v47_k to i64
  %56 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %__v35_ctx, i32 0, i32 0
  %57 = bitcast [5 x i32]* %56 to i32*
  %58 = getelementptr i32, i32* %57, i64 %__v130_lexpr
  %59 = getelementptr i32, i32* %__v46_h, i64 %__v131_lexpr
  %60 = load i32, i32* %59
  %61 = and i1 true, %__m11
  %62 = load i32, i32* %58
  %63 = call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %61, i32 %60, i32 %62)
  store i32 %63, i32* %58
  br label %64

; <label>:64:                                     ; preds = %55
  %65 = add i32 %__v47_k, 1
  br label %53

; <label>:66:                                     ; preds = %53
  %__m12 = xor i1 %__m11, true
  br label %52
}

declare void @aesni_cbc_encrypt(i8*, i8*, i64, %AES_KEY*, i8*, i32)

define i32 @_aesni_cbc_hmac_sha1_cipher(i8* %__v1_iv, %EVP_AES_HMAC_SHA1* %__v2_key, i8* %__v3__out, i64 %__v102___v3__out_len, i8* %__v4__in, i64 %__v103___v4__in_len, i16 %__v5_tls_ver) {
entry:
  %__rctx.i = alloca i1
  %__rval = alloca i32
  store i32 0, i32* %__rval
  %__rctx = alloca i1
  store i1 true, i1* %__rctx
  %__v13_ret = alloca i32
  store i32 1, i32* %__v13_ret
  %0 = urem i64 %__v103___v4__in_len, 16
  %1 = icmp ne i64 %0, 0
  br i1 %1, label %2, label %3

; <label>:2:                                      ; preds = %entry
  ret i32 0

; <label>:3:                                      ; preds = %entry
  br label %4

; <label>:4:                                      ; preds = %3
  %__v14_inp = alloca i32
  store i32 0, i32* %__v14_inp
  %__v15_outp = alloca i32
  store i32 0, i32* %__v15_outp
  %5 = trunc i64 %__v102___v3__out_len to i32
  %__v16__len = alloca i32
  store i32 %5, i32* %__v16__len
  %6 = zext i16 %__v5_tls_ver to i32
  %7 = icmp uge i32 %6, 770
  br i1 %7, label %8, label %11

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %__v16__len
  %10 = icmp ult i32 %9, 37
  br i1 %10, label %67, label %68

; <label>:11:                                     ; preds = %4
  %12 = load i32, i32* %__v16__len
  %13 = icmp ult i32 %12, 21
  br i1 %13, label %77, label %78

; <label>:14:                                     ; preds = %79, %69
  %15 = load i32, i32* %__v14_inp
  %__v111_lexpr = zext i32 %15 to i64
  %16 = load i32, i32* %__v16__len
  %__v112_lexpr = zext i32 %16 to i64
  %17 = load i32, i32* %__v15_outp
  %__v113_lexpr = zext i32 %17 to i64
  %18 = load i32, i32* %__v16__len
  %__v114_lexpr = zext i32 %18 to i64
  %19 = getelementptr i8, i8* %__v4__in, i64 %__v111_lexpr
  %20 = getelementptr i8, i8* %__v3__out, i64 %__v113_lexpr
  %21 = load i32, i32* %__v16__len
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 0
  call void @aesni_cbc_encrypt(i8* %19, i8* %20, i64 %22, %AES_KEY* %23, i8* %__v1_iv, i32 0)
  %__v115_lexpr = sub i64 %__v102___v3__out_len, 1
  %24 = getelementptr i8, i8* %__v3__out, i64 %__v115_lexpr
  %25 = load i8, i8* %24
  %26 = zext i8 %25 to i32
  %__v17_pad = alloca i32
  store i32 %26, i32* %__v17_pad
  %27 = load i32, i32* %__v16__len
  %__v18_tmppad = sub i32 %27, 21
  %28 = icmp ugt i32 %__v18_tmppad, 255
  %__v19_maxpad = select i1 %28, i32 255, i32 %__v18_tmppad
  %29 = load i32, i32* %__v17_pad
  %__m1 = icmp ugt i32 %29, %__v19_maxpad
  %30 = and i1 true, %__m1
  %31 = load i32, i32* %__v13_ret
  %32 = call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %30, i32 0, i32 %31)
  store i32 %32, i32* %__v13_ret
  %33 = and i1 true, %__m1
  %34 = load i32, i32* %__v17_pad
  %35 = call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %33, i32 %__v19_maxpad, i32 %34)
  store i32 %35, i32* %__v17_pad
  %__m2 = xor i1 %__m1, true
  %36 = load i32, i32* %__v16__len
  %37 = load i32, i32* %__v17_pad
  %38 = add i32 %37, 1
  %39 = add i32 %38, 20
  %__v20_inp_len = sub i32 %36, %39
  %40 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 5
  %41 = bitcast [16 x i8]* %40 to i8*
  %42 = getelementptr i8, i8* %41, i64 11
  %43 = trunc i32 %__v20_inp_len to i16
  store i1 true, i1* %__rctx.i
  %44 = lshr i16 %43, 8
  %45 = trunc i16 %44 to i8
  store i8 %45, i8* %42
  %46 = getelementptr i8, i8* %42, i64 1
  %47 = trunc i16 %43 to i8
  store i8 %47, i8* %46
  %__v21_ctx_num = alloca i32
  store i32 0, i32* %__v21_ctx_num
  %__v22_pmac = alloca i8, i64 20
  call void @llvm.memset.p0i8.i64(i8* %__v22_pmac, i8 0, i64 20, i32 1, i1 false)
  %48 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %49 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 1
  %50 = bitcast %SHA_CTX* %48 to i8*
  %51 = bitcast %SHA_CTX* %49 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %50, i8* %51, i64 ptrtoint (%SHA_CTX* getelementptr (%SHA_CTX, %SHA_CTX* null, i32 1) to i64), i32 1, i1 false)
  %52 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %53 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 5
  %54 = bitcast [16 x i8]* %53 to i8*
  %55 = getelementptr i8, i8* %54, i64 0
  call void @SHA1_Update_public(%SHA_CTX* %52, i8* %55, i64 13)
  %56 = load i32, i32* %__v16__len
  %57 = icmp uge i32 %56, 340
  %58 = load i32, i32* %__v16__len
  %59 = sub i32 %58, 340
  %60 = and i32 %59, -64
  %61 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %62 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %61, i32 0, i32 4
  %63 = load i32, i32* %62
  %64 = sub i32 64, %63
  %65 = add i32 %60, %64
  %__v23_minlen = select i1 %57, i32 %65, i32 0
  %66 = icmp ugt i32 %__v23_minlen, 0
  br i1 %66, label %80, label %85

; <label>:67:                                     ; preds = %8
  ret i32 0

; <label>:68:                                     ; preds = %8
  br label %69

; <label>:69:                                     ; preds = %68
  %70 = getelementptr i8, i8* %__v4__in, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %__v1_iv, i8* %70, i64 16, i32 1, i1 false)
  %71 = load i32, i32* %__v14_inp
  %72 = add i32 %71, 16
  store i32 %72, i32* %__v14_inp
  %73 = load i32, i32* %__v15_outp
  %74 = add i32 %73, 16
  store i32 %74, i32* %__v15_outp
  %75 = load i32, i32* %__v16__len
  %76 = sub i32 %75, 16
  store i32 %76, i32* %__v16__len
  br label %14

; <label>:77:                                     ; preds = %11
  ret i32 0

; <label>:78:                                     ; preds = %11
  br label %79

; <label>:79:                                     ; preds = %78
  br label %14

; <label>:80:                                     ; preds = %14
  %81 = load i32, i32* %__v15_outp
  %__v117_lexpr = zext i32 %81 to i64
  %__v118_lexpr = zext i32 %__v23_minlen to i64
  %82 = load i32, i32* %__v15_outp
  %__v119_lexpr = zext i32 %82 to i64
  %__v120_lexpr = zext i32 %__v23_minlen to i64
  %83 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %84 = getelementptr i8, i8* %__v3__out, i64 %__v117_lexpr
  call void @SHA1_Update_public(%SHA_CTX* %83, i8* %84, i64 %__v120_lexpr)
  br label %86

; <label>:85:                                     ; preds = %14
  br label %86

; <label>:86:                                     ; preds = %85, %80
  %87 = load i32, i32* %__v15_outp
  %88 = add i32 %87, %__v23_minlen
  %__v121_lexpr = zext i32 %88 to i64
  %89 = load i32, i32* %__v16__len
  %90 = sub i32 %89, %__v23_minlen
  %__v122_lexpr = zext i32 %90 to i64
  %91 = load i32, i32* %__v15_outp
  %92 = add i32 %91, %__v23_minlen
  %__v123_lexpr = zext i32 %92 to i64
  %93 = load i32, i32* %__v16__len
  %94 = sub i32 %93, %__v23_minlen
  %__v124_lexpr = zext i32 %94 to i64
  %95 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %96 = getelementptr i8, i8* %__v3__out, i64 %__v121_lexpr
  %97 = sub i32 %__v20_inp_len, %__v23_minlen
  call void @SHA1_Update_secret(%SHA_CTX* %95, i32* %__v21_ctx_num, i8* %96, i64 %__v124_lexpr, i32 %97)
  %98 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %99 = load i32, i32* %__v21_ctx_num
  call void @SHA1_Final_secret(i8* %__v22_pmac, %SHA_CTX* %98, i32 %99)
  %100 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %101 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 2
  %102 = bitcast %SHA_CTX* %100 to i8*
  %103 = bitcast %SHA_CTX* %101 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %102, i8* %103, i64 ptrtoint (%SHA_CTX* getelementptr (%SHA_CTX, %SHA_CTX* null, i32 1) to i64), i32 1, i1 false)
  %104 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  call void @SHA1_Update_public(%SHA_CTX* %104, i8* %__v22_pmac, i64 20)
  %105 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  call void @SHA1_Final_public(i8* %__v22_pmac, %SHA_CTX* %105)
  %106 = load i32, i32* %__v16__len
  %107 = icmp ult i32 %106, 276
  %108 = load i32, i32* %__v16__len
  %109 = sub i32 %108, 276
  %__v24_pub_start = select i1 %107, i32 0, i32 %109
  %110 = load i32, i32* %__v15_outp
  %111 = add i32 %110, %__v20_inp_len
  %112 = add i32 %111, 20
  %113 = load i32, i32* %__v16__len
  %__m3 = icmp ugt i32 %112, %113
  %114 = and i1 true, %__m3
  %115 = load i32, i32* %__v13_ret
  %116 = call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %114, i32 0, i32 %115)
  store i32 %116, i32* %__v13_ret
  %__m4 = xor i1 %__m3, true
  %117 = load i32, i32* %__v15_outp
  %118 = add i32 %117, %__v24_pub_start
  %119 = load i32, i32* %__v16__len
  br label %120

; <label>:120:                                    ; preds = %148, %86
  %__v25_i = phi i32 [ %118, %86 ], [ %149, %148 ]
  %121 = icmp ult i32 %__v25_i, %119
  br i1 %121, label %122, label %150

; <label>:122:                                    ; preds = %120
  %__v26_j = alloca i32
  store i32 0, i32* %__v26_j
  %123 = load i32, i32* %__v15_outp
  %124 = add i32 %123, %__v20_inp_len
  %125 = icmp uge i32 %__v25_i, %124
  %126 = load i32, i32* %__v15_outp
  %127 = add i32 %126, %__v20_inp_len
  %128 = add i32 %127, 20
  %129 = icmp ult i32 %__v25_i, %128
  %130 = zext i1 %129 to i32
  %131 = call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %125, i32 %130, i32 0)
  %132 = trunc i32 %131 to i1
  %133 = load i32, i32* %__v15_outp
  %134 = add i32 %133, %__v20_inp_len
  %135 = sub i32 %__v25_i, %134
  %136 = and i1 true, %132
  %137 = load i32, i32* %__v26_j
  %138 = call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %136, i32 %135, i32 %137)
  store i32 %138, i32* %__v26_j
  %__v125_lexpr = zext i32 %__v25_i to i64
  %139 = load i32, i32* %__v26_j
  %__v126_lexpr = zext i32 %139 to i64
  %140 = getelementptr i8, i8* %__v3__out, i64 %__v125_lexpr
  %141 = load i8, i8* %140
  %142 = getelementptr i8, i8* %__v22_pmac, i64 %__v126_lexpr
  %143 = load i8, i8* %142
  %__m6 = icmp ne i8 %141, %143
  %144 = and i1 true, %__m6
  %145 = and i1 %144, %132
  %146 = load i32, i32* %__v13_ret
  %147 = call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %145, i32 0, i32 %146)
  store i32 %147, i32* %__v13_ret
  %__m7 = xor i1 %__m6, true
  %__m8 = xor i1 %132, true
  br label %148

; <label>:148:                                    ; preds = %122
  %149 = add i32 %__v25_i, 1
  br label %120

; <label>:150:                                    ; preds = %120
  %151 = load i32, i32* %__v13_ret
  ret i32 %151
}

attributes #0 = { argmemonly nounwind }
attributes #1 = { alwaysinline }
