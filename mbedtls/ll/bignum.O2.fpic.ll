; ModuleID = './bignum.O2.fpic.bc'
source_filename = "Module"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind
define internal fastcc void @_mpi_sub_hlp(i64 %__v58_n, i64* nocapture readonly %__v59_s, i64* nocapture %__v60_d, i64 %__v91___v60_d_len, i1 %__m35) unnamed_addr #0 {
entry:
  %0 = icmp eq i64 %__v58_n, 0
  br i1 %0, label %._crit_edge8, label %.lr.ph7.preheader

.lr.ph7.preheader:                                ; preds = %entry
  br label %.lr.ph7

.lr.ph7:                                          ; preds = %.lr.ph7.preheader, %.lr.ph7
  %__v63_i6 = phi i64 [ %19, %.lr.ph7 ], [ 0, %.lr.ph7.preheader ]
  %__v62_z.05 = phi i64 [ %5, %.lr.ph7 ], [ 0, %.lr.ph7.preheader ]
  %__v61_c.04 = phi i64 [ %14, %.lr.ph7 ], [ 0, %.lr.ph7.preheader ]
  %1 = getelementptr i64, i64* %__v60_d, i64 %__v63_i6
  %2 = load i64, i64* %1, align 8
  %3 = icmp ult i64 %2, %__v61_c.04
  %4 = tail call i64 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %3, i64 1, i64 0) #0
  %5 = tail call i64 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m35, i64 %4, i64 %__v62_z.05) #0
  %6 = load i64, i64* %1, align 8
  %7 = sub i64 %6, %__v61_c.04
  %8 = tail call i64 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m35, i64 %7, i64 %6) #0
  store i64 %8, i64* %1, align 8
  %9 = getelementptr i64, i64* %__v59_s, i64 %__v63_i6
  %10 = load i64, i64* %9, align 8
  %11 = icmp ult i64 %8, %10
  %12 = tail call i64 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %11, i64 1, i64 0) #0
  %13 = add i64 %12, %5
  %14 = tail call i64 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m35, i64 %13, i64 %__v61_c.04) #0
  %15 = load i64, i64* %1, align 8
  %16 = load i64, i64* %9, align 8
  %17 = sub i64 %15, %16
  %18 = tail call i64 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m35, i64 %17, i64 %15) #0
  store i64 %18, i64* %1, align 8
  %19 = add nuw i64 %__v63_i6, 1
  %exitcond11 = icmp eq i64 %19, %__v58_n
  br i1 %exitcond11, label %._crit_edge8, label %.lr.ph7

._crit_edge8:                                     ; preds = %.lr.ph7, %entry
  %__v61_c.0.lcssa = phi i64 [ 0, %entry ], [ %14, %.lr.ph7 ]
  %__v62_z.0.lcssa = phi i64 [ 0, %entry ], [ %5, %.lr.ph7 ]
  %20 = icmp ult i64 %__v58_n, %__v91___v60_d_len
  br i1 %20, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %._crit_edge8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %__v64_i3 = phi i64 [ %30, %.lr.ph ], [ %__v58_n, %.lr.ph.preheader ]
  %__v62_z.12 = phi i64 [ %25, %.lr.ph ], [ %__v62_z.0.lcssa, %.lr.ph.preheader ]
  %__v61_c.11 = phi i64 [ %29, %.lr.ph ], [ %__v61_c.0.lcssa, %.lr.ph.preheader ]
  %21 = getelementptr i64, i64* %__v60_d, i64 %__v64_i3
  %22 = load i64, i64* %21, align 8
  %23 = icmp ult i64 %22, %__v61_c.11
  %24 = tail call i64 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %23, i64 1, i64 0) #0
  %25 = tail call i64 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m35, i64 %24, i64 %__v62_z.12) #0
  %26 = load i64, i64* %21, align 8
  %27 = sub i64 %26, %__v61_c.11
  %28 = tail call i64 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m35, i64 %27, i64 %26) #0
  store i64 %28, i64* %21, align 8
  %29 = tail call i64 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m35, i64 %25, i64 %__v61_c.11) #0
  %30 = add nuw i64 %__v64_i3, 1
  %exitcond = icmp eq i64 %30, %__v91___v60_d_len
  br i1 %exitcond, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %._crit_edge8
  %31 = tail call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m35, i32 0, i32 1) #0
  ret void
}

; Function Attrs: nounwind
define internal fastcc void @_mpi_montmul(i64* nocapture %__v25_A_p, i64 %__v82___v25_A_p_len, i64* nocapture readonly %__v26_B_p, i64 %__v83___v26_B_p_len, i64* nocapture readonly %__v27_N_p, i64 %__v30_n, i64 %__v28_mm, i64* nocapture %__v29_T_p, i64 %__v85___v29_T_p_len) unnamed_addr #0 {
entry:
  %0 = icmp ult i64 %__v83___v26_B_p_len, %__v30_n
  %__v31_m = select i1 %0, i64 %__v83___v26_B_p_len, i64 %__v30_n
  %1 = icmp eq i64 %__v85___v29_T_p_len, 0
  br i1 %1, label %._crit_edge27, label %.lr.ph26

.lr.ph26:                                         ; preds = %entry
  %__v29_T_p36 = bitcast i64* %__v29_T_p to i8*
  %2 = shl i64 %__v85___v29_T_p_len, 3
  call void @llvm.memset.p0i8.i64(i8* %__v29_T_p36, i8 0, i64 %2, i32 8, i1 false)
  br label %._crit_edge27

._crit_edge27:                                    ; preds = %.lr.ph26, %entry
  %3 = icmp eq i64 %__v30_n, 0
  br i1 %3, label %.lr.ph, label %.lr.ph23

.lr.ph23:                                         ; preds = %._crit_edge27
  %4 = icmp eq i64 %__v31_m, 0
  %5 = add i64 %__v30_n, 1
  br label %6

; <label>:6:                                      ; preds = %_mpi_mul_hlp.exit12, %.lr.ph23
  %__v33_i21 = phi i64 [ 0, %.lr.ph23 ], [ %64, %_mpi_mul_hlp.exit12 ]
  %7 = getelementptr i64, i64* %__v25_A_p, i64 %__v33_i21
  %__v34_u0 = load i64, i64* %7, align 8
  %8 = getelementptr i64, i64* %__v29_T_p, i64 %__v33_i21
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* %__v26_B_p, align 8
  %11 = mul i64 %10, %__v34_u0
  %12 = add i64 %11, %9
  %__v35_u1 = mul i64 %12, %__v28_mm
  %__v126_lexpr = sub i64 %__v85___v29_T_p_len, %__v33_i21
  br i1 %4, label %._crit_edge6.i, label %.lr.ph5.i

.lr.ph5.i:                                        ; preds = %6
  %13 = zext i64 %__v34_u0 to i128
  br label %14

; <label>:14:                                     ; preds = %._crit_edge37, %.lr.ph5.i
  %15 = phi i64 [ %10, %.lr.ph5.i ], [ %.pre, %._crit_edge37 ]
  %__v42_i4.i = phi i64 [ 0, %.lr.ph5.i ], [ %30, %._crit_edge37 ]
  %__v41_c.03.i = phi i64 [ 0, %.lr.ph5.i ], [ %29, %._crit_edge37 ]
  %16 = zext i64 %15 to i128
  %__v43_r.i = mul nuw i128 %16, %13
  %17 = trunc i128 %__v43_r.i to i64
  %18 = lshr i128 %__v43_r.i, 64
  %19 = trunc i128 %18 to i64
  %20 = add i64 %__v41_c.03.i, %17
  %21 = icmp ult i64 %20, %__v41_c.03.i
  %22 = tail call i64 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %21, i64 1, i64 0) #0
  %23 = getelementptr i64, i64* %8, i64 %__v42_i4.i
  %24 = load i64, i64* %23, align 8
  %25 = add i64 %20, %24
  %26 = icmp ult i64 %25, %24
  %27 = tail call i64 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %26, i64 1, i64 0) #0
  %28 = add i64 %27, %22
  %29 = add i64 %28, %19
  store i64 %25, i64* %23, align 8
  %30 = add nuw i64 %__v42_i4.i, 1
  %exitcond7.i = icmp eq i64 %30, %__v31_m
  br i1 %exitcond7.i, label %._crit_edge6.i, label %._crit_edge37

._crit_edge37:                                    ; preds = %14
  %.phi.trans.insert = getelementptr i64, i64* %__v26_B_p, i64 %30
  %.pre = load i64, i64* %.phi.trans.insert, align 8
  br label %14

._crit_edge6.i:                                   ; preds = %14, %6
  %__v41_c.0.lcssa.i = phi i64 [ 0, %6 ], [ %29, %14 ]
  %31 = icmp ult i64 %__v31_m, %__v126_lexpr
  br i1 %31, label %.lr.ph.i.preheader, label %.lr.ph5.i1

.lr.ph.i.preheader:                               ; preds = %._crit_edge6.i
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %__v46_i2.i = phi i64 [ %37, %.lr.ph.i ], [ %__v31_m, %.lr.ph.i.preheader ]
  %__v41_c.11.i = phi i64 [ %36, %.lr.ph.i ], [ %__v41_c.0.lcssa.i, %.lr.ph.i.preheader ]
  %32 = getelementptr i64, i64* %8, i64 %__v46_i2.i
  %33 = load i64, i64* %32, align 8
  %34 = add i64 %33, %__v41_c.11.i
  store i64 %34, i64* %32, align 8
  %35 = icmp ult i64 %34, %__v41_c.11.i
  %36 = tail call i64 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %35, i64 1, i64 0) #0
  %37 = add nuw i64 %__v46_i2.i, 1
  %exitcond.i = icmp eq i64 %37, %__v126_lexpr
  br i1 %exitcond.i, label %.lr.ph5.i1, label %.lr.ph.i

.lr.ph5.i1:                                       ; preds = %.lr.ph.i, %._crit_edge6.i
  %38 = zext i64 %__v35_u1 to i128
  br label %39

; <label>:39:                                     ; preds = %39, %.lr.ph5.i1
  %__v42_i4.i2 = phi i64 [ 0, %.lr.ph5.i1 ], [ %56, %39 ]
  %__v41_c.03.i3 = phi i64 [ 0, %.lr.ph5.i1 ], [ %55, %39 ]
  %40 = getelementptr i64, i64* %__v27_N_p, i64 %__v42_i4.i2
  %41 = load i64, i64* %40, align 8
  %42 = zext i64 %41 to i128
  %__v43_r.i4 = mul nuw i128 %42, %38
  %43 = trunc i128 %__v43_r.i4 to i64
  %44 = lshr i128 %__v43_r.i4, 64
  %45 = trunc i128 %44 to i64
  %46 = add i64 %__v41_c.03.i3, %43
  %47 = icmp ult i64 %46, %__v41_c.03.i3
  %48 = tail call i64 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %47, i64 1, i64 0) #0
  %49 = getelementptr i64, i64* %8, i64 %__v42_i4.i2
  %50 = load i64, i64* %49, align 8
  %51 = add i64 %46, %50
  %52 = icmp ult i64 %51, %50
  %53 = tail call i64 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %52, i64 1, i64 0) #0
  %54 = add i64 %53, %48
  %55 = add i64 %54, %45
  store i64 %51, i64* %49, align 8
  %56 = add nuw i64 %__v42_i4.i2, 1
  %exitcond7.i5 = icmp eq i64 %56, %__v30_n
  br i1 %exitcond7.i5, label %._crit_edge6.i7, label %39

._crit_edge6.i7:                                  ; preds = %39
  %57 = icmp ugt i64 %__v126_lexpr, %__v30_n
  br i1 %57, label %.lr.ph.i8.preheader, label %_mpi_mul_hlp.exit12

.lr.ph.i8.preheader:                              ; preds = %._crit_edge6.i7
  br label %.lr.ph.i8

.lr.ph.i8:                                        ; preds = %.lr.ph.i8.preheader, %.lr.ph.i8
  %__v46_i2.i9 = phi i64 [ %63, %.lr.ph.i8 ], [ %__v30_n, %.lr.ph.i8.preheader ]
  %__v41_c.11.i10 = phi i64 [ %62, %.lr.ph.i8 ], [ %55, %.lr.ph.i8.preheader ]
  %58 = getelementptr i64, i64* %8, i64 %__v46_i2.i9
  %59 = load i64, i64* %58, align 8
  %60 = add i64 %59, %__v41_c.11.i10
  store i64 %60, i64* %58, align 8
  %61 = icmp ult i64 %60, %__v41_c.11.i10
  %62 = tail call i64 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %61, i64 1, i64 0) #0
  %63 = add nuw i64 %__v46_i2.i9, 1
  %exitcond.i11 = icmp eq i64 %63, %__v126_lexpr
  br i1 %exitcond.i11, label %_mpi_mul_hlp.exit12, label %.lr.ph.i8

_mpi_mul_hlp.exit12:                              ; preds = %.lr.ph.i8, %._crit_edge6.i7
  store i64 %__v34_u0, i64* %8, align 8
  %64 = add nuw i64 %__v33_i21, 1
  %__v129_lexpr = add i64 %5, %64
  %65 = getelementptr i64, i64* %__v29_T_p, i64 %__v129_lexpr
  store i64 0, i64* %65, align 8
  %exitcond34 = icmp eq i64 %64, %__v30_n
  br i1 %exitcond34, label %._crit_edge24, label %6

._crit_edge24:                                    ; preds = %_mpi_mul_hlp.exit12
  %66 = icmp eq i64 %5, 0
  br i1 %66, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %._crit_edge27, %._crit_edge24
  %.pre-phi39 = phi i64 [ %5, %._crit_edge24 ], [ 1, %._crit_edge27 ]
  %min.iters.check = icmp ult i64 %.pre-phi39, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %scevgep = getelementptr i64, i64* %__v25_A_p, i64 %.pre-phi39
  %scevgep52 = getelementptr i64, i64* %__v29_T_p, i64 %__v30_n
  %67 = add i64 %.pre-phi39, %__v30_n
  %scevgep54 = getelementptr i64, i64* %__v29_T_p, i64 %67
  %bound0 = icmp ugt i64* %scevgep54, %__v25_A_p
  %bound1 = icmp ult i64* %scevgep52, %scevgep
  %memcheck.conflict = and i1 %bound0, %bound1
  br i1 %memcheck.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %.pre-phi39, -4
  %68 = add i64 %n.vec, -4
  %69 = lshr exact i64 %68, 2
  %70 = add nuw nsw i64 %69, 1
  %xtraiter63 = and i64 %70, 3
  %71 = icmp ult i64 %68, 12
  br i1 %71, label %middle.block.unr-lcssa, label %vector.ph.new

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = sub nsw i64 %70, %xtraiter63
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.3, %vector.body ]
  %niter = phi i64 [ %unroll_iter, %vector.ph.new ], [ %niter.nsub.3, %vector.body ]
  %72 = add i64 %index, %__v30_n
  %73 = getelementptr i64, i64* %__v25_A_p, i64 %index
  %74 = getelementptr i64, i64* %__v29_T_p, i64 %72
  %75 = bitcast i64* %74 to <2 x i64>*
  %wide.load = load <2 x i64>, <2 x i64>* %75, align 8, !alias.scope !0
  %76 = getelementptr i64, i64* %74, i64 2
  %77 = bitcast i64* %76 to <2 x i64>*
  %wide.load57 = load <2 x i64>, <2 x i64>* %77, align 8, !alias.scope !0
  %78 = bitcast i64* %73 to <2 x i64>*
  store <2 x i64> %wide.load, <2 x i64>* %78, align 8, !alias.scope !3, !noalias !0
  %79 = getelementptr i64, i64* %73, i64 2
  %80 = bitcast i64* %79 to <2 x i64>*
  store <2 x i64> %wide.load57, <2 x i64>* %80, align 8, !alias.scope !3, !noalias !0
  %index.next = or i64 %index, 4
  %81 = add i64 %index.next, %__v30_n
  %82 = getelementptr i64, i64* %__v25_A_p, i64 %index.next
  %83 = getelementptr i64, i64* %__v29_T_p, i64 %81
  %84 = bitcast i64* %83 to <2 x i64>*
  %wide.load.1 = load <2 x i64>, <2 x i64>* %84, align 8, !alias.scope !0
  %85 = getelementptr i64, i64* %83, i64 2
  %86 = bitcast i64* %85 to <2 x i64>*
  %wide.load57.1 = load <2 x i64>, <2 x i64>* %86, align 8, !alias.scope !0
  %87 = bitcast i64* %82 to <2 x i64>*
  store <2 x i64> %wide.load.1, <2 x i64>* %87, align 8, !alias.scope !3, !noalias !0
  %88 = getelementptr i64, i64* %82, i64 2
  %89 = bitcast i64* %88 to <2 x i64>*
  store <2 x i64> %wide.load57.1, <2 x i64>* %89, align 8, !alias.scope !3, !noalias !0
  %index.next.1 = or i64 %index, 8
  %90 = add i64 %index.next.1, %__v30_n
  %91 = getelementptr i64, i64* %__v25_A_p, i64 %index.next.1
  %92 = getelementptr i64, i64* %__v29_T_p, i64 %90
  %93 = bitcast i64* %92 to <2 x i64>*
  %wide.load.2 = load <2 x i64>, <2 x i64>* %93, align 8, !alias.scope !0
  %94 = getelementptr i64, i64* %92, i64 2
  %95 = bitcast i64* %94 to <2 x i64>*
  %wide.load57.2 = load <2 x i64>, <2 x i64>* %95, align 8, !alias.scope !0
  %96 = bitcast i64* %91 to <2 x i64>*
  store <2 x i64> %wide.load.2, <2 x i64>* %96, align 8, !alias.scope !3, !noalias !0
  %97 = getelementptr i64, i64* %91, i64 2
  %98 = bitcast i64* %97 to <2 x i64>*
  store <2 x i64> %wide.load57.2, <2 x i64>* %98, align 8, !alias.scope !3, !noalias !0
  %index.next.2 = or i64 %index, 12
  %99 = add i64 %index.next.2, %__v30_n
  %100 = getelementptr i64, i64* %__v25_A_p, i64 %index.next.2
  %101 = getelementptr i64, i64* %__v29_T_p, i64 %99
  %102 = bitcast i64* %101 to <2 x i64>*
  %wide.load.3 = load <2 x i64>, <2 x i64>* %102, align 8, !alias.scope !0
  %103 = getelementptr i64, i64* %101, i64 2
  %104 = bitcast i64* %103 to <2 x i64>*
  %wide.load57.3 = load <2 x i64>, <2 x i64>* %104, align 8, !alias.scope !0
  %105 = bitcast i64* %100 to <2 x i64>*
  store <2 x i64> %wide.load.3, <2 x i64>* %105, align 8, !alias.scope !3, !noalias !0
  %106 = getelementptr i64, i64* %100, i64 2
  %107 = bitcast i64* %106 to <2 x i64>*
  store <2 x i64> %wide.load57.3, <2 x i64>* %107, align 8, !alias.scope !3, !noalias !0
  %index.next.3 = add i64 %index, 16
  %niter.nsub.3 = add i64 %niter, -4
  %niter.ncmp.3 = icmp eq i64 %niter.nsub.3, 0
  br i1 %niter.ncmp.3, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !5

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body ]
  %lcmp.mod64 = icmp eq i64 %xtraiter63, 0
  br i1 %lcmp.mod64, label %middle.block, label %vector.body.epil.preheader

vector.body.epil.preheader:                       ; preds = %middle.block.unr-lcssa
  br label %vector.body.epil

vector.body.epil:                                 ; preds = %vector.body.epil, %vector.body.epil.preheader
  %index.epil = phi i64 [ %index.unr, %vector.body.epil.preheader ], [ %index.next.epil, %vector.body.epil ]
  %epil.iter = phi i64 [ %xtraiter63, %vector.body.epil.preheader ], [ %epil.iter.sub, %vector.body.epil ]
  %108 = add i64 %index.epil, %__v30_n
  %109 = getelementptr i64, i64* %__v25_A_p, i64 %index.epil
  %110 = getelementptr i64, i64* %__v29_T_p, i64 %108
  %111 = bitcast i64* %110 to <2 x i64>*
  %wide.load.epil = load <2 x i64>, <2 x i64>* %111, align 8, !alias.scope !0
  %112 = getelementptr i64, i64* %110, i64 2
  %113 = bitcast i64* %112 to <2 x i64>*
  %wide.load57.epil = load <2 x i64>, <2 x i64>* %113, align 8, !alias.scope !0
  %114 = bitcast i64* %109 to <2 x i64>*
  store <2 x i64> %wide.load.epil, <2 x i64>* %114, align 8, !alias.scope !3, !noalias !0
  %115 = getelementptr i64, i64* %109, i64 2
  %116 = bitcast i64* %115 to <2 x i64>*
  store <2 x i64> %wide.load57.epil, <2 x i64>* %116, align 8, !alias.scope !3, !noalias !0
  %index.next.epil = add i64 %index.epil, 4
  %epil.iter.sub = add i64 %epil.iter, -1
  %epil.iter.cmp = icmp eq i64 %epil.iter.sub, 0
  br i1 %epil.iter.cmp, label %middle.block, label %vector.body.epil, !llvm.loop !7

middle.block:                                     ; preds = %vector.body.epil, %middle.block.unr-lcssa
  %cmp.n = icmp eq i64 %.pre-phi39, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %middle.block, %vector.memcheck, %.lr.ph
  %__v36_i20.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %117 = add i64 %.pre-phi39, -1
  %118 = sub i64 %117, %__v36_i20.ph
  %xtraiter = and i64 %.pre-phi39, 3
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod, label %scalar.ph.prol.loopexit, label %scalar.ph.prol.preheader

scalar.ph.prol.preheader:                         ; preds = %scalar.ph.preheader
  br label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.prol, %scalar.ph.prol.preheader
  %__v36_i20.prol = phi i64 [ %122, %scalar.ph.prol ], [ %__v36_i20.ph, %scalar.ph.prol.preheader ]
  %prol.iter = phi i64 [ %prol.iter.sub, %scalar.ph.prol ], [ %xtraiter, %scalar.ph.prol.preheader ]
  %__v130_lexpr.prol = add i64 %__v36_i20.prol, %__v30_n
  %119 = getelementptr i64, i64* %__v25_A_p, i64 %__v36_i20.prol
  %120 = getelementptr i64, i64* %__v29_T_p, i64 %__v130_lexpr.prol
  %121 = load i64, i64* %120, align 8
  store i64 %121, i64* %119, align 8
  %122 = add nuw i64 %__v36_i20.prol, 1
  %prol.iter.sub = add i64 %prol.iter, -1
  %prol.iter.cmp = icmp eq i64 %prol.iter.sub, 0
  br i1 %prol.iter.cmp, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !9

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %__v36_i20.unr = phi i64 [ %__v36_i20.ph, %scalar.ph.preheader ], [ %122, %scalar.ph.prol ]
  %123 = icmp ult i64 %118, 3
  br i1 %123, label %._crit_edge, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %__v36_i20 = phi i64 [ %__v36_i20.unr, %scalar.ph.preheader.new ], [ %139, %scalar.ph ]
  %__v130_lexpr = add i64 %__v36_i20, %__v30_n
  %124 = getelementptr i64, i64* %__v25_A_p, i64 %__v36_i20
  %125 = getelementptr i64, i64* %__v29_T_p, i64 %__v130_lexpr
  %126 = load i64, i64* %125, align 8
  store i64 %126, i64* %124, align 8
  %127 = add nuw i64 %__v36_i20, 1
  %__v130_lexpr.1 = add i64 %127, %__v30_n
  %128 = getelementptr i64, i64* %__v25_A_p, i64 %127
  %129 = getelementptr i64, i64* %__v29_T_p, i64 %__v130_lexpr.1
  %130 = load i64, i64* %129, align 8
  store i64 %130, i64* %128, align 8
  %131 = add i64 %__v36_i20, 2
  %__v130_lexpr.2 = add i64 %131, %__v30_n
  %132 = getelementptr i64, i64* %__v25_A_p, i64 %131
  %133 = getelementptr i64, i64* %__v29_T_p, i64 %__v130_lexpr.2
  %134 = load i64, i64* %133, align 8
  store i64 %134, i64* %132, align 8
  %135 = add i64 %__v36_i20, 3
  %__v130_lexpr.3 = add i64 %135, %__v30_n
  %136 = getelementptr i64, i64* %__v25_A_p, i64 %135
  %137 = getelementptr i64, i64* %__v29_T_p, i64 %__v130_lexpr.3
  %138 = load i64, i64* %137, align 8
  store i64 %138, i64* %136, align 8
  %139 = add i64 %__v36_i20, 4
  %exitcond.3 = icmp eq i64 %139, %.pre-phi39
  br i1 %exitcond.3, label %._crit_edge, label %scalar.ph, !llvm.loop !10

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %._crit_edge24
  %140 = icmp eq i64 %__v82___v25_A_p_len, 0
  br i1 %140, label %._crit_edge37.i, label %.lr.ph36.i.preheader

.lr.ph36.i.preheader:                             ; preds = %._crit_edge
  br label %.lr.ph36.i

.lr.ph36.i:                                       ; preds = %.lr.ph36.i.preheader, %.lr.ph36.i
  %__v51__i35.i = phi i64 [ %150, %.lr.ph36.i ], [ 0, %.lr.ph36.i.preheader ]
  %__v49_saved_i.034.i = phi i64 [ %149, %.lr.ph36.i ], [ 0, %.lr.ph36.i.preheader ]
  %__v52_i.i = sub i64 %__v82___v25_A_p_len, %__v51__i35.i
  %__v131_lexpr.i = add i64 %__v52_i.i, -1
  %141 = icmp eq i64 %__v49_saved_i.034.i, 0
  %142 = getelementptr i64, i64* %__v25_A_p, i64 %__v131_lexpr.i
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  %145 = zext i1 %144 to i32
  %146 = tail call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %141, i32 %145, i32 0) #0
  %147 = and i32 %146, 1
  %148 = icmp ne i32 %147, 0
  %149 = tail call i64 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %148, i64 %__v52_i.i, i64 %__v49_saved_i.034.i) #0
  %150 = add nuw i64 %__v51__i35.i, 1
  %exitcond43.i = icmp eq i64 %150, %__v82___v25_A_p_len
  br i1 %exitcond43.i, label %._crit_edge37.i, label %.lr.ph36.i

._crit_edge37.i:                                  ; preds = %.lr.ph36.i, %._crit_edge
  %__v49_saved_i.0.lcssa.i = phi i64 [ 0, %._crit_edge ], [ %149, %.lr.ph36.i ]
  br i1 %3, label %._crit_edge32.i, label %.lr.ph31.i.preheader

.lr.ph31.i.preheader:                             ; preds = %._crit_edge37.i
  br label %.lr.ph31.i

.lr.ph31.i:                                       ; preds = %.lr.ph31.i.preheader, %.lr.ph31.i
  %__v53__j29.i = phi i64 [ %160, %.lr.ph31.i ], [ 0, %.lr.ph31.i.preheader ]
  %__v50_saved_j.028.i = phi i64 [ %159, %.lr.ph31.i ], [ 0, %.lr.ph31.i.preheader ]
  %__v54_j.i = sub i64 %__v30_n, %__v53__j29.i
  %__v132_lexpr.i = add i64 %__v54_j.i, -1
  %151 = icmp eq i64 %__v50_saved_j.028.i, 0
  %152 = getelementptr i64, i64* %__v27_N_p, i64 %__v132_lexpr.i
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  %155 = zext i1 %154 to i32
  %156 = tail call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %151, i32 %155, i32 0) #0
  %157 = and i32 %156, 1
  %158 = icmp ne i32 %157, 0
  %159 = tail call i64 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %158, i64 %__v54_j.i, i64 %__v50_saved_j.028.i) #0
  %160 = add nuw i64 %__v53__j29.i, 1
  %exitcond.i13 = icmp eq i64 %160, %__v30_n
  br i1 %exitcond.i13, label %._crit_edge32.i, label %.lr.ph31.i

._crit_edge32.i:                                  ; preds = %.lr.ph31.i, %._crit_edge37.i
  %__v50_saved_j.0.lcssa.i = phi i64 [ 0, %._crit_edge37.i ], [ %159, %.lr.ph31.i ]
  %161 = icmp eq i64 %__v49_saved_i.0.lcssa.i, 0
  %162 = icmp eq i64 %__v50_saved_j.0.lcssa.i, 0
  %163 = zext i1 %162 to i32
  %164 = tail call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %161, i32 %163, i32 0) #0
  %165 = and i32 %164, 1
  %166 = icmp ne i32 %165, 0
  %167 = tail call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %166, i32 0, i32 0) #0
  %168 = tail call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %166, i32 0, i32 1) #0
  %169 = and i32 %168, 1
  %170 = icmp ne i32 %169, 0
  %__m10.i = icmp ugt i64 %__v49_saved_i.0.lcssa.i, %__v50_saved_j.0.lcssa.i
  %171 = and i1 %__m10.i, %170
  %172 = tail call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %171, i32 1, i32 %167) #0
  %173 = tail call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %171, i32 0, i32 %169) #0
  %174 = and i32 %173, 1
  %__m13.i = icmp ugt i64 %__v50_saved_j.0.lcssa.i, %__v49_saved_i.0.lcssa.i
  %175 = and i32 %173, %169
  %176 = icmp ne i32 %175, 0
  %177 = and i1 %__m13.i, %176
  %178 = tail call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %177, i32 -1, i32 %172) #0
  %179 = tail call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %177, i32 0, i32 %174) #0
  %180 = icmp ult i64 %__v82___v25_A_p_len, %__v30_n
  %__v55_start_idx.i = select i1 %180, i64 %__v82___v25_A_p_len, i64 %__v30_n
  %__rctx.0.in21.i = and i32 %179, 1
  %181 = icmp eq i64 %__v55_start_idx.i, 0
  %.pre.i = and i32 %179, %175
  br i1 %181, label %_mbedtls_mpi_cmp_abs.exit, label %.lr.ph.i14.preheader

.lr.ph.i14.preheader:                             ; preds = %._crit_edge32.i
  br label %.lr.ph.i14

.lr.ph.i14:                                       ; preds = %.lr.ph.i14.preheader, %.lr.ph.i14
  %__rctx.0.in25.i = phi i32 [ %__rctx.0.in.i, %.lr.ph.i14 ], [ %__rctx.0.in21.i, %.lr.ph.i14.preheader ]
  %__v56__i24.i = phi i64 [ %201, %.lr.ph.i14 ], [ 0, %.lr.ph.i14.preheader ]
  %__rctx.0.in.in23.i = phi i32 [ %200, %.lr.ph.i14 ], [ %179, %.lr.ph.i14.preheader ]
  %__rval.022.i = phi i32 [ %199, %.lr.ph.i14 ], [ %178, %.lr.ph.i14.preheader ]
  %__v57_i.i = sub i64 %__v55_start_idx.i, %__v56__i24.i
  %__m19.i = icmp ule i64 %__v57_i.i, %__v49_saved_i.0.lcssa.i
  %__v133_lexpr.i = add i64 %__v57_i.i, -1
  %182 = getelementptr i64, i64* %__v25_A_p, i64 %__v133_lexpr.i
  %183 = load i64, i64* %182, align 8
  %184 = getelementptr i64, i64* %__v27_N_p, i64 %__v133_lexpr.i
  %185 = load i64, i64* %184, align 8
  %__m20.i = icmp ugt i64 %183, %185
  %186 = and i1 %__m19.i, %__m20.i
  %187 = and i32 %__rctx.0.in.in23.i, %.pre.i
  %188 = icmp ne i32 %187, 0
  %189 = and i1 %188, %186
  %190 = tail call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %189, i32 1, i32 %__rval.022.i) #0
  %191 = tail call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %189, i32 0, i32 %__rctx.0.in25.i) #0
  %192 = and i32 %191, 1
  %193 = icmp ne i32 %192, 0
  %194 = load i64, i64* %182, align 8
  %195 = load i64, i64* %184, align 8
  %__m23.i = icmp ult i64 %194, %195
  %196 = and i1 %193, %__m23.i
  %197 = and i1 %__m19.i, %196
  %198 = and i1 %188, %197
  %199 = tail call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %198, i32 -1, i32 %190) #0
  %200 = tail call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %198, i32 0, i32 %192) #0
  %201 = add nuw i64 %__v56__i24.i, 1
  %__rctx.0.in.i = and i32 %200, 1
  %202 = icmp ugt i64 %__v55_start_idx.i, %201
  br i1 %202, label %.lr.ph.i14, label %_mbedtls_mpi_cmp_abs.exit

_mbedtls_mpi_cmp_abs.exit:                        ; preds = %.lr.ph.i14, %._crit_edge32.i
  %__rval.0.lcssa.i = phi i32 [ %178, %._crit_edge32.i ], [ %199, %.lr.ph.i14 ]
  %__rctx.0.in.in.lcssa.i = phi i32 [ %179, %._crit_edge32.i ], [ %200, %.lr.ph.i14 ]
  %__rctx.0.in.lcssa.i = phi i32 [ %__rctx.0.in21.i, %._crit_edge32.i ], [ %__rctx.0.in.i, %.lr.ph.i14 ]
  %203 = and i32 %__rctx.0.in.in.lcssa.i, %.pre.i
  %204 = icmp ne i32 %203, 0
  %205 = tail call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %204, i32 0, i32 %__rval.0.lcssa.i) #0
  %206 = tail call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %204, i32 0, i32 %__rctx.0.in.lcssa.i) #0
  %__m5 = icmp sgt i32 %205, -1
  tail call fastcc void @_mpi_sub_hlp(i64 %__v30_n, i64* %__v27_N_p, i64* %__v25_A_p, i64 %__v82___v25_A_p_len, i1 %__m5)
  ret void
}

; Function Attrs: nounwind
define i32 @_f_mpi_exp_mod(i64* nocapture %__v1_X, i64 %__v71___v1_X_len, i64* nocapture readonly %__v2_A, i64 %__v72___v2_A_len, i32 %__v3_A_sgn, i64* nocapture readonly %__v4_E, i64 %__v73___v4_E_len, i64* nocapture readonly %__v5_N, i64 %__v74___v5_N_len, i64* nocapture readonly %__v6_RR, i64 %__v75___v6_RR_len, i64* nocapture %__v7_T, i64 %__v76___v7_T_len, i64* nocapture %__v8_W, i64 %__v77___v8_W_len, i64* nocapture %__v9_TW, i64 %__v78___v9_TW_len, i64 %__v10_mm) local_unnamed_addr #0 {
entry:
  %__v24_one.i20 = alloca i64, align 8
  %__v24_one.i = alloca i64, align 8
  %0 = lshr i64 %__v77___v8_W_len, 4
  %1 = icmp ult i64 %__v71___v1_X_len, %__v75___v6_RR_len
  %__v67_clen.i = select i1 %1, i64 %__v71___v1_X_len, i64 %__v75___v6_RR_len
  %2 = icmp eq i64 %__v67_clen.i, 0
  br i1 %2, label %._crit_edge4.i, label %.lr.ph3.i.preheader

.lr.ph3.i.preheader:                              ; preds = %entry
  br label %.lr.ph3.i

.lr.ph3.i:                                        ; preds = %.lr.ph3.i.preheader, %.lr.ph3.i
  %__v68_i2.i = phi i64 [ %8, %.lr.ph3.i ], [ 0, %.lr.ph3.i.preheader ]
  %3 = getelementptr i64, i64* %__v1_X, i64 %__v68_i2.i
  %4 = getelementptr i64, i64* %__v6_RR, i64 %__v68_i2.i
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* %3, align 8
  %7 = tail call i64 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 true, i64 %5, i64 %6) #0
  store i64 %7, i64* %3, align 8
  %8 = add nuw i64 %__v68_i2.i, 1
  %9 = icmp ult i64 %8, %__v67_clen.i
  br i1 %9, label %.lr.ph3.i, label %._crit_edge4.i

._crit_edge4.i:                                   ; preds = %.lr.ph3.i, %entry
  %10 = icmp ugt i64 %__v71___v1_X_len, %__v75___v6_RR_len
  br i1 %10, label %.lr.ph.i.preheader, label %_mpi_copy.exit

.lr.ph.i.preheader:                               ; preds = %._crit_edge4.i
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %__v69_i1.i = phi i64 [ %14, %.lr.ph.i ], [ %__v67_clen.i, %.lr.ph.i.preheader ]
  %11 = getelementptr i64, i64* %__v1_X, i64 %__v69_i1.i
  %12 = load i64, i64* %11, align 8
  %13 = tail call i64 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 true, i64 0, i64 %12) #0
  store i64 %13, i64* %11, align 8
  %14 = add i64 %__v69_i1.i, 1
  %15 = icmp ult i64 %14, %__v71___v1_X_len
  br i1 %15, label %.lr.ph.i, label %_mpi_copy.exit

_mpi_copy.exit:                                   ; preds = %.lr.ph.i, %._crit_edge4.i
  %16 = tail call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 true, i32 0, i32 1) #0
  %17 = bitcast i64* %__v24_one.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %17)
  store i64 1, i64* %__v24_one.i, align 8
  call fastcc void @_mpi_montmul(i64* %__v1_X, i64 %__v71___v1_X_len, i64* nonnull %__v24_one.i, i64 1, i64* %__v5_N, i64 %__v74___v5_N_len, i64 %__v10_mm, i64* %__v7_T, i64 %__v76___v7_T_len) #0
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %17)
  %__v95_lexpr = and i64 %0, 4294967295
  %18 = icmp ult i64 %__v95_lexpr, %__v71___v1_X_len
  %__v67_clen.i2 = select i1 %18, i64 %__v95_lexpr, i64 %__v71___v1_X_len
  %19 = icmp eq i64 %__v67_clen.i2, 0
  br i1 %19, label %._crit_edge4.i5, label %.lr.ph3.i3.preheader

.lr.ph3.i3.preheader:                             ; preds = %_mpi_copy.exit
  br label %.lr.ph3.i3

.lr.ph3.i3:                                       ; preds = %.lr.ph3.i3.preheader, %.lr.ph3.i3
  %__v68_i2.i4 = phi i64 [ %25, %.lr.ph3.i3 ], [ 0, %.lr.ph3.i3.preheader ]
  %20 = getelementptr i64, i64* %__v8_W, i64 %__v68_i2.i4
  %21 = getelementptr i64, i64* %__v1_X, i64 %__v68_i2.i4
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %20, align 8
  %24 = tail call i64 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 true, i64 %22, i64 %23) #0
  store i64 %24, i64* %20, align 8
  %25 = add nuw nsw i64 %__v68_i2.i4, 1
  %26 = icmp ult i64 %25, %__v67_clen.i2
  br i1 %26, label %.lr.ph3.i3, label %._crit_edge4.i5

._crit_edge4.i5:                                  ; preds = %.lr.ph3.i3, %_mpi_copy.exit
  %27 = icmp ugt i64 %__v95_lexpr, %__v71___v1_X_len
  br i1 %27, label %.lr.ph.i6.preheader, label %_mpi_copy.exit8

.lr.ph.i6.preheader:                              ; preds = %._crit_edge4.i5
  br label %.lr.ph.i6

.lr.ph.i6:                                        ; preds = %.lr.ph.i6.preheader, %.lr.ph.i6
  %__v69_i1.i7 = phi i64 [ %31, %.lr.ph.i6 ], [ %__v67_clen.i2, %.lr.ph.i6.preheader ]
  %28 = getelementptr i64, i64* %__v8_W, i64 %__v69_i1.i7
  %29 = load i64, i64* %28, align 8
  %30 = tail call i64 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 true, i64 0, i64 %29) #0
  store i64 %30, i64* %28, align 8
  %31 = add nuw nsw i64 %__v69_i1.i7, 1
  %32 = icmp ult i64 %31, %__v95_lexpr
  br i1 %32, label %.lr.ph.i6, label %_mpi_copy.exit8

_mpi_copy.exit8:                                  ; preds = %.lr.ph.i6, %._crit_edge4.i5
  %33 = tail call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 true, i32 0, i32 1) #0
  %34 = getelementptr i64, i64* %__v8_W, i64 %__v95_lexpr
  %35 = icmp ult i64 %__v95_lexpr, %__v72___v2_A_len
  %__v67_clen.i9 = select i1 %35, i64 %__v95_lexpr, i64 %__v72___v2_A_len
  %36 = icmp eq i64 %__v67_clen.i9, 0
  br i1 %36, label %._crit_edge4.i12, label %.lr.ph3.i10.preheader

.lr.ph3.i10.preheader:                            ; preds = %_mpi_copy.exit8
  br label %.lr.ph3.i10

.lr.ph3.i10:                                      ; preds = %.lr.ph3.i10.preheader, %.lr.ph3.i10
  %__v68_i2.i11 = phi i64 [ %42, %.lr.ph3.i10 ], [ 0, %.lr.ph3.i10.preheader ]
  %37 = getelementptr i64, i64* %34, i64 %__v68_i2.i11
  %38 = getelementptr i64, i64* %__v2_A, i64 %__v68_i2.i11
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %37, align 8
  %41 = tail call i64 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 true, i64 %39, i64 %40) #0
  store i64 %41, i64* %37, align 8
  %42 = add nuw nsw i64 %__v68_i2.i11, 1
  %43 = icmp ult i64 %42, %__v67_clen.i9
  br i1 %43, label %.lr.ph3.i10, label %._crit_edge4.i12

._crit_edge4.i12:                                 ; preds = %.lr.ph3.i10, %_mpi_copy.exit8
  %44 = icmp ugt i64 %__v95_lexpr, %__v72___v2_A_len
  br i1 %44, label %.lr.ph.i13.preheader, label %_mpi_copy.exit15

.lr.ph.i13.preheader:                             ; preds = %._crit_edge4.i12
  br label %.lr.ph.i13

.lr.ph.i13:                                       ; preds = %.lr.ph.i13.preheader, %.lr.ph.i13
  %__v69_i1.i14 = phi i64 [ %48, %.lr.ph.i13 ], [ %__v67_clen.i9, %.lr.ph.i13.preheader ]
  %45 = getelementptr i64, i64* %34, i64 %__v69_i1.i14
  %46 = load i64, i64* %45, align 8
  %47 = tail call i64 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 true, i64 0, i64 %46) #0
  store i64 %47, i64* %45, align 8
  %48 = add nuw nsw i64 %__v69_i1.i14, 1
  %49 = icmp ult i64 %48, %__v95_lexpr
  br i1 %49, label %.lr.ph.i13, label %_mpi_copy.exit15

_mpi_copy.exit15:                                 ; preds = %.lr.ph.i13, %._crit_edge4.i12
  %50 = tail call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 true, i32 0, i32 1) #0
  tail call fastcc void @_mpi_montmul(i64* %34, i64 %__v95_lexpr, i64* %__v6_RR, i64 %__v75___v6_RR_len, i64* %__v5_N, i64 %__v74___v5_N_len, i64 %__v10_mm, i64* %__v7_T, i64 %__v76___v7_T_len)
  %51 = icmp eq i64 %__v95_lexpr, 0
  br label %52

; <label>:52:                                     ; preds = %_mpi_copy.exit19, %_mpi_copy.exit15
  %indvars.iv49 = phi i64 [ 2, %_mpi_copy.exit15 ], [ %indvars.iv.next50, %_mpi_copy.exit19 ]
  %53 = mul i64 %indvars.iv49, %0
  %__v104_lexpr = and i64 %53, 4294967295
  %54 = add nuw i64 %indvars.iv49, 4294967295
  %55 = mul i64 %54, %0
  %__v108_lexpr = and i64 %55, 4294967295
  %56 = getelementptr i64, i64* %__v8_W, i64 %__v104_lexpr
  %57 = getelementptr i64, i64* %__v8_W, i64 %__v108_lexpr
  br i1 %51, label %_mpi_copy.exit19, label %.lr.ph3.i16.preheader

.lr.ph3.i16.preheader:                            ; preds = %52
  br label %.lr.ph3.i16

.lr.ph3.i16:                                      ; preds = %.lr.ph3.i16.preheader, %.lr.ph3.i16
  %__v68_i2.i17 = phi i64 [ %63, %.lr.ph3.i16 ], [ 0, %.lr.ph3.i16.preheader ]
  %58 = getelementptr i64, i64* %56, i64 %__v68_i2.i17
  %59 = getelementptr i64, i64* %57, i64 %__v68_i2.i17
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %58, align 8
  %62 = tail call i64 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 true, i64 %60, i64 %61) #0
  store i64 %62, i64* %58, align 8
  %63 = add nuw nsw i64 %__v68_i2.i17, 1
  %exitcond48 = icmp eq i64 %63, %__v95_lexpr
  br i1 %exitcond48, label %_mpi_copy.exit19, label %.lr.ph3.i16

_mpi_copy.exit19:                                 ; preds = %.lr.ph3.i16, %52
  %64 = tail call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 true, i32 0, i32 1) #0
  tail call fastcc void @_mpi_montmul(i64* %56, i64 %__v95_lexpr, i64* %34, i64 %__v95_lexpr, i64* %__v5_N, i64 %__v74___v5_N_len, i64 %__v10_mm, i64* %__v7_T, i64 %__v76___v7_T_len)
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1
  %exitcond51 = icmp eq i64 %indvars.iv.next50, 16
  br i1 %exitcond51, label %65, label %52

; <label>:65:                                     ; preds = %_mpi_copy.exit19
  %66 = icmp eq i64 %__v73___v4_E_len, 0
  br i1 %66, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %65
  %67 = add i64 %__v73___v4_E_len, 4294967295
  %68 = icmp ugt i64 %__v95_lexpr, %__v78___v9_TW_len
  %__v67_clen.i32 = select i1 %68, i64 %__v78___v9_TW_len, i64 %__v95_lexpr
  %69 = icmp eq i64 %__v67_clen.i32, 0
  %70 = icmp ult i64 %__v95_lexpr, %__v78___v9_TW_len
  br label %71

; <label>:71:                                     ; preds = %112, %.lr.ph
  %__v14__limb41 = phi i64 [ 0, %.lr.ph ], [ %113, %112 ]
  %72 = sub i64 %67, %__v14__limb41
  %__v120_lexpr = and i64 %72, 4294967295
  %73 = getelementptr i64, i64* %__v4_E, i64 %__v120_lexpr
  br label %107

._crit_edge:                                      ; preds = %112, %65
  %74 = bitcast i64* %__v24_one.i20 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %74)
  store i64 1, i64* %__v24_one.i20, align 8
  call fastcc void @_mpi_montmul(i64* %__v1_X, i64 %__v71___v1_X_len, i64* nonnull %__v24_one.i20, i64 1, i64* %__v5_N, i64 %__v74___v5_N_len, i64 %__v10_mm, i64* %__v7_T, i64 %__v76___v7_T_len) #0
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %74)
  %75 = icmp slt i32 %__v3_A_sgn, 0
  %76 = load i64, i64* %__v4_E, align 8
  %77 = trunc i64 %76 to i32
  %78 = and i32 %77, 1
  %79 = tail call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %75, i32 %78, i32 0) #0
  %80 = and i32 %79, 1
  %81 = icmp ne i32 %80, 0
  %82 = tail call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %81, i32 -1, i32 1) #0
  %83 = icmp ult i64 %__v76___v7_T_len, %__v74___v5_N_len
  %__v67_clen.i21 = select i1 %83, i64 %__v76___v7_T_len, i64 %__v74___v5_N_len
  %84 = icmp eq i64 %__v67_clen.i21, 0
  br i1 %84, label %._crit_edge4.i24, label %.lr.ph3.i22.preheader

.lr.ph3.i22.preheader:                            ; preds = %._crit_edge
  br label %.lr.ph3.i22

.lr.ph3.i22:                                      ; preds = %.lr.ph3.i22.preheader, %.lr.ph3.i22
  %__v68_i2.i23 = phi i64 [ %90, %.lr.ph3.i22 ], [ 0, %.lr.ph3.i22.preheader ]
  %85 = getelementptr i64, i64* %__v7_T, i64 %__v68_i2.i23
  %86 = getelementptr i64, i64* %__v5_N, i64 %__v68_i2.i23
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* %85, align 8
  %89 = tail call i64 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %81, i64 %87, i64 %88) #0
  store i64 %89, i64* %85, align 8
  %90 = add nuw i64 %__v68_i2.i23, 1
  %91 = icmp ult i64 %90, %__v67_clen.i21
  br i1 %91, label %.lr.ph3.i22, label %._crit_edge4.i24

._crit_edge4.i24:                                 ; preds = %.lr.ph3.i22, %._crit_edge
  %92 = icmp ugt i64 %__v76___v7_T_len, %__v74___v5_N_len
  br i1 %92, label %.lr.ph.i25.preheader, label %_mpi_copy.exit27

.lr.ph.i25.preheader:                             ; preds = %._crit_edge4.i24
  br label %.lr.ph.i25

.lr.ph.i25:                                       ; preds = %.lr.ph.i25.preheader, %.lr.ph.i25
  %__v69_i1.i26 = phi i64 [ %96, %.lr.ph.i25 ], [ %__v67_clen.i21, %.lr.ph.i25.preheader ]
  %93 = getelementptr i64, i64* %__v7_T, i64 %__v69_i1.i26
  %94 = load i64, i64* %93, align 8
  %95 = tail call i64 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %81, i64 0, i64 %94) #0
  store i64 %95, i64* %93, align 8
  %96 = add i64 %__v69_i1.i26, 1
  %97 = icmp ult i64 %96, %__v76___v7_T_len
  br i1 %97, label %.lr.ph.i25, label %_mpi_copy.exit27

_mpi_copy.exit27:                                 ; preds = %.lr.ph.i25, %._crit_edge4.i24
  %98 = tail call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %81, i32 0, i32 1) #0
  tail call fastcc void @_mpi_sub_hlp(i64 %__v71___v1_X_len, i64* %__v1_X, i64* %__v7_T, i64 %__v76___v7_T_len, i1 %81)
  %99 = icmp eq i64 %__v71___v1_X_len, 0
  br i1 %99, label %_mpi_copy.exit31, label %.lr.ph3.i28.preheader

.lr.ph3.i28.preheader:                            ; preds = %_mpi_copy.exit27
  br label %.lr.ph3.i28

.lr.ph3.i28:                                      ; preds = %.lr.ph3.i28.preheader, %.lr.ph3.i28
  %__v68_i2.i29 = phi i64 [ %105, %.lr.ph3.i28 ], [ 0, %.lr.ph3.i28.preheader ]
  %100 = getelementptr i64, i64* %__v1_X, i64 %__v68_i2.i29
  %101 = getelementptr i64, i64* %__v7_T, i64 %__v68_i2.i29
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* %100, align 8
  %104 = tail call i64 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %81, i64 %102, i64 %103) #0
  store i64 %104, i64* %100, align 8
  %105 = add nuw i64 %__v68_i2.i29, 1
  %exitcond = icmp eq i64 %105, %__v71___v1_X_len
  br i1 %exitcond, label %_mpi_copy.exit31, label %.lr.ph3.i28

_mpi_copy.exit31:                                 ; preds = %.lr.ph3.i28, %_mpi_copy.exit27
  %106 = tail call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %81, i32 0, i32 1) #0
  ret i32 %82

; <label>:107:                                    ; preds = %130, %71
  %indvars.iv44 = phi i64 [ 1, %71 ], [ %indvars.iv.next45, %130 ]
  tail call fastcc void @_mpi_montmul(i64* %__v1_X, i64 %__v71___v1_X_len, i64* %__v1_X, i64 %__v71___v1_X_len, i64* %__v5_N, i64 %__v74___v5_N_len, i64 %__v10_mm, i64* %__v7_T, i64 %__v76___v7_T_len)
  tail call fastcc void @_mpi_montmul(i64* %__v1_X, i64 %__v71___v1_X_len, i64* %__v1_X, i64 %__v71___v1_X_len, i64* %__v5_N, i64 %__v74___v5_N_len, i64 %__v10_mm, i64* %__v7_T, i64 %__v76___v7_T_len)
  tail call fastcc void @_mpi_montmul(i64* %__v1_X, i64 %__v71___v1_X_len, i64* %__v1_X, i64 %__v71___v1_X_len, i64* %__v5_N, i64 %__v74___v5_N_len, i64 %__v10_mm, i64* %__v7_T, i64 %__v76___v7_T_len)
  tail call fastcc void @_mpi_montmul(i64* %__v1_X, i64 %__v71___v1_X_len, i64* %__v1_X, i64 %__v71___v1_X_len, i64* %__v5_N, i64 %__v74___v5_N_len, i64 %__v10_mm, i64* %__v7_T, i64 %__v76___v7_T_len)
  %108 = load i64, i64* %73, align 8
  %109 = shl i64 %indvars.iv44, 2
  %110 = sub nuw nsw i64 64, %109
  %111 = lshr i64 %108, %110
  %__v17_wbits = and i64 %111, 15
  br label %114

; <label>:112:                                    ; preds = %130
  %113 = add nuw i64 %__v14__limb41, 1
  %exitcond47 = icmp eq i64 %113, %__v73___v4_E_len
  br i1 %exitcond47, label %._crit_edge, label %71

; <label>:114:                                    ; preds = %_mpi_copy.exit38, %107
  %indvars.iv = phi i64 [ 0, %107 ], [ %indvars.iv.next, %_mpi_copy.exit38 ]
  %__m3 = icmp eq i64 %__v17_wbits, %indvars.iv
  %115 = mul i64 %indvars.iv, %0
  %__v121_lexpr = and i64 %115, 4294967295
  %116 = getelementptr i64, i64* %__v8_W, i64 %__v121_lexpr
  br i1 %69, label %._crit_edge4.i35, label %.lr.ph3.i33.preheader

.lr.ph3.i33.preheader:                            ; preds = %114
  br label %.lr.ph3.i33

.lr.ph3.i33:                                      ; preds = %.lr.ph3.i33.preheader, %.lr.ph3.i33
  %__v68_i2.i34 = phi i64 [ %122, %.lr.ph3.i33 ], [ 0, %.lr.ph3.i33.preheader ]
  %117 = getelementptr i64, i64* %__v9_TW, i64 %__v68_i2.i34
  %118 = getelementptr i64, i64* %116, i64 %__v68_i2.i34
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* %117, align 8
  %121 = tail call i64 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m3, i64 %119, i64 %120) #0
  store i64 %121, i64* %117, align 8
  %122 = add nuw nsw i64 %__v68_i2.i34, 1
  %123 = icmp ult i64 %122, %__v67_clen.i32
  br i1 %123, label %.lr.ph3.i33, label %._crit_edge4.i35

._crit_edge4.i35:                                 ; preds = %.lr.ph3.i33, %114
  br i1 %70, label %.lr.ph.i36.preheader, label %_mpi_copy.exit38

.lr.ph.i36.preheader:                             ; preds = %._crit_edge4.i35
  br label %.lr.ph.i36

.lr.ph.i36:                                       ; preds = %.lr.ph.i36.preheader, %.lr.ph.i36
  %__v69_i1.i37 = phi i64 [ %127, %.lr.ph.i36 ], [ %__v67_clen.i32, %.lr.ph.i36.preheader ]
  %124 = getelementptr i64, i64* %__v9_TW, i64 %__v69_i1.i37
  %125 = load i64, i64* %124, align 8
  %126 = tail call i64 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m3, i64 0, i64 %125) #0
  store i64 %126, i64* %124, align 8
  %127 = add i64 %__v69_i1.i37, 1
  %128 = icmp ult i64 %127, %__v78___v9_TW_len
  br i1 %128, label %.lr.ph.i36, label %_mpi_copy.exit38

_mpi_copy.exit38:                                 ; preds = %.lr.ph.i36, %._crit_edge4.i35
  %129 = tail call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m3, i32 0, i32 1) #0
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond43 = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond43, label %130, label %114

; <label>:130:                                    ; preds = %_mpi_copy.exit38
  tail call fastcc void @_mpi_montmul(i64* %__v1_X, i64 %__v71___v1_X_len, i64* %__v9_TW, i64 %__v78___v9_TW_len, i64* %__v5_N, i64 %__v74___v5_N_len, i64 %__v10_mm, i64* %__v7_T, i64 %__v76___v7_T_len)
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1
  %exitcond46 = icmp eq i64 %indvars.iv.next45, 17
  br i1 %exitcond46, label %112, label %107
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

attributes #0 = { nounwind }
attributes #1 = { argmemonly nounwind }

!0 = !{!1}
!1 = distinct !{!1, !2}
!2 = distinct !{!2, !"LVerDomain"}
!3 = !{!4}
!4 = distinct !{!4, !2}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.isvectorized", i32 1}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.unroll.disable"}
!9 = distinct !{!9, !8}
!10 = distinct !{!10, !6}
