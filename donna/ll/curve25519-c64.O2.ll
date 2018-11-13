; ModuleID = './curve25519-c64.O2.bc'
source_filename = "Module"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind
define internal fastcc void @fmul(i64* nocapture %__v85_output, i64* nocapture readonly %__v86_input2, i64* nocapture readonly %__v87_input) unnamed_addr #0 {
entry:
  %0 = load i64, i64* %__v87_input, align 8
  %1 = getelementptr i64, i64* %__v87_input, i64 1
  %2 = load i64, i64* %1, align 8
  %3 = getelementptr i64, i64* %__v87_input, i64 2
  %4 = load i64, i64* %3, align 8
  %5 = getelementptr i64, i64* %__v87_input, i64 3
  %6 = load i64, i64* %5, align 8
  %7 = getelementptr i64, i64* %__v87_input, i64 4
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* %__v86_input2, align 8
  %10 = getelementptr i64, i64* %__v86_input2, i64 1
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr i64, i64* %__v86_input2, i64 2
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr i64, i64* %__v86_input2, i64 3
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr i64, i64* %__v86_input2, i64 4
  %17 = load i64, i64* %16, align 8
  %18 = zext i64 %0 to i128
  %19 = zext i64 %9 to i128
  %20 = mul nuw i128 %19, %18
  %21 = zext i64 %11 to i128
  %22 = mul nuw i128 %21, %18
  %23 = zext i64 %2 to i128
  %24 = mul nuw i128 %19, %23
  %25 = zext i64 %13 to i128
  %26 = mul nuw i128 %25, %18
  %27 = zext i64 %4 to i128
  %28 = mul nuw i128 %19, %27
  %29 = mul nuw i128 %21, %23
  %30 = zext i64 %15 to i128
  %31 = mul nuw i128 %30, %18
  %32 = zext i64 %6 to i128
  %33 = mul nuw i128 %19, %32
  %34 = mul nuw i128 %25, %23
  %35 = mul nuw i128 %21, %27
  %36 = zext i64 %17 to i128
  %37 = mul nuw i128 %36, %18
  %38 = zext i64 %8 to i128
  %39 = mul nuw i128 %19, %38
  %40 = mul nuw i128 %21, %32
  %41 = mul nuw i128 %30, %23
  %42 = mul nuw i128 %25, %27
  %43 = mul i64 %8, 19
  %44 = mul i64 %2, 19
  %45 = mul i64 %4, 19
  %46 = mul i64 %6, 19
  %47 = zext i64 %43 to i128
  %48 = mul nuw i128 %21, %47
  %49 = zext i64 %44 to i128
  %50 = mul nuw i128 %36, %49
  %51 = zext i64 %45 to i128
  %52 = mul nuw i128 %30, %51
  %53 = zext i64 %46 to i128
  %54 = mul nuw i128 %25, %53
  %55 = add i128 %48, %20
  %56 = add i128 %55, %54
  %57 = add i128 %56, %52
  %58 = add i128 %57, %50
  %59 = mul nuw i128 %25, %47
  %60 = mul nuw i128 %36, %51
  %61 = mul nuw i128 %30, %53
  %62 = mul nuw i128 %30, %47
  %63 = mul nuw i128 %36, %53
  %64 = mul nuw i128 %36, %47
  %65 = trunc i128 %58 to i64
  %66 = and i64 %65, 2251799813685247
  %67 = lshr i128 %58, 51
  %68 = and i128 %67, 18446744073709551615
  %69 = add i128 %22, %24
  %70 = add i128 %69, %59
  %71 = add i128 %70, %61
  %72 = add i128 %71, %60
  %73 = add i128 %72, %68
  %74 = trunc i128 %73 to i64
  %75 = and i64 %74, 2251799813685247
  %76 = lshr i128 %73, 51
  %77 = and i128 %76, 18446744073709551615
  %78 = add i128 %29, %28
  %79 = add i128 %78, %26
  %80 = add i128 %79, %62
  %81 = add i128 %80, %63
  %82 = add i128 %81, %77
  %83 = trunc i128 %82 to i64
  %84 = and i64 %83, 2251799813685247
  %85 = lshr i128 %82, 51
  %86 = and i128 %85, 18446744073709551615
  %87 = add i128 %35, %33
  %88 = add i128 %87, %34
  %89 = add i128 %88, %31
  %90 = add i128 %89, %64
  %91 = add i128 %90, %86
  %92 = lshr i128 %91, 51
  %93 = and i128 %92, 18446744073709551615
  %94 = add i128 %40, %39
  %95 = add i128 %94, %42
  %96 = add i128 %95, %41
  %97 = add i128 %96, %37
  %98 = add i128 %97, %93
  %99 = insertelement <2 x i128> undef, i128 %91, i32 0
  %100 = insertelement <2 x i128> %99, i128 %98, i32 1
  %101 = trunc <2 x i128> %100 to <2 x i64>
  %102 = and <2 x i64> %101, <i64 2251799813685247, i64 2251799813685247>
  %103 = lshr i128 %98, 51
  %104 = trunc i128 %103 to i64
  %105 = mul i64 %104, 19
  %106 = add i64 %105, %66
  %107 = lshr i64 %106, 51
  %108 = and i64 %106, 2251799813685247
  %109 = add nuw nsw i64 %107, %75
  %110 = lshr i64 %109, 51
  %111 = and i64 %109, 2251799813685247
  %112 = add nuw nsw i64 %110, %84
  store i64 %108, i64* %__v85_output, align 8
  %113 = getelementptr i64, i64* %__v85_output, i64 1
  store i64 %111, i64* %113, align 8
  %114 = getelementptr i64, i64* %__v85_output, i64 2
  store i64 %112, i64* %114, align 8
  %115 = getelementptr i64, i64* %__v85_output, i64 3
  %116 = bitcast i64* %115 to <2 x i64>*
  store <2 x i64> %102, <2 x i64>* %116, align 8
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #1

; Function Attrs: nounwind
define internal fastcc void @fsquare_times(i64* nocapture %__v59_output, i64* nocapture readonly %__v60_input, i64 %__v61_count) unnamed_addr #0 {
entry:
  %0 = load i64, i64* %__v60_input, align 8
  %1 = getelementptr i64, i64* %__v60_input, i64 1
  %2 = load i64, i64* %1, align 8
  %3 = getelementptr i64, i64* %__v60_input, i64 2
  %4 = load i64, i64* %3, align 8
  %5 = getelementptr i64, i64* %__v60_input, i64 3
  %6 = load i64, i64* %5, align 8
  %7 = getelementptr i64, i64* %__v60_input, i64 4
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %__v61_count, 0
  br i1 %9, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %entry
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %__v74_i50 = phi i64 [ %84, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %__v67_r4.049 = phi i64 [ %73, %.lr.ph ], [ %8, %.lr.ph.preheader ]
  %__v66_r3.048 = phi i64 [ %66, %.lr.ph ], [ %6, %.lr.ph.preheader ]
  %__v65_r2.047 = phi i64 [ %83, %.lr.ph ], [ %4, %.lr.ph.preheader ]
  %__v64_r1.046 = phi i64 [ %82, %.lr.ph ], [ %2, %.lr.ph.preheader ]
  %__v63_r0.045 = phi i64 [ %79, %.lr.ph ], [ %0, %.lr.ph.preheader ]
  %10 = shl i64 %__v63_r0.045, 1
  %11 = shl i64 %__v64_r1.046, 1
  %12 = mul i64 %__v65_r2.047, 38
  %13 = mul i64 %__v67_r4.049, 19
  %14 = mul i64 %__v67_r4.049, 38
  %15 = zext i64 %__v63_r0.045 to i128
  %16 = mul nuw i128 %15, %15
  %17 = zext i64 %14 to i128
  %18 = zext i64 %__v64_r1.046 to i128
  %19 = mul nuw i128 %17, %18
  %20 = zext i64 %12 to i128
  %21 = zext i64 %__v66_r3.048 to i128
  %22 = mul nuw i128 %20, %21
  %23 = add i128 %22, %16
  %24 = add i128 %23, %19
  %25 = zext i64 %10 to i128
  %26 = mul nuw i128 %25, %18
  %27 = zext i64 %__v65_r2.047 to i128
  %28 = mul nuw i128 %17, %27
  %29 = mul i64 %__v66_r3.048, 19
  %30 = zext i64 %29 to i128
  %31 = mul nuw i128 %30, %21
  %32 = mul nuw i128 %27, %25
  %33 = mul nuw i128 %18, %18
  %34 = add i128 %32, %33
  %35 = mul nuw i128 %17, %21
  %36 = add i128 %34, %35
  %37 = mul nuw i128 %21, %25
  %38 = zext i64 %11 to i128
  %39 = mul nuw i128 %38, %27
  %40 = add i128 %37, %39
  %41 = zext i64 %__v67_r4.049 to i128
  %42 = zext i64 %13 to i128
  %43 = mul nuw i128 %42, %41
  %44 = add i128 %40, %43
  %45 = mul nuw i128 %41, %25
  %46 = mul nuw i128 %21, %38
  %47 = mul nuw i128 %27, %27
  %48 = trunc i128 %24 to i64
  %49 = and i64 %48, 2251799813685247
  %50 = lshr i128 %24, 51
  %51 = and i128 %50, 18446744073709551615
  %52 = add i128 %31, %26
  %53 = add i128 %52, %28
  %54 = add i128 %53, %51
  %55 = trunc i128 %54 to i64
  %56 = and i64 %55, 2251799813685247
  %57 = lshr i128 %54, 51
  %58 = and i128 %57, 18446744073709551615
  %59 = add i128 %36, %58
  %60 = trunc i128 %59 to i64
  %61 = and i64 %60, 2251799813685247
  %62 = lshr i128 %59, 51
  %63 = and i128 %62, 18446744073709551615
  %64 = add i128 %44, %63
  %65 = trunc i128 %64 to i64
  %66 = and i64 %65, 2251799813685247
  %67 = lshr i128 %64, 51
  %68 = and i128 %67, 18446744073709551615
  %69 = add i128 %46, %47
  %70 = add i128 %69, %45
  %71 = add i128 %70, %68
  %72 = trunc i128 %71 to i64
  %73 = and i64 %72, 2251799813685247
  %74 = lshr i128 %71, 51
  %75 = trunc i128 %74 to i64
  %76 = mul i64 %75, 19
  %77 = add i64 %76, %49
  %78 = lshr i64 %77, 51
  %79 = and i64 %77, 2251799813685247
  %80 = add nuw nsw i64 %78, %56
  %81 = lshr i64 %80, 51
  %82 = and i64 %80, 2251799813685247
  %83 = add nuw nsw i64 %81, %61
  %84 = add nuw i64 %__v74_i50, 1
  %exitcond = icmp eq i64 %84, %__v61_count
  br i1 %exitcond, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %entry
  %__v63_r0.0.lcssa = phi i64 [ %0, %entry ], [ %79, %.lr.ph ]
  %__v64_r1.0.lcssa = phi i64 [ %2, %entry ], [ %82, %.lr.ph ]
  %__v65_r2.0.lcssa = phi i64 [ %4, %entry ], [ %83, %.lr.ph ]
  %__v66_r3.0.lcssa = phi i64 [ %6, %entry ], [ %66, %.lr.ph ]
  %__v67_r4.0.lcssa = phi i64 [ %8, %entry ], [ %73, %.lr.ph ]
  store i64 %__v63_r0.0.lcssa, i64* %__v59_output, align 8
  %85 = getelementptr i64, i64* %__v59_output, i64 1
  store i64 %__v64_r1.0.lcssa, i64* %85, align 8
  %86 = getelementptr i64, i64* %__v59_output, i64 2
  store i64 %__v65_r2.0.lcssa, i64* %86, align 8
  %87 = getelementptr i64, i64* %__v59_output, i64 3
  store i64 %__v66_r3.0.lcssa, i64* %87, align 8
  %88 = getelementptr i64, i64* %__v59_output, i64 4
  store i64 %__v67_r4.0.lcssa, i64* %88, align 8
  ret void
}

; Function Attrs: nounwind
define internal fastcc void @fmonty(i64* nocapture %__v41_x2, i64* nocapture %__v42_z2, i64* nocapture %__v43_x3, i64* nocapture %__v44_z3, i64* nocapture %__v45_x, i64* nocapture %__v46_z, i64* nocapture %__v47_xprime, i64* nocapture %__v48_zprime, i64* nocapture readonly %__v49_qmqp) unnamed_addr #0 {
entry:
  %__v50_origx1.sroa.2.0..sroa_idx9 = getelementptr i64, i64* %__v45_x, i64 1
  %0 = bitcast i64* %__v45_x to <2 x i64>*
  %1 = load <2 x i64>, <2 x i64>* %0, align 8
  %__v50_origx1.sroa.3.0..sroa_idx10 = getelementptr i64, i64* %__v45_x, i64 2
  %__v50_origx1.sroa.4.0..sroa_idx11 = getelementptr i64, i64* %__v45_x, i64 3
  %2 = bitcast i64* %__v50_origx1.sroa.3.0..sroa_idx10 to <2 x i64>*
  %3 = load <2 x i64>, <2 x i64>* %2, align 8
  %__v50_origx1.sroa.5.0..sroa_idx12 = getelementptr i64, i64* %__v45_x, i64 4
  %__v50_origx1.sroa.5.0.copyload = load i64, i64* %__v50_origx1.sroa.5.0..sroa_idx12, align 8
  %__v51_origxprime2 = alloca [5 x i64], align 16
  %4 = bitcast [5 x i64]* %__v51_origxprime2 to i8*
  %5 = bitcast i64* %__v47_xprime to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* %5, i64 40, i32 8, i1 false) #0
  %__v52_zzz3 = alloca [5 x i64], align 8
  %6 = bitcast [5 x i64]* %__v52_zzz3 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 40, i32 8, i1 false) #0
  %__v53_xx4 = alloca [5 x i64], align 16
  %7 = bitcast [5 x i64]* %__v53_xx4 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 40, i32 16, i1 false) #0
  %__v54_zz5 = alloca [5 x i64], align 16
  %8 = bitcast [5 x i64]* %__v54_zz5 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 40, i32 16, i1 false) #0
  %__v55_xxprime6 = alloca [5 x i64], align 16
  %9 = bitcast [5 x i64]* %__v55_xxprime6 to i8*
  %__v55_xxprime6.sub = getelementptr inbounds [5 x i64], [5 x i64]* %__v55_xxprime6, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* nonnull %9, i8 0, i64 40, i32 16, i1 false) #0
  %__v56_zzprime7 = alloca [5 x i64], align 16
  %__v56_zzprime7.sub = getelementptr inbounds [5 x i64], [5 x i64]* %__v56_zzprime7, i64 0, i64 0
  %10 = bitcast [5 x i64]* %__v56_zzprime7 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull %10, i8 0, i64 40, i32 16, i1 false) #0
  %__v57_zzzprime8 = alloca [5 x i64], align 8
  %11 = bitcast [5 x i64]* %__v57_zzzprime8 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull %11, i8 0, i64 40, i32 8, i1 false) #0
  %12 = load i64, i64* %__v46_z, align 8
  %13 = extractelement <2 x i64> %1, i32 0
  %14 = add i64 %12, %13
  store i64 %14, i64* %__v45_x, align 8
  %15 = getelementptr i64, i64* %__v46_z, i64 1
  %16 = load i64, i64* %15, align 8
  %17 = extractelement <2 x i64> %1, i32 1
  %18 = add i64 %16, %17
  store i64 %18, i64* %__v50_origx1.sroa.2.0..sroa_idx9, align 8
  %19 = getelementptr i64, i64* %__v46_z, i64 2
  %20 = load i64, i64* %19, align 8
  %21 = extractelement <2 x i64> %3, i32 0
  %22 = add i64 %20, %21
  store i64 %22, i64* %__v50_origx1.sroa.3.0..sroa_idx10, align 8
  %23 = getelementptr i64, i64* %__v46_z, i64 3
  %24 = load i64, i64* %23, align 8
  %25 = extractelement <2 x i64> %3, i32 1
  %26 = add i64 %24, %25
  store i64 %26, i64* %__v50_origx1.sroa.4.0..sroa_idx11, align 8
  %27 = getelementptr i64, i64* %__v46_z, i64 4
  %28 = load i64, i64* %27, align 8
  %29 = add i64 %28, %__v50_origx1.sroa.5.0.copyload
  store i64 %29, i64* %__v50_origx1.sroa.5.0..sroa_idx12, align 8
  %30 = add <2 x i64> %1, <i64 18014398509481832, i64 18014398509481976>
  %31 = bitcast i64* %__v46_z to <2 x i64>*
  %32 = load <2 x i64>, <2 x i64>* %31, align 8
  %33 = sub <2 x i64> %30, %32
  %34 = bitcast i64* %__v46_z to <2 x i64>*
  store <2 x i64> %33, <2 x i64>* %34, align 8
  %35 = add <2 x i64> %3, <i64 18014398509481976, i64 18014398509481976>
  %36 = bitcast i64* %19 to <2 x i64>*
  %37 = load <2 x i64>, <2 x i64>* %36, align 8
  %38 = sub <2 x i64> %35, %37
  %39 = bitcast i64* %19 to <2 x i64>*
  store <2 x i64> %38, <2 x i64>* %39, align 8
  %40 = add i64 %__v50_origx1.sroa.5.0.copyload, 18014398509481976
  %41 = load i64, i64* %27, align 8
  %42 = sub i64 %40, %41
  store i64 %42, i64* %27, align 8
  %43 = load i64, i64* %__v47_xprime, align 8
  %44 = load i64, i64* %__v48_zprime, align 8
  %45 = add i64 %44, %43
  store i64 %45, i64* %__v47_xprime, align 8
  %46 = getelementptr i64, i64* %__v47_xprime, i64 1
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr i64, i64* %__v48_zprime, i64 1
  %49 = load i64, i64* %48, align 8
  %50 = add i64 %49, %47
  store i64 %50, i64* %46, align 8
  %51 = getelementptr i64, i64* %__v47_xprime, i64 2
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr i64, i64* %__v48_zprime, i64 2
  %54 = load i64, i64* %53, align 8
  %55 = add i64 %54, %52
  store i64 %55, i64* %51, align 8
  %56 = getelementptr i64, i64* %__v47_xprime, i64 3
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr i64, i64* %__v48_zprime, i64 3
  %59 = load i64, i64* %58, align 8
  %60 = add i64 %59, %57
  store i64 %60, i64* %56, align 8
  %61 = getelementptr i64, i64* %__v47_xprime, i64 4
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr i64, i64* %__v48_zprime, i64 4
  %64 = load i64, i64* %63, align 8
  %65 = add i64 %64, %62
  store i64 %65, i64* %61, align 8
  %66 = bitcast [5 x i64]* %__v51_origxprime2 to <2 x i64>*
  %67 = load <2 x i64>, <2 x i64>* %66, align 16
  %68 = add <2 x i64> %67, <i64 18014398509481832, i64 18014398509481976>
  %69 = bitcast i64* %__v48_zprime to <2 x i64>*
  %70 = load <2 x i64>, <2 x i64>* %69, align 8
  %71 = sub <2 x i64> %68, %70
  %72 = bitcast i64* %__v48_zprime to <2 x i64>*
  store <2 x i64> %71, <2 x i64>* %72, align 8
  %73 = getelementptr inbounds [5 x i64], [5 x i64]* %__v51_origxprime2, i64 0, i64 2
  %74 = bitcast i64* %73 to <2 x i64>*
  %75 = load <2 x i64>, <2 x i64>* %74, align 16
  %76 = add <2 x i64> %75, <i64 18014398509481976, i64 18014398509481976>
  %77 = bitcast i64* %53 to <2 x i64>*
  %78 = load <2 x i64>, <2 x i64>* %77, align 8
  %79 = sub <2 x i64> %76, %78
  %80 = bitcast i64* %53 to <2 x i64>*
  store <2 x i64> %79, <2 x i64>* %80, align 8
  %81 = getelementptr inbounds [5 x i64], [5 x i64]* %__v51_origxprime2, i64 0, i64 4
  %82 = load i64, i64* %81, align 16
  %83 = add i64 %82, 18014398509481976
  %84 = load i64, i64* %63, align 8
  %85 = sub i64 %83, %84
  store i64 %85, i64* %63, align 8
  call fastcc void @fmul(i64* nonnull %__v55_xxprime6.sub, i64* %__v47_xprime, i64* %__v46_z)
  call fastcc void @fmul(i64* nonnull %__v56_zzprime7.sub, i64* %__v45_x, i64* %__v48_zprime)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* nonnull %9, i64 40, i32 16, i1 false)
  %__v52_zzz3.sub = getelementptr inbounds [5 x i64], [5 x i64]* %__v52_zzz3, i64 0, i64 0
  %__v53_xx4.sub = getelementptr inbounds [5 x i64], [5 x i64]* %__v53_xx4, i64 0, i64 0
  %__v54_zz5.sub = getelementptr inbounds [5 x i64], [5 x i64]* %__v54_zz5, i64 0, i64 0
  %__v57_zzzprime8.sub = getelementptr inbounds [5 x i64], [5 x i64]* %__v57_zzzprime8, i64 0, i64 0
  %86 = bitcast [5 x i64]* %__v55_xxprime6 to <2 x i64>*
  %87 = load <2 x i64>, <2 x i64>* %86, align 16
  %88 = bitcast [5 x i64]* %__v56_zzprime7 to <2 x i64>*
  %89 = load <2 x i64>, <2 x i64>* %88, align 16
  %90 = add <2 x i64> %89, %87
  %91 = bitcast [5 x i64]* %__v55_xxprime6 to <2 x i64>*
  store <2 x i64> %90, <2 x i64>* %91, align 16
  %92 = getelementptr inbounds [5 x i64], [5 x i64]* %__v55_xxprime6, i64 0, i64 2
  %93 = getelementptr inbounds [5 x i64], [5 x i64]* %__v56_zzprime7, i64 0, i64 2
  %94 = bitcast i64* %92 to <2 x i64>*
  %95 = load <2 x i64>, <2 x i64>* %94, align 16
  %96 = bitcast i64* %93 to <2 x i64>*
  %97 = load <2 x i64>, <2 x i64>* %96, align 16
  %98 = add <2 x i64> %97, %95
  %99 = bitcast i64* %92 to <2 x i64>*
  store <2 x i64> %98, <2 x i64>* %99, align 16
  %100 = getelementptr inbounds [5 x i64], [5 x i64]* %__v55_xxprime6, i64 0, i64 4
  %101 = load i64, i64* %100, align 16
  %102 = getelementptr inbounds [5 x i64], [5 x i64]* %__v56_zzprime7, i64 0, i64 4
  %103 = load i64, i64* %102, align 16
  %104 = add i64 %103, %101
  store i64 %104, i64* %100, align 16
  %105 = bitcast [5 x i64]* %__v51_origxprime2 to <2 x i64>*
  %106 = load <2 x i64>, <2 x i64>* %105, align 16
  %107 = sub <2 x i64> <i64 18014398509481832, i64 18014398509481976>, %89
  %108 = add <2 x i64> %107, %106
  %109 = bitcast [5 x i64]* %__v56_zzprime7 to <2 x i64>*
  store <2 x i64> %108, <2 x i64>* %109, align 16
  %110 = bitcast i64* %73 to <2 x i64>*
  %111 = load <2 x i64>, <2 x i64>* %110, align 16
  %112 = sub <2 x i64> <i64 18014398509481976, i64 18014398509481976>, %97
  %113 = add <2 x i64> %112, %111
  %114 = bitcast i64* %93 to <2 x i64>*
  store <2 x i64> %113, <2 x i64>* %114, align 16
  %115 = load i64, i64* %81, align 16
  %116 = sub i64 18014398509481976, %103
  %117 = add i64 %116, %115
  store i64 %117, i64* %102, align 16
  call fastcc void @fsquare_times(i64* %__v43_x3, i64* nonnull %__v55_xxprime6.sub, i64 1)
  call fastcc void @fsquare_times(i64* nonnull %__v57_zzzprime8.sub, i64* nonnull %__v56_zzprime7.sub, i64 1)
  call fastcc void @fmul(i64* %__v44_z3, i64* nonnull %__v57_zzzprime8.sub, i64* %__v49_qmqp)
  call fastcc void @fsquare_times(i64* nonnull %__v53_xx4.sub, i64* %__v45_x, i64 1)
  call fastcc void @fsquare_times(i64* nonnull %__v54_zz5.sub, i64* %__v46_z, i64 1)
  call fastcc void @fmul(i64* %__v41_x2, i64* nonnull %__v53_xx4.sub, i64* nonnull %__v54_zz5.sub)
  %118 = bitcast [5 x i64]* %__v53_xx4 to <2 x i64>*
  %119 = load <2 x i64>, <2 x i64>* %118, align 16
  %120 = add <2 x i64> %119, <i64 18014398509481832, i64 18014398509481976>
  %121 = bitcast [5 x i64]* %__v54_zz5 to <2 x i64>*
  %122 = load <2 x i64>, <2 x i64>* %121, align 16
  %123 = sub <2 x i64> %120, %122
  %124 = bitcast [5 x i64]* %__v54_zz5 to <2 x i64>*
  store <2 x i64> %123, <2 x i64>* %124, align 16
  %125 = getelementptr inbounds [5 x i64], [5 x i64]* %__v54_zz5, i64 0, i64 2
  %126 = getelementptr inbounds [5 x i64], [5 x i64]* %__v53_xx4, i64 0, i64 2
  %127 = bitcast i64* %126 to <2 x i64>*
  %128 = load <2 x i64>, <2 x i64>* %127, align 16
  %129 = add <2 x i64> %128, <i64 18014398509481976, i64 18014398509481976>
  %130 = bitcast i64* %125 to <2 x i64>*
  %131 = load <2 x i64>, <2 x i64>* %130, align 16
  %132 = sub <2 x i64> %129, %131
  %133 = bitcast i64* %125 to <2 x i64>*
  store <2 x i64> %132, <2 x i64>* %133, align 16
  %134 = getelementptr inbounds [5 x i64], [5 x i64]* %__v54_zz5, i64 0, i64 4
  %135 = getelementptr inbounds [5 x i64], [5 x i64]* %__v53_xx4, i64 0, i64 4
  %136 = load i64, i64* %135, align 16
  %137 = add i64 %136, 18014398509481976
  %138 = load i64, i64* %134, align 16
  %139 = sub i64 %137, %138
  store i64 %139, i64* %134, align 16
  %140 = extractelement <2 x i64> %123, i32 0
  %141 = zext i64 %140 to i128
  %142 = mul nuw nsw i128 %141, 121665
  %143 = trunc i128 %142 to i64
  %144 = and i64 %143, 2251799813685247
  %145 = extractelement <2 x i64> %123, i32 1
  %146 = zext i64 %145 to i128
  %147 = mul nuw nsw i128 %146, 121665
  %148 = lshr i128 %142, 51
  %149 = add nuw nsw i128 %147, %148
  %150 = getelementptr inbounds [5 x i64], [5 x i64]* %__v52_zzz3, i64 0, i64 1
  %151 = extractelement <2 x i64> %132, i32 0
  %152 = zext i64 %151 to i128
  %153 = mul nuw nsw i128 %152, 121665
  %154 = lshr i128 %149, 51
  %155 = add nuw nsw i128 %153, %154
  %156 = insertelement <2 x i128> undef, i128 %149, i32 0
  %157 = insertelement <2 x i128> %156, i128 %155, i32 1
  %158 = trunc <2 x i128> %157 to <2 x i64>
  %159 = and <2 x i64> %158, <i64 2251799813685247, i64 2251799813685247>
  %160 = extractelement <2 x i64> %132, i32 1
  %161 = zext i64 %160 to i128
  %162 = mul nuw nsw i128 %161, 121665
  %163 = lshr i128 %155, 51
  %164 = add nuw nsw i128 %162, %163
  %165 = getelementptr inbounds [5 x i64], [5 x i64]* %__v52_zzz3, i64 0, i64 3
  %166 = trunc i128 %164 to i64
  %167 = and i64 %166, 2251799813685247
  %168 = zext i64 %139 to i128
  %169 = mul nuw nsw i128 %168, 121665
  %170 = lshr i128 %164, 51
  %171 = add nuw nsw i128 %169, %170
  %172 = getelementptr inbounds [5 x i64], [5 x i64]* %__v52_zzz3, i64 0, i64 4
  %173 = trunc i128 %171 to i64
  %174 = and i64 %173, 2251799813685247
  %175 = lshr i128 %171, 51
  %176 = trunc i128 %175 to i64
  %177 = mul nuw nsw i64 %176, 19
  %178 = extractelement <2 x i64> %119, i32 0
  %179 = add i64 %144, %178
  %180 = add i64 %179, %177
  store i64 %180, i64* %__v52_zzz3.sub, align 8
  %181 = shufflevector <2 x i64> %119, <2 x i64> %128, <2 x i32> <i32 1, i32 2>
  %182 = add <2 x i64> %159, %181
  %183 = bitcast i64* %150 to <2 x i64>*
  store <2 x i64> %182, <2 x i64>* %183, align 8
  %184 = extractelement <2 x i64> %128, i32 1
  %185 = add i64 %167, %184
  store i64 %185, i64* %165, align 8
  %186 = add i64 %174, %136
  store i64 %186, i64* %172, align 8
  call fastcc void @fmul(i64* %__v42_z2, i64* nonnull %__v54_zz5.sub, i64* nonnull %__v52_zzz3.sub)
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind
define i32 @curve25519_donna(i8* %__v1_mypublic, i8* nocapture readonly %__v2__secret, i8* readonly %__v3_basepoint) local_unnamed_addr #0 {
entry:
  %__v31_e5.i = alloca [5 x i64], align 8
  %__v32_f6.i = alloca [5 x i64], align 8
  %__v33_g7.i = alloca [5 x i64], align 8
  %__v34_h8.i = alloca [5 x i64], align 8
  %__v19_a1.i = alloca [5 x i64], align 8
  %__v20_t02.i = alloca [5 x i64], align 8
  %__v21_b3.i = alloca [5 x i64], align 16
  %__v22_c4.i = alloca [5 x i64], align 16
  %__v4_bp1 = alloca [5 x i64], align 8
  %__v4_bp1.sub = getelementptr inbounds [5 x i64], [5 x i64]* %__v4_bp1, i64 0, i64 0
  %0 = bitcast [5 x i64]* %__v4_bp1 to i8*
  %1 = getelementptr inbounds [5 x i64], [5 x i64]* %__v4_bp1, i64 0, i64 2
  %2 = bitcast i64* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull %2, i8 0, i64 24, i32 8, i1 false) #0
  %__v5_x2 = alloca [5 x i64], align 16
  %3 = bitcast [5 x i64]* %__v5_x2 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull %3, i8 0, i64 40, i32 16, i1 false) #0
  %__v6_z3 = alloca [5 x i64], align 16
  %4 = bitcast [5 x i64]* %__v6_z3 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull %4, i8 0, i64 40, i32 16, i1 false) #0
  %__v7_zmone4 = alloca [5 x i64], align 8
  %5 = bitcast [5 x i64]* %__v7_zmone4 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull %5, i8 0, i64 40, i32 8, i1 false) #0
  %__v8_e5 = alloca [32 x i8], align 1
  %__v8_e5.sub = getelementptr inbounds [32 x i8], [32 x i8]* %__v8_e5, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %__v8_e5.sub, i8* %__v2__secret, i64 32, i32 1, i1 false) #0
  %6 = load i8, i8* %__v8_e5.sub, align 1
  %7 = and i8 %6, -8
  store i8 %7, i8* %__v8_e5.sub, align 1
  %8 = getelementptr inbounds [32 x i8], [32 x i8]* %__v8_e5, i64 0, i64 31
  %9 = load i8, i8* %8, align 1
  %10 = and i8 %9, 63
  %11 = or i8 %10, 64
  store i8 %11, i8* %8, align 1
  %12 = load i8, i8* %__v3_basepoint, align 1
  %13 = zext i8 %12 to i64
  %14 = getelementptr i8, i8* %__v3_basepoint, i64 1
  %15 = load i8, i8* %14, align 1
  %16 = zext i8 %15 to i64
  %17 = shl nuw nsw i64 %16, 8
  %18 = or i64 %17, %13
  %19 = getelementptr i8, i8* %__v3_basepoint, i64 2
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i64
  %22 = shl nuw nsw i64 %21, 16
  %23 = or i64 %18, %22
  %24 = getelementptr i8, i8* %__v3_basepoint, i64 3
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i64
  %27 = shl nuw nsw i64 %26, 24
  %28 = or i64 %23, %27
  %29 = getelementptr i8, i8* %__v3_basepoint, i64 4
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i64
  %32 = shl nuw nsw i64 %31, 32
  %33 = or i64 %28, %32
  %34 = getelementptr i8, i8* %__v3_basepoint, i64 5
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i64
  %37 = shl nuw nsw i64 %36, 40
  %38 = or i64 %33, %37
  %39 = getelementptr i8, i8* %__v3_basepoint, i64 6
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i64
  %42 = shl nuw nsw i64 %41, 48
  %43 = or i64 %38, %42
  %44 = and i64 %43, 2251799813685247
  store i64 %44, i64* %__v4_bp1.sub, align 8
  %45 = getelementptr i8, i8* %__v3_basepoint, i64 7
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i64
  %48 = shl nuw nsw i64 %47, 8
  %49 = or i64 %48, %41
  %50 = getelementptr i8, i8* %__v3_basepoint, i64 8
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i64
  %53 = shl nuw nsw i64 %52, 16
  %54 = or i64 %49, %53
  %55 = getelementptr i8, i8* %__v3_basepoint, i64 9
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i64
  %58 = shl nuw nsw i64 %57, 24
  %59 = or i64 %54, %58
  %60 = getelementptr i8, i8* %__v3_basepoint, i64 10
  %61 = load i8, i8* %60, align 1
  %62 = zext i8 %61 to i64
  %63 = shl nuw nsw i64 %62, 32
  %64 = or i64 %59, %63
  %65 = getelementptr i8, i8* %__v3_basepoint, i64 11
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i64
  %68 = shl nuw nsw i64 %67, 40
  %69 = or i64 %64, %68
  %70 = getelementptr i8, i8* %__v3_basepoint, i64 12
  %71 = load i8, i8* %70, align 1
  %72 = zext i8 %71 to i64
  %73 = shl nuw nsw i64 %72, 48
  %74 = or i64 %69, %73
  %75 = getelementptr inbounds [5 x i64], [5 x i64]* %__v4_bp1, i64 0, i64 1
  %76 = lshr i64 %74, 3
  %77 = and i64 %76, 2251799813685247
  store i64 %77, i64* %75, align 8
  %78 = getelementptr i8, i8* %__v3_basepoint, i64 13
  %79 = load i8, i8* %78, align 1
  %80 = zext i8 %79 to i64
  %81 = shl nuw nsw i64 %80, 8
  %82 = or i64 %81, %72
  %83 = getelementptr i8, i8* %__v3_basepoint, i64 14
  %84 = load i8, i8* %83, align 1
  %85 = zext i8 %84 to i64
  %86 = shl nuw nsw i64 %85, 16
  %87 = or i64 %82, %86
  %88 = getelementptr i8, i8* %__v3_basepoint, i64 15
  %89 = load i8, i8* %88, align 1
  %90 = zext i8 %89 to i64
  %91 = shl nuw nsw i64 %90, 24
  %92 = or i64 %87, %91
  %93 = getelementptr i8, i8* %__v3_basepoint, i64 16
  %94 = load i8, i8* %93, align 1
  %95 = zext i8 %94 to i64
  %96 = shl nuw nsw i64 %95, 32
  %97 = or i64 %92, %96
  %98 = getelementptr i8, i8* %__v3_basepoint, i64 17
  %99 = load i8, i8* %98, align 1
  %100 = zext i8 %99 to i64
  %101 = shl nuw nsw i64 %100, 40
  %102 = or i64 %97, %101
  %103 = getelementptr i8, i8* %__v3_basepoint, i64 18
  %104 = load i8, i8* %103, align 1
  %105 = zext i8 %104 to i64
  %106 = shl nuw nsw i64 %105, 48
  %107 = or i64 %102, %106
  %108 = getelementptr i8, i8* %__v3_basepoint, i64 19
  %109 = load i8, i8* %108, align 1
  %110 = zext i8 %109 to i64
  %111 = shl nuw i64 %110, 56
  %112 = or i64 %107, %111
  %113 = getelementptr inbounds [5 x i64], [5 x i64]* %__v4_bp1, i64 0, i64 2
  %114 = lshr i64 %112, 6
  %115 = and i64 %114, 2251799813685247
  store i64 %115, i64* %113, align 8
  %116 = getelementptr i8, i8* %__v3_basepoint, i64 20
  %117 = load i8, i8* %116, align 1
  %118 = zext i8 %117 to i64
  %119 = shl nuw nsw i64 %118, 8
  %120 = or i64 %119, %110
  %121 = getelementptr i8, i8* %__v3_basepoint, i64 21
  %122 = load i8, i8* %121, align 1
  %123 = zext i8 %122 to i64
  %124 = shl nuw nsw i64 %123, 16
  %125 = or i64 %120, %124
  %126 = getelementptr i8, i8* %__v3_basepoint, i64 22
  %127 = load i8, i8* %126, align 1
  %128 = zext i8 %127 to i64
  %129 = shl nuw nsw i64 %128, 24
  %130 = or i64 %125, %129
  %131 = getelementptr i8, i8* %__v3_basepoint, i64 23
  %132 = load i8, i8* %131, align 1
  %133 = zext i8 %132 to i64
  %134 = shl nuw nsw i64 %133, 32
  %135 = or i64 %130, %134
  %136 = getelementptr i8, i8* %__v3_basepoint, i64 24
  %137 = load i8, i8* %136, align 1
  %138 = zext i8 %137 to i64
  %139 = shl nuw nsw i64 %138, 40
  %140 = or i64 %135, %139
  %141 = getelementptr i8, i8* %__v3_basepoint, i64 25
  %142 = load i8, i8* %141, align 1
  %143 = zext i8 %142 to i64
  %144 = shl nuw nsw i64 %143, 48
  %145 = or i64 %140, %144
  %146 = getelementptr inbounds [5 x i64], [5 x i64]* %__v4_bp1, i64 0, i64 3
  %147 = lshr i64 %145, 1
  %148 = and i64 %147, 2251799813685247
  store i64 %148, i64* %146, align 8
  %149 = shl nuw nsw i64 %143, 8
  %150 = getelementptr i8, i8* %__v3_basepoint, i64 26
  %151 = load i8, i8* %150, align 1
  %152 = zext i8 %151 to i64
  %153 = shl nuw nsw i64 %152, 16
  %154 = or i64 %153, %149
  %155 = getelementptr i8, i8* %__v3_basepoint, i64 27
  %156 = load i8, i8* %155, align 1
  %157 = zext i8 %156 to i64
  %158 = shl nuw nsw i64 %157, 24
  %159 = or i64 %154, %158
  %160 = getelementptr i8, i8* %__v3_basepoint, i64 28
  %161 = load i8, i8* %160, align 1
  %162 = zext i8 %161 to i64
  %163 = shl nuw nsw i64 %162, 32
  %164 = or i64 %159, %163
  %165 = getelementptr i8, i8* %__v3_basepoint, i64 29
  %166 = load i8, i8* %165, align 1
  %167 = zext i8 %166 to i64
  %168 = shl nuw nsw i64 %167, 40
  %169 = or i64 %164, %168
  %170 = getelementptr i8, i8* %__v3_basepoint, i64 30
  %171 = load i8, i8* %170, align 1
  %172 = zext i8 %171 to i64
  %173 = shl nuw nsw i64 %172, 48
  %174 = or i64 %169, %173
  %175 = getelementptr i8, i8* %__v3_basepoint, i64 31
  %176 = load i8, i8* %175, align 1
  %177 = zext i8 %176 to i64
  %178 = shl nuw i64 %177, 56
  %179 = or i64 %174, %178
  %180 = getelementptr inbounds [5 x i64], [5 x i64]* %__v4_bp1, i64 0, i64 4
  %181 = lshr i64 %179, 12
  %182 = and i64 %181, 2251799813685247
  store i64 %182, i64* %180, align 8
  %183 = bitcast [5 x i64]* %__v19_a1.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %183)
  %184 = bitcast [5 x i64]* %__v20_t02.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %184)
  %185 = bitcast [5 x i64]* %__v21_b3.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %185)
  %186 = bitcast [5 x i64]* %__v22_c4.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %186)
  %187 = bitcast [5 x i64]* %__v31_e5.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %187)
  %188 = bitcast [5 x i64]* %__v32_f6.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %188)
  %189 = bitcast [5 x i64]* %__v33_g7.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %189)
  %190 = bitcast [5 x i64]* %__v34_h8.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %190)
  %__v28_b2.sub.i = getelementptr inbounds [5 x i64], [5 x i64]* %__v20_t02.i, i64 0, i64 0
  %191 = getelementptr inbounds [5 x i64], [5 x i64]* %__v20_t02.i, i64 0, i64 1
  %192 = bitcast i64* %191 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull %192, i8 0, i64 32, i32 8, i1 false) #0
  %__v29_c3.sub.i = getelementptr inbounds [5 x i64], [5 x i64]* %__v21_b3.i, i64 0, i64 0
  %193 = getelementptr inbounds [5 x i64], [5 x i64]* %__v21_b3.i, i64 0, i64 1
  %194 = bitcast i64* %193 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull %194, i8 0, i64 32, i32 8, i1 false) #0
  call void @llvm.memset.p0i8.i64(i8* nonnull %186, i8 0, i64 40, i32 16, i1 false) #0
  call void @llvm.memset.p0i8.i64(i8* nonnull %187, i8 0, i64 40, i32 8, i1 false) #0
  %__v32_f6.sub.i = getelementptr inbounds [5 x i64], [5 x i64]* %__v32_f6.i, i64 0, i64 0
  %195 = getelementptr inbounds [5 x i64], [5 x i64]* %__v32_f6.i, i64 0, i64 1
  %196 = bitcast i64* %195 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull %196, i8 0, i64 32, i32 8, i1 false) #0
  call void @llvm.memset.p0i8.i64(i8* nonnull %189, i8 0, i64 40, i32 8, i1 false) #0
  %__v34_h8.sub.i = getelementptr inbounds [5 x i64], [5 x i64]* %__v34_h8.i, i64 0, i64 0
  %197 = getelementptr inbounds [5 x i64], [5 x i64]* %__v34_h8.i, i64 0, i64 1
  %198 = bitcast i64* %197 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull %198, i8 0, i64 32, i32 8, i1 false) #0
  store i64 1, i64* %__v28_b2.sub.i, align 8
  store i64 1, i64* %__v29_c3.sub.i, align 16
  store i64 1, i64* %__v32_f6.sub.i, align 8
  store i64 1, i64* %__v34_h8.sub.i, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %183, i8* nonnull %0, i64 40, i32 8, i1 false) #0
  %__v27_a1.sub.i = getelementptr inbounds [5 x i64], [5 x i64]* %__v19_a1.i, i64 0, i64 0
  %__v30_d4.sub.i = getelementptr inbounds [5 x i64], [5 x i64]* %__v22_c4.i, i64 0, i64 0
  %__v31_e5.sub.i = getelementptr inbounds [5 x i64], [5 x i64]* %__v31_e5.i, i64 0, i64 0
  %__v33_g7.sub.i = getelementptr inbounds [5 x i64], [5 x i64]* %__v33_g7.i, i64 0, i64 0
  %199 = getelementptr inbounds [5 x i64], [5 x i64]* %__v19_a1.i, i64 0, i64 1
  %200 = getelementptr inbounds [5 x i64], [5 x i64]* %__v21_b3.i, i64 0, i64 2
  %201 = getelementptr inbounds [5 x i64], [5 x i64]* %__v19_a1.i, i64 0, i64 2
  %202 = getelementptr inbounds [5 x i64], [5 x i64]* %__v21_b3.i, i64 0, i64 3
  %203 = getelementptr inbounds [5 x i64], [5 x i64]* %__v19_a1.i, i64 0, i64 3
  %204 = getelementptr inbounds [5 x i64], [5 x i64]* %__v21_b3.i, i64 0, i64 4
  %205 = getelementptr inbounds [5 x i64], [5 x i64]* %__v19_a1.i, i64 0, i64 4
  %206 = getelementptr inbounds [5 x i64], [5 x i64]* %__v22_c4.i, i64 0, i64 1
  %207 = getelementptr inbounds [5 x i64], [5 x i64]* %__v22_c4.i, i64 0, i64 2
  %208 = getelementptr inbounds [5 x i64], [5 x i64]* %__v20_t02.i, i64 0, i64 2
  %209 = getelementptr inbounds [5 x i64], [5 x i64]* %__v22_c4.i, i64 0, i64 3
  %210 = getelementptr inbounds [5 x i64], [5 x i64]* %__v20_t02.i, i64 0, i64 3
  %211 = getelementptr inbounds [5 x i64], [5 x i64]* %__v22_c4.i, i64 0, i64 4
  %212 = getelementptr inbounds [5 x i64], [5 x i64]* %__v20_t02.i, i64 0, i64 4
  %213 = getelementptr inbounds [5 x i64], [5 x i64]* %__v33_g7.i, i64 0, i64 1
  %214 = getelementptr inbounds [5 x i64], [5 x i64]* %__v31_e5.i, i64 0, i64 1
  %215 = getelementptr inbounds [5 x i64], [5 x i64]* %__v33_g7.i, i64 0, i64 2
  %216 = getelementptr inbounds [5 x i64], [5 x i64]* %__v31_e5.i, i64 0, i64 2
  %217 = getelementptr inbounds [5 x i64], [5 x i64]* %__v33_g7.i, i64 0, i64 3
  %218 = getelementptr inbounds [5 x i64], [5 x i64]* %__v31_e5.i, i64 0, i64 3
  %219 = getelementptr inbounds [5 x i64], [5 x i64]* %__v33_g7.i, i64 0, i64 4
  %220 = getelementptr inbounds [5 x i64], [5 x i64]* %__v31_e5.i, i64 0, i64 4
  %221 = getelementptr inbounds [5 x i64], [5 x i64]* %__v34_h8.i, i64 0, i64 2
  %222 = getelementptr inbounds [5 x i64], [5 x i64]* %__v32_f6.i, i64 0, i64 2
  %223 = getelementptr inbounds [5 x i64], [5 x i64]* %__v34_h8.i, i64 0, i64 3
  %224 = getelementptr inbounds [5 x i64], [5 x i64]* %__v32_f6.i, i64 0, i64 3
  %225 = getelementptr inbounds [5 x i64], [5 x i64]* %__v34_h8.i, i64 0, i64 4
  %226 = getelementptr inbounds [5 x i64], [5 x i64]* %__v32_f6.i, i64 0, i64 4
  br label %227

; <label>:227:                                    ; preds = %235, %entry
  %indvars.iv.i = phi i64 [ 0, %entry ], [ %indvars.iv.next.i, %235 ]
  %228 = sub nuw nsw i64 31, %indvars.iv.i
  %229 = getelementptr [32 x i8], [32 x i8]* %__v8_e5, i64 0, i64 %228
  %230 = load i8, i8* %229, align 1
  br label %231

; <label>:231:                                    ; preds = %358, %227
  %232 = phi i8 [ %230, %227 ], [ %359, %358 ]
  %__v38_j52.i = phi i32 [ 0, %227 ], [ %360, %358 ]
  %233 = and i32 %__v38_j52.i, 1
  %234 = icmp eq i32 %233, 0
  %__m1.i9.i = icmp slt i8 %232, 0
  br i1 %234, label %236, label %297

; <label>:235:                                    ; preds = %358
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond57.i = icmp eq i64 %indvars.iv.next.i, 32
  br i1 %exitcond57.i, label %cmult.exit, label %227

; <label>:236:                                    ; preds = %231
  %__v104_x.i10.i = load i64, i64* %__v29_c3.sub.i, align 16
  %237 = load i64, i64* %__v27_a1.sub.i, align 8
  %238 = tail call i64 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m1.i9.i, i64 %237, i64 %__v104_x.i10.i) #0
  store i64 %238, i64* %__v29_c3.sub.i, align 16
  %239 = tail call i64 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m1.i9.i, i64 %__v104_x.i10.i, i64 %237) #0
  store i64 %239, i64* %__v27_a1.sub.i, align 8
  %__v104_x.1.i11.i = load i64, i64* %193, align 8
  %240 = load i64, i64* %199, align 8
  %241 = tail call i64 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m1.i9.i, i64 %240, i64 %__v104_x.1.i11.i) #0
  store i64 %241, i64* %193, align 8
  %242 = tail call i64 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m1.i9.i, i64 %__v104_x.1.i11.i, i64 %240) #0
  store i64 %242, i64* %199, align 8
  %__v104_x.2.i12.i = load i64, i64* %200, align 16
  %243 = load i64, i64* %201, align 8
  %244 = tail call i64 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m1.i9.i, i64 %243, i64 %__v104_x.2.i12.i) #0
  store i64 %244, i64* %200, align 16
  %245 = tail call i64 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m1.i9.i, i64 %__v104_x.2.i12.i, i64 %243) #0
  store i64 %245, i64* %201, align 8
  %__v104_x.3.i13.i = load i64, i64* %202, align 8
  %246 = load i64, i64* %203, align 8
  %247 = tail call i64 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m1.i9.i, i64 %246, i64 %__v104_x.3.i13.i) #0
  store i64 %247, i64* %202, align 8
  %248 = tail call i64 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m1.i9.i, i64 %__v104_x.3.i13.i, i64 %246) #0
  store i64 %248, i64* %203, align 8
  %__v104_x.4.i14.i = load i64, i64* %204, align 16
  %249 = load i64, i64* %205, align 8
  %250 = tail call i64 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m1.i9.i, i64 %249, i64 %__v104_x.4.i14.i) #0
  store i64 %250, i64* %204, align 16
  %251 = tail call i64 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m1.i9.i, i64 %__v104_x.4.i14.i, i64 %249) #0
  store i64 %251, i64* %205, align 8
  %__v104_x.i16.i = load i64, i64* %__v30_d4.sub.i, align 16
  %252 = load i64, i64* %__v28_b2.sub.i, align 8
  %253 = tail call i64 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m1.i9.i, i64 %252, i64 %__v104_x.i16.i) #0
  store i64 %253, i64* %__v30_d4.sub.i, align 16
  %254 = tail call i64 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m1.i9.i, i64 %__v104_x.i16.i, i64 %252) #0
  store i64 %254, i64* %__v28_b2.sub.i, align 8
  %__v104_x.1.i17.i = load i64, i64* %206, align 8
  %255 = load i64, i64* %191, align 8
  %256 = tail call i64 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m1.i9.i, i64 %255, i64 %__v104_x.1.i17.i) #0
  store i64 %256, i64* %206, align 8
  %257 = tail call i64 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m1.i9.i, i64 %__v104_x.1.i17.i, i64 %255) #0
  store i64 %257, i64* %191, align 8
  %__v104_x.2.i18.i = load i64, i64* %207, align 16
  %258 = load i64, i64* %208, align 8
  %259 = tail call i64 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m1.i9.i, i64 %258, i64 %__v104_x.2.i18.i) #0
  store i64 %259, i64* %207, align 16
  %260 = tail call i64 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m1.i9.i, i64 %__v104_x.2.i18.i, i64 %258) #0
  store i64 %260, i64* %208, align 8
  %__v104_x.3.i19.i = load i64, i64* %209, align 8
  %261 = load i64, i64* %210, align 8
  %262 = tail call i64 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m1.i9.i, i64 %261, i64 %__v104_x.3.i19.i) #0
  store i64 %262, i64* %209, align 8
  %263 = tail call i64 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m1.i9.i, i64 %__v104_x.3.i19.i, i64 %261) #0
  store i64 %263, i64* %210, align 8
  %__v104_x.4.i20.i = load i64, i64* %211, align 16
  %264 = load i64, i64* %212, align 8
  %265 = tail call i64 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m1.i9.i, i64 %264, i64 %__v104_x.4.i20.i) #0
  store i64 %265, i64* %211, align 16
  %266 = tail call i64 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m1.i9.i, i64 %__v104_x.4.i20.i, i64 %264) #0
  store i64 %266, i64* %212, align 8
  call fastcc void @fmonty(i64* nonnull %__v33_g7.sub.i, i64* nonnull %__v34_h8.sub.i, i64* nonnull %__v31_e5.sub.i, i64* nonnull %__v32_f6.sub.i, i64* nonnull %__v29_c3.sub.i, i64* nonnull %__v30_d4.sub.i, i64* nonnull %__v27_a1.sub.i, i64* nonnull %__v28_b2.sub.i, i64* nonnull %__v4_bp1.sub) #0
  %__v104_x.i22.i = load i64, i64* %__v33_g7.sub.i, align 8
  %267 = load i64, i64* %__v31_e5.sub.i, align 8
  %268 = tail call i64 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m1.i9.i, i64 %267, i64 %__v104_x.i22.i) #0
  store i64 %268, i64* %__v33_g7.sub.i, align 8
  %269 = tail call i64 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m1.i9.i, i64 %__v104_x.i22.i, i64 %267) #0
  store i64 %269, i64* %__v31_e5.sub.i, align 8
  %__v104_x.1.i23.i = load i64, i64* %213, align 8
  %270 = load i64, i64* %214, align 8
  %271 = tail call i64 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m1.i9.i, i64 %270, i64 %__v104_x.1.i23.i) #0
  store i64 %271, i64* %213, align 8
  %272 = tail call i64 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m1.i9.i, i64 %__v104_x.1.i23.i, i64 %270) #0
  store i64 %272, i64* %214, align 8
  %__v104_x.2.i24.i = load i64, i64* %215, align 8
  %273 = load i64, i64* %216, align 8
  %274 = tail call i64 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m1.i9.i, i64 %273, i64 %__v104_x.2.i24.i) #0
  store i64 %274, i64* %215, align 8
  %275 = tail call i64 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m1.i9.i, i64 %__v104_x.2.i24.i, i64 %273) #0
  store i64 %275, i64* %216, align 8
  %__v104_x.3.i25.i = load i64, i64* %217, align 8
  %276 = load i64, i64* %218, align 8
  %277 = tail call i64 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m1.i9.i, i64 %276, i64 %__v104_x.3.i25.i) #0
  store i64 %277, i64* %217, align 8
  %278 = tail call i64 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m1.i9.i, i64 %__v104_x.3.i25.i, i64 %276) #0
  store i64 %278, i64* %218, align 8
  %__v104_x.4.i26.i = load i64, i64* %219, align 8
  %279 = load i64, i64* %220, align 8
  %280 = tail call i64 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m1.i9.i, i64 %279, i64 %__v104_x.4.i26.i) #0
  store i64 %280, i64* %219, align 8
  %281 = tail call i64 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m1.i9.i, i64 %__v104_x.4.i26.i, i64 %279) #0
  store i64 %281, i64* %220, align 8
  %__v104_x.i28.i = load i64, i64* %__v34_h8.sub.i, align 8
  %282 = load i64, i64* %__v32_f6.sub.i, align 8
  %283 = tail call i64 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m1.i9.i, i64 %282, i64 %__v104_x.i28.i) #0
  store i64 %283, i64* %__v34_h8.sub.i, align 8
  %284 = tail call i64 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m1.i9.i, i64 %__v104_x.i28.i, i64 %282) #0
  store i64 %284, i64* %__v32_f6.sub.i, align 8
  %__v104_x.1.i29.i = load i64, i64* %197, align 8
  %285 = load i64, i64* %195, align 8
  %286 = tail call i64 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m1.i9.i, i64 %285, i64 %__v104_x.1.i29.i) #0
  store i64 %286, i64* %197, align 8
  %287 = tail call i64 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m1.i9.i, i64 %__v104_x.1.i29.i, i64 %285) #0
  store i64 %287, i64* %195, align 8
  %__v104_x.2.i30.i = load i64, i64* %221, align 8
  %288 = load i64, i64* %222, align 8
  %289 = tail call i64 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m1.i9.i, i64 %288, i64 %__v104_x.2.i30.i) #0
  store i64 %289, i64* %221, align 8
  %290 = tail call i64 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m1.i9.i, i64 %__v104_x.2.i30.i, i64 %288) #0
  store i64 %290, i64* %222, align 8
  %__v104_x.3.i31.i = load i64, i64* %223, align 8
  %291 = load i64, i64* %224, align 8
  %292 = tail call i64 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m1.i9.i, i64 %291, i64 %__v104_x.3.i31.i) #0
  store i64 %292, i64* %223, align 8
  %293 = tail call i64 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m1.i9.i, i64 %__v104_x.3.i31.i, i64 %291) #0
  store i64 %293, i64* %224, align 8
  %__v104_x.4.i32.i = load i64, i64* %225, align 8
  %294 = load i64, i64* %226, align 8
  %295 = tail call i64 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m1.i9.i, i64 %294, i64 %__v104_x.4.i32.i) #0
  store i64 %295, i64* %225, align 8
  %296 = tail call i64 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m1.i9.i, i64 %__v104_x.4.i32.i, i64 %294) #0
  store i64 %296, i64* %226, align 8
  br label %358

; <label>:297:                                    ; preds = %231
  %__v104_x.i34.i = load i64, i64* %__v33_g7.sub.i, align 8
  %298 = load i64, i64* %__v31_e5.sub.i, align 8
  %299 = tail call i64 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m1.i9.i, i64 %298, i64 %__v104_x.i34.i) #0
  store i64 %299, i64* %__v33_g7.sub.i, align 8
  %300 = tail call i64 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m1.i9.i, i64 %__v104_x.i34.i, i64 %298) #0
  store i64 %300, i64* %__v31_e5.sub.i, align 8
  %__v104_x.1.i35.i = load i64, i64* %213, align 8
  %301 = load i64, i64* %214, align 8
  %302 = tail call i64 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m1.i9.i, i64 %301, i64 %__v104_x.1.i35.i) #0
  store i64 %302, i64* %213, align 8
  %303 = tail call i64 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m1.i9.i, i64 %__v104_x.1.i35.i, i64 %301) #0
  store i64 %303, i64* %214, align 8
  %__v104_x.2.i36.i = load i64, i64* %215, align 8
  %304 = load i64, i64* %216, align 8
  %305 = tail call i64 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m1.i9.i, i64 %304, i64 %__v104_x.2.i36.i) #0
  store i64 %305, i64* %215, align 8
  %306 = tail call i64 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m1.i9.i, i64 %__v104_x.2.i36.i, i64 %304) #0
  store i64 %306, i64* %216, align 8
  %__v104_x.3.i37.i = load i64, i64* %217, align 8
  %307 = load i64, i64* %218, align 8
  %308 = tail call i64 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m1.i9.i, i64 %307, i64 %__v104_x.3.i37.i) #0
  store i64 %308, i64* %217, align 8
  %309 = tail call i64 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m1.i9.i, i64 %__v104_x.3.i37.i, i64 %307) #0
  store i64 %309, i64* %218, align 8
  %__v104_x.4.i38.i = load i64, i64* %219, align 8
  %310 = load i64, i64* %220, align 8
  %311 = tail call i64 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m1.i9.i, i64 %310, i64 %__v104_x.4.i38.i) #0
  store i64 %311, i64* %219, align 8
  %312 = tail call i64 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m1.i9.i, i64 %__v104_x.4.i38.i, i64 %310) #0
  store i64 %312, i64* %220, align 8
  %__v104_x.i40.i = load i64, i64* %__v34_h8.sub.i, align 8
  %313 = load i64, i64* %__v32_f6.sub.i, align 8
  %314 = tail call i64 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m1.i9.i, i64 %313, i64 %__v104_x.i40.i) #0
  store i64 %314, i64* %__v34_h8.sub.i, align 8
  %315 = tail call i64 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m1.i9.i, i64 %__v104_x.i40.i, i64 %313) #0
  store i64 %315, i64* %__v32_f6.sub.i, align 8
  %__v104_x.1.i41.i = load i64, i64* %197, align 8
  %316 = load i64, i64* %195, align 8
  %317 = tail call i64 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m1.i9.i, i64 %316, i64 %__v104_x.1.i41.i) #0
  store i64 %317, i64* %197, align 8
  %318 = tail call i64 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m1.i9.i, i64 %__v104_x.1.i41.i, i64 %316) #0
  store i64 %318, i64* %195, align 8
  %__v104_x.2.i42.i = load i64, i64* %221, align 8
  %319 = load i64, i64* %222, align 8
  %320 = tail call i64 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m1.i9.i, i64 %319, i64 %__v104_x.2.i42.i) #0
  store i64 %320, i64* %221, align 8
  %321 = tail call i64 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m1.i9.i, i64 %__v104_x.2.i42.i, i64 %319) #0
  store i64 %321, i64* %222, align 8
  %__v104_x.3.i43.i = load i64, i64* %223, align 8
  %322 = load i64, i64* %224, align 8
  %323 = tail call i64 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m1.i9.i, i64 %322, i64 %__v104_x.3.i43.i) #0
  store i64 %323, i64* %223, align 8
  %324 = tail call i64 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m1.i9.i, i64 %__v104_x.3.i43.i, i64 %322) #0
  store i64 %324, i64* %224, align 8
  %__v104_x.4.i44.i = load i64, i64* %225, align 8
  %325 = load i64, i64* %226, align 8
  %326 = tail call i64 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m1.i9.i, i64 %325, i64 %__v104_x.4.i44.i) #0
  store i64 %326, i64* %225, align 8
  %327 = tail call i64 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m1.i9.i, i64 %__v104_x.4.i44.i, i64 %325) #0
  store i64 %327, i64* %226, align 8
  call fastcc void @fmonty(i64* nonnull %__v29_c3.sub.i, i64* nonnull %__v30_d4.sub.i, i64* nonnull %__v27_a1.sub.i, i64* nonnull %__v28_b2.sub.i, i64* nonnull %__v33_g7.sub.i, i64* nonnull %__v34_h8.sub.i, i64* nonnull %__v31_e5.sub.i, i64* nonnull %__v32_f6.sub.i, i64* nonnull %__v4_bp1.sub) #0
  %__v104_x.i46.i = load i64, i64* %__v29_c3.sub.i, align 16
  %328 = load i64, i64* %__v27_a1.sub.i, align 8
  %329 = tail call i64 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m1.i9.i, i64 %328, i64 %__v104_x.i46.i) #0
  store i64 %329, i64* %__v29_c3.sub.i, align 16
  %330 = tail call i64 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m1.i9.i, i64 %__v104_x.i46.i, i64 %328) #0
  store i64 %330, i64* %__v27_a1.sub.i, align 8
  %__v104_x.1.i47.i = load i64, i64* %193, align 8
  %331 = load i64, i64* %199, align 8
  %332 = tail call i64 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m1.i9.i, i64 %331, i64 %__v104_x.1.i47.i) #0
  store i64 %332, i64* %193, align 8
  %333 = tail call i64 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m1.i9.i, i64 %__v104_x.1.i47.i, i64 %331) #0
  store i64 %333, i64* %199, align 8
  %__v104_x.2.i48.i = load i64, i64* %200, align 16
  %334 = load i64, i64* %201, align 8
  %335 = tail call i64 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m1.i9.i, i64 %334, i64 %__v104_x.2.i48.i) #0
  store i64 %335, i64* %200, align 16
  %336 = tail call i64 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m1.i9.i, i64 %__v104_x.2.i48.i, i64 %334) #0
  store i64 %336, i64* %201, align 8
  %__v104_x.3.i49.i = load i64, i64* %202, align 8
  %337 = load i64, i64* %203, align 8
  %338 = tail call i64 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m1.i9.i, i64 %337, i64 %__v104_x.3.i49.i) #0
  store i64 %338, i64* %202, align 8
  %339 = tail call i64 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m1.i9.i, i64 %__v104_x.3.i49.i, i64 %337) #0
  store i64 %339, i64* %203, align 8
  %__v104_x.4.i50.i = load i64, i64* %204, align 16
  %340 = load i64, i64* %205, align 8
  %341 = tail call i64 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m1.i9.i, i64 %340, i64 %__v104_x.4.i50.i) #0
  store i64 %341, i64* %204, align 16
  %342 = tail call i64 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m1.i9.i, i64 %__v104_x.4.i50.i, i64 %340) #0
  store i64 %342, i64* %205, align 8
  %__v104_x.i.i = load i64, i64* %__v30_d4.sub.i, align 16
  %343 = load i64, i64* %__v28_b2.sub.i, align 8
  %344 = tail call i64 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m1.i9.i, i64 %343, i64 %__v104_x.i.i) #0
  store i64 %344, i64* %__v30_d4.sub.i, align 16
  %345 = tail call i64 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m1.i9.i, i64 %__v104_x.i.i, i64 %343) #0
  store i64 %345, i64* %__v28_b2.sub.i, align 8
  %__v104_x.1.i.i = load i64, i64* %206, align 8
  %346 = load i64, i64* %191, align 8
  %347 = tail call i64 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m1.i9.i, i64 %346, i64 %__v104_x.1.i.i) #0
  store i64 %347, i64* %206, align 8
  %348 = tail call i64 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m1.i9.i, i64 %__v104_x.1.i.i, i64 %346) #0
  store i64 %348, i64* %191, align 8
  %__v104_x.2.i.i = load i64, i64* %207, align 16
  %349 = load i64, i64* %208, align 8
  %350 = tail call i64 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m1.i9.i, i64 %349, i64 %__v104_x.2.i.i) #0
  store i64 %350, i64* %207, align 16
  %351 = tail call i64 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m1.i9.i, i64 %__v104_x.2.i.i, i64 %349) #0
  store i64 %351, i64* %208, align 8
  %__v104_x.3.i.i = load i64, i64* %209, align 8
  %352 = load i64, i64* %210, align 8
  %353 = tail call i64 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m1.i9.i, i64 %352, i64 %__v104_x.3.i.i) #0
  store i64 %353, i64* %209, align 8
  %354 = tail call i64 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m1.i9.i, i64 %__v104_x.3.i.i, i64 %352) #0
  store i64 %354, i64* %210, align 8
  %__v104_x.4.i.i = load i64, i64* %211, align 16
  %355 = load i64, i64* %212, align 8
  %356 = tail call i64 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m1.i9.i, i64 %355, i64 %__v104_x.4.i.i) #0
  store i64 %356, i64* %211, align 16
  %357 = tail call i64 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m1.i9.i, i64 %__v104_x.4.i.i, i64 %355) #0
  store i64 %357, i64* %212, align 8
  br label %358

; <label>:358:                                    ; preds = %297, %236
  %359 = shl i8 %232, 1
  %360 = add nuw nsw i32 %__v38_j52.i, 1
  %exitcond.i = icmp eq i32 %360, 8
  br i1 %exitcond.i, label %235, label %231

cmult.exit:                                       ; preds = %235
  %__v5_x2.sub = getelementptr inbounds [5 x i64], [5 x i64]* %__v5_x2, i64 0, i64 0
  %__v6_z3.sub = getelementptr inbounds [5 x i64], [5 x i64]* %__v6_z3, i64 0, i64 0
  %__v7_zmone4.sub = getelementptr inbounds [5 x i64], [5 x i64]* %__v7_zmone4, i64 0, i64 0
  %361 = bitcast [5 x i64]* %__v21_b3.i to <2 x i64>*
  %362 = load <2 x i64>, <2 x i64>* %361, align 16
  %363 = bitcast [5 x i64]* %__v5_x2 to <2 x i64>*
  store <2 x i64> %362, <2 x i64>* %363, align 16
  %364 = getelementptr inbounds [5 x i64], [5 x i64]* %__v6_z3, i64 0, i64 1
  %365 = bitcast [5 x i64]* %__v22_c4.i to <2 x i64>*
  %366 = load <2 x i64>, <2 x i64>* %365, align 16
  %367 = bitcast [5 x i64]* %__v6_z3 to <2 x i64>*
  store <2 x i64> %366, <2 x i64>* %367, align 16
  %368 = getelementptr inbounds [5 x i64], [5 x i64]* %__v5_x2, i64 0, i64 2
  %369 = getelementptr inbounds [5 x i64], [5 x i64]* %__v6_z3, i64 0, i64 2
  %370 = bitcast i64* %200 to <2 x i64>*
  %371 = load <2 x i64>, <2 x i64>* %370, align 16
  %372 = bitcast i64* %368 to <2 x i64>*
  store <2 x i64> %371, <2 x i64>* %372, align 16
  %373 = getelementptr inbounds [5 x i64], [5 x i64]* %__v6_z3, i64 0, i64 3
  %374 = bitcast i64* %207 to <2 x i64>*
  %375 = load <2 x i64>, <2 x i64>* %374, align 16
  %376 = bitcast i64* %369 to <2 x i64>*
  store <2 x i64> %375, <2 x i64>* %376, align 16
  %377 = getelementptr inbounds [5 x i64], [5 x i64]* %__v5_x2, i64 0, i64 4
  %378 = load i64, i64* %204, align 16
  store i64 %378, i64* %377, align 16
  %379 = getelementptr inbounds [5 x i64], [5 x i64]* %__v6_z3, i64 0, i64 4
  %380 = load i64, i64* %211, align 16
  store i64 %380, i64* %379, align 16
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %183)
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %184)
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %185)
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %186)
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %187)
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %188)
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %189)
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %190)
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %183)
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %184)
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %185)
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %186)
  call void @llvm.memset.p0i8.i64(i8* nonnull %183, i8 0, i64 40, i32 8, i1 false) #0
  call void @llvm.memset.p0i8.i64(i8* nonnull %184, i8 0, i64 40, i32 8, i1 false) #0
  call void @llvm.memset.p0i8.i64(i8* nonnull %185, i8 0, i64 40, i32 16, i1 false) #0
  call void @llvm.memset.p0i8.i64(i8* nonnull %186, i8 0, i64 40, i32 16, i1 false) #0
  call fastcc void @fsquare_times(i64* nonnull %__v27_a1.sub.i, i64* nonnull %__v6_z3.sub, i64 1) #0
  call fastcc void @fsquare_times(i64* nonnull %__v28_b2.sub.i, i64* nonnull %__v27_a1.sub.i, i64 2) #0
  call fastcc void @fmul(i64* nonnull %__v29_c3.sub.i, i64* nonnull %__v28_b2.sub.i, i64* nonnull %__v6_z3.sub) #0
  call fastcc void @fmul(i64* nonnull %__v27_a1.sub.i, i64* nonnull %__v29_c3.sub.i, i64* nonnull %__v27_a1.sub.i) #0
  call fastcc void @fsquare_times(i64* nonnull %__v28_b2.sub.i, i64* nonnull %__v27_a1.sub.i, i64 1) #0
  call fastcc void @fmul(i64* nonnull %__v29_c3.sub.i, i64* nonnull %__v28_b2.sub.i, i64* nonnull %__v29_c3.sub.i) #0
  call fastcc void @fsquare_times(i64* nonnull %__v28_b2.sub.i, i64* nonnull %__v29_c3.sub.i, i64 5) #0
  call fastcc void @fmul(i64* nonnull %__v29_c3.sub.i, i64* nonnull %__v28_b2.sub.i, i64* nonnull %__v29_c3.sub.i) #0
  call fastcc void @fsquare_times(i64* nonnull %__v28_b2.sub.i, i64* nonnull %__v29_c3.sub.i, i64 10) #0
  call fastcc void @fmul(i64* nonnull %__v30_d4.sub.i, i64* nonnull %__v28_b2.sub.i, i64* nonnull %__v29_c3.sub.i) #0
  call fastcc void @fsquare_times(i64* nonnull %__v28_b2.sub.i, i64* nonnull %__v30_d4.sub.i, i64 20) #0
  call fastcc void @fmul(i64* nonnull %__v28_b2.sub.i, i64* nonnull %__v28_b2.sub.i, i64* nonnull %__v30_d4.sub.i) #0
  call fastcc void @fsquare_times(i64* nonnull %__v28_b2.sub.i, i64* nonnull %__v28_b2.sub.i, i64 10) #0
  call fastcc void @fmul(i64* nonnull %__v29_c3.sub.i, i64* nonnull %__v28_b2.sub.i, i64* nonnull %__v29_c3.sub.i) #0
  call fastcc void @fsquare_times(i64* nonnull %__v28_b2.sub.i, i64* nonnull %__v29_c3.sub.i, i64 50) #0
  call fastcc void @fmul(i64* nonnull %__v30_d4.sub.i, i64* nonnull %__v28_b2.sub.i, i64* nonnull %__v29_c3.sub.i) #0
  call fastcc void @fsquare_times(i64* nonnull %__v28_b2.sub.i, i64* nonnull %__v30_d4.sub.i, i64 100) #0
  call fastcc void @fmul(i64* nonnull %__v28_b2.sub.i, i64* nonnull %__v28_b2.sub.i, i64* nonnull %__v30_d4.sub.i) #0
  call fastcc void @fsquare_times(i64* nonnull %__v28_b2.sub.i, i64* nonnull %__v28_b2.sub.i, i64 50) #0
  call fastcc void @fmul(i64* nonnull %__v28_b2.sub.i, i64* nonnull %__v28_b2.sub.i, i64* nonnull %__v29_c3.sub.i) #0
  call fastcc void @fsquare_times(i64* nonnull %__v28_b2.sub.i, i64* nonnull %__v28_b2.sub.i, i64 5) #0
  call fastcc void @fmul(i64* nonnull %__v7_zmone4.sub, i64* nonnull %__v28_b2.sub.i, i64* nonnull %__v27_a1.sub.i) #0
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %183)
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %184)
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %185)
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %186)
  call fastcc void @fmul(i64* nonnull %__v6_z3.sub, i64* nonnull %__v5_x2.sub, i64* nonnull %__v7_zmone4.sub)
  %381 = load i64, i64* %__v6_z3.sub, align 16
  %382 = zext i64 %381 to i128
  %383 = load i64, i64* %364, align 8
  %384 = zext i64 %383 to i128
  %385 = load i64, i64* %369, align 16
  %386 = zext i64 %385 to i128
  %387 = load i64, i64* %373, align 8
  %388 = zext i64 %387 to i128
  %389 = load i64, i64* %379, align 16
  %390 = zext i64 %389 to i128
  %391 = lshr i128 %382, 51
  %392 = add nuw nsw i128 %391, %384
  %393 = and i128 %382, 2251799813685247
  %394 = lshr i128 %392, 51
  %395 = add nuw nsw i128 %394, %386
  %396 = and i128 %392, 2251799813685247
  %397 = lshr i128 %395, 51
  %398 = add nuw nsw i128 %397, %388
  %399 = and i128 %395, 2251799813685247
  %400 = lshr i128 %398, 51
  %401 = add nuw nsw i128 %400, %390
  %402 = and i128 %398, 2251799813685247
  %403 = lshr i128 %401, 51
  %404 = mul nuw nsw i128 %403, 19
  %405 = add nuw nsw i128 %404, %393
  %406 = and i128 %401, 2251799813685247
  %407 = lshr i128 %405, 51
  %408 = add nuw nsw i128 %407, %396
  %409 = and i128 %405, 2251799813685247
  %410 = lshr i128 %408, 51
  %411 = add nuw nsw i128 %410, %399
  %412 = and i128 %408, 2251799813685247
  %413 = lshr i128 %411, 51
  %414 = add nuw nsw i128 %413, %402
  %415 = and i128 %411, 2251799813685247
  %416 = lshr i128 %414, 51
  %417 = add nuw nsw i128 %416, %406
  %418 = and i128 %414, 2251799813685247
  %419 = lshr i128 %417, 51
  %420 = sub nsw i128 0, %419
  %421 = and i128 %420, 19
  %422 = and i128 %417, 2251799813685247
  %423 = add nuw nsw i128 %409, 19
  %424 = add nuw nsw i128 %423, %421
  %425 = lshr i128 %424, 51
  %426 = add nuw nsw i128 %425, %412
  %427 = and i128 %424, 2251799813685247
  %428 = lshr i128 %426, 51
  %429 = add nuw nsw i128 %428, %415
  %430 = and i128 %426, 2251799813685247
  %431 = lshr i128 %429, 51
  %432 = add nuw nsw i128 %431, %418
  %433 = and i128 %429, 2251799813685247
  %434 = lshr i128 %432, 51
  %435 = add nuw nsw i128 %434, %422
  %436 = and i128 %432, 2251799813685247
  %437 = lshr i128 %435, 51
  %438 = sub nsw i128 0, %437
  %439 = and i128 %438, 19
  %440 = add nuw nsw i128 %427, 2251799813685229
  %441 = add nuw nsw i128 %440, %439
  %442 = add nuw nsw i128 %430, 2251799813685247
  %443 = add nuw nsw i128 %433, 2251799813685247
  %444 = add nuw nsw i128 %436, 2251799813685247
  %445 = add nuw nsw i128 %435, 2251799813685247
  %446 = lshr i128 %441, 51
  %447 = add nuw nsw i128 %442, %446
  %448 = and i128 %441, 2251799813685247
  %449 = lshr i128 %447, 51
  %450 = add nuw nsw i128 %443, %449
  %451 = and i128 %447, 2251799813685247
  %452 = lshr i128 %450, 51
  %453 = add nuw nsw i128 %444, %452
  %454 = and i128 %450, 2251799813685247
  %455 = lshr i128 %453, 51
  %456 = add nuw nsw i128 %445, %455
  %457 = and i128 %453, 2251799813685247
  %458 = shl nuw nsw i128 %451, 51
  %459 = or i128 %458, %448
  %460 = trunc i128 %459 to i64
  %461 = trunc i128 %441 to i8
  store i8 %461, i8* %__v1_mypublic, align 1
  %462 = getelementptr i8, i8* %__v1_mypublic, i64 1
  %463 = lshr i64 %460, 8
  %464 = trunc i64 %463 to i8
  store i8 %464, i8* %462, align 1
  %465 = getelementptr i8, i8* %__v1_mypublic, i64 2
  %466 = lshr i64 %460, 16
  %467 = trunc i64 %466 to i8
  store i8 %467, i8* %465, align 1
  %468 = getelementptr i8, i8* %__v1_mypublic, i64 3
  %469 = lshr i64 %460, 24
  %470 = trunc i64 %469 to i8
  store i8 %470, i8* %468, align 1
  %471 = getelementptr i8, i8* %__v1_mypublic, i64 4
  %472 = lshr i64 %460, 32
  %473 = trunc i64 %472 to i8
  store i8 %473, i8* %471, align 1
  %474 = getelementptr i8, i8* %__v1_mypublic, i64 5
  %475 = lshr i64 %460, 40
  %476 = trunc i64 %475 to i8
  store i8 %476, i8* %474, align 1
  %477 = getelementptr i8, i8* %__v1_mypublic, i64 6
  %478 = lshr i64 %460, 48
  %479 = trunc i64 %478 to i8
  store i8 %479, i8* %477, align 1
  %480 = getelementptr i8, i8* %__v1_mypublic, i64 7
  %481 = lshr i64 %460, 56
  %482 = trunc i64 %481 to i8
  store i8 %482, i8* %480, align 1
  %483 = getelementptr i8, i8* %__v1_mypublic, i64 8
  %484 = lshr i128 %451, 13
  %485 = shl nuw nsw i128 %454, 38
  %486 = or i128 %485, %484
  %487 = trunc i128 %486 to i64
  %488 = trunc i128 %484 to i8
  store i8 %488, i8* %483, align 1
  %489 = getelementptr i8, i8* %__v1_mypublic, i64 9
  %490 = lshr i64 %487, 8
  %491 = trunc i64 %490 to i8
  store i8 %491, i8* %489, align 1
  %492 = getelementptr i8, i8* %__v1_mypublic, i64 10
  %493 = lshr i64 %487, 16
  %494 = trunc i64 %493 to i8
  store i8 %494, i8* %492, align 1
  %495 = getelementptr i8, i8* %__v1_mypublic, i64 11
  %496 = lshr i64 %487, 24
  %497 = trunc i64 %496 to i8
  store i8 %497, i8* %495, align 1
  %498 = getelementptr i8, i8* %__v1_mypublic, i64 12
  %499 = lshr i64 %487, 32
  %500 = trunc i64 %499 to i8
  store i8 %500, i8* %498, align 1
  %501 = getelementptr i8, i8* %__v1_mypublic, i64 13
  %502 = lshr i64 %487, 40
  %503 = trunc i64 %502 to i8
  store i8 %503, i8* %501, align 1
  %504 = getelementptr i8, i8* %__v1_mypublic, i64 14
  %505 = lshr i64 %487, 48
  %506 = trunc i64 %505 to i8
  store i8 %506, i8* %504, align 1
  %507 = getelementptr i8, i8* %__v1_mypublic, i64 15
  %508 = lshr i64 %487, 56
  %509 = trunc i64 %508 to i8
  store i8 %509, i8* %507, align 1
  %510 = getelementptr i8, i8* %__v1_mypublic, i64 16
  %511 = lshr i128 %454, 26
  %512 = shl nuw nsw i128 %457, 25
  %513 = or i128 %512, %511
  %514 = trunc i128 %513 to i64
  %515 = trunc i128 %511 to i8
  store i8 %515, i8* %510, align 1
  %516 = getelementptr i8, i8* %__v1_mypublic, i64 17
  %517 = lshr i64 %514, 8
  %518 = trunc i64 %517 to i8
  store i8 %518, i8* %516, align 1
  %519 = getelementptr i8, i8* %__v1_mypublic, i64 18
  %520 = lshr i64 %514, 16
  %521 = trunc i64 %520 to i8
  store i8 %521, i8* %519, align 1
  %522 = getelementptr i8, i8* %__v1_mypublic, i64 19
  %523 = lshr i64 %514, 24
  %524 = trunc i64 %523 to i8
  store i8 %524, i8* %522, align 1
  %525 = getelementptr i8, i8* %__v1_mypublic, i64 20
  %526 = lshr i64 %514, 32
  %527 = trunc i64 %526 to i8
  store i8 %527, i8* %525, align 1
  %528 = getelementptr i8, i8* %__v1_mypublic, i64 21
  %529 = lshr i64 %514, 40
  %530 = trunc i64 %529 to i8
  store i8 %530, i8* %528, align 1
  %531 = getelementptr i8, i8* %__v1_mypublic, i64 22
  %532 = lshr i64 %514, 48
  %533 = trunc i64 %532 to i8
  store i8 %533, i8* %531, align 1
  %534 = getelementptr i8, i8* %__v1_mypublic, i64 23
  %535 = lshr i64 %514, 56
  %536 = trunc i64 %535 to i8
  store i8 %536, i8* %534, align 1
  %537 = getelementptr i8, i8* %__v1_mypublic, i64 24
  %538 = lshr i128 %457, 39
  %539 = shl nuw nsw i128 %456, 12
  %540 = and i128 %539, 9223372036854771712
  %541 = or i128 %540, %538
  %542 = trunc i128 %541 to i64
  %543 = trunc i128 %538 to i8
  store i8 %543, i8* %537, align 1
  %544 = getelementptr i8, i8* %__v1_mypublic, i64 25
  %545 = lshr i64 %542, 8
  %546 = trunc i64 %545 to i8
  store i8 %546, i8* %544, align 1
  %547 = getelementptr i8, i8* %__v1_mypublic, i64 26
  %548 = lshr i64 %542, 16
  %549 = trunc i64 %548 to i8
  store i8 %549, i8* %547, align 1
  %550 = getelementptr i8, i8* %__v1_mypublic, i64 27
  %551 = lshr i64 %542, 24
  %552 = trunc i64 %551 to i8
  store i8 %552, i8* %550, align 1
  %553 = getelementptr i8, i8* %__v1_mypublic, i64 28
  %554 = lshr i64 %542, 32
  %555 = trunc i64 %554 to i8
  store i8 %555, i8* %553, align 1
  %556 = getelementptr i8, i8* %__v1_mypublic, i64 29
  %557 = lshr i64 %542, 40
  %558 = trunc i64 %557 to i8
  store i8 %558, i8* %556, align 1
  %559 = getelementptr i8, i8* %__v1_mypublic, i64 30
  %560 = lshr i64 %542, 48
  %561 = trunc i64 %560 to i8
  store i8 %561, i8* %559, align 1
  %562 = getelementptr i8, i8* %__v1_mypublic, i64 31
  %563 = lshr i64 %542, 56
  %564 = trunc i64 %563 to i8
  store i8 %564, i8* %562, align 1
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

attributes #0 = { nounwind }
attributes #1 = { argmemonly nounwind }
