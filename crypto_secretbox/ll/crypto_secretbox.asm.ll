; ModuleID = './crypto_secretbox.asm.bc'
source_filename = "Module"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%poly1305_state_internal_t = type { [3 x i64], [3 x i64], [2 x i64], i64, [16 x i8], i8 }

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #0

define internal void @_crypto_core_hsalsa20(i8* %__v239_out, i8* %__v240_input, i8* %__v241_k) {
entry:
  %__rctx = alloca i1
  store i1 true, i1* %__rctx
  %__v242_x0 = alloca i32
  store i32 1634760805, i32* %__v242_x0
  %__v243_x5 = alloca i32
  store i32 857760878, i32* %__v243_x5
  %__v244_x10 = alloca i32
  store i32 2036477234, i32* %__v244_x10
  %__v245_x15 = alloca i32
  store i32 1797285236, i32* %__v245_x15
  %0 = getelementptr i8, i8* %__v241_k, i64 0
  %1 = bitcast i8* %0 to i32*
  %2 = load i32, i32* %1
  %__v246_x1 = alloca i32
  store i32 %2, i32* %__v246_x1
  %3 = getelementptr i8, i8* %__v241_k, i64 4
  %4 = bitcast i8* %3 to i32*
  %5 = load i32, i32* %4
  %__v247_x2 = alloca i32
  store i32 %5, i32* %__v247_x2
  %6 = getelementptr i8, i8* %__v241_k, i64 8
  %7 = bitcast i8* %6 to i32*
  %8 = load i32, i32* %7
  %__v248_x3 = alloca i32
  store i32 %8, i32* %__v248_x3
  %9 = getelementptr i8, i8* %__v241_k, i64 12
  %10 = bitcast i8* %9 to i32*
  %11 = load i32, i32* %10
  %__v249_x4 = alloca i32
  store i32 %11, i32* %__v249_x4
  %12 = getelementptr i8, i8* %__v241_k, i64 16
  %13 = bitcast i8* %12 to i32*
  %14 = load i32, i32* %13
  %__v250_x11 = alloca i32
  store i32 %14, i32* %__v250_x11
  %15 = getelementptr i8, i8* %__v241_k, i64 20
  %16 = bitcast i8* %15 to i32*
  %17 = load i32, i32* %16
  %__v251_x12 = alloca i32
  store i32 %17, i32* %__v251_x12
  %18 = getelementptr i8, i8* %__v241_k, i64 24
  %19 = bitcast i8* %18 to i32*
  %20 = load i32, i32* %19
  %__v252_x13 = alloca i32
  store i32 %20, i32* %__v252_x13
  %21 = getelementptr i8, i8* %__v241_k, i64 28
  %22 = bitcast i8* %21 to i32*
  %23 = load i32, i32* %22
  %__v253_x14 = alloca i32
  store i32 %23, i32* %__v253_x14
  %24 = getelementptr i8, i8* %__v240_input, i64 0
  %25 = bitcast i8* %24 to i32*
  %26 = load i32, i32* %25
  %__v254_x6 = alloca i32
  store i32 %26, i32* %__v254_x6
  %27 = getelementptr i8, i8* %__v240_input, i64 4
  %28 = bitcast i8* %27 to i32*
  %29 = load i32, i32* %28
  %__v255_x7 = alloca i32
  store i32 %29, i32* %__v255_x7
  %30 = getelementptr i8, i8* %__v240_input, i64 8
  %31 = bitcast i8* %30 to i32*
  %32 = load i32, i32* %31
  %__v256_x8 = alloca i32
  store i32 %32, i32* %__v256_x8
  %33 = getelementptr i8, i8* %__v240_input, i64 12
  %34 = bitcast i8* %33 to i32*
  %35 = load i32, i32* %34
  %__v257_x9 = alloca i32
  store i32 %35, i32* %__v257_x9
  br label %36

; <label>:36:                                     ; preds = %295, %entry
  %__v258_i = phi i32 [ 0, %entry ], [ %296, %295 ]
  %37 = icmp ult i32 %__v258_i, 10
  br i1 %37, label %38, label %297

; <label>:38:                                     ; preds = %36
  %39 = load i32, i32* %__v249_x4
  %40 = load i32, i32* %__v242_x0
  %41 = load i32, i32* %__v251_x12
  %42 = add i32 %40, %41
  %43 = shl i32 %42, 7
  %44 = lshr i32 %42, 25
  %45 = or i32 %43, %44
  %46 = xor i32 %39, %45
  store i32 %46, i32* %__v249_x4
  %47 = load i32, i32* %__v256_x8
  %48 = load i32, i32* %__v249_x4
  %49 = load i32, i32* %__v242_x0
  %50 = add i32 %48, %49
  %51 = shl i32 %50, 9
  %52 = lshr i32 %50, 23
  %53 = or i32 %51, %52
  %54 = xor i32 %47, %53
  store i32 %54, i32* %__v256_x8
  %55 = load i32, i32* %__v251_x12
  %56 = load i32, i32* %__v256_x8
  %57 = load i32, i32* %__v249_x4
  %58 = add i32 %56, %57
  %59 = shl i32 %58, 13
  %60 = lshr i32 %58, 19
  %61 = or i32 %59, %60
  %62 = xor i32 %55, %61
  store i32 %62, i32* %__v251_x12
  %63 = load i32, i32* %__v242_x0
  %64 = load i32, i32* %__v251_x12
  %65 = load i32, i32* %__v256_x8
  %66 = add i32 %64, %65
  %67 = shl i32 %66, 18
  %68 = lshr i32 %66, 14
  %69 = or i32 %67, %68
  %70 = xor i32 %63, %69
  store i32 %70, i32* %__v242_x0
  %71 = load i32, i32* %__v257_x9
  %72 = load i32, i32* %__v243_x5
  %73 = load i32, i32* %__v246_x1
  %74 = add i32 %72, %73
  %75 = shl i32 %74, 7
  %76 = lshr i32 %74, 25
  %77 = or i32 %75, %76
  %78 = xor i32 %71, %77
  store i32 %78, i32* %__v257_x9
  %79 = load i32, i32* %__v252_x13
  %80 = load i32, i32* %__v257_x9
  %81 = load i32, i32* %__v243_x5
  %82 = add i32 %80, %81
  %83 = shl i32 %82, 9
  %84 = lshr i32 %82, 23
  %85 = or i32 %83, %84
  %86 = xor i32 %79, %85
  store i32 %86, i32* %__v252_x13
  %87 = load i32, i32* %__v246_x1
  %88 = load i32, i32* %__v252_x13
  %89 = load i32, i32* %__v257_x9
  %90 = add i32 %88, %89
  %91 = shl i32 %90, 13
  %92 = lshr i32 %90, 19
  %93 = or i32 %91, %92
  %94 = xor i32 %87, %93
  store i32 %94, i32* %__v246_x1
  %95 = load i32, i32* %__v243_x5
  %96 = load i32, i32* %__v246_x1
  %97 = load i32, i32* %__v252_x13
  %98 = add i32 %96, %97
  %99 = shl i32 %98, 18
  %100 = lshr i32 %98, 14
  %101 = or i32 %99, %100
  %102 = xor i32 %95, %101
  store i32 %102, i32* %__v243_x5
  %103 = load i32, i32* %__v253_x14
  %104 = load i32, i32* %__v244_x10
  %105 = load i32, i32* %__v254_x6
  %106 = add i32 %104, %105
  %107 = shl i32 %106, 7
  %108 = lshr i32 %106, 25
  %109 = or i32 %107, %108
  %110 = xor i32 %103, %109
  store i32 %110, i32* %__v253_x14
  %111 = load i32, i32* %__v247_x2
  %112 = load i32, i32* %__v253_x14
  %113 = load i32, i32* %__v244_x10
  %114 = add i32 %112, %113
  %115 = shl i32 %114, 9
  %116 = lshr i32 %114, 23
  %117 = or i32 %115, %116
  %118 = xor i32 %111, %117
  store i32 %118, i32* %__v247_x2
  %119 = load i32, i32* %__v254_x6
  %120 = load i32, i32* %__v247_x2
  %121 = load i32, i32* %__v253_x14
  %122 = add i32 %120, %121
  %123 = shl i32 %122, 13
  %124 = lshr i32 %122, 19
  %125 = or i32 %123, %124
  %126 = xor i32 %119, %125
  store i32 %126, i32* %__v254_x6
  %127 = load i32, i32* %__v244_x10
  %128 = load i32, i32* %__v254_x6
  %129 = load i32, i32* %__v247_x2
  %130 = add i32 %128, %129
  %131 = shl i32 %130, 18
  %132 = lshr i32 %130, 14
  %133 = or i32 %131, %132
  %134 = xor i32 %127, %133
  store i32 %134, i32* %__v244_x10
  %135 = load i32, i32* %__v248_x3
  %136 = load i32, i32* %__v245_x15
  %137 = load i32, i32* %__v250_x11
  %138 = add i32 %136, %137
  %139 = shl i32 %138, 7
  %140 = lshr i32 %138, 25
  %141 = or i32 %139, %140
  %142 = xor i32 %135, %141
  store i32 %142, i32* %__v248_x3
  %143 = load i32, i32* %__v255_x7
  %144 = load i32, i32* %__v248_x3
  %145 = load i32, i32* %__v245_x15
  %146 = add i32 %144, %145
  %147 = shl i32 %146, 9
  %148 = lshr i32 %146, 23
  %149 = or i32 %147, %148
  %150 = xor i32 %143, %149
  store i32 %150, i32* %__v255_x7
  %151 = load i32, i32* %__v250_x11
  %152 = load i32, i32* %__v255_x7
  %153 = load i32, i32* %__v248_x3
  %154 = add i32 %152, %153
  %155 = shl i32 %154, 13
  %156 = lshr i32 %154, 19
  %157 = or i32 %155, %156
  %158 = xor i32 %151, %157
  store i32 %158, i32* %__v250_x11
  %159 = load i32, i32* %__v245_x15
  %160 = load i32, i32* %__v250_x11
  %161 = load i32, i32* %__v255_x7
  %162 = add i32 %160, %161
  %163 = shl i32 %162, 18
  %164 = lshr i32 %162, 14
  %165 = or i32 %163, %164
  %166 = xor i32 %159, %165
  store i32 %166, i32* %__v245_x15
  %167 = load i32, i32* %__v246_x1
  %168 = load i32, i32* %__v242_x0
  %169 = load i32, i32* %__v248_x3
  %170 = add i32 %168, %169
  %171 = shl i32 %170, 7
  %172 = lshr i32 %170, 25
  %173 = or i32 %171, %172
  %174 = xor i32 %167, %173
  store i32 %174, i32* %__v246_x1
  %175 = load i32, i32* %__v247_x2
  %176 = load i32, i32* %__v246_x1
  %177 = load i32, i32* %__v242_x0
  %178 = add i32 %176, %177
  %179 = shl i32 %178, 9
  %180 = lshr i32 %178, 23
  %181 = or i32 %179, %180
  %182 = xor i32 %175, %181
  store i32 %182, i32* %__v247_x2
  %183 = load i32, i32* %__v248_x3
  %184 = load i32, i32* %__v247_x2
  %185 = load i32, i32* %__v246_x1
  %186 = add i32 %184, %185
  %187 = shl i32 %186, 13
  %188 = lshr i32 %186, 19
  %189 = or i32 %187, %188
  %190 = xor i32 %183, %189
  store i32 %190, i32* %__v248_x3
  %191 = load i32, i32* %__v242_x0
  %192 = load i32, i32* %__v248_x3
  %193 = load i32, i32* %__v247_x2
  %194 = add i32 %192, %193
  %195 = shl i32 %194, 18
  %196 = lshr i32 %194, 14
  %197 = or i32 %195, %196
  %198 = xor i32 %191, %197
  store i32 %198, i32* %__v242_x0
  %199 = load i32, i32* %__v254_x6
  %200 = load i32, i32* %__v243_x5
  %201 = load i32, i32* %__v249_x4
  %202 = add i32 %200, %201
  %203 = shl i32 %202, 7
  %204 = lshr i32 %202, 25
  %205 = or i32 %203, %204
  %206 = xor i32 %199, %205
  store i32 %206, i32* %__v254_x6
  %207 = load i32, i32* %__v255_x7
  %208 = load i32, i32* %__v254_x6
  %209 = load i32, i32* %__v243_x5
  %210 = add i32 %208, %209
  %211 = shl i32 %210, 9
  %212 = lshr i32 %210, 23
  %213 = or i32 %211, %212
  %214 = xor i32 %207, %213
  store i32 %214, i32* %__v255_x7
  %215 = load i32, i32* %__v249_x4
  %216 = load i32, i32* %__v255_x7
  %217 = load i32, i32* %__v254_x6
  %218 = add i32 %216, %217
  %219 = shl i32 %218, 13
  %220 = lshr i32 %218, 19
  %221 = or i32 %219, %220
  %222 = xor i32 %215, %221
  store i32 %222, i32* %__v249_x4
  %223 = load i32, i32* %__v243_x5
  %224 = load i32, i32* %__v249_x4
  %225 = load i32, i32* %__v255_x7
  %226 = add i32 %224, %225
  %227 = shl i32 %226, 18
  %228 = lshr i32 %226, 14
  %229 = or i32 %227, %228
  %230 = xor i32 %223, %229
  store i32 %230, i32* %__v243_x5
  %231 = load i32, i32* %__v250_x11
  %232 = load i32, i32* %__v244_x10
  %233 = load i32, i32* %__v257_x9
  %234 = add i32 %232, %233
  %235 = shl i32 %234, 7
  %236 = lshr i32 %234, 25
  %237 = or i32 %235, %236
  %238 = xor i32 %231, %237
  store i32 %238, i32* %__v250_x11
  %239 = load i32, i32* %__v256_x8
  %240 = load i32, i32* %__v250_x11
  %241 = load i32, i32* %__v244_x10
  %242 = add i32 %240, %241
  %243 = shl i32 %242, 9
  %244 = lshr i32 %242, 23
  %245 = or i32 %243, %244
  %246 = xor i32 %239, %245
  store i32 %246, i32* %__v256_x8
  %247 = load i32, i32* %__v257_x9
  %248 = load i32, i32* %__v256_x8
  %249 = load i32, i32* %__v250_x11
  %250 = add i32 %248, %249
  %251 = shl i32 %250, 13
  %252 = lshr i32 %250, 19
  %253 = or i32 %251, %252
  %254 = xor i32 %247, %253
  store i32 %254, i32* %__v257_x9
  %255 = load i32, i32* %__v244_x10
  %256 = load i32, i32* %__v257_x9
  %257 = load i32, i32* %__v256_x8
  %258 = add i32 %256, %257
  %259 = shl i32 %258, 18
  %260 = lshr i32 %258, 14
  %261 = or i32 %259, %260
  %262 = xor i32 %255, %261
  store i32 %262, i32* %__v244_x10
  %263 = load i32, i32* %__v251_x12
  %264 = load i32, i32* %__v245_x15
  %265 = load i32, i32* %__v253_x14
  %266 = add i32 %264, %265
  %267 = shl i32 %266, 7
  %268 = lshr i32 %266, 25
  %269 = or i32 %267, %268
  %270 = xor i32 %263, %269
  store i32 %270, i32* %__v251_x12
  %271 = load i32, i32* %__v252_x13
  %272 = load i32, i32* %__v251_x12
  %273 = load i32, i32* %__v245_x15
  %274 = add i32 %272, %273
  %275 = shl i32 %274, 9
  %276 = lshr i32 %274, 23
  %277 = or i32 %275, %276
  %278 = xor i32 %271, %277
  store i32 %278, i32* %__v252_x13
  %279 = load i32, i32* %__v253_x14
  %280 = load i32, i32* %__v252_x13
  %281 = load i32, i32* %__v251_x12
  %282 = add i32 %280, %281
  %283 = shl i32 %282, 13
  %284 = lshr i32 %282, 19
  %285 = or i32 %283, %284
  %286 = xor i32 %279, %285
  store i32 %286, i32* %__v253_x14
  %287 = load i32, i32* %__v245_x15
  %288 = load i32, i32* %__v253_x14
  %289 = load i32, i32* %__v252_x13
  %290 = add i32 %288, %289
  %291 = shl i32 %290, 18
  %292 = lshr i32 %290, 14
  %293 = or i32 %291, %292
  %294 = xor i32 %287, %293
  store i32 %294, i32* %__v245_x15
  br label %295

; <label>:295:                                    ; preds = %38
  %296 = add i32 %__v258_i, 1
  br label %36

; <label>:297:                                    ; preds = %36
  %298 = getelementptr i8, i8* %__v239_out, i64 0
  %299 = load i32, i32* %__v242_x0
  %300 = bitcast i8* %298 to i32*
  store i32 %299, i32* %300
  %301 = getelementptr i8, i8* %__v239_out, i64 4
  %302 = load i32, i32* %__v243_x5
  %303 = bitcast i8* %301 to i32*
  store i32 %302, i32* %303
  %304 = getelementptr i8, i8* %__v239_out, i64 8
  %305 = load i32, i32* %__v244_x10
  %306 = bitcast i8* %304 to i32*
  store i32 %305, i32* %306
  %307 = getelementptr i8, i8* %__v239_out, i64 12
  %308 = load i32, i32* %__v245_x15
  %309 = bitcast i8* %307 to i32*
  store i32 %308, i32* %309
  %310 = getelementptr i8, i8* %__v239_out, i64 16
  %311 = load i32, i32* %__v254_x6
  %312 = bitcast i8* %310 to i32*
  store i32 %311, i32* %312
  %313 = getelementptr i8, i8* %__v239_out, i64 20
  %314 = load i32, i32* %__v255_x7
  %315 = bitcast i8* %313 to i32*
  store i32 %314, i32* %315
  %316 = getelementptr i8, i8* %__v239_out, i64 24
  %317 = load i32, i32* %__v256_x8
  %318 = bitcast i8* %316 to i32*
  store i32 %317, i32* %318
  %319 = getelementptr i8, i8* %__v239_out, i64 28
  %320 = load i32, i32* %__v257_x9
  %321 = bitcast i8* %319 to i32*
  store i32 %320, i32* %321
  ret void
}

define internal void @_poly1305_blocks(%poly1305_state_internal_t* %__v218_state, i8* %__v219_m, i64 %__v331___v219_m_len) {
entry:
  %__rctx = alloca i1
  store i1 true, i1* %__rctx
  %0 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v218_state, i32 0, i32 5
  %1 = load i8, i8* %0
  %2 = icmp ne i8 %1, 0
  %3 = call i64 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %2, i64 0, i64 1099511627776)
  %4 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v218_state, i32 0, i32 0
  %5 = bitcast [3 x i64]* %4 to i64*
  %6 = getelementptr i64, i64* %5, i64 0
  %__v223_r0 = load i64, i64* %6
  %7 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v218_state, i32 0, i32 0
  %8 = bitcast [3 x i64]* %7 to i64*
  %9 = getelementptr i64, i64* %8, i64 1
  %__v224_r1 = load i64, i64* %9
  %10 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v218_state, i32 0, i32 0
  %11 = bitcast [3 x i64]* %10 to i64*
  %12 = getelementptr i64, i64* %11, i64 2
  %__v225_r2 = load i64, i64* %12
  %13 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v218_state, i32 0, i32 1
  %14 = bitcast [3 x i64]* %13 to i64*
  %15 = getelementptr i64, i64* %14, i64 0
  %16 = load i64, i64* %15
  %__v226_h0 = alloca i64
  store i64 %16, i64* %__v226_h0
  %17 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v218_state, i32 0, i32 1
  %18 = bitcast [3 x i64]* %17 to i64*
  %19 = getelementptr i64, i64* %18, i64 1
  %20 = load i64, i64* %19
  %__v227_h1 = alloca i64
  store i64 %20, i64* %__v227_h1
  %21 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v218_state, i32 0, i32 1
  %22 = bitcast [3 x i64]* %21 to i64*
  %23 = getelementptr i64, i64* %22, i64 2
  %24 = load i64, i64* %23
  %__v228_h2 = alloca i64
  store i64 %24, i64* %__v228_h2
  %__v229_s1 = mul i64 %__v224_r1, 20
  %__v230_s2 = mul i64 %__v225_r2, 20
  %__v231_mloops = udiv i64 %__v331___v219_m_len, 16
  br label %25

; <label>:25:                                     ; preds = %129, %entry
  %__v232_bindex = phi i64 [ 0, %entry ], [ %130, %129 ]
  %26 = icmp ult i64 %__v232_bindex, %__v231_mloops
  br i1 %26, label %27, label %131

; <label>:27:                                     ; preds = %25
  %__v433_lexpr = mul i64 %__v232_bindex, 16
  %__v434_lexpr = mul i64 %__v232_bindex, 16
  %28 = getelementptr i8, i8* %__v219_m, i64 %__v434_lexpr
  %29 = bitcast i8* %28 to i64*
  %30 = load i64, i64* %29
  %31 = mul i64 %__v232_bindex, 16
  %__v435_lexpr = add i64 %31, 8
  %32 = mul i64 %__v232_bindex, 16
  %__v436_lexpr = add i64 %32, 8
  %33 = getelementptr i8, i8* %__v219_m, i64 %__v436_lexpr
  %34 = bitcast i8* %33 to i64*
  %35 = load i64, i64* %34
  %36 = load i64, i64* %__v226_h0
  %37 = and i64 %30, 17592186044415
  %38 = add i64 %36, %37
  store i64 %38, i64* %__v226_h0
  %39 = load i64, i64* %__v227_h1
  %40 = lshr i64 %30, 44
  %41 = shl i64 %35, 20
  %42 = or i64 %40, %41
  %43 = and i64 %42, 17592186044415
  %44 = add i64 %39, %43
  store i64 %44, i64* %__v227_h1
  %45 = load i64, i64* %__v228_h2
  %46 = lshr i64 %35, 24
  %47 = and i64 %46, 4398046511103
  %48 = or i64 %47, %3
  %49 = add i64 %45, %48
  store i64 %49, i64* %__v228_h2
  %50 = load i64, i64* %__v226_h0
  %51 = zext i64 %50 to i128
  %52 = zext i64 %__v223_r0 to i128
  %53 = mul i128 %51, %52
  %54 = load i64, i64* %__v227_h1
  %55 = zext i64 %54 to i128
  %56 = zext i64 %__v230_s2 to i128
  %57 = mul i128 %55, %56
  %58 = add i128 %53, %57
  %59 = load i64, i64* %__v228_h2
  %60 = zext i64 %59 to i128
  %61 = zext i64 %__v229_s1 to i128
  %62 = mul i128 %60, %61
  %63 = add i128 %58, %62
  %__v235_d0 = alloca i128
  store i128 %63, i128* %__v235_d0
  %64 = load i64, i64* %__v226_h0
  %65 = zext i64 %64 to i128
  %66 = zext i64 %__v224_r1 to i128
  %67 = mul i128 %65, %66
  %68 = load i64, i64* %__v227_h1
  %69 = zext i64 %68 to i128
  %70 = zext i64 %__v223_r0 to i128
  %71 = mul i128 %69, %70
  %72 = add i128 %67, %71
  %73 = load i64, i64* %__v228_h2
  %74 = zext i64 %73 to i128
  %75 = zext i64 %__v230_s2 to i128
  %76 = mul i128 %74, %75
  %77 = add i128 %72, %76
  %__v236_d1 = alloca i128
  store i128 %77, i128* %__v236_d1
  %78 = load i64, i64* %__v226_h0
  %79 = zext i64 %78 to i128
  %80 = zext i64 %__v225_r2 to i128
  %81 = mul i128 %79, %80
  %82 = load i64, i64* %__v227_h1
  %83 = zext i64 %82 to i128
  %84 = zext i64 %__v224_r1 to i128
  %85 = mul i128 %83, %84
  %86 = add i128 %81, %85
  %87 = load i64, i64* %__v228_h2
  %88 = zext i64 %87 to i128
  %89 = zext i64 %__v223_r0 to i128
  %90 = mul i128 %88, %89
  %91 = add i128 %86, %90
  %__v237_d2 = alloca i128
  store i128 %91, i128* %__v237_d2
  %92 = load i128, i128* %__v235_d0
  %93 = lshr i128 %92, 44
  %94 = trunc i128 %93 to i64
  %__v238_c = alloca i64
  store i64 %94, i64* %__v238_c
  %95 = load i128, i128* %__v235_d0
  %96 = trunc i128 %95 to i64
  %97 = and i64 %96, 17592186044415
  store i64 %97, i64* %__v226_h0
  %98 = load i128, i128* %__v236_d1
  %99 = load i64, i64* %__v238_c
  %100 = zext i64 %99 to i128
  %101 = add i128 %98, %100
  store i128 %101, i128* %__v236_d1
  %102 = load i128, i128* %__v236_d1
  %103 = lshr i128 %102, 44
  %104 = trunc i128 %103 to i64
  store i64 %104, i64* %__v238_c
  %105 = load i128, i128* %__v236_d1
  %106 = trunc i128 %105 to i64
  %107 = and i64 %106, 17592186044415
  store i64 %107, i64* %__v227_h1
  %108 = load i128, i128* %__v237_d2
  %109 = load i64, i64* %__v238_c
  %110 = zext i64 %109 to i128
  %111 = add i128 %108, %110
  store i128 %111, i128* %__v237_d2
  %112 = load i128, i128* %__v237_d2
  %113 = lshr i128 %112, 42
  %114 = trunc i128 %113 to i64
  store i64 %114, i64* %__v238_c
  %115 = load i128, i128* %__v237_d2
  %116 = trunc i128 %115 to i64
  %117 = and i64 %116, 4398046511103
  store i64 %117, i64* %__v228_h2
  %118 = load i64, i64* %__v226_h0
  %119 = load i64, i64* %__v238_c
  %120 = mul i64 %119, 5
  %121 = add i64 %118, %120
  store i64 %121, i64* %__v226_h0
  %122 = load i64, i64* %__v226_h0
  %123 = lshr i64 %122, 44
  store i64 %123, i64* %__v238_c
  %124 = load i64, i64* %__v226_h0
  %125 = and i64 %124, 17592186044415
  store i64 %125, i64* %__v226_h0
  %126 = load i64, i64* %__v227_h1
  %127 = load i64, i64* %__v238_c
  %128 = add i64 %126, %127
  store i64 %128, i64* %__v227_h1
  br label %129

; <label>:129:                                    ; preds = %27
  %130 = add i64 %__v232_bindex, 1
  br label %25

; <label>:131:                                    ; preds = %25
  %132 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v218_state, i32 0, i32 1
  %133 = bitcast [3 x i64]* %132 to i64*
  %134 = getelementptr i64, i64* %133, i64 0
  %135 = load i64, i64* %__v226_h0
  store i64 %135, i64* %134
  %136 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v218_state, i32 0, i32 1
  %137 = bitcast [3 x i64]* %136 to i64*
  %138 = getelementptr i64, i64* %137, i64 1
  %139 = load i64, i64* %__v227_h1
  store i64 %139, i64* %138
  %140 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v218_state, i32 0, i32 1
  %141 = bitcast [3 x i64]* %140 to i64*
  %142 = getelementptr i64, i64* %141, i64 2
  %143 = load i64, i64* %__v228_h2
  store i64 %143, i64* %142
  ret void
}

define internal void @_poly1305_finish(%poly1305_state_internal_t* %__v203_state, i8* %__v204_mac) {
entry:
  %__rctx = alloca i1
  store i1 true, i1* %__rctx
  %0 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v203_state, i32 0, i32 3
  %1 = load i64, i64* %0
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %9

; <label>:3:                                      ; preds = %entry
  %4 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v203_state, i32 0, i32 3
  %__v205_start = load i64, i64* %4
  %5 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v203_state, i32 0, i32 4
  %6 = bitcast [16 x i8]* %5 to i8*
  %7 = getelementptr i8, i8* %6, i64 %__v205_start
  store i8 1, i8* %7
  %8 = add i64 %__v205_start, 1
  br label %162

; <label>:9:                                      ; preds = %entry
  br label %10

; <label>:10:                                     ; preds = %170, %9
  %11 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v203_state, i32 0, i32 1
  %12 = bitcast [3 x i64]* %11 to i64*
  %13 = getelementptr i64, i64* %12, i64 0
  %14 = load i64, i64* %13
  %__v209_h0 = alloca i64
  store i64 %14, i64* %__v209_h0
  %15 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v203_state, i32 0, i32 1
  %16 = bitcast [3 x i64]* %15 to i64*
  %17 = getelementptr i64, i64* %16, i64 1
  %18 = load i64, i64* %17
  %__v210_h1 = alloca i64
  store i64 %18, i64* %__v210_h1
  %19 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v203_state, i32 0, i32 1
  %20 = bitcast [3 x i64]* %19 to i64*
  %21 = getelementptr i64, i64* %20, i64 2
  %22 = load i64, i64* %21
  %__v211_h2 = alloca i64
  store i64 %22, i64* %__v211_h2
  %23 = load i64, i64* %__v210_h1
  %24 = lshr i64 %23, 44
  %__v212_c = alloca i64
  store i64 %24, i64* %__v212_c
  %25 = load i64, i64* %__v210_h1
  %26 = and i64 %25, 17592186044415
  store i64 %26, i64* %__v210_h1
  %27 = load i64, i64* %__v211_h2
  %28 = load i64, i64* %__v212_c
  %29 = add i64 %27, %28
  store i64 %29, i64* %__v211_h2
  %30 = load i64, i64* %__v211_h2
  %31 = lshr i64 %30, 42
  store i64 %31, i64* %__v212_c
  %32 = load i64, i64* %__v211_h2
  %33 = and i64 %32, 4398046511103
  store i64 %33, i64* %__v211_h2
  %34 = load i64, i64* %__v209_h0
  %35 = load i64, i64* %__v212_c
  %36 = mul i64 %35, 5
  %37 = add i64 %34, %36
  store i64 %37, i64* %__v209_h0
  %38 = load i64, i64* %__v209_h0
  %39 = lshr i64 %38, 44
  store i64 %39, i64* %__v212_c
  %40 = load i64, i64* %__v209_h0
  %41 = and i64 %40, 17592186044415
  store i64 %41, i64* %__v209_h0
  %42 = load i64, i64* %__v210_h1
  %43 = load i64, i64* %__v212_c
  %44 = add i64 %42, %43
  store i64 %44, i64* %__v210_h1
  %45 = load i64, i64* %__v210_h1
  %46 = lshr i64 %45, 44
  store i64 %46, i64* %__v212_c
  %47 = load i64, i64* %__v210_h1
  %48 = and i64 %47, 17592186044415
  store i64 %48, i64* %__v210_h1
  %49 = load i64, i64* %__v211_h2
  %50 = load i64, i64* %__v212_c
  %51 = add i64 %49, %50
  store i64 %51, i64* %__v211_h2
  %52 = load i64, i64* %__v211_h2
  %53 = lshr i64 %52, 42
  store i64 %53, i64* %__v212_c
  %54 = load i64, i64* %__v211_h2
  %55 = and i64 %54, 4398046511103
  store i64 %55, i64* %__v211_h2
  %56 = load i64, i64* %__v209_h0
  %57 = load i64, i64* %__v212_c
  %58 = mul i64 %57, 5
  %59 = add i64 %56, %58
  store i64 %59, i64* %__v209_h0
  %60 = load i64, i64* %__v209_h0
  %61 = lshr i64 %60, 44
  store i64 %61, i64* %__v212_c
  %62 = load i64, i64* %__v209_h0
  %63 = and i64 %62, 17592186044415
  store i64 %63, i64* %__v209_h0
  %64 = load i64, i64* %__v210_h1
  %65 = load i64, i64* %__v212_c
  %66 = add i64 %64, %65
  store i64 %66, i64* %__v210_h1
  %67 = load i64, i64* %__v209_h0
  %68 = add i64 %67, 5
  %__v213_g0 = alloca i64
  store i64 %68, i64* %__v213_g0
  %69 = load i64, i64* %__v213_g0
  %70 = lshr i64 %69, 44
  store i64 %70, i64* %__v212_c
  %71 = load i64, i64* %__v213_g0
  %72 = and i64 %71, 17592186044415
  store i64 %72, i64* %__v213_g0
  %73 = load i64, i64* %__v210_h1
  %74 = load i64, i64* %__v212_c
  %75 = add i64 %73, %74
  %__v214_g1 = alloca i64
  store i64 %75, i64* %__v214_g1
  %76 = load i64, i64* %__v214_g1
  %77 = lshr i64 %76, 44
  store i64 %77, i64* %__v212_c
  %78 = load i64, i64* %__v214_g1
  %79 = and i64 %78, 17592186044415
  store i64 %79, i64* %__v214_g1
  %80 = load i64, i64* %__v211_h2
  %81 = load i64, i64* %__v212_c
  %82 = add i64 %80, %81
  %83 = sub i64 %82, 4398046511104
  %__v215_g2 = alloca i64
  store i64 %83, i64* %__v215_g2
  %84 = load i64, i64* %__v215_g2
  %85 = lshr i64 %84, 63
  %86 = sub i64 %85, 1
  store i64 %86, i64* %__v212_c
  %87 = load i64, i64* %__v213_g0
  %88 = load i64, i64* %__v212_c
  %89 = and i64 %87, %88
  store i64 %89, i64* %__v213_g0
  %90 = load i64, i64* %__v214_g1
  %91 = load i64, i64* %__v212_c
  %92 = and i64 %90, %91
  store i64 %92, i64* %__v214_g1
  %93 = load i64, i64* %__v215_g2
  %94 = load i64, i64* %__v212_c
  %95 = and i64 %93, %94
  store i64 %95, i64* %__v215_g2
  %96 = load i64, i64* %__v212_c
  %97 = xor i64 %96, -1
  store i64 %97, i64* %__v212_c
  %98 = load i64, i64* %__v209_h0
  %99 = load i64, i64* %__v212_c
  %100 = and i64 %98, %99
  %101 = load i64, i64* %__v213_g0
  %102 = or i64 %100, %101
  store i64 %102, i64* %__v209_h0
  %103 = load i64, i64* %__v210_h1
  %104 = load i64, i64* %__v212_c
  %105 = and i64 %103, %104
  %106 = load i64, i64* %__v214_g1
  %107 = or i64 %105, %106
  store i64 %107, i64* %__v210_h1
  %108 = load i64, i64* %__v211_h2
  %109 = load i64, i64* %__v212_c
  %110 = and i64 %108, %109
  %111 = load i64, i64* %__v215_g2
  %112 = or i64 %110, %111
  store i64 %112, i64* %__v211_h2
  %113 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v203_state, i32 0, i32 2
  %114 = bitcast [2 x i64]* %113 to i64*
  %115 = getelementptr i64, i64* %114, i64 0
  %__v216_t0 = load i64, i64* %115
  %116 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v203_state, i32 0, i32 2
  %117 = bitcast [2 x i64]* %116 to i64*
  %118 = getelementptr i64, i64* %117, i64 1
  %__v217_t1 = load i64, i64* %118
  %119 = load i64, i64* %__v209_h0
  %120 = and i64 %__v216_t0, 17592186044415
  %121 = add i64 %119, %120
  store i64 %121, i64* %__v209_h0
  %122 = load i64, i64* %__v209_h0
  %123 = lshr i64 %122, 44
  store i64 %123, i64* %__v212_c
  %124 = load i64, i64* %__v209_h0
  %125 = and i64 %124, 17592186044415
  store i64 %125, i64* %__v209_h0
  %126 = load i64, i64* %__v210_h1
  %127 = lshr i64 %__v216_t0, 44
  %128 = shl i64 %__v217_t1, 20
  %129 = or i64 %127, %128
  %130 = and i64 %129, 17592186044415
  %131 = load i64, i64* %__v212_c
  %132 = add i64 %130, %131
  %133 = add i64 %126, %132
  store i64 %133, i64* %__v210_h1
  %134 = load i64, i64* %__v210_h1
  %135 = lshr i64 %134, 44
  store i64 %135, i64* %__v212_c
  %136 = load i64, i64* %__v210_h1
  %137 = and i64 %136, 17592186044415
  store i64 %137, i64* %__v210_h1
  %138 = load i64, i64* %__v211_h2
  %139 = lshr i64 %__v217_t1, 24
  %140 = and i64 %139, 4398046511103
  %141 = load i64, i64* %__v212_c
  %142 = add i64 %140, %141
  %143 = add i64 %138, %142
  store i64 %143, i64* %__v211_h2
  %144 = load i64, i64* %__v211_h2
  %145 = and i64 %144, 4398046511103
  store i64 %145, i64* %__v211_h2
  %146 = load i64, i64* %__v209_h0
  %147 = load i64, i64* %__v210_h1
  %148 = shl i64 %147, 44
  %149 = or i64 %146, %148
  store i64 %149, i64* %__v209_h0
  %150 = load i64, i64* %__v210_h1
  %151 = lshr i64 %150, 20
  %152 = load i64, i64* %__v211_h2
  %153 = shl i64 %152, 24
  %154 = or i64 %151, %153
  store i64 %154, i64* %__v210_h1
  %155 = getelementptr i8, i8* %__v204_mac, i64 0
  %156 = load i64, i64* %__v209_h0
  %157 = bitcast i8* %155 to i64*
  store i64 %156, i64* %157
  %158 = getelementptr i8, i8* %__v204_mac, i64 8
  %159 = load i64, i64* %__v210_h1
  %160 = bitcast i8* %158 to i64*
  store i64 %159, i64* %160
  %161 = bitcast %poly1305_state_internal_t* %__v203_state to i8*
  call void @llvm.memset.p0i8.i64(i8* %161, i8 0, i64 ptrtoint (%poly1305_state_internal_t* getelementptr (%poly1305_state_internal_t, %poly1305_state_internal_t* null, i32 1) to i64), i32 1, i1 true)
  ret void

; <label>:162:                                    ; preds = %168, %3
  %__v206_i = phi i64 [ %8, %3 ], [ %169, %168 ]
  %163 = icmp ult i64 %__v206_i, 16
  br i1 %163, label %164, label %170

; <label>:164:                                    ; preds = %162
  %165 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v203_state, i32 0, i32 4
  %166 = bitcast [16 x i8]* %165 to i8*
  %167 = getelementptr i8, i8* %166, i64 %__v206_i
  store i8 0, i8* %167
  br label %168

; <label>:168:                                    ; preds = %164
  %169 = add i64 %__v206_i, 1
  br label %162

; <label>:170:                                    ; preds = %162
  %171 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v203_state, i32 0, i32 5
  store i8 1, i8* %171
  %172 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v203_state, i32 0, i32 4
  %173 = bitcast [16 x i8]* %172 to i8*
  call void @_poly1305_blocks(%poly1305_state_internal_t* %__v203_state, i8* %173, i64 16)
  br label %10
}

define internal void @_poly1305_update(%poly1305_state_internal_t* %__v190_state, i8* %__v191_m, i64 %__v330___v191_m_len) {
entry:
  %__rctx = alloca i1
  store i1 true, i1* %__rctx
  %__v192_mindex = alloca i64
  store i64 0, i64* %__v192_mindex
  %0 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v190_state, i32 0, i32 3
  %1 = load i64, i64* %0
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %9

; <label>:3:                                      ; preds = %entry
  %4 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v190_state, i32 0, i32 3
  %5 = load i64, i64* %4
  %6 = sub i64 16, %5
  %__v193_want = alloca i64
  store i64 %6, i64* %__v193_want
  %7 = load i64, i64* %__v193_want
  %8 = icmp ugt i64 %7, %__v330___v191_m_len
  br i1 %8, label %14, label %15

; <label>:9:                                      ; preds = %entry
  br label %10

; <label>:10:                                     ; preds = %44, %9
  %11 = load i64, i64* %__v192_mindex
  %12 = sub i64 %__v330___v191_m_len, %11
  %13 = icmp uge i64 %12, 16
  br i1 %13, label %48, label %53

; <label>:14:                                     ; preds = %3
  store i64 %__v330___v191_m_len, i64* %__v193_want
  br label %16

; <label>:15:                                     ; preds = %3
  br label %16

; <label>:16:                                     ; preds = %15, %14
  %17 = load i64, i64* %__v193_want
  br label %18

; <label>:18:                                     ; preds = %28, %16
  %__v194_i = phi i64 [ 0, %16 ], [ %29, %28 ]
  %19 = icmp ult i64 %__v194_i, %17
  br i1 %19, label %20, label %30

; <label>:20:                                     ; preds = %18
  %21 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v190_state, i32 0, i32 3
  %22 = load i64, i64* %21
  %__v195_index = add i64 %22, %__v194_i
  %23 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v190_state, i32 0, i32 4
  %24 = bitcast [16 x i8]* %23 to i8*
  %25 = getelementptr i8, i8* %24, i64 %__v195_index
  %26 = getelementptr i8, i8* %__v191_m, i64 %__v194_i
  %27 = load i8, i8* %26
  store i8 %27, i8* %25
  br label %28

; <label>:28:                                     ; preds = %20
  %29 = add i64 %__v194_i, 1
  br label %18

; <label>:30:                                     ; preds = %18
  %31 = load i64, i64* %__v192_mindex
  %32 = load i64, i64* %__v193_want
  %33 = add i64 %31, %32
  store i64 %33, i64* %__v192_mindex
  %34 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v190_state, i32 0, i32 3
  %35 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v190_state, i32 0, i32 3
  %36 = load i64, i64* %35
  %37 = load i64, i64* %__v193_want
  %38 = add i64 %36, %37
  store i64 %38, i64* %34
  %39 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v190_state, i32 0, i32 3
  %40 = load i64, i64* %39
  %41 = icmp ult i64 %40, 16
  br i1 %41, label %42, label %43

; <label>:42:                                     ; preds = %30
  ret void

; <label>:43:                                     ; preds = %30
  br label %44

; <label>:44:                                     ; preds = %43
  %45 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v190_state, i32 0, i32 4
  %46 = bitcast [16 x i8]* %45 to i8*
  call void @_poly1305_blocks(%poly1305_state_internal_t* %__v190_state, i8* %46, i64 16)
  %47 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v190_state, i32 0, i32 3
  store i64 0, i64* %47
  br label %10

; <label>:48:                                     ; preds = %10
  %49 = load i64, i64* %__v192_mindex
  %50 = sub i64 %__v330___v191_m_len, %49
  %__v196_want = and i64 %50, -16
  %__v197__mindex = load i64, i64* %__v192_mindex
  %__v198_mview = getelementptr i8, i8* %__v191_m, i64 %__v197__mindex
  call void @_poly1305_blocks(%poly1305_state_internal_t* %__v190_state, i8* %__v198_mview, i64 %__v196_want)
  %51 = load i64, i64* %__v192_mindex
  %52 = add i64 %51, %__v196_want
  store i64 %52, i64* %__v192_mindex
  br label %54

; <label>:53:                                     ; preds = %10
  br label %54

; <label>:54:                                     ; preds = %53, %48
  %55 = load i64, i64* %__v192_mindex
  %56 = icmp ult i64 %55, %__v330___v191_m_len
  br i1 %56, label %57, label %59

; <label>:57:                                     ; preds = %54
  %58 = load i64, i64* %__v192_mindex
  %__v199_remaining = sub i64 %__v330___v191_m_len, %58
  br label %61

; <label>:59:                                     ; preds = %54
  br label %60

; <label>:60:                                     ; preds = %72, %59
  ret void

; <label>:61:                                     ; preds = %70, %57
  %__v200_i = phi i64 [ 0, %57 ], [ %71, %70 ]
  %62 = icmp ult i64 %__v200_i, %__v199_remaining
  br i1 %62, label %63, label %72

; <label>:63:                                     ; preds = %61
  %64 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v190_state, i32 0, i32 3
  %__v201__leftover = load i64, i64* %64
  %__v202__mindex = load i64, i64* %__v192_mindex
  %__v431_lexpr = add i64 %__v201__leftover, %__v200_i
  %__v432_lexpr = add i64 %__v202__mindex, %__v200_i
  %65 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v190_state, i32 0, i32 4
  %66 = bitcast [16 x i8]* %65 to i8*
  %67 = getelementptr i8, i8* %66, i64 %__v431_lexpr
  %68 = getelementptr i8, i8* %__v191_m, i64 %__v432_lexpr
  %69 = load i8, i8* %68
  store i8 %69, i8* %67
  br label %70

; <label>:70:                                     ; preds = %63
  %71 = add i64 %__v200_i, 1
  br label %61

; <label>:72:                                     ; preds = %61
  %73 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v190_state, i32 0, i32 3
  %74 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v190_state, i32 0, i32 3
  %75 = load i64, i64* %74
  %76 = add i64 %75, %__v199_remaining
  store i64 %76, i64* %73
  br label %60
}

define internal void @_poly1305_init(%poly1305_state_internal_t* %__v186_state, i8* %__v187_key) {
entry:
  %__rctx = alloca i1
  store i1 true, i1* %__rctx
  %0 = getelementptr i8, i8* %__v187_key, i64 0
  %1 = bitcast i8* %0 to i64*
  %2 = load i64, i64* %1
  %3 = getelementptr i8, i8* %__v187_key, i64 8
  %4 = bitcast i8* %3 to i64*
  %5 = load i64, i64* %4
  %6 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v186_state, i32 0, i32 0
  %7 = bitcast [3 x i64]* %6 to i64*
  %8 = getelementptr i64, i64* %7, i64 0
  %9 = and i64 %2, 17575274610687
  store i64 %9, i64* %8
  %10 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v186_state, i32 0, i32 0
  %11 = bitcast [3 x i64]* %10 to i64*
  %12 = getelementptr i64, i64* %11, i64 1
  %13 = lshr i64 %2, 44
  %14 = shl i64 %5, 20
  %15 = or i64 %13, %14
  %16 = and i64 %15, 17592181915647
  store i64 %16, i64* %12
  %17 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v186_state, i32 0, i32 0
  %18 = bitcast [3 x i64]* %17 to i64*
  %19 = getelementptr i64, i64* %18, i64 2
  %20 = lshr i64 %5, 24
  %21 = and i64 %20, 68719475727
  store i64 %21, i64* %19
  %22 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v186_state, i32 0, i32 1
  %23 = bitcast [3 x i64]* %22 to i64*
  %24 = getelementptr i64, i64* %23, i64 0
  store i64 0, i64* %24
  %25 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v186_state, i32 0, i32 1
  %26 = bitcast [3 x i64]* %25 to i64*
  %27 = getelementptr i64, i64* %26, i64 1
  store i64 0, i64* %27
  %28 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v186_state, i32 0, i32 1
  %29 = bitcast [3 x i64]* %28 to i64*
  %30 = getelementptr i64, i64* %29, i64 2
  store i64 0, i64* %30
  %31 = getelementptr i8, i8* %__v187_key, i64 16
  %32 = bitcast i8* %31 to i64*
  %33 = load i64, i64* %32
  %34 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v186_state, i32 0, i32 2
  %35 = bitcast [2 x i64]* %34 to i64*
  %36 = getelementptr i64, i64* %35, i64 0
  store i64 %33, i64* %36
  %37 = getelementptr i8, i8* %__v187_key, i64 24
  %38 = bitcast i8* %37 to i64*
  %39 = load i64, i64* %38
  %40 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v186_state, i32 0, i32 2
  %41 = bitcast [2 x i64]* %40 to i64*
  %42 = getelementptr i64, i64* %41, i64 1
  store i64 %39, i64* %42
  %43 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v186_state, i32 0, i32 3
  store i64 0, i64* %43
  %44 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v186_state, i32 0, i32 5
  store i8 0, i8* %44
  ret void
}

define internal i32 @_crypto_onetimeauth_poly1305(i8* %__v182_out, i8* %__v183_m, i64 %__v329___v183_m_len, i8* %__v184_key) {
entry:
  %__rval = alloca i32
  store i32 0, i32* %__rval
  %__rctx = alloca i1
  store i1 true, i1* %__rctx
  %__v185_state = alloca %poly1305_state_internal_t
  %0 = alloca i64, i64 3
  %1 = bitcast i64* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 24, i32 8, i1 false)
  %2 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v185_state, i32 0, i32 0
  %3 = bitcast [3 x i64]* %2 to i64*
  %4 = bitcast i64* %3 to i8*
  %5 = bitcast i64* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 24, i32 8, i1 false)
  %6 = alloca i64, i64 3
  %7 = bitcast i64* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* %7, i8 0, i64 24, i32 8, i1 false)
  %8 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v185_state, i32 0, i32 1
  %9 = bitcast [3 x i64]* %8 to i64*
  %10 = bitcast i64* %9 to i8*
  %11 = bitcast i64* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 24, i32 8, i1 false)
  %12 = alloca i64, i64 2
  %13 = bitcast i64* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* %13, i8 0, i64 16, i32 8, i1 false)
  %14 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v185_state, i32 0, i32 2
  %15 = bitcast [2 x i64]* %14 to i64*
  %16 = bitcast i64* %15 to i8*
  %17 = bitcast i64* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 16, i32 8, i1 false)
  %18 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v185_state, i32 0, i32 3
  store i64 0, i64* %18
  %19 = alloca i8, i64 16
  call void @llvm.memset.p0i8.i64(i8* %19, i8 0, i64 16, i32 1, i1 false)
  %20 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v185_state, i32 0, i32 4
  %21 = bitcast [16 x i8]* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* %19, i64 16, i32 1, i1 false)
  %22 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v185_state, i32 0, i32 5
  store i8 0, i8* %22
  call void @_poly1305_init(%poly1305_state_internal_t* %__v185_state, i8* %__v184_key)
  call void @_poly1305_update(%poly1305_state_internal_t* %__v185_state, i8* %__v183_m, i64 %__v329___v183_m_len)
  call void @_poly1305_finish(%poly1305_state_internal_t* %__v185_state, i8* %__v182_out)
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #0

define internal i1 @_crypto_verify_16(i8* %__v179_x, i8* %__v180_y) {
entry:
  %__rval = alloca i1
  store i1 false, i1* %__rval
  %__rctx = alloca i1
  store i1 true, i1* %__rctx
  br label %0

; <label>:0:                                      ; preds = %19, %entry
  %__v181_i = phi i32 [ 0, %entry ], [ %20, %19 ]
  %1 = icmp ult i32 %__v181_i, 16
  br i1 %1, label %2, label %21

; <label>:2:                                      ; preds = %0
  %__m5 = load i1, i1* %__rctx
  %__v429_lexpr = zext i32 %__v181_i to i64
  %__v430_lexpr = zext i32 %__v181_i to i64
  %3 = getelementptr i8, i8* %__v179_x, i64 %__v429_lexpr
  %4 = load i8, i8* %3
  %5 = getelementptr i8, i8* %__v180_y, i64 %__v430_lexpr
  %6 = load i8, i8* %5
  %__m6 = icmp ne i8 %4, %6
  %7 = and i1 true, %__m6
  %8 = and i1 %7, %__m5
  %9 = load i1, i1* %__rval
  %10 = zext i1 %9 to i32
  %11 = call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %8, i32 0, i32 %10)
  %12 = trunc i32 %11 to i1
  store i1 %12, i1* %__rval
  %13 = and i1 true, %__m6
  %14 = and i1 %13, %__m5
  %15 = load i1, i1* %__rctx
  %16 = zext i1 %15 to i32
  %17 = call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %14, i32 0, i32 %16)
  %18 = trunc i32 %17 to i1
  store i1 %18, i1* %__rctx
  %__m7 = xor i1 %__m6, true
  %__m8 = xor i1 %__m5, true
  br label %19

; <label>:19:                                     ; preds = %2
  %20 = add i32 %__v181_i, 1
  br label %0

; <label>:21:                                     ; preds = %0
  %__m3 = load i1, i1* %__rctx
  %22 = and i1 true, %__m3
  %23 = load i1, i1* %__rval
  %24 = zext i1 %23 to i32
  %25 = call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %22, i32 1, i32 %24)
  %26 = trunc i32 %25 to i1
  store i1 %26, i1* %__rval
  %27 = and i1 true, %__m3
  %28 = load i1, i1* %__rctx
  %29 = zext i1 %28 to i32
  %30 = call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %27, i32 0, i32 %29)
  %31 = trunc i32 %30 to i1
  store i1 %31, i1* %__rctx
  %__m4 = xor i1 %__m3, true
  %32 = load i1, i1* %__rval
  ret i1 %32
}

define internal i1 @_crypto_onetimeauth_poly1305_verify(i8* %__v175_h, i8* %__v176_input, i64 %__v328___v176_input_len, i8* %__v177_k) {
entry:
  %__rval = alloca i1
  store i1 false, i1* %__rval
  %__rctx = alloca i1
  store i1 true, i1* %__rctx
  %__v178_correct = alloca i8, i64 16
  call void @llvm.memset.p0i8.i64(i8* %__v178_correct, i8 0, i64 16, i32 1, i1 false)
  %0 = call i32 @_crypto_onetimeauth_poly1305(i8* %__v178_correct, i8* %__v176_input, i64 %__v328___v176_input_len, i8* %__v177_k)
  %__v301__crypto_verify_16 = call i1 @_crypto_verify_16(i8* %__v175_h, i8* %__v178_correct)
  ret i1 %__v301__crypto_verify_16
}

define internal void @u0(i32* %__v64_x, i8* %__v65_m, i64 %__v322___v65_m_len, i8* %__v66_c, i64 %__v323___v66_c_len) {
entry:
  %__rctx.i1 = alloca i1
  %__rval.i = alloca i64
  %__rctx.i = alloca i1
  %__rctx = alloca i1
  store i1 true, i1* %__rctx
  %savedstack = call i8* @llvm.stacksave()
  store i64 0, i64* %__rval.i
  store i1 true, i1* %__rctx.i
  %__v72_jtimes.i = udiv i64 %__v322___v65_m_len, 64
  br label %0

; <label>:0:                                      ; preds = %283, %entry
  %__v73__j.i = phi i64 [ 0, %entry ], [ %510, %283 ]
  %1 = icmp ult i64 %__v73__j.i, %__v72_jtimes.i
  br i1 %1, label %2, label %_u1.exit

; <label>:2:                                      ; preds = %0
  %__v74_j.i = mul i64 %__v73__j.i, 64
  %3 = bitcast i32* %__v64_x to <4 x i32>*
  %4 = load <4 x i32>, <4 x i32>* %3
  %__v75_diag0.i = alloca <4 x i32>
  store <4 x i32> %4, <4 x i32>* %__v75_diag0.i
  %5 = getelementptr i32, i32* %__v64_x, i64 4
  %6 = bitcast i32* %5 to <4 x i32>*
  %7 = load <4 x i32>, <4 x i32>* %6
  %__v76_diag1.i = alloca <4 x i32>
  store <4 x i32> %7, <4 x i32>* %__v76_diag1.i
  %8 = getelementptr i32, i32* %__v64_x, i64 8
  %9 = bitcast i32* %8 to <4 x i32>*
  %10 = load <4 x i32>, <4 x i32>* %9
  %__v77_diag2.i = alloca <4 x i32>
  store <4 x i32> %10, <4 x i32>* %__v77_diag2.i
  %11 = getelementptr i32, i32* %__v64_x, i64 12
  %12 = bitcast i32* %11 to <4 x i32>*
  %13 = load <4 x i32>, <4 x i32>* %12
  %__v78_diag3.i = alloca <4 x i32>
  store <4 x i32> %13, <4 x i32>* %__v78_diag3.i
  %14 = load <4 x i32>, <4 x i32>* %__v76_diag1.i
  %__v79_a0.i = alloca <4 x i32>
  store <4 x i32> %14, <4 x i32>* %__v79_a0.i
  br label %15

; <label>:15:                                     ; preds = %17, %2
  %__v80__i.i = phi i32 [ 0, %2 ], [ %282, %17 ]
  %16 = icmp ult i32 %__v80__i.i, 5
  br i1 %16, label %17, label %283

; <label>:17:                                     ; preds = %15
  %__v81_i.i = mul i32 %__v80__i.i, 4
  %18 = load <4 x i32>, <4 x i32>* %__v79_a0.i
  %19 = load <4 x i32>, <4 x i32>* %__v75_diag0.i
  %20 = add <4 x i32> %18, %19
  store <4 x i32> %20, <4 x i32>* %__v79_a0.i
  %21 = load <4 x i32>, <4 x i32>* %__v75_diag0.i
  %__v82_a1.i = alloca <4 x i32>
  store <4 x i32> %21, <4 x i32>* %__v82_a1.i
  %22 = load <4 x i32>, <4 x i32>* %__v79_a0.i
  %__v83_b0.i = alloca <4 x i32>
  store <4 x i32> %22, <4 x i32>* %__v83_b0.i
  %23 = load <4 x i32>, <4 x i32>* %__v79_a0.i
  %24 = shl <4 x i32> %23, <i32 7, i32 7, i32 7, i32 7>
  store <4 x i32> %24, <4 x i32>* %__v79_a0.i
  %25 = load <4 x i32>, <4 x i32>* %__v83_b0.i
  %26 = lshr <4 x i32> %25, <i32 25, i32 25, i32 25, i32 25>
  store <4 x i32> %26, <4 x i32>* %__v83_b0.i
  %27 = load <4 x i32>, <4 x i32>* %__v78_diag3.i
  %28 = load <4 x i32>, <4 x i32>* %__v79_a0.i
  %29 = xor <4 x i32> %27, %28
  store <4 x i32> %29, <4 x i32>* %__v78_diag3.i
  %30 = load <4 x i32>, <4 x i32>* %__v78_diag3.i
  %31 = load <4 x i32>, <4 x i32>* %__v83_b0.i
  %32 = xor <4 x i32> %30, %31
  store <4 x i32> %32, <4 x i32>* %__v78_diag3.i
  %33 = load <4 x i32>, <4 x i32>* %__v82_a1.i
  %34 = load <4 x i32>, <4 x i32>* %__v78_diag3.i
  %35 = add <4 x i32> %33, %34
  store <4 x i32> %35, <4 x i32>* %__v82_a1.i
  %36 = load <4 x i32>, <4 x i32>* %__v78_diag3.i
  %__v84_a2.i = alloca <4 x i32>
  store <4 x i32> %36, <4 x i32>* %__v84_a2.i
  %37 = load <4 x i32>, <4 x i32>* %__v82_a1.i
  %__v85_b1.i = alloca <4 x i32>
  store <4 x i32> %37, <4 x i32>* %__v85_b1.i
  %38 = load <4 x i32>, <4 x i32>* %__v82_a1.i
  %39 = shl <4 x i32> %38, <i32 9, i32 9, i32 9, i32 9>
  store <4 x i32> %39, <4 x i32>* %__v82_a1.i
  %40 = load <4 x i32>, <4 x i32>* %__v85_b1.i
  %41 = lshr <4 x i32> %40, <i32 23, i32 23, i32 23, i32 23>
  store <4 x i32> %41, <4 x i32>* %__v85_b1.i
  %42 = load <4 x i32>, <4 x i32>* %__v77_diag2.i
  %43 = load <4 x i32>, <4 x i32>* %__v82_a1.i
  %44 = xor <4 x i32> %42, %43
  store <4 x i32> %44, <4 x i32>* %__v77_diag2.i
  %45 = load <4 x i32>, <4 x i32>* %__v78_diag3.i
  %46 = shufflevector <4 x i32> %45, <4 x i32> undef, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  store <4 x i32> %46, <4 x i32>* %__v78_diag3.i
  %47 = load <4 x i32>, <4 x i32>* %__v77_diag2.i
  %48 = load <4 x i32>, <4 x i32>* %__v85_b1.i
  %49 = xor <4 x i32> %47, %48
  store <4 x i32> %49, <4 x i32>* %__v77_diag2.i
  %50 = load <4 x i32>, <4 x i32>* %__v84_a2.i
  %51 = load <4 x i32>, <4 x i32>* %__v77_diag2.i
  %52 = add <4 x i32> %50, %51
  store <4 x i32> %52, <4 x i32>* %__v84_a2.i
  %53 = load <4 x i32>, <4 x i32>* %__v77_diag2.i
  %__v86_a3.i = alloca <4 x i32>
  store <4 x i32> %53, <4 x i32>* %__v86_a3.i
  %54 = load <4 x i32>, <4 x i32>* %__v84_a2.i
  %__v87_b2.i = alloca <4 x i32>
  store <4 x i32> %54, <4 x i32>* %__v87_b2.i
  %55 = load <4 x i32>, <4 x i32>* %__v84_a2.i
  %56 = shl <4 x i32> %55, <i32 13, i32 13, i32 13, i32 13>
  store <4 x i32> %56, <4 x i32>* %__v84_a2.i
  %57 = load <4 x i32>, <4 x i32>* %__v87_b2.i
  %58 = lshr <4 x i32> %57, <i32 19, i32 19, i32 19, i32 19>
  store <4 x i32> %58, <4 x i32>* %__v87_b2.i
  %59 = load <4 x i32>, <4 x i32>* %__v76_diag1.i
  %60 = load <4 x i32>, <4 x i32>* %__v84_a2.i
  %61 = xor <4 x i32> %59, %60
  store <4 x i32> %61, <4 x i32>* %__v76_diag1.i
  %62 = load <4 x i32>, <4 x i32>* %__v77_diag2.i
  %63 = shufflevector <4 x i32> %62, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %63, <4 x i32>* %__v77_diag2.i
  %64 = load <4 x i32>, <4 x i32>* %__v76_diag1.i
  %65 = load <4 x i32>, <4 x i32>* %__v87_b2.i
  %66 = xor <4 x i32> %64, %65
  store <4 x i32> %66, <4 x i32>* %__v76_diag1.i
  %67 = load <4 x i32>, <4 x i32>* %__v86_a3.i
  %68 = load <4 x i32>, <4 x i32>* %__v76_diag1.i
  %69 = add <4 x i32> %67, %68
  store <4 x i32> %69, <4 x i32>* %__v86_a3.i
  %70 = load <4 x i32>, <4 x i32>* %__v78_diag3.i
  %__v88_a4.i = alloca <4 x i32>
  store <4 x i32> %70, <4 x i32>* %__v88_a4.i
  %71 = load <4 x i32>, <4 x i32>* %__v86_a3.i
  %__v89_b3.i = alloca <4 x i32>
  store <4 x i32> %71, <4 x i32>* %__v89_b3.i
  %72 = load <4 x i32>, <4 x i32>* %__v86_a3.i
  %73 = shl <4 x i32> %72, <i32 18, i32 18, i32 18, i32 18>
  store <4 x i32> %73, <4 x i32>* %__v86_a3.i
  %74 = load <4 x i32>, <4 x i32>* %__v89_b3.i
  %75 = lshr <4 x i32> %74, <i32 14, i32 14, i32 14, i32 14>
  store <4 x i32> %75, <4 x i32>* %__v89_b3.i
  %76 = load <4 x i32>, <4 x i32>* %__v75_diag0.i
  %77 = load <4 x i32>, <4 x i32>* %__v86_a3.i
  %78 = xor <4 x i32> %76, %77
  store <4 x i32> %78, <4 x i32>* %__v75_diag0.i
  %79 = load <4 x i32>, <4 x i32>* %__v76_diag1.i
  %80 = shufflevector <4 x i32> %79, <4 x i32> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  store <4 x i32> %80, <4 x i32>* %__v76_diag1.i
  %81 = load <4 x i32>, <4 x i32>* %__v75_diag0.i
  %82 = load <4 x i32>, <4 x i32>* %__v89_b3.i
  %83 = xor <4 x i32> %81, %82
  store <4 x i32> %83, <4 x i32>* %__v75_diag0.i
  %84 = load <4 x i32>, <4 x i32>* %__v88_a4.i
  %85 = load <4 x i32>, <4 x i32>* %__v75_diag0.i
  %86 = add <4 x i32> %84, %85
  store <4 x i32> %86, <4 x i32>* %__v88_a4.i
  %87 = load <4 x i32>, <4 x i32>* %__v75_diag0.i
  %__v90_a5.i = alloca <4 x i32>
  store <4 x i32> %87, <4 x i32>* %__v90_a5.i
  %88 = load <4 x i32>, <4 x i32>* %__v88_a4.i
  %__v91_b4.i = alloca <4 x i32>
  store <4 x i32> %88, <4 x i32>* %__v91_b4.i
  %89 = load <4 x i32>, <4 x i32>* %__v88_a4.i
  %90 = shl <4 x i32> %89, <i32 7, i32 7, i32 7, i32 7>
  store <4 x i32> %90, <4 x i32>* %__v88_a4.i
  %91 = load <4 x i32>, <4 x i32>* %__v91_b4.i
  %92 = lshr <4 x i32> %91, <i32 25, i32 25, i32 25, i32 25>
  store <4 x i32> %92, <4 x i32>* %__v91_b4.i
  %93 = load <4 x i32>, <4 x i32>* %__v76_diag1.i
  %94 = load <4 x i32>, <4 x i32>* %__v88_a4.i
  %95 = xor <4 x i32> %93, %94
  store <4 x i32> %95, <4 x i32>* %__v76_diag1.i
  %96 = load <4 x i32>, <4 x i32>* %__v76_diag1.i
  %97 = load <4 x i32>, <4 x i32>* %__v91_b4.i
  %98 = xor <4 x i32> %96, %97
  store <4 x i32> %98, <4 x i32>* %__v76_diag1.i
  %99 = load <4 x i32>, <4 x i32>* %__v90_a5.i
  %100 = load <4 x i32>, <4 x i32>* %__v76_diag1.i
  %101 = add <4 x i32> %99, %100
  store <4 x i32> %101, <4 x i32>* %__v90_a5.i
  %102 = load <4 x i32>, <4 x i32>* %__v76_diag1.i
  %__v92_a6.i = alloca <4 x i32>
  store <4 x i32> %102, <4 x i32>* %__v92_a6.i
  %103 = load <4 x i32>, <4 x i32>* %__v90_a5.i
  %__v93_b5.i = alloca <4 x i32>
  store <4 x i32> %103, <4 x i32>* %__v93_b5.i
  %104 = load <4 x i32>, <4 x i32>* %__v90_a5.i
  %105 = shl <4 x i32> %104, <i32 9, i32 9, i32 9, i32 9>
  store <4 x i32> %105, <4 x i32>* %__v90_a5.i
  %106 = load <4 x i32>, <4 x i32>* %__v93_b5.i
  %107 = lshr <4 x i32> %106, <i32 23, i32 23, i32 23, i32 23>
  store <4 x i32> %107, <4 x i32>* %__v93_b5.i
  %108 = load <4 x i32>, <4 x i32>* %__v77_diag2.i
  %109 = load <4 x i32>, <4 x i32>* %__v90_a5.i
  %110 = xor <4 x i32> %108, %109
  store <4 x i32> %110, <4 x i32>* %__v77_diag2.i
  %111 = load <4 x i32>, <4 x i32>* %__v76_diag1.i
  %112 = shufflevector <4 x i32> %111, <4 x i32> undef, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  store <4 x i32> %112, <4 x i32>* %__v76_diag1.i
  %113 = load <4 x i32>, <4 x i32>* %__v77_diag2.i
  %114 = load <4 x i32>, <4 x i32>* %__v93_b5.i
  %115 = xor <4 x i32> %113, %114
  store <4 x i32> %115, <4 x i32>* %__v77_diag2.i
  %116 = load <4 x i32>, <4 x i32>* %__v92_a6.i
  %117 = load <4 x i32>, <4 x i32>* %__v77_diag2.i
  %118 = add <4 x i32> %116, %117
  store <4 x i32> %118, <4 x i32>* %__v92_a6.i
  %119 = load <4 x i32>, <4 x i32>* %__v77_diag2.i
  %__v94_a7.i = alloca <4 x i32>
  store <4 x i32> %119, <4 x i32>* %__v94_a7.i
  %120 = load <4 x i32>, <4 x i32>* %__v92_a6.i
  %__v95_b6.i = alloca <4 x i32>
  store <4 x i32> %120, <4 x i32>* %__v95_b6.i
  %121 = load <4 x i32>, <4 x i32>* %__v92_a6.i
  %122 = shl <4 x i32> %121, <i32 13, i32 13, i32 13, i32 13>
  store <4 x i32> %122, <4 x i32>* %__v92_a6.i
  %123 = load <4 x i32>, <4 x i32>* %__v95_b6.i
  %124 = lshr <4 x i32> %123, <i32 19, i32 19, i32 19, i32 19>
  store <4 x i32> %124, <4 x i32>* %__v95_b6.i
  %125 = load <4 x i32>, <4 x i32>* %__v78_diag3.i
  %126 = load <4 x i32>, <4 x i32>* %__v92_a6.i
  %127 = xor <4 x i32> %125, %126
  store <4 x i32> %127, <4 x i32>* %__v78_diag3.i
  %128 = load <4 x i32>, <4 x i32>* %__v77_diag2.i
  %129 = shufflevector <4 x i32> %128, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %129, <4 x i32>* %__v77_diag2.i
  %130 = load <4 x i32>, <4 x i32>* %__v78_diag3.i
  %131 = load <4 x i32>, <4 x i32>* %__v95_b6.i
  %132 = xor <4 x i32> %130, %131
  store <4 x i32> %132, <4 x i32>* %__v78_diag3.i
  %133 = load <4 x i32>, <4 x i32>* %__v94_a7.i
  %134 = load <4 x i32>, <4 x i32>* %__v78_diag3.i
  %135 = add <4 x i32> %133, %134
  store <4 x i32> %135, <4 x i32>* %__v94_a7.i
  %136 = load <4 x i32>, <4 x i32>* %__v76_diag1.i
  store <4 x i32> %136, <4 x i32>* %__v79_a0.i
  %137 = load <4 x i32>, <4 x i32>* %__v94_a7.i
  %__v96_b7.i = alloca <4 x i32>
  store <4 x i32> %137, <4 x i32>* %__v96_b7.i
  %138 = load <4 x i32>, <4 x i32>* %__v94_a7.i
  %139 = shl <4 x i32> %138, <i32 18, i32 18, i32 18, i32 18>
  store <4 x i32> %139, <4 x i32>* %__v94_a7.i
  %140 = load <4 x i32>, <4 x i32>* %__v96_b7.i
  %141 = lshr <4 x i32> %140, <i32 14, i32 14, i32 14, i32 14>
  store <4 x i32> %141, <4 x i32>* %__v96_b7.i
  %142 = load <4 x i32>, <4 x i32>* %__v75_diag0.i
  %143 = load <4 x i32>, <4 x i32>* %__v94_a7.i
  %144 = xor <4 x i32> %142, %143
  store <4 x i32> %144, <4 x i32>* %__v75_diag0.i
  %145 = load <4 x i32>, <4 x i32>* %__v78_diag3.i
  %146 = shufflevector <4 x i32> %145, <4 x i32> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  store <4 x i32> %146, <4 x i32>* %__v78_diag3.i
  %147 = load <4 x i32>, <4 x i32>* %__v75_diag0.i
  %148 = load <4 x i32>, <4 x i32>* %__v96_b7.i
  %149 = xor <4 x i32> %147, %148
  store <4 x i32> %149, <4 x i32>* %__v75_diag0.i
  %150 = load <4 x i32>, <4 x i32>* %__v79_a0.i
  %151 = load <4 x i32>, <4 x i32>* %__v75_diag0.i
  %152 = add <4 x i32> %150, %151
  store <4 x i32> %152, <4 x i32>* %__v79_a0.i
  %153 = load <4 x i32>, <4 x i32>* %__v75_diag0.i
  store <4 x i32> %153, <4 x i32>* %__v82_a1.i
  %154 = load <4 x i32>, <4 x i32>* %__v79_a0.i
  store <4 x i32> %154, <4 x i32>* %__v83_b0.i
  %155 = load <4 x i32>, <4 x i32>* %__v79_a0.i
  %156 = shl <4 x i32> %155, <i32 7, i32 7, i32 7, i32 7>
  store <4 x i32> %156, <4 x i32>* %__v79_a0.i
  %157 = load <4 x i32>, <4 x i32>* %__v83_b0.i
  %158 = lshr <4 x i32> %157, <i32 25, i32 25, i32 25, i32 25>
  store <4 x i32> %158, <4 x i32>* %__v83_b0.i
  %159 = load <4 x i32>, <4 x i32>* %__v78_diag3.i
  %160 = load <4 x i32>, <4 x i32>* %__v79_a0.i
  %161 = xor <4 x i32> %159, %160
  store <4 x i32> %161, <4 x i32>* %__v78_diag3.i
  %162 = load <4 x i32>, <4 x i32>* %__v78_diag3.i
  %163 = load <4 x i32>, <4 x i32>* %__v83_b0.i
  %164 = xor <4 x i32> %162, %163
  store <4 x i32> %164, <4 x i32>* %__v78_diag3.i
  %165 = load <4 x i32>, <4 x i32>* %__v82_a1.i
  %166 = load <4 x i32>, <4 x i32>* %__v78_diag3.i
  %167 = add <4 x i32> %165, %166
  store <4 x i32> %167, <4 x i32>* %__v82_a1.i
  %168 = load <4 x i32>, <4 x i32>* %__v78_diag3.i
  store <4 x i32> %168, <4 x i32>* %__v84_a2.i
  %169 = load <4 x i32>, <4 x i32>* %__v82_a1.i
  store <4 x i32> %169, <4 x i32>* %__v85_b1.i
  %170 = load <4 x i32>, <4 x i32>* %__v82_a1.i
  %171 = shl <4 x i32> %170, <i32 9, i32 9, i32 9, i32 9>
  store <4 x i32> %171, <4 x i32>* %__v82_a1.i
  %172 = load <4 x i32>, <4 x i32>* %__v85_b1.i
  %173 = lshr <4 x i32> %172, <i32 23, i32 23, i32 23, i32 23>
  store <4 x i32> %173, <4 x i32>* %__v85_b1.i
  %174 = load <4 x i32>, <4 x i32>* %__v77_diag2.i
  %175 = load <4 x i32>, <4 x i32>* %__v82_a1.i
  %176 = xor <4 x i32> %174, %175
  store <4 x i32> %176, <4 x i32>* %__v77_diag2.i
  %177 = load <4 x i32>, <4 x i32>* %__v78_diag3.i
  %178 = shufflevector <4 x i32> %177, <4 x i32> undef, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  store <4 x i32> %178, <4 x i32>* %__v78_diag3.i
  %179 = load <4 x i32>, <4 x i32>* %__v77_diag2.i
  %180 = load <4 x i32>, <4 x i32>* %__v85_b1.i
  %181 = xor <4 x i32> %179, %180
  store <4 x i32> %181, <4 x i32>* %__v77_diag2.i
  %182 = load <4 x i32>, <4 x i32>* %__v84_a2.i
  %183 = load <4 x i32>, <4 x i32>* %__v77_diag2.i
  %184 = add <4 x i32> %182, %183
  store <4 x i32> %184, <4 x i32>* %__v84_a2.i
  %185 = load <4 x i32>, <4 x i32>* %__v77_diag2.i
  store <4 x i32> %185, <4 x i32>* %__v86_a3.i
  %186 = load <4 x i32>, <4 x i32>* %__v84_a2.i
  store <4 x i32> %186, <4 x i32>* %__v87_b2.i
  %187 = load <4 x i32>, <4 x i32>* %__v84_a2.i
  %188 = shl <4 x i32> %187, <i32 13, i32 13, i32 13, i32 13>
  store <4 x i32> %188, <4 x i32>* %__v84_a2.i
  %189 = load <4 x i32>, <4 x i32>* %__v87_b2.i
  %190 = lshr <4 x i32> %189, <i32 19, i32 19, i32 19, i32 19>
  store <4 x i32> %190, <4 x i32>* %__v87_b2.i
  %191 = load <4 x i32>, <4 x i32>* %__v76_diag1.i
  %192 = load <4 x i32>, <4 x i32>* %__v84_a2.i
  %193 = xor <4 x i32> %191, %192
  store <4 x i32> %193, <4 x i32>* %__v76_diag1.i
  %194 = load <4 x i32>, <4 x i32>* %__v77_diag2.i
  %195 = shufflevector <4 x i32> %194, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %195, <4 x i32>* %__v77_diag2.i
  %196 = load <4 x i32>, <4 x i32>* %__v76_diag1.i
  %197 = load <4 x i32>, <4 x i32>* %__v87_b2.i
  %198 = xor <4 x i32> %196, %197
  store <4 x i32> %198, <4 x i32>* %__v76_diag1.i
  %199 = load <4 x i32>, <4 x i32>* %__v86_a3.i
  %200 = load <4 x i32>, <4 x i32>* %__v76_diag1.i
  %201 = add <4 x i32> %199, %200
  store <4 x i32> %201, <4 x i32>* %__v86_a3.i
  %202 = load <4 x i32>, <4 x i32>* %__v78_diag3.i
  store <4 x i32> %202, <4 x i32>* %__v88_a4.i
  %203 = load <4 x i32>, <4 x i32>* %__v86_a3.i
  store <4 x i32> %203, <4 x i32>* %__v89_b3.i
  %204 = load <4 x i32>, <4 x i32>* %__v86_a3.i
  %205 = shl <4 x i32> %204, <i32 18, i32 18, i32 18, i32 18>
  store <4 x i32> %205, <4 x i32>* %__v86_a3.i
  %206 = load <4 x i32>, <4 x i32>* %__v89_b3.i
  %207 = lshr <4 x i32> %206, <i32 14, i32 14, i32 14, i32 14>
  store <4 x i32> %207, <4 x i32>* %__v89_b3.i
  %208 = load <4 x i32>, <4 x i32>* %__v75_diag0.i
  %209 = load <4 x i32>, <4 x i32>* %__v86_a3.i
  %210 = xor <4 x i32> %208, %209
  store <4 x i32> %210, <4 x i32>* %__v75_diag0.i
  %211 = load <4 x i32>, <4 x i32>* %__v76_diag1.i
  %212 = shufflevector <4 x i32> %211, <4 x i32> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  store <4 x i32> %212, <4 x i32>* %__v76_diag1.i
  %213 = load <4 x i32>, <4 x i32>* %__v75_diag0.i
  %214 = load <4 x i32>, <4 x i32>* %__v89_b3.i
  %215 = xor <4 x i32> %213, %214
  store <4 x i32> %215, <4 x i32>* %__v75_diag0.i
  %216 = load <4 x i32>, <4 x i32>* %__v88_a4.i
  %217 = load <4 x i32>, <4 x i32>* %__v75_diag0.i
  %218 = add <4 x i32> %216, %217
  store <4 x i32> %218, <4 x i32>* %__v88_a4.i
  %219 = load <4 x i32>, <4 x i32>* %__v75_diag0.i
  store <4 x i32> %219, <4 x i32>* %__v90_a5.i
  %220 = load <4 x i32>, <4 x i32>* %__v88_a4.i
  store <4 x i32> %220, <4 x i32>* %__v91_b4.i
  %221 = load <4 x i32>, <4 x i32>* %__v88_a4.i
  %222 = shl <4 x i32> %221, <i32 7, i32 7, i32 7, i32 7>
  store <4 x i32> %222, <4 x i32>* %__v88_a4.i
  %223 = load <4 x i32>, <4 x i32>* %__v91_b4.i
  %224 = lshr <4 x i32> %223, <i32 25, i32 25, i32 25, i32 25>
  store <4 x i32> %224, <4 x i32>* %__v91_b4.i
  %225 = load <4 x i32>, <4 x i32>* %__v76_diag1.i
  %226 = load <4 x i32>, <4 x i32>* %__v88_a4.i
  %227 = xor <4 x i32> %225, %226
  store <4 x i32> %227, <4 x i32>* %__v76_diag1.i
  %228 = load <4 x i32>, <4 x i32>* %__v76_diag1.i
  %229 = load <4 x i32>, <4 x i32>* %__v91_b4.i
  %230 = xor <4 x i32> %228, %229
  store <4 x i32> %230, <4 x i32>* %__v76_diag1.i
  %231 = load <4 x i32>, <4 x i32>* %__v90_a5.i
  %232 = load <4 x i32>, <4 x i32>* %__v76_diag1.i
  %233 = add <4 x i32> %231, %232
  store <4 x i32> %233, <4 x i32>* %__v90_a5.i
  %234 = load <4 x i32>, <4 x i32>* %__v76_diag1.i
  store <4 x i32> %234, <4 x i32>* %__v92_a6.i
  %235 = load <4 x i32>, <4 x i32>* %__v90_a5.i
  store <4 x i32> %235, <4 x i32>* %__v93_b5.i
  %236 = load <4 x i32>, <4 x i32>* %__v90_a5.i
  %237 = shl <4 x i32> %236, <i32 9, i32 9, i32 9, i32 9>
  store <4 x i32> %237, <4 x i32>* %__v90_a5.i
  %238 = load <4 x i32>, <4 x i32>* %__v93_b5.i
  %239 = lshr <4 x i32> %238, <i32 23, i32 23, i32 23, i32 23>
  store <4 x i32> %239, <4 x i32>* %__v93_b5.i
  %240 = load <4 x i32>, <4 x i32>* %__v77_diag2.i
  %241 = load <4 x i32>, <4 x i32>* %__v90_a5.i
  %242 = xor <4 x i32> %240, %241
  store <4 x i32> %242, <4 x i32>* %__v77_diag2.i
  %243 = load <4 x i32>, <4 x i32>* %__v76_diag1.i
  %244 = shufflevector <4 x i32> %243, <4 x i32> undef, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  store <4 x i32> %244, <4 x i32>* %__v76_diag1.i
  %245 = load <4 x i32>, <4 x i32>* %__v77_diag2.i
  %246 = load <4 x i32>, <4 x i32>* %__v93_b5.i
  %247 = xor <4 x i32> %245, %246
  store <4 x i32> %247, <4 x i32>* %__v77_diag2.i
  %248 = load <4 x i32>, <4 x i32>* %__v92_a6.i
  %249 = load <4 x i32>, <4 x i32>* %__v77_diag2.i
  %250 = add <4 x i32> %248, %249
  store <4 x i32> %250, <4 x i32>* %__v92_a6.i
  %251 = load <4 x i32>, <4 x i32>* %__v77_diag2.i
  store <4 x i32> %251, <4 x i32>* %__v94_a7.i
  %252 = load <4 x i32>, <4 x i32>* %__v92_a6.i
  store <4 x i32> %252, <4 x i32>* %__v95_b6.i
  %253 = load <4 x i32>, <4 x i32>* %__v92_a6.i
  %254 = shl <4 x i32> %253, <i32 13, i32 13, i32 13, i32 13>
  store <4 x i32> %254, <4 x i32>* %__v92_a6.i
  %255 = load <4 x i32>, <4 x i32>* %__v95_b6.i
  %256 = lshr <4 x i32> %255, <i32 19, i32 19, i32 19, i32 19>
  store <4 x i32> %256, <4 x i32>* %__v95_b6.i
  %257 = load <4 x i32>, <4 x i32>* %__v78_diag3.i
  %258 = load <4 x i32>, <4 x i32>* %__v92_a6.i
  %259 = xor <4 x i32> %257, %258
  store <4 x i32> %259, <4 x i32>* %__v78_diag3.i
  %260 = load <4 x i32>, <4 x i32>* %__v77_diag2.i
  %261 = shufflevector <4 x i32> %260, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %261, <4 x i32>* %__v77_diag2.i
  %262 = load <4 x i32>, <4 x i32>* %__v78_diag3.i
  %263 = load <4 x i32>, <4 x i32>* %__v95_b6.i
  %264 = xor <4 x i32> %262, %263
  store <4 x i32> %264, <4 x i32>* %__v78_diag3.i
  %265 = load <4 x i32>, <4 x i32>* %__v94_a7.i
  %266 = load <4 x i32>, <4 x i32>* %__v78_diag3.i
  %267 = add <4 x i32> %265, %266
  store <4 x i32> %267, <4 x i32>* %__v94_a7.i
  %268 = load <4 x i32>, <4 x i32>* %__v76_diag1.i
  store <4 x i32> %268, <4 x i32>* %__v79_a0.i
  %269 = load <4 x i32>, <4 x i32>* %__v94_a7.i
  store <4 x i32> %269, <4 x i32>* %__v96_b7.i
  %270 = load <4 x i32>, <4 x i32>* %__v94_a7.i
  %271 = shl <4 x i32> %270, <i32 18, i32 18, i32 18, i32 18>
  store <4 x i32> %271, <4 x i32>* %__v94_a7.i
  %272 = load <4 x i32>, <4 x i32>* %__v96_b7.i
  %273 = lshr <4 x i32> %272, <i32 14, i32 14, i32 14, i32 14>
  store <4 x i32> %273, <4 x i32>* %__v96_b7.i
  %274 = load <4 x i32>, <4 x i32>* %__v75_diag0.i
  %275 = load <4 x i32>, <4 x i32>* %__v94_a7.i
  %276 = xor <4 x i32> %274, %275
  store <4 x i32> %276, <4 x i32>* %__v75_diag0.i
  %277 = load <4 x i32>, <4 x i32>* %__v78_diag3.i
  %278 = shufflevector <4 x i32> %277, <4 x i32> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  store <4 x i32> %278, <4 x i32>* %__v78_diag3.i
  %279 = load <4 x i32>, <4 x i32>* %__v75_diag0.i
  %280 = load <4 x i32>, <4 x i32>* %__v96_b7.i
  %281 = xor <4 x i32> %279, %280
  store <4 x i32> %281, <4 x i32>* %__v75_diag0.i
  %282 = add i32 %__v80__i.i, 1
  br label %15

; <label>:283:                                    ; preds = %15
  %284 = bitcast i32* %__v64_x to <4 x i32>*
  %285 = load <4 x i32>, <4 x i32>* %284
  %286 = load <4 x i32>, <4 x i32>* %__v75_diag0.i
  %287 = add <4 x i32> %286, %285
  store <4 x i32> %287, <4 x i32>* %__v75_diag0.i
  %288 = getelementptr i32, i32* %__v64_x, i64 4
  %289 = bitcast i32* %288 to <4 x i32>*
  %290 = load <4 x i32>, <4 x i32>* %289
  %291 = load <4 x i32>, <4 x i32>* %__v76_diag1.i
  %292 = add <4 x i32> %291, %290
  store <4 x i32> %292, <4 x i32>* %__v76_diag1.i
  %293 = getelementptr i32, i32* %__v64_x, i64 8
  %294 = bitcast i32* %293 to <4 x i32>*
  %295 = load <4 x i32>, <4 x i32>* %294
  %296 = load <4 x i32>, <4 x i32>* %__v77_diag2.i
  %297 = add <4 x i32> %296, %295
  store <4 x i32> %297, <4 x i32>* %__v77_diag2.i
  %298 = getelementptr i32, i32* %__v64_x, i64 12
  %299 = bitcast i32* %298 to <4 x i32>*
  %300 = load <4 x i32>, <4 x i32>* %299
  %301 = load <4 x i32>, <4 x i32>* %__v78_diag3.i
  %302 = add <4 x i32> %301, %300
  store <4 x i32> %302, <4 x i32>* %__v78_diag3.i
  %303 = load <4 x i32>, <4 x i32>* %__v75_diag0.i
  %304 = extractelement <4 x i32> %303, i32 0
  %__v101_inA.i = alloca i32
  store i32 %304, i32* %__v101_inA.i
  %305 = load <4 x i32>, <4 x i32>* %__v76_diag1.i
  %306 = extractelement <4 x i32> %305, i32 0
  %__v102_inB.i = alloca i32
  store i32 %306, i32* %__v102_inB.i
  %307 = load <4 x i32>, <4 x i32>* %__v77_diag2.i
  %308 = extractelement <4 x i32> %307, i32 0
  %__v103_inC.i = alloca i32
  store i32 %308, i32* %__v103_inC.i
  %309 = load <4 x i32>, <4 x i32>* %__v78_diag3.i
  %310 = extractelement <4 x i32> %309, i32 0
  %__v104_inD.i = alloca i32
  store i32 %310, i32* %__v104_inD.i
  %311 = load <4 x i32>, <4 x i32>* %__v75_diag0.i
  %312 = shufflevector <4 x i32> %311, <4 x i32> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  store <4 x i32> %312, <4 x i32>* %__v75_diag0.i
  %313 = load <4 x i32>, <4 x i32>* %__v76_diag1.i
  %314 = shufflevector <4 x i32> %313, <4 x i32> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  store <4 x i32> %314, <4 x i32>* %__v76_diag1.i
  %315 = load <4 x i32>, <4 x i32>* %__v77_diag2.i
  %316 = shufflevector <4 x i32> %315, <4 x i32> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  store <4 x i32> %316, <4 x i32>* %__v77_diag2.i
  %317 = load <4 x i32>, <4 x i32>* %__v78_diag3.i
  %318 = shufflevector <4 x i32> %317, <4 x i32> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  store <4 x i32> %318, <4 x i32>* %__v78_diag3.i
  %319 = getelementptr i8, i8* %__v65_m, i64 %__v74_j.i
  %320 = bitcast i8* %319 to i32*
  %321 = load i32, i32* %320
  %322 = load i32, i32* %__v101_inA.i
  %323 = xor i32 %322, %321
  store i32 %323, i32* %__v101_inA.i
  %__v346_lexpr.i = add i64 %__v74_j.i, 48
  %__v347_lexpr.i = add i64 %__v74_j.i, 48
  %__v348_lexpr.i = add i64 %__v74_j.i, 48
  %324 = getelementptr i8, i8* %__v65_m, i64 %__v348_lexpr.i
  %325 = bitcast i8* %324 to i32*
  %326 = load i32, i32* %325
  %327 = load i32, i32* %__v102_inB.i
  %328 = xor i32 %327, %326
  store i32 %328, i32* %__v102_inB.i
  %__v349_lexpr.i = add i64 %__v74_j.i, 32
  %__v350_lexpr.i = add i64 %__v74_j.i, 32
  %__v351_lexpr.i = add i64 %__v74_j.i, 32
  %329 = getelementptr i8, i8* %__v65_m, i64 %__v351_lexpr.i
  %330 = bitcast i8* %329 to i32*
  %331 = load i32, i32* %330
  %332 = load i32, i32* %__v103_inC.i
  %333 = xor i32 %332, %331
  store i32 %333, i32* %__v103_inC.i
  %__v352_lexpr.i = add i64 %__v74_j.i, 16
  %__v353_lexpr.i = add i64 %__v74_j.i, 16
  %__v354_lexpr.i = add i64 %__v74_j.i, 16
  %334 = getelementptr i8, i8* %__v65_m, i64 %__v354_lexpr.i
  %335 = bitcast i8* %334 to i32*
  %336 = load i32, i32* %335
  %337 = load i32, i32* %__v104_inD.i
  %338 = xor i32 %337, %336
  store i32 %338, i32* %__v104_inD.i
  %339 = getelementptr i8, i8* %__v66_c, i64 %__v74_j.i
  %340 = load i32, i32* %__v101_inA.i
  %341 = bitcast i8* %339 to i32*
  store i32 %340, i32* %341
  %__v357_lexpr.i = add i64 %__v74_j.i, 48
  %__v358_lexpr.i = add i64 %__v74_j.i, 48
  %342 = getelementptr i8, i8* %__v66_c, i64 %__v358_lexpr.i
  %343 = load i32, i32* %__v102_inB.i
  %344 = bitcast i8* %342 to i32*
  store i32 %343, i32* %344
  %__v359_lexpr.i = add i64 %__v74_j.i, 32
  %__v360_lexpr.i = add i64 %__v74_j.i, 32
  %345 = getelementptr i8, i8* %__v66_c, i64 %__v360_lexpr.i
  %346 = load i32, i32* %__v103_inC.i
  %347 = bitcast i8* %345 to i32*
  store i32 %346, i32* %347
  %__v361_lexpr.i = add i64 %__v74_j.i, 16
  %__v362_lexpr.i = add i64 %__v74_j.i, 16
  %348 = getelementptr i8, i8* %__v66_c, i64 %__v362_lexpr.i
  %349 = load i32, i32* %__v104_inD.i
  %350 = bitcast i8* %348 to i32*
  store i32 %349, i32* %350
  %351 = load <4 x i32>, <4 x i32>* %__v75_diag0.i
  %352 = extractelement <4 x i32> %351, i32 0
  %__v109_inA.i = alloca i32
  store i32 %352, i32* %__v109_inA.i
  %353 = load <4 x i32>, <4 x i32>* %__v76_diag1.i
  %354 = extractelement <4 x i32> %353, i32 0
  %__v110_inB.i = alloca i32
  store i32 %354, i32* %__v110_inB.i
  %355 = load <4 x i32>, <4 x i32>* %__v77_diag2.i
  %356 = extractelement <4 x i32> %355, i32 0
  %__v111_inC.i = alloca i32
  store i32 %356, i32* %__v111_inC.i
  %357 = load <4 x i32>, <4 x i32>* %__v78_diag3.i
  %358 = extractelement <4 x i32> %357, i32 0
  %__v112_inD.i = alloca i32
  store i32 %358, i32* %__v112_inD.i
  %359 = load <4 x i32>, <4 x i32>* %__v75_diag0.i
  %360 = shufflevector <4 x i32> %359, <4 x i32> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  store <4 x i32> %360, <4 x i32>* %__v75_diag0.i
  %361 = load <4 x i32>, <4 x i32>* %__v76_diag1.i
  %362 = shufflevector <4 x i32> %361, <4 x i32> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  store <4 x i32> %362, <4 x i32>* %__v76_diag1.i
  %363 = load <4 x i32>, <4 x i32>* %__v77_diag2.i
  %364 = shufflevector <4 x i32> %363, <4 x i32> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  store <4 x i32> %364, <4 x i32>* %__v77_diag2.i
  %365 = load <4 x i32>, <4 x i32>* %__v78_diag3.i
  %366 = shufflevector <4 x i32> %365, <4 x i32> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  store <4 x i32> %366, <4 x i32>* %__v78_diag3.i
  %__v363_lexpr.i = add i64 %__v74_j.i, 20
  %__v364_lexpr.i = add i64 %__v74_j.i, 20
  %__v365_lexpr.i = add i64 %__v74_j.i, 20
  %367 = getelementptr i8, i8* %__v65_m, i64 %__v365_lexpr.i
  %368 = bitcast i8* %367 to i32*
  %369 = load i32, i32* %368
  %370 = load i32, i32* %__v109_inA.i
  %371 = xor i32 %370, %369
  store i32 %371, i32* %__v109_inA.i
  %__v366_lexpr.i = add i64 %__v74_j.i, 4
  %__v367_lexpr.i = add i64 %__v74_j.i, 4
  %__v368_lexpr.i = add i64 %__v74_j.i, 4
  %372 = getelementptr i8, i8* %__v65_m, i64 %__v368_lexpr.i
  %373 = bitcast i8* %372 to i32*
  %374 = load i32, i32* %373
  %375 = load i32, i32* %__v110_inB.i
  %376 = xor i32 %375, %374
  store i32 %376, i32* %__v110_inB.i
  %__v369_lexpr.i = add i64 %__v74_j.i, 52
  %__v370_lexpr.i = add i64 %__v74_j.i, 52
  %__v371_lexpr.i = add i64 %__v74_j.i, 52
  %377 = getelementptr i8, i8* %__v65_m, i64 %__v371_lexpr.i
  %378 = bitcast i8* %377 to i32*
  %379 = load i32, i32* %378
  %380 = load i32, i32* %__v111_inC.i
  %381 = xor i32 %380, %379
  store i32 %381, i32* %__v111_inC.i
  %__v372_lexpr.i = add i64 %__v74_j.i, 36
  %__v373_lexpr.i = add i64 %__v74_j.i, 36
  %__v374_lexpr.i = add i64 %__v74_j.i, 36
  %382 = getelementptr i8, i8* %__v65_m, i64 %__v374_lexpr.i
  %383 = bitcast i8* %382 to i32*
  %384 = load i32, i32* %383
  %385 = load i32, i32* %__v112_inD.i
  %386 = xor i32 %385, %384
  store i32 %386, i32* %__v112_inD.i
  %__v375_lexpr.i = add i64 %__v74_j.i, 20
  %__v376_lexpr.i = add i64 %__v74_j.i, 20
  %387 = getelementptr i8, i8* %__v66_c, i64 %__v376_lexpr.i
  %388 = load i32, i32* %__v109_inA.i
  %389 = bitcast i8* %387 to i32*
  store i32 %388, i32* %389
  %__v377_lexpr.i = add i64 %__v74_j.i, 4
  %__v378_lexpr.i = add i64 %__v74_j.i, 4
  %390 = getelementptr i8, i8* %__v66_c, i64 %__v378_lexpr.i
  %391 = load i32, i32* %__v110_inB.i
  %392 = bitcast i8* %390 to i32*
  store i32 %391, i32* %392
  %__v379_lexpr.i = add i64 %__v74_j.i, 52
  %__v380_lexpr.i = add i64 %__v74_j.i, 52
  %393 = getelementptr i8, i8* %__v66_c, i64 %__v380_lexpr.i
  %394 = load i32, i32* %__v111_inC.i
  %395 = bitcast i8* %393 to i32*
  store i32 %394, i32* %395
  %__v381_lexpr.i = add i64 %__v74_j.i, 36
  %__v382_lexpr.i = add i64 %__v74_j.i, 36
  %396 = getelementptr i8, i8* %__v66_c, i64 %__v382_lexpr.i
  %397 = load i32, i32* %__v112_inD.i
  %398 = bitcast i8* %396 to i32*
  store i32 %397, i32* %398
  %399 = load <4 x i32>, <4 x i32>* %__v75_diag0.i
  %400 = extractelement <4 x i32> %399, i32 0
  %__v117_inA.i = alloca i32
  store i32 %400, i32* %__v117_inA.i
  %401 = load <4 x i32>, <4 x i32>* %__v76_diag1.i
  %402 = extractelement <4 x i32> %401, i32 0
  %__v118_inB.i = alloca i32
  store i32 %402, i32* %__v118_inB.i
  %403 = load <4 x i32>, <4 x i32>* %__v77_diag2.i
  %404 = extractelement <4 x i32> %403, i32 0
  %__v119_inC.i = alloca i32
  store i32 %404, i32* %__v119_inC.i
  %405 = load <4 x i32>, <4 x i32>* %__v78_diag3.i
  %406 = extractelement <4 x i32> %405, i32 0
  %__v120_inD.i = alloca i32
  store i32 %406, i32* %__v120_inD.i
  %407 = load <4 x i32>, <4 x i32>* %__v75_diag0.i
  %408 = shufflevector <4 x i32> %407, <4 x i32> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  store <4 x i32> %408, <4 x i32>* %__v75_diag0.i
  %409 = load <4 x i32>, <4 x i32>* %__v76_diag1.i
  %410 = shufflevector <4 x i32> %409, <4 x i32> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  store <4 x i32> %410, <4 x i32>* %__v76_diag1.i
  %411 = load <4 x i32>, <4 x i32>* %__v77_diag2.i
  %412 = shufflevector <4 x i32> %411, <4 x i32> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  store <4 x i32> %412, <4 x i32>* %__v77_diag2.i
  %413 = load <4 x i32>, <4 x i32>* %__v78_diag3.i
  %414 = shufflevector <4 x i32> %413, <4 x i32> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  store <4 x i32> %414, <4 x i32>* %__v78_diag3.i
  %__v383_lexpr.i = add i64 %__v74_j.i, 40
  %__v384_lexpr.i = add i64 %__v74_j.i, 40
  %__v385_lexpr.i = add i64 %__v74_j.i, 40
  %415 = getelementptr i8, i8* %__v65_m, i64 %__v385_lexpr.i
  %416 = bitcast i8* %415 to i32*
  %417 = load i32, i32* %416
  %418 = load i32, i32* %__v117_inA.i
  %419 = xor i32 %418, %417
  store i32 %419, i32* %__v117_inA.i
  %__v386_lexpr.i = add i64 %__v74_j.i, 24
  %__v387_lexpr.i = add i64 %__v74_j.i, 24
  %__v388_lexpr.i = add i64 %__v74_j.i, 24
  %420 = getelementptr i8, i8* %__v65_m, i64 %__v388_lexpr.i
  %421 = bitcast i8* %420 to i32*
  %422 = load i32, i32* %421
  %423 = load i32, i32* %__v118_inB.i
  %424 = xor i32 %423, %422
  store i32 %424, i32* %__v118_inB.i
  %__v389_lexpr.i = add i64 %__v74_j.i, 8
  %__v390_lexpr.i = add i64 %__v74_j.i, 8
  %__v391_lexpr.i = add i64 %__v74_j.i, 8
  %425 = getelementptr i8, i8* %__v65_m, i64 %__v391_lexpr.i
  %426 = bitcast i8* %425 to i32*
  %427 = load i32, i32* %426
  %428 = load i32, i32* %__v119_inC.i
  %429 = xor i32 %428, %427
  store i32 %429, i32* %__v119_inC.i
  %__v392_lexpr.i = add i64 %__v74_j.i, 56
  %__v393_lexpr.i = add i64 %__v74_j.i, 56
  %__v394_lexpr.i = add i64 %__v74_j.i, 56
  %430 = getelementptr i8, i8* %__v65_m, i64 %__v394_lexpr.i
  %431 = bitcast i8* %430 to i32*
  %432 = load i32, i32* %431
  %433 = load i32, i32* %__v120_inD.i
  %434 = xor i32 %433, %432
  store i32 %434, i32* %__v120_inD.i
  %__v395_lexpr.i = add i64 %__v74_j.i, 40
  %__v396_lexpr.i = add i64 %__v74_j.i, 40
  %435 = getelementptr i8, i8* %__v66_c, i64 %__v396_lexpr.i
  %436 = load i32, i32* %__v117_inA.i
  %437 = bitcast i8* %435 to i32*
  store i32 %436, i32* %437
  %__v397_lexpr.i = add i64 %__v74_j.i, 24
  %__v398_lexpr.i = add i64 %__v74_j.i, 24
  %438 = getelementptr i8, i8* %__v66_c, i64 %__v398_lexpr.i
  %439 = load i32, i32* %__v118_inB.i
  %440 = bitcast i8* %438 to i32*
  store i32 %439, i32* %440
  %__v399_lexpr.i = add i64 %__v74_j.i, 8
  %__v400_lexpr.i = add i64 %__v74_j.i, 8
  %441 = getelementptr i8, i8* %__v66_c, i64 %__v400_lexpr.i
  %442 = load i32, i32* %__v119_inC.i
  %443 = bitcast i8* %441 to i32*
  store i32 %442, i32* %443
  %__v401_lexpr.i = add i64 %__v74_j.i, 56
  %__v402_lexpr.i = add i64 %__v74_j.i, 56
  %444 = getelementptr i8, i8* %__v66_c, i64 %__v402_lexpr.i
  %445 = load i32, i32* %__v120_inD.i
  %446 = bitcast i8* %444 to i32*
  store i32 %445, i32* %446
  %447 = load <4 x i32>, <4 x i32>* %__v75_diag0.i
  %448 = extractelement <4 x i32> %447, i32 0
  %__v125_inA.i = alloca i32
  store i32 %448, i32* %__v125_inA.i
  %449 = load <4 x i32>, <4 x i32>* %__v76_diag1.i
  %450 = extractelement <4 x i32> %449, i32 0
  %__v126_inB.i = alloca i32
  store i32 %450, i32* %__v126_inB.i
  %451 = load <4 x i32>, <4 x i32>* %__v77_diag2.i
  %452 = extractelement <4 x i32> %451, i32 0
  %__v127_inC.i = alloca i32
  store i32 %452, i32* %__v127_inC.i
  %453 = load <4 x i32>, <4 x i32>* %__v78_diag3.i
  %454 = extractelement <4 x i32> %453, i32 0
  %__v128_inD.i = alloca i32
  store i32 %454, i32* %__v128_inD.i
  %455 = load <4 x i32>, <4 x i32>* %__v75_diag0.i
  %456 = shufflevector <4 x i32> %455, <4 x i32> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  store <4 x i32> %456, <4 x i32>* %__v75_diag0.i
  %457 = load <4 x i32>, <4 x i32>* %__v76_diag1.i
  %458 = shufflevector <4 x i32> %457, <4 x i32> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  store <4 x i32> %458, <4 x i32>* %__v76_diag1.i
  %459 = load <4 x i32>, <4 x i32>* %__v77_diag2.i
  %460 = shufflevector <4 x i32> %459, <4 x i32> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  store <4 x i32> %460, <4 x i32>* %__v77_diag2.i
  %461 = load <4 x i32>, <4 x i32>* %__v78_diag3.i
  %462 = shufflevector <4 x i32> %461, <4 x i32> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  store <4 x i32> %462, <4 x i32>* %__v78_diag3.i
  %__v403_lexpr.i = add i64 %__v74_j.i, 60
  %__v404_lexpr.i = add i64 %__v74_j.i, 60
  %__v405_lexpr.i = add i64 %__v74_j.i, 60
  %463 = getelementptr i8, i8* %__v65_m, i64 %__v405_lexpr.i
  %464 = bitcast i8* %463 to i32*
  %465 = load i32, i32* %464
  %466 = load i32, i32* %__v125_inA.i
  %467 = xor i32 %466, %465
  store i32 %467, i32* %__v125_inA.i
  %__v406_lexpr.i = add i64 %__v74_j.i, 44
  %__v407_lexpr.i = add i64 %__v74_j.i, 44
  %__v408_lexpr.i = add i64 %__v74_j.i, 44
  %468 = getelementptr i8, i8* %__v65_m, i64 %__v408_lexpr.i
  %469 = bitcast i8* %468 to i32*
  %470 = load i32, i32* %469
  %471 = load i32, i32* %__v126_inB.i
  %472 = xor i32 %471, %470
  store i32 %472, i32* %__v126_inB.i
  %__v409_lexpr.i = add i64 %__v74_j.i, 28
  %__v410_lexpr.i = add i64 %__v74_j.i, 28
  %__v411_lexpr.i = add i64 %__v74_j.i, 28
  %473 = getelementptr i8, i8* %__v65_m, i64 %__v411_lexpr.i
  %474 = bitcast i8* %473 to i32*
  %475 = load i32, i32* %474
  %476 = load i32, i32* %__v127_inC.i
  %477 = xor i32 %476, %475
  store i32 %477, i32* %__v127_inC.i
  %__v412_lexpr.i = add i64 %__v74_j.i, 12
  %__v413_lexpr.i = add i64 %__v74_j.i, 12
  %__v414_lexpr.i = add i64 %__v74_j.i, 12
  %478 = getelementptr i8, i8* %__v65_m, i64 %__v414_lexpr.i
  %479 = bitcast i8* %478 to i32*
  %480 = load i32, i32* %479
  %481 = load i32, i32* %__v128_inD.i
  %482 = xor i32 %481, %480
  store i32 %482, i32* %__v128_inD.i
  %__v415_lexpr.i = add i64 %__v74_j.i, 60
  %__v416_lexpr.i = add i64 %__v74_j.i, 60
  %483 = getelementptr i8, i8* %__v66_c, i64 %__v416_lexpr.i
  %484 = load i32, i32* %__v125_inA.i
  %485 = bitcast i8* %483 to i32*
  store i32 %484, i32* %485
  %__v417_lexpr.i = add i64 %__v74_j.i, 44
  %__v418_lexpr.i = add i64 %__v74_j.i, 44
  %486 = getelementptr i8, i8* %__v66_c, i64 %__v418_lexpr.i
  %487 = load i32, i32* %__v126_inB.i
  %488 = bitcast i8* %486 to i32*
  store i32 %487, i32* %488
  %__v419_lexpr.i = add i64 %__v74_j.i, 28
  %__v420_lexpr.i = add i64 %__v74_j.i, 28
  %489 = getelementptr i8, i8* %__v66_c, i64 %__v420_lexpr.i
  %490 = load i32, i32* %__v127_inC.i
  %491 = bitcast i8* %489 to i32*
  store i32 %490, i32* %491
  %__v421_lexpr.i = add i64 %__v74_j.i, 12
  %__v422_lexpr.i = add i64 %__v74_j.i, 12
  %492 = getelementptr i8, i8* %__v66_c, i64 %__v422_lexpr.i
  %493 = load i32, i32* %__v128_inD.i
  %494 = bitcast i8* %492 to i32*
  store i32 %493, i32* %494
  %495 = getelementptr i32, i32* %__v64_x, i64 8
  %496 = load i32, i32* %495
  %__v129_in8.i = alloca i32
  store i32 %496, i32* %__v129_in8.i
  %497 = getelementptr i32, i32* %__v64_x, i64 13
  %498 = load i32, i32* %497
  %__v130_in9.i = alloca i32
  store i32 %498, i32* %__v130_in9.i
  %499 = load i32, i32* %__v129_in8.i
  %500 = add i32 %499, 1
  store i32 %500, i32* %__v129_in8.i
  %501 = load i32, i32* %__v129_in8.i
  %__m1.i = icmp eq i32 %501, 0
  %502 = load i32, i32* %__v130_in9.i
  %503 = add i32 %502, 1
  %504 = load i32, i32* %__v130_in9.i
  %505 = call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m1.i, i32 %503, i32 %504)
  store i32 %505, i32* %__v130_in9.i
  %__m2.i = xor i1 %__m1.i, true
  %506 = getelementptr i32, i32* %__v64_x, i64 8
  %507 = load i32, i32* %__v129_in8.i
  store i32 %507, i32* %506
  %508 = getelementptr i32, i32* %__v64_x, i64 13
  %509 = load i32, i32* %__v130_in9.i
  store i32 %509, i32* %508
  %510 = add i64 %__v73__j.i, 1
  br label %0

_u1.exit:                                         ; preds = %0
  %511 = udiv i64 %__v322___v65_m_len, 64
  %512 = mul i64 %511, 64
  call void @llvm.stackrestore(i8* %savedstack)
  %__v335_lexpr = sub i64 %__v322___v65_m_len, %512
  %__v336_lexpr = sub i64 %__v322___v65_m_len, %512
  %__v337_lexpr = sub i64 %__v323___v66_c_len, %512
  %__v338_lexpr = sub i64 %__v323___v66_c_len, %512
  %513 = getelementptr i8, i8* %__v65_m, i64 %512
  %514 = getelementptr i8, i8* %__v66_c, i64 %512
  %savedstack2 = call i8* @llvm.stacksave()
  store i1 true, i1* %__rctx.i1
  %515 = icmp ugt i64 %__v336_lexpr, 0
  br i1 %515, label %516, label %529

; <label>:516:                                    ; preds = %_u1.exit
  %517 = bitcast i32* %__v64_x to <4 x i32>*
  %518 = load <4 x i32>, <4 x i32>* %517
  %__v135_diag0.i = alloca <4 x i32>
  store <4 x i32> %518, <4 x i32>* %__v135_diag0.i
  %519 = getelementptr i32, i32* %__v64_x, i64 4
  %520 = bitcast i32* %519 to <4 x i32>*
  %521 = load <4 x i32>, <4 x i32>* %520
  %__v136_diag1.i = alloca <4 x i32>
  store <4 x i32> %521, <4 x i32>* %__v136_diag1.i
  %522 = getelementptr i32, i32* %__v64_x, i64 8
  %523 = bitcast i32* %522 to <4 x i32>*
  %524 = load <4 x i32>, <4 x i32>* %523
  %__v137_diag2.i = alloca <4 x i32>
  store <4 x i32> %524, <4 x i32>* %__v137_diag2.i
  %525 = getelementptr i32, i32* %__v64_x, i64 12
  %526 = bitcast i32* %525 to <4 x i32>*
  %527 = load <4 x i32>, <4 x i32>* %526
  %__v138_diag3.i = alloca <4 x i32>
  store <4 x i32> %527, <4 x i32>* %__v138_diag3.i
  %528 = load <4 x i32>, <4 x i32>* %__v136_diag1.i
  %__v139_a0.i = alloca <4 x i32>
  store <4 x i32> %528, <4 x i32>* %__v139_a0.i
  br label %530

; <label>:529:                                    ; preds = %_u1.exit
  br label %_u0.exit

; <label>:530:                                    ; preds = %532, %516
  %__v140__i.i = phi i32 [ 0, %516 ], [ %797, %532 ]
  %531 = icmp ult i32 %__v140__i.i, 5
  br i1 %531, label %532, label %798

; <label>:532:                                    ; preds = %530
  %__v141_i.i = mul i32 %__v140__i.i, 4
  %533 = load <4 x i32>, <4 x i32>* %__v139_a0.i
  %534 = load <4 x i32>, <4 x i32>* %__v135_diag0.i
  %535 = add <4 x i32> %533, %534
  store <4 x i32> %535, <4 x i32>* %__v139_a0.i
  %536 = load <4 x i32>, <4 x i32>* %__v135_diag0.i
  %__v142_a1.i = alloca <4 x i32>
  store <4 x i32> %536, <4 x i32>* %__v142_a1.i
  %537 = load <4 x i32>, <4 x i32>* %__v139_a0.i
  %__v143_b0.i = alloca <4 x i32>
  store <4 x i32> %537, <4 x i32>* %__v143_b0.i
  %538 = load <4 x i32>, <4 x i32>* %__v139_a0.i
  %539 = shl <4 x i32> %538, <i32 7, i32 7, i32 7, i32 7>
  store <4 x i32> %539, <4 x i32>* %__v139_a0.i
  %540 = load <4 x i32>, <4 x i32>* %__v143_b0.i
  %541 = lshr <4 x i32> %540, <i32 25, i32 25, i32 25, i32 25>
  store <4 x i32> %541, <4 x i32>* %__v143_b0.i
  %542 = load <4 x i32>, <4 x i32>* %__v138_diag3.i
  %543 = load <4 x i32>, <4 x i32>* %__v139_a0.i
  %544 = xor <4 x i32> %542, %543
  store <4 x i32> %544, <4 x i32>* %__v138_diag3.i
  %545 = load <4 x i32>, <4 x i32>* %__v138_diag3.i
  %546 = load <4 x i32>, <4 x i32>* %__v143_b0.i
  %547 = xor <4 x i32> %545, %546
  store <4 x i32> %547, <4 x i32>* %__v138_diag3.i
  %548 = load <4 x i32>, <4 x i32>* %__v142_a1.i
  %549 = load <4 x i32>, <4 x i32>* %__v138_diag3.i
  %550 = add <4 x i32> %548, %549
  store <4 x i32> %550, <4 x i32>* %__v142_a1.i
  %551 = load <4 x i32>, <4 x i32>* %__v138_diag3.i
  %__v144_a2.i = alloca <4 x i32>
  store <4 x i32> %551, <4 x i32>* %__v144_a2.i
  %552 = load <4 x i32>, <4 x i32>* %__v142_a1.i
  %__v145_b1.i = alloca <4 x i32>
  store <4 x i32> %552, <4 x i32>* %__v145_b1.i
  %553 = load <4 x i32>, <4 x i32>* %__v142_a1.i
  %554 = shl <4 x i32> %553, <i32 9, i32 9, i32 9, i32 9>
  store <4 x i32> %554, <4 x i32>* %__v142_a1.i
  %555 = load <4 x i32>, <4 x i32>* %__v145_b1.i
  %556 = lshr <4 x i32> %555, <i32 23, i32 23, i32 23, i32 23>
  store <4 x i32> %556, <4 x i32>* %__v145_b1.i
  %557 = load <4 x i32>, <4 x i32>* %__v137_diag2.i
  %558 = load <4 x i32>, <4 x i32>* %__v142_a1.i
  %559 = xor <4 x i32> %557, %558
  store <4 x i32> %559, <4 x i32>* %__v137_diag2.i
  %560 = load <4 x i32>, <4 x i32>* %__v138_diag3.i
  %561 = shufflevector <4 x i32> %560, <4 x i32> undef, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  store <4 x i32> %561, <4 x i32>* %__v138_diag3.i
  %562 = load <4 x i32>, <4 x i32>* %__v137_diag2.i
  %563 = load <4 x i32>, <4 x i32>* %__v145_b1.i
  %564 = xor <4 x i32> %562, %563
  store <4 x i32> %564, <4 x i32>* %__v137_diag2.i
  %565 = load <4 x i32>, <4 x i32>* %__v144_a2.i
  %566 = load <4 x i32>, <4 x i32>* %__v137_diag2.i
  %567 = add <4 x i32> %565, %566
  store <4 x i32> %567, <4 x i32>* %__v144_a2.i
  %568 = load <4 x i32>, <4 x i32>* %__v137_diag2.i
  %__v146_a3.i = alloca <4 x i32>
  store <4 x i32> %568, <4 x i32>* %__v146_a3.i
  %569 = load <4 x i32>, <4 x i32>* %__v144_a2.i
  %__v147_b2.i = alloca <4 x i32>
  store <4 x i32> %569, <4 x i32>* %__v147_b2.i
  %570 = load <4 x i32>, <4 x i32>* %__v144_a2.i
  %571 = shl <4 x i32> %570, <i32 13, i32 13, i32 13, i32 13>
  store <4 x i32> %571, <4 x i32>* %__v144_a2.i
  %572 = load <4 x i32>, <4 x i32>* %__v147_b2.i
  %573 = lshr <4 x i32> %572, <i32 19, i32 19, i32 19, i32 19>
  store <4 x i32> %573, <4 x i32>* %__v147_b2.i
  %574 = load <4 x i32>, <4 x i32>* %__v136_diag1.i
  %575 = load <4 x i32>, <4 x i32>* %__v144_a2.i
  %576 = xor <4 x i32> %574, %575
  store <4 x i32> %576, <4 x i32>* %__v136_diag1.i
  %577 = load <4 x i32>, <4 x i32>* %__v137_diag2.i
  %578 = shufflevector <4 x i32> %577, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %578, <4 x i32>* %__v137_diag2.i
  %579 = load <4 x i32>, <4 x i32>* %__v136_diag1.i
  %580 = load <4 x i32>, <4 x i32>* %__v147_b2.i
  %581 = xor <4 x i32> %579, %580
  store <4 x i32> %581, <4 x i32>* %__v136_diag1.i
  %582 = load <4 x i32>, <4 x i32>* %__v146_a3.i
  %583 = load <4 x i32>, <4 x i32>* %__v136_diag1.i
  %584 = add <4 x i32> %582, %583
  store <4 x i32> %584, <4 x i32>* %__v146_a3.i
  %585 = load <4 x i32>, <4 x i32>* %__v138_diag3.i
  %__v148_a4.i = alloca <4 x i32>
  store <4 x i32> %585, <4 x i32>* %__v148_a4.i
  %586 = load <4 x i32>, <4 x i32>* %__v146_a3.i
  %__v149_b3.i = alloca <4 x i32>
  store <4 x i32> %586, <4 x i32>* %__v149_b3.i
  %587 = load <4 x i32>, <4 x i32>* %__v146_a3.i
  %588 = shl <4 x i32> %587, <i32 18, i32 18, i32 18, i32 18>
  store <4 x i32> %588, <4 x i32>* %__v146_a3.i
  %589 = load <4 x i32>, <4 x i32>* %__v149_b3.i
  %590 = lshr <4 x i32> %589, <i32 14, i32 14, i32 14, i32 14>
  store <4 x i32> %590, <4 x i32>* %__v149_b3.i
  %591 = load <4 x i32>, <4 x i32>* %__v135_diag0.i
  %592 = load <4 x i32>, <4 x i32>* %__v146_a3.i
  %593 = xor <4 x i32> %591, %592
  store <4 x i32> %593, <4 x i32>* %__v135_diag0.i
  %594 = load <4 x i32>, <4 x i32>* %__v136_diag1.i
  %595 = shufflevector <4 x i32> %594, <4 x i32> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  store <4 x i32> %595, <4 x i32>* %__v136_diag1.i
  %596 = load <4 x i32>, <4 x i32>* %__v135_diag0.i
  %597 = load <4 x i32>, <4 x i32>* %__v149_b3.i
  %598 = xor <4 x i32> %596, %597
  store <4 x i32> %598, <4 x i32>* %__v135_diag0.i
  %599 = load <4 x i32>, <4 x i32>* %__v148_a4.i
  %600 = load <4 x i32>, <4 x i32>* %__v135_diag0.i
  %601 = add <4 x i32> %599, %600
  store <4 x i32> %601, <4 x i32>* %__v148_a4.i
  %602 = load <4 x i32>, <4 x i32>* %__v135_diag0.i
  %__v150_a5.i = alloca <4 x i32>
  store <4 x i32> %602, <4 x i32>* %__v150_a5.i
  %603 = load <4 x i32>, <4 x i32>* %__v148_a4.i
  %__v151_b4.i = alloca <4 x i32>
  store <4 x i32> %603, <4 x i32>* %__v151_b4.i
  %604 = load <4 x i32>, <4 x i32>* %__v148_a4.i
  %605 = shl <4 x i32> %604, <i32 7, i32 7, i32 7, i32 7>
  store <4 x i32> %605, <4 x i32>* %__v148_a4.i
  %606 = load <4 x i32>, <4 x i32>* %__v151_b4.i
  %607 = lshr <4 x i32> %606, <i32 25, i32 25, i32 25, i32 25>
  store <4 x i32> %607, <4 x i32>* %__v151_b4.i
  %608 = load <4 x i32>, <4 x i32>* %__v136_diag1.i
  %609 = load <4 x i32>, <4 x i32>* %__v148_a4.i
  %610 = xor <4 x i32> %608, %609
  store <4 x i32> %610, <4 x i32>* %__v136_diag1.i
  %611 = load <4 x i32>, <4 x i32>* %__v136_diag1.i
  %612 = load <4 x i32>, <4 x i32>* %__v151_b4.i
  %613 = xor <4 x i32> %611, %612
  store <4 x i32> %613, <4 x i32>* %__v136_diag1.i
  %614 = load <4 x i32>, <4 x i32>* %__v150_a5.i
  %615 = load <4 x i32>, <4 x i32>* %__v136_diag1.i
  %616 = add <4 x i32> %614, %615
  store <4 x i32> %616, <4 x i32>* %__v150_a5.i
  %617 = load <4 x i32>, <4 x i32>* %__v136_diag1.i
  %__v152_a6.i = alloca <4 x i32>
  store <4 x i32> %617, <4 x i32>* %__v152_a6.i
  %618 = load <4 x i32>, <4 x i32>* %__v150_a5.i
  %__v153_b5.i = alloca <4 x i32>
  store <4 x i32> %618, <4 x i32>* %__v153_b5.i
  %619 = load <4 x i32>, <4 x i32>* %__v150_a5.i
  %620 = shl <4 x i32> %619, <i32 9, i32 9, i32 9, i32 9>
  store <4 x i32> %620, <4 x i32>* %__v150_a5.i
  %621 = load <4 x i32>, <4 x i32>* %__v153_b5.i
  %622 = lshr <4 x i32> %621, <i32 23, i32 23, i32 23, i32 23>
  store <4 x i32> %622, <4 x i32>* %__v153_b5.i
  %623 = load <4 x i32>, <4 x i32>* %__v137_diag2.i
  %624 = load <4 x i32>, <4 x i32>* %__v150_a5.i
  %625 = xor <4 x i32> %623, %624
  store <4 x i32> %625, <4 x i32>* %__v137_diag2.i
  %626 = load <4 x i32>, <4 x i32>* %__v136_diag1.i
  %627 = shufflevector <4 x i32> %626, <4 x i32> undef, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  store <4 x i32> %627, <4 x i32>* %__v136_diag1.i
  %628 = load <4 x i32>, <4 x i32>* %__v137_diag2.i
  %629 = load <4 x i32>, <4 x i32>* %__v153_b5.i
  %630 = xor <4 x i32> %628, %629
  store <4 x i32> %630, <4 x i32>* %__v137_diag2.i
  %631 = load <4 x i32>, <4 x i32>* %__v152_a6.i
  %632 = load <4 x i32>, <4 x i32>* %__v137_diag2.i
  %633 = add <4 x i32> %631, %632
  store <4 x i32> %633, <4 x i32>* %__v152_a6.i
  %634 = load <4 x i32>, <4 x i32>* %__v137_diag2.i
  %__v154_a7.i = alloca <4 x i32>
  store <4 x i32> %634, <4 x i32>* %__v154_a7.i
  %635 = load <4 x i32>, <4 x i32>* %__v152_a6.i
  %__v155_b6.i = alloca <4 x i32>
  store <4 x i32> %635, <4 x i32>* %__v155_b6.i
  %636 = load <4 x i32>, <4 x i32>* %__v152_a6.i
  %637 = shl <4 x i32> %636, <i32 13, i32 13, i32 13, i32 13>
  store <4 x i32> %637, <4 x i32>* %__v152_a6.i
  %638 = load <4 x i32>, <4 x i32>* %__v155_b6.i
  %639 = lshr <4 x i32> %638, <i32 19, i32 19, i32 19, i32 19>
  store <4 x i32> %639, <4 x i32>* %__v155_b6.i
  %640 = load <4 x i32>, <4 x i32>* %__v138_diag3.i
  %641 = load <4 x i32>, <4 x i32>* %__v152_a6.i
  %642 = xor <4 x i32> %640, %641
  store <4 x i32> %642, <4 x i32>* %__v138_diag3.i
  %643 = load <4 x i32>, <4 x i32>* %__v137_diag2.i
  %644 = shufflevector <4 x i32> %643, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %644, <4 x i32>* %__v137_diag2.i
  %645 = load <4 x i32>, <4 x i32>* %__v138_diag3.i
  %646 = load <4 x i32>, <4 x i32>* %__v155_b6.i
  %647 = xor <4 x i32> %645, %646
  store <4 x i32> %647, <4 x i32>* %__v138_diag3.i
  %648 = load <4 x i32>, <4 x i32>* %__v154_a7.i
  %649 = load <4 x i32>, <4 x i32>* %__v138_diag3.i
  %650 = add <4 x i32> %648, %649
  store <4 x i32> %650, <4 x i32>* %__v154_a7.i
  %651 = load <4 x i32>, <4 x i32>* %__v136_diag1.i
  store <4 x i32> %651, <4 x i32>* %__v139_a0.i
  %652 = load <4 x i32>, <4 x i32>* %__v154_a7.i
  %__v156_b7.i = alloca <4 x i32>
  store <4 x i32> %652, <4 x i32>* %__v156_b7.i
  %653 = load <4 x i32>, <4 x i32>* %__v154_a7.i
  %654 = shl <4 x i32> %653, <i32 18, i32 18, i32 18, i32 18>
  store <4 x i32> %654, <4 x i32>* %__v154_a7.i
  %655 = load <4 x i32>, <4 x i32>* %__v156_b7.i
  %656 = lshr <4 x i32> %655, <i32 14, i32 14, i32 14, i32 14>
  store <4 x i32> %656, <4 x i32>* %__v156_b7.i
  %657 = load <4 x i32>, <4 x i32>* %__v135_diag0.i
  %658 = load <4 x i32>, <4 x i32>* %__v154_a7.i
  %659 = xor <4 x i32> %657, %658
  store <4 x i32> %659, <4 x i32>* %__v135_diag0.i
  %660 = load <4 x i32>, <4 x i32>* %__v138_diag3.i
  %661 = shufflevector <4 x i32> %660, <4 x i32> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  store <4 x i32> %661, <4 x i32>* %__v138_diag3.i
  %662 = load <4 x i32>, <4 x i32>* %__v135_diag0.i
  %663 = load <4 x i32>, <4 x i32>* %__v156_b7.i
  %664 = xor <4 x i32> %662, %663
  store <4 x i32> %664, <4 x i32>* %__v135_diag0.i
  %665 = load <4 x i32>, <4 x i32>* %__v139_a0.i
  %666 = load <4 x i32>, <4 x i32>* %__v135_diag0.i
  %667 = add <4 x i32> %665, %666
  store <4 x i32> %667, <4 x i32>* %__v139_a0.i
  %668 = load <4 x i32>, <4 x i32>* %__v135_diag0.i
  store <4 x i32> %668, <4 x i32>* %__v142_a1.i
  %669 = load <4 x i32>, <4 x i32>* %__v139_a0.i
  store <4 x i32> %669, <4 x i32>* %__v143_b0.i
  %670 = load <4 x i32>, <4 x i32>* %__v139_a0.i
  %671 = shl <4 x i32> %670, <i32 7, i32 7, i32 7, i32 7>
  store <4 x i32> %671, <4 x i32>* %__v139_a0.i
  %672 = load <4 x i32>, <4 x i32>* %__v143_b0.i
  %673 = lshr <4 x i32> %672, <i32 25, i32 25, i32 25, i32 25>
  store <4 x i32> %673, <4 x i32>* %__v143_b0.i
  %674 = load <4 x i32>, <4 x i32>* %__v138_diag3.i
  %675 = load <4 x i32>, <4 x i32>* %__v139_a0.i
  %676 = xor <4 x i32> %674, %675
  store <4 x i32> %676, <4 x i32>* %__v138_diag3.i
  %677 = load <4 x i32>, <4 x i32>* %__v138_diag3.i
  %678 = load <4 x i32>, <4 x i32>* %__v143_b0.i
  %679 = xor <4 x i32> %677, %678
  store <4 x i32> %679, <4 x i32>* %__v138_diag3.i
  %680 = load <4 x i32>, <4 x i32>* %__v142_a1.i
  %681 = load <4 x i32>, <4 x i32>* %__v138_diag3.i
  %682 = add <4 x i32> %680, %681
  store <4 x i32> %682, <4 x i32>* %__v142_a1.i
  %683 = load <4 x i32>, <4 x i32>* %__v138_diag3.i
  store <4 x i32> %683, <4 x i32>* %__v144_a2.i
  %684 = load <4 x i32>, <4 x i32>* %__v142_a1.i
  store <4 x i32> %684, <4 x i32>* %__v145_b1.i
  %685 = load <4 x i32>, <4 x i32>* %__v142_a1.i
  %686 = shl <4 x i32> %685, <i32 9, i32 9, i32 9, i32 9>
  store <4 x i32> %686, <4 x i32>* %__v142_a1.i
  %687 = load <4 x i32>, <4 x i32>* %__v145_b1.i
  %688 = lshr <4 x i32> %687, <i32 23, i32 23, i32 23, i32 23>
  store <4 x i32> %688, <4 x i32>* %__v145_b1.i
  %689 = load <4 x i32>, <4 x i32>* %__v137_diag2.i
  %690 = load <4 x i32>, <4 x i32>* %__v142_a1.i
  %691 = xor <4 x i32> %689, %690
  store <4 x i32> %691, <4 x i32>* %__v137_diag2.i
  %692 = load <4 x i32>, <4 x i32>* %__v138_diag3.i
  %693 = shufflevector <4 x i32> %692, <4 x i32> undef, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  store <4 x i32> %693, <4 x i32>* %__v138_diag3.i
  %694 = load <4 x i32>, <4 x i32>* %__v137_diag2.i
  %695 = load <4 x i32>, <4 x i32>* %__v145_b1.i
  %696 = xor <4 x i32> %694, %695
  store <4 x i32> %696, <4 x i32>* %__v137_diag2.i
  %697 = load <4 x i32>, <4 x i32>* %__v144_a2.i
  %698 = load <4 x i32>, <4 x i32>* %__v137_diag2.i
  %699 = add <4 x i32> %697, %698
  store <4 x i32> %699, <4 x i32>* %__v144_a2.i
  %700 = load <4 x i32>, <4 x i32>* %__v137_diag2.i
  store <4 x i32> %700, <4 x i32>* %__v146_a3.i
  %701 = load <4 x i32>, <4 x i32>* %__v144_a2.i
  store <4 x i32> %701, <4 x i32>* %__v147_b2.i
  %702 = load <4 x i32>, <4 x i32>* %__v144_a2.i
  %703 = shl <4 x i32> %702, <i32 13, i32 13, i32 13, i32 13>
  store <4 x i32> %703, <4 x i32>* %__v144_a2.i
  %704 = load <4 x i32>, <4 x i32>* %__v147_b2.i
  %705 = lshr <4 x i32> %704, <i32 19, i32 19, i32 19, i32 19>
  store <4 x i32> %705, <4 x i32>* %__v147_b2.i
  %706 = load <4 x i32>, <4 x i32>* %__v136_diag1.i
  %707 = load <4 x i32>, <4 x i32>* %__v144_a2.i
  %708 = xor <4 x i32> %706, %707
  store <4 x i32> %708, <4 x i32>* %__v136_diag1.i
  %709 = load <4 x i32>, <4 x i32>* %__v137_diag2.i
  %710 = shufflevector <4 x i32> %709, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %710, <4 x i32>* %__v137_diag2.i
  %711 = load <4 x i32>, <4 x i32>* %__v136_diag1.i
  %712 = load <4 x i32>, <4 x i32>* %__v147_b2.i
  %713 = xor <4 x i32> %711, %712
  store <4 x i32> %713, <4 x i32>* %__v136_diag1.i
  %714 = load <4 x i32>, <4 x i32>* %__v146_a3.i
  %715 = load <4 x i32>, <4 x i32>* %__v136_diag1.i
  %716 = add <4 x i32> %714, %715
  store <4 x i32> %716, <4 x i32>* %__v146_a3.i
  %717 = load <4 x i32>, <4 x i32>* %__v138_diag3.i
  store <4 x i32> %717, <4 x i32>* %__v148_a4.i
  %718 = load <4 x i32>, <4 x i32>* %__v146_a3.i
  store <4 x i32> %718, <4 x i32>* %__v149_b3.i
  %719 = load <4 x i32>, <4 x i32>* %__v146_a3.i
  %720 = shl <4 x i32> %719, <i32 18, i32 18, i32 18, i32 18>
  store <4 x i32> %720, <4 x i32>* %__v146_a3.i
  %721 = load <4 x i32>, <4 x i32>* %__v149_b3.i
  %722 = lshr <4 x i32> %721, <i32 14, i32 14, i32 14, i32 14>
  store <4 x i32> %722, <4 x i32>* %__v149_b3.i
  %723 = load <4 x i32>, <4 x i32>* %__v135_diag0.i
  %724 = load <4 x i32>, <4 x i32>* %__v146_a3.i
  %725 = xor <4 x i32> %723, %724
  store <4 x i32> %725, <4 x i32>* %__v135_diag0.i
  %726 = load <4 x i32>, <4 x i32>* %__v136_diag1.i
  %727 = shufflevector <4 x i32> %726, <4 x i32> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  store <4 x i32> %727, <4 x i32>* %__v136_diag1.i
  %728 = load <4 x i32>, <4 x i32>* %__v135_diag0.i
  %729 = load <4 x i32>, <4 x i32>* %__v149_b3.i
  %730 = xor <4 x i32> %728, %729
  store <4 x i32> %730, <4 x i32>* %__v135_diag0.i
  %731 = load <4 x i32>, <4 x i32>* %__v148_a4.i
  %732 = load <4 x i32>, <4 x i32>* %__v135_diag0.i
  %733 = add <4 x i32> %731, %732
  store <4 x i32> %733, <4 x i32>* %__v148_a4.i
  %734 = load <4 x i32>, <4 x i32>* %__v135_diag0.i
  store <4 x i32> %734, <4 x i32>* %__v150_a5.i
  %735 = load <4 x i32>, <4 x i32>* %__v148_a4.i
  store <4 x i32> %735, <4 x i32>* %__v151_b4.i
  %736 = load <4 x i32>, <4 x i32>* %__v148_a4.i
  %737 = shl <4 x i32> %736, <i32 7, i32 7, i32 7, i32 7>
  store <4 x i32> %737, <4 x i32>* %__v148_a4.i
  %738 = load <4 x i32>, <4 x i32>* %__v151_b4.i
  %739 = lshr <4 x i32> %738, <i32 25, i32 25, i32 25, i32 25>
  store <4 x i32> %739, <4 x i32>* %__v151_b4.i
  %740 = load <4 x i32>, <4 x i32>* %__v136_diag1.i
  %741 = load <4 x i32>, <4 x i32>* %__v148_a4.i
  %742 = xor <4 x i32> %740, %741
  store <4 x i32> %742, <4 x i32>* %__v136_diag1.i
  %743 = load <4 x i32>, <4 x i32>* %__v136_diag1.i
  %744 = load <4 x i32>, <4 x i32>* %__v151_b4.i
  %745 = xor <4 x i32> %743, %744
  store <4 x i32> %745, <4 x i32>* %__v136_diag1.i
  %746 = load <4 x i32>, <4 x i32>* %__v150_a5.i
  %747 = load <4 x i32>, <4 x i32>* %__v136_diag1.i
  %748 = add <4 x i32> %746, %747
  store <4 x i32> %748, <4 x i32>* %__v150_a5.i
  %749 = load <4 x i32>, <4 x i32>* %__v136_diag1.i
  store <4 x i32> %749, <4 x i32>* %__v152_a6.i
  %750 = load <4 x i32>, <4 x i32>* %__v150_a5.i
  store <4 x i32> %750, <4 x i32>* %__v153_b5.i
  %751 = load <4 x i32>, <4 x i32>* %__v150_a5.i
  %752 = shl <4 x i32> %751, <i32 9, i32 9, i32 9, i32 9>
  store <4 x i32> %752, <4 x i32>* %__v150_a5.i
  %753 = load <4 x i32>, <4 x i32>* %__v153_b5.i
  %754 = lshr <4 x i32> %753, <i32 23, i32 23, i32 23, i32 23>
  store <4 x i32> %754, <4 x i32>* %__v153_b5.i
  %755 = load <4 x i32>, <4 x i32>* %__v137_diag2.i
  %756 = load <4 x i32>, <4 x i32>* %__v150_a5.i
  %757 = xor <4 x i32> %755, %756
  store <4 x i32> %757, <4 x i32>* %__v137_diag2.i
  %758 = load <4 x i32>, <4 x i32>* %__v136_diag1.i
  %759 = shufflevector <4 x i32> %758, <4 x i32> undef, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  store <4 x i32> %759, <4 x i32>* %__v136_diag1.i
  %760 = load <4 x i32>, <4 x i32>* %__v137_diag2.i
  %761 = load <4 x i32>, <4 x i32>* %__v153_b5.i
  %762 = xor <4 x i32> %760, %761
  store <4 x i32> %762, <4 x i32>* %__v137_diag2.i
  %763 = load <4 x i32>, <4 x i32>* %__v152_a6.i
  %764 = load <4 x i32>, <4 x i32>* %__v137_diag2.i
  %765 = add <4 x i32> %763, %764
  store <4 x i32> %765, <4 x i32>* %__v152_a6.i
  %766 = load <4 x i32>, <4 x i32>* %__v137_diag2.i
  store <4 x i32> %766, <4 x i32>* %__v154_a7.i
  %767 = load <4 x i32>, <4 x i32>* %__v152_a6.i
  store <4 x i32> %767, <4 x i32>* %__v155_b6.i
  %768 = load <4 x i32>, <4 x i32>* %__v152_a6.i
  %769 = shl <4 x i32> %768, <i32 13, i32 13, i32 13, i32 13>
  store <4 x i32> %769, <4 x i32>* %__v152_a6.i
  %770 = load <4 x i32>, <4 x i32>* %__v155_b6.i
  %771 = lshr <4 x i32> %770, <i32 19, i32 19, i32 19, i32 19>
  store <4 x i32> %771, <4 x i32>* %__v155_b6.i
  %772 = load <4 x i32>, <4 x i32>* %__v138_diag3.i
  %773 = load <4 x i32>, <4 x i32>* %__v152_a6.i
  %774 = xor <4 x i32> %772, %773
  store <4 x i32> %774, <4 x i32>* %__v138_diag3.i
  %775 = load <4 x i32>, <4 x i32>* %__v137_diag2.i
  %776 = shufflevector <4 x i32> %775, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %776, <4 x i32>* %__v137_diag2.i
  %777 = load <4 x i32>, <4 x i32>* %__v138_diag3.i
  %778 = load <4 x i32>, <4 x i32>* %__v155_b6.i
  %779 = xor <4 x i32> %777, %778
  store <4 x i32> %779, <4 x i32>* %__v138_diag3.i
  %780 = load <4 x i32>, <4 x i32>* %__v154_a7.i
  %781 = load <4 x i32>, <4 x i32>* %__v138_diag3.i
  %782 = add <4 x i32> %780, %781
  store <4 x i32> %782, <4 x i32>* %__v154_a7.i
  %783 = load <4 x i32>, <4 x i32>* %__v136_diag1.i
  store <4 x i32> %783, <4 x i32>* %__v139_a0.i
  %784 = load <4 x i32>, <4 x i32>* %__v154_a7.i
  store <4 x i32> %784, <4 x i32>* %__v156_b7.i
  %785 = load <4 x i32>, <4 x i32>* %__v154_a7.i
  %786 = shl <4 x i32> %785, <i32 18, i32 18, i32 18, i32 18>
  store <4 x i32> %786, <4 x i32>* %__v154_a7.i
  %787 = load <4 x i32>, <4 x i32>* %__v156_b7.i
  %788 = lshr <4 x i32> %787, <i32 14, i32 14, i32 14, i32 14>
  store <4 x i32> %788, <4 x i32>* %__v156_b7.i
  %789 = load <4 x i32>, <4 x i32>* %__v135_diag0.i
  %790 = load <4 x i32>, <4 x i32>* %__v154_a7.i
  %791 = xor <4 x i32> %789, %790
  store <4 x i32> %791, <4 x i32>* %__v135_diag0.i
  %792 = load <4 x i32>, <4 x i32>* %__v138_diag3.i
  %793 = shufflevector <4 x i32> %792, <4 x i32> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  store <4 x i32> %793, <4 x i32>* %__v138_diag3.i
  %794 = load <4 x i32>, <4 x i32>* %__v135_diag0.i
  %795 = load <4 x i32>, <4 x i32>* %__v156_b7.i
  %796 = xor <4 x i32> %794, %795
  store <4 x i32> %796, <4 x i32>* %__v135_diag0.i
  %797 = add i32 %__v140__i.i, 1
  br label %530

; <label>:798:                                    ; preds = %530
  %799 = bitcast i32* %__v64_x to <4 x i32>*
  %800 = load <4 x i32>, <4 x i32>* %799
  %801 = load <4 x i32>, <4 x i32>* %__v135_diag0.i
  %802 = add <4 x i32> %801, %800
  store <4 x i32> %802, <4 x i32>* %__v135_diag0.i
  %803 = getelementptr i32, i32* %__v64_x, i64 4
  %804 = bitcast i32* %803 to <4 x i32>*
  %805 = load <4 x i32>, <4 x i32>* %804
  %806 = load <4 x i32>, <4 x i32>* %__v136_diag1.i
  %807 = add <4 x i32> %806, %805
  store <4 x i32> %807, <4 x i32>* %__v136_diag1.i
  %808 = getelementptr i32, i32* %__v64_x, i64 8
  %809 = bitcast i32* %808 to <4 x i32>*
  %810 = load <4 x i32>, <4 x i32>* %809
  %811 = load <4 x i32>, <4 x i32>* %__v137_diag2.i
  %812 = add <4 x i32> %811, %810
  store <4 x i32> %812, <4 x i32>* %__v137_diag2.i
  %813 = getelementptr i32, i32* %__v64_x, i64 12
  %814 = bitcast i32* %813 to <4 x i32>*
  %815 = load <4 x i32>, <4 x i32>* %814
  %816 = load <4 x i32>, <4 x i32>* %__v138_diag3.i
  %817 = add <4 x i32> %816, %815
  store <4 x i32> %817, <4 x i32>* %__v138_diag3.i
  %__v157_partialblock.i = alloca i8, i64 64
  call void @llvm.memset.p0i8.i64(i8* %__v157_partialblock.i, i8 0, i64 64, i32 1, i1 false)
  %818 = load <4 x i32>, <4 x i32>* %__v135_diag0.i
  %__v158_inA.i = extractelement <4 x i32> %818, i32 0
  %819 = load <4 x i32>, <4 x i32>* %__v136_diag1.i
  %__v159_inB.i = extractelement <4 x i32> %819, i32 0
  %820 = load <4 x i32>, <4 x i32>* %__v137_diag2.i
  %__v160_inC.i = extractelement <4 x i32> %820, i32 0
  %821 = load <4 x i32>, <4 x i32>* %__v138_diag3.i
  %__v161_inD.i = extractelement <4 x i32> %821, i32 0
  %822 = load <4 x i32>, <4 x i32>* %__v135_diag0.i
  %823 = shufflevector <4 x i32> %822, <4 x i32> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  store <4 x i32> %823, <4 x i32>* %__v135_diag0.i
  %824 = load <4 x i32>, <4 x i32>* %__v136_diag1.i
  %825 = shufflevector <4 x i32> %824, <4 x i32> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  store <4 x i32> %825, <4 x i32>* %__v136_diag1.i
  %826 = load <4 x i32>, <4 x i32>* %__v137_diag2.i
  %827 = shufflevector <4 x i32> %826, <4 x i32> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  store <4 x i32> %827, <4 x i32>* %__v137_diag2.i
  %828 = load <4 x i32>, <4 x i32>* %__v138_diag3.i
  %829 = shufflevector <4 x i32> %828, <4 x i32> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  store <4 x i32> %829, <4 x i32>* %__v138_diag3.i
  %830 = bitcast i8* %__v157_partialblock.i to i32*
  store i32 %__v158_inA.i, i32* %830
  %831 = getelementptr i8, i8* %__v157_partialblock.i, i64 48
  %832 = bitcast i8* %831 to i32*
  store i32 %__v159_inB.i, i32* %832
  %833 = getelementptr i8, i8* %__v157_partialblock.i, i64 32
  %834 = bitcast i8* %833 to i32*
  store i32 %__v160_inC.i, i32* %834
  %835 = getelementptr i8, i8* %__v157_partialblock.i, i64 16
  %836 = bitcast i8* %835 to i32*
  store i32 %__v161_inD.i, i32* %836
  %837 = load <4 x i32>, <4 x i32>* %__v135_diag0.i
  %__v162_inA.i = extractelement <4 x i32> %837, i32 0
  %838 = load <4 x i32>, <4 x i32>* %__v136_diag1.i
  %__v163_inB.i = extractelement <4 x i32> %838, i32 0
  %839 = load <4 x i32>, <4 x i32>* %__v137_diag2.i
  %__v164_inC.i = extractelement <4 x i32> %839, i32 0
  %840 = load <4 x i32>, <4 x i32>* %__v138_diag3.i
  %__v165_inD.i = extractelement <4 x i32> %840, i32 0
  %841 = load <4 x i32>, <4 x i32>* %__v135_diag0.i
  %842 = shufflevector <4 x i32> %841, <4 x i32> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  store <4 x i32> %842, <4 x i32>* %__v135_diag0.i
  %843 = load <4 x i32>, <4 x i32>* %__v136_diag1.i
  %844 = shufflevector <4 x i32> %843, <4 x i32> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  store <4 x i32> %844, <4 x i32>* %__v136_diag1.i
  %845 = load <4 x i32>, <4 x i32>* %__v137_diag2.i
  %846 = shufflevector <4 x i32> %845, <4 x i32> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  store <4 x i32> %846, <4 x i32>* %__v137_diag2.i
  %847 = load <4 x i32>, <4 x i32>* %__v138_diag3.i
  %848 = shufflevector <4 x i32> %847, <4 x i32> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  store <4 x i32> %848, <4 x i32>* %__v138_diag3.i
  %849 = getelementptr i8, i8* %__v157_partialblock.i, i64 20
  %850 = bitcast i8* %849 to i32*
  store i32 %__v162_inA.i, i32* %850
  %851 = getelementptr i8, i8* %__v157_partialblock.i, i64 4
  %852 = bitcast i8* %851 to i32*
  store i32 %__v163_inB.i, i32* %852
  %853 = getelementptr i8, i8* %__v157_partialblock.i, i64 52
  %854 = bitcast i8* %853 to i32*
  store i32 %__v164_inC.i, i32* %854
  %855 = getelementptr i8, i8* %__v157_partialblock.i, i64 36
  %856 = bitcast i8* %855 to i32*
  store i32 %__v165_inD.i, i32* %856
  %857 = load <4 x i32>, <4 x i32>* %__v135_diag0.i
  %__v166_inA.i = extractelement <4 x i32> %857, i32 0
  %858 = load <4 x i32>, <4 x i32>* %__v136_diag1.i
  %__v167_inB.i = extractelement <4 x i32> %858, i32 0
  %859 = load <4 x i32>, <4 x i32>* %__v137_diag2.i
  %__v168_inC.i = extractelement <4 x i32> %859, i32 0
  %860 = load <4 x i32>, <4 x i32>* %__v138_diag3.i
  %__v169_inD.i = extractelement <4 x i32> %860, i32 0
  %861 = load <4 x i32>, <4 x i32>* %__v135_diag0.i
  %862 = shufflevector <4 x i32> %861, <4 x i32> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  store <4 x i32> %862, <4 x i32>* %__v135_diag0.i
  %863 = load <4 x i32>, <4 x i32>* %__v136_diag1.i
  %864 = shufflevector <4 x i32> %863, <4 x i32> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  store <4 x i32> %864, <4 x i32>* %__v136_diag1.i
  %865 = load <4 x i32>, <4 x i32>* %__v137_diag2.i
  %866 = shufflevector <4 x i32> %865, <4 x i32> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  store <4 x i32> %866, <4 x i32>* %__v137_diag2.i
  %867 = load <4 x i32>, <4 x i32>* %__v138_diag3.i
  %868 = shufflevector <4 x i32> %867, <4 x i32> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  store <4 x i32> %868, <4 x i32>* %__v138_diag3.i
  %869 = getelementptr i8, i8* %__v157_partialblock.i, i64 40
  %870 = bitcast i8* %869 to i32*
  store i32 %__v166_inA.i, i32* %870
  %871 = getelementptr i8, i8* %__v157_partialblock.i, i64 24
  %872 = bitcast i8* %871 to i32*
  store i32 %__v167_inB.i, i32* %872
  %873 = getelementptr i8, i8* %__v157_partialblock.i, i64 8
  %874 = bitcast i8* %873 to i32*
  store i32 %__v168_inC.i, i32* %874
  %875 = getelementptr i8, i8* %__v157_partialblock.i, i64 56
  %876 = bitcast i8* %875 to i32*
  store i32 %__v169_inD.i, i32* %876
  %877 = load <4 x i32>, <4 x i32>* %__v135_diag0.i
  %__v170_inA.i = extractelement <4 x i32> %877, i32 0
  %878 = load <4 x i32>, <4 x i32>* %__v136_diag1.i
  %__v171_inB.i = extractelement <4 x i32> %878, i32 0
  %879 = load <4 x i32>, <4 x i32>* %__v137_diag2.i
  %__v172_inC.i = extractelement <4 x i32> %879, i32 0
  %880 = load <4 x i32>, <4 x i32>* %__v138_diag3.i
  %__v173_inD.i = extractelement <4 x i32> %880, i32 0
  %881 = load <4 x i32>, <4 x i32>* %__v135_diag0.i
  %882 = shufflevector <4 x i32> %881, <4 x i32> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  store <4 x i32> %882, <4 x i32>* %__v135_diag0.i
  %883 = load <4 x i32>, <4 x i32>* %__v136_diag1.i
  %884 = shufflevector <4 x i32> %883, <4 x i32> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  store <4 x i32> %884, <4 x i32>* %__v136_diag1.i
  %885 = load <4 x i32>, <4 x i32>* %__v137_diag2.i
  %886 = shufflevector <4 x i32> %885, <4 x i32> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  store <4 x i32> %886, <4 x i32>* %__v137_diag2.i
  %887 = load <4 x i32>, <4 x i32>* %__v138_diag3.i
  %888 = shufflevector <4 x i32> %887, <4 x i32> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  store <4 x i32> %888, <4 x i32>* %__v138_diag3.i
  %889 = getelementptr i8, i8* %__v157_partialblock.i, i64 60
  %890 = bitcast i8* %889 to i32*
  store i32 %__v170_inA.i, i32* %890
  %891 = getelementptr i8, i8* %__v157_partialblock.i, i64 44
  %892 = bitcast i8* %891 to i32*
  store i32 %__v171_inB.i, i32* %892
  %893 = getelementptr i8, i8* %__v157_partialblock.i, i64 28
  %894 = bitcast i8* %893 to i32*
  store i32 %__v172_inC.i, i32* %894
  %895 = getelementptr i8, i8* %__v157_partialblock.i, i64 12
  %896 = bitcast i8* %895 to i32*
  store i32 %__v173_inD.i, i32* %896
  br label %897

; <label>:897:                                    ; preds = %899, %798
  %__v174_i.i = phi i64 [ 0, %798 ], [ %906, %899 ]
  %898 = icmp ult i64 %__v174_i.i, %__v336_lexpr
  br i1 %898, label %899, label %907

; <label>:899:                                    ; preds = %897
  %900 = getelementptr i8, i8* %514, i64 %__v174_i.i
  %901 = getelementptr i8, i8* %513, i64 %__v174_i.i
  %902 = load i8, i8* %901
  %903 = getelementptr i8, i8* %__v157_partialblock.i, i64 %__v174_i.i
  %904 = load i8, i8* %903
  %905 = xor i8 %902, %904
  store i8 %905, i8* %900
  %906 = add i64 %__v174_i.i, 1
  br label %897

; <label>:907:                                    ; preds = %897
  call void @llvm.memset.p0i8.i64(i8* %__v157_partialblock.i, i8 0, i64 64, i32 1, i1 true)
  br label %_u0.exit

_u0.exit:                                         ; preds = %529, %907
  call void @llvm.stackrestore(i8* %savedstack2)
  ret void
}

define internal void @_salsa20_encrypt_bytes(i32* %__v61_ctx, i8* %__v62_m, i64 %__v320___v62_m_len, i8* %__v63_c, i64 %__v321___v63_c_len) {
entry:
  %__rctx = alloca i1
  store i1 true, i1* %__rctx
  call void @u0(i32* %__v61_ctx, i8* %__v62_m, i64 %__v320___v62_m_len, i8* %__v63_c, i64 %__v321___v63_c_len)
  ret void
}

define internal void @_salsa_ivsetup(i32* %__v58_ctx, i8* %__v59_iv, i8* %__v60_counter) {
entry:
  %__rctx = alloca i1
  store i1 true, i1* %__rctx
  %0 = getelementptr i8, i8* %__v59_iv, i64 0
  %1 = bitcast i8* %0 to i32*
  %2 = load i32, i32* %1
  %3 = getelementptr i32, i32* %__v58_ctx, i64 6
  store i32 %2, i32* %3
  %4 = getelementptr i8, i8* %__v59_iv, i64 4
  %5 = bitcast i8* %4 to i32*
  %6 = load i32, i32* %5
  %7 = getelementptr i32, i32* %__v58_ctx, i64 11
  store i32 %6, i32* %7
  %8 = getelementptr i8, i8* %__v60_counter, i64 0
  %9 = bitcast i8* %8 to i32*
  %10 = load i32, i32* %9
  %11 = getelementptr i32, i32* %__v58_ctx, i64 8
  store i32 %10, i32* %11
  %12 = getelementptr i8, i8* %__v60_counter, i64 4
  %13 = bitcast i8* %12 to i32*
  %14 = load i32, i32* %13
  %15 = getelementptr i32, i32* %__v58_ctx, i64 13
  store i32 %14, i32* %15
  ret void
}

define internal void @_salsa_keysetup(i32* %__v55_ctx, i8* %__v56_k) {
entry:
  %__rctx = alloca i1
  store i1 true, i1* %__rctx
  %__v57_TR = alloca i32, i64 16
  %0 = getelementptr i32, i32* %__v57_TR, i64 0
  store i32 0, i32* %0
  %1 = getelementptr i32, i32* %__v57_TR, i64 1
  store i32 5, i32* %1
  %2 = getelementptr i32, i32* %__v57_TR, i64 2
  store i32 10, i32* %2
  %3 = getelementptr i32, i32* %__v57_TR, i64 3
  store i32 15, i32* %3
  %4 = getelementptr i32, i32* %__v57_TR, i64 4
  store i32 12, i32* %4
  %5 = getelementptr i32, i32* %__v57_TR, i64 5
  store i32 1, i32* %5
  %6 = getelementptr i32, i32* %__v57_TR, i64 6
  store i32 6, i32* %6
  %7 = getelementptr i32, i32* %__v57_TR, i64 7
  store i32 11, i32* %7
  %8 = getelementptr i32, i32* %__v57_TR, i64 8
  store i32 8, i32* %8
  %9 = getelementptr i32, i32* %__v57_TR, i64 9
  store i32 13, i32* %9
  %10 = getelementptr i32, i32* %__v57_TR, i64 10
  store i32 2, i32* %10
  %11 = getelementptr i32, i32* %__v57_TR, i64 11
  store i32 7, i32* %11
  %12 = getelementptr i32, i32* %__v57_TR, i64 12
  store i32 4, i32* %12
  %13 = getelementptr i32, i32* %__v57_TR, i64 13
  store i32 9, i32* %13
  %14 = getelementptr i32, i32* %__v57_TR, i64 14
  store i32 14, i32* %14
  %15 = getelementptr i32, i32* %__v57_TR, i64 15
  store i32 3, i32* %15
  %16 = getelementptr i8, i8* %__v56_k, i64 0
  %17 = bitcast i8* %16 to i32*
  %18 = load i32, i32* %17
  %19 = getelementptr i32, i32* %__v55_ctx, i64 5
  store i32 %18, i32* %19
  %20 = getelementptr i8, i8* %__v56_k, i64 4
  %21 = bitcast i8* %20 to i32*
  %22 = load i32, i32* %21
  %23 = getelementptr i32, i32* %__v55_ctx, i64 10
  store i32 %22, i32* %23
  %24 = getelementptr i8, i8* %__v56_k, i64 8
  %25 = bitcast i8* %24 to i32*
  %26 = load i32, i32* %25
  %27 = getelementptr i32, i32* %__v55_ctx, i64 15
  store i32 %26, i32* %27
  %28 = getelementptr i8, i8* %__v56_k, i64 12
  %29 = bitcast i8* %28 to i32*
  %30 = load i32, i32* %29
  %31 = getelementptr i32, i32* %__v55_ctx, i64 12
  store i32 %30, i32* %31
  %32 = getelementptr i8, i8* %__v56_k, i64 16
  %33 = bitcast i8* %32 to i32*
  %34 = load i32, i32* %33
  %35 = getelementptr i32, i32* %__v55_ctx, i64 7
  store i32 %34, i32* %35
  %36 = getelementptr i8, i8* %__v56_k, i64 20
  %37 = bitcast i8* %36 to i32*
  %38 = load i32, i32* %37
  %39 = getelementptr i32, i32* %__v55_ctx, i64 4
  store i32 %38, i32* %39
  %40 = getelementptr i8, i8* %__v56_k, i64 24
  %41 = bitcast i8* %40 to i32*
  %42 = load i32, i32* %41
  %43 = getelementptr i32, i32* %__v55_ctx, i64 9
  store i32 %42, i32* %43
  %44 = getelementptr i8, i8* %__v56_k, i64 28
  %45 = bitcast i8* %44 to i32*
  %46 = load i32, i32* %45
  %47 = getelementptr i32, i32* %__v55_ctx, i64 14
  store i32 %46, i32* %47
  %48 = getelementptr i32, i32* %__v55_ctx, i64 0
  store i32 1634760805, i32* %48
  %49 = getelementptr i32, i32* %__v55_ctx, i64 1
  store i32 857760878, i32* %49
  %50 = getelementptr i32, i32* %__v55_ctx, i64 2
  store i32 2036477234, i32* %50
  %51 = getelementptr i32, i32* %__v55_ctx, i64 3
  store i32 1797285236, i32* %51
  ret void
}

define internal i32 @_crypto_stream_salsa20_xor_ic(i8* %__v48_c, i64 %__v318___v48_c_len, i8* %__v49_m, i64 %__v319___v49_m_len, i8* %__v50_n, i64 %__v51_ic_val, i8* %__v52_k) {
entry:
  %__rval = alloca i32
  store i32 0, i32* %__rval
  %__rctx = alloca i1
  store i1 true, i1* %__rctx
  %0 = icmp eq i64 %__v319___v49_m_len, 0
  br i1 %0, label %1, label %2

; <label>:1:                                      ; preds = %entry
  ret i32 0

; <label>:2:                                      ; preds = %entry
  br label %3

; <label>:3:                                      ; preds = %2
  %__v53_ic_bytes = alloca i8, i64 8
  call void @llvm.memset.p0i8.i64(i8* %__v53_ic_bytes, i8 0, i64 8, i32 1, i1 false)
  %4 = bitcast i8* %__v53_ic_bytes to i64*
  store i64 %__v51_ic_val, i64* %4
  %__v54_ctx = alloca i32, i64 16
  %5 = bitcast i32* %__v54_ctx to i8*
  call void @llvm.memset.p0i8.i64(i8* %5, i8 0, i64 64, i32 4, i1 false)
  call void @_salsa_keysetup(i32* %__v54_ctx, i8* %__v52_k)
  call void @_salsa_ivsetup(i32* %__v54_ctx, i8* %__v50_n, i8* %__v53_ic_bytes)
  call void @_salsa20_encrypt_bytes(i32* %__v54_ctx, i8* %__v49_m, i64 %__v319___v49_m_len, i8* %__v48_c, i64 %__v318___v48_c_len)
  %6 = bitcast i32* %__v54_ctx to i8*
  call void @llvm.memset.p0i8.i64(i8* %6, i8 0, i64 64, i32 4, i1 true)
  ret i32 0
}

define internal i32 @_crypto_stream_xsalsa20_xor_ic(i8* %__v40_c, i64 %__v316___v40_c_len, i8* %__v41_m, i64 %__v317___v41_m_len, i8* %__v42_n, i64 %__v43_ic, i8* %__v44_k) {
entry:
  %__rval = alloca i32
  store i32 0, i32* %__rval
  %__rctx = alloca i1
  store i1 true, i1* %__rctx
  %__v45_subkey = alloca i8, i64 32
  call void @llvm.memset.p0i8.i64(i8* %__v45_subkey, i8 0, i64 32, i32 1, i1 false)
  %0 = getelementptr i8, i8* %__v42_n, i64 0
  call void @_crypto_core_hsalsa20(i8* %__v45_subkey, i8* %0, i8* %__v44_k)
  %__v46_tmp = getelementptr i8, i8* %__v42_n, i64 16
  %__v47_ret = call i32 @_crypto_stream_salsa20_xor_ic(i8* %__v40_c, i64 %__v316___v40_c_len, i8* %__v41_m, i64 %__v317___v41_m_len, i8* %__v46_tmp, i64 %__v43_ic, i8* %__v45_subkey)
  call void @llvm.memset.p0i8.i64(i8* %__v45_subkey, i8 0, i64 32, i32 1, i1 true)
  ret i32 %__v47_ret
}

define internal i32 @_crypto_stream_xsalsa20_xor(i8* %__v36_c, i64 %__v314___v36_c_len, i8* %__v37_m, i64 %__v315___v37_m_len, i8* %__v38_n, i8* %__v39_k) {
entry:
  %__rval = alloca i32
  store i32 0, i32* %__rval
  %__rctx = alloca i1
  store i1 true, i1* %__rctx
  %__v264__crypto_stream_xsalsa20_xor_ic = call i32 @_crypto_stream_xsalsa20_xor_ic(i8* %__v36_c, i64 %__v314___v36_c_len, i8* %__v37_m, i64 %__v315___v37_m_len, i8* %__v38_n, i64 0, i8* %__v39_k)
  ret i32 %__v264__crypto_stream_xsalsa20_xor_ic
}

define internal i1 @_crypto_secretbox_xsalsa20poly1305(i8* %__v28_c, i64 %__v312___v28_c_len, i8* %__v29_m, i64 %__v313___v29_m_len, i8* %__v30_n, i8* %__v31_k) {
entry:
  %__rval = alloca i1
  store i1 false, i1* %__rval
  %__rctx = alloca i1
  store i1 true, i1* %__rctx
  %0 = icmp ult i64 %__v313___v29_m_len, 32
  br i1 %0, label %1, label %2

; <label>:1:                                      ; preds = %entry
  ret i1 false

; <label>:2:                                      ; preds = %entry
  br label %3

; <label>:3:                                      ; preds = %2
  %4 = call i32 @_crypto_stream_xsalsa20_xor(i8* %__v28_c, i64 %__v312___v28_c_len, i8* %__v29_m, i64 %__v313___v29_m_len, i8* %__v30_n, i8* %__v31_k)
  %__v32_cview = getelementptr i8, i8* %__v28_c, i64 16
  %__v334_lexpr = sub i64 %__v312___v28_c_len, 32
  %__v33_mview = getelementptr i8, i8* %__v28_c, i64 32
  %__v34_kview = getelementptr i8, i8* %__v28_c, i64 0
  %5 = call i32 @_crypto_onetimeauth_poly1305(i8* %__v32_cview, i8* %__v33_mview, i64 %__v334_lexpr, i8* %__v34_kview)
  br label %6

; <label>:6:                                      ; preds = %10, %3
  %__v35_i = phi i64 [ 0, %3 ], [ %11, %10 ]
  %7 = icmp ult i64 %__v35_i, 16
  br i1 %7, label %8, label %12

; <label>:8:                                      ; preds = %6
  %9 = getelementptr i8, i8* %__v28_c, i64 %__v35_i
  store i8 0, i8* %9
  br label %10

; <label>:10:                                     ; preds = %8
  %11 = add i64 %__v35_i, 1
  br label %6

; <label>:12:                                     ; preds = %6
  ret i1 true
}

define i1 @_crypto_secretbox(i8* %__v24_c, i64 %__v310___v24_c_len, i8* %__v25_m, i64 %__v311___v25_m_len, i8* %__v26_n, i8* %__v27_k) {
entry:
  %__rval = alloca i1
  store i1 false, i1* %__rval
  %__rctx = alloca i1
  store i1 true, i1* %__rctx
  %__v263__crypto_secretbox_xsalsa20poly1305 = call i1 @_crypto_secretbox_xsalsa20poly1305(i8* %__v24_c, i64 %__v310___v24_c_len, i8* %__v25_m, i64 %__v311___v25_m_len, i8* %__v26_n, i8* %__v27_k)
  ret i1 %__v263__crypto_secretbox_xsalsa20poly1305
}

define internal void @_salsa_ivsetup_null(i32* %__v22_ctx, i8* %__v23_iv) {
entry:
  %__rctx = alloca i1
  store i1 true, i1* %__rctx
  %0 = getelementptr i8, i8* %__v23_iv, i64 0
  %1 = bitcast i8* %0 to i32*
  %2 = load i32, i32* %1
  %3 = getelementptr i32, i32* %__v22_ctx, i64 6
  store i32 %2, i32* %3
  %4 = getelementptr i8, i8* %__v23_iv, i64 4
  %5 = bitcast i8* %4 to i32*
  %6 = load i32, i32* %5
  %7 = getelementptr i32, i32* %__v22_ctx, i64 11
  store i32 %6, i32* %7
  %8 = getelementptr i32, i32* %__v22_ctx, i64 8
  store i32 0, i32* %8
  %9 = getelementptr i32, i32* %__v22_ctx, i64 13
  store i32 0, i32* %9
  ret void
}

define internal i32 @_crypto_stream_salsa20(i8* %__v18_c, i64 %__v309___v18_c_len, i8* %__v19_n, i8* %__v20_k) {
entry:
  %__rval = alloca i32
  store i32 0, i32* %__rval
  %__rctx = alloca i1
  store i1 true, i1* %__rctx
  %0 = icmp eq i64 %__v309___v18_c_len, 0
  br i1 %0, label %1, label %2

; <label>:1:                                      ; preds = %entry
  ret i32 0

; <label>:2:                                      ; preds = %entry
  br label %3

; <label>:3:                                      ; preds = %2
  %__v21_ctx = alloca i32, i64 16
  %4 = bitcast i32* %__v21_ctx to i8*
  call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 64, i32 4, i1 false)
  call void @_salsa_keysetup(i32* %__v21_ctx, i8* %__v20_k)
  call void @_salsa_ivsetup_null(i32* %__v21_ctx, i8* %__v19_n)
  call void @llvm.memset.p0i8.i64(i8* %__v18_c, i8 0, i64 %__v309___v18_c_len, i32 1, i1 false)
  call void @_salsa20_encrypt_bytes(i32* %__v21_ctx, i8* %__v18_c, i64 %__v309___v18_c_len, i8* %__v18_c, i64 %__v309___v18_c_len)
  %5 = bitcast i32* %__v21_ctx to i8*
  call void @llvm.memset.p0i8.i64(i8* %5, i8 0, i64 64, i32 4, i1 true)
  ret i32 0
}

define internal i32 @_crypto_stream_xsalsa20(i8* %__v13_c, i64 %__v308___v13_c_len, i8* %__v14_n, i8* %__v15_k) {
entry:
  %__rval = alloca i32
  store i32 0, i32* %__rval
  %__rctx = alloca i1
  store i1 true, i1* %__rctx
  %__v16_subkey = alloca i8, i64 32
  call void @llvm.memset.p0i8.i64(i8* %__v16_subkey, i8 0, i64 32, i32 1, i1 false)
  %0 = getelementptr i8, i8* %__v14_n, i64 0
  call void @_crypto_core_hsalsa20(i8* %__v16_subkey, i8* %0, i8* %__v15_k)
  %1 = getelementptr i8, i8* %__v14_n, i64 16
  %__v17_ret = call i32 @_crypto_stream_salsa20(i8* %__v13_c, i64 %__v308___v13_c_len, i8* %1, i8* %__v16_subkey)
  call void @llvm.memset.p0i8.i64(i8* %__v16_subkey, i8 0, i64 32, i32 1, i1 true)
  ret i32 %__v17_ret
}

define internal i1 @_crypto_secretbox_xsalsa20poly1305_open(i8* %__v5_m, i64 %__v306___v5_m_len, i8* %__v6_c, i64 %__v307___v6_c_len, i8* %__v7_n, i8* %__v8_k) {
entry:
  %__rval = alloca i1
  store i1 false, i1* %__rval
  %__rctx = alloca i1
  store i1 true, i1* %__rctx
  %0 = icmp ult i64 %__v307___v6_c_len, 32
  br i1 %0, label %1, label %2

; <label>:1:                                      ; preds = %entry
  ret i1 false

; <label>:2:                                      ; preds = %entry
  br label %3

; <label>:3:                                      ; preds = %2
  %__v9_subkey = alloca i8, i64 32
  call void @llvm.memset.p0i8.i64(i8* %__v9_subkey, i8 0, i64 32, i32 1, i1 false)
  %4 = call i32 @_crypto_stream_xsalsa20(i8* %__v9_subkey, i64 32, i8* %__v7_n, i8* %__v8_k)
  %__v10_tmp1 = getelementptr i8, i8* %__v6_c, i64 16
  %__v332_lexpr = sub i64 %__v307___v6_c_len, 32
  %__v11_cview = getelementptr i8, i8* %__v6_c, i64 32
  %__v260__crypto_onetimeauth_poly1305_verify = call i1 @_crypto_onetimeauth_poly1305_verify(i8* %__v10_tmp1, i8* %__v11_cview, i64 %__v332_lexpr, i8* %__v9_subkey)
  %5 = xor i1 %__v260__crypto_onetimeauth_poly1305_verify, true
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %3
  ret i1 false

; <label>:7:                                      ; preds = %3
  br label %8

; <label>:8:                                      ; preds = %7
  %9 = call i32 @_crypto_stream_xsalsa20_xor(i8* %__v5_m, i64 %__v306___v5_m_len, i8* %__v6_c, i64 %__v307___v6_c_len, i8* %__v7_n, i8* %__v8_k)
  br label %10

; <label>:10:                                     ; preds = %14, %8
  %__v12_i = phi i32 [ 0, %8 ], [ %15, %14 ]
  %11 = icmp ult i32 %__v12_i, 32
  br i1 %11, label %12, label %16

; <label>:12:                                     ; preds = %10
  %__v333_lexpr = zext i32 %__v12_i to i64
  %13 = getelementptr i8, i8* %__v5_m, i64 %__v333_lexpr
  store i8 0, i8* %13
  br label %14

; <label>:14:                                     ; preds = %12
  %15 = add i32 %__v12_i, 1
  br label %10

; <label>:16:                                     ; preds = %10
  ret i1 true
}

define i1 @_crypto_secretbox_open(i8* %__v1_m, i64 %__v304___v1_m_len, i8* %__v2_c, i64 %__v305___v2_c_len, i8* %__v3_n, i8* %__v4_k) {
entry:
  %__rval = alloca i1
  store i1 false, i1* %__rval
  %__rctx = alloca i1
  store i1 true, i1* %__rctx
  %__v259__crypto_secretbox_xsalsa20poly1305_open = call i1 @_crypto_secretbox_xsalsa20poly1305_open(i8* %__v1_m, i64 %__v304___v1_m_len, i8* %__v2_c, i64 %__v305___v2_c_len, i8* %__v3_n, i8* %__v4_k)
  ret i1 %__v259__crypto_secretbox_xsalsa20poly1305_open
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { argmemonly nounwind }
attributes #1 = { nounwind }
