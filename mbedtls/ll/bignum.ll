; ModuleID = './bignum.bc'
source_filename = "Module"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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
  %9 = call i64 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %7, i64 %6, i64 %8)
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
  %19 = call i64 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %17, i64 0, i64 %18)
  store i64 %19, i64* %16
  br label %20

; <label>:20:                                     ; preds = %15
  %21 = add i64 %__v69_i, 1
  br label %13

; <label>:22:                                     ; preds = %13
  %23 = and i1 true, %__m37
  %24 = load i1, i1* %__rctx
  %25 = zext i1 %24 to i32
  %26 = call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %23, i32 0, i32 %25)
  %27 = trunc i32 %26 to i1
  store i1 %27, i1* %__rctx
  %__m38 = xor i1 %__m37, true
  ret void
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
  %7 = call i64 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %6, i64 1, i64 0)
  %8 = and i1 true, %__m35
  %9 = load i64, i64* %__v62_z
  %10 = call i64 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %8, i64 %7, i64 %9)
  store i64 %10, i64* %__v62_z
  %11 = getelementptr i64, i64* %__v60_d, i64 %__v63_i
  %12 = getelementptr i64, i64* %__v60_d, i64 %__v63_i
  %13 = load i64, i64* %12
  %14 = load i64, i64* %__v61_c
  %15 = sub i64 %13, %14
  %16 = and i1 true, %__m35
  %17 = load i64, i64* %11
  %18 = call i64 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %16, i64 %15, i64 %17)
  store i64 %18, i64* %11
  %19 = getelementptr i64, i64* %__v60_d, i64 %__v63_i
  %20 = load i64, i64* %19
  %21 = getelementptr i64, i64* %__v59_s, i64 %__v63_i
  %22 = load i64, i64* %21
  %23 = icmp ult i64 %20, %22
  %24 = call i64 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %23, i64 1, i64 0)
  %25 = load i64, i64* %__v62_z
  %26 = add i64 %24, %25
  %27 = and i1 true, %__m35
  %28 = load i64, i64* %__v61_c
  %29 = call i64 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %27, i64 %26, i64 %28)
  store i64 %29, i64* %__v61_c
  %30 = getelementptr i64, i64* %__v60_d, i64 %__v63_i
  %31 = getelementptr i64, i64* %__v60_d, i64 %__v63_i
  %32 = load i64, i64* %31
  %33 = getelementptr i64, i64* %__v59_s, i64 %__v63_i
  %34 = load i64, i64* %33
  %35 = sub i64 %32, %34
  %36 = and i1 true, %__m35
  %37 = load i64, i64* %30
  %38 = call i64 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %36, i64 %35, i64 %37)
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
  %49 = call i64 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %48, i64 1, i64 0)
  %50 = and i1 true, %__m35
  %51 = load i64, i64* %__v62_z
  %52 = call i64 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %50, i64 %49, i64 %51)
  store i64 %52, i64* %__v62_z
  %53 = getelementptr i64, i64* %__v60_d, i64 %__v64_i
  %54 = getelementptr i64, i64* %__v60_d, i64 %__v64_i
  %55 = load i64, i64* %54
  %56 = load i64, i64* %__v61_c
  %57 = sub i64 %55, %56
  %58 = and i1 true, %__m35
  %59 = load i64, i64* %53
  %60 = call i64 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %58, i64 %57, i64 %59)
  store i64 %60, i64* %53
  %61 = load i64, i64* %__v62_z
  %62 = and i1 true, %__m35
  %63 = load i64, i64* %__v61_c
  %64 = call i64 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %62, i64 %61, i64 %63)
  store i64 %64, i64* %__v61_c
  br label %65

; <label>:65:                                     ; preds = %44
  %66 = add i64 %__v64_i, 1
  br label %42

; <label>:67:                                     ; preds = %42
  %68 = and i1 true, %__m35
  %69 = load i1, i1* %__rctx
  %70 = zext i1 %69 to i32
  %71 = call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %68, i32 0, i32 %70)
  %72 = trunc i32 %71 to i1
  store i1 %72, i1* %__rctx
  %__m36 = xor i1 %__m35, true
  ret void
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

; <label>:0:                                      ; preds = %14, %entry
  %__v51__i = phi i64 [ 0, %entry ], [ %15, %14 ]
  %1 = icmp ult i64 %__v51__i, %__v88___v47_X_p_len
  br i1 %1, label %2, label %16

; <label>:2:                                      ; preds = %0
  %__v52_i = sub i64 %__v88___v47_X_p_len, %__v51__i
  %__v131_lexpr = sub i64 %__v52_i, 1
  %3 = load i64, i64* %__v49_saved_i
  %4 = icmp eq i64 %3, 0
  %5 = getelementptr i64, i64* %__v47_X_p, i64 %__v131_lexpr
  %6 = load i64, i64* %5
  %7 = icmp ne i64 %6, 0
  %8 = zext i1 %7 to i32
  %9 = call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %4, i32 %8, i32 0)
  %10 = trunc i32 %9 to i1
  %11 = and i1 true, %10
  %12 = load i64, i64* %__v49_saved_i
  %13 = call i64 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %11, i64 %__v52_i, i64 %12)
  store i64 %13, i64* %__v49_saved_i
  %__m34 = xor i1 %10, true
  br label %14

; <label>:14:                                     ; preds = %2
  %15 = add i64 %__v51__i, 1
  br label %0

; <label>:16:                                     ; preds = %0
  br label %17

; <label>:17:                                     ; preds = %31, %16
  %__v53__j = phi i64 [ 0, %16 ], [ %32, %31 ]
  %18 = icmp ult i64 %__v53__j, %__v89___v48_Y_p_len
  br i1 %18, label %19, label %33

; <label>:19:                                     ; preds = %17
  %__v54_j = sub i64 %__v89___v48_Y_p_len, %__v53__j
  %__v132_lexpr = sub i64 %__v54_j, 1
  %20 = load i64, i64* %__v50_saved_j
  %21 = icmp eq i64 %20, 0
  %22 = getelementptr i64, i64* %__v48_Y_p, i64 %__v132_lexpr
  %23 = load i64, i64* %22
  %24 = icmp ne i64 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %21, i32 %25, i32 0)
  %27 = trunc i32 %26 to i1
  %28 = and i1 true, %27
  %29 = load i64, i64* %__v50_saved_j
  %30 = call i64 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %28, i64 %__v54_j, i64 %29)
  store i64 %30, i64* %__v50_saved_j
  %__m32 = xor i1 %27, true
  br label %31

; <label>:31:                                     ; preds = %19
  %32 = add i64 %__v53__j, 1
  br label %17

; <label>:33:                                     ; preds = %17
  %34 = load i64, i64* %__v49_saved_i
  %35 = icmp eq i64 %34, 0
  %36 = load i64, i64* %__v50_saved_j
  %37 = icmp eq i64 %36, 0
  %38 = zext i1 %37 to i32
  %39 = call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %35, i32 %38, i32 0)
  %40 = trunc i32 %39 to i1
  %41 = and i1 true, %40
  %42 = load i32, i32* %__rval
  %43 = call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %41, i32 0, i32 %42)
  store i32 %43, i32* %__rval
  %44 = and i1 true, %40
  %45 = load i1, i1* %__rctx
  %46 = zext i1 %45 to i32
  %47 = call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %44, i32 0, i32 %46)
  %48 = trunc i32 %47 to i1
  store i1 %48, i1* %__rctx
  %__m8 = xor i1 %40, true
  %__m9 = load i1, i1* %__rctx
  %49 = load i64, i64* %__v49_saved_i
  %50 = load i64, i64* %__v50_saved_j
  %__m10 = icmp ugt i64 %49, %50
  %51 = and i1 true, %__m10
  %52 = and i1 %51, %__m9
  %53 = load i32, i32* %__rval
  %54 = call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %52, i32 1, i32 %53)
  store i32 %54, i32* %__rval
  %55 = and i1 true, %__m10
  %56 = and i1 %55, %__m9
  %57 = load i1, i1* %__rctx
  %58 = zext i1 %57 to i32
  %59 = call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %56, i32 0, i32 %58)
  %60 = trunc i32 %59 to i1
  store i1 %60, i1* %__rctx
  %__m11 = xor i1 %__m10, true
  %__m12 = load i1, i1* %__rctx
  %61 = load i64, i64* %__v50_saved_j
  %62 = load i64, i64* %__v49_saved_i
  %__m13 = icmp ugt i64 %61, %62
  %63 = and i1 true, %__m13
  %64 = and i1 %63, %__m12
  %65 = and i1 %64, %__m9
  %66 = load i32, i32* %__rval
  %67 = call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %65, i32 -1, i32 %66)
  store i32 %67, i32* %__rval
  %68 = and i1 true, %__m13
  %69 = and i1 %68, %__m12
  %70 = and i1 %69, %__m9
  %71 = load i1, i1* %__rctx
  %72 = zext i1 %71 to i32
  %73 = call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %70, i32 0, i32 %72)
  %74 = trunc i32 %73 to i1
  store i1 %74, i1* %__rctx
  %__m14 = xor i1 %__m13, true
  %__m15 = load i1, i1* %__rctx
  %75 = icmp ult i64 %__v88___v47_X_p_len, %__v89___v48_Y_p_len
  %__v55_start_idx = select i1 %75, i64 %__v88___v47_X_p_len, i64 %__v89___v48_Y_p_len
  br label %76

; <label>:76:                                     ; preds = %126, %33
  %__v56__i = phi i64 [ 0, %33 ], [ %127, %126 ]
  %77 = icmp ult i64 %__v56__i, %__v55_start_idx
  br i1 %77, label %78, label %128

; <label>:78:                                     ; preds = %76
  %__m18 = load i1, i1* %__rctx
  %__v57_i = sub i64 %__v55_start_idx, %__v56__i
  %79 = load i64, i64* %__v49_saved_i
  %__m19 = icmp ule i64 %__v57_i, %79
  %__v133_lexpr = sub i64 %__v57_i, 1
  %__v134_lexpr = sub i64 %__v57_i, 1
  %80 = getelementptr i64, i64* %__v47_X_p, i64 %__v133_lexpr
  %81 = load i64, i64* %80
  %82 = getelementptr i64, i64* %__v48_Y_p, i64 %__v134_lexpr
  %83 = load i64, i64* %82
  %__m20 = icmp ugt i64 %81, %83
  %84 = and i1 true, %__m20
  %85 = and i1 %84, %__m19
  %86 = and i1 %85, %__m18
  %87 = and i1 %86, %__m15
  %88 = and i1 %87, %__m12
  %89 = and i1 %88, %__m9
  %90 = load i32, i32* %__rval
  %91 = call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %89, i32 1, i32 %90)
  store i32 %91, i32* %__rval
  %92 = and i1 true, %__m20
  %93 = and i1 %92, %__m19
  %94 = and i1 %93, %__m18
  %95 = and i1 %94, %__m15
  %96 = and i1 %95, %__m12
  %97 = and i1 %96, %__m9
  %98 = load i1, i1* %__rctx
  %99 = zext i1 %98 to i32
  %100 = call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %97, i32 0, i32 %99)
  %101 = trunc i32 %100 to i1
  store i1 %101, i1* %__rctx
  %__m21 = xor i1 %__m20, true
  %__m22 = load i1, i1* %__rctx
  %__v135_lexpr = sub i64 %__v57_i, 1
  %__v136_lexpr = sub i64 %__v57_i, 1
  %102 = getelementptr i64, i64* %__v47_X_p, i64 %__v135_lexpr
  %103 = load i64, i64* %102
  %104 = getelementptr i64, i64* %__v48_Y_p, i64 %__v136_lexpr
  %105 = load i64, i64* %104
  %__m23 = icmp ult i64 %103, %105
  %106 = and i1 true, %__m23
  %107 = and i1 %106, %__m22
  %108 = and i1 %107, %__m19
  %109 = and i1 %108, %__m18
  %110 = and i1 %109, %__m15
  %111 = and i1 %110, %__m12
  %112 = and i1 %111, %__m9
  %113 = load i32, i32* %__rval
  %114 = call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %112, i32 -1, i32 %113)
  store i32 %114, i32* %__rval
  %115 = and i1 true, %__m23
  %116 = and i1 %115, %__m22
  %117 = and i1 %116, %__m19
  %118 = and i1 %117, %__m18
  %119 = and i1 %118, %__m15
  %120 = and i1 %119, %__m12
  %121 = and i1 %120, %__m9
  %122 = load i1, i1* %__rctx
  %123 = zext i1 %122 to i32
  %124 = call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %121, i32 0, i32 %123)
  %125 = trunc i32 %124 to i1
  store i1 %125, i1* %__rctx
  %__m24 = xor i1 %__m23, true
  %__m25 = xor i1 %__m22, true
  %__m26 = xor i1 %__m19, true
  %__m27 = xor i1 %__m18, true
  br label %126

; <label>:126:                                    ; preds = %78
  %127 = add i64 %__v56__i, 1
  br label %76

; <label>:128:                                    ; preds = %76
  %__m16 = load i1, i1* %__rctx
  %129 = and i1 true, %__m16
  %130 = and i1 %129, %__m15
  %131 = and i1 %130, %__m12
  %132 = and i1 %131, %__m9
  %133 = load i32, i32* %__rval
  %134 = call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %132, i32 0, i32 %133)
  store i32 %134, i32* %__rval
  %135 = and i1 true, %__m16
  %136 = and i1 %135, %__m15
  %137 = and i1 %136, %__m12
  %138 = and i1 %137, %__m9
  %139 = load i1, i1* %__rctx
  %140 = zext i1 %139 to i32
  %141 = call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %138, i32 0, i32 %140)
  %142 = trunc i32 %141 to i1
  store i1 %142, i1* %__rctx
  %__m17 = xor i1 %__m16, true
  %__m28 = xor i1 %__m15, true
  %__m29 = xor i1 %__m12, true
  %__m30 = xor i1 %__m9, true
  %143 = load i32, i32* %__rval
  ret i32 %143
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
  %17 = call i64 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %16, i64 1, i64 0)
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
  %28 = call i64 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %27, i64 1, i64 0)
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
  %48 = call i64 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %47, i64 1, i64 0)
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
  br label %45

; <label>:26:                                     ; preds = %57
  %27 = add i64 %__v14__limb, 1
  br label %22

; <label>:28:                                     ; preds = %22
  call void @_mpi_montred(i64* %__v1_X, i64 %__v71___v1_X_len, i64* %__v5_N, i64 %__v74___v5_N_len, i64 %__v10_mm, i64* %__v7_T, i64 %__v76___v7_T_len)
  %29 = icmp slt i32 %__v3_A_sgn, 0
  %30 = getelementptr i64, i64* %__v4_E, i64 0
  %31 = load i64, i64* %30
  %32 = and i64 %31, 1
  %33 = icmp ne i64 %32, 0
  %34 = zext i1 %33 to i32
  %35 = call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %29, i32 %34, i32 0)
  %36 = trunc i32 %35 to i1
  %37 = and i1 true, %36
  %38 = load i32, i32* %__v12_ret
  %39 = call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %37, i32 -1, i32 %38)
  store i32 %39, i32* %__v12_ret
  %40 = and i1 true, %36
  call void @_mpi_copy(i64* %__v7_T, i64 %__v76___v7_T_len, i64* %__v5_N, i64 %__v74___v5_N_len, i1 %40)
  %41 = and i1 true, %36
  call void @_mpi_sub_hlp(i64 %__v71___v1_X_len, i64* %__v1_X, i64 %__v71___v1_X_len, i64* %__v7_T, i64 %__v76___v7_T_len, i1 %41)
  %42 = getelementptr i64, i64* %__v7_T, i64 0
  %43 = and i1 true, %36
  call void @_mpi_copy(i64* %__v1_X, i64 %__v71___v1_X_len, i64* %42, i64 %__v71___v1_X_len, i1 %43)
  %__m2 = xor i1 %36, true
  %44 = load i32, i32* %__v12_ret
  ret i32 %44

; <label>:45:                                     ; preds = %55, %24
  %__v16_i = phi i32 [ 1, %24 ], [ %56, %55 ]
  %46 = icmp ult i32 %__v16_i, 17
  br i1 %46, label %47, label %57

; <label>:47:                                     ; preds = %45
  call void @_mpi_montmul(i64* %__v1_X, i64 %__v71___v1_X_len, i64* %__v1_X, i64 %__v71___v1_X_len, i64* %__v5_N, i64 %__v74___v5_N_len, i64 %__v10_mm, i64* %__v7_T, i64 %__v76___v7_T_len)
  call void @_mpi_montmul(i64* %__v1_X, i64 %__v71___v1_X_len, i64* %__v1_X, i64 %__v71___v1_X_len, i64* %__v5_N, i64 %__v74___v5_N_len, i64 %__v10_mm, i64* %__v7_T, i64 %__v76___v7_T_len)
  call void @_mpi_montmul(i64* %__v1_X, i64 %__v71___v1_X_len, i64* %__v1_X, i64 %__v71___v1_X_len, i64* %__v5_N, i64 %__v74___v5_N_len, i64 %__v10_mm, i64* %__v7_T, i64 %__v76___v7_T_len)
  call void @_mpi_montmul(i64* %__v1_X, i64 %__v71___v1_X_len, i64* %__v1_X, i64 %__v71___v1_X_len, i64* %__v5_N, i64 %__v74___v5_N_len, i64 %__v10_mm, i64* %__v7_T, i64 %__v76___v7_T_len)
  %48 = sub i32 %__v15_limb, 1
  %__v120_lexpr = zext i32 %48 to i64
  %49 = getelementptr i64, i64* %__v4_E, i64 %__v120_lexpr
  %50 = load i64, i64* %49
  %51 = mul i32 4, %__v16_i
  %52 = sub i32 64, %51
  %53 = zext i32 %52 to i64
  %54 = lshr i64 %50, %53
  %__v17_wbits = and i64 %54, 15
  br label %58

; <label>:55:                                     ; preds = %68
  %56 = add i32 %__v16_i, 1
  br label %45

; <label>:57:                                     ; preds = %45
  br label %26

; <label>:58:                                     ; preds = %66, %47
  %__v18_widx = phi i32 [ 0, %47 ], [ %67, %66 ]
  %59 = icmp ult i32 %__v18_widx, 16
  br i1 %59, label %60, label %68

; <label>:60:                                     ; preds = %58
  %61 = zext i32 %__v18_widx to i64
  %__m3 = icmp eq i64 %__v17_wbits, %61
  %62 = mul i32 %__v18_widx, %__v11_wlen
  %__v121_lexpr = zext i32 %62 to i64
  %__v122_lexpr = zext i32 %__v11_wlen to i64
  %63 = mul i32 %__v18_widx, %__v11_wlen
  %__v123_lexpr = zext i32 %63 to i64
  %__v124_lexpr = zext i32 %__v11_wlen to i64
  %64 = getelementptr i64, i64* %__v8_W, i64 %__v121_lexpr
  %65 = and i1 true, %__m3
  call void @_mpi_copy(i64* %__v9_TW, i64 %__v78___v9_TW_len, i64* %64, i64 %__v124_lexpr, i1 %65)
  %__m4 = xor i1 %__m3, true
  br label %66

; <label>:66:                                     ; preds = %60
  %67 = add i32 %__v18_widx, 1
  br label %58

; <label>:68:                                     ; preds = %58
  call void @_mpi_montmul(i64* %__v1_X, i64 %__v71___v1_X_len, i64* %__v9_TW, i64 %__v78___v9_TW_len, i64* %__v5_N, i64 %__v74___v5_N_len, i64 %__v10_mm, i64* %__v7_T, i64 %__v76___v7_T_len)
  br label %55
}
