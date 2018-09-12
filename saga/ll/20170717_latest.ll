; ModuleID = 'Module'
source_filename = "Module"

%SHA_CTX = type { [5 x i32], i32, i32, [64 x i8], i32 }
%EVP_AES_HMAC_SHA1 = type { %AES_KEY, %SHA_CTX, %SHA_CTX, %SHA_CTX, i64, [16 x i8] }
%AES_KEY = type { [60 x i32], i32 }

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

; Function Attrs: alwaysinline
define internal void @"__memcpy/SHA_CTX"(%SHA_CTX* %dst, %SHA_CTX* %src) #0 {
entry:
  %0 = bitcast %SHA_CTX* %dst to i8*
  %1 = bitcast %SHA_CTX* %src to i8*
  call void @fact.memcpy.i8(i8* %0, i8* %1, i64 ptrtoint (%SHA_CTX* getelementptr (%SHA_CTX, %SHA_CTX* null, i32 1) to i64))
  ret void
}

; Function Attrs: alwaysinline
define internal void @"__memzero[8]/secret"(i8* %dst, i64 %len) #0 {
entry:
  call void @fact.memset.i8(i8* %dst, i8 0, i64 %len)
  ret void
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
define internal void @"__store[32]/secret_le"(i8* %dst, i32 %value) #0 {
entry:
  %0 = bitcast i8* %dst to i32*
  store i32 %value, i32* %0
  ret void
}

; Function Attrs: alwaysinline
define internal i32 @"__load[32]/secret_le"(i8* %src) #0 {
entry:
  %0 = bitcast i8* %src to i32*
  %1 = load i32, i32* %0
  ret i32 %1
}

; Function Attrs: alwaysinline
define internal i16 @load16_be(i8* %__v64_buf) #0 {
entry:
  %__rval = alloca i16
  store i16 0, i16* %__rval
  %__rctx = alloca i1
  store i1 true, i1* %__rctx
  %0 = getelementptr i8, i8* %__v64_buf, i64 0
  %1 = load i8, i8* %0
  %2 = zext i8 %1 to i16
  %__v65_x2 = shl i16 %2, 8
  %3 = getelementptr i8, i8* %__v64_buf, i64 1
  %4 = load i8, i8* %3
  %__v66_x1 = zext i8 %4 to i16
  %5 = or i16 %__v66_x1, %__v65_x2
  ret i16 %5
}

declare void @SHA1_Final(i8*, i32*)

declare void @_sha1_update(i32*, i8*, i64)

; Function Attrs: alwaysinline
define internal i32 @bswap4(i32 %__v54_n) #0 {
entry:
  %__rval = alloca i32
  store i32 0, i32* %__rval
  %__rctx = alloca i1
  store i1 true, i1* %__rctx
  %0 = lshr i32 %__v54_n, 0
  %1 = and i32 %0, 255
  %__v55_x4 = shl i32 %1, 24
  %2 = lshr i32 %__v54_n, 8
  %3 = and i32 %2, 255
  %__v56_x3 = shl i32 %3, 16
  %4 = lshr i32 %__v54_n, 16
  %5 = and i32 %4, 255
  %__v57_x2 = shl i32 %5, 8
  %6 = lshr i32 %__v54_n, 24
  %7 = and i32 %6, 255
  %__v58_x1 = shl i32 %7, 0
  %8 = or i32 %__v58_x1, %__v57_x2
  %9 = or i32 %8, %__v56_x3
  %10 = or i32 %9, %__v55_x4
  ret i32 %10
}

; Function Attrs: alwaysinline
define internal void @cond_store(i8* %__v49_pmac, i32 %__v50_val, i1 %__v51_mask) #0 {
entry:
  %__rctx = alloca i1
  store i1 true, i1* %__rctx
  %__v52_pmac_val = call i32 @"__load[32]/secret_le"(i8* %__v49_pmac)
  %__v53_sval = call i32 @fact.select.sel.i32(i1 %__v51_mask, i32 %__v50_val, i32 %__v52_pmac_val)
  call void @"__store[32]/secret_le"(i8* %__v49_pmac, i32 %__v53_sval)
  ret void
}

; Function Attrs: alwaysinline
define internal i32 @fact.select.sel.i32(i1 %cond, i32 %x, i32 %y) #0 {
entry:
  %0 = select i1 %cond, i32 %x, i32 %y
  ret i32 %0
}

declare void @sha1_block_data_order(%SHA_CTX*, i8*, i32)

; Function Attrs: alwaysinline
define internal void @store16_be(i8* %__v44_buf, i16 %__v45_n) #0 {
entry:
  %__rctx = alloca i1
  store i1 true, i1* %__rctx
  %0 = getelementptr i8, i8* %__v44_buf, i64 0
  %1 = lshr i16 %__v45_n, 8
  %2 = trunc i16 %1 to i8
  store i8 %2, i8* %0
  %3 = getelementptr i8, i8* %__v44_buf, i64 1
  %4 = trunc i16 %__v45_n to i8
  store i8 %4, i8* %3
  ret void
}

declare void @aesni_cbc_encrypt(i8*, i8*, i64, i32*, i8*, i32)

define i32 @_aesni_cbc_hmac_sha1_cipher(i8* %__v1_iv, %EVP_AES_HMAC_SHA1* %__v2_key, i8* %__v3__out, i64 %__v77___v3__out_len, i8* %__v4__in, i64 %__v78___v4__in_len, i64 %__v5_plen, i16 %__v6_tls_ver) {
entry:
  %__rval = alloca i32
  store i32 0, i32* %__rval
  %__rctx = alloca i1
  store i1 true, i1* %__rctx
  %__v13_inp = alloca i32
  store i32 0, i32* %__v13_inp
  %__v14_outp = alloca i32
  store i32 0, i32* %__v14_outp
  %0 = trunc i64 %__v77___v3__out_len to i32
  %__v15__len = alloca i32
  store i32 %0, i32* %__v15__len
  %__v16_ret = alloca i32
  store i32 1, i32* %__v16_ret
  %1 = zext i16 %__v6_tls_ver to i32
  %2 = icmp uge i32 %1, 770
  br i1 %2, label %3, label %6

; <label>:3:                                      ; preds = %entry
  %4 = load i32, i32* %__v15__len
  %5 = icmp ult i32 %4, 37
  br i1 %5, label %56, label %57

; <label>:6:                                      ; preds = %entry
  %7 = load i32, i32* %__v15__len
  %8 = icmp ult i32 %7, 21
  br i1 %8, label %66, label %67

; <label>:9:                                      ; preds = %68, %58
  %10 = load i32, i32* %__v13_inp
  %__v84_lexpr = zext i32 %10 to i64
  %11 = load i32, i32* %__v15__len
  %__v85_lexpr = zext i32 %11 to i64
  %12 = load i32, i32* %__v14_outp
  %__v86_lexpr = zext i32 %12 to i64
  %13 = load i32, i32* %__v15__len
  %__v87_lexpr = zext i32 %13 to i64
  %14 = getelementptr i8, i8* %__v4__in, i64 %__v84_lexpr
  %15 = getelementptr i8, i8* %__v3__out, i64 %__v86_lexpr
  %16 = load i32, i32* %__v15__len
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 0
  %19 = getelementptr inbounds %AES_KEY, %AES_KEY* %18, i32 0, i32 0
  %20 = bitcast [60 x i32]* %19 to i32*
  call void @aesni_cbc_encrypt(i8* %14, i8* %15, i64 %17, i32* %20, i8* %__v1_iv, i32 0)
  %__v88_lexpr = sub i64 %__v77___v3__out_len, 1
  %21 = getelementptr i8, i8* %__v3__out, i64 %__v88_lexpr
  %22 = load i8, i8* %21
  %23 = zext i8 %22 to i32
  %__v17_pad = alloca i32
  store i32 %23, i32* %__v17_pad
  %24 = load i32, i32* %__v15__len
  %__v18_tmppad = sub i32 %24, 21
  %25 = icmp ugt i32 %__v18_tmppad, 255
  %__v19_maxpad = select i1 %25, i32 255, i32 %__v18_tmppad
  %26 = load i32, i32* %__v17_pad
  %__m1 = icmp ugt i32 %26, %__v19_maxpad
  %27 = and i1 true, %__m1
  %28 = load i32, i32* %__v17_pad
  %29 = call i32 @fact.cmov.sel.i32(i1 %27, i32 %__v19_maxpad, i32 %28)
  store i32 %29, i32* %__v17_pad
  %30 = and i1 true, %__m1
  %31 = load i32, i32* %__v16_ret
  %32 = call i32 @fact.cmov.sel.i32(i1 %30, i32 0, i32 %31)
  store i32 %32, i32* %__v16_ret
  %__m2 = xor i1 %__m1, true
  %33 = load i32, i32* %__v15__len
  %34 = load i32, i32* %__v17_pad
  %35 = add i32 20, %34
  %36 = add i32 %35, 1
  %37 = sub i32 %33, %36
  %__v20_inp_len = alloca i32
  store i32 %37, i32* %__v20_inp_len
  %__v89_lexpr = sub i64 %__v5_plen, 2
  %38 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 5
  %39 = bitcast [16 x i8]* %38 to i8*
  %40 = getelementptr i8, i8* %39, i64 %__v89_lexpr
  %41 = load i32, i32* %__v20_inp_len
  %42 = trunc i32 %41 to i16
  call void @store16_be(i8* %40, i16 %42)
  %43 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %44 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 1
  call void @"__memcpy/SHA_CTX"(%SHA_CTX* %43, %SHA_CTX* %44)
  %45 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %46 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %45, i32 0, i32 0
  %47 = bitcast [5 x i32]* %46 to i32*
  %48 = getelementptr i32, i32* %47, i64 0
  %49 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 5
  %50 = bitcast [16 x i8]* %49 to i8*
  %51 = getelementptr i8, i8* %50, i64 0
  call void @_sha1_update(i32* %48, i8* %51, i64 %__v5_plen)
  %52 = load i32, i32* %__v15__len
  %53 = sub i32 %52, 20
  store i32 %53, i32* %__v15__len
  %54 = load i32, i32* %__v15__len
  %55 = icmp uge i32 %54, 320
  br i1 %55, label %69, label %90

; <label>:56:                                     ; preds = %3
  ret i32 0

; <label>:57:                                     ; preds = %3
  br label %58

; <label>:58:                                     ; preds = %57
  %59 = getelementptr i8, i8* %__v4__in, i64 0
  call void @"__memcpy[8]/secret"(i8* %__v1_iv, i8* %59, i64 16)
  %60 = load i32, i32* %__v13_inp
  %61 = add i32 %60, 16
  store i32 %61, i32* %__v13_inp
  %62 = load i32, i32* %__v14_outp
  %63 = add i32 %62, 16
  store i32 %63, i32* %__v14_outp
  %64 = load i32, i32* %__v15__len
  %65 = sub i32 %64, 16
  store i32 %65, i32* %__v15__len
  br label %9

; <label>:66:                                     ; preds = %6
  ret i32 0

; <label>:67:                                     ; preds = %6
  br label %68

; <label>:68:                                     ; preds = %67
  br label %9

; <label>:69:                                     ; preds = %9
  %70 = load i32, i32* %__v15__len
  %71 = sub i32 %70, 320
  %72 = and i32 %71, -64
  %73 = add i32 %72, 64
  %74 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %75 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %74, i32 0, i32 4
  %76 = load i32, i32* %75
  %__v21_j = sub i32 %73, %76
  %77 = load i32, i32* %__v14_outp
  %__v90_lexpr = zext i32 %77 to i64
  %__v91_lexpr = zext i32 %__v21_j to i64
  %78 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %79 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %78, i32 0, i32 0
  %80 = bitcast [5 x i32]* %79 to i32*
  %81 = getelementptr i32, i32* %80, i64 0
  %82 = getelementptr i8, i8* %__v3__out, i64 %__v90_lexpr
  %83 = zext i32 %__v21_j to i64
  call void @_sha1_update(i32* %81, i8* %82, i64 %83)
  %84 = load i32, i32* %__v14_outp
  %85 = add i32 %84, %__v21_j
  store i32 %85, i32* %__v14_outp
  %86 = load i32, i32* %__v15__len
  %87 = sub i32 %86, %__v21_j
  store i32 %87, i32* %__v15__len
  %88 = load i32, i32* %__v20_inp_len
  %89 = sub i32 %88, %__v21_j
  store i32 %89, i32* %__v20_inp_len
  br label %91

; <label>:90:                                     ; preds = %9
  br label %91

; <label>:91:                                     ; preds = %90, %69
  %92 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %93 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %92, i32 0, i32 1
  %94 = load i32, i32* %93
  %95 = load i32, i32* %__v20_inp_len
  %96 = shl i32 %95, 3
  %97 = add i32 %94, %96
  %__v22_bitlen = call i32 @bswap4(i32 %97)
  %__v23_pmac = alloca i8, i64 20
  call void @fact.memset.i8(i8* %__v23_pmac, i8 0, i64 20)
  %98 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %99 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %98, i32 0, i32 4
  %100 = load i32, i32* %99
  %__v24_p_res = alloca i32
  store i32 %100, i32* %__v24_p_res
  %101 = load i32, i32* %__v15__len
  br label %102

; <label>:102:                                    ; preds = %124, %91
  %__v25_j = phi i32 [ 0, %91 ], [ %125, %124 ]
  %103 = icmp ult i32 %__v25_j, %101
  br i1 %103, label %104, label %126

; <label>:104:                                    ; preds = %102
  %105 = load i32, i32* %__v24_p_res
  %__v92_lexpr = zext i32 %105 to i64
  %106 = load i32, i32* %__v14_outp
  %107 = add i32 %106, %__v25_j
  %__v93_lexpr = zext i32 %107 to i64
  %108 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %109 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %108, i32 0, i32 3
  %110 = bitcast [64 x i8]* %109 to i8*
  %111 = getelementptr i8, i8* %110, i64 %__v92_lexpr
  %112 = load i32, i32* %__v20_inp_len
  %113 = icmp ult i32 %__v25_j, %112
  %114 = getelementptr i8, i8* %__v3__out, i64 %__v93_lexpr
  %115 = load i8, i8* %114
  %116 = load i32, i32* %__v20_inp_len
  %117 = icmp eq i32 %__v25_j, %116
  %118 = call i8 @fact.select.asm.i8(i1 %117, i8 -128, i8 0)
  %119 = call i8 @fact.select.asm.i8(i1 %113, i8 %115, i8 %118)
  store i8 %119, i8* %111
  %120 = load i32, i32* %__v24_p_res
  %121 = add i32 %120, 1
  store i32 %121, i32* %__v24_p_res
  %122 = load i32, i32* %__v24_p_res
  %123 = icmp eq i32 %122, 64
  br i1 %123, label %129, label %173

; <label>:124:                                    ; preds = %174
  %125 = add i32 %__v25_j, 1
  br label %102

; <label>:126:                                    ; preds = %102
  %127 = load i32, i32* %__v15__len
  %__v28_j = alloca i32
  store i32 %127, i32* %__v28_j
  %128 = load i32, i32* %__v24_p_res
  br label %175

; <label>:129:                                    ; preds = %104
  %130 = load i32, i32* %__v20_inp_len
  %131 = add i32 %130, 7
  %__v26_m1 = icmp ult i32 %131, %__v25_j
  %132 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %133 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %132, i32 0, i32 3
  %134 = bitcast [64 x i8]* %133 to i8*
  %135 = getelementptr i8, i8* %134, i64 60
  call void @cond_store(i8* %135, i32 %__v22_bitlen, i1 %__v26_m1)
  %136 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %137 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %138 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %137, i32 0, i32 3
  %139 = bitcast [64 x i8]* %138 to i8*
  call void @sha1_block_data_order(%SHA_CTX* %136, i8* %139, i32 1)
  %140 = load i32, i32* %__v20_inp_len
  %141 = add i32 %140, 72
  %142 = icmp ult i32 %__v25_j, %141
  %__v27_m2 = call i1 @fact.select.asm.i1(i1 %__v26_m1, i1 %142, i1 false)
  %143 = getelementptr i8, i8* %__v23_pmac, i64 0
  %144 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %145 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %144, i32 0, i32 0
  %146 = bitcast [5 x i32]* %145 to i32*
  %147 = getelementptr i32, i32* %146, i64 0
  %148 = load i32, i32* %147
  call void @cond_store(i8* %143, i32 %148, i1 %__v27_m2)
  %149 = getelementptr i8, i8* %__v23_pmac, i64 4
  %150 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %151 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %150, i32 0, i32 0
  %152 = bitcast [5 x i32]* %151 to i32*
  %153 = getelementptr i32, i32* %152, i64 1
  %154 = load i32, i32* %153
  call void @cond_store(i8* %149, i32 %154, i1 %__v27_m2)
  %155 = getelementptr i8, i8* %__v23_pmac, i64 8
  %156 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %157 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %156, i32 0, i32 0
  %158 = bitcast [5 x i32]* %157 to i32*
  %159 = getelementptr i32, i32* %158, i64 2
  %160 = load i32, i32* %159
  call void @cond_store(i8* %155, i32 %160, i1 %__v27_m2)
  %161 = getelementptr i8, i8* %__v23_pmac, i64 12
  %162 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %163 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %162, i32 0, i32 0
  %164 = bitcast [5 x i32]* %163 to i32*
  %165 = getelementptr i32, i32* %164, i64 3
  %166 = load i32, i32* %165
  call void @cond_store(i8* %161, i32 %166, i1 %__v27_m2)
  %167 = getelementptr i8, i8* %__v23_pmac, i64 16
  %168 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %169 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %168, i32 0, i32 0
  %170 = bitcast [5 x i32]* %169 to i32*
  %171 = getelementptr i32, i32* %170, i64 4
  %172 = load i32, i32* %171
  call void @cond_store(i8* %167, i32 %172, i1 %__v27_m2)
  store i32 0, i32* %__v24_p_res
  br label %174

; <label>:173:                                    ; preds = %104
  br label %174

; <label>:174:                                    ; preds = %173, %129
  br label %124

; <label>:175:                                    ; preds = %184, %126
  %__v29_i = phi i32 [ %128, %126 ], [ %185, %184 ]
  %176 = icmp ult i32 %__v29_i, 64
  br i1 %176, label %177, label %186

; <label>:177:                                    ; preds = %175
  %__v95_lexpr = zext i32 %__v29_i to i64
  %178 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %179 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %178, i32 0, i32 3
  %180 = bitcast [64 x i8]* %179 to i8*
  %181 = getelementptr i8, i8* %180, i64 %__v95_lexpr
  store i8 0, i8* %181
  %182 = load i32, i32* %__v28_j
  %183 = add i32 %182, 1
  store i32 %183, i32* %__v28_j
  br label %184

; <label>:184:                                    ; preds = %177
  %185 = add i32 %__v29_i, 1
  br label %175

; <label>:186:                                    ; preds = %175
  %187 = load i32, i32* %__v24_p_res
  %188 = icmp ugt i32 %187, 56
  br i1 %188, label %189, label %240

; <label>:189:                                    ; preds = %186
  %190 = load i32, i32* %__v20_inp_len
  %191 = add i32 %190, 8
  %192 = load i32, i32* %__v28_j
  %__v30_m1 = icmp ult i32 %191, %192
  %193 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %194 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %193, i32 0, i32 3
  %195 = bitcast [64 x i8]* %194 to i8*
  %196 = getelementptr i8, i8* %195, i64 60
  call void @cond_store(i8* %196, i32 %__v22_bitlen, i1 %__v30_m1)
  %197 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %198 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %199 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %198, i32 0, i32 3
  %200 = bitcast [64 x i8]* %199 to i8*
  call void @sha1_block_data_order(%SHA_CTX* %197, i8* %200, i32 1)
  %201 = load i32, i32* %__v28_j
  %202 = load i32, i32* %__v20_inp_len
  %203 = add i32 %202, 73
  %204 = icmp ult i32 %201, %203
  %__v31_m2 = call i1 @fact.select.asm.i1(i1 %__v30_m1, i1 %204, i1 false)
  %205 = getelementptr i8, i8* %__v23_pmac, i64 0
  %206 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %207 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %206, i32 0, i32 0
  %208 = bitcast [5 x i32]* %207 to i32*
  %209 = getelementptr i32, i32* %208, i64 0
  %210 = load i32, i32* %209
  call void @cond_store(i8* %205, i32 %210, i1 %__v31_m2)
  %211 = getelementptr i8, i8* %__v23_pmac, i64 4
  %212 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %213 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %212, i32 0, i32 0
  %214 = bitcast [5 x i32]* %213 to i32*
  %215 = getelementptr i32, i32* %214, i64 1
  %216 = load i32, i32* %215
  call void @cond_store(i8* %211, i32 %216, i1 %__v31_m2)
  %217 = getelementptr i8, i8* %__v23_pmac, i64 8
  %218 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %219 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %218, i32 0, i32 0
  %220 = bitcast [5 x i32]* %219 to i32*
  %221 = getelementptr i32, i32* %220, i64 2
  %222 = load i32, i32* %221
  call void @cond_store(i8* %217, i32 %222, i1 %__v31_m2)
  %223 = getelementptr i8, i8* %__v23_pmac, i64 12
  %224 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %225 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %224, i32 0, i32 0
  %226 = bitcast [5 x i32]* %225 to i32*
  %227 = getelementptr i32, i32* %226, i64 3
  %228 = load i32, i32* %227
  call void @cond_store(i8* %223, i32 %228, i1 %__v31_m2)
  %229 = getelementptr i8, i8* %__v23_pmac, i64 16
  %230 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %231 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %230, i32 0, i32 0
  %232 = bitcast [5 x i32]* %231 to i32*
  %233 = getelementptr i32, i32* %232, i64 4
  %234 = load i32, i32* %233
  call void @cond_store(i8* %229, i32 %234, i1 %__v31_m2)
  %235 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %236 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %235, i32 0, i32 3
  %237 = bitcast [64 x i8]* %236 to i8*
  call void @"__memzero[8]/secret"(i8* %237, i64 64)
  %238 = load i32, i32* %__v28_j
  %239 = add i32 %238, 64
  store i32 %239, i32* %__v28_j
  br label %241

; <label>:240:                                    ; preds = %186
  br label %241

; <label>:241:                                    ; preds = %240, %189
  %242 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %243 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %242, i32 0, i32 3
  %244 = bitcast [64 x i8]* %243 to i8*
  %245 = getelementptr i8, i8* %244, i64 60
  call void @"__store[32]/secret_le"(i8* %245, i32 %__v22_bitlen)
  %246 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %247 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %248 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %247, i32 0, i32 3
  %249 = bitcast [64 x i8]* %248 to i8*
  call void @sha1_block_data_order(%SHA_CTX* %246, i8* %249, i32 1)
  %250 = load i32, i32* %__v28_j
  %251 = load i32, i32* %__v20_inp_len
  %252 = add i32 %251, 73
  %__v32_m2 = icmp ult i32 %250, %252
  %253 = getelementptr i8, i8* %__v23_pmac, i64 0
  %254 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %255 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %254, i32 0, i32 0
  %256 = bitcast [5 x i32]* %255 to i32*
  %257 = getelementptr i32, i32* %256, i64 0
  %258 = load i32, i32* %257
  call void @cond_store(i8* %253, i32 %258, i1 %__v32_m2)
  %259 = getelementptr i8, i8* %__v23_pmac, i64 4
  %260 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %261 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %260, i32 0, i32 0
  %262 = bitcast [5 x i32]* %261 to i32*
  %263 = getelementptr i32, i32* %262, i64 1
  %264 = load i32, i32* %263
  call void @cond_store(i8* %259, i32 %264, i1 %__v32_m2)
  %265 = getelementptr i8, i8* %__v23_pmac, i64 8
  %266 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %267 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %266, i32 0, i32 0
  %268 = bitcast [5 x i32]* %267 to i32*
  %269 = getelementptr i32, i32* %268, i64 2
  %270 = load i32, i32* %269
  call void @cond_store(i8* %265, i32 %270, i1 %__v32_m2)
  %271 = getelementptr i8, i8* %__v23_pmac, i64 12
  %272 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %273 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %272, i32 0, i32 0
  %274 = bitcast [5 x i32]* %273 to i32*
  %275 = getelementptr i32, i32* %274, i64 3
  %276 = load i32, i32* %275
  call void @cond_store(i8* %271, i32 %276, i1 %__v32_m2)
  %277 = getelementptr i8, i8* %__v23_pmac, i64 16
  %278 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %279 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %278, i32 0, i32 0
  %280 = bitcast [5 x i32]* %279 to i32*
  %281 = getelementptr i32, i32* %280, i64 4
  %282 = load i32, i32* %281
  call void @cond_store(i8* %277, i32 %282, i1 %__v32_m2)
  %283 = getelementptr i8, i8* %__v23_pmac, i64 0
  %__v67_load_le = call i32 @"__load[32]/secret_le"(i8* %283)
  %__v68_bswap4 = call i32 @bswap4(i32 %__v67_load_le)
  %284 = getelementptr i8, i8* %__v23_pmac, i64 0
  call void @"__store[32]/secret_le"(i8* %284, i32 %__v68_bswap4)
  %285 = getelementptr i8, i8* %__v23_pmac, i64 4
  %__v69_load_le = call i32 @"__load[32]/secret_le"(i8* %285)
  %__v70_bswap4 = call i32 @bswap4(i32 %__v69_load_le)
  %286 = getelementptr i8, i8* %__v23_pmac, i64 4
  call void @"__store[32]/secret_le"(i8* %286, i32 %__v70_bswap4)
  %287 = getelementptr i8, i8* %__v23_pmac, i64 8
  %__v71_load_le = call i32 @"__load[32]/secret_le"(i8* %287)
  %__v72_bswap4 = call i32 @bswap4(i32 %__v71_load_le)
  %288 = getelementptr i8, i8* %__v23_pmac, i64 8
  call void @"__store[32]/secret_le"(i8* %288, i32 %__v72_bswap4)
  %289 = getelementptr i8, i8* %__v23_pmac, i64 12
  %__v73_load_le = call i32 @"__load[32]/secret_le"(i8* %289)
  %__v74_bswap4 = call i32 @bswap4(i32 %__v73_load_le)
  %290 = getelementptr i8, i8* %__v23_pmac, i64 12
  call void @"__store[32]/secret_le"(i8* %290, i32 %__v74_bswap4)
  %291 = getelementptr i8, i8* %__v23_pmac, i64 16
  %__v75_load_le = call i32 @"__load[32]/secret_le"(i8* %291)
  %__v76_bswap4 = call i32 @bswap4(i32 %__v75_load_le)
  %292 = getelementptr i8, i8* %__v23_pmac, i64 16
  call void @"__store[32]/secret_le"(i8* %292, i32 %__v76_bswap4)
  %293 = load i32, i32* %__v15__len
  %294 = add i32 %293, 20
  store i32 %294, i32* %__v15__len
  %295 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %296 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 2
  call void @"__memcpy/SHA_CTX"(%SHA_CTX* %295, %SHA_CTX* %296)
  %297 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %298 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %297, i32 0, i32 0
  %299 = bitcast [5 x i32]* %298 to i32*
  %300 = getelementptr i32, i32* %299, i64 0
  call void @_sha1_update(i32* %300, i8* %__v23_pmac, i64 20)
  %301 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %302 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %301, i32 0, i32 0
  %303 = bitcast [5 x i32]* %302 to i32*
  %304 = getelementptr i32, i32* %303, i64 0
  call void @SHA1_Final(i8* %__v23_pmac, i32* %304)
  %305 = load i32, i32* %__v14_outp
  %306 = load i32, i32* %__v20_inp_len
  %307 = add i32 %305, %306
  %__v33_s_outp = zext i32 %307 to i64
  %308 = sub i64 %__v77___v3__out_len, 1
  %309 = zext i32 %__v19_maxpad to i64
  %310 = sub i64 %308, %309
  %__v34_p_outp = sub i64 %310, 20
  %__v35_i = alloca i32
  store i32 0, i32* %__v35_i
  %311 = add i32 %__v19_maxpad, 20
  br label %312

; <label>:312:                                    ; preds = %343, %241
  %__v36_j = phi i32 [ 0, %241 ], [ %344, %343 ]
  %313 = icmp ult i32 %__v36_j, %311
  br i1 %313, label %314, label %345

; <label>:314:                                    ; preds = %312
  %315 = zext i32 %__v36_j to i64
  %__v99_lexpr = add i64 %__v34_p_outp, %315
  %316 = getelementptr i8, i8* %__v3__out, i64 %__v99_lexpr
  %317 = load i8, i8* %316
  %__v37_c = zext i8 %317 to i32
  %318 = zext i32 %__v36_j to i64
  %319 = add i64 %__v34_p_outp, %318
  %320 = add i64 %__v33_s_outp, 20
  %__m3 = icmp uge i64 %319, %320
  %321 = load i32, i32* %__v17_pad
  %__m4 = icmp ne i32 %__v37_c, %321
  %322 = and i1 true, %__m4
  %323 = and i1 %322, %__m3
  %324 = load i32, i32* %__v16_ret
  %325 = call i32 @fact.cmov.sel.i32(i1 %323, i32 0, i32 %324)
  store i32 %325, i32* %__v16_ret
  %__m5 = xor i1 %__m4, true
  %__m6 = xor i1 %__m3, true
  %326 = zext i32 %__v36_j to i64
  %327 = add i64 %__v34_p_outp, %326
  %__m7 = icmp uge i64 %327, %__v33_s_outp
  %328 = load i32, i32* %__v35_i
  %__v100_lexpr = zext i32 %328 to i64
  %329 = getelementptr i8, i8* %__v23_pmac, i64 %__v100_lexpr
  %330 = load i8, i8* %329
  %331 = zext i8 %330 to i32
  %__m8 = icmp ne i32 %__v37_c, %331
  %332 = and i1 true, %__m8
  %333 = and i1 %332, %__m7
  %334 = and i1 %333, %__m6
  %335 = load i32, i32* %__v16_ret
  %336 = call i32 @fact.cmov.sel.i32(i1 %334, i32 0, i32 %335)
  store i32 %336, i32* %__v16_ret
  %__m9 = xor i1 %__m8, true
  %337 = load i32, i32* %__v35_i
  %338 = add i32 %337, 1
  %339 = and i1 true, %__m7
  %340 = and i1 %339, %__m6
  %341 = load i32, i32* %__v35_i
  %342 = call i32 @fact.cmov.sel.i32(i1 %340, i32 %338, i32 %341)
  store i32 %342, i32* %__v35_i
  %__m10 = xor i1 %__m7, true
  br label %343

; <label>:343:                                    ; preds = %314
  %344 = add i32 %__v36_j, 1
  br label %312

; <label>:345:                                    ; preds = %312
  %346 = load i32, i32* %__v16_ret
  ret i32 %346
}

; Function Attrs: alwaysinline
define internal i32 @fact.cmov.sel.i32(i1 %cond, i32 %x, i32 %y) #0 {
entry:
  %0 = select i1 %cond, i32 %x, i32 %y
  ret i32 %0
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
define internal i1 @fact.select.asm.i1(i1 %cond, i1 %x, i1 %y) #0 {
entry:
  %0 = zext i1 %x to i32
  %1 = zext i1 %y to i32
  %2 = call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %cond, i32 %0, i32 %1)
  %3 = trunc i32 %2 to i1
  ret i1 %3
}

attributes #0 = { alwaysinline }
attributes #1 = { argmemonly nounwind }
