; ModuleID = 'Module'
source_filename = "Module"

define internal void @_mpi_copy(i64* %__v65_TO, i64 %__v92___v65_TO_len, i64* %__v66_FROM, i64 %__v93___v66_FROM_len, i1 %__m37) {
entry:
  %__rctx = alloca i1
  store i1 true, i1* %__rctx
  %0 = icmp ult i64 %__v92___v65_TO_len, %__v93___v66_FROM_len
  %__v67_clen = select i1 %0, i64 %__v92___v65_TO_len, i64 %__v93___v66_FROM_len
  br label %1

; <label>:1:                                      ; preds = %10, %entry
  %__v68_i = phi i64 [ 0, %entry ], [ %11, %10 ]
  %2 = icmp ult i64 %__v68_i, %__v67_clen
  br i1 %2, label %3, label %12

; <label>:3:                                      ; preds = %1
  %4 = getelementptr i64, i64* %__v65_TO, i64 %__v68_i
  %5 = getelementptr i64, i64* %__v66_FROM, i64 %__v68_i
  %6 = load i64, i64* %5
  %7 = and i1 true, %__m37
  %8 = load i64, i64* %4
  %9 = call i64 @fact.cmov.sel.i64(i1 %7, i64 %6, i64 %8)
  store i64 %9, i64* %4
  br label %10

; <label>:10:                                     ; preds = %3
  %11 = add i64 %__v68_i, 1
  br label %1

; <label>:12:                                     ; preds = %1
  br label %13

; <label>:13:                                     ; preds = %20, %12
  %__v69_i = phi i64 [ %__v67_clen, %12 ], [ %21, %20 ]
  %14 = icmp ult i64 %__v69_i, %__v92___v65_TO_len
  br i1 %14, label %15, label %22

; <label>:15:                                     ; preds = %13
  %16 = getelementptr i64, i64* %__v65_TO, i64 %__v69_i
  %17 = and i1 true, %__m37
  %18 = load i64, i64* %16
  %19 = call i64 @fact.cmov.sel.i64(i1 %17, i64 0, i64 %18)
  store i64 %19, i64* %16
  br label %20

; <label>:20:                                     ; preds = %15
  %21 = add i64 %__v69_i, 1
  br label %13

; <label>:22:                                     ; preds = %13
  %23 = and i1 true, %__m37
  %24 = load i1, i1* %__rctx
  %25 = call i1 @fact.cmov.asm.i1(i1 %23, i1 false, i1 %24)
  store i1 %25, i1* %__rctx
  %__m38 = xor i1 %__m37, true
  ret void
}

; Function Attrs: alwaysinline
define internal i64 @fact.cmov.sel.i64(i1 %cond, i64 %x, i64 %y) #0 {
entry:
  %0 = select i1 %cond, i64 %x, i64 %y
  ret i64 %0
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

define internal void @_mpi_sub_hlp(i64 %__v58_n, i64* %__v59_s, i64 %__v90___v59_s_len, i64* %__v60_d, i64 %__v91___v60_d_len, i1 %__m35) {
entry:
  %__rctx = alloca i1
  store i1 true, i1* %__rctx
  %__v61_c = alloca i64
  store i64 0, i64* %__v61_c
  %__v62_z = alloca i64
  store i64 0, i64* %__v62_z
  br label %0

; <label>:0:                                      ; preds = %39, %entry
  %__v63_i = phi i64 [ 0, %entry ], [ %40, %39 ]
  %1 = icmp ult i64 %__v63_i, %__v58_n
  br i1 %1, label %2, label %41

; <label>:2:                                      ; preds = %0
  %3 = getelementptr i64, i64* %__v60_d, i64 %__v63_i
  %4 = load i64, i64* %3
  %5 = load i64, i64* %__v61_c
  %6 = icmp ult i64 %4, %5
  %7 = call i64 @fact.select.sel.i64(i1 %6, i64 1, i64 0)
  %8 = and i1 true, %__m35
  %9 = load i64, i64* %__v62_z
  %10 = call i64 @fact.cmov.sel.i64(i1 %8, i64 %7, i64 %9)
  store i64 %10, i64* %__v62_z
  %11 = getelementptr i64, i64* %__v60_d, i64 %__v63_i
  %12 = getelementptr i64, i64* %__v60_d, i64 %__v63_i
  %13 = load i64, i64* %12
  %14 = load i64, i64* %__v61_c
  %15 = sub i64 %13, %14
  %16 = and i1 true, %__m35
  %17 = load i64, i64* %11
  %18 = call i64 @fact.cmov.sel.i64(i1 %16, i64 %15, i64 %17)
  store i64 %18, i64* %11
  %19 = getelementptr i64, i64* %__v60_d, i64 %__v63_i
  %20 = load i64, i64* %19
  %21 = getelementptr i64, i64* %__v59_s, i64 %__v63_i
  %22 = load i64, i64* %21
  %23 = icmp ult i64 %20, %22
  %24 = call i64 @fact.select.sel.i64(i1 %23, i64 1, i64 0)
  %25 = load i64, i64* %__v62_z
  %26 = add i64 %24, %25
  %27 = and i1 true, %__m35
  %28 = load i64, i64* %__v61_c
  %29 = call i64 @fact.cmov.sel.i64(i1 %27, i64 %26, i64 %28)
  store i64 %29, i64* %__v61_c
  %30 = getelementptr i64, i64* %__v60_d, i64 %__v63_i
  %31 = getelementptr i64, i64* %__v60_d, i64 %__v63_i
  %32 = load i64, i64* %31
  %33 = getelementptr i64, i64* %__v59_s, i64 %__v63_i
  %34 = load i64, i64* %33
  %35 = sub i64 %32, %34
  %36 = and i1 true, %__m35
  %37 = load i64, i64* %30
  %38 = call i64 @fact.cmov.sel.i64(i1 %36, i64 %35, i64 %37)
  store i64 %38, i64* %30
  br label %39

; <label>:39:                                     ; preds = %2
  %40 = add i64 %__v63_i, 1
  br label %0

; <label>:41:                                     ; preds = %0
  br label %42

; <label>:42:                                     ; preds = %65, %41
  %__v64_i = phi i64 [ %__v58_n, %41 ], [ %66, %65 ]
  %43 = icmp ult i64 %__v64_i, %__v91___v60_d_len
  br i1 %43, label %44, label %67

; <label>:44:                                     ; preds = %42
  %45 = getelementptr i64, i64* %__v60_d, i64 %__v64_i
  %46 = load i64, i64* %45
  %47 = load i64, i64* %__v61_c
  %48 = icmp ult i64 %46, %47
  %49 = call i64 @fact.select.sel.i64(i1 %48, i64 1, i64 0)
  %50 = and i1 true, %__m35
  %51 = load i64, i64* %__v62_z
  %52 = call i64 @fact.cmov.sel.i64(i1 %50, i64 %49, i64 %51)
  store i64 %52, i64* %__v62_z
  %53 = getelementptr i64, i64* %__v60_d, i64 %__v64_i
  %54 = getelementptr i64, i64* %__v60_d, i64 %__v64_i
  %55 = load i64, i64* %54
  %56 = load i64, i64* %__v61_c
  %57 = sub i64 %55, %56
  %58 = and i1 true, %__m35
  %59 = load i64, i64* %53
  %60 = call i64 @fact.cmov.sel.i64(i1 %58, i64 %57, i64 %59)
  store i64 %60, i64* %53
  %61 = load i64, i64* %__v62_z
  %62 = and i1 true, %__m35
  %63 = load i64, i64* %__v61_c
  %64 = call i64 @fact.cmov.sel.i64(i1 %62, i64 %61, i64 %63)
  store i64 %64, i64* %__v61_c
  br label %65

; <label>:65:                                     ; preds = %44
  %66 = add i64 %__v64_i, 1
  br label %42

; <label>:67:                                     ; preds = %42
  %68 = and i1 true, %__m35
  %69 = load i1, i1* %__rctx
  %70 = call i1 @fact.cmov.asm.i1(i1 %68, i1 false, i1 %69)
  store i1 %70, i1* %__rctx
  %__m36 = xor i1 %__m35, true
  ret void
}

; Function Attrs: alwaysinline
define internal i64 @fact.select.sel.i64(i1 %cond, i64 %x, i64 %y) #0 {
entry:
  %0 = select i1 %cond, i64 %x, i64 %y
  ret i64 %0
}

define internal i32 @_mbedtls_mpi_cmp_abs(i64* %__v47_X_p, i64 %__v88___v47_X_p_len, i64* %__v48_Y_p, i64 %__v89___v48_Y_p_len) {
entry:
  %__rval = alloca i32
  store i32 0, i32* %__rval
  %__rctx = alloca i1
  store i1 true, i1* %__rctx
  %__v49_saved_i = alloca i64
  store i64 0, i64* %__v49_saved_i
  %__v50_saved_j = alloca i64
  store i64 0, i64* %__v50_saved_j
  br label %0

; <label>:0:                                      ; preds = %11, %entry
  %__v51__i = phi i64 [ 0, %entry ], [ %12, %11 ]
  %1 = icmp ult i64 %__v51__i, %__v88___v47_X_p_len
  br i1 %1, label %2, label %13

; <label>:2:                                      ; preds = %0
  %__v52_i = sub i64 %__v88___v47_X_p_len, %__v51__i
  %__v131_lexpr = sub i64 %__v52_i, 1
  %3 = load i64, i64* %__v49_saved_i
  %4 = icmp eq i64 %3, 0
  %5 = getelementptr i64, i64* %__v47_X_p, i64 %__v131_lexpr
  %6 = load i64, i64* %5
  %7 = icmp ne i64 %6, 0
  %__m33 = call i1 @fact.select.asm.i1(i1 %4, i1 %7, i1 false)
  %8 = and i1 true, %__m33
  %9 = load i64, i64* %__v49_saved_i
  %10 = call i64 @fact.cmov.sel.i64(i1 %8, i64 %__v52_i, i64 %9)
  store i64 %10, i64* %__v49_saved_i
  %__m34 = xor i1 %__m33, true
  br label %11

; <label>:11:                                     ; preds = %2
  %12 = add i64 %__v51__i, 1
  br label %0

; <label>:13:                                     ; preds = %0
  br label %14

; <label>:14:                                     ; preds = %25, %13
  %__v53__j = phi i64 [ 0, %13 ], [ %26, %25 ]
  %15 = icmp ult i64 %__v53__j, %__v89___v48_Y_p_len
  br i1 %15, label %16, label %27

; <label>:16:                                     ; preds = %14
  %__v54_j = sub i64 %__v89___v48_Y_p_len, %__v53__j
  %__v132_lexpr = sub i64 %__v54_j, 1
  %17 = load i64, i64* %__v50_saved_j
  %18 = icmp eq i64 %17, 0
  %19 = getelementptr i64, i64* %__v48_Y_p, i64 %__v132_lexpr
  %20 = load i64, i64* %19
  %21 = icmp ne i64 %20, 0
  %__m31 = call i1 @fact.select.asm.i1(i1 %18, i1 %21, i1 false)
  %22 = and i1 true, %__m31
  %23 = load i64, i64* %__v50_saved_j
  %24 = call i64 @fact.cmov.sel.i64(i1 %22, i64 %__v54_j, i64 %23)
  store i64 %24, i64* %__v50_saved_j
  %__m32 = xor i1 %__m31, true
  br label %25

; <label>:25:                                     ; preds = %16
  %26 = add i64 %__v53__j, 1
  br label %14

; <label>:27:                                     ; preds = %14
  %28 = load i64, i64* %__v49_saved_i
  %29 = icmp eq i64 %28, 0
  %30 = load i64, i64* %__v50_saved_j
  %31 = icmp eq i64 %30, 0
  %__m7 = call i1 @fact.select.asm.i1(i1 %29, i1 %31, i1 false)
  %32 = and i1 true, %__m7
  %33 = load i32, i32* %__rval
  %34 = call i32 @fact.cmov.sel.i32(i1 %32, i32 0, i32 %33)
  store i32 %34, i32* %__rval
  %35 = and i1 true, %__m7
  %36 = load i1, i1* %__rctx
  %37 = call i1 @fact.cmov.asm.i1(i1 %35, i1 false, i1 %36)
  store i1 %37, i1* %__rctx
  %__m8 = xor i1 %__m7, true
  %__m9 = load i1, i1* %__rctx
  %38 = load i64, i64* %__v49_saved_i
  %39 = load i64, i64* %__v50_saved_j
  %__m10 = icmp ugt i64 %38, %39
  %40 = and i1 true, %__m10
  %41 = and i1 %40, %__m9
  %42 = load i32, i32* %__rval
  %43 = call i32 @fact.cmov.sel.i32(i1 %41, i32 1, i32 %42)
  store i32 %43, i32* %__rval
  %44 = and i1 true, %__m10
  %45 = and i1 %44, %__m9
  %46 = load i1, i1* %__rctx
  %47 = call i1 @fact.cmov.asm.i1(i1 %45, i1 false, i1 %46)
  store i1 %47, i1* %__rctx
  %__m11 = xor i1 %__m10, true
  %__m12 = load i1, i1* %__rctx
  %48 = load i64, i64* %__v50_saved_j
  %49 = load i64, i64* %__v49_saved_i
  %__m13 = icmp ugt i64 %48, %49
  %50 = and i1 true, %__m13
  %51 = and i1 %50, %__m12
  %52 = and i1 %51, %__m9
  %53 = load i32, i32* %__rval
  %54 = call i32 @fact.cmov.sel.i32(i1 %52, i32 -1, i32 %53)
  store i32 %54, i32* %__rval
  %55 = and i1 true, %__m13
  %56 = and i1 %55, %__m12
  %57 = and i1 %56, %__m9
  %58 = load i1, i1* %__rctx
  %59 = call i1 @fact.cmov.asm.i1(i1 %57, i1 false, i1 %58)
  store i1 %59, i1* %__rctx
  %__m14 = xor i1 %__m13, true
  %__m15 = load i1, i1* %__rctx
  %60 = icmp ult i64 %__v88___v47_X_p_len, %__v89___v48_Y_p_len
  %__v55_start_idx = select i1 %60, i64 %__v88___v47_X_p_len, i64 %__v89___v48_Y_p_len
  br label %61

; <label>:61:                                     ; preds = %107, %27
  %__v56__i = phi i64 [ 0, %27 ], [ %108, %107 ]
  %62 = icmp ult i64 %__v56__i, %__v55_start_idx
  br i1 %62, label %63, label %109

; <label>:63:                                     ; preds = %61
  %__m18 = load i1, i1* %__rctx
  %__v57_i = sub i64 %__v55_start_idx, %__v56__i
  %64 = load i64, i64* %__v49_saved_i
  %__m19 = icmp ule i64 %__v57_i, %64
  %__v133_lexpr = sub i64 %__v57_i, 1
  %__v134_lexpr = sub i64 %__v57_i, 1
  %65 = getelementptr i64, i64* %__v47_X_p, i64 %__v133_lexpr
  %66 = load i64, i64* %65
  %67 = getelementptr i64, i64* %__v48_Y_p, i64 %__v134_lexpr
  %68 = load i64, i64* %67
  %__m20 = icmp ugt i64 %66, %68
  %69 = and i1 true, %__m20
  %70 = and i1 %69, %__m19
  %71 = and i1 %70, %__m18
  %72 = and i1 %71, %__m15
  %73 = and i1 %72, %__m12
  %74 = and i1 %73, %__m9
  %75 = load i32, i32* %__rval
  %76 = call i32 @fact.cmov.sel.i32(i1 %74, i32 1, i32 %75)
  store i32 %76, i32* %__rval
  %77 = and i1 true, %__m20
  %78 = and i1 %77, %__m19
  %79 = and i1 %78, %__m18
  %80 = and i1 %79, %__m15
  %81 = and i1 %80, %__m12
  %82 = and i1 %81, %__m9
  %83 = load i1, i1* %__rctx
  %84 = call i1 @fact.cmov.asm.i1(i1 %82, i1 false, i1 %83)
  store i1 %84, i1* %__rctx
  %__m21 = xor i1 %__m20, true
  %__m22 = load i1, i1* %__rctx
  %__v135_lexpr = sub i64 %__v57_i, 1
  %__v136_lexpr = sub i64 %__v57_i, 1
  %85 = getelementptr i64, i64* %__v47_X_p, i64 %__v135_lexpr
  %86 = load i64, i64* %85
  %87 = getelementptr i64, i64* %__v48_Y_p, i64 %__v136_lexpr
  %88 = load i64, i64* %87
  %__m23 = icmp ult i64 %86, %88
  %89 = and i1 true, %__m23
  %90 = and i1 %89, %__m22
  %91 = and i1 %90, %__m19
  %92 = and i1 %91, %__m18
  %93 = and i1 %92, %__m15
  %94 = and i1 %93, %__m12
  %95 = and i1 %94, %__m9
  %96 = load i32, i32* %__rval
  %97 = call i32 @fact.cmov.sel.i32(i1 %95, i32 -1, i32 %96)
  store i32 %97, i32* %__rval
  %98 = and i1 true, %__m23
  %99 = and i1 %98, %__m22
  %100 = and i1 %99, %__m19
  %101 = and i1 %100, %__m18
  %102 = and i1 %101, %__m15
  %103 = and i1 %102, %__m12
  %104 = and i1 %103, %__m9
  %105 = load i1, i1* %__rctx
  %106 = call i1 @fact.cmov.asm.i1(i1 %104, i1 false, i1 %105)
  store i1 %106, i1* %__rctx
  %__m24 = xor i1 %__m23, true
  %__m25 = xor i1 %__m22, true
  %__m26 = xor i1 %__m19, true
  %__m27 = xor i1 %__m18, true
  br label %107

; <label>:107:                                    ; preds = %63
  %108 = add i64 %__v56__i, 1
  br label %61

; <label>:109:                                    ; preds = %61
  %__m16 = load i1, i1* %__rctx
  %110 = and i1 true, %__m16
  %111 = and i1 %110, %__m15
  %112 = and i1 %111, %__m12
  %113 = and i1 %112, %__m9
  %114 = load i32, i32* %__rval
  %115 = call i32 @fact.cmov.sel.i32(i1 %113, i32 0, i32 %114)
  store i32 %115, i32* %__rval
  %116 = and i1 true, %__m16
  %117 = and i1 %116, %__m15
  %118 = and i1 %117, %__m12
  %119 = and i1 %118, %__m9
  %120 = load i1, i1* %__rctx
  %121 = call i1 @fact.cmov.asm.i1(i1 %119, i1 false, i1 %120)
  store i1 %121, i1* %__rctx
  %__m17 = xor i1 %__m16, true
  %__m28 = xor i1 %__m15, true
  %__m29 = xor i1 %__m12, true
  %__m30 = xor i1 %__m9, true
  %122 = load i32, i32* %__rval
  ret i32 %122
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

; Function Attrs: alwaysinline
define internal i32 @fact.cmov.sel.i32(i1 %cond, i32 %x, i32 %y) #0 {
entry:
  %0 = select i1 %cond, i32 %x, i32 %y
  ret i32 %0
}

define internal void @_mpi_mul_hlp(i64 %__v37_n, i64* %__v38_s, i64 %__v86___v38_s_len, i64* %__v39_d, i64 %__v87___v39_d_len, i64 %__v40_b) {
entry:
  %__rctx = alloca i1
  store i1 true, i1* %__rctx
  %__v41_c = alloca i64
  store i64 0, i64* %__v41_c
  br label %0

; <label>:0:                                      ; preds = %33, %entry
  %__v42_i = phi i64 [ 0, %entry ], [ %34, %33 ]
  %1 = icmp ult i64 %__v42_i, %__v37_n
  br i1 %1, label %2, label %35

; <label>:2:                                      ; preds = %0
  %3 = getelementptr i64, i64* %__v38_s, i64 %__v42_i
  %4 = load i64, i64* %3
  %5 = zext i64 %4 to i128
  %6 = zext i64 %__v40_b to i128
  %__v43_r = mul i128 %5, %6
  %7 = trunc i128 %__v43_r to i64
  %__v44_r0 = alloca i64
  store i64 %7, i64* %__v44_r0
  %8 = lshr i128 %__v43_r, 64
  %9 = trunc i128 %8 to i64
  %__v45_r1 = alloca i64
  store i64 %9, i64* %__v45_r1
  %10 = load i64, i64* %__v44_r0
  %11 = load i64, i64* %__v41_c
  %12 = add i64 %10, %11
  store i64 %12, i64* %__v44_r0
  %13 = load i64, i64* %__v45_r1
  %14 = load i64, i64* %__v44_r0
  %15 = load i64, i64* %__v41_c
  %16 = icmp ult i64 %14, %15
  %17 = call i64 @fact.select.sel.i64(i1 %16, i64 1, i64 0)
  %18 = add i64 %13, %17
  store i64 %18, i64* %__v45_r1
  %19 = load i64, i64* %__v44_r0
  %20 = getelementptr i64, i64* %__v39_d, i64 %__v42_i
  %21 = load i64, i64* %20
  %22 = add i64 %19, %21
  store i64 %22, i64* %__v44_r0
  %23 = load i64, i64* %__v45_r1
  %24 = load i64, i64* %__v44_r0
  %25 = getelementptr i64, i64* %__v39_d, i64 %__v42_i
  %26 = load i64, i64* %25
  %27 = icmp ult i64 %24, %26
  %28 = call i64 @fact.select.sel.i64(i1 %27, i64 1, i64 0)
  %29 = add i64 %23, %28
  store i64 %29, i64* %__v45_r1
  %30 = load i64, i64* %__v45_r1
  store i64 %30, i64* %__v41_c
  %31 = getelementptr i64, i64* %__v39_d, i64 %__v42_i
  %32 = load i64, i64* %__v44_r0
  store i64 %32, i64* %31
  br label %33

; <label>:33:                                     ; preds = %2
  %34 = add i64 %__v42_i, 1
  br label %0

; <label>:35:                                     ; preds = %0
  br label %36

; <label>:36:                                     ; preds = %49, %35
  %__v46_i = phi i64 [ %__v37_n, %35 ], [ %50, %49 ]
  %37 = icmp ult i64 %__v46_i, %__v87___v39_d_len
  br i1 %37, label %38, label %51

; <label>:38:                                     ; preds = %36
  %39 = getelementptr i64, i64* %__v39_d, i64 %__v46_i
  %40 = getelementptr i64, i64* %__v39_d, i64 %__v46_i
  %41 = load i64, i64* %40
  %42 = load i64, i64* %__v41_c
  %43 = add i64 %41, %42
  store i64 %43, i64* %39
  %44 = getelementptr i64, i64* %__v39_d, i64 %__v46_i
  %45 = load i64, i64* %44
  %46 = load i64, i64* %__v41_c
  %47 = icmp ult i64 %45, %46
  %48 = call i64 @fact.select.sel.i64(i1 %47, i64 1, i64 0)
  store i64 %48, i64* %__v41_c
  br label %49

; <label>:49:                                     ; preds = %38
  %50 = add i64 %__v46_i, 1
  br label %36

; <label>:51:                                     ; preds = %36
  ret void
}

define internal void @_mpi_montmul(i64* %__v25_A_p, i64 %__v82___v25_A_p_len, i64* %__v26_B_p, i64 %__v83___v26_B_p_len, i64* %__v27_N_p, i64 %__v30_n, i64 %__v28_mm, i64* %__v29_T_p, i64 %__v85___v29_T_p_len) {
entry:
  %__rctx = alloca i1
  store i1 true, i1* %__rctx
  %0 = icmp ult i64 %__v83___v26_B_p_len, %__v30_n
  %__v31_m = select i1 %0, i64 %__v83___v26_B_p_len, i64 %__v30_n
  br label %1

; <label>:1:                                      ; preds = %5, %entry
  %__v32_i = phi i64 [ 0, %entry ], [ %6, %5 ]
  %2 = icmp ult i64 %__v32_i, %__v85___v29_T_p_len
  br i1 %2, label %3, label %7

; <label>:3:                                      ; preds = %1
  %4 = getelementptr i64, i64* %__v29_T_p, i64 %__v32_i
  store i64 0, i64* %4
  br label %5

; <label>:5:                                      ; preds = %3
  %6 = add i64 %__v32_i, 1
  br label %1

; <label>:7:                                      ; preds = %1
  br label %8

; <label>:8:                                      ; preds = %24, %7
  %__v33_i = phi i64 [ 0, %7 ], [ %25, %24 ]
  %9 = icmp ult i64 %__v33_i, %__v30_n
  br i1 %9, label %10, label %26

; <label>:10:                                     ; preds = %8
  %11 = getelementptr i64, i64* %__v25_A_p, i64 %__v33_i
  %__v34_u0 = load i64, i64* %11
  %12 = getelementptr i64, i64* %__v29_T_p, i64 %__v33_i
  %13 = load i64, i64* %12
  %14 = getelementptr i64, i64* %__v26_B_p, i64 0
  %15 = load i64, i64* %14
  %16 = mul i64 %__v34_u0, %15
  %17 = add i64 %13, %16
  %__v35_u1 = mul i64 %17, %__v28_mm
  %__v125_lexpr = sub i64 %__v85___v29_T_p_len, %__v33_i
  %__v126_lexpr = sub i64 %__v85___v29_T_p_len, %__v33_i
  %18 = getelementptr i64, i64* %__v29_T_p, i64 %__v33_i
  call void @_mpi_mul_hlp(i64 %__v31_m, i64* %__v26_B_p, i64 %__v83___v26_B_p_len, i64* %18, i64 %__v126_lexpr, i64 %__v34_u0)
  %__v127_lexpr = sub i64 %__v85___v29_T_p_len, %__v33_i
  %__v128_lexpr = sub i64 %__v85___v29_T_p_len, %__v33_i
  %19 = getelementptr i64, i64* %__v29_T_p, i64 %__v33_i
  call void @_mpi_mul_hlp(i64 %__v30_n, i64* %__v27_N_p, i64 %__v30_n, i64* %19, i64 %__v128_lexpr, i64 %__v35_u1)
  %20 = getelementptr i64, i64* %__v29_T_p, i64 %__v33_i
  store i64 %__v34_u0, i64* %20
  %21 = add i64 %__v33_i, 1
  %22 = add i64 %21, %__v30_n
  %__v129_lexpr = add i64 %22, 1
  %23 = getelementptr i64, i64* %__v29_T_p, i64 %__v129_lexpr
  store i64 0, i64* %23
  br label %24

; <label>:24:                                     ; preds = %10
  %25 = add i64 %__v33_i, 1
  br label %8

; <label>:26:                                     ; preds = %8
  %27 = add i64 %__v30_n, 1
  br label %28

; <label>:28:                                     ; preds = %34, %26
  %__v36_i = phi i64 [ 0, %26 ], [ %35, %34 ]
  %29 = icmp ult i64 %__v36_i, %27
  br i1 %29, label %30, label %36

; <label>:30:                                     ; preds = %28
  %__v130_lexpr = add i64 %__v30_n, %__v36_i
  %31 = getelementptr i64, i64* %__v25_A_p, i64 %__v36_i
  %32 = getelementptr i64, i64* %__v29_T_p, i64 %__v130_lexpr
  %33 = load i64, i64* %32
  store i64 %33, i64* %31
  br label %34

; <label>:34:                                     ; preds = %30
  %35 = add i64 %__v36_i, 1
  br label %28

; <label>:36:                                     ; preds = %28
  %__v70__mbedtls_mpi_cmp_abs = call i32 @_mbedtls_mpi_cmp_abs(i64* %__v25_A_p, i64 %__v82___v25_A_p_len, i64* %__v27_N_p, i64 %__v30_n)
  %__m5 = icmp sge i32 %__v70__mbedtls_mpi_cmp_abs, 0
  %37 = and i1 true, %__m5
  call void @_mpi_sub_hlp(i64 %__v30_n, i64* %__v27_N_p, i64 %__v30_n, i64* %__v25_A_p, i64 %__v82___v25_A_p_len, i1 %37)
  %__m6 = xor i1 %__m5, true
  ret void
}

define internal void @_mpi_montred(i64* %__v20_A, i64 %__v79___v20_A_len, i64* %__v21_N, i64 %__v80___v21_N_len, i64 %__v22_mm, i64* %__v23_T, i64 %__v81___v23_T_len) {
entry:
  %__rctx = alloca i1
  store i1 true, i1* %__rctx
  %__v24_one = alloca i64, i64 1
  %0 = getelementptr i64, i64* %__v24_one, i64 0
  store i64 1, i64* %0
  call void @_mpi_montmul(i64* %__v20_A, i64 %__v79___v20_A_len, i64* %__v24_one, i64 1, i64* %__v21_N, i64 %__v80___v21_N_len, i64 %__v22_mm, i64* %__v23_T, i64 %__v81___v23_T_len)
  ret void
}

define i32 @_f_mpi_exp_mod(i64* %__v1_X, i64 %__v71___v1_X_len, i64* %__v2_A, i64 %__v72___v2_A_len, i32 %__v3_A_sgn, i64* %__v4_E, i64 %__v73___v4_E_len, i64* %__v5_N, i64 %__v74___v5_N_len, i64* %__v6_RR, i64 %__v75___v6_RR_len, i64* %__v7_T, i64 %__v76___v7_T_len, i64* %__v8_W, i64 %__v77___v8_W_len, i64* %__v9_TW, i64 %__v78___v9_TW_len, i64 %__v10_mm) {
entry:
  %__rval = alloca i32
  store i32 0, i32* %__rval
  %__rctx = alloca i1
  store i1 true, i1* %__rctx
  %0 = lshr i64 %__v77___v8_W_len, 4
  %__v11_wlen = trunc i64 %0 to i32
  %__v12_ret = alloca i32
  store i32 1, i32* %__v12_ret
  call void @_mpi_copy(i64* %__v1_X, i64 %__v71___v1_X_len, i64* %__v6_RR, i64 %__v75___v6_RR_len, i1 true)
  call void @_mpi_montred(i64* %__v1_X, i64 %__v71___v1_X_len, i64* %__v5_N, i64 %__v74___v5_N_len, i64 %__v10_mm, i64* %__v7_T, i64 %__v76___v7_T_len)
  %__v94_lexpr = zext i32 %__v11_wlen to i64
  %__v95_lexpr = zext i32 %__v11_wlen to i64
  %1 = getelementptr i64, i64* %__v8_W, i64 0
  call void @_mpi_copy(i64* %1, i64 %__v95_lexpr, i64* %__v1_X, i64 %__v71___v1_X_len, i1 true)
  %__v96_lexpr = zext i32 %__v11_wlen to i64
  %__v97_lexpr = zext i32 %__v11_wlen to i64
  %__v98_lexpr = zext i32 %__v11_wlen to i64
  %__v99_lexpr = zext i32 %__v11_wlen to i64
  %2 = getelementptr i64, i64* %__v8_W, i64 %__v96_lexpr
  call void @_mpi_copy(i64* %2, i64 %__v99_lexpr, i64* %__v2_A, i64 %__v72___v2_A_len, i1 true)
  %__v100_lexpr = zext i32 %__v11_wlen to i64
  %__v101_lexpr = zext i32 %__v11_wlen to i64
  %__v102_lexpr = zext i32 %__v11_wlen to i64
  %__v103_lexpr = zext i32 %__v11_wlen to i64
  %3 = getelementptr i64, i64* %__v8_W, i64 %__v100_lexpr
  call void @_mpi_montmul(i64* %3, i64 %__v103_lexpr, i64* %__v6_RR, i64 %__v75___v6_RR_len, i64* %__v5_N, i64 %__v74___v5_N_len, i64 %__v10_mm, i64* %__v7_T, i64 %__v76___v7_T_len)
  br label %4

; <label>:4:                                      ; preds = %19, %entry
  %__v13_widx = phi i32 [ 2, %entry ], [ %20, %19 ]
  %5 = icmp ult i32 %__v13_widx, 16
  br i1 %5, label %6, label %21

; <label>:6:                                      ; preds = %4
  %7 = mul i32 %__v13_widx, %__v11_wlen
  %__v104_lexpr = zext i32 %7 to i64
  %__v105_lexpr = zext i32 %__v11_wlen to i64
  %8 = mul i32 %__v13_widx, %__v11_wlen
  %__v106_lexpr = zext i32 %8 to i64
  %__v107_lexpr = zext i32 %__v11_wlen to i64
  %9 = sub i32 %__v13_widx, 1
  %10 = mul i32 %9, %__v11_wlen
  %__v108_lexpr = zext i32 %10 to i64
  %__v109_lexpr = zext i32 %__v11_wlen to i64
  %11 = sub i32 %__v13_widx, 1
  %12 = mul i32 %11, %__v11_wlen
  %__v110_lexpr = zext i32 %12 to i64
  %__v111_lexpr = zext i32 %__v11_wlen to i64
  %13 = getelementptr i64, i64* %__v8_W, i64 %__v104_lexpr
  %14 = getelementptr i64, i64* %__v8_W, i64 %__v108_lexpr
  call void @_mpi_copy(i64* %13, i64 %__v107_lexpr, i64* %14, i64 %__v111_lexpr, i1 true)
  %15 = mul i32 %__v13_widx, %__v11_wlen
  %__v112_lexpr = zext i32 %15 to i64
  %__v113_lexpr = zext i32 %__v11_wlen to i64
  %16 = mul i32 %__v13_widx, %__v11_wlen
  %__v114_lexpr = zext i32 %16 to i64
  %__v115_lexpr = zext i32 %__v11_wlen to i64
  %__v116_lexpr = zext i32 %__v11_wlen to i64
  %__v117_lexpr = zext i32 %__v11_wlen to i64
  %__v118_lexpr = zext i32 %__v11_wlen to i64
  %__v119_lexpr = zext i32 %__v11_wlen to i64
  %17 = getelementptr i64, i64* %__v8_W, i64 %__v112_lexpr
  %18 = getelementptr i64, i64* %__v8_W, i64 %__v116_lexpr
  call void @_mpi_montmul(i64* %17, i64 %__v115_lexpr, i64* %18, i64 %__v119_lexpr, i64* %__v5_N, i64 %__v74___v5_N_len, i64 %__v10_mm, i64* %__v7_T, i64 %__v76___v7_T_len)
  br label %19

; <label>:19:                                     ; preds = %6
  %20 = add i32 %__v13_widx, 1
  br label %4

; <label>:21:                                     ; preds = %4
  br label %22

; <label>:22:                                     ; preds = %26, %21
  %__v14__limb = phi i64 [ 0, %21 ], [ %27, %26 ]
  %23 = icmp ult i64 %__v14__limb, %__v73___v4_E_len
  br i1 %23, label %24, label %28

; <label>:24:                                     ; preds = %22
  %25 = sub i64 %__v73___v4_E_len, %__v14__limb
  %__v15_limb = trunc i64 %25 to i32
  br label %42

; <label>:26:                                     ; preds = %54
  %27 = add i64 %__v14__limb, 1
  br label %22

; <label>:28:                                     ; preds = %22
  call void @_mpi_montred(i64* %__v1_X, i64 %__v71___v1_X_len, i64* %__v5_N, i64 %__v74___v5_N_len, i64 %__v10_mm, i64* %__v7_T, i64 %__v76___v7_T_len)
  %29 = icmp slt i32 %__v3_A_sgn, 0
  %30 = getelementptr i64, i64* %__v4_E, i64 0
  %31 = load i64, i64* %30
  %32 = and i64 %31, 1
  %33 = icmp ne i64 %32, 0
  %__m1 = call i1 @fact.select.asm.i1(i1 %29, i1 %33, i1 false)
  %34 = and i1 true, %__m1
  %35 = load i32, i32* %__v12_ret
  %36 = call i32 @fact.cmov.sel.i32(i1 %34, i32 -1, i32 %35)
  store i32 %36, i32* %__v12_ret
  %37 = and i1 true, %__m1
  call void @_mpi_copy(i64* %__v7_T, i64 %__v76___v7_T_len, i64* %__v5_N, i64 %__v74___v5_N_len, i1 %37)
  %38 = and i1 true, %__m1
  call void @_mpi_sub_hlp(i64 %__v71___v1_X_len, i64* %__v1_X, i64 %__v71___v1_X_len, i64* %__v7_T, i64 %__v76___v7_T_len, i1 %38)
  %39 = getelementptr i64, i64* %__v7_T, i64 0
  %40 = and i1 true, %__m1
  call void @_mpi_copy(i64* %__v1_X, i64 %__v71___v1_X_len, i64* %39, i64 %__v71___v1_X_len, i1 %40)
  %__m2 = xor i1 %__m1, true
  %41 = load i32, i32* %__v12_ret
  ret i32 %41

; <label>:42:                                     ; preds = %52, %24
  %__v16_i = phi i32 [ 1, %24 ], [ %53, %52 ]
  %43 = icmp ult i32 %__v16_i, 17
  br i1 %43, label %44, label %54

; <label>:44:                                     ; preds = %42
  call void @_mpi_montmul(i64* %__v1_X, i64 %__v71___v1_X_len, i64* %__v1_X, i64 %__v71___v1_X_len, i64* %__v5_N, i64 %__v74___v5_N_len, i64 %__v10_mm, i64* %__v7_T, i64 %__v76___v7_T_len)
  call void @_mpi_montmul(i64* %__v1_X, i64 %__v71___v1_X_len, i64* %__v1_X, i64 %__v71___v1_X_len, i64* %__v5_N, i64 %__v74___v5_N_len, i64 %__v10_mm, i64* %__v7_T, i64 %__v76___v7_T_len)
  call void @_mpi_montmul(i64* %__v1_X, i64 %__v71___v1_X_len, i64* %__v1_X, i64 %__v71___v1_X_len, i64* %__v5_N, i64 %__v74___v5_N_len, i64 %__v10_mm, i64* %__v7_T, i64 %__v76___v7_T_len)
  call void @_mpi_montmul(i64* %__v1_X, i64 %__v71___v1_X_len, i64* %__v1_X, i64 %__v71___v1_X_len, i64* %__v5_N, i64 %__v74___v5_N_len, i64 %__v10_mm, i64* %__v7_T, i64 %__v76___v7_T_len)
  %45 = sub i32 %__v15_limb, 1
  %__v120_lexpr = zext i32 %45 to i64
  %46 = getelementptr i64, i64* %__v4_E, i64 %__v120_lexpr
  %47 = load i64, i64* %46
  %48 = mul i32 4, %__v16_i
  %49 = sub i32 64, %48
  %50 = zext i32 %49 to i64
  %51 = lshr i64 %47, %50
  %__v17_wbits = and i64 %51, 15
  br label %55

; <label>:52:                                     ; preds = %65
  %53 = add i32 %__v16_i, 1
  br label %42

; <label>:54:                                     ; preds = %42
  br label %26

; <label>:55:                                     ; preds = %63, %44
  %__v18_widx = phi i32 [ 0, %44 ], [ %64, %63 ]
  %56 = icmp ult i32 %__v18_widx, 16
  br i1 %56, label %57, label %65

; <label>:57:                                     ; preds = %55
  %58 = zext i32 %__v18_widx to i64
  %__m3 = icmp eq i64 %__v17_wbits, %58
  %59 = mul i32 %__v18_widx, %__v11_wlen
  %__v121_lexpr = zext i32 %59 to i64
  %__v122_lexpr = zext i32 %__v11_wlen to i64
  %60 = mul i32 %__v18_widx, %__v11_wlen
  %__v123_lexpr = zext i32 %60 to i64
  %__v124_lexpr = zext i32 %__v11_wlen to i64
  %61 = getelementptr i64, i64* %__v8_W, i64 %__v121_lexpr
  %62 = and i1 true, %__m3
  call void @_mpi_copy(i64* %__v9_TW, i64 %__v78___v9_TW_len, i64* %61, i64 %__v124_lexpr, i1 %62)
  %__m4 = xor i1 %__m3, true
  br label %63

; <label>:63:                                     ; preds = %57
  %64 = add i32 %__v18_widx, 1
  br label %55

; <label>:65:                                     ; preds = %55
  call void @_mpi_montmul(i64* %__v1_X, i64 %__v71___v1_X_len, i64* %__v9_TW, i64 %__v78___v9_TW_len, i64* %__v5_N, i64 %__v74___v5_N_len, i64 %__v10_mm, i64* %__v7_T, i64 %__v76___v7_T_len)
  br label %52
}

attributes #0 = { alwaysinline }
