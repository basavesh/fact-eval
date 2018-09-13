; ModuleID = 'Module'
source_filename = "Module"

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
  %9 = call i64 @fact.cmov.sel.i64(i1 %7, i64 %6, i64 %8)
  store i64 %9, i64* %4
  %__v122_lexpr = zext i32 %__v103_i to i64
  %10 = getelementptr i64, i64* %__v101_b, i64 %__v122_lexpr
  %11 = and i1 true, %__m1
  %12 = load i64, i64* %10
  %13 = call i64 @fact.cmov.sel.i64(i1 %11, i64 %__v104_x, i64 %12)
  store i64 %13, i64* %10
  br label %14

; <label>:14:                                     ; preds = %2
  %15 = add i32 %__v103_i, 1
  br label %0

; <label>:16:                                     ; preds = %0
  %__m2 = xor i1 %__m1, true
  ret void
}

; Function Attrs: alwaysinline
define internal i64 @fact.cmov.sel.i64(i1 %cond, i64 %x, i64 %y) #0 {
entry:
  %0 = select i1 %cond, i64 %x, i64 %y
  ret i64 %0
}

define internal void @fmul(i64* %__v85_output, i64* %__v86_input2, i64* %__v87_input) {
entry:
  %__rctx = alloca i1
  store i1 true, i1* %__rctx
  %__v88_t = alloca i128, i64 5
  call void @fact.memset.i128(i128* %__v88_t, i8 0, i64 5)
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
  %0 = getelementptr i64, i64* %__v87_input, i64 0
  %1 = load i64, i64* %0
  store i64 %1, i64* %__v89_r0
  %2 = getelementptr i64, i64* %__v87_input, i64 1
  %3 = load i64, i64* %2
  store i64 %3, i64* %__v90_r1
  %4 = getelementptr i64, i64* %__v87_input, i64 2
  %5 = load i64, i64* %4
  store i64 %5, i64* %__v91_r2
  %6 = getelementptr i64, i64* %__v87_input, i64 3
  %7 = load i64, i64* %6
  store i64 %7, i64* %__v92_r3
  %8 = getelementptr i64, i64* %__v87_input, i64 4
  %9 = load i64, i64* %8
  store i64 %9, i64* %__v93_r4
  %10 = getelementptr i64, i64* %__v86_input2, i64 0
  %11 = load i64, i64* %10
  store i64 %11, i64* %__v94_s0
  %12 = getelementptr i64, i64* %__v86_input2, i64 1
  %13 = load i64, i64* %12
  store i64 %13, i64* %__v95_s1
  %14 = getelementptr i64, i64* %__v86_input2, i64 2
  %15 = load i64, i64* %14
  store i64 %15, i64* %__v96_s2
  %16 = getelementptr i64, i64* %__v86_input2, i64 3
  %17 = load i64, i64* %16
  store i64 %17, i64* %__v97_s3
  %18 = getelementptr i64, i64* %__v86_input2, i64 4
  %19 = load i64, i64* %18
  store i64 %19, i64* %__v98_s4
  %20 = getelementptr i128, i128* %__v88_t, i64 0
  %21 = load i64, i64* %__v89_r0
  %22 = zext i64 %21 to i128
  %23 = load i64, i64* %__v94_s0
  %24 = zext i64 %23 to i128
  %25 = mul i128 %22, %24
  store i128 %25, i128* %20
  %26 = getelementptr i128, i128* %__v88_t, i64 1
  %27 = load i64, i64* %__v89_r0
  %28 = zext i64 %27 to i128
  %29 = load i64, i64* %__v95_s1
  %30 = zext i64 %29 to i128
  %31 = mul i128 %28, %30
  %32 = load i64, i64* %__v90_r1
  %33 = zext i64 %32 to i128
  %34 = load i64, i64* %__v94_s0
  %35 = zext i64 %34 to i128
  %36 = mul i128 %33, %35
  %37 = add i128 %31, %36
  store i128 %37, i128* %26
  %38 = getelementptr i128, i128* %__v88_t, i64 2
  %39 = load i64, i64* %__v89_r0
  %40 = zext i64 %39 to i128
  %41 = load i64, i64* %__v96_s2
  %42 = zext i64 %41 to i128
  %43 = mul i128 %40, %42
  %44 = load i64, i64* %__v91_r2
  %45 = zext i64 %44 to i128
  %46 = load i64, i64* %__v94_s0
  %47 = zext i64 %46 to i128
  %48 = mul i128 %45, %47
  %49 = add i128 %43, %48
  %50 = load i64, i64* %__v90_r1
  %51 = zext i64 %50 to i128
  %52 = load i64, i64* %__v95_s1
  %53 = zext i64 %52 to i128
  %54 = mul i128 %51, %53
  %55 = add i128 %49, %54
  store i128 %55, i128* %38
  %56 = getelementptr i128, i128* %__v88_t, i64 3
  %57 = load i64, i64* %__v89_r0
  %58 = zext i64 %57 to i128
  %59 = load i64, i64* %__v97_s3
  %60 = zext i64 %59 to i128
  %61 = mul i128 %58, %60
  %62 = load i64, i64* %__v92_r3
  %63 = zext i64 %62 to i128
  %64 = load i64, i64* %__v94_s0
  %65 = zext i64 %64 to i128
  %66 = mul i128 %63, %65
  %67 = add i128 %61, %66
  %68 = load i64, i64* %__v90_r1
  %69 = zext i64 %68 to i128
  %70 = load i64, i64* %__v96_s2
  %71 = zext i64 %70 to i128
  %72 = mul i128 %69, %71
  %73 = add i128 %67, %72
  %74 = load i64, i64* %__v91_r2
  %75 = zext i64 %74 to i128
  %76 = load i64, i64* %__v95_s1
  %77 = zext i64 %76 to i128
  %78 = mul i128 %75, %77
  %79 = add i128 %73, %78
  store i128 %79, i128* %56
  %80 = getelementptr i128, i128* %__v88_t, i64 4
  %81 = load i64, i64* %__v89_r0
  %82 = zext i64 %81 to i128
  %83 = load i64, i64* %__v98_s4
  %84 = zext i64 %83 to i128
  %85 = mul i128 %82, %84
  %86 = load i64, i64* %__v93_r4
  %87 = zext i64 %86 to i128
  %88 = load i64, i64* %__v94_s0
  %89 = zext i64 %88 to i128
  %90 = mul i128 %87, %89
  %91 = add i128 %85, %90
  %92 = load i64, i64* %__v92_r3
  %93 = zext i64 %92 to i128
  %94 = load i64, i64* %__v95_s1
  %95 = zext i64 %94 to i128
  %96 = mul i128 %93, %95
  %97 = add i128 %91, %96
  %98 = load i64, i64* %__v90_r1
  %99 = zext i64 %98 to i128
  %100 = load i64, i64* %__v97_s3
  %101 = zext i64 %100 to i128
  %102 = mul i128 %99, %101
  %103 = add i128 %97, %102
  %104 = load i64, i64* %__v91_r2
  %105 = zext i64 %104 to i128
  %106 = load i64, i64* %__v96_s2
  %107 = zext i64 %106 to i128
  %108 = mul i128 %105, %107
  %109 = add i128 %103, %108
  store i128 %109, i128* %80
  %110 = load i64, i64* %__v93_r4
  %111 = mul i64 %110, 19
  store i64 %111, i64* %__v93_r4
  %112 = load i64, i64* %__v90_r1
  %113 = mul i64 %112, 19
  store i64 %113, i64* %__v90_r1
  %114 = load i64, i64* %__v91_r2
  %115 = mul i64 %114, 19
  store i64 %115, i64* %__v91_r2
  %116 = load i64, i64* %__v92_r3
  %117 = mul i64 %116, 19
  store i64 %117, i64* %__v92_r3
  %118 = getelementptr i128, i128* %__v88_t, i64 0
  %119 = getelementptr i128, i128* %__v88_t, i64 0
  %120 = load i128, i128* %119
  %121 = load i64, i64* %__v93_r4
  %122 = zext i64 %121 to i128
  %123 = load i64, i64* %__v95_s1
  %124 = zext i64 %123 to i128
  %125 = mul i128 %122, %124
  %126 = load i64, i64* %__v90_r1
  %127 = zext i64 %126 to i128
  %128 = load i64, i64* %__v98_s4
  %129 = zext i64 %128 to i128
  %130 = mul i128 %127, %129
  %131 = add i128 %125, %130
  %132 = load i64, i64* %__v91_r2
  %133 = zext i64 %132 to i128
  %134 = load i64, i64* %__v97_s3
  %135 = zext i64 %134 to i128
  %136 = mul i128 %133, %135
  %137 = add i128 %131, %136
  %138 = load i64, i64* %__v92_r3
  %139 = zext i64 %138 to i128
  %140 = load i64, i64* %__v96_s2
  %141 = zext i64 %140 to i128
  %142 = mul i128 %139, %141
  %143 = add i128 %137, %142
  %144 = add i128 %120, %143
  store i128 %144, i128* %118
  %145 = getelementptr i128, i128* %__v88_t, i64 1
  %146 = getelementptr i128, i128* %__v88_t, i64 1
  %147 = load i128, i128* %146
  %148 = load i64, i64* %__v93_r4
  %149 = zext i64 %148 to i128
  %150 = load i64, i64* %__v96_s2
  %151 = zext i64 %150 to i128
  %152 = mul i128 %149, %151
  %153 = load i64, i64* %__v91_r2
  %154 = zext i64 %153 to i128
  %155 = load i64, i64* %__v98_s4
  %156 = zext i64 %155 to i128
  %157 = mul i128 %154, %156
  %158 = add i128 %152, %157
  %159 = load i64, i64* %__v92_r3
  %160 = zext i64 %159 to i128
  %161 = load i64, i64* %__v97_s3
  %162 = zext i64 %161 to i128
  %163 = mul i128 %160, %162
  %164 = add i128 %158, %163
  %165 = add i128 %147, %164
  store i128 %165, i128* %145
  %166 = getelementptr i128, i128* %__v88_t, i64 2
  %167 = getelementptr i128, i128* %__v88_t, i64 2
  %168 = load i128, i128* %167
  %169 = load i64, i64* %__v93_r4
  %170 = zext i64 %169 to i128
  %171 = load i64, i64* %__v97_s3
  %172 = zext i64 %171 to i128
  %173 = mul i128 %170, %172
  %174 = load i64, i64* %__v92_r3
  %175 = zext i64 %174 to i128
  %176 = load i64, i64* %__v98_s4
  %177 = zext i64 %176 to i128
  %178 = mul i128 %175, %177
  %179 = add i128 %173, %178
  %180 = add i128 %168, %179
  store i128 %180, i128* %166
  %181 = getelementptr i128, i128* %__v88_t, i64 3
  %182 = getelementptr i128, i128* %__v88_t, i64 3
  %183 = load i128, i128* %182
  %184 = load i64, i64* %__v93_r4
  %185 = zext i64 %184 to i128
  %186 = load i64, i64* %__v98_s4
  %187 = zext i64 %186 to i128
  %188 = mul i128 %185, %187
  %189 = add i128 %183, %188
  store i128 %189, i128* %181
  %190 = getelementptr i128, i128* %__v88_t, i64 0
  %191 = load i128, i128* %190
  %192 = trunc i128 %191 to i64
  %193 = and i64 %192, 2251799813685247
  store i64 %193, i64* %__v89_r0
  %194 = getelementptr i128, i128* %__v88_t, i64 0
  %195 = load i128, i128* %194
  %196 = lshr i128 %195, 51
  %197 = trunc i128 %196 to i64
  store i64 %197, i64* %__v99_c
  %198 = getelementptr i128, i128* %__v88_t, i64 1
  %199 = getelementptr i128, i128* %__v88_t, i64 1
  %200 = load i128, i128* %199
  %201 = load i64, i64* %__v99_c
  %202 = zext i64 %201 to i128
  %203 = add i128 %200, %202
  store i128 %203, i128* %198
  %204 = getelementptr i128, i128* %__v88_t, i64 1
  %205 = load i128, i128* %204
  %206 = trunc i128 %205 to i64
  %207 = and i64 %206, 2251799813685247
  store i64 %207, i64* %__v90_r1
  %208 = getelementptr i128, i128* %__v88_t, i64 1
  %209 = load i128, i128* %208
  %210 = lshr i128 %209, 51
  %211 = trunc i128 %210 to i64
  store i64 %211, i64* %__v99_c
  %212 = getelementptr i128, i128* %__v88_t, i64 2
  %213 = getelementptr i128, i128* %__v88_t, i64 2
  %214 = load i128, i128* %213
  %215 = load i64, i64* %__v99_c
  %216 = zext i64 %215 to i128
  %217 = add i128 %214, %216
  store i128 %217, i128* %212
  %218 = getelementptr i128, i128* %__v88_t, i64 2
  %219 = load i128, i128* %218
  %220 = trunc i128 %219 to i64
  %221 = and i64 %220, 2251799813685247
  store i64 %221, i64* %__v91_r2
  %222 = getelementptr i128, i128* %__v88_t, i64 2
  %223 = load i128, i128* %222
  %224 = lshr i128 %223, 51
  %225 = trunc i128 %224 to i64
  store i64 %225, i64* %__v99_c
  %226 = getelementptr i128, i128* %__v88_t, i64 3
  %227 = getelementptr i128, i128* %__v88_t, i64 3
  %228 = load i128, i128* %227
  %229 = load i64, i64* %__v99_c
  %230 = zext i64 %229 to i128
  %231 = add i128 %228, %230
  store i128 %231, i128* %226
  %232 = getelementptr i128, i128* %__v88_t, i64 3
  %233 = load i128, i128* %232
  %234 = trunc i128 %233 to i64
  %235 = and i64 %234, 2251799813685247
  store i64 %235, i64* %__v92_r3
  %236 = getelementptr i128, i128* %__v88_t, i64 3
  %237 = load i128, i128* %236
  %238 = lshr i128 %237, 51
  %239 = trunc i128 %238 to i64
  store i64 %239, i64* %__v99_c
  %240 = getelementptr i128, i128* %__v88_t, i64 4
  %241 = getelementptr i128, i128* %__v88_t, i64 4
  %242 = load i128, i128* %241
  %243 = load i64, i64* %__v99_c
  %244 = zext i64 %243 to i128
  %245 = add i128 %242, %244
  store i128 %245, i128* %240
  %246 = getelementptr i128, i128* %__v88_t, i64 4
  %247 = load i128, i128* %246
  %248 = trunc i128 %247 to i64
  %249 = and i64 %248, 2251799813685247
  store i64 %249, i64* %__v93_r4
  %250 = getelementptr i128, i128* %__v88_t, i64 4
  %251 = load i128, i128* %250
  %252 = lshr i128 %251, 51
  %253 = trunc i128 %252 to i64
  store i64 %253, i64* %__v99_c
  %254 = load i64, i64* %__v89_r0
  %255 = load i64, i64* %__v99_c
  %256 = mul i64 %255, 19
  %257 = add i64 %254, %256
  store i64 %257, i64* %__v89_r0
  %258 = load i64, i64* %__v89_r0
  %259 = lshr i64 %258, 51
  store i64 %259, i64* %__v99_c
  %260 = load i64, i64* %__v89_r0
  %261 = and i64 %260, 2251799813685247
  store i64 %261, i64* %__v89_r0
  %262 = load i64, i64* %__v90_r1
  %263 = load i64, i64* %__v99_c
  %264 = add i64 %262, %263
  store i64 %264, i64* %__v90_r1
  %265 = load i64, i64* %__v90_r1
  %266 = lshr i64 %265, 51
  store i64 %266, i64* %__v99_c
  %267 = load i64, i64* %__v90_r1
  %268 = and i64 %267, 2251799813685247
  store i64 %268, i64* %__v90_r1
  %269 = load i64, i64* %__v91_r2
  %270 = load i64, i64* %__v99_c
  %271 = add i64 %269, %270
  store i64 %271, i64* %__v91_r2
  %272 = getelementptr i64, i64* %__v85_output, i64 0
  %273 = load i64, i64* %__v89_r0
  store i64 %273, i64* %272
  %274 = getelementptr i64, i64* %__v85_output, i64 1
  %275 = load i64, i64* %__v90_r1
  store i64 %275, i64* %274
  %276 = getelementptr i64, i64* %__v85_output, i64 2
  %277 = load i64, i64* %__v91_r2
  store i64 %277, i64* %276
  %278 = getelementptr i64, i64* %__v85_output, i64 3
  %279 = load i64, i64* %__v92_r3
  store i64 %279, i64* %278
  %280 = getelementptr i64, i64* %__v85_output, i64 4
  %281 = load i64, i64* %__v93_r4
  store i64 %281, i64* %280
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #1

; Function Attrs: alwaysinline
define internal void @fact.memset.i128(i128* %dst, i8 %n, i64 %len) #0 {
entry:
  %0 = bitcast i128* %dst to i8*
  %1 = mul i64 %len, 16
  call void @llvm.memset.p0i8.i64(i8* %0, i8 %n, i64 %1, i32 16, i1 false)
  ret void
}

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
  call void @fact.memset.i128(i128* %__v62_t, i8 0, i64 5)
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
  %0 = getelementptr i64, i64* %__v60_input, i64 0
  %1 = load i64, i64* %0
  store i64 %1, i64* %__v63_r0
  %2 = getelementptr i64, i64* %__v60_input, i64 1
  %3 = load i64, i64* %2
  store i64 %3, i64* %__v64_r1
  %4 = getelementptr i64, i64* %__v60_input, i64 2
  %5 = load i64, i64* %4
  store i64 %5, i64* %__v65_r2
  %6 = getelementptr i64, i64* %__v60_input, i64 3
  %7 = load i64, i64* %6
  store i64 %7, i64* %__v66_r3
  %8 = getelementptr i64, i64* %__v60_input, i64 4
  %9 = load i64, i64* %8
  store i64 %9, i64* %__v67_r4
  br label %10

; <label>:10:                                     ; preds = %197, %entry
  %__v74_i = phi i64 [ 0, %entry ], [ %198, %197 ]
  %11 = icmp ult i64 %__v74_i, %__v61_count
  br i1 %11, label %12, label %199

; <label>:12:                                     ; preds = %10
  %13 = load i64, i64* %__v63_r0
  %14 = mul i64 %13, 2
  store i64 %14, i64* %__v69_d0
  %15 = load i64, i64* %__v64_r1
  %16 = mul i64 %15, 2
  store i64 %16, i64* %__v70_d1
  %17 = load i64, i64* %__v65_r2
  %18 = mul i64 %17, 2
  %19 = mul i64 %18, 19
  store i64 %19, i64* %__v71_d2
  %20 = load i64, i64* %__v67_r4
  %21 = mul i64 %20, 19
  store i64 %21, i64* %__v73_d419
  %22 = load i64, i64* %__v73_d419
  %23 = mul i64 %22, 2
  store i64 %23, i64* %__v72_d4
  %24 = getelementptr i128, i128* %__v62_t, i64 0
  %25 = load i64, i64* %__v63_r0
  %26 = zext i64 %25 to i128
  %27 = load i64, i64* %__v63_r0
  %28 = zext i64 %27 to i128
  %29 = mul i128 %26, %28
  %30 = load i64, i64* %__v72_d4
  %31 = zext i64 %30 to i128
  %32 = load i64, i64* %__v64_r1
  %33 = zext i64 %32 to i128
  %34 = mul i128 %31, %33
  %35 = add i128 %29, %34
  %36 = load i64, i64* %__v71_d2
  %37 = zext i64 %36 to i128
  %38 = load i64, i64* %__v66_r3
  %39 = zext i64 %38 to i128
  %40 = mul i128 %37, %39
  %41 = add i128 %35, %40
  store i128 %41, i128* %24
  %42 = getelementptr i128, i128* %__v62_t, i64 1
  %43 = load i64, i64* %__v69_d0
  %44 = zext i64 %43 to i128
  %45 = load i64, i64* %__v64_r1
  %46 = zext i64 %45 to i128
  %47 = mul i128 %44, %46
  %48 = load i64, i64* %__v72_d4
  %49 = zext i64 %48 to i128
  %50 = load i64, i64* %__v65_r2
  %51 = zext i64 %50 to i128
  %52 = mul i128 %49, %51
  %53 = add i128 %47, %52
  %54 = load i64, i64* %__v66_r3
  %55 = zext i64 %54 to i128
  %56 = load i64, i64* %__v66_r3
  %57 = mul i64 %56, 19
  %58 = zext i64 %57 to i128
  %59 = mul i128 %55, %58
  %60 = add i128 %53, %59
  store i128 %60, i128* %42
  %61 = getelementptr i128, i128* %__v62_t, i64 2
  %62 = load i64, i64* %__v69_d0
  %63 = zext i64 %62 to i128
  %64 = load i64, i64* %__v65_r2
  %65 = zext i64 %64 to i128
  %66 = mul i128 %63, %65
  %67 = load i64, i64* %__v64_r1
  %68 = zext i64 %67 to i128
  %69 = load i64, i64* %__v64_r1
  %70 = zext i64 %69 to i128
  %71 = mul i128 %68, %70
  %72 = add i128 %66, %71
  %73 = load i64, i64* %__v72_d4
  %74 = zext i64 %73 to i128
  %75 = load i64, i64* %__v66_r3
  %76 = zext i64 %75 to i128
  %77 = mul i128 %74, %76
  %78 = add i128 %72, %77
  store i128 %78, i128* %61
  %79 = getelementptr i128, i128* %__v62_t, i64 3
  %80 = load i64, i64* %__v69_d0
  %81 = zext i64 %80 to i128
  %82 = load i64, i64* %__v66_r3
  %83 = zext i64 %82 to i128
  %84 = mul i128 %81, %83
  %85 = load i64, i64* %__v70_d1
  %86 = zext i64 %85 to i128
  %87 = load i64, i64* %__v65_r2
  %88 = zext i64 %87 to i128
  %89 = mul i128 %86, %88
  %90 = add i128 %84, %89
  %91 = load i64, i64* %__v67_r4
  %92 = zext i64 %91 to i128
  %93 = load i64, i64* %__v73_d419
  %94 = zext i64 %93 to i128
  %95 = mul i128 %92, %94
  %96 = add i128 %90, %95
  store i128 %96, i128* %79
  %97 = getelementptr i128, i128* %__v62_t, i64 4
  %98 = load i64, i64* %__v69_d0
  %99 = zext i64 %98 to i128
  %100 = load i64, i64* %__v67_r4
  %101 = zext i64 %100 to i128
  %102 = mul i128 %99, %101
  %103 = load i64, i64* %__v70_d1
  %104 = zext i64 %103 to i128
  %105 = load i64, i64* %__v66_r3
  %106 = zext i64 %105 to i128
  %107 = mul i128 %104, %106
  %108 = add i128 %102, %107
  %109 = load i64, i64* %__v65_r2
  %110 = zext i64 %109 to i128
  %111 = load i64, i64* %__v65_r2
  %112 = zext i64 %111 to i128
  %113 = mul i128 %110, %112
  %114 = add i128 %108, %113
  store i128 %114, i128* %97
  %115 = getelementptr i128, i128* %__v62_t, i64 0
  %116 = load i128, i128* %115
  %117 = trunc i128 %116 to i64
  %118 = and i64 %117, 2251799813685247
  store i64 %118, i64* %__v63_r0
  %119 = getelementptr i128, i128* %__v62_t, i64 0
  %120 = load i128, i128* %119
  %121 = lshr i128 %120, 51
  %122 = trunc i128 %121 to i64
  store i64 %122, i64* %__v68_c
  %123 = getelementptr i128, i128* %__v62_t, i64 1
  %124 = getelementptr i128, i128* %__v62_t, i64 1
  %125 = load i128, i128* %124
  %126 = load i64, i64* %__v68_c
  %127 = zext i64 %126 to i128
  %128 = add i128 %125, %127
  store i128 %128, i128* %123
  %129 = getelementptr i128, i128* %__v62_t, i64 1
  %130 = load i128, i128* %129
  %131 = trunc i128 %130 to i64
  %132 = and i64 %131, 2251799813685247
  store i64 %132, i64* %__v64_r1
  %133 = getelementptr i128, i128* %__v62_t, i64 1
  %134 = load i128, i128* %133
  %135 = lshr i128 %134, 51
  %136 = trunc i128 %135 to i64
  store i64 %136, i64* %__v68_c
  %137 = getelementptr i128, i128* %__v62_t, i64 2
  %138 = getelementptr i128, i128* %__v62_t, i64 2
  %139 = load i128, i128* %138
  %140 = load i64, i64* %__v68_c
  %141 = zext i64 %140 to i128
  %142 = add i128 %139, %141
  store i128 %142, i128* %137
  %143 = getelementptr i128, i128* %__v62_t, i64 2
  %144 = load i128, i128* %143
  %145 = trunc i128 %144 to i64
  %146 = and i64 %145, 2251799813685247
  store i64 %146, i64* %__v65_r2
  %147 = getelementptr i128, i128* %__v62_t, i64 2
  %148 = load i128, i128* %147
  %149 = lshr i128 %148, 51
  %150 = trunc i128 %149 to i64
  store i64 %150, i64* %__v68_c
  %151 = getelementptr i128, i128* %__v62_t, i64 3
  %152 = getelementptr i128, i128* %__v62_t, i64 3
  %153 = load i128, i128* %152
  %154 = load i64, i64* %__v68_c
  %155 = zext i64 %154 to i128
  %156 = add i128 %153, %155
  store i128 %156, i128* %151
  %157 = getelementptr i128, i128* %__v62_t, i64 3
  %158 = load i128, i128* %157
  %159 = trunc i128 %158 to i64
  %160 = and i64 %159, 2251799813685247
  store i64 %160, i64* %__v66_r3
  %161 = getelementptr i128, i128* %__v62_t, i64 3
  %162 = load i128, i128* %161
  %163 = lshr i128 %162, 51
  %164 = trunc i128 %163 to i64
  store i64 %164, i64* %__v68_c
  %165 = getelementptr i128, i128* %__v62_t, i64 4
  %166 = getelementptr i128, i128* %__v62_t, i64 4
  %167 = load i128, i128* %166
  %168 = load i64, i64* %__v68_c
  %169 = zext i64 %168 to i128
  %170 = add i128 %167, %169
  store i128 %170, i128* %165
  %171 = getelementptr i128, i128* %__v62_t, i64 4
  %172 = load i128, i128* %171
  %173 = trunc i128 %172 to i64
  %174 = and i64 %173, 2251799813685247
  store i64 %174, i64* %__v67_r4
  %175 = getelementptr i128, i128* %__v62_t, i64 4
  %176 = load i128, i128* %175
  %177 = lshr i128 %176, 51
  %178 = trunc i128 %177 to i64
  store i64 %178, i64* %__v68_c
  %179 = load i64, i64* %__v63_r0
  %180 = load i64, i64* %__v68_c
  %181 = mul i64 %180, 19
  %182 = add i64 %179, %181
  store i64 %182, i64* %__v63_r0
  %183 = load i64, i64* %__v63_r0
  %184 = lshr i64 %183, 51
  store i64 %184, i64* %__v68_c
  %185 = load i64, i64* %__v63_r0
  %186 = and i64 %185, 2251799813685247
  store i64 %186, i64* %__v63_r0
  %187 = load i64, i64* %__v64_r1
  %188 = load i64, i64* %__v68_c
  %189 = add i64 %187, %188
  store i64 %189, i64* %__v64_r1
  %190 = load i64, i64* %__v64_r1
  %191 = lshr i64 %190, 51
  store i64 %191, i64* %__v68_c
  %192 = load i64, i64* %__v64_r1
  %193 = and i64 %192, 2251799813685247
  store i64 %193, i64* %__v64_r1
  %194 = load i64, i64* %__v65_r2
  %195 = load i64, i64* %__v68_c
  %196 = add i64 %194, %195
  store i64 %196, i64* %__v65_r2
  br label %197

; <label>:197:                                    ; preds = %12
  %198 = add i64 %__v74_i, 1
  br label %10

; <label>:199:                                    ; preds = %10
  %200 = getelementptr i64, i64* %__v59_output, i64 0
  %201 = load i64, i64* %__v63_r0
  store i64 %201, i64* %200
  %202 = getelementptr i64, i64* %__v59_output, i64 1
  %203 = load i64, i64* %__v64_r1
  store i64 %203, i64* %202
  %204 = getelementptr i64, i64* %__v59_output, i64 2
  %205 = load i64, i64* %__v65_r2
  store i64 %205, i64* %204
  %206 = getelementptr i64, i64* %__v59_output, i64 3
  %207 = load i64, i64* %__v66_r3
  store i64 %207, i64* %206
  %208 = getelementptr i64, i64* %__v59_output, i64 4
  %209 = load i64, i64* %__v67_r4
  store i64 %209, i64* %208
  ret void
}

define internal void @fmonty(i64* %__v41_x2, i64* %__v42_z2, i64* %__v43_x3, i64* %__v44_z3, i64* %__v45_x, i64* %__v46_z, i64* %__v47_xprime, i64* %__v48_zprime, i64* %__v49_qmqp) {
entry:
  %__rctx = alloca i1
  store i1 true, i1* %__rctx
  %__v50_origx = alloca i64, i64 5
  call void @fact.memcpy.i64(i64* %__v50_origx, i64* %__v45_x, i64 5)
  %__v51_origxprime = alloca i64, i64 5
  call void @fact.memcpy.i64(i64* %__v51_origxprime, i64* %__v47_xprime, i64 5)
  %__v52_zzz = alloca i64, i64 5
  call void @fact.memset.i64(i64* %__v52_zzz, i8 0, i64 5)
  %__v53_xx = alloca i64, i64 5
  call void @fact.memset.i64(i64* %__v53_xx, i8 0, i64 5)
  %__v54_zz = alloca i64, i64 5
  call void @fact.memset.i64(i64* %__v54_zz, i8 0, i64 5)
  %__v55_xxprime = alloca i64, i64 5
  call void @fact.memset.i64(i64* %__v55_xxprime, i8 0, i64 5)
  %__v56_zzprime = alloca i64, i64 5
  call void @fact.memset.i64(i64* %__v56_zzprime, i8 0, i64 5)
  %__v57_zzzprime = alloca i64, i64 5
  call void @fact.memset.i64(i64* %__v57_zzzprime, i8 0, i64 5)
  call void @fsum(i64* %__v45_x, i64* %__v46_z)
  call void @fdifference_backwards(i64* %__v46_z, i64* %__v50_origx)
  call void @fsum(i64* %__v47_xprime, i64* %__v48_zprime)
  call void @fdifference_backwards(i64* %__v48_zprime, i64* %__v51_origxprime)
  call void @fmul(i64* %__v55_xxprime, i64* %__v47_xprime, i64* %__v46_z)
  call void @fmul(i64* %__v56_zzprime, i64* %__v45_x, i64* %__v48_zprime)
  br label %0

; <label>:0:                                      ; preds = %6, %entry
  %__v58_i = phi i32 [ 0, %entry ], [ %7, %6 ]
  %1 = icmp ult i32 %__v58_i, 5
  br i1 %1, label %2, label %8

; <label>:2:                                      ; preds = %0
  %__v117_lexpr = zext i32 %__v58_i to i64
  %__v118_lexpr = zext i32 %__v58_i to i64
  %3 = getelementptr i64, i64* %__v51_origxprime, i64 %__v117_lexpr
  %4 = getelementptr i64, i64* %__v55_xxprime, i64 %__v118_lexpr
  %5 = load i64, i64* %4
  store i64 %5, i64* %3
  br label %6

; <label>:6:                                      ; preds = %2
  %7 = add i32 %__v58_i, 1
  br label %0

; <label>:8:                                      ; preds = %0
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
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: alwaysinline
define internal void @fact.memcpy.i64(i64* %dst, i64* %src, i64 %len) #0 {
entry:
  %0 = bitcast i64* %dst to i8*
  %1 = bitcast i64* %src to i8*
  %2 = mul i64 %len, 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 %2, i32 8, i1 false)
  ret void
}

; Function Attrs: alwaysinline
define internal void @fact.memset.i64(i64* %dst, i8 %n, i64 %len) #0 {
entry:
  %0 = bitcast i64* %dst to i8*
  %1 = mul i64 %len, 8
  call void @llvm.memset.p0i8.i64(i8* %0, i8 %n, i64 %1, i32 8, i1 false)
  ret void
}

define internal void @cmult(i64* %__v23_resultx, i64* %__v24_resultz, i8* %__v25_n, i64* %__v26_q) {
entry:
  %__rctx = alloca i1
  store i1 true, i1* %__rctx
  %__v27_a = alloca i64, i64 5
  call void @fact.memset.i64(i64* %__v27_a, i8 0, i64 5)
  %__v28_b = alloca i64, i64 5
  call void @fact.memset.i64(i64* %__v28_b, i8 0, i64 5)
  %__v29_c = alloca i64, i64 5
  call void @fact.memset.i64(i64* %__v29_c, i8 0, i64 5)
  %__v30_d = alloca i64, i64 5
  call void @fact.memset.i64(i64* %__v30_d, i8 0, i64 5)
  %__v31_e = alloca i64, i64 5
  call void @fact.memset.i64(i64* %__v31_e, i8 0, i64 5)
  %__v32_f = alloca i64, i64 5
  call void @fact.memset.i64(i64* %__v32_f, i8 0, i64 5)
  %__v33_g = alloca i64, i64 5
  call void @fact.memset.i64(i64* %__v33_g, i8 0, i64 5)
  %__v34_h = alloca i64, i64 5
  call void @fact.memset.i64(i64* %__v34_h, i8 0, i64 5)
  %0 = getelementptr i64, i64* %__v28_b, i64 0
  store i64 1, i64* %0
  %1 = getelementptr i64, i64* %__v29_c, i64 0
  store i64 1, i64* %1
  %2 = getelementptr i64, i64* %__v32_f, i64 0
  store i64 1, i64* %2
  %3 = getelementptr i64, i64* %__v34_h, i64 0
  store i64 1, i64* %3
  br label %4

; <label>:4:                                      ; preds = %10, %entry
  %__v35_i = phi i32 [ 0, %entry ], [ %11, %10 ]
  %5 = icmp ult i32 %__v35_i, 5
  br i1 %5, label %6, label %12

; <label>:6:                                      ; preds = %4
  %__v110_lexpr = zext i32 %__v35_i to i64
  %__v111_lexpr = zext i32 %__v35_i to i64
  %7 = getelementptr i64, i64* %__v27_a, i64 %__v110_lexpr
  %8 = getelementptr i64, i64* %__v26_q, i64 %__v111_lexpr
  %9 = load i64, i64* %8
  store i64 %9, i64* %7
  br label %10

; <label>:10:                                     ; preds = %6
  %11 = add i32 %__v35_i, 1
  br label %4

; <label>:12:                                     ; preds = %4
  br label %13

; <label>:13:                                     ; preds = %19, %12
  %__v36_i = phi i32 [ 0, %12 ], [ %20, %19 ]
  %14 = icmp ult i32 %__v36_i, 32
  br i1 %14, label %15, label %21

; <label>:15:                                     ; preds = %13
  %16 = sub i32 31, %__v36_i
  %__v112_lexpr = zext i32 %16 to i64
  %17 = getelementptr i8, i8* %__v25_n, i64 %__v112_lexpr
  %18 = load i8, i8* %17
  %__v37_byte = alloca i8
  store i8 %18, i8* %__v37_byte
  br label %22

; <label>:19:                                     ; preds = %31
  %20 = add i32 %__v36_i, 1
  br label %13

; <label>:21:                                     ; preds = %13
  br label %37

; <label>:22:                                     ; preds = %29, %15
  %__v38_j = phi i32 [ 0, %15 ], [ %30, %29 ]
  %23 = icmp ult i32 %__v38_j, 8
  br i1 %23, label %24, label %31

; <label>:24:                                     ; preds = %22
  %25 = load i8, i8* %__v37_byte
  %26 = lshr i8 %25, 7
  %__v39_bit = zext i8 %26 to i64
  %27 = and i32 %__v38_j, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %33

; <label>:29:                                     ; preds = %34
  %30 = add i32 %__v38_j, 1
  br label %22

; <label>:31:                                     ; preds = %22
  br label %19

; <label>:32:                                     ; preds = %24
  call void @swap_conditional(i64* %__v29_c, i64* %__v27_a, i64 %__v39_bit)
  call void @swap_conditional(i64* %__v30_d, i64* %__v28_b, i64 %__v39_bit)
  call void @fmonty(i64* %__v33_g, i64* %__v34_h, i64* %__v31_e, i64* %__v32_f, i64* %__v29_c, i64* %__v30_d, i64* %__v27_a, i64* %__v28_b, i64* %__v26_q)
  call void @swap_conditional(i64* %__v33_g, i64* %__v31_e, i64 %__v39_bit)
  call void @swap_conditional(i64* %__v34_h, i64* %__v32_f, i64 %__v39_bit)
  br label %34

; <label>:33:                                     ; preds = %24
  call void @swap_conditional(i64* %__v33_g, i64* %__v31_e, i64 %__v39_bit)
  call void @swap_conditional(i64* %__v34_h, i64* %__v32_f, i64 %__v39_bit)
  call void @fmonty(i64* %__v29_c, i64* %__v30_d, i64* %__v27_a, i64* %__v28_b, i64* %__v33_g, i64* %__v34_h, i64* %__v31_e, i64* %__v32_f, i64* %__v26_q)
  call void @swap_conditional(i64* %__v29_c, i64* %__v27_a, i64 %__v39_bit)
  call void @swap_conditional(i64* %__v30_d, i64* %__v28_b, i64 %__v39_bit)
  br label %34

; <label>:34:                                     ; preds = %33, %32
  %35 = load i8, i8* %__v37_byte
  %36 = shl i8 %35, 1
  store i8 %36, i8* %__v37_byte
  br label %29

; <label>:37:                                     ; preds = %46, %21
  %__v40_i = phi i32 [ 0, %21 ], [ %47, %46 ]
  %38 = icmp ult i32 %__v40_i, 5
  br i1 %38, label %39, label %48

; <label>:39:                                     ; preds = %37
  %__v113_lexpr = zext i32 %__v40_i to i64
  %__v114_lexpr = zext i32 %__v40_i to i64
  %40 = getelementptr i64, i64* %__v23_resultx, i64 %__v113_lexpr
  %41 = getelementptr i64, i64* %__v29_c, i64 %__v114_lexpr
  %42 = load i64, i64* %41
  store i64 %42, i64* %40
  %__v115_lexpr = zext i32 %__v40_i to i64
  %__v116_lexpr = zext i32 %__v40_i to i64
  %43 = getelementptr i64, i64* %__v24_resultz, i64 %__v115_lexpr
  %44 = getelementptr i64, i64* %__v30_d, i64 %__v116_lexpr
  %45 = load i64, i64* %44
  store i64 %45, i64* %43
  br label %46

; <label>:46:                                     ; preds = %39
  %47 = add i32 %__v40_i, 1
  br label %37

; <label>:48:                                     ; preds = %37
  ret void
}

define internal void @crecip(i64* %__v17_out, i64* %__v18_z) {
entry:
  %__rctx = alloca i1
  store i1 true, i1* %__rctx
  %__v19_a = alloca i64, i64 5
  call void @fact.memset.i64(i64* %__v19_a, i8 0, i64 5)
  %__v20_t0 = alloca i64, i64 5
  call void @fact.memset.i64(i64* %__v20_t0, i8 0, i64 5)
  %__v21_b = alloca i64, i64 5
  call void @fact.memset.i64(i64* %__v21_b, i8 0, i64 5)
  %__v22_c = alloca i64, i64 5
  call void @fact.memset.i64(i64* %__v22_c, i8 0, i64 5)
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
  call void @fact.memset.i128(i128* %__v14_t, i8 0, i64 5)
  %0 = getelementptr i128, i128* %__v14_t, i64 0
  %1 = getelementptr i64, i64* %__v13_input, i64 0
  %2 = load i64, i64* %1
  %3 = zext i64 %2 to i128
  store i128 %3, i128* %0
  %4 = getelementptr i128, i128* %__v14_t, i64 1
  %5 = getelementptr i64, i64* %__v13_input, i64 1
  %6 = load i64, i64* %5
  %7 = zext i64 %6 to i128
  store i128 %7, i128* %4
  %8 = getelementptr i128, i128* %__v14_t, i64 2
  %9 = getelementptr i64, i64* %__v13_input, i64 2
  %10 = load i64, i64* %9
  %11 = zext i64 %10 to i128
  store i128 %11, i128* %8
  %12 = getelementptr i128, i128* %__v14_t, i64 3
  %13 = getelementptr i64, i64* %__v13_input, i64 3
  %14 = load i64, i64* %13
  %15 = zext i64 %14 to i128
  store i128 %15, i128* %12
  %16 = getelementptr i128, i128* %__v14_t, i64 4
  %17 = getelementptr i64, i64* %__v13_input, i64 4
  %18 = load i64, i64* %17
  %19 = zext i64 %18 to i128
  store i128 %19, i128* %16
  %20 = getelementptr i128, i128* %__v14_t, i64 1
  %21 = getelementptr i128, i128* %__v14_t, i64 1
  %22 = load i128, i128* %21
  %23 = getelementptr i128, i128* %__v14_t, i64 0
  %24 = load i128, i128* %23
  %25 = lshr i128 %24, 51
  %26 = add i128 %22, %25
  store i128 %26, i128* %20
  %27 = getelementptr i128, i128* %__v14_t, i64 0
  %28 = getelementptr i128, i128* %__v14_t, i64 0
  %29 = load i128, i128* %28
  %30 = and i128 %29, 2251799813685247
  store i128 %30, i128* %27
  %31 = getelementptr i128, i128* %__v14_t, i64 2
  %32 = getelementptr i128, i128* %__v14_t, i64 2
  %33 = load i128, i128* %32
  %34 = getelementptr i128, i128* %__v14_t, i64 1
  %35 = load i128, i128* %34
  %36 = lshr i128 %35, 51
  %37 = add i128 %33, %36
  store i128 %37, i128* %31
  %38 = getelementptr i128, i128* %__v14_t, i64 1
  %39 = getelementptr i128, i128* %__v14_t, i64 1
  %40 = load i128, i128* %39
  %41 = and i128 %40, 2251799813685247
  store i128 %41, i128* %38
  %42 = getelementptr i128, i128* %__v14_t, i64 3
  %43 = getelementptr i128, i128* %__v14_t, i64 3
  %44 = load i128, i128* %43
  %45 = getelementptr i128, i128* %__v14_t, i64 2
  %46 = load i128, i128* %45
  %47 = lshr i128 %46, 51
  %48 = add i128 %44, %47
  store i128 %48, i128* %42
  %49 = getelementptr i128, i128* %__v14_t, i64 2
  %50 = getelementptr i128, i128* %__v14_t, i64 2
  %51 = load i128, i128* %50
  %52 = and i128 %51, 2251799813685247
  store i128 %52, i128* %49
  %53 = getelementptr i128, i128* %__v14_t, i64 4
  %54 = getelementptr i128, i128* %__v14_t, i64 4
  %55 = load i128, i128* %54
  %56 = getelementptr i128, i128* %__v14_t, i64 3
  %57 = load i128, i128* %56
  %58 = lshr i128 %57, 51
  %59 = add i128 %55, %58
  store i128 %59, i128* %53
  %60 = getelementptr i128, i128* %__v14_t, i64 3
  %61 = getelementptr i128, i128* %__v14_t, i64 3
  %62 = load i128, i128* %61
  %63 = and i128 %62, 2251799813685247
  store i128 %63, i128* %60
  %64 = getelementptr i128, i128* %__v14_t, i64 0
  %65 = getelementptr i128, i128* %__v14_t, i64 0
  %66 = load i128, i128* %65
  %67 = getelementptr i128, i128* %__v14_t, i64 4
  %68 = load i128, i128* %67
  %69 = lshr i128 %68, 51
  %70 = mul i128 19, %69
  %71 = add i128 %66, %70
  store i128 %71, i128* %64
  %72 = getelementptr i128, i128* %__v14_t, i64 4
  %73 = getelementptr i128, i128* %__v14_t, i64 4
  %74 = load i128, i128* %73
  %75 = and i128 %74, 2251799813685247
  store i128 %75, i128* %72
  %76 = getelementptr i128, i128* %__v14_t, i64 1
  %77 = getelementptr i128, i128* %__v14_t, i64 1
  %78 = load i128, i128* %77
  %79 = getelementptr i128, i128* %__v14_t, i64 0
  %80 = load i128, i128* %79
  %81 = lshr i128 %80, 51
  %82 = add i128 %78, %81
  store i128 %82, i128* %76
  %83 = getelementptr i128, i128* %__v14_t, i64 0
  %84 = getelementptr i128, i128* %__v14_t, i64 0
  %85 = load i128, i128* %84
  %86 = and i128 %85, 2251799813685247
  store i128 %86, i128* %83
  %87 = getelementptr i128, i128* %__v14_t, i64 2
  %88 = getelementptr i128, i128* %__v14_t, i64 2
  %89 = load i128, i128* %88
  %90 = getelementptr i128, i128* %__v14_t, i64 1
  %91 = load i128, i128* %90
  %92 = lshr i128 %91, 51
  %93 = add i128 %89, %92
  store i128 %93, i128* %87
  %94 = getelementptr i128, i128* %__v14_t, i64 1
  %95 = getelementptr i128, i128* %__v14_t, i64 1
  %96 = load i128, i128* %95
  %97 = and i128 %96, 2251799813685247
  store i128 %97, i128* %94
  %98 = getelementptr i128, i128* %__v14_t, i64 3
  %99 = getelementptr i128, i128* %__v14_t, i64 3
  %100 = load i128, i128* %99
  %101 = getelementptr i128, i128* %__v14_t, i64 2
  %102 = load i128, i128* %101
  %103 = lshr i128 %102, 51
  %104 = add i128 %100, %103
  store i128 %104, i128* %98
  %105 = getelementptr i128, i128* %__v14_t, i64 2
  %106 = getelementptr i128, i128* %__v14_t, i64 2
  %107 = load i128, i128* %106
  %108 = and i128 %107, 2251799813685247
  store i128 %108, i128* %105
  %109 = getelementptr i128, i128* %__v14_t, i64 4
  %110 = getelementptr i128, i128* %__v14_t, i64 4
  %111 = load i128, i128* %110
  %112 = getelementptr i128, i128* %__v14_t, i64 3
  %113 = load i128, i128* %112
  %114 = lshr i128 %113, 51
  %115 = add i128 %111, %114
  store i128 %115, i128* %109
  %116 = getelementptr i128, i128* %__v14_t, i64 3
  %117 = getelementptr i128, i128* %__v14_t, i64 3
  %118 = load i128, i128* %117
  %119 = and i128 %118, 2251799813685247
  store i128 %119, i128* %116
  %120 = getelementptr i128, i128* %__v14_t, i64 0
  %121 = getelementptr i128, i128* %__v14_t, i64 0
  %122 = load i128, i128* %121
  %123 = getelementptr i128, i128* %__v14_t, i64 4
  %124 = load i128, i128* %123
  %125 = lshr i128 %124, 51
  %126 = mul i128 19, %125
  %127 = add i128 %122, %126
  store i128 %127, i128* %120
  %128 = getelementptr i128, i128* %__v14_t, i64 4
  %129 = getelementptr i128, i128* %__v14_t, i64 4
  %130 = load i128, i128* %129
  %131 = and i128 %130, 2251799813685247
  store i128 %131, i128* %128
  %132 = getelementptr i128, i128* %__v14_t, i64 0
  %133 = getelementptr i128, i128* %__v14_t, i64 0
  %134 = load i128, i128* %133
  %135 = add i128 %134, 19
  store i128 %135, i128* %132
  %136 = getelementptr i128, i128* %__v14_t, i64 1
  %137 = getelementptr i128, i128* %__v14_t, i64 1
  %138 = load i128, i128* %137
  %139 = getelementptr i128, i128* %__v14_t, i64 0
  %140 = load i128, i128* %139
  %141 = lshr i128 %140, 51
  %142 = add i128 %138, %141
  store i128 %142, i128* %136
  %143 = getelementptr i128, i128* %__v14_t, i64 0
  %144 = getelementptr i128, i128* %__v14_t, i64 0
  %145 = load i128, i128* %144
  %146 = and i128 %145, 2251799813685247
  store i128 %146, i128* %143
  %147 = getelementptr i128, i128* %__v14_t, i64 2
  %148 = getelementptr i128, i128* %__v14_t, i64 2
  %149 = load i128, i128* %148
  %150 = getelementptr i128, i128* %__v14_t, i64 1
  %151 = load i128, i128* %150
  %152 = lshr i128 %151, 51
  %153 = add i128 %149, %152
  store i128 %153, i128* %147
  %154 = getelementptr i128, i128* %__v14_t, i64 1
  %155 = getelementptr i128, i128* %__v14_t, i64 1
  %156 = load i128, i128* %155
  %157 = and i128 %156, 2251799813685247
  store i128 %157, i128* %154
  %158 = getelementptr i128, i128* %__v14_t, i64 3
  %159 = getelementptr i128, i128* %__v14_t, i64 3
  %160 = load i128, i128* %159
  %161 = getelementptr i128, i128* %__v14_t, i64 2
  %162 = load i128, i128* %161
  %163 = lshr i128 %162, 51
  %164 = add i128 %160, %163
  store i128 %164, i128* %158
  %165 = getelementptr i128, i128* %__v14_t, i64 2
  %166 = getelementptr i128, i128* %__v14_t, i64 2
  %167 = load i128, i128* %166
  %168 = and i128 %167, 2251799813685247
  store i128 %168, i128* %165
  %169 = getelementptr i128, i128* %__v14_t, i64 4
  %170 = getelementptr i128, i128* %__v14_t, i64 4
  %171 = load i128, i128* %170
  %172 = getelementptr i128, i128* %__v14_t, i64 3
  %173 = load i128, i128* %172
  %174 = lshr i128 %173, 51
  %175 = add i128 %171, %174
  store i128 %175, i128* %169
  %176 = getelementptr i128, i128* %__v14_t, i64 3
  %177 = getelementptr i128, i128* %__v14_t, i64 3
  %178 = load i128, i128* %177
  %179 = and i128 %178, 2251799813685247
  store i128 %179, i128* %176
  %180 = getelementptr i128, i128* %__v14_t, i64 0
  %181 = getelementptr i128, i128* %__v14_t, i64 0
  %182 = load i128, i128* %181
  %183 = getelementptr i128, i128* %__v14_t, i64 4
  %184 = load i128, i128* %183
  %185 = lshr i128 %184, 51
  %186 = mul i128 19, %185
  %187 = add i128 %182, %186
  store i128 %187, i128* %180
  %188 = getelementptr i128, i128* %__v14_t, i64 4
  %189 = getelementptr i128, i128* %__v14_t, i64 4
  %190 = load i128, i128* %189
  %191 = and i128 %190, 2251799813685247
  store i128 %191, i128* %188
  %192 = getelementptr i128, i128* %__v14_t, i64 0
  %193 = getelementptr i128, i128* %__v14_t, i64 0
  %194 = load i128, i128* %193
  %195 = add i128 %194, 2251799813685229
  store i128 %195, i128* %192
  %196 = getelementptr i128, i128* %__v14_t, i64 1
  %197 = getelementptr i128, i128* %__v14_t, i64 1
  %198 = load i128, i128* %197
  %199 = add i128 %198, 2251799813685247
  store i128 %199, i128* %196
  %200 = getelementptr i128, i128* %__v14_t, i64 2
  %201 = getelementptr i128, i128* %__v14_t, i64 2
  %202 = load i128, i128* %201
  %203 = add i128 %202, 2251799813685247
  store i128 %203, i128* %200
  %204 = getelementptr i128, i128* %__v14_t, i64 3
  %205 = getelementptr i128, i128* %__v14_t, i64 3
  %206 = load i128, i128* %205
  %207 = add i128 %206, 2251799813685247
  store i128 %207, i128* %204
  %208 = getelementptr i128, i128* %__v14_t, i64 4
  %209 = getelementptr i128, i128* %__v14_t, i64 4
  %210 = load i128, i128* %209
  %211 = add i128 %210, 2251799813685247
  store i128 %211, i128* %208
  %212 = getelementptr i128, i128* %__v14_t, i64 1
  %213 = getelementptr i128, i128* %__v14_t, i64 1
  %214 = load i128, i128* %213
  %215 = getelementptr i128, i128* %__v14_t, i64 0
  %216 = load i128, i128* %215
  %217 = lshr i128 %216, 51
  %218 = add i128 %214, %217
  store i128 %218, i128* %212
  %219 = getelementptr i128, i128* %__v14_t, i64 0
  %220 = getelementptr i128, i128* %__v14_t, i64 0
  %221 = load i128, i128* %220
  %222 = and i128 %221, 2251799813685247
  store i128 %222, i128* %219
  %223 = getelementptr i128, i128* %__v14_t, i64 2
  %224 = getelementptr i128, i128* %__v14_t, i64 2
  %225 = load i128, i128* %224
  %226 = getelementptr i128, i128* %__v14_t, i64 1
  %227 = load i128, i128* %226
  %228 = lshr i128 %227, 51
  %229 = add i128 %225, %228
  store i128 %229, i128* %223
  %230 = getelementptr i128, i128* %__v14_t, i64 1
  %231 = getelementptr i128, i128* %__v14_t, i64 1
  %232 = load i128, i128* %231
  %233 = and i128 %232, 2251799813685247
  store i128 %233, i128* %230
  %234 = getelementptr i128, i128* %__v14_t, i64 3
  %235 = getelementptr i128, i128* %__v14_t, i64 3
  %236 = load i128, i128* %235
  %237 = getelementptr i128, i128* %__v14_t, i64 2
  %238 = load i128, i128* %237
  %239 = lshr i128 %238, 51
  %240 = add i128 %236, %239
  store i128 %240, i128* %234
  %241 = getelementptr i128, i128* %__v14_t, i64 2
  %242 = getelementptr i128, i128* %__v14_t, i64 2
  %243 = load i128, i128* %242
  %244 = and i128 %243, 2251799813685247
  store i128 %244, i128* %241
  %245 = getelementptr i128, i128* %__v14_t, i64 4
  %246 = getelementptr i128, i128* %__v14_t, i64 4
  %247 = load i128, i128* %246
  %248 = getelementptr i128, i128* %__v14_t, i64 3
  %249 = load i128, i128* %248
  %250 = lshr i128 %249, 51
  %251 = add i128 %247, %250
  store i128 %251, i128* %245
  %252 = getelementptr i128, i128* %__v14_t, i64 3
  %253 = getelementptr i128, i128* %__v14_t, i64 3
  %254 = load i128, i128* %253
  %255 = and i128 %254, 2251799813685247
  store i128 %255, i128* %252
  %256 = getelementptr i128, i128* %__v14_t, i64 4
  %257 = getelementptr i128, i128* %__v14_t, i64 4
  %258 = load i128, i128* %257
  %259 = and i128 %258, 2251799813685247
  store i128 %259, i128* %256
  %260 = getelementptr i8, i8* %__v12_output, i64 0
  %261 = getelementptr i128, i128* %__v14_t, i64 0
  %262 = load i128, i128* %261
  %263 = getelementptr i128, i128* %__v14_t, i64 1
  %264 = load i128, i128* %263
  %265 = shl i128 %264, 51
  %266 = or i128 %262, %265
  %267 = trunc i128 %266 to i64
  call void @store_limb(i8* %260, i64 %267)
  %268 = getelementptr i8, i8* %__v12_output, i64 8
  %269 = getelementptr i128, i128* %__v14_t, i64 1
  %270 = load i128, i128* %269
  %271 = lshr i128 %270, 13
  %272 = getelementptr i128, i128* %__v14_t, i64 2
  %273 = load i128, i128* %272
  %274 = shl i128 %273, 38
  %275 = or i128 %271, %274
  %276 = trunc i128 %275 to i64
  call void @store_limb(i8* %268, i64 %276)
  %277 = getelementptr i8, i8* %__v12_output, i64 16
  %278 = getelementptr i128, i128* %__v14_t, i64 2
  %279 = load i128, i128* %278
  %280 = lshr i128 %279, 26
  %281 = getelementptr i128, i128* %__v14_t, i64 3
  %282 = load i128, i128* %281
  %283 = shl i128 %282, 25
  %284 = or i128 %280, %283
  %285 = trunc i128 %284 to i64
  call void @store_limb(i8* %277, i64 %285)
  %286 = getelementptr i8, i8* %__v12_output, i64 24
  %287 = getelementptr i128, i128* %__v14_t, i64 3
  %288 = load i128, i128* %287
  %289 = lshr i128 %288, 39
  %290 = getelementptr i128, i128* %__v14_t, i64 4
  %291 = load i128, i128* %290
  %292 = shl i128 %291, 12
  %293 = or i128 %289, %292
  %294 = trunc i128 %293 to i64
  call void @store_limb(i8* %286, i64 %294)
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
  call void @fact.memset.i64(i64* %__v4_bp, i8 0, i64 5)
  %__v5_x = alloca i64, i64 5
  call void @fact.memset.i64(i64* %__v5_x, i8 0, i64 5)
  %__v6_z = alloca i64, i64 5
  call void @fact.memset.i64(i64* %__v6_z, i8 0, i64 5)
  %__v7_zmone = alloca i64, i64 5
  call void @fact.memset.i64(i64* %__v7_zmone, i8 0, i64 5)
  %__v8_e = alloca i8, i64 32
  call void @fact.memcpy.i8(i8* %__v8_e, i8* %__v2__secret, i64 32)
  %0 = getelementptr i8, i8* %__v8_e, i64 0
  %1 = getelementptr i8, i8* %__v8_e, i64 0
  %2 = load i8, i8* %1
  %3 = and i8 %2, -8
  store i8 %3, i8* %0
  %4 = getelementptr i8, i8* %__v8_e, i64 31
  %5 = getelementptr i8, i8* %__v8_e, i64 31
  %6 = load i8, i8* %5
  %7 = and i8 %6, 127
  store i8 %7, i8* %4
  %8 = getelementptr i8, i8* %__v8_e, i64 31
  %9 = getelementptr i8, i8* %__v8_e, i64 31
  %10 = load i8, i8* %9
  %11 = or i8 %10, 64
  store i8 %11, i8* %8
  call void @fexpand(i64* %__v4_bp, i8* %__v3_basepoint)
  call void @cmult(i64* %__v5_x, i64* %__v6_z, i8* %__v8_e, i64* %__v4_bp)
  call void @crecip(i64* %__v7_zmone, i64* %__v6_z)
  call void @fmul(i64* %__v6_z, i64* %__v5_x, i64* %__v7_zmone)
  call void @fcontract(i8* %__v1_mypublic, i64* %__v6_z)
  ret i32 0
}

; Function Attrs: alwaysinline
define internal void @fact.memcpy.i8(i8* %dst, i8* %src, i64 %len) #0 {
entry:
  %0 = mul i64 %len, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %dst, i8* %src, i64 %0, i32 1, i1 false)
  ret void
}

attributes #0 = { alwaysinline }
attributes #1 = { argmemonly nounwind }
