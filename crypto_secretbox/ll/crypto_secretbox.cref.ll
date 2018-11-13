; ModuleID = './crypto_secretbox.cref.bc'
source_filename = "Module"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%poly1305_state_internal_t = type { [3 x i64], [3 x i64], [2 x i64], i64, [16 x i8], i8 }

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #0

define internal void @_crypto_core_hsalsa20(i8* %__v178_out, i8* %__v179_input, i8* %__v180_k) {
entry:
  %__rctx = alloca i1
  store i1 true, i1* %__rctx
  %__v181_x0 = alloca i32
  store i32 1634760805, i32* %__v181_x0
  %__v182_x5 = alloca i32
  store i32 857760878, i32* %__v182_x5
  %__v183_x10 = alloca i32
  store i32 2036477234, i32* %__v183_x10
  %__v184_x15 = alloca i32
  store i32 1797285236, i32* %__v184_x15
  %0 = getelementptr i8, i8* %__v180_k, i64 0
  %1 = bitcast i8* %0 to i32*
  %2 = load i32, i32* %1
  %__v185_x1 = alloca i32
  store i32 %2, i32* %__v185_x1
  %3 = getelementptr i8, i8* %__v180_k, i64 4
  %4 = bitcast i8* %3 to i32*
  %5 = load i32, i32* %4
  %__v186_x2 = alloca i32
  store i32 %5, i32* %__v186_x2
  %6 = getelementptr i8, i8* %__v180_k, i64 8
  %7 = bitcast i8* %6 to i32*
  %8 = load i32, i32* %7
  %__v187_x3 = alloca i32
  store i32 %8, i32* %__v187_x3
  %9 = getelementptr i8, i8* %__v180_k, i64 12
  %10 = bitcast i8* %9 to i32*
  %11 = load i32, i32* %10
  %__v188_x4 = alloca i32
  store i32 %11, i32* %__v188_x4
  %12 = getelementptr i8, i8* %__v180_k, i64 16
  %13 = bitcast i8* %12 to i32*
  %14 = load i32, i32* %13
  %__v189_x11 = alloca i32
  store i32 %14, i32* %__v189_x11
  %15 = getelementptr i8, i8* %__v180_k, i64 20
  %16 = bitcast i8* %15 to i32*
  %17 = load i32, i32* %16
  %__v190_x12 = alloca i32
  store i32 %17, i32* %__v190_x12
  %18 = getelementptr i8, i8* %__v180_k, i64 24
  %19 = bitcast i8* %18 to i32*
  %20 = load i32, i32* %19
  %__v191_x13 = alloca i32
  store i32 %20, i32* %__v191_x13
  %21 = getelementptr i8, i8* %__v180_k, i64 28
  %22 = bitcast i8* %21 to i32*
  %23 = load i32, i32* %22
  %__v192_x14 = alloca i32
  store i32 %23, i32* %__v192_x14
  %24 = getelementptr i8, i8* %__v179_input, i64 0
  %25 = bitcast i8* %24 to i32*
  %26 = load i32, i32* %25
  %__v193_x6 = alloca i32
  store i32 %26, i32* %__v193_x6
  %27 = getelementptr i8, i8* %__v179_input, i64 4
  %28 = bitcast i8* %27 to i32*
  %29 = load i32, i32* %28
  %__v194_x7 = alloca i32
  store i32 %29, i32* %__v194_x7
  %30 = getelementptr i8, i8* %__v179_input, i64 8
  %31 = bitcast i8* %30 to i32*
  %32 = load i32, i32* %31
  %__v195_x8 = alloca i32
  store i32 %32, i32* %__v195_x8
  %33 = getelementptr i8, i8* %__v179_input, i64 12
  %34 = bitcast i8* %33 to i32*
  %35 = load i32, i32* %34
  %__v196_x9 = alloca i32
  store i32 %35, i32* %__v196_x9
  br label %36

; <label>:36:                                     ; preds = %295, %entry
  %__v197_i = phi i32 [ 0, %entry ], [ %296, %295 ]
  %37 = icmp ult i32 %__v197_i, 10
  br i1 %37, label %38, label %297

; <label>:38:                                     ; preds = %36
  %39 = load i32, i32* %__v188_x4
  %40 = load i32, i32* %__v181_x0
  %41 = load i32, i32* %__v190_x12
  %42 = add i32 %40, %41
  %43 = shl i32 %42, 7
  %44 = lshr i32 %42, 25
  %45 = or i32 %43, %44
  %46 = xor i32 %39, %45
  store i32 %46, i32* %__v188_x4
  %47 = load i32, i32* %__v195_x8
  %48 = load i32, i32* %__v188_x4
  %49 = load i32, i32* %__v181_x0
  %50 = add i32 %48, %49
  %51 = shl i32 %50, 9
  %52 = lshr i32 %50, 23
  %53 = or i32 %51, %52
  %54 = xor i32 %47, %53
  store i32 %54, i32* %__v195_x8
  %55 = load i32, i32* %__v190_x12
  %56 = load i32, i32* %__v195_x8
  %57 = load i32, i32* %__v188_x4
  %58 = add i32 %56, %57
  %59 = shl i32 %58, 13
  %60 = lshr i32 %58, 19
  %61 = or i32 %59, %60
  %62 = xor i32 %55, %61
  store i32 %62, i32* %__v190_x12
  %63 = load i32, i32* %__v181_x0
  %64 = load i32, i32* %__v190_x12
  %65 = load i32, i32* %__v195_x8
  %66 = add i32 %64, %65
  %67 = shl i32 %66, 18
  %68 = lshr i32 %66, 14
  %69 = or i32 %67, %68
  %70 = xor i32 %63, %69
  store i32 %70, i32* %__v181_x0
  %71 = load i32, i32* %__v196_x9
  %72 = load i32, i32* %__v182_x5
  %73 = load i32, i32* %__v185_x1
  %74 = add i32 %72, %73
  %75 = shl i32 %74, 7
  %76 = lshr i32 %74, 25
  %77 = or i32 %75, %76
  %78 = xor i32 %71, %77
  store i32 %78, i32* %__v196_x9
  %79 = load i32, i32* %__v191_x13
  %80 = load i32, i32* %__v196_x9
  %81 = load i32, i32* %__v182_x5
  %82 = add i32 %80, %81
  %83 = shl i32 %82, 9
  %84 = lshr i32 %82, 23
  %85 = or i32 %83, %84
  %86 = xor i32 %79, %85
  store i32 %86, i32* %__v191_x13
  %87 = load i32, i32* %__v185_x1
  %88 = load i32, i32* %__v191_x13
  %89 = load i32, i32* %__v196_x9
  %90 = add i32 %88, %89
  %91 = shl i32 %90, 13
  %92 = lshr i32 %90, 19
  %93 = or i32 %91, %92
  %94 = xor i32 %87, %93
  store i32 %94, i32* %__v185_x1
  %95 = load i32, i32* %__v182_x5
  %96 = load i32, i32* %__v185_x1
  %97 = load i32, i32* %__v191_x13
  %98 = add i32 %96, %97
  %99 = shl i32 %98, 18
  %100 = lshr i32 %98, 14
  %101 = or i32 %99, %100
  %102 = xor i32 %95, %101
  store i32 %102, i32* %__v182_x5
  %103 = load i32, i32* %__v192_x14
  %104 = load i32, i32* %__v183_x10
  %105 = load i32, i32* %__v193_x6
  %106 = add i32 %104, %105
  %107 = shl i32 %106, 7
  %108 = lshr i32 %106, 25
  %109 = or i32 %107, %108
  %110 = xor i32 %103, %109
  store i32 %110, i32* %__v192_x14
  %111 = load i32, i32* %__v186_x2
  %112 = load i32, i32* %__v192_x14
  %113 = load i32, i32* %__v183_x10
  %114 = add i32 %112, %113
  %115 = shl i32 %114, 9
  %116 = lshr i32 %114, 23
  %117 = or i32 %115, %116
  %118 = xor i32 %111, %117
  store i32 %118, i32* %__v186_x2
  %119 = load i32, i32* %__v193_x6
  %120 = load i32, i32* %__v186_x2
  %121 = load i32, i32* %__v192_x14
  %122 = add i32 %120, %121
  %123 = shl i32 %122, 13
  %124 = lshr i32 %122, 19
  %125 = or i32 %123, %124
  %126 = xor i32 %119, %125
  store i32 %126, i32* %__v193_x6
  %127 = load i32, i32* %__v183_x10
  %128 = load i32, i32* %__v193_x6
  %129 = load i32, i32* %__v186_x2
  %130 = add i32 %128, %129
  %131 = shl i32 %130, 18
  %132 = lshr i32 %130, 14
  %133 = or i32 %131, %132
  %134 = xor i32 %127, %133
  store i32 %134, i32* %__v183_x10
  %135 = load i32, i32* %__v187_x3
  %136 = load i32, i32* %__v184_x15
  %137 = load i32, i32* %__v189_x11
  %138 = add i32 %136, %137
  %139 = shl i32 %138, 7
  %140 = lshr i32 %138, 25
  %141 = or i32 %139, %140
  %142 = xor i32 %135, %141
  store i32 %142, i32* %__v187_x3
  %143 = load i32, i32* %__v194_x7
  %144 = load i32, i32* %__v187_x3
  %145 = load i32, i32* %__v184_x15
  %146 = add i32 %144, %145
  %147 = shl i32 %146, 9
  %148 = lshr i32 %146, 23
  %149 = or i32 %147, %148
  %150 = xor i32 %143, %149
  store i32 %150, i32* %__v194_x7
  %151 = load i32, i32* %__v189_x11
  %152 = load i32, i32* %__v194_x7
  %153 = load i32, i32* %__v187_x3
  %154 = add i32 %152, %153
  %155 = shl i32 %154, 13
  %156 = lshr i32 %154, 19
  %157 = or i32 %155, %156
  %158 = xor i32 %151, %157
  store i32 %158, i32* %__v189_x11
  %159 = load i32, i32* %__v184_x15
  %160 = load i32, i32* %__v189_x11
  %161 = load i32, i32* %__v194_x7
  %162 = add i32 %160, %161
  %163 = shl i32 %162, 18
  %164 = lshr i32 %162, 14
  %165 = or i32 %163, %164
  %166 = xor i32 %159, %165
  store i32 %166, i32* %__v184_x15
  %167 = load i32, i32* %__v185_x1
  %168 = load i32, i32* %__v181_x0
  %169 = load i32, i32* %__v187_x3
  %170 = add i32 %168, %169
  %171 = shl i32 %170, 7
  %172 = lshr i32 %170, 25
  %173 = or i32 %171, %172
  %174 = xor i32 %167, %173
  store i32 %174, i32* %__v185_x1
  %175 = load i32, i32* %__v186_x2
  %176 = load i32, i32* %__v185_x1
  %177 = load i32, i32* %__v181_x0
  %178 = add i32 %176, %177
  %179 = shl i32 %178, 9
  %180 = lshr i32 %178, 23
  %181 = or i32 %179, %180
  %182 = xor i32 %175, %181
  store i32 %182, i32* %__v186_x2
  %183 = load i32, i32* %__v187_x3
  %184 = load i32, i32* %__v186_x2
  %185 = load i32, i32* %__v185_x1
  %186 = add i32 %184, %185
  %187 = shl i32 %186, 13
  %188 = lshr i32 %186, 19
  %189 = or i32 %187, %188
  %190 = xor i32 %183, %189
  store i32 %190, i32* %__v187_x3
  %191 = load i32, i32* %__v181_x0
  %192 = load i32, i32* %__v187_x3
  %193 = load i32, i32* %__v186_x2
  %194 = add i32 %192, %193
  %195 = shl i32 %194, 18
  %196 = lshr i32 %194, 14
  %197 = or i32 %195, %196
  %198 = xor i32 %191, %197
  store i32 %198, i32* %__v181_x0
  %199 = load i32, i32* %__v193_x6
  %200 = load i32, i32* %__v182_x5
  %201 = load i32, i32* %__v188_x4
  %202 = add i32 %200, %201
  %203 = shl i32 %202, 7
  %204 = lshr i32 %202, 25
  %205 = or i32 %203, %204
  %206 = xor i32 %199, %205
  store i32 %206, i32* %__v193_x6
  %207 = load i32, i32* %__v194_x7
  %208 = load i32, i32* %__v193_x6
  %209 = load i32, i32* %__v182_x5
  %210 = add i32 %208, %209
  %211 = shl i32 %210, 9
  %212 = lshr i32 %210, 23
  %213 = or i32 %211, %212
  %214 = xor i32 %207, %213
  store i32 %214, i32* %__v194_x7
  %215 = load i32, i32* %__v188_x4
  %216 = load i32, i32* %__v194_x7
  %217 = load i32, i32* %__v193_x6
  %218 = add i32 %216, %217
  %219 = shl i32 %218, 13
  %220 = lshr i32 %218, 19
  %221 = or i32 %219, %220
  %222 = xor i32 %215, %221
  store i32 %222, i32* %__v188_x4
  %223 = load i32, i32* %__v182_x5
  %224 = load i32, i32* %__v188_x4
  %225 = load i32, i32* %__v194_x7
  %226 = add i32 %224, %225
  %227 = shl i32 %226, 18
  %228 = lshr i32 %226, 14
  %229 = or i32 %227, %228
  %230 = xor i32 %223, %229
  store i32 %230, i32* %__v182_x5
  %231 = load i32, i32* %__v189_x11
  %232 = load i32, i32* %__v183_x10
  %233 = load i32, i32* %__v196_x9
  %234 = add i32 %232, %233
  %235 = shl i32 %234, 7
  %236 = lshr i32 %234, 25
  %237 = or i32 %235, %236
  %238 = xor i32 %231, %237
  store i32 %238, i32* %__v189_x11
  %239 = load i32, i32* %__v195_x8
  %240 = load i32, i32* %__v189_x11
  %241 = load i32, i32* %__v183_x10
  %242 = add i32 %240, %241
  %243 = shl i32 %242, 9
  %244 = lshr i32 %242, 23
  %245 = or i32 %243, %244
  %246 = xor i32 %239, %245
  store i32 %246, i32* %__v195_x8
  %247 = load i32, i32* %__v196_x9
  %248 = load i32, i32* %__v195_x8
  %249 = load i32, i32* %__v189_x11
  %250 = add i32 %248, %249
  %251 = shl i32 %250, 13
  %252 = lshr i32 %250, 19
  %253 = or i32 %251, %252
  %254 = xor i32 %247, %253
  store i32 %254, i32* %__v196_x9
  %255 = load i32, i32* %__v183_x10
  %256 = load i32, i32* %__v196_x9
  %257 = load i32, i32* %__v195_x8
  %258 = add i32 %256, %257
  %259 = shl i32 %258, 18
  %260 = lshr i32 %258, 14
  %261 = or i32 %259, %260
  %262 = xor i32 %255, %261
  store i32 %262, i32* %__v183_x10
  %263 = load i32, i32* %__v190_x12
  %264 = load i32, i32* %__v184_x15
  %265 = load i32, i32* %__v192_x14
  %266 = add i32 %264, %265
  %267 = shl i32 %266, 7
  %268 = lshr i32 %266, 25
  %269 = or i32 %267, %268
  %270 = xor i32 %263, %269
  store i32 %270, i32* %__v190_x12
  %271 = load i32, i32* %__v191_x13
  %272 = load i32, i32* %__v190_x12
  %273 = load i32, i32* %__v184_x15
  %274 = add i32 %272, %273
  %275 = shl i32 %274, 9
  %276 = lshr i32 %274, 23
  %277 = or i32 %275, %276
  %278 = xor i32 %271, %277
  store i32 %278, i32* %__v191_x13
  %279 = load i32, i32* %__v192_x14
  %280 = load i32, i32* %__v191_x13
  %281 = load i32, i32* %__v190_x12
  %282 = add i32 %280, %281
  %283 = shl i32 %282, 13
  %284 = lshr i32 %282, 19
  %285 = or i32 %283, %284
  %286 = xor i32 %279, %285
  store i32 %286, i32* %__v192_x14
  %287 = load i32, i32* %__v184_x15
  %288 = load i32, i32* %__v192_x14
  %289 = load i32, i32* %__v191_x13
  %290 = add i32 %288, %289
  %291 = shl i32 %290, 18
  %292 = lshr i32 %290, 14
  %293 = or i32 %291, %292
  %294 = xor i32 %287, %293
  store i32 %294, i32* %__v184_x15
  br label %295

; <label>:295:                                    ; preds = %38
  %296 = add i32 %__v197_i, 1
  br label %36

; <label>:297:                                    ; preds = %36
  %298 = getelementptr i8, i8* %__v178_out, i64 0
  %299 = load i32, i32* %__v181_x0
  %300 = bitcast i8* %298 to i32*
  store i32 %299, i32* %300
  %301 = getelementptr i8, i8* %__v178_out, i64 4
  %302 = load i32, i32* %__v182_x5
  %303 = bitcast i8* %301 to i32*
  store i32 %302, i32* %303
  %304 = getelementptr i8, i8* %__v178_out, i64 8
  %305 = load i32, i32* %__v183_x10
  %306 = bitcast i8* %304 to i32*
  store i32 %305, i32* %306
  %307 = getelementptr i8, i8* %__v178_out, i64 12
  %308 = load i32, i32* %__v184_x15
  %309 = bitcast i8* %307 to i32*
  store i32 %308, i32* %309
  %310 = getelementptr i8, i8* %__v178_out, i64 16
  %311 = load i32, i32* %__v193_x6
  %312 = bitcast i8* %310 to i32*
  store i32 %311, i32* %312
  %313 = getelementptr i8, i8* %__v178_out, i64 20
  %314 = load i32, i32* %__v194_x7
  %315 = bitcast i8* %313 to i32*
  store i32 %314, i32* %315
  %316 = getelementptr i8, i8* %__v178_out, i64 24
  %317 = load i32, i32* %__v195_x8
  %318 = bitcast i8* %316 to i32*
  store i32 %317, i32* %318
  %319 = getelementptr i8, i8* %__v178_out, i64 28
  %320 = load i32, i32* %__v196_x9
  %321 = bitcast i8* %319 to i32*
  store i32 %320, i32* %321
  ret void
}

define internal void @_crypto_core_salsa20(i8* %__v142_output, i8* %__v143_input, i8* %__v144_k) {
entry:
  %__rctx = alloca i1
  store i1 true, i1* %__rctx
  %__v145_x0 = alloca i32
  store i32 1634760805, i32* %__v145_x0
  %__v146_x5 = alloca i32
  store i32 857760878, i32* %__v146_x5
  %__v147_x10 = alloca i32
  store i32 2036477234, i32* %__v147_x10
  %__v148_x15 = alloca i32
  store i32 1797285236, i32* %__v148_x15
  %__v149_j0 = load i32, i32* %__v145_x0
  %__v150_j5 = load i32, i32* %__v146_x5
  %__v151_j10 = load i32, i32* %__v147_x10
  %__v152_j15 = load i32, i32* %__v148_x15
  %0 = getelementptr i8, i8* %__v144_k, i64 0
  %1 = bitcast i8* %0 to i32*
  %2 = load i32, i32* %1
  %__v153_x1 = alloca i32
  store i32 %2, i32* %__v153_x1
  %3 = getelementptr i8, i8* %__v144_k, i64 4
  %4 = bitcast i8* %3 to i32*
  %5 = load i32, i32* %4
  %__v154_x2 = alloca i32
  store i32 %5, i32* %__v154_x2
  %6 = getelementptr i8, i8* %__v144_k, i64 8
  %7 = bitcast i8* %6 to i32*
  %8 = load i32, i32* %7
  %__v155_x3 = alloca i32
  store i32 %8, i32* %__v155_x3
  %9 = getelementptr i8, i8* %__v144_k, i64 12
  %10 = bitcast i8* %9 to i32*
  %11 = load i32, i32* %10
  %__v156_x4 = alloca i32
  store i32 %11, i32* %__v156_x4
  %12 = getelementptr i8, i8* %__v144_k, i64 16
  %13 = bitcast i8* %12 to i32*
  %14 = load i32, i32* %13
  %__v157_x11 = alloca i32
  store i32 %14, i32* %__v157_x11
  %15 = getelementptr i8, i8* %__v144_k, i64 20
  %16 = bitcast i8* %15 to i32*
  %17 = load i32, i32* %16
  %__v158_x12 = alloca i32
  store i32 %17, i32* %__v158_x12
  %18 = getelementptr i8, i8* %__v144_k, i64 24
  %19 = bitcast i8* %18 to i32*
  %20 = load i32, i32* %19
  %__v159_x13 = alloca i32
  store i32 %20, i32* %__v159_x13
  %21 = getelementptr i8, i8* %__v144_k, i64 28
  %22 = bitcast i8* %21 to i32*
  %23 = load i32, i32* %22
  %__v160_x14 = alloca i32
  store i32 %23, i32* %__v160_x14
  %__v161_j1 = load i32, i32* %__v153_x1
  %__v162_j2 = load i32, i32* %__v154_x2
  %__v163_j3 = load i32, i32* %__v155_x3
  %__v164_j4 = load i32, i32* %__v156_x4
  %__v165_j11 = load i32, i32* %__v157_x11
  %__v166_j12 = load i32, i32* %__v158_x12
  %__v167_j13 = load i32, i32* %__v159_x13
  %__v168_j14 = load i32, i32* %__v160_x14
  %24 = getelementptr i8, i8* %__v143_input, i64 0
  %25 = bitcast i8* %24 to i32*
  %26 = load i32, i32* %25
  %__v169_x6 = alloca i32
  store i32 %26, i32* %__v169_x6
  %27 = getelementptr i8, i8* %__v143_input, i64 4
  %28 = bitcast i8* %27 to i32*
  %29 = load i32, i32* %28
  %__v170_x7 = alloca i32
  store i32 %29, i32* %__v170_x7
  %30 = getelementptr i8, i8* %__v143_input, i64 8
  %31 = bitcast i8* %30 to i32*
  %32 = load i32, i32* %31
  %__v171_x8 = alloca i32
  store i32 %32, i32* %__v171_x8
  %33 = getelementptr i8, i8* %__v143_input, i64 12
  %34 = bitcast i8* %33 to i32*
  %35 = load i32, i32* %34
  %__v172_x9 = alloca i32
  store i32 %35, i32* %__v172_x9
  %__v173_j6 = load i32, i32* %__v169_x6
  %__v174_j7 = load i32, i32* %__v170_x7
  %__v175_j8 = load i32, i32* %__v171_x8
  %__v176_j9 = load i32, i32* %__v172_x9
  br label %36

; <label>:36:                                     ; preds = %295, %entry
  %__v177_i = phi i32 [ 0, %entry ], [ %296, %295 ]
  %37 = icmp ult i32 %__v177_i, 10
  br i1 %37, label %38, label %297

; <label>:38:                                     ; preds = %36
  %39 = load i32, i32* %__v156_x4
  %40 = load i32, i32* %__v145_x0
  %41 = load i32, i32* %__v158_x12
  %42 = add i32 %40, %41
  %43 = shl i32 %42, 7
  %44 = lshr i32 %42, 25
  %45 = or i32 %43, %44
  %46 = xor i32 %39, %45
  store i32 %46, i32* %__v156_x4
  %47 = load i32, i32* %__v171_x8
  %48 = load i32, i32* %__v156_x4
  %49 = load i32, i32* %__v145_x0
  %50 = add i32 %48, %49
  %51 = shl i32 %50, 9
  %52 = lshr i32 %50, 23
  %53 = or i32 %51, %52
  %54 = xor i32 %47, %53
  store i32 %54, i32* %__v171_x8
  %55 = load i32, i32* %__v158_x12
  %56 = load i32, i32* %__v171_x8
  %57 = load i32, i32* %__v156_x4
  %58 = add i32 %56, %57
  %59 = shl i32 %58, 13
  %60 = lshr i32 %58, 19
  %61 = or i32 %59, %60
  %62 = xor i32 %55, %61
  store i32 %62, i32* %__v158_x12
  %63 = load i32, i32* %__v145_x0
  %64 = load i32, i32* %__v158_x12
  %65 = load i32, i32* %__v171_x8
  %66 = add i32 %64, %65
  %67 = shl i32 %66, 18
  %68 = lshr i32 %66, 14
  %69 = or i32 %67, %68
  %70 = xor i32 %63, %69
  store i32 %70, i32* %__v145_x0
  %71 = load i32, i32* %__v172_x9
  %72 = load i32, i32* %__v146_x5
  %73 = load i32, i32* %__v153_x1
  %74 = add i32 %72, %73
  %75 = shl i32 %74, 7
  %76 = lshr i32 %74, 25
  %77 = or i32 %75, %76
  %78 = xor i32 %71, %77
  store i32 %78, i32* %__v172_x9
  %79 = load i32, i32* %__v159_x13
  %80 = load i32, i32* %__v172_x9
  %81 = load i32, i32* %__v146_x5
  %82 = add i32 %80, %81
  %83 = shl i32 %82, 9
  %84 = lshr i32 %82, 23
  %85 = or i32 %83, %84
  %86 = xor i32 %79, %85
  store i32 %86, i32* %__v159_x13
  %87 = load i32, i32* %__v153_x1
  %88 = load i32, i32* %__v159_x13
  %89 = load i32, i32* %__v172_x9
  %90 = add i32 %88, %89
  %91 = shl i32 %90, 13
  %92 = lshr i32 %90, 19
  %93 = or i32 %91, %92
  %94 = xor i32 %87, %93
  store i32 %94, i32* %__v153_x1
  %95 = load i32, i32* %__v146_x5
  %96 = load i32, i32* %__v153_x1
  %97 = load i32, i32* %__v159_x13
  %98 = add i32 %96, %97
  %99 = shl i32 %98, 18
  %100 = lshr i32 %98, 14
  %101 = or i32 %99, %100
  %102 = xor i32 %95, %101
  store i32 %102, i32* %__v146_x5
  %103 = load i32, i32* %__v160_x14
  %104 = load i32, i32* %__v147_x10
  %105 = load i32, i32* %__v169_x6
  %106 = add i32 %104, %105
  %107 = shl i32 %106, 7
  %108 = lshr i32 %106, 25
  %109 = or i32 %107, %108
  %110 = xor i32 %103, %109
  store i32 %110, i32* %__v160_x14
  %111 = load i32, i32* %__v154_x2
  %112 = load i32, i32* %__v160_x14
  %113 = load i32, i32* %__v147_x10
  %114 = add i32 %112, %113
  %115 = shl i32 %114, 9
  %116 = lshr i32 %114, 23
  %117 = or i32 %115, %116
  %118 = xor i32 %111, %117
  store i32 %118, i32* %__v154_x2
  %119 = load i32, i32* %__v169_x6
  %120 = load i32, i32* %__v154_x2
  %121 = load i32, i32* %__v160_x14
  %122 = add i32 %120, %121
  %123 = shl i32 %122, 13
  %124 = lshr i32 %122, 19
  %125 = or i32 %123, %124
  %126 = xor i32 %119, %125
  store i32 %126, i32* %__v169_x6
  %127 = load i32, i32* %__v147_x10
  %128 = load i32, i32* %__v169_x6
  %129 = load i32, i32* %__v154_x2
  %130 = add i32 %128, %129
  %131 = shl i32 %130, 18
  %132 = lshr i32 %130, 14
  %133 = or i32 %131, %132
  %134 = xor i32 %127, %133
  store i32 %134, i32* %__v147_x10
  %135 = load i32, i32* %__v155_x3
  %136 = load i32, i32* %__v148_x15
  %137 = load i32, i32* %__v157_x11
  %138 = add i32 %136, %137
  %139 = shl i32 %138, 7
  %140 = lshr i32 %138, 25
  %141 = or i32 %139, %140
  %142 = xor i32 %135, %141
  store i32 %142, i32* %__v155_x3
  %143 = load i32, i32* %__v170_x7
  %144 = load i32, i32* %__v155_x3
  %145 = load i32, i32* %__v148_x15
  %146 = add i32 %144, %145
  %147 = shl i32 %146, 9
  %148 = lshr i32 %146, 23
  %149 = or i32 %147, %148
  %150 = xor i32 %143, %149
  store i32 %150, i32* %__v170_x7
  %151 = load i32, i32* %__v157_x11
  %152 = load i32, i32* %__v170_x7
  %153 = load i32, i32* %__v155_x3
  %154 = add i32 %152, %153
  %155 = shl i32 %154, 13
  %156 = lshr i32 %154, 19
  %157 = or i32 %155, %156
  %158 = xor i32 %151, %157
  store i32 %158, i32* %__v157_x11
  %159 = load i32, i32* %__v148_x15
  %160 = load i32, i32* %__v157_x11
  %161 = load i32, i32* %__v170_x7
  %162 = add i32 %160, %161
  %163 = shl i32 %162, 18
  %164 = lshr i32 %162, 14
  %165 = or i32 %163, %164
  %166 = xor i32 %159, %165
  store i32 %166, i32* %__v148_x15
  %167 = load i32, i32* %__v153_x1
  %168 = load i32, i32* %__v145_x0
  %169 = load i32, i32* %__v155_x3
  %170 = add i32 %168, %169
  %171 = shl i32 %170, 7
  %172 = lshr i32 %170, 25
  %173 = or i32 %171, %172
  %174 = xor i32 %167, %173
  store i32 %174, i32* %__v153_x1
  %175 = load i32, i32* %__v154_x2
  %176 = load i32, i32* %__v153_x1
  %177 = load i32, i32* %__v145_x0
  %178 = add i32 %176, %177
  %179 = shl i32 %178, 9
  %180 = lshr i32 %178, 23
  %181 = or i32 %179, %180
  %182 = xor i32 %175, %181
  store i32 %182, i32* %__v154_x2
  %183 = load i32, i32* %__v155_x3
  %184 = load i32, i32* %__v154_x2
  %185 = load i32, i32* %__v153_x1
  %186 = add i32 %184, %185
  %187 = shl i32 %186, 13
  %188 = lshr i32 %186, 19
  %189 = or i32 %187, %188
  %190 = xor i32 %183, %189
  store i32 %190, i32* %__v155_x3
  %191 = load i32, i32* %__v145_x0
  %192 = load i32, i32* %__v155_x3
  %193 = load i32, i32* %__v154_x2
  %194 = add i32 %192, %193
  %195 = shl i32 %194, 18
  %196 = lshr i32 %194, 14
  %197 = or i32 %195, %196
  %198 = xor i32 %191, %197
  store i32 %198, i32* %__v145_x0
  %199 = load i32, i32* %__v169_x6
  %200 = load i32, i32* %__v146_x5
  %201 = load i32, i32* %__v156_x4
  %202 = add i32 %200, %201
  %203 = shl i32 %202, 7
  %204 = lshr i32 %202, 25
  %205 = or i32 %203, %204
  %206 = xor i32 %199, %205
  store i32 %206, i32* %__v169_x6
  %207 = load i32, i32* %__v170_x7
  %208 = load i32, i32* %__v169_x6
  %209 = load i32, i32* %__v146_x5
  %210 = add i32 %208, %209
  %211 = shl i32 %210, 9
  %212 = lshr i32 %210, 23
  %213 = or i32 %211, %212
  %214 = xor i32 %207, %213
  store i32 %214, i32* %__v170_x7
  %215 = load i32, i32* %__v156_x4
  %216 = load i32, i32* %__v170_x7
  %217 = load i32, i32* %__v169_x6
  %218 = add i32 %216, %217
  %219 = shl i32 %218, 13
  %220 = lshr i32 %218, 19
  %221 = or i32 %219, %220
  %222 = xor i32 %215, %221
  store i32 %222, i32* %__v156_x4
  %223 = load i32, i32* %__v146_x5
  %224 = load i32, i32* %__v156_x4
  %225 = load i32, i32* %__v170_x7
  %226 = add i32 %224, %225
  %227 = shl i32 %226, 18
  %228 = lshr i32 %226, 14
  %229 = or i32 %227, %228
  %230 = xor i32 %223, %229
  store i32 %230, i32* %__v146_x5
  %231 = load i32, i32* %__v157_x11
  %232 = load i32, i32* %__v147_x10
  %233 = load i32, i32* %__v172_x9
  %234 = add i32 %232, %233
  %235 = shl i32 %234, 7
  %236 = lshr i32 %234, 25
  %237 = or i32 %235, %236
  %238 = xor i32 %231, %237
  store i32 %238, i32* %__v157_x11
  %239 = load i32, i32* %__v171_x8
  %240 = load i32, i32* %__v157_x11
  %241 = load i32, i32* %__v147_x10
  %242 = add i32 %240, %241
  %243 = shl i32 %242, 9
  %244 = lshr i32 %242, 23
  %245 = or i32 %243, %244
  %246 = xor i32 %239, %245
  store i32 %246, i32* %__v171_x8
  %247 = load i32, i32* %__v172_x9
  %248 = load i32, i32* %__v171_x8
  %249 = load i32, i32* %__v157_x11
  %250 = add i32 %248, %249
  %251 = shl i32 %250, 13
  %252 = lshr i32 %250, 19
  %253 = or i32 %251, %252
  %254 = xor i32 %247, %253
  store i32 %254, i32* %__v172_x9
  %255 = load i32, i32* %__v147_x10
  %256 = load i32, i32* %__v172_x9
  %257 = load i32, i32* %__v171_x8
  %258 = add i32 %256, %257
  %259 = shl i32 %258, 18
  %260 = lshr i32 %258, 14
  %261 = or i32 %259, %260
  %262 = xor i32 %255, %261
  store i32 %262, i32* %__v147_x10
  %263 = load i32, i32* %__v158_x12
  %264 = load i32, i32* %__v148_x15
  %265 = load i32, i32* %__v160_x14
  %266 = add i32 %264, %265
  %267 = shl i32 %266, 7
  %268 = lshr i32 %266, 25
  %269 = or i32 %267, %268
  %270 = xor i32 %263, %269
  store i32 %270, i32* %__v158_x12
  %271 = load i32, i32* %__v159_x13
  %272 = load i32, i32* %__v158_x12
  %273 = load i32, i32* %__v148_x15
  %274 = add i32 %272, %273
  %275 = shl i32 %274, 9
  %276 = lshr i32 %274, 23
  %277 = or i32 %275, %276
  %278 = xor i32 %271, %277
  store i32 %278, i32* %__v159_x13
  %279 = load i32, i32* %__v160_x14
  %280 = load i32, i32* %__v159_x13
  %281 = load i32, i32* %__v158_x12
  %282 = add i32 %280, %281
  %283 = shl i32 %282, 13
  %284 = lshr i32 %282, 19
  %285 = or i32 %283, %284
  %286 = xor i32 %279, %285
  store i32 %286, i32* %__v160_x14
  %287 = load i32, i32* %__v148_x15
  %288 = load i32, i32* %__v160_x14
  %289 = load i32, i32* %__v159_x13
  %290 = add i32 %288, %289
  %291 = shl i32 %290, 18
  %292 = lshr i32 %290, 14
  %293 = or i32 %291, %292
  %294 = xor i32 %287, %293
  store i32 %294, i32* %__v148_x15
  br label %295

; <label>:295:                                    ; preds = %38
  %296 = add i32 %__v177_i, 1
  br label %36

; <label>:297:                                    ; preds = %36
  %298 = getelementptr i8, i8* %__v142_output, i64 0
  %299 = load i32, i32* %__v145_x0
  %300 = add i32 %299, %__v149_j0
  %301 = bitcast i8* %298 to i32*
  store i32 %300, i32* %301
  %302 = getelementptr i8, i8* %__v142_output, i64 4
  %303 = load i32, i32* %__v153_x1
  %304 = add i32 %303, %__v161_j1
  %305 = bitcast i8* %302 to i32*
  store i32 %304, i32* %305
  %306 = getelementptr i8, i8* %__v142_output, i64 8
  %307 = load i32, i32* %__v154_x2
  %308 = add i32 %307, %__v162_j2
  %309 = bitcast i8* %306 to i32*
  store i32 %308, i32* %309
  %310 = getelementptr i8, i8* %__v142_output, i64 12
  %311 = load i32, i32* %__v155_x3
  %312 = add i32 %311, %__v163_j3
  %313 = bitcast i8* %310 to i32*
  store i32 %312, i32* %313
  %314 = getelementptr i8, i8* %__v142_output, i64 16
  %315 = load i32, i32* %__v156_x4
  %316 = add i32 %315, %__v164_j4
  %317 = bitcast i8* %314 to i32*
  store i32 %316, i32* %317
  %318 = getelementptr i8, i8* %__v142_output, i64 20
  %319 = load i32, i32* %__v146_x5
  %320 = add i32 %319, %__v150_j5
  %321 = bitcast i8* %318 to i32*
  store i32 %320, i32* %321
  %322 = getelementptr i8, i8* %__v142_output, i64 24
  %323 = load i32, i32* %__v169_x6
  %324 = add i32 %323, %__v173_j6
  %325 = bitcast i8* %322 to i32*
  store i32 %324, i32* %325
  %326 = getelementptr i8, i8* %__v142_output, i64 28
  %327 = load i32, i32* %__v170_x7
  %328 = add i32 %327, %__v174_j7
  %329 = bitcast i8* %326 to i32*
  store i32 %328, i32* %329
  %330 = getelementptr i8, i8* %__v142_output, i64 32
  %331 = load i32, i32* %__v171_x8
  %332 = add i32 %331, %__v175_j8
  %333 = bitcast i8* %330 to i32*
  store i32 %332, i32* %333
  %334 = getelementptr i8, i8* %__v142_output, i64 36
  %335 = load i32, i32* %__v172_x9
  %336 = add i32 %335, %__v176_j9
  %337 = bitcast i8* %334 to i32*
  store i32 %336, i32* %337
  %338 = getelementptr i8, i8* %__v142_output, i64 40
  %339 = load i32, i32* %__v147_x10
  %340 = add i32 %339, %__v151_j10
  %341 = bitcast i8* %338 to i32*
  store i32 %340, i32* %341
  %342 = getelementptr i8, i8* %__v142_output, i64 44
  %343 = load i32, i32* %__v157_x11
  %344 = add i32 %343, %__v165_j11
  %345 = bitcast i8* %342 to i32*
  store i32 %344, i32* %345
  %346 = getelementptr i8, i8* %__v142_output, i64 48
  %347 = load i32, i32* %__v158_x12
  %348 = add i32 %347, %__v166_j12
  %349 = bitcast i8* %346 to i32*
  store i32 %348, i32* %349
  %350 = getelementptr i8, i8* %__v142_output, i64 52
  %351 = load i32, i32* %__v159_x13
  %352 = add i32 %351, %__v167_j13
  %353 = bitcast i8* %350 to i32*
  store i32 %352, i32* %353
  %354 = getelementptr i8, i8* %__v142_output, i64 56
  %355 = load i32, i32* %__v160_x14
  %356 = add i32 %355, %__v168_j14
  %357 = bitcast i8* %354 to i32*
  store i32 %356, i32* %357
  %358 = getelementptr i8, i8* %__v142_output, i64 60
  %359 = load i32, i32* %__v148_x15
  %360 = add i32 %359, %__v152_j15
  %361 = bitcast i8* %358 to i32*
  store i32 %360, i32* %361
  ret void
}

define internal void @_poly1305_blocks(%poly1305_state_internal_t* %__v121_state, i8* %__v122_m, i64 %__v224___v122_m_len) {
entry:
  %__rctx = alloca i1
  store i1 true, i1* %__rctx
  %0 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v121_state, i32 0, i32 5
  %1 = load i8, i8* %0
  %2 = icmp ne i8 %1, 0
  %3 = call i64 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %2, i64 0, i64 1099511627776)
  %4 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v121_state, i32 0, i32 0
  %5 = bitcast [3 x i64]* %4 to i64*
  %6 = getelementptr i64, i64* %5, i64 0
  %__v126_r0 = load i64, i64* %6
  %7 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v121_state, i32 0, i32 0
  %8 = bitcast [3 x i64]* %7 to i64*
  %9 = getelementptr i64, i64* %8, i64 1
  %__v127_r1 = load i64, i64* %9
  %10 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v121_state, i32 0, i32 0
  %11 = bitcast [3 x i64]* %10 to i64*
  %12 = getelementptr i64, i64* %11, i64 2
  %__v128_r2 = load i64, i64* %12
  %13 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v121_state, i32 0, i32 1
  %14 = bitcast [3 x i64]* %13 to i64*
  %15 = getelementptr i64, i64* %14, i64 0
  %16 = load i64, i64* %15
  %__v129_h0 = alloca i64
  store i64 %16, i64* %__v129_h0
  %17 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v121_state, i32 0, i32 1
  %18 = bitcast [3 x i64]* %17 to i64*
  %19 = getelementptr i64, i64* %18, i64 1
  %20 = load i64, i64* %19
  %__v130_h1 = alloca i64
  store i64 %20, i64* %__v130_h1
  %21 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v121_state, i32 0, i32 1
  %22 = bitcast [3 x i64]* %21 to i64*
  %23 = getelementptr i64, i64* %22, i64 2
  %24 = load i64, i64* %23
  %__v131_h2 = alloca i64
  store i64 %24, i64* %__v131_h2
  %__v132_s1 = mul i64 %__v127_r1, 20
  %__v133_s2 = mul i64 %__v128_r2, 20
  %__v134_mloops = udiv i64 %__v224___v122_m_len, 16
  br label %25

; <label>:25:                                     ; preds = %129, %entry
  %__v135_bindex = phi i64 [ 0, %entry ], [ %130, %129 ]
  %26 = icmp ult i64 %__v135_bindex, %__v134_mloops
  br i1 %26, label %27, label %131

; <label>:27:                                     ; preds = %25
  %__v255_lexpr = mul i64 %__v135_bindex, 16
  %__v256_lexpr = mul i64 %__v135_bindex, 16
  %28 = getelementptr i8, i8* %__v122_m, i64 %__v256_lexpr
  %29 = bitcast i8* %28 to i64*
  %30 = load i64, i64* %29
  %31 = mul i64 %__v135_bindex, 16
  %__v257_lexpr = add i64 %31, 8
  %32 = mul i64 %__v135_bindex, 16
  %__v258_lexpr = add i64 %32, 8
  %33 = getelementptr i8, i8* %__v122_m, i64 %__v258_lexpr
  %34 = bitcast i8* %33 to i64*
  %35 = load i64, i64* %34
  %36 = load i64, i64* %__v129_h0
  %37 = and i64 %30, 17592186044415
  %38 = add i64 %36, %37
  store i64 %38, i64* %__v129_h0
  %39 = load i64, i64* %__v130_h1
  %40 = lshr i64 %30, 44
  %41 = shl i64 %35, 20
  %42 = or i64 %40, %41
  %43 = and i64 %42, 17592186044415
  %44 = add i64 %39, %43
  store i64 %44, i64* %__v130_h1
  %45 = load i64, i64* %__v131_h2
  %46 = lshr i64 %35, 24
  %47 = and i64 %46, 4398046511103
  %48 = or i64 %47, %3
  %49 = add i64 %45, %48
  store i64 %49, i64* %__v131_h2
  %50 = load i64, i64* %__v129_h0
  %51 = zext i64 %50 to i128
  %52 = zext i64 %__v126_r0 to i128
  %53 = mul i128 %51, %52
  %54 = load i64, i64* %__v130_h1
  %55 = zext i64 %54 to i128
  %56 = zext i64 %__v133_s2 to i128
  %57 = mul i128 %55, %56
  %58 = add i128 %53, %57
  %59 = load i64, i64* %__v131_h2
  %60 = zext i64 %59 to i128
  %61 = zext i64 %__v132_s1 to i128
  %62 = mul i128 %60, %61
  %63 = add i128 %58, %62
  %__v138_d0 = alloca i128
  store i128 %63, i128* %__v138_d0
  %64 = load i64, i64* %__v129_h0
  %65 = zext i64 %64 to i128
  %66 = zext i64 %__v127_r1 to i128
  %67 = mul i128 %65, %66
  %68 = load i64, i64* %__v130_h1
  %69 = zext i64 %68 to i128
  %70 = zext i64 %__v126_r0 to i128
  %71 = mul i128 %69, %70
  %72 = add i128 %67, %71
  %73 = load i64, i64* %__v131_h2
  %74 = zext i64 %73 to i128
  %75 = zext i64 %__v133_s2 to i128
  %76 = mul i128 %74, %75
  %77 = add i128 %72, %76
  %__v139_d1 = alloca i128
  store i128 %77, i128* %__v139_d1
  %78 = load i64, i64* %__v129_h0
  %79 = zext i64 %78 to i128
  %80 = zext i64 %__v128_r2 to i128
  %81 = mul i128 %79, %80
  %82 = load i64, i64* %__v130_h1
  %83 = zext i64 %82 to i128
  %84 = zext i64 %__v127_r1 to i128
  %85 = mul i128 %83, %84
  %86 = add i128 %81, %85
  %87 = load i64, i64* %__v131_h2
  %88 = zext i64 %87 to i128
  %89 = zext i64 %__v126_r0 to i128
  %90 = mul i128 %88, %89
  %91 = add i128 %86, %90
  %__v140_d2 = alloca i128
  store i128 %91, i128* %__v140_d2
  %92 = load i128, i128* %__v138_d0
  %93 = lshr i128 %92, 44
  %94 = trunc i128 %93 to i64
  %__v141_c = alloca i64
  store i64 %94, i64* %__v141_c
  %95 = load i128, i128* %__v138_d0
  %96 = trunc i128 %95 to i64
  %97 = and i64 %96, 17592186044415
  store i64 %97, i64* %__v129_h0
  %98 = load i128, i128* %__v139_d1
  %99 = load i64, i64* %__v141_c
  %100 = zext i64 %99 to i128
  %101 = add i128 %98, %100
  store i128 %101, i128* %__v139_d1
  %102 = load i128, i128* %__v139_d1
  %103 = lshr i128 %102, 44
  %104 = trunc i128 %103 to i64
  store i64 %104, i64* %__v141_c
  %105 = load i128, i128* %__v139_d1
  %106 = trunc i128 %105 to i64
  %107 = and i64 %106, 17592186044415
  store i64 %107, i64* %__v130_h1
  %108 = load i128, i128* %__v140_d2
  %109 = load i64, i64* %__v141_c
  %110 = zext i64 %109 to i128
  %111 = add i128 %108, %110
  store i128 %111, i128* %__v140_d2
  %112 = load i128, i128* %__v140_d2
  %113 = lshr i128 %112, 42
  %114 = trunc i128 %113 to i64
  store i64 %114, i64* %__v141_c
  %115 = load i128, i128* %__v140_d2
  %116 = trunc i128 %115 to i64
  %117 = and i64 %116, 4398046511103
  store i64 %117, i64* %__v131_h2
  %118 = load i64, i64* %__v129_h0
  %119 = load i64, i64* %__v141_c
  %120 = mul i64 %119, 5
  %121 = add i64 %118, %120
  store i64 %121, i64* %__v129_h0
  %122 = load i64, i64* %__v129_h0
  %123 = lshr i64 %122, 44
  store i64 %123, i64* %__v141_c
  %124 = load i64, i64* %__v129_h0
  %125 = and i64 %124, 17592186044415
  store i64 %125, i64* %__v129_h0
  %126 = load i64, i64* %__v130_h1
  %127 = load i64, i64* %__v141_c
  %128 = add i64 %126, %127
  store i64 %128, i64* %__v130_h1
  br label %129

; <label>:129:                                    ; preds = %27
  %130 = add i64 %__v135_bindex, 1
  br label %25

; <label>:131:                                    ; preds = %25
  %132 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v121_state, i32 0, i32 1
  %133 = bitcast [3 x i64]* %132 to i64*
  %134 = getelementptr i64, i64* %133, i64 0
  %135 = load i64, i64* %__v129_h0
  store i64 %135, i64* %134
  %136 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v121_state, i32 0, i32 1
  %137 = bitcast [3 x i64]* %136 to i64*
  %138 = getelementptr i64, i64* %137, i64 1
  %139 = load i64, i64* %__v130_h1
  store i64 %139, i64* %138
  %140 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v121_state, i32 0, i32 1
  %141 = bitcast [3 x i64]* %140 to i64*
  %142 = getelementptr i64, i64* %141, i64 2
  %143 = load i64, i64* %__v131_h2
  store i64 %143, i64* %142
  ret void
}

define internal void @_poly1305_finish(%poly1305_state_internal_t* %__v106_state, i8* %__v107_mac) {
entry:
  %__rctx = alloca i1
  store i1 true, i1* %__rctx
  %0 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v106_state, i32 0, i32 3
  %1 = load i64, i64* %0
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %9

; <label>:3:                                      ; preds = %entry
  %4 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v106_state, i32 0, i32 3
  %__v108_start = load i64, i64* %4
  %5 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v106_state, i32 0, i32 4
  %6 = bitcast [16 x i8]* %5 to i8*
  %7 = getelementptr i8, i8* %6, i64 %__v108_start
  store i8 1, i8* %7
  %8 = add i64 %__v108_start, 1
  br label %162

; <label>:9:                                      ; preds = %entry
  br label %10

; <label>:10:                                     ; preds = %170, %9
  %11 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v106_state, i32 0, i32 1
  %12 = bitcast [3 x i64]* %11 to i64*
  %13 = getelementptr i64, i64* %12, i64 0
  %14 = load i64, i64* %13
  %__v112_h0 = alloca i64
  store i64 %14, i64* %__v112_h0
  %15 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v106_state, i32 0, i32 1
  %16 = bitcast [3 x i64]* %15 to i64*
  %17 = getelementptr i64, i64* %16, i64 1
  %18 = load i64, i64* %17
  %__v113_h1 = alloca i64
  store i64 %18, i64* %__v113_h1
  %19 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v106_state, i32 0, i32 1
  %20 = bitcast [3 x i64]* %19 to i64*
  %21 = getelementptr i64, i64* %20, i64 2
  %22 = load i64, i64* %21
  %__v114_h2 = alloca i64
  store i64 %22, i64* %__v114_h2
  %23 = load i64, i64* %__v113_h1
  %24 = lshr i64 %23, 44
  %__v115_c = alloca i64
  store i64 %24, i64* %__v115_c
  %25 = load i64, i64* %__v113_h1
  %26 = and i64 %25, 17592186044415
  store i64 %26, i64* %__v113_h1
  %27 = load i64, i64* %__v114_h2
  %28 = load i64, i64* %__v115_c
  %29 = add i64 %27, %28
  store i64 %29, i64* %__v114_h2
  %30 = load i64, i64* %__v114_h2
  %31 = lshr i64 %30, 42
  store i64 %31, i64* %__v115_c
  %32 = load i64, i64* %__v114_h2
  %33 = and i64 %32, 4398046511103
  store i64 %33, i64* %__v114_h2
  %34 = load i64, i64* %__v112_h0
  %35 = load i64, i64* %__v115_c
  %36 = mul i64 %35, 5
  %37 = add i64 %34, %36
  store i64 %37, i64* %__v112_h0
  %38 = load i64, i64* %__v112_h0
  %39 = lshr i64 %38, 44
  store i64 %39, i64* %__v115_c
  %40 = load i64, i64* %__v112_h0
  %41 = and i64 %40, 17592186044415
  store i64 %41, i64* %__v112_h0
  %42 = load i64, i64* %__v113_h1
  %43 = load i64, i64* %__v115_c
  %44 = add i64 %42, %43
  store i64 %44, i64* %__v113_h1
  %45 = load i64, i64* %__v113_h1
  %46 = lshr i64 %45, 44
  store i64 %46, i64* %__v115_c
  %47 = load i64, i64* %__v113_h1
  %48 = and i64 %47, 17592186044415
  store i64 %48, i64* %__v113_h1
  %49 = load i64, i64* %__v114_h2
  %50 = load i64, i64* %__v115_c
  %51 = add i64 %49, %50
  store i64 %51, i64* %__v114_h2
  %52 = load i64, i64* %__v114_h2
  %53 = lshr i64 %52, 42
  store i64 %53, i64* %__v115_c
  %54 = load i64, i64* %__v114_h2
  %55 = and i64 %54, 4398046511103
  store i64 %55, i64* %__v114_h2
  %56 = load i64, i64* %__v112_h0
  %57 = load i64, i64* %__v115_c
  %58 = mul i64 %57, 5
  %59 = add i64 %56, %58
  store i64 %59, i64* %__v112_h0
  %60 = load i64, i64* %__v112_h0
  %61 = lshr i64 %60, 44
  store i64 %61, i64* %__v115_c
  %62 = load i64, i64* %__v112_h0
  %63 = and i64 %62, 17592186044415
  store i64 %63, i64* %__v112_h0
  %64 = load i64, i64* %__v113_h1
  %65 = load i64, i64* %__v115_c
  %66 = add i64 %64, %65
  store i64 %66, i64* %__v113_h1
  %67 = load i64, i64* %__v112_h0
  %68 = add i64 %67, 5
  %__v116_g0 = alloca i64
  store i64 %68, i64* %__v116_g0
  %69 = load i64, i64* %__v116_g0
  %70 = lshr i64 %69, 44
  store i64 %70, i64* %__v115_c
  %71 = load i64, i64* %__v116_g0
  %72 = and i64 %71, 17592186044415
  store i64 %72, i64* %__v116_g0
  %73 = load i64, i64* %__v113_h1
  %74 = load i64, i64* %__v115_c
  %75 = add i64 %73, %74
  %__v117_g1 = alloca i64
  store i64 %75, i64* %__v117_g1
  %76 = load i64, i64* %__v117_g1
  %77 = lshr i64 %76, 44
  store i64 %77, i64* %__v115_c
  %78 = load i64, i64* %__v117_g1
  %79 = and i64 %78, 17592186044415
  store i64 %79, i64* %__v117_g1
  %80 = load i64, i64* %__v114_h2
  %81 = load i64, i64* %__v115_c
  %82 = add i64 %80, %81
  %83 = sub i64 %82, 4398046511104
  %__v118_g2 = alloca i64
  store i64 %83, i64* %__v118_g2
  %84 = load i64, i64* %__v118_g2
  %85 = lshr i64 %84, 63
  %86 = sub i64 %85, 1
  store i64 %86, i64* %__v115_c
  %87 = load i64, i64* %__v116_g0
  %88 = load i64, i64* %__v115_c
  %89 = and i64 %87, %88
  store i64 %89, i64* %__v116_g0
  %90 = load i64, i64* %__v117_g1
  %91 = load i64, i64* %__v115_c
  %92 = and i64 %90, %91
  store i64 %92, i64* %__v117_g1
  %93 = load i64, i64* %__v118_g2
  %94 = load i64, i64* %__v115_c
  %95 = and i64 %93, %94
  store i64 %95, i64* %__v118_g2
  %96 = load i64, i64* %__v115_c
  %97 = xor i64 %96, -1
  store i64 %97, i64* %__v115_c
  %98 = load i64, i64* %__v112_h0
  %99 = load i64, i64* %__v115_c
  %100 = and i64 %98, %99
  %101 = load i64, i64* %__v116_g0
  %102 = or i64 %100, %101
  store i64 %102, i64* %__v112_h0
  %103 = load i64, i64* %__v113_h1
  %104 = load i64, i64* %__v115_c
  %105 = and i64 %103, %104
  %106 = load i64, i64* %__v117_g1
  %107 = or i64 %105, %106
  store i64 %107, i64* %__v113_h1
  %108 = load i64, i64* %__v114_h2
  %109 = load i64, i64* %__v115_c
  %110 = and i64 %108, %109
  %111 = load i64, i64* %__v118_g2
  %112 = or i64 %110, %111
  store i64 %112, i64* %__v114_h2
  %113 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v106_state, i32 0, i32 2
  %114 = bitcast [2 x i64]* %113 to i64*
  %115 = getelementptr i64, i64* %114, i64 0
  %__v119_t0 = load i64, i64* %115
  %116 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v106_state, i32 0, i32 2
  %117 = bitcast [2 x i64]* %116 to i64*
  %118 = getelementptr i64, i64* %117, i64 1
  %__v120_t1 = load i64, i64* %118
  %119 = load i64, i64* %__v112_h0
  %120 = and i64 %__v119_t0, 17592186044415
  %121 = add i64 %119, %120
  store i64 %121, i64* %__v112_h0
  %122 = load i64, i64* %__v112_h0
  %123 = lshr i64 %122, 44
  store i64 %123, i64* %__v115_c
  %124 = load i64, i64* %__v112_h0
  %125 = and i64 %124, 17592186044415
  store i64 %125, i64* %__v112_h0
  %126 = load i64, i64* %__v113_h1
  %127 = lshr i64 %__v119_t0, 44
  %128 = shl i64 %__v120_t1, 20
  %129 = or i64 %127, %128
  %130 = and i64 %129, 17592186044415
  %131 = load i64, i64* %__v115_c
  %132 = add i64 %130, %131
  %133 = add i64 %126, %132
  store i64 %133, i64* %__v113_h1
  %134 = load i64, i64* %__v113_h1
  %135 = lshr i64 %134, 44
  store i64 %135, i64* %__v115_c
  %136 = load i64, i64* %__v113_h1
  %137 = and i64 %136, 17592186044415
  store i64 %137, i64* %__v113_h1
  %138 = load i64, i64* %__v114_h2
  %139 = lshr i64 %__v120_t1, 24
  %140 = and i64 %139, 4398046511103
  %141 = load i64, i64* %__v115_c
  %142 = add i64 %140, %141
  %143 = add i64 %138, %142
  store i64 %143, i64* %__v114_h2
  %144 = load i64, i64* %__v114_h2
  %145 = and i64 %144, 4398046511103
  store i64 %145, i64* %__v114_h2
  %146 = load i64, i64* %__v112_h0
  %147 = load i64, i64* %__v113_h1
  %148 = shl i64 %147, 44
  %149 = or i64 %146, %148
  store i64 %149, i64* %__v112_h0
  %150 = load i64, i64* %__v113_h1
  %151 = lshr i64 %150, 20
  %152 = load i64, i64* %__v114_h2
  %153 = shl i64 %152, 24
  %154 = or i64 %151, %153
  store i64 %154, i64* %__v113_h1
  %155 = getelementptr i8, i8* %__v107_mac, i64 0
  %156 = load i64, i64* %__v112_h0
  %157 = bitcast i8* %155 to i64*
  store i64 %156, i64* %157
  %158 = getelementptr i8, i8* %__v107_mac, i64 8
  %159 = load i64, i64* %__v113_h1
  %160 = bitcast i8* %158 to i64*
  store i64 %159, i64* %160
  %161 = bitcast %poly1305_state_internal_t* %__v106_state to i8*
  call void @llvm.memset.p0i8.i64(i8* %161, i8 0, i64 ptrtoint (%poly1305_state_internal_t* getelementptr (%poly1305_state_internal_t, %poly1305_state_internal_t* null, i32 1) to i64), i32 1, i1 true)
  ret void

; <label>:162:                                    ; preds = %168, %3
  %__v109_i = phi i64 [ %8, %3 ], [ %169, %168 ]
  %163 = icmp ult i64 %__v109_i, 16
  br i1 %163, label %164, label %170

; <label>:164:                                    ; preds = %162
  %165 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v106_state, i32 0, i32 4
  %166 = bitcast [16 x i8]* %165 to i8*
  %167 = getelementptr i8, i8* %166, i64 %__v109_i
  store i8 0, i8* %167
  br label %168

; <label>:168:                                    ; preds = %164
  %169 = add i64 %__v109_i, 1
  br label %162

; <label>:170:                                    ; preds = %162
  %171 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v106_state, i32 0, i32 5
  store i8 1, i8* %171
  %172 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v106_state, i32 0, i32 4
  %173 = bitcast [16 x i8]* %172 to i8*
  call void @_poly1305_blocks(%poly1305_state_internal_t* %__v106_state, i8* %173, i64 16)
  br label %10
}

define internal void @_poly1305_update(%poly1305_state_internal_t* %__v93_state, i8* %__v94_m, i64 %__v223___v94_m_len) {
entry:
  %__rctx = alloca i1
  store i1 true, i1* %__rctx
  %__v95_mindex = alloca i64
  store i64 0, i64* %__v95_mindex
  %0 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v93_state, i32 0, i32 3
  %1 = load i64, i64* %0
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %9

; <label>:3:                                      ; preds = %entry
  %4 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v93_state, i32 0, i32 3
  %5 = load i64, i64* %4
  %6 = sub i64 16, %5
  %__v96_want = alloca i64
  store i64 %6, i64* %__v96_want
  %7 = load i64, i64* %__v96_want
  %8 = icmp ugt i64 %7, %__v223___v94_m_len
  br i1 %8, label %14, label %15

; <label>:9:                                      ; preds = %entry
  br label %10

; <label>:10:                                     ; preds = %44, %9
  %11 = load i64, i64* %__v95_mindex
  %12 = sub i64 %__v223___v94_m_len, %11
  %13 = icmp uge i64 %12, 16
  br i1 %13, label %48, label %53

; <label>:14:                                     ; preds = %3
  store i64 %__v223___v94_m_len, i64* %__v96_want
  br label %16

; <label>:15:                                     ; preds = %3
  br label %16

; <label>:16:                                     ; preds = %15, %14
  %17 = load i64, i64* %__v96_want
  br label %18

; <label>:18:                                     ; preds = %28, %16
  %__v97_i = phi i64 [ 0, %16 ], [ %29, %28 ]
  %19 = icmp ult i64 %__v97_i, %17
  br i1 %19, label %20, label %30

; <label>:20:                                     ; preds = %18
  %21 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v93_state, i32 0, i32 3
  %22 = load i64, i64* %21
  %__v98_index = add i64 %22, %__v97_i
  %23 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v93_state, i32 0, i32 4
  %24 = bitcast [16 x i8]* %23 to i8*
  %25 = getelementptr i8, i8* %24, i64 %__v98_index
  %26 = getelementptr i8, i8* %__v94_m, i64 %__v97_i
  %27 = load i8, i8* %26
  store i8 %27, i8* %25
  br label %28

; <label>:28:                                     ; preds = %20
  %29 = add i64 %__v97_i, 1
  br label %18

; <label>:30:                                     ; preds = %18
  %31 = load i64, i64* %__v95_mindex
  %32 = load i64, i64* %__v96_want
  %33 = add i64 %31, %32
  store i64 %33, i64* %__v95_mindex
  %34 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v93_state, i32 0, i32 3
  %35 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v93_state, i32 0, i32 3
  %36 = load i64, i64* %35
  %37 = load i64, i64* %__v96_want
  %38 = add i64 %36, %37
  store i64 %38, i64* %34
  %39 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v93_state, i32 0, i32 3
  %40 = load i64, i64* %39
  %41 = icmp ult i64 %40, 16
  br i1 %41, label %42, label %43

; <label>:42:                                     ; preds = %30
  ret void

; <label>:43:                                     ; preds = %30
  br label %44

; <label>:44:                                     ; preds = %43
  %45 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v93_state, i32 0, i32 4
  %46 = bitcast [16 x i8]* %45 to i8*
  call void @_poly1305_blocks(%poly1305_state_internal_t* %__v93_state, i8* %46, i64 16)
  %47 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v93_state, i32 0, i32 3
  store i64 0, i64* %47
  br label %10

; <label>:48:                                     ; preds = %10
  %49 = load i64, i64* %__v95_mindex
  %50 = sub i64 %__v223___v94_m_len, %49
  %__v99_want = and i64 %50, -16
  %__v100__mindex = load i64, i64* %__v95_mindex
  %__v101_mview = getelementptr i8, i8* %__v94_m, i64 %__v100__mindex
  call void @_poly1305_blocks(%poly1305_state_internal_t* %__v93_state, i8* %__v101_mview, i64 %__v99_want)
  %51 = load i64, i64* %__v95_mindex
  %52 = add i64 %51, %__v99_want
  store i64 %52, i64* %__v95_mindex
  br label %54

; <label>:53:                                     ; preds = %10
  br label %54

; <label>:54:                                     ; preds = %53, %48
  %55 = load i64, i64* %__v95_mindex
  %56 = icmp ult i64 %55, %__v223___v94_m_len
  br i1 %56, label %57, label %59

; <label>:57:                                     ; preds = %54
  %58 = load i64, i64* %__v95_mindex
  %__v102_remaining = sub i64 %__v223___v94_m_len, %58
  br label %61

; <label>:59:                                     ; preds = %54
  br label %60

; <label>:60:                                     ; preds = %72, %59
  ret void

; <label>:61:                                     ; preds = %70, %57
  %__v103_i = phi i64 [ 0, %57 ], [ %71, %70 ]
  %62 = icmp ult i64 %__v103_i, %__v102_remaining
  br i1 %62, label %63, label %72

; <label>:63:                                     ; preds = %61
  %64 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v93_state, i32 0, i32 3
  %__v104__leftover = load i64, i64* %64
  %__v105__mindex = load i64, i64* %__v95_mindex
  %__v253_lexpr = add i64 %__v104__leftover, %__v103_i
  %__v254_lexpr = add i64 %__v105__mindex, %__v103_i
  %65 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v93_state, i32 0, i32 4
  %66 = bitcast [16 x i8]* %65 to i8*
  %67 = getelementptr i8, i8* %66, i64 %__v253_lexpr
  %68 = getelementptr i8, i8* %__v94_m, i64 %__v254_lexpr
  %69 = load i8, i8* %68
  store i8 %69, i8* %67
  br label %70

; <label>:70:                                     ; preds = %63
  %71 = add i64 %__v103_i, 1
  br label %61

; <label>:72:                                     ; preds = %61
  %73 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v93_state, i32 0, i32 3
  %74 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v93_state, i32 0, i32 3
  %75 = load i64, i64* %74
  %76 = add i64 %75, %__v102_remaining
  store i64 %76, i64* %73
  br label %60
}

define internal void @_poly1305_init(%poly1305_state_internal_t* %__v89_state, i8* %__v90_key) {
entry:
  %__rctx = alloca i1
  store i1 true, i1* %__rctx
  %0 = getelementptr i8, i8* %__v90_key, i64 0
  %1 = bitcast i8* %0 to i64*
  %2 = load i64, i64* %1
  %3 = getelementptr i8, i8* %__v90_key, i64 8
  %4 = bitcast i8* %3 to i64*
  %5 = load i64, i64* %4
  %6 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v89_state, i32 0, i32 0
  %7 = bitcast [3 x i64]* %6 to i64*
  %8 = getelementptr i64, i64* %7, i64 0
  %9 = and i64 %2, 17575274610687
  store i64 %9, i64* %8
  %10 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v89_state, i32 0, i32 0
  %11 = bitcast [3 x i64]* %10 to i64*
  %12 = getelementptr i64, i64* %11, i64 1
  %13 = lshr i64 %2, 44
  %14 = shl i64 %5, 20
  %15 = or i64 %13, %14
  %16 = and i64 %15, 17592181915647
  store i64 %16, i64* %12
  %17 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v89_state, i32 0, i32 0
  %18 = bitcast [3 x i64]* %17 to i64*
  %19 = getelementptr i64, i64* %18, i64 2
  %20 = lshr i64 %5, 24
  %21 = and i64 %20, 68719475727
  store i64 %21, i64* %19
  %22 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v89_state, i32 0, i32 1
  %23 = bitcast [3 x i64]* %22 to i64*
  %24 = getelementptr i64, i64* %23, i64 0
  store i64 0, i64* %24
  %25 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v89_state, i32 0, i32 1
  %26 = bitcast [3 x i64]* %25 to i64*
  %27 = getelementptr i64, i64* %26, i64 1
  store i64 0, i64* %27
  %28 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v89_state, i32 0, i32 1
  %29 = bitcast [3 x i64]* %28 to i64*
  %30 = getelementptr i64, i64* %29, i64 2
  store i64 0, i64* %30
  %31 = getelementptr i8, i8* %__v90_key, i64 16
  %32 = bitcast i8* %31 to i64*
  %33 = load i64, i64* %32
  %34 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v89_state, i32 0, i32 2
  %35 = bitcast [2 x i64]* %34 to i64*
  %36 = getelementptr i64, i64* %35, i64 0
  store i64 %33, i64* %36
  %37 = getelementptr i8, i8* %__v90_key, i64 24
  %38 = bitcast i8* %37 to i64*
  %39 = load i64, i64* %38
  %40 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v89_state, i32 0, i32 2
  %41 = bitcast [2 x i64]* %40 to i64*
  %42 = getelementptr i64, i64* %41, i64 1
  store i64 %39, i64* %42
  %43 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v89_state, i32 0, i32 3
  store i64 0, i64* %43
  %44 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v89_state, i32 0, i32 5
  store i8 0, i8* %44
  ret void
}

define internal i32 @_crypto_onetimeauth_poly1305(i8* %__v85_out, i8* %__v86_m, i64 %__v222___v86_m_len, i8* %__v87_key) {
entry:
  %__rval = alloca i32
  store i32 0, i32* %__rval
  %__rctx = alloca i1
  store i1 true, i1* %__rctx
  %__v88_state = alloca %poly1305_state_internal_t
  %0 = alloca i64, i64 3
  %1 = bitcast i64* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 24, i32 8, i1 false)
  %2 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v88_state, i32 0, i32 0
  %3 = bitcast [3 x i64]* %2 to i64*
  %4 = bitcast i64* %3 to i8*
  %5 = bitcast i64* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 24, i32 8, i1 false)
  %6 = alloca i64, i64 3
  %7 = bitcast i64* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* %7, i8 0, i64 24, i32 8, i1 false)
  %8 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v88_state, i32 0, i32 1
  %9 = bitcast [3 x i64]* %8 to i64*
  %10 = bitcast i64* %9 to i8*
  %11 = bitcast i64* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 24, i32 8, i1 false)
  %12 = alloca i64, i64 2
  %13 = bitcast i64* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* %13, i8 0, i64 16, i32 8, i1 false)
  %14 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v88_state, i32 0, i32 2
  %15 = bitcast [2 x i64]* %14 to i64*
  %16 = bitcast i64* %15 to i8*
  %17 = bitcast i64* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 16, i32 8, i1 false)
  %18 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v88_state, i32 0, i32 3
  store i64 0, i64* %18
  %19 = alloca i8, i64 16
  call void @llvm.memset.p0i8.i64(i8* %19, i8 0, i64 16, i32 1, i1 false)
  %20 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v88_state, i32 0, i32 4
  %21 = bitcast [16 x i8]* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* %19, i64 16, i32 1, i1 false)
  %22 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v88_state, i32 0, i32 5
  store i8 0, i8* %22
  call void @_poly1305_init(%poly1305_state_internal_t* %__v88_state, i8* %__v87_key)
  call void @_poly1305_update(%poly1305_state_internal_t* %__v88_state, i8* %__v86_m, i64 %__v222___v86_m_len)
  call void @_poly1305_finish(%poly1305_state_internal_t* %__v88_state, i8* %__v85_out)
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #0

define internal i1 @_crypto_verify_16(i8* %__v82_x, i8* %__v83_y) {
entry:
  %__rval = alloca i1
  store i1 false, i1* %__rval
  %__rctx = alloca i1
  store i1 true, i1* %__rctx
  br label %0

; <label>:0:                                      ; preds = %19, %entry
  %__v84_i = phi i32 [ 0, %entry ], [ %20, %19 ]
  %1 = icmp ult i32 %__v84_i, 16
  br i1 %1, label %2, label %21

; <label>:2:                                      ; preds = %0
  %__m3 = load i1, i1* %__rctx
  %__v251_lexpr = zext i32 %__v84_i to i64
  %__v252_lexpr = zext i32 %__v84_i to i64
  %3 = getelementptr i8, i8* %__v82_x, i64 %__v251_lexpr
  %4 = load i8, i8* %3
  %5 = getelementptr i8, i8* %__v83_y, i64 %__v252_lexpr
  %6 = load i8, i8* %5
  %__m4 = icmp ne i8 %4, %6
  %7 = and i1 true, %__m4
  %8 = and i1 %7, %__m3
  %9 = load i1, i1* %__rval
  %10 = zext i1 %9 to i32
  %11 = call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %8, i32 0, i32 %10)
  %12 = trunc i32 %11 to i1
  store i1 %12, i1* %__rval
  %13 = and i1 true, %__m4
  %14 = and i1 %13, %__m3
  %15 = load i1, i1* %__rctx
  %16 = zext i1 %15 to i32
  %17 = call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %14, i32 0, i32 %16)
  %18 = trunc i32 %17 to i1
  store i1 %18, i1* %__rctx
  %__m5 = xor i1 %__m4, true
  %__m6 = xor i1 %__m3, true
  br label %19

; <label>:19:                                     ; preds = %2
  %20 = add i32 %__v84_i, 1
  br label %0

; <label>:21:                                     ; preds = %0
  %__m1 = load i1, i1* %__rctx
  %22 = and i1 true, %__m1
  %23 = load i1, i1* %__rval
  %24 = zext i1 %23 to i32
  %25 = call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %22, i32 1, i32 %24)
  %26 = trunc i32 %25 to i1
  store i1 %26, i1* %__rval
  %27 = and i1 true, %__m1
  %28 = load i1, i1* %__rctx
  %29 = zext i1 %28 to i32
  %30 = call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %27, i32 0, i32 %29)
  %31 = trunc i32 %30 to i1
  store i1 %31, i1* %__rctx
  %__m2 = xor i1 %__m1, true
  %32 = load i1, i1* %__rval
  ret i1 %32
}

define internal i1 @_crypto_onetimeauth_poly1305_verify(i8* %__v78_h, i8* %__v79_input, i64 %__v221___v79_input_len, i8* %__v80_k) {
entry:
  %__rval = alloca i1
  store i1 false, i1* %__rval
  %__rctx = alloca i1
  store i1 true, i1* %__rctx
  %__v81_correct = alloca i8, i64 16
  call void @llvm.memset.p0i8.i64(i8* %__v81_correct, i8 0, i64 16, i32 1, i1 false)
  %0 = call i32 @_crypto_onetimeauth_poly1305(i8* %__v81_correct, i8* %__v79_input, i64 %__v221___v79_input_len, i8* %__v80_k)
  %__v202__crypto_verify_16 = call i1 @_crypto_verify_16(i8* %__v78_h, i8* %__v81_correct)
  ret i1 %__v202__crypto_verify_16
}

define internal i32 @_crypto_stream_salsa20_xor_ic(i8* %__v56_c, i64 %__v219___v56_c_len, i8* %__v57_m, i64 %__v220___v57_m_len, i8* %__v58_n, i64 %__v59_ic_val, i8* %__v60_k) {
entry:
  %__rval = alloca i32
  store i32 0, i32* %__rval
  %__rctx = alloca i1
  store i1 true, i1* %__rctx
  %0 = icmp eq i64 %__v220___v57_m_len, 0
  br i1 %0, label %1, label %2

; <label>:1:                                      ; preds = %entry
  ret i32 0

; <label>:2:                                      ; preds = %entry
  br label %3

; <label>:3:                                      ; preds = %2
  %__v61_ic = alloca i64
  store i64 %__v59_ic_val, i64* %__v61_ic
  %__v62_kcopy = alloca i8, i64 32
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %__v62_kcopy, i8* %__v60_k, i64 32, i32 1, i1 false)
  %__v63_input = alloca i8, i64 16
  call void @llvm.memset.p0i8.i64(i8* %__v63_input, i8 0, i64 16, i32 1, i1 false)
  br label %4

; <label>:4:                                      ; preds = %10, %3
  %__v64_i = phi i32 [ 0, %3 ], [ %11, %10 ]
  %5 = icmp ult i32 %__v64_i, 8
  br i1 %5, label %6, label %12

; <label>:6:                                      ; preds = %4
  %__v237_lexpr = zext i32 %__v64_i to i64
  %__v238_lexpr = zext i32 %__v64_i to i64
  %7 = getelementptr i8, i8* %__v63_input, i64 %__v237_lexpr
  %8 = getelementptr i8, i8* %__v58_n, i64 %__v238_lexpr
  %9 = load i8, i8* %8
  store i8 %9, i8* %7
  br label %10

; <label>:10:                                     ; preds = %6
  %11 = add i32 %__v64_i, 1
  br label %4

; <label>:12:                                     ; preds = %4
  br label %13

; <label>:13:                                     ; preds = %21, %12
  %__v65_i = phi i32 [ 8, %12 ], [ %22, %21 ]
  %14 = icmp ult i32 %__v65_i, 16
  br i1 %14, label %15, label %23

; <label>:15:                                     ; preds = %13
  %__v239_lexpr = zext i32 %__v65_i to i64
  %16 = getelementptr i8, i8* %__v63_input, i64 %__v239_lexpr
  %17 = load i64, i64* %__v61_ic
  %18 = trunc i64 %17 to i8
  store i8 %18, i8* %16
  %19 = load i64, i64* %__v61_ic
  %20 = lshr i64 %19, 8
  store i64 %20, i64* %__v61_ic
  br label %21

; <label>:21:                                     ; preds = %15
  %22 = add i32 %__v65_i, 1
  br label %13

; <label>:23:                                     ; preds = %13
  %__v66_mtimes = udiv i64 %__v220___v57_m_len, 64
  %__v67_block = alloca i8, i64 64
  call void @llvm.memset.p0i8.i64(i8* %__v67_block, i8 0, i64 64, i32 1, i1 false)
  br label %24

; <label>:24:                                     ; preds = %27, %23
  %__v68_j = phi i64 [ 0, %23 ], [ %28, %27 ]
  %25 = icmp ult i64 %__v68_j, %__v66_mtimes
  br i1 %25, label %26, label %29

; <label>:26:                                     ; preds = %24
  call void @_crypto_core_salsa20(i8* %__v67_block, i8* %__v63_input, i8* %__v62_kcopy)
  %__v240_lexpr = mul i64 %__v68_j, 64
  %__v69_cview = getelementptr i8, i8* %__v56_c, i64 %__v240_lexpr
  %__v241_lexpr = mul i64 %__v68_j, 64
  %__v70_mview = getelementptr i8, i8* %__v57_m, i64 %__v241_lexpr
  br label %32

; <label>:27:                                     ; preds = %59
  %28 = add i64 %__v68_j, 1
  br label %24

; <label>:29:                                     ; preds = %24
  %30 = mul i64 %__v66_mtimes, 64
  %31 = icmp ult i64 %30, %__v220___v57_m_len
  br i1 %31, label %60, label %62

; <label>:32:                                     ; preds = %41, %26
  %__v71_i = phi i32 [ 0, %26 ], [ %42, %41 ]
  %33 = icmp ult i32 %__v71_i, 64
  br i1 %33, label %34, label %43

; <label>:34:                                     ; preds = %32
  %__v242_lexpr = zext i32 %__v71_i to i64
  %__v243_lexpr = zext i32 %__v71_i to i64
  %__v244_lexpr = zext i32 %__v71_i to i64
  %35 = getelementptr i8, i8* %__v69_cview, i64 %__v242_lexpr
  %36 = getelementptr i8, i8* %__v70_mview, i64 %__v243_lexpr
  %37 = load i8, i8* %36
  %38 = getelementptr i8, i8* %__v67_block, i64 %__v244_lexpr
  %39 = load i8, i8* %38
  %40 = xor i8 %37, %39
  store i8 %40, i8* %35
  br label %41

; <label>:41:                                     ; preds = %34
  %42 = add i32 %__v71_i, 1
  br label %32

; <label>:43:                                     ; preds = %32
  %__v72_u = alloca i32
  store i32 1, i32* %__v72_u
  br label %44

; <label>:44:                                     ; preds = %57, %43
  %__v73_i = phi i32 [ 8, %43 ], [ %58, %57 ]
  %45 = icmp ult i32 %__v73_i, 16
  br i1 %45, label %46, label %59

; <label>:46:                                     ; preds = %44
  %__v245_lexpr = zext i32 %__v73_i to i64
  %47 = load i32, i32* %__v72_u
  %48 = getelementptr i8, i8* %__v63_input, i64 %__v245_lexpr
  %49 = load i8, i8* %48
  %50 = zext i8 %49 to i32
  %51 = add i32 %47, %50
  store i32 %51, i32* %__v72_u
  %__v246_lexpr = zext i32 %__v73_i to i64
  %52 = getelementptr i8, i8* %__v63_input, i64 %__v246_lexpr
  %53 = load i32, i32* %__v72_u
  %54 = trunc i32 %53 to i8
  store i8 %54, i8* %52
  %55 = load i32, i32* %__v72_u
  %56 = lshr i32 %55, 8
  store i32 %56, i32* %__v72_u
  br label %57

; <label>:57:                                     ; preds = %46
  %58 = add i32 %__v73_i, 1
  br label %44

; <label>:59:                                     ; preds = %44
  br label %27

; <label>:60:                                     ; preds = %29
  %61 = mul i64 %__v66_mtimes, 64
  %__v74_remain = sub i64 %__v220___v57_m_len, %61
  call void @_crypto_core_salsa20(i8* %__v67_block, i8* %__v63_input, i8* %__v62_kcopy)
  %__v247_lexpr = mul i64 %__v66_mtimes, 64
  %__v75_cview = getelementptr i8, i8* %__v56_c, i64 %__v247_lexpr
  %__v248_lexpr = mul i64 %__v66_mtimes, 64
  %__v76_mview = getelementptr i8, i8* %__v57_m, i64 %__v248_lexpr
  br label %64

; <label>:62:                                     ; preds = %29
  br label %63

; <label>:63:                                     ; preds = %75, %62
  call void @llvm.memset.p0i8.i64(i8* %__v67_block, i8 0, i64 64, i32 1, i1 true)
  call void @llvm.memset.p0i8.i64(i8* %__v62_kcopy, i8 0, i64 32, i32 1, i1 true)
  ret i32 0

; <label>:64:                                     ; preds = %73, %60
  %__v77_i = phi i64 [ 0, %60 ], [ %74, %73 ]
  %65 = icmp ult i64 %__v77_i, %__v74_remain
  br i1 %65, label %66, label %75

; <label>:66:                                     ; preds = %64
  %67 = getelementptr i8, i8* %__v75_cview, i64 %__v77_i
  %68 = getelementptr i8, i8* %__v76_mview, i64 %__v77_i
  %69 = load i8, i8* %68
  %70 = getelementptr i8, i8* %__v67_block, i64 %__v77_i
  %71 = load i8, i8* %70
  %72 = xor i8 %69, %71
  store i8 %72, i8* %67
  br label %73

; <label>:73:                                     ; preds = %66
  %74 = add i64 %__v77_i, 1
  br label %64

; <label>:75:                                     ; preds = %64
  br label %63
}

define internal i32 @_crypto_stream_xsalsa20_xor_ic(i8* %__v48_c, i64 %__v217___v48_c_len, i8* %__v49_m, i64 %__v218___v49_m_len, i8* %__v50_n, i64 %__v51_ic, i8* %__v52_k) {
entry:
  %__rval = alloca i32
  store i32 0, i32* %__rval
  %__rctx = alloca i1
  store i1 true, i1* %__rctx
  %__v53_subkey = alloca i8, i64 32
  call void @llvm.memset.p0i8.i64(i8* %__v53_subkey, i8 0, i64 32, i32 1, i1 false)
  %0 = getelementptr i8, i8* %__v50_n, i64 0
  call void @_crypto_core_hsalsa20(i8* %__v53_subkey, i8* %0, i8* %__v52_k)
  %__v54_tmp = getelementptr i8, i8* %__v50_n, i64 16
  %__v55_ret = call i32 @_crypto_stream_salsa20_xor_ic(i8* %__v48_c, i64 %__v217___v48_c_len, i8* %__v49_m, i64 %__v218___v49_m_len, i8* %__v54_tmp, i64 %__v51_ic, i8* %__v53_subkey)
  call void @llvm.memset.p0i8.i64(i8* %__v53_subkey, i8 0, i64 32, i32 1, i1 true)
  ret i32 %__v55_ret
}

define internal i32 @_crypto_stream_xsalsa20_xor(i8* %__v44_c, i64 %__v215___v44_c_len, i8* %__v45_m, i64 %__v216___v45_m_len, i8* %__v46_n, i8* %__v47_k) {
entry:
  %__rval = alloca i32
  store i32 0, i32* %__rval
  %__rctx = alloca i1
  store i1 true, i1* %__rctx
  %__v201__crypto_stream_xsalsa20_xor_ic = call i32 @_crypto_stream_xsalsa20_xor_ic(i8* %__v44_c, i64 %__v215___v44_c_len, i8* %__v45_m, i64 %__v216___v45_m_len, i8* %__v46_n, i64 0, i8* %__v47_k)
  ret i32 %__v201__crypto_stream_xsalsa20_xor_ic
}

define internal i1 @_crypto_secretbox_xsalsa20poly1305(i8* %__v36_c, i64 %__v213___v36_c_len, i8* %__v37_m, i64 %__v214___v37_m_len, i8* %__v38_n, i8* %__v39_k) {
entry:
  %__rval = alloca i1
  store i1 false, i1* %__rval
  %__rctx = alloca i1
  store i1 true, i1* %__rctx
  %0 = icmp ult i64 %__v214___v37_m_len, 32
  br i1 %0, label %1, label %2

; <label>:1:                                      ; preds = %entry
  ret i1 false

; <label>:2:                                      ; preds = %entry
  br label %3

; <label>:3:                                      ; preds = %2
  %4 = call i32 @_crypto_stream_xsalsa20_xor(i8* %__v36_c, i64 %__v213___v36_c_len, i8* %__v37_m, i64 %__v214___v37_m_len, i8* %__v38_n, i8* %__v39_k)
  %__v40_cview = getelementptr i8, i8* %__v36_c, i64 16
  %__v236_lexpr = sub i64 %__v213___v36_c_len, 32
  %__v41_mview = getelementptr i8, i8* %__v36_c, i64 32
  %__v42_kview = getelementptr i8, i8* %__v36_c, i64 0
  %5 = call i32 @_crypto_onetimeauth_poly1305(i8* %__v40_cview, i8* %__v41_mview, i64 %__v236_lexpr, i8* %__v42_kview)
  br label %6

; <label>:6:                                      ; preds = %10, %3
  %__v43_i = phi i64 [ 0, %3 ], [ %11, %10 ]
  %7 = icmp ult i64 %__v43_i, 16
  br i1 %7, label %8, label %12

; <label>:8:                                      ; preds = %6
  %9 = getelementptr i8, i8* %__v36_c, i64 %__v43_i
  store i8 0, i8* %9
  br label %10

; <label>:10:                                     ; preds = %8
  %11 = add i64 %__v43_i, 1
  br label %6

; <label>:12:                                     ; preds = %6
  ret i1 true
}

define i1 @_crypto_secretbox(i8* %__v32_c, i64 %__v211___v32_c_len, i8* %__v33_m, i64 %__v212___v33_m_len, i8* %__v34_n, i8* %__v35_k) {
entry:
  %__rval = alloca i1
  store i1 false, i1* %__rval
  %__rctx = alloca i1
  store i1 true, i1* %__rctx
  %__v200__crypto_secretbox_xsalsa20poly1305 = call i1 @_crypto_secretbox_xsalsa20poly1305(i8* %__v32_c, i64 %__v211___v32_c_len, i8* %__v33_m, i64 %__v212___v33_m_len, i8* %__v34_n, i8* %__v35_k)
  ret i1 %__v200__crypto_secretbox_xsalsa20poly1305
}

define internal i32 @_crypto_stream_salsa20(i8* %__v18_c, i64 %__v210___v18_c_len, i8* %__v19_n, i8* %__v20_k) {
entry:
  %__rval = alloca i32
  store i32 0, i32* %__rval
  %__rctx = alloca i1
  store i1 true, i1* %__rctx
  %0 = icmp eq i64 %__v210___v18_c_len, 0
  br i1 %0, label %1, label %2

; <label>:1:                                      ; preds = %entry
  ret i32 0

; <label>:2:                                      ; preds = %entry
  br label %3

; <label>:3:                                      ; preds = %2
  %__v21_kcopy = alloca i8, i64 32
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %__v21_kcopy, i8* %__v20_k, i64 32, i32 1, i1 false)
  %__v22_input = alloca i8, i64 16
  call void @llvm.memset.p0i8.i64(i8* %__v22_input, i8 0, i64 16, i32 1, i1 false)
  br label %4

; <label>:4:                                      ; preds = %10, %3
  %__v23_i = phi i32 [ 0, %3 ], [ %11, %10 ]
  %5 = icmp ult i32 %__v23_i, 8
  br i1 %5, label %6, label %12

; <label>:6:                                      ; preds = %4
  %__v227_lexpr = zext i32 %__v23_i to i64
  %__v228_lexpr = zext i32 %__v23_i to i64
  %7 = getelementptr i8, i8* %__v22_input, i64 %__v227_lexpr
  %8 = getelementptr i8, i8* %__v19_n, i64 %__v228_lexpr
  %9 = load i8, i8* %8
  store i8 %9, i8* %7
  br label %10

; <label>:10:                                     ; preds = %6
  %11 = add i32 %__v23_i, 1
  br label %4

; <label>:12:                                     ; preds = %4
  %13 = lshr i64 %__v210___v18_c_len, 6
  %__v24_ctimes = trunc i64 %13 to i32
  br label %14

; <label>:14:                                     ; preds = %19, %12
  %__v25_j = phi i32 [ 0, %12 ], [ %20, %19 ]
  %15 = icmp ult i32 %__v25_j, %__v24_ctimes
  br i1 %15, label %16, label %21

; <label>:16:                                     ; preds = %14
  %17 = mul i32 %__v25_j, 64
  %__v229_lexpr = zext i32 %17 to i64
  %18 = getelementptr i8, i8* %__v18_c, i64 %__v229_lexpr
  call void @_crypto_core_salsa20(i8* %18, i8* %__v22_input, i8* %__v21_kcopy)
  %__v26_u = alloca i32
  store i32 1, i32* %__v26_u
  br label %25

; <label>:19:                                     ; preds = %40
  %20 = add i32 %__v25_j, 1
  br label %14

; <label>:21:                                     ; preds = %14
  %__v28_block = alloca i8, i64 64
  call void @llvm.memset.p0i8.i64(i8* %__v28_block, i8 0, i64 64, i32 1, i1 false)
  %22 = mul i32 %__v24_ctimes, 64
  %23 = zext i32 %22 to i64
  %24 = icmp ult i64 %23, %__v210___v18_c_len
  br i1 %24, label %41, label %46

; <label>:25:                                     ; preds = %38, %16
  %__v27_i = phi i32 [ 8, %16 ], [ %39, %38 ]
  %26 = icmp ult i32 %__v27_i, 16
  br i1 %26, label %27, label %40

; <label>:27:                                     ; preds = %25
  %__v230_lexpr = zext i32 %__v27_i to i64
  %28 = load i32, i32* %__v26_u
  %29 = getelementptr i8, i8* %__v22_input, i64 %__v230_lexpr
  %30 = load i8, i8* %29
  %31 = zext i8 %30 to i32
  %32 = add i32 %28, %31
  store i32 %32, i32* %__v26_u
  %__v231_lexpr = zext i32 %__v27_i to i64
  %33 = getelementptr i8, i8* %__v22_input, i64 %__v231_lexpr
  %34 = load i32, i32* %__v26_u
  %35 = trunc i32 %34 to i8
  store i8 %35, i8* %33
  %36 = load i32, i32* %__v26_u
  %37 = lshr i32 %36, 8
  store i32 %37, i32* %__v26_u
  br label %38

; <label>:38:                                     ; preds = %27
  %39 = add i32 %__v27_i, 1
  br label %25

; <label>:40:                                     ; preds = %25
  br label %19

; <label>:41:                                     ; preds = %21
  call void @_crypto_core_salsa20(i8* %__v28_block, i8* %__v22_input, i8* %__v21_kcopy)
  %42 = mul i32 %__v24_ctimes, 64
  %43 = zext i32 %42 to i64
  %44 = sub i64 %__v210___v18_c_len, %43
  %__v29_remain = trunc i64 %44 to i32
  %45 = mul i32 %__v24_ctimes, 64
  %__v232_lexpr = zext i32 %45 to i64
  %__v233_lexpr = zext i32 %__v29_remain to i64
  %__v30_cview = getelementptr i8, i8* %__v18_c, i64 %__v232_lexpr
  br label %48

; <label>:46:                                     ; preds = %21
  br label %47

; <label>:47:                                     ; preds = %56, %46
  call void @llvm.memset.p0i8.i64(i8* %__v28_block, i8 0, i64 64, i32 1, i1 true)
  call void @llvm.memset.p0i8.i64(i8* %__v21_kcopy, i8 0, i64 32, i32 1, i1 true)
  ret i32 0

; <label>:48:                                     ; preds = %54, %41
  %__v31_i = phi i32 [ 0, %41 ], [ %55, %54 ]
  %49 = icmp ult i32 %__v31_i, %__v29_remain
  br i1 %49, label %50, label %56

; <label>:50:                                     ; preds = %48
  %__v234_lexpr = zext i32 %__v31_i to i64
  %__v235_lexpr = zext i32 %__v31_i to i64
  %51 = getelementptr i8, i8* %__v30_cview, i64 %__v234_lexpr
  %52 = getelementptr i8, i8* %__v28_block, i64 %__v235_lexpr
  %53 = load i8, i8* %52
  store i8 %53, i8* %51
  br label %54

; <label>:54:                                     ; preds = %50
  %55 = add i32 %__v31_i, 1
  br label %48

; <label>:56:                                     ; preds = %48
  br label %47
}

define internal i32 @_crypto_stream_xsalsa20(i8* %__v13_c, i64 %__v209___v13_c_len, i8* %__v14_n, i8* %__v15_k) {
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
  %__v17_ret = call i32 @_crypto_stream_salsa20(i8* %__v13_c, i64 %__v209___v13_c_len, i8* %1, i8* %__v16_subkey)
  call void @llvm.memset.p0i8.i64(i8* %__v16_subkey, i8 0, i64 32, i32 1, i1 true)
  ret i32 %__v17_ret
}

define internal i1 @_crypto_secretbox_xsalsa20poly1305_open(i8* %__v5_m, i64 %__v207___v5_m_len, i8* %__v6_c, i64 %__v208___v6_c_len, i8* %__v7_n, i8* %__v8_k) {
entry:
  %__rval = alloca i1
  store i1 false, i1* %__rval
  %__rctx = alloca i1
  store i1 true, i1* %__rctx
  %0 = icmp ult i64 %__v208___v6_c_len, 32
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
  %__v225_lexpr = sub i64 %__v208___v6_c_len, 32
  %__v11_cview = getelementptr i8, i8* %__v6_c, i64 32
  %__v199__crypto_onetimeauth_poly1305_verify = call i1 @_crypto_onetimeauth_poly1305_verify(i8* %__v10_tmp1, i8* %__v11_cview, i64 %__v225_lexpr, i8* %__v9_subkey)
  %5 = xor i1 %__v199__crypto_onetimeauth_poly1305_verify, true
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %3
  ret i1 false

; <label>:7:                                      ; preds = %3
  br label %8

; <label>:8:                                      ; preds = %7
  %9 = call i32 @_crypto_stream_xsalsa20_xor(i8* %__v5_m, i64 %__v207___v5_m_len, i8* %__v6_c, i64 %__v208___v6_c_len, i8* %__v7_n, i8* %__v8_k)
  br label %10

; <label>:10:                                     ; preds = %14, %8
  %__v12_i = phi i32 [ 0, %8 ], [ %15, %14 ]
  %11 = icmp ult i32 %__v12_i, 32
  br i1 %11, label %12, label %16

; <label>:12:                                     ; preds = %10
  %__v226_lexpr = zext i32 %__v12_i to i64
  %13 = getelementptr i8, i8* %__v5_m, i64 %__v226_lexpr
  store i8 0, i8* %13
  br label %14

; <label>:14:                                     ; preds = %12
  %15 = add i32 %__v12_i, 1
  br label %10

; <label>:16:                                     ; preds = %10
  ret i1 true
}

define i1 @_crypto_secretbox_open(i8* %__v1_m, i64 %__v205___v1_m_len, i8* %__v2_c, i64 %__v206___v2_c_len, i8* %__v3_n, i8* %__v4_k) {
entry:
  %__rval = alloca i1
  store i1 false, i1* %__rval
  %__rctx = alloca i1
  store i1 true, i1* %__rctx
  %__v198__crypto_secretbox_xsalsa20poly1305_open = call i1 @_crypto_secretbox_xsalsa20poly1305_open(i8* %__v1_m, i64 %__v205___v1_m_len, i8* %__v2_c, i64 %__v206___v2_c_len, i8* %__v3_n, i8* %__v4_k)
  ret i1 %__v198__crypto_secretbox_xsalsa20poly1305_open
}

attributes #0 = { argmemonly nounwind }
