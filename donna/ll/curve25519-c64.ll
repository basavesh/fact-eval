; ModuleID = './curve25519-c64.bc'
source_filename = "Module"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

define internal void @swap_conditional(i64* %__v100_a, i64* %__v101_b, i64 %__v102_swapi) {
entry:
  %__rctx = alloca i1
  store i1 true, i1* %__rctx
  %__m1 = icmp eq i64 %__v102_swapi, 1
  br label %0

; <label>:0:                                      ; preds = %14, %entry
  %__v103_i = phi i32 [ 0, %entry ], [ %15, %14 ]
  %1 = icmp ult i32 %__v103_i, 5
  br i1 %1, label %2, label %16

; <label>:2:                                      ; preds = %0
  %__v119_lexpr = zext i32 %__v103_i to i64
  %3 = getelementptr i64, i64* %__v100_a, i64 %__v119_lexpr
  %__v104_x = load i64, i64* %3
  %__v120_lexpr = zext i32 %__v103_i to i64
  %__v121_lexpr = zext i32 %__v103_i to i64
  %4 = getelementptr i64, i64* %__v100_a, i64 %__v120_lexpr
  %5 = getelementptr i64, i64* %__v101_b, i64 %__v121_lexpr
  %6 = load i64, i64* %5
  %7 = and i1 true, %__m1
  %8 = load i64, i64* %4
  %9 = call i64 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %7, i64 %6, i64 %8)
  store i64 %9, i64* %4
  %__v122_lexpr = zext i32 %__v103_i to i64
  %10 = getelementptr i64, i64* %__v101_b, i64 %__v122_lexpr
  %11 = and i1 true, %__m1
  %12 = load i64, i64* %10
  %13 = call i64 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %11, i64 %__v104_x, i64 %12)
  store i64 %13, i64* %10
  br label %14

; <label>:14:                                     ; preds = %2
  %15 = add i32 %__v103_i, 1
  br label %0

; <label>:16:                                     ; preds = %0
  %__m2 = xor i1 %__m1, true
  ret void
}

define internal void @fmul(i64* %__v85_output, i64* %__v86_input2, i64* %__v87_input) {
entry:
  %__rctx = alloca i1
  store i1 true, i1* %__rctx
  %__v88_t = alloca i128, i64 5
  %0 = bitcast i128* %__v88_t to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 80, i32 16, i1 false)
  %__v89_r0 = alloca i64
  store i64 0, i64* %__v89_r0
  %__v90_r1 = alloca i64
  store i64 0, i64* %__v90_r1
  %__v91_r2 = alloca i64
  store i64 0, i64* %__v91_r2
  %__v92_r3 = alloca i64
  store i64 0, i64* %__v92_r3
  %__v93_r4 = alloca i64
  store i64 0, i64* %__v93_r4
  %__v94_s0 = alloca i64
  store i64 0, i64* %__v94_s0
  %__v95_s1 = alloca i64
  store i64 0, i64* %__v95_s1
  %__v96_s2 = alloca i64
  store i64 0, i64* %__v96_s2
  %__v97_s3 = alloca i64
  store i64 0, i64* %__v97_s3
  %__v98_s4 = alloca i64
  store i64 0, i64* %__v98_s4
  %__v99_c = alloca i64
  store i64 0, i64* %__v99_c
  %1 = getelementptr i64, i64* %__v87_input, i64 0
  %2 = load i64, i64* %1
  store i64 %2, i64* %__v89_r0
  %3 = getelementptr i64, i64* %__v87_input, i64 1
  %4 = load i64, i64* %3
  store i64 %4, i64* %__v90_r1
  %5 = getelementptr i64, i64* %__v87_input, i64 2
  %6 = load i64, i64* %5
  store i64 %6, i64* %__v91_r2
  %7 = getelementptr i64, i64* %__v87_input, i64 3
  %8 = load i64, i64* %7
  store i64 %8, i64* %__v92_r3
  %9 = getelementptr i64, i64* %__v87_input, i64 4
  %10 = load i64, i64* %9
  store i64 %10, i64* %__v93_r4
  %11 = getelementptr i64, i64* %__v86_input2, i64 0
  %12 = load i64, i64* %11
  store i64 %12, i64* %__v94_s0
  %13 = getelementptr i64, i64* %__v86_input2, i64 1
  %14 = load i64, i64* %13
  store i64 %14, i64* %__v95_s1
  %15 = getelementptr i64, i64* %__v86_input2, i64 2
  %16 = load i64, i64* %15
  store i64 %16, i64* %__v96_s2
  %17 = getelementptr i64, i64* %__v86_input2, i64 3
  %18 = load i64, i64* %17
  store i64 %18, i64* %__v97_s3
  %19 = getelementptr i64, i64* %__v86_input2, i64 4
  %20 = load i64, i64* %19
  store i64 %20, i64* %__v98_s4
  %21 = getelementptr i128, i128* %__v88_t, i64 0
  %22 = load i64, i64* %__v89_r0
  %23 = zext i64 %22 to i128
  %24 = load i64, i64* %__v94_s0
  %25 = zext i64 %24 to i128
  %26 = mul i128 %23, %25
  store i128 %26, i128* %21
  %27 = getelementptr i128, i128* %__v88_t, i64 1
  %28 = load i64, i64* %__v89_r0
  %29 = zext i64 %28 to i128
  %30 = load i64, i64* %__v95_s1
  %31 = zext i64 %30 to i128
  %32 = mul i128 %29, %31
  %33 = load i64, i64* %__v90_r1
  %34 = zext i64 %33 to i128
  %35 = load i64, i64* %__v94_s0
  %36 = zext i64 %35 to i128
  %37 = mul i128 %34, %36
  %38 = add i128 %32, %37
  store i128 %38, i128* %27
  %39 = getelementptr i128, i128* %__v88_t, i64 2
  %40 = load i64, i64* %__v89_r0
  %41 = zext i64 %40 to i128
  %42 = load i64, i64* %__v96_s2
  %43 = zext i64 %42 to i128
  %44 = mul i128 %41, %43
  %45 = load i64, i64* %__v91_r2
  %46 = zext i64 %45 to i128
  %47 = load i64, i64* %__v94_s0
  %48 = zext i64 %47 to i128
  %49 = mul i128 %46, %48
  %50 = add i128 %44, %49
  %51 = load i64, i64* %__v90_r1
  %52 = zext i64 %51 to i128
  %53 = load i64, i64* %__v95_s1
  %54 = zext i64 %53 to i128
  %55 = mul i128 %52, %54
  %56 = add i128 %50, %55
  store i128 %56, i128* %39
  %57 = getelementptr i128, i128* %__v88_t, i64 3
  %58 = load i64, i64* %__v89_r0
  %59 = zext i64 %58 to i128
  %60 = load i64, i64* %__v97_s3
  %61 = zext i64 %60 to i128
  %62 = mul i128 %59, %61
  %63 = load i64, i64* %__v92_r3
  %64 = zext i64 %63 to i128
  %65 = load i64, i64* %__v94_s0
  %66 = zext i64 %65 to i128
  %67 = mul i128 %64, %66
  %68 = add i128 %62, %67
  %69 = load i64, i64* %__v90_r1
  %70 = zext i64 %69 to i128
  %71 = load i64, i64* %__v96_s2
  %72 = zext i64 %71 to i128
  %73 = mul i128 %70, %72
  %74 = add i128 %68, %73
  %75 = load i64, i64* %__v91_r2
  %76 = zext i64 %75 to i128
  %77 = load i64, i64* %__v95_s1
  %78 = zext i64 %77 to i128
  %79 = mul i128 %76, %78
  %80 = add i128 %74, %79
  store i128 %80, i128* %57
  %81 = getelementptr i128, i128* %__v88_t, i64 4
  %82 = load i64, i64* %__v89_r0
  %83 = zext i64 %82 to i128
  %84 = load i64, i64* %__v98_s4
  %85 = zext i64 %84 to i128
  %86 = mul i128 %83, %85
  %87 = load i64, i64* %__v93_r4
  %88 = zext i64 %87 to i128
  %89 = load i64, i64* %__v94_s0
  %90 = zext i64 %89 to i128
  %91 = mul i128 %88, %90
  %92 = add i128 %86, %91
  %93 = load i64, i64* %__v92_r3
  %94 = zext i64 %93 to i128
  %95 = load i64, i64* %__v95_s1
  %96 = zext i64 %95 to i128
  %97 = mul i128 %94, %96
  %98 = add i128 %92, %97
  %99 = load i64, i64* %__v90_r1
  %100 = zext i64 %99 to i128
  %101 = load i64, i64* %__v97_s3
  %102 = zext i64 %101 to i128
  %103 = mul i128 %100, %102
  %104 = add i128 %98, %103
  %105 = load i64, i64* %__v91_r2
  %106 = zext i64 %105 to i128
  %107 = load i64, i64* %__v96_s2
  %108 = zext i64 %107 to i128
  %109 = mul i128 %106, %108
  %110 = add i128 %104, %109
  store i128 %110, i128* %81
  %111 = load i64, i64* %__v93_r4
  %112 = mul i64 %111, 19
  store i64 %112, i64* %__v93_r4
  %113 = load i64, i64* %__v90_r1
  %114 = mul i64 %113, 19
  store i64 %114, i64* %__v90_r1
  %115 = load i64, i64* %__v91_r2
  %116 = mul i64 %115, 19
  store i64 %116, i64* %__v91_r2
  %117 = load i64, i64* %__v92_r3
  %118 = mul i64 %117, 19
  store i64 %118, i64* %__v92_r3
  %119 = getelementptr i128, i128* %__v88_t, i64 0
  %120 = getelementptr i128, i128* %__v88_t, i64 0
  %121 = load i128, i128* %120
  %122 = load i64, i64* %__v93_r4
  %123 = zext i64 %122 to i128
  %124 = load i64, i64* %__v95_s1
  %125 = zext i64 %124 to i128
  %126 = mul i128 %123, %125
  %127 = load i64, i64* %__v90_r1
  %128 = zext i64 %127 to i128
  %129 = load i64, i64* %__v98_s4
  %130 = zext i64 %129 to i128
  %131 = mul i128 %128, %130
  %132 = add i128 %126, %131
  %133 = load i64, i64* %__v91_r2
  %134 = zext i64 %133 to i128
  %135 = load i64, i64* %__v97_s3
  %136 = zext i64 %135 to i128
  %137 = mul i128 %134, %136
  %138 = add i128 %132, %137
  %139 = load i64, i64* %__v92_r3
  %140 = zext i64 %139 to i128
  %141 = load i64, i64* %__v96_s2
  %142 = zext i64 %141 to i128
  %143 = mul i128 %140, %142
  %144 = add i128 %138, %143
  %145 = add i128 %121, %144
  store i128 %145, i128* %119
  %146 = getelementptr i128, i128* %__v88_t, i64 1
  %147 = getelementptr i128, i128* %__v88_t, i64 1
  %148 = load i128, i128* %147
  %149 = load i64, i64* %__v93_r4
  %150 = zext i64 %149 to i128
  %151 = load i64, i64* %__v96_s2
  %152 = zext i64 %151 to i128
  %153 = mul i128 %150, %152
  %154 = load i64, i64* %__v91_r2
  %155 = zext i64 %154 to i128
  %156 = load i64, i64* %__v98_s4
  %157 = zext i64 %156 to i128
  %158 = mul i128 %155, %157
  %159 = add i128 %153, %158
  %160 = load i64, i64* %__v92_r3
  %161 = zext i64 %160 to i128
  %162 = load i64, i64* %__v97_s3
  %163 = zext i64 %162 to i128
  %164 = mul i128 %161, %163
  %165 = add i128 %159, %164
  %166 = add i128 %148, %165
  store i128 %166, i128* %146
  %167 = getelementptr i128, i128* %__v88_t, i64 2
  %168 = getelementptr i128, i128* %__v88_t, i64 2
  %169 = load i128, i128* %168
  %170 = load i64, i64* %__v93_r4
  %171 = zext i64 %170 to i128
  %172 = load i64, i64* %__v97_s3
  %173 = zext i64 %172 to i128
  %174 = mul i128 %171, %173
  %175 = load i64, i64* %__v92_r3
  %176 = zext i64 %175 to i128
  %177 = load i64, i64* %__v98_s4
  %178 = zext i64 %177 to i128
  %179 = mul i128 %176, %178
  %180 = add i128 %174, %179
  %181 = add i128 %169, %180
  store i128 %181, i128* %167
  %182 = getelementptr i128, i128* %__v88_t, i64 3
  %183 = getelementptr i128, i128* %__v88_t, i64 3
  %184 = load i128, i128* %183
  %185 = load i64, i64* %__v93_r4
  %186 = zext i64 %185 to i128
  %187 = load i64, i64* %__v98_s4
  %188 = zext i64 %187 to i128
  %189 = mul i128 %186, %188
  %190 = add i128 %184, %189
  store i128 %190, i128* %182
  %191 = getelementptr i128, i128* %__v88_t, i64 0
  %192 = load i128, i128* %191
  %193 = trunc i128 %192 to i64
  %194 = and i64 %193, 2251799813685247
  store i64 %194, i64* %__v89_r0
  %195 = getelementptr i128, i128* %__v88_t, i64 0
  %196 = load i128, i128* %195
  %197 = lshr i128 %196, 51
  %198 = trunc i128 %197 to i64
  store i64 %198, i64* %__v99_c
  %199 = getelementptr i128, i128* %__v88_t, i64 1
  %200 = getelementptr i128, i128* %__v88_t, i64 1
  %201 = load i128, i128* %200
  %202 = load i64, i64* %__v99_c
  %203 = zext i64 %202 to i128
  %204 = add i128 %201, %203
  store i128 %204, i128* %199
  %205 = getelementptr i128, i128* %__v88_t, i64 1
  %206 = load i128, i128* %205
  %207 = trunc i128 %206 to i64
  %208 = and i64 %207, 2251799813685247
  store i64 %208, i64* %__v90_r1
  %209 = getelementptr i128, i128* %__v88_t, i64 1
  %210 = load i128, i128* %209
  %211 = lshr i128 %210, 51
  %212 = trunc i128 %211 to i64
  store i64 %212, i64* %__v99_c
  %213 = getelementptr i128, i128* %__v88_t, i64 2
  %214 = getelementptr i128, i128* %__v88_t, i64 2
  %215 = load i128, i128* %214
  %216 = load i64, i64* %__v99_c
  %217 = zext i64 %216 to i128
  %218 = add i128 %215, %217
  store i128 %218, i128* %213
  %219 = getelementptr i128, i128* %__v88_t, i64 2
  %220 = load i128, i128* %219
  %221 = trunc i128 %220 to i64
  %222 = and i64 %221, 2251799813685247
  store i64 %222, i64* %__v91_r2
  %223 = getelementptr i128, i128* %__v88_t, i64 2
  %224 = load i128, i128* %223
  %225 = lshr i128 %224, 51
  %226 = trunc i128 %225 to i64
  store i64 %226, i64* %__v99_c
  %227 = getelementptr i128, i128* %__v88_t, i64 3
  %228 = getelementptr i128, i128* %__v88_t, i64 3
  %229 = load i128, i128* %228
  %230 = load i64, i64* %__v99_c
  %231 = zext i64 %230 to i128
  %232 = add i128 %229, %231
  store i128 %232, i128* %227
  %233 = getelementptr i128, i128* %__v88_t, i64 3
  %234 = load i128, i128* %233
  %235 = trunc i128 %234 to i64
  %236 = and i64 %235, 2251799813685247
  store i64 %236, i64* %__v92_r3
  %237 = getelementptr i128, i128* %__v88_t, i64 3
  %238 = load i128, i128* %237
  %239 = lshr i128 %238, 51
  %240 = trunc i128 %239 to i64
  store i64 %240, i64* %__v99_c
  %241 = getelementptr i128, i128* %__v88_t, i64 4
  %242 = getelementptr i128, i128* %__v88_t, i64 4
  %243 = load i128, i128* %242
  %244 = load i64, i64* %__v99_c
  %245 = zext i64 %244 to i128
  %246 = add i128 %243, %245
  store i128 %246, i128* %241
  %247 = getelementptr i128, i128* %__v88_t, i64 4
  %248 = load i128, i128* %247
  %249 = trunc i128 %248 to i64
  %250 = and i64 %249, 2251799813685247
  store i64 %250, i64* %__v93_r4
  %251 = getelementptr i128, i128* %__v88_t, i64 4
  %252 = load i128, i128* %251
  %253 = lshr i128 %252, 51
  %254 = trunc i128 %253 to i64
  store i64 %254, i64* %__v99_c
  %255 = load i64, i64* %__v89_r0
  %256 = load i64, i64* %__v99_c
  %257 = mul i64 %256, 19
  %258 = add i64 %255, %257
  store i64 %258, i64* %__v89_r0
  %259 = load i64, i64* %__v89_r0
  %260 = lshr i64 %259, 51
  store i64 %260, i64* %__v99_c
  %261 = load i64, i64* %__v89_r0
  %262 = and i64 %261, 2251799813685247
  store i64 %262, i64* %__v89_r0
  %263 = load i64, i64* %__v90_r1
  %264 = load i64, i64* %__v99_c
  %265 = add i64 %263, %264
  store i64 %265, i64* %__v90_r1
  %266 = load i64, i64* %__v90_r1
  %267 = lshr i64 %266, 51
  store i64 %267, i64* %__v99_c
  %268 = load i64, i64* %__v90_r1
  %269 = and i64 %268, 2251799813685247
  store i64 %269, i64* %__v90_r1
  %270 = load i64, i64* %__v91_r2
  %271 = load i64, i64* %__v99_c
  %272 = add i64 %270, %271
  store i64 %272, i64* %__v91_r2
  %273 = getelementptr i64, i64* %__v85_output, i64 0
  %274 = load i64, i64* %__v89_r0
  store i64 %274, i64* %273
  %275 = getelementptr i64, i64* %__v85_output, i64 1
  %276 = load i64, i64* %__v90_r1
  store i64 %276, i64* %275
  %277 = getelementptr i64, i64* %__v85_output, i64 2
  %278 = load i64, i64* %__v91_r2
  store i64 %278, i64* %277
  %279 = getelementptr i64, i64* %__v85_output, i64 3
  %280 = load i64, i64* %__v92_r3
  store i64 %280, i64* %279
  %281 = getelementptr i64, i64* %__v85_output, i64 4
  %282 = load i64, i64* %__v93_r4
  store i64 %282, i64* %281
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #0

define internal void @fsum(i64* %__v83_output, i64* %__v84_input) {
entry:
  %__rctx = alloca i1
  store i1 true, i1* %__rctx
  %0 = getelementptr i64, i64* %__v83_output, i64 0
  %1 = getelementptr i64, i64* %__v83_output, i64 0
  %2 = load i64, i64* %1
  %3 = getelementptr i64, i64* %__v84_input, i64 0
  %4 = load i64, i64* %3
  %5 = add i64 %2, %4
  store i64 %5, i64* %0
  %6 = getelementptr i64, i64* %__v83_output, i64 1
  %7 = getelementptr i64, i64* %__v83_output, i64 1
  %8 = load i64, i64* %7
  %9 = getelementptr i64, i64* %__v84_input, i64 1
  %10 = load i64, i64* %9
  %11 = add i64 %8, %10
  store i64 %11, i64* %6
  %12 = getelementptr i64, i64* %__v83_output, i64 2
  %13 = getelementptr i64, i64* %__v83_output, i64 2
  %14 = load i64, i64* %13
  %15 = getelementptr i64, i64* %__v84_input, i64 2
  %16 = load i64, i64* %15
  %17 = add i64 %14, %16
  store i64 %17, i64* %12
  %18 = getelementptr i64, i64* %__v83_output, i64 3
  %19 = getelementptr i64, i64* %__v83_output, i64 3
  %20 = load i64, i64* %19
  %21 = getelementptr i64, i64* %__v84_input, i64 3
  %22 = load i64, i64* %21
  %23 = add i64 %20, %22
  store i64 %23, i64* %18
  %24 = getelementptr i64, i64* %__v83_output, i64 4
  %25 = getelementptr i64, i64* %__v83_output, i64 4
  %26 = load i64, i64* %25
  %27 = getelementptr i64, i64* %__v84_input, i64 4
  %28 = load i64, i64* %27
  %29 = add i64 %26, %28
  store i64 %29, i64* %24
  ret void
}

define internal void @fscalar_product(i64* %__v79_output, i64* %__v80_input, i64 %__v81_scalar) {
entry:
  %__rctx = alloca i1
  store i1 true, i1* %__rctx
  %__v82_a = alloca i128
  store i128 0, i128* %__v82_a
  %0 = getelementptr i64, i64* %__v80_input, i64 0
  %1 = load i64, i64* %0
  %2 = zext i64 %1 to i128
  %3 = zext i64 %__v81_scalar to i128
  %4 = mul i128 %2, %3
  store i128 %4, i128* %__v82_a
  %5 = getelementptr i64, i64* %__v79_output, i64 0
  %6 = load i128, i128* %__v82_a
  %7 = trunc i128 %6 to i64
  %8 = and i64 %7, 2251799813685247
  store i64 %8, i64* %5
  %9 = getelementptr i64, i64* %__v80_input, i64 1
  %10 = load i64, i64* %9
  %11 = zext i64 %10 to i128
  %12 = zext i64 %__v81_scalar to i128
  %13 = mul i128 %11, %12
  %14 = load i128, i128* %__v82_a
  %15 = lshr i128 %14, 51
  %16 = trunc i128 %15 to i64
  %17 = zext i64 %16 to i128
  %18 = add i128 %13, %17
  store i128 %18, i128* %__v82_a
  %19 = getelementptr i64, i64* %__v79_output, i64 1
  %20 = load i128, i128* %__v82_a
  %21 = trunc i128 %20 to i64
  %22 = and i64 %21, 2251799813685247
  store i64 %22, i64* %19
  %23 = getelementptr i64, i64* %__v80_input, i64 2
  %24 = load i64, i64* %23
  %25 = zext i64 %24 to i128
  %26 = zext i64 %__v81_scalar to i128
  %27 = mul i128 %25, %26
  %28 = load i128, i128* %__v82_a
  %29 = lshr i128 %28, 51
  %30 = trunc i128 %29 to i64
  %31 = zext i64 %30 to i128
  %32 = add i128 %27, %31
  store i128 %32, i128* %__v82_a
  %33 = getelementptr i64, i64* %__v79_output, i64 2
  %34 = load i128, i128* %__v82_a
  %35 = trunc i128 %34 to i64
  %36 = and i64 %35, 2251799813685247
  store i64 %36, i64* %33
  %37 = getelementptr i64, i64* %__v80_input, i64 3
  %38 = load i64, i64* %37
  %39 = zext i64 %38 to i128
  %40 = zext i64 %__v81_scalar to i128
  %41 = mul i128 %39, %40
  %42 = load i128, i128* %__v82_a
  %43 = lshr i128 %42, 51
  %44 = trunc i128 %43 to i64
  %45 = zext i64 %44 to i128
  %46 = add i128 %41, %45
  store i128 %46, i128* %__v82_a
  %47 = getelementptr i64, i64* %__v79_output, i64 3
  %48 = load i128, i128* %__v82_a
  %49 = trunc i128 %48 to i64
  %50 = and i64 %49, 2251799813685247
  store i64 %50, i64* %47
  %51 = getelementptr i64, i64* %__v80_input, i64 4
  %52 = load i64, i64* %51
  %53 = zext i64 %52 to i128
  %54 = zext i64 %__v81_scalar to i128
  %55 = mul i128 %53, %54
  %56 = load i128, i128* %__v82_a
  %57 = lshr i128 %56, 51
  %58 = trunc i128 %57 to i64
  %59 = zext i64 %58 to i128
  %60 = add i128 %55, %59
  store i128 %60, i128* %__v82_a
  %61 = getelementptr i64, i64* %__v79_output, i64 4
  %62 = load i128, i128* %__v82_a
  %63 = trunc i128 %62 to i64
  %64 = and i64 %63, 2251799813685247
  store i64 %64, i64* %61
  %65 = getelementptr i64, i64* %__v79_output, i64 0
  %66 = getelementptr i64, i64* %__v79_output, i64 0
  %67 = load i64, i64* %66
  %68 = load i128, i128* %__v82_a
  %69 = lshr i128 %68, 51
  %70 = mul i128 %69, 19
  %71 = trunc i128 %70 to i64
  %72 = add i64 %67, %71
  store i64 %72, i64* %65
  ret void
}

define internal void @fdifference_backwards(i64* %__v75_out, i64* %__v76_input) {
entry:
  %__rctx = alloca i1
  store i1 true, i1* %__rctx
  %0 = getelementptr i64, i64* %__v75_out, i64 0
  %1 = getelementptr i64, i64* %__v76_input, i64 0
  %2 = load i64, i64* %1
  %3 = add i64 %2, 18014398509481832
  %4 = getelementptr i64, i64* %__v75_out, i64 0
  %5 = load i64, i64* %4
  %6 = sub i64 %3, %5
  store i64 %6, i64* %0
  %7 = getelementptr i64, i64* %__v75_out, i64 1
  %8 = getelementptr i64, i64* %__v76_input, i64 1
  %9 = load i64, i64* %8
  %10 = add i64 %9, 18014398509481976
  %11 = getelementptr i64, i64* %__v75_out, i64 1
  %12 = load i64, i64* %11
  %13 = sub i64 %10, %12
  store i64 %13, i64* %7
  %14 = getelementptr i64, i64* %__v75_out, i64 2
  %15 = getelementptr i64, i64* %__v76_input, i64 2
  %16 = load i64, i64* %15
  %17 = add i64 %16, 18014398509481976
  %18 = getelementptr i64, i64* %__v75_out, i64 2
  %19 = load i64, i64* %18
  %20 = sub i64 %17, %19
  store i64 %20, i64* %14
  %21 = getelementptr i64, i64* %__v75_out, i64 3
  %22 = getelementptr i64, i64* %__v76_input, i64 3
  %23 = load i64, i64* %22
  %24 = add i64 %23, 18014398509481976
  %25 = getelementptr i64, i64* %__v75_out, i64 3
  %26 = load i64, i64* %25
  %27 = sub i64 %24, %26
  store i64 %27, i64* %21
  %28 = getelementptr i64, i64* %__v75_out, i64 4
  %29 = getelementptr i64, i64* %__v76_input, i64 4
  %30 = load i64, i64* %29
  %31 = add i64 %30, 18014398509481976
  %32 = getelementptr i64, i64* %__v75_out, i64 4
  %33 = load i64, i64* %32
  %34 = sub i64 %31, %33
  store i64 %34, i64* %28
  ret void
}

define internal void @fsquare_times(i64* %__v59_output, i64* %__v60_input, i64 %__v61_count) {
entry:
  %__rctx = alloca i1
  store i1 true, i1* %__rctx
  %__v62_t = alloca i128, i64 5
  %0 = bitcast i128* %__v62_t to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 80, i32 16, i1 false)
  %__v63_r0 = alloca i64
  store i64 0, i64* %__v63_r0
  %__v64_r1 = alloca i64
  store i64 0, i64* %__v64_r1
  %__v65_r2 = alloca i64
  store i64 0, i64* %__v65_r2
  %__v66_r3 = alloca i64
  store i64 0, i64* %__v66_r3
  %__v67_r4 = alloca i64
  store i64 0, i64* %__v67_r4
  %__v68_c = alloca i64
  store i64 0, i64* %__v68_c
  %__v69_d0 = alloca i64
  store i64 0, i64* %__v69_d0
  %__v70_d1 = alloca i64
  store i64 0, i64* %__v70_d1
  %__v71_d2 = alloca i64
  store i64 0, i64* %__v71_d2
  %__v72_d4 = alloca i64
  store i64 0, i64* %__v72_d4
  %__v73_d419 = alloca i64
  store i64 0, i64* %__v73_d419
  %1 = getelementptr i64, i64* %__v60_input, i64 0
  %2 = load i64, i64* %1
  store i64 %2, i64* %__v63_r0
  %3 = getelementptr i64, i64* %__v60_input, i64 1
  %4 = load i64, i64* %3
  store i64 %4, i64* %__v64_r1
  %5 = getelementptr i64, i64* %__v60_input, i64 2
  %6 = load i64, i64* %5
  store i64 %6, i64* %__v65_r2
  %7 = getelementptr i64, i64* %__v60_input, i64 3
  %8 = load i64, i64* %7
  store i64 %8, i64* %__v66_r3
  %9 = getelementptr i64, i64* %__v60_input, i64 4
  %10 = load i64, i64* %9
  store i64 %10, i64* %__v67_r4
  br label %11

; <label>:11:                                     ; preds = %198, %entry
  %__v74_i = phi i64 [ 0, %entry ], [ %199, %198 ]
  %12 = icmp ult i64 %__v74_i, %__v61_count
  br i1 %12, label %13, label %200

; <label>:13:                                     ; preds = %11
  %14 = load i64, i64* %__v63_r0
  %15 = mul i64 %14, 2
  store i64 %15, i64* %__v69_d0
  %16 = load i64, i64* %__v64_r1
  %17 = mul i64 %16, 2
  store i64 %17, i64* %__v70_d1
  %18 = load i64, i64* %__v65_r2
  %19 = mul i64 %18, 2
  %20 = mul i64 %19, 19
  store i64 %20, i64* %__v71_d2
  %21 = load i64, i64* %__v67_r4
  %22 = mul i64 %21, 19
  store i64 %22, i64* %__v73_d419
  %23 = load i64, i64* %__v73_d419
  %24 = mul i64 %23, 2
  store i64 %24, i64* %__v72_d4
  %25 = getelementptr i128, i128* %__v62_t, i64 0
  %26 = load i64, i64* %__v63_r0
  %27 = zext i64 %26 to i128
  %28 = load i64, i64* %__v63_r0
  %29 = zext i64 %28 to i128
  %30 = mul i128 %27, %29
  %31 = load i64, i64* %__v72_d4
  %32 = zext i64 %31 to i128
  %33 = load i64, i64* %__v64_r1
  %34 = zext i64 %33 to i128
  %35 = mul i128 %32, %34
  %36 = add i128 %30, %35
  %37 = load i64, i64* %__v71_d2
  %38 = zext i64 %37 to i128
  %39 = load i64, i64* %__v66_r3
  %40 = zext i64 %39 to i128
  %41 = mul i128 %38, %40
  %42 = add i128 %36, %41
  store i128 %42, i128* %25
  %43 = getelementptr i128, i128* %__v62_t, i64 1
  %44 = load i64, i64* %__v69_d0
  %45 = zext i64 %44 to i128
  %46 = load i64, i64* %__v64_r1
  %47 = zext i64 %46 to i128
  %48 = mul i128 %45, %47
  %49 = load i64, i64* %__v72_d4
  %50 = zext i64 %49 to i128
  %51 = load i64, i64* %__v65_r2
  %52 = zext i64 %51 to i128
  %53 = mul i128 %50, %52
  %54 = add i128 %48, %53
  %55 = load i64, i64* %__v66_r3
  %56 = zext i64 %55 to i128
  %57 = load i64, i64* %__v66_r3
  %58 = mul i64 %57, 19
  %59 = zext i64 %58 to i128
  %60 = mul i128 %56, %59
  %61 = add i128 %54, %60
  store i128 %61, i128* %43
  %62 = getelementptr i128, i128* %__v62_t, i64 2
  %63 = load i64, i64* %__v69_d0
  %64 = zext i64 %63 to i128
  %65 = load i64, i64* %__v65_r2
  %66 = zext i64 %65 to i128
  %67 = mul i128 %64, %66
  %68 = load i64, i64* %__v64_r1
  %69 = zext i64 %68 to i128
  %70 = load i64, i64* %__v64_r1
  %71 = zext i64 %70 to i128
  %72 = mul i128 %69, %71
  %73 = add i128 %67, %72
  %74 = load i64, i64* %__v72_d4
  %75 = zext i64 %74 to i128
  %76 = load i64, i64* %__v66_r3
  %77 = zext i64 %76 to i128
  %78 = mul i128 %75, %77
  %79 = add i128 %73, %78
  store i128 %79, i128* %62
  %80 = getelementptr i128, i128* %__v62_t, i64 3
  %81 = load i64, i64* %__v69_d0
  %82 = zext i64 %81 to i128
  %83 = load i64, i64* %__v66_r3
  %84 = zext i64 %83 to i128
  %85 = mul i128 %82, %84
  %86 = load i64, i64* %__v70_d1
  %87 = zext i64 %86 to i128
  %88 = load i64, i64* %__v65_r2
  %89 = zext i64 %88 to i128
  %90 = mul i128 %87, %89
  %91 = add i128 %85, %90
  %92 = load i64, i64* %__v67_r4
  %93 = zext i64 %92 to i128
  %94 = load i64, i64* %__v73_d419
  %95 = zext i64 %94 to i128
  %96 = mul i128 %93, %95
  %97 = add i128 %91, %96
  store i128 %97, i128* %80
  %98 = getelementptr i128, i128* %__v62_t, i64 4
  %99 = load i64, i64* %__v69_d0
  %100 = zext i64 %99 to i128
  %101 = load i64, i64* %__v67_r4
  %102 = zext i64 %101 to i128
  %103 = mul i128 %100, %102
  %104 = load i64, i64* %__v70_d1
  %105 = zext i64 %104 to i128
  %106 = load i64, i64* %__v66_r3
  %107 = zext i64 %106 to i128
  %108 = mul i128 %105, %107
  %109 = add i128 %103, %108
  %110 = load i64, i64* %__v65_r2
  %111 = zext i64 %110 to i128
  %112 = load i64, i64* %__v65_r2
  %113 = zext i64 %112 to i128
  %114 = mul i128 %111, %113
  %115 = add i128 %109, %114
  store i128 %115, i128* %98
  %116 = getelementptr i128, i128* %__v62_t, i64 0
  %117 = load i128, i128* %116
  %118 = trunc i128 %117 to i64
  %119 = and i64 %118, 2251799813685247
  store i64 %119, i64* %__v63_r0
  %120 = getelementptr i128, i128* %__v62_t, i64 0
  %121 = load i128, i128* %120
  %122 = lshr i128 %121, 51
  %123 = trunc i128 %122 to i64
  store i64 %123, i64* %__v68_c
  %124 = getelementptr i128, i128* %__v62_t, i64 1
  %125 = getelementptr i128, i128* %__v62_t, i64 1
  %126 = load i128, i128* %125
  %127 = load i64, i64* %__v68_c
  %128 = zext i64 %127 to i128
  %129 = add i128 %126, %128
  store i128 %129, i128* %124
  %130 = getelementptr i128, i128* %__v62_t, i64 1
  %131 = load i128, i128* %130
  %132 = trunc i128 %131 to i64
  %133 = and i64 %132, 2251799813685247
  store i64 %133, i64* %__v64_r1
  %134 = getelementptr i128, i128* %__v62_t, i64 1
  %135 = load i128, i128* %134
  %136 = lshr i128 %135, 51
  %137 = trunc i128 %136 to i64
  store i64 %137, i64* %__v68_c
  %138 = getelementptr i128, i128* %__v62_t, i64 2
  %139 = getelementptr i128, i128* %__v62_t, i64 2
  %140 = load i128, i128* %139
  %141 = load i64, i64* %__v68_c
  %142 = zext i64 %141 to i128
  %143 = add i128 %140, %142
  store i128 %143, i128* %138
  %144 = getelementptr i128, i128* %__v62_t, i64 2
  %145 = load i128, i128* %144
  %146 = trunc i128 %145 to i64
  %147 = and i64 %146, 2251799813685247
  store i64 %147, i64* %__v65_r2
  %148 = getelementptr i128, i128* %__v62_t, i64 2
  %149 = load i128, i128* %148
  %150 = lshr i128 %149, 51
  %151 = trunc i128 %150 to i64
  store i64 %151, i64* %__v68_c
  %152 = getelementptr i128, i128* %__v62_t, i64 3
  %153 = getelementptr i128, i128* %__v62_t, i64 3
  %154 = load i128, i128* %153
  %155 = load i64, i64* %__v68_c
  %156 = zext i64 %155 to i128
  %157 = add i128 %154, %156
  store i128 %157, i128* %152
  %158 = getelementptr i128, i128* %__v62_t, i64 3
  %159 = load i128, i128* %158
  %160 = trunc i128 %159 to i64
  %161 = and i64 %160, 2251799813685247
  store i64 %161, i64* %__v66_r3
  %162 = getelementptr i128, i128* %__v62_t, i64 3
  %163 = load i128, i128* %162
  %164 = lshr i128 %163, 51
  %165 = trunc i128 %164 to i64
  store i64 %165, i64* %__v68_c
  %166 = getelementptr i128, i128* %__v62_t, i64 4
  %167 = getelementptr i128, i128* %__v62_t, i64 4
  %168 = load i128, i128* %167
  %169 = load i64, i64* %__v68_c
  %170 = zext i64 %169 to i128
  %171 = add i128 %168, %170
  store i128 %171, i128* %166
  %172 = getelementptr i128, i128* %__v62_t, i64 4
  %173 = load i128, i128* %172
  %174 = trunc i128 %173 to i64
  %175 = and i64 %174, 2251799813685247
  store i64 %175, i64* %__v67_r4
  %176 = getelementptr i128, i128* %__v62_t, i64 4
  %177 = load i128, i128* %176
  %178 = lshr i128 %177, 51
  %179 = trunc i128 %178 to i64
  store i64 %179, i64* %__v68_c
  %180 = load i64, i64* %__v63_r0
  %181 = load i64, i64* %__v68_c
  %182 = mul i64 %181, 19
  %183 = add i64 %180, %182
  store i64 %183, i64* %__v63_r0
  %184 = load i64, i64* %__v63_r0
  %185 = lshr i64 %184, 51
  store i64 %185, i64* %__v68_c
  %186 = load i64, i64* %__v63_r0
  %187 = and i64 %186, 2251799813685247
  store i64 %187, i64* %__v63_r0
  %188 = load i64, i64* %__v64_r1
  %189 = load i64, i64* %__v68_c
  %190 = add i64 %188, %189
  store i64 %190, i64* %__v64_r1
  %191 = load i64, i64* %__v64_r1
  %192 = lshr i64 %191, 51
  store i64 %192, i64* %__v68_c
  %193 = load i64, i64* %__v64_r1
  %194 = and i64 %193, 2251799813685247
  store i64 %194, i64* %__v64_r1
  %195 = load i64, i64* %__v65_r2
  %196 = load i64, i64* %__v68_c
  %197 = add i64 %195, %196
  store i64 %197, i64* %__v65_r2
  br label %198

; <label>:198:                                    ; preds = %13
  %199 = add i64 %__v74_i, 1
  br label %11

; <label>:200:                                    ; preds = %11
  %201 = getelementptr i64, i64* %__v59_output, i64 0
  %202 = load i64, i64* %__v63_r0
  store i64 %202, i64* %201
  %203 = getelementptr i64, i64* %__v59_output, i64 1
  %204 = load i64, i64* %__v64_r1
  store i64 %204, i64* %203
  %205 = getelementptr i64, i64* %__v59_output, i64 2
  %206 = load i64, i64* %__v65_r2
  store i64 %206, i64* %205
  %207 = getelementptr i64, i64* %__v59_output, i64 3
  %208 = load i64, i64* %__v66_r3
  store i64 %208, i64* %207
  %209 = getelementptr i64, i64* %__v59_output, i64 4
  %210 = load i64, i64* %__v67_r4
  store i64 %210, i64* %209
  ret void
}

define internal void @fmonty(i64* %__v41_x2, i64* %__v42_z2, i64* %__v43_x3, i64* %__v44_z3, i64* %__v45_x, i64* %__v46_z, i64* %__v47_xprime, i64* %__v48_zprime, i64* %__v49_qmqp) {
entry:
  %__rctx = alloca i1
  store i1 true, i1* %__rctx
  %__v50_origx = alloca i64, i64 5
  %0 = bitcast i64* %__v50_origx to i8*
  %1 = bitcast i64* %__v45_x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 40, i32 8, i1 false)
  %__v51_origxprime = alloca i64, i64 5
  %2 = bitcast i64* %__v51_origxprime to i8*
  %3 = bitcast i64* %__v47_xprime to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 40, i32 8, i1 false)
  %__v52_zzz = alloca i64, i64 5
  %4 = bitcast i64* %__v52_zzz to i8*
  call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 40, i32 8, i1 false)
  %__v53_xx = alloca i64, i64 5
  %5 = bitcast i64* %__v53_xx to i8*
  call void @llvm.memset.p0i8.i64(i8* %5, i8 0, i64 40, i32 8, i1 false)
  %__v54_zz = alloca i64, i64 5
  %6 = bitcast i64* %__v54_zz to i8*
  call void @llvm.memset.p0i8.i64(i8* %6, i8 0, i64 40, i32 8, i1 false)
  %__v55_xxprime = alloca i64, i64 5
  %7 = bitcast i64* %__v55_xxprime to i8*
  call void @llvm.memset.p0i8.i64(i8* %7, i8 0, i64 40, i32 8, i1 false)
  %__v56_zzprime = alloca i64, i64 5
  %8 = bitcast i64* %__v56_zzprime to i8*
  call void @llvm.memset.p0i8.i64(i8* %8, i8 0, i64 40, i32 8, i1 false)
  %__v57_zzzprime = alloca i64, i64 5
  %9 = bitcast i64* %__v57_zzzprime to i8*
  call void @llvm.memset.p0i8.i64(i8* %9, i8 0, i64 40, i32 8, i1 false)
  call void @fsum(i64* %__v45_x, i64* %__v46_z)
  call void @fdifference_backwards(i64* %__v46_z, i64* %__v50_origx)
  call void @fsum(i64* %__v47_xprime, i64* %__v48_zprime)
  call void @fdifference_backwards(i64* %__v48_zprime, i64* %__v51_origxprime)
  call void @fmul(i64* %__v55_xxprime, i64* %__v47_xprime, i64* %__v46_z)
  call void @fmul(i64* %__v56_zzprime, i64* %__v45_x, i64* %__v48_zprime)
  br label %10

; <label>:10:                                     ; preds = %16, %entry
  %__v58_i = phi i32 [ 0, %entry ], [ %17, %16 ]
  %11 = icmp ult i32 %__v58_i, 5
  br i1 %11, label %12, label %18

; <label>:12:                                     ; preds = %10
  %__v117_lexpr = zext i32 %__v58_i to i64
  %__v118_lexpr = zext i32 %__v58_i to i64
  %13 = getelementptr i64, i64* %__v51_origxprime, i64 %__v117_lexpr
  %14 = getelementptr i64, i64* %__v55_xxprime, i64 %__v118_lexpr
  %15 = load i64, i64* %14
  store i64 %15, i64* %13
  br label %16

; <label>:16:                                     ; preds = %12
  %17 = add i32 %__v58_i, 1
  br label %10

; <label>:18:                                     ; preds = %10
  call void @fsum(i64* %__v55_xxprime, i64* %__v56_zzprime)
  call void @fdifference_backwards(i64* %__v56_zzprime, i64* %__v51_origxprime)
  call void @fsquare_times(i64* %__v43_x3, i64* %__v55_xxprime, i64 1)
  call void @fsquare_times(i64* %__v57_zzzprime, i64* %__v56_zzprime, i64 1)
  call void @fmul(i64* %__v44_z3, i64* %__v57_zzzprime, i64* %__v49_qmqp)
  call void @fsquare_times(i64* %__v53_xx, i64* %__v45_x, i64 1)
  call void @fsquare_times(i64* %__v54_zz, i64* %__v46_z, i64 1)
  call void @fmul(i64* %__v41_x2, i64* %__v53_xx, i64* %__v54_zz)
  call void @fdifference_backwards(i64* %__v54_zz, i64* %__v53_xx)
  call void @fscalar_product(i64* %__v52_zzz, i64* %__v54_zz, i64 121665)
  call void @fsum(i64* %__v52_zzz, i64* %__v53_xx)
  call void @fmul(i64* %__v42_z2, i64* %__v54_zz, i64* %__v52_zzz)
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #0

define internal void @cmult(i64* %__v23_resultx, i64* %__v24_resultz, i8* %__v25_n, i64* %__v26_q) {
entry:
  %__rctx = alloca i1
  store i1 true, i1* %__rctx
  %__v27_a = alloca i64, i64 5
  %0 = bitcast i64* %__v27_a to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 40, i32 8, i1 false)
  %__v28_b = alloca i64, i64 5
  %1 = bitcast i64* %__v28_b to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 40, i32 8, i1 false)
  %__v29_c = alloca i64, i64 5
  %2 = bitcast i64* %__v29_c to i8*
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 40, i32 8, i1 false)
  %__v30_d = alloca i64, i64 5
  %3 = bitcast i64* %__v30_d to i8*
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 40, i32 8, i1 false)
  %__v31_e = alloca i64, i64 5
  %4 = bitcast i64* %__v31_e to i8*
  call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 40, i32 8, i1 false)
  %__v32_f = alloca i64, i64 5
  %5 = bitcast i64* %__v32_f to i8*
  call void @llvm.memset.p0i8.i64(i8* %5, i8 0, i64 40, i32 8, i1 false)
  %__v33_g = alloca i64, i64 5
  %6 = bitcast i64* %__v33_g to i8*
  call void @llvm.memset.p0i8.i64(i8* %6, i8 0, i64 40, i32 8, i1 false)
  %__v34_h = alloca i64, i64 5
  %7 = bitcast i64* %__v34_h to i8*
  call void @llvm.memset.p0i8.i64(i8* %7, i8 0, i64 40, i32 8, i1 false)
  %8 = getelementptr i64, i64* %__v28_b, i64 0
  store i64 1, i64* %8
  %9 = getelementptr i64, i64* %__v29_c, i64 0
  store i64 1, i64* %9
  %10 = getelementptr i64, i64* %__v32_f, i64 0
  store i64 1, i64* %10
  %11 = getelementptr i64, i64* %__v34_h, i64 0
  store i64 1, i64* %11
  br label %12

; <label>:12:                                     ; preds = %18, %entry
  %__v35_i = phi i32 [ 0, %entry ], [ %19, %18 ]
  %13 = icmp ult i32 %__v35_i, 5
  br i1 %13, label %14, label %20

; <label>:14:                                     ; preds = %12
  %__v110_lexpr = zext i32 %__v35_i to i64
  %__v111_lexpr = zext i32 %__v35_i to i64
  %15 = getelementptr i64, i64* %__v27_a, i64 %__v110_lexpr
  %16 = getelementptr i64, i64* %__v26_q, i64 %__v111_lexpr
  %17 = load i64, i64* %16
  store i64 %17, i64* %15
  br label %18

; <label>:18:                                     ; preds = %14
  %19 = add i32 %__v35_i, 1
  br label %12

; <label>:20:                                     ; preds = %12
  br label %21

; <label>:21:                                     ; preds = %27, %20
  %__v36_i = phi i32 [ 0, %20 ], [ %28, %27 ]
  %22 = icmp ult i32 %__v36_i, 32
  br i1 %22, label %23, label %29

; <label>:23:                                     ; preds = %21
  %24 = sub i32 31, %__v36_i
  %__v112_lexpr = zext i32 %24 to i64
  %25 = getelementptr i8, i8* %__v25_n, i64 %__v112_lexpr
  %26 = load i8, i8* %25
  %__v37_byte = alloca i8
  store i8 %26, i8* %__v37_byte
  br label %30

; <label>:27:                                     ; preds = %39
  %28 = add i32 %__v36_i, 1
  br label %21

; <label>:29:                                     ; preds = %21
  br label %45

; <label>:30:                                     ; preds = %37, %23
  %__v38_j = phi i32 [ 0, %23 ], [ %38, %37 ]
  %31 = icmp ult i32 %__v38_j, 8
  br i1 %31, label %32, label %39

; <label>:32:                                     ; preds = %30
  %33 = load i8, i8* %__v37_byte
  %34 = lshr i8 %33, 7
  %__v39_bit = zext i8 %34 to i64
  %35 = and i32 %__v38_j, 1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %40, label %41

; <label>:37:                                     ; preds = %42
  %38 = add i32 %__v38_j, 1
  br label %30

; <label>:39:                                     ; preds = %30
  br label %27

; <label>:40:                                     ; preds = %32
  call void @swap_conditional(i64* %__v29_c, i64* %__v27_a, i64 %__v39_bit)
  call void @swap_conditional(i64* %__v30_d, i64* %__v28_b, i64 %__v39_bit)
  call void @fmonty(i64* %__v33_g, i64* %__v34_h, i64* %__v31_e, i64* %__v32_f, i64* %__v29_c, i64* %__v30_d, i64* %__v27_a, i64* %__v28_b, i64* %__v26_q)
  call void @swap_conditional(i64* %__v33_g, i64* %__v31_e, i64 %__v39_bit)
  call void @swap_conditional(i64* %__v34_h, i64* %__v32_f, i64 %__v39_bit)
  br label %42

; <label>:41:                                     ; preds = %32
  call void @swap_conditional(i64* %__v33_g, i64* %__v31_e, i64 %__v39_bit)
  call void @swap_conditional(i64* %__v34_h, i64* %__v32_f, i64 %__v39_bit)
  call void @fmonty(i64* %__v29_c, i64* %__v30_d, i64* %__v27_a, i64* %__v28_b, i64* %__v33_g, i64* %__v34_h, i64* %__v31_e, i64* %__v32_f, i64* %__v26_q)
  call void @swap_conditional(i64* %__v29_c, i64* %__v27_a, i64 %__v39_bit)
  call void @swap_conditional(i64* %__v30_d, i64* %__v28_b, i64 %__v39_bit)
  br label %42

; <label>:42:                                     ; preds = %41, %40
  %43 = load i8, i8* %__v37_byte
  %44 = shl i8 %43, 1
  store i8 %44, i8* %__v37_byte
  br label %37

; <label>:45:                                     ; preds = %54, %29
  %__v40_i = phi i32 [ 0, %29 ], [ %55, %54 ]
  %46 = icmp ult i32 %__v40_i, 5
  br i1 %46, label %47, label %56

; <label>:47:                                     ; preds = %45
  %__v113_lexpr = zext i32 %__v40_i to i64
  %__v114_lexpr = zext i32 %__v40_i to i64
  %48 = getelementptr i64, i64* %__v23_resultx, i64 %__v113_lexpr
  %49 = getelementptr i64, i64* %__v29_c, i64 %__v114_lexpr
  %50 = load i64, i64* %49
  store i64 %50, i64* %48
  %__v115_lexpr = zext i32 %__v40_i to i64
  %__v116_lexpr = zext i32 %__v40_i to i64
  %51 = getelementptr i64, i64* %__v24_resultz, i64 %__v115_lexpr
  %52 = getelementptr i64, i64* %__v30_d, i64 %__v116_lexpr
  %53 = load i64, i64* %52
  store i64 %53, i64* %51
  br label %54

; <label>:54:                                     ; preds = %47
  %55 = add i32 %__v40_i, 1
  br label %45

; <label>:56:                                     ; preds = %45
  ret void
}

define internal void @crecip(i64* %__v17_out, i64* %__v18_z) {
entry:
  %__rctx = alloca i1
  store i1 true, i1* %__rctx
  %__v19_a = alloca i64, i64 5
  %0 = bitcast i64* %__v19_a to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 40, i32 8, i1 false)
  %__v20_t0 = alloca i64, i64 5
  %1 = bitcast i64* %__v20_t0 to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 40, i32 8, i1 false)
  %__v21_b = alloca i64, i64 5
  %2 = bitcast i64* %__v21_b to i8*
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 40, i32 8, i1 false)
  %__v22_c = alloca i64, i64 5
  %3 = bitcast i64* %__v22_c to i8*
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 40, i32 8, i1 false)
  call void @fsquare_times(i64* %__v19_a, i64* %__v18_z, i64 1)
  call void @fsquare_times(i64* %__v20_t0, i64* %__v19_a, i64 2)
  call void @fmul(i64* %__v21_b, i64* %__v20_t0, i64* %__v18_z)
  call void @fmul(i64* %__v19_a, i64* %__v21_b, i64* %__v19_a)
  call void @fsquare_times(i64* %__v20_t0, i64* %__v19_a, i64 1)
  call void @fmul(i64* %__v21_b, i64* %__v20_t0, i64* %__v21_b)
  call void @fsquare_times(i64* %__v20_t0, i64* %__v21_b, i64 5)
  call void @fmul(i64* %__v21_b, i64* %__v20_t0, i64* %__v21_b)
  call void @fsquare_times(i64* %__v20_t0, i64* %__v21_b, i64 10)
  call void @fmul(i64* %__v22_c, i64* %__v20_t0, i64* %__v21_b)
  call void @fsquare_times(i64* %__v20_t0, i64* %__v22_c, i64 20)
  call void @fmul(i64* %__v20_t0, i64* %__v20_t0, i64* %__v22_c)
  call void @fsquare_times(i64* %__v20_t0, i64* %__v20_t0, i64 10)
  call void @fmul(i64* %__v21_b, i64* %__v20_t0, i64* %__v21_b)
  call void @fsquare_times(i64* %__v20_t0, i64* %__v21_b, i64 50)
  call void @fmul(i64* %__v22_c, i64* %__v20_t0, i64* %__v21_b)
  call void @fsquare_times(i64* %__v20_t0, i64* %__v22_c, i64 100)
  call void @fmul(i64* %__v20_t0, i64* %__v20_t0, i64* %__v22_c)
  call void @fsquare_times(i64* %__v20_t0, i64* %__v20_t0, i64 50)
  call void @fmul(i64* %__v20_t0, i64* %__v20_t0, i64* %__v21_b)
  call void @fsquare_times(i64* %__v20_t0, i64* %__v20_t0, i64 5)
  call void @fmul(i64* %__v17_out, i64* %__v20_t0, i64* %__v19_a)
  ret void
}

define internal void @store_limb(i8* %__v15_out, i64 %__v16_input) {
entry:
  %__rctx = alloca i1
  store i1 true, i1* %__rctx
  %0 = getelementptr i8, i8* %__v15_out, i64 0
  %1 = trunc i64 %__v16_input to i8
  store i8 %1, i8* %0
  %2 = getelementptr i8, i8* %__v15_out, i64 1
  %3 = lshr i64 %__v16_input, 8
  %4 = trunc i64 %3 to i8
  store i8 %4, i8* %2
  %5 = getelementptr i8, i8* %__v15_out, i64 2
  %6 = lshr i64 %__v16_input, 16
  %7 = trunc i64 %6 to i8
  store i8 %7, i8* %5
  %8 = getelementptr i8, i8* %__v15_out, i64 3
  %9 = lshr i64 %__v16_input, 24
  %10 = trunc i64 %9 to i8
  store i8 %10, i8* %8
  %11 = getelementptr i8, i8* %__v15_out, i64 4
  %12 = lshr i64 %__v16_input, 32
  %13 = trunc i64 %12 to i8
  store i8 %13, i8* %11
  %14 = getelementptr i8, i8* %__v15_out, i64 5
  %15 = lshr i64 %__v16_input, 40
  %16 = trunc i64 %15 to i8
  store i8 %16, i8* %14
  %17 = getelementptr i8, i8* %__v15_out, i64 6
  %18 = lshr i64 %__v16_input, 48
  %19 = trunc i64 %18 to i8
  store i8 %19, i8* %17
  %20 = getelementptr i8, i8* %__v15_out, i64 7
  %21 = lshr i64 %__v16_input, 56
  %22 = trunc i64 %21 to i8
  store i8 %22, i8* %20
  ret void
}

define internal void @fcontract(i8* %__v12_output, i64* %__v13_input) {
entry:
  %__rctx = alloca i1
  store i1 true, i1* %__rctx
  %__v14_t = alloca i128, i64 5
  %0 = bitcast i128* %__v14_t to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 80, i32 16, i1 false)
  %1 = getelementptr i128, i128* %__v14_t, i64 0
  %2 = getelementptr i64, i64* %__v13_input, i64 0
  %3 = load i64, i64* %2
  %4 = zext i64 %3 to i128
  store i128 %4, i128* %1
  %5 = getelementptr i128, i128* %__v14_t, i64 1
  %6 = getelementptr i64, i64* %__v13_input, i64 1
  %7 = load i64, i64* %6
  %8 = zext i64 %7 to i128
  store i128 %8, i128* %5
  %9 = getelementptr i128, i128* %__v14_t, i64 2
  %10 = getelementptr i64, i64* %__v13_input, i64 2
  %11 = load i64, i64* %10
  %12 = zext i64 %11 to i128
  store i128 %12, i128* %9
  %13 = getelementptr i128, i128* %__v14_t, i64 3
  %14 = getelementptr i64, i64* %__v13_input, i64 3
  %15 = load i64, i64* %14
  %16 = zext i64 %15 to i128
  store i128 %16, i128* %13
  %17 = getelementptr i128, i128* %__v14_t, i64 4
  %18 = getelementptr i64, i64* %__v13_input, i64 4
  %19 = load i64, i64* %18
  %20 = zext i64 %19 to i128
  store i128 %20, i128* %17
  %21 = getelementptr i128, i128* %__v14_t, i64 1
  %22 = getelementptr i128, i128* %__v14_t, i64 1
  %23 = load i128, i128* %22
  %24 = getelementptr i128, i128* %__v14_t, i64 0
  %25 = load i128, i128* %24
  %26 = lshr i128 %25, 51
  %27 = add i128 %23, %26
  store i128 %27, i128* %21
  %28 = getelementptr i128, i128* %__v14_t, i64 0
  %29 = getelementptr i128, i128* %__v14_t, i64 0
  %30 = load i128, i128* %29
  %31 = and i128 %30, 2251799813685247
  store i128 %31, i128* %28
  %32 = getelementptr i128, i128* %__v14_t, i64 2
  %33 = getelementptr i128, i128* %__v14_t, i64 2
  %34 = load i128, i128* %33
  %35 = getelementptr i128, i128* %__v14_t, i64 1
  %36 = load i128, i128* %35
  %37 = lshr i128 %36, 51
  %38 = add i128 %34, %37
  store i128 %38, i128* %32
  %39 = getelementptr i128, i128* %__v14_t, i64 1
  %40 = getelementptr i128, i128* %__v14_t, i64 1
  %41 = load i128, i128* %40
  %42 = and i128 %41, 2251799813685247
  store i128 %42, i128* %39
  %43 = getelementptr i128, i128* %__v14_t, i64 3
  %44 = getelementptr i128, i128* %__v14_t, i64 3
  %45 = load i128, i128* %44
  %46 = getelementptr i128, i128* %__v14_t, i64 2
  %47 = load i128, i128* %46
  %48 = lshr i128 %47, 51
  %49 = add i128 %45, %48
  store i128 %49, i128* %43
  %50 = getelementptr i128, i128* %__v14_t, i64 2
  %51 = getelementptr i128, i128* %__v14_t, i64 2
  %52 = load i128, i128* %51
  %53 = and i128 %52, 2251799813685247
  store i128 %53, i128* %50
  %54 = getelementptr i128, i128* %__v14_t, i64 4
  %55 = getelementptr i128, i128* %__v14_t, i64 4
  %56 = load i128, i128* %55
  %57 = getelementptr i128, i128* %__v14_t, i64 3
  %58 = load i128, i128* %57
  %59 = lshr i128 %58, 51
  %60 = add i128 %56, %59
  store i128 %60, i128* %54
  %61 = getelementptr i128, i128* %__v14_t, i64 3
  %62 = getelementptr i128, i128* %__v14_t, i64 3
  %63 = load i128, i128* %62
  %64 = and i128 %63, 2251799813685247
  store i128 %64, i128* %61
  %65 = getelementptr i128, i128* %__v14_t, i64 0
  %66 = getelementptr i128, i128* %__v14_t, i64 0
  %67 = load i128, i128* %66
  %68 = getelementptr i128, i128* %__v14_t, i64 4
  %69 = load i128, i128* %68
  %70 = lshr i128 %69, 51
  %71 = mul i128 19, %70
  %72 = add i128 %67, %71
  store i128 %72, i128* %65
  %73 = getelementptr i128, i128* %__v14_t, i64 4
  %74 = getelementptr i128, i128* %__v14_t, i64 4
  %75 = load i128, i128* %74
  %76 = and i128 %75, 2251799813685247
  store i128 %76, i128* %73
  %77 = getelementptr i128, i128* %__v14_t, i64 1
  %78 = getelementptr i128, i128* %__v14_t, i64 1
  %79 = load i128, i128* %78
  %80 = getelementptr i128, i128* %__v14_t, i64 0
  %81 = load i128, i128* %80
  %82 = lshr i128 %81, 51
  %83 = add i128 %79, %82
  store i128 %83, i128* %77
  %84 = getelementptr i128, i128* %__v14_t, i64 0
  %85 = getelementptr i128, i128* %__v14_t, i64 0
  %86 = load i128, i128* %85
  %87 = and i128 %86, 2251799813685247
  store i128 %87, i128* %84
  %88 = getelementptr i128, i128* %__v14_t, i64 2
  %89 = getelementptr i128, i128* %__v14_t, i64 2
  %90 = load i128, i128* %89
  %91 = getelementptr i128, i128* %__v14_t, i64 1
  %92 = load i128, i128* %91
  %93 = lshr i128 %92, 51
  %94 = add i128 %90, %93
  store i128 %94, i128* %88
  %95 = getelementptr i128, i128* %__v14_t, i64 1
  %96 = getelementptr i128, i128* %__v14_t, i64 1
  %97 = load i128, i128* %96
  %98 = and i128 %97, 2251799813685247
  store i128 %98, i128* %95
  %99 = getelementptr i128, i128* %__v14_t, i64 3
  %100 = getelementptr i128, i128* %__v14_t, i64 3
  %101 = load i128, i128* %100
  %102 = getelementptr i128, i128* %__v14_t, i64 2
  %103 = load i128, i128* %102
  %104 = lshr i128 %103, 51
  %105 = add i128 %101, %104
  store i128 %105, i128* %99
  %106 = getelementptr i128, i128* %__v14_t, i64 2
  %107 = getelementptr i128, i128* %__v14_t, i64 2
  %108 = load i128, i128* %107
  %109 = and i128 %108, 2251799813685247
  store i128 %109, i128* %106
  %110 = getelementptr i128, i128* %__v14_t, i64 4
  %111 = getelementptr i128, i128* %__v14_t, i64 4
  %112 = load i128, i128* %111
  %113 = getelementptr i128, i128* %__v14_t, i64 3
  %114 = load i128, i128* %113
  %115 = lshr i128 %114, 51
  %116 = add i128 %112, %115
  store i128 %116, i128* %110
  %117 = getelementptr i128, i128* %__v14_t, i64 3
  %118 = getelementptr i128, i128* %__v14_t, i64 3
  %119 = load i128, i128* %118
  %120 = and i128 %119, 2251799813685247
  store i128 %120, i128* %117
  %121 = getelementptr i128, i128* %__v14_t, i64 0
  %122 = getelementptr i128, i128* %__v14_t, i64 0
  %123 = load i128, i128* %122
  %124 = getelementptr i128, i128* %__v14_t, i64 4
  %125 = load i128, i128* %124
  %126 = lshr i128 %125, 51
  %127 = mul i128 19, %126
  %128 = add i128 %123, %127
  store i128 %128, i128* %121
  %129 = getelementptr i128, i128* %__v14_t, i64 4
  %130 = getelementptr i128, i128* %__v14_t, i64 4
  %131 = load i128, i128* %130
  %132 = and i128 %131, 2251799813685247
  store i128 %132, i128* %129
  %133 = getelementptr i128, i128* %__v14_t, i64 0
  %134 = getelementptr i128, i128* %__v14_t, i64 0
  %135 = load i128, i128* %134
  %136 = add i128 %135, 19
  store i128 %136, i128* %133
  %137 = getelementptr i128, i128* %__v14_t, i64 1
  %138 = getelementptr i128, i128* %__v14_t, i64 1
  %139 = load i128, i128* %138
  %140 = getelementptr i128, i128* %__v14_t, i64 0
  %141 = load i128, i128* %140
  %142 = lshr i128 %141, 51
  %143 = add i128 %139, %142
  store i128 %143, i128* %137
  %144 = getelementptr i128, i128* %__v14_t, i64 0
  %145 = getelementptr i128, i128* %__v14_t, i64 0
  %146 = load i128, i128* %145
  %147 = and i128 %146, 2251799813685247
  store i128 %147, i128* %144
  %148 = getelementptr i128, i128* %__v14_t, i64 2
  %149 = getelementptr i128, i128* %__v14_t, i64 2
  %150 = load i128, i128* %149
  %151 = getelementptr i128, i128* %__v14_t, i64 1
  %152 = load i128, i128* %151
  %153 = lshr i128 %152, 51
  %154 = add i128 %150, %153
  store i128 %154, i128* %148
  %155 = getelementptr i128, i128* %__v14_t, i64 1
  %156 = getelementptr i128, i128* %__v14_t, i64 1
  %157 = load i128, i128* %156
  %158 = and i128 %157, 2251799813685247
  store i128 %158, i128* %155
  %159 = getelementptr i128, i128* %__v14_t, i64 3
  %160 = getelementptr i128, i128* %__v14_t, i64 3
  %161 = load i128, i128* %160
  %162 = getelementptr i128, i128* %__v14_t, i64 2
  %163 = load i128, i128* %162
  %164 = lshr i128 %163, 51
  %165 = add i128 %161, %164
  store i128 %165, i128* %159
  %166 = getelementptr i128, i128* %__v14_t, i64 2
  %167 = getelementptr i128, i128* %__v14_t, i64 2
  %168 = load i128, i128* %167
  %169 = and i128 %168, 2251799813685247
  store i128 %169, i128* %166
  %170 = getelementptr i128, i128* %__v14_t, i64 4
  %171 = getelementptr i128, i128* %__v14_t, i64 4
  %172 = load i128, i128* %171
  %173 = getelementptr i128, i128* %__v14_t, i64 3
  %174 = load i128, i128* %173
  %175 = lshr i128 %174, 51
  %176 = add i128 %172, %175
  store i128 %176, i128* %170
  %177 = getelementptr i128, i128* %__v14_t, i64 3
  %178 = getelementptr i128, i128* %__v14_t, i64 3
  %179 = load i128, i128* %178
  %180 = and i128 %179, 2251799813685247
  store i128 %180, i128* %177
  %181 = getelementptr i128, i128* %__v14_t, i64 0
  %182 = getelementptr i128, i128* %__v14_t, i64 0
  %183 = load i128, i128* %182
  %184 = getelementptr i128, i128* %__v14_t, i64 4
  %185 = load i128, i128* %184
  %186 = lshr i128 %185, 51
  %187 = mul i128 19, %186
  %188 = add i128 %183, %187
  store i128 %188, i128* %181
  %189 = getelementptr i128, i128* %__v14_t, i64 4
  %190 = getelementptr i128, i128* %__v14_t, i64 4
  %191 = load i128, i128* %190
  %192 = and i128 %191, 2251799813685247
  store i128 %192, i128* %189
  %193 = getelementptr i128, i128* %__v14_t, i64 0
  %194 = getelementptr i128, i128* %__v14_t, i64 0
  %195 = load i128, i128* %194
  %196 = add i128 %195, 2251799813685229
  store i128 %196, i128* %193
  %197 = getelementptr i128, i128* %__v14_t, i64 1
  %198 = getelementptr i128, i128* %__v14_t, i64 1
  %199 = load i128, i128* %198
  %200 = add i128 %199, 2251799813685247
  store i128 %200, i128* %197
  %201 = getelementptr i128, i128* %__v14_t, i64 2
  %202 = getelementptr i128, i128* %__v14_t, i64 2
  %203 = load i128, i128* %202
  %204 = add i128 %203, 2251799813685247
  store i128 %204, i128* %201
  %205 = getelementptr i128, i128* %__v14_t, i64 3
  %206 = getelementptr i128, i128* %__v14_t, i64 3
  %207 = load i128, i128* %206
  %208 = add i128 %207, 2251799813685247
  store i128 %208, i128* %205
  %209 = getelementptr i128, i128* %__v14_t, i64 4
  %210 = getelementptr i128, i128* %__v14_t, i64 4
  %211 = load i128, i128* %210
  %212 = add i128 %211, 2251799813685247
  store i128 %212, i128* %209
  %213 = getelementptr i128, i128* %__v14_t, i64 1
  %214 = getelementptr i128, i128* %__v14_t, i64 1
  %215 = load i128, i128* %214
  %216 = getelementptr i128, i128* %__v14_t, i64 0
  %217 = load i128, i128* %216
  %218 = lshr i128 %217, 51
  %219 = add i128 %215, %218
  store i128 %219, i128* %213
  %220 = getelementptr i128, i128* %__v14_t, i64 0
  %221 = getelementptr i128, i128* %__v14_t, i64 0
  %222 = load i128, i128* %221
  %223 = and i128 %222, 2251799813685247
  store i128 %223, i128* %220
  %224 = getelementptr i128, i128* %__v14_t, i64 2
  %225 = getelementptr i128, i128* %__v14_t, i64 2
  %226 = load i128, i128* %225
  %227 = getelementptr i128, i128* %__v14_t, i64 1
  %228 = load i128, i128* %227
  %229 = lshr i128 %228, 51
  %230 = add i128 %226, %229
  store i128 %230, i128* %224
  %231 = getelementptr i128, i128* %__v14_t, i64 1
  %232 = getelementptr i128, i128* %__v14_t, i64 1
  %233 = load i128, i128* %232
  %234 = and i128 %233, 2251799813685247
  store i128 %234, i128* %231
  %235 = getelementptr i128, i128* %__v14_t, i64 3
  %236 = getelementptr i128, i128* %__v14_t, i64 3
  %237 = load i128, i128* %236
  %238 = getelementptr i128, i128* %__v14_t, i64 2
  %239 = load i128, i128* %238
  %240 = lshr i128 %239, 51
  %241 = add i128 %237, %240
  store i128 %241, i128* %235
  %242 = getelementptr i128, i128* %__v14_t, i64 2
  %243 = getelementptr i128, i128* %__v14_t, i64 2
  %244 = load i128, i128* %243
  %245 = and i128 %244, 2251799813685247
  store i128 %245, i128* %242
  %246 = getelementptr i128, i128* %__v14_t, i64 4
  %247 = getelementptr i128, i128* %__v14_t, i64 4
  %248 = load i128, i128* %247
  %249 = getelementptr i128, i128* %__v14_t, i64 3
  %250 = load i128, i128* %249
  %251 = lshr i128 %250, 51
  %252 = add i128 %248, %251
  store i128 %252, i128* %246
  %253 = getelementptr i128, i128* %__v14_t, i64 3
  %254 = getelementptr i128, i128* %__v14_t, i64 3
  %255 = load i128, i128* %254
  %256 = and i128 %255, 2251799813685247
  store i128 %256, i128* %253
  %257 = getelementptr i128, i128* %__v14_t, i64 4
  %258 = getelementptr i128, i128* %__v14_t, i64 4
  %259 = load i128, i128* %258
  %260 = and i128 %259, 2251799813685247
  store i128 %260, i128* %257
  %261 = getelementptr i8, i8* %__v12_output, i64 0
  %262 = getelementptr i128, i128* %__v14_t, i64 0
  %263 = load i128, i128* %262
  %264 = getelementptr i128, i128* %__v14_t, i64 1
  %265 = load i128, i128* %264
  %266 = shl i128 %265, 51
  %267 = or i128 %263, %266
  %268 = trunc i128 %267 to i64
  call void @store_limb(i8* %261, i64 %268)
  %269 = getelementptr i8, i8* %__v12_output, i64 8
  %270 = getelementptr i128, i128* %__v14_t, i64 1
  %271 = load i128, i128* %270
  %272 = lshr i128 %271, 13
  %273 = getelementptr i128, i128* %__v14_t, i64 2
  %274 = load i128, i128* %273
  %275 = shl i128 %274, 38
  %276 = or i128 %272, %275
  %277 = trunc i128 %276 to i64
  call void @store_limb(i8* %269, i64 %277)
  %278 = getelementptr i8, i8* %__v12_output, i64 16
  %279 = getelementptr i128, i128* %__v14_t, i64 2
  %280 = load i128, i128* %279
  %281 = lshr i128 %280, 26
  %282 = getelementptr i128, i128* %__v14_t, i64 3
  %283 = load i128, i128* %282
  %284 = shl i128 %283, 25
  %285 = or i128 %281, %284
  %286 = trunc i128 %285 to i64
  call void @store_limb(i8* %278, i64 %286)
  %287 = getelementptr i8, i8* %__v12_output, i64 24
  %288 = getelementptr i128, i128* %__v14_t, i64 3
  %289 = load i128, i128* %288
  %290 = lshr i128 %289, 39
  %291 = getelementptr i128, i128* %__v14_t, i64 4
  %292 = load i128, i128* %291
  %293 = shl i128 %292, 12
  %294 = or i128 %290, %293
  %295 = trunc i128 %294 to i64
  call void @store_limb(i8* %287, i64 %295)
  ret void
}

define internal i64 @load_limb(i8* %__v11_input) {
entry:
  %__rval = alloca i64
  store i64 0, i64* %__rval
  %__rctx = alloca i1
  store i1 true, i1* %__rctx
  %0 = getelementptr i8, i8* %__v11_input, i64 0
  %1 = load i8, i8* %0
  %2 = zext i8 %1 to i64
  %3 = getelementptr i8, i8* %__v11_input, i64 1
  %4 = load i8, i8* %3
  %5 = zext i8 %4 to i64
  %6 = shl i64 %5, 8
  %7 = or i64 %2, %6
  %8 = getelementptr i8, i8* %__v11_input, i64 2
  %9 = load i8, i8* %8
  %10 = zext i8 %9 to i64
  %11 = shl i64 %10, 16
  %12 = or i64 %7, %11
  %13 = getelementptr i8, i8* %__v11_input, i64 3
  %14 = load i8, i8* %13
  %15 = zext i8 %14 to i64
  %16 = shl i64 %15, 24
  %17 = or i64 %12, %16
  %18 = getelementptr i8, i8* %__v11_input, i64 4
  %19 = load i8, i8* %18
  %20 = zext i8 %19 to i64
  %21 = shl i64 %20, 32
  %22 = or i64 %17, %21
  %23 = getelementptr i8, i8* %__v11_input, i64 5
  %24 = load i8, i8* %23
  %25 = zext i8 %24 to i64
  %26 = shl i64 %25, 40
  %27 = or i64 %22, %26
  %28 = getelementptr i8, i8* %__v11_input, i64 6
  %29 = load i8, i8* %28
  %30 = zext i8 %29 to i64
  %31 = shl i64 %30, 48
  %32 = or i64 %27, %31
  %33 = getelementptr i8, i8* %__v11_input, i64 7
  %34 = load i8, i8* %33
  %35 = zext i8 %34 to i64
  %36 = shl i64 %35, 56
  %37 = or i64 %32, %36
  ret i64 %37
}

define internal void @fexpand(i64* %__v9_output, i8* %__v10_input) {
entry:
  %__rctx = alloca i1
  store i1 true, i1* %__rctx
  %0 = getelementptr i8, i8* %__v10_input, i64 0
  %__v105_load_limb = call i64 @load_limb(i8* %0)
  %1 = getelementptr i64, i64* %__v9_output, i64 0
  %2 = and i64 %__v105_load_limb, 2251799813685247
  store i64 %2, i64* %1
  %3 = getelementptr i8, i8* %__v10_input, i64 6
  %__v106_load_limb = call i64 @load_limb(i8* %3)
  %4 = getelementptr i64, i64* %__v9_output, i64 1
  %5 = lshr i64 %__v106_load_limb, 3
  %6 = and i64 %5, 2251799813685247
  store i64 %6, i64* %4
  %7 = getelementptr i8, i8* %__v10_input, i64 12
  %__v107_load_limb = call i64 @load_limb(i8* %7)
  %8 = getelementptr i64, i64* %__v9_output, i64 2
  %9 = lshr i64 %__v107_load_limb, 6
  %10 = and i64 %9, 2251799813685247
  store i64 %10, i64* %8
  %11 = getelementptr i8, i8* %__v10_input, i64 19
  %__v108_load_limb = call i64 @load_limb(i8* %11)
  %12 = getelementptr i64, i64* %__v9_output, i64 3
  %13 = lshr i64 %__v108_load_limb, 1
  %14 = and i64 %13, 2251799813685247
  store i64 %14, i64* %12
  %15 = getelementptr i8, i8* %__v10_input, i64 24
  %__v109_load_limb = call i64 @load_limb(i8* %15)
  %16 = getelementptr i64, i64* %__v9_output, i64 4
  %17 = lshr i64 %__v109_load_limb, 12
  %18 = and i64 %17, 2251799813685247
  store i64 %18, i64* %16
  ret void
}

define i32 @curve25519_donna(i8* %__v1_mypublic, i8* %__v2__secret, i8* %__v3_basepoint) {
entry:
  %__rval = alloca i32
  store i32 0, i32* %__rval
  %__rctx = alloca i1
  store i1 true, i1* %__rctx
  %__v4_bp = alloca i64, i64 5
  %0 = bitcast i64* %__v4_bp to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 40, i32 8, i1 false)
  %__v5_x = alloca i64, i64 5
  %1 = bitcast i64* %__v5_x to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 40, i32 8, i1 false)
  %__v6_z = alloca i64, i64 5
  %2 = bitcast i64* %__v6_z to i8*
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 40, i32 8, i1 false)
  %__v7_zmone = alloca i64, i64 5
  %3 = bitcast i64* %__v7_zmone to i8*
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 40, i32 8, i1 false)
  %__v8_e = alloca i8, i64 32
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %__v8_e, i8* %__v2__secret, i64 32, i32 1, i1 false)
  %4 = getelementptr i8, i8* %__v8_e, i64 0
  %5 = getelementptr i8, i8* %__v8_e, i64 0
  %6 = load i8, i8* %5
  %7 = and i8 %6, -8
  store i8 %7, i8* %4
  %8 = getelementptr i8, i8* %__v8_e, i64 31
  %9 = getelementptr i8, i8* %__v8_e, i64 31
  %10 = load i8, i8* %9
  %11 = and i8 %10, 127
  store i8 %11, i8* %8
  %12 = getelementptr i8, i8* %__v8_e, i64 31
  %13 = getelementptr i8, i8* %__v8_e, i64 31
  %14 = load i8, i8* %13
  %15 = or i8 %14, 64
  store i8 %15, i8* %12
  call void @fexpand(i64* %__v4_bp, i8* %__v3_basepoint)
  call void @cmult(i64* %__v5_x, i64* %__v6_z, i8* %__v8_e, i64* %__v4_bp)
  call void @crecip(i64* %__v7_zmone, i64* %__v6_z)
  call void @fmul(i64* %__v6_z, i64* %__v5_x, i64* %__v7_zmone)
  call void @fcontract(i8* %__v1_mypublic, i64* %__v6_z)
  ret i32 0
}

attributes #0 = { argmemonly nounwind }
