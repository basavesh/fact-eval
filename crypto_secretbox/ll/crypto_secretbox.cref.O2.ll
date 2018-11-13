; ModuleID = './crypto_secretbox.cref.O2.bc'
source_filename = "Module"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%poly1305_state_internal_t = type { [3 x i64], [3 x i64], [2 x i64], i64, [16 x i8], i8 }

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #0

; Function Attrs: norecurse nounwind
define internal fastcc void @_crypto_core_hsalsa20(i8* nocapture %__v178_out, i8* nocapture readonly %__v179_input, i8* nocapture readonly %__v180_k) unnamed_addr #1 {
entry:
  %0 = bitcast i8* %__v180_k to i32*
  %1 = load i32, i32* %0, align 4
  %2 = getelementptr i8, i8* %__v180_k, i64 4
  %3 = bitcast i8* %2 to i32*
  %4 = load i32, i32* %3, align 4
  %5 = getelementptr i8, i8* %__v180_k, i64 8
  %6 = bitcast i8* %5 to i32*
  %7 = load i32, i32* %6, align 4
  %8 = getelementptr i8, i8* %__v180_k, i64 12
  %9 = bitcast i8* %8 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = getelementptr i8, i8* %__v180_k, i64 16
  %12 = bitcast i8* %11 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr i8, i8* %__v180_k, i64 20
  %15 = bitcast i8* %14 to i32*
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr i8, i8* %__v180_k, i64 24
  %18 = bitcast i8* %17 to i32*
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr i8, i8* %__v180_k, i64 28
  %21 = bitcast i8* %20 to i32*
  %22 = load i32, i32* %21, align 4
  %23 = bitcast i8* %__v179_input to i32*
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr i8, i8* %__v179_input, i64 4
  %26 = bitcast i8* %25 to i32*
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr i8, i8* %__v179_input, i64 8
  %29 = bitcast i8* %28 to i32*
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr i8, i8* %__v179_input, i64 12
  %32 = bitcast i8* %31 to i32*
  %33 = load i32, i32* %32, align 4
  %34 = insertelement <4 x i32> undef, i32 %4, i32 0
  %35 = insertelement <4 x i32> %34, i32 %27, i32 1
  %36 = insertelement <4 x i32> %35, i32 %30, i32 2
  %37 = insertelement <4 x i32> %36, i32 %19, i32 3
  %38 = insertelement <4 x i32> undef, i32 %1, i32 0
  %39 = insertelement <4 x i32> %38, i32 %24, i32 1
  %40 = insertelement <4 x i32> %39, i32 %13, i32 2
  %41 = insertelement <4 x i32> %40, i32 %16, i32 3
  %42 = insertelement <4 x i32> undef, i32 %7, i32 0
  %43 = insertelement <4 x i32> %42, i32 %10, i32 1
  %44 = insertelement <4 x i32> %43, i32 %33, i32 2
  %45 = insertelement <4 x i32> %44, i32 %22, i32 3
  br label %46

; <label>:46:                                     ; preds = %46, %entry
  %__v197_i105 = phi i32 [ 0, %entry ], [ %98, %46 ]
  %47 = phi <4 x i32> [ %37, %entry ], [ %87, %46 ]
  %48 = phi <4 x i32> [ %41, %entry ], [ %82, %46 ]
  %49 = phi <4 x i32> [ <i32 1797285236, i32 1634760805, i32 857760878, i32 2036477234>, %entry ], [ %99, %46 ]
  %50 = phi <4 x i32> [ %45, %entry ], [ %92, %46 ]
  %51 = shufflevector <4 x i32> %48, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %52 = add <4 x i32> %51, %49
  %53 = shl <4 x i32> %52, <i32 7, i32 7, i32 7, i32 7>
  %54 = lshr <4 x i32> %52, <i32 25, i32 25, i32 25, i32 25>
  %55 = or <4 x i32> %54, %53
  %56 = xor <4 x i32> %55, %50
  %57 = add <4 x i32> %56, %49
  %58 = shl <4 x i32> %57, <i32 9, i32 9, i32 9, i32 9>
  %59 = lshr <4 x i32> %57, <i32 23, i32 23, i32 23, i32 23>
  %60 = or <4 x i32> %59, %58
  %61 = shufflevector <4 x i32> %60, <4 x i32> undef, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %62 = xor <4 x i32> %61, %47
  %63 = shufflevector <4 x i32> %62, <4 x i32> undef, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %64 = shufflevector <4 x i32> %56, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %65 = add <4 x i32> %63, %64
  %66 = shl <4 x i32> %65, <i32 13, i32 13, i32 13, i32 13>
  %67 = lshr <4 x i32> %65, <i32 19, i32 19, i32 19, i32 19>
  %68 = or <4 x i32> %67, %66
  %69 = xor <4 x i32> %68, %48
  %70 = shufflevector <4 x i32> %69, <4 x i32> undef, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %71 = shufflevector <4 x i32> %62, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %72 = add <4 x i32> %70, %71
  %73 = shl <4 x i32> %72, <i32 18, i32 18, i32 18, i32 18>
  %74 = lshr <4 x i32> %72, <i32 14, i32 14, i32 14, i32 14>
  %75 = or <4 x i32> %74, %73
  %76 = shufflevector <4 x i32> %49, <4 x i32> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %77 = xor <4 x i32> %75, %76
  %78 = add <4 x i32> %77, %56
  %79 = shl <4 x i32> %78, <i32 7, i32 7, i32 7, i32 7>
  %80 = lshr <4 x i32> %78, <i32 25, i32 25, i32 25, i32 25>
  %81 = or <4 x i32> %80, %79
  %82 = xor <4 x i32> %81, %69
  %83 = add <4 x i32> %82, %77
  %84 = shl <4 x i32> %83, <i32 9, i32 9, i32 9, i32 9>
  %85 = lshr <4 x i32> %83, <i32 23, i32 23, i32 23, i32 23>
  %86 = or <4 x i32> %85, %84
  %87 = xor <4 x i32> %86, %62
  %88 = add <4 x i32> %87, %82
  %89 = shl <4 x i32> %88, <i32 13, i32 13, i32 13, i32 13>
  %90 = lshr <4 x i32> %88, <i32 19, i32 19, i32 19, i32 19>
  %91 = or <4 x i32> %90, %89
  %92 = xor <4 x i32> %91, %56
  %93 = add <4 x i32> %92, %87
  %94 = shl <4 x i32> %93, <i32 18, i32 18, i32 18, i32 18>
  %95 = lshr <4 x i32> %93, <i32 14, i32 14, i32 14, i32 14>
  %96 = or <4 x i32> %95, %94
  %97 = xor <4 x i32> %96, %77
  %98 = add nuw nsw i32 %__v197_i105, 1
  %exitcond = icmp eq i32 %98, 10
  %99 = shufflevector <4 x i32> %97, <4 x i32> undef, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  br i1 %exitcond, label %100, label %46

; <label>:100:                                    ; preds = %46
  %101 = bitcast i8* %__v178_out to <4 x i32>*
  store <4 x i32> %97, <4 x i32>* %101, align 4
  %102 = getelementptr i8, i8* %__v178_out, i64 16
  %103 = bitcast i8* %102 to i32*
  %104 = extractelement <4 x i32> %82, i32 1
  store i32 %104, i32* %103, align 4
  %105 = getelementptr i8, i8* %__v178_out, i64 20
  %106 = bitcast i8* %105 to i32*
  %107 = extractelement <4 x i32> %87, i32 1
  store i32 %107, i32* %106, align 4
  %108 = getelementptr i8, i8* %__v178_out, i64 24
  %109 = bitcast i8* %108 to i32*
  %110 = extractelement <4 x i32> %87, i32 2
  store i32 %110, i32* %109, align 4
  %111 = getelementptr i8, i8* %__v178_out, i64 28
  %112 = bitcast i8* %111 to i32*
  %113 = extractelement <4 x i32> %92, i32 2
  store i32 %113, i32* %112, align 4
  ret void
}

; Function Attrs: norecurse nounwind
define internal fastcc void @_crypto_core_salsa20(i8* nocapture %__v142_output, i8* nocapture readonly %__v143_input, i8* nocapture readonly %__v144_k) unnamed_addr #1 {
entry:
  %0 = bitcast i8* %__v144_k to <4 x i32>*
  %1 = load <4 x i32>, <4 x i32>* %0, align 4
  %2 = getelementptr i8, i8* %__v144_k, i64 16
  %3 = bitcast i8* %2 to <4 x i32>*
  %4 = load <4 x i32>, <4 x i32>* %3, align 4
  %5 = bitcast i8* %__v143_input to <4 x i32>*
  %6 = load <4 x i32>, <4 x i32>* %5, align 4
  %7 = shufflevector <4 x i32> %4, <4 x i32> %6, <4 x i32> <i32 2, i32 6, i32 5, i32 undef>
  %8 = shufflevector <4 x i32> %7, <4 x i32> %1, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %9 = shufflevector <4 x i32> %4, <4 x i32> %6, <4 x i32> <i32 1, i32 0, i32 4, i32 undef>
  %10 = shufflevector <4 x i32> %9, <4 x i32> %1, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %11 = shufflevector <4 x i32> %4, <4 x i32> %6, <4 x i32> <i32 3, i32 7, i32 undef, i32 undef>
  %12 = shufflevector <4 x i32> %11, <4 x i32> %1, <4 x i32> <i32 0, i32 1, i32 7, i32 6>
  br label %13

; <label>:13:                                     ; preds = %13, %entry
  %__v177_i129 = phi i32 [ 0, %entry ], [ %66, %13 ]
  %14 = phi <4 x i32> [ <i32 1797285236, i32 2036477234, i32 857760878, i32 1634760805>, %entry ], [ %65, %13 ]
  %15 = phi <4 x i32> [ %8, %entry ], [ %55, %13 ]
  %16 = phi <4 x i32> [ %10, %entry ], [ %50, %13 ]
  %17 = phi <4 x i32> [ %12, %entry ], [ %60, %13 ]
  %18 = shufflevector <4 x i32> %16, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %19 = shufflevector <4 x i32> %14, <4 x i32> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %20 = add <4 x i32> %18, %19
  %21 = shl <4 x i32> %20, <i32 7, i32 7, i32 7, i32 7>
  %22 = lshr <4 x i32> %20, <i32 25, i32 25, i32 25, i32 25>
  %23 = or <4 x i32> %22, %21
  %24 = xor <4 x i32> %23, %17
  %25 = shufflevector <4 x i32> %24, <4 x i32> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %26 = shufflevector <4 x i32> %14, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %27 = add <4 x i32> %25, %26
  %28 = shl <4 x i32> %27, <i32 9, i32 9, i32 9, i32 9>
  %29 = lshr <4 x i32> %27, <i32 23, i32 23, i32 23, i32 23>
  %30 = or <4 x i32> %29, %28
  %31 = xor <4 x i32> %30, %15
  %32 = shufflevector <4 x i32> %31, <4 x i32> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %33 = shufflevector <4 x i32> %24, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %34 = add <4 x i32> %32, %33
  %35 = shl <4 x i32> %34, <i32 13, i32 13, i32 13, i32 13>
  %36 = lshr <4 x i32> %34, <i32 19, i32 19, i32 19, i32 19>
  %37 = or <4 x i32> %36, %35
  %38 = xor <4 x i32> %37, %16
  %39 = shufflevector <4 x i32> %38, <4 x i32> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %40 = shufflevector <4 x i32> %31, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %41 = add <4 x i32> %39, %40
  %42 = shl <4 x i32> %41, <i32 18, i32 18, i32 18, i32 18>
  %43 = lshr <4 x i32> %41, <i32 14, i32 14, i32 14, i32 14>
  %44 = or <4 x i32> %43, %42
  %45 = xor <4 x i32> %44, %14
  %46 = add <4 x i32> %45, %24
  %47 = shl <4 x i32> %46, <i32 7, i32 7, i32 7, i32 7>
  %48 = lshr <4 x i32> %46, <i32 25, i32 25, i32 25, i32 25>
  %49 = or <4 x i32> %48, %47
  %50 = xor <4 x i32> %49, %38
  %51 = add <4 x i32> %50, %45
  %52 = shl <4 x i32> %51, <i32 9, i32 9, i32 9, i32 9>
  %53 = lshr <4 x i32> %51, <i32 23, i32 23, i32 23, i32 23>
  %54 = or <4 x i32> %53, %52
  %55 = xor <4 x i32> %54, %31
  %56 = add <4 x i32> %55, %50
  %57 = shl <4 x i32> %56, <i32 13, i32 13, i32 13, i32 13>
  %58 = lshr <4 x i32> %56, <i32 19, i32 19, i32 19, i32 19>
  %59 = or <4 x i32> %58, %57
  %60 = xor <4 x i32> %59, %24
  %61 = add <4 x i32> %60, %55
  %62 = shl <4 x i32> %61, <i32 18, i32 18, i32 18, i32 18>
  %63 = lshr <4 x i32> %61, <i32 14, i32 14, i32 14, i32 14>
  %64 = or <4 x i32> %63, %62
  %65 = xor <4 x i32> %64, %45
  %66 = add nuw nsw i32 %__v177_i129, 1
  %exitcond = icmp eq i32 %66, 10
  br i1 %exitcond, label %67, label %13

; <label>:67:                                     ; preds = %13
  %68 = extractelement <4 x i32> %65, i32 3
  %69 = add i32 %68, 1634760805
  %70 = bitcast i8* %__v142_output to i32*
  store i32 %69, i32* %70, align 4
  %71 = getelementptr i8, i8* %__v142_output, i64 4
  %72 = shufflevector <4 x i32> %50, <4 x i32> %55, <4 x i32> <i32 3, i32 7, i32 undef, i32 undef>
  %73 = shufflevector <4 x i32> %72, <4 x i32> %60, <4 x i32> <i32 0, i32 1, i32 7, i32 6>
  %74 = add <4 x i32> %73, %1
  %75 = bitcast i8* %71 to <4 x i32>*
  store <4 x i32> %74, <4 x i32>* %75, align 4
  %76 = getelementptr i8, i8* %__v142_output, i64 20
  %77 = extractelement <4 x i32> %65, i32 2
  %78 = add i32 %77, 857760878
  %79 = bitcast i8* %76 to i32*
  store i32 %78, i32* %79, align 4
  %80 = getelementptr i8, i8* %__v142_output, i64 24
  %81 = shufflevector <4 x i32> %50, <4 x i32> %55, <4 x i32> <i32 2, i32 6, i32 5, i32 undef>
  %82 = shufflevector <4 x i32> %81, <4 x i32> %60, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %83 = add <4 x i32> %82, %6
  %84 = bitcast i8* %80 to <4 x i32>*
  store <4 x i32> %83, <4 x i32>* %84, align 4
  %85 = getelementptr i8, i8* %__v142_output, i64 40
  %86 = extractelement <4 x i32> %65, i32 1
  %87 = add i32 %86, 2036477234
  %88 = bitcast i8* %85 to i32*
  store i32 %87, i32* %88, align 4
  %89 = getelementptr i8, i8* %__v142_output, i64 44
  %90 = shufflevector <4 x i32> %50, <4 x i32> %55, <4 x i32> <i32 1, i32 0, i32 4, i32 undef>
  %91 = shufflevector <4 x i32> %90, <4 x i32> %60, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %92 = add <4 x i32> %91, %4
  %93 = bitcast i8* %89 to <4 x i32>*
  store <4 x i32> %92, <4 x i32>* %93, align 4
  %94 = getelementptr i8, i8* %__v142_output, i64 60
  %95 = extractelement <4 x i32> %65, i32 0
  %96 = add i32 %95, 1797285236
  %97 = bitcast i8* %94 to i32*
  store i32 %96, i32* %97, align 4
  ret void
}

; Function Attrs: nounwind
define internal fastcc void @_poly1305_blocks(%poly1305_state_internal_t* nocapture %__v121_state, i8* nocapture readonly %__v122_m, i64 %__v224___v122_m_len) unnamed_addr #2 {
entry:
  %0 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v121_state, i64 0, i32 5
  %1 = load i8, i8* %0, align 1
  %2 = icmp ne i8 %1, 0
  %3 = tail call i64 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %2, i64 0, i64 1099511627776) #2
  %4 = getelementptr %poly1305_state_internal_t, %poly1305_state_internal_t* %__v121_state, i64 0, i32 0, i64 1
  %__v127_r1 = load i64, i64* %4, align 8
  %5 = getelementptr %poly1305_state_internal_t, %poly1305_state_internal_t* %__v121_state, i64 0, i32 0, i64 2
  %__v128_r2 = load i64, i64* %5, align 8
  %6 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v121_state, i64 0, i32 1, i64 0
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr %poly1305_state_internal_t, %poly1305_state_internal_t* %__v121_state, i64 0, i32 1, i64 1
  %9 = load i64, i64* %8, align 8
  %10 = getelementptr %poly1305_state_internal_t, %poly1305_state_internal_t* %__v121_state, i64 0, i32 1, i64 2
  %11 = load i64, i64* %10, align 8
  %__v134_mloops = lshr i64 %__v224___v122_m_len, 4
  %12 = icmp eq i64 %__v134_mloops, 0
  br i1 %12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %entry
  %__v133_s2 = mul i64 %__v128_r2, 20
  %__v132_s1 = mul i64 %__v127_r1, 20
  %13 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v121_state, i64 0, i32 0, i64 0
  %__v126_r0 = load i64, i64* %13, align 8
  %14 = zext i64 %__v126_r0 to i128
  %15 = zext i64 %__v133_s2 to i128
  %16 = zext i64 %__v132_s1 to i128
  %17 = zext i64 %__v127_r1 to i128
  %18 = zext i64 %__v128_r2 to i128
  br label %19

; <label>:19:                                     ; preds = %19, %.lr.ph
  %__v135_bindex20 = phi i64 [ 0, %.lr.ph ], [ %72, %19 ]
  %__v131_h2.019 = phi i64 [ %11, %.lr.ph ], [ %66, %19 ]
  %__v130_h1.018 = phi i64 [ %9, %.lr.ph ], [ %71, %19 ]
  %__v129_h0.017 = phi i64 [ %7, %.lr.ph ], [ %70, %19 ]
  %__v256_lexpr = shl i64 %__v135_bindex20, 4
  %20 = getelementptr i8, i8* %__v122_m, i64 %__v256_lexpr
  %21 = bitcast i8* %20 to i64*
  %22 = load i64, i64* %21, align 8
  %__v258_lexpr = or i64 %__v256_lexpr, 8
  %23 = getelementptr i8, i8* %__v122_m, i64 %__v258_lexpr
  %24 = bitcast i8* %23 to i64*
  %25 = load i64, i64* %24, align 8
  %26 = and i64 %22, 17592186044415
  %27 = add i64 %26, %__v129_h0.017
  %28 = lshr i64 %22, 44
  %29 = shl i64 %25, 20
  %.masked = and i64 %29, 17592184995840
  %30 = or i64 %.masked, %28
  %31 = add i64 %30, %__v130_h1.018
  %32 = lshr i64 %25, 24
  %33 = or i64 %32, %3
  %34 = add i64 %33, %__v131_h2.019
  %35 = zext i64 %27 to i128
  %36 = mul nuw i128 %35, %14
  %37 = zext i64 %31 to i128
  %38 = mul nuw i128 %37, %15
  %39 = zext i64 %34 to i128
  %40 = mul nuw i128 %39, %16
  %41 = add i128 %40, %36
  %42 = add i128 %41, %38
  %43 = mul nuw i128 %35, %17
  %44 = mul nuw i128 %37, %14
  %45 = mul nuw i128 %39, %15
  %46 = mul nuw i128 %35, %18
  %47 = mul nuw i128 %37, %17
  %48 = mul nuw i128 %39, %14
  %49 = lshr i128 %42, 44
  %50 = trunc i128 %42 to i64
  %51 = and i64 %50, 17592186044415
  %52 = and i128 %49, 18446744073709551615
  %53 = add i128 %45, %43
  %54 = add i128 %53, %44
  %55 = add i128 %54, %52
  %56 = lshr i128 %55, 44
  %57 = trunc i128 %55 to i64
  %58 = and i64 %57, 17592186044415
  %59 = and i128 %56, 18446744073709551615
  %60 = add i128 %48, %46
  %61 = add i128 %60, %47
  %62 = add i128 %61, %59
  %63 = lshr i128 %62, 42
  %64 = trunc i128 %63 to i64
  %65 = trunc i128 %62 to i64
  %66 = and i64 %65, 4398046511103
  %67 = mul i64 %64, 5
  %68 = add i64 %67, %51
  %69 = lshr i64 %68, 44
  %70 = and i64 %68, 17592186044415
  %71 = add nuw nsw i64 %69, %58
  %72 = add nuw nsw i64 %__v135_bindex20, 1
  %exitcond = icmp eq i64 %72, %__v134_mloops
  br i1 %exitcond, label %._crit_edge, label %19

._crit_edge:                                      ; preds = %19, %entry
  %__v129_h0.0.lcssa = phi i64 [ %7, %entry ], [ %70, %19 ]
  %__v130_h1.0.lcssa = phi i64 [ %9, %entry ], [ %71, %19 ]
  %__v131_h2.0.lcssa = phi i64 [ %11, %entry ], [ %66, %19 ]
  store i64 %__v129_h0.0.lcssa, i64* %6, align 8
  store i64 %__v130_h1.0.lcssa, i64* %8, align 8
  store i64 %__v131_h2.0.lcssa, i64* %10, align 8
  ret void
}

; Function Attrs: nounwind
define internal fastcc void @_crypto_onetimeauth_poly1305(i8* nocapture %__v85_out, i8* nocapture readonly %__v86_m, i64 %__v222___v86_m_len, i8* nocapture readonly %__v87_key) unnamed_addr #2 {
  %__v88_state = alloca %poly1305_state_internal_t, align 8
  %1 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v88_state, i64 0, i32 0, i64 0
  %2 = bitcast %poly1305_state_internal_t* %__v88_state to i8*
  %3 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v88_state, i64 0, i32 1, i64 0
  %4 = bitcast i64* %3 to i8*
  %5 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v88_state, i64 0, i32 2, i64 0
  %6 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v88_state, i64 0, i32 3
  %7 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v88_state, i64 0, i32 4, i64 0
  %8 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v88_state, i64 0, i32 5
  %9 = bitcast i8* %__v87_key to i64*
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 16, i32 8, i1 false)
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr i8, i8* %__v87_key, i64 8
  %12 = bitcast i8* %11 to i64*
  %13 = load i64, i64* %12, align 8
  %14 = and i64 %10, 17575274610687
  store i64 %14, i64* %1, align 8
  %15 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v88_state, i64 0, i32 0, i64 1
  %16 = lshr i64 %10, 44
  %17 = shl i64 %13, 20
  %18 = or i64 %17, %16
  %19 = and i64 %18, 17592181915647
  store i64 %19, i64* %15, align 8
  %20 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v88_state, i64 0, i32 0, i64 2
  %21 = lshr i64 %13, 24
  %22 = and i64 %21, 68719475727
  store i64 %22, i64* %20, align 8
  %23 = getelementptr i8, i8* %__v87_key, i64 16
  call void @llvm.memset.p0i8.i64(i8* nonnull %4, i8 0, i64 24, i32 8, i1 false) #2
  %24 = bitcast i8* %23 to <2 x i64>*
  %25 = load <2 x i64>, <2 x i64>* %24, align 8
  %26 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v88_state, i64 0, i32 2, i64 1
  %27 = bitcast i64* %5 to <2 x i64>*
  store <2 x i64> %25, <2 x i64>* %27, align 8
  store i64 0, i64* %6, align 8
  store i8 0, i8* %8, align 8
  %28 = icmp ugt i64 %__v222___v86_m_len, 15
  br i1 %28, label %29, label %30

; <label>:29:                                     ; preds = %0
  %__v99_want.i = and i64 %__v222___v86_m_len, -16
  call fastcc void @_poly1305_blocks(%poly1305_state_internal_t* nonnull %__v88_state, i8* %__v86_m, i64 %__v99_want.i) #2
  br label %30

; <label>:30:                                     ; preds = %29, %0
  %__v95_mindex.1.i = phi i64 [ %__v99_want.i, %29 ], [ 0, %0 ]
  %31 = icmp ult i64 %__v95_mindex.1.i, %__v222___v86_m_len
  br i1 %31, label %32, label %_poly1305_update.exitthread-pre-split

; <label>:32:                                     ; preds = %30
  %__v102_remaining.i = sub i64 %__v222___v86_m_len, %__v95_mindex.1.i
  %33 = icmp eq i64 %__v102_remaining.i, 0
  %__v104__leftover8.i = load i64, i64* %6, align 8
  br i1 %33, label %._crit_edge.i5, label %.lr.ph.i4.preheader

.lr.ph.i4.preheader:                              ; preds = %32
  %34 = add i64 %__v222___v86_m_len, -1
  %xtraiter = and i64 %__v102_remaining.i, 1
  %35 = icmp eq i64 %34, %__v95_mindex.1.i
  br i1 %35, label %._crit_edge.i5.loopexit.unr-lcssa, label %.lr.ph.i4.preheader.new

.lr.ph.i4.preheader.new:                          ; preds = %.lr.ph.i4.preheader
  %unroll_iter = sub i64 %__v102_remaining.i, %xtraiter
  br label %.lr.ph.i4

.lr.ph.i4:                                        ; preds = %.lr.ph.i4, %.lr.ph.i4.preheader.new
  %__v104__leftover10.i = phi i64 [ %__v104__leftover8.i, %.lr.ph.i4.preheader.new ], [ %__v104__leftover.i.1, %.lr.ph.i4 ]
  %__v103_i9.i = phi i64 [ 0, %.lr.ph.i4.preheader.new ], [ %43, %.lr.ph.i4 ]
  %niter = phi i64 [ %unroll_iter, %.lr.ph.i4.preheader.new ], [ %niter.nsub.1, %.lr.ph.i4 ]
  %__v253_lexpr.i = add i64 %__v103_i9.i, %__v104__leftover10.i
  %__v254_lexpr.i = add i64 %__v103_i9.i, %__v95_mindex.1.i
  %36 = getelementptr %poly1305_state_internal_t, %poly1305_state_internal_t* %__v88_state, i64 0, i32 4, i64 %__v253_lexpr.i
  %37 = getelementptr i8, i8* %__v86_m, i64 %__v254_lexpr.i
  %38 = load i8, i8* %37, align 1
  store i8 %38, i8* %36, align 1
  %39 = or i64 %__v103_i9.i, 1
  %__v104__leftover.i = load i64, i64* %6, align 8
  %__v253_lexpr.i.1 = add i64 %39, %__v104__leftover.i
  %__v254_lexpr.i.1 = add i64 %39, %__v95_mindex.1.i
  %40 = getelementptr %poly1305_state_internal_t, %poly1305_state_internal_t* %__v88_state, i64 0, i32 4, i64 %__v253_lexpr.i.1
  %41 = getelementptr i8, i8* %__v86_m, i64 %__v254_lexpr.i.1
  %42 = load i8, i8* %41, align 1
  store i8 %42, i8* %40, align 1
  %43 = add i64 %__v103_i9.i, 2
  %__v104__leftover.i.1 = load i64, i64* %6, align 8
  %niter.nsub.1 = add i64 %niter, -2
  %niter.ncmp.1 = icmp eq i64 %niter.nsub.1, 0
  br i1 %niter.ncmp.1, label %._crit_edge.i5.loopexit.unr-lcssa, label %.lr.ph.i4

._crit_edge.i5.loopexit.unr-lcssa:                ; preds = %.lr.ph.i4, %.lr.ph.i4.preheader
  %__v104__leftover.i.lcssa.ph = phi i64 [ undef, %.lr.ph.i4.preheader ], [ %__v104__leftover.i.1, %.lr.ph.i4 ]
  %__v104__leftover10.i.unr = phi i64 [ %__v104__leftover8.i, %.lr.ph.i4.preheader ], [ %__v104__leftover.i.1, %.lr.ph.i4 ]
  %__v103_i9.i.unr = phi i64 [ 0, %.lr.ph.i4.preheader ], [ %43, %.lr.ph.i4 ]
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod, label %._crit_edge.i5, label %.lr.ph.i4.epil

.lr.ph.i4.epil:                                   ; preds = %._crit_edge.i5.loopexit.unr-lcssa
  %__v253_lexpr.i.epil = add i64 %__v103_i9.i.unr, %__v104__leftover10.i.unr
  %__v254_lexpr.i.epil = add i64 %__v103_i9.i.unr, %__v95_mindex.1.i
  %44 = getelementptr %poly1305_state_internal_t, %poly1305_state_internal_t* %__v88_state, i64 0, i32 4, i64 %__v253_lexpr.i.epil
  %45 = getelementptr i8, i8* %__v86_m, i64 %__v254_lexpr.i.epil
  %46 = load i8, i8* %45, align 1
  store i8 %46, i8* %44, align 1
  %__v104__leftover.i.epil = load i64, i64* %6, align 8
  br label %._crit_edge.i5

._crit_edge.i5:                                   ; preds = %.lr.ph.i4.epil, %._crit_edge.i5.loopexit.unr-lcssa, %32
  %__v104__leftover.lcssa.i = phi i64 [ %__v104__leftover8.i, %32 ], [ %__v104__leftover.i.lcssa.ph, %._crit_edge.i5.loopexit.unr-lcssa ], [ %__v104__leftover.i.epil, %.lr.ph.i4.epil ]
  %47 = add i64 %__v104__leftover.lcssa.i, %__v102_remaining.i
  store i64 %47, i64* %6, align 8
  br label %_poly1305_update.exit

_poly1305_update.exitthread-pre-split:            ; preds = %30
  %.pr = load i64, i64* %6, align 8
  br label %_poly1305_update.exit

_poly1305_update.exit:                            ; preds = %_poly1305_update.exitthread-pre-split, %._crit_edge.i5
  %48 = phi i64 [ %.pr, %_poly1305_update.exitthread-pre-split ], [ %47, %._crit_edge.i5 ]
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %_poly1305_finish.exit, label %50

; <label>:50:                                     ; preds = %_poly1305_update.exit
  %51 = getelementptr %poly1305_state_internal_t, %poly1305_state_internal_t* %__v88_state, i64 0, i32 4, i64 %48
  store i8 1, i8* %51, align 1
  %__v109_i1.i = add i64 %48, 1
  %52 = icmp ult i64 %__v109_i1.i, 16
  br i1 %52, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %50
  %scevgep.i = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v88_state, i64 0, i32 0, i64 9
  %scevgep3.i = bitcast i64* %scevgep.i to i8*
  %uglygep.i = getelementptr i8, i8* %scevgep3.i, i64 %__v109_i1.i
  %53 = sub i64 15, %48
  call void @llvm.memset.p0i8.i64(i8* %uglygep.i, i8 0, i64 %53, i32 1, i1 false) #2
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %50
  store i8 1, i8* %8, align 8
  call fastcc void @_poly1305_blocks(%poly1305_state_internal_t* nonnull %__v88_state, i8* nonnull %7, i64 16) #2
  br label %_poly1305_finish.exit

_poly1305_finish.exit:                            ; preds = %_poly1305_update.exit, %._crit_edge.i
  %54 = load i64, i64* %3, align 8
  %55 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v88_state, i64 0, i32 1, i64 1
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v88_state, i64 0, i32 1, i64 2
  %58 = load i64, i64* %57, align 8
  %59 = lshr i64 %56, 44
  %60 = and i64 %56, 17592186044415
  %61 = add i64 %58, %59
  %62 = lshr i64 %61, 42
  %63 = and i64 %61, 4398046511103
  %64 = mul nuw nsw i64 %62, 5
  %65 = add i64 %64, %54
  %66 = lshr i64 %65, 44
  %67 = and i64 %65, 17592186044415
  %68 = add nuw nsw i64 %66, %60
  %69 = lshr i64 %68, 44
  %70 = and i64 %68, 17592186044415
  %71 = add nuw nsw i64 %69, %63
  %72 = lshr i64 %71, 42
  %73 = sub nsw i64 0, %72
  %74 = and i64 %73, 5
  %75 = add nuw nsw i64 %74, %67
  %76 = lshr i64 %75, 44
  %77 = and i64 %75, 17592186044415
  %78 = add nuw nsw i64 %76, %70
  %79 = add nuw nsw i64 %77, 5
  %80 = lshr i64 %79, 44
  %81 = add nuw nsw i64 %80, %78
  %82 = lshr i64 %81, 44
  %83 = or i64 %71, -4398046511104
  %84 = add nsw i64 %82, %83
  %85 = lshr i64 %84, 63
  %86 = add nsw i64 %85, -1
  %87 = and i64 %86, 17592186044415
  %88 = and i64 %87, %79
  %89 = and i64 %87, %81
  %90 = and i64 %86, %84
  %91 = ashr i64 %84, 63
  %92 = and i64 %91, %77
  %93 = or i64 %88, %92
  %94 = and i64 %91, %78
  %95 = or i64 %89, %94
  %96 = and i64 %91, %71
  %97 = or i64 %90, %96
  %__v119_t0.i = load i64, i64* %5, align 8
  %__v120_t1.i = load i64, i64* %26, align 8
  %98 = and i64 %__v119_t0.i, 17592186044415
  %99 = add nuw nsw i64 %93, %98
  %100 = lshr i64 %99, 44
  %101 = and i64 %99, 17592186044415
  %102 = lshr i64 %__v119_t0.i, 44
  %103 = shl i64 %__v120_t1.i, 20
  %.masked.i = and i64 %103, 17592184995840
  %104 = or i64 %.masked.i, %102
  %105 = add nuw nsw i64 %95, %104
  %106 = add nuw nsw i64 %105, %100
  %107 = lshr i64 %106, 44
  %108 = lshr i64 %__v120_t1.i, 24
  %109 = add nsw i64 %97, %108
  %110 = add nsw i64 %109, %107
  %111 = shl i64 %106, 44
  %112 = or i64 %111, %101
  %113 = lshr i64 %106, 20
  %114 = and i64 %113, 16777215
  %115 = shl i64 %110, 24
  %116 = or i64 %115, %114
  %117 = bitcast i8* %__v85_out to i64*
  store i64 %112, i64* %117, align 8
  %118 = getelementptr i8, i8* %__v85_out, i64 8
  %119 = bitcast i8* %118 to i64*
  store i64 %116, i64* %119, align 8
  call void @llvm.memset.p0i8.i64(i8* nonnull %2, i8 0, i64 96, i32 1, i1 true) #2
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #0

; Function Attrs: nounwind
define internal fastcc void @_crypto_stream_salsa20_xor_ic(i8* nocapture %__v56_c, i8* nocapture readonly %__v57_m, i64 %__v220___v57_m_len, i8* nocapture readonly %__v58_n, i8* nocapture readonly %__v60_k) unnamed_addr #2 {
entry:
  %0 = icmp eq i64 %__v220___v57_m_len, 0
  br i1 %0, label %1, label %2

; <label>:1:                                      ; preds = %entry
  ret void

; <label>:2:                                      ; preds = %entry
  %__v62_kcopy1 = alloca [32 x i8], align 1
  %__v62_kcopy1.sub = getelementptr inbounds [32 x i8], [32 x i8]* %__v62_kcopy1, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %__v62_kcopy1.sub, i8* %__v60_k, i64 32, i32 1, i1 false) #2
  %__v63_input2 = alloca [16 x i8], align 8
  %__v63_input2.sub = getelementptr inbounds [16 x i8], [16 x i8]* %__v63_input2, i64 0, i64 0
  %3 = bitcast i8* %__v58_n to i64*
  %4 = bitcast [16 x i8]* %__v63_input2 to i64*
  %5 = load i64, i64* %3, align 1
  store i64 %5, i64* %4, align 8
  %6 = getelementptr inbounds [16 x i8], [16 x i8]* %__v63_input2, i64 0, i64 8
  %7 = getelementptr inbounds [16 x i8], [16 x i8]* %__v63_input2, i64 0, i64 9
  %8 = getelementptr inbounds [16 x i8], [16 x i8]* %__v63_input2, i64 0, i64 10
  %9 = getelementptr inbounds [16 x i8], [16 x i8]* %__v63_input2, i64 0, i64 11
  %10 = getelementptr inbounds [16 x i8], [16 x i8]* %__v63_input2, i64 0, i64 12
  %11 = getelementptr inbounds [16 x i8], [16 x i8]* %__v63_input2, i64 0, i64 13
  %12 = getelementptr inbounds [16 x i8], [16 x i8]* %__v63_input2, i64 0, i64 14
  %13 = getelementptr inbounds [16 x i8], [16 x i8]* %__v63_input2, i64 0, i64 15
  %14 = bitcast i8* %6 to i64*
  store i64 0, i64* %14, align 8
  %__v66_mtimes = lshr i64 %__v220___v57_m_len, 6
  %__v67_block3 = alloca [64 x i8], align 16
  %__v67_block3.sub = getelementptr inbounds [64 x i8], [64 x i8]* %__v67_block3, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* nonnull %__v67_block3.sub, i8 0, i64 64, i32 16, i1 false) #2
  %15 = icmp eq i64 %__v66_mtimes, 0
  br i1 %15, label %._crit_edge, label %.lr.ph8.preheader

.lr.ph8.preheader:                                ; preds = %2
  %16 = bitcast [64 x i8]* %__v67_block3 to <16 x i8>*
  %17 = getelementptr inbounds [64 x i8], [64 x i8]* %__v67_block3, i64 0, i64 16
  %18 = bitcast i8* %17 to <16 x i8>*
  %19 = getelementptr inbounds [64 x i8], [64 x i8]* %__v67_block3, i64 0, i64 32
  %20 = bitcast i8* %19 to <16 x i8>*
  %21 = getelementptr inbounds [64 x i8], [64 x i8]* %__v67_block3, i64 0, i64 48
  %22 = bitcast i8* %21 to <16 x i8>*
  br label %.lr.ph8

.lr.ph8:                                          ; preds = %.lr.ph8.preheader, %middle.block
  %23 = phi i32 [ %106, %middle.block ], [ 0, %.lr.ph8.preheader ]
  %24 = phi i32 [ %102, %middle.block ], [ 0, %.lr.ph8.preheader ]
  %25 = phi i32 [ %98, %middle.block ], [ 0, %.lr.ph8.preheader ]
  %26 = phi i32 [ %94, %middle.block ], [ 0, %.lr.ph8.preheader ]
  %27 = phi i32 [ %90, %middle.block ], [ 0, %.lr.ph8.preheader ]
  %28 = phi i32 [ %86, %middle.block ], [ 0, %.lr.ph8.preheader ]
  %29 = phi i32 [ %82, %middle.block ], [ 0, %.lr.ph8.preheader ]
  %30 = phi i32 [ %78, %middle.block ], [ 0, %.lr.ph8.preheader ]
  %__v68_j7 = phi i64 [ %108, %middle.block ], [ 0, %.lr.ph8.preheader ]
  %31 = shl i64 %__v68_j7, 6
  %32 = add i64 %31, 64
  call fastcc void @_crypto_core_salsa20(i8* nonnull %__v67_block3.sub, i8* nonnull %__v63_input2.sub, i8* nonnull %__v62_kcopy1.sub)
  %__v240_lexpr = shl i64 %__v68_j7, 6
  %__v69_cview = getelementptr i8, i8* %__v56_c, i64 %__v240_lexpr
  %__v70_mview = getelementptr i8, i8* %__v57_m, i64 %__v240_lexpr
  %scevgep26 = getelementptr i8, i8* %__v57_m, i64 %32
  %scevgep25 = getelementptr i8, i8* %__v57_m, i64 %31
  %scevgep24 = getelementptr i8, i8* %__v56_c, i64 %32
  %scevgep = getelementptr i8, i8* %__v56_c, i64 %31
  %bound0 = icmp ult i8* %scevgep, %scevgep26
  %bound1 = icmp ult i8* %scevgep25, %scevgep24
  %memcheck.conflict = and i1 %bound0, %bound1
  br i1 %memcheck.conflict, label %scalar.ph.preheader, label %vector.body

scalar.ph.preheader:                              ; preds = %.lr.ph8
  br label %scalar.ph

vector.body:                                      ; preds = %.lr.ph8
  %33 = bitcast i8* %__v70_mview to <16 x i8>*
  %wide.load = load <16 x i8>, <16 x i8>* %33, align 1, !alias.scope !0
  %wide.load27 = load <16 x i8>, <16 x i8>* %16, align 16, !alias.scope !3
  %34 = xor <16 x i8> %wide.load27, %wide.load
  %35 = bitcast i8* %__v69_cview to <16 x i8>*
  store <16 x i8> %34, <16 x i8>* %35, align 1, !alias.scope !5, !noalias !0
  %36 = getelementptr i8, i8* %__v69_cview, i64 16
  %37 = getelementptr i8, i8* %__v70_mview, i64 16
  %38 = bitcast i8* %37 to <16 x i8>*
  %wide.load.1 = load <16 x i8>, <16 x i8>* %38, align 1, !alias.scope !0
  %wide.load27.1 = load <16 x i8>, <16 x i8>* %18, align 16, !alias.scope !3
  %39 = xor <16 x i8> %wide.load27.1, %wide.load.1
  %40 = bitcast i8* %36 to <16 x i8>*
  store <16 x i8> %39, <16 x i8>* %40, align 1, !alias.scope !5, !noalias !0
  %41 = getelementptr i8, i8* %__v69_cview, i64 32
  %42 = getelementptr i8, i8* %__v70_mview, i64 32
  %43 = bitcast i8* %42 to <16 x i8>*
  %wide.load.2 = load <16 x i8>, <16 x i8>* %43, align 1, !alias.scope !0
  %wide.load27.2 = load <16 x i8>, <16 x i8>* %20, align 16, !alias.scope !3
  %44 = xor <16 x i8> %wide.load27.2, %wide.load.2
  %45 = bitcast i8* %41 to <16 x i8>*
  store <16 x i8> %44, <16 x i8>* %45, align 1, !alias.scope !5, !noalias !0
  %46 = getelementptr i8, i8* %__v69_cview, i64 48
  %47 = getelementptr i8, i8* %__v70_mview, i64 48
  %48 = bitcast i8* %47 to <16 x i8>*
  %wide.load.3 = load <16 x i8>, <16 x i8>* %48, align 1, !alias.scope !0
  %wide.load27.3 = load <16 x i8>, <16 x i8>* %22, align 16, !alias.scope !3
  %49 = xor <16 x i8> %wide.load27.3, %wide.load.3
  %50 = bitcast i8* %46 to <16 x i8>*
  store <16 x i8> %49, <16 x i8>* %50, align 1, !alias.scope !5, !noalias !0
  br label %middle.block

._crit_edge:                                      ; preds = %middle.block, %2
  %51 = and i64 %__v220___v57_m_len, -64
  %52 = icmp ult i64 %51, %__v220___v57_m_len
  br i1 %52, label %109, label %.loopexit

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader
  %indvars.iv = phi i64 [ 0, %scalar.ph.preheader ], [ %indvars.iv.next.3, %scalar.ph ]
  %53 = getelementptr i8, i8* %__v69_cview, i64 %indvars.iv
  %54 = getelementptr i8, i8* %__v70_mview, i64 %indvars.iv
  %55 = load i8, i8* %54, align 1
  %56 = getelementptr [64 x i8], [64 x i8]* %__v67_block3, i64 0, i64 %indvars.iv
  %57 = load i8, i8* %56, align 4
  %58 = xor i8 %57, %55
  store i8 %58, i8* %53, align 1
  %indvars.iv.next = or i64 %indvars.iv, 1
  %59 = getelementptr i8, i8* %__v69_cview, i64 %indvars.iv.next
  %60 = getelementptr i8, i8* %__v70_mview, i64 %indvars.iv.next
  %61 = load i8, i8* %60, align 1
  %62 = getelementptr [64 x i8], [64 x i8]* %__v67_block3, i64 0, i64 %indvars.iv.next
  %63 = load i8, i8* %62, align 1
  %64 = xor i8 %63, %61
  store i8 %64, i8* %59, align 1
  %indvars.iv.next.1 = or i64 %indvars.iv, 2
  %65 = getelementptr i8, i8* %__v69_cview, i64 %indvars.iv.next.1
  %66 = getelementptr i8, i8* %__v70_mview, i64 %indvars.iv.next.1
  %67 = load i8, i8* %66, align 1
  %68 = getelementptr [64 x i8], [64 x i8]* %__v67_block3, i64 0, i64 %indvars.iv.next.1
  %69 = load i8, i8* %68, align 2
  %70 = xor i8 %69, %67
  store i8 %70, i8* %65, align 1
  %indvars.iv.next.2 = or i64 %indvars.iv, 3
  %71 = getelementptr i8, i8* %__v69_cview, i64 %indvars.iv.next.2
  %72 = getelementptr i8, i8* %__v70_mview, i64 %indvars.iv.next.2
  %73 = load i8, i8* %72, align 1
  %74 = getelementptr [64 x i8], [64 x i8]* %__v67_block3, i64 0, i64 %indvars.iv.next.2
  %75 = load i8, i8* %74, align 1
  %76 = xor i8 %75, %73
  store i8 %76, i8* %71, align 1
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %exitcond12.3 = icmp eq i64 %indvars.iv.next.3, 64
  br i1 %exitcond12.3, label %middle.block, label %scalar.ph, !llvm.loop !7

middle.block:                                     ; preds = %scalar.ph, %vector.body
  %77 = and i32 %30, 255
  %78 = add nuw nsw i32 %77, 1
  %79 = trunc i32 %78 to i8
  store i8 %79, i8* %6, align 8
  %80 = lshr i32 %78, 8
  %81 = and i32 %29, 255
  %82 = add nuw nsw i32 %80, %81
  %83 = trunc i32 %82 to i8
  store i8 %83, i8* %7, align 1
  %84 = lshr i32 %82, 8
  %85 = and i32 %28, 255
  %86 = add nuw nsw i32 %84, %85
  %87 = trunc i32 %86 to i8
  store i8 %87, i8* %8, align 2
  %88 = lshr i32 %86, 8
  %89 = and i32 %27, 255
  %90 = add nuw nsw i32 %88, %89
  %91 = trunc i32 %90 to i8
  store i8 %91, i8* %9, align 1
  %92 = lshr i32 %90, 8
  %93 = and i32 %26, 255
  %94 = add nuw nsw i32 %92, %93
  %95 = trunc i32 %94 to i8
  store i8 %95, i8* %10, align 4
  %96 = lshr i32 %94, 8
  %97 = and i32 %25, 255
  %98 = add nuw nsw i32 %96, %97
  %99 = trunc i32 %98 to i8
  store i8 %99, i8* %11, align 1
  %100 = lshr i32 %98, 8
  %101 = and i32 %24, 255
  %102 = add nuw nsw i32 %100, %101
  %103 = trunc i32 %102 to i8
  store i8 %103, i8* %12, align 2
  %104 = lshr i32 %102, 8
  %105 = and i32 %23, 255
  %106 = add nuw nsw i32 %104, %105
  %107 = trunc i32 %106 to i8
  store i8 %107, i8* %13, align 1
  %108 = add nuw nsw i64 %__v68_j7, 1
  %exitcond16 = icmp eq i64 %108, %__v66_mtimes
  br i1 %exitcond16, label %._crit_edge, label %.lr.ph8

; <label>:109:                                    ; preds = %._crit_edge
  %__v74_remain = sub i64 %__v220___v57_m_len, %51
  call fastcc void @_crypto_core_salsa20(i8* nonnull %__v67_block3.sub, i8* nonnull %__v63_input2.sub, i8* nonnull %__v62_kcopy1.sub)
  %__v75_cview = getelementptr i8, i8* %__v56_c, i64 %51
  %__v76_mview = getelementptr i8, i8* %__v57_m, i64 %51
  %110 = icmp eq i64 %__v74_remain, 0
  br i1 %110, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %109
  %min.iters.check = icmp ult i64 %__v74_remain, 32
  br i1 %min.iters.check, label %scalar.ph30.preheader, label %vector.memcheck38

scalar.ph30.preheader:                            ; preds = %middle.block29, %vector.memcheck38, %.lr.ph
  %__v77_i4.ph = phi i64 [ 0, %vector.memcheck38 ], [ 0, %.lr.ph ], [ %n.vec, %middle.block29 ]
  %111 = add i64 %__v220___v57_m_len, -1
  %112 = sub i64 %111, %__v77_i4.ph
  %113 = sub i64 %112, %51
  %xtraiter = and i64 %__v220___v57_m_len, 3
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod, label %scalar.ph30.prol.loopexit, label %scalar.ph30.prol.preheader

scalar.ph30.prol.preheader:                       ; preds = %scalar.ph30.preheader
  br label %scalar.ph30.prol

scalar.ph30.prol:                                 ; preds = %scalar.ph30.prol, %scalar.ph30.prol.preheader
  %__v77_i4.prol = phi i64 [ %120, %scalar.ph30.prol ], [ %__v77_i4.ph, %scalar.ph30.prol.preheader ]
  %prol.iter = phi i64 [ %prol.iter.sub, %scalar.ph30.prol ], [ %xtraiter, %scalar.ph30.prol.preheader ]
  %114 = getelementptr i8, i8* %__v75_cview, i64 %__v77_i4.prol
  %115 = getelementptr i8, i8* %__v76_mview, i64 %__v77_i4.prol
  %116 = load i8, i8* %115, align 1
  %117 = getelementptr [64 x i8], [64 x i8]* %__v67_block3, i64 0, i64 %__v77_i4.prol
  %118 = load i8, i8* %117, align 1
  %119 = xor i8 %118, %116
  store i8 %119, i8* %114, align 1
  %120 = add nuw i64 %__v77_i4.prol, 1
  %prol.iter.sub = add i64 %prol.iter, -1
  %prol.iter.cmp = icmp eq i64 %prol.iter.sub, 0
  br i1 %prol.iter.cmp, label %scalar.ph30.prol.loopexit, label %scalar.ph30.prol, !llvm.loop !9

scalar.ph30.prol.loopexit:                        ; preds = %scalar.ph30.prol, %scalar.ph30.preheader
  %__v77_i4.unr = phi i64 [ %__v77_i4.ph, %scalar.ph30.preheader ], [ %120, %scalar.ph30.prol ]
  %121 = icmp ult i64 %113, 3
  br i1 %121, label %.loopexit, label %scalar.ph30.preheader.new

scalar.ph30.preheader.new:                        ; preds = %scalar.ph30.prol.loopexit
  br label %scalar.ph30

vector.memcheck38:                                ; preds = %.lr.ph
  %scevgep32 = getelementptr i8, i8* %__v56_c, i64 %__v220___v57_m_len
  %scevgep33 = getelementptr i8, i8* %__v57_m, i64 %__v220___v57_m_len
  %bound034 = icmp ult i8* %__v75_cview, %scevgep33
  %bound135 = icmp ult i8* %__v76_mview, %scevgep32
  %memcheck.conflict37 = and i1 %bound034, %bound135
  br i1 %memcheck.conflict37, label %scalar.ph30.preheader, label %vector.ph39

vector.ph39:                                      ; preds = %vector.memcheck38
  %n.vec = and i64 %__v74_remain, -32
  %122 = add i64 %n.vec, -32
  %123 = lshr exact i64 %122, 5
  %124 = add nuw nsw i64 %123, 1
  %xtraiter54 = and i64 %124, 1
  %125 = icmp eq i64 %122, 0
  br i1 %125, label %middle.block29.unr-lcssa, label %vector.ph39.new

vector.ph39.new:                                  ; preds = %vector.ph39
  %unroll_iter = sub nsw i64 %124, %xtraiter54
  br label %vector.body28

vector.body28:                                    ; preds = %vector.body28, %vector.ph39.new
  %index40 = phi i64 [ 0, %vector.ph39.new ], [ %index.next41.1, %vector.body28 ]
  %niter = phi i64 [ %unroll_iter, %vector.ph39.new ], [ %niter.nsub.1, %vector.body28 ]
  %126 = getelementptr i8, i8* %__v75_cview, i64 %index40
  %127 = getelementptr i8, i8* %__v76_mview, i64 %index40
  %128 = bitcast i8* %127 to <16 x i8>*
  %wide.load48 = load <16 x i8>, <16 x i8>* %128, align 1, !alias.scope !11
  %129 = getelementptr i8, i8* %127, i64 16
  %130 = bitcast i8* %129 to <16 x i8>*
  %wide.load49 = load <16 x i8>, <16 x i8>* %130, align 1, !alias.scope !11
  %131 = getelementptr [64 x i8], [64 x i8]* %__v67_block3, i64 0, i64 %index40
  %132 = bitcast i8* %131 to <16 x i8>*
  %wide.load50 = load <16 x i8>, <16 x i8>* %132, align 16, !alias.scope !14
  %133 = getelementptr i8, i8* %131, i64 16
  %134 = bitcast i8* %133 to <16 x i8>*
  %wide.load51 = load <16 x i8>, <16 x i8>* %134, align 16, !alias.scope !14
  %135 = xor <16 x i8> %wide.load50, %wide.load48
  %136 = xor <16 x i8> %wide.load51, %wide.load49
  %137 = bitcast i8* %126 to <16 x i8>*
  store <16 x i8> %135, <16 x i8>* %137, align 1, !alias.scope !16, !noalias !11
  %138 = getelementptr i8, i8* %126, i64 16
  %139 = bitcast i8* %138 to <16 x i8>*
  store <16 x i8> %136, <16 x i8>* %139, align 1, !alias.scope !16, !noalias !11
  %index.next41 = or i64 %index40, 32
  %140 = getelementptr i8, i8* %__v75_cview, i64 %index.next41
  %141 = getelementptr i8, i8* %__v76_mview, i64 %index.next41
  %142 = bitcast i8* %141 to <16 x i8>*
  %wide.load48.1 = load <16 x i8>, <16 x i8>* %142, align 1, !alias.scope !11
  %143 = getelementptr i8, i8* %141, i64 16
  %144 = bitcast i8* %143 to <16 x i8>*
  %wide.load49.1 = load <16 x i8>, <16 x i8>* %144, align 1, !alias.scope !11
  %145 = getelementptr [64 x i8], [64 x i8]* %__v67_block3, i64 0, i64 %index.next41
  %146 = bitcast i8* %145 to <16 x i8>*
  %wide.load50.1 = load <16 x i8>, <16 x i8>* %146, align 16, !alias.scope !14
  %147 = getelementptr i8, i8* %145, i64 16
  %148 = bitcast i8* %147 to <16 x i8>*
  %wide.load51.1 = load <16 x i8>, <16 x i8>* %148, align 16, !alias.scope !14
  %149 = xor <16 x i8> %wide.load50.1, %wide.load48.1
  %150 = xor <16 x i8> %wide.load51.1, %wide.load49.1
  %151 = bitcast i8* %140 to <16 x i8>*
  store <16 x i8> %149, <16 x i8>* %151, align 1, !alias.scope !16, !noalias !11
  %152 = getelementptr i8, i8* %140, i64 16
  %153 = bitcast i8* %152 to <16 x i8>*
  store <16 x i8> %150, <16 x i8>* %153, align 1, !alias.scope !16, !noalias !11
  %index.next41.1 = add i64 %index40, 64
  %niter.nsub.1 = add i64 %niter, -2
  %niter.ncmp.1 = icmp eq i64 %niter.nsub.1, 0
  br i1 %niter.ncmp.1, label %middle.block29.unr-lcssa, label %vector.body28, !llvm.loop !18

middle.block29.unr-lcssa:                         ; preds = %vector.body28, %vector.ph39
  %index40.unr = phi i64 [ 0, %vector.ph39 ], [ %index.next41.1, %vector.body28 ]
  %lcmp.mod55 = icmp eq i64 %xtraiter54, 0
  br i1 %lcmp.mod55, label %middle.block29, label %vector.body28.epil

vector.body28.epil:                               ; preds = %middle.block29.unr-lcssa
  %154 = getelementptr i8, i8* %__v75_cview, i64 %index40.unr
  %155 = getelementptr i8, i8* %__v76_mview, i64 %index40.unr
  %156 = bitcast i8* %155 to <16 x i8>*
  %wide.load48.epil = load <16 x i8>, <16 x i8>* %156, align 1, !alias.scope !11
  %157 = getelementptr i8, i8* %155, i64 16
  %158 = bitcast i8* %157 to <16 x i8>*
  %wide.load49.epil = load <16 x i8>, <16 x i8>* %158, align 1, !alias.scope !11
  %159 = getelementptr [64 x i8], [64 x i8]* %__v67_block3, i64 0, i64 %index40.unr
  %160 = bitcast i8* %159 to <16 x i8>*
  %wide.load50.epil = load <16 x i8>, <16 x i8>* %160, align 1, !alias.scope !14
  %161 = getelementptr i8, i8* %159, i64 16
  %162 = bitcast i8* %161 to <16 x i8>*
  %wide.load51.epil = load <16 x i8>, <16 x i8>* %162, align 1, !alias.scope !14
  %163 = xor <16 x i8> %wide.load50.epil, %wide.load48.epil
  %164 = xor <16 x i8> %wide.load51.epil, %wide.load49.epil
  %165 = bitcast i8* %154 to <16 x i8>*
  store <16 x i8> %163, <16 x i8>* %165, align 1, !alias.scope !16, !noalias !11
  %166 = getelementptr i8, i8* %154, i64 16
  %167 = bitcast i8* %166 to <16 x i8>*
  store <16 x i8> %164, <16 x i8>* %167, align 1, !alias.scope !16, !noalias !11
  br label %middle.block29

middle.block29:                                   ; preds = %middle.block29.unr-lcssa, %vector.body28.epil
  %cmp.n43 = icmp eq i64 %__v74_remain, %n.vec
  br i1 %cmp.n43, label %.loopexit, label %scalar.ph30.preheader

.loopexit:                                        ; preds = %scalar.ph30.prol.loopexit, %scalar.ph30, %middle.block29, %109, %._crit_edge
  call void @llvm.memset.p0i8.i64(i8* nonnull %__v67_block3.sub, i8 0, i64 64, i32 1, i1 true) #2
  call void @llvm.memset.p0i8.i64(i8* nonnull %__v62_kcopy1.sub, i8 0, i64 32, i32 1, i1 true) #2
  ret void

scalar.ph30:                                      ; preds = %scalar.ph30, %scalar.ph30.preheader.new
  %__v77_i4 = phi i64 [ %__v77_i4.unr, %scalar.ph30.preheader.new ], [ %195, %scalar.ph30 ]
  %168 = getelementptr i8, i8* %__v75_cview, i64 %__v77_i4
  %169 = getelementptr i8, i8* %__v76_mview, i64 %__v77_i4
  %170 = load i8, i8* %169, align 1
  %171 = getelementptr [64 x i8], [64 x i8]* %__v67_block3, i64 0, i64 %__v77_i4
  %172 = load i8, i8* %171, align 1
  %173 = xor i8 %172, %170
  store i8 %173, i8* %168, align 1
  %174 = add nuw i64 %__v77_i4, 1
  %175 = getelementptr i8, i8* %__v75_cview, i64 %174
  %176 = getelementptr i8, i8* %__v76_mview, i64 %174
  %177 = load i8, i8* %176, align 1
  %178 = getelementptr [64 x i8], [64 x i8]* %__v67_block3, i64 0, i64 %174
  %179 = load i8, i8* %178, align 1
  %180 = xor i8 %179, %177
  store i8 %180, i8* %175, align 1
  %181 = add i64 %__v77_i4, 2
  %182 = getelementptr i8, i8* %__v75_cview, i64 %181
  %183 = getelementptr i8, i8* %__v76_mview, i64 %181
  %184 = load i8, i8* %183, align 1
  %185 = getelementptr [64 x i8], [64 x i8]* %__v67_block3, i64 0, i64 %181
  %186 = load i8, i8* %185, align 1
  %187 = xor i8 %186, %184
  store i8 %187, i8* %182, align 1
  %188 = add i64 %__v77_i4, 3
  %189 = getelementptr i8, i8* %__v75_cview, i64 %188
  %190 = getelementptr i8, i8* %__v76_mview, i64 %188
  %191 = load i8, i8* %190, align 1
  %192 = getelementptr [64 x i8], [64 x i8]* %__v67_block3, i64 0, i64 %188
  %193 = load i8, i8* %192, align 1
  %194 = xor i8 %193, %191
  store i8 %194, i8* %189, align 1
  %195 = add i64 %__v77_i4, 4
  %exitcond.3 = icmp eq i64 %195, %__v74_remain
  br i1 %exitcond.3, label %.loopexit, label %scalar.ph30, !llvm.loop !19
}

; Function Attrs: nounwind
define i1 @_crypto_secretbox(i8* nocapture %__v32_c, i64 %__v211___v32_c_len, i8* nocapture readonly %__v33_m, i64 %__v212___v33_m_len, i8* nocapture readonly %__v34_n, i8* nocapture readonly %__v35_k) local_unnamed_addr #2 {
entry:
  %__v53_subkey1.i.i.i = alloca [32 x i8], align 1
  %0 = icmp ult i64 %__v212___v33_m_len, 32
  br i1 %0, label %_crypto_secretbox_xsalsa20poly1305.exit, label %.loopexit.loopexit.i

.loopexit.loopexit.i:                             ; preds = %entry
  %1 = getelementptr inbounds [32 x i8], [32 x i8]* %__v53_subkey1.i.i.i, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #2
  call void @llvm.memset.p0i8.i64(i8* nonnull %1, i8 0, i64 32, i32 1, i1 false) #2
  call fastcc void @_crypto_core_hsalsa20(i8* nonnull %1, i8* %__v34_n, i8* %__v35_k) #2
  %__v54_tmp.i.i.i = getelementptr i8, i8* %__v34_n, i64 16
  call fastcc void @_crypto_stream_salsa20_xor_ic(i8* %__v32_c, i8* %__v33_m, i64 %__v212___v33_m_len, i8* %__v54_tmp.i.i.i, i8* nonnull %1) #2
  call void @llvm.memset.p0i8.i64(i8* nonnull %1, i8 0, i64 32, i32 1, i1 true) #2
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #2
  %__v40_cview.i = getelementptr i8, i8* %__v32_c, i64 16
  %__v236_lexpr.i = add i64 %__v211___v32_c_len, -32
  %__v41_mview.i = getelementptr i8, i8* %__v32_c, i64 32
  tail call fastcc void @_crypto_onetimeauth_poly1305(i8* %__v40_cview.i, i8* %__v41_mview.i, i64 %__v236_lexpr.i, i8* %__v32_c) #2
  tail call void @llvm.memset.p0i8.i64(i8* %__v32_c, i8 0, i64 16, i32 1, i1 false) #2
  br label %_crypto_secretbox_xsalsa20poly1305.exit

_crypto_secretbox_xsalsa20poly1305.exit:          ; preds = %entry, %.loopexit.loopexit.i
  %merge.i = phi i1 [ false, %entry ], [ true, %.loopexit.loopexit.i ]
  ret i1 %merge.i
}

; Function Attrs: nounwind
define internal fastcc i1 @_crypto_secretbox_xsalsa20poly1305_open(i8* nocapture %__v5_m, i8* nocapture readonly %__v6_c, i64 %__v208___v6_c_len, i8* nocapture readonly %__v7_n, i8* nocapture readonly %__v8_k) unnamed_addr #2 {
entry:
  %__v22_input2.i.i = alloca [16 x i8], align 8
  %__v28_block3.i.i = alloca [64 x i8], align 1
  %__v16_subkey1.i = alloca [32 x i8], align 1
  %__v53_subkey1.i.i = alloca [32 x i8], align 1
  %0 = icmp ult i64 %__v208___v6_c_len, 32
  br i1 %0, label %.loopexit, label %1

.loopexit:                                        ; preds = %.loopexit.loopexit, %_crypto_onetimeauth_poly1305_verify.exit, %entry
  %merge = phi i1 [ false, %_crypto_onetimeauth_poly1305_verify.exit ], [ false, %entry ], [ true, %.loopexit.loopexit ]
  ret i1 %merge

; <label>:1:                                      ; preds = %entry
  %__v9_subkey1 = alloca [32 x i8], align 1
  %__v9_subkey1.sub = getelementptr inbounds [32 x i8], [32 x i8]* %__v9_subkey1, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* nonnull %__v9_subkey1.sub, i8 0, i64 32, i32 1, i1 false) #2
  %2 = getelementptr inbounds [32 x i8], [32 x i8]* %__v16_subkey1.i, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %2)
  call void @llvm.memset.p0i8.i64(i8* nonnull %2, i8 0, i64 32, i32 1, i1 false) #2
  call fastcc void @_crypto_core_hsalsa20(i8* nonnull %2, i8* %__v7_n, i8* %__v8_k) #2
  %3 = getelementptr i8, i8* %__v7_n, i64 16
  %4 = getelementptr inbounds [32 x i8], [32 x i8]* %__v53_subkey1.i.i, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %4) #2
  %5 = getelementptr inbounds [16 x i8], [16 x i8]* %__v22_input2.i.i, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #2
  %6 = getelementptr inbounds [64 x i8], [64 x i8]* %__v28_block3.i.i, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %6) #2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* nonnull %2, i64 32, i32 1, i1 false) #2
  %7 = getelementptr inbounds [16 x i8], [16 x i8]* %__v22_input2.i.i, i64 0, i64 8
  %8 = bitcast i8* %7 to i64*
  store i64 0, i64* %8, align 8
  %9 = bitcast i8* %3 to i64*
  %10 = bitcast [16 x i8]* %__v22_input2.i.i to i64*
  %11 = load i64, i64* %9, align 1
  store i64 %11, i64* %10, align 8
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 64, i32 1, i1 false) #2
  call fastcc void @_crypto_core_salsa20(i8* nonnull %6, i8* nonnull %5, i8* nonnull %4) #2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %__v9_subkey1.sub, i8* nonnull %6, i64 32, i32 1, i1 false) #2
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 64, i32 1, i1 true) #2
  call void @llvm.memset.p0i8.i64(i8* nonnull %4, i8 0, i64 32, i32 1, i1 true) #2
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #2
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #2
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %6) #2
  call void @llvm.memset.p0i8.i64(i8* nonnull %2, i8 0, i64 32, i32 1, i1 true) #2
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %2)
  %__v10_tmp1 = getelementptr i8, i8* %__v6_c, i64 16
  %__v225_lexpr = add i64 %__v208___v6_c_len, -32
  %__v11_cview = getelementptr i8, i8* %__v6_c, i64 32
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5)
  call void @llvm.memset.p0i8.i64(i8* nonnull %5, i8 0, i64 16, i32 8, i1 false) #2
  call fastcc void @_crypto_onetimeauth_poly1305(i8* nonnull %5, i8* %__v11_cview, i64 %__v225_lexpr, i8* nonnull %__v9_subkey1.sub) #2
  br label %12

; <label>:12:                                     ; preds = %12, %1
  %indvars.iv.i.i = phi i64 [ 0, %1 ], [ %indvars.iv.next.i.i, %12 ]
  %__rctx.05.i.i = phi i1 [ true, %1 ], [ %23, %12 ]
  %__rval.04.i.i = phi i32 [ 0, %1 ], [ %19, %12 ]
  %13 = getelementptr i8, i8* %__v10_tmp1, i64 %indvars.iv.i.i
  %14 = load i8, i8* %13, align 1
  %15 = getelementptr [16 x i8], [16 x i8]* %__v22_input2.i.i, i64 0, i64 %indvars.iv.i.i
  %16 = load i8, i8* %15, align 1
  %__m4.i.i = icmp ne i8 %14, %16
  %17 = and i1 %__rctx.05.i.i, %__m4.i.i
  %18 = tail call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %17, i32 0, i32 %__rval.04.i.i) #2
  %19 = and i32 %18, 1
  %20 = zext i1 %__rctx.05.i.i to i32
  %21 = tail call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %17, i32 0, i32 %20) #2
  %22 = and i32 %21, 1
  %23 = icmp ne i32 %22, 0
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %exitcond.i.i = icmp eq i64 %indvars.iv.next.i.i, 16
  br i1 %exitcond.i.i, label %_crypto_onetimeauth_poly1305_verify.exit, label %12

_crypto_onetimeauth_poly1305_verify.exit:         ; preds = %12
  %24 = tail call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %23, i32 1, i32 %19) #2
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  %27 = tail call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %23, i32 0, i32 %22) #2
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5)
  br i1 %26, label %.loopexit, label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %_crypto_onetimeauth_poly1305_verify.exit
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %4) #2
  call void @llvm.memset.p0i8.i64(i8* nonnull %4, i8 0, i64 32, i32 1, i1 false) #2
  call fastcc void @_crypto_core_hsalsa20(i8* nonnull %4, i8* %__v7_n, i8* %__v8_k) #2
  call fastcc void @_crypto_stream_salsa20_xor_ic(i8* %__v5_m, i8* nonnull %__v6_c, i64 %__v208___v6_c_len, i8* %3, i8* nonnull %4) #2
  call void @llvm.memset.p0i8.i64(i8* nonnull %4, i8 0, i64 32, i32 1, i1 true) #2
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #2
  call void @llvm.memset.p0i8.i64(i8* %__v5_m, i8 0, i64 32, i32 1, i1 false)
  br label %.loopexit
}

; Function Attrs: nounwind
define i1 @_crypto_secretbox_open(i8* nocapture %__v1_m, i64 %__v205___v1_m_len, i8* nocapture readonly %__v2_c, i64 %__v206___v2_c_len, i8* nocapture readonly %__v3_n, i8* nocapture readonly %__v4_k) local_unnamed_addr #2 {
entry:
  %__v198__crypto_secretbox_xsalsa20poly1305_open = tail call fastcc i1 @_crypto_secretbox_xsalsa20poly1305_open(i8* %__v1_m, i8* %__v2_c, i64 %__v206___v2_c_len, i8* %__v3_n, i8* %__v4_k)
  ret i1 %__v198__crypto_secretbox_xsalsa20poly1305_open
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #0

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #0

attributes #0 = { argmemonly nounwind }
attributes #1 = { norecurse nounwind }
attributes #2 = { nounwind }

!0 = !{!1}
!1 = distinct !{!1, !2}
!2 = distinct !{!2, !"LVerDomain"}
!3 = !{!4}
!4 = distinct !{!4, !2}
!5 = !{!6}
!6 = distinct !{!6, !2}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.isvectorized", i32 1}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = !{!12}
!12 = distinct !{!12, !13}
!13 = distinct !{!13, !"LVerDomain"}
!14 = !{!15}
!15 = distinct !{!15, !13}
!16 = !{!17}
!17 = distinct !{!17, !13}
!18 = distinct !{!18, !8}
!19 = distinct !{!19, !8}
