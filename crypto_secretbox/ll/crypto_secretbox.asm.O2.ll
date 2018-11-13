; ModuleID = './crypto_secretbox.asm.O2.bc'
source_filename = "Module"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%poly1305_state_internal_t = type { [3 x i64], [3 x i64], [2 x i64], i64, [16 x i8], i8 }

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #0

; Function Attrs: norecurse nounwind
define internal fastcc void @_crypto_core_hsalsa20(i8* nocapture %__v239_out, i8* nocapture readonly %__v240_input, i8* nocapture readonly %__v241_k) unnamed_addr #1 {
entry:
  %0 = bitcast i8* %__v241_k to i32*
  %1 = load i32, i32* %0, align 4
  %2 = getelementptr i8, i8* %__v241_k, i64 4
  %3 = bitcast i8* %2 to i32*
  %4 = load i32, i32* %3, align 4
  %5 = getelementptr i8, i8* %__v241_k, i64 8
  %6 = bitcast i8* %5 to i32*
  %7 = load i32, i32* %6, align 4
  %8 = getelementptr i8, i8* %__v241_k, i64 12
  %9 = bitcast i8* %8 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = getelementptr i8, i8* %__v241_k, i64 16
  %12 = bitcast i8* %11 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr i8, i8* %__v241_k, i64 20
  %15 = bitcast i8* %14 to i32*
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr i8, i8* %__v241_k, i64 24
  %18 = bitcast i8* %17 to i32*
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr i8, i8* %__v241_k, i64 28
  %21 = bitcast i8* %20 to i32*
  %22 = load i32, i32* %21, align 4
  %23 = bitcast i8* %__v240_input to i32*
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr i8, i8* %__v240_input, i64 4
  %26 = bitcast i8* %25 to i32*
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr i8, i8* %__v240_input, i64 8
  %29 = bitcast i8* %28 to i32*
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr i8, i8* %__v240_input, i64 12
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
  %__v258_i105 = phi i32 [ 0, %entry ], [ %98, %46 ]
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
  %98 = add nuw nsw i32 %__v258_i105, 1
  %exitcond = icmp eq i32 %98, 10
  %99 = shufflevector <4 x i32> %97, <4 x i32> undef, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  br i1 %exitcond, label %100, label %46

; <label>:100:                                    ; preds = %46
  %101 = bitcast i8* %__v239_out to <4 x i32>*
  store <4 x i32> %97, <4 x i32>* %101, align 4
  %102 = getelementptr i8, i8* %__v239_out, i64 16
  %103 = bitcast i8* %102 to i32*
  %104 = extractelement <4 x i32> %82, i32 1
  store i32 %104, i32* %103, align 4
  %105 = getelementptr i8, i8* %__v239_out, i64 20
  %106 = bitcast i8* %105 to i32*
  %107 = extractelement <4 x i32> %87, i32 1
  store i32 %107, i32* %106, align 4
  %108 = getelementptr i8, i8* %__v239_out, i64 24
  %109 = bitcast i8* %108 to i32*
  %110 = extractelement <4 x i32> %87, i32 2
  store i32 %110, i32* %109, align 4
  %111 = getelementptr i8, i8* %__v239_out, i64 28
  %112 = bitcast i8* %111 to i32*
  %113 = extractelement <4 x i32> %92, i32 2
  store i32 %113, i32* %112, align 4
  ret void
}

; Function Attrs: nounwind
define internal fastcc void @_poly1305_blocks(%poly1305_state_internal_t* nocapture %__v218_state, i8* nocapture readonly %__v219_m, i64 %__v331___v219_m_len) unnamed_addr #2 {
entry:
  %0 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v218_state, i64 0, i32 5
  %1 = load i8, i8* %0, align 1
  %2 = icmp ne i8 %1, 0
  %3 = tail call i64 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %2, i64 0, i64 1099511627776) #2
  %4 = getelementptr %poly1305_state_internal_t, %poly1305_state_internal_t* %__v218_state, i64 0, i32 0, i64 1
  %__v224_r1 = load i64, i64* %4, align 8
  %5 = getelementptr %poly1305_state_internal_t, %poly1305_state_internal_t* %__v218_state, i64 0, i32 0, i64 2
  %__v225_r2 = load i64, i64* %5, align 8
  %6 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v218_state, i64 0, i32 1, i64 0
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr %poly1305_state_internal_t, %poly1305_state_internal_t* %__v218_state, i64 0, i32 1, i64 1
  %9 = load i64, i64* %8, align 8
  %10 = getelementptr %poly1305_state_internal_t, %poly1305_state_internal_t* %__v218_state, i64 0, i32 1, i64 2
  %11 = load i64, i64* %10, align 8
  %__v231_mloops = lshr i64 %__v331___v219_m_len, 4
  %12 = icmp eq i64 %__v231_mloops, 0
  br i1 %12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %entry
  %__v230_s2 = mul i64 %__v225_r2, 20
  %__v229_s1 = mul i64 %__v224_r1, 20
  %13 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v218_state, i64 0, i32 0, i64 0
  %__v223_r0 = load i64, i64* %13, align 8
  %14 = zext i64 %__v223_r0 to i128
  %15 = zext i64 %__v230_s2 to i128
  %16 = zext i64 %__v229_s1 to i128
  %17 = zext i64 %__v224_r1 to i128
  %18 = zext i64 %__v225_r2 to i128
  br label %19

; <label>:19:                                     ; preds = %19, %.lr.ph
  %__v232_bindex20 = phi i64 [ 0, %.lr.ph ], [ %72, %19 ]
  %__v228_h2.019 = phi i64 [ %11, %.lr.ph ], [ %66, %19 ]
  %__v227_h1.018 = phi i64 [ %9, %.lr.ph ], [ %71, %19 ]
  %__v226_h0.017 = phi i64 [ %7, %.lr.ph ], [ %70, %19 ]
  %__v434_lexpr = shl i64 %__v232_bindex20, 4
  %20 = getelementptr i8, i8* %__v219_m, i64 %__v434_lexpr
  %21 = bitcast i8* %20 to i64*
  %22 = load i64, i64* %21, align 8
  %__v436_lexpr = or i64 %__v434_lexpr, 8
  %23 = getelementptr i8, i8* %__v219_m, i64 %__v436_lexpr
  %24 = bitcast i8* %23 to i64*
  %25 = load i64, i64* %24, align 8
  %26 = and i64 %22, 17592186044415
  %27 = add i64 %26, %__v226_h0.017
  %28 = lshr i64 %22, 44
  %29 = shl i64 %25, 20
  %.masked = and i64 %29, 17592184995840
  %30 = or i64 %.masked, %28
  %31 = add i64 %30, %__v227_h1.018
  %32 = lshr i64 %25, 24
  %33 = or i64 %32, %3
  %34 = add i64 %33, %__v228_h2.019
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
  %72 = add nuw nsw i64 %__v232_bindex20, 1
  %exitcond = icmp eq i64 %72, %__v231_mloops
  br i1 %exitcond, label %._crit_edge, label %19

._crit_edge:                                      ; preds = %19, %entry
  %__v226_h0.0.lcssa = phi i64 [ %7, %entry ], [ %70, %19 ]
  %__v227_h1.0.lcssa = phi i64 [ %9, %entry ], [ %71, %19 ]
  %__v228_h2.0.lcssa = phi i64 [ %11, %entry ], [ %66, %19 ]
  store i64 %__v226_h0.0.lcssa, i64* %6, align 8
  store i64 %__v227_h1.0.lcssa, i64* %8, align 8
  store i64 %__v228_h2.0.lcssa, i64* %10, align 8
  ret void
}

; Function Attrs: nounwind
define internal fastcc void @_crypto_onetimeauth_poly1305(i8* nocapture %__v182_out, i8* nocapture readonly %__v183_m, i64 %__v329___v183_m_len, i8* nocapture readonly %__v184_key) unnamed_addr #2 {
  %__v185_state = alloca %poly1305_state_internal_t, align 8
  %1 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v185_state, i64 0, i32 0, i64 0
  %2 = bitcast %poly1305_state_internal_t* %__v185_state to i8*
  %3 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v185_state, i64 0, i32 1, i64 0
  %4 = bitcast i64* %3 to i8*
  %5 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v185_state, i64 0, i32 2, i64 0
  %6 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v185_state, i64 0, i32 3
  %7 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v185_state, i64 0, i32 4, i64 0
  %8 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v185_state, i64 0, i32 5
  %9 = bitcast i8* %__v184_key to i64*
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 16, i32 8, i1 false)
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr i8, i8* %__v184_key, i64 8
  %12 = bitcast i8* %11 to i64*
  %13 = load i64, i64* %12, align 8
  %14 = and i64 %10, 17575274610687
  store i64 %14, i64* %1, align 8
  %15 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v185_state, i64 0, i32 0, i64 1
  %16 = lshr i64 %10, 44
  %17 = shl i64 %13, 20
  %18 = or i64 %17, %16
  %19 = and i64 %18, 17592181915647
  store i64 %19, i64* %15, align 8
  %20 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v185_state, i64 0, i32 0, i64 2
  %21 = lshr i64 %13, 24
  %22 = and i64 %21, 68719475727
  store i64 %22, i64* %20, align 8
  %23 = getelementptr i8, i8* %__v184_key, i64 16
  call void @llvm.memset.p0i8.i64(i8* nonnull %4, i8 0, i64 24, i32 8, i1 false) #2
  %24 = bitcast i8* %23 to <2 x i64>*
  %25 = load <2 x i64>, <2 x i64>* %24, align 8
  %26 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v185_state, i64 0, i32 2, i64 1
  %27 = bitcast i64* %5 to <2 x i64>*
  store <2 x i64> %25, <2 x i64>* %27, align 8
  store i64 0, i64* %6, align 8
  store i8 0, i8* %8, align 8
  %28 = icmp ugt i64 %__v329___v183_m_len, 15
  br i1 %28, label %29, label %30

; <label>:29:                                     ; preds = %0
  %__v196_want.i = and i64 %__v329___v183_m_len, -16
  call fastcc void @_poly1305_blocks(%poly1305_state_internal_t* nonnull %__v185_state, i8* %__v183_m, i64 %__v196_want.i) #2
  br label %30

; <label>:30:                                     ; preds = %29, %0
  %__v192_mindex.1.i = phi i64 [ %__v196_want.i, %29 ], [ 0, %0 ]
  %31 = icmp ult i64 %__v192_mindex.1.i, %__v329___v183_m_len
  br i1 %31, label %32, label %_poly1305_update.exitthread-pre-split

; <label>:32:                                     ; preds = %30
  %__v199_remaining.i = sub i64 %__v329___v183_m_len, %__v192_mindex.1.i
  %33 = icmp eq i64 %__v199_remaining.i, 0
  %__v201__leftover8.i = load i64, i64* %6, align 8
  br i1 %33, label %._crit_edge.i5, label %.lr.ph.i4.preheader

.lr.ph.i4.preheader:                              ; preds = %32
  %34 = add i64 %__v329___v183_m_len, -1
  %xtraiter = and i64 %__v199_remaining.i, 1
  %35 = icmp eq i64 %34, %__v192_mindex.1.i
  br i1 %35, label %._crit_edge.i5.loopexit.unr-lcssa, label %.lr.ph.i4.preheader.new

.lr.ph.i4.preheader.new:                          ; preds = %.lr.ph.i4.preheader
  %unroll_iter = sub i64 %__v199_remaining.i, %xtraiter
  br label %.lr.ph.i4

.lr.ph.i4:                                        ; preds = %.lr.ph.i4, %.lr.ph.i4.preheader.new
  %__v201__leftover10.i = phi i64 [ %__v201__leftover8.i, %.lr.ph.i4.preheader.new ], [ %__v201__leftover.i.1, %.lr.ph.i4 ]
  %__v200_i9.i = phi i64 [ 0, %.lr.ph.i4.preheader.new ], [ %43, %.lr.ph.i4 ]
  %niter = phi i64 [ %unroll_iter, %.lr.ph.i4.preheader.new ], [ %niter.nsub.1, %.lr.ph.i4 ]
  %__v431_lexpr.i = add i64 %__v200_i9.i, %__v201__leftover10.i
  %__v432_lexpr.i = add i64 %__v200_i9.i, %__v192_mindex.1.i
  %36 = getelementptr %poly1305_state_internal_t, %poly1305_state_internal_t* %__v185_state, i64 0, i32 4, i64 %__v431_lexpr.i
  %37 = getelementptr i8, i8* %__v183_m, i64 %__v432_lexpr.i
  %38 = load i8, i8* %37, align 1
  store i8 %38, i8* %36, align 1
  %39 = or i64 %__v200_i9.i, 1
  %__v201__leftover.i = load i64, i64* %6, align 8
  %__v431_lexpr.i.1 = add i64 %39, %__v201__leftover.i
  %__v432_lexpr.i.1 = add i64 %39, %__v192_mindex.1.i
  %40 = getelementptr %poly1305_state_internal_t, %poly1305_state_internal_t* %__v185_state, i64 0, i32 4, i64 %__v431_lexpr.i.1
  %41 = getelementptr i8, i8* %__v183_m, i64 %__v432_lexpr.i.1
  %42 = load i8, i8* %41, align 1
  store i8 %42, i8* %40, align 1
  %43 = add i64 %__v200_i9.i, 2
  %__v201__leftover.i.1 = load i64, i64* %6, align 8
  %niter.nsub.1 = add i64 %niter, -2
  %niter.ncmp.1 = icmp eq i64 %niter.nsub.1, 0
  br i1 %niter.ncmp.1, label %._crit_edge.i5.loopexit.unr-lcssa, label %.lr.ph.i4

._crit_edge.i5.loopexit.unr-lcssa:                ; preds = %.lr.ph.i4, %.lr.ph.i4.preheader
  %__v201__leftover.i.lcssa.ph = phi i64 [ undef, %.lr.ph.i4.preheader ], [ %__v201__leftover.i.1, %.lr.ph.i4 ]
  %__v201__leftover10.i.unr = phi i64 [ %__v201__leftover8.i, %.lr.ph.i4.preheader ], [ %__v201__leftover.i.1, %.lr.ph.i4 ]
  %__v200_i9.i.unr = phi i64 [ 0, %.lr.ph.i4.preheader ], [ %43, %.lr.ph.i4 ]
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod, label %._crit_edge.i5, label %.lr.ph.i4.epil

.lr.ph.i4.epil:                                   ; preds = %._crit_edge.i5.loopexit.unr-lcssa
  %__v431_lexpr.i.epil = add i64 %__v200_i9.i.unr, %__v201__leftover10.i.unr
  %__v432_lexpr.i.epil = add i64 %__v200_i9.i.unr, %__v192_mindex.1.i
  %44 = getelementptr %poly1305_state_internal_t, %poly1305_state_internal_t* %__v185_state, i64 0, i32 4, i64 %__v431_lexpr.i.epil
  %45 = getelementptr i8, i8* %__v183_m, i64 %__v432_lexpr.i.epil
  %46 = load i8, i8* %45, align 1
  store i8 %46, i8* %44, align 1
  %__v201__leftover.i.epil = load i64, i64* %6, align 8
  br label %._crit_edge.i5

._crit_edge.i5:                                   ; preds = %.lr.ph.i4.epil, %._crit_edge.i5.loopexit.unr-lcssa, %32
  %__v201__leftover.lcssa.i = phi i64 [ %__v201__leftover8.i, %32 ], [ %__v201__leftover.i.lcssa.ph, %._crit_edge.i5.loopexit.unr-lcssa ], [ %__v201__leftover.i.epil, %.lr.ph.i4.epil ]
  %47 = add i64 %__v201__leftover.lcssa.i, %__v199_remaining.i
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
  %51 = getelementptr %poly1305_state_internal_t, %poly1305_state_internal_t* %__v185_state, i64 0, i32 4, i64 %48
  store i8 1, i8* %51, align 1
  %__v206_i1.i = add i64 %48, 1
  %52 = icmp ult i64 %__v206_i1.i, 16
  br i1 %52, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %50
  %scevgep.i = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v185_state, i64 0, i32 0, i64 9
  %scevgep3.i = bitcast i64* %scevgep.i to i8*
  %uglygep.i = getelementptr i8, i8* %scevgep3.i, i64 %__v206_i1.i
  %53 = sub i64 15, %48
  call void @llvm.memset.p0i8.i64(i8* %uglygep.i, i8 0, i64 %53, i32 1, i1 false) #2
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %50
  store i8 1, i8* %8, align 8
  call fastcc void @_poly1305_blocks(%poly1305_state_internal_t* nonnull %__v185_state, i8* nonnull %7, i64 16) #2
  br label %_poly1305_finish.exit

_poly1305_finish.exit:                            ; preds = %_poly1305_update.exit, %._crit_edge.i
  %54 = load i64, i64* %3, align 8
  %55 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v185_state, i64 0, i32 1, i64 1
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %__v185_state, i64 0, i32 1, i64 2
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
  %__v216_t0.i = load i64, i64* %5, align 8
  %__v217_t1.i = load i64, i64* %26, align 8
  %98 = and i64 %__v216_t0.i, 17592186044415
  %99 = add nuw nsw i64 %93, %98
  %100 = lshr i64 %99, 44
  %101 = and i64 %99, 17592186044415
  %102 = lshr i64 %__v216_t0.i, 44
  %103 = shl i64 %__v217_t1.i, 20
  %.masked.i = and i64 %103, 17592184995840
  %104 = or i64 %.masked.i, %102
  %105 = add nuw nsw i64 %95, %104
  %106 = add nuw nsw i64 %105, %100
  %107 = lshr i64 %106, 44
  %108 = lshr i64 %__v217_t1.i, 24
  %109 = add nsw i64 %97, %108
  %110 = add nsw i64 %109, %107
  %111 = shl i64 %106, 44
  %112 = or i64 %111, %101
  %113 = lshr i64 %106, 20
  %114 = and i64 %113, 16777215
  %115 = shl i64 %110, 24
  %116 = or i64 %115, %114
  %117 = bitcast i8* %__v182_out to i64*
  store i64 %112, i64* %117, align 8
  %118 = getelementptr i8, i8* %__v182_out, i64 8
  %119 = bitcast i8* %118 to i64*
  store i64 %116, i64* %119, align 8
  call void @llvm.memset.p0i8.i64(i8* nonnull %2, i8 0, i64 96, i32 1, i1 true) #2
  ret void
}

; Function Attrs: nounwind
define internal fastcc void @u0(i32* nocapture %__v64_x, i8* nocapture readonly %__v65_m, i64 %__v322___v65_m_len, i8* nocapture %__v66_c, i64 %__v323___v66_c_len) unnamed_addr #2 {
entry:
  %__v72_jtimes.i = lshr i64 %__v322___v65_m_len, 6
  %0 = icmp eq i64 %__v72_jtimes.i, 0
  br i1 %0, label %_u1.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %entry
  %1 = bitcast i32* %__v64_x to <4 x i32>*
  %2 = getelementptr i32, i32* %__v64_x, i64 4
  %3 = bitcast i32* %2 to <4 x i32>*
  %4 = getelementptr i32, i32* %__v64_x, i64 8
  %5 = bitcast i32* %4 to <4 x i32>*
  %6 = getelementptr i32, i32* %__v64_x, i64 12
  %7 = bitcast i32* %6 to <4 x i32>*
  %8 = getelementptr i32, i32* %__v64_x, i64 13
  br label %9

; <label>:9:                                      ; preds = %112, %.lr.ph.i
  %__v73__j6.i = phi i64 [ 0, %.lr.ph.i ], [ %234, %112 ]
  %10 = load <4 x i32>, <4 x i32>* %1, align 16
  %11 = load <4 x i32>, <4 x i32>* %3, align 16
  %12 = load <4 x i32>, <4 x i32>* %5, align 16
  %13 = load <4 x i32>, <4 x i32>* %7, align 16
  br label %14

; <label>:14:                                     ; preds = %14, %9
  %15 = phi <4 x i32> [ %11, %9 ], [ %97, %14 ]
  %16 = phi <4 x i32> [ %12, %9 ], [ %103, %14 ]
  %17 = phi <4 x i32> [ %13, %9 ], [ %109, %14 ]
  %18 = phi <4 x i32> [ %10, %9 ], [ %110, %14 ]
  %__v80__i1.i = phi i32 [ 0, %9 ], [ %111, %14 ]
  %19 = add <4 x i32> %18, %15
  %20 = shl <4 x i32> %19, <i32 7, i32 7, i32 7, i32 7>
  %21 = lshr <4 x i32> %19, <i32 25, i32 25, i32 25, i32 25>
  %22 = xor <4 x i32> %20, %17
  %23 = xor <4 x i32> %22, %21
  %24 = add <4 x i32> %23, %18
  %25 = shl <4 x i32> %24, <i32 9, i32 9, i32 9, i32 9>
  %26 = lshr <4 x i32> %24, <i32 23, i32 23, i32 23, i32 23>
  %27 = xor <4 x i32> %25, %16
  %28 = shufflevector <4 x i32> %23, <4 x i32> undef, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %29 = xor <4 x i32> %27, %26
  %30 = add <4 x i32> %29, %23
  %31 = shl <4 x i32> %30, <i32 13, i32 13, i32 13, i32 13>
  %32 = lshr <4 x i32> %30, <i32 19, i32 19, i32 19, i32 19>
  %33 = xor <4 x i32> %31, %15
  %34 = shufflevector <4 x i32> %29, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %35 = xor <4 x i32> %33, %32
  %36 = add <4 x i32> %35, %29
  %37 = shl <4 x i32> %36, <i32 18, i32 18, i32 18, i32 18>
  %38 = lshr <4 x i32> %36, <i32 14, i32 14, i32 14, i32 14>
  %39 = xor <4 x i32> %37, %18
  %40 = shufflevector <4 x i32> %35, <4 x i32> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %41 = xor <4 x i32> %39, %38
  %42 = add <4 x i32> %41, %28
  %43 = shl <4 x i32> %42, <i32 7, i32 7, i32 7, i32 7>
  %44 = lshr <4 x i32> %42, <i32 25, i32 25, i32 25, i32 25>
  %45 = xor <4 x i32> %43, %40
  %46 = xor <4 x i32> %45, %44
  %47 = add <4 x i32> %46, %41
  %48 = shl <4 x i32> %47, <i32 9, i32 9, i32 9, i32 9>
  %49 = lshr <4 x i32> %47, <i32 23, i32 23, i32 23, i32 23>
  %50 = xor <4 x i32> %48, %34
  %51 = shufflevector <4 x i32> %46, <4 x i32> undef, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %52 = xor <4 x i32> %50, %49
  %53 = add <4 x i32> %52, %46
  %54 = shl <4 x i32> %53, <i32 13, i32 13, i32 13, i32 13>
  %55 = lshr <4 x i32> %53, <i32 19, i32 19, i32 19, i32 19>
  %56 = xor <4 x i32> %54, %28
  %57 = shufflevector <4 x i32> %52, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %58 = xor <4 x i32> %56, %55
  %59 = add <4 x i32> %58, %52
  %60 = shl <4 x i32> %59, <i32 18, i32 18, i32 18, i32 18>
  %61 = lshr <4 x i32> %59, <i32 14, i32 14, i32 14, i32 14>
  %62 = xor <4 x i32> %60, %41
  %63 = shufflevector <4 x i32> %58, <4 x i32> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %64 = xor <4 x i32> %62, %61
  %65 = add <4 x i32> %64, %51
  %66 = shl <4 x i32> %65, <i32 7, i32 7, i32 7, i32 7>
  %67 = lshr <4 x i32> %65, <i32 25, i32 25, i32 25, i32 25>
  %68 = xor <4 x i32> %66, %63
  %69 = xor <4 x i32> %68, %67
  %70 = add <4 x i32> %69, %64
  %71 = shl <4 x i32> %70, <i32 9, i32 9, i32 9, i32 9>
  %72 = lshr <4 x i32> %70, <i32 23, i32 23, i32 23, i32 23>
  %73 = xor <4 x i32> %71, %57
  %74 = shufflevector <4 x i32> %69, <4 x i32> undef, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %75 = xor <4 x i32> %73, %72
  %76 = add <4 x i32> %75, %69
  %77 = shl <4 x i32> %76, <i32 13, i32 13, i32 13, i32 13>
  %78 = lshr <4 x i32> %76, <i32 19, i32 19, i32 19, i32 19>
  %79 = xor <4 x i32> %77, %51
  %80 = shufflevector <4 x i32> %75, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %81 = xor <4 x i32> %79, %78
  %82 = add <4 x i32> %81, %75
  %83 = shl <4 x i32> %82, <i32 18, i32 18, i32 18, i32 18>
  %84 = lshr <4 x i32> %82, <i32 14, i32 14, i32 14, i32 14>
  %85 = xor <4 x i32> %83, %64
  %86 = shufflevector <4 x i32> %81, <4 x i32> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %87 = xor <4 x i32> %85, %84
  %88 = add <4 x i32> %87, %74
  %89 = shl <4 x i32> %88, <i32 7, i32 7, i32 7, i32 7>
  %90 = lshr <4 x i32> %88, <i32 25, i32 25, i32 25, i32 25>
  %91 = xor <4 x i32> %89, %86
  %92 = xor <4 x i32> %91, %90
  %93 = add <4 x i32> %92, %87
  %94 = shl <4 x i32> %93, <i32 9, i32 9, i32 9, i32 9>
  %95 = lshr <4 x i32> %93, <i32 23, i32 23, i32 23, i32 23>
  %96 = xor <4 x i32> %94, %80
  %97 = shufflevector <4 x i32> %92, <4 x i32> undef, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %98 = xor <4 x i32> %96, %95
  %99 = add <4 x i32> %98, %92
  %100 = shl <4 x i32> %99, <i32 13, i32 13, i32 13, i32 13>
  %101 = lshr <4 x i32> %99, <i32 19, i32 19, i32 19, i32 19>
  %102 = xor <4 x i32> %100, %74
  %103 = shufflevector <4 x i32> %98, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %104 = xor <4 x i32> %102, %101
  %105 = add <4 x i32> %104, %98
  %106 = shl <4 x i32> %105, <i32 18, i32 18, i32 18, i32 18>
  %107 = lshr <4 x i32> %105, <i32 14, i32 14, i32 14, i32 14>
  %108 = xor <4 x i32> %106, %87
  %109 = shufflevector <4 x i32> %104, <4 x i32> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %110 = xor <4 x i32> %108, %107
  %111 = add nuw nsw i32 %__v80__i1.i, 1
  %exitcond.i = icmp eq i32 %111, 5
  br i1 %exitcond.i, label %112, label %14

; <label>:112:                                    ; preds = %14
  %__v74_j.i = shl i64 %__v73__j6.i, 6
  %113 = add <4 x i32> %110, %10
  %114 = add <4 x i32> %97, %11
  %115 = add <4 x i32> %103, %12
  %116 = add <4 x i32> %109, %13
  %117 = extractelement <4 x i32> %113, i32 0
  %118 = extractelement <4 x i32> %114, i32 0
  %119 = extractelement <4 x i32> %115, i32 0
  %120 = extractelement <4 x i32> %116, i32 0
  %121 = getelementptr i8, i8* %__v65_m, i64 %__v74_j.i
  %122 = bitcast i8* %121 to i32*
  %123 = load i32, i32* %122, align 4
  %124 = xor i32 %123, %117
  %__v348_lexpr.i = or i64 %__v74_j.i, 48
  %125 = getelementptr i8, i8* %__v65_m, i64 %__v348_lexpr.i
  %126 = bitcast i8* %125 to i32*
  %127 = load i32, i32* %126, align 4
  %128 = xor i32 %127, %118
  %__v351_lexpr.i = or i64 %__v74_j.i, 32
  %129 = getelementptr i8, i8* %__v65_m, i64 %__v351_lexpr.i
  %130 = bitcast i8* %129 to i32*
  %131 = load i32, i32* %130, align 4
  %132 = xor i32 %131, %119
  %__v354_lexpr.i = or i64 %__v74_j.i, 16
  %133 = getelementptr i8, i8* %__v65_m, i64 %__v354_lexpr.i
  %134 = bitcast i8* %133 to i32*
  %135 = load i32, i32* %134, align 4
  %136 = xor i32 %135, %120
  %137 = getelementptr i8, i8* %__v66_c, i64 %__v74_j.i
  %138 = bitcast i8* %137 to i32*
  store i32 %124, i32* %138, align 4
  %139 = getelementptr i8, i8* %__v66_c, i64 %__v348_lexpr.i
  %140 = bitcast i8* %139 to i32*
  store i32 %128, i32* %140, align 4
  %141 = getelementptr i8, i8* %__v66_c, i64 %__v351_lexpr.i
  %142 = bitcast i8* %141 to i32*
  store i32 %132, i32* %142, align 4
  %143 = getelementptr i8, i8* %__v66_c, i64 %__v354_lexpr.i
  %144 = bitcast i8* %143 to i32*
  store i32 %136, i32* %144, align 4
  %145 = extractelement <4 x i32> %113, i32 1
  %146 = extractelement <4 x i32> %114, i32 1
  %147 = extractelement <4 x i32> %115, i32 1
  %148 = extractelement <4 x i32> %116, i32 1
  %__v365_lexpr.i = or i64 %__v74_j.i, 20
  %149 = getelementptr i8, i8* %__v65_m, i64 %__v365_lexpr.i
  %150 = bitcast i8* %149 to i32*
  %151 = load i32, i32* %150, align 4
  %152 = xor i32 %151, %145
  %__v368_lexpr.i = or i64 %__v74_j.i, 4
  %153 = getelementptr i8, i8* %__v65_m, i64 %__v368_lexpr.i
  %154 = bitcast i8* %153 to i32*
  %155 = load i32, i32* %154, align 4
  %156 = xor i32 %155, %146
  %__v371_lexpr.i = or i64 %__v74_j.i, 52
  %157 = getelementptr i8, i8* %__v65_m, i64 %__v371_lexpr.i
  %158 = bitcast i8* %157 to i32*
  %159 = load i32, i32* %158, align 4
  %160 = xor i32 %159, %147
  %__v374_lexpr.i = or i64 %__v74_j.i, 36
  %161 = getelementptr i8, i8* %__v65_m, i64 %__v374_lexpr.i
  %162 = bitcast i8* %161 to i32*
  %163 = load i32, i32* %162, align 4
  %164 = xor i32 %163, %148
  %165 = getelementptr i8, i8* %__v66_c, i64 %__v365_lexpr.i
  %166 = bitcast i8* %165 to i32*
  store i32 %152, i32* %166, align 4
  %167 = getelementptr i8, i8* %__v66_c, i64 %__v368_lexpr.i
  %168 = bitcast i8* %167 to i32*
  store i32 %156, i32* %168, align 4
  %169 = getelementptr i8, i8* %__v66_c, i64 %__v371_lexpr.i
  %170 = bitcast i8* %169 to i32*
  store i32 %160, i32* %170, align 4
  %171 = getelementptr i8, i8* %__v66_c, i64 %__v374_lexpr.i
  %172 = bitcast i8* %171 to i32*
  store i32 %164, i32* %172, align 4
  %173 = extractelement <4 x i32> %113, i32 2
  %174 = extractelement <4 x i32> %114, i32 2
  %175 = extractelement <4 x i32> %115, i32 2
  %176 = extractelement <4 x i32> %116, i32 2
  %__v385_lexpr.i = or i64 %__v74_j.i, 40
  %177 = getelementptr i8, i8* %__v65_m, i64 %__v385_lexpr.i
  %178 = bitcast i8* %177 to i32*
  %179 = load i32, i32* %178, align 4
  %180 = xor i32 %179, %173
  %__v388_lexpr.i = or i64 %__v74_j.i, 24
  %181 = getelementptr i8, i8* %__v65_m, i64 %__v388_lexpr.i
  %182 = bitcast i8* %181 to i32*
  %183 = load i32, i32* %182, align 4
  %184 = xor i32 %183, %174
  %__v391_lexpr.i = or i64 %__v74_j.i, 8
  %185 = getelementptr i8, i8* %__v65_m, i64 %__v391_lexpr.i
  %186 = bitcast i8* %185 to i32*
  %187 = load i32, i32* %186, align 4
  %188 = xor i32 %187, %175
  %__v394_lexpr.i = or i64 %__v74_j.i, 56
  %189 = getelementptr i8, i8* %__v65_m, i64 %__v394_lexpr.i
  %190 = bitcast i8* %189 to i32*
  %191 = load i32, i32* %190, align 4
  %192 = xor i32 %191, %176
  %193 = getelementptr i8, i8* %__v66_c, i64 %__v385_lexpr.i
  %194 = bitcast i8* %193 to i32*
  store i32 %180, i32* %194, align 4
  %195 = getelementptr i8, i8* %__v66_c, i64 %__v388_lexpr.i
  %196 = bitcast i8* %195 to i32*
  store i32 %184, i32* %196, align 4
  %197 = getelementptr i8, i8* %__v66_c, i64 %__v391_lexpr.i
  %198 = bitcast i8* %197 to i32*
  store i32 %188, i32* %198, align 4
  %199 = getelementptr i8, i8* %__v66_c, i64 %__v394_lexpr.i
  %200 = bitcast i8* %199 to i32*
  store i32 %192, i32* %200, align 4
  %201 = extractelement <4 x i32> %113, i32 3
  %202 = extractelement <4 x i32> %114, i32 3
  %203 = extractelement <4 x i32> %115, i32 3
  %204 = extractelement <4 x i32> %116, i32 3
  %__v405_lexpr.i = or i64 %__v74_j.i, 60
  %205 = getelementptr i8, i8* %__v65_m, i64 %__v405_lexpr.i
  %206 = bitcast i8* %205 to i32*
  %207 = load i32, i32* %206, align 4
  %208 = xor i32 %207, %201
  %__v408_lexpr.i = or i64 %__v74_j.i, 44
  %209 = getelementptr i8, i8* %__v65_m, i64 %__v408_lexpr.i
  %210 = bitcast i8* %209 to i32*
  %211 = load i32, i32* %210, align 4
  %212 = xor i32 %211, %202
  %__v411_lexpr.i = or i64 %__v74_j.i, 28
  %213 = getelementptr i8, i8* %__v65_m, i64 %__v411_lexpr.i
  %214 = bitcast i8* %213 to i32*
  %215 = load i32, i32* %214, align 4
  %216 = xor i32 %215, %203
  %__v414_lexpr.i = or i64 %__v74_j.i, 12
  %217 = getelementptr i8, i8* %__v65_m, i64 %__v414_lexpr.i
  %218 = bitcast i8* %217 to i32*
  %219 = load i32, i32* %218, align 4
  %220 = xor i32 %219, %204
  %221 = getelementptr i8, i8* %__v66_c, i64 %__v405_lexpr.i
  %222 = bitcast i8* %221 to i32*
  store i32 %208, i32* %222, align 4
  %223 = getelementptr i8, i8* %__v66_c, i64 %__v408_lexpr.i
  %224 = bitcast i8* %223 to i32*
  store i32 %212, i32* %224, align 4
  %225 = getelementptr i8, i8* %__v66_c, i64 %__v411_lexpr.i
  %226 = bitcast i8* %225 to i32*
  store i32 %216, i32* %226, align 4
  %227 = getelementptr i8, i8* %__v66_c, i64 %__v414_lexpr.i
  %228 = bitcast i8* %227 to i32*
  store i32 %220, i32* %228, align 4
  %229 = load i32, i32* %4, align 4
  %230 = load i32, i32* %8, align 4
  %231 = add i32 %229, 1
  %__m1.i = icmp eq i32 %231, 0
  %232 = add i32 %230, 1
  %233 = tail call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m1.i, i32 %232, i32 %230) #2
  store i32 %231, i32* %4, align 4
  store i32 %233, i32* %8, align 4
  %234 = add nuw nsw i64 %__v73__j6.i, 1
  %exitcond10.i = icmp eq i64 %234, %__v72_jtimes.i
  br i1 %exitcond10.i, label %_u1.exit, label %9

_u1.exit:                                         ; preds = %112, %entry
  %235 = and i64 %__v322___v65_m_len, -64
  %__v336_lexpr = sub i64 %__v322___v65_m_len, %235
  %236 = getelementptr i8, i8* %__v65_m, i64 %235
  %237 = getelementptr i8, i8* %__v66_c, i64 %235
  %238 = icmp eq i64 %__v336_lexpr, 0
  br i1 %238, label %_u0.exit, label %239

; <label>:239:                                    ; preds = %_u1.exit
  %240 = bitcast i32* %__v64_x to <4 x i32>*
  %241 = load <4 x i32>, <4 x i32>* %240, align 16
  %242 = getelementptr i32, i32* %__v64_x, i64 4
  %243 = bitcast i32* %242 to <4 x i32>*
  %244 = load <4 x i32>, <4 x i32>* %243, align 16
  %245 = getelementptr i32, i32* %__v64_x, i64 8
  %246 = bitcast i32* %245 to <4 x i32>*
  %247 = load <4 x i32>, <4 x i32>* %246, align 16
  %248 = getelementptr i32, i32* %__v64_x, i64 12
  %249 = bitcast i32* %248 to <4 x i32>*
  %250 = load <4 x i32>, <4 x i32>* %249, align 16
  br label %251

; <label>:251:                                    ; preds = %251, %239
  %252 = phi <4 x i32> [ %244, %239 ], [ %334, %251 ]
  %253 = phi <4 x i32> [ %247, %239 ], [ %340, %251 ]
  %254 = phi <4 x i32> [ %250, %239 ], [ %346, %251 ]
  %255 = phi <4 x i32> [ %241, %239 ], [ %347, %251 ]
  %__v140__i3.i = phi i32 [ 0, %239 ], [ %348, %251 ]
  %256 = add <4 x i32> %255, %252
  %257 = shl <4 x i32> %256, <i32 7, i32 7, i32 7, i32 7>
  %258 = lshr <4 x i32> %256, <i32 25, i32 25, i32 25, i32 25>
  %259 = xor <4 x i32> %257, %254
  %260 = xor <4 x i32> %259, %258
  %261 = add <4 x i32> %260, %255
  %262 = shl <4 x i32> %261, <i32 9, i32 9, i32 9, i32 9>
  %263 = lshr <4 x i32> %261, <i32 23, i32 23, i32 23, i32 23>
  %264 = xor <4 x i32> %262, %253
  %265 = shufflevector <4 x i32> %260, <4 x i32> undef, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %266 = xor <4 x i32> %264, %263
  %267 = add <4 x i32> %266, %260
  %268 = shl <4 x i32> %267, <i32 13, i32 13, i32 13, i32 13>
  %269 = lshr <4 x i32> %267, <i32 19, i32 19, i32 19, i32 19>
  %270 = xor <4 x i32> %268, %252
  %271 = shufflevector <4 x i32> %266, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %272 = xor <4 x i32> %270, %269
  %273 = add <4 x i32> %272, %266
  %274 = shl <4 x i32> %273, <i32 18, i32 18, i32 18, i32 18>
  %275 = lshr <4 x i32> %273, <i32 14, i32 14, i32 14, i32 14>
  %276 = xor <4 x i32> %274, %255
  %277 = shufflevector <4 x i32> %272, <4 x i32> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %278 = xor <4 x i32> %276, %275
  %279 = add <4 x i32> %278, %265
  %280 = shl <4 x i32> %279, <i32 7, i32 7, i32 7, i32 7>
  %281 = lshr <4 x i32> %279, <i32 25, i32 25, i32 25, i32 25>
  %282 = xor <4 x i32> %280, %277
  %283 = xor <4 x i32> %282, %281
  %284 = add <4 x i32> %283, %278
  %285 = shl <4 x i32> %284, <i32 9, i32 9, i32 9, i32 9>
  %286 = lshr <4 x i32> %284, <i32 23, i32 23, i32 23, i32 23>
  %287 = xor <4 x i32> %285, %271
  %288 = shufflevector <4 x i32> %283, <4 x i32> undef, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %289 = xor <4 x i32> %287, %286
  %290 = add <4 x i32> %289, %283
  %291 = shl <4 x i32> %290, <i32 13, i32 13, i32 13, i32 13>
  %292 = lshr <4 x i32> %290, <i32 19, i32 19, i32 19, i32 19>
  %293 = xor <4 x i32> %291, %265
  %294 = shufflevector <4 x i32> %289, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %295 = xor <4 x i32> %293, %292
  %296 = add <4 x i32> %295, %289
  %297 = shl <4 x i32> %296, <i32 18, i32 18, i32 18, i32 18>
  %298 = lshr <4 x i32> %296, <i32 14, i32 14, i32 14, i32 14>
  %299 = xor <4 x i32> %297, %278
  %300 = shufflevector <4 x i32> %295, <4 x i32> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %301 = xor <4 x i32> %299, %298
  %302 = add <4 x i32> %301, %288
  %303 = shl <4 x i32> %302, <i32 7, i32 7, i32 7, i32 7>
  %304 = lshr <4 x i32> %302, <i32 25, i32 25, i32 25, i32 25>
  %305 = xor <4 x i32> %303, %300
  %306 = xor <4 x i32> %305, %304
  %307 = add <4 x i32> %306, %301
  %308 = shl <4 x i32> %307, <i32 9, i32 9, i32 9, i32 9>
  %309 = lshr <4 x i32> %307, <i32 23, i32 23, i32 23, i32 23>
  %310 = xor <4 x i32> %308, %294
  %311 = shufflevector <4 x i32> %306, <4 x i32> undef, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %312 = xor <4 x i32> %310, %309
  %313 = add <4 x i32> %312, %306
  %314 = shl <4 x i32> %313, <i32 13, i32 13, i32 13, i32 13>
  %315 = lshr <4 x i32> %313, <i32 19, i32 19, i32 19, i32 19>
  %316 = xor <4 x i32> %314, %288
  %317 = shufflevector <4 x i32> %312, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %318 = xor <4 x i32> %316, %315
  %319 = add <4 x i32> %318, %312
  %320 = shl <4 x i32> %319, <i32 18, i32 18, i32 18, i32 18>
  %321 = lshr <4 x i32> %319, <i32 14, i32 14, i32 14, i32 14>
  %322 = xor <4 x i32> %320, %301
  %323 = shufflevector <4 x i32> %318, <4 x i32> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %324 = xor <4 x i32> %322, %321
  %325 = add <4 x i32> %324, %311
  %326 = shl <4 x i32> %325, <i32 7, i32 7, i32 7, i32 7>
  %327 = lshr <4 x i32> %325, <i32 25, i32 25, i32 25, i32 25>
  %328 = xor <4 x i32> %326, %323
  %329 = xor <4 x i32> %328, %327
  %330 = add <4 x i32> %329, %324
  %331 = shl <4 x i32> %330, <i32 9, i32 9, i32 9, i32 9>
  %332 = lshr <4 x i32> %330, <i32 23, i32 23, i32 23, i32 23>
  %333 = xor <4 x i32> %331, %317
  %334 = shufflevector <4 x i32> %329, <4 x i32> undef, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %335 = xor <4 x i32> %333, %332
  %336 = add <4 x i32> %335, %329
  %337 = shl <4 x i32> %336, <i32 13, i32 13, i32 13, i32 13>
  %338 = lshr <4 x i32> %336, <i32 19, i32 19, i32 19, i32 19>
  %339 = xor <4 x i32> %337, %311
  %340 = shufflevector <4 x i32> %335, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %341 = xor <4 x i32> %339, %338
  %342 = add <4 x i32> %341, %335
  %343 = shl <4 x i32> %342, <i32 18, i32 18, i32 18, i32 18>
  %344 = lshr <4 x i32> %342, <i32 14, i32 14, i32 14, i32 14>
  %345 = xor <4 x i32> %343, %324
  %346 = shufflevector <4 x i32> %341, <4 x i32> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %347 = xor <4 x i32> %345, %344
  %348 = add nuw nsw i32 %__v140__i3.i, 1
  %exitcond11.i = icmp eq i32 %348, 5
  br i1 %exitcond11.i, label %.lr.ph.i1, label %251

.lr.ph.i1:                                        ; preds = %251
  %349 = add <4 x i32> %347, %241
  %350 = add <4 x i32> %334, %244
  %351 = add <4 x i32> %340, %247
  %352 = add <4 x i32> %346, %250
  %__v157_partialblock1.i = alloca [64 x i8], align 4
  %__v157_partialblock1.sub.i = getelementptr inbounds [64 x i8], [64 x i8]* %__v157_partialblock1.i, i64 0, i64 0
  %__v158_inA.i = extractelement <4 x i32> %349, i32 0
  %__v159_inB.i = extractelement <4 x i32> %350, i32 0
  %__v160_inC.i = extractelement <4 x i32> %351, i32 0
  %__v161_inD.i = extractelement <4 x i32> %352, i32 0
  %353 = bitcast [64 x i8]* %__v157_partialblock1.i to i32*
  store i32 %__v158_inA.i, i32* %353, align 4
  %354 = getelementptr inbounds [64 x i8], [64 x i8]* %__v157_partialblock1.i, i64 0, i64 48
  %355 = bitcast i8* %354 to i32*
  store i32 %__v159_inB.i, i32* %355, align 4
  %356 = getelementptr inbounds [64 x i8], [64 x i8]* %__v157_partialblock1.i, i64 0, i64 32
  %357 = bitcast i8* %356 to i32*
  store i32 %__v160_inC.i, i32* %357, align 4
  %358 = getelementptr inbounds [64 x i8], [64 x i8]* %__v157_partialblock1.i, i64 0, i64 16
  %359 = bitcast i8* %358 to i32*
  store i32 %__v161_inD.i, i32* %359, align 4
  %__v162_inA.i = extractelement <4 x i32> %349, i32 1
  %__v163_inB.i = extractelement <4 x i32> %350, i32 1
  %__v164_inC.i = extractelement <4 x i32> %351, i32 1
  %__v165_inD.i = extractelement <4 x i32> %352, i32 1
  %360 = getelementptr inbounds [64 x i8], [64 x i8]* %__v157_partialblock1.i, i64 0, i64 20
  %361 = bitcast i8* %360 to i32*
  store i32 %__v162_inA.i, i32* %361, align 4
  %362 = getelementptr inbounds [64 x i8], [64 x i8]* %__v157_partialblock1.i, i64 0, i64 4
  %363 = bitcast i8* %362 to i32*
  store i32 %__v163_inB.i, i32* %363, align 4
  %364 = getelementptr inbounds [64 x i8], [64 x i8]* %__v157_partialblock1.i, i64 0, i64 52
  %365 = bitcast i8* %364 to i32*
  store i32 %__v164_inC.i, i32* %365, align 4
  %366 = getelementptr inbounds [64 x i8], [64 x i8]* %__v157_partialblock1.i, i64 0, i64 36
  %367 = bitcast i8* %366 to i32*
  store i32 %__v165_inD.i, i32* %367, align 4
  %__v166_inA.i = extractelement <4 x i32> %349, i32 2
  %__v167_inB.i = extractelement <4 x i32> %350, i32 2
  %__v168_inC.i = extractelement <4 x i32> %351, i32 2
  %__v169_inD.i = extractelement <4 x i32> %352, i32 2
  %368 = getelementptr inbounds [64 x i8], [64 x i8]* %__v157_partialblock1.i, i64 0, i64 40
  %369 = bitcast i8* %368 to i32*
  store i32 %__v166_inA.i, i32* %369, align 4
  %370 = getelementptr inbounds [64 x i8], [64 x i8]* %__v157_partialblock1.i, i64 0, i64 24
  %371 = bitcast i8* %370 to i32*
  store i32 %__v167_inB.i, i32* %371, align 4
  %372 = getelementptr inbounds [64 x i8], [64 x i8]* %__v157_partialblock1.i, i64 0, i64 8
  %373 = bitcast i8* %372 to i32*
  store i32 %__v168_inC.i, i32* %373, align 4
  %374 = getelementptr inbounds [64 x i8], [64 x i8]* %__v157_partialblock1.i, i64 0, i64 56
  %375 = bitcast i8* %374 to i32*
  store i32 %__v169_inD.i, i32* %375, align 4
  %__v170_inA.i = extractelement <4 x i32> %349, i32 3
  %__v171_inB.i = extractelement <4 x i32> %350, i32 3
  %__v172_inC.i = extractelement <4 x i32> %351, i32 3
  %__v173_inD.i = extractelement <4 x i32> %352, i32 3
  %376 = getelementptr inbounds [64 x i8], [64 x i8]* %__v157_partialblock1.i, i64 0, i64 60
  %377 = bitcast i8* %376 to i32*
  store i32 %__v170_inA.i, i32* %377, align 4
  %378 = getelementptr inbounds [64 x i8], [64 x i8]* %__v157_partialblock1.i, i64 0, i64 44
  %379 = bitcast i8* %378 to i32*
  store i32 %__v171_inB.i, i32* %379, align 4
  %380 = getelementptr inbounds [64 x i8], [64 x i8]* %__v157_partialblock1.i, i64 0, i64 28
  %381 = bitcast i8* %380 to i32*
  store i32 %__v172_inC.i, i32* %381, align 4
  %382 = getelementptr inbounds [64 x i8], [64 x i8]* %__v157_partialblock1.i, i64 0, i64 12
  %383 = bitcast i8* %382 to i32*
  store i32 %__v173_inD.i, i32* %383, align 4
  %384 = trunc i32 %__v158_inA.i to i8
  %385 = load i8, i8* %236, align 1
  %386 = xor i8 %385, %384
  store i8 %386, i8* %237, align 1
  %exitcond.i210 = icmp eq i64 %__v336_lexpr, 1
  br i1 %exitcond.i210, label %._crit_edge.i, label %._crit_edge12.i.lr.ph

._crit_edge12.i.lr.ph:                            ; preds = %.lr.ph.i1
  %387 = add i64 %__v322___v65_m_len, -1
  %388 = sub i64 %387, %235
  %min.iters.check = icmp ult i64 %388, 32
  br i1 %min.iters.check, label %._crit_edge12.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %._crit_edge12.i.lr.ph
  %389 = or i64 %235, 1
  %scevgep = getelementptr i8, i8* %__v66_c, i64 %389
  %scevgep32 = getelementptr i8, i8* %__v66_c, i64 %__v322___v65_m_len
  %scevgep33 = getelementptr i8, i8* %__v65_m, i64 %389
  %scevgep34 = getelementptr i8, i8* %__v65_m, i64 %__v322___v65_m_len
  %bound0 = icmp ult i8* %scevgep, %scevgep34
  %bound1 = icmp ult i8* %scevgep33, %scevgep32
  %memcheck.conflict = and i1 %bound0, %bound1
  br i1 %memcheck.conflict, label %._crit_edge12.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %388, -32
  %ind.end = or i64 %n.vec, 1
  %390 = add i64 %n.vec, -32
  %391 = lshr exact i64 %390, 5
  %392 = add nuw nsw i64 %391, 1
  %xtraiter46 = and i64 %392, 1
  %393 = icmp eq i64 %390, 0
  br i1 %393, label %middle.block.unr-lcssa, label %vector.ph.new

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = sub nsw i64 %392, %xtraiter46
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.1, %vector.body ]
  %niter = phi i64 [ %unroll_iter, %vector.ph.new ], [ %niter.nsub.1, %vector.body ]
  %offset.idx = or i64 %index, 1
  %394 = getelementptr [64 x i8], [64 x i8]* %__v157_partialblock1.i, i64 0, i64 %offset.idx
  %395 = bitcast i8* %394 to <16 x i8>*
  %wide.load = load <16 x i8>, <16 x i8>* %395, align 1, !alias.scope !0
  %396 = getelementptr i8, i8* %394, i64 16
  %397 = bitcast i8* %396 to <16 x i8>*
  %wide.load36 = load <16 x i8>, <16 x i8>* %397, align 1, !alias.scope !0
  %398 = getelementptr i8, i8* %237, i64 %offset.idx
  %399 = getelementptr i8, i8* %236, i64 %offset.idx
  %400 = bitcast i8* %399 to <16 x i8>*
  %wide.load37 = load <16 x i8>, <16 x i8>* %400, align 1, !alias.scope !3
  %401 = getelementptr i8, i8* %399, i64 16
  %402 = bitcast i8* %401 to <16 x i8>*
  %wide.load38 = load <16 x i8>, <16 x i8>* %402, align 1, !alias.scope !3
  %403 = xor <16 x i8> %wide.load37, %wide.load
  %404 = xor <16 x i8> %wide.load38, %wide.load36
  %405 = bitcast i8* %398 to <16 x i8>*
  store <16 x i8> %403, <16 x i8>* %405, align 1, !alias.scope !5, !noalias !3
  %406 = getelementptr i8, i8* %398, i64 16
  %407 = bitcast i8* %406 to <16 x i8>*
  store <16 x i8> %404, <16 x i8>* %407, align 1, !alias.scope !5, !noalias !3
  %offset.idx.1 = or i64 %index, 33
  %408 = getelementptr [64 x i8], [64 x i8]* %__v157_partialblock1.i, i64 0, i64 %offset.idx.1
  %409 = bitcast i8* %408 to <16 x i8>*
  %wide.load.1 = load <16 x i8>, <16 x i8>* %409, align 1, !alias.scope !0
  %410 = getelementptr i8, i8* %408, i64 16
  %411 = bitcast i8* %410 to <16 x i8>*
  %wide.load36.1 = load <16 x i8>, <16 x i8>* %411, align 1, !alias.scope !0
  %412 = getelementptr i8, i8* %237, i64 %offset.idx.1
  %413 = getelementptr i8, i8* %236, i64 %offset.idx.1
  %414 = bitcast i8* %413 to <16 x i8>*
  %wide.load37.1 = load <16 x i8>, <16 x i8>* %414, align 1, !alias.scope !3
  %415 = getelementptr i8, i8* %413, i64 16
  %416 = bitcast i8* %415 to <16 x i8>*
  %wide.load38.1 = load <16 x i8>, <16 x i8>* %416, align 1, !alias.scope !3
  %417 = xor <16 x i8> %wide.load37.1, %wide.load.1
  %418 = xor <16 x i8> %wide.load38.1, %wide.load36.1
  %419 = bitcast i8* %412 to <16 x i8>*
  store <16 x i8> %417, <16 x i8>* %419, align 1, !alias.scope !5, !noalias !3
  %420 = getelementptr i8, i8* %412, i64 16
  %421 = bitcast i8* %420 to <16 x i8>*
  store <16 x i8> %418, <16 x i8>* %421, align 1, !alias.scope !5, !noalias !3
  %index.next.1 = add i64 %index, 64
  %niter.nsub.1 = add i64 %niter, -2
  %niter.ncmp.1 = icmp eq i64 %niter.nsub.1, 0
  br i1 %niter.ncmp.1, label %middle.block.unr-lcssa.loopexit, label %vector.body, !llvm.loop !7

middle.block.unr-lcssa.loopexit:                  ; preds = %vector.body
  %phitmp = or i64 %index.next.1, 1
  br label %middle.block.unr-lcssa

middle.block.unr-lcssa:                           ; preds = %middle.block.unr-lcssa.loopexit, %vector.ph
  %index.unr = phi i64 [ 1, %vector.ph ], [ %phitmp, %middle.block.unr-lcssa.loopexit ]
  %lcmp.mod47 = icmp eq i64 %xtraiter46, 0
  br i1 %lcmp.mod47, label %middle.block, label %vector.body.epil

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa
  %422 = getelementptr [64 x i8], [64 x i8]* %__v157_partialblock1.i, i64 0, i64 %index.unr
  %423 = bitcast i8* %422 to <16 x i8>*
  %wide.load.epil = load <16 x i8>, <16 x i8>* %423, align 1, !alias.scope !0
  %424 = getelementptr i8, i8* %422, i64 16
  %425 = bitcast i8* %424 to <16 x i8>*
  %wide.load36.epil = load <16 x i8>, <16 x i8>* %425, align 1, !alias.scope !0
  %426 = getelementptr i8, i8* %237, i64 %index.unr
  %427 = getelementptr i8, i8* %236, i64 %index.unr
  %428 = bitcast i8* %427 to <16 x i8>*
  %wide.load37.epil = load <16 x i8>, <16 x i8>* %428, align 1, !alias.scope !3
  %429 = getelementptr i8, i8* %427, i64 16
  %430 = bitcast i8* %429 to <16 x i8>*
  %wide.load38.epil = load <16 x i8>, <16 x i8>* %430, align 1, !alias.scope !3
  %431 = xor <16 x i8> %wide.load37.epil, %wide.load.epil
  %432 = xor <16 x i8> %wide.load38.epil, %wide.load36.epil
  %433 = bitcast i8* %426 to <16 x i8>*
  store <16 x i8> %431, <16 x i8>* %433, align 1, !alias.scope !5, !noalias !3
  %434 = getelementptr i8, i8* %426, i64 16
  %435 = bitcast i8* %434 to <16 x i8>*
  store <16 x i8> %432, <16 x i8>* %435, align 1, !alias.scope !5, !noalias !3
  br label %middle.block

middle.block:                                     ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %cmp.n = icmp eq i64 %388, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %._crit_edge12.i.preheader

._crit_edge12.i.preheader:                        ; preds = %middle.block, %vector.memcheck, %._crit_edge12.i.lr.ph
  %.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %._crit_edge12.i.lr.ph ], [ %ind.end, %middle.block ]
  %436 = sub i64 %__v322___v65_m_len, %.ph
  %437 = add i64 %__v322___v65_m_len, -1
  %438 = sub i64 %437, %.ph
  %439 = sub i64 %438, %235
  %xtraiter = and i64 %436, 3
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod, label %._crit_edge12.i.prol.loopexit, label %._crit_edge12.i.prol.preheader

._crit_edge12.i.prol.preheader:                   ; preds = %._crit_edge12.i.preheader
  br label %._crit_edge12.i.prol

._crit_edge12.i.prol:                             ; preds = %._crit_edge12.i.prol, %._crit_edge12.i.prol.preheader
  %440 = phi i64 [ %445, %._crit_edge12.i.prol ], [ %.ph, %._crit_edge12.i.prol.preheader ]
  %prol.iter = phi i64 [ %prol.iter.sub, %._crit_edge12.i.prol ], [ %xtraiter, %._crit_edge12.i.prol.preheader ]
  %.phi.trans.insert.i.prol = getelementptr [64 x i8], [64 x i8]* %__v157_partialblock1.i, i64 0, i64 %440
  %.pre.i.prol = load i8, i8* %.phi.trans.insert.i.prol, align 1
  %441 = getelementptr i8, i8* %237, i64 %440
  %442 = getelementptr i8, i8* %236, i64 %440
  %443 = load i8, i8* %442, align 1
  %444 = xor i8 %443, %.pre.i.prol
  store i8 %444, i8* %441, align 1
  %445 = add nuw i64 %440, 1
  %prol.iter.sub = add i64 %prol.iter, -1
  %prol.iter.cmp = icmp eq i64 %prol.iter.sub, 0
  br i1 %prol.iter.cmp, label %._crit_edge12.i.prol.loopexit, label %._crit_edge12.i.prol, !llvm.loop !9

._crit_edge12.i.prol.loopexit:                    ; preds = %._crit_edge12.i.prol, %._crit_edge12.i.preheader
  %.unr = phi i64 [ %.ph, %._crit_edge12.i.preheader ], [ %445, %._crit_edge12.i.prol ]
  %446 = icmp ult i64 %439, 3
  br i1 %446, label %._crit_edge.i, label %._crit_edge12.i.preheader.new

._crit_edge12.i.preheader.new:                    ; preds = %._crit_edge12.i.prol.loopexit
  br label %._crit_edge12.i

._crit_edge12.i:                                  ; preds = %._crit_edge12.i, %._crit_edge12.i.preheader.new
  %447 = phi i64 [ %.unr, %._crit_edge12.i.preheader.new ], [ %467, %._crit_edge12.i ]
  %.phi.trans.insert.i = getelementptr [64 x i8], [64 x i8]* %__v157_partialblock1.i, i64 0, i64 %447
  %.pre.i = load i8, i8* %.phi.trans.insert.i, align 1
  %448 = getelementptr i8, i8* %237, i64 %447
  %449 = getelementptr i8, i8* %236, i64 %447
  %450 = load i8, i8* %449, align 1
  %451 = xor i8 %450, %.pre.i
  store i8 %451, i8* %448, align 1
  %452 = add nuw i64 %447, 1
  %.phi.trans.insert.i.1 = getelementptr [64 x i8], [64 x i8]* %__v157_partialblock1.i, i64 0, i64 %452
  %.pre.i.1 = load i8, i8* %.phi.trans.insert.i.1, align 1
  %453 = getelementptr i8, i8* %237, i64 %452
  %454 = getelementptr i8, i8* %236, i64 %452
  %455 = load i8, i8* %454, align 1
  %456 = xor i8 %455, %.pre.i.1
  store i8 %456, i8* %453, align 1
  %457 = add i64 %447, 2
  %.phi.trans.insert.i.2 = getelementptr [64 x i8], [64 x i8]* %__v157_partialblock1.i, i64 0, i64 %457
  %.pre.i.2 = load i8, i8* %.phi.trans.insert.i.2, align 1
  %458 = getelementptr i8, i8* %237, i64 %457
  %459 = getelementptr i8, i8* %236, i64 %457
  %460 = load i8, i8* %459, align 1
  %461 = xor i8 %460, %.pre.i.2
  store i8 %461, i8* %458, align 1
  %462 = add i64 %447, 3
  %.phi.trans.insert.i.3 = getelementptr [64 x i8], [64 x i8]* %__v157_partialblock1.i, i64 0, i64 %462
  %.pre.i.3 = load i8, i8* %.phi.trans.insert.i.3, align 1
  %463 = getelementptr i8, i8* %237, i64 %462
  %464 = getelementptr i8, i8* %236, i64 %462
  %465 = load i8, i8* %464, align 1
  %466 = xor i8 %465, %.pre.i.3
  store i8 %466, i8* %463, align 1
  %467 = add i64 %447, 4
  %exitcond.i2.3 = icmp eq i64 %467, %__v336_lexpr
  br i1 %exitcond.i2.3, label %._crit_edge.i, label %._crit_edge12.i, !llvm.loop !11

._crit_edge.i:                                    ; preds = %._crit_edge12.i.prol.loopexit, %._crit_edge12.i, %middle.block, %.lr.ph.i1
  call void @llvm.memset.p0i8.i64(i8* nonnull %__v157_partialblock1.sub.i, i8 0, i64 64, i32 1, i1 true) #2
  br label %_u0.exit

_u0.exit:                                         ; preds = %_u1.exit, %._crit_edge.i
  ret void
}

; Function Attrs: nounwind
define internal fastcc void @_crypto_stream_salsa20_xor_ic(i8* nocapture %__v48_c, i64 %__v318___v48_c_len, i8* nocapture readonly %__v49_m, i64 %__v319___v49_m_len, i8* nocapture readonly %__v50_n, i8* nocapture readonly %__v52_k) unnamed_addr #2 {
entry:
  %0 = icmp eq i64 %__v319___v49_m_len, 0
  br i1 %0, label %1, label %2

; <label>:1:                                      ; preds = %entry
  ret void

; <label>:2:                                      ; preds = %entry
  %__v54_ctx2 = alloca [16 x i32], align 16
  %__v54_ctx2.sub = getelementptr inbounds [16 x i32], [16 x i32]* %__v54_ctx2, i64 0, i64 0
  %3 = bitcast [16 x i32]* %__v54_ctx2 to i8*
  %4 = bitcast i8* %__v52_k to i32*
  %5 = load i32, i32* %4, align 4
  %6 = getelementptr inbounds [16 x i32], [16 x i32]* %__v54_ctx2, i64 0, i64 5
  store i32 %5, i32* %6, align 4
  %7 = getelementptr i8, i8* %__v52_k, i64 4
  %8 = bitcast i8* %7 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = getelementptr inbounds [16 x i32], [16 x i32]* %__v54_ctx2, i64 0, i64 10
  store i32 %9, i32* %10, align 8
  %11 = getelementptr i8, i8* %__v52_k, i64 8
  %12 = bitcast i8* %11 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds [16 x i32], [16 x i32]* %__v54_ctx2, i64 0, i64 15
  store i32 %13, i32* %14, align 4
  %15 = getelementptr i8, i8* %__v52_k, i64 12
  %16 = bitcast i8* %15 to i32*
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds [16 x i32], [16 x i32]* %__v54_ctx2, i64 0, i64 12
  store i32 %17, i32* %18, align 16
  %19 = getelementptr i8, i8* %__v52_k, i64 16
  %20 = bitcast i8* %19 to i32*
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds [16 x i32], [16 x i32]* %__v54_ctx2, i64 0, i64 7
  store i32 %21, i32* %22, align 4
  %23 = getelementptr i8, i8* %__v52_k, i64 20
  %24 = bitcast i8* %23 to i32*
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds [16 x i32], [16 x i32]* %__v54_ctx2, i64 0, i64 4
  store i32 %25, i32* %26, align 16
  %27 = getelementptr i8, i8* %__v52_k, i64 24
  %28 = bitcast i8* %27 to i32*
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds [16 x i32], [16 x i32]* %__v54_ctx2, i64 0, i64 9
  store i32 %29, i32* %30, align 4
  %31 = getelementptr i8, i8* %__v52_k, i64 28
  %32 = bitcast i8* %31 to i32*
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds [16 x i32], [16 x i32]* %__v54_ctx2, i64 0, i64 14
  store i32 %33, i32* %34, align 8
  %35 = bitcast [16 x i32]* %__v54_ctx2 to <4 x i32>*
  store <4 x i32> <i32 1634760805, i32 857760878, i32 2036477234, i32 1797285236>, <4 x i32>* %35, align 16
  %36 = bitcast i8* %__v50_n to i32*
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds [16 x i32], [16 x i32]* %__v54_ctx2, i64 0, i64 6
  store i32 %37, i32* %38, align 8
  %39 = getelementptr i8, i8* %__v50_n, i64 4
  %40 = bitcast i8* %39 to i32*
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds [16 x i32], [16 x i32]* %__v54_ctx2, i64 0, i64 11
  store i32 %41, i32* %42, align 4
  %43 = getelementptr inbounds [16 x i32], [16 x i32]* %__v54_ctx2, i64 0, i64 8
  store i32 0, i32* %43, align 16
  %44 = getelementptr inbounds [16 x i32], [16 x i32]* %__v54_ctx2, i64 0, i64 13
  store i32 0, i32* %44, align 4
  call fastcc void @u0(i32* nonnull %__v54_ctx2.sub, i8* %__v49_m, i64 %__v319___v49_m_len, i8* %__v48_c, i64 %__v318___v48_c_len) #2
  call void @llvm.memset.p0i8.i64(i8* nonnull %3, i8 0, i64 64, i32 4, i1 true) #2
  ret void
}

; Function Attrs: nounwind
define i1 @_crypto_secretbox(i8* nocapture %__v24_c, i64 %__v310___v24_c_len, i8* nocapture readonly %__v25_m, i64 %__v311___v25_m_len, i8* nocapture readonly %__v26_n, i8* nocapture readonly %__v27_k) local_unnamed_addr #2 {
entry:
  %__v45_subkey1.i.i.i = alloca [32 x i8], align 1
  %0 = icmp ult i64 %__v311___v25_m_len, 32
  br i1 %0, label %_crypto_secretbox_xsalsa20poly1305.exit, label %.loopexit.loopexit.i

.loopexit.loopexit.i:                             ; preds = %entry
  %1 = getelementptr inbounds [32 x i8], [32 x i8]* %__v45_subkey1.i.i.i, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #2
  call void @llvm.memset.p0i8.i64(i8* nonnull %1, i8 0, i64 32, i32 1, i1 false) #2
  call fastcc void @_crypto_core_hsalsa20(i8* nonnull %1, i8* %__v26_n, i8* %__v27_k) #2
  %__v46_tmp.i.i.i = getelementptr i8, i8* %__v26_n, i64 16
  call fastcc void @_crypto_stream_salsa20_xor_ic(i8* %__v24_c, i64 %__v310___v24_c_len, i8* %__v25_m, i64 %__v311___v25_m_len, i8* %__v46_tmp.i.i.i, i8* nonnull %1) #2
  call void @llvm.memset.p0i8.i64(i8* nonnull %1, i8 0, i64 32, i32 1, i1 true) #2
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #2
  %__v32_cview.i = getelementptr i8, i8* %__v24_c, i64 16
  %__v334_lexpr.i = add i64 %__v310___v24_c_len, -32
  %__v33_mview.i = getelementptr i8, i8* %__v24_c, i64 32
  tail call fastcc void @_crypto_onetimeauth_poly1305(i8* %__v32_cview.i, i8* %__v33_mview.i, i64 %__v334_lexpr.i, i8* %__v24_c) #2
  tail call void @llvm.memset.p0i8.i64(i8* %__v24_c, i8 0, i64 16, i32 1, i1 false) #2
  br label %_crypto_secretbox_xsalsa20poly1305.exit

_crypto_secretbox_xsalsa20poly1305.exit:          ; preds = %entry, %.loopexit.loopexit.i
  %merge.i = phi i1 [ false, %entry ], [ true, %.loopexit.loopexit.i ]
  ret i1 %merge.i
}

; Function Attrs: nounwind
define internal fastcc i1 @_crypto_secretbox_xsalsa20poly1305_open(i8* nocapture %__v5_m, i64 %__v306___v5_m_len, i8* nocapture readonly %__v6_c, i64 %__v307___v6_c_len, i8* nocapture readonly %__v7_n, i8* nocapture readonly %__v8_k) unnamed_addr #2 {
entry:
  %__v178_correct1.i = alloca [16 x i8], align 1
  %__v21_ctx1.i.i = alloca [16 x i32], align 16
  %__v45_subkey1.i.i = alloca [32 x i8], align 4
  %0 = icmp ult i64 %__v307___v6_c_len, 32
  br i1 %0, label %.loopexit, label %1

.loopexit:                                        ; preds = %.loopexit.loopexit, %_crypto_onetimeauth_poly1305_verify.exit, %entry
  %merge = phi i1 [ false, %_crypto_onetimeauth_poly1305_verify.exit ], [ false, %entry ], [ true, %.loopexit.loopexit ]
  ret i1 %merge

; <label>:1:                                      ; preds = %entry
  %__v9_subkey1 = alloca [32 x i8], align 1
  %__v9_subkey1.sub = getelementptr inbounds [32 x i8], [32 x i8]* %__v9_subkey1, i64 0, i64 0
  %2 = getelementptr inbounds [32 x i8], [32 x i8]* %__v45_subkey1.i.i, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %2)
  call void @llvm.memset.p0i8.i64(i8* nonnull %2, i8 0, i64 32, i32 4, i1 false) #2
  call fastcc void @_crypto_core_hsalsa20(i8* nonnull %2, i8* %__v7_n, i8* %__v8_k) #2
  %3 = getelementptr i8, i8* %__v7_n, i64 16
  %4 = bitcast [16 x i32]* %__v21_ctx1.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %4) #2
  %__v21_ctx1.sub.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %__v21_ctx1.i.i, i64 0, i64 0
  %5 = bitcast [32 x i8]* %__v45_subkey1.i.i to i32*
  %6 = load i32, i32* %5, align 4
  %7 = getelementptr inbounds [16 x i32], [16 x i32]* %__v21_ctx1.i.i, i64 0, i64 5
  store i32 %6, i32* %7, align 4
  %8 = getelementptr inbounds [32 x i8], [32 x i8]* %__v45_subkey1.i.i, i64 0, i64 4
  %9 = bitcast i8* %8 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = getelementptr inbounds [16 x i32], [16 x i32]* %__v21_ctx1.i.i, i64 0, i64 10
  store i32 %10, i32* %11, align 8
  %12 = getelementptr inbounds [32 x i8], [32 x i8]* %__v45_subkey1.i.i, i64 0, i64 8
  %13 = bitcast i8* %12 to i32*
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds [16 x i32], [16 x i32]* %__v21_ctx1.i.i, i64 0, i64 15
  store i32 %14, i32* %15, align 4
  %16 = getelementptr inbounds [32 x i8], [32 x i8]* %__v45_subkey1.i.i, i64 0, i64 12
  %17 = bitcast i8* %16 to i32*
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds [16 x i32], [16 x i32]* %__v21_ctx1.i.i, i64 0, i64 12
  store i32 %18, i32* %19, align 16
  %20 = getelementptr inbounds [32 x i8], [32 x i8]* %__v45_subkey1.i.i, i64 0, i64 16
  %21 = bitcast i8* %20 to i32*
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds [16 x i32], [16 x i32]* %__v21_ctx1.i.i, i64 0, i64 7
  store i32 %22, i32* %23, align 4
  %24 = getelementptr inbounds [32 x i8], [32 x i8]* %__v45_subkey1.i.i, i64 0, i64 20
  %25 = bitcast i8* %24 to i32*
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds [16 x i32], [16 x i32]* %__v21_ctx1.i.i, i64 0, i64 4
  store i32 %26, i32* %27, align 16
  %28 = getelementptr inbounds [32 x i8], [32 x i8]* %__v45_subkey1.i.i, i64 0, i64 24
  %29 = bitcast i8* %28 to i32*
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds [16 x i32], [16 x i32]* %__v21_ctx1.i.i, i64 0, i64 9
  store i32 %30, i32* %31, align 4
  %32 = getelementptr inbounds [32 x i8], [32 x i8]* %__v45_subkey1.i.i, i64 0, i64 28
  %33 = bitcast i8* %32 to i32*
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds [16 x i32], [16 x i32]* %__v21_ctx1.i.i, i64 0, i64 14
  store i32 %34, i32* %35, align 8
  %36 = bitcast [16 x i32]* %__v21_ctx1.i.i to <4 x i32>*
  store <4 x i32> <i32 1634760805, i32 857760878, i32 2036477234, i32 1797285236>, <4 x i32>* %36, align 16
  %37 = bitcast i8* %3 to i32*
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds [16 x i32], [16 x i32]* %__v21_ctx1.i.i, i64 0, i64 6
  store i32 %38, i32* %39, align 8
  %40 = getelementptr i8, i8* %__v7_n, i64 20
  %41 = bitcast i8* %40 to i32*
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds [16 x i32], [16 x i32]* %__v21_ctx1.i.i, i64 0, i64 11
  store i32 %42, i32* %43, align 4
  %44 = getelementptr inbounds [16 x i32], [16 x i32]* %__v21_ctx1.i.i, i64 0, i64 8
  store i32 0, i32* %44, align 16
  %45 = getelementptr inbounds [16 x i32], [16 x i32]* %__v21_ctx1.i.i, i64 0, i64 13
  store i32 0, i32* %45, align 4
  call void @llvm.memset.p0i8.i64(i8* nonnull %__v9_subkey1.sub, i8 0, i64 32, i32 1, i1 false) #2
  call fastcc void @u0(i32* nonnull %__v21_ctx1.sub.i.i, i8* nonnull %__v9_subkey1.sub, i64 32, i8* nonnull %__v9_subkey1.sub, i64 32) #2
  call void @llvm.memset.p0i8.i64(i8* nonnull %4, i8 0, i64 64, i32 4, i1 true) #2
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %4) #2
  call void @llvm.memset.p0i8.i64(i8* nonnull %2, i8 0, i64 32, i32 1, i1 true) #2
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %2)
  %__v10_tmp1 = getelementptr i8, i8* %__v6_c, i64 16
  %__v332_lexpr = add i64 %__v307___v6_c_len, -32
  %__v11_cview = getelementptr i8, i8* %__v6_c, i64 32
  %46 = getelementptr inbounds [16 x i8], [16 x i8]* %__v178_correct1.i, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %46)
  call void @llvm.memset.p0i8.i64(i8* nonnull %46, i8 0, i64 16, i32 1, i1 false) #2
  call fastcc void @_crypto_onetimeauth_poly1305(i8* nonnull %46, i8* %__v11_cview, i64 %__v332_lexpr, i8* nonnull %__v9_subkey1.sub) #2
  br label %47

; <label>:47:                                     ; preds = %47, %1
  %indvars.iv.i.i = phi i64 [ 0, %1 ], [ %indvars.iv.next.i.i, %47 ]
  %__rctx.05.i.i = phi i1 [ true, %1 ], [ %58, %47 ]
  %__rval.04.i.i = phi i32 [ 0, %1 ], [ %54, %47 ]
  %48 = getelementptr i8, i8* %__v10_tmp1, i64 %indvars.iv.i.i
  %49 = load i8, i8* %48, align 1
  %50 = getelementptr [16 x i8], [16 x i8]* %__v178_correct1.i, i64 0, i64 %indvars.iv.i.i
  %51 = load i8, i8* %50, align 1
  %__m6.i.i = icmp ne i8 %49, %51
  %52 = and i1 %__rctx.05.i.i, %__m6.i.i
  %53 = tail call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %52, i32 0, i32 %__rval.04.i.i) #2
  %54 = and i32 %53, 1
  %55 = zext i1 %__rctx.05.i.i to i32
  %56 = tail call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %52, i32 0, i32 %55) #2
  %57 = and i32 %56, 1
  %58 = icmp ne i32 %57, 0
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %exitcond.i.i = icmp eq i64 %indvars.iv.next.i.i, 16
  br i1 %exitcond.i.i, label %_crypto_onetimeauth_poly1305_verify.exit, label %47

_crypto_onetimeauth_poly1305_verify.exit:         ; preds = %47
  %59 = tail call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %58, i32 1, i32 %54) #2
  %60 = and i32 %59, 1
  %61 = icmp eq i32 %60, 0
  %62 = tail call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %58, i32 0, i32 %57) #2
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %46)
  br i1 %61, label %.loopexit, label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %_crypto_onetimeauth_poly1305_verify.exit
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %2) #2
  call void @llvm.memset.p0i8.i64(i8* nonnull %2, i8 0, i64 32, i32 4, i1 false) #2
  call fastcc void @_crypto_core_hsalsa20(i8* nonnull %2, i8* %__v7_n, i8* %__v8_k) #2
  call fastcc void @_crypto_stream_salsa20_xor_ic(i8* %__v5_m, i64 %__v306___v5_m_len, i8* nonnull %__v6_c, i64 %__v307___v6_c_len, i8* %3, i8* nonnull %2) #2
  call void @llvm.memset.p0i8.i64(i8* nonnull %2, i8 0, i64 32, i32 1, i1 true) #2
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %2) #2
  call void @llvm.memset.p0i8.i64(i8* %__v5_m, i8 0, i64 32, i32 1, i1 false)
  br label %.loopexit
}

; Function Attrs: nounwind
define i1 @_crypto_secretbox_open(i8* nocapture %__v1_m, i64 %__v304___v1_m_len, i8* nocapture readonly %__v2_c, i64 %__v305___v2_c_len, i8* nocapture readonly %__v3_n, i8* nocapture readonly %__v4_k) local_unnamed_addr #2 {
entry:
  %__v259__crypto_secretbox_xsalsa20poly1305_open = tail call fastcc i1 @_crypto_secretbox_xsalsa20poly1305_open(i8* %__v1_m, i64 %__v304___v1_m_len, i8* %__v2_c, i64 %__v305___v2_c_len, i8* %__v3_n, i8* %__v4_k)
  ret i1 %__v259__crypto_secretbox_xsalsa20poly1305_open
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
!11 = distinct !{!11, !8}
