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
  %__v50_origx1.sroa.3.0..sroa_idx10 = getelementptr i64, i64* %__v45_x, i64 2
  %__v50_origx1.sroa.4.0..sroa_idx11 = getelementptr i64, i64* %__v45_x, i64 3
  %0 = bitcast i64* %__v45_x to <4 x i64>*
  %1 = load <4 x i64>, <4 x i64>* %0, align 8
  %__v50_origx1.sroa.5.0..sroa_idx12 = getelementptr i64, i64* %__v45_x, i64 4
  %__v50_origx1.sroa.5.0.copyload = load i64, i64* %__v50_origx1.sroa.5.0..sroa_idx12, align 8
  %__v51_origxprime2 = alloca [5 x i64], align 8
  %2 = bitcast [5 x i64]* %__v51_origxprime2 to i8*
  %3 = bitcast i64* %__v47_xprime to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %2, i8* %3, i64 40, i32 8, i1 false) #0
  %__v52_zzz3 = alloca [5 x i64], align 8
  %4 = bitcast [5 x i64]* %__v52_zzz3 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull %4, i8 0, i64 40, i32 8, i1 false) #0
  %__v53_xx4 = alloca [5 x i64], align 8
  %5 = bitcast [5 x i64]* %__v53_xx4 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull %5, i8 0, i64 40, i32 8, i1 false) #0
  %__v54_zz5 = alloca [5 x i64], align 8
  %6 = bitcast [5 x i64]* %__v54_zz5 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 40, i32 8, i1 false) #0
  %__v55_xxprime6 = alloca [5 x i64], align 8
  %7 = bitcast [5 x i64]* %__v55_xxprime6 to i8*
  %__v55_xxprime6.sub = getelementptr inbounds [5 x i64], [5 x i64]* %__v55_xxprime6, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 40, i32 8, i1 false) #0
  %__v56_zzprime7 = alloca [5 x i64], align 8
  %__v56_zzprime7.sub = getelementptr inbounds [5 x i64], [5 x i64]* %__v56_zzprime7, i64 0, i64 0
  %8 = bitcast [5 x i64]* %__v56_zzprime7 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 40, i32 8, i1 false) #0
  %__v57_zzzprime8 = alloca [5 x i64], align 8
  %9 = bitcast [5 x i64]* %__v57_zzzprime8 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull %9, i8 0, i64 40, i32 8, i1 false) #0
  %10 = load i64, i64* %__v46_z, align 8
  %11 = extractelement <4 x i64> %1, i32 0
  %12 = add i64 %10, %11
  store i64 %12, i64* %__v45_x, align 8
  %13 = getelementptr i64, i64* %__v46_z, i64 1
  %14 = load i64, i64* %13, align 8
  %15 = extractelement <4 x i64> %1, i32 1
  %16 = add i64 %14, %15
  store i64 %16, i64* %__v50_origx1.sroa.2.0..sroa_idx9, align 8
  %17 = getelementptr i64, i64* %__v46_z, i64 2
  %18 = load i64, i64* %17, align 8
  %19 = extractelement <4 x i64> %1, i32 2
  %20 = add i64 %18, %19
  store i64 %20, i64* %__v50_origx1.sroa.3.0..sroa_idx10, align 8
  %21 = getelementptr i64, i64* %__v46_z, i64 3
  %22 = load i64, i64* %21, align 8
  %23 = extractelement <4 x i64> %1, i32 3
  %24 = add i64 %22, %23
  store i64 %24, i64* %__v50_origx1.sroa.4.0..sroa_idx11, align 8
  %25 = getelementptr i64, i64* %__v46_z, i64 4
  %26 = load i64, i64* %25, align 8
  %27 = add i64 %26, %__v50_origx1.sroa.5.0.copyload
  store i64 %27, i64* %__v50_origx1.sroa.5.0..sroa_idx12, align 8
  %28 = add <4 x i64> %1, <i64 18014398509481832, i64 18014398509481976, i64 18014398509481976, i64 18014398509481976>
  %29 = bitcast i64* %__v46_z to <4 x i64>*
  %30 = load <4 x i64>, <4 x i64>* %29, align 8
  %31 = sub <4 x i64> %28, %30
  %32 = bitcast i64* %__v46_z to <4 x i64>*
  store <4 x i64> %31, <4 x i64>* %32, align 8
  %33 = add i64 %__v50_origx1.sroa.5.0.copyload, 18014398509481976
  %34 = load i64, i64* %25, align 8
  %35 = sub i64 %33, %34
  store i64 %35, i64* %25, align 8
  %36 = load i64, i64* %__v47_xprime, align 8
  %37 = load i64, i64* %__v48_zprime, align 8
  %38 = add i64 %37, %36
  store i64 %38, i64* %__v47_xprime, align 8
  %39 = getelementptr i64, i64* %__v47_xprime, i64 1
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr i64, i64* %__v48_zprime, i64 1
  %42 = load i64, i64* %41, align 8
  %43 = add i64 %42, %40
  store i64 %43, i64* %39, align 8
  %44 = getelementptr i64, i64* %__v47_xprime, i64 2
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr i64, i64* %__v48_zprime, i64 2
  %47 = load i64, i64* %46, align 8
  %48 = add i64 %47, %45
  store i64 %48, i64* %44, align 8
  %49 = getelementptr i64, i64* %__v47_xprime, i64 3
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr i64, i64* %__v48_zprime, i64 3
  %52 = load i64, i64* %51, align 8
  %53 = add i64 %52, %50
  store i64 %53, i64* %49, align 8
  %54 = getelementptr i64, i64* %__v47_xprime, i64 4
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr i64, i64* %__v48_zprime, i64 4
  %57 = load i64, i64* %56, align 8
  %58 = add i64 %57, %55
  store i64 %58, i64* %54, align 8
  %59 = bitcast [5 x i64]* %__v51_origxprime2 to <4 x i64>*
  %60 = load <4 x i64>, <4 x i64>* %59, align 8
  %61 = add <4 x i64> %60, <i64 18014398509481832, i64 18014398509481976, i64 18014398509481976, i64 18014398509481976>
  %62 = bitcast i64* %__v48_zprime to <4 x i64>*
  %63 = load <4 x i64>, <4 x i64>* %62, align 8
  %64 = sub <4 x i64> %61, %63
  %65 = bitcast i64* %__v48_zprime to <4 x i64>*
  store <4 x i64> %64, <4 x i64>* %65, align 8
  %66 = getelementptr inbounds [5 x i64], [5 x i64]* %__v51_origxprime2, i64 0, i64 4
  %67 = load i64, i64* %66, align 8
  %68 = add i64 %67, 18014398509481976
  %69 = load i64, i64* %56, align 8
  %70 = sub i64 %68, %69
  store i64 %70, i64* %56, align 8
  call fastcc void @fmul(i64* nonnull %__v55_xxprime6.sub, i64* %__v47_xprime, i64* %__v46_z)
  call fastcc void @fmul(i64* nonnull %__v56_zzprime7.sub, i64* %__v45_x, i64* %__v48_zprime)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %2, i8* nonnull %7, i64 40, i32 8, i1 false)
  %__v52_zzz3.sub = getelementptr inbounds [5 x i64], [5 x i64]* %__v52_zzz3, i64 0, i64 0
  %__v53_xx4.sub = getelementptr inbounds [5 x i64], [5 x i64]* %__v53_xx4, i64 0, i64 0
  %__v54_zz5.sub = getelementptr inbounds [5 x i64], [5 x i64]* %__v54_zz5, i64 0, i64 0
  %__v57_zzzprime8.sub = getelementptr inbounds [5 x i64], [5 x i64]* %__v57_zzzprime8, i64 0, i64 0
  %71 = bitcast [5 x i64]* %__v55_xxprime6 to <4 x i64>*
  %72 = load <4 x i64>, <4 x i64>* %71, align 8
  %73 = bitcast [5 x i64]* %__v56_zzprime7 to <4 x i64>*
  %74 = load <4 x i64>, <4 x i64>* %73, align 8
  %75 = add <4 x i64> %74, %72
  %76 = bitcast [5 x i64]* %__v55_xxprime6 to <4 x i64>*
  store <4 x i64> %75, <4 x i64>* %76, align 8
  %77 = getelementptr inbounds [5 x i64], [5 x i64]* %__v55_xxprime6, i64 0, i64 4
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds [5 x i64], [5 x i64]* %__v56_zzprime7, i64 0, i64 4
  %80 = load i64, i64* %79, align 8
  %81 = add i64 %80, %78
  store i64 %81, i64* %77, align 8
  %82 = bitcast [5 x i64]* %__v51_origxprime2 to <4 x i64>*
  %83 = load <4 x i64>, <4 x i64>* %82, align 8
  %84 = sub <4 x i64> <i64 18014398509481832, i64 18014398509481976, i64 18014398509481976, i64 18014398509481976>, %74
  %85 = add <4 x i64> %84, %83
  %86 = bitcast [5 x i64]* %__v56_zzprime7 to <4 x i64>*
  store <4 x i64> %85, <4 x i64>* %86, align 8
  %87 = load i64, i64* %66, align 8
  %88 = sub i64 18014398509481976, %80
  %89 = add i64 %88, %87
  store i64 %89, i64* %79, align 8
  call fastcc void @fsquare_times(i64* %__v43_x3, i64* nonnull %__v55_xxprime6.sub, i64 1)
  call fastcc void @fsquare_times(i64* nonnull %__v57_zzzprime8.sub, i64* nonnull %__v56_zzprime7.sub, i64 1)
  call fastcc void @fmul(i64* %__v44_z3, i64* nonnull %__v57_zzzprime8.sub, i64* %__v49_qmqp)
  call fastcc void @fsquare_times(i64* nonnull %__v53_xx4.sub, i64* %__v45_x, i64 1)
  call fastcc void @fsquare_times(i64* nonnull %__v54_zz5.sub, i64* %__v46_z, i64 1)
  call fastcc void @fmul(i64* %__v41_x2, i64* nonnull %__v53_xx4.sub, i64* nonnull %__v54_zz5.sub)
  %90 = bitcast [5 x i64]* %__v53_xx4 to <4 x i64>*
  %91 = load <4 x i64>, <4 x i64>* %90, align 8
  %92 = add <4 x i64> %91, <i64 18014398509481832, i64 18014398509481976, i64 18014398509481976, i64 18014398509481976>
  %93 = bitcast [5 x i64]* %__v54_zz5 to <4 x i64>*
  %94 = load <4 x i64>, <4 x i64>* %93, align 8
  %95 = sub <4 x i64> %92, %94
  %96 = bitcast [5 x i64]* %__v54_zz5 to <4 x i64>*
  store <4 x i64> %95, <4 x i64>* %96, align 8
  %97 = getelementptr inbounds [5 x i64], [5 x i64]* %__v54_zz5, i64 0, i64 4
  %98 = getelementptr inbounds [5 x i64], [5 x i64]* %__v53_xx4, i64 0, i64 4
  %99 = load i64, i64* %98, align 8
  %100 = add i64 %99, 18014398509481976
  %101 = load i64, i64* %97, align 8
  %102 = sub i64 %100, %101
  store i64 %102, i64* %97, align 8
  %103 = extractelement <4 x i64> %95, i32 0
  %104 = zext i64 %103 to i128
  %105 = mul nuw nsw i128 %104, 121665
  %106 = trunc i128 %105 to i64
  %107 = and i64 %106, 2251799813685247
  %108 = extractelement <4 x i64> %95, i32 1
  %109 = zext i64 %108 to i128
  %110 = mul nuw nsw i128 %109, 121665
  %111 = lshr i128 %105, 51
  %112 = add nuw nsw i128 %110, %111
  %113 = getelementptr inbounds [5 x i64], [5 x i64]* %__v52_zzz3, i64 0, i64 1
  %114 = extractelement <4 x i64> %95, i32 2
  %115 = zext i64 %114 to i128
  %116 = mul nuw nsw i128 %115, 121665
  %117 = lshr i128 %112, 51
  %118 = add nuw nsw i128 %116, %117
  %119 = insertelement <2 x i128> undef, i128 %112, i32 0
  %120 = insertelement <2 x i128> %119, i128 %118, i32 1
  %121 = trunc <2 x i128> %120 to <2 x i64>
  %122 = and <2 x i64> %121, <i64 2251799813685247, i64 2251799813685247>
  %123 = extractelement <4 x i64> %95, i32 3
  %124 = zext i64 %123 to i128
  %125 = mul nuw nsw i128 %124, 121665
  %126 = lshr i128 %118, 51
  %127 = add nuw nsw i128 %125, %126
  %128 = getelementptr inbounds [5 x i64], [5 x i64]* %__v52_zzz3, i64 0, i64 3
  %129 = trunc i128 %127 to i64
  %130 = and i64 %129, 2251799813685247
  %131 = zext i64 %102 to i128
  %132 = mul nuw nsw i128 %131, 121665
  %133 = lshr i128 %127, 51
  %134 = add nuw nsw i128 %132, %133
  %135 = getelementptr inbounds [5 x i64], [5 x i64]* %__v52_zzz3, i64 0, i64 4
  %136 = trunc i128 %134 to i64
  %137 = and i64 %136, 2251799813685247
  %138 = lshr i128 %134, 51
  %139 = trunc i128 %138 to i64
  %140 = mul nuw nsw i64 %139, 19
  %141 = extractelement <4 x i64> %91, i32 0
  %142 = add i64 %107, %141
  %143 = add i64 %142, %140
  store i64 %143, i64* %__v52_zzz3.sub, align 8
  %144 = shufflevector <4 x i64> %91, <4 x i64> undef, <2 x i32> <i32 1, i32 2>
  %145 = add <2 x i64> %122, %144
  %146 = bitcast i64* %113 to <2 x i64>*
  store <2 x i64> %145, <2 x i64>* %146, align 8
  %147 = extractelement <4 x i64> %91, i32 3
  %148 = add i64 %130, %147
  store i64 %148, i64* %128, align 8
  %149 = add i64 %137, %99
  store i64 %149, i64* %135, align 8
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
  %__v21_b3.i = alloca [5 x i64], align 8
  %__v22_c4.i = alloca [5 x i64], align 8
  %__v4_bp1 = alloca [5 x i64], align 8
  %__v4_bp1.sub = getelementptr inbounds [5 x i64], [5 x i64]* %__v4_bp1, i64 0, i64 0
  %0 = bitcast [5 x i64]* %__v4_bp1 to i8*
  %1 = getelementptr inbounds [5 x i64], [5 x i64]* %__v4_bp1, i64 0, i64 2
  %2 = bitcast i64* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull %2, i8 0, i64 24, i32 8, i1 false) #0
  %__v5_x2 = alloca [5 x i64], align 8
  %3 = bitcast [5 x i64]* %__v5_x2 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull %3, i8 0, i64 40, i32 8, i1 false) #0
  %__v6_z3 = alloca [5 x i64], align 8
  %4 = bitcast [5 x i64]* %__v6_z3 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull %4, i8 0, i64 40, i32 8, i1 false) #0
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
  %44 = getelementptr i8, i8* %__v3_basepoint, i64 7
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i64
  %47 = shl nuw nsw i64 %46, 8
  %48 = or i64 %47, %41
  %49 = getelementptr i8, i8* %__v3_basepoint, i64 8
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i64
  %52 = shl nuw nsw i64 %51, 16
  %53 = or i64 %48, %52
  %54 = getelementptr i8, i8* %__v3_basepoint, i64 9
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i64
  %57 = shl nuw nsw i64 %56, 24
  %58 = or i64 %53, %57
  %59 = getelementptr i8, i8* %__v3_basepoint, i64 10
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i64
  %62 = shl nuw nsw i64 %61, 32
  %63 = or i64 %58, %62
  %64 = getelementptr i8, i8* %__v3_basepoint, i64 11
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i64
  %67 = shl nuw nsw i64 %66, 40
  %68 = or i64 %63, %67
  %69 = getelementptr i8, i8* %__v3_basepoint, i64 12
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i64
  %72 = shl nuw nsw i64 %71, 48
  %73 = or i64 %68, %72
  %74 = lshr i64 %73, 3
  %75 = getelementptr i8, i8* %__v3_basepoint, i64 13
  %76 = load i8, i8* %75, align 1
  %77 = zext i8 %76 to i64
  %78 = shl nuw nsw i64 %77, 8
  %79 = or i64 %78, %71
  %80 = getelementptr i8, i8* %__v3_basepoint, i64 14
  %81 = load i8, i8* %80, align 1
  %82 = zext i8 %81 to i64
  %83 = shl nuw nsw i64 %82, 16
  %84 = or i64 %79, %83
  %85 = getelementptr i8, i8* %__v3_basepoint, i64 15
  %86 = load i8, i8* %85, align 1
  %87 = zext i8 %86 to i64
  %88 = shl nuw nsw i64 %87, 24
  %89 = or i64 %84, %88
  %90 = getelementptr i8, i8* %__v3_basepoint, i64 16
  %91 = load i8, i8* %90, align 1
  %92 = zext i8 %91 to i64
  %93 = shl nuw nsw i64 %92, 32
  %94 = or i64 %89, %93
  %95 = getelementptr i8, i8* %__v3_basepoint, i64 17
  %96 = load i8, i8* %95, align 1
  %97 = zext i8 %96 to i64
  %98 = shl nuw nsw i64 %97, 40
  %99 = or i64 %94, %98
  %100 = getelementptr i8, i8* %__v3_basepoint, i64 18
  %101 = load i8, i8* %100, align 1
  %102 = zext i8 %101 to i64
  %103 = shl nuw nsw i64 %102, 48
  %104 = or i64 %99, %103
  %105 = getelementptr i8, i8* %__v3_basepoint, i64 19
  %106 = load i8, i8* %105, align 1
  %107 = zext i8 %106 to i64
  %108 = shl nuw i64 %107, 56
  %109 = or i64 %104, %108
  %110 = lshr i64 %109, 6
  %111 = getelementptr i8, i8* %__v3_basepoint, i64 20
  %112 = load i8, i8* %111, align 1
  %113 = zext i8 %112 to i64
  %114 = shl nuw nsw i64 %113, 8
  %115 = or i64 %114, %107
  %116 = getelementptr i8, i8* %__v3_basepoint, i64 21
  %117 = load i8, i8* %116, align 1
  %118 = zext i8 %117 to i64
  %119 = shl nuw nsw i64 %118, 16
  %120 = or i64 %115, %119
  %121 = getelementptr i8, i8* %__v3_basepoint, i64 22
  %122 = load i8, i8* %121, align 1
  %123 = zext i8 %122 to i64
  %124 = shl nuw nsw i64 %123, 24
  %125 = or i64 %120, %124
  %126 = getelementptr i8, i8* %__v3_basepoint, i64 23
  %127 = load i8, i8* %126, align 1
  %128 = zext i8 %127 to i64
  %129 = shl nuw nsw i64 %128, 32
  %130 = or i64 %125, %129
  %131 = getelementptr i8, i8* %__v3_basepoint, i64 24
  %132 = load i8, i8* %131, align 1
  %133 = zext i8 %132 to i64
  %134 = shl nuw nsw i64 %133, 40
  %135 = or i64 %130, %134
  %136 = getelementptr i8, i8* %__v3_basepoint, i64 25
  %137 = load i8, i8* %136, align 1
  %138 = zext i8 %137 to i64
  %139 = shl nuw nsw i64 %138, 48
  %140 = or i64 %135, %139
  %141 = lshr i64 %140, 1
  %142 = insertelement <4 x i64> undef, i64 %43, i32 0
  %143 = insertelement <4 x i64> %142, i64 %74, i32 1
  %144 = insertelement <4 x i64> %143, i64 %110, i32 2
  %145 = insertelement <4 x i64> %144, i64 %141, i32 3
  %146 = and <4 x i64> %145, <i64 2251799813685247, i64 2251799813685247, i64 2251799813685247, i64 2251799813685247>
  %147 = bitcast [5 x i64]* %__v4_bp1 to <4 x i64>*
  store <4 x i64> %146, <4 x i64>* %147, align 8
  %148 = shl nuw nsw i64 %138, 8
  %149 = getelementptr i8, i8* %__v3_basepoint, i64 26
  %150 = load i8, i8* %149, align 1
  %151 = zext i8 %150 to i64
  %152 = shl nuw nsw i64 %151, 16
  %153 = or i64 %152, %148
  %154 = getelementptr i8, i8* %__v3_basepoint, i64 27
  %155 = load i8, i8* %154, align 1
  %156 = zext i8 %155 to i64
  %157 = shl nuw nsw i64 %156, 24
  %158 = or i64 %153, %157
  %159 = getelementptr i8, i8* %__v3_basepoint, i64 28
  %160 = load i8, i8* %159, align 1
  %161 = zext i8 %160 to i64
  %162 = shl nuw nsw i64 %161, 32
  %163 = or i64 %158, %162
  %164 = getelementptr i8, i8* %__v3_basepoint, i64 29
  %165 = load i8, i8* %164, align 1
  %166 = zext i8 %165 to i64
  %167 = shl nuw nsw i64 %166, 40
  %168 = or i64 %163, %167
  %169 = getelementptr i8, i8* %__v3_basepoint, i64 30
  %170 = load i8, i8* %169, align 1
  %171 = zext i8 %170 to i64
  %172 = shl nuw nsw i64 %171, 48
  %173 = or i64 %168, %172
  %174 = getelementptr i8, i8* %__v3_basepoint, i64 31
  %175 = load i8, i8* %174, align 1
  %176 = zext i8 %175 to i64
  %177 = shl nuw i64 %176, 56
  %178 = or i64 %173, %177
  %179 = getelementptr inbounds [5 x i64], [5 x i64]* %__v4_bp1, i64 0, i64 4
  %180 = lshr i64 %178, 12
  %181 = and i64 %180, 2251799813685247
  store i64 %181, i64* %179, align 8
  %182 = bitcast [5 x i64]* %__v19_a1.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %182)
  %183 = bitcast [5 x i64]* %__v20_t02.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %183)
  %184 = bitcast [5 x i64]* %__v21_b3.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %184)
  %185 = bitcast [5 x i64]* %__v22_c4.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %185)
  %186 = bitcast [5 x i64]* %__v31_e5.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %186)
  %187 = bitcast [5 x i64]* %__v32_f6.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %187)
  %188 = bitcast [5 x i64]* %__v33_g7.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %188)
  %189 = bitcast [5 x i64]* %__v34_h8.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %189)
  %__v28_b2.sub.i = getelementptr inbounds [5 x i64], [5 x i64]* %__v20_t02.i, i64 0, i64 0
  %190 = getelementptr inbounds [5 x i64], [5 x i64]* %__v20_t02.i, i64 0, i64 1
  %191 = bitcast i64* %190 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull %191, i8 0, i64 32, i32 8, i1 false) #0
  %__v29_c3.sub.i = getelementptr inbounds [5 x i64], [5 x i64]* %__v21_b3.i, i64 0, i64 0
  %192 = getelementptr inbounds [5 x i64], [5 x i64]* %__v21_b3.i, i64 0, i64 1
  %193 = bitcast i64* %192 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull %193, i8 0, i64 32, i32 8, i1 false) #0
  call void @llvm.memset.p0i8.i64(i8* nonnull %185, i8 0, i64 40, i32 8, i1 false) #0
  call void @llvm.memset.p0i8.i64(i8* nonnull %186, i8 0, i64 40, i32 8, i1 false) #0
  %__v32_f6.sub.i = getelementptr inbounds [5 x i64], [5 x i64]* %__v32_f6.i, i64 0, i64 0
  %194 = getelementptr inbounds [5 x i64], [5 x i64]* %__v32_f6.i, i64 0, i64 1
  %195 = bitcast i64* %194 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull %195, i8 0, i64 32, i32 8, i1 false) #0
  call void @llvm.memset.p0i8.i64(i8* nonnull %188, i8 0, i64 40, i32 8, i1 false) #0
  %__v34_h8.sub.i = getelementptr inbounds [5 x i64], [5 x i64]* %__v34_h8.i, i64 0, i64 0
  %196 = getelementptr inbounds [5 x i64], [5 x i64]* %__v34_h8.i, i64 0, i64 1
  %197 = bitcast i64* %196 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull %197, i8 0, i64 32, i32 8, i1 false) #0
  store i64 1, i64* %__v28_b2.sub.i, align 8
  store i64 1, i64* %__v29_c3.sub.i, align 8
  store i64 1, i64* %__v32_f6.sub.i, align 8
  store i64 1, i64* %__v34_h8.sub.i, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %182, i8* nonnull %0, i64 40, i32 8, i1 false) #0
  %__v27_a1.sub.i = getelementptr inbounds [5 x i64], [5 x i64]* %__v19_a1.i, i64 0, i64 0
  %__v30_d4.sub.i = getelementptr inbounds [5 x i64], [5 x i64]* %__v22_c4.i, i64 0, i64 0
  %__v31_e5.sub.i = getelementptr inbounds [5 x i64], [5 x i64]* %__v31_e5.i, i64 0, i64 0
  %__v33_g7.sub.i = getelementptr inbounds [5 x i64], [5 x i64]* %__v33_g7.i, i64 0, i64 0
  %198 = getelementptr inbounds [5 x i64], [5 x i64]* %__v21_b3.i, i64 0, i64 4
  %199 = getelementptr inbounds [5 x i64], [5 x i64]* %__v19_a1.i, i64 0, i64 4
  %200 = getelementptr inbounds [5 x i64], [5 x i64]* %__v22_c4.i, i64 0, i64 4
  %201 = getelementptr inbounds [5 x i64], [5 x i64]* %__v20_t02.i, i64 0, i64 4
  %202 = getelementptr inbounds [5 x i64], [5 x i64]* %__v33_g7.i, i64 0, i64 4
  %203 = getelementptr inbounds [5 x i64], [5 x i64]* %__v31_e5.i, i64 0, i64 4
  %204 = getelementptr inbounds [5 x i64], [5 x i64]* %__v34_h8.i, i64 0, i64 4
  %205 = getelementptr inbounds [5 x i64], [5 x i64]* %__v32_f6.i, i64 0, i64 4
  %206 = bitcast [5 x i64]* %__v21_b3.i to <4 x i64>*
  %207 = bitcast [5 x i64]* %__v19_a1.i to <4 x i64>*
  %208 = bitcast [5 x i64]* %__v21_b3.i to <4 x i64>*
  %209 = bitcast [5 x i64]* %__v19_a1.i to <4 x i64>*
  %210 = bitcast [5 x i64]* %__v22_c4.i to <4 x i64>*
  %211 = bitcast [5 x i64]* %__v20_t02.i to <4 x i64>*
  %212 = bitcast [5 x i64]* %__v22_c4.i to <4 x i64>*
  %213 = bitcast [5 x i64]* %__v20_t02.i to <4 x i64>*
  %214 = bitcast [5 x i64]* %__v33_g7.i to <4 x i64>*
  %215 = bitcast [5 x i64]* %__v31_e5.i to <4 x i64>*
  %216 = bitcast [5 x i64]* %__v33_g7.i to <4 x i64>*
  %217 = bitcast [5 x i64]* %__v31_e5.i to <4 x i64>*
  %218 = bitcast [5 x i64]* %__v34_h8.i to <4 x i64>*
  %219 = bitcast [5 x i64]* %__v32_f6.i to <4 x i64>*
  %220 = bitcast [5 x i64]* %__v34_h8.i to <4 x i64>*
  %221 = bitcast [5 x i64]* %__v32_f6.i to <4 x i64>*
  %222 = bitcast [5 x i64]* %__v33_g7.i to <4 x i64>*
  %223 = bitcast [5 x i64]* %__v31_e5.i to <4 x i64>*
  %224 = bitcast [5 x i64]* %__v33_g7.i to <4 x i64>*
  %225 = bitcast [5 x i64]* %__v31_e5.i to <4 x i64>*
  %226 = bitcast [5 x i64]* %__v34_h8.i to <4 x i64>*
  %227 = bitcast [5 x i64]* %__v32_f6.i to <4 x i64>*
  %228 = bitcast [5 x i64]* %__v34_h8.i to <4 x i64>*
  %229 = bitcast [5 x i64]* %__v32_f6.i to <4 x i64>*
  %230 = bitcast [5 x i64]* %__v21_b3.i to <4 x i64>*
  %231 = bitcast [5 x i64]* %__v19_a1.i to <4 x i64>*
  %232 = bitcast [5 x i64]* %__v21_b3.i to <4 x i64>*
  %233 = bitcast [5 x i64]* %__v19_a1.i to <4 x i64>*
  %234 = bitcast [5 x i64]* %__v22_c4.i to <4 x i64>*
  %235 = bitcast [5 x i64]* %__v20_t02.i to <4 x i64>*
  %236 = bitcast [5 x i64]* %__v22_c4.i to <4 x i64>*
  %237 = bitcast [5 x i64]* %__v20_t02.i to <4 x i64>*
  br label %238

; <label>:238:                                    ; preds = %246, %entry
  %indvars.iv.i = phi i64 [ 0, %entry ], [ %indvars.iv.next.i, %246 ]
  %239 = sub nuw nsw i64 31, %indvars.iv.i
  %240 = getelementptr [32 x i8], [32 x i8]* %__v8_e5, i64 0, i64 %239
  %241 = load i8, i8* %240, align 1
  br label %242

; <label>:242:                                    ; preds = %309, %238
  %243 = phi i8 [ %241, %238 ], [ %310, %309 ]
  %__v38_j52.i = phi i32 [ 0, %238 ], [ %311, %309 ]
  %244 = and i32 %__v38_j52.i, 1
  %245 = icmp eq i32 %244, 0
  %__m1.i45.i = icmp slt i8 %243, 0
  br i1 %245, label %247, label %278

; <label>:246:                                    ; preds = %309
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond57.i = icmp eq i64 %indvars.iv.next.i, 32
  br i1 %exitcond57.i, label %cmult.exit, label %238

; <label>:247:                                    ; preds = %242
  %248 = load <4 x i64>, <4 x i64>* %206, align 8
  %249 = load <4 x i64>, <4 x i64>* %207, align 8
  %250 = insertelement <4 x i1> undef, i1 %__m1.i45.i, i32 0
  %251 = shufflevector <4 x i1> %250, <4 x i1> undef, <4 x i32> zeroinitializer
  %252 = select <4 x i1> %251, <4 x i64> %249, <4 x i64> %248
  store <4 x i64> %252, <4 x i64>* %208, align 8
  %253 = select <4 x i1> %251, <4 x i64> %248, <4 x i64> %249
  store <4 x i64> %253, <4 x i64>* %209, align 8
  %__v104_x.4.i50.i = load i64, i64* %198, align 8
  %254 = load i64, i64* %199, align 8
  %255 = select i1 %__m1.i45.i, i64 %254, i64 %__v104_x.4.i50.i
  store i64 %255, i64* %198, align 8
  %256 = select i1 %__m1.i45.i, i64 %__v104_x.4.i50.i, i64 %254
  store i64 %256, i64* %199, align 8
  %257 = load <4 x i64>, <4 x i64>* %210, align 8
  %258 = load <4 x i64>, <4 x i64>* %211, align 8
  %259 = select <4 x i1> %251, <4 x i64> %258, <4 x i64> %257
  store <4 x i64> %259, <4 x i64>* %212, align 8
  %260 = select <4 x i1> %251, <4 x i64> %257, <4 x i64> %258
  store <4 x i64> %260, <4 x i64>* %213, align 8
  %__v104_x.4.i44.i = load i64, i64* %200, align 8
  %261 = load i64, i64* %201, align 8
  %262 = select i1 %__m1.i45.i, i64 %261, i64 %__v104_x.4.i44.i
  store i64 %262, i64* %200, align 8
  %263 = select i1 %__m1.i45.i, i64 %__v104_x.4.i44.i, i64 %261
  store i64 %263, i64* %201, align 8
  call fastcc void @fmonty(i64* nonnull %__v33_g7.sub.i, i64* nonnull %__v34_h8.sub.i, i64* nonnull %__v31_e5.sub.i, i64* nonnull %__v32_f6.sub.i, i64* nonnull %__v29_c3.sub.i, i64* nonnull %__v30_d4.sub.i, i64* nonnull %__v27_a1.sub.i, i64* nonnull %__v28_b2.sub.i, i64* nonnull %__v4_bp1.sub) #0
  %264 = load <4 x i64>, <4 x i64>* %214, align 8
  %265 = load <4 x i64>, <4 x i64>* %215, align 8
  %266 = select <4 x i1> %251, <4 x i64> %265, <4 x i64> %264
  store <4 x i64> %266, <4 x i64>* %216, align 8
  %267 = select <4 x i1> %251, <4 x i64> %264, <4 x i64> %265
  store <4 x i64> %267, <4 x i64>* %217, align 8
  %__v104_x.4.i38.i = load i64, i64* %202, align 8
  %268 = load i64, i64* %203, align 8
  %269 = select i1 %__m1.i45.i, i64 %268, i64 %__v104_x.4.i38.i
  store i64 %269, i64* %202, align 8
  %270 = select i1 %__m1.i45.i, i64 %__v104_x.4.i38.i, i64 %268
  store i64 %270, i64* %203, align 8
  %271 = load <4 x i64>, <4 x i64>* %218, align 8
  %272 = load <4 x i64>, <4 x i64>* %219, align 8
  %273 = select <4 x i1> %251, <4 x i64> %272, <4 x i64> %271
  store <4 x i64> %273, <4 x i64>* %220, align 8
  %274 = select <4 x i1> %251, <4 x i64> %271, <4 x i64> %272
  store <4 x i64> %274, <4 x i64>* %221, align 8
  %__v104_x.4.i32.i = load i64, i64* %204, align 8
  %275 = load i64, i64* %205, align 8
  %276 = select i1 %__m1.i45.i, i64 %275, i64 %__v104_x.4.i32.i
  store i64 %276, i64* %204, align 8
  %277 = select i1 %__m1.i45.i, i64 %__v104_x.4.i32.i, i64 %275
  br label %309

; <label>:278:                                    ; preds = %242
  %279 = load <4 x i64>, <4 x i64>* %222, align 8
  %280 = load <4 x i64>, <4 x i64>* %223, align 8
  %281 = insertelement <4 x i1> undef, i1 %__m1.i45.i, i32 0
  %282 = shufflevector <4 x i1> %281, <4 x i1> undef, <4 x i32> zeroinitializer
  %283 = select <4 x i1> %282, <4 x i64> %280, <4 x i64> %279
  store <4 x i64> %283, <4 x i64>* %224, align 8
  %284 = select <4 x i1> %282, <4 x i64> %279, <4 x i64> %280
  store <4 x i64> %284, <4 x i64>* %225, align 8
  %__v104_x.4.i26.i = load i64, i64* %202, align 8
  %285 = load i64, i64* %203, align 8
  %286 = select i1 %__m1.i45.i, i64 %285, i64 %__v104_x.4.i26.i
  store i64 %286, i64* %202, align 8
  %287 = select i1 %__m1.i45.i, i64 %__v104_x.4.i26.i, i64 %285
  store i64 %287, i64* %203, align 8
  %288 = load <4 x i64>, <4 x i64>* %226, align 8
  %289 = load <4 x i64>, <4 x i64>* %227, align 8
  %290 = select <4 x i1> %282, <4 x i64> %289, <4 x i64> %288
  store <4 x i64> %290, <4 x i64>* %228, align 8
  %291 = select <4 x i1> %282, <4 x i64> %288, <4 x i64> %289
  store <4 x i64> %291, <4 x i64>* %229, align 8
  %__v104_x.4.i20.i = load i64, i64* %204, align 8
  %292 = load i64, i64* %205, align 8
  %293 = select i1 %__m1.i45.i, i64 %292, i64 %__v104_x.4.i20.i
  store i64 %293, i64* %204, align 8
  %294 = select i1 %__m1.i45.i, i64 %__v104_x.4.i20.i, i64 %292
  store i64 %294, i64* %205, align 8
  call fastcc void @fmonty(i64* nonnull %__v29_c3.sub.i, i64* nonnull %__v30_d4.sub.i, i64* nonnull %__v27_a1.sub.i, i64* nonnull %__v28_b2.sub.i, i64* nonnull %__v33_g7.sub.i, i64* nonnull %__v34_h8.sub.i, i64* nonnull %__v31_e5.sub.i, i64* nonnull %__v32_f6.sub.i, i64* nonnull %__v4_bp1.sub) #0
  %295 = load <4 x i64>, <4 x i64>* %230, align 8
  %296 = load <4 x i64>, <4 x i64>* %231, align 8
  %297 = select <4 x i1> %282, <4 x i64> %296, <4 x i64> %295
  store <4 x i64> %297, <4 x i64>* %232, align 8
  %298 = select <4 x i1> %282, <4 x i64> %295, <4 x i64> %296
  store <4 x i64> %298, <4 x i64>* %233, align 8
  %__v104_x.4.i14.i = load i64, i64* %198, align 8
  %299 = load i64, i64* %199, align 8
  %300 = select i1 %__m1.i45.i, i64 %299, i64 %__v104_x.4.i14.i
  store i64 %300, i64* %198, align 8
  %301 = select i1 %__m1.i45.i, i64 %__v104_x.4.i14.i, i64 %299
  store i64 %301, i64* %199, align 8
  %302 = load <4 x i64>, <4 x i64>* %234, align 8
  %303 = load <4 x i64>, <4 x i64>* %235, align 8
  %304 = select <4 x i1> %282, <4 x i64> %303, <4 x i64> %302
  store <4 x i64> %304, <4 x i64>* %236, align 8
  %305 = select <4 x i1> %282, <4 x i64> %302, <4 x i64> %303
  store <4 x i64> %305, <4 x i64>* %237, align 8
  %__v104_x.4.i.i = load i64, i64* %200, align 8
  %306 = load i64, i64* %201, align 8
  %307 = select i1 %__m1.i45.i, i64 %306, i64 %__v104_x.4.i.i
  store i64 %307, i64* %200, align 8
  %308 = select i1 %__m1.i45.i, i64 %__v104_x.4.i.i, i64 %306
  br label %309

; <label>:309:                                    ; preds = %278, %247
  %.sink6 = phi i64* [ %201, %278 ], [ %205, %247 ]
  %.sink = phi i64 [ %308, %278 ], [ %277, %247 ]
  store i64 %.sink, i64* %.sink6, align 8
  %310 = shl i8 %243, 1
  %311 = add nuw nsw i32 %__v38_j52.i, 1
  %exitcond.i = icmp eq i32 %311, 8
  br i1 %exitcond.i, label %246, label %242

cmult.exit:                                       ; preds = %246
  %__v5_x2.sub = getelementptr inbounds [5 x i64], [5 x i64]* %__v5_x2, i64 0, i64 0
  %__v6_z3.sub = getelementptr inbounds [5 x i64], [5 x i64]* %__v6_z3, i64 0, i64 0
  %__v7_zmone4.sub = getelementptr inbounds [5 x i64], [5 x i64]* %__v7_zmone4, i64 0, i64 0
  %312 = getelementptr inbounds [5 x i64], [5 x i64]* %__v6_z3, i64 0, i64 1
  %313 = getelementptr inbounds [5 x i64], [5 x i64]* %__v6_z3, i64 0, i64 2
  %314 = bitcast [5 x i64]* %__v21_b3.i to <4 x i64>*
  %315 = load <4 x i64>, <4 x i64>* %314, align 8
  %316 = bitcast [5 x i64]* %__v5_x2 to <4 x i64>*
  store <4 x i64> %315, <4 x i64>* %316, align 8
  %317 = getelementptr inbounds [5 x i64], [5 x i64]* %__v6_z3, i64 0, i64 3
  %318 = bitcast [5 x i64]* %__v22_c4.i to <4 x i64>*
  %319 = load <4 x i64>, <4 x i64>* %318, align 8
  %320 = bitcast [5 x i64]* %__v6_z3 to <4 x i64>*
  store <4 x i64> %319, <4 x i64>* %320, align 8
  %321 = getelementptr inbounds [5 x i64], [5 x i64]* %__v5_x2, i64 0, i64 4
  %322 = load i64, i64* %198, align 8
  store i64 %322, i64* %321, align 8
  %323 = getelementptr inbounds [5 x i64], [5 x i64]* %__v6_z3, i64 0, i64 4
  %324 = load i64, i64* %200, align 8
  store i64 %324, i64* %323, align 8
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %182)
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %183)
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %184)
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %185)
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %186)
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %187)
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %188)
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %189)
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %182)
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %183)
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %184)
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %185)
  call void @llvm.memset.p0i8.i64(i8* nonnull %182, i8 0, i64 40, i32 8, i1 false) #0
  call void @llvm.memset.p0i8.i64(i8* nonnull %183, i8 0, i64 40, i32 8, i1 false) #0
  call void @llvm.memset.p0i8.i64(i8* nonnull %184, i8 0, i64 40, i32 8, i1 false) #0
  call void @llvm.memset.p0i8.i64(i8* nonnull %185, i8 0, i64 40, i32 8, i1 false) #0
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
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %182)
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %183)
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %184)
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %185)
  call fastcc void @fmul(i64* nonnull %__v6_z3.sub, i64* nonnull %__v5_x2.sub, i64* nonnull %__v7_zmone4.sub)
  %325 = load i64, i64* %__v6_z3.sub, align 8
  %326 = zext i64 %325 to i128
  %327 = load i64, i64* %312, align 8
  %328 = zext i64 %327 to i128
  %329 = load i64, i64* %313, align 8
  %330 = zext i64 %329 to i128
  %331 = load i64, i64* %317, align 8
  %332 = zext i64 %331 to i128
  %333 = load i64, i64* %323, align 8
  %334 = zext i64 %333 to i128
  %335 = lshr i128 %326, 51
  %336 = add nuw nsw i128 %335, %328
  %337 = and i128 %326, 2251799813685247
  %338 = lshr i128 %336, 51
  %339 = add nuw nsw i128 %338, %330
  %340 = and i128 %336, 2251799813685247
  %341 = lshr i128 %339, 51
  %342 = add nuw nsw i128 %341, %332
  %343 = and i128 %339, 2251799813685247
  %344 = lshr i128 %342, 51
  %345 = add nuw nsw i128 %344, %334
  %346 = and i128 %342, 2251799813685247
  %347 = lshr i128 %345, 51
  %348 = mul nuw nsw i128 %347, 19
  %349 = add nuw nsw i128 %348, %337
  %350 = and i128 %345, 2251799813685247
  %351 = lshr i128 %349, 51
  %352 = add nuw nsw i128 %351, %340
  %353 = and i128 %349, 2251799813685247
  %354 = lshr i128 %352, 51
  %355 = add nuw nsw i128 %354, %343
  %356 = and i128 %352, 2251799813685247
  %357 = lshr i128 %355, 51
  %358 = add nuw nsw i128 %357, %346
  %359 = and i128 %355, 2251799813685247
  %360 = lshr i128 %358, 51
  %361 = add nuw nsw i128 %360, %350
  %362 = and i128 %358, 2251799813685247
  %363 = lshr i128 %361, 51
  %364 = sub nsw i128 0, %363
  %365 = and i128 %364, 19
  %366 = and i128 %361, 2251799813685247
  %367 = add nuw nsw i128 %353, 19
  %368 = add nuw nsw i128 %367, %365
  %369 = lshr i128 %368, 51
  %370 = add nuw nsw i128 %369, %356
  %371 = and i128 %368, 2251799813685247
  %372 = lshr i128 %370, 51
  %373 = add nuw nsw i128 %372, %359
  %374 = and i128 %370, 2251799813685247
  %375 = lshr i128 %373, 51
  %376 = add nuw nsw i128 %375, %362
  %377 = and i128 %373, 2251799813685247
  %378 = lshr i128 %376, 51
  %379 = add nuw nsw i128 %378, %366
  %380 = and i128 %376, 2251799813685247
  %381 = lshr i128 %379, 51
  %382 = sub nsw i128 0, %381
  %383 = and i128 %382, 19
  %384 = add nuw nsw i128 %371, 2251799813685229
  %385 = add nuw nsw i128 %384, %383
  %386 = add nuw nsw i128 %374, 2251799813685247
  %387 = add nuw nsw i128 %377, 2251799813685247
  %388 = add nuw nsw i128 %380, 2251799813685247
  %389 = add nuw nsw i128 %379, 2251799813685247
  %390 = lshr i128 %385, 51
  %391 = add nuw nsw i128 %386, %390
  %392 = and i128 %385, 2251799813685247
  %393 = lshr i128 %391, 51
  %394 = add nuw nsw i128 %387, %393
  %395 = and i128 %391, 2251799813685247
  %396 = lshr i128 %394, 51
  %397 = add nuw nsw i128 %388, %396
  %398 = and i128 %394, 2251799813685247
  %399 = lshr i128 %397, 51
  %400 = add nuw nsw i128 %389, %399
  %401 = and i128 %397, 2251799813685247
  %402 = shl nuw nsw i128 %395, 51
  %403 = or i128 %402, %392
  %404 = trunc i128 %403 to i64
  %405 = trunc i128 %385 to i8
  store i8 %405, i8* %__v1_mypublic, align 1
  %406 = getelementptr i8, i8* %__v1_mypublic, i64 1
  %407 = lshr i64 %404, 8
  %408 = trunc i64 %407 to i8
  store i8 %408, i8* %406, align 1
  %409 = getelementptr i8, i8* %__v1_mypublic, i64 2
  %410 = lshr i64 %404, 16
  %411 = trunc i64 %410 to i8
  store i8 %411, i8* %409, align 1
  %412 = getelementptr i8, i8* %__v1_mypublic, i64 3
  %413 = lshr i64 %404, 24
  %414 = trunc i64 %413 to i8
  store i8 %414, i8* %412, align 1
  %415 = getelementptr i8, i8* %__v1_mypublic, i64 4
  %416 = lshr i64 %404, 32
  %417 = trunc i64 %416 to i8
  store i8 %417, i8* %415, align 1
  %418 = getelementptr i8, i8* %__v1_mypublic, i64 5
  %419 = lshr i64 %404, 40
  %420 = trunc i64 %419 to i8
  store i8 %420, i8* %418, align 1
  %421 = getelementptr i8, i8* %__v1_mypublic, i64 6
  %422 = lshr i64 %404, 48
  %423 = trunc i64 %422 to i8
  store i8 %423, i8* %421, align 1
  %424 = getelementptr i8, i8* %__v1_mypublic, i64 7
  %425 = lshr i64 %404, 56
  %426 = trunc i64 %425 to i8
  store i8 %426, i8* %424, align 1
  %427 = getelementptr i8, i8* %__v1_mypublic, i64 8
  %428 = lshr i128 %395, 13
  %429 = shl nuw nsw i128 %398, 38
  %430 = or i128 %429, %428
  %431 = trunc i128 %430 to i64
  %432 = trunc i128 %428 to i8
  store i8 %432, i8* %427, align 1
  %433 = getelementptr i8, i8* %__v1_mypublic, i64 9
  %434 = lshr i64 %431, 8
  %435 = trunc i64 %434 to i8
  store i8 %435, i8* %433, align 1
  %436 = getelementptr i8, i8* %__v1_mypublic, i64 10
  %437 = lshr i64 %431, 16
  %438 = trunc i64 %437 to i8
  store i8 %438, i8* %436, align 1
  %439 = getelementptr i8, i8* %__v1_mypublic, i64 11
  %440 = lshr i64 %431, 24
  %441 = trunc i64 %440 to i8
  store i8 %441, i8* %439, align 1
  %442 = getelementptr i8, i8* %__v1_mypublic, i64 12
  %443 = lshr i64 %431, 32
  %444 = trunc i64 %443 to i8
  store i8 %444, i8* %442, align 1
  %445 = getelementptr i8, i8* %__v1_mypublic, i64 13
  %446 = lshr i64 %431, 40
  %447 = trunc i64 %446 to i8
  store i8 %447, i8* %445, align 1
  %448 = getelementptr i8, i8* %__v1_mypublic, i64 14
  %449 = lshr i64 %431, 48
  %450 = trunc i64 %449 to i8
  store i8 %450, i8* %448, align 1
  %451 = getelementptr i8, i8* %__v1_mypublic, i64 15
  %452 = lshr i64 %431, 56
  %453 = trunc i64 %452 to i8
  store i8 %453, i8* %451, align 1
  %454 = getelementptr i8, i8* %__v1_mypublic, i64 16
  %455 = lshr i128 %398, 26
  %456 = shl nuw nsw i128 %401, 25
  %457 = or i128 %456, %455
  %458 = trunc i128 %457 to i64
  %459 = trunc i128 %455 to i8
  store i8 %459, i8* %454, align 1
  %460 = getelementptr i8, i8* %__v1_mypublic, i64 17
  %461 = lshr i64 %458, 8
  %462 = trunc i64 %461 to i8
  store i8 %462, i8* %460, align 1
  %463 = getelementptr i8, i8* %__v1_mypublic, i64 18
  %464 = lshr i64 %458, 16
  %465 = trunc i64 %464 to i8
  store i8 %465, i8* %463, align 1
  %466 = getelementptr i8, i8* %__v1_mypublic, i64 19
  %467 = lshr i64 %458, 24
  %468 = trunc i64 %467 to i8
  store i8 %468, i8* %466, align 1
  %469 = getelementptr i8, i8* %__v1_mypublic, i64 20
  %470 = lshr i64 %458, 32
  %471 = trunc i64 %470 to i8
  store i8 %471, i8* %469, align 1
  %472 = getelementptr i8, i8* %__v1_mypublic, i64 21
  %473 = lshr i64 %458, 40
  %474 = trunc i64 %473 to i8
  store i8 %474, i8* %472, align 1
  %475 = getelementptr i8, i8* %__v1_mypublic, i64 22
  %476 = lshr i64 %458, 48
  %477 = trunc i64 %476 to i8
  store i8 %477, i8* %475, align 1
  %478 = getelementptr i8, i8* %__v1_mypublic, i64 23
  %479 = lshr i64 %458, 56
  %480 = trunc i64 %479 to i8
  store i8 %480, i8* %478, align 1
  %481 = getelementptr i8, i8* %__v1_mypublic, i64 24
  %482 = lshr i128 %401, 39
  %483 = shl nuw nsw i128 %400, 12
  %484 = and i128 %483, 9223372036854771712
  %485 = or i128 %484, %482
  %486 = trunc i128 %485 to i64
  %487 = trunc i128 %482 to i8
  store i8 %487, i8* %481, align 1
  %488 = getelementptr i8, i8* %__v1_mypublic, i64 25
  %489 = lshr i64 %486, 8
  %490 = trunc i64 %489 to i8
  store i8 %490, i8* %488, align 1
  %491 = getelementptr i8, i8* %__v1_mypublic, i64 26
  %492 = lshr i64 %486, 16
  %493 = trunc i64 %492 to i8
  store i8 %493, i8* %491, align 1
  %494 = getelementptr i8, i8* %__v1_mypublic, i64 27
  %495 = lshr i64 %486, 24
  %496 = trunc i64 %495 to i8
  store i8 %496, i8* %494, align 1
  %497 = getelementptr i8, i8* %__v1_mypublic, i64 28
  %498 = lshr i64 %486, 32
  %499 = trunc i64 %498 to i8
  store i8 %499, i8* %497, align 1
  %500 = getelementptr i8, i8* %__v1_mypublic, i64 29
  %501 = lshr i64 %486, 40
  %502 = trunc i64 %501 to i8
  store i8 %502, i8* %500, align 1
  %503 = getelementptr i8, i8* %__v1_mypublic, i64 30
  %504 = lshr i64 %486, 48
  %505 = trunc i64 %504 to i8
  store i8 %505, i8* %503, align 1
  %506 = getelementptr i8, i8* %__v1_mypublic, i64 31
  %507 = lshr i64 %486, 56
  %508 = trunc i64 %507 to i8
  store i8 %508, i8* %506, align 1
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

attributes #0 = { nounwind }
attributes #1 = { argmemonly nounwind }
