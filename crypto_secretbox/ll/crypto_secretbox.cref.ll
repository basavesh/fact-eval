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

; Function Attrs: alwaysinline
define internal i32 @"__load[32]_secret_le"(i8* %src) #0 {
entry:
  %0 = bitcast i8* %src to i32*
  %1 = load i32, i32* %0
  ret i32 %1
}

; Function Attrs: alwaysinline
define internal void @"__store[32]_secret_le"(i8* %dst, i32 %value) #0 {
entry:
  %0 = bitcast i8* %dst to i32*
  store i32 %value, i32* %0
  ret void
}

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
  %"__v271___load[32]_secret_le" = call i32 @"__load[32]_secret_le"(i8* %0)
  %__v185_x1 = alloca i32
  store i32 %"__v271___load[32]_secret_le", i32* %__v185_x1
  %1 = getelementptr i8, i8* %__v180_k, i64 4
  %"__v272___load[32]_secret_le" = call i32 @"__load[32]_secret_le"(i8* %1)
  %__v186_x2 = alloca i32
  store i32 %"__v272___load[32]_secret_le", i32* %__v186_x2
  %2 = getelementptr i8, i8* %__v180_k, i64 8
  %"__v273___load[32]_secret_le" = call i32 @"__load[32]_secret_le"(i8* %2)
  %__v187_x3 = alloca i32
  store i32 %"__v273___load[32]_secret_le", i32* %__v187_x3
  %3 = getelementptr i8, i8* %__v180_k, i64 12
  %"__v274___load[32]_secret_le" = call i32 @"__load[32]_secret_le"(i8* %3)
  %__v188_x4 = alloca i32
  store i32 %"__v274___load[32]_secret_le", i32* %__v188_x4
  %4 = getelementptr i8, i8* %__v180_k, i64 16
  %"__v275___load[32]_secret_le" = call i32 @"__load[32]_secret_le"(i8* %4)
  %__v189_x11 = alloca i32
  store i32 %"__v275___load[32]_secret_le", i32* %__v189_x11
  %5 = getelementptr i8, i8* %__v180_k, i64 20
  %"__v276___load[32]_secret_le" = call i32 @"__load[32]_secret_le"(i8* %5)
  %__v190_x12 = alloca i32
  store i32 %"__v276___load[32]_secret_le", i32* %__v190_x12
  %6 = getelementptr i8, i8* %__v180_k, i64 24
  %"__v277___load[32]_secret_le" = call i32 @"__load[32]_secret_le"(i8* %6)
  %__v191_x13 = alloca i32
  store i32 %"__v277___load[32]_secret_le", i32* %__v191_x13
  %7 = getelementptr i8, i8* %__v180_k, i64 28
  %"__v278___load[32]_secret_le" = call i32 @"__load[32]_secret_le"(i8* %7)
  %__v192_x14 = alloca i32
  store i32 %"__v278___load[32]_secret_le", i32* %__v192_x14
  %8 = getelementptr i8, i8* %__v179_input, i64 0
  %"__v279___load[32]_secret_le" = call i32 @"__load[32]_secret_le"(i8* %8)
  %__v193_x6 = alloca i32
  store i32 %"__v279___load[32]_secret_le", i32* %__v193_x6
  %9 = getelementptr i8, i8* %__v179_input, i64 4
  %"__v280___load[32]_secret_le" = call i32 @"__load[32]_secret_le"(i8* %9)
  %__v194_x7 = alloca i32
  store i32 %"__v280___load[32]_secret_le", i32* %__v194_x7
  %10 = getelementptr i8, i8* %__v179_input, i64 8
  %"__v281___load[32]_secret_le" = call i32 @"__load[32]_secret_le"(i8* %10)
  %__v195_x8 = alloca i32
  store i32 %"__v281___load[32]_secret_le", i32* %__v195_x8
  %11 = getelementptr i8, i8* %__v179_input, i64 12
  %"__v282___load[32]_secret_le" = call i32 @"__load[32]_secret_le"(i8* %11)
  %__v196_x9 = alloca i32
  store i32 %"__v282___load[32]_secret_le", i32* %__v196_x9
  br label %12

; <label>:12:                                     ; preds = %207, %entry
  %__v197_i = phi i32 [ 0, %entry ], [ %208, %207 ]
  %13 = icmp ult i32 %__v197_i, 10
  br i1 %13, label %14, label %209

; <label>:14:                                     ; preds = %12
  %15 = load i32, i32* %__v188_x4
  %16 = load i32, i32* %__v181_x0
  %17 = load i32, i32* %__v190_x12
  %18 = add i32 %16, %17
  %19 = call i32 @fact.rotl.i32(i32 %18, i32 7)
  %20 = xor i32 %15, %19
  store i32 %20, i32* %__v188_x4
  %21 = load i32, i32* %__v195_x8
  %22 = load i32, i32* %__v188_x4
  %23 = load i32, i32* %__v181_x0
  %24 = add i32 %22, %23
  %25 = call i32 @fact.rotl.i32(i32 %24, i32 9)
  %26 = xor i32 %21, %25
  store i32 %26, i32* %__v195_x8
  %27 = load i32, i32* %__v190_x12
  %28 = load i32, i32* %__v195_x8
  %29 = load i32, i32* %__v188_x4
  %30 = add i32 %28, %29
  %31 = call i32 @fact.rotl.i32(i32 %30, i32 13)
  %32 = xor i32 %27, %31
  store i32 %32, i32* %__v190_x12
  %33 = load i32, i32* %__v181_x0
  %34 = load i32, i32* %__v190_x12
  %35 = load i32, i32* %__v195_x8
  %36 = add i32 %34, %35
  %37 = call i32 @fact.rotl.i32(i32 %36, i32 18)
  %38 = xor i32 %33, %37
  store i32 %38, i32* %__v181_x0
  %39 = load i32, i32* %__v196_x9
  %40 = load i32, i32* %__v182_x5
  %41 = load i32, i32* %__v185_x1
  %42 = add i32 %40, %41
  %43 = call i32 @fact.rotl.i32(i32 %42, i32 7)
  %44 = xor i32 %39, %43
  store i32 %44, i32* %__v196_x9
  %45 = load i32, i32* %__v191_x13
  %46 = load i32, i32* %__v196_x9
  %47 = load i32, i32* %__v182_x5
  %48 = add i32 %46, %47
  %49 = call i32 @fact.rotl.i32(i32 %48, i32 9)
  %50 = xor i32 %45, %49
  store i32 %50, i32* %__v191_x13
  %51 = load i32, i32* %__v185_x1
  %52 = load i32, i32* %__v191_x13
  %53 = load i32, i32* %__v196_x9
  %54 = add i32 %52, %53
  %55 = call i32 @fact.rotl.i32(i32 %54, i32 13)
  %56 = xor i32 %51, %55
  store i32 %56, i32* %__v185_x1
  %57 = load i32, i32* %__v182_x5
  %58 = load i32, i32* %__v185_x1
  %59 = load i32, i32* %__v191_x13
  %60 = add i32 %58, %59
  %61 = call i32 @fact.rotl.i32(i32 %60, i32 18)
  %62 = xor i32 %57, %61
  store i32 %62, i32* %__v182_x5
  %63 = load i32, i32* %__v192_x14
  %64 = load i32, i32* %__v183_x10
  %65 = load i32, i32* %__v193_x6
  %66 = add i32 %64, %65
  %67 = call i32 @fact.rotl.i32(i32 %66, i32 7)
  %68 = xor i32 %63, %67
  store i32 %68, i32* %__v192_x14
  %69 = load i32, i32* %__v186_x2
  %70 = load i32, i32* %__v192_x14
  %71 = load i32, i32* %__v183_x10
  %72 = add i32 %70, %71
  %73 = call i32 @fact.rotl.i32(i32 %72, i32 9)
  %74 = xor i32 %69, %73
  store i32 %74, i32* %__v186_x2
  %75 = load i32, i32* %__v193_x6
  %76 = load i32, i32* %__v186_x2
  %77 = load i32, i32* %__v192_x14
  %78 = add i32 %76, %77
  %79 = call i32 @fact.rotl.i32(i32 %78, i32 13)
  %80 = xor i32 %75, %79
  store i32 %80, i32* %__v193_x6
  %81 = load i32, i32* %__v183_x10
  %82 = load i32, i32* %__v193_x6
  %83 = load i32, i32* %__v186_x2
  %84 = add i32 %82, %83
  %85 = call i32 @fact.rotl.i32(i32 %84, i32 18)
  %86 = xor i32 %81, %85
  store i32 %86, i32* %__v183_x10
  %87 = load i32, i32* %__v187_x3
  %88 = load i32, i32* %__v184_x15
  %89 = load i32, i32* %__v189_x11
  %90 = add i32 %88, %89
  %91 = call i32 @fact.rotl.i32(i32 %90, i32 7)
  %92 = xor i32 %87, %91
  store i32 %92, i32* %__v187_x3
  %93 = load i32, i32* %__v194_x7
  %94 = load i32, i32* %__v187_x3
  %95 = load i32, i32* %__v184_x15
  %96 = add i32 %94, %95
  %97 = call i32 @fact.rotl.i32(i32 %96, i32 9)
  %98 = xor i32 %93, %97
  store i32 %98, i32* %__v194_x7
  %99 = load i32, i32* %__v189_x11
  %100 = load i32, i32* %__v194_x7
  %101 = load i32, i32* %__v187_x3
  %102 = add i32 %100, %101
  %103 = call i32 @fact.rotl.i32(i32 %102, i32 13)
  %104 = xor i32 %99, %103
  store i32 %104, i32* %__v189_x11
  %105 = load i32, i32* %__v184_x15
  %106 = load i32, i32* %__v189_x11
  %107 = load i32, i32* %__v194_x7
  %108 = add i32 %106, %107
  %109 = call i32 @fact.rotl.i32(i32 %108, i32 18)
  %110 = xor i32 %105, %109
  store i32 %110, i32* %__v184_x15
  %111 = load i32, i32* %__v185_x1
  %112 = load i32, i32* %__v181_x0
  %113 = load i32, i32* %__v187_x3
  %114 = add i32 %112, %113
  %115 = call i32 @fact.rotl.i32(i32 %114, i32 7)
  %116 = xor i32 %111, %115
  store i32 %116, i32* %__v185_x1
  %117 = load i32, i32* %__v186_x2
  %118 = load i32, i32* %__v185_x1
  %119 = load i32, i32* %__v181_x0
  %120 = add i32 %118, %119
  %121 = call i32 @fact.rotl.i32(i32 %120, i32 9)
  %122 = xor i32 %117, %121
  store i32 %122, i32* %__v186_x2
  %123 = load i32, i32* %__v187_x3
  %124 = load i32, i32* %__v186_x2
  %125 = load i32, i32* %__v185_x1
  %126 = add i32 %124, %125
  %127 = call i32 @fact.rotl.i32(i32 %126, i32 13)
  %128 = xor i32 %123, %127
  store i32 %128, i32* %__v187_x3
  %129 = load i32, i32* %__v181_x0
  %130 = load i32, i32* %__v187_x3
  %131 = load i32, i32* %__v186_x2
  %132 = add i32 %130, %131
  %133 = call i32 @fact.rotl.i32(i32 %132, i32 18)
  %134 = xor i32 %129, %133
  store i32 %134, i32* %__v181_x0
  %135 = load i32, i32* %__v193_x6
  %136 = load i32, i32* %__v182_x5
  %137 = load i32, i32* %__v188_x4
  %138 = add i32 %136, %137
  %139 = call i32 @fact.rotl.i32(i32 %138, i32 7)
  %140 = xor i32 %135, %139
  store i32 %140, i32* %__v193_x6
  %141 = load i32, i32* %__v194_x7
  %142 = load i32, i32* %__v193_x6
  %143 = load i32, i32* %__v182_x5
  %144 = add i32 %142, %143
  %145 = call i32 @fact.rotl.i32(i32 %144, i32 9)
  %146 = xor i32 %141, %145
  store i32 %146, i32* %__v194_x7
  %147 = load i32, i32* %__v188_x4
  %148 = load i32, i32* %__v194_x7
  %149 = load i32, i32* %__v193_x6
  %150 = add i32 %148, %149
  %151 = call i32 @fact.rotl.i32(i32 %150, i32 13)
  %152 = xor i32 %147, %151
  store i32 %152, i32* %__v188_x4
  %153 = load i32, i32* %__v182_x5
  %154 = load i32, i32* %__v188_x4
  %155 = load i32, i32* %__v194_x7
  %156 = add i32 %154, %155
  %157 = call i32 @fact.rotl.i32(i32 %156, i32 18)
  %158 = xor i32 %153, %157
  store i32 %158, i32* %__v182_x5
  %159 = load i32, i32* %__v189_x11
  %160 = load i32, i32* %__v183_x10
  %161 = load i32, i32* %__v196_x9
  %162 = add i32 %160, %161
  %163 = call i32 @fact.rotl.i32(i32 %162, i32 7)
  %164 = xor i32 %159, %163
  store i32 %164, i32* %__v189_x11
  %165 = load i32, i32* %__v195_x8
  %166 = load i32, i32* %__v189_x11
  %167 = load i32, i32* %__v183_x10
  %168 = add i32 %166, %167
  %169 = call i32 @fact.rotl.i32(i32 %168, i32 9)
  %170 = xor i32 %165, %169
  store i32 %170, i32* %__v195_x8
  %171 = load i32, i32* %__v196_x9
  %172 = load i32, i32* %__v195_x8
  %173 = load i32, i32* %__v189_x11
  %174 = add i32 %172, %173
  %175 = call i32 @fact.rotl.i32(i32 %174, i32 13)
  %176 = xor i32 %171, %175
  store i32 %176, i32* %__v196_x9
  %177 = load i32, i32* %__v183_x10
  %178 = load i32, i32* %__v196_x9
  %179 = load i32, i32* %__v195_x8
  %180 = add i32 %178, %179
  %181 = call i32 @fact.rotl.i32(i32 %180, i32 18)
  %182 = xor i32 %177, %181
  store i32 %182, i32* %__v183_x10
  %183 = load i32, i32* %__v190_x12
  %184 = load i32, i32* %__v184_x15
  %185 = load i32, i32* %__v192_x14
  %186 = add i32 %184, %185
  %187 = call i32 @fact.rotl.i32(i32 %186, i32 7)
  %188 = xor i32 %183, %187
  store i32 %188, i32* %__v190_x12
  %189 = load i32, i32* %__v191_x13
  %190 = load i32, i32* %__v190_x12
  %191 = load i32, i32* %__v184_x15
  %192 = add i32 %190, %191
  %193 = call i32 @fact.rotl.i32(i32 %192, i32 9)
  %194 = xor i32 %189, %193
  store i32 %194, i32* %__v191_x13
  %195 = load i32, i32* %__v192_x14
  %196 = load i32, i32* %__v191_x13
  %197 = load i32, i32* %__v190_x12
  %198 = add i32 %196, %197
  %199 = call i32 @fact.rotl.i32(i32 %198, i32 13)
  %200 = xor i32 %195, %199
  store i32 %200, i32* %__v192_x14
  %201 = load i32, i32* %__v184_x15
  %202 = load i32, i32* %__v192_x14
  %203 = load i32, i32* %__v191_x13
  %204 = add i32 %202, %203
  %205 = call i32 @fact.rotl.i32(i32 %204, i32 18)
  %206 = xor i32 %201, %205
  store i32 %206, i32* %__v184_x15
  br label %207

; <label>:207:                                    ; preds = %14
  %208 = add i32 %__v197_i, 1
  br label %12

; <label>:209:                                    ; preds = %12
  %210 = getelementptr i8, i8* %__v178_out, i64 0
  %211 = load i32, i32* %__v181_x0
  call void @"__store[32]_secret_le"(i8* %210, i32 %211)
  %212 = getelementptr i8, i8* %__v178_out, i64 4
  %213 = load i32, i32* %__v182_x5
  call void @"__store[32]_secret_le"(i8* %212, i32 %213)
  %214 = getelementptr i8, i8* %__v178_out, i64 8
  %215 = load i32, i32* %__v183_x10
  call void @"__store[32]_secret_le"(i8* %214, i32 %215)
  %216 = getelementptr i8, i8* %__v178_out, i64 12
  %217 = load i32, i32* %__v184_x15
  call void @"__store[32]_secret_le"(i8* %216, i32 %217)
  %218 = getelementptr i8, i8* %__v178_out, i64 16
  %219 = load i32, i32* %__v193_x6
  call void @"__store[32]_secret_le"(i8* %218, i32 %219)
  %220 = getelementptr i8, i8* %__v178_out, i64 20
  %221 = load i32, i32* %__v194_x7
  call void @"__store[32]_secret_le"(i8* %220, i32 %221)
  %222 = getelementptr i8, i8* %__v178_out, i64 24
  %223 = load i32, i32* %__v195_x8
  call void @"__store[32]_secret_le"(i8* %222, i32 %223)
  %224 = getelementptr i8, i8* %__v178_out, i64 28
  %225 = load i32, i32* %__v196_x9
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
  %"__v259___load[32]_secret_le" = call i32 @"__load[32]_secret_le"(i8* %0)
  %__v153_x1 = alloca i32
  store i32 %"__v259___load[32]_secret_le", i32* %__v153_x1
  %1 = getelementptr i8, i8* %__v144_k, i64 4
  %"__v260___load[32]_secret_le" = call i32 @"__load[32]_secret_le"(i8* %1)
  %__v154_x2 = alloca i32
  store i32 %"__v260___load[32]_secret_le", i32* %__v154_x2
  %2 = getelementptr i8, i8* %__v144_k, i64 8
  %"__v261___load[32]_secret_le" = call i32 @"__load[32]_secret_le"(i8* %2)
  %__v155_x3 = alloca i32
  store i32 %"__v261___load[32]_secret_le", i32* %__v155_x3
  %3 = getelementptr i8, i8* %__v144_k, i64 12
  %"__v262___load[32]_secret_le" = call i32 @"__load[32]_secret_le"(i8* %3)
  %__v156_x4 = alloca i32
  store i32 %"__v262___load[32]_secret_le", i32* %__v156_x4
  %4 = getelementptr i8, i8* %__v144_k, i64 16
  %"__v263___load[32]_secret_le" = call i32 @"__load[32]_secret_le"(i8* %4)
  %__v157_x11 = alloca i32
  store i32 %"__v263___load[32]_secret_le", i32* %__v157_x11
  %5 = getelementptr i8, i8* %__v144_k, i64 20
  %"__v264___load[32]_secret_le" = call i32 @"__load[32]_secret_le"(i8* %5)
  %__v158_x12 = alloca i32
  store i32 %"__v264___load[32]_secret_le", i32* %__v158_x12
  %6 = getelementptr i8, i8* %__v144_k, i64 24
  %"__v265___load[32]_secret_le" = call i32 @"__load[32]_secret_le"(i8* %6)
  %__v159_x13 = alloca i32
  store i32 %"__v265___load[32]_secret_le", i32* %__v159_x13
  %7 = getelementptr i8, i8* %__v144_k, i64 28
  %"__v266___load[32]_secret_le" = call i32 @"__load[32]_secret_le"(i8* %7)
  %__v160_x14 = alloca i32
  store i32 %"__v266___load[32]_secret_le", i32* %__v160_x14
  %__v161_j1 = load i32, i32* %__v153_x1
  %__v162_j2 = load i32, i32* %__v154_x2
  %__v163_j3 = load i32, i32* %__v155_x3
  %__v164_j4 = load i32, i32* %__v156_x4
  %__v165_j11 = load i32, i32* %__v157_x11
  %__v166_j12 = load i32, i32* %__v158_x12
  %__v167_j13 = load i32, i32* %__v159_x13
  %__v168_j14 = load i32, i32* %__v160_x14
  %8 = getelementptr i8, i8* %__v143_input, i64 0
  %"__v267___load[32]_secret_le" = call i32 @"__load[32]_secret_le"(i8* %8)
  %__v169_x6 = alloca i32
  store i32 %"__v267___load[32]_secret_le", i32* %__v169_x6
  %9 = getelementptr i8, i8* %__v143_input, i64 4
  %"__v268___load[32]_secret_le" = call i32 @"__load[32]_secret_le"(i8* %9)
  %__v170_x7 = alloca i32
  store i32 %"__v268___load[32]_secret_le", i32* %__v170_x7
  %10 = getelementptr i8, i8* %__v143_input, i64 8
  %"__v269___load[32]_secret_le" = call i32 @"__load[32]_secret_le"(i8* %10)
  %__v171_x8 = alloca i32
  store i32 %"__v269___load[32]_secret_le", i32* %__v171_x8
  %11 = getelementptr i8, i8* %__v143_input, i64 12
  %"__v270___load[32]_secret_le" = call i32 @"__load[32]_secret_le"(i8* %11)
  %__v172_x9 = alloca i32
  store i32 %"__v270___load[32]_secret_le", i32* %__v172_x9
  %__v173_j6 = load i32, i32* %__v169_x6
  %__v174_j7 = load i32, i32* %__v170_x7
  %__v175_j8 = load i32, i32* %__v171_x8
  %__v176_j9 = load i32, i32* %__v172_x9
  br label %12

; <label>:12:                                     ; preds = %207, %entry
  %__v177_i = phi i32 [ 0, %entry ], [ %208, %207 ]
  %13 = icmp ult i32 %__v177_i, 10
  br i1 %13, label %14, label %209

; <label>:14:                                     ; preds = %12
  %15 = load i32, i32* %__v156_x4
  %16 = load i32, i32* %__v145_x0
  %17 = load i32, i32* %__v158_x12
  %18 = add i32 %16, %17
  %19 = call i32 @fact.rotl.i32(i32 %18, i32 7)
  %20 = xor i32 %15, %19
  store i32 %20, i32* %__v156_x4
  %21 = load i32, i32* %__v171_x8
  %22 = load i32, i32* %__v156_x4
  %23 = load i32, i32* %__v145_x0
  %24 = add i32 %22, %23
  %25 = call i32 @fact.rotl.i32(i32 %24, i32 9)
  %26 = xor i32 %21, %25
  store i32 %26, i32* %__v171_x8
  %27 = load i32, i32* %__v158_x12
  %28 = load i32, i32* %__v171_x8
  %29 = load i32, i32* %__v156_x4
  %30 = add i32 %28, %29
  %31 = call i32 @fact.rotl.i32(i32 %30, i32 13)
  %32 = xor i32 %27, %31
  store i32 %32, i32* %__v158_x12
  %33 = load i32, i32* %__v145_x0
  %34 = load i32, i32* %__v158_x12
  %35 = load i32, i32* %__v171_x8
  %36 = add i32 %34, %35
  %37 = call i32 @fact.rotl.i32(i32 %36, i32 18)
  %38 = xor i32 %33, %37
  store i32 %38, i32* %__v145_x0
  %39 = load i32, i32* %__v172_x9
  %40 = load i32, i32* %__v146_x5
  %41 = load i32, i32* %__v153_x1
  %42 = add i32 %40, %41
  %43 = call i32 @fact.rotl.i32(i32 %42, i32 7)
  %44 = xor i32 %39, %43
  store i32 %44, i32* %__v172_x9
  %45 = load i32, i32* %__v159_x13
  %46 = load i32, i32* %__v172_x9
  %47 = load i32, i32* %__v146_x5
  %48 = add i32 %46, %47
  %49 = call i32 @fact.rotl.i32(i32 %48, i32 9)
  %50 = xor i32 %45, %49
  store i32 %50, i32* %__v159_x13
  %51 = load i32, i32* %__v153_x1
  %52 = load i32, i32* %__v159_x13
  %53 = load i32, i32* %__v172_x9
  %54 = add i32 %52, %53
  %55 = call i32 @fact.rotl.i32(i32 %54, i32 13)
  %56 = xor i32 %51, %55
  store i32 %56, i32* %__v153_x1
  %57 = load i32, i32* %__v146_x5
  %58 = load i32, i32* %__v153_x1
  %59 = load i32, i32* %__v159_x13
  %60 = add i32 %58, %59
  %61 = call i32 @fact.rotl.i32(i32 %60, i32 18)
  %62 = xor i32 %57, %61
  store i32 %62, i32* %__v146_x5
  %63 = load i32, i32* %__v160_x14
  %64 = load i32, i32* %__v147_x10
  %65 = load i32, i32* %__v169_x6
  %66 = add i32 %64, %65
  %67 = call i32 @fact.rotl.i32(i32 %66, i32 7)
  %68 = xor i32 %63, %67
  store i32 %68, i32* %__v160_x14
  %69 = load i32, i32* %__v154_x2
  %70 = load i32, i32* %__v160_x14
  %71 = load i32, i32* %__v147_x10
  %72 = add i32 %70, %71
  %73 = call i32 @fact.rotl.i32(i32 %72, i32 9)
  %74 = xor i32 %69, %73
  store i32 %74, i32* %__v154_x2
  %75 = load i32, i32* %__v169_x6
  %76 = load i32, i32* %__v154_x2
  %77 = load i32, i32* %__v160_x14
  %78 = add i32 %76, %77
  %79 = call i32 @fact.rotl.i32(i32 %78, i32 13)
  %80 = xor i32 %75, %79
  store i32 %80, i32* %__v169_x6
  %81 = load i32, i32* %__v147_x10
  %82 = load i32, i32* %__v169_x6
  %83 = load i32, i32* %__v154_x2
  %84 = add i32 %82, %83
  %85 = call i32 @fact.rotl.i32(i32 %84, i32 18)
  %86 = xor i32 %81, %85
  store i32 %86, i32* %__v147_x10
  %87 = load i32, i32* %__v155_x3
  %88 = load i32, i32* %__v148_x15
  %89 = load i32, i32* %__v157_x11
  %90 = add i32 %88, %89
  %91 = call i32 @fact.rotl.i32(i32 %90, i32 7)
  %92 = xor i32 %87, %91
  store i32 %92, i32* %__v155_x3
  %93 = load i32, i32* %__v170_x7
  %94 = load i32, i32* %__v155_x3
  %95 = load i32, i32* %__v148_x15
  %96 = add i32 %94, %95
  %97 = call i32 @fact.rotl.i32(i32 %96, i32 9)
  %98 = xor i32 %93, %97
  store i32 %98, i32* %__v170_x7
  %99 = load i32, i32* %__v157_x11
  %100 = load i32, i32* %__v170_x7
  %101 = load i32, i32* %__v155_x3
  %102 = add i32 %100, %101
  %103 = call i32 @fact.rotl.i32(i32 %102, i32 13)
  %104 = xor i32 %99, %103
  store i32 %104, i32* %__v157_x11
  %105 = load i32, i32* %__v148_x15
  %106 = load i32, i32* %__v157_x11
  %107 = load i32, i32* %__v170_x7
  %108 = add i32 %106, %107
  %109 = call i32 @fact.rotl.i32(i32 %108, i32 18)
  %110 = xor i32 %105, %109
  store i32 %110, i32* %__v148_x15
  %111 = load i32, i32* %__v153_x1
  %112 = load i32, i32* %__v145_x0
  %113 = load i32, i32* %__v155_x3
  %114 = add i32 %112, %113
  %115 = call i32 @fact.rotl.i32(i32 %114, i32 7)
  %116 = xor i32 %111, %115
  store i32 %116, i32* %__v153_x1
  %117 = load i32, i32* %__v154_x2
  %118 = load i32, i32* %__v153_x1
  %119 = load i32, i32* %__v145_x0
  %120 = add i32 %118, %119
  %121 = call i32 @fact.rotl.i32(i32 %120, i32 9)
  %122 = xor i32 %117, %121
  store i32 %122, i32* %__v154_x2
  %123 = load i32, i32* %__v155_x3
  %124 = load i32, i32* %__v154_x2
  %125 = load i32, i32* %__v153_x1
  %126 = add i32 %124, %125
  %127 = call i32 @fact.rotl.i32(i32 %126, i32 13)
  %128 = xor i32 %123, %127
  store i32 %128, i32* %__v155_x3
  %129 = load i32, i32* %__v145_x0
  %130 = load i32, i32* %__v155_x3
  %131 = load i32, i32* %__v154_x2
  %132 = add i32 %130, %131
  %133 = call i32 @fact.rotl.i32(i32 %132, i32 18)
  %134 = xor i32 %129, %133
  store i32 %134, i32* %__v145_x0
  %135 = load i32, i32* %__v169_x6
  %136 = load i32, i32* %__v146_x5
  %137 = load i32, i32* %__v156_x4
  %138 = add i32 %136, %137
  %139 = call i32 @fact.rotl.i32(i32 %138, i32 7)
  %140 = xor i32 %135, %139
  store i32 %140, i32* %__v169_x6
  %141 = load i32, i32* %__v170_x7
  %142 = load i32, i32* %__v169_x6
  %143 = load i32, i32* %__v146_x5
  %144 = add i32 %142, %143
  %145 = call i32 @fact.rotl.i32(i32 %144, i32 9)
  %146 = xor i32 %141, %145
  store i32 %146, i32* %__v170_x7
  %147 = load i32, i32* %__v156_x4
  %148 = load i32, i32* %__v170_x7
  %149 = load i32, i32* %__v169_x6
  %150 = add i32 %148, %149
  %151 = call i32 @fact.rotl.i32(i32 %150, i32 13)
  %152 = xor i32 %147, %151
  store i32 %152, i32* %__v156_x4
  %153 = load i32, i32* %__v146_x5
  %154 = load i32, i32* %__v156_x4
  %155 = load i32, i32* %__v170_x7
  %156 = add i32 %154, %155
  %157 = call i32 @fact.rotl.i32(i32 %156, i32 18)
  %158 = xor i32 %153, %157
  store i32 %158, i32* %__v146_x5
  %159 = load i32, i32* %__v157_x11
  %160 = load i32, i32* %__v147_x10
  %161 = load i32, i32* %__v172_x9
  %162 = add i32 %160, %161
  %163 = call i32 @fact.rotl.i32(i32 %162, i32 7)
  %164 = xor i32 %159, %163
  store i32 %164, i32* %__v157_x11
  %165 = load i32, i32* %__v171_x8
  %166 = load i32, i32* %__v157_x11
  %167 = load i32, i32* %__v147_x10
  %168 = add i32 %166, %167
  %169 = call i32 @fact.rotl.i32(i32 %168, i32 9)
  %170 = xor i32 %165, %169
  store i32 %170, i32* %__v171_x8
  %171 = load i32, i32* %__v172_x9
  %172 = load i32, i32* %__v171_x8
  %173 = load i32, i32* %__v157_x11
  %174 = add i32 %172, %173
  %175 = call i32 @fact.rotl.i32(i32 %174, i32 13)
  %176 = xor i32 %171, %175
  store i32 %176, i32* %__v172_x9
  %177 = load i32, i32* %__v147_x10
  %178 = load i32, i32* %__v172_x9
  %179 = load i32, i32* %__v171_x8
  %180 = add i32 %178, %179
  %181 = call i32 @fact.rotl.i32(i32 %180, i32 18)
  %182 = xor i32 %177, %181
  store i32 %182, i32* %__v147_x10
  %183 = load i32, i32* %__v158_x12
  %184 = load i32, i32* %__v148_x15
  %185 = load i32, i32* %__v160_x14
  %186 = add i32 %184, %185
  %187 = call i32 @fact.rotl.i32(i32 %186, i32 7)
  %188 = xor i32 %183, %187
  store i32 %188, i32* %__v158_x12
  %189 = load i32, i32* %__v159_x13
  %190 = load i32, i32* %__v158_x12
  %191 = load i32, i32* %__v148_x15
  %192 = add i32 %190, %191
  %193 = call i32 @fact.rotl.i32(i32 %192, i32 9)
  %194 = xor i32 %189, %193
  store i32 %194, i32* %__v159_x13
  %195 = load i32, i32* %__v160_x14
  %196 = load i32, i32* %__v159_x13
  %197 = load i32, i32* %__v158_x12
  %198 = add i32 %196, %197
  %199 = call i32 @fact.rotl.i32(i32 %198, i32 13)
  %200 = xor i32 %195, %199
  store i32 %200, i32* %__v160_x14
  %201 = load i32, i32* %__v148_x15
  %202 = load i32, i32* %__v160_x14
  %203 = load i32, i32* %__v159_x13
  %204 = add i32 %202, %203
  %205 = call i32 @fact.rotl.i32(i32 %204, i32 18)
  %206 = xor i32 %201, %205
  store i32 %206, i32* %__v148_x15
  br label %207

; <label>:207:                                    ; preds = %14
  %208 = add i32 %__v177_i, 1
  br label %12

; <label>:209:                                    ; preds = %12
  %210 = getelementptr i8, i8* %__v142_output, i64 0
  %211 = load i32, i32* %__v145_x0
  %212 = add i32 %211, %__v149_j0
  call void @"__store[32]_secret_le"(i8* %210, i32 %212)
  %213 = getelementptr i8, i8* %__v142_output, i64 4
  %214 = load i32, i32* %__v153_x1
  %215 = add i32 %214, %__v161_j1
  call void @"__store[32]_secret_le"(i8* %213, i32 %215)
  %216 = getelementptr i8, i8* %__v142_output, i64 8
  %217 = load i32, i32* %__v154_x2
  %218 = add i32 %217, %__v162_j2
  call void @"__store[32]_secret_le"(i8* %216, i32 %218)
  %219 = getelementptr i8, i8* %__v142_output, i64 12
  %220 = load i32, i32* %__v155_x3
  %221 = add i32 %220, %__v163_j3
  call void @"__store[32]_secret_le"(i8* %219, i32 %221)
  %222 = getelementptr i8, i8* %__v142_output, i64 16
  %223 = load i32, i32* %__v156_x4
  %224 = add i32 %223, %__v164_j4
  call void @"__store[32]_secret_le"(i8* %222, i32 %224)
  %225 = getelementptr i8, i8* %__v142_output, i64 20
  %226 = load i32, i32* %__v146_x5
  %227 = add i32 %226, %__v150_j5
  call void @"__store[32]_secret_le"(i8* %225, i32 %227)
  %228 = getelementptr i8, i8* %__v142_output, i64 24
  %229 = load i32, i32* %__v169_x6
  %230 = add i32 %229, %__v173_j6
  call void @"__store[32]_secret_le"(i8* %228, i32 %230)
  %231 = getelementptr i8, i8* %__v142_output, i64 28
  %232 = load i32, i32* %__v170_x7
  %233 = add i32 %232, %__v174_j7
  call void @"__store[32]_secret_le"(i8* %231, i32 %233)
  %234 = getelementptr i8, i8* %__v142_output, i64 32
  %235 = load i32, i32* %__v171_x8
  %236 = add i32 %235, %__v175_j8
  call void @"__store[32]_secret_le"(i8* %234, i32 %236)
  %237 = getelementptr i8, i8* %__v142_output, i64 36
  %238 = load i32, i32* %__v172_x9
  %239 = add i32 %238, %__v176_j9
  call void @"__store[32]_secret_le"(i8* %237, i32 %239)
  %240 = getelementptr i8, i8* %__v142_output, i64 40
  %241 = load i32, i32* %__v147_x10
  %242 = add i32 %241, %__v151_j10
  call void @"__store[32]_secret_le"(i8* %240, i32 %242)
  %243 = getelementptr i8, i8* %__v142_output, i64 44
  %244 = load i32, i32* %__v157_x11
  %245 = add i32 %244, %__v165_j11
  call void @"__store[32]_secret_le"(i8* %243, i32 %245)
  %246 = getelementptr i8, i8* %__v142_output, i64 48
  %247 = load i32, i32* %__v158_x12
  %248 = add i32 %247, %__v166_j12
  call void @"__store[32]_secret_le"(i8* %246, i32 %248)
  %249 = getelementptr i8, i8* %__v142_output, i64 52
  %250 = load i32, i32* %__v159_x13
  %251 = add i32 %250, %__v167_j13
  call void @"__store[32]_secret_le"(i8* %249, i32 %251)
  %252 = getelementptr i8, i8* %__v142_output, i64 56
  %253 = load i32, i32* %__v160_x14
  %254 = add i32 %253, %__v168_j14
  call void @"__store[32]_secret_le"(i8* %252, i32 %254)
  %255 = getelementptr i8, i8* %__v142_output, i64 60
  %256 = load i32, i32* %__v148_x15
  %257 = add i32 %256, %__v152_j15
  call void @"__store[32]_secret_le"(i8* %255, i32 %257)
  ret void
}

define internal void @_poly1305_blocks(%poly1305_state_internal_t* %__v121_state, i8* %__v122_m, i64 %__v224___v122_m_len) {
entry:
  %__rctx = alloca i1
  store i1 true, i1* %__rctx
  %0 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v121_state, i32 0, i32 5
  %1 = load i8, i8* %0
  %2 = icmp ne i8 %1, 0
  %__v125_hibit = call i64 @fact.select.sel.i64(i1 %2, i64 0, i64 1099511627776)
  %3 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v121_state, i32 0, i32 0
  %4 = bitcast [3 x i64]* %3 to i64*
  %5 = getelementptr i64, i64* %4, i64 0
  %__v126_r0 = load i64, i64* %5
  %6 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v121_state, i32 0, i32 0
  %7 = bitcast [3 x i64]* %6 to i64*
  %8 = getelementptr i64, i64* %7, i64 1
  %__v127_r1 = load i64, i64* %8
  %9 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v121_state, i32 0, i32 0
  %10 = bitcast [3 x i64]* %9 to i64*
  %11 = getelementptr i64, i64* %10, i64 2
  %__v128_r2 = load i64, i64* %11
  %12 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v121_state, i32 0, i32 1
  %13 = bitcast [3 x i64]* %12 to i64*
  %14 = getelementptr i64, i64* %13, i64 0
  %15 = load i64, i64* %14
  %__v129_h0 = alloca i64
  store i64 %15, i64* %__v129_h0
  %16 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v121_state, i32 0, i32 1
  %17 = bitcast [3 x i64]* %16 to i64*
  %18 = getelementptr i64, i64* %17, i64 1
  %19 = load i64, i64* %18
  %__v130_h1 = alloca i64
  store i64 %19, i64* %__v130_h1
  %20 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v121_state, i32 0, i32 1
  %21 = bitcast [3 x i64]* %20 to i64*
  %22 = getelementptr i64, i64* %21, i64 2
  %23 = load i64, i64* %22
  %__v131_h2 = alloca i64
  store i64 %23, i64* %__v131_h2
  %__v132_s1 = mul i64 %__v127_r1, 20
  %__v133_s2 = mul i64 %__v128_r2, 20
  %__v134_mloops = udiv i64 %__v224___v122_m_len, 16
  br label %24

; <label>:24:                                     ; preds = %124, %entry
  %__v135_bindex = phi i64 [ 0, %entry ], [ %125, %124 ]
  %25 = icmp ult i64 %__v135_bindex, %__v134_mloops
  br i1 %25, label %26, label %126

; <label>:26:                                     ; preds = %24
  %__v255_lexpr = mul i64 %__v135_bindex, 16
  %__v256_lexpr = mul i64 %__v135_bindex, 16
  %27 = getelementptr i8, i8* %__v122_m, i64 %__v256_lexpr
  %__v136_t0 = call i64 @"__load[64]_secret_le"(i8* %27)
  %28 = mul i64 %__v135_bindex, 16
  %__v257_lexpr = add i64 %28, 8
  %29 = mul i64 %__v135_bindex, 16
  %__v258_lexpr = add i64 %29, 8
  %30 = getelementptr i8, i8* %__v122_m, i64 %__v258_lexpr
  %__v137_t1 = call i64 @"__load[64]_secret_le"(i8* %30)
  %31 = load i64, i64* %__v129_h0
  %32 = and i64 %__v136_t0, 17592186044415
  %33 = add i64 %31, %32
  store i64 %33, i64* %__v129_h0
  %34 = load i64, i64* %__v130_h1
  %35 = lshr i64 %__v136_t0, 44
  %36 = shl i64 %__v137_t1, 20
  %37 = or i64 %35, %36
  %38 = and i64 %37, 17592186044415
  %39 = add i64 %34, %38
  store i64 %39, i64* %__v130_h1
  %40 = load i64, i64* %__v131_h2
  %41 = lshr i64 %__v137_t1, 24
  %42 = and i64 %41, 4398046511103
  %43 = or i64 %42, %__v125_hibit
  %44 = add i64 %40, %43
  store i64 %44, i64* %__v131_h2
  %45 = load i64, i64* %__v129_h0
  %46 = zext i64 %45 to i128
  %47 = zext i64 %__v126_r0 to i128
  %48 = mul i128 %46, %47
  %49 = load i64, i64* %__v130_h1
  %50 = zext i64 %49 to i128
  %51 = zext i64 %__v133_s2 to i128
  %52 = mul i128 %50, %51
  %53 = add i128 %48, %52
  %54 = load i64, i64* %__v131_h2
  %55 = zext i64 %54 to i128
  %56 = zext i64 %__v132_s1 to i128
  %57 = mul i128 %55, %56
  %58 = add i128 %53, %57
  %__v138_d0 = alloca i128
  store i128 %58, i128* %__v138_d0
  %59 = load i64, i64* %__v129_h0
  %60 = zext i64 %59 to i128
  %61 = zext i64 %__v127_r1 to i128
  %62 = mul i128 %60, %61
  %63 = load i64, i64* %__v130_h1
  %64 = zext i64 %63 to i128
  %65 = zext i64 %__v126_r0 to i128
  %66 = mul i128 %64, %65
  %67 = add i128 %62, %66
  %68 = load i64, i64* %__v131_h2
  %69 = zext i64 %68 to i128
  %70 = zext i64 %__v133_s2 to i128
  %71 = mul i128 %69, %70
  %72 = add i128 %67, %71
  %__v139_d1 = alloca i128
  store i128 %72, i128* %__v139_d1
  %73 = load i64, i64* %__v129_h0
  %74 = zext i64 %73 to i128
  %75 = zext i64 %__v128_r2 to i128
  %76 = mul i128 %74, %75
  %77 = load i64, i64* %__v130_h1
  %78 = zext i64 %77 to i128
  %79 = zext i64 %__v127_r1 to i128
  %80 = mul i128 %78, %79
  %81 = add i128 %76, %80
  %82 = load i64, i64* %__v131_h2
  %83 = zext i64 %82 to i128
  %84 = zext i64 %__v126_r0 to i128
  %85 = mul i128 %83, %84
  %86 = add i128 %81, %85
  %__v140_d2 = alloca i128
  store i128 %86, i128* %__v140_d2
  %87 = load i128, i128* %__v138_d0
  %88 = lshr i128 %87, 44
  %89 = trunc i128 %88 to i64
  %__v141_c = alloca i64
  store i64 %89, i64* %__v141_c
  %90 = load i128, i128* %__v138_d0
  %91 = trunc i128 %90 to i64
  %92 = and i64 %91, 17592186044415
  store i64 %92, i64* %__v129_h0
  %93 = load i128, i128* %__v139_d1
  %94 = load i64, i64* %__v141_c
  %95 = zext i64 %94 to i128
  %96 = add i128 %93, %95
  store i128 %96, i128* %__v139_d1
  %97 = load i128, i128* %__v139_d1
  %98 = lshr i128 %97, 44
  %99 = trunc i128 %98 to i64
  store i64 %99, i64* %__v141_c
  %100 = load i128, i128* %__v139_d1
  %101 = trunc i128 %100 to i64
  %102 = and i64 %101, 17592186044415
  store i64 %102, i64* %__v130_h1
  %103 = load i128, i128* %__v140_d2
  %104 = load i64, i64* %__v141_c
  %105 = zext i64 %104 to i128
  %106 = add i128 %103, %105
  store i128 %106, i128* %__v140_d2
  %107 = load i128, i128* %__v140_d2
  %108 = lshr i128 %107, 42
  %109 = trunc i128 %108 to i64
  store i64 %109, i64* %__v141_c
  %110 = load i128, i128* %__v140_d2
  %111 = trunc i128 %110 to i64
  %112 = and i64 %111, 4398046511103
  store i64 %112, i64* %__v131_h2
  %113 = load i64, i64* %__v129_h0
  %114 = load i64, i64* %__v141_c
  %115 = mul i64 %114, 5
  %116 = add i64 %113, %115
  store i64 %116, i64* %__v129_h0
  %117 = load i64, i64* %__v129_h0
  %118 = lshr i64 %117, 44
  store i64 %118, i64* %__v141_c
  %119 = load i64, i64* %__v129_h0
  %120 = and i64 %119, 17592186044415
  store i64 %120, i64* %__v129_h0
  %121 = load i64, i64* %__v130_h1
  %122 = load i64, i64* %__v141_c
  %123 = add i64 %121, %122
  store i64 %123, i64* %__v130_h1
  br label %124

; <label>:124:                                    ; preds = %26
  %125 = add i64 %__v135_bindex, 1
  br label %24

; <label>:126:                                    ; preds = %24
  %127 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v121_state, i32 0, i32 1
  %128 = bitcast [3 x i64]* %127 to i64*
  %129 = getelementptr i64, i64* %128, i64 0
  %130 = load i64, i64* %__v129_h0
  store i64 %130, i64* %129
  %131 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v121_state, i32 0, i32 1
  %132 = bitcast [3 x i64]* %131 to i64*
  %133 = getelementptr i64, i64* %132, i64 1
  %134 = load i64, i64* %__v130_h1
  store i64 %134, i64* %133
  %135 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v121_state, i32 0, i32 1
  %136 = bitcast [3 x i64]* %135 to i64*
  %137 = getelementptr i64, i64* %136, i64 2
  %138 = load i64, i64* %__v131_h2
  store i64 %138, i64* %137
  ret void
}

; Function Attrs: alwaysinline
define internal i64 @fact.select.sel.i64(i1 %cond, i64 %x, i64 %y) #0 {
entry:
  %0 = select i1 %cond, i64 %x, i64 %y
  ret i64 %0
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
  br label %159

; <label>:9:                                      ; preds = %entry
  br label %10

; <label>:10:                                     ; preds = %9, %167
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
  call void @"__store[64]_secret_le"(i8* %155, i64 %156)
  %157 = getelementptr i8, i8* %__v107_mac, i64 8
  %158 = load i64, i64* %__v113_h1
  call void @"__store[64]_secret_le"(i8* %157, i64 %158)
  call void @__smemzero_poly1305_state_internal_t(%poly1305_state_internal_t* %__v106_state)
  ret void

; <label>:159:                                    ; preds = %165, %3
  %__v109_i = phi i64 [ %8, %3 ], [ %166, %165 ]
  %160 = icmp ult i64 %__v109_i, 16
  br i1 %160, label %161, label %167

; <label>:161:                                    ; preds = %159
  %162 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v106_state, i32 0, i32 4
  %163 = bitcast [16 x i8]* %162 to i8*
  %164 = getelementptr i8, i8* %163, i64 %__v109_i
  store i8 0, i8* %164
  br label %165

; <label>:165:                                    ; preds = %161
  %166 = add i64 %__v109_i, 1
  br label %159

; <label>:167:                                    ; preds = %159
  %168 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v106_state, i32 0, i32 5
  store i8 1, i8* %168
  %169 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v106_state, i32 0, i32 4
  %170 = bitcast [16 x i8]* %169 to i8*
  call void @_poly1305_blocks(%poly1305_state_internal_t* %__v106_state, i8* %170, i64 16)
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

; <label>:10:                                     ; preds = %9, %44
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

; <label>:60:                                     ; preds = %59, %72
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
  %__v91_t0 = call i64 @"__load[64]_secret_le"(i8* %0)
  %1 = getelementptr i8, i8* %__v90_key, i64 8
  %__v92_t1 = call i64 @"__load[64]_secret_le"(i8* %1)
  %2 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v89_state, i32 0, i32 0
  %3 = bitcast [3 x i64]* %2 to i64*
  %4 = getelementptr i64, i64* %3, i64 0
  %5 = and i64 %__v91_t0, 17575274610687
  store i64 %5, i64* %4
  %6 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v89_state, i32 0, i32 0
  %7 = bitcast [3 x i64]* %6 to i64*
  %8 = getelementptr i64, i64* %7, i64 1
  %9 = lshr i64 %__v91_t0, 44
  %10 = shl i64 %__v92_t1, 20
  %11 = or i64 %9, %10
  %12 = and i64 %11, 17592181915647
  store i64 %12, i64* %8
  %13 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v89_state, i32 0, i32 0
  %14 = bitcast [3 x i64]* %13 to i64*
  %15 = getelementptr i64, i64* %14, i64 2
  %16 = lshr i64 %__v92_t1, 24
  %17 = and i64 %16, 68719475727
  store i64 %17, i64* %15
  %18 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v89_state, i32 0, i32 1
  %19 = bitcast [3 x i64]* %18 to i64*
  %20 = getelementptr i64, i64* %19, i64 0
  store i64 0, i64* %20
  %21 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v89_state, i32 0, i32 1
  %22 = bitcast [3 x i64]* %21 to i64*
  %23 = getelementptr i64, i64* %22, i64 1
  store i64 0, i64* %23
  %24 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v89_state, i32 0, i32 1
  %25 = bitcast [3 x i64]* %24 to i64*
  %26 = getelementptr i64, i64* %25, i64 2
  store i64 0, i64* %26
  %27 = getelementptr i8, i8* %__v90_key, i64 16
  %__v203_load_le = call i64 @"__load[64]_secret_le"(i8* %27)
  %28 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v89_state, i32 0, i32 2
  %29 = bitcast [2 x i64]* %28 to i64*
  %30 = getelementptr i64, i64* %29, i64 0
  store i64 %__v203_load_le, i64* %30
  %31 = getelementptr i8, i8* %__v90_key, i64 24
  %__v204_load_le = call i64 @"__load[64]_secret_le"(i8* %31)
  %32 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v89_state, i32 0, i32 2
  %33 = bitcast [2 x i64]* %32 to i64*
  %34 = getelementptr i64, i64* %33, i64 1
  store i64 %__v204_load_le, i64* %34
  %35 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v89_state, i32 0, i32 3
  store i64 0, i64* %35
  %36 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v89_state, i32 0, i32 5
  store i8 0, i8* %36
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
  call void @fact.memset.i64(i64* %0, i8 0, i64 3)
  %1 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v88_state, i32 0, i32 0
  %2 = bitcast [3 x i64]* %1 to i64*
  call void @fact.memcpy.i64(i64* %2, i64* %0, i64 3)
  %3 = alloca i64, i64 3
  call void @fact.memset.i64(i64* %3, i8 0, i64 3)
  %4 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v88_state, i32 0, i32 1
  %5 = bitcast [3 x i64]* %4 to i64*
  call void @fact.memcpy.i64(i64* %5, i64* %3, i64 3)
  %6 = alloca i64, i64 2
  call void @fact.memset.i64(i64* %6, i8 0, i64 2)
  %7 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v88_state, i32 0, i32 2
  %8 = bitcast [2 x i64]* %7 to i64*
  call void @fact.memcpy.i64(i64* %8, i64* %6, i64 2)
  %9 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v88_state, i32 0, i32 3
  store i64 0, i64* %9
  %10 = alloca i8, i64 16
  call void @fact.memset.i8(i8* %10, i8 0, i64 16)
  %11 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v88_state, i32 0, i32 4
  %12 = bitcast [16 x i8]* %11 to i8*
  call void @fact.memcpy.i8(i8* %12, i8* %10, i64 16)
  %13 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v88_state, i32 0, i32 5
  store i8 0, i8* %13
  call void @_poly1305_init(%poly1305_state_internal_t* %__v88_state, i8* %__v87_key)
  call void @_poly1305_update(%poly1305_state_internal_t* %__v88_state, i8* %__v86_m, i64 %__v222___v86_m_len)
  call void @_poly1305_finish(%poly1305_state_internal_t* %__v88_state, i8* %__v85_out)
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
define internal void @fact.memset.i8(i8* %dst, i8 %n, i64 %len) #0 {
entry:
  %0 = mul i64 %len, 1
  call void @llvm.memset.p0i8.i64(i8* %dst, i8 %n, i64 %0, i32 1, i1 false)
  ret void
}

; Function Attrs: alwaysinline
define internal void @fact.memcpy.i8(i8* %dst, i8* %src, i64 %len) #0 {
entry:
  %0 = mul i64 %len, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %dst, i8* %src, i64 %0, i32 1, i1 false)
  ret void
}

define internal i1 @_crypto_verify_16(i8* %__v82_x, i8* %__v83_y) {
entry:
  %__rval = alloca i1
  store i1 false, i1* %__rval
  %__rctx = alloca i1
  store i1 true, i1* %__rctx
  br label %0

; <label>:0:                                      ; preds = %15, %entry
  %__v84_i = phi i32 [ 0, %entry ], [ %16, %15 ]
  %1 = icmp ult i32 %__v84_i, 16
  br i1 %1, label %2, label %17

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
  %10 = call i1 @fact.cmov.asm.i1(i1 %8, i1 false, i1 %9)
  store i1 %10, i1* %__rval
  %11 = and i1 true, %__m4
  %12 = and i1 %11, %__m3
  %13 = load i1, i1* %__rctx
  %14 = call i1 @fact.cmov.asm.i1(i1 %12, i1 false, i1 %13)
  store i1 %14, i1* %__rctx
  %__m5 = xor i1 %__m4, true
  %__m6 = xor i1 %__m3, true
  br label %15

; <label>:15:                                     ; preds = %2
  %16 = add i32 %__v84_i, 1
  br label %0

; <label>:17:                                     ; preds = %0
  %__m1 = load i1, i1* %__rctx
  %18 = and i1 true, %__m1
  %19 = load i1, i1* %__rval
  %20 = call i1 @fact.cmov.asm.i1(i1 %18, i1 true, i1 %19)
  store i1 %20, i1* %__rval
  %21 = and i1 true, %__m1
  %22 = load i1, i1* %__rctx
  %23 = call i1 @fact.cmov.asm.i1(i1 %21, i1 false, i1 %22)
  store i1 %23, i1* %__rctx
  %__m2 = xor i1 %__m1, true
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

define internal i1 @_crypto_onetimeauth_poly1305_verify(i8* %__v78_h, i8* %__v79_input, i64 %__v221___v79_input_len, i8* %__v80_k) {
entry:
  %__rval = alloca i1
  store i1 false, i1* %__rval
  %__rctx = alloca i1
  store i1 true, i1* %__rctx
  %__v81_correct = alloca i8, i64 16
  call void @fact.memset.i8(i8* %__v81_correct, i8 0, i64 16)
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
  call void @fact.memcpy.i8(i8* %__v62_kcopy, i8* %__v60_k, i64 32)
  %__v63_input = alloca i8, i64 16
  call void @fact.memset.i8(i8* %__v63_input, i8 0, i64 16)
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
  call void @fact.memset.i8(i8* %__v67_block, i8 0, i64 64)
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

; <label>:63:                                     ; preds = %62, %75
  call void @"__smemzero[8]_secret"(i8* %__v67_block, i64 64)
  call void @"__smemzero[8]_secret"(i8* %__v62_kcopy, i64 32)
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
  call void @fact.memset.i8(i8* %__v53_subkey, i8 0, i64 32)
  %0 = getelementptr i8, i8* %__v50_n, i64 0
  call void @_crypto_core_hsalsa20(i8* %__v53_subkey, i8* %0, i8* %__v52_k)
  %__v54_tmp = getelementptr i8, i8* %__v50_n, i64 16
  %__v55_ret = call i32 @_crypto_stream_salsa20_xor_ic(i8* %__v48_c, i64 %__v217___v48_c_len, i8* %__v49_m, i64 %__v218___v49_m_len, i8* %__v54_tmp, i64 %__v51_ic, i8* %__v53_subkey)
  call void @"__smemzero[8]_secret"(i8* %__v53_subkey, i64 32)
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
  call void @fact.memcpy.i8(i8* %__v21_kcopy, i8* %__v20_k, i64 32)
  %__v22_input = alloca i8, i64 16
  call void @fact.memset.i8(i8* %__v22_input, i8 0, i64 16)
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
  call void @fact.memset.i8(i8* %__v28_block, i8 0, i64 64)
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

; <label>:47:                                     ; preds = %46, %56
  call void @"__smemzero[8]_secret"(i8* %__v28_block, i64 64)
  call void @"__smemzero[8]_secret"(i8* %__v21_kcopy, i64 32)
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
  call void @fact.memset.i8(i8* %__v16_subkey, i8 0, i64 32)
  %0 = getelementptr i8, i8* %__v14_n, i64 0
  call void @_crypto_core_hsalsa20(i8* %__v16_subkey, i8* %0, i8* %__v15_k)
  %1 = getelementptr i8, i8* %__v14_n, i64 16
  %__v17_ret = call i32 @_crypto_stream_salsa20(i8* %__v13_c, i64 %__v209___v13_c_len, i8* %1, i8* %__v16_subkey)
  call void @"__smemzero[8]_secret"(i8* %__v16_subkey, i64 32)
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
  call void @fact.memset.i8(i8* %__v9_subkey, i8 0, i64 32)
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

attributes #0 = { alwaysinline }
attributes #1 = { argmemonly nounwind }
