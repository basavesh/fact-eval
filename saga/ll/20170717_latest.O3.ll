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
define internal void @"__store[32]/secret/oblivious_le"(i8* %dst, i32 %value, i1 %fctx) #0 {
entry:
  %0 = bitcast i8* %dst to i32*
  %1 = load i32, i32* %0
  %2 = call i32 @fact.cmov.sel.i32(i1 %fctx, i32 %value, i32 %1)
  store i32 %2, i32* %0
  ret void
}

; Function Attrs: alwaysinline
define internal i32 @fact.cmov.sel.i32(i1 %cond, i32 %x, i32 %y) #0 {
entry:
  %0 = select i1 %cond, i32 %x, i32 %y
  ret i32 %0
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
define internal i16 @load16_be(i8* %__v56_buf) #0 {
entry:
  %__rval = alloca i16
  store i16 0, i16* %__rval
  %__rctx = alloca i1
  store i1 true, i1* %__rctx
  %0 = getelementptr i8, i8* %__v56_buf, i64 0
  %1 = load i8, i8* %0
  %2 = zext i8 %1 to i16
  %__v57_x2 = shl i16 %2, 8
  %3 = getelementptr i8, i8* %__v56_buf, i64 1
  %4 = load i8, i8* %3
  %__v58_x1 = zext i8 %4 to i16
  %5 = or i16 %__v58_x1, %__v57_x2
  ret i16 %5
}

declare void @SHA1_Final(i8*, i32*)

declare void @_sha1_update(i32*, i8*, i64)

; Function Attrs: alwaysinline
define internal i32 @bswap4(i32 %__v46_n) #0 {
entry:
  %__rval = alloca i32
  store i32 0, i32* %__rval
  %__rctx = alloca i1
  store i1 true, i1* %__rctx
  %0 = lshr i32 %__v46_n, 0
  %1 = and i32 %0, 255
  %__v47_x4 = shl i32 %1, 24
  %2 = lshr i32 %__v46_n, 8
  %3 = and i32 %2, 255
  %__v48_x3 = shl i32 %3, 16
  %4 = lshr i32 %__v46_n, 16
  %5 = and i32 %4, 255
  %__v49_x2 = shl i32 %5, 8
  %6 = lshr i32 %__v46_n, 24
  %7 = and i32 %6, 255
  %__v50_x1 = shl i32 %7, 0
  %8 = or i32 %__v50_x1, %__v49_x2
  %9 = or i32 %8, %__v48_x3
  %10 = or i32 %9, %__v47_x4
  ret i32 %10
}

declare void @sha1_block_data_order(%SHA_CTX*, i8*, i32)

; Function Attrs: alwaysinline
define internal void @store16_be(i8* %__v41_buf, i16 %__v42_n) #0 {
entry:
  %__rctx = alloca i1
  store i1 true, i1* %__rctx
  %0 = getelementptr i8, i8* %__v41_buf, i64 0
  %1 = lshr i16 %__v42_n, 8
  %2 = trunc i16 %1 to i8
  store i8 %2, i8* %0
  %3 = getelementptr i8, i8* %__v41_buf, i64 1
  %4 = trunc i16 %__v42_n to i8
  store i8 %4, i8* %3
  ret void
}

declare void @aesni_cbc_encrypt(i8*, i8*, i64, i32*, i8*, i32)

define i32 @_aesni_cbc_hmac_sha1_cipher(i8* %__v1_iv, %EVP_AES_HMAC_SHA1* %__v2_key, i8* %__v3__out, i64 %__v69___v3__out_len, i8* %__v4__in, i64 %__v70___v4__in_len, i64 %__v5_plen, i16 %__v6_tls_ver) {
entry:
  %__rval = alloca i32
  store i32 0, i32* %__rval
  %__rctx = alloca i1
  store i1 true, i1* %__rctx
  %__v13_inp = alloca i32
  store i32 0, i32* %__v13_inp
  %__v14_outp = alloca i32
  store i32 0, i32* %__v14_outp
  %0 = trunc i64 %__v69___v3__out_len to i32
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
  %__v76_lexpr = zext i32 %10 to i64
  %11 = load i32, i32* %__v15__len
  %__v77_lexpr = zext i32 %11 to i64
  %12 = load i32, i32* %__v14_outp
  %__v78_lexpr = zext i32 %12 to i64
  %13 = load i32, i32* %__v15__len
  %__v79_lexpr = zext i32 %13 to i64
  %14 = getelementptr i8, i8* %__v4__in, i64 %__v76_lexpr
  %15 = getelementptr i8, i8* %__v3__out, i64 %__v78_lexpr
  %16 = load i32, i32* %__v15__len
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 0
  %19 = getelementptr inbounds %AES_KEY, %AES_KEY* %18, i32 0, i32 0
  %20 = bitcast [60 x i32]* %19 to i32*
  call void @aesni_cbc_encrypt(i8* %14, i8* %15, i64 %17, i32* %20, i8* %__v1_iv, i32 0)
  %__v80_lexpr = sub i64 %__v69___v3__out_len, 1
  %21 = getelementptr i8, i8* %__v3__out, i64 %__v80_lexpr
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
  %__v81_lexpr = sub i64 %__v5_plen, 2
  %38 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 5
  %39 = bitcast [16 x i8]* %38 to i8*
  %40 = getelementptr i8, i8* %39, i64 %__v81_lexpr
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
  %__v82_lexpr = zext i32 %77 to i64
  %__v83_lexpr = zext i32 %__v21_j to i64
  %78 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %79 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %78, i32 0, i32 0
  %80 = bitcast [5 x i32]* %79 to i32*
  %81 = getelementptr i32, i32* %80, i64 0
  %82 = getelementptr i8, i8* %__v3__out, i64 %__v82_lexpr
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
  %__v84_lexpr = zext i32 %105 to i64
  %106 = load i32, i32* %__v14_outp
  %107 = add i32 %106, %__v25_j
  %__v85_lexpr = zext i32 %107 to i64
  %108 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %109 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %108, i32 0, i32 3
  %110 = bitcast [64 x i8]* %109 to i8*
  %111 = getelementptr i8, i8* %110, i64 %__v84_lexpr
  %112 = load i32, i32* %__v20_inp_len
  %113 = icmp ult i32 %__v25_j, %112
  %114 = getelementptr i8, i8* %__v3__out, i64 %__v85_lexpr
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
  br i1 %123, label %129, label %179

; <label>:124:                                    ; preds = %180
  %125 = add i32 %__v25_j, 1
  br label %102

; <label>:126:                                    ; preds = %102
  %127 = load i32, i32* %__v15__len
  %__v27_j = alloca i32
  store i32 %127, i32* %__v27_j
  %128 = load i32, i32* %__v24_p_res
  br label %181

; <label>:129:                                    ; preds = %104
  %130 = load i32, i32* %__v20_inp_len
  %131 = add i32 %130, 7
  %__m17 = icmp ult i32 %131, %__v25_j
  %132 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %133 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %132, i32 0, i32 3
  %134 = bitcast [64 x i8]* %133 to i8*
  %135 = getelementptr i8, i8* %134, i64 60
  %136 = and i1 true, %__m17
  call void @"__store[32]/secret/oblivious_le"(i8* %135, i32 %__v22_bitlen, i1 %136)
  %__m18 = xor i1 %__m17, true
  %137 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %138 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %139 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %138, i32 0, i32 3
  %140 = bitcast [64 x i8]* %139 to i8*
  call void @sha1_block_data_order(%SHA_CTX* %137, i8* %140, i32 1)
  %141 = load i32, i32* %__v20_inp_len
  %142 = add i32 %141, 72
  %143 = icmp ult i32 %__v25_j, %142
  %__m19 = call i1 @fact.select.asm.i1(i1 %__m17, i1 %143, i1 false)
  %144 = getelementptr i8, i8* %__v23_pmac, i64 0
  %145 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %146 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %145, i32 0, i32 0
  %147 = bitcast [5 x i32]* %146 to i32*
  %148 = getelementptr i32, i32* %147, i64 0
  %149 = load i32, i32* %148
  %150 = and i1 true, %__m19
  call void @"__store[32]/secret/oblivious_le"(i8* %144, i32 %149, i1 %150)
  %151 = getelementptr i8, i8* %__v23_pmac, i64 4
  %152 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %153 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %152, i32 0, i32 0
  %154 = bitcast [5 x i32]* %153 to i32*
  %155 = getelementptr i32, i32* %154, i64 1
  %156 = load i32, i32* %155
  %157 = and i1 true, %__m19
  call void @"__store[32]/secret/oblivious_le"(i8* %151, i32 %156, i1 %157)
  %158 = getelementptr i8, i8* %__v23_pmac, i64 8
  %159 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %160 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %159, i32 0, i32 0
  %161 = bitcast [5 x i32]* %160 to i32*
  %162 = getelementptr i32, i32* %161, i64 2
  %163 = load i32, i32* %162
  %164 = and i1 true, %__m19
  call void @"__store[32]/secret/oblivious_le"(i8* %158, i32 %163, i1 %164)
  %165 = getelementptr i8, i8* %__v23_pmac, i64 12
  %166 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %167 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %166, i32 0, i32 0
  %168 = bitcast [5 x i32]* %167 to i32*
  %169 = getelementptr i32, i32* %168, i64 3
  %170 = load i32, i32* %169
  %171 = and i1 true, %__m19
  call void @"__store[32]/secret/oblivious_le"(i8* %165, i32 %170, i1 %171)
  %172 = getelementptr i8, i8* %__v23_pmac, i64 16
  %173 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %174 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %173, i32 0, i32 0
  %175 = bitcast [5 x i32]* %174 to i32*
  %176 = getelementptr i32, i32* %175, i64 4
  %177 = load i32, i32* %176
  %178 = and i1 true, %__m19
  call void @"__store[32]/secret/oblivious_le"(i8* %172, i32 %177, i1 %178)
  %__m20 = xor i1 %__m19, true
  store i32 0, i32* %__v24_p_res
  br label %180

; <label>:179:                                    ; preds = %104
  br label %180

; <label>:180:                                    ; preds = %179, %129
  br label %124

; <label>:181:                                    ; preds = %190, %126
  %__v28_i = phi i32 [ %128, %126 ], [ %191, %190 ]
  %182 = icmp ult i32 %__v28_i, 64
  br i1 %182, label %183, label %192

; <label>:183:                                    ; preds = %181
  %__v88_lexpr = zext i32 %__v28_i to i64
  %184 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %185 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %184, i32 0, i32 3
  %186 = bitcast [64 x i8]* %185 to i8*
  %187 = getelementptr i8, i8* %186, i64 %__v88_lexpr
  store i8 0, i8* %187
  %188 = load i32, i32* %__v27_j
  %189 = add i32 %188, 1
  store i32 %189, i32* %__v27_j
  br label %190

; <label>:190:                                    ; preds = %183
  %191 = add i32 %__v28_i, 1
  br label %181

; <label>:192:                                    ; preds = %181
  %193 = load i32, i32* %__v24_p_res
  %194 = icmp ugt i32 %193, 56
  br i1 %194, label %195, label %252

; <label>:195:                                    ; preds = %192
  %196 = load i32, i32* %__v20_inp_len
  %197 = add i32 %196, 8
  %198 = load i32, i32* %__v27_j
  %__m13 = icmp ult i32 %197, %198
  %199 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %200 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %199, i32 0, i32 3
  %201 = bitcast [64 x i8]* %200 to i8*
  %202 = getelementptr i8, i8* %201, i64 60
  %203 = and i1 true, %__m13
  call void @"__store[32]/secret/oblivious_le"(i8* %202, i32 %__v22_bitlen, i1 %203)
  %__m14 = xor i1 %__m13, true
  %204 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %205 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %206 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %205, i32 0, i32 3
  %207 = bitcast [64 x i8]* %206 to i8*
  call void @sha1_block_data_order(%SHA_CTX* %204, i8* %207, i32 1)
  %208 = load i32, i32* %__v27_j
  %209 = load i32, i32* %__v20_inp_len
  %210 = add i32 %209, 73
  %211 = icmp ult i32 %208, %210
  %__m15 = call i1 @fact.select.asm.i1(i1 %__m13, i1 %211, i1 false)
  %212 = getelementptr i8, i8* %__v23_pmac, i64 0
  %213 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %214 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %213, i32 0, i32 0
  %215 = bitcast [5 x i32]* %214 to i32*
  %216 = getelementptr i32, i32* %215, i64 0
  %217 = load i32, i32* %216
  %218 = and i1 true, %__m15
  call void @"__store[32]/secret/oblivious_le"(i8* %212, i32 %217, i1 %218)
  %219 = getelementptr i8, i8* %__v23_pmac, i64 4
  %220 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %221 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %220, i32 0, i32 0
  %222 = bitcast [5 x i32]* %221 to i32*
  %223 = getelementptr i32, i32* %222, i64 1
  %224 = load i32, i32* %223
  %225 = and i1 true, %__m15
  call void @"__store[32]/secret/oblivious_le"(i8* %219, i32 %224, i1 %225)
  %226 = getelementptr i8, i8* %__v23_pmac, i64 8
  %227 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %228 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %227, i32 0, i32 0
  %229 = bitcast [5 x i32]* %228 to i32*
  %230 = getelementptr i32, i32* %229, i64 2
  %231 = load i32, i32* %230
  %232 = and i1 true, %__m15
  call void @"__store[32]/secret/oblivious_le"(i8* %226, i32 %231, i1 %232)
  %233 = getelementptr i8, i8* %__v23_pmac, i64 12
  %234 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %235 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %234, i32 0, i32 0
  %236 = bitcast [5 x i32]* %235 to i32*
  %237 = getelementptr i32, i32* %236, i64 3
  %238 = load i32, i32* %237
  %239 = and i1 true, %__m15
  call void @"__store[32]/secret/oblivious_le"(i8* %233, i32 %238, i1 %239)
  %240 = getelementptr i8, i8* %__v23_pmac, i64 16
  %241 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %242 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %241, i32 0, i32 0
  %243 = bitcast [5 x i32]* %242 to i32*
  %244 = getelementptr i32, i32* %243, i64 4
  %245 = load i32, i32* %244
  %246 = and i1 true, %__m15
  call void @"__store[32]/secret/oblivious_le"(i8* %240, i32 %245, i1 %246)
  %__m16 = xor i1 %__m15, true
  %247 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %248 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %247, i32 0, i32 3
  %249 = bitcast [64 x i8]* %248 to i8*
  call void @"__memzero[8]/secret"(i8* %249, i64 64)
  %250 = load i32, i32* %__v27_j
  %251 = add i32 %250, 64
  store i32 %251, i32* %__v27_j
  br label %253

; <label>:252:                                    ; preds = %192
  br label %253

; <label>:253:                                    ; preds = %252, %195
  %254 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %255 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %254, i32 0, i32 3
  %256 = bitcast [64 x i8]* %255 to i8*
  %257 = getelementptr i8, i8* %256, i64 60
  call void @"__store[32]/secret_le"(i8* %257, i32 %__v22_bitlen)
  %258 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %259 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %260 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %259, i32 0, i32 3
  %261 = bitcast [64 x i8]* %260 to i8*
  call void @sha1_block_data_order(%SHA_CTX* %258, i8* %261, i32 1)
  %262 = load i32, i32* %__v27_j
  %263 = load i32, i32* %__v20_inp_len
  %264 = add i32 %263, 73
  %__m3 = icmp ult i32 %262, %264
  %265 = getelementptr i8, i8* %__v23_pmac, i64 0
  %266 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %267 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %266, i32 0, i32 0
  %268 = bitcast [5 x i32]* %267 to i32*
  %269 = getelementptr i32, i32* %268, i64 0
  %270 = load i32, i32* %269
  %271 = and i1 true, %__m3
  call void @"__store[32]/secret/oblivious_le"(i8* %265, i32 %270, i1 %271)
  %272 = getelementptr i8, i8* %__v23_pmac, i64 4
  %273 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %274 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %273, i32 0, i32 0
  %275 = bitcast [5 x i32]* %274 to i32*
  %276 = getelementptr i32, i32* %275, i64 1
  %277 = load i32, i32* %276
  %278 = and i1 true, %__m3
  call void @"__store[32]/secret/oblivious_le"(i8* %272, i32 %277, i1 %278)
  %279 = getelementptr i8, i8* %__v23_pmac, i64 8
  %280 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %281 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %280, i32 0, i32 0
  %282 = bitcast [5 x i32]* %281 to i32*
  %283 = getelementptr i32, i32* %282, i64 2
  %284 = load i32, i32* %283
  %285 = and i1 true, %__m3
  call void @"__store[32]/secret/oblivious_le"(i8* %279, i32 %284, i1 %285)
  %286 = getelementptr i8, i8* %__v23_pmac, i64 12
  %287 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %288 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %287, i32 0, i32 0
  %289 = bitcast [5 x i32]* %288 to i32*
  %290 = getelementptr i32, i32* %289, i64 3
  %291 = load i32, i32* %290
  %292 = and i1 true, %__m3
  call void @"__store[32]/secret/oblivious_le"(i8* %286, i32 %291, i1 %292)
  %293 = getelementptr i8, i8* %__v23_pmac, i64 16
  %294 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %295 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %294, i32 0, i32 0
  %296 = bitcast [5 x i32]* %295 to i32*
  %297 = getelementptr i32, i32* %296, i64 4
  %298 = load i32, i32* %297
  %299 = and i1 true, %__m3
  call void @"__store[32]/secret/oblivious_le"(i8* %293, i32 %298, i1 %299)
  %__m4 = xor i1 %__m3, true
  %300 = getelementptr i8, i8* %__v23_pmac, i64 0
  %__v59_load_le = call i32 @"__load[32]/secret_le"(i8* %300)
  %__v60_bswap4 = call i32 @bswap4(i32 %__v59_load_le)
  %301 = getelementptr i8, i8* %__v23_pmac, i64 0
  call void @"__store[32]/secret_le"(i8* %301, i32 %__v60_bswap4)
  %302 = getelementptr i8, i8* %__v23_pmac, i64 4
  %__v61_load_le = call i32 @"__load[32]/secret_le"(i8* %302)
  %__v62_bswap4 = call i32 @bswap4(i32 %__v61_load_le)
  %303 = getelementptr i8, i8* %__v23_pmac, i64 4
  call void @"__store[32]/secret_le"(i8* %303, i32 %__v62_bswap4)
  %304 = getelementptr i8, i8* %__v23_pmac, i64 8
  %__v63_load_le = call i32 @"__load[32]/secret_le"(i8* %304)
  %__v64_bswap4 = call i32 @bswap4(i32 %__v63_load_le)
  %305 = getelementptr i8, i8* %__v23_pmac, i64 8
  call void @"__store[32]/secret_le"(i8* %305, i32 %__v64_bswap4)
  %306 = getelementptr i8, i8* %__v23_pmac, i64 12
  %__v65_load_le = call i32 @"__load[32]/secret_le"(i8* %306)
  %__v66_bswap4 = call i32 @bswap4(i32 %__v65_load_le)
  %307 = getelementptr i8, i8* %__v23_pmac, i64 12
  call void @"__store[32]/secret_le"(i8* %307, i32 %__v66_bswap4)
  %308 = getelementptr i8, i8* %__v23_pmac, i64 16
  %__v67_load_le = call i32 @"__load[32]/secret_le"(i8* %308)
  %__v68_bswap4 = call i32 @bswap4(i32 %__v67_load_le)
  %309 = getelementptr i8, i8* %__v23_pmac, i64 16
  call void @"__store[32]/secret_le"(i8* %309, i32 %__v68_bswap4)
  %310 = load i32, i32* %__v15__len
  %311 = add i32 %310, 20
  store i32 %311, i32* %__v15__len
  %312 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %313 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 2
  call void @"__memcpy/SHA_CTX"(%SHA_CTX* %312, %SHA_CTX* %313)
  %314 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %315 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %314, i32 0, i32 0
  %316 = bitcast [5 x i32]* %315 to i32*
  %317 = getelementptr i32, i32* %316, i64 0
  call void @_sha1_update(i32* %317, i8* %__v23_pmac, i64 20)
  %318 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %319 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %318, i32 0, i32 0
  %320 = bitcast [5 x i32]* %319 to i32*
  %321 = getelementptr i32, i32* %320, i64 0
  call void @SHA1_Final(i8* %__v23_pmac, i32* %321)
  %322 = load i32, i32* %__v14_outp
  %323 = load i32, i32* %__v20_inp_len
  %324 = add i32 %322, %323
  %__v30_s_outp = zext i32 %324 to i64
  %325 = sub i64 %__v69___v3__out_len, 1
  %326 = zext i32 %__v19_maxpad to i64
  %327 = sub i64 %325, %326
  %__v31_p_outp = sub i64 %327, 20
  %__v32_i = alloca i32
  store i32 0, i32* %__v32_i
  %328 = add i32 %__v19_maxpad, 20
  br label %329

; <label>:329:                                    ; preds = %360, %253
  %__v33_j = phi i32 [ 0, %253 ], [ %361, %360 ]
  %330 = icmp ult i32 %__v33_j, %328
  br i1 %330, label %331, label %362

; <label>:331:                                    ; preds = %329
  %332 = zext i32 %__v33_j to i64
  %__v93_lexpr = add i64 %__v31_p_outp, %332
  %333 = getelementptr i8, i8* %__v3__out, i64 %__v93_lexpr
  %334 = load i8, i8* %333
  %__v34_c = zext i8 %334 to i32
  %335 = zext i32 %__v33_j to i64
  %336 = add i64 %__v31_p_outp, %335
  %337 = add i64 %__v30_s_outp, 20
  %__m5 = icmp uge i64 %336, %337
  %338 = load i32, i32* %__v17_pad
  %__m6 = icmp ne i32 %__v34_c, %338
  %339 = and i1 true, %__m6
  %340 = and i1 %339, %__m5
  %341 = load i32, i32* %__v16_ret
  %342 = call i32 @fact.cmov.sel.i32(i1 %340, i32 0, i32 %341)
  store i32 %342, i32* %__v16_ret
  %__m7 = xor i1 %__m6, true
  %__m8 = xor i1 %__m5, true
  %343 = zext i32 %__v33_j to i64
  %344 = add i64 %__v31_p_outp, %343
  %__m9 = icmp uge i64 %344, %__v30_s_outp
  %345 = load i32, i32* %__v32_i
  %__v94_lexpr = zext i32 %345 to i64
  %346 = getelementptr i8, i8* %__v23_pmac, i64 %__v94_lexpr
  %347 = load i8, i8* %346
  %348 = zext i8 %347 to i32
  %__m10 = icmp ne i32 %__v34_c, %348
  %349 = and i1 true, %__m10
  %350 = and i1 %349, %__m9
  %351 = and i1 %350, %__m8
  %352 = load i32, i32* %__v16_ret
  %353 = call i32 @fact.cmov.sel.i32(i1 %351, i32 0, i32 %352)
  store i32 %353, i32* %__v16_ret
  %__m11 = xor i1 %__m10, true
  %354 = load i32, i32* %__v32_i
  %355 = add i32 %354, 1
  %356 = and i1 true, %__m9
  %357 = and i1 %356, %__m8
  %358 = load i32, i32* %__v32_i
  %359 = call i32 @fact.cmov.sel.i32(i1 %357, i32 %355, i32 %358)
  store i32 %359, i32* %__v32_i
  %__m12 = xor i1 %__m9, true
  br label %360

; <label>:360:                                    ; preds = %331
  %361 = add i32 %__v33_j, 1
  br label %329

; <label>:362:                                    ; preds = %329
  %363 = load i32, i32* %__v16_ret
  ret i32 %363
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
