; ModuleID = 'Module'
source_filename = "Module"

%SHA_CTX = type { i32, i32, i32, i32, i32, i32, i32, [64 x i8], i32 }
%EVP_AES_HMAC_SHA1 = type { %AES_KEY, %SHA_CTX, %SHA_CTX, %SHA_CTX, i64, [16 x i8] }
%AES_KEY = type { [60 x i32], i32 }

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
define internal void @"__memzero[8]_secret"(i8* %dst, i64 %len) #0 {
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
define internal void @"__store[32]_secret_le"(i8* %dst, i32 %value) #0 {
entry:
  %0 = bitcast i8* %dst to i32*
  store i32 %value, i32* %0
  ret void
}

; Function Attrs: alwaysinline
define internal i32 @"__load[32]_secret_le"(i8* %src) #0 {
entry:
  %0 = bitcast i8* %src to i32*
  %1 = load i32, i32* %0
  ret i32 %1
}

declare void @SHA1_Final(i8*, i32*)

declare void @_sha1_update(i32*, i8*, i64)

; Function Attrs: alwaysinline
define internal i32 @bswap4(i32 %__v61_n) #0 {
entry:
  %__rval = alloca i32
  store i32 0, i32* %__rval
  %__rctx = alloca i1
  store i1 true, i1* %__rctx
  %0 = lshr i32 %__v61_n, 0
  %1 = and i32 %0, 255
  %__v62_x4 = shl i32 %1, 24
  %2 = lshr i32 %__v61_n, 8
  %3 = and i32 %2, 255
  %__v63_x3 = shl i32 %3, 16
  %4 = lshr i32 %__v61_n, 16
  %5 = and i32 %4, 255
  %__v64_x2 = shl i32 %5, 8
  %6 = lshr i32 %__v61_n, 24
  %7 = and i32 %6, 255
  %__v65_x1 = shl i32 %7, 0
  %8 = or i32 %__v65_x1, %__v64_x2
  %9 = or i32 %8, %__v63_x3
  %10 = or i32 %9, %__v62_x4
  ret i32 %10
}

; Function Attrs: alwaysinline
define internal void @pmac_oreq(i8* %__v58_pmac, i32 %__v59_masked_val) #0 {
entry:
  %__rctx = alloca i1
  store i1 true, i1* %__rctx
  %__v60_pmac_val = call i32 @"__load[32]_secret_le"(i8* %__v58_pmac)
  %0 = or i32 %__v60_pmac_val, %__v59_masked_val
  call void @"__store[32]_secret_le"(i8* %__v58_pmac, i32 %0)
  ret void
}

declare void @sha1_block_data_order(i32*, i8*, i32)

; Function Attrs: alwaysinline
define internal i32 @constant_time_select(i32 %__v52_mask, i32 %__v53_a, i32 %__v54_b) #0 {
entry:
  %__rval = alloca i32
  store i32 0, i32* %__rval
  %__rctx = alloca i1
  store i1 true, i1* %__rctx
  %0 = and i32 %__v52_mask, %__v53_a
  %1 = xor i32 %__v52_mask, -1
  %2 = and i32 %1, %__v54_b
  %3 = or i32 %0, %2
  ret i32 %3
}

; Function Attrs: alwaysinline
define internal i32 @constant_time_msb(i32 %__v51_a) #0 {
entry:
  %__rval = alloca i32
  store i32 0, i32* %__rval
  %__rctx = alloca i1
  store i1 true, i1* %__rctx
  %0 = lshr i32 %__v51_a, 31
  %1 = sub i32 0, %0
  ret i32 %1
}

; Function Attrs: alwaysinline
define internal i32 @constant_time_lt(i32 %__v49_a, i32 %__v50_b) #0 {
entry:
  %__rval = alloca i32
  store i32 0, i32* %__rval
  %__rctx = alloca i1
  store i1 true, i1* %__rctx
  %0 = xor i32 %__v49_a, %__v50_b
  %1 = sub i32 %__v49_a, %__v50_b
  %2 = xor i32 %1, %__v50_b
  %3 = or i32 %0, %2
  %4 = xor i32 %__v49_a, %3
  %__v84_constant_time_msb = call i32 @constant_time_msb(i32 %4)
  ret i32 %__v84_constant_time_msb
}

; Function Attrs: alwaysinline
define internal i32 @constant_time_ge(i32 %__v47_a, i32 %__v48_b) #0 {
entry:
  %__rval = alloca i32
  store i32 0, i32* %__rval
  %__rctx = alloca i1
  store i1 true, i1* %__rctx
  %__v83_constant_time_lt = call i32 @constant_time_lt(i32 %__v47_a, i32 %__v48_b)
  %0 = xor i32 %__v83_constant_time_lt, -1
  ret i32 %0
}

declare void @aesni_cbc_encrypt(i8*, i8*, i64, i32*, i8*, i32)

define i32 @_aesni_cbc_hmac_sha1_cipher(i8* %__v1_iv, %EVP_AES_HMAC_SHA1* %__v2_key, i8* %__v3__out, i64 %__v85___v3__out_len, i8* %__v4__in, i64 %__v86___v4__in_len, i64 %__v5_plen, i16 %__v6_tls_ver) {
entry:
  %__rval = alloca i32
  store i32 0, i32* %__rval
  %__rctx = alloca i1
  store i1 true, i1* %__rctx
  %__v13_inp = alloca i64
  store i64 0, i64* %__v13_inp
  %__v14_outp = alloca i64
  store i64 0, i64* %__v14_outp
  %__v15__len = alloca i64
  store i64 %__v85___v3__out_len, i64* %__v15__len
  %__v16_ret = alloca i32
  store i32 1, i32* %__v16_ret
  %0 = zext i16 %__v6_tls_ver to i32
  %1 = icmp uge i32 %0, 770
  br i1 %1, label %2, label %4

; <label>:2:                                      ; preds = %entry
  %3 = icmp ult i64 %__v85___v3__out_len, 37
  br i1 %3, label %62, label %63

; <label>:4:                                      ; preds = %entry
  %5 = load i64, i64* %__v15__len
  %6 = icmp ult i64 %5, 21
  br i1 %6, label %72, label %73

; <label>:7:                                      ; preds = %74, %64
  %__v91_lexpr = load i64, i64* %__v13_inp
  %__v92_lexpr = load i64, i64* %__v15__len
  %__v93_lexpr = load i64, i64* %__v14_outp
  %__v94_lexpr = load i64, i64* %__v15__len
  %8 = getelementptr i8, i8* %__v4__in, i64 %__v91_lexpr
  %9 = getelementptr i8, i8* %__v3__out, i64 %__v93_lexpr
  %10 = load i64, i64* %__v15__len
  %11 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 0
  %12 = getelementptr inbounds %AES_KEY, %AES_KEY* %11, i32 0, i32 0
  %13 = bitcast [60 x i32]* %12 to i32*
  call void @aesni_cbc_encrypt(i8* %8, i8* %9, i64 %10, i32* %13, i8* %__v1_iv, i32 0)
  %__v95_lexpr = sub i64 %__v85___v3__out_len, 1
  %14 = getelementptr i8, i8* %__v3__out, i64 %__v95_lexpr
  %15 = load i8, i8* %14
  %16 = zext i8 %15 to i32
  %__v17_pad = alloca i32
  store i32 %16, i32* %__v17_pad
  %17 = load i64, i64* %__v15__len
  %18 = sub i64 %17, 21
  %19 = trunc i64 %18 to i32
  %__v18_maxpad = alloca i32
  store i32 %19, i32* %__v18_maxpad
  %20 = load i32, i32* %__v18_maxpad
  %21 = load i32, i32* %__v18_maxpad
  %22 = sub i32 255, %21
  %23 = ashr i32 %22, 24
  %24 = or i32 %20, %23
  store i32 %24, i32* %__v18_maxpad
  %25 = load i32, i32* %__v18_maxpad
  %26 = and i32 %25, 255
  store i32 %26, i32* %__v18_maxpad
  %27 = load i32, i32* %__v18_maxpad
  %28 = load i32, i32* %__v17_pad
  %__v19_mask = call i32 @constant_time_ge(i32 %27, i32 %28)
  %29 = load i32, i32* %__v16_ret
  %30 = and i32 %29, %__v19_mask
  store i32 %30, i32* %__v16_ret
  %31 = load i32, i32* %__v17_pad
  %32 = load i32, i32* %__v18_maxpad
  %__v71_constant_time_select = call i32 @constant_time_select(i32 %__v19_mask, i32 %31, i32 %32)
  store i32 %__v71_constant_time_select, i32* %__v17_pad
  %33 = load i64, i64* %__v15__len
  %34 = load i32, i32* %__v17_pad
  %35 = add i32 20, %34
  %36 = add i32 %35, 1
  %37 = zext i32 %36 to i64
  %38 = sub i64 %33, %37
  %__v20_inp_len = alloca i64
  store i64 %38, i64* %__v20_inp_len
  %__v96_lexpr = sub i64 %__v5_plen, 2
  %39 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 5
  %40 = bitcast [16 x i8]* %39 to i8*
  %41 = getelementptr i8, i8* %40, i64 %__v96_lexpr
  %42 = load i64, i64* %__v20_inp_len
  %43 = lshr i64 %42, 8
  %44 = trunc i64 %43 to i8
  store i8 %44, i8* %41
  %__v97_lexpr = sub i64 %__v5_plen, 1
  %45 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 5
  %46 = bitcast [16 x i8]* %45 to i8*
  %47 = getelementptr i8, i8* %46, i64 %__v97_lexpr
  %48 = load i64, i64* %__v20_inp_len
  %49 = lshr i64 %48, 0
  %50 = trunc i64 %49 to i8
  store i8 %50, i8* %47
  %51 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %52 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 1
  call void @__memcpy_SHA_CTX(%SHA_CTX* %51, %SHA_CTX* %52)
  %53 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %54 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %53, i32 0, i32 0
  %55 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 5
  %56 = bitcast [16 x i8]* %55 to i8*
  %57 = getelementptr i8, i8* %56, i64 0
  call void @_sha1_update(i32* %54, i8* %57, i64 %__v5_plen)
  %58 = load i64, i64* %__v15__len
  %59 = sub i64 %58, 20
  store i64 %59, i64* %__v15__len
  %60 = load i64, i64* %__v15__len
  %61 = icmp uge i64 %60, 320
  br i1 %61, label %75, label %104

; <label>:62:                                     ; preds = %2
  ret i32 0

; <label>:63:                                     ; preds = %2
  br label %64

; <label>:64:                                     ; preds = %63
  %65 = getelementptr i8, i8* %__v4__in, i64 0
  call void @"__memcpy[8]_public"(i8* %__v1_iv, i8* %65, i64 16)
  %66 = load i64, i64* %__v13_inp
  %67 = add i64 %66, 16
  store i64 %67, i64* %__v13_inp
  %68 = load i64, i64* %__v14_outp
  %69 = add i64 %68, 16
  store i64 %69, i64* %__v14_outp
  %70 = load i64, i64* %__v15__len
  %71 = sub i64 %70, 16
  store i64 %71, i64* %__v15__len
  br label %7

; <label>:72:                                     ; preds = %4
  ret i32 0

; <label>:73:                                     ; preds = %4
  br label %74

; <label>:74:                                     ; preds = %73
  br label %7

; <label>:75:                                     ; preds = %7
  %76 = load i64, i64* %__v15__len
  %77 = sub i64 %76, 320
  %78 = trunc i64 %77 to i32
  %79 = and i32 %78, -64
  %__v21_j = alloca i32
  store i32 %79, i32* %__v21_j
  %80 = load i32, i32* %__v21_j
  %81 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %82 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %81, i32 0, i32 8
  %83 = load i32, i32* %82
  %84 = sub i32 64, %83
  %85 = add i32 %80, %84
  store i32 %85, i32* %__v21_j
  %__v98_lexpr = load i64, i64* %__v14_outp
  %86 = load i32, i32* %__v21_j
  %__v99_lexpr = zext i32 %86 to i64
  %87 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %88 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %87, i32 0, i32 0
  %89 = getelementptr i8, i8* %__v3__out, i64 %__v98_lexpr
  %90 = load i32, i32* %__v21_j
  %91 = zext i32 %90 to i64
  call void @_sha1_update(i32* %88, i8* %89, i64 %91)
  %92 = load i64, i64* %__v14_outp
  %93 = load i32, i32* %__v21_j
  %94 = zext i32 %93 to i64
  %95 = add i64 %92, %94
  store i64 %95, i64* %__v14_outp
  %96 = load i64, i64* %__v15__len
  %97 = load i32, i32* %__v21_j
  %98 = zext i32 %97 to i64
  %99 = sub i64 %96, %98
  store i64 %99, i64* %__v15__len
  %100 = load i64, i64* %__v20_inp_len
  %101 = load i32, i32* %__v21_j
  %102 = zext i32 %101 to i64
  %103 = sub i64 %100, %102
  store i64 %103, i64* %__v20_inp_len
  br label %105

; <label>:104:                                    ; preds = %7
  br label %105

; <label>:105:                                    ; preds = %104, %75
  %106 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %107 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %106, i32 0, i32 5
  %108 = load i32, i32* %107
  %109 = zext i32 %108 to i64
  %110 = load i64, i64* %__v20_inp_len
  %111 = shl i64 %110, 3
  %112 = add i64 %109, %111
  %113 = trunc i64 %112 to i32
  %__v22_bitlen = alloca i32
  store i32 %113, i32* %__v22_bitlen
  %114 = load i32, i32* %__v22_bitlen
  %__v72_bswap4 = call i32 @bswap4(i32 %114)
  store i32 %__v72_bswap4, i32* %__v22_bitlen
  %__v23_pmac = alloca i8, i64 20
  call void @fact.memset.i8(i8* %__v23_pmac, i8 0, i64 20)
  %115 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %116 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %115, i32 0, i32 8
  %117 = load i32, i32* %116
  %__v24_p_res = alloca i32
  store i32 %117, i32* %__v24_p_res
  %118 = load i64, i64* %__v15__len
  br label %119

; <label>:119:                                    ; preds = %155, %105
  %__v25_j = phi i64 [ 0, %105 ], [ %156, %155 ]
  %120 = icmp ult i64 %__v25_j, %118
  br i1 %120, label %121, label %157

; <label>:121:                                    ; preds = %119
  %122 = load i64, i64* %__v14_outp
  %__v100_lexpr = add i64 %122, %__v25_j
  %123 = getelementptr i8, i8* %__v3__out, i64 %__v100_lexpr
  %124 = load i8, i8* %123
  %125 = zext i8 %124 to i32
  %__v26_c = alloca i32
  store i32 %125, i32* %__v26_c
  %126 = load i64, i64* %__v20_inp_len
  %127 = sub i64 %__v25_j, %126
  %128 = trunc i64 %127 to i32
  %129 = ashr i32 %128, 24
  %__v27_mask = alloca i32
  store i32 %129, i32* %__v27_mask
  %130 = load i32, i32* %__v26_c
  %131 = load i32, i32* %__v27_mask
  %132 = and i32 %130, %131
  store i32 %132, i32* %__v26_c
  %133 = load i32, i32* %__v26_c
  %134 = load i32, i32* %__v27_mask
  %135 = xor i32 %134, -1
  %136 = and i32 128, %135
  %137 = load i64, i64* %__v20_inp_len
  %138 = sub i64 %137, %__v25_j
  %139 = trunc i64 %138 to i32
  %140 = ashr i32 %139, 24
  %141 = xor i32 %140, -1
  %142 = and i32 %136, %141
  %143 = or i32 %133, %142
  store i32 %143, i32* %__v26_c
  %144 = load i32, i32* %__v24_p_res
  %__v101_lexpr = zext i32 %144 to i64
  %145 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %146 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %145, i32 0, i32 7
  %147 = bitcast [64 x i8]* %146 to i8*
  %148 = getelementptr i8, i8* %147, i64 %__v101_lexpr
  %149 = load i32, i32* %__v26_c
  %150 = trunc i32 %149 to i8
  store i8 %150, i8* %148
  %151 = load i32, i32* %__v24_p_res
  %152 = add i32 %151, 1
  store i32 %152, i32* %__v24_p_res
  %153 = load i32, i32* %__v24_p_res
  %154 = icmp eq i32 %153, 64
  br i1 %154, label %162, label %219

; <label>:155:                                    ; preds = %220
  %156 = add i64 %__v25_j, 1
  br label %119

; <label>:157:                                    ; preds = %119
  %158 = load i64, i64* %__v15__len
  %159 = trunc i64 %158 to i32
  %__v28_j = alloca i32
  store i32 %159, i32* %__v28_j
  %160 = load i32, i32* %__v24_p_res
  %161 = zext i32 %160 to i64
  br label %221

; <label>:162:                                    ; preds = %121
  %163 = load i64, i64* %__v20_inp_len
  %164 = add i64 %163, 7
  %165 = sub i64 %164, %__v25_j
  %166 = trunc i64 %165 to i32
  %167 = lshr i32 %166, 31
  %168 = sub i32 0, %167
  store i32 %168, i32* %__v27_mask
  %169 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %170 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %169, i32 0, i32 7
  %171 = bitcast [64 x i8]* %170 to i8*
  %172 = getelementptr i8, i8* %171, i64 60
  %173 = load i32, i32* %__v22_bitlen
  %174 = load i32, i32* %__v27_mask
  %175 = and i32 %173, %174
  call void @pmac_oreq(i8* %172, i32 %175)
  %176 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %177 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %176, i32 0, i32 0
  %178 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %179 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %178, i32 0, i32 7
  %180 = bitcast [64 x i8]* %179 to i8*
  call void @sha1_block_data_order(i32* %177, i8* %180, i32 1)
  %181 = load i32, i32* %__v27_mask
  %182 = load i64, i64* %__v20_inp_len
  %183 = sub i64 %__v25_j, %182
  %184 = sub i64 %183, 72
  %185 = trunc i64 %184 to i32
  %186 = lshr i32 %185, 31
  %187 = sub i32 0, %186
  %188 = and i32 %181, %187
  store i32 %188, i32* %__v27_mask
  %189 = getelementptr i8, i8* %__v23_pmac, i64 0
  %190 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %191 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %190, i32 0, i32 0
  %192 = load i32, i32* %191
  %193 = load i32, i32* %__v27_mask
  %194 = and i32 %192, %193
  call void @pmac_oreq(i8* %189, i32 %194)
  %195 = getelementptr i8, i8* %__v23_pmac, i64 4
  %196 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %197 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %196, i32 0, i32 1
  %198 = load i32, i32* %197
  %199 = load i32, i32* %__v27_mask
  %200 = and i32 %198, %199
  call void @pmac_oreq(i8* %195, i32 %200)
  %201 = getelementptr i8, i8* %__v23_pmac, i64 8
  %202 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %203 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %202, i32 0, i32 2
  %204 = load i32, i32* %203
  %205 = load i32, i32* %__v27_mask
  %206 = and i32 %204, %205
  call void @pmac_oreq(i8* %201, i32 %206)
  %207 = getelementptr i8, i8* %__v23_pmac, i64 12
  %208 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %209 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %208, i32 0, i32 3
  %210 = load i32, i32* %209
  %211 = load i32, i32* %__v27_mask
  %212 = and i32 %210, %211
  call void @pmac_oreq(i8* %207, i32 %212)
  %213 = getelementptr i8, i8* %__v23_pmac, i64 16
  %214 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %215 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %214, i32 0, i32 4
  %216 = load i32, i32* %215
  %217 = load i32, i32* %__v27_mask
  %218 = and i32 %216, %217
  call void @pmac_oreq(i8* %213, i32 %218)
  store i32 0, i32* %__v24_p_res
  br label %220

; <label>:219:                                    ; preds = %121
  br label %220

; <label>:220:                                    ; preds = %219, %162
  br label %155

; <label>:221:                                    ; preds = %230, %157
  %__v29_i = phi i64 [ %161, %157 ], [ %231, %230 ]
  %222 = icmp ult i64 %__v29_i, 64
  br i1 %222, label %223, label %232

; <label>:223:                                    ; preds = %221
  %224 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %225 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %224, i32 0, i32 7
  %226 = bitcast [64 x i8]* %225 to i8*
  %227 = getelementptr i8, i8* %226, i64 %__v29_i
  store i8 0, i8* %227
  %228 = load i32, i32* %__v28_j
  %229 = add i32 %228, 1
  store i32 %229, i32* %__v28_j
  br label %230

; <label>:230:                                    ; preds = %223
  %231 = add i64 %__v29_i, 1
  br label %221

; <label>:232:                                    ; preds = %221
  %233 = load i32, i32* %__v24_p_res
  %234 = icmp ugt i32 %233, 56
  br i1 %234, label %235, label %301

; <label>:235:                                    ; preds = %232
  %236 = load i64, i64* %__v20_inp_len
  %237 = add i64 %236, 8
  %238 = load i32, i32* %__v28_j
  %239 = zext i32 %238 to i64
  %240 = sub i64 %237, %239
  %241 = trunc i64 %240 to i32
  %242 = lshr i32 %241, 31
  %243 = sub i32 0, %242
  %__v30_mask = alloca i32
  store i32 %243, i32* %__v30_mask
  %244 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %245 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %244, i32 0, i32 7
  %246 = bitcast [64 x i8]* %245 to i8*
  %247 = getelementptr i8, i8* %246, i64 60
  %248 = load i32, i32* %__v22_bitlen
  %249 = load i32, i32* %__v30_mask
  %250 = and i32 %248, %249
  call void @pmac_oreq(i8* %247, i32 %250)
  %251 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %252 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %251, i32 0, i32 0
  %253 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %254 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %253, i32 0, i32 7
  %255 = bitcast [64 x i8]* %254 to i8*
  call void @sha1_block_data_order(i32* %252, i8* %255, i32 1)
  %256 = load i32, i32* %__v30_mask
  %257 = load i32, i32* %__v28_j
  %258 = zext i32 %257 to i64
  %259 = load i64, i64* %__v20_inp_len
  %260 = sub i64 %258, %259
  %261 = sub i64 %260, 72
  %262 = trunc i64 %261 to i32
  %263 = lshr i32 %262, 31
  %264 = sub i32 0, %263
  %265 = and i32 %256, %264
  store i32 %265, i32* %__v30_mask
  %266 = getelementptr i8, i8* %__v23_pmac, i64 0
  %267 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %268 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %267, i32 0, i32 0
  %269 = load i32, i32* %268
  %270 = load i32, i32* %__v30_mask
  %271 = and i32 %269, %270
  call void @pmac_oreq(i8* %266, i32 %271)
  %272 = getelementptr i8, i8* %__v23_pmac, i64 4
  %273 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %274 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %273, i32 0, i32 1
  %275 = load i32, i32* %274
  %276 = load i32, i32* %__v30_mask
  %277 = and i32 %275, %276
  call void @pmac_oreq(i8* %272, i32 %277)
  %278 = getelementptr i8, i8* %__v23_pmac, i64 8
  %279 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %280 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %279, i32 0, i32 2
  %281 = load i32, i32* %280
  %282 = load i32, i32* %__v30_mask
  %283 = and i32 %281, %282
  call void @pmac_oreq(i8* %278, i32 %283)
  %284 = getelementptr i8, i8* %__v23_pmac, i64 12
  %285 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %286 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %285, i32 0, i32 3
  %287 = load i32, i32* %286
  %288 = load i32, i32* %__v30_mask
  %289 = and i32 %287, %288
  call void @pmac_oreq(i8* %284, i32 %289)
  %290 = getelementptr i8, i8* %__v23_pmac, i64 16
  %291 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %292 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %291, i32 0, i32 4
  %293 = load i32, i32* %292
  %294 = load i32, i32* %__v30_mask
  %295 = and i32 %293, %294
  call void @pmac_oreq(i8* %290, i32 %295)
  %296 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %297 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %296, i32 0, i32 7
  %298 = bitcast [64 x i8]* %297 to i8*
  call void @"__memzero[8]_secret"(i8* %298, i64 64)
  %299 = load i32, i32* %__v28_j
  %300 = add i32 %299, 64
  store i32 %300, i32* %__v28_j
  br label %302

; <label>:301:                                    ; preds = %232
  br label %302

; <label>:302:                                    ; preds = %301, %235
  %303 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %304 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %303, i32 0, i32 7
  %305 = bitcast [64 x i8]* %304 to i8*
  %306 = getelementptr i8, i8* %305, i64 60
  %307 = load i32, i32* %__v22_bitlen
  call void @"__store[32]_secret_le"(i8* %306, i32 %307)
  %308 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %309 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %308, i32 0, i32 0
  %310 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %311 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %310, i32 0, i32 7
  %312 = bitcast [64 x i8]* %311 to i8*
  call void @sha1_block_data_order(i32* %309, i8* %312, i32 1)
  %313 = load i32, i32* %__v28_j
  %314 = zext i32 %313 to i64
  %315 = load i64, i64* %__v20_inp_len
  %316 = sub i64 %314, %315
  %317 = sub i64 %316, 72
  %318 = trunc i64 %317 to i32
  %319 = lshr i32 %318, 31
  %__v31_mask_ = sub i32 0, %319
  %320 = getelementptr i8, i8* %__v23_pmac, i64 0
  %321 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %322 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %321, i32 0, i32 0
  %323 = load i32, i32* %322
  %324 = and i32 %323, %__v31_mask_
  call void @pmac_oreq(i8* %320, i32 %324)
  %325 = getelementptr i8, i8* %__v23_pmac, i64 4
  %326 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %327 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %326, i32 0, i32 1
  %328 = load i32, i32* %327
  %329 = and i32 %328, %__v31_mask_
  call void @pmac_oreq(i8* %325, i32 %329)
  %330 = getelementptr i8, i8* %__v23_pmac, i64 8
  %331 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %332 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %331, i32 0, i32 2
  %333 = load i32, i32* %332
  %334 = and i32 %333, %__v31_mask_
  call void @pmac_oreq(i8* %330, i32 %334)
  %335 = getelementptr i8, i8* %__v23_pmac, i64 12
  %336 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %337 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %336, i32 0, i32 3
  %338 = load i32, i32* %337
  %339 = and i32 %338, %__v31_mask_
  call void @pmac_oreq(i8* %335, i32 %339)
  %340 = getelementptr i8, i8* %__v23_pmac, i64 16
  %341 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %342 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %341, i32 0, i32 4
  %343 = load i32, i32* %342
  %344 = and i32 %343, %__v31_mask_
  call void @pmac_oreq(i8* %340, i32 %344)
  %345 = getelementptr i8, i8* %__v23_pmac, i64 0
  %__v73_load_le = call i32 @"__load[32]_secret_le"(i8* %345)
  %__v74_bswap4 = call i32 @bswap4(i32 %__v73_load_le)
  %346 = getelementptr i8, i8* %__v23_pmac, i64 0
  call void @"__store[32]_secret_le"(i8* %346, i32 %__v74_bswap4)
  %347 = getelementptr i8, i8* %__v23_pmac, i64 4
  %__v75_load_le = call i32 @"__load[32]_secret_le"(i8* %347)
  %__v76_bswap4 = call i32 @bswap4(i32 %__v75_load_le)
  %348 = getelementptr i8, i8* %__v23_pmac, i64 4
  call void @"__store[32]_secret_le"(i8* %348, i32 %__v76_bswap4)
  %349 = getelementptr i8, i8* %__v23_pmac, i64 8
  %__v77_load_le = call i32 @"__load[32]_secret_le"(i8* %349)
  %__v78_bswap4 = call i32 @bswap4(i32 %__v77_load_le)
  %350 = getelementptr i8, i8* %__v23_pmac, i64 8
  call void @"__store[32]_secret_le"(i8* %350, i32 %__v78_bswap4)
  %351 = getelementptr i8, i8* %__v23_pmac, i64 12
  %__v79_load_le = call i32 @"__load[32]_secret_le"(i8* %351)
  %__v80_bswap4 = call i32 @bswap4(i32 %__v79_load_le)
  %352 = getelementptr i8, i8* %__v23_pmac, i64 12
  call void @"__store[32]_secret_le"(i8* %352, i32 %__v80_bswap4)
  %353 = getelementptr i8, i8* %__v23_pmac, i64 16
  %__v81_load_le = call i32 @"__load[32]_secret_le"(i8* %353)
  %__v82_bswap4 = call i32 @bswap4(i32 %__v81_load_le)
  %354 = getelementptr i8, i8* %__v23_pmac, i64 16
  call void @"__store[32]_secret_le"(i8* %354, i32 %__v82_bswap4)
  %355 = load i64, i64* %__v15__len
  %356 = add i64 %355, 20
  store i64 %356, i64* %__v15__len
  %357 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %358 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 2
  call void @__memcpy_SHA_CTX(%SHA_CTX* %357, %SHA_CTX* %358)
  %359 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %360 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %359, i32 0, i32 0
  call void @_sha1_update(i32* %360, i8* %__v23_pmac, i64 20)
  %361 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %362 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %361, i32 0, i32 0
  call void @SHA1_Final(i8* %__v23_pmac, i32* %362)
  %363 = load i64, i64* %__v14_outp
  %364 = load i64, i64* %__v20_inp_len
  %__v32_s_outp = add i64 %363, %364
  %365 = load i64, i64* %__v15__len
  %366 = load i64, i64* %__v20_inp_len
  %__v33_s_len = sub i64 %365, %366
  %367 = sub i64 %__v85___v3__out_len, 1
  %368 = load i32, i32* %__v18_maxpad
  %369 = zext i32 %368 to i64
  %370 = sub i64 %367, %369
  %__v34_p_outp = sub i64 %370, 20
  %__v35_off = sub i64 %__v32_s_outp, %__v34_p_outp
  %371 = load i32, i32* %__v18_maxpad
  %372 = add i32 %371, 20
  store i32 %372, i32* %__v18_maxpad
  %__v36_s_res = alloca i32
  store i32 0, i32* %__v36_s_res
  %__v37_i = alloca i32
  store i32 0, i32* %__v37_i
  %373 = load i32, i32* %__v18_maxpad
  %374 = zext i32 %373 to i64
  br label %375

; <label>:375:                                    ; preds = %410, %302
  %__v38_j = phi i64 [ 0, %302 ], [ %411, %410 ]
  %376 = icmp ult i64 %__v38_j, %374
  br i1 %376, label %377, label %412

; <label>:377:                                    ; preds = %375
  %__v106_lexpr = add i64 %__v34_p_outp, %__v38_j
  %378 = getelementptr i8, i8* %__v3__out, i64 %__v106_lexpr
  %379 = load i8, i8* %378
  %__v39_c = zext i8 %379 to i32
  %380 = sub i64 %__v38_j, %__v35_off
  %381 = sub i64 %380, 20
  %382 = trunc i64 %381 to i32
  %383 = ashr i32 %382, 31
  %__v40_cmask = alloca i32
  store i32 %383, i32* %__v40_cmask
  %384 = load i32, i32* %__v36_s_res
  %385 = load i32, i32* %__v17_pad
  %386 = xor i32 %__v39_c, %385
  %387 = load i32, i32* %__v40_cmask
  %388 = xor i32 %387, -1
  %389 = and i32 %386, %388
  %390 = or i32 %384, %389
  store i32 %390, i32* %__v36_s_res
  %391 = load i32, i32* %__v40_cmask
  %392 = sub i64 %__v35_off, 1
  %393 = sub i64 %392, %__v38_j
  %394 = trunc i64 %393 to i32
  %395 = ashr i32 %394, 31
  %396 = and i32 %391, %395
  store i32 %396, i32* %__v40_cmask
  %397 = load i32, i32* %__v37_i
  %__v107_lexpr = zext i32 %397 to i64
  %398 = load i32, i32* %__v36_s_res
  %399 = getelementptr i8, i8* %__v23_pmac, i64 %__v107_lexpr
  %400 = load i8, i8* %399
  %401 = zext i8 %400 to i32
  %402 = xor i32 %__v39_c, %401
  %403 = load i32, i32* %__v40_cmask
  %404 = and i32 %402, %403
  %405 = or i32 %398, %404
  store i32 %405, i32* %__v36_s_res
  %406 = load i32, i32* %__v37_i
  %407 = load i32, i32* %__v40_cmask
  %408 = and i32 1, %407
  %409 = add i32 %406, %408
  store i32 %409, i32* %__v37_i
  br label %410

; <label>:410:                                    ; preds = %377
  %411 = add i64 %__v38_j, 1
  br label %375

; <label>:412:                                    ; preds = %375
  %413 = load i32, i32* %__v18_maxpad
  %414 = sub i32 %413, 20
  store i32 %414, i32* %__v18_maxpad
  %415 = load i32, i32* %__v36_s_res
  %416 = sub i32 0, %415
  %417 = lshr i32 %416, 31
  %418 = sub i32 0, %417
  store i32 %418, i32* %__v36_s_res
  %419 = load i32, i32* %__v16_ret
  %420 = load i32, i32* %__v36_s_res
  %421 = xor i32 %420, -1
  %422 = and i32 %419, %421
  store i32 %422, i32* %__v16_ret
  %423 = load i32, i32* %__v16_ret
  ret i32 %423
}

attributes #0 = { alwaysinline }
attributes #1 = { argmemonly nounwind }
