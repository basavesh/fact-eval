; ModuleID = 'Module'
source_filename = "Module"

%poly1305_state_internal_t = type { [3 x i64], [3 x i64], [2 x i64], i64, [16 x i8], i8 }

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
define internal void @"__smemzero[32]_secret"(i32* %dst, i64 %len) #0 {
entry:
  call void @fact.smemset.i32(i32* %dst, i8 0, i64 %len)
  ret void
}

; Function Attrs: alwaysinline
define internal void @fact.smemset.i32(i32* %dst, i8 %n, i64 %len) #0 {
entry:
  %0 = bitcast i32* %dst to i8*
  %1 = mul i64 %len, 4
  call void @llvm.memset.p0i8.i64(i8* %0, i8 %n, i64 %1, i32 4, i1 true)
  ret void
}

; Function Attrs: alwaysinline
define internal i32 @"__load[32]_secret_le"(i8* %src) #0 {
entry:
  %0 = bitcast i8* %src to i32*
  %1 = load i32, i32* %0
  ret i32 %1
}

; Function Attrs: alwaysinline
define internal void @"__store[64]_public_le"(i8* %dst, i64 %value) #0 {
entry:
  %0 = bitcast i8* %dst to i64*
  store i64 %value, i64* %0
  ret void
}

; Function Attrs: alwaysinline
define internal i32 @"__load[32]_public_le"(i8* %src) #0 {
entry:
  %0 = bitcast i8* %src to i32*
  %1 = load i32, i32* %0
  ret i32 %1
}

; Function Attrs: alwaysinline
define internal <4 x i32> @"__load[32]<4>_secret_le"(i32* %src) #0 {
entry:
  %0 = bitcast i32* %src to <4 x i32>*
  %1 = load <4 x i32>, <4 x i32>* %0
  ret <4 x i32> %1
}

; Function Attrs: alwaysinline
define internal void @"__store[32]_secret_le"(i8* %dst, i32 %value) #0 {
entry:
  %0 = bitcast i8* %dst to i32*
  store i32 %value, i32* %0
  ret void
}

; Function Attrs: alwaysinline
define internal i64 @"__load[64]_secret_le"(i8* %src) #0 {
entry:
  %0 = bitcast i8* %src to i64*
  %1 = load i64, i64* %0
  ret i64 %1
}

; Function Attrs: alwaysinline
define internal void @"__store[64]_secret_le"(i8* %dst, i64 %value) #0 {
entry:
  %0 = bitcast i8* %dst to i64*
  store i64 %value, i64* %0
  ret void
}

; Function Attrs: alwaysinline
define internal void @__smemzero_poly1305_state_internal_t(%poly1305_state_internal_t* %dst) #0 {
entry:
  %0 = bitcast %poly1305_state_internal_t* %dst to i8*
  call void @fact.smemset.i8(i8* %0, i8 0, i64 ptrtoint (%poly1305_state_internal_t* getelementptr (%poly1305_state_internal_t, %poly1305_state_internal_t* null, i32 1) to i64))
  ret void
}

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
  %"__v437___load[32]_secret_le" = call i32 @"__load[32]_secret_le"(i8* %0)
  %__v246_x1 = alloca i32
  store i32 %"__v437___load[32]_secret_le", i32* %__v246_x1
  %1 = getelementptr i8, i8* %__v241_k, i64 4
  %"__v438___load[32]_secret_le" = call i32 @"__load[32]_secret_le"(i8* %1)
  %__v247_x2 = alloca i32
  store i32 %"__v438___load[32]_secret_le", i32* %__v247_x2
  %2 = getelementptr i8, i8* %__v241_k, i64 8
  %"__v439___load[32]_secret_le" = call i32 @"__load[32]_secret_le"(i8* %2)
  %__v248_x3 = alloca i32
  store i32 %"__v439___load[32]_secret_le", i32* %__v248_x3
  %3 = getelementptr i8, i8* %__v241_k, i64 12
  %"__v440___load[32]_secret_le" = call i32 @"__load[32]_secret_le"(i8* %3)
  %__v249_x4 = alloca i32
  store i32 %"__v440___load[32]_secret_le", i32* %__v249_x4
  %4 = getelementptr i8, i8* %__v241_k, i64 16
  %"__v441___load[32]_secret_le" = call i32 @"__load[32]_secret_le"(i8* %4)
  %__v250_x11 = alloca i32
  store i32 %"__v441___load[32]_secret_le", i32* %__v250_x11
  %5 = getelementptr i8, i8* %__v241_k, i64 20
  %"__v442___load[32]_secret_le" = call i32 @"__load[32]_secret_le"(i8* %5)
  %__v251_x12 = alloca i32
  store i32 %"__v442___load[32]_secret_le", i32* %__v251_x12
  %6 = getelementptr i8, i8* %__v241_k, i64 24
  %"__v443___load[32]_secret_le" = call i32 @"__load[32]_secret_le"(i8* %6)
  %__v252_x13 = alloca i32
  store i32 %"__v443___load[32]_secret_le", i32* %__v252_x13
  %7 = getelementptr i8, i8* %__v241_k, i64 28
  %"__v444___load[32]_secret_le" = call i32 @"__load[32]_secret_le"(i8* %7)
  %__v253_x14 = alloca i32
  store i32 %"__v444___load[32]_secret_le", i32* %__v253_x14
  %8 = getelementptr i8, i8* %__v240_input, i64 0
  %"__v445___load[32]_secret_le" = call i32 @"__load[32]_secret_le"(i8* %8)
  %__v254_x6 = alloca i32
  store i32 %"__v445___load[32]_secret_le", i32* %__v254_x6
  %9 = getelementptr i8, i8* %__v240_input, i64 4
  %"__v446___load[32]_secret_le" = call i32 @"__load[32]_secret_le"(i8* %9)
  %__v255_x7 = alloca i32
  store i32 %"__v446___load[32]_secret_le", i32* %__v255_x7
  %10 = getelementptr i8, i8* %__v240_input, i64 8
  %"__v447___load[32]_secret_le" = call i32 @"__load[32]_secret_le"(i8* %10)
  %__v256_x8 = alloca i32
  store i32 %"__v447___load[32]_secret_le", i32* %__v256_x8
  %11 = getelementptr i8, i8* %__v240_input, i64 12
  %"__v448___load[32]_secret_le" = call i32 @"__load[32]_secret_le"(i8* %11)
  %__v257_x9 = alloca i32
  store i32 %"__v448___load[32]_secret_le", i32* %__v257_x9
  br label %12

; <label>:12:                                     ; preds = %207, %entry
  %__v258_i = phi i32 [ 0, %entry ], [ %208, %207 ]
  %13 = icmp ult i32 %__v258_i, 10
  br i1 %13, label %14, label %209

; <label>:14:                                     ; preds = %12
  %15 = load i32, i32* %__v249_x4
  %16 = load i32, i32* %__v242_x0
  %17 = load i32, i32* %__v251_x12
  %18 = add i32 %16, %17
  %19 = call i32 @fact.rotl.i32(i32 %18, i32 7)
  %20 = xor i32 %15, %19
  store i32 %20, i32* %__v249_x4
  %21 = load i32, i32* %__v256_x8
  %22 = load i32, i32* %__v249_x4
  %23 = load i32, i32* %__v242_x0
  %24 = add i32 %22, %23
  %25 = call i32 @fact.rotl.i32(i32 %24, i32 9)
  %26 = xor i32 %21, %25
  store i32 %26, i32* %__v256_x8
  %27 = load i32, i32* %__v251_x12
  %28 = load i32, i32* %__v256_x8
  %29 = load i32, i32* %__v249_x4
  %30 = add i32 %28, %29
  %31 = call i32 @fact.rotl.i32(i32 %30, i32 13)
  %32 = xor i32 %27, %31
  store i32 %32, i32* %__v251_x12
  %33 = load i32, i32* %__v242_x0
  %34 = load i32, i32* %__v251_x12
  %35 = load i32, i32* %__v256_x8
  %36 = add i32 %34, %35
  %37 = call i32 @fact.rotl.i32(i32 %36, i32 18)
  %38 = xor i32 %33, %37
  store i32 %38, i32* %__v242_x0
  %39 = load i32, i32* %__v257_x9
  %40 = load i32, i32* %__v243_x5
  %41 = load i32, i32* %__v246_x1
  %42 = add i32 %40, %41
  %43 = call i32 @fact.rotl.i32(i32 %42, i32 7)
  %44 = xor i32 %39, %43
  store i32 %44, i32* %__v257_x9
  %45 = load i32, i32* %__v252_x13
  %46 = load i32, i32* %__v257_x9
  %47 = load i32, i32* %__v243_x5
  %48 = add i32 %46, %47
  %49 = call i32 @fact.rotl.i32(i32 %48, i32 9)
  %50 = xor i32 %45, %49
  store i32 %50, i32* %__v252_x13
  %51 = load i32, i32* %__v246_x1
  %52 = load i32, i32* %__v252_x13
  %53 = load i32, i32* %__v257_x9
  %54 = add i32 %52, %53
  %55 = call i32 @fact.rotl.i32(i32 %54, i32 13)
  %56 = xor i32 %51, %55
  store i32 %56, i32* %__v246_x1
  %57 = load i32, i32* %__v243_x5
  %58 = load i32, i32* %__v246_x1
  %59 = load i32, i32* %__v252_x13
  %60 = add i32 %58, %59
  %61 = call i32 @fact.rotl.i32(i32 %60, i32 18)
  %62 = xor i32 %57, %61
  store i32 %62, i32* %__v243_x5
  %63 = load i32, i32* %__v253_x14
  %64 = load i32, i32* %__v244_x10
  %65 = load i32, i32* %__v254_x6
  %66 = add i32 %64, %65
  %67 = call i32 @fact.rotl.i32(i32 %66, i32 7)
  %68 = xor i32 %63, %67
  store i32 %68, i32* %__v253_x14
  %69 = load i32, i32* %__v247_x2
  %70 = load i32, i32* %__v253_x14
  %71 = load i32, i32* %__v244_x10
  %72 = add i32 %70, %71
  %73 = call i32 @fact.rotl.i32(i32 %72, i32 9)
  %74 = xor i32 %69, %73
  store i32 %74, i32* %__v247_x2
  %75 = load i32, i32* %__v254_x6
  %76 = load i32, i32* %__v247_x2
  %77 = load i32, i32* %__v253_x14
  %78 = add i32 %76, %77
  %79 = call i32 @fact.rotl.i32(i32 %78, i32 13)
  %80 = xor i32 %75, %79
  store i32 %80, i32* %__v254_x6
  %81 = load i32, i32* %__v244_x10
  %82 = load i32, i32* %__v254_x6
  %83 = load i32, i32* %__v247_x2
  %84 = add i32 %82, %83
  %85 = call i32 @fact.rotl.i32(i32 %84, i32 18)
  %86 = xor i32 %81, %85
  store i32 %86, i32* %__v244_x10
  %87 = load i32, i32* %__v248_x3
  %88 = load i32, i32* %__v245_x15
  %89 = load i32, i32* %__v250_x11
  %90 = add i32 %88, %89
  %91 = call i32 @fact.rotl.i32(i32 %90, i32 7)
  %92 = xor i32 %87, %91
  store i32 %92, i32* %__v248_x3
  %93 = load i32, i32* %__v255_x7
  %94 = load i32, i32* %__v248_x3
  %95 = load i32, i32* %__v245_x15
  %96 = add i32 %94, %95
  %97 = call i32 @fact.rotl.i32(i32 %96, i32 9)
  %98 = xor i32 %93, %97
  store i32 %98, i32* %__v255_x7
  %99 = load i32, i32* %__v250_x11
  %100 = load i32, i32* %__v255_x7
  %101 = load i32, i32* %__v248_x3
  %102 = add i32 %100, %101
  %103 = call i32 @fact.rotl.i32(i32 %102, i32 13)
  %104 = xor i32 %99, %103
  store i32 %104, i32* %__v250_x11
  %105 = load i32, i32* %__v245_x15
  %106 = load i32, i32* %__v250_x11
  %107 = load i32, i32* %__v255_x7
  %108 = add i32 %106, %107
  %109 = call i32 @fact.rotl.i32(i32 %108, i32 18)
  %110 = xor i32 %105, %109
  store i32 %110, i32* %__v245_x15
  %111 = load i32, i32* %__v246_x1
  %112 = load i32, i32* %__v242_x0
  %113 = load i32, i32* %__v248_x3
  %114 = add i32 %112, %113
  %115 = call i32 @fact.rotl.i32(i32 %114, i32 7)
  %116 = xor i32 %111, %115
  store i32 %116, i32* %__v246_x1
  %117 = load i32, i32* %__v247_x2
  %118 = load i32, i32* %__v246_x1
  %119 = load i32, i32* %__v242_x0
  %120 = add i32 %118, %119
  %121 = call i32 @fact.rotl.i32(i32 %120, i32 9)
  %122 = xor i32 %117, %121
  store i32 %122, i32* %__v247_x2
  %123 = load i32, i32* %__v248_x3
  %124 = load i32, i32* %__v247_x2
  %125 = load i32, i32* %__v246_x1
  %126 = add i32 %124, %125
  %127 = call i32 @fact.rotl.i32(i32 %126, i32 13)
  %128 = xor i32 %123, %127
  store i32 %128, i32* %__v248_x3
  %129 = load i32, i32* %__v242_x0
  %130 = load i32, i32* %__v248_x3
  %131 = load i32, i32* %__v247_x2
  %132 = add i32 %130, %131
  %133 = call i32 @fact.rotl.i32(i32 %132, i32 18)
  %134 = xor i32 %129, %133
  store i32 %134, i32* %__v242_x0
  %135 = load i32, i32* %__v254_x6
  %136 = load i32, i32* %__v243_x5
  %137 = load i32, i32* %__v249_x4
  %138 = add i32 %136, %137
  %139 = call i32 @fact.rotl.i32(i32 %138, i32 7)
  %140 = xor i32 %135, %139
  store i32 %140, i32* %__v254_x6
  %141 = load i32, i32* %__v255_x7
  %142 = load i32, i32* %__v254_x6
  %143 = load i32, i32* %__v243_x5
  %144 = add i32 %142, %143
  %145 = call i32 @fact.rotl.i32(i32 %144, i32 9)
  %146 = xor i32 %141, %145
  store i32 %146, i32* %__v255_x7
  %147 = load i32, i32* %__v249_x4
  %148 = load i32, i32* %__v255_x7
  %149 = load i32, i32* %__v254_x6
  %150 = add i32 %148, %149
  %151 = call i32 @fact.rotl.i32(i32 %150, i32 13)
  %152 = xor i32 %147, %151
  store i32 %152, i32* %__v249_x4
  %153 = load i32, i32* %__v243_x5
  %154 = load i32, i32* %__v249_x4
  %155 = load i32, i32* %__v255_x7
  %156 = add i32 %154, %155
  %157 = call i32 @fact.rotl.i32(i32 %156, i32 18)
  %158 = xor i32 %153, %157
  store i32 %158, i32* %__v243_x5
  %159 = load i32, i32* %__v250_x11
  %160 = load i32, i32* %__v244_x10
  %161 = load i32, i32* %__v257_x9
  %162 = add i32 %160, %161
  %163 = call i32 @fact.rotl.i32(i32 %162, i32 7)
  %164 = xor i32 %159, %163
  store i32 %164, i32* %__v250_x11
  %165 = load i32, i32* %__v256_x8
  %166 = load i32, i32* %__v250_x11
  %167 = load i32, i32* %__v244_x10
  %168 = add i32 %166, %167
  %169 = call i32 @fact.rotl.i32(i32 %168, i32 9)
  %170 = xor i32 %165, %169
  store i32 %170, i32* %__v256_x8
  %171 = load i32, i32* %__v257_x9
  %172 = load i32, i32* %__v256_x8
  %173 = load i32, i32* %__v250_x11
  %174 = add i32 %172, %173
  %175 = call i32 @fact.rotl.i32(i32 %174, i32 13)
  %176 = xor i32 %171, %175
  store i32 %176, i32* %__v257_x9
  %177 = load i32, i32* %__v244_x10
  %178 = load i32, i32* %__v257_x9
  %179 = load i32, i32* %__v256_x8
  %180 = add i32 %178, %179
  %181 = call i32 @fact.rotl.i32(i32 %180, i32 18)
  %182 = xor i32 %177, %181
  store i32 %182, i32* %__v244_x10
  %183 = load i32, i32* %__v251_x12
  %184 = load i32, i32* %__v245_x15
  %185 = load i32, i32* %__v253_x14
  %186 = add i32 %184, %185
  %187 = call i32 @fact.rotl.i32(i32 %186, i32 7)
  %188 = xor i32 %183, %187
  store i32 %188, i32* %__v251_x12
  %189 = load i32, i32* %__v252_x13
  %190 = load i32, i32* %__v251_x12
  %191 = load i32, i32* %__v245_x15
  %192 = add i32 %190, %191
  %193 = call i32 @fact.rotl.i32(i32 %192, i32 9)
  %194 = xor i32 %189, %193
  store i32 %194, i32* %__v252_x13
  %195 = load i32, i32* %__v253_x14
  %196 = load i32, i32* %__v252_x13
  %197 = load i32, i32* %__v251_x12
  %198 = add i32 %196, %197
  %199 = call i32 @fact.rotl.i32(i32 %198, i32 13)
  %200 = xor i32 %195, %199
  store i32 %200, i32* %__v253_x14
  %201 = load i32, i32* %__v245_x15
  %202 = load i32, i32* %__v253_x14
  %203 = load i32, i32* %__v252_x13
  %204 = add i32 %202, %203
  %205 = call i32 @fact.rotl.i32(i32 %204, i32 18)
  %206 = xor i32 %201, %205
  store i32 %206, i32* %__v245_x15
  br label %207

; <label>:207:                                    ; preds = %14
  %208 = add i32 %__v258_i, 1
  br label %12

; <label>:209:                                    ; preds = %12
  %210 = getelementptr i8, i8* %__v239_out, i64 0
  %211 = load i32, i32* %__v242_x0
  call void @"__store[32]_secret_le"(i8* %210, i32 %211)
  %212 = getelementptr i8, i8* %__v239_out, i64 4
  %213 = load i32, i32* %__v243_x5
  call void @"__store[32]_secret_le"(i8* %212, i32 %213)
  %214 = getelementptr i8, i8* %__v239_out, i64 8
  %215 = load i32, i32* %__v244_x10
  call void @"__store[32]_secret_le"(i8* %214, i32 %215)
  %216 = getelementptr i8, i8* %__v239_out, i64 12
  %217 = load i32, i32* %__v245_x15
  call void @"__store[32]_secret_le"(i8* %216, i32 %217)
  %218 = getelementptr i8, i8* %__v239_out, i64 16
  %219 = load i32, i32* %__v254_x6
  call void @"__store[32]_secret_le"(i8* %218, i32 %219)
  %220 = getelementptr i8, i8* %__v239_out, i64 20
  %221 = load i32, i32* %__v255_x7
  call void @"__store[32]_secret_le"(i8* %220, i32 %221)
  %222 = getelementptr i8, i8* %__v239_out, i64 24
  %223 = load i32, i32* %__v256_x8
  call void @"__store[32]_secret_le"(i8* %222, i32 %223)
  %224 = getelementptr i8, i8* %__v239_out, i64 28
  %225 = load i32, i32* %__v257_x9
  call void @"__store[32]_secret_le"(i8* %224, i32 %225)
  ret void
}

; Function Attrs: alwaysinline
define internal i32 @fact.rotl.i32(i32 %x, i32 %n) #0 {
entry:
  %0 = shl i32 %x, %n
  %1 = sub i32 32, %n
  %2 = lshr i32 %x, %1
  %3 = or i32 %0, %2
  ret i32 %3
}

define internal void @_poly1305_blocks(%poly1305_state_internal_t* %__v218_state, i8* %__v219_m, i64 %__v331___v219_m_len) {
entry:
  %__rctx = alloca i1
  store i1 true, i1* %__rctx
  %0 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v218_state, i32 0, i32 5
  %1 = load i8, i8* %0
  %2 = icmp ne i8 %1, 0
  %__v222_hibit = call i64 @fact.select.sel.i64(i1 %2, i64 0, i64 1099511627776)
  %3 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v218_state, i32 0, i32 0
  %4 = bitcast [3 x i64]* %3 to i64*
  %5 = getelementptr i64, i64* %4, i64 0
  %__v223_r0 = load i64, i64* %5
  %6 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v218_state, i32 0, i32 0
  %7 = bitcast [3 x i64]* %6 to i64*
  %8 = getelementptr i64, i64* %7, i64 1
  %__v224_r1 = load i64, i64* %8
  %9 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v218_state, i32 0, i32 0
  %10 = bitcast [3 x i64]* %9 to i64*
  %11 = getelementptr i64, i64* %10, i64 2
  %__v225_r2 = load i64, i64* %11
  %12 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v218_state, i32 0, i32 1
  %13 = bitcast [3 x i64]* %12 to i64*
  %14 = getelementptr i64, i64* %13, i64 0
  %15 = load i64, i64* %14
  %__v226_h0 = alloca i64
  store i64 %15, i64* %__v226_h0
  %16 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v218_state, i32 0, i32 1
  %17 = bitcast [3 x i64]* %16 to i64*
  %18 = getelementptr i64, i64* %17, i64 1
  %19 = load i64, i64* %18
  %__v227_h1 = alloca i64
  store i64 %19, i64* %__v227_h1
  %20 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v218_state, i32 0, i32 1
  %21 = bitcast [3 x i64]* %20 to i64*
  %22 = getelementptr i64, i64* %21, i64 2
  %23 = load i64, i64* %22
  %__v228_h2 = alloca i64
  store i64 %23, i64* %__v228_h2
  %__v229_s1 = mul i64 %__v224_r1, 20
  %__v230_s2 = mul i64 %__v225_r2, 20
  %__v231_mloops = udiv i64 %__v331___v219_m_len, 16
  br label %24

; <label>:24:                                     ; preds = %124, %entry
  %__v232_bindex = phi i64 [ 0, %entry ], [ %125, %124 ]
  %25 = icmp ult i64 %__v232_bindex, %__v231_mloops
  br i1 %25, label %26, label %126

; <label>:26:                                     ; preds = %24
  %__v433_lexpr = mul i64 %__v232_bindex, 16
  %__v434_lexpr = mul i64 %__v232_bindex, 16
  %27 = getelementptr i8, i8* %__v219_m, i64 %__v434_lexpr
  %__v233_t0 = call i64 @"__load[64]_secret_le"(i8* %27)
  %28 = mul i64 %__v232_bindex, 16
  %__v435_lexpr = add i64 %28, 8
  %29 = mul i64 %__v232_bindex, 16
  %__v436_lexpr = add i64 %29, 8
  %30 = getelementptr i8, i8* %__v219_m, i64 %__v436_lexpr
  %__v234_t1 = call i64 @"__load[64]_secret_le"(i8* %30)
  %31 = load i64, i64* %__v226_h0
  %32 = and i64 %__v233_t0, 17592186044415
  %33 = add i64 %31, %32
  store i64 %33, i64* %__v226_h0
  %34 = load i64, i64* %__v227_h1
  %35 = lshr i64 %__v233_t0, 44
  %36 = shl i64 %__v234_t1, 20
  %37 = or i64 %35, %36
  %38 = and i64 %37, 17592186044415
  %39 = add i64 %34, %38
  store i64 %39, i64* %__v227_h1
  %40 = load i64, i64* %__v228_h2
  %41 = lshr i64 %__v234_t1, 24
  %42 = and i64 %41, 4398046511103
  %43 = or i64 %42, %__v222_hibit
  %44 = add i64 %40, %43
  store i64 %44, i64* %__v228_h2
  %45 = load i64, i64* %__v226_h0
  %46 = zext i64 %45 to i128
  %47 = zext i64 %__v223_r0 to i128
  %48 = mul i128 %46, %47
  %49 = load i64, i64* %__v227_h1
  %50 = zext i64 %49 to i128
  %51 = zext i64 %__v230_s2 to i128
  %52 = mul i128 %50, %51
  %53 = add i128 %48, %52
  %54 = load i64, i64* %__v228_h2
  %55 = zext i64 %54 to i128
  %56 = zext i64 %__v229_s1 to i128
  %57 = mul i128 %55, %56
  %58 = add i128 %53, %57
  %__v235_d0 = alloca i128
  store i128 %58, i128* %__v235_d0
  %59 = load i64, i64* %__v226_h0
  %60 = zext i64 %59 to i128
  %61 = zext i64 %__v224_r1 to i128
  %62 = mul i128 %60, %61
  %63 = load i64, i64* %__v227_h1
  %64 = zext i64 %63 to i128
  %65 = zext i64 %__v223_r0 to i128
  %66 = mul i128 %64, %65
  %67 = add i128 %62, %66
  %68 = load i64, i64* %__v228_h2
  %69 = zext i64 %68 to i128
  %70 = zext i64 %__v230_s2 to i128
  %71 = mul i128 %69, %70
  %72 = add i128 %67, %71
  %__v236_d1 = alloca i128
  store i128 %72, i128* %__v236_d1
  %73 = load i64, i64* %__v226_h0
  %74 = zext i64 %73 to i128
  %75 = zext i64 %__v225_r2 to i128
  %76 = mul i128 %74, %75
  %77 = load i64, i64* %__v227_h1
  %78 = zext i64 %77 to i128
  %79 = zext i64 %__v224_r1 to i128
  %80 = mul i128 %78, %79
  %81 = add i128 %76, %80
  %82 = load i64, i64* %__v228_h2
  %83 = zext i64 %82 to i128
  %84 = zext i64 %__v223_r0 to i128
  %85 = mul i128 %83, %84
  %86 = add i128 %81, %85
  %__v237_d2 = alloca i128
  store i128 %86, i128* %__v237_d2
  %87 = load i128, i128* %__v235_d0
  %88 = lshr i128 %87, 44
  %89 = trunc i128 %88 to i64
  %__v238_c = alloca i64
  store i64 %89, i64* %__v238_c
  %90 = load i128, i128* %__v235_d0
  %91 = trunc i128 %90 to i64
  %92 = and i64 %91, 17592186044415
  store i64 %92, i64* %__v226_h0
  %93 = load i128, i128* %__v236_d1
  %94 = load i64, i64* %__v238_c
  %95 = zext i64 %94 to i128
  %96 = add i128 %93, %95
  store i128 %96, i128* %__v236_d1
  %97 = load i128, i128* %__v236_d1
  %98 = lshr i128 %97, 44
  %99 = trunc i128 %98 to i64
  store i64 %99, i64* %__v238_c
  %100 = load i128, i128* %__v236_d1
  %101 = trunc i128 %100 to i64
  %102 = and i64 %101, 17592186044415
  store i64 %102, i64* %__v227_h1
  %103 = load i128, i128* %__v237_d2
  %104 = load i64, i64* %__v238_c
  %105 = zext i64 %104 to i128
  %106 = add i128 %103, %105
  store i128 %106, i128* %__v237_d2
  %107 = load i128, i128* %__v237_d2
  %108 = lshr i128 %107, 42
  %109 = trunc i128 %108 to i64
  store i64 %109, i64* %__v238_c
  %110 = load i128, i128* %__v237_d2
  %111 = trunc i128 %110 to i64
  %112 = and i64 %111, 4398046511103
  store i64 %112, i64* %__v228_h2
  %113 = load i64, i64* %__v226_h0
  %114 = load i64, i64* %__v238_c
  %115 = mul i64 %114, 5
  %116 = add i64 %113, %115
  store i64 %116, i64* %__v226_h0
  %117 = load i64, i64* %__v226_h0
  %118 = lshr i64 %117, 44
  store i64 %118, i64* %__v238_c
  %119 = load i64, i64* %__v226_h0
  %120 = and i64 %119, 17592186044415
  store i64 %120, i64* %__v226_h0
  %121 = load i64, i64* %__v227_h1
  %122 = load i64, i64* %__v238_c
  %123 = add i64 %121, %122
  store i64 %123, i64* %__v227_h1
  br label %124

; <label>:124:                                    ; preds = %26
  %125 = add i64 %__v232_bindex, 1
  br label %24

; <label>:126:                                    ; preds = %24
  %127 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v218_state, i32 0, i32 1
  %128 = bitcast [3 x i64]* %127 to i64*
  %129 = getelementptr i64, i64* %128, i64 0
  %130 = load i64, i64* %__v226_h0
  store i64 %130, i64* %129
  %131 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v218_state, i32 0, i32 1
  %132 = bitcast [3 x i64]* %131 to i64*
  %133 = getelementptr i64, i64* %132, i64 1
  %134 = load i64, i64* %__v227_h1
  store i64 %134, i64* %133
  %135 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v218_state, i32 0, i32 1
  %136 = bitcast [3 x i64]* %135 to i64*
  %137 = getelementptr i64, i64* %136, i64 2
  %138 = load i64, i64* %__v228_h2
  store i64 %138, i64* %137
  ret void
}

; Function Attrs: alwaysinline
define internal i64 @fact.select.sel.i64(i1 %cond, i64 %x, i64 %y) #0 {
entry:
  %0 = select i1 %cond, i64 %x, i64 %y
  ret i64 %0
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
  br label %159

; <label>:9:                                      ; preds = %entry
  br label %10

; <label>:10:                                     ; preds = %9, %167
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
  call void @"__store[64]_secret_le"(i8* %155, i64 %156)
  %157 = getelementptr i8, i8* %__v204_mac, i64 8
  %158 = load i64, i64* %__v210_h1
  call void @"__store[64]_secret_le"(i8* %157, i64 %158)
  call void @__smemzero_poly1305_state_internal_t(%poly1305_state_internal_t* %__v203_state)
  ret void

; <label>:159:                                    ; preds = %165, %3
  %__v206_i = phi i64 [ %8, %3 ], [ %166, %165 ]
  %160 = icmp ult i64 %__v206_i, 16
  br i1 %160, label %161, label %167

; <label>:161:                                    ; preds = %159
  %162 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v203_state, i32 0, i32 4
  %163 = bitcast [16 x i8]* %162 to i8*
  %164 = getelementptr i8, i8* %163, i64 %__v206_i
  store i8 0, i8* %164
  br label %165

; <label>:165:                                    ; preds = %161
  %166 = add i64 %__v206_i, 1
  br label %159

; <label>:167:                                    ; preds = %159
  %168 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v203_state, i32 0, i32 5
  store i8 1, i8* %168
  %169 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v203_state, i32 0, i32 4
  %170 = bitcast [16 x i8]* %169 to i8*
  call void @_poly1305_blocks(%poly1305_state_internal_t* %__v203_state, i8* %170, i64 16)
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

; <label>:10:                                     ; preds = %9, %44
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

; <label>:60:                                     ; preds = %59, %72
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
  %__v188_t0 = call i64 @"__load[64]_secret_le"(i8* %0)
  %1 = getelementptr i8, i8* %__v187_key, i64 8
  %__v189_t1 = call i64 @"__load[64]_secret_le"(i8* %1)
  %2 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v186_state, i32 0, i32 0
  %3 = bitcast [3 x i64]* %2 to i64*
  %4 = getelementptr i64, i64* %3, i64 0
  %5 = and i64 %__v188_t0, 17575274610687
  store i64 %5, i64* %4
  %6 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v186_state, i32 0, i32 0
  %7 = bitcast [3 x i64]* %6 to i64*
  %8 = getelementptr i64, i64* %7, i64 1
  %9 = lshr i64 %__v188_t0, 44
  %10 = shl i64 %__v189_t1, 20
  %11 = or i64 %9, %10
  %12 = and i64 %11, 17592181915647
  store i64 %12, i64* %8
  %13 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v186_state, i32 0, i32 0
  %14 = bitcast [3 x i64]* %13 to i64*
  %15 = getelementptr i64, i64* %14, i64 2
  %16 = lshr i64 %__v189_t1, 24
  %17 = and i64 %16, 68719475727
  store i64 %17, i64* %15
  %18 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v186_state, i32 0, i32 1
  %19 = bitcast [3 x i64]* %18 to i64*
  %20 = getelementptr i64, i64* %19, i64 0
  store i64 0, i64* %20
  %21 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v186_state, i32 0, i32 1
  %22 = bitcast [3 x i64]* %21 to i64*
  %23 = getelementptr i64, i64* %22, i64 1
  store i64 0, i64* %23
  %24 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v186_state, i32 0, i32 1
  %25 = bitcast [3 x i64]* %24 to i64*
  %26 = getelementptr i64, i64* %25, i64 2
  store i64 0, i64* %26
  %27 = getelementptr i8, i8* %__v187_key, i64 16
  %__v302_load_le = call i64 @"__load[64]_secret_le"(i8* %27)
  %28 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v186_state, i32 0, i32 2
  %29 = bitcast [2 x i64]* %28 to i64*
  %30 = getelementptr i64, i64* %29, i64 0
  store i64 %__v302_load_le, i64* %30
  %31 = getelementptr i8, i8* %__v187_key, i64 24
  %__v303_load_le = call i64 @"__load[64]_secret_le"(i8* %31)
  %32 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v186_state, i32 0, i32 2
  %33 = bitcast [2 x i64]* %32 to i64*
  %34 = getelementptr i64, i64* %33, i64 1
  store i64 %__v303_load_le, i64* %34
  %35 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v186_state, i32 0, i32 3
  store i64 0, i64* %35
  %36 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v186_state, i32 0, i32 5
  store i8 0, i8* %36
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
  call void @fact.memset.i64(i64* %0, i8 0, i64 3)
  %1 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v185_state, i32 0, i32 0
  %2 = bitcast [3 x i64]* %1 to i64*
  call void @fact.memcpy.i64(i64* %2, i64* %0, i64 3)
  %3 = alloca i64, i64 3
  call void @fact.memset.i64(i64* %3, i8 0, i64 3)
  %4 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v185_state, i32 0, i32 1
  %5 = bitcast [3 x i64]* %4 to i64*
  call void @fact.memcpy.i64(i64* %5, i64* %3, i64 3)
  %6 = alloca i64, i64 2
  call void @fact.memset.i64(i64* %6, i8 0, i64 2)
  %7 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v185_state, i32 0, i32 2
  %8 = bitcast [2 x i64]* %7 to i64*
  call void @fact.memcpy.i64(i64* %8, i64* %6, i64 2)
  %9 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v185_state, i32 0, i32 3
  store i64 0, i64* %9
  %10 = alloca i8, i64 16
  call void @fact.memset.i8(i8* %10, i8 0, i64 16)
  %11 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v185_state, i32 0, i32 4
  %12 = bitcast [16 x i8]* %11 to i8*
  call void @fact.memcpy.i8(i8* %12, i8* %10, i64 16)
  %13 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v185_state, i32 0, i32 5
  store i8 0, i8* %13
  call void @_poly1305_init(%poly1305_state_internal_t* %__v185_state, i8* %__v184_key)
  call void @_poly1305_update(%poly1305_state_internal_t* %__v185_state, i8* %__v183_m, i64 %__v329___v183_m_len)
  call void @_poly1305_finish(%poly1305_state_internal_t* %__v185_state, i8* %__v182_out)
  ret i32 0
}

; Function Attrs: alwaysinline
define internal void @fact.memset.i64(i64* %dst, i8 %n, i64 %len) #0 {
entry:
  %0 = bitcast i64* %dst to i8*
  %1 = mul i64 %len, 8
  call void @llvm.memset.p0i8.i64(i8* %0, i8 %n, i64 %1, i32 8, i1 false)
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
define internal void @fact.memcpy.i8(i8* %dst, i8* %src, i64 %len) #0 {
entry:
  %0 = mul i64 %len, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %dst, i8* %src, i64 %0, i32 1, i1 false)
  ret void
}

define internal i1 @_crypto_verify_16(i8* %__v179_x, i8* %__v180_y) {
entry:
  %__rval = alloca i1
  store i1 false, i1* %__rval
  %__rctx = alloca i1
  store i1 true, i1* %__rctx
  br label %0

; <label>:0:                                      ; preds = %15, %entry
  %__v181_i = phi i32 [ 0, %entry ], [ %16, %15 ]
  %1 = icmp ult i32 %__v181_i, 16
  br i1 %1, label %2, label %17

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
  %10 = call i1 @fact.cmov.asm.i1(i1 %8, i1 false, i1 %9)
  store i1 %10, i1* %__rval
  %11 = and i1 true, %__m6
  %12 = and i1 %11, %__m5
  %13 = load i1, i1* %__rctx
  %14 = call i1 @fact.cmov.asm.i1(i1 %12, i1 false, i1 %13)
  store i1 %14, i1* %__rctx
  %__m7 = xor i1 %__m6, true
  %__m8 = xor i1 %__m5, true
  br label %15

; <label>:15:                                     ; preds = %2
  %16 = add i32 %__v181_i, 1
  br label %0

; <label>:17:                                     ; preds = %0
  %__m3 = load i1, i1* %__rctx
  %18 = and i1 true, %__m3
  %19 = load i1, i1* %__rval
  %20 = call i1 @fact.cmov.asm.i1(i1 %18, i1 true, i1 %19)
  store i1 %20, i1* %__rval
  %21 = and i1 true, %__m3
  %22 = load i1, i1* %__rctx
  %23 = call i1 @fact.cmov.asm.i1(i1 %21, i1 false, i1 %22)
  store i1 %23, i1* %__rctx
  %__m4 = xor i1 %__m3, true
  %24 = load i1, i1* %__rval
  ret i1 %24
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

define internal i1 @_crypto_onetimeauth_poly1305_verify(i8* %__v175_h, i8* %__v176_input, i64 %__v328___v176_input_len, i8* %__v177_k) {
entry:
  %__rval = alloca i1
  store i1 false, i1* %__rval
  %__rctx = alloca i1
  store i1 true, i1* %__rctx
  %__v178_correct = alloca i8, i64 16
  call void @fact.memset.i8(i8* %__v178_correct, i8 0, i64 16)
  %0 = call i32 @_crypto_onetimeauth_poly1305(i8* %__v178_correct, i8* %__v176_input, i64 %__v328___v176_input_len, i8* %__v177_k)
  %__v301__crypto_verify_16 = call i1 @_crypto_verify_16(i8* %__v175_h, i8* %__v178_correct)
  ret i1 %__v301__crypto_verify_16
}

; Function Attrs: alwaysinline
define internal void @_u0(i32* %__v131_x, i8* %__v132_m, i64 %__v134_bytes, i8* %__v133_c, i64 %__v327___v133_c_len) #0 {
entry:
  %__rctx = alloca i1
  store i1 true, i1* %__rctx
  %0 = icmp ugt i64 %__v134_bytes, 0
  br i1 %0, label %1, label %7

; <label>:1:                                      ; preds = %entry
  %2 = getelementptr i32, i32* %__v131_x, i64 0
  %"__v423___load[32]<4>_secret_le" = call <4 x i32> @"__load[32]<4>_secret_le"(i32* %2)
  %__v135_diag0 = alloca <4 x i32>
  store <4 x i32> %"__v423___load[32]<4>_secret_le", <4 x i32>* %__v135_diag0
  %3 = getelementptr i32, i32* %__v131_x, i64 4
  %"__v424___load[32]<4>_secret_le" = call <4 x i32> @"__load[32]<4>_secret_le"(i32* %3)
  %__v136_diag1 = alloca <4 x i32>
  store <4 x i32> %"__v424___load[32]<4>_secret_le", <4 x i32>* %__v136_diag1
  %4 = getelementptr i32, i32* %__v131_x, i64 8
  %"__v425___load[32]<4>_secret_le" = call <4 x i32> @"__load[32]<4>_secret_le"(i32* %4)
  %__v137_diag2 = alloca <4 x i32>
  store <4 x i32> %"__v425___load[32]<4>_secret_le", <4 x i32>* %__v137_diag2
  %5 = getelementptr i32, i32* %__v131_x, i64 12
  %"__v426___load[32]<4>_secret_le" = call <4 x i32> @"__load[32]<4>_secret_le"(i32* %5)
  %__v138_diag3 = alloca <4 x i32>
  store <4 x i32> %"__v426___load[32]<4>_secret_le", <4 x i32>* %__v138_diag3
  %6 = load <4 x i32>, <4 x i32>* %__v136_diag1
  %__v139_a0 = alloca <4 x i32>
  store <4 x i32> %6, <4 x i32>* %__v139_a0
  br label %9

; <label>:7:                                      ; preds = %entry
  br label %8

; <label>:8:                                      ; preds = %7, %378
  ret void

; <label>:9:                                      ; preds = %276, %1
  %__v140__i = phi i32 [ 0, %1 ], [ %277, %276 ]
  %10 = icmp ult i32 %__v140__i, 5
  br i1 %10, label %11, label %278

; <label>:11:                                     ; preds = %9
  %__v141_i = mul i32 %__v140__i, 4
  %12 = load <4 x i32>, <4 x i32>* %__v139_a0
  %13 = load <4 x i32>, <4 x i32>* %__v135_diag0
  %14 = add <4 x i32> %12, %13
  store <4 x i32> %14, <4 x i32>* %__v139_a0
  %15 = load <4 x i32>, <4 x i32>* %__v135_diag0
  %__v142_a1 = alloca <4 x i32>
  store <4 x i32> %15, <4 x i32>* %__v142_a1
  %16 = load <4 x i32>, <4 x i32>* %__v139_a0
  %__v143_b0 = alloca <4 x i32>
  store <4 x i32> %16, <4 x i32>* %__v143_b0
  %17 = load <4 x i32>, <4 x i32>* %__v139_a0
  %18 = shl <4 x i32> %17, <i32 7, i32 7, i32 7, i32 7>
  store <4 x i32> %18, <4 x i32>* %__v139_a0
  %19 = load <4 x i32>, <4 x i32>* %__v143_b0
  %20 = lshr <4 x i32> %19, <i32 25, i32 25, i32 25, i32 25>
  store <4 x i32> %20, <4 x i32>* %__v143_b0
  %21 = load <4 x i32>, <4 x i32>* %__v138_diag3
  %22 = load <4 x i32>, <4 x i32>* %__v139_a0
  %23 = xor <4 x i32> %21, %22
  store <4 x i32> %23, <4 x i32>* %__v138_diag3
  %24 = load <4 x i32>, <4 x i32>* %__v138_diag3
  %25 = load <4 x i32>, <4 x i32>* %__v143_b0
  %26 = xor <4 x i32> %24, %25
  store <4 x i32> %26, <4 x i32>* %__v138_diag3
  %27 = load <4 x i32>, <4 x i32>* %__v142_a1
  %28 = load <4 x i32>, <4 x i32>* %__v138_diag3
  %29 = add <4 x i32> %27, %28
  store <4 x i32> %29, <4 x i32>* %__v142_a1
  %30 = load <4 x i32>, <4 x i32>* %__v138_diag3
  %__v144_a2 = alloca <4 x i32>
  store <4 x i32> %30, <4 x i32>* %__v144_a2
  %31 = load <4 x i32>, <4 x i32>* %__v142_a1
  %__v145_b1 = alloca <4 x i32>
  store <4 x i32> %31, <4 x i32>* %__v145_b1
  %32 = load <4 x i32>, <4 x i32>* %__v142_a1
  %33 = shl <4 x i32> %32, <i32 9, i32 9, i32 9, i32 9>
  store <4 x i32> %33, <4 x i32>* %__v142_a1
  %34 = load <4 x i32>, <4 x i32>* %__v145_b1
  %35 = lshr <4 x i32> %34, <i32 23, i32 23, i32 23, i32 23>
  store <4 x i32> %35, <4 x i32>* %__v145_b1
  %36 = load <4 x i32>, <4 x i32>* %__v137_diag2
  %37 = load <4 x i32>, <4 x i32>* %__v142_a1
  %38 = xor <4 x i32> %36, %37
  store <4 x i32> %38, <4 x i32>* %__v137_diag2
  %39 = load <4 x i32>, <4 x i32>* %__v138_diag3
  %40 = shufflevector <4 x i32> %39, <4 x i32> undef, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  store <4 x i32> %40, <4 x i32>* %__v138_diag3
  %41 = load <4 x i32>, <4 x i32>* %__v137_diag2
  %42 = load <4 x i32>, <4 x i32>* %__v145_b1
  %43 = xor <4 x i32> %41, %42
  store <4 x i32> %43, <4 x i32>* %__v137_diag2
  %44 = load <4 x i32>, <4 x i32>* %__v144_a2
  %45 = load <4 x i32>, <4 x i32>* %__v137_diag2
  %46 = add <4 x i32> %44, %45
  store <4 x i32> %46, <4 x i32>* %__v144_a2
  %47 = load <4 x i32>, <4 x i32>* %__v137_diag2
  %__v146_a3 = alloca <4 x i32>
  store <4 x i32> %47, <4 x i32>* %__v146_a3
  %48 = load <4 x i32>, <4 x i32>* %__v144_a2
  %__v147_b2 = alloca <4 x i32>
  store <4 x i32> %48, <4 x i32>* %__v147_b2
  %49 = load <4 x i32>, <4 x i32>* %__v144_a2
  %50 = shl <4 x i32> %49, <i32 13, i32 13, i32 13, i32 13>
  store <4 x i32> %50, <4 x i32>* %__v144_a2
  %51 = load <4 x i32>, <4 x i32>* %__v147_b2
  %52 = lshr <4 x i32> %51, <i32 19, i32 19, i32 19, i32 19>
  store <4 x i32> %52, <4 x i32>* %__v147_b2
  %53 = load <4 x i32>, <4 x i32>* %__v136_diag1
  %54 = load <4 x i32>, <4 x i32>* %__v144_a2
  %55 = xor <4 x i32> %53, %54
  store <4 x i32> %55, <4 x i32>* %__v136_diag1
  %56 = load <4 x i32>, <4 x i32>* %__v137_diag2
  %57 = shufflevector <4 x i32> %56, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %57, <4 x i32>* %__v137_diag2
  %58 = load <4 x i32>, <4 x i32>* %__v136_diag1
  %59 = load <4 x i32>, <4 x i32>* %__v147_b2
  %60 = xor <4 x i32> %58, %59
  store <4 x i32> %60, <4 x i32>* %__v136_diag1
  %61 = load <4 x i32>, <4 x i32>* %__v146_a3
  %62 = load <4 x i32>, <4 x i32>* %__v136_diag1
  %63 = add <4 x i32> %61, %62
  store <4 x i32> %63, <4 x i32>* %__v146_a3
  %64 = load <4 x i32>, <4 x i32>* %__v138_diag3
  %__v148_a4 = alloca <4 x i32>
  store <4 x i32> %64, <4 x i32>* %__v148_a4
  %65 = load <4 x i32>, <4 x i32>* %__v146_a3
  %__v149_b3 = alloca <4 x i32>
  store <4 x i32> %65, <4 x i32>* %__v149_b3
  %66 = load <4 x i32>, <4 x i32>* %__v146_a3
  %67 = shl <4 x i32> %66, <i32 18, i32 18, i32 18, i32 18>
  store <4 x i32> %67, <4 x i32>* %__v146_a3
  %68 = load <4 x i32>, <4 x i32>* %__v149_b3
  %69 = lshr <4 x i32> %68, <i32 14, i32 14, i32 14, i32 14>
  store <4 x i32> %69, <4 x i32>* %__v149_b3
  %70 = load <4 x i32>, <4 x i32>* %__v135_diag0
  %71 = load <4 x i32>, <4 x i32>* %__v146_a3
  %72 = xor <4 x i32> %70, %71
  store <4 x i32> %72, <4 x i32>* %__v135_diag0
  %73 = load <4 x i32>, <4 x i32>* %__v136_diag1
  %74 = shufflevector <4 x i32> %73, <4 x i32> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  store <4 x i32> %74, <4 x i32>* %__v136_diag1
  %75 = load <4 x i32>, <4 x i32>* %__v135_diag0
  %76 = load <4 x i32>, <4 x i32>* %__v149_b3
  %77 = xor <4 x i32> %75, %76
  store <4 x i32> %77, <4 x i32>* %__v135_diag0
  %78 = load <4 x i32>, <4 x i32>* %__v148_a4
  %79 = load <4 x i32>, <4 x i32>* %__v135_diag0
  %80 = add <4 x i32> %78, %79
  store <4 x i32> %80, <4 x i32>* %__v148_a4
  %81 = load <4 x i32>, <4 x i32>* %__v135_diag0
  %__v150_a5 = alloca <4 x i32>
  store <4 x i32> %81, <4 x i32>* %__v150_a5
  %82 = load <4 x i32>, <4 x i32>* %__v148_a4
  %__v151_b4 = alloca <4 x i32>
  store <4 x i32> %82, <4 x i32>* %__v151_b4
  %83 = load <4 x i32>, <4 x i32>* %__v148_a4
  %84 = shl <4 x i32> %83, <i32 7, i32 7, i32 7, i32 7>
  store <4 x i32> %84, <4 x i32>* %__v148_a4
  %85 = load <4 x i32>, <4 x i32>* %__v151_b4
  %86 = lshr <4 x i32> %85, <i32 25, i32 25, i32 25, i32 25>
  store <4 x i32> %86, <4 x i32>* %__v151_b4
  %87 = load <4 x i32>, <4 x i32>* %__v136_diag1
  %88 = load <4 x i32>, <4 x i32>* %__v148_a4
  %89 = xor <4 x i32> %87, %88
  store <4 x i32> %89, <4 x i32>* %__v136_diag1
  %90 = load <4 x i32>, <4 x i32>* %__v136_diag1
  %91 = load <4 x i32>, <4 x i32>* %__v151_b4
  %92 = xor <4 x i32> %90, %91
  store <4 x i32> %92, <4 x i32>* %__v136_diag1
  %93 = load <4 x i32>, <4 x i32>* %__v150_a5
  %94 = load <4 x i32>, <4 x i32>* %__v136_diag1
  %95 = add <4 x i32> %93, %94
  store <4 x i32> %95, <4 x i32>* %__v150_a5
  %96 = load <4 x i32>, <4 x i32>* %__v136_diag1
  %__v152_a6 = alloca <4 x i32>
  store <4 x i32> %96, <4 x i32>* %__v152_a6
  %97 = load <4 x i32>, <4 x i32>* %__v150_a5
  %__v153_b5 = alloca <4 x i32>
  store <4 x i32> %97, <4 x i32>* %__v153_b5
  %98 = load <4 x i32>, <4 x i32>* %__v150_a5
  %99 = shl <4 x i32> %98, <i32 9, i32 9, i32 9, i32 9>
  store <4 x i32> %99, <4 x i32>* %__v150_a5
  %100 = load <4 x i32>, <4 x i32>* %__v153_b5
  %101 = lshr <4 x i32> %100, <i32 23, i32 23, i32 23, i32 23>
  store <4 x i32> %101, <4 x i32>* %__v153_b5
  %102 = load <4 x i32>, <4 x i32>* %__v137_diag2
  %103 = load <4 x i32>, <4 x i32>* %__v150_a5
  %104 = xor <4 x i32> %102, %103
  store <4 x i32> %104, <4 x i32>* %__v137_diag2
  %105 = load <4 x i32>, <4 x i32>* %__v136_diag1
  %106 = shufflevector <4 x i32> %105, <4 x i32> undef, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  store <4 x i32> %106, <4 x i32>* %__v136_diag1
  %107 = load <4 x i32>, <4 x i32>* %__v137_diag2
  %108 = load <4 x i32>, <4 x i32>* %__v153_b5
  %109 = xor <4 x i32> %107, %108
  store <4 x i32> %109, <4 x i32>* %__v137_diag2
  %110 = load <4 x i32>, <4 x i32>* %__v152_a6
  %111 = load <4 x i32>, <4 x i32>* %__v137_diag2
  %112 = add <4 x i32> %110, %111
  store <4 x i32> %112, <4 x i32>* %__v152_a6
  %113 = load <4 x i32>, <4 x i32>* %__v137_diag2
  %__v154_a7 = alloca <4 x i32>
  store <4 x i32> %113, <4 x i32>* %__v154_a7
  %114 = load <4 x i32>, <4 x i32>* %__v152_a6
  %__v155_b6 = alloca <4 x i32>
  store <4 x i32> %114, <4 x i32>* %__v155_b6
  %115 = load <4 x i32>, <4 x i32>* %__v152_a6
  %116 = shl <4 x i32> %115, <i32 13, i32 13, i32 13, i32 13>
  store <4 x i32> %116, <4 x i32>* %__v152_a6
  %117 = load <4 x i32>, <4 x i32>* %__v155_b6
  %118 = lshr <4 x i32> %117, <i32 19, i32 19, i32 19, i32 19>
  store <4 x i32> %118, <4 x i32>* %__v155_b6
  %119 = load <4 x i32>, <4 x i32>* %__v138_diag3
  %120 = load <4 x i32>, <4 x i32>* %__v152_a6
  %121 = xor <4 x i32> %119, %120
  store <4 x i32> %121, <4 x i32>* %__v138_diag3
  %122 = load <4 x i32>, <4 x i32>* %__v137_diag2
  %123 = shufflevector <4 x i32> %122, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %123, <4 x i32>* %__v137_diag2
  %124 = load <4 x i32>, <4 x i32>* %__v138_diag3
  %125 = load <4 x i32>, <4 x i32>* %__v155_b6
  %126 = xor <4 x i32> %124, %125
  store <4 x i32> %126, <4 x i32>* %__v138_diag3
  %127 = load <4 x i32>, <4 x i32>* %__v154_a7
  %128 = load <4 x i32>, <4 x i32>* %__v138_diag3
  %129 = add <4 x i32> %127, %128
  store <4 x i32> %129, <4 x i32>* %__v154_a7
  %130 = load <4 x i32>, <4 x i32>* %__v136_diag1
  store <4 x i32> %130, <4 x i32>* %__v139_a0
  %131 = load <4 x i32>, <4 x i32>* %__v154_a7
  %__v156_b7 = alloca <4 x i32>
  store <4 x i32> %131, <4 x i32>* %__v156_b7
  %132 = load <4 x i32>, <4 x i32>* %__v154_a7
  %133 = shl <4 x i32> %132, <i32 18, i32 18, i32 18, i32 18>
  store <4 x i32> %133, <4 x i32>* %__v154_a7
  %134 = load <4 x i32>, <4 x i32>* %__v156_b7
  %135 = lshr <4 x i32> %134, <i32 14, i32 14, i32 14, i32 14>
  store <4 x i32> %135, <4 x i32>* %__v156_b7
  %136 = load <4 x i32>, <4 x i32>* %__v135_diag0
  %137 = load <4 x i32>, <4 x i32>* %__v154_a7
  %138 = xor <4 x i32> %136, %137
  store <4 x i32> %138, <4 x i32>* %__v135_diag0
  %139 = load <4 x i32>, <4 x i32>* %__v138_diag3
  %140 = shufflevector <4 x i32> %139, <4 x i32> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  store <4 x i32> %140, <4 x i32>* %__v138_diag3
  %141 = load <4 x i32>, <4 x i32>* %__v135_diag0
  %142 = load <4 x i32>, <4 x i32>* %__v156_b7
  %143 = xor <4 x i32> %141, %142
  store <4 x i32> %143, <4 x i32>* %__v135_diag0
  %144 = load <4 x i32>, <4 x i32>* %__v139_a0
  %145 = load <4 x i32>, <4 x i32>* %__v135_diag0
  %146 = add <4 x i32> %144, %145
  store <4 x i32> %146, <4 x i32>* %__v139_a0
  %147 = load <4 x i32>, <4 x i32>* %__v135_diag0
  store <4 x i32> %147, <4 x i32>* %__v142_a1
  %148 = load <4 x i32>, <4 x i32>* %__v139_a0
  store <4 x i32> %148, <4 x i32>* %__v143_b0
  %149 = load <4 x i32>, <4 x i32>* %__v139_a0
  %150 = shl <4 x i32> %149, <i32 7, i32 7, i32 7, i32 7>
  store <4 x i32> %150, <4 x i32>* %__v139_a0
  %151 = load <4 x i32>, <4 x i32>* %__v143_b0
  %152 = lshr <4 x i32> %151, <i32 25, i32 25, i32 25, i32 25>
  store <4 x i32> %152, <4 x i32>* %__v143_b0
  %153 = load <4 x i32>, <4 x i32>* %__v138_diag3
  %154 = load <4 x i32>, <4 x i32>* %__v139_a0
  %155 = xor <4 x i32> %153, %154
  store <4 x i32> %155, <4 x i32>* %__v138_diag3
  %156 = load <4 x i32>, <4 x i32>* %__v138_diag3
  %157 = load <4 x i32>, <4 x i32>* %__v143_b0
  %158 = xor <4 x i32> %156, %157
  store <4 x i32> %158, <4 x i32>* %__v138_diag3
  %159 = load <4 x i32>, <4 x i32>* %__v142_a1
  %160 = load <4 x i32>, <4 x i32>* %__v138_diag3
  %161 = add <4 x i32> %159, %160
  store <4 x i32> %161, <4 x i32>* %__v142_a1
  %162 = load <4 x i32>, <4 x i32>* %__v138_diag3
  store <4 x i32> %162, <4 x i32>* %__v144_a2
  %163 = load <4 x i32>, <4 x i32>* %__v142_a1
  store <4 x i32> %163, <4 x i32>* %__v145_b1
  %164 = load <4 x i32>, <4 x i32>* %__v142_a1
  %165 = shl <4 x i32> %164, <i32 9, i32 9, i32 9, i32 9>
  store <4 x i32> %165, <4 x i32>* %__v142_a1
  %166 = load <4 x i32>, <4 x i32>* %__v145_b1
  %167 = lshr <4 x i32> %166, <i32 23, i32 23, i32 23, i32 23>
  store <4 x i32> %167, <4 x i32>* %__v145_b1
  %168 = load <4 x i32>, <4 x i32>* %__v137_diag2
  %169 = load <4 x i32>, <4 x i32>* %__v142_a1
  %170 = xor <4 x i32> %168, %169
  store <4 x i32> %170, <4 x i32>* %__v137_diag2
  %171 = load <4 x i32>, <4 x i32>* %__v138_diag3
  %172 = shufflevector <4 x i32> %171, <4 x i32> undef, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  store <4 x i32> %172, <4 x i32>* %__v138_diag3
  %173 = load <4 x i32>, <4 x i32>* %__v137_diag2
  %174 = load <4 x i32>, <4 x i32>* %__v145_b1
  %175 = xor <4 x i32> %173, %174
  store <4 x i32> %175, <4 x i32>* %__v137_diag2
  %176 = load <4 x i32>, <4 x i32>* %__v144_a2
  %177 = load <4 x i32>, <4 x i32>* %__v137_diag2
  %178 = add <4 x i32> %176, %177
  store <4 x i32> %178, <4 x i32>* %__v144_a2
  %179 = load <4 x i32>, <4 x i32>* %__v137_diag2
  store <4 x i32> %179, <4 x i32>* %__v146_a3
  %180 = load <4 x i32>, <4 x i32>* %__v144_a2
  store <4 x i32> %180, <4 x i32>* %__v147_b2
  %181 = load <4 x i32>, <4 x i32>* %__v144_a2
  %182 = shl <4 x i32> %181, <i32 13, i32 13, i32 13, i32 13>
  store <4 x i32> %182, <4 x i32>* %__v144_a2
  %183 = load <4 x i32>, <4 x i32>* %__v147_b2
  %184 = lshr <4 x i32> %183, <i32 19, i32 19, i32 19, i32 19>
  store <4 x i32> %184, <4 x i32>* %__v147_b2
  %185 = load <4 x i32>, <4 x i32>* %__v136_diag1
  %186 = load <4 x i32>, <4 x i32>* %__v144_a2
  %187 = xor <4 x i32> %185, %186
  store <4 x i32> %187, <4 x i32>* %__v136_diag1
  %188 = load <4 x i32>, <4 x i32>* %__v137_diag2
  %189 = shufflevector <4 x i32> %188, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %189, <4 x i32>* %__v137_diag2
  %190 = load <4 x i32>, <4 x i32>* %__v136_diag1
  %191 = load <4 x i32>, <4 x i32>* %__v147_b2
  %192 = xor <4 x i32> %190, %191
  store <4 x i32> %192, <4 x i32>* %__v136_diag1
  %193 = load <4 x i32>, <4 x i32>* %__v146_a3
  %194 = load <4 x i32>, <4 x i32>* %__v136_diag1
  %195 = add <4 x i32> %193, %194
  store <4 x i32> %195, <4 x i32>* %__v146_a3
  %196 = load <4 x i32>, <4 x i32>* %__v138_diag3
  store <4 x i32> %196, <4 x i32>* %__v148_a4
  %197 = load <4 x i32>, <4 x i32>* %__v146_a3
  store <4 x i32> %197, <4 x i32>* %__v149_b3
  %198 = load <4 x i32>, <4 x i32>* %__v146_a3
  %199 = shl <4 x i32> %198, <i32 18, i32 18, i32 18, i32 18>
  store <4 x i32> %199, <4 x i32>* %__v146_a3
  %200 = load <4 x i32>, <4 x i32>* %__v149_b3
  %201 = lshr <4 x i32> %200, <i32 14, i32 14, i32 14, i32 14>
  store <4 x i32> %201, <4 x i32>* %__v149_b3
  %202 = load <4 x i32>, <4 x i32>* %__v135_diag0
  %203 = load <4 x i32>, <4 x i32>* %__v146_a3
  %204 = xor <4 x i32> %202, %203
  store <4 x i32> %204, <4 x i32>* %__v135_diag0
  %205 = load <4 x i32>, <4 x i32>* %__v136_diag1
  %206 = shufflevector <4 x i32> %205, <4 x i32> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  store <4 x i32> %206, <4 x i32>* %__v136_diag1
  %207 = load <4 x i32>, <4 x i32>* %__v135_diag0
  %208 = load <4 x i32>, <4 x i32>* %__v149_b3
  %209 = xor <4 x i32> %207, %208
  store <4 x i32> %209, <4 x i32>* %__v135_diag0
  %210 = load <4 x i32>, <4 x i32>* %__v148_a4
  %211 = load <4 x i32>, <4 x i32>* %__v135_diag0
  %212 = add <4 x i32> %210, %211
  store <4 x i32> %212, <4 x i32>* %__v148_a4
  %213 = load <4 x i32>, <4 x i32>* %__v135_diag0
  store <4 x i32> %213, <4 x i32>* %__v150_a5
  %214 = load <4 x i32>, <4 x i32>* %__v148_a4
  store <4 x i32> %214, <4 x i32>* %__v151_b4
  %215 = load <4 x i32>, <4 x i32>* %__v148_a4
  %216 = shl <4 x i32> %215, <i32 7, i32 7, i32 7, i32 7>
  store <4 x i32> %216, <4 x i32>* %__v148_a4
  %217 = load <4 x i32>, <4 x i32>* %__v151_b4
  %218 = lshr <4 x i32> %217, <i32 25, i32 25, i32 25, i32 25>
  store <4 x i32> %218, <4 x i32>* %__v151_b4
  %219 = load <4 x i32>, <4 x i32>* %__v136_diag1
  %220 = load <4 x i32>, <4 x i32>* %__v148_a4
  %221 = xor <4 x i32> %219, %220
  store <4 x i32> %221, <4 x i32>* %__v136_diag1
  %222 = load <4 x i32>, <4 x i32>* %__v136_diag1
  %223 = load <4 x i32>, <4 x i32>* %__v151_b4
  %224 = xor <4 x i32> %222, %223
  store <4 x i32> %224, <4 x i32>* %__v136_diag1
  %225 = load <4 x i32>, <4 x i32>* %__v150_a5
  %226 = load <4 x i32>, <4 x i32>* %__v136_diag1
  %227 = add <4 x i32> %225, %226
  store <4 x i32> %227, <4 x i32>* %__v150_a5
  %228 = load <4 x i32>, <4 x i32>* %__v136_diag1
  store <4 x i32> %228, <4 x i32>* %__v152_a6
  %229 = load <4 x i32>, <4 x i32>* %__v150_a5
  store <4 x i32> %229, <4 x i32>* %__v153_b5
  %230 = load <4 x i32>, <4 x i32>* %__v150_a5
  %231 = shl <4 x i32> %230, <i32 9, i32 9, i32 9, i32 9>
  store <4 x i32> %231, <4 x i32>* %__v150_a5
  %232 = load <4 x i32>, <4 x i32>* %__v153_b5
  %233 = lshr <4 x i32> %232, <i32 23, i32 23, i32 23, i32 23>
  store <4 x i32> %233, <4 x i32>* %__v153_b5
  %234 = load <4 x i32>, <4 x i32>* %__v137_diag2
  %235 = load <4 x i32>, <4 x i32>* %__v150_a5
  %236 = xor <4 x i32> %234, %235
  store <4 x i32> %236, <4 x i32>* %__v137_diag2
  %237 = load <4 x i32>, <4 x i32>* %__v136_diag1
  %238 = shufflevector <4 x i32> %237, <4 x i32> undef, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  store <4 x i32> %238, <4 x i32>* %__v136_diag1
  %239 = load <4 x i32>, <4 x i32>* %__v137_diag2
  %240 = load <4 x i32>, <4 x i32>* %__v153_b5
  %241 = xor <4 x i32> %239, %240
  store <4 x i32> %241, <4 x i32>* %__v137_diag2
  %242 = load <4 x i32>, <4 x i32>* %__v152_a6
  %243 = load <4 x i32>, <4 x i32>* %__v137_diag2
  %244 = add <4 x i32> %242, %243
  store <4 x i32> %244, <4 x i32>* %__v152_a6
  %245 = load <4 x i32>, <4 x i32>* %__v137_diag2
  store <4 x i32> %245, <4 x i32>* %__v154_a7
  %246 = load <4 x i32>, <4 x i32>* %__v152_a6
  store <4 x i32> %246, <4 x i32>* %__v155_b6
  %247 = load <4 x i32>, <4 x i32>* %__v152_a6
  %248 = shl <4 x i32> %247, <i32 13, i32 13, i32 13, i32 13>
  store <4 x i32> %248, <4 x i32>* %__v152_a6
  %249 = load <4 x i32>, <4 x i32>* %__v155_b6
  %250 = lshr <4 x i32> %249, <i32 19, i32 19, i32 19, i32 19>
  store <4 x i32> %250, <4 x i32>* %__v155_b6
  %251 = load <4 x i32>, <4 x i32>* %__v138_diag3
  %252 = load <4 x i32>, <4 x i32>* %__v152_a6
  %253 = xor <4 x i32> %251, %252
  store <4 x i32> %253, <4 x i32>* %__v138_diag3
  %254 = load <4 x i32>, <4 x i32>* %__v137_diag2
  %255 = shufflevector <4 x i32> %254, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %255, <4 x i32>* %__v137_diag2
  %256 = load <4 x i32>, <4 x i32>* %__v138_diag3
  %257 = load <4 x i32>, <4 x i32>* %__v155_b6
  %258 = xor <4 x i32> %256, %257
  store <4 x i32> %258, <4 x i32>* %__v138_diag3
  %259 = load <4 x i32>, <4 x i32>* %__v154_a7
  %260 = load <4 x i32>, <4 x i32>* %__v138_diag3
  %261 = add <4 x i32> %259, %260
  store <4 x i32> %261, <4 x i32>* %__v154_a7
  %262 = load <4 x i32>, <4 x i32>* %__v136_diag1
  store <4 x i32> %262, <4 x i32>* %__v139_a0
  %263 = load <4 x i32>, <4 x i32>* %__v154_a7
  store <4 x i32> %263, <4 x i32>* %__v156_b7
  %264 = load <4 x i32>, <4 x i32>* %__v154_a7
  %265 = shl <4 x i32> %264, <i32 18, i32 18, i32 18, i32 18>
  store <4 x i32> %265, <4 x i32>* %__v154_a7
  %266 = load <4 x i32>, <4 x i32>* %__v156_b7
  %267 = lshr <4 x i32> %266, <i32 14, i32 14, i32 14, i32 14>
  store <4 x i32> %267, <4 x i32>* %__v156_b7
  %268 = load <4 x i32>, <4 x i32>* %__v135_diag0
  %269 = load <4 x i32>, <4 x i32>* %__v154_a7
  %270 = xor <4 x i32> %268, %269
  store <4 x i32> %270, <4 x i32>* %__v135_diag0
  %271 = load <4 x i32>, <4 x i32>* %__v138_diag3
  %272 = shufflevector <4 x i32> %271, <4 x i32> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  store <4 x i32> %272, <4 x i32>* %__v138_diag3
  %273 = load <4 x i32>, <4 x i32>* %__v135_diag0
  %274 = load <4 x i32>, <4 x i32>* %__v156_b7
  %275 = xor <4 x i32> %273, %274
  store <4 x i32> %275, <4 x i32>* %__v135_diag0
  br label %276

; <label>:276:                                    ; preds = %11
  %277 = add i32 %__v140__i, 1
  br label %9

; <label>:278:                                    ; preds = %9
  %279 = getelementptr i32, i32* %__v131_x, i64 0
  %__v297_load_le = call <4 x i32> @"__load[32]<4>_secret_le"(i32* %279)
  %280 = load <4 x i32>, <4 x i32>* %__v135_diag0
  %281 = add <4 x i32> %280, %__v297_load_le
  store <4 x i32> %281, <4 x i32>* %__v135_diag0
  %282 = getelementptr i32, i32* %__v131_x, i64 4
  %__v298_load_le = call <4 x i32> @"__load[32]<4>_secret_le"(i32* %282)
  %283 = load <4 x i32>, <4 x i32>* %__v136_diag1
  %284 = add <4 x i32> %283, %__v298_load_le
  store <4 x i32> %284, <4 x i32>* %__v136_diag1
  %285 = getelementptr i32, i32* %__v131_x, i64 8
  %__v299_load_le = call <4 x i32> @"__load[32]<4>_secret_le"(i32* %285)
  %286 = load <4 x i32>, <4 x i32>* %__v137_diag2
  %287 = add <4 x i32> %286, %__v299_load_le
  store <4 x i32> %287, <4 x i32>* %__v137_diag2
  %288 = getelementptr i32, i32* %__v131_x, i64 12
  %__v300_load_le = call <4 x i32> @"__load[32]<4>_secret_le"(i32* %288)
  %289 = load <4 x i32>, <4 x i32>* %__v138_diag3
  %290 = add <4 x i32> %289, %__v300_load_le
  store <4 x i32> %290, <4 x i32>* %__v138_diag3
  %__v157_partialblock = alloca i8, i64 64
  call void @fact.memset.i8(i8* %__v157_partialblock, i8 0, i64 64)
  br i1 true, label %291, label %308

; <label>:291:                                    ; preds = %278
  %292 = load <4 x i32>, <4 x i32>* %__v135_diag0
  %__v158_inA = extractelement <4 x i32> %292, i32 0
  %293 = load <4 x i32>, <4 x i32>* %__v136_diag1
  %__v159_inB = extractelement <4 x i32> %293, i32 0
  %294 = load <4 x i32>, <4 x i32>* %__v137_diag2
  %__v160_inC = extractelement <4 x i32> %294, i32 0
  %295 = load <4 x i32>, <4 x i32>* %__v138_diag3
  %__v161_inD = extractelement <4 x i32> %295, i32 0
  %296 = load <4 x i32>, <4 x i32>* %__v135_diag0
  %297 = shufflevector <4 x i32> %296, <4 x i32> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  store <4 x i32> %297, <4 x i32>* %__v135_diag0
  %298 = load <4 x i32>, <4 x i32>* %__v136_diag1
  %299 = shufflevector <4 x i32> %298, <4 x i32> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  store <4 x i32> %299, <4 x i32>* %__v136_diag1
  %300 = load <4 x i32>, <4 x i32>* %__v137_diag2
  %301 = shufflevector <4 x i32> %300, <4 x i32> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  store <4 x i32> %301, <4 x i32>* %__v137_diag2
  %302 = load <4 x i32>, <4 x i32>* %__v138_diag3
  %303 = shufflevector <4 x i32> %302, <4 x i32> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  store <4 x i32> %303, <4 x i32>* %__v138_diag3
  %304 = getelementptr i8, i8* %__v157_partialblock, i64 0
  call void @"__store[32]_secret_le"(i8* %304, i32 %__v158_inA)
  %305 = getelementptr i8, i8* %__v157_partialblock, i64 48
  call void @"__store[32]_secret_le"(i8* %305, i32 %__v159_inB)
  %306 = getelementptr i8, i8* %__v157_partialblock, i64 32
  call void @"__store[32]_secret_le"(i8* %306, i32 %__v160_inC)
  %307 = getelementptr i8, i8* %__v157_partialblock, i64 16
  call void @"__store[32]_secret_le"(i8* %307, i32 %__v161_inD)
  br label %309

; <label>:308:                                    ; preds = %278
  br label %309

; <label>:309:                                    ; preds = %308, %291
  br i1 true, label %310, label %327

; <label>:310:                                    ; preds = %309
  %311 = load <4 x i32>, <4 x i32>* %__v135_diag0
  %__v162_inA = extractelement <4 x i32> %311, i32 0
  %312 = load <4 x i32>, <4 x i32>* %__v136_diag1
  %__v163_inB = extractelement <4 x i32> %312, i32 0
  %313 = load <4 x i32>, <4 x i32>* %__v137_diag2
  %__v164_inC = extractelement <4 x i32> %313, i32 0
  %314 = load <4 x i32>, <4 x i32>* %__v138_diag3
  %__v165_inD = extractelement <4 x i32> %314, i32 0
  %315 = load <4 x i32>, <4 x i32>* %__v135_diag0
  %316 = shufflevector <4 x i32> %315, <4 x i32> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  store <4 x i32> %316, <4 x i32>* %__v135_diag0
  %317 = load <4 x i32>, <4 x i32>* %__v136_diag1
  %318 = shufflevector <4 x i32> %317, <4 x i32> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  store <4 x i32> %318, <4 x i32>* %__v136_diag1
  %319 = load <4 x i32>, <4 x i32>* %__v137_diag2
  %320 = shufflevector <4 x i32> %319, <4 x i32> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  store <4 x i32> %320, <4 x i32>* %__v137_diag2
  %321 = load <4 x i32>, <4 x i32>* %__v138_diag3
  %322 = shufflevector <4 x i32> %321, <4 x i32> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  store <4 x i32> %322, <4 x i32>* %__v138_diag3
  %323 = getelementptr i8, i8* %__v157_partialblock, i64 20
  call void @"__store[32]_secret_le"(i8* %323, i32 %__v162_inA)
  %324 = getelementptr i8, i8* %__v157_partialblock, i64 4
  call void @"__store[32]_secret_le"(i8* %324, i32 %__v163_inB)
  %325 = getelementptr i8, i8* %__v157_partialblock, i64 52
  call void @"__store[32]_secret_le"(i8* %325, i32 %__v164_inC)
  %326 = getelementptr i8, i8* %__v157_partialblock, i64 36
  call void @"__store[32]_secret_le"(i8* %326, i32 %__v165_inD)
  br label %328

; <label>:327:                                    ; preds = %309
  br label %328

; <label>:328:                                    ; preds = %327, %310
  br i1 true, label %329, label %346

; <label>:329:                                    ; preds = %328
  %330 = load <4 x i32>, <4 x i32>* %__v135_diag0
  %__v166_inA = extractelement <4 x i32> %330, i32 0
  %331 = load <4 x i32>, <4 x i32>* %__v136_diag1
  %__v167_inB = extractelement <4 x i32> %331, i32 0
  %332 = load <4 x i32>, <4 x i32>* %__v137_diag2
  %__v168_inC = extractelement <4 x i32> %332, i32 0
  %333 = load <4 x i32>, <4 x i32>* %__v138_diag3
  %__v169_inD = extractelement <4 x i32> %333, i32 0
  %334 = load <4 x i32>, <4 x i32>* %__v135_diag0
  %335 = shufflevector <4 x i32> %334, <4 x i32> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  store <4 x i32> %335, <4 x i32>* %__v135_diag0
  %336 = load <4 x i32>, <4 x i32>* %__v136_diag1
  %337 = shufflevector <4 x i32> %336, <4 x i32> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  store <4 x i32> %337, <4 x i32>* %__v136_diag1
  %338 = load <4 x i32>, <4 x i32>* %__v137_diag2
  %339 = shufflevector <4 x i32> %338, <4 x i32> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  store <4 x i32> %339, <4 x i32>* %__v137_diag2
  %340 = load <4 x i32>, <4 x i32>* %__v138_diag3
  %341 = shufflevector <4 x i32> %340, <4 x i32> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  store <4 x i32> %341, <4 x i32>* %__v138_diag3
  %342 = getelementptr i8, i8* %__v157_partialblock, i64 40
  call void @"__store[32]_secret_le"(i8* %342, i32 %__v166_inA)
  %343 = getelementptr i8, i8* %__v157_partialblock, i64 24
  call void @"__store[32]_secret_le"(i8* %343, i32 %__v167_inB)
  %344 = getelementptr i8, i8* %__v157_partialblock, i64 8
  call void @"__store[32]_secret_le"(i8* %344, i32 %__v168_inC)
  %345 = getelementptr i8, i8* %__v157_partialblock, i64 56
  call void @"__store[32]_secret_le"(i8* %345, i32 %__v169_inD)
  br label %347

; <label>:346:                                    ; preds = %328
  br label %347

; <label>:347:                                    ; preds = %346, %329
  br i1 true, label %348, label %365

; <label>:348:                                    ; preds = %347
  %349 = load <4 x i32>, <4 x i32>* %__v135_diag0
  %__v170_inA = extractelement <4 x i32> %349, i32 0
  %350 = load <4 x i32>, <4 x i32>* %__v136_diag1
  %__v171_inB = extractelement <4 x i32> %350, i32 0
  %351 = load <4 x i32>, <4 x i32>* %__v137_diag2
  %__v172_inC = extractelement <4 x i32> %351, i32 0
  %352 = load <4 x i32>, <4 x i32>* %__v138_diag3
  %__v173_inD = extractelement <4 x i32> %352, i32 0
  %353 = load <4 x i32>, <4 x i32>* %__v135_diag0
  %354 = shufflevector <4 x i32> %353, <4 x i32> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  store <4 x i32> %354, <4 x i32>* %__v135_diag0
  %355 = load <4 x i32>, <4 x i32>* %__v136_diag1
  %356 = shufflevector <4 x i32> %355, <4 x i32> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  store <4 x i32> %356, <4 x i32>* %__v136_diag1
  %357 = load <4 x i32>, <4 x i32>* %__v137_diag2
  %358 = shufflevector <4 x i32> %357, <4 x i32> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  store <4 x i32> %358, <4 x i32>* %__v137_diag2
  %359 = load <4 x i32>, <4 x i32>* %__v138_diag3
  %360 = shufflevector <4 x i32> %359, <4 x i32> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  store <4 x i32> %360, <4 x i32>* %__v138_diag3
  %361 = getelementptr i8, i8* %__v157_partialblock, i64 60
  call void @"__store[32]_secret_le"(i8* %361, i32 %__v170_inA)
  %362 = getelementptr i8, i8* %__v157_partialblock, i64 44
  call void @"__store[32]_secret_le"(i8* %362, i32 %__v171_inB)
  %363 = getelementptr i8, i8* %__v157_partialblock, i64 28
  call void @"__store[32]_secret_le"(i8* %363, i32 %__v172_inC)
  %364 = getelementptr i8, i8* %__v157_partialblock, i64 12
  call void @"__store[32]_secret_le"(i8* %364, i32 %__v173_inD)
  br label %366

; <label>:365:                                    ; preds = %347
  br label %366

; <label>:366:                                    ; preds = %365, %348
  br label %367

; <label>:367:                                    ; preds = %376, %366
  %__v174_i = phi i64 [ 0, %366 ], [ %377, %376 ]
  %368 = icmp ult i64 %__v174_i, %__v134_bytes
  br i1 %368, label %369, label %378

; <label>:369:                                    ; preds = %367
  %370 = getelementptr i8, i8* %__v133_c, i64 %__v174_i
  %371 = getelementptr i8, i8* %__v132_m, i64 %__v174_i
  %372 = load i8, i8* %371
  %373 = getelementptr i8, i8* %__v157_partialblock, i64 %__v174_i
  %374 = load i8, i8* %373
  %375 = xor i8 %372, %374
  store i8 %375, i8* %370
  br label %376

; <label>:376:                                    ; preds = %369
  %377 = add i64 %__v174_i, 1
  br label %367

; <label>:378:                                    ; preds = %367
  call void @"__smemzero[8]_secret"(i8* %__v157_partialblock, i64 64)
  br label %8
}

; Function Attrs: alwaysinline
define internal i64 @_u1(i32* %__v68_x, i8* %__v69_m, i64 %__v71_bytes, i8* %__v70_c, i64 %__v325___v70_c_len) #0 {
entry:
  %__rval = alloca i64
  store i64 0, i64* %__rval
  %__rctx = alloca i1
  store i1 true, i1* %__rctx
  %__v72_jtimes = udiv i64 %__v71_bytes, 64
  br label %0

; <label>:0:                                      ; preds = %8, %entry
  %__v73__j = phi i64 [ 0, %entry ], [ %9, %8 ]
  %1 = icmp ult i64 %__v73__j, %__v72_jtimes
  br i1 %1, label %2, label %10

; <label>:2:                                      ; preds = %0
  %__v74_j = mul i64 %__v73__j, 64
  %3 = getelementptr i32, i32* %__v68_x, i64 0
  %"__v339___load[32]<4>_secret_le" = call <4 x i32> @"__load[32]<4>_secret_le"(i32* %3)
  %__v75_diag0 = alloca <4 x i32>
  store <4 x i32> %"__v339___load[32]<4>_secret_le", <4 x i32>* %__v75_diag0
  %4 = getelementptr i32, i32* %__v68_x, i64 4
  %"__v340___load[32]<4>_secret_le" = call <4 x i32> @"__load[32]<4>_secret_le"(i32* %4)
  %__v76_diag1 = alloca <4 x i32>
  store <4 x i32> %"__v340___load[32]<4>_secret_le", <4 x i32>* %__v76_diag1
  %5 = getelementptr i32, i32* %__v68_x, i64 8
  %"__v341___load[32]<4>_secret_le" = call <4 x i32> @"__load[32]<4>_secret_le"(i32* %5)
  %__v77_diag2 = alloca <4 x i32>
  store <4 x i32> %"__v341___load[32]<4>_secret_le", <4 x i32>* %__v77_diag2
  %6 = getelementptr i32, i32* %__v68_x, i64 12
  %"__v342___load[32]<4>_secret_le" = call <4 x i32> @"__load[32]<4>_secret_le"(i32* %6)
  %__v78_diag3 = alloca <4 x i32>
  store <4 x i32> %"__v342___load[32]<4>_secret_le", <4 x i32>* %__v78_diag3
  %7 = load <4 x i32>, <4 x i32>* %__v76_diag1
  %__v79_a0 = alloca <4 x i32>
  store <4 x i32> %7, <4 x i32>* %__v79_a0
  br label %13

; <label>:8:                                      ; preds = %450
  %9 = add i64 %__v73__j, 1
  br label %0

; <label>:10:                                     ; preds = %0
  %11 = udiv i64 %__v71_bytes, 64
  %12 = mul i64 %11, 64
  ret i64 %12

; <label>:13:                                     ; preds = %280, %2
  %__v80__i = phi i32 [ 0, %2 ], [ %281, %280 ]
  %14 = icmp ult i32 %__v80__i, 5
  br i1 %14, label %15, label %282

; <label>:15:                                     ; preds = %13
  %__v81_i = mul i32 %__v80__i, 4
  %16 = load <4 x i32>, <4 x i32>* %__v79_a0
  %17 = load <4 x i32>, <4 x i32>* %__v75_diag0
  %18 = add <4 x i32> %16, %17
  store <4 x i32> %18, <4 x i32>* %__v79_a0
  %19 = load <4 x i32>, <4 x i32>* %__v75_diag0
  %__v82_a1 = alloca <4 x i32>
  store <4 x i32> %19, <4 x i32>* %__v82_a1
  %20 = load <4 x i32>, <4 x i32>* %__v79_a0
  %__v83_b0 = alloca <4 x i32>
  store <4 x i32> %20, <4 x i32>* %__v83_b0
  %21 = load <4 x i32>, <4 x i32>* %__v79_a0
  %22 = shl <4 x i32> %21, <i32 7, i32 7, i32 7, i32 7>
  store <4 x i32> %22, <4 x i32>* %__v79_a0
  %23 = load <4 x i32>, <4 x i32>* %__v83_b0
  %24 = lshr <4 x i32> %23, <i32 25, i32 25, i32 25, i32 25>
  store <4 x i32> %24, <4 x i32>* %__v83_b0
  %25 = load <4 x i32>, <4 x i32>* %__v78_diag3
  %26 = load <4 x i32>, <4 x i32>* %__v79_a0
  %27 = xor <4 x i32> %25, %26
  store <4 x i32> %27, <4 x i32>* %__v78_diag3
  %28 = load <4 x i32>, <4 x i32>* %__v78_diag3
  %29 = load <4 x i32>, <4 x i32>* %__v83_b0
  %30 = xor <4 x i32> %28, %29
  store <4 x i32> %30, <4 x i32>* %__v78_diag3
  %31 = load <4 x i32>, <4 x i32>* %__v82_a1
  %32 = load <4 x i32>, <4 x i32>* %__v78_diag3
  %33 = add <4 x i32> %31, %32
  store <4 x i32> %33, <4 x i32>* %__v82_a1
  %34 = load <4 x i32>, <4 x i32>* %__v78_diag3
  %__v84_a2 = alloca <4 x i32>
  store <4 x i32> %34, <4 x i32>* %__v84_a2
  %35 = load <4 x i32>, <4 x i32>* %__v82_a1
  %__v85_b1 = alloca <4 x i32>
  store <4 x i32> %35, <4 x i32>* %__v85_b1
  %36 = load <4 x i32>, <4 x i32>* %__v82_a1
  %37 = shl <4 x i32> %36, <i32 9, i32 9, i32 9, i32 9>
  store <4 x i32> %37, <4 x i32>* %__v82_a1
  %38 = load <4 x i32>, <4 x i32>* %__v85_b1
  %39 = lshr <4 x i32> %38, <i32 23, i32 23, i32 23, i32 23>
  store <4 x i32> %39, <4 x i32>* %__v85_b1
  %40 = load <4 x i32>, <4 x i32>* %__v77_diag2
  %41 = load <4 x i32>, <4 x i32>* %__v82_a1
  %42 = xor <4 x i32> %40, %41
  store <4 x i32> %42, <4 x i32>* %__v77_diag2
  %43 = load <4 x i32>, <4 x i32>* %__v78_diag3
  %44 = shufflevector <4 x i32> %43, <4 x i32> undef, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  store <4 x i32> %44, <4 x i32>* %__v78_diag3
  %45 = load <4 x i32>, <4 x i32>* %__v77_diag2
  %46 = load <4 x i32>, <4 x i32>* %__v85_b1
  %47 = xor <4 x i32> %45, %46
  store <4 x i32> %47, <4 x i32>* %__v77_diag2
  %48 = load <4 x i32>, <4 x i32>* %__v84_a2
  %49 = load <4 x i32>, <4 x i32>* %__v77_diag2
  %50 = add <4 x i32> %48, %49
  store <4 x i32> %50, <4 x i32>* %__v84_a2
  %51 = load <4 x i32>, <4 x i32>* %__v77_diag2
  %__v86_a3 = alloca <4 x i32>
  store <4 x i32> %51, <4 x i32>* %__v86_a3
  %52 = load <4 x i32>, <4 x i32>* %__v84_a2
  %__v87_b2 = alloca <4 x i32>
  store <4 x i32> %52, <4 x i32>* %__v87_b2
  %53 = load <4 x i32>, <4 x i32>* %__v84_a2
  %54 = shl <4 x i32> %53, <i32 13, i32 13, i32 13, i32 13>
  store <4 x i32> %54, <4 x i32>* %__v84_a2
  %55 = load <4 x i32>, <4 x i32>* %__v87_b2
  %56 = lshr <4 x i32> %55, <i32 19, i32 19, i32 19, i32 19>
  store <4 x i32> %56, <4 x i32>* %__v87_b2
  %57 = load <4 x i32>, <4 x i32>* %__v76_diag1
  %58 = load <4 x i32>, <4 x i32>* %__v84_a2
  %59 = xor <4 x i32> %57, %58
  store <4 x i32> %59, <4 x i32>* %__v76_diag1
  %60 = load <4 x i32>, <4 x i32>* %__v77_diag2
  %61 = shufflevector <4 x i32> %60, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %61, <4 x i32>* %__v77_diag2
  %62 = load <4 x i32>, <4 x i32>* %__v76_diag1
  %63 = load <4 x i32>, <4 x i32>* %__v87_b2
  %64 = xor <4 x i32> %62, %63
  store <4 x i32> %64, <4 x i32>* %__v76_diag1
  %65 = load <4 x i32>, <4 x i32>* %__v86_a3
  %66 = load <4 x i32>, <4 x i32>* %__v76_diag1
  %67 = add <4 x i32> %65, %66
  store <4 x i32> %67, <4 x i32>* %__v86_a3
  %68 = load <4 x i32>, <4 x i32>* %__v78_diag3
  %__v88_a4 = alloca <4 x i32>
  store <4 x i32> %68, <4 x i32>* %__v88_a4
  %69 = load <4 x i32>, <4 x i32>* %__v86_a3
  %__v89_b3 = alloca <4 x i32>
  store <4 x i32> %69, <4 x i32>* %__v89_b3
  %70 = load <4 x i32>, <4 x i32>* %__v86_a3
  %71 = shl <4 x i32> %70, <i32 18, i32 18, i32 18, i32 18>
  store <4 x i32> %71, <4 x i32>* %__v86_a3
  %72 = load <4 x i32>, <4 x i32>* %__v89_b3
  %73 = lshr <4 x i32> %72, <i32 14, i32 14, i32 14, i32 14>
  store <4 x i32> %73, <4 x i32>* %__v89_b3
  %74 = load <4 x i32>, <4 x i32>* %__v75_diag0
  %75 = load <4 x i32>, <4 x i32>* %__v86_a3
  %76 = xor <4 x i32> %74, %75
  store <4 x i32> %76, <4 x i32>* %__v75_diag0
  %77 = load <4 x i32>, <4 x i32>* %__v76_diag1
  %78 = shufflevector <4 x i32> %77, <4 x i32> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  store <4 x i32> %78, <4 x i32>* %__v76_diag1
  %79 = load <4 x i32>, <4 x i32>* %__v75_diag0
  %80 = load <4 x i32>, <4 x i32>* %__v89_b3
  %81 = xor <4 x i32> %79, %80
  store <4 x i32> %81, <4 x i32>* %__v75_diag0
  %82 = load <4 x i32>, <4 x i32>* %__v88_a4
  %83 = load <4 x i32>, <4 x i32>* %__v75_diag0
  %84 = add <4 x i32> %82, %83
  store <4 x i32> %84, <4 x i32>* %__v88_a4
  %85 = load <4 x i32>, <4 x i32>* %__v75_diag0
  %__v90_a5 = alloca <4 x i32>
  store <4 x i32> %85, <4 x i32>* %__v90_a5
  %86 = load <4 x i32>, <4 x i32>* %__v88_a4
  %__v91_b4 = alloca <4 x i32>
  store <4 x i32> %86, <4 x i32>* %__v91_b4
  %87 = load <4 x i32>, <4 x i32>* %__v88_a4
  %88 = shl <4 x i32> %87, <i32 7, i32 7, i32 7, i32 7>
  store <4 x i32> %88, <4 x i32>* %__v88_a4
  %89 = load <4 x i32>, <4 x i32>* %__v91_b4
  %90 = lshr <4 x i32> %89, <i32 25, i32 25, i32 25, i32 25>
  store <4 x i32> %90, <4 x i32>* %__v91_b4
  %91 = load <4 x i32>, <4 x i32>* %__v76_diag1
  %92 = load <4 x i32>, <4 x i32>* %__v88_a4
  %93 = xor <4 x i32> %91, %92
  store <4 x i32> %93, <4 x i32>* %__v76_diag1
  %94 = load <4 x i32>, <4 x i32>* %__v76_diag1
  %95 = load <4 x i32>, <4 x i32>* %__v91_b4
  %96 = xor <4 x i32> %94, %95
  store <4 x i32> %96, <4 x i32>* %__v76_diag1
  %97 = load <4 x i32>, <4 x i32>* %__v90_a5
  %98 = load <4 x i32>, <4 x i32>* %__v76_diag1
  %99 = add <4 x i32> %97, %98
  store <4 x i32> %99, <4 x i32>* %__v90_a5
  %100 = load <4 x i32>, <4 x i32>* %__v76_diag1
  %__v92_a6 = alloca <4 x i32>
  store <4 x i32> %100, <4 x i32>* %__v92_a6
  %101 = load <4 x i32>, <4 x i32>* %__v90_a5
  %__v93_b5 = alloca <4 x i32>
  store <4 x i32> %101, <4 x i32>* %__v93_b5
  %102 = load <4 x i32>, <4 x i32>* %__v90_a5
  %103 = shl <4 x i32> %102, <i32 9, i32 9, i32 9, i32 9>
  store <4 x i32> %103, <4 x i32>* %__v90_a5
  %104 = load <4 x i32>, <4 x i32>* %__v93_b5
  %105 = lshr <4 x i32> %104, <i32 23, i32 23, i32 23, i32 23>
  store <4 x i32> %105, <4 x i32>* %__v93_b5
  %106 = load <4 x i32>, <4 x i32>* %__v77_diag2
  %107 = load <4 x i32>, <4 x i32>* %__v90_a5
  %108 = xor <4 x i32> %106, %107
  store <4 x i32> %108, <4 x i32>* %__v77_diag2
  %109 = load <4 x i32>, <4 x i32>* %__v76_diag1
  %110 = shufflevector <4 x i32> %109, <4 x i32> undef, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  store <4 x i32> %110, <4 x i32>* %__v76_diag1
  %111 = load <4 x i32>, <4 x i32>* %__v77_diag2
  %112 = load <4 x i32>, <4 x i32>* %__v93_b5
  %113 = xor <4 x i32> %111, %112
  store <4 x i32> %113, <4 x i32>* %__v77_diag2
  %114 = load <4 x i32>, <4 x i32>* %__v92_a6
  %115 = load <4 x i32>, <4 x i32>* %__v77_diag2
  %116 = add <4 x i32> %114, %115
  store <4 x i32> %116, <4 x i32>* %__v92_a6
  %117 = load <4 x i32>, <4 x i32>* %__v77_diag2
  %__v94_a7 = alloca <4 x i32>
  store <4 x i32> %117, <4 x i32>* %__v94_a7
  %118 = load <4 x i32>, <4 x i32>* %__v92_a6
  %__v95_b6 = alloca <4 x i32>
  store <4 x i32> %118, <4 x i32>* %__v95_b6
  %119 = load <4 x i32>, <4 x i32>* %__v92_a6
  %120 = shl <4 x i32> %119, <i32 13, i32 13, i32 13, i32 13>
  store <4 x i32> %120, <4 x i32>* %__v92_a6
  %121 = load <4 x i32>, <4 x i32>* %__v95_b6
  %122 = lshr <4 x i32> %121, <i32 19, i32 19, i32 19, i32 19>
  store <4 x i32> %122, <4 x i32>* %__v95_b6
  %123 = load <4 x i32>, <4 x i32>* %__v78_diag3
  %124 = load <4 x i32>, <4 x i32>* %__v92_a6
  %125 = xor <4 x i32> %123, %124
  store <4 x i32> %125, <4 x i32>* %__v78_diag3
  %126 = load <4 x i32>, <4 x i32>* %__v77_diag2
  %127 = shufflevector <4 x i32> %126, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %127, <4 x i32>* %__v77_diag2
  %128 = load <4 x i32>, <4 x i32>* %__v78_diag3
  %129 = load <4 x i32>, <4 x i32>* %__v95_b6
  %130 = xor <4 x i32> %128, %129
  store <4 x i32> %130, <4 x i32>* %__v78_diag3
  %131 = load <4 x i32>, <4 x i32>* %__v94_a7
  %132 = load <4 x i32>, <4 x i32>* %__v78_diag3
  %133 = add <4 x i32> %131, %132
  store <4 x i32> %133, <4 x i32>* %__v94_a7
  %134 = load <4 x i32>, <4 x i32>* %__v76_diag1
  store <4 x i32> %134, <4 x i32>* %__v79_a0
  %135 = load <4 x i32>, <4 x i32>* %__v94_a7
  %__v96_b7 = alloca <4 x i32>
  store <4 x i32> %135, <4 x i32>* %__v96_b7
  %136 = load <4 x i32>, <4 x i32>* %__v94_a7
  %137 = shl <4 x i32> %136, <i32 18, i32 18, i32 18, i32 18>
  store <4 x i32> %137, <4 x i32>* %__v94_a7
  %138 = load <4 x i32>, <4 x i32>* %__v96_b7
  %139 = lshr <4 x i32> %138, <i32 14, i32 14, i32 14, i32 14>
  store <4 x i32> %139, <4 x i32>* %__v96_b7
  %140 = load <4 x i32>, <4 x i32>* %__v75_diag0
  %141 = load <4 x i32>, <4 x i32>* %__v94_a7
  %142 = xor <4 x i32> %140, %141
  store <4 x i32> %142, <4 x i32>* %__v75_diag0
  %143 = load <4 x i32>, <4 x i32>* %__v78_diag3
  %144 = shufflevector <4 x i32> %143, <4 x i32> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  store <4 x i32> %144, <4 x i32>* %__v78_diag3
  %145 = load <4 x i32>, <4 x i32>* %__v75_diag0
  %146 = load <4 x i32>, <4 x i32>* %__v96_b7
  %147 = xor <4 x i32> %145, %146
  store <4 x i32> %147, <4 x i32>* %__v75_diag0
  %148 = load <4 x i32>, <4 x i32>* %__v79_a0
  %149 = load <4 x i32>, <4 x i32>* %__v75_diag0
  %150 = add <4 x i32> %148, %149
  store <4 x i32> %150, <4 x i32>* %__v79_a0
  %151 = load <4 x i32>, <4 x i32>* %__v75_diag0
  store <4 x i32> %151, <4 x i32>* %__v82_a1
  %152 = load <4 x i32>, <4 x i32>* %__v79_a0
  store <4 x i32> %152, <4 x i32>* %__v83_b0
  %153 = load <4 x i32>, <4 x i32>* %__v79_a0
  %154 = shl <4 x i32> %153, <i32 7, i32 7, i32 7, i32 7>
  store <4 x i32> %154, <4 x i32>* %__v79_a0
  %155 = load <4 x i32>, <4 x i32>* %__v83_b0
  %156 = lshr <4 x i32> %155, <i32 25, i32 25, i32 25, i32 25>
  store <4 x i32> %156, <4 x i32>* %__v83_b0
  %157 = load <4 x i32>, <4 x i32>* %__v78_diag3
  %158 = load <4 x i32>, <4 x i32>* %__v79_a0
  %159 = xor <4 x i32> %157, %158
  store <4 x i32> %159, <4 x i32>* %__v78_diag3
  %160 = load <4 x i32>, <4 x i32>* %__v78_diag3
  %161 = load <4 x i32>, <4 x i32>* %__v83_b0
  %162 = xor <4 x i32> %160, %161
  store <4 x i32> %162, <4 x i32>* %__v78_diag3
  %163 = load <4 x i32>, <4 x i32>* %__v82_a1
  %164 = load <4 x i32>, <4 x i32>* %__v78_diag3
  %165 = add <4 x i32> %163, %164
  store <4 x i32> %165, <4 x i32>* %__v82_a1
  %166 = load <4 x i32>, <4 x i32>* %__v78_diag3
  store <4 x i32> %166, <4 x i32>* %__v84_a2
  %167 = load <4 x i32>, <4 x i32>* %__v82_a1
  store <4 x i32> %167, <4 x i32>* %__v85_b1
  %168 = load <4 x i32>, <4 x i32>* %__v82_a1
  %169 = shl <4 x i32> %168, <i32 9, i32 9, i32 9, i32 9>
  store <4 x i32> %169, <4 x i32>* %__v82_a1
  %170 = load <4 x i32>, <4 x i32>* %__v85_b1
  %171 = lshr <4 x i32> %170, <i32 23, i32 23, i32 23, i32 23>
  store <4 x i32> %171, <4 x i32>* %__v85_b1
  %172 = load <4 x i32>, <4 x i32>* %__v77_diag2
  %173 = load <4 x i32>, <4 x i32>* %__v82_a1
  %174 = xor <4 x i32> %172, %173
  store <4 x i32> %174, <4 x i32>* %__v77_diag2
  %175 = load <4 x i32>, <4 x i32>* %__v78_diag3
  %176 = shufflevector <4 x i32> %175, <4 x i32> undef, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  store <4 x i32> %176, <4 x i32>* %__v78_diag3
  %177 = load <4 x i32>, <4 x i32>* %__v77_diag2
  %178 = load <4 x i32>, <4 x i32>* %__v85_b1
  %179 = xor <4 x i32> %177, %178
  store <4 x i32> %179, <4 x i32>* %__v77_diag2
  %180 = load <4 x i32>, <4 x i32>* %__v84_a2
  %181 = load <4 x i32>, <4 x i32>* %__v77_diag2
  %182 = add <4 x i32> %180, %181
  store <4 x i32> %182, <4 x i32>* %__v84_a2
  %183 = load <4 x i32>, <4 x i32>* %__v77_diag2
  store <4 x i32> %183, <4 x i32>* %__v86_a3
  %184 = load <4 x i32>, <4 x i32>* %__v84_a2
  store <4 x i32> %184, <4 x i32>* %__v87_b2
  %185 = load <4 x i32>, <4 x i32>* %__v84_a2
  %186 = shl <4 x i32> %185, <i32 13, i32 13, i32 13, i32 13>
  store <4 x i32> %186, <4 x i32>* %__v84_a2
  %187 = load <4 x i32>, <4 x i32>* %__v87_b2
  %188 = lshr <4 x i32> %187, <i32 19, i32 19, i32 19, i32 19>
  store <4 x i32> %188, <4 x i32>* %__v87_b2
  %189 = load <4 x i32>, <4 x i32>* %__v76_diag1
  %190 = load <4 x i32>, <4 x i32>* %__v84_a2
  %191 = xor <4 x i32> %189, %190
  store <4 x i32> %191, <4 x i32>* %__v76_diag1
  %192 = load <4 x i32>, <4 x i32>* %__v77_diag2
  %193 = shufflevector <4 x i32> %192, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %193, <4 x i32>* %__v77_diag2
  %194 = load <4 x i32>, <4 x i32>* %__v76_diag1
  %195 = load <4 x i32>, <4 x i32>* %__v87_b2
  %196 = xor <4 x i32> %194, %195
  store <4 x i32> %196, <4 x i32>* %__v76_diag1
  %197 = load <4 x i32>, <4 x i32>* %__v86_a3
  %198 = load <4 x i32>, <4 x i32>* %__v76_diag1
  %199 = add <4 x i32> %197, %198
  store <4 x i32> %199, <4 x i32>* %__v86_a3
  %200 = load <4 x i32>, <4 x i32>* %__v78_diag3
  store <4 x i32> %200, <4 x i32>* %__v88_a4
  %201 = load <4 x i32>, <4 x i32>* %__v86_a3
  store <4 x i32> %201, <4 x i32>* %__v89_b3
  %202 = load <4 x i32>, <4 x i32>* %__v86_a3
  %203 = shl <4 x i32> %202, <i32 18, i32 18, i32 18, i32 18>
  store <4 x i32> %203, <4 x i32>* %__v86_a3
  %204 = load <4 x i32>, <4 x i32>* %__v89_b3
  %205 = lshr <4 x i32> %204, <i32 14, i32 14, i32 14, i32 14>
  store <4 x i32> %205, <4 x i32>* %__v89_b3
  %206 = load <4 x i32>, <4 x i32>* %__v75_diag0
  %207 = load <4 x i32>, <4 x i32>* %__v86_a3
  %208 = xor <4 x i32> %206, %207
  store <4 x i32> %208, <4 x i32>* %__v75_diag0
  %209 = load <4 x i32>, <4 x i32>* %__v76_diag1
  %210 = shufflevector <4 x i32> %209, <4 x i32> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  store <4 x i32> %210, <4 x i32>* %__v76_diag1
  %211 = load <4 x i32>, <4 x i32>* %__v75_diag0
  %212 = load <4 x i32>, <4 x i32>* %__v89_b3
  %213 = xor <4 x i32> %211, %212
  store <4 x i32> %213, <4 x i32>* %__v75_diag0
  %214 = load <4 x i32>, <4 x i32>* %__v88_a4
  %215 = load <4 x i32>, <4 x i32>* %__v75_diag0
  %216 = add <4 x i32> %214, %215
  store <4 x i32> %216, <4 x i32>* %__v88_a4
  %217 = load <4 x i32>, <4 x i32>* %__v75_diag0
  store <4 x i32> %217, <4 x i32>* %__v90_a5
  %218 = load <4 x i32>, <4 x i32>* %__v88_a4
  store <4 x i32> %218, <4 x i32>* %__v91_b4
  %219 = load <4 x i32>, <4 x i32>* %__v88_a4
  %220 = shl <4 x i32> %219, <i32 7, i32 7, i32 7, i32 7>
  store <4 x i32> %220, <4 x i32>* %__v88_a4
  %221 = load <4 x i32>, <4 x i32>* %__v91_b4
  %222 = lshr <4 x i32> %221, <i32 25, i32 25, i32 25, i32 25>
  store <4 x i32> %222, <4 x i32>* %__v91_b4
  %223 = load <4 x i32>, <4 x i32>* %__v76_diag1
  %224 = load <4 x i32>, <4 x i32>* %__v88_a4
  %225 = xor <4 x i32> %223, %224
  store <4 x i32> %225, <4 x i32>* %__v76_diag1
  %226 = load <4 x i32>, <4 x i32>* %__v76_diag1
  %227 = load <4 x i32>, <4 x i32>* %__v91_b4
  %228 = xor <4 x i32> %226, %227
  store <4 x i32> %228, <4 x i32>* %__v76_diag1
  %229 = load <4 x i32>, <4 x i32>* %__v90_a5
  %230 = load <4 x i32>, <4 x i32>* %__v76_diag1
  %231 = add <4 x i32> %229, %230
  store <4 x i32> %231, <4 x i32>* %__v90_a5
  %232 = load <4 x i32>, <4 x i32>* %__v76_diag1
  store <4 x i32> %232, <4 x i32>* %__v92_a6
  %233 = load <4 x i32>, <4 x i32>* %__v90_a5
  store <4 x i32> %233, <4 x i32>* %__v93_b5
  %234 = load <4 x i32>, <4 x i32>* %__v90_a5
  %235 = shl <4 x i32> %234, <i32 9, i32 9, i32 9, i32 9>
  store <4 x i32> %235, <4 x i32>* %__v90_a5
  %236 = load <4 x i32>, <4 x i32>* %__v93_b5
  %237 = lshr <4 x i32> %236, <i32 23, i32 23, i32 23, i32 23>
  store <4 x i32> %237, <4 x i32>* %__v93_b5
  %238 = load <4 x i32>, <4 x i32>* %__v77_diag2
  %239 = load <4 x i32>, <4 x i32>* %__v90_a5
  %240 = xor <4 x i32> %238, %239
  store <4 x i32> %240, <4 x i32>* %__v77_diag2
  %241 = load <4 x i32>, <4 x i32>* %__v76_diag1
  %242 = shufflevector <4 x i32> %241, <4 x i32> undef, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  store <4 x i32> %242, <4 x i32>* %__v76_diag1
  %243 = load <4 x i32>, <4 x i32>* %__v77_diag2
  %244 = load <4 x i32>, <4 x i32>* %__v93_b5
  %245 = xor <4 x i32> %243, %244
  store <4 x i32> %245, <4 x i32>* %__v77_diag2
  %246 = load <4 x i32>, <4 x i32>* %__v92_a6
  %247 = load <4 x i32>, <4 x i32>* %__v77_diag2
  %248 = add <4 x i32> %246, %247
  store <4 x i32> %248, <4 x i32>* %__v92_a6
  %249 = load <4 x i32>, <4 x i32>* %__v77_diag2
  store <4 x i32> %249, <4 x i32>* %__v94_a7
  %250 = load <4 x i32>, <4 x i32>* %__v92_a6
  store <4 x i32> %250, <4 x i32>* %__v95_b6
  %251 = load <4 x i32>, <4 x i32>* %__v92_a6
  %252 = shl <4 x i32> %251, <i32 13, i32 13, i32 13, i32 13>
  store <4 x i32> %252, <4 x i32>* %__v92_a6
  %253 = load <4 x i32>, <4 x i32>* %__v95_b6
  %254 = lshr <4 x i32> %253, <i32 19, i32 19, i32 19, i32 19>
  store <4 x i32> %254, <4 x i32>* %__v95_b6
  %255 = load <4 x i32>, <4 x i32>* %__v78_diag3
  %256 = load <4 x i32>, <4 x i32>* %__v92_a6
  %257 = xor <4 x i32> %255, %256
  store <4 x i32> %257, <4 x i32>* %__v78_diag3
  %258 = load <4 x i32>, <4 x i32>* %__v77_diag2
  %259 = shufflevector <4 x i32> %258, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %259, <4 x i32>* %__v77_diag2
  %260 = load <4 x i32>, <4 x i32>* %__v78_diag3
  %261 = load <4 x i32>, <4 x i32>* %__v95_b6
  %262 = xor <4 x i32> %260, %261
  store <4 x i32> %262, <4 x i32>* %__v78_diag3
  %263 = load <4 x i32>, <4 x i32>* %__v94_a7
  %264 = load <4 x i32>, <4 x i32>* %__v78_diag3
  %265 = add <4 x i32> %263, %264
  store <4 x i32> %265, <4 x i32>* %__v94_a7
  %266 = load <4 x i32>, <4 x i32>* %__v76_diag1
  store <4 x i32> %266, <4 x i32>* %__v79_a0
  %267 = load <4 x i32>, <4 x i32>* %__v94_a7
  store <4 x i32> %267, <4 x i32>* %__v96_b7
  %268 = load <4 x i32>, <4 x i32>* %__v94_a7
  %269 = shl <4 x i32> %268, <i32 18, i32 18, i32 18, i32 18>
  store <4 x i32> %269, <4 x i32>* %__v94_a7
  %270 = load <4 x i32>, <4 x i32>* %__v96_b7
  %271 = lshr <4 x i32> %270, <i32 14, i32 14, i32 14, i32 14>
  store <4 x i32> %271, <4 x i32>* %__v96_b7
  %272 = load <4 x i32>, <4 x i32>* %__v75_diag0
  %273 = load <4 x i32>, <4 x i32>* %__v94_a7
  %274 = xor <4 x i32> %272, %273
  store <4 x i32> %274, <4 x i32>* %__v75_diag0
  %275 = load <4 x i32>, <4 x i32>* %__v78_diag3
  %276 = shufflevector <4 x i32> %275, <4 x i32> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  store <4 x i32> %276, <4 x i32>* %__v78_diag3
  %277 = load <4 x i32>, <4 x i32>* %__v75_diag0
  %278 = load <4 x i32>, <4 x i32>* %__v96_b7
  %279 = xor <4 x i32> %277, %278
  store <4 x i32> %279, <4 x i32>* %__v75_diag0
  br label %280

; <label>:280:                                    ; preds = %15
  %281 = add i32 %__v80__i, 1
  br label %13

; <label>:282:                                    ; preds = %13
  %283 = getelementptr i32, i32* %__v68_x, i64 0
  %__v277_load_le = call <4 x i32> @"__load[32]<4>_secret_le"(i32* %283)
  %284 = load <4 x i32>, <4 x i32>* %__v75_diag0
  %285 = add <4 x i32> %284, %__v277_load_le
  store <4 x i32> %285, <4 x i32>* %__v75_diag0
  %286 = getelementptr i32, i32* %__v68_x, i64 4
  %__v278_load_le = call <4 x i32> @"__load[32]<4>_secret_le"(i32* %286)
  %287 = load <4 x i32>, <4 x i32>* %__v76_diag1
  %288 = add <4 x i32> %287, %__v278_load_le
  store <4 x i32> %288, <4 x i32>* %__v76_diag1
  %289 = getelementptr i32, i32* %__v68_x, i64 8
  %__v279_load_le = call <4 x i32> @"__load[32]<4>_secret_le"(i32* %289)
  %290 = load <4 x i32>, <4 x i32>* %__v77_diag2
  %291 = add <4 x i32> %290, %__v279_load_le
  store <4 x i32> %291, <4 x i32>* %__v77_diag2
  %292 = getelementptr i32, i32* %__v68_x, i64 12
  %__v280_load_le = call <4 x i32> @"__load[32]<4>_secret_le"(i32* %292)
  %293 = load <4 x i32>, <4 x i32>* %__v78_diag3
  %294 = add <4 x i32> %293, %__v280_load_le
  store <4 x i32> %294, <4 x i32>* %__v78_diag3
  br i1 true, label %295, label %332

; <label>:295:                                    ; preds = %282
  %296 = load <4 x i32>, <4 x i32>* %__v75_diag0
  %297 = extractelement <4 x i32> %296, i32 0
  %__v101_inA = alloca i32
  store i32 %297, i32* %__v101_inA
  %298 = load <4 x i32>, <4 x i32>* %__v76_diag1
  %299 = extractelement <4 x i32> %298, i32 0
  %__v102_inB = alloca i32
  store i32 %299, i32* %__v102_inB
  %300 = load <4 x i32>, <4 x i32>* %__v77_diag2
  %301 = extractelement <4 x i32> %300, i32 0
  %__v103_inC = alloca i32
  store i32 %301, i32* %__v103_inC
  %302 = load <4 x i32>, <4 x i32>* %__v78_diag3
  %303 = extractelement <4 x i32> %302, i32 0
  %__v104_inD = alloca i32
  store i32 %303, i32* %__v104_inD
  %304 = load <4 x i32>, <4 x i32>* %__v75_diag0
  %305 = shufflevector <4 x i32> %304, <4 x i32> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  store <4 x i32> %305, <4 x i32>* %__v75_diag0
  %306 = load <4 x i32>, <4 x i32>* %__v76_diag1
  %307 = shufflevector <4 x i32> %306, <4 x i32> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  store <4 x i32> %307, <4 x i32>* %__v76_diag1
  %308 = load <4 x i32>, <4 x i32>* %__v77_diag2
  %309 = shufflevector <4 x i32> %308, <4 x i32> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  store <4 x i32> %309, <4 x i32>* %__v77_diag2
  %310 = load <4 x i32>, <4 x i32>* %__v78_diag3
  %311 = shufflevector <4 x i32> %310, <4 x i32> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  store <4 x i32> %311, <4 x i32>* %__v78_diag3
  %__v343_lexpr = add i64 %__v74_j, 0
  %__v344_lexpr = add i64 %__v74_j, 0
  %__v345_lexpr = add i64 %__v74_j, 0
  %312 = getelementptr i8, i8* %__v69_m, i64 %__v345_lexpr
  %__v281_load_le = call i32 @"__load[32]_secret_le"(i8* %312)
  %313 = load i32, i32* %__v101_inA
  %314 = xor i32 %313, %__v281_load_le
  store i32 %314, i32* %__v101_inA
  %__v346_lexpr = add i64 %__v74_j, 48
  %__v347_lexpr = add i64 %__v74_j, 48
  %__v348_lexpr = add i64 %__v74_j, 48
  %315 = getelementptr i8, i8* %__v69_m, i64 %__v348_lexpr
  %__v282_load_le = call i32 @"__load[32]_secret_le"(i8* %315)
  %316 = load i32, i32* %__v102_inB
  %317 = xor i32 %316, %__v282_load_le
  store i32 %317, i32* %__v102_inB
  %__v349_lexpr = add i64 %__v74_j, 32
  %__v350_lexpr = add i64 %__v74_j, 32
  %__v351_lexpr = add i64 %__v74_j, 32
  %318 = getelementptr i8, i8* %__v69_m, i64 %__v351_lexpr
  %__v283_load_le = call i32 @"__load[32]_secret_le"(i8* %318)
  %319 = load i32, i32* %__v103_inC
  %320 = xor i32 %319, %__v283_load_le
  store i32 %320, i32* %__v103_inC
  %__v352_lexpr = add i64 %__v74_j, 16
  %__v353_lexpr = add i64 %__v74_j, 16
  %__v354_lexpr = add i64 %__v74_j, 16
  %321 = getelementptr i8, i8* %__v69_m, i64 %__v354_lexpr
  %__v284_load_le = call i32 @"__load[32]_secret_le"(i8* %321)
  %322 = load i32, i32* %__v104_inD
  %323 = xor i32 %322, %__v284_load_le
  store i32 %323, i32* %__v104_inD
  %__v355_lexpr = add i64 %__v74_j, 0
  %__v356_lexpr = add i64 %__v74_j, 0
  %324 = getelementptr i8, i8* %__v70_c, i64 %__v356_lexpr
  %325 = load i32, i32* %__v101_inA
  call void @"__store[32]_secret_le"(i8* %324, i32 %325)
  %__v357_lexpr = add i64 %__v74_j, 48
  %__v358_lexpr = add i64 %__v74_j, 48
  %326 = getelementptr i8, i8* %__v70_c, i64 %__v358_lexpr
  %327 = load i32, i32* %__v102_inB
  call void @"__store[32]_secret_le"(i8* %326, i32 %327)
  %__v359_lexpr = add i64 %__v74_j, 32
  %__v360_lexpr = add i64 %__v74_j, 32
  %328 = getelementptr i8, i8* %__v70_c, i64 %__v360_lexpr
  %329 = load i32, i32* %__v103_inC
  call void @"__store[32]_secret_le"(i8* %328, i32 %329)
  %__v361_lexpr = add i64 %__v74_j, 16
  %__v362_lexpr = add i64 %__v74_j, 16
  %330 = getelementptr i8, i8* %__v70_c, i64 %__v362_lexpr
  %331 = load i32, i32* %__v104_inD
  call void @"__store[32]_secret_le"(i8* %330, i32 %331)
  br label %333

; <label>:332:                                    ; preds = %282
  br label %333

; <label>:333:                                    ; preds = %332, %295
  br i1 true, label %334, label %371

; <label>:334:                                    ; preds = %333
  %335 = load <4 x i32>, <4 x i32>* %__v75_diag0
  %336 = extractelement <4 x i32> %335, i32 0
  %__v109_inA = alloca i32
  store i32 %336, i32* %__v109_inA
  %337 = load <4 x i32>, <4 x i32>* %__v76_diag1
  %338 = extractelement <4 x i32> %337, i32 0
  %__v110_inB = alloca i32
  store i32 %338, i32* %__v110_inB
  %339 = load <4 x i32>, <4 x i32>* %__v77_diag2
  %340 = extractelement <4 x i32> %339, i32 0
  %__v111_inC = alloca i32
  store i32 %340, i32* %__v111_inC
  %341 = load <4 x i32>, <4 x i32>* %__v78_diag3
  %342 = extractelement <4 x i32> %341, i32 0
  %__v112_inD = alloca i32
  store i32 %342, i32* %__v112_inD
  %343 = load <4 x i32>, <4 x i32>* %__v75_diag0
  %344 = shufflevector <4 x i32> %343, <4 x i32> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  store <4 x i32> %344, <4 x i32>* %__v75_diag0
  %345 = load <4 x i32>, <4 x i32>* %__v76_diag1
  %346 = shufflevector <4 x i32> %345, <4 x i32> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  store <4 x i32> %346, <4 x i32>* %__v76_diag1
  %347 = load <4 x i32>, <4 x i32>* %__v77_diag2
  %348 = shufflevector <4 x i32> %347, <4 x i32> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  store <4 x i32> %348, <4 x i32>* %__v77_diag2
  %349 = load <4 x i32>, <4 x i32>* %__v78_diag3
  %350 = shufflevector <4 x i32> %349, <4 x i32> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  store <4 x i32> %350, <4 x i32>* %__v78_diag3
  %__v363_lexpr = add i64 %__v74_j, 20
  %__v364_lexpr = add i64 %__v74_j, 20
  %__v365_lexpr = add i64 %__v74_j, 20
  %351 = getelementptr i8, i8* %__v69_m, i64 %__v365_lexpr
  %__v285_load_le = call i32 @"__load[32]_secret_le"(i8* %351)
  %352 = load i32, i32* %__v109_inA
  %353 = xor i32 %352, %__v285_load_le
  store i32 %353, i32* %__v109_inA
  %__v366_lexpr = add i64 %__v74_j, 4
  %__v367_lexpr = add i64 %__v74_j, 4
  %__v368_lexpr = add i64 %__v74_j, 4
  %354 = getelementptr i8, i8* %__v69_m, i64 %__v368_lexpr
  %__v286_load_le = call i32 @"__load[32]_secret_le"(i8* %354)
  %355 = load i32, i32* %__v110_inB
  %356 = xor i32 %355, %__v286_load_le
  store i32 %356, i32* %__v110_inB
  %__v369_lexpr = add i64 %__v74_j, 52
  %__v370_lexpr = add i64 %__v74_j, 52
  %__v371_lexpr = add i64 %__v74_j, 52
  %357 = getelementptr i8, i8* %__v69_m, i64 %__v371_lexpr
  %__v287_load_le = call i32 @"__load[32]_secret_le"(i8* %357)
  %358 = load i32, i32* %__v111_inC
  %359 = xor i32 %358, %__v287_load_le
  store i32 %359, i32* %__v111_inC
  %__v372_lexpr = add i64 %__v74_j, 36
  %__v373_lexpr = add i64 %__v74_j, 36
  %__v374_lexpr = add i64 %__v74_j, 36
  %360 = getelementptr i8, i8* %__v69_m, i64 %__v374_lexpr
  %__v288_load_le = call i32 @"__load[32]_secret_le"(i8* %360)
  %361 = load i32, i32* %__v112_inD
  %362 = xor i32 %361, %__v288_load_le
  store i32 %362, i32* %__v112_inD
  %__v375_lexpr = add i64 %__v74_j, 20
  %__v376_lexpr = add i64 %__v74_j, 20
  %363 = getelementptr i8, i8* %__v70_c, i64 %__v376_lexpr
  %364 = load i32, i32* %__v109_inA
  call void @"__store[32]_secret_le"(i8* %363, i32 %364)
  %__v377_lexpr = add i64 %__v74_j, 4
  %__v378_lexpr = add i64 %__v74_j, 4
  %365 = getelementptr i8, i8* %__v70_c, i64 %__v378_lexpr
  %366 = load i32, i32* %__v110_inB
  call void @"__store[32]_secret_le"(i8* %365, i32 %366)
  %__v379_lexpr = add i64 %__v74_j, 52
  %__v380_lexpr = add i64 %__v74_j, 52
  %367 = getelementptr i8, i8* %__v70_c, i64 %__v380_lexpr
  %368 = load i32, i32* %__v111_inC
  call void @"__store[32]_secret_le"(i8* %367, i32 %368)
  %__v381_lexpr = add i64 %__v74_j, 36
  %__v382_lexpr = add i64 %__v74_j, 36
  %369 = getelementptr i8, i8* %__v70_c, i64 %__v382_lexpr
  %370 = load i32, i32* %__v112_inD
  call void @"__store[32]_secret_le"(i8* %369, i32 %370)
  br label %372

; <label>:371:                                    ; preds = %333
  br label %372

; <label>:372:                                    ; preds = %371, %334
  br i1 true, label %373, label %410

; <label>:373:                                    ; preds = %372
  %374 = load <4 x i32>, <4 x i32>* %__v75_diag0
  %375 = extractelement <4 x i32> %374, i32 0
  %__v117_inA = alloca i32
  store i32 %375, i32* %__v117_inA
  %376 = load <4 x i32>, <4 x i32>* %__v76_diag1
  %377 = extractelement <4 x i32> %376, i32 0
  %__v118_inB = alloca i32
  store i32 %377, i32* %__v118_inB
  %378 = load <4 x i32>, <4 x i32>* %__v77_diag2
  %379 = extractelement <4 x i32> %378, i32 0
  %__v119_inC = alloca i32
  store i32 %379, i32* %__v119_inC
  %380 = load <4 x i32>, <4 x i32>* %__v78_diag3
  %381 = extractelement <4 x i32> %380, i32 0
  %__v120_inD = alloca i32
  store i32 %381, i32* %__v120_inD
  %382 = load <4 x i32>, <4 x i32>* %__v75_diag0
  %383 = shufflevector <4 x i32> %382, <4 x i32> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  store <4 x i32> %383, <4 x i32>* %__v75_diag0
  %384 = load <4 x i32>, <4 x i32>* %__v76_diag1
  %385 = shufflevector <4 x i32> %384, <4 x i32> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  store <4 x i32> %385, <4 x i32>* %__v76_diag1
  %386 = load <4 x i32>, <4 x i32>* %__v77_diag2
  %387 = shufflevector <4 x i32> %386, <4 x i32> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  store <4 x i32> %387, <4 x i32>* %__v77_diag2
  %388 = load <4 x i32>, <4 x i32>* %__v78_diag3
  %389 = shufflevector <4 x i32> %388, <4 x i32> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  store <4 x i32> %389, <4 x i32>* %__v78_diag3
  %__v383_lexpr = add i64 %__v74_j, 40
  %__v384_lexpr = add i64 %__v74_j, 40
  %__v385_lexpr = add i64 %__v74_j, 40
  %390 = getelementptr i8, i8* %__v69_m, i64 %__v385_lexpr
  %__v289_load_le = call i32 @"__load[32]_secret_le"(i8* %390)
  %391 = load i32, i32* %__v117_inA
  %392 = xor i32 %391, %__v289_load_le
  store i32 %392, i32* %__v117_inA
  %__v386_lexpr = add i64 %__v74_j, 24
  %__v387_lexpr = add i64 %__v74_j, 24
  %__v388_lexpr = add i64 %__v74_j, 24
  %393 = getelementptr i8, i8* %__v69_m, i64 %__v388_lexpr
  %__v290_load_le = call i32 @"__load[32]_secret_le"(i8* %393)
  %394 = load i32, i32* %__v118_inB
  %395 = xor i32 %394, %__v290_load_le
  store i32 %395, i32* %__v118_inB
  %__v389_lexpr = add i64 %__v74_j, 8
  %__v390_lexpr = add i64 %__v74_j, 8
  %__v391_lexpr = add i64 %__v74_j, 8
  %396 = getelementptr i8, i8* %__v69_m, i64 %__v391_lexpr
  %__v291_load_le = call i32 @"__load[32]_secret_le"(i8* %396)
  %397 = load i32, i32* %__v119_inC
  %398 = xor i32 %397, %__v291_load_le
  store i32 %398, i32* %__v119_inC
  %__v392_lexpr = add i64 %__v74_j, 56
  %__v393_lexpr = add i64 %__v74_j, 56
  %__v394_lexpr = add i64 %__v74_j, 56
  %399 = getelementptr i8, i8* %__v69_m, i64 %__v394_lexpr
  %__v292_load_le = call i32 @"__load[32]_secret_le"(i8* %399)
  %400 = load i32, i32* %__v120_inD
  %401 = xor i32 %400, %__v292_load_le
  store i32 %401, i32* %__v120_inD
  %__v395_lexpr = add i64 %__v74_j, 40
  %__v396_lexpr = add i64 %__v74_j, 40
  %402 = getelementptr i8, i8* %__v70_c, i64 %__v396_lexpr
  %403 = load i32, i32* %__v117_inA
  call void @"__store[32]_secret_le"(i8* %402, i32 %403)
  %__v397_lexpr = add i64 %__v74_j, 24
  %__v398_lexpr = add i64 %__v74_j, 24
  %404 = getelementptr i8, i8* %__v70_c, i64 %__v398_lexpr
  %405 = load i32, i32* %__v118_inB
  call void @"__store[32]_secret_le"(i8* %404, i32 %405)
  %__v399_lexpr = add i64 %__v74_j, 8
  %__v400_lexpr = add i64 %__v74_j, 8
  %406 = getelementptr i8, i8* %__v70_c, i64 %__v400_lexpr
  %407 = load i32, i32* %__v119_inC
  call void @"__store[32]_secret_le"(i8* %406, i32 %407)
  %__v401_lexpr = add i64 %__v74_j, 56
  %__v402_lexpr = add i64 %__v74_j, 56
  %408 = getelementptr i8, i8* %__v70_c, i64 %__v402_lexpr
  %409 = load i32, i32* %__v120_inD
  call void @"__store[32]_secret_le"(i8* %408, i32 %409)
  br label %411

; <label>:410:                                    ; preds = %372
  br label %411

; <label>:411:                                    ; preds = %410, %373
  br i1 true, label %412, label %449

; <label>:412:                                    ; preds = %411
  %413 = load <4 x i32>, <4 x i32>* %__v75_diag0
  %414 = extractelement <4 x i32> %413, i32 0
  %__v125_inA = alloca i32
  store i32 %414, i32* %__v125_inA
  %415 = load <4 x i32>, <4 x i32>* %__v76_diag1
  %416 = extractelement <4 x i32> %415, i32 0
  %__v126_inB = alloca i32
  store i32 %416, i32* %__v126_inB
  %417 = load <4 x i32>, <4 x i32>* %__v77_diag2
  %418 = extractelement <4 x i32> %417, i32 0
  %__v127_inC = alloca i32
  store i32 %418, i32* %__v127_inC
  %419 = load <4 x i32>, <4 x i32>* %__v78_diag3
  %420 = extractelement <4 x i32> %419, i32 0
  %__v128_inD = alloca i32
  store i32 %420, i32* %__v128_inD
  %421 = load <4 x i32>, <4 x i32>* %__v75_diag0
  %422 = shufflevector <4 x i32> %421, <4 x i32> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  store <4 x i32> %422, <4 x i32>* %__v75_diag0
  %423 = load <4 x i32>, <4 x i32>* %__v76_diag1
  %424 = shufflevector <4 x i32> %423, <4 x i32> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  store <4 x i32> %424, <4 x i32>* %__v76_diag1
  %425 = load <4 x i32>, <4 x i32>* %__v77_diag2
  %426 = shufflevector <4 x i32> %425, <4 x i32> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  store <4 x i32> %426, <4 x i32>* %__v77_diag2
  %427 = load <4 x i32>, <4 x i32>* %__v78_diag3
  %428 = shufflevector <4 x i32> %427, <4 x i32> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  store <4 x i32> %428, <4 x i32>* %__v78_diag3
  %__v403_lexpr = add i64 %__v74_j, 60
  %__v404_lexpr = add i64 %__v74_j, 60
  %__v405_lexpr = add i64 %__v74_j, 60
  %429 = getelementptr i8, i8* %__v69_m, i64 %__v405_lexpr
  %__v293_load_le = call i32 @"__load[32]_secret_le"(i8* %429)
  %430 = load i32, i32* %__v125_inA
  %431 = xor i32 %430, %__v293_load_le
  store i32 %431, i32* %__v125_inA
  %__v406_lexpr = add i64 %__v74_j, 44
  %__v407_lexpr = add i64 %__v74_j, 44
  %__v408_lexpr = add i64 %__v74_j, 44
  %432 = getelementptr i8, i8* %__v69_m, i64 %__v408_lexpr
  %__v294_load_le = call i32 @"__load[32]_secret_le"(i8* %432)
  %433 = load i32, i32* %__v126_inB
  %434 = xor i32 %433, %__v294_load_le
  store i32 %434, i32* %__v126_inB
  %__v409_lexpr = add i64 %__v74_j, 28
  %__v410_lexpr = add i64 %__v74_j, 28
  %__v411_lexpr = add i64 %__v74_j, 28
  %435 = getelementptr i8, i8* %__v69_m, i64 %__v411_lexpr
  %__v295_load_le = call i32 @"__load[32]_secret_le"(i8* %435)
  %436 = load i32, i32* %__v127_inC
  %437 = xor i32 %436, %__v295_load_le
  store i32 %437, i32* %__v127_inC
  %__v412_lexpr = add i64 %__v74_j, 12
  %__v413_lexpr = add i64 %__v74_j, 12
  %__v414_lexpr = add i64 %__v74_j, 12
  %438 = getelementptr i8, i8* %__v69_m, i64 %__v414_lexpr
  %__v296_load_le = call i32 @"__load[32]_secret_le"(i8* %438)
  %439 = load i32, i32* %__v128_inD
  %440 = xor i32 %439, %__v296_load_le
  store i32 %440, i32* %__v128_inD
  %__v415_lexpr = add i64 %__v74_j, 60
  %__v416_lexpr = add i64 %__v74_j, 60
  %441 = getelementptr i8, i8* %__v70_c, i64 %__v416_lexpr
  %442 = load i32, i32* %__v125_inA
  call void @"__store[32]_secret_le"(i8* %441, i32 %442)
  %__v417_lexpr = add i64 %__v74_j, 44
  %__v418_lexpr = add i64 %__v74_j, 44
  %443 = getelementptr i8, i8* %__v70_c, i64 %__v418_lexpr
  %444 = load i32, i32* %__v126_inB
  call void @"__store[32]_secret_le"(i8* %443, i32 %444)
  %__v419_lexpr = add i64 %__v74_j, 28
  %__v420_lexpr = add i64 %__v74_j, 28
  %445 = getelementptr i8, i8* %__v70_c, i64 %__v420_lexpr
  %446 = load i32, i32* %__v127_inC
  call void @"__store[32]_secret_le"(i8* %445, i32 %446)
  %__v421_lexpr = add i64 %__v74_j, 12
  %__v422_lexpr = add i64 %__v74_j, 12
  %447 = getelementptr i8, i8* %__v70_c, i64 %__v422_lexpr
  %448 = load i32, i32* %__v128_inD
  call void @"__store[32]_secret_le"(i8* %447, i32 %448)
  br label %450

; <label>:449:                                    ; preds = %411
  br label %450

; <label>:450:                                    ; preds = %449, %412
  %451 = getelementptr i32, i32* %__v68_x, i64 8
  %452 = load i32, i32* %451
  %__v129_in8 = alloca i32
  store i32 %452, i32* %__v129_in8
  %453 = getelementptr i32, i32* %__v68_x, i64 13
  %454 = load i32, i32* %453
  %__v130_in9 = alloca i32
  store i32 %454, i32* %__v130_in9
  %455 = load i32, i32* %__v129_in8
  %456 = add i32 %455, 1
  store i32 %456, i32* %__v129_in8
  %457 = load i32, i32* %__v129_in8
  %__m1 = icmp eq i32 %457, 0
  %458 = load i32, i32* %__v130_in9
  %459 = add i32 %458, 1
  %460 = and i1 true, %__m1
  %461 = load i32, i32* %__v130_in9
  %462 = call i32 @fact.cmov.sel.i32(i1 %460, i32 %459, i32 %461)
  store i32 %462, i32* %__v130_in9
  %__m2 = xor i1 %__m1, true
  %463 = getelementptr i32, i32* %__v68_x, i64 8
  %464 = load i32, i32* %__v129_in8
  store i32 %464, i32* %463
  %465 = getelementptr i32, i32* %__v68_x, i64 13
  %466 = load i32, i32* %__v130_in9
  store i32 %466, i32* %465
  br label %8
}

; Function Attrs: alwaysinline
define internal i32 @fact.cmov.sel.i32(i1 %cond, i32 %x, i32 %y) #0 {
entry:
  %0 = select i1 %cond, i32 %x, i32 %y
  ret i32 %0
}

define internal void @u0(i32* %__v64_x, i8* %__v65_m, i64 %__v322___v65_m_len, i8* %__v66_c, i64 %__v323___v66_c_len) {
entry:
  %__rctx = alloca i1
  store i1 true, i1* %__rctx
  %__v67_processed = call i64 @_u1(i32* %__v64_x, i8* %__v65_m, i64 %__v322___v65_m_len, i8* %__v66_c, i64 %__v323___v66_c_len)
  %__v335_lexpr = sub i64 %__v322___v65_m_len, %__v67_processed
  %__v336_lexpr = sub i64 %__v322___v65_m_len, %__v67_processed
  %__v337_lexpr = sub i64 %__v323___v66_c_len, %__v67_processed
  %__v338_lexpr = sub i64 %__v323___v66_c_len, %__v67_processed
  %0 = getelementptr i8, i8* %__v65_m, i64 %__v67_processed
  %1 = getelementptr i8, i8* %__v66_c, i64 %__v67_processed
  call void @_u0(i32* %__v64_x, i8* %0, i64 %__v336_lexpr, i8* %1, i64 %__v338_lexpr)
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
  %__v273_load_le = call i32 @"__load[32]_secret_le"(i8* %0)
  %1 = getelementptr i32, i32* %__v58_ctx, i64 6
  store i32 %__v273_load_le, i32* %1
  %2 = getelementptr i8, i8* %__v59_iv, i64 4
  %__v274_load_le = call i32 @"__load[32]_secret_le"(i8* %2)
  %3 = getelementptr i32, i32* %__v58_ctx, i64 11
  store i32 %__v274_load_le, i32* %3
  %4 = getelementptr i8, i8* %__v60_counter, i64 0
  %__v275_load_le = call i32 @"__load[32]_public_le"(i8* %4)
  %5 = getelementptr i32, i32* %__v58_ctx, i64 8
  store i32 %__v275_load_le, i32* %5
  %6 = getelementptr i8, i8* %__v60_counter, i64 4
  %__v276_load_le = call i32 @"__load[32]_public_le"(i8* %6)
  %7 = getelementptr i32, i32* %__v58_ctx, i64 13
  store i32 %__v276_load_le, i32* %7
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
  %__v265_load_le = call i32 @"__load[32]_secret_le"(i8* %16)
  %17 = getelementptr i32, i32* %__v55_ctx, i64 5
  store i32 %__v265_load_le, i32* %17
  %18 = getelementptr i8, i8* %__v56_k, i64 4
  %__v266_load_le = call i32 @"__load[32]_secret_le"(i8* %18)
  %19 = getelementptr i32, i32* %__v55_ctx, i64 10
  store i32 %__v266_load_le, i32* %19
  %20 = getelementptr i8, i8* %__v56_k, i64 8
  %__v267_load_le = call i32 @"__load[32]_secret_le"(i8* %20)
  %21 = getelementptr i32, i32* %__v55_ctx, i64 15
  store i32 %__v267_load_le, i32* %21
  %22 = getelementptr i8, i8* %__v56_k, i64 12
  %__v268_load_le = call i32 @"__load[32]_secret_le"(i8* %22)
  %23 = getelementptr i32, i32* %__v55_ctx, i64 12
  store i32 %__v268_load_le, i32* %23
  %24 = getelementptr i8, i8* %__v56_k, i64 16
  %__v269_load_le = call i32 @"__load[32]_secret_le"(i8* %24)
  %25 = getelementptr i32, i32* %__v55_ctx, i64 7
  store i32 %__v269_load_le, i32* %25
  %26 = getelementptr i8, i8* %__v56_k, i64 20
  %__v270_load_le = call i32 @"__load[32]_secret_le"(i8* %26)
  %27 = getelementptr i32, i32* %__v55_ctx, i64 4
  store i32 %__v270_load_le, i32* %27
  %28 = getelementptr i8, i8* %__v56_k, i64 24
  %__v271_load_le = call i32 @"__load[32]_secret_le"(i8* %28)
  %29 = getelementptr i32, i32* %__v55_ctx, i64 9
  store i32 %__v271_load_le, i32* %29
  %30 = getelementptr i8, i8* %__v56_k, i64 28
  %__v272_load_le = call i32 @"__load[32]_secret_le"(i8* %30)
  %31 = getelementptr i32, i32* %__v55_ctx, i64 14
  store i32 %__v272_load_le, i32* %31
  %32 = getelementptr i32, i32* %__v55_ctx, i64 0
  store i32 1634760805, i32* %32
  %33 = getelementptr i32, i32* %__v55_ctx, i64 1
  store i32 857760878, i32* %33
  %34 = getelementptr i32, i32* %__v55_ctx, i64 2
  store i32 2036477234, i32* %34
  %35 = getelementptr i32, i32* %__v55_ctx, i64 3
  store i32 1797285236, i32* %35
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
  call void @fact.memset.i8(i8* %__v53_ic_bytes, i8 0, i64 8)
  call void @"__store[64]_public_le"(i8* %__v53_ic_bytes, i64 %__v51_ic_val)
  %__v54_ctx = alloca i32, i64 16
  call void @fact.memset.i32(i32* %__v54_ctx, i8 0, i64 16)
  call void @_salsa_keysetup(i32* %__v54_ctx, i8* %__v52_k)
  call void @_salsa_ivsetup(i32* %__v54_ctx, i8* %__v50_n, i8* %__v53_ic_bytes)
  call void @_salsa20_encrypt_bytes(i32* %__v54_ctx, i8* %__v49_m, i64 %__v319___v49_m_len, i8* %__v48_c, i64 %__v318___v48_c_len)
  call void @"__smemzero[32]_secret"(i32* %__v54_ctx, i64 16)
  ret i32 0
}

; Function Attrs: alwaysinline
define internal void @fact.memset.i32(i32* %dst, i8 %n, i64 %len) #0 {
entry:
  %0 = bitcast i32* %dst to i8*
  %1 = mul i64 %len, 4
  call void @llvm.memset.p0i8.i64(i8* %0, i8 %n, i64 %1, i32 4, i1 false)
  ret void
}

define internal i32 @_crypto_stream_xsalsa20_xor_ic(i8* %__v40_c, i64 %__v316___v40_c_len, i8* %__v41_m, i64 %__v317___v41_m_len, i8* %__v42_n, i64 %__v43_ic, i8* %__v44_k) {
entry:
  %__rval = alloca i32
  store i32 0, i32* %__rval
  %__rctx = alloca i1
  store i1 true, i1* %__rctx
  %__v45_subkey = alloca i8, i64 32
  call void @fact.memset.i8(i8* %__v45_subkey, i8 0, i64 32)
  %0 = getelementptr i8, i8* %__v42_n, i64 0
  call void @_crypto_core_hsalsa20(i8* %__v45_subkey, i8* %0, i8* %__v44_k)
  %__v46_tmp = getelementptr i8, i8* %__v42_n, i64 16
  %__v47_ret = call i32 @_crypto_stream_salsa20_xor_ic(i8* %__v40_c, i64 %__v316___v40_c_len, i8* %__v41_m, i64 %__v317___v41_m_len, i8* %__v46_tmp, i64 %__v43_ic, i8* %__v45_subkey)
  call void @"__smemzero[8]_secret"(i8* %__v45_subkey, i64 32)
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
  %__v261_load_le = call i32 @"__load[32]_secret_le"(i8* %0)
  %1 = getelementptr i32, i32* %__v22_ctx, i64 6
  store i32 %__v261_load_le, i32* %1
  %2 = getelementptr i8, i8* %__v23_iv, i64 4
  %__v262_load_le = call i32 @"__load[32]_secret_le"(i8* %2)
  %3 = getelementptr i32, i32* %__v22_ctx, i64 11
  store i32 %__v262_load_le, i32* %3
  %4 = getelementptr i32, i32* %__v22_ctx, i64 8
  store i32 0, i32* %4
  %5 = getelementptr i32, i32* %__v22_ctx, i64 13
  store i32 0, i32* %5
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
  call void @fact.memset.i32(i32* %__v21_ctx, i8 0, i64 16)
  call void @_salsa_keysetup(i32* %__v21_ctx, i8* %__v20_k)
  call void @_salsa_ivsetup_null(i32* %__v21_ctx, i8* %__v19_n)
  call void @"__memzero[8]_secret"(i8* %__v18_c, i64 %__v309___v18_c_len)
  call void @_salsa20_encrypt_bytes(i32* %__v21_ctx, i8* %__v18_c, i64 %__v309___v18_c_len, i8* %__v18_c, i64 %__v309___v18_c_len)
  call void @"__smemzero[32]_secret"(i32* %__v21_ctx, i64 16)
  ret i32 0
}

define internal i32 @_crypto_stream_xsalsa20(i8* %__v13_c, i64 %__v308___v13_c_len, i8* %__v14_n, i8* %__v15_k) {
entry:
  %__rval = alloca i32
  store i32 0, i32* %__rval
  %__rctx = alloca i1
  store i1 true, i1* %__rctx
  %__v16_subkey = alloca i8, i64 32
  call void @fact.memset.i8(i8* %__v16_subkey, i8 0, i64 32)
  %0 = getelementptr i8, i8* %__v14_n, i64 0
  call void @_crypto_core_hsalsa20(i8* %__v16_subkey, i8* %0, i8* %__v15_k)
  %1 = getelementptr i8, i8* %__v14_n, i64 16
  %__v17_ret = call i32 @_crypto_stream_salsa20(i8* %__v13_c, i64 %__v308___v13_c_len, i8* %1, i8* %__v16_subkey)
  call void @"__smemzero[8]_secret"(i8* %__v16_subkey, i64 32)
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
  call void @fact.memset.i8(i8* %__v9_subkey, i8 0, i64 32)
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

attributes #0 = { alwaysinline }
attributes #1 = { argmemonly nounwind }
