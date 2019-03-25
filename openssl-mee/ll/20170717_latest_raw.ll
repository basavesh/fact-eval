; ModuleID = './20170717_latest_raw.bc'
source_filename = "Module"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%EVP_AES_HMAC_SHA1 = type { %AES_KEY, %SHA_CTX, %SHA_CTX, %SHA_CTX, i64, [16 x i8] }
%AES_KEY = type { [60 x i32], i32 }
%SHA_CTX = type { i32, i32, i32, i32, i32, i32, i32, [64 x i8], i32 }

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #0

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #0

declare void @SHA1_Final(i8*, i32*)

declare void @_sha1_update(i32*, i8*, i64)

declare void @sha1_block_data_order(i32*, i8*, i32)

declare void @aesni_cbc_encrypt(i8*, i8*, i64, i32*, i8*, i32)

define i32 @_aesni_cbc_hmac_sha1_cipher(i8* %__v1_iv, %EVP_AES_HMAC_SHA1* %__v2_key, i8* %__v3__out, i64 %__v85___v3__out_len, i8* %__v4__in, i64 %__v86___v4__in_len, i16 %__v5_tls_ver) {
entry:
  %__rval.i45 = alloca i32
  %__rctx.i46 = alloca i1
  %__rval.i40 = alloca i32
  %__rctx.i41 = alloca i1
  %__rctx.i39 = alloca i1
  %__rctx.i38 = alloca i1
  %__rctx.i37 = alloca i1
  %__rctx.i36 = alloca i1
  %__rctx.i35 = alloca i1
  %__rctx.i34 = alloca i1
  %__rctx.i33 = alloca i1
  %__rctx.i32 = alloca i1
  %__rctx.i31 = alloca i1
  %__rctx.i30 = alloca i1
  %__rctx.i29 = alloca i1
  %__rctx.i28 = alloca i1
  %__rctx.i27 = alloca i1
  %__rctx.i26 = alloca i1
  %__rctx.i25 = alloca i1
  %__rctx.i24 = alloca i1
  %__rctx.i23 = alloca i1
  %__rval.i18 = alloca i32
  %__rctx.i19 = alloca i1
  %__rval.i13 = alloca i32
  %__rctx.i14 = alloca i1
  %__rval.i8 = alloca i32
  %__rctx.i9 = alloca i1
  %__rval.i3 = alloca i32
  %__rctx.i4 = alloca i1
  %__rval.i1 = alloca i32
  %__rctx.i2 = alloca i1
  %__rval.i.i.i = alloca i32
  %__rctx.i.i.i = alloca i1
  %__rval.i.i = alloca i32
  %__rctx.i.i = alloca i1
  %__rval.i = alloca i32
  %__rctx.i = alloca i1
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
  %0 = zext i16 %__v5_tls_ver to i32
  %1 = icmp uge i32 %0, 770
  br i1 %1, label %2, label %4

; <label>:2:                                      ; preds = %entry
  %3 = icmp ult i64 %__v85___v3__out_len, 37
  br i1 %3, label %75, label %76

; <label>:4:                                      ; preds = %entry
  %5 = load i64, i64* %__v15__len
  %6 = icmp ult i64 %5, 21
  br i1 %6, label %85, label %86

; <label>:7:                                      ; preds = %87, %77
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
  store i32 0, i32* %__rval.i
  store i1 true, i1* %__rctx.i
  store i32 0, i32* %__rval.i.i
  store i1 true, i1* %__rctx.i.i
  %29 = xor i32 %27, %28
  %30 = sub i32 %27, %28
  %31 = xor i32 %30, %28
  %32 = or i32 %29, %31
  %33 = xor i32 %27, %32
  store i32 0, i32* %__rval.i.i.i
  store i1 true, i1* %__rctx.i.i.i
  %34 = lshr i32 %33, 31
  %35 = sub i32 0, %34
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %__v16_ret
  %38 = and i32 %37, %36
  store i32 %38, i32* %__v16_ret
  %39 = load i32, i32* %__v17_pad
  %40 = load i32, i32* %__v18_maxpad
  store i32 0, i32* %__rval.i45
  store i1 true, i1* %__rctx.i46
  %41 = and i32 %36, %39
  %42 = and i32 %35, %40
  %43 = or i32 %41, %42
  store i32 %43, i32* %__v17_pad
  %44 = load i64, i64* %__v15__len
  %45 = load i32, i32* %__v17_pad
  %46 = add i32 20, %45
  %47 = add i32 %46, 1
  %48 = zext i32 %47 to i64
  %49 = sub i64 %44, %48
  %__v20_inp_len = alloca i64
  store i64 %49, i64* %__v20_inp_len
  %50 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 5
  %51 = bitcast [16 x i8]* %50 to i8*
  %52 = getelementptr i8, i8* %51, i64 11
  %53 = load i64, i64* %__v20_inp_len
  %54 = lshr i64 %53, 8
  %55 = trunc i64 %54 to i8
  store i8 %55, i8* %52
  %56 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 5
  %57 = bitcast [16 x i8]* %56 to i8*
  %58 = getelementptr i8, i8* %57, i64 12
  %59 = load i64, i64* %__v20_inp_len
  %60 = lshr i64 %59, 0
  %61 = trunc i64 %60 to i8
  store i8 %61, i8* %58
  %62 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %63 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 1
  %64 = bitcast %SHA_CTX* %62 to i8*
  %65 = bitcast %SHA_CTX* %63 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %64, i8* %65, i64 ptrtoint (%SHA_CTX* getelementptr (%SHA_CTX, %SHA_CTX* null, i32 1) to i64), i32 1, i1 false)
  %66 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %67 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %66, i32 0, i32 0
  %68 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 5
  %69 = bitcast [16 x i8]* %68 to i8*
  %70 = getelementptr i8, i8* %69, i64 0
  call void @_sha1_update(i32* %67, i8* %70, i64 13)
  %71 = load i64, i64* %__v15__len
  %72 = sub i64 %71, 20
  store i64 %72, i64* %__v15__len
  %73 = load i64, i64* %__v15__len
  %74 = icmp uge i64 %73, 320
  br i1 %74, label %88, label %117

; <label>:75:                                     ; preds = %2
  ret i32 0

; <label>:76:                                     ; preds = %2
  br label %77

; <label>:77:                                     ; preds = %76
  %78 = getelementptr i8, i8* %__v4__in, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %__v1_iv, i8* %78, i64 16, i32 1, i1 false)
  %79 = load i64, i64* %__v13_inp
  %80 = add i64 %79, 16
  store i64 %80, i64* %__v13_inp
  %81 = load i64, i64* %__v14_outp
  %82 = add i64 %81, 16
  store i64 %82, i64* %__v14_outp
  %83 = load i64, i64* %__v15__len
  %84 = sub i64 %83, 16
  store i64 %84, i64* %__v15__len
  br label %7

; <label>:85:                                     ; preds = %4
  ret i32 0

; <label>:86:                                     ; preds = %4
  br label %87

; <label>:87:                                     ; preds = %86
  br label %7

; <label>:88:                                     ; preds = %7
  %89 = load i64, i64* %__v15__len
  %90 = sub i64 %89, 320
  %91 = trunc i64 %90 to i32
  %92 = and i32 %91, -64
  %__v21_j = alloca i32
  store i32 %92, i32* %__v21_j
  %93 = load i32, i32* %__v21_j
  %94 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %95 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %94, i32 0, i32 8
  %96 = load i32, i32* %95
  %97 = sub i32 64, %96
  %98 = add i32 %93, %97
  store i32 %98, i32* %__v21_j
  %__v98_lexpr = load i64, i64* %__v14_outp
  %99 = load i32, i32* %__v21_j
  %__v99_lexpr = zext i32 %99 to i64
  %100 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %101 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %100, i32 0, i32 0
  %102 = getelementptr i8, i8* %__v3__out, i64 %__v98_lexpr
  %103 = load i32, i32* %__v21_j
  %104 = zext i32 %103 to i64
  call void @_sha1_update(i32* %101, i8* %102, i64 %104)
  %105 = load i64, i64* %__v14_outp
  %106 = load i32, i32* %__v21_j
  %107 = zext i32 %106 to i64
  %108 = add i64 %105, %107
  store i64 %108, i64* %__v14_outp
  %109 = load i64, i64* %__v15__len
  %110 = load i32, i32* %__v21_j
  %111 = zext i32 %110 to i64
  %112 = sub i64 %109, %111
  store i64 %112, i64* %__v15__len
  %113 = load i64, i64* %__v20_inp_len
  %114 = load i32, i32* %__v21_j
  %115 = zext i32 %114 to i64
  %116 = sub i64 %113, %115
  store i64 %116, i64* %__v20_inp_len
  br label %118

; <label>:117:                                    ; preds = %7
  br label %118

; <label>:118:                                    ; preds = %117, %88
  %119 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %120 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %119, i32 0, i32 5
  %121 = load i32, i32* %120
  %122 = zext i32 %121 to i64
  %123 = load i64, i64* %__v20_inp_len
  %124 = shl i64 %123, 3
  %125 = add i64 %122, %124
  %126 = trunc i64 %125 to i32
  %__v22_bitlen = alloca i32
  store i32 %126, i32* %__v22_bitlen
  %127 = load i32, i32* %__v22_bitlen
  store i32 0, i32* %__rval.i40
  store i1 true, i1* %__rctx.i41
  %128 = and i32 %127, 255
  %__v62_x4.i42 = shl i32 %128, 24
  %129 = lshr i32 %127, 8
  %130 = and i32 %129, 255
  %__v63_x3.i43 = shl i32 %130, 16
  %131 = lshr i32 %127, 16
  %132 = and i32 %131, 255
  %__v64_x2.i44 = shl i32 %132, 8
  %133 = lshr i32 %127, 24
  %134 = or i32 %133, %__v64_x2.i44
  %135 = or i32 %134, %__v63_x3.i43
  %136 = or i32 %135, %__v62_x4.i42
  store i32 %136, i32* %__v22_bitlen
  %__v23_pmac = alloca i8, i64 20
  call void @llvm.memset.p0i8.i64(i8* %__v23_pmac, i8 0, i64 20, i32 1, i1 false)
  %137 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %138 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %137, i32 0, i32 8
  %139 = load i32, i32* %138
  %__v24_p_res = alloca i32
  store i32 %139, i32* %__v24_p_res
  %140 = load i64, i64* %__v15__len
  br label %141

; <label>:141:                                    ; preds = %177, %118
  %__v25_j = phi i64 [ 0, %118 ], [ %178, %177 ]
  %142 = icmp ult i64 %__v25_j, %140
  br i1 %142, label %143, label %179

; <label>:143:                                    ; preds = %141
  %144 = load i64, i64* %__v14_outp
  %__v100_lexpr = add i64 %144, %__v25_j
  %145 = getelementptr i8, i8* %__v3__out, i64 %__v100_lexpr
  %146 = load i8, i8* %145
  %147 = zext i8 %146 to i32
  %__v26_c = alloca i32
  store i32 %147, i32* %__v26_c
  %148 = load i64, i64* %__v20_inp_len
  %149 = sub i64 %__v25_j, %148
  %150 = trunc i64 %149 to i32
  %151 = ashr i32 %150, 24
  %__v27_mask = alloca i32
  store i32 %151, i32* %__v27_mask
  %152 = load i32, i32* %__v26_c
  %153 = load i32, i32* %__v27_mask
  %154 = and i32 %152, %153
  store i32 %154, i32* %__v26_c
  %155 = load i32, i32* %__v26_c
  %156 = load i32, i32* %__v27_mask
  %157 = xor i32 %156, -1
  %158 = and i32 128, %157
  %159 = load i64, i64* %__v20_inp_len
  %160 = sub i64 %159, %__v25_j
  %161 = trunc i64 %160 to i32
  %162 = ashr i32 %161, 24
  %163 = xor i32 %162, -1
  %164 = and i32 %158, %163
  %165 = or i32 %155, %164
  store i32 %165, i32* %__v26_c
  %166 = load i32, i32* %__v24_p_res
  %__v101_lexpr = zext i32 %166 to i64
  %167 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %168 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %167, i32 0, i32 7
  %169 = bitcast [64 x i8]* %168 to i8*
  %170 = getelementptr i8, i8* %169, i64 %__v101_lexpr
  %171 = load i32, i32* %__v26_c
  %172 = trunc i32 %171 to i8
  store i8 %172, i8* %170
  %173 = load i32, i32* %__v24_p_res
  %174 = add i32 %173, 1
  store i32 %174, i32* %__v24_p_res
  %175 = load i32, i32* %__v24_p_res
  %176 = icmp eq i32 %175, 64
  br i1 %176, label %184, label %265

; <label>:177:                                    ; preds = %266
  %178 = add i64 %__v25_j, 1
  br label %141

; <label>:179:                                    ; preds = %141
  %180 = load i64, i64* %__v15__len
  %181 = trunc i64 %180 to i32
  %__v28_j = alloca i32
  store i32 %181, i32* %__v28_j
  %182 = load i32, i32* %__v24_p_res
  %183 = zext i32 %182 to i64
  br label %267

; <label>:184:                                    ; preds = %143
  %185 = load i64, i64* %__v20_inp_len
  %186 = add i64 %185, 7
  %187 = sub i64 %186, %__v25_j
  %188 = trunc i64 %187 to i32
  %189 = lshr i32 %188, 31
  %190 = sub i32 0, %189
  store i32 %190, i32* %__v27_mask
  %191 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %192 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %191, i32 0, i32 7
  %193 = bitcast [64 x i8]* %192 to i8*
  %194 = getelementptr i8, i8* %193, i64 60
  %195 = load i32, i32* %__v22_bitlen
  %196 = load i32, i32* %__v27_mask
  %197 = and i32 %195, %196
  store i1 true, i1* %__rctx.i39
  %198 = bitcast i8* %194 to i32*
  %199 = load i32, i32* %198
  %200 = or i32 %199, %197
  %201 = bitcast i8* %194 to i32*
  store i32 %200, i32* %201
  %202 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %203 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %202, i32 0, i32 0
  %204 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %205 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %204, i32 0, i32 7
  %206 = bitcast [64 x i8]* %205 to i8*
  call void @sha1_block_data_order(i32* %203, i8* %206, i32 1)
  %207 = load i32, i32* %__v27_mask
  %208 = load i64, i64* %__v20_inp_len
  %209 = sub i64 %__v25_j, %208
  %210 = sub i64 %209, 72
  %211 = trunc i64 %210 to i32
  %212 = lshr i32 %211, 31
  %213 = sub i32 0, %212
  %214 = and i32 %207, %213
  store i32 %214, i32* %__v27_mask
  %215 = getelementptr i8, i8* %__v23_pmac, i64 0
  %216 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %217 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %216, i32 0, i32 0
  %218 = load i32, i32* %217
  %219 = load i32, i32* %__v27_mask
  %220 = and i32 %218, %219
  store i1 true, i1* %__rctx.i38
  %221 = bitcast i8* %215 to i32*
  %222 = load i32, i32* %221
  %223 = or i32 %222, %220
  %224 = bitcast i8* %215 to i32*
  store i32 %223, i32* %224
  %225 = getelementptr i8, i8* %__v23_pmac, i64 4
  %226 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %227 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %226, i32 0, i32 1
  %228 = load i32, i32* %227
  %229 = load i32, i32* %__v27_mask
  %230 = and i32 %228, %229
  store i1 true, i1* %__rctx.i37
  %231 = bitcast i8* %225 to i32*
  %232 = load i32, i32* %231
  %233 = or i32 %232, %230
  %234 = bitcast i8* %225 to i32*
  store i32 %233, i32* %234
  %235 = getelementptr i8, i8* %__v23_pmac, i64 8
  %236 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %237 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %236, i32 0, i32 2
  %238 = load i32, i32* %237
  %239 = load i32, i32* %__v27_mask
  %240 = and i32 %238, %239
  store i1 true, i1* %__rctx.i36
  %241 = bitcast i8* %235 to i32*
  %242 = load i32, i32* %241
  %243 = or i32 %242, %240
  %244 = bitcast i8* %235 to i32*
  store i32 %243, i32* %244
  %245 = getelementptr i8, i8* %__v23_pmac, i64 12
  %246 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %247 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %246, i32 0, i32 3
  %248 = load i32, i32* %247
  %249 = load i32, i32* %__v27_mask
  %250 = and i32 %248, %249
  store i1 true, i1* %__rctx.i35
  %251 = bitcast i8* %245 to i32*
  %252 = load i32, i32* %251
  %253 = or i32 %252, %250
  %254 = bitcast i8* %245 to i32*
  store i32 %253, i32* %254
  %255 = getelementptr i8, i8* %__v23_pmac, i64 16
  %256 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %257 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %256, i32 0, i32 4
  %258 = load i32, i32* %257
  %259 = load i32, i32* %__v27_mask
  %260 = and i32 %258, %259
  store i1 true, i1* %__rctx.i34
  %261 = bitcast i8* %255 to i32*
  %262 = load i32, i32* %261
  %263 = or i32 %262, %260
  %264 = bitcast i8* %255 to i32*
  store i32 %263, i32* %264
  store i32 0, i32* %__v24_p_res
  br label %266

; <label>:265:                                    ; preds = %143
  br label %266

; <label>:266:                                    ; preds = %265, %184
  br label %177

; <label>:267:                                    ; preds = %276, %179
  %__v29_i = phi i64 [ %183, %179 ], [ %277, %276 ]
  %268 = icmp ult i64 %__v29_i, 64
  br i1 %268, label %269, label %278

; <label>:269:                                    ; preds = %267
  %270 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %271 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %270, i32 0, i32 7
  %272 = bitcast [64 x i8]* %271 to i8*
  %273 = getelementptr i8, i8* %272, i64 %__v29_i
  store i8 0, i8* %273
  %274 = load i32, i32* %__v28_j
  %275 = add i32 %274, 1
  store i32 %275, i32* %__v28_j
  br label %276

; <label>:276:                                    ; preds = %269
  %277 = add i64 %__v29_i, 1
  br label %267

; <label>:278:                                    ; preds = %267
  %279 = load i32, i32* %__v24_p_res
  %280 = icmp ugt i32 %279, 56
  br i1 %280, label %281, label %371

; <label>:281:                                    ; preds = %278
  %282 = load i64, i64* %__v20_inp_len
  %283 = add i64 %282, 8
  %284 = load i32, i32* %__v28_j
  %285 = zext i32 %284 to i64
  %286 = sub i64 %283, %285
  %287 = trunc i64 %286 to i32
  %288 = lshr i32 %287, 31
  %289 = sub i32 0, %288
  %__v30_mask = alloca i32
  store i32 %289, i32* %__v30_mask
  %290 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %291 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %290, i32 0, i32 7
  %292 = bitcast [64 x i8]* %291 to i8*
  %293 = getelementptr i8, i8* %292, i64 60
  %294 = load i32, i32* %__v22_bitlen
  %295 = load i32, i32* %__v30_mask
  %296 = and i32 %294, %295
  store i1 true, i1* %__rctx.i33
  %297 = bitcast i8* %293 to i32*
  %298 = load i32, i32* %297
  %299 = or i32 %298, %296
  %300 = bitcast i8* %293 to i32*
  store i32 %299, i32* %300
  %301 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %302 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %301, i32 0, i32 0
  %303 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %304 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %303, i32 0, i32 7
  %305 = bitcast [64 x i8]* %304 to i8*
  call void @sha1_block_data_order(i32* %302, i8* %305, i32 1)
  %306 = load i32, i32* %__v30_mask
  %307 = load i32, i32* %__v28_j
  %308 = zext i32 %307 to i64
  %309 = load i64, i64* %__v20_inp_len
  %310 = sub i64 %308, %309
  %311 = sub i64 %310, 72
  %312 = trunc i64 %311 to i32
  %313 = lshr i32 %312, 31
  %314 = sub i32 0, %313
  %315 = and i32 %306, %314
  store i32 %315, i32* %__v30_mask
  %316 = getelementptr i8, i8* %__v23_pmac, i64 0
  %317 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %318 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %317, i32 0, i32 0
  %319 = load i32, i32* %318
  %320 = load i32, i32* %__v30_mask
  %321 = and i32 %319, %320
  store i1 true, i1* %__rctx.i32
  %322 = bitcast i8* %316 to i32*
  %323 = load i32, i32* %322
  %324 = or i32 %323, %321
  %325 = bitcast i8* %316 to i32*
  store i32 %324, i32* %325
  %326 = getelementptr i8, i8* %__v23_pmac, i64 4
  %327 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %328 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %327, i32 0, i32 1
  %329 = load i32, i32* %328
  %330 = load i32, i32* %__v30_mask
  %331 = and i32 %329, %330
  store i1 true, i1* %__rctx.i31
  %332 = bitcast i8* %326 to i32*
  %333 = load i32, i32* %332
  %334 = or i32 %333, %331
  %335 = bitcast i8* %326 to i32*
  store i32 %334, i32* %335
  %336 = getelementptr i8, i8* %__v23_pmac, i64 8
  %337 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %338 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %337, i32 0, i32 2
  %339 = load i32, i32* %338
  %340 = load i32, i32* %__v30_mask
  %341 = and i32 %339, %340
  store i1 true, i1* %__rctx.i30
  %342 = bitcast i8* %336 to i32*
  %343 = load i32, i32* %342
  %344 = or i32 %343, %341
  %345 = bitcast i8* %336 to i32*
  store i32 %344, i32* %345
  %346 = getelementptr i8, i8* %__v23_pmac, i64 12
  %347 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %348 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %347, i32 0, i32 3
  %349 = load i32, i32* %348
  %350 = load i32, i32* %__v30_mask
  %351 = and i32 %349, %350
  store i1 true, i1* %__rctx.i29
  %352 = bitcast i8* %346 to i32*
  %353 = load i32, i32* %352
  %354 = or i32 %353, %351
  %355 = bitcast i8* %346 to i32*
  store i32 %354, i32* %355
  %356 = getelementptr i8, i8* %__v23_pmac, i64 16
  %357 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %358 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %357, i32 0, i32 4
  %359 = load i32, i32* %358
  %360 = load i32, i32* %__v30_mask
  %361 = and i32 %359, %360
  store i1 true, i1* %__rctx.i28
  %362 = bitcast i8* %356 to i32*
  %363 = load i32, i32* %362
  %364 = or i32 %363, %361
  %365 = bitcast i8* %356 to i32*
  store i32 %364, i32* %365
  %366 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %367 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %366, i32 0, i32 7
  %368 = bitcast [64 x i8]* %367 to i8*
  call void @llvm.memset.p0i8.i64(i8* %368, i8 0, i64 64, i32 1, i1 false)
  %369 = load i32, i32* %__v28_j
  %370 = add i32 %369, 64
  store i32 %370, i32* %__v28_j
  br label %372

; <label>:371:                                    ; preds = %278
  br label %372

; <label>:372:                                    ; preds = %371, %281
  %373 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %374 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %373, i32 0, i32 7
  %375 = bitcast [64 x i8]* %374 to i8*
  %376 = getelementptr i8, i8* %375, i64 60
  %377 = load i32, i32* %__v22_bitlen
  %378 = bitcast i8* %376 to i32*
  store i32 %377, i32* %378
  %379 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %380 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %379, i32 0, i32 0
  %381 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %382 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %381, i32 0, i32 7
  %383 = bitcast [64 x i8]* %382 to i8*
  call void @sha1_block_data_order(i32* %380, i8* %383, i32 1)
  %384 = load i32, i32* %__v28_j
  %385 = zext i32 %384 to i64
  %386 = load i64, i64* %__v20_inp_len
  %387 = sub i64 %385, %386
  %388 = sub i64 %387, 72
  %389 = trunc i64 %388 to i32
  %390 = lshr i32 %389, 31
  %__v31_mask_ = sub i32 0, %390
  %391 = getelementptr i8, i8* %__v23_pmac, i64 0
  %392 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %393 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %392, i32 0, i32 0
  %394 = load i32, i32* %393
  %395 = and i32 %394, %__v31_mask_
  store i1 true, i1* %__rctx.i27
  %396 = bitcast i8* %391 to i32*
  %397 = load i32, i32* %396
  %398 = or i32 %397, %395
  %399 = bitcast i8* %391 to i32*
  store i32 %398, i32* %399
  %400 = getelementptr i8, i8* %__v23_pmac, i64 4
  %401 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %402 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %401, i32 0, i32 1
  %403 = load i32, i32* %402
  %404 = and i32 %403, %__v31_mask_
  store i1 true, i1* %__rctx.i26
  %405 = bitcast i8* %400 to i32*
  %406 = load i32, i32* %405
  %407 = or i32 %406, %404
  %408 = bitcast i8* %400 to i32*
  store i32 %407, i32* %408
  %409 = getelementptr i8, i8* %__v23_pmac, i64 8
  %410 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %411 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %410, i32 0, i32 2
  %412 = load i32, i32* %411
  %413 = and i32 %412, %__v31_mask_
  store i1 true, i1* %__rctx.i25
  %414 = bitcast i8* %409 to i32*
  %415 = load i32, i32* %414
  %416 = or i32 %415, %413
  %417 = bitcast i8* %409 to i32*
  store i32 %416, i32* %417
  %418 = getelementptr i8, i8* %__v23_pmac, i64 12
  %419 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %420 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %419, i32 0, i32 3
  %421 = load i32, i32* %420
  %422 = and i32 %421, %__v31_mask_
  store i1 true, i1* %__rctx.i24
  %423 = bitcast i8* %418 to i32*
  %424 = load i32, i32* %423
  %425 = or i32 %424, %422
  %426 = bitcast i8* %418 to i32*
  store i32 %425, i32* %426
  %427 = getelementptr i8, i8* %__v23_pmac, i64 16
  %428 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %429 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %428, i32 0, i32 4
  %430 = load i32, i32* %429
  %431 = and i32 %430, %__v31_mask_
  store i1 true, i1* %__rctx.i23
  %432 = bitcast i8* %427 to i32*
  %433 = load i32, i32* %432
  %434 = or i32 %433, %431
  %435 = bitcast i8* %427 to i32*
  store i32 %434, i32* %435
  %436 = getelementptr i8, i8* %__v23_pmac, i64 0
  %437 = bitcast i8* %436 to i32*
  %438 = load i32, i32* %437
  store i32 0, i32* %__rval.i18
  store i1 true, i1* %__rctx.i19
  %439 = and i32 %438, 255
  %__v62_x4.i20 = shl i32 %439, 24
  %440 = lshr i32 %438, 8
  %441 = and i32 %440, 255
  %__v63_x3.i21 = shl i32 %441, 16
  %442 = lshr i32 %438, 16
  %443 = and i32 %442, 255
  %__v64_x2.i22 = shl i32 %443, 8
  %444 = lshr i32 %438, 24
  %445 = or i32 %444, %__v64_x2.i22
  %446 = or i32 %445, %__v63_x3.i21
  %447 = or i32 %446, %__v62_x4.i20
  %448 = getelementptr i8, i8* %__v23_pmac, i64 0
  %449 = bitcast i8* %448 to i32*
  store i32 %447, i32* %449
  %450 = getelementptr i8, i8* %__v23_pmac, i64 4
  %451 = bitcast i8* %450 to i32*
  %452 = load i32, i32* %451
  store i32 0, i32* %__rval.i13
  store i1 true, i1* %__rctx.i14
  %453 = and i32 %452, 255
  %__v62_x4.i15 = shl i32 %453, 24
  %454 = lshr i32 %452, 8
  %455 = and i32 %454, 255
  %__v63_x3.i16 = shl i32 %455, 16
  %456 = lshr i32 %452, 16
  %457 = and i32 %456, 255
  %__v64_x2.i17 = shl i32 %457, 8
  %458 = lshr i32 %452, 24
  %459 = or i32 %458, %__v64_x2.i17
  %460 = or i32 %459, %__v63_x3.i16
  %461 = or i32 %460, %__v62_x4.i15
  %462 = getelementptr i8, i8* %__v23_pmac, i64 4
  %463 = bitcast i8* %462 to i32*
  store i32 %461, i32* %463
  %464 = getelementptr i8, i8* %__v23_pmac, i64 8
  %465 = bitcast i8* %464 to i32*
  %466 = load i32, i32* %465
  store i32 0, i32* %__rval.i8
  store i1 true, i1* %__rctx.i9
  %467 = and i32 %466, 255
  %__v62_x4.i10 = shl i32 %467, 24
  %468 = lshr i32 %466, 8
  %469 = and i32 %468, 255
  %__v63_x3.i11 = shl i32 %469, 16
  %470 = lshr i32 %466, 16
  %471 = and i32 %470, 255
  %__v64_x2.i12 = shl i32 %471, 8
  %472 = lshr i32 %466, 24
  %473 = or i32 %472, %__v64_x2.i12
  %474 = or i32 %473, %__v63_x3.i11
  %475 = or i32 %474, %__v62_x4.i10
  %476 = getelementptr i8, i8* %__v23_pmac, i64 8
  %477 = bitcast i8* %476 to i32*
  store i32 %475, i32* %477
  %478 = getelementptr i8, i8* %__v23_pmac, i64 12
  %479 = bitcast i8* %478 to i32*
  %480 = load i32, i32* %479
  store i32 0, i32* %__rval.i3
  store i1 true, i1* %__rctx.i4
  %481 = and i32 %480, 255
  %__v62_x4.i5 = shl i32 %481, 24
  %482 = lshr i32 %480, 8
  %483 = and i32 %482, 255
  %__v63_x3.i6 = shl i32 %483, 16
  %484 = lshr i32 %480, 16
  %485 = and i32 %484, 255
  %__v64_x2.i7 = shl i32 %485, 8
  %486 = lshr i32 %480, 24
  %487 = or i32 %486, %__v64_x2.i7
  %488 = or i32 %487, %__v63_x3.i6
  %489 = or i32 %488, %__v62_x4.i5
  %490 = getelementptr i8, i8* %__v23_pmac, i64 12
  %491 = bitcast i8* %490 to i32*
  store i32 %489, i32* %491
  %492 = getelementptr i8, i8* %__v23_pmac, i64 16
  %493 = bitcast i8* %492 to i32*
  %494 = load i32, i32* %493
  store i32 0, i32* %__rval.i1
  store i1 true, i1* %__rctx.i2
  %495 = and i32 %494, 255
  %__v62_x4.i = shl i32 %495, 24
  %496 = lshr i32 %494, 8
  %497 = and i32 %496, 255
  %__v63_x3.i = shl i32 %497, 16
  %498 = lshr i32 %494, 16
  %499 = and i32 %498, 255
  %__v64_x2.i = shl i32 %499, 8
  %500 = lshr i32 %494, 24
  %501 = or i32 %500, %__v64_x2.i
  %502 = or i32 %501, %__v63_x3.i
  %503 = or i32 %502, %__v62_x4.i
  %504 = getelementptr i8, i8* %__v23_pmac, i64 16
  %505 = bitcast i8* %504 to i32*
  store i32 %503, i32* %505
  %506 = load i64, i64* %__v15__len
  %507 = add i64 %506, 20
  store i64 %507, i64* %__v15__len
  %508 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %509 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 2
  %510 = bitcast %SHA_CTX* %508 to i8*
  %511 = bitcast %SHA_CTX* %509 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %510, i8* %511, i64 ptrtoint (%SHA_CTX* getelementptr (%SHA_CTX, %SHA_CTX* null, i32 1) to i64), i32 1, i1 false)
  %512 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %513 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %512, i32 0, i32 0
  call void @_sha1_update(i32* %513, i8* %__v23_pmac, i64 20)
  %514 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %515 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %514, i32 0, i32 0
  call void @SHA1_Final(i8* %__v23_pmac, i32* %515)
  %516 = load i64, i64* %__v14_outp
  %517 = load i64, i64* %__v20_inp_len
  %__v32_s_outp = add i64 %516, %517
  %518 = load i64, i64* %__v15__len
  %519 = load i64, i64* %__v20_inp_len
  %__v33_s_len = sub i64 %518, %519
  %520 = sub i64 %__v85___v3__out_len, 1
  %521 = load i32, i32* %__v18_maxpad
  %522 = zext i32 %521 to i64
  %523 = sub i64 %520, %522
  %__v34_p_outp = sub i64 %523, 20
  %__v35_off = sub i64 %__v32_s_outp, %__v34_p_outp
  %524 = load i32, i32* %__v18_maxpad
  %525 = add i32 %524, 20
  store i32 %525, i32* %__v18_maxpad
  %__v36_s_res = alloca i32
  store i32 0, i32* %__v36_s_res
  %__v37_i = alloca i32
  store i32 0, i32* %__v37_i
  %526 = load i32, i32* %__v18_maxpad
  %527 = zext i32 %526 to i64
  br label %528

; <label>:528:                                    ; preds = %563, %372
  %__v38_j = phi i64 [ 0, %372 ], [ %564, %563 ]
  %529 = icmp ult i64 %__v38_j, %527
  br i1 %529, label %530, label %565

; <label>:530:                                    ; preds = %528
  %__v106_lexpr = add i64 %__v34_p_outp, %__v38_j
  %531 = getelementptr i8, i8* %__v3__out, i64 %__v106_lexpr
  %532 = load i8, i8* %531
  %__v39_c = zext i8 %532 to i32
  %533 = sub i64 %__v38_j, %__v35_off
  %534 = sub i64 %533, 20
  %535 = trunc i64 %534 to i32
  %536 = ashr i32 %535, 31
  %__v40_cmask = alloca i32
  store i32 %536, i32* %__v40_cmask
  %537 = load i32, i32* %__v36_s_res
  %538 = load i32, i32* %__v17_pad
  %539 = xor i32 %__v39_c, %538
  %540 = load i32, i32* %__v40_cmask
  %541 = xor i32 %540, -1
  %542 = and i32 %539, %541
  %543 = or i32 %537, %542
  store i32 %543, i32* %__v36_s_res
  %544 = load i32, i32* %__v40_cmask
  %545 = sub i64 %__v35_off, 1
  %546 = sub i64 %545, %__v38_j
  %547 = trunc i64 %546 to i32
  %548 = ashr i32 %547, 31
  %549 = and i32 %544, %548
  store i32 %549, i32* %__v40_cmask
  %550 = load i32, i32* %__v37_i
  %__v107_lexpr = zext i32 %550 to i64
  %551 = load i32, i32* %__v36_s_res
  %552 = getelementptr i8, i8* %__v23_pmac, i64 %__v107_lexpr
  %553 = load i8, i8* %552
  %554 = zext i8 %553 to i32
  %555 = xor i32 %__v39_c, %554
  %556 = load i32, i32* %__v40_cmask
  %557 = and i32 %555, %556
  %558 = or i32 %551, %557
  store i32 %558, i32* %__v36_s_res
  %559 = load i32, i32* %__v37_i
  %560 = load i32, i32* %__v40_cmask
  %561 = and i32 1, %560
  %562 = add i32 %559, %561
  store i32 %562, i32* %__v37_i
  br label %563

; <label>:563:                                    ; preds = %530
  %564 = add i64 %__v38_j, 1
  br label %528

; <label>:565:                                    ; preds = %528
  %566 = load i32, i32* %__v18_maxpad
  %567 = sub i32 %566, 20
  store i32 %567, i32* %__v18_maxpad
  %568 = load i32, i32* %__v36_s_res
  %569 = sub i32 0, %568
  %570 = lshr i32 %569, 31
  %571 = sub i32 0, %570
  store i32 %571, i32* %__v36_s_res
  %572 = load i32, i32* %__v16_ret
  %573 = load i32, i32* %__v36_s_res
  %574 = xor i32 %573, -1
  %575 = and i32 %572, %574
  store i32 %575, i32* %__v16_ret
  %576 = load i32, i32* %__v16_ret
  ret i32 %576
}

attributes #0 = { argmemonly nounwind }
