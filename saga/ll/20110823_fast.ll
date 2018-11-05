; ModuleID = 'Module'
source_filename = "Module"

%SHA_CTX = type { [5 x i32], i32, i32, [64 x i8], i32 }
%AES_KEY = type { [60 x i32], i32 }
%EVP_AES_HMAC_SHA1 = type { %AES_KEY, %SHA_CTX, %SHA_CTX, %SHA_CTX, i64, [16 x i8] }

; Function Attrs: alwaysinline
define internal void @"__memcpy[8]_public"(i8* %dst, i8* %src, i64 %len) #0 {
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

; Function Attrs: alwaysinline
define internal void @__memcpy_SHA_CTX(%SHA_CTX* %dst, %SHA_CTX* %src) #0 {
entry:
  %0 = bitcast %SHA_CTX* %dst to i8*
  %1 = bitcast %SHA_CTX* %src to i8*
  call void @fact.memcpy.i8(i8* %0, i8* %1, i64 ptrtoint (%SHA_CTX* getelementptr (%SHA_CTX, %SHA_CTX* null, i32 1) to i64))
  ret void
}

; Function Attrs: alwaysinline
define internal void @"__memcpy[8]_secret"(i8* %dst, i8* %src, i64 %len) #0 {
entry:
  call void @fact.memcpy.i8(i8* %dst, i8* %src, i64 %len)
  ret void
}

; Function Attrs: alwaysinline
define internal void @"__smemzero[8]_secret"(i8* %dst, i64 %len) #0 {
entry:
  call void @fact.smemset.i8(i8* %dst, i8 0, i64 %len)
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #1

; Function Attrs: alwaysinline
define internal void @fact.smemset.i8(i8* %dst, i8 %n, i64 %len) #0 {
entry:
  %0 = mul i64 %len, 1
  call void @llvm.memset.p0i8.i64(i8* %dst, i8 %n, i64 %0, i32 1, i1 true)
  ret void
}

; Function Attrs: alwaysinline
define internal void @"__memzero[8]_secret"(i8* %dst, i64 %len) #0 {
entry:
  call void @fact.memset.i8(i8* %dst, i8 0, i64 %len)
  ret void
}

; Function Attrs: alwaysinline
define internal void @fact.memset.i8(i8* %dst, i8 %n, i64 %len) #0 {
entry:
  %0 = mul i64 %len, 1
  call void @llvm.memset.p0i8.i64(i8* %dst, i8 %n, i64 %0, i32 1, i1 false)
  ret void
}

; Function Attrs: alwaysinline
define internal i16 @load16_be(i8* %__v99_buf) #0 {
entry:
  %__rval = alloca i16
  store i16 0, i16* %__rval
  %__rctx = alloca i1
  store i1 true, i1* %__rctx
  %0 = getelementptr i8, i8* %__v99_buf, i64 0
  %1 = load i8, i8* %0
  %2 = zext i8 %1 to i16
  %__v100_x2 = shl i16 %2, 8
  %3 = getelementptr i8, i8* %__v99_buf, i64 1
  %4 = load i8, i8* %3
  %__v101_x1 = zext i8 %4 to i16
  %5 = or i16 %__v101_x1, %__v100_x2
  ret i16 %5
}

; Function Attrs: alwaysinline
define internal void @store32_be(i8* %__v97_buf, i32 %__v98_n) #0 {
entry:
  %__rctx = alloca i1
  store i1 true, i1* %__rctx
  %0 = getelementptr i8, i8* %__v97_buf, i64 0
  %1 = lshr i32 %__v98_n, 24
  %2 = trunc i32 %1 to i8
  store i8 %2, i8* %0
  %3 = getelementptr i8, i8* %__v97_buf, i64 1
  %4 = lshr i32 %__v98_n, 16
  %5 = trunc i32 %4 to i8
  store i8 %5, i8* %3
  %6 = getelementptr i8, i8* %__v97_buf, i64 2
  %7 = lshr i32 %__v98_n, 8
  %8 = trunc i32 %7 to i8
  store i8 %8, i8* %6
  %9 = getelementptr i8, i8* %__v97_buf, i64 3
  %10 = trunc i32 %__v98_n to i8
  store i8 %10, i8* %9
  ret void
}

; Function Attrs: alwaysinline
define internal void @SHA1_MAKE_STRING(%SHA_CTX* %__v94_ctx, i8* %__v95_out) #0 {
entry:
  %__rctx = alloca i1
  store i1 true, i1* %__rctx
  br label %0

; <label>:0:                                      ; preds = %9, %entry
  %__v96_i = phi i32 [ 0, %entry ], [ %10, %9 ]
  %1 = icmp ult i32 %__v96_i, 5
  br i1 %1, label %2, label %11

; <label>:2:                                      ; preds = %0
  %3 = mul i32 %__v96_i, 4
  %__v164_lexpr = zext i32 %3 to i64
  %__v165_lexpr = zext i32 %__v96_i to i64
  %4 = getelementptr i8, i8* %__v95_out, i64 %__v164_lexpr
  %5 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %__v94_ctx, i32 0, i32 0
  %6 = bitcast [5 x i32]* %5 to i32*
  %7 = getelementptr i32, i32* %6, i64 %__v165_lexpr
  %8 = load i32, i32* %7
  call void @store32_be(i8* %4, i32 %8)
  br label %9

; <label>:9:                                      ; preds = %2
  %10 = add i32 %__v96_i, 1
  br label %0

; <label>:11:                                     ; preds = %0
  ret void
}

declare void @sha1_block_data_order(%SHA_CTX*, i8*, i32)

define internal void @SHA1_Final_public(i8* %__v88_out, %SHA_CTX* %__v89_ctx) {
entry:
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
  call void @"__memzero[8]_secret"(i8* %23, i64 %__v154_lexpr)
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
  call void @"__memzero[8]_secret"(i8* %39, i64 %__v160_lexpr)
  %40 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %__v89_ctx, i32 0, i32 3
  %41 = bitcast [64 x i8]* %40 to i8*
  %42 = getelementptr i8, i8* %41, i64 56
  %43 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %__v89_ctx, i32 0, i32 2
  %44 = load i32, i32* %43
  call void @store32_be(i8* %42, i32 %44)
  %45 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %__v89_ctx, i32 0, i32 3
  %46 = bitcast [64 x i8]* %45 to i8*
  %47 = getelementptr i8, i8* %46, i64 60
  %48 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %__v89_ctx, i32 0, i32 1
  %49 = load i32, i32* %48
  call void @store32_be(i8* %47, i32 %49)
  %50 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %__v89_ctx, i32 0, i32 3
  %51 = bitcast [64 x i8]* %50 to i8*
  call void @sha1_block_data_order(%SHA_CTX* %__v89_ctx, i8* %51, i32 1)
  %52 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %__v89_ctx, i32 0, i32 4
  store i32 0, i32* %52
  %53 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %__v89_ctx, i32 0, i32 3
  %54 = bitcast [64 x i8]* %53 to i8*
  call void @"__smemzero[8]_secret"(i8* %54, i64 64)
  call void @SHA1_MAKE_STRING(%SHA_CTX* %__v89_ctx, i8* %__v88_out)
  ret void
}

define internal void @SHA1_Final_secret(i8* %__v79_out, %SHA_CTX* %__v80_ctx, i32 %__v81_ctx_num) {
entry:
  %__rctx = alloca i1
  store i1 true, i1* %__rctx
  %0 = zext i32 %__v81_ctx_num to i64
  %__m23 = icmp ult i64 %0, 56
  br label %1

; <label>:1:                                      ; preds = %20, %entry
  %__v83_i = phi i64 [ 0, %entry ], [ %21, %20 ]
  %2 = icmp ult i64 %__v83_i, 64
  br i1 %2, label %3, label %22

; <label>:3:                                      ; preds = %1
  %4 = zext i32 %__v81_ctx_num to i64
  %__m25 = icmp eq i64 %__v83_i, %4
  %5 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %__v80_ctx, i32 0, i32 3
  %6 = bitcast [64 x i8]* %5 to i8*
  %7 = getelementptr i8, i8* %6, i64 %__v83_i
  %8 = and i1 true, %__m25
  %9 = load i8, i8* %7
  %10 = call i8 @fact.cmov.asm.i8(i1 %8, i8 -128, i8 %9)
  store i8 %10, i8* %7
  %__m26 = xor i1 %__m25, true
  %11 = zext i32 %__v81_ctx_num to i64
  %__m27 = icmp ugt i64 %__v83_i, %11
  %12 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %__v80_ctx, i32 0, i32 3
  %13 = bitcast [64 x i8]* %12 to i8*
  %14 = getelementptr i8, i8* %13, i64 %__v83_i
  %15 = and i1 true, %__m27
  %16 = and i1 %15, %__m26
  %17 = load i8, i8* %14
  %18 = call i8 @fact.cmov.asm.i8(i1 %16, i8 0, i8 %17)
  store i8 %18, i8* %14
  %19 = icmp uge i64 %__v83_i, 60
  br i1 %19, label %42, label %57

; <label>:20:                                     ; preds = %59
  %21 = add i64 %__v83_i, 1
  br label %1

; <label>:22:                                     ; preds = %1
  %23 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %__v80_ctx, i32 0, i32 3
  %24 = bitcast [64 x i8]* %23 to i8*
  call void @sha1_block_data_order(%SHA_CTX* %__v80_ctx, i8* %24, i32 1)
  %25 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %__v80_ctx, i32 0, i32 3
  %26 = bitcast [64 x i8]* %25 to i8*
  %27 = getelementptr i8, i8* %26, i64 0
  call void @"__memzero[8]_secret"(i8* %27, i64 56)
  %28 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %__v80_ctx, i32 0, i32 3
  %29 = bitcast [64 x i8]* %28 to i8*
  %30 = getelementptr i8, i8* %29, i64 56
  %31 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %__v80_ctx, i32 0, i32 2
  %32 = load i32, i32* %31
  call void @store32_be(i8* %30, i32 %32)
  %33 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %__v80_ctx, i32 0, i32 3
  %34 = bitcast [64 x i8]* %33 to i8*
  %35 = getelementptr i8, i8* %34, i64 60
  %36 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %__v80_ctx, i32 0, i32 1
  %37 = load i32, i32* %36
  call void @store32_be(i8* %35, i32 %37)
  %38 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %__v80_ctx, i32 0, i32 0
  %39 = bitcast [5 x i32]* %38 to i32*
  %__v86_h = alloca i32, i64 5
  call void @fact.memcpy.i32(i32* %__v86_h, i32* %39, i64 5)
  %40 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %__v80_ctx, i32 0, i32 3
  %41 = bitcast [64 x i8]* %40 to i8*
  call void @sha1_block_data_order(%SHA_CTX* %__v80_ctx, i8* %41, i32 1)
  br label %77

; <label>:42:                                     ; preds = %3
  %43 = sub i64 63, %__v83_i
  %__v84_shift = mul i64 %43, 8
  %44 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %__v80_ctx, i32 0, i32 3
  %45 = bitcast [64 x i8]* %44 to i8*
  %46 = getelementptr i8, i8* %45, i64 %__v83_i
  %47 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %__v80_ctx, i32 0, i32 1
  %48 = load i32, i32* %47
  %49 = trunc i64 %__v84_shift to i32
  %50 = lshr i32 %48, %49
  %51 = trunc i32 %50 to i8
  %52 = and i1 true, %__m23
  %53 = and i1 %52, %__m27
  %54 = and i1 %53, %__m26
  %55 = load i8, i8* %46
  %56 = call i8 @fact.cmov.asm.i8(i1 %54, i8 %51, i8 %55)
  store i8 %56, i8* %46
  br label %59

; <label>:57:                                     ; preds = %3
  %58 = icmp uge i64 %__v83_i, 56
  br i1 %58, label %60, label %75

; <label>:59:                                     ; preds = %76, %42
  %__m29 = xor i1 %__m23, true
  %__m30 = xor i1 %__m27, true
  br label %20

; <label>:60:                                     ; preds = %57
  %61 = sub i64 59, %__v83_i
  %__v85_shift = mul i64 %61, 8
  %62 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %__v80_ctx, i32 0, i32 3
  %63 = bitcast [64 x i8]* %62 to i8*
  %64 = getelementptr i8, i8* %63, i64 %__v83_i
  %65 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %__v80_ctx, i32 0, i32 2
  %66 = load i32, i32* %65
  %67 = trunc i64 %__v85_shift to i32
  %68 = lshr i32 %66, %67
  %69 = trunc i32 %68 to i8
  %70 = and i1 true, %__m23
  %71 = and i1 %70, %__m27
  %72 = and i1 %71, %__m26
  %73 = load i8, i8* %64
  %74 = call i8 @fact.cmov.asm.i8(i1 %72, i8 %69, i8 %73)
  store i8 %74, i8* %64
  br label %76

; <label>:75:                                     ; preds = %57
  br label %76

; <label>:76:                                     ; preds = %75, %60
  br label %59

; <label>:77:                                     ; preds = %88, %22
  %__v87_j = phi i32 [ 0, %22 ], [ %89, %88 ]
  %78 = icmp ult i32 %__v87_j, 5
  br i1 %78, label %79, label %90

; <label>:79:                                     ; preds = %77
  %__v146_lexpr = zext i32 %__v87_j to i64
  %__v147_lexpr = zext i32 %__v87_j to i64
  %80 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %__v80_ctx, i32 0, i32 0
  %81 = bitcast [5 x i32]* %80 to i32*
  %82 = getelementptr i32, i32* %81, i64 %__v146_lexpr
  %83 = getelementptr i32, i32* %__v86_h, i64 %__v147_lexpr
  %84 = load i32, i32* %83
  %85 = and i1 true, %__m23
  %86 = load i32, i32* %82
  %87 = call i32 @fact.cmov.sel.i32(i1 %85, i32 %84, i32 %86)
  store i32 %87, i32* %82
  br label %88

; <label>:88:                                     ; preds = %79
  %89 = add i32 %__v87_j, 1
  br label %77

; <label>:90:                                     ; preds = %77
  %__m24 = xor i1 %__m23, true
  %91 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %__v80_ctx, i32 0, i32 4
  store i32 0, i32* %91
  %92 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %__v80_ctx, i32 0, i32 3
  %93 = bitcast [64 x i8]* %92 to i8*
  call void @"__smemzero[8]_secret"(i8* %93, i64 64)
  call void @SHA1_MAKE_STRING(%SHA_CTX* %__v80_ctx, i8* %__v79_out)
  ret void
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

; Function Attrs: alwaysinline
define internal void @fact.memcpy.i32(i32* %dst, i32* %src, i64 %len) #0 {
entry:
  %0 = bitcast i32* %dst to i8*
  %1 = bitcast i32* %src to i8*
  %2 = mul i64 %len, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 %2, i32 4, i1 false)
  ret void
}

; Function Attrs: alwaysinline
define internal i32 @fact.cmov.sel.i32(i1 %cond, i32 %x, i32 %y) #0 {
entry:
  %0 = select i1 %cond, i32 %x, i32 %y
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

; <label>:73:                                     ; preds = %72, %87
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
  %84 = call i32 @fact.cmov.sel.i32(i1 %82, i32 %81, i32 %83)
  store i32 %84, i32* %79
  br label %85

; <label>:85:                                     ; preds = %76
  %86 = add i32 %__v78_k, 1
  br label %74

; <label>:87:                                     ; preds = %74
  %__m20 = xor i1 %__m19, true
  %88 = zext i32 %__v62_slen to i64
  %89 = call i64 @fact.select.sel.i64(i1 %__v72_len_in_first_block, i64 0, i64 64)
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
define internal i1 @fact.select.asm.i1(i1 %cond, i1 %x, i1 %y) #0 {
entry:
  %0 = zext i1 %x to i32
  %1 = zext i1 %y to i32
  %2 = call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %cond, i32 %0, i32 %1)
  %3 = trunc i32 %2 to i1
  ret i1 %3
}

; Function Attrs: alwaysinline
define internal i64 @fact.select.sel.i64(i1 %cond, i64 %x, i64 %y) #0 {
entry:
  %0 = select i1 %cond, i64 %x, i64 %y
  ret i64 %0
}

; Function Attrs: alwaysinline
define internal i1 @fact.cmov.asm.i1(i1 %cond, i1 %x, i1 %y) #0 {
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
  call void @"__memcpy[8]_secret"(i8* %26, i8* %27, i64 %__v57_res)
  %28 = zext i32 %__v56_num to i64
  %29 = add i64 %__v57_res, %28
  %30 = icmp eq i64 %29, 64
  br i1 %30, label %35, label %39

; <label>:31:                                     ; preds = %entry
  br label %32

; <label>:32:                                     ; preds = %31, %45
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
  call void @"__memcpy[8]_secret"(i8* %66, i8* %67, i64 %__v59___len)
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

; <label>:15:                                     ; preds = %30, %entry
  %__v44_i = phi i64 [ 0, %entry ], [ %31, %30 ]
  %16 = icmp ult i64 %__v44_i, %__v104___v37__in_len
  br i1 %16, label %17, label %32

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
  %28 = call i8 @fact.cmov.asm.i8(i1 %26, i8 %25, i8 %27)
  store i8 %28, i8* %23
  %__m10 = xor i1 %__m9, true
  %29 = icmp eq i64 %__v45_j, 63
  br i1 %29, label %40, label %46

; <label>:30:                                     ; preds = %47
  %31 = add i64 %__v44_i, 1
  br label %15

; <label>:32:                                     ; preds = %15
  %33 = add i32 %__v43_num, %__v38_slen
  %34 = and i32 %33, 63
  store i32 %34, i32* %__v36_ctx_num
  %35 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %__v35_ctx, i32 0, i32 4
  %36 = zext i32 %__v43_num to i64
  %37 = add i64 %36, %__v104___v37__in_len
  %38 = trunc i64 %37 to i32
  %39 = urem i32 %38, 64
  store i32 %39, i32* %35
  ret void

; <label>:40:                                     ; preds = %17
  %41 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %__v35_ctx, i32 0, i32 0
  %42 = bitcast [5 x i32]* %41 to i32*
  %__v46_h = alloca i32, i64 5
  call void @fact.memcpy.i32(i32* %__v46_h, i32* %42, i64 5)
  %43 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %__v35_ctx, i32 0, i32 3
  %44 = bitcast [64 x i8]* %43 to i8*
  call void @sha1_block_data_order(%SHA_CTX* %__v35_ctx, i8* %44, i32 1)
  %45 = zext i32 %__v38_slen to i64
  %__m11 = icmp uge i64 %__v44_i, %45
  br label %48

; <label>:46:                                     ; preds = %17
  br label %47

; <label>:47:                                     ; preds = %46, %61
  br label %30

; <label>:48:                                     ; preds = %59, %40
  %__v47_k = phi i32 [ 0, %40 ], [ %60, %59 ]
  %49 = icmp ult i32 %__v47_k, 5
  br i1 %49, label %50, label %61

; <label>:50:                                     ; preds = %48
  %__v130_lexpr = zext i32 %__v47_k to i64
  %__v131_lexpr = zext i32 %__v47_k to i64
  %51 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %__v35_ctx, i32 0, i32 0
  %52 = bitcast [5 x i32]* %51 to i32*
  %53 = getelementptr i32, i32* %52, i64 %__v130_lexpr
  %54 = getelementptr i32, i32* %__v46_h, i64 %__v131_lexpr
  %55 = load i32, i32* %54
  %56 = and i1 true, %__m11
  %57 = load i32, i32* %53
  %58 = call i32 @fact.cmov.sel.i32(i1 %56, i32 %55, i32 %57)
  store i32 %58, i32* %53
  br label %59

; <label>:59:                                     ; preds = %50
  %60 = add i32 %__v47_k, 1
  br label %48

; <label>:61:                                     ; preds = %48
  %__m12 = xor i1 %__m11, true
  br label %47
}

; Function Attrs: alwaysinline
define internal void @store16_be(i8* %__v33_buf, i16 %__v34_n) #0 {
entry:
  %__rctx = alloca i1
  store i1 true, i1* %__rctx
  %0 = getelementptr i8, i8* %__v33_buf, i64 0
  %1 = lshr i16 %__v34_n, 8
  %2 = trunc i16 %1 to i8
  store i8 %2, i8* %0
  %3 = getelementptr i8, i8* %__v33_buf, i64 1
  %4 = trunc i16 %__v34_n to i8
  store i8 %4, i8* %3
  ret void
}

declare void @aesni_cbc_encrypt(i8*, i8*, i64, %AES_KEY*, i8*, i32)

define i32 @_aesni_cbc_hmac_sha1_cipher(i8* %__v1_iv, %EVP_AES_HMAC_SHA1* %__v2_key, i8* %__v3__out, i64 %__v102___v3__out_len, i8* %__v4__in, i64 %__v103___v4__in_len, i64 %__v5_plen, i16 %__v6_tls_ver) {
entry:
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
  %6 = zext i16 %__v6_tls_ver to i32
  %7 = icmp uge i32 %6, 770
  br i1 %7, label %8, label %11

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %__v16__len
  %10 = icmp ult i32 %9, 37
  br i1 %10, label %61, label %62

; <label>:11:                                     ; preds = %4
  %12 = load i32, i32* %__v16__len
  %13 = icmp ult i32 %12, 21
  br i1 %13, label %71, label %72

; <label>:14:                                     ; preds = %73, %63
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
  %32 = call i32 @fact.cmov.sel.i32(i1 %30, i32 0, i32 %31)
  store i32 %32, i32* %__v13_ret
  %33 = and i1 true, %__m1
  %34 = load i32, i32* %__v17_pad
  %35 = call i32 @fact.cmov.sel.i32(i1 %33, i32 %__v19_maxpad, i32 %34)
  store i32 %35, i32* %__v17_pad
  %__m2 = xor i1 %__m1, true
  %36 = load i32, i32* %__v16__len
  %37 = load i32, i32* %__v17_pad
  %38 = add i32 %37, 1
  %39 = add i32 %38, 20
  %__v20_inp_len = sub i32 %36, %39
  %__v116_lexpr = sub i64 %__v5_plen, 2
  %40 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 5
  %41 = bitcast [16 x i8]* %40 to i8*
  %42 = getelementptr i8, i8* %41, i64 %__v116_lexpr
  %43 = trunc i32 %__v20_inp_len to i16
  call void @store16_be(i8* %42, i16 %43)
  %__v21_ctx_num = alloca i32
  store i32 0, i32* %__v21_ctx_num
  %__v22_pmac = alloca i8, i64 20
  call void @fact.memset.i8(i8* %__v22_pmac, i8 0, i64 20)
  %44 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %45 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 1
  call void @__memcpy_SHA_CTX(%SHA_CTX* %44, %SHA_CTX* %45)
  %46 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %47 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 5
  %48 = bitcast [16 x i8]* %47 to i8*
  %49 = getelementptr i8, i8* %48, i64 0
  call void @SHA1_Update_public(%SHA_CTX* %46, i8* %49, i64 %__v5_plen)
  %50 = load i32, i32* %__v16__len
  %51 = icmp uge i32 %50, 340
  %52 = load i32, i32* %__v16__len
  %53 = sub i32 %52, 340
  %54 = and i32 %53, -64
  %55 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %56 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %55, i32 0, i32 4
  %57 = load i32, i32* %56
  %58 = sub i32 64, %57
  %59 = add i32 %54, %58
  %__v23_minlen = select i1 %51, i32 %59, i32 0
  %60 = icmp ugt i32 %__v23_minlen, 0
  br i1 %60, label %74, label %79

; <label>:61:                                     ; preds = %8
  ret i32 0

; <label>:62:                                     ; preds = %8
  br label %63

; <label>:63:                                     ; preds = %62
  %64 = getelementptr i8, i8* %__v4__in, i64 0
  call void @"__memcpy[8]_public"(i8* %__v1_iv, i8* %64, i64 16)
  %65 = load i32, i32* %__v14_inp
  %66 = add i32 %65, 16
  store i32 %66, i32* %__v14_inp
  %67 = load i32, i32* %__v15_outp
  %68 = add i32 %67, 16
  store i32 %68, i32* %__v15_outp
  %69 = load i32, i32* %__v16__len
  %70 = sub i32 %69, 16
  store i32 %70, i32* %__v16__len
  br label %14

; <label>:71:                                     ; preds = %11
  ret i32 0

; <label>:72:                                     ; preds = %11
  br label %73

; <label>:73:                                     ; preds = %72
  br label %14

; <label>:74:                                     ; preds = %14
  %75 = load i32, i32* %__v15_outp
  %__v117_lexpr = zext i32 %75 to i64
  %__v118_lexpr = zext i32 %__v23_minlen to i64
  %76 = load i32, i32* %__v15_outp
  %__v119_lexpr = zext i32 %76 to i64
  %__v120_lexpr = zext i32 %__v23_minlen to i64
  %77 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %78 = getelementptr i8, i8* %__v3__out, i64 %__v117_lexpr
  call void @SHA1_Update_public(%SHA_CTX* %77, i8* %78, i64 %__v120_lexpr)
  br label %80

; <label>:79:                                     ; preds = %14
  br label %80

; <label>:80:                                     ; preds = %79, %74
  %81 = load i32, i32* %__v15_outp
  %82 = add i32 %81, %__v23_minlen
  %__v121_lexpr = zext i32 %82 to i64
  %83 = load i32, i32* %__v16__len
  %84 = sub i32 %83, %__v23_minlen
  %__v122_lexpr = zext i32 %84 to i64
  %85 = load i32, i32* %__v15_outp
  %86 = add i32 %85, %__v23_minlen
  %__v123_lexpr = zext i32 %86 to i64
  %87 = load i32, i32* %__v16__len
  %88 = sub i32 %87, %__v23_minlen
  %__v124_lexpr = zext i32 %88 to i64
  %89 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %90 = getelementptr i8, i8* %__v3__out, i64 %__v121_lexpr
  %91 = sub i32 %__v20_inp_len, %__v23_minlen
  call void @SHA1_Update_secret(%SHA_CTX* %89, i32* %__v21_ctx_num, i8* %90, i64 %__v124_lexpr, i32 %91)
  %92 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %93 = load i32, i32* %__v21_ctx_num
  call void @SHA1_Final_secret(i8* %__v22_pmac, %SHA_CTX* %92, i32 %93)
  %94 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %95 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 2
  call void @__memcpy_SHA_CTX(%SHA_CTX* %94, %SHA_CTX* %95)
  %96 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  call void @SHA1_Update_public(%SHA_CTX* %96, i8* %__v22_pmac, i64 20)
  %97 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  call void @SHA1_Final_public(i8* %__v22_pmac, %SHA_CTX* %97)
  %98 = load i32, i32* %__v16__len
  %99 = icmp ult i32 %98, 276
  %100 = load i32, i32* %__v16__len
  %101 = sub i32 %100, 276
  %__v24_pub_start = select i1 %99, i32 0, i32 %101
  %102 = load i32, i32* %__v15_outp
  %103 = add i32 %102, %__v20_inp_len
  %104 = add i32 %103, 20
  %105 = load i32, i32* %__v16__len
  %__m3 = icmp ugt i32 %104, %105
  %106 = and i1 true, %__m3
  %107 = load i32, i32* %__v13_ret
  %108 = call i32 @fact.cmov.sel.i32(i1 %106, i32 0, i32 %107)
  store i32 %108, i32* %__v13_ret
  %__m4 = xor i1 %__m3, true
  %109 = load i32, i32* %__v15_outp
  %110 = add i32 %109, %__v24_pub_start
  %111 = load i32, i32* %__v16__len
  br label %112

; <label>:112:                                    ; preds = %137, %80
  %__v25_i = phi i32 [ %110, %80 ], [ %138, %137 ]
  %113 = icmp ult i32 %__v25_i, %111
  br i1 %113, label %114, label %139

; <label>:114:                                    ; preds = %112
  %__v26_j = alloca i32
  store i32 0, i32* %__v26_j
  %115 = load i32, i32* %__v15_outp
  %116 = add i32 %115, %__v20_inp_len
  %117 = icmp uge i32 %__v25_i, %116
  %118 = load i32, i32* %__v15_outp
  %119 = add i32 %118, %__v20_inp_len
  %120 = add i32 %119, 20
  %121 = icmp ult i32 %__v25_i, %120
  %__m5 = call i1 @fact.select.asm.i1(i1 %117, i1 %121, i1 false)
  %122 = load i32, i32* %__v15_outp
  %123 = add i32 %122, %__v20_inp_len
  %124 = sub i32 %__v25_i, %123
  %125 = and i1 true, %__m5
  %126 = load i32, i32* %__v26_j
  %127 = call i32 @fact.cmov.sel.i32(i1 %125, i32 %124, i32 %126)
  store i32 %127, i32* %__v26_j
  %__v125_lexpr = zext i32 %__v25_i to i64
  %128 = load i32, i32* %__v26_j
  %__v126_lexpr = zext i32 %128 to i64
  %129 = getelementptr i8, i8* %__v3__out, i64 %__v125_lexpr
  %130 = load i8, i8* %129
  %131 = getelementptr i8, i8* %__v22_pmac, i64 %__v126_lexpr
  %132 = load i8, i8* %131
  %__m6 = icmp ne i8 %130, %132
  %133 = and i1 true, %__m6
  %134 = and i1 %133, %__m5
  %135 = load i32, i32* %__v13_ret
  %136 = call i32 @fact.cmov.sel.i32(i1 %134, i32 0, i32 %135)
  store i32 %136, i32* %__v13_ret
  %__m7 = xor i1 %__m6, true
  %__m8 = xor i1 %__m5, true
  br label %137

; <label>:137:                                    ; preds = %114
  %138 = add i32 %__v25_i, 1
  br label %112

; <label>:139:                                    ; preds = %112
  %140 = load i32, i32* %__v13_ret
  ret i32 %140
}

attributes #0 = { alwaysinline }
attributes #1 = { argmemonly nounwind }
