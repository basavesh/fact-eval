; ModuleID = './20170717_latest.bc'
source_filename = "Module"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%SHA_CTX = type { [5 x i32], i32, i32, [64 x i8], i32 }
%EVP_AES_HMAC_SHA1 = type { %AES_KEY, %SHA_CTX, %SHA_CTX, %SHA_CTX, i64, [16 x i8] }
%AES_KEY = type { [60 x i32], i32 }

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #0

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #0

declare void @SHA1_Final(i8*, i32*)

declare void @_sha1_update(i32*, i8*, i64)

declare void @sha1_block_data_order(%SHA_CTX*, i8*, i32)

declare void @aesni_cbc_encrypt(i8*, i8*, i64, i32*, i8*, i32)

define i32 @_aesni_cbc_hmac_sha1_cipher(i8* %__v1_iv, %EVP_AES_HMAC_SHA1* %__v2_key, i8* %__v3__out, i64 %__v69___v3__out_len, i8* %__v4__in, i64 %__v70___v4__in_len, i16 %__v5_tls_ver) {
entry:
  %__rval.i22 = alloca i32
  %__rctx.i23 = alloca i1
  %__rval.i17 = alloca i32
  %__rctx.i18 = alloca i1
  %__rval.i12 = alloca i32
  %__rctx.i13 = alloca i1
  %__rval.i7 = alloca i32
  %__rctx.i8 = alloca i1
  %__rval.i2 = alloca i32
  %__rctx.i3 = alloca i1
  %__rval.i = alloca i32
  %__rctx.i1 = alloca i1
  %__rctx.i = alloca i1
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
  %1 = zext i16 %__v5_tls_ver to i32
  %2 = icmp uge i32 %1, 770
  br i1 %2, label %3, label %6

; <label>:3:                                      ; preds = %entry
  %4 = load i32, i32* %__v15__len
  %5 = icmp ult i32 %4, 37
  br i1 %5, label %62, label %63

; <label>:6:                                      ; preds = %entry
  %7 = load i32, i32* %__v15__len
  %8 = icmp ult i32 %7, 21
  br i1 %8, label %72, label %73

; <label>:9:                                      ; preds = %74, %64
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
  %29 = call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %27, i32 %__v19_maxpad, i32 %28)
  store i32 %29, i32* %__v17_pad
  %30 = and i1 true, %__m1
  %31 = load i32, i32* %__v16_ret
  %32 = call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %30, i32 0, i32 %31)
  store i32 %32, i32* %__v16_ret
  %__m2 = xor i1 %__m1, true
  %33 = load i32, i32* %__v15__len
  %34 = load i32, i32* %__v17_pad
  %35 = add i32 20, %34
  %36 = add i32 %35, 1
  %37 = sub i32 %33, %36
  %__v20_inp_len = alloca i32
  store i32 %37, i32* %__v20_inp_len
  %38 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 5
  %39 = bitcast [16 x i8]* %38 to i8*
  %40 = getelementptr i8, i8* %39, i64 11
  %41 = load i32, i32* %__v20_inp_len
  %42 = trunc i32 %41 to i16
  store i1 true, i1* %__rctx.i
  %43 = lshr i16 %42, 8
  %44 = trunc i16 %43 to i8
  store i8 %44, i8* %40
  %45 = getelementptr i8, i8* %40, i64 1
  %46 = trunc i16 %42 to i8
  store i8 %46, i8* %45
  %47 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %48 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 1
  %49 = bitcast %SHA_CTX* %47 to i8*
  %50 = bitcast %SHA_CTX* %48 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %49, i8* %50, i64 ptrtoint (%SHA_CTX* getelementptr (%SHA_CTX, %SHA_CTX* null, i32 1) to i64), i32 1, i1 false)
  %51 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %52 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %51, i32 0, i32 0
  %53 = bitcast [5 x i32]* %52 to i32*
  %54 = getelementptr i32, i32* %53, i64 0
  %55 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 5
  %56 = bitcast [16 x i8]* %55 to i8*
  %57 = getelementptr i8, i8* %56, i64 0
  call void @_sha1_update(i32* %54, i8* %57, i64 13)
  %58 = load i32, i32* %__v15__len
  %59 = sub i32 %58, 20
  store i32 %59, i32* %__v15__len
  %60 = load i32, i32* %__v15__len
  %61 = icmp uge i32 %60, 320
  br i1 %61, label %75, label %96

; <label>:62:                                     ; preds = %3
  ret i32 0

; <label>:63:                                     ; preds = %3
  br label %64

; <label>:64:                                     ; preds = %63
  %65 = getelementptr i8, i8* %__v4__in, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %__v1_iv, i8* %65, i64 16, i32 1, i1 false)
  %66 = load i32, i32* %__v13_inp
  %67 = add i32 %66, 16
  store i32 %67, i32* %__v13_inp
  %68 = load i32, i32* %__v14_outp
  %69 = add i32 %68, 16
  store i32 %69, i32* %__v14_outp
  %70 = load i32, i32* %__v15__len
  %71 = sub i32 %70, 16
  store i32 %71, i32* %__v15__len
  br label %9

; <label>:72:                                     ; preds = %6
  ret i32 0

; <label>:73:                                     ; preds = %6
  br label %74

; <label>:74:                                     ; preds = %73
  br label %9

; <label>:75:                                     ; preds = %9
  %76 = load i32, i32* %__v15__len
  %77 = sub i32 %76, 320
  %78 = and i32 %77, -64
  %79 = add i32 %78, 64
  %80 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %81 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %80, i32 0, i32 4
  %82 = load i32, i32* %81
  %__v21_j = sub i32 %79, %82
  %83 = load i32, i32* %__v14_outp
  %__v82_lexpr = zext i32 %83 to i64
  %__v83_lexpr = zext i32 %__v21_j to i64
  %84 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %85 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %84, i32 0, i32 0
  %86 = bitcast [5 x i32]* %85 to i32*
  %87 = getelementptr i32, i32* %86, i64 0
  %88 = getelementptr i8, i8* %__v3__out, i64 %__v82_lexpr
  %89 = zext i32 %__v21_j to i64
  call void @_sha1_update(i32* %87, i8* %88, i64 %89)
  %90 = load i32, i32* %__v14_outp
  %91 = add i32 %90, %__v21_j
  store i32 %91, i32* %__v14_outp
  %92 = load i32, i32* %__v15__len
  %93 = sub i32 %92, %__v21_j
  store i32 %93, i32* %__v15__len
  %94 = load i32, i32* %__v20_inp_len
  %95 = sub i32 %94, %__v21_j
  store i32 %95, i32* %__v20_inp_len
  br label %97

; <label>:96:                                     ; preds = %9
  br label %97

; <label>:97:                                     ; preds = %96, %75
  %98 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %99 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %98, i32 0, i32 1
  %100 = load i32, i32* %99
  %101 = load i32, i32* %__v20_inp_len
  %102 = shl i32 %101, 3
  %103 = add i32 %100, %102
  store i32 0, i32* %__rval.i
  store i1 true, i1* %__rctx.i1
  %104 = and i32 %103, 255
  %__v47_x4.i = shl i32 %104, 24
  %105 = lshr i32 %103, 8
  %106 = and i32 %105, 255
  %__v48_x3.i = shl i32 %106, 16
  %107 = lshr i32 %103, 16
  %108 = and i32 %107, 255
  %__v49_x2.i = shl i32 %108, 8
  %109 = lshr i32 %103, 24
  %110 = or i32 %109, %__v49_x2.i
  %111 = or i32 %110, %__v48_x3.i
  %112 = or i32 %111, %__v47_x4.i
  %__v23_pmac = alloca i8, i64 20
  call void @llvm.memset.p0i8.i64(i8* %__v23_pmac, i8 0, i64 20, i32 1, i1 false)
  %113 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %114 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %113, i32 0, i32 4
  %115 = load i32, i32* %114
  %__v24_p_res = alloca i32
  store i32 %115, i32* %__v24_p_res
  %116 = load i32, i32* %__v15__len
  br label %117

; <label>:117:                                    ; preds = %143, %97
  %__v25_j = phi i32 [ 0, %97 ], [ %144, %143 ]
  %118 = icmp ult i32 %__v25_j, %116
  br i1 %118, label %119, label %145

; <label>:119:                                    ; preds = %117
  %120 = load i32, i32* %__v24_p_res
  %__v84_lexpr = zext i32 %120 to i64
  %121 = load i32, i32* %__v14_outp
  %122 = add i32 %121, %__v25_j
  %__v85_lexpr = zext i32 %122 to i64
  %123 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %124 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %123, i32 0, i32 3
  %125 = bitcast [64 x i8]* %124 to i8*
  %126 = getelementptr i8, i8* %125, i64 %__v84_lexpr
  %127 = load i32, i32* %__v20_inp_len
  %128 = icmp ult i32 %__v25_j, %127
  %129 = getelementptr i8, i8* %__v3__out, i64 %__v85_lexpr
  %130 = load i8, i8* %129
  %131 = load i32, i32* %__v20_inp_len
  %132 = icmp eq i32 %__v25_j, %131
  %133 = call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %132, i32 128, i32 0)
  %134 = trunc i32 %133 to i8
  %135 = zext i8 %130 to i32
  %136 = zext i8 %134 to i32
  %137 = call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %128, i32 %135, i32 %136)
  %138 = trunc i32 %137 to i8
  store i8 %138, i8* %126
  %139 = load i32, i32* %__v24_p_res
  %140 = add i32 %139, 1
  store i32 %140, i32* %__v24_p_res
  %141 = load i32, i32* %__v24_p_res
  %142 = icmp eq i32 %141, 64
  br i1 %142, label %148, label %219

; <label>:143:                                    ; preds = %220
  %144 = add i32 %__v25_j, 1
  br label %117

; <label>:145:                                    ; preds = %117
  %146 = load i32, i32* %__v15__len
  %__v27_j = alloca i32
  store i32 %146, i32* %__v27_j
  %147 = load i32, i32* %__v24_p_res
  br label %221

; <label>:148:                                    ; preds = %119
  %149 = load i32, i32* %__v20_inp_len
  %150 = add i32 %149, 7
  %__m17 = icmp ult i32 %150, %__v25_j
  %151 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %152 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %151, i32 0, i32 3
  %153 = bitcast [64 x i8]* %152 to i8*
  %154 = getelementptr i8, i8* %153, i64 60
  %155 = and i1 true, %__m17
  %156 = bitcast i8* %154 to i32*
  %157 = load i32, i32* %156
  %158 = call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %155, i32 %112, i32 %157)
  store i32 %158, i32* %156
  %__m18 = xor i1 %__m17, true
  %159 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %160 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %161 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %160, i32 0, i32 3
  %162 = bitcast [64 x i8]* %161 to i8*
  call void @sha1_block_data_order(%SHA_CTX* %159, i8* %162, i32 1)
  %163 = load i32, i32* %__v20_inp_len
  %164 = add i32 %163, 72
  %165 = icmp ult i32 %__v25_j, %164
  %166 = zext i1 %165 to i32
  %167 = call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %__m17, i32 %166, i32 0)
  %168 = trunc i32 %167 to i1
  %169 = getelementptr i8, i8* %__v23_pmac, i64 0
  %170 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %171 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %170, i32 0, i32 0
  %172 = bitcast [5 x i32]* %171 to i32*
  %173 = getelementptr i32, i32* %172, i64 0
  %174 = load i32, i32* %173
  %175 = and i1 true, %168
  %176 = bitcast i8* %169 to i32*
  %177 = load i32, i32* %176
  %178 = call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %175, i32 %174, i32 %177)
  store i32 %178, i32* %176
  %179 = getelementptr i8, i8* %__v23_pmac, i64 4
  %180 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %181 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %180, i32 0, i32 0
  %182 = bitcast [5 x i32]* %181 to i32*
  %183 = getelementptr i32, i32* %182, i64 1
  %184 = load i32, i32* %183
  %185 = and i1 true, %168
  %186 = bitcast i8* %179 to i32*
  %187 = load i32, i32* %186
  %188 = call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %185, i32 %184, i32 %187)
  store i32 %188, i32* %186
  %189 = getelementptr i8, i8* %__v23_pmac, i64 8
  %190 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %191 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %190, i32 0, i32 0
  %192 = bitcast [5 x i32]* %191 to i32*
  %193 = getelementptr i32, i32* %192, i64 2
  %194 = load i32, i32* %193
  %195 = and i1 true, %168
  %196 = bitcast i8* %189 to i32*
  %197 = load i32, i32* %196
  %198 = call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %195, i32 %194, i32 %197)
  store i32 %198, i32* %196
  %199 = getelementptr i8, i8* %__v23_pmac, i64 12
  %200 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %201 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %200, i32 0, i32 0
  %202 = bitcast [5 x i32]* %201 to i32*
  %203 = getelementptr i32, i32* %202, i64 3
  %204 = load i32, i32* %203
  %205 = and i1 true, %168
  %206 = bitcast i8* %199 to i32*
  %207 = load i32, i32* %206
  %208 = call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %205, i32 %204, i32 %207)
  store i32 %208, i32* %206
  %209 = getelementptr i8, i8* %__v23_pmac, i64 16
  %210 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %211 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %210, i32 0, i32 0
  %212 = bitcast [5 x i32]* %211 to i32*
  %213 = getelementptr i32, i32* %212, i64 4
  %214 = load i32, i32* %213
  %215 = and i1 true, %168
  %216 = bitcast i8* %209 to i32*
  %217 = load i32, i32* %216
  %218 = call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %215, i32 %214, i32 %217)
  store i32 %218, i32* %216
  %__m20 = xor i1 %168, true
  store i32 0, i32* %__v24_p_res
  br label %220

; <label>:219:                                    ; preds = %119
  br label %220

; <label>:220:                                    ; preds = %219, %148
  br label %143

; <label>:221:                                    ; preds = %230, %145
  %__v28_i = phi i32 [ %147, %145 ], [ %231, %230 ]
  %222 = icmp ult i32 %__v28_i, 64
  br i1 %222, label %223, label %232

; <label>:223:                                    ; preds = %221
  %__v88_lexpr = zext i32 %__v28_i to i64
  %224 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %225 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %224, i32 0, i32 3
  %226 = bitcast [64 x i8]* %225 to i8*
  %227 = getelementptr i8, i8* %226, i64 %__v88_lexpr
  store i8 0, i8* %227
  %228 = load i32, i32* %__v27_j
  %229 = add i32 %228, 1
  store i32 %229, i32* %__v27_j
  br label %230

; <label>:230:                                    ; preds = %223
  %231 = add i32 %__v28_i, 1
  br label %221

; <label>:232:                                    ; preds = %221
  %233 = load i32, i32* %__v24_p_res
  %234 = icmp ugt i32 %233, 56
  br i1 %234, label %235, label %313

; <label>:235:                                    ; preds = %232
  %236 = load i32, i32* %__v20_inp_len
  %237 = add i32 %236, 8
  %238 = load i32, i32* %__v27_j
  %__m13 = icmp ult i32 %237, %238
  %239 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %240 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %239, i32 0, i32 3
  %241 = bitcast [64 x i8]* %240 to i8*
  %242 = getelementptr i8, i8* %241, i64 60
  %243 = and i1 true, %__m13
  %244 = bitcast i8* %242 to i32*
  %245 = load i32, i32* %244
  %246 = call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %243, i32 %112, i32 %245)
  store i32 %246, i32* %244
  %__m14 = xor i1 %__m13, true
  %247 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %248 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %249 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %248, i32 0, i32 3
  %250 = bitcast [64 x i8]* %249 to i8*
  call void @sha1_block_data_order(%SHA_CTX* %247, i8* %250, i32 1)
  %251 = load i32, i32* %__v27_j
  %252 = load i32, i32* %__v20_inp_len
  %253 = add i32 %252, 73
  %254 = icmp ult i32 %251, %253
  %255 = zext i1 %254 to i32
  %256 = call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %__m13, i32 %255, i32 0)
  %257 = trunc i32 %256 to i1
  %258 = getelementptr i8, i8* %__v23_pmac, i64 0
  %259 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %260 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %259, i32 0, i32 0
  %261 = bitcast [5 x i32]* %260 to i32*
  %262 = getelementptr i32, i32* %261, i64 0
  %263 = load i32, i32* %262
  %264 = and i1 true, %257
  %265 = bitcast i8* %258 to i32*
  %266 = load i32, i32* %265
  %267 = call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %264, i32 %263, i32 %266)
  store i32 %267, i32* %265
  %268 = getelementptr i8, i8* %__v23_pmac, i64 4
  %269 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %270 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %269, i32 0, i32 0
  %271 = bitcast [5 x i32]* %270 to i32*
  %272 = getelementptr i32, i32* %271, i64 1
  %273 = load i32, i32* %272
  %274 = and i1 true, %257
  %275 = bitcast i8* %268 to i32*
  %276 = load i32, i32* %275
  %277 = call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %274, i32 %273, i32 %276)
  store i32 %277, i32* %275
  %278 = getelementptr i8, i8* %__v23_pmac, i64 8
  %279 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %280 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %279, i32 0, i32 0
  %281 = bitcast [5 x i32]* %280 to i32*
  %282 = getelementptr i32, i32* %281, i64 2
  %283 = load i32, i32* %282
  %284 = and i1 true, %257
  %285 = bitcast i8* %278 to i32*
  %286 = load i32, i32* %285
  %287 = call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %284, i32 %283, i32 %286)
  store i32 %287, i32* %285
  %288 = getelementptr i8, i8* %__v23_pmac, i64 12
  %289 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %290 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %289, i32 0, i32 0
  %291 = bitcast [5 x i32]* %290 to i32*
  %292 = getelementptr i32, i32* %291, i64 3
  %293 = load i32, i32* %292
  %294 = and i1 true, %257
  %295 = bitcast i8* %288 to i32*
  %296 = load i32, i32* %295
  %297 = call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %294, i32 %293, i32 %296)
  store i32 %297, i32* %295
  %298 = getelementptr i8, i8* %__v23_pmac, i64 16
  %299 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %300 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %299, i32 0, i32 0
  %301 = bitcast [5 x i32]* %300 to i32*
  %302 = getelementptr i32, i32* %301, i64 4
  %303 = load i32, i32* %302
  %304 = and i1 true, %257
  %305 = bitcast i8* %298 to i32*
  %306 = load i32, i32* %305
  %307 = call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %304, i32 %303, i32 %306)
  store i32 %307, i32* %305
  %__m16 = xor i1 %257, true
  %308 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %309 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %308, i32 0, i32 3
  %310 = bitcast [64 x i8]* %309 to i8*
  call void @llvm.memset.p0i8.i64(i8* %310, i8 0, i64 64, i32 1, i1 false)
  %311 = load i32, i32* %__v27_j
  %312 = add i32 %311, 64
  store i32 %312, i32* %__v27_j
  br label %314

; <label>:313:                                    ; preds = %232
  br label %314

; <label>:314:                                    ; preds = %313, %235
  %315 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %316 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %315, i32 0, i32 3
  %317 = bitcast [64 x i8]* %316 to i8*
  %318 = getelementptr i8, i8* %317, i64 60
  %319 = bitcast i8* %318 to i32*
  store i32 %112, i32* %319
  %320 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %321 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %322 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %321, i32 0, i32 3
  %323 = bitcast [64 x i8]* %322 to i8*
  call void @sha1_block_data_order(%SHA_CTX* %320, i8* %323, i32 1)
  %324 = load i32, i32* %__v27_j
  %325 = load i32, i32* %__v20_inp_len
  %326 = add i32 %325, 73
  %__m3 = icmp ult i32 %324, %326
  %327 = getelementptr i8, i8* %__v23_pmac, i64 0
  %328 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %329 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %328, i32 0, i32 0
  %330 = bitcast [5 x i32]* %329 to i32*
  %331 = getelementptr i32, i32* %330, i64 0
  %332 = load i32, i32* %331
  %333 = and i1 true, %__m3
  %334 = bitcast i8* %327 to i32*
  %335 = load i32, i32* %334
  %336 = call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %333, i32 %332, i32 %335)
  store i32 %336, i32* %334
  %337 = getelementptr i8, i8* %__v23_pmac, i64 4
  %338 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %339 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %338, i32 0, i32 0
  %340 = bitcast [5 x i32]* %339 to i32*
  %341 = getelementptr i32, i32* %340, i64 1
  %342 = load i32, i32* %341
  %343 = and i1 true, %__m3
  %344 = bitcast i8* %337 to i32*
  %345 = load i32, i32* %344
  %346 = call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %343, i32 %342, i32 %345)
  store i32 %346, i32* %344
  %347 = getelementptr i8, i8* %__v23_pmac, i64 8
  %348 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %349 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %348, i32 0, i32 0
  %350 = bitcast [5 x i32]* %349 to i32*
  %351 = getelementptr i32, i32* %350, i64 2
  %352 = load i32, i32* %351
  %353 = and i1 true, %__m3
  %354 = bitcast i8* %347 to i32*
  %355 = load i32, i32* %354
  %356 = call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %353, i32 %352, i32 %355)
  store i32 %356, i32* %354
  %357 = getelementptr i8, i8* %__v23_pmac, i64 12
  %358 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %359 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %358, i32 0, i32 0
  %360 = bitcast [5 x i32]* %359 to i32*
  %361 = getelementptr i32, i32* %360, i64 3
  %362 = load i32, i32* %361
  %363 = and i1 true, %__m3
  %364 = bitcast i8* %357 to i32*
  %365 = load i32, i32* %364
  %366 = call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %363, i32 %362, i32 %365)
  store i32 %366, i32* %364
  %367 = getelementptr i8, i8* %__v23_pmac, i64 16
  %368 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %369 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %368, i32 0, i32 0
  %370 = bitcast [5 x i32]* %369 to i32*
  %371 = getelementptr i32, i32* %370, i64 4
  %372 = load i32, i32* %371
  %373 = and i1 true, %__m3
  %374 = bitcast i8* %367 to i32*
  %375 = load i32, i32* %374
  %376 = call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %373, i32 %372, i32 %375)
  store i32 %376, i32* %374
  %__m4 = xor i1 %__m3, true
  %377 = getelementptr i8, i8* %__v23_pmac, i64 0
  %378 = bitcast i8* %377 to i32*
  %379 = load i32, i32* %378
  store i32 0, i32* %__rval.i22
  store i1 true, i1* %__rctx.i23
  %380 = and i32 %379, 255
  %__v47_x4.i24 = shl i32 %380, 24
  %381 = lshr i32 %379, 8
  %382 = and i32 %381, 255
  %__v48_x3.i25 = shl i32 %382, 16
  %383 = lshr i32 %379, 16
  %384 = and i32 %383, 255
  %__v49_x2.i26 = shl i32 %384, 8
  %385 = lshr i32 %379, 24
  %386 = or i32 %385, %__v49_x2.i26
  %387 = or i32 %386, %__v48_x3.i25
  %388 = or i32 %387, %__v47_x4.i24
  %389 = getelementptr i8, i8* %__v23_pmac, i64 0
  %390 = bitcast i8* %389 to i32*
  store i32 %388, i32* %390
  %391 = getelementptr i8, i8* %__v23_pmac, i64 4
  %392 = bitcast i8* %391 to i32*
  %393 = load i32, i32* %392
  store i32 0, i32* %__rval.i17
  store i1 true, i1* %__rctx.i18
  %394 = and i32 %393, 255
  %__v47_x4.i19 = shl i32 %394, 24
  %395 = lshr i32 %393, 8
  %396 = and i32 %395, 255
  %__v48_x3.i20 = shl i32 %396, 16
  %397 = lshr i32 %393, 16
  %398 = and i32 %397, 255
  %__v49_x2.i21 = shl i32 %398, 8
  %399 = lshr i32 %393, 24
  %400 = or i32 %399, %__v49_x2.i21
  %401 = or i32 %400, %__v48_x3.i20
  %402 = or i32 %401, %__v47_x4.i19
  %403 = getelementptr i8, i8* %__v23_pmac, i64 4
  %404 = bitcast i8* %403 to i32*
  store i32 %402, i32* %404
  %405 = getelementptr i8, i8* %__v23_pmac, i64 8
  %406 = bitcast i8* %405 to i32*
  %407 = load i32, i32* %406
  store i32 0, i32* %__rval.i12
  store i1 true, i1* %__rctx.i13
  %408 = and i32 %407, 255
  %__v47_x4.i14 = shl i32 %408, 24
  %409 = lshr i32 %407, 8
  %410 = and i32 %409, 255
  %__v48_x3.i15 = shl i32 %410, 16
  %411 = lshr i32 %407, 16
  %412 = and i32 %411, 255
  %__v49_x2.i16 = shl i32 %412, 8
  %413 = lshr i32 %407, 24
  %414 = or i32 %413, %__v49_x2.i16
  %415 = or i32 %414, %__v48_x3.i15
  %416 = or i32 %415, %__v47_x4.i14
  %417 = getelementptr i8, i8* %__v23_pmac, i64 8
  %418 = bitcast i8* %417 to i32*
  store i32 %416, i32* %418
  %419 = getelementptr i8, i8* %__v23_pmac, i64 12
  %420 = bitcast i8* %419 to i32*
  %421 = load i32, i32* %420
  store i32 0, i32* %__rval.i7
  store i1 true, i1* %__rctx.i8
  %422 = and i32 %421, 255
  %__v47_x4.i9 = shl i32 %422, 24
  %423 = lshr i32 %421, 8
  %424 = and i32 %423, 255
  %__v48_x3.i10 = shl i32 %424, 16
  %425 = lshr i32 %421, 16
  %426 = and i32 %425, 255
  %__v49_x2.i11 = shl i32 %426, 8
  %427 = lshr i32 %421, 24
  %428 = or i32 %427, %__v49_x2.i11
  %429 = or i32 %428, %__v48_x3.i10
  %430 = or i32 %429, %__v47_x4.i9
  %431 = getelementptr i8, i8* %__v23_pmac, i64 12
  %432 = bitcast i8* %431 to i32*
  store i32 %430, i32* %432
  %433 = getelementptr i8, i8* %__v23_pmac, i64 16
  %434 = bitcast i8* %433 to i32*
  %435 = load i32, i32* %434
  store i32 0, i32* %__rval.i2
  store i1 true, i1* %__rctx.i3
  %436 = and i32 %435, 255
  %__v47_x4.i4 = shl i32 %436, 24
  %437 = lshr i32 %435, 8
  %438 = and i32 %437, 255
  %__v48_x3.i5 = shl i32 %438, 16
  %439 = lshr i32 %435, 16
  %440 = and i32 %439, 255
  %__v49_x2.i6 = shl i32 %440, 8
  %441 = lshr i32 %435, 24
  %442 = or i32 %441, %__v49_x2.i6
  %443 = or i32 %442, %__v48_x3.i5
  %444 = or i32 %443, %__v47_x4.i4
  %445 = getelementptr i8, i8* %__v23_pmac, i64 16
  %446 = bitcast i8* %445 to i32*
  store i32 %444, i32* %446
  %447 = load i32, i32* %__v15__len
  %448 = add i32 %447, 20
  store i32 %448, i32* %__v15__len
  %449 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %450 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 2
  %451 = bitcast %SHA_CTX* %449 to i8*
  %452 = bitcast %SHA_CTX* %450 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %451, i8* %452, i64 ptrtoint (%SHA_CTX* getelementptr (%SHA_CTX, %SHA_CTX* null, i32 1) to i64), i32 1, i1 false)
  %453 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %454 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %453, i32 0, i32 0
  %455 = bitcast [5 x i32]* %454 to i32*
  %456 = getelementptr i32, i32* %455, i64 0
  call void @_sha1_update(i32* %456, i8* %__v23_pmac, i64 20)
  %457 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i32 0, i32 3
  %458 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %457, i32 0, i32 0
  %459 = bitcast [5 x i32]* %458 to i32*
  %460 = getelementptr i32, i32* %459, i64 0
  call void @SHA1_Final(i8* %__v23_pmac, i32* %460)
  %461 = load i32, i32* %__v14_outp
  %462 = load i32, i32* %__v20_inp_len
  %463 = add i32 %461, %462
  %__v30_s_outp = zext i32 %463 to i64
  %464 = sub i64 %__v69___v3__out_len, 1
  %465 = zext i32 %__v19_maxpad to i64
  %466 = sub i64 %464, %465
  %__v31_p_outp = sub i64 %466, 20
  %__v32_i = alloca i32
  store i32 0, i32* %__v32_i
  %467 = add i32 %__v19_maxpad, 20
  br label %468

; <label>:468:                                    ; preds = %499, %314
  %__v33_j = phi i32 [ 0, %314 ], [ %500, %499 ]
  %469 = icmp ult i32 %__v33_j, %467
  br i1 %469, label %470, label %501

; <label>:470:                                    ; preds = %468
  %471 = zext i32 %__v33_j to i64
  %__v93_lexpr = add i64 %__v31_p_outp, %471
  %472 = getelementptr i8, i8* %__v3__out, i64 %__v93_lexpr
  %473 = load i8, i8* %472
  %__v34_c = zext i8 %473 to i32
  %474 = zext i32 %__v33_j to i64
  %475 = add i64 %__v31_p_outp, %474
  %476 = add i64 %__v30_s_outp, 20
  %__m5 = icmp uge i64 %475, %476
  %477 = load i32, i32* %__v17_pad
  %__m6 = icmp ne i32 %__v34_c, %477
  %478 = and i1 true, %__m6
  %479 = and i1 %478, %__m5
  %480 = load i32, i32* %__v16_ret
  %481 = call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %479, i32 0, i32 %480)
  store i32 %481, i32* %__v16_ret
  %__m7 = xor i1 %__m6, true
  %__m8 = xor i1 %__m5, true
  %482 = zext i32 %__v33_j to i64
  %483 = add i64 %__v31_p_outp, %482
  %__m9 = icmp uge i64 %483, %__v30_s_outp
  %484 = load i32, i32* %__v32_i
  %__v94_lexpr = zext i32 %484 to i64
  %485 = getelementptr i8, i8* %__v23_pmac, i64 %__v94_lexpr
  %486 = load i8, i8* %485
  %487 = zext i8 %486 to i32
  %__m10 = icmp ne i32 %__v34_c, %487
  %488 = and i1 true, %__m10
  %489 = and i1 %488, %__m9
  %490 = and i1 %489, %__m8
  %491 = load i32, i32* %__v16_ret
  %492 = call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %490, i32 0, i32 %491)
  store i32 %492, i32* %__v16_ret
  %__m11 = xor i1 %__m10, true
  %493 = load i32, i32* %__v32_i
  %494 = add i32 %493, 1
  %495 = and i1 true, %__m9
  %496 = and i1 %495, %__m8
  %497 = load i32, i32* %__v32_i
  %498 = call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %496, i32 %494, i32 %497)
  store i32 %498, i32* %__v32_i
  %__m12 = xor i1 %__m9, true
  br label %499

; <label>:499:                                    ; preds = %470
  %500 = add i32 %__v33_j, 1
  br label %468

; <label>:501:                                    ; preds = %468
  %502 = load i32, i32* %__v16_ret
  ret i32 %502
}

attributes #0 = { argmemonly nounwind }
