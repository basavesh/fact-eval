; ModuleID = './bignum.O2.fpic.bc'
source_filename = "Module"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind
define internal fastcc void @_mpi_montmul(i64* nocapture %__v25_A_p, i64 %__v82___v25_A_p_len, i64* nocapture readonly %__v26_B_p, i64 %__v83___v26_B_p_len, i64* nocapture readonly %__v27_N_p, i64 %__v30_n, i64 %__v28_mm, i64* nocapture %__v29_T_p, i64 %__v85___v29_T_p_len) unnamed_addr #0 {
entry:
  %0 = icmp ult i64 %__v83___v26_B_p_len, %__v30_n
  %__v31_m = select i1 %0, i64 %__v83___v26_B_p_len, i64 %__v30_n
  %1 = icmp eq i64 %__v85___v29_T_p_len, 0
  br i1 %1, label %._crit_edge31, label %.lr.ph30

.lr.ph30:                                         ; preds = %entry
  %__v29_T_p43 = bitcast i64* %__v29_T_p to i8*
  %2 = shl i64 %__v85___v29_T_p_len, 3
  call void @llvm.memset.p0i8.i64(i8* %__v29_T_p43, i8 0, i64 %2, i32 8, i1 false)
  br label %._crit_edge31

._crit_edge31:                                    ; preds = %.lr.ph30, %entry
  %3 = icmp eq i64 %__v30_n, 0
  br i1 %3, label %.lr.ph, label %.lr.ph27

.lr.ph27:                                         ; preds = %._crit_edge31
  %4 = icmp eq i64 %__v31_m, 0
  %5 = add i64 %__v30_n, 1
  %6 = icmp ult i64 %__v83___v26_B_p_len, %__v30_n
  %7 = select i1 %6, i64 %__v83___v26_B_p_len, i64 %__v30_n
  %8 = add i64 %7, -1
  %9 = sub i64 %__v85___v29_T_p_len, %__v30_n
  %10 = add i64 %__v85___v29_T_p_len, -1
  %11 = sub i64 %10, %__v30_n
  %exitcond7.i62 = icmp eq i64 %__v31_m, 1
  %xtraiter90 = and i64 %__v30_n, 1
  %12 = icmp eq i64 %__v30_n, 1
  %xtraiter85 = and i64 %8, 1
  %13 = icmp eq i64 %7, 2
  %unroll_iter92 = sub i64 %__v30_n, %xtraiter90
  %lcmp.mod91 = icmp eq i64 %xtraiter90, 0
  %unroll_iter88 = sub i64 %8, %xtraiter85
  %lcmp.mod87 = icmp eq i64 %xtraiter85, 0
  br label %14

; <label>:14:                                     ; preds = %_mpi_mul_hlp.exit14, %.lr.ph27
  %__v33_i25 = phi i64 [ 0, %.lr.ph27 ], [ %167, %_mpi_mul_hlp.exit14 ]
  %15 = sub i64 %9, %__v33_i25
  %16 = sub i64 %11, %__v33_i25
  %17 = getelementptr i64, i64* %__v25_A_p, i64 %__v33_i25
  %__v34_u0 = load i64, i64* %17, align 8
  %18 = getelementptr i64, i64* %__v29_T_p, i64 %__v33_i25
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %__v26_B_p, align 8
  %21 = mul i64 %20, %__v34_u0
  %22 = add i64 %21, %19
  %__v35_u1 = mul i64 %22, %__v28_mm
  %__v126_lexpr = sub i64 %__v85___v29_T_p_len, %__v33_i25
  br i1 %4, label %._crit_edge6.i, label %.lr.ph5.i

.lr.ph5.i:                                        ; preds = %14
  %23 = zext i64 %__v34_u0 to i128
  %24 = zext i64 %20 to i128
  %__v43_r.i61 = mul nuw i128 %24, %23
  %25 = trunc i128 %__v43_r.i61 to i64
  %26 = lshr i128 %__v43_r.i61, 64
  %27 = trunc i128 %26 to i64
  %28 = add i64 %19, %25
  %29 = icmp ult i64 %28, %19
  %30 = zext i1 %29 to i64
  %31 = add i64 %27, %30
  store i64 %28, i64* %18, align 8
  br i1 %exitcond7.i62, label %._crit_edge6.i, label %._crit_edge44.preheader

._crit_edge44.preheader:                          ; preds = %.lr.ph5.i
  br i1 %13, label %._crit_edge6.i.loopexit.unr-lcssa, label %._crit_edge44.preheader.new

._crit_edge44.preheader.new:                      ; preds = %._crit_edge44.preheader
  br label %._crit_edge44

._crit_edge44:                                    ; preds = %._crit_edge44, %._crit_edge44.preheader.new
  %32 = phi i64 [ 1, %._crit_edge44.preheader.new ], [ %61, %._crit_edge44 ]
  %33 = phi i64 [ %31, %._crit_edge44.preheader.new ], [ %60, %._crit_edge44 ]
  %niter89 = phi i64 [ %unroll_iter88, %._crit_edge44.preheader.new ], [ %niter89.nsub.1, %._crit_edge44 ]
  %.phi.trans.insert = getelementptr i64, i64* %__v26_B_p, i64 %32
  %.pre = load i64, i64* %.phi.trans.insert, align 8
  %.phi.trans.insert45 = getelementptr i64, i64* %18, i64 %32
  %.pre46 = load i64, i64* %.phi.trans.insert45, align 8
  %34 = zext i64 %.pre to i128
  %__v43_r.i = mul nuw i128 %34, %23
  %35 = trunc i128 %__v43_r.i to i64
  %36 = lshr i128 %__v43_r.i, 64
  %37 = trunc i128 %36 to i64
  %38 = add i64 %33, %35
  %39 = icmp ult i64 %38, %33
  %40 = zext i1 %39 to i64
  %41 = add i64 %40, %37
  %42 = getelementptr i64, i64* %18, i64 %32
  %43 = add i64 %38, %.pre46
  %44 = icmp ult i64 %43, %.pre46
  %45 = zext i1 %44 to i64
  %46 = add i64 %41, %45
  store i64 %43, i64* %42, align 8
  %47 = add nuw i64 %32, 1
  %.phi.trans.insert.1 = getelementptr i64, i64* %__v26_B_p, i64 %47
  %.pre.1 = load i64, i64* %.phi.trans.insert.1, align 8
  %.phi.trans.insert45.1 = getelementptr i64, i64* %18, i64 %47
  %.pre46.1 = load i64, i64* %.phi.trans.insert45.1, align 8
  %48 = zext i64 %.pre.1 to i128
  %__v43_r.i.1 = mul nuw i128 %48, %23
  %49 = trunc i128 %__v43_r.i.1 to i64
  %50 = lshr i128 %__v43_r.i.1, 64
  %51 = trunc i128 %50 to i64
  %52 = add i64 %46, %49
  %53 = icmp ult i64 %52, %46
  %54 = zext i1 %53 to i64
  %55 = add i64 %54, %51
  %56 = getelementptr i64, i64* %18, i64 %47
  %57 = add i64 %52, %.pre46.1
  %58 = icmp ult i64 %57, %.pre46.1
  %59 = zext i1 %58 to i64
  %60 = add i64 %55, %59
  store i64 %57, i64* %56, align 8
  %61 = add i64 %32, 2
  %niter89.nsub.1 = add i64 %niter89, -2
  %niter89.ncmp.1 = icmp eq i64 %niter89.nsub.1, 0
  br i1 %niter89.ncmp.1, label %._crit_edge6.i.loopexit.unr-lcssa, label %._crit_edge44

._crit_edge6.i.loopexit.unr-lcssa:                ; preds = %._crit_edge44, %._crit_edge44.preheader
  %.lcssa79.ph = phi i64 [ undef, %._crit_edge44.preheader ], [ %60, %._crit_edge44 ]
  %.unr = phi i64 [ 1, %._crit_edge44.preheader ], [ %61, %._crit_edge44 ]
  %.unr86 = phi i64 [ %31, %._crit_edge44.preheader ], [ %60, %._crit_edge44 ]
  br i1 %lcmp.mod87, label %._crit_edge6.i, label %._crit_edge44.epil

._crit_edge44.epil:                               ; preds = %._crit_edge6.i.loopexit.unr-lcssa
  %.phi.trans.insert.epil = getelementptr i64, i64* %__v26_B_p, i64 %.unr
  %.pre.epil = load i64, i64* %.phi.trans.insert.epil, align 8
  %.phi.trans.insert45.epil = getelementptr i64, i64* %18, i64 %.unr
  %.pre46.epil = load i64, i64* %.phi.trans.insert45.epil, align 8
  %62 = zext i64 %.pre.epil to i128
  %__v43_r.i.epil = mul nuw i128 %62, %23
  %63 = trunc i128 %__v43_r.i.epil to i64
  %64 = add i64 %.unr86, %63
  %65 = getelementptr i64, i64* %18, i64 %.unr
  %66 = add i64 %64, %.pre46.epil
  store i64 %66, i64* %65, align 8
  %67 = icmp ult i64 %64, %.unr86
  %68 = zext i1 %67 to i64
  %69 = lshr i128 %__v43_r.i.epil, 64
  %70 = trunc i128 %69 to i64
  %71 = add i64 %68, %70
  %72 = icmp ult i64 %66, %.pre46.epil
  %73 = zext i1 %72 to i64
  %74 = add i64 %71, %73
  br label %._crit_edge6.i

._crit_edge6.i:                                   ; preds = %._crit_edge44.epil, %._crit_edge6.i.loopexit.unr-lcssa, %.lr.ph5.i, %14
  %__v41_c.0.lcssa.i = phi i64 [ 0, %14 ], [ %31, %.lr.ph5.i ], [ %.lcssa79.ph, %._crit_edge6.i.loopexit.unr-lcssa ], [ %74, %._crit_edge44.epil ]
  %75 = icmp ult i64 %__v31_m, %__v126_lexpr
  br i1 %75, label %.lr.ph.i.preheader, label %.lr.ph5.i3

.lr.ph.i.preheader:                               ; preds = %._crit_edge6.i
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %__v46_i2.i = phi i64 [ %81, %.lr.ph.i ], [ %__v31_m, %.lr.ph.i.preheader ]
  %__v41_c.11.i = phi i64 [ %80, %.lr.ph.i ], [ %__v41_c.0.lcssa.i, %.lr.ph.i.preheader ]
  %76 = getelementptr i64, i64* %18, i64 %__v46_i2.i
  %77 = load i64, i64* %76, align 8
  %78 = add i64 %77, %__v41_c.11.i
  store i64 %78, i64* %76, align 8
  %79 = icmp ult i64 %78, %__v41_c.11.i
  %80 = zext i1 %79 to i64
  %81 = add nuw i64 %__v46_i2.i, 1
  %exitcond.i = icmp eq i64 %81, %__v126_lexpr
  br i1 %exitcond.i, label %.lr.ph5.i3, label %.lr.ph.i

.lr.ph5.i3:                                       ; preds = %.lr.ph.i, %._crit_edge6.i
  %82 = zext i64 %__v35_u1 to i128
  br i1 %12, label %._crit_edge6.i9.unr-lcssa, label %.lr.ph5.i3.new

.lr.ph5.i3.new:                                   ; preds = %.lr.ph5.i3
  br label %83

; <label>:83:                                     ; preds = %83, %.lr.ph5.i3.new
  %__v42_i4.i4 = phi i64 [ 0, %.lr.ph5.i3.new ], [ %117, %83 ]
  %__v41_c.03.i5 = phi i64 [ 0, %.lr.ph5.i3.new ], [ %116, %83 ]
  %niter93 = phi i64 [ %unroll_iter92, %.lr.ph5.i3.new ], [ %niter93.nsub.1, %83 ]
  %84 = getelementptr i64, i64* %__v27_N_p, i64 %__v42_i4.i4
  %85 = load i64, i64* %84, align 8
  %86 = zext i64 %85 to i128
  %__v43_r.i6 = mul nuw i128 %86, %82
  %87 = trunc i128 %__v43_r.i6 to i64
  %88 = lshr i128 %__v43_r.i6, 64
  %89 = trunc i128 %88 to i64
  %90 = add i64 %__v41_c.03.i5, %87
  %91 = icmp ult i64 %90, %__v41_c.03.i5
  %92 = zext i1 %91 to i64
  %93 = add i64 %92, %89
  %94 = getelementptr i64, i64* %18, i64 %__v42_i4.i4
  %95 = load i64, i64* %94, align 8
  %96 = add i64 %90, %95
  %97 = icmp ult i64 %96, %95
  %98 = zext i1 %97 to i64
  %99 = add i64 %93, %98
  store i64 %96, i64* %94, align 8
  %100 = or i64 %__v42_i4.i4, 1
  %101 = getelementptr i64, i64* %__v27_N_p, i64 %100
  %102 = load i64, i64* %101, align 8
  %103 = zext i64 %102 to i128
  %__v43_r.i6.1 = mul nuw i128 %103, %82
  %104 = trunc i128 %__v43_r.i6.1 to i64
  %105 = lshr i128 %__v43_r.i6.1, 64
  %106 = trunc i128 %105 to i64
  %107 = add i64 %99, %104
  %108 = icmp ult i64 %107, %99
  %109 = zext i1 %108 to i64
  %110 = add i64 %109, %106
  %111 = getelementptr i64, i64* %18, i64 %100
  %112 = load i64, i64* %111, align 8
  %113 = add i64 %107, %112
  %114 = icmp ult i64 %113, %112
  %115 = zext i1 %114 to i64
  %116 = add i64 %110, %115
  store i64 %113, i64* %111, align 8
  %117 = add i64 %__v42_i4.i4, 2
  %niter93.nsub.1 = add i64 %niter93, -2
  %niter93.ncmp.1 = icmp eq i64 %niter93.nsub.1, 0
  br i1 %niter93.ncmp.1, label %._crit_edge6.i9.unr-lcssa, label %83

._crit_edge6.i9.unr-lcssa:                        ; preds = %83, %.lr.ph5.i3
  %.lcssa80.ph = phi i64 [ undef, %.lr.ph5.i3 ], [ %116, %83 ]
  %__v42_i4.i4.unr = phi i64 [ 0, %.lr.ph5.i3 ], [ %117, %83 ]
  %__v41_c.03.i5.unr = phi i64 [ 0, %.lr.ph5.i3 ], [ %116, %83 ]
  br i1 %lcmp.mod91, label %._crit_edge6.i9, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge6.i9.unr-lcssa
  %118 = getelementptr i64, i64* %__v27_N_p, i64 %__v42_i4.i4.unr
  %119 = load i64, i64* %118, align 8
  %120 = zext i64 %119 to i128
  %__v43_r.i6.epil = mul nuw i128 %120, %82
  %121 = trunc i128 %__v43_r.i6.epil to i64
  %122 = add i64 %__v41_c.03.i5.unr, %121
  %123 = getelementptr i64, i64* %18, i64 %__v42_i4.i4.unr
  %124 = load i64, i64* %123, align 8
  %125 = add i64 %122, %124
  store i64 %125, i64* %123, align 8
  %126 = icmp ult i64 %122, %__v41_c.03.i5.unr
  %127 = zext i1 %126 to i64
  %128 = lshr i128 %__v43_r.i6.epil, 64
  %129 = trunc i128 %128 to i64
  %130 = add i64 %127, %129
  %131 = icmp ult i64 %125, %124
  %132 = zext i1 %131 to i64
  %133 = add i64 %130, %132
  br label %._crit_edge6.i9

._crit_edge6.i9:                                  ; preds = %._crit_edge6.i9.unr-lcssa, %.epil.preheader
  %.lcssa80 = phi i64 [ %.lcssa80.ph, %._crit_edge6.i9.unr-lcssa ], [ %133, %.epil.preheader ]
  %134 = icmp ugt i64 %__v126_lexpr, %__v30_n
  br i1 %134, label %.lr.ph.i10.preheader, label %_mpi_mul_hlp.exit14

.lr.ph.i10.preheader:                             ; preds = %._crit_edge6.i9
  %xtraiter94 = and i64 %15, 3
  %lcmp.mod95 = icmp eq i64 %xtraiter94, 0
  br i1 %lcmp.mod95, label %.lr.ph.i10.prol.loopexit, label %.lr.ph.i10.prol.preheader

.lr.ph.i10.prol.preheader:                        ; preds = %.lr.ph.i10.preheader
  br label %.lr.ph.i10.prol

.lr.ph.i10.prol:                                  ; preds = %.lr.ph.i10.prol, %.lr.ph.i10.prol.preheader
  %__v46_i2.i11.prol = phi i64 [ %140, %.lr.ph.i10.prol ], [ %__v30_n, %.lr.ph.i10.prol.preheader ]
  %__v41_c.11.i12.prol = phi i64 [ %139, %.lr.ph.i10.prol ], [ %.lcssa80, %.lr.ph.i10.prol.preheader ]
  %prol.iter96 = phi i64 [ %prol.iter96.sub, %.lr.ph.i10.prol ], [ %xtraiter94, %.lr.ph.i10.prol.preheader ]
  %135 = getelementptr i64, i64* %18, i64 %__v46_i2.i11.prol
  %136 = load i64, i64* %135, align 8
  %137 = add i64 %136, %__v41_c.11.i12.prol
  store i64 %137, i64* %135, align 8
  %138 = icmp ult i64 %137, %__v41_c.11.i12.prol
  %139 = zext i1 %138 to i64
  %140 = add nuw i64 %__v46_i2.i11.prol, 1
  %prol.iter96.sub = add i64 %prol.iter96, -1
  %prol.iter96.cmp = icmp eq i64 %prol.iter96.sub, 0
  br i1 %prol.iter96.cmp, label %.lr.ph.i10.prol.loopexit.unr-lcssa, label %.lr.ph.i10.prol, !llvm.loop !0

.lr.ph.i10.prol.loopexit.unr-lcssa:               ; preds = %.lr.ph.i10.prol
  %141 = zext i1 %138 to i64
  br label %.lr.ph.i10.prol.loopexit

.lr.ph.i10.prol.loopexit:                         ; preds = %.lr.ph.i10.preheader, %.lr.ph.i10.prol.loopexit.unr-lcssa
  %__v46_i2.i11.unr = phi i64 [ %__v30_n, %.lr.ph.i10.preheader ], [ %140, %.lr.ph.i10.prol.loopexit.unr-lcssa ]
  %__v41_c.11.i12.unr = phi i64 [ %.lcssa80, %.lr.ph.i10.preheader ], [ %141, %.lr.ph.i10.prol.loopexit.unr-lcssa ]
  %142 = icmp ult i64 %16, 3
  br i1 %142, label %_mpi_mul_hlp.exit14, label %.lr.ph.i10.preheader.new

.lr.ph.i10.preheader.new:                         ; preds = %.lr.ph.i10.prol.loopexit
  br label %.lr.ph.i10

.lr.ph.i10:                                       ; preds = %.lr.ph.i10, %.lr.ph.i10.preheader.new
  %__v46_i2.i11 = phi i64 [ %__v46_i2.i11.unr, %.lr.ph.i10.preheader.new ], [ %166, %.lr.ph.i10 ]
  %__v41_c.11.i12 = phi i64 [ %__v41_c.11.i12.unr, %.lr.ph.i10.preheader.new ], [ %165, %.lr.ph.i10 ]
  %143 = getelementptr i64, i64* %18, i64 %__v46_i2.i11
  %144 = load i64, i64* %143, align 8
  %145 = add i64 %144, %__v41_c.11.i12
  store i64 %145, i64* %143, align 8
  %146 = icmp ult i64 %145, %__v41_c.11.i12
  %147 = zext i1 %146 to i64
  %148 = add nuw i64 %__v46_i2.i11, 1
  %149 = getelementptr i64, i64* %18, i64 %148
  %150 = load i64, i64* %149, align 8
  %151 = add i64 %150, %147
  store i64 %151, i64* %149, align 8
  %152 = icmp ult i64 %151, %147
  %153 = zext i1 %152 to i64
  %154 = add i64 %__v46_i2.i11, 2
  %155 = getelementptr i64, i64* %18, i64 %154
  %156 = load i64, i64* %155, align 8
  %157 = add i64 %156, %153
  store i64 %157, i64* %155, align 8
  %158 = icmp ult i64 %157, %153
  %159 = zext i1 %158 to i64
  %160 = add i64 %__v46_i2.i11, 3
  %161 = getelementptr i64, i64* %18, i64 %160
  %162 = load i64, i64* %161, align 8
  %163 = add i64 %162, %159
  store i64 %163, i64* %161, align 8
  %164 = icmp ult i64 %163, %159
  %165 = zext i1 %164 to i64
  %166 = add i64 %__v46_i2.i11, 4
  %exitcond.i13.3 = icmp eq i64 %166, %__v126_lexpr
  br i1 %exitcond.i13.3, label %_mpi_mul_hlp.exit14, label %.lr.ph.i10

_mpi_mul_hlp.exit14:                              ; preds = %.lr.ph.i10.prol.loopexit, %.lr.ph.i10, %._crit_edge6.i9
  store i64 %__v34_u0, i64* %18, align 8
  %167 = add nuw i64 %__v33_i25, 1
  %__v129_lexpr = add i64 %5, %167
  %168 = getelementptr i64, i64* %__v29_T_p, i64 %__v129_lexpr
  store i64 0, i64* %168, align 8
  %exitcond39 = icmp eq i64 %167, %__v30_n
  br i1 %exitcond39, label %._crit_edge28, label %14

._crit_edge28:                                    ; preds = %_mpi_mul_hlp.exit14
  %169 = icmp eq i64 %5, 0
  br i1 %169, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %._crit_edge31, %._crit_edge28
  %.pre-phi48 = phi i64 [ %5, %._crit_edge28 ], [ 1, %._crit_edge31 ]
  %min.iters.check = icmp ult i64 %.pre-phi48, 16
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %scevgep = getelementptr i64, i64* %__v25_A_p, i64 %.pre-phi48
  %scevgep65 = getelementptr i64, i64* %__v29_T_p, i64 %__v30_n
  %170 = add i64 %.pre-phi48, %__v30_n
  %scevgep67 = getelementptr i64, i64* %__v29_T_p, i64 %170
  %bound0 = icmp ugt i64* %scevgep67, %__v25_A_p
  %bound1 = icmp ult i64* %scevgep65, %scevgep
  %memcheck.conflict = and i1 %bound0, %bound1
  br i1 %memcheck.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %.pre-phi48, -16
  %171 = add i64 %n.vec, -16
  %172 = lshr exact i64 %171, 4
  %173 = add nuw nsw i64 %172, 1
  %xtraiter83 = and i64 %173, 1
  %174 = icmp eq i64 %171, 0
  br i1 %174, label %middle.block.unr-lcssa, label %vector.ph.new

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = sub nsw i64 %173, %xtraiter83
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.1, %vector.body ]
  %niter = phi i64 [ %unroll_iter, %vector.ph.new ], [ %niter.nsub.1, %vector.body ]
  %175 = add i64 %index, %__v30_n
  %176 = getelementptr i64, i64* %__v25_A_p, i64 %index
  %177 = getelementptr i64, i64* %__v29_T_p, i64 %175
  %178 = bitcast i64* %177 to <4 x i64>*
  %wide.load = load <4 x i64>, <4 x i64>* %178, align 8, !alias.scope !2
  %179 = getelementptr i64, i64* %177, i64 4
  %180 = bitcast i64* %179 to <4 x i64>*
  %wide.load72 = load <4 x i64>, <4 x i64>* %180, align 8, !alias.scope !2
  %181 = getelementptr i64, i64* %177, i64 8
  %182 = bitcast i64* %181 to <4 x i64>*
  %wide.load73 = load <4 x i64>, <4 x i64>* %182, align 8, !alias.scope !2
  %183 = getelementptr i64, i64* %177, i64 12
  %184 = bitcast i64* %183 to <4 x i64>*
  %wide.load74 = load <4 x i64>, <4 x i64>* %184, align 8, !alias.scope !2
  %185 = bitcast i64* %176 to <4 x i64>*
  store <4 x i64> %wide.load, <4 x i64>* %185, align 8, !alias.scope !5, !noalias !2
  %186 = getelementptr i64, i64* %176, i64 4
  %187 = bitcast i64* %186 to <4 x i64>*
  store <4 x i64> %wide.load72, <4 x i64>* %187, align 8, !alias.scope !5, !noalias !2
  %188 = getelementptr i64, i64* %176, i64 8
  %189 = bitcast i64* %188 to <4 x i64>*
  store <4 x i64> %wide.load73, <4 x i64>* %189, align 8, !alias.scope !5, !noalias !2
  %190 = getelementptr i64, i64* %176, i64 12
  %191 = bitcast i64* %190 to <4 x i64>*
  store <4 x i64> %wide.load74, <4 x i64>* %191, align 8, !alias.scope !5, !noalias !2
  %index.next = or i64 %index, 16
  %192 = add i64 %index.next, %__v30_n
  %193 = getelementptr i64, i64* %__v25_A_p, i64 %index.next
  %194 = getelementptr i64, i64* %__v29_T_p, i64 %192
  %195 = bitcast i64* %194 to <4 x i64>*
  %wide.load.1 = load <4 x i64>, <4 x i64>* %195, align 8, !alias.scope !2
  %196 = getelementptr i64, i64* %194, i64 4
  %197 = bitcast i64* %196 to <4 x i64>*
  %wide.load72.1 = load <4 x i64>, <4 x i64>* %197, align 8, !alias.scope !2
  %198 = getelementptr i64, i64* %194, i64 8
  %199 = bitcast i64* %198 to <4 x i64>*
  %wide.load73.1 = load <4 x i64>, <4 x i64>* %199, align 8, !alias.scope !2
  %200 = getelementptr i64, i64* %194, i64 12
  %201 = bitcast i64* %200 to <4 x i64>*
  %wide.load74.1 = load <4 x i64>, <4 x i64>* %201, align 8, !alias.scope !2
  %202 = bitcast i64* %193 to <4 x i64>*
  store <4 x i64> %wide.load.1, <4 x i64>* %202, align 8, !alias.scope !5, !noalias !2
  %203 = getelementptr i64, i64* %193, i64 4
  %204 = bitcast i64* %203 to <4 x i64>*
  store <4 x i64> %wide.load72.1, <4 x i64>* %204, align 8, !alias.scope !5, !noalias !2
  %205 = getelementptr i64, i64* %193, i64 8
  %206 = bitcast i64* %205 to <4 x i64>*
  store <4 x i64> %wide.load73.1, <4 x i64>* %206, align 8, !alias.scope !5, !noalias !2
  %207 = getelementptr i64, i64* %193, i64 12
  %208 = bitcast i64* %207 to <4 x i64>*
  store <4 x i64> %wide.load74.1, <4 x i64>* %208, align 8, !alias.scope !5, !noalias !2
  %index.next.1 = add i64 %index, 32
  %niter.nsub.1 = add i64 %niter, -2
  %niter.ncmp.1 = icmp eq i64 %niter.nsub.1, 0
  br i1 %niter.ncmp.1, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !7

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ]
  %lcmp.mod84 = icmp eq i64 %xtraiter83, 0
  br i1 %lcmp.mod84, label %middle.block, label %vector.body.epil

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa
  %209 = add i64 %index.unr, %__v30_n
  %210 = getelementptr i64, i64* %__v25_A_p, i64 %index.unr
  %211 = getelementptr i64, i64* %__v29_T_p, i64 %209
  %212 = bitcast i64* %211 to <4 x i64>*
  %wide.load.epil = load <4 x i64>, <4 x i64>* %212, align 8, !alias.scope !2
  %213 = getelementptr i64, i64* %211, i64 4
  %214 = bitcast i64* %213 to <4 x i64>*
  %wide.load72.epil = load <4 x i64>, <4 x i64>* %214, align 8, !alias.scope !2
  %215 = getelementptr i64, i64* %211, i64 8
  %216 = bitcast i64* %215 to <4 x i64>*
  %wide.load73.epil = load <4 x i64>, <4 x i64>* %216, align 8, !alias.scope !2
  %217 = getelementptr i64, i64* %211, i64 12
  %218 = bitcast i64* %217 to <4 x i64>*
  %wide.load74.epil = load <4 x i64>, <4 x i64>* %218, align 8, !alias.scope !2
  %219 = bitcast i64* %210 to <4 x i64>*
  store <4 x i64> %wide.load.epil, <4 x i64>* %219, align 8, !alias.scope !5, !noalias !2
  %220 = getelementptr i64, i64* %210, i64 4
  %221 = bitcast i64* %220 to <4 x i64>*
  store <4 x i64> %wide.load72.epil, <4 x i64>* %221, align 8, !alias.scope !5, !noalias !2
  %222 = getelementptr i64, i64* %210, i64 8
  %223 = bitcast i64* %222 to <4 x i64>*
  store <4 x i64> %wide.load73.epil, <4 x i64>* %223, align 8, !alias.scope !5, !noalias !2
  %224 = getelementptr i64, i64* %210, i64 12
  %225 = bitcast i64* %224 to <4 x i64>*
  store <4 x i64> %wide.load74.epil, <4 x i64>* %225, align 8, !alias.scope !5, !noalias !2
  br label %middle.block

middle.block:                                     ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %cmp.n = icmp eq i64 %.pre-phi48, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %middle.block, %vector.memcheck, %.lr.ph
  %__v36_i24.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %226 = add i64 %.pre-phi48, -1
  %227 = sub i64 %226, %__v36_i24.ph
  %xtraiter81 = and i64 %.pre-phi48, 3
  %lcmp.mod82 = icmp eq i64 %xtraiter81, 0
  br i1 %lcmp.mod82, label %scalar.ph.prol.loopexit, label %scalar.ph.prol.preheader

scalar.ph.prol.preheader:                         ; preds = %scalar.ph.preheader
  br label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.prol, %scalar.ph.prol.preheader
  %__v36_i24.prol = phi i64 [ %231, %scalar.ph.prol ], [ %__v36_i24.ph, %scalar.ph.prol.preheader ]
  %prol.iter = phi i64 [ %prol.iter.sub, %scalar.ph.prol ], [ %xtraiter81, %scalar.ph.prol.preheader ]
  %__v130_lexpr.prol = add i64 %__v36_i24.prol, %__v30_n
  %228 = getelementptr i64, i64* %__v25_A_p, i64 %__v36_i24.prol
  %229 = getelementptr i64, i64* %__v29_T_p, i64 %__v130_lexpr.prol
  %230 = load i64, i64* %229, align 8
  store i64 %230, i64* %228, align 8
  %231 = add nuw i64 %__v36_i24.prol, 1
  %prol.iter.sub = add i64 %prol.iter, -1
  %prol.iter.cmp = icmp eq i64 %prol.iter.sub, 0
  br i1 %prol.iter.cmp, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !9

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %__v36_i24.unr = phi i64 [ %__v36_i24.ph, %scalar.ph.preheader ], [ %231, %scalar.ph.prol ]
  %232 = icmp ult i64 %227, 3
  br i1 %232, label %._crit_edge, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %__v36_i24 = phi i64 [ %__v36_i24.unr, %scalar.ph.preheader.new ], [ %248, %scalar.ph ]
  %__v130_lexpr = add i64 %__v36_i24, %__v30_n
  %233 = getelementptr i64, i64* %__v25_A_p, i64 %__v36_i24
  %234 = getelementptr i64, i64* %__v29_T_p, i64 %__v130_lexpr
  %235 = load i64, i64* %234, align 8
  store i64 %235, i64* %233, align 8
  %236 = add nuw i64 %__v36_i24, 1
  %__v130_lexpr.1 = add i64 %236, %__v30_n
  %237 = getelementptr i64, i64* %__v25_A_p, i64 %236
  %238 = getelementptr i64, i64* %__v29_T_p, i64 %__v130_lexpr.1
  %239 = load i64, i64* %238, align 8
  store i64 %239, i64* %237, align 8
  %240 = add i64 %__v36_i24, 2
  %__v130_lexpr.2 = add i64 %240, %__v30_n
  %241 = getelementptr i64, i64* %__v25_A_p, i64 %240
  %242 = getelementptr i64, i64* %__v29_T_p, i64 %__v130_lexpr.2
  %243 = load i64, i64* %242, align 8
  store i64 %243, i64* %241, align 8
  %244 = add i64 %__v36_i24, 3
  %__v130_lexpr.3 = add i64 %244, %__v30_n
  %245 = getelementptr i64, i64* %__v25_A_p, i64 %244
  %246 = getelementptr i64, i64* %__v29_T_p, i64 %__v130_lexpr.3
  %247 = load i64, i64* %246, align 8
  store i64 %247, i64* %245, align 8
  %248 = add i64 %__v36_i24, 4
  %exitcond.3 = icmp eq i64 %248, %.pre-phi48
  br i1 %exitcond.3, label %._crit_edge, label %scalar.ph, !llvm.loop !10

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %._crit_edge28
  %249 = icmp eq i64 %__v82___v25_A_p_len, 0
  br i1 %249, label %._crit_edge37.i, label %.lr.ph36.i.preheader

.lr.ph36.i.preheader:                             ; preds = %._crit_edge
  br label %.lr.ph36.i

.lr.ph36.i:                                       ; preds = %.lr.ph36.i.preheader, %.lr.ph36.i
  %__v51__i35.i = phi i64 [ %259, %.lr.ph36.i ], [ 0, %.lr.ph36.i.preheader ]
  %__v49_saved_i.034.i = phi i64 [ %258, %.lr.ph36.i ], [ 0, %.lr.ph36.i.preheader ]
  %__v52_i.i = sub i64 %__v82___v25_A_p_len, %__v51__i35.i
  %__v131_lexpr.i = add i64 %__v52_i.i, -1
  %250 = icmp eq i64 %__v49_saved_i.034.i, 0
  %251 = getelementptr i64, i64* %__v25_A_p, i64 %__v131_lexpr.i
  %252 = load i64, i64* %251, align 8
  %253 = icmp ne i64 %252, 0
  %254 = zext i1 %253 to i32
  %255 = tail call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %250, i32 %254, i32 0) #0
  %256 = and i32 %255, 1
  %257 = icmp eq i32 %256, 0
  %258 = select i1 %257, i64 %__v49_saved_i.034.i, i64 %__v52_i.i
  %259 = add nuw i64 %__v51__i35.i, 1
  %exitcond43.i = icmp eq i64 %259, %__v82___v25_A_p_len
  br i1 %exitcond43.i, label %._crit_edge37.i, label %.lr.ph36.i

._crit_edge37.i:                                  ; preds = %.lr.ph36.i, %._crit_edge
  %__v49_saved_i.0.lcssa.i = phi i64 [ 0, %._crit_edge ], [ %258, %.lr.ph36.i ]
  br i1 %3, label %._crit_edge32.i, label %.lr.ph31.i.preheader

.lr.ph31.i.preheader:                             ; preds = %._crit_edge37.i
  br label %.lr.ph31.i

.lr.ph31.i:                                       ; preds = %.lr.ph31.i.preheader, %.lr.ph31.i
  %__v53__j29.i = phi i64 [ %269, %.lr.ph31.i ], [ 0, %.lr.ph31.i.preheader ]
  %__v50_saved_j.028.i = phi i64 [ %268, %.lr.ph31.i ], [ 0, %.lr.ph31.i.preheader ]
  %__v54_j.i = sub i64 %__v30_n, %__v53__j29.i
  %__v132_lexpr.i = add i64 %__v54_j.i, -1
  %260 = icmp eq i64 %__v50_saved_j.028.i, 0
  %261 = getelementptr i64, i64* %__v27_N_p, i64 %__v132_lexpr.i
  %262 = load i64, i64* %261, align 8
  %263 = icmp ne i64 %262, 0
  %264 = zext i1 %263 to i32
  %265 = tail call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %260, i32 %264, i32 0) #0
  %266 = and i32 %265, 1
  %267 = icmp eq i32 %266, 0
  %268 = select i1 %267, i64 %__v50_saved_j.028.i, i64 %__v54_j.i
  %269 = add nuw i64 %__v53__j29.i, 1
  %exitcond.i15 = icmp eq i64 %269, %__v30_n
  br i1 %exitcond.i15, label %._crit_edge32.i, label %.lr.ph31.i

._crit_edge32.i:                                  ; preds = %.lr.ph31.i, %._crit_edge37.i
  %__v50_saved_j.0.lcssa.i = phi i64 [ 0, %._crit_edge37.i ], [ %268, %.lr.ph31.i ]
  %270 = icmp eq i64 %__v49_saved_i.0.lcssa.i, 0
  %271 = icmp eq i64 %__v50_saved_j.0.lcssa.i, 0
  %272 = zext i1 %271 to i32
  %273 = tail call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %270, i32 %272, i32 0) #0
  %274 = and i32 %273, 1
  %275 = icmp ne i32 %274, 0
  %276 = tail call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %275, i32 0, i32 1) #0
  %277 = and i32 %276, 1
  %278 = icmp ne i32 %277, 0
  %__m10.i = icmp ugt i64 %__v49_saved_i.0.lcssa.i, %__v50_saved_j.0.lcssa.i
  %279 = and i1 %__m10.i, %278
  %280 = zext i1 %279 to i32
  %281 = tail call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %279, i32 0, i32 %277) #0
  %282 = and i32 %281, 1
  %__m13.i = icmp ugt i64 %__v50_saved_j.0.lcssa.i, %__v49_saved_i.0.lcssa.i
  %283 = and i32 %277, %281
  %284 = icmp ne i32 %283, 0
  %285 = and i1 %__m13.i, %284
  %286 = select i1 %285, i32 -1, i32 %280
  %287 = tail call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %285, i32 0, i32 %282) #0
  %288 = icmp ult i64 %__v82___v25_A_p_len, %__v30_n
  %__v55_start_idx.i = select i1 %288, i64 %__v82___v25_A_p_len, i64 %__v30_n
  %__rctx.0.in21.i = and i32 %287, 1
  %289 = icmp eq i64 %__v55_start_idx.i, 0
  %.pre.i = and i32 %283, %287
  br i1 %289, label %_mbedtls_mpi_cmp_abs.exit, label %.lr.ph.i16.preheader

.lr.ph.i16.preheader:                             ; preds = %._crit_edge32.i
  br label %.lr.ph.i16

.lr.ph.i16:                                       ; preds = %.lr.ph.i16.preheader, %.lr.ph.i16
  %__rctx.0.in25.i = phi i32 [ %__rctx.0.in.i, %.lr.ph.i16 ], [ %__rctx.0.in21.i, %.lr.ph.i16.preheader ]
  %__v56__i24.i = phi i64 [ %309, %.lr.ph.i16 ], [ 0, %.lr.ph.i16.preheader ]
  %__rctx.0.in.in23.i = phi i32 [ %308, %.lr.ph.i16 ], [ %287, %.lr.ph.i16.preheader ]
  %__rval.022.i = phi i32 [ %307, %.lr.ph.i16 ], [ %286, %.lr.ph.i16.preheader ]
  %__v57_i.i = sub i64 %__v55_start_idx.i, %__v56__i24.i
  %__m19.i = icmp ule i64 %__v57_i.i, %__v49_saved_i.0.lcssa.i
  %__v133_lexpr.i = add i64 %__v57_i.i, -1
  %290 = getelementptr i64, i64* %__v25_A_p, i64 %__v133_lexpr.i
  %291 = load i64, i64* %290, align 8
  %292 = getelementptr i64, i64* %__v27_N_p, i64 %__v133_lexpr.i
  %293 = load i64, i64* %292, align 8
  %__m20.i = icmp ugt i64 %291, %293
  %294 = and i1 %__m19.i, %__m20.i
  %295 = and i32 %__rctx.0.in.in23.i, %.pre.i
  %296 = icmp ne i32 %295, 0
  %297 = and i1 %296, %294
  %298 = select i1 %297, i32 1, i32 %__rval.022.i
  %299 = tail call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %297, i32 0, i32 %__rctx.0.in25.i) #0
  %300 = and i32 %299, 1
  %301 = icmp ne i32 %300, 0
  %302 = load i64, i64* %290, align 8
  %303 = load i64, i64* %292, align 8
  %__m23.i = icmp ult i64 %302, %303
  %304 = and i1 %301, %__m23.i
  %305 = and i1 %__m19.i, %304
  %306 = and i1 %296, %305
  %307 = select i1 %306, i32 -1, i32 %298
  %308 = tail call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %306, i32 0, i32 %300) #0
  %309 = add nuw i64 %__v56__i24.i, 1
  %__rctx.0.in.i = and i32 %308, 1
  %310 = icmp ugt i64 %__v55_start_idx.i, %309
  br i1 %310, label %.lr.ph.i16, label %_mbedtls_mpi_cmp_abs.exit

_mbedtls_mpi_cmp_abs.exit:                        ; preds = %.lr.ph.i16, %._crit_edge32.i
  %__rval.0.lcssa.i = phi i32 [ %286, %._crit_edge32.i ], [ %307, %.lr.ph.i16 ]
  %__rctx.0.in.in.lcssa.i = phi i32 [ %287, %._crit_edge32.i ], [ %308, %.lr.ph.i16 ]
  %__rctx.0.in.lcssa.i = phi i32 [ %__rctx.0.in21.i, %._crit_edge32.i ], [ %__rctx.0.in.i, %.lr.ph.i16 ]
  %311 = and i32 %__rctx.0.in.in.lcssa.i, %.pre.i
  %312 = icmp ne i32 %311, 0
  %313 = tail call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %312, i32 0, i32 %__rctx.0.in.lcssa.i) #0
  %__m517 = icmp sgt i32 %__rval.0.lcssa.i, -1
  %__m5 = or i1 %__m517, %312
  br i1 %3, label %._crit_edge8.i, label %.lr.ph7.i.preheader

.lr.ph7.i.preheader:                              ; preds = %_mbedtls_mpi_cmp_abs.exit
  br label %.lr.ph7.i

.lr.ph7.i:                                        ; preds = %.lr.ph7.i.preheader, %.lr.ph7.i
  %__v63_i6.i = phi i64 [ %328, %.lr.ph7.i ], [ 0, %.lr.ph7.i.preheader ]
  %__v61_c.04.i = phi i64 [ %325, %.lr.ph7.i ], [ 0, %.lr.ph7.i.preheader ]
  %314 = getelementptr i64, i64* %__v25_A_p, i64 %__v63_i6.i
  %315 = load i64, i64* %314, align 8
  %316 = icmp ult i64 %315, %__v61_c.04.i
  %317 = zext i1 %316 to i64
  %318 = select i1 %__m5, i64 %__v61_c.04.i, i64 0
  %319 = sub i64 %315, %318
  store i64 %319, i64* %314, align 8
  %320 = getelementptr i64, i64* %__v27_N_p, i64 %__v63_i6.i
  %321 = load i64, i64* %320, align 8
  %322 = icmp ult i64 %319, %321
  %323 = zext i1 %322 to i64
  %324 = add nuw nsw i64 %323, %317
  %325 = select i1 %__m5, i64 %324, i64 %__v61_c.04.i
  %326 = select i1 %__m5, i64 %321, i64 0
  %327 = sub i64 %319, %326
  store i64 %327, i64* %314, align 8
  %328 = add nuw i64 %__v63_i6.i, 1
  %exitcond11.i = icmp eq i64 %328, %__v30_n
  br i1 %exitcond11.i, label %._crit_edge8.i, label %.lr.ph7.i

._crit_edge8.i:                                   ; preds = %.lr.ph7.i, %_mbedtls_mpi_cmp_abs.exit
  %__v61_c.0.lcssa.i = phi i64 [ 0, %_mbedtls_mpi_cmp_abs.exit ], [ %325, %.lr.ph7.i ]
  %329 = icmp ugt i64 %__v82___v25_A_p_len, %__v30_n
  br i1 %329, label %.lr.ph.i1.preheader, label %_mpi_sub_hlp.exit

.lr.ph.i1.preheader:                              ; preds = %._crit_edge8.i
  %330 = sub i64 %__v82___v25_A_p_len, %__v30_n
  %331 = add i64 %__v82___v25_A_p_len, -1
  %xtraiter = and i64 %330, 1
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod, label %.lr.ph.i1.prol.loopexit, label %.lr.ph.i1.prol

.lr.ph.i1.prol:                                   ; preds = %.lr.ph.i1.preheader
  %332 = getelementptr i64, i64* %__v25_A_p, i64 %__v30_n
  %333 = load i64, i64* %332, align 8
  %334 = icmp ult i64 %333, %__v61_c.0.lcssa.i
  %335 = zext i1 %334 to i64
  %336 = select i1 %__m5, i64 %__v61_c.0.lcssa.i, i64 0
  %337 = sub i64 %333, %336
  store i64 %337, i64* %332, align 8
  %338 = select i1 %__m5, i64 %335, i64 %__v61_c.0.lcssa.i
  %339 = add nuw i64 %__v30_n, 1
  br label %.lr.ph.i1.prol.loopexit

.lr.ph.i1.prol.loopexit:                          ; preds = %.lr.ph.i1.preheader, %.lr.ph.i1.prol
  %__v64_i3.i.unr = phi i64 [ %__v30_n, %.lr.ph.i1.preheader ], [ %339, %.lr.ph.i1.prol ]
  %__v61_c.11.i.unr = phi i64 [ %__v61_c.0.lcssa.i, %.lr.ph.i1.preheader ], [ %338, %.lr.ph.i1.prol ]
  %340 = icmp eq i64 %331, %__v30_n
  br i1 %340, label %_mpi_sub_hlp.exit, label %.lr.ph.i1.preheader.new

.lr.ph.i1.preheader.new:                          ; preds = %.lr.ph.i1.prol.loopexit
  br label %.lr.ph.i1

.lr.ph.i1:                                        ; preds = %.lr.ph.i1, %.lr.ph.i1.preheader.new
  %__v64_i3.i = phi i64 [ %__v64_i3.i.unr, %.lr.ph.i1.preheader.new ], [ %356, %.lr.ph.i1 ]
  %__v61_c.11.i = phi i64 [ %__v61_c.11.i.unr, %.lr.ph.i1.preheader.new ], [ %355, %.lr.ph.i1 ]
  %341 = getelementptr i64, i64* %__v25_A_p, i64 %__v64_i3.i
  %342 = load i64, i64* %341, align 8
  %343 = icmp ult i64 %342, %__v61_c.11.i
  %344 = zext i1 %343 to i64
  %345 = select i1 %__m5, i64 %__v61_c.11.i, i64 0
  %346 = sub i64 %342, %345
  store i64 %346, i64* %341, align 8
  %347 = select i1 %__m5, i64 %344, i64 %__v61_c.11.i
  %348 = add nuw i64 %__v64_i3.i, 1
  %349 = getelementptr i64, i64* %__v25_A_p, i64 %348
  %350 = load i64, i64* %349, align 8
  %351 = icmp ult i64 %350, %347
  %352 = zext i1 %351 to i64
  %narrow = and i1 %__m5, %343
  %353 = zext i1 %narrow to i64
  %354 = sub i64 %350, %353
  store i64 %354, i64* %349, align 8
  %355 = select i1 %__m5, i64 %352, i64 %__v61_c.11.i
  %356 = add i64 %__v64_i3.i, 2
  %exitcond.i2.1 = icmp eq i64 %356, %__v82___v25_A_p_len
  br i1 %exitcond.i2.1, label %_mpi_sub_hlp.exit, label %.lr.ph.i1

_mpi_sub_hlp.exit:                                ; preds = %.lr.ph.i1.prol.loopexit, %.lr.ph.i1, %._crit_edge8.i
  %357 = tail call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m5, i32 0, i32 1) #0
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
  br i1 %2, label %._crit_edge4.i, label %.lr.ph3.i

.lr.ph3.i:                                        ; preds = %entry
  %min.iters.check = icmp ult i64 %__v67_clen.i, 16
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph3.i
  %scevgep64 = getelementptr i64, i64* %__v1_X, i64 %__v67_clen.i
  %scevgep67 = getelementptr i64, i64* %__v6_RR, i64 %__v67_clen.i
  %bound0 = icmp ugt i64* %scevgep67, %__v1_X
  %bound1 = icmp ugt i64* %scevgep64, %__v6_RR
  %memcheck.conflict = and i1 %bound0, %bound1
  br i1 %memcheck.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %__v67_clen.i, -16
  %3 = add i64 %n.vec, -16
  %4 = lshr exact i64 %3, 4
  %5 = add nuw nsw i64 %4, 1
  %xtraiter384 = and i64 %5, 1
  %6 = icmp eq i64 %3, 0
  br i1 %6, label %middle.block.unr-lcssa, label %vector.ph.new

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter386 = sub nsw i64 %5, %xtraiter384
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.1, %vector.body ]
  %niter387 = phi i64 [ %unroll_iter386, %vector.ph.new ], [ %niter387.nsub.1, %vector.body ]
  %7 = getelementptr i64, i64* %__v1_X, i64 %index
  %8 = getelementptr i64, i64* %__v6_RR, i64 %index
  %9 = bitcast i64* %8 to <4 x i64>*
  %wide.load = load <4 x i64>, <4 x i64>* %9, align 8, !alias.scope !11
  %10 = getelementptr i64, i64* %8, i64 4
  %11 = bitcast i64* %10 to <4 x i64>*
  %wide.load72 = load <4 x i64>, <4 x i64>* %11, align 8, !alias.scope !11
  %12 = getelementptr i64, i64* %8, i64 8
  %13 = bitcast i64* %12 to <4 x i64>*
  %wide.load73 = load <4 x i64>, <4 x i64>* %13, align 8, !alias.scope !11
  %14 = getelementptr i64, i64* %8, i64 12
  %15 = bitcast i64* %14 to <4 x i64>*
  %wide.load74 = load <4 x i64>, <4 x i64>* %15, align 8, !alias.scope !11
  %16 = bitcast i64* %7 to <4 x i64>*
  store <4 x i64> %wide.load, <4 x i64>* %16, align 8, !alias.scope !14, !noalias !11
  %17 = getelementptr i64, i64* %7, i64 4
  %18 = bitcast i64* %17 to <4 x i64>*
  store <4 x i64> %wide.load72, <4 x i64>* %18, align 8, !alias.scope !14, !noalias !11
  %19 = getelementptr i64, i64* %7, i64 8
  %20 = bitcast i64* %19 to <4 x i64>*
  store <4 x i64> %wide.load73, <4 x i64>* %20, align 8, !alias.scope !14, !noalias !11
  %21 = getelementptr i64, i64* %7, i64 12
  %22 = bitcast i64* %21 to <4 x i64>*
  store <4 x i64> %wide.load74, <4 x i64>* %22, align 8, !alias.scope !14, !noalias !11
  %index.next = or i64 %index, 16
  %23 = getelementptr i64, i64* %__v1_X, i64 %index.next
  %24 = getelementptr i64, i64* %__v6_RR, i64 %index.next
  %25 = bitcast i64* %24 to <4 x i64>*
  %wide.load.1 = load <4 x i64>, <4 x i64>* %25, align 8, !alias.scope !11
  %26 = getelementptr i64, i64* %24, i64 4
  %27 = bitcast i64* %26 to <4 x i64>*
  %wide.load72.1 = load <4 x i64>, <4 x i64>* %27, align 8, !alias.scope !11
  %28 = getelementptr i64, i64* %24, i64 8
  %29 = bitcast i64* %28 to <4 x i64>*
  %wide.load73.1 = load <4 x i64>, <4 x i64>* %29, align 8, !alias.scope !11
  %30 = getelementptr i64, i64* %24, i64 12
  %31 = bitcast i64* %30 to <4 x i64>*
  %wide.load74.1 = load <4 x i64>, <4 x i64>* %31, align 8, !alias.scope !11
  %32 = bitcast i64* %23 to <4 x i64>*
  store <4 x i64> %wide.load.1, <4 x i64>* %32, align 8, !alias.scope !14, !noalias !11
  %33 = getelementptr i64, i64* %23, i64 4
  %34 = bitcast i64* %33 to <4 x i64>*
  store <4 x i64> %wide.load72.1, <4 x i64>* %34, align 8, !alias.scope !14, !noalias !11
  %35 = getelementptr i64, i64* %23, i64 8
  %36 = bitcast i64* %35 to <4 x i64>*
  store <4 x i64> %wide.load73.1, <4 x i64>* %36, align 8, !alias.scope !14, !noalias !11
  %37 = getelementptr i64, i64* %23, i64 12
  %38 = bitcast i64* %37 to <4 x i64>*
  store <4 x i64> %wide.load74.1, <4 x i64>* %38, align 8, !alias.scope !14, !noalias !11
  %index.next.1 = add i64 %index, 32
  %niter387.nsub.1 = add i64 %niter387, -2
  %niter387.ncmp.1 = icmp eq i64 %niter387.nsub.1, 0
  br i1 %niter387.ncmp.1, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !16

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ]
  %lcmp.mod385 = icmp eq i64 %xtraiter384, 0
  br i1 %lcmp.mod385, label %middle.block, label %vector.body.epil

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa
  %39 = getelementptr i64, i64* %__v1_X, i64 %index.unr
  %40 = getelementptr i64, i64* %__v6_RR, i64 %index.unr
  %41 = bitcast i64* %40 to <4 x i64>*
  %wide.load.epil = load <4 x i64>, <4 x i64>* %41, align 8, !alias.scope !11
  %42 = getelementptr i64, i64* %40, i64 4
  %43 = bitcast i64* %42 to <4 x i64>*
  %wide.load72.epil = load <4 x i64>, <4 x i64>* %43, align 8, !alias.scope !11
  %44 = getelementptr i64, i64* %40, i64 8
  %45 = bitcast i64* %44 to <4 x i64>*
  %wide.load73.epil = load <4 x i64>, <4 x i64>* %45, align 8, !alias.scope !11
  %46 = getelementptr i64, i64* %40, i64 12
  %47 = bitcast i64* %46 to <4 x i64>*
  %wide.load74.epil = load <4 x i64>, <4 x i64>* %47, align 8, !alias.scope !11
  %48 = bitcast i64* %39 to <4 x i64>*
  store <4 x i64> %wide.load.epil, <4 x i64>* %48, align 8, !alias.scope !14, !noalias !11
  %49 = getelementptr i64, i64* %39, i64 4
  %50 = bitcast i64* %49 to <4 x i64>*
  store <4 x i64> %wide.load72.epil, <4 x i64>* %50, align 8, !alias.scope !14, !noalias !11
  %51 = getelementptr i64, i64* %39, i64 8
  %52 = bitcast i64* %51 to <4 x i64>*
  store <4 x i64> %wide.load73.epil, <4 x i64>* %52, align 8, !alias.scope !14, !noalias !11
  %53 = getelementptr i64, i64* %39, i64 12
  %54 = bitcast i64* %53 to <4 x i64>*
  store <4 x i64> %wide.load74.epil, <4 x i64>* %54, align 8, !alias.scope !14, !noalias !11
  br label %middle.block

middle.block:                                     ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %cmp.n = icmp eq i64 %__v67_clen.i, %n.vec
  br i1 %cmp.n, label %._crit_edge4.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %middle.block, %vector.memcheck, %.lr.ph3.i
  %__v68_i2.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph3.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %__v68_i2.i = phi i64 [ %58, %scalar.ph ], [ %__v68_i2.i.ph, %scalar.ph.preheader ]
  %55 = getelementptr i64, i64* %__v1_X, i64 %__v68_i2.i
  %56 = getelementptr i64, i64* %__v6_RR, i64 %__v68_i2.i
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %55, align 8
  %58 = add nuw i64 %__v68_i2.i, 1
  %59 = icmp ult i64 %58, %__v67_clen.i
  br i1 %59, label %scalar.ph, label %._crit_edge4.i, !llvm.loop !17

._crit_edge4.i:                                   ; preds = %scalar.ph, %middle.block, %entry
  %60 = icmp ugt i64 %__v71___v1_X_len, %__v75___v6_RR_len
  br i1 %60, label %.lr.ph.i, label %_mpi_copy.exit

.lr.ph.i:                                         ; preds = %._crit_edge4.i
  %scevgep59 = getelementptr i64, i64* %__v1_X, i64 %__v67_clen.i
  %scevgep5960 = bitcast i64* %scevgep59 to i8*
  %61 = xor i64 %__v75___v6_RR_len, 2305843009213693951
  %62 = add i64 %61, %__v71___v1_X_len
  %63 = shl i64 %62, 3
  %64 = add i64 %63, 8
  call void @llvm.memset.p0i8.i64(i8* %scevgep5960, i8 0, i64 %64, i32 8, i1 false)
  br label %_mpi_copy.exit

_mpi_copy.exit:                                   ; preds = %.lr.ph.i, %._crit_edge4.i
  %65 = tail call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 true, i32 0, i32 1) #0
  %66 = bitcast i64* %__v24_one.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %66)
  store i64 1, i64* %__v24_one.i, align 8
  call fastcc void @_mpi_montmul(i64* %__v1_X, i64 %__v71___v1_X_len, i64* nonnull %__v24_one.i, i64 1, i64* %__v5_N, i64 %__v74___v5_N_len, i64 %__v10_mm, i64* %__v7_T, i64 %__v76___v7_T_len) #0
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %66)
  %__v95_lexpr = and i64 %0, 4294967295
  %67 = icmp ult i64 %__v95_lexpr, %__v71___v1_X_len
  %__v67_clen.i2 = select i1 %67, i64 %__v95_lexpr, i64 %__v71___v1_X_len
  %68 = icmp eq i64 %__v67_clen.i2, 0
  br i1 %68, label %._crit_edge4.i5, label %.lr.ph3.i3

.lr.ph3.i3:                                       ; preds = %_mpi_copy.exit
  %min.iters.check78 = icmp ult i64 %__v67_clen.i2, 16
  br i1 %min.iters.check78, label %scalar.ph77.preheader, label %vector.memcheck89

vector.memcheck89:                                ; preds = %.lr.ph3.i3
  %scevgep81 = getelementptr i64, i64* %__v8_W, i64 %__v67_clen.i2
  %scevgep83 = getelementptr i64, i64* %__v1_X, i64 %__v67_clen.i2
  %bound085 = icmp ugt i64* %scevgep83, %__v8_W
  %bound186 = icmp ugt i64* %scevgep81, %__v1_X
  %memcheck.conflict88 = and i1 %bound085, %bound186
  br i1 %memcheck.conflict88, label %scalar.ph77.preheader, label %vector.ph90

vector.ph90:                                      ; preds = %vector.memcheck89
  %n.vec92 = and i64 %__v67_clen.i2, 4294967280
  %69 = add nsw i64 %n.vec92, -16
  %70 = lshr exact i64 %69, 4
  %71 = add nuw nsw i64 %70, 1
  %xtraiter380 = and i64 %71, 1
  %72 = icmp eq i64 %69, 0
  br i1 %72, label %middle.block76.unr-lcssa, label %vector.ph90.new

vector.ph90.new:                                  ; preds = %vector.ph90
  %unroll_iter382 = sub nsw i64 %71, %xtraiter380
  br label %vector.body75

vector.body75:                                    ; preds = %vector.body75, %vector.ph90.new
  %index93 = phi i64 [ 0, %vector.ph90.new ], [ %index.next94.1, %vector.body75 ]
  %niter383 = phi i64 [ %unroll_iter382, %vector.ph90.new ], [ %niter383.nsub.1, %vector.body75 ]
  %73 = getelementptr i64, i64* %__v8_W, i64 %index93
  %74 = getelementptr i64, i64* %__v1_X, i64 %index93
  %75 = bitcast i64* %74 to <4 x i64>*
  %wide.load103 = load <4 x i64>, <4 x i64>* %75, align 8, !alias.scope !18
  %76 = getelementptr i64, i64* %74, i64 4
  %77 = bitcast i64* %76 to <4 x i64>*
  %wide.load104 = load <4 x i64>, <4 x i64>* %77, align 8, !alias.scope !18
  %78 = getelementptr i64, i64* %74, i64 8
  %79 = bitcast i64* %78 to <4 x i64>*
  %wide.load105 = load <4 x i64>, <4 x i64>* %79, align 8, !alias.scope !18
  %80 = getelementptr i64, i64* %74, i64 12
  %81 = bitcast i64* %80 to <4 x i64>*
  %wide.load106 = load <4 x i64>, <4 x i64>* %81, align 8, !alias.scope !18
  %82 = bitcast i64* %73 to <4 x i64>*
  store <4 x i64> %wide.load103, <4 x i64>* %82, align 8, !alias.scope !21, !noalias !18
  %83 = getelementptr i64, i64* %73, i64 4
  %84 = bitcast i64* %83 to <4 x i64>*
  store <4 x i64> %wide.load104, <4 x i64>* %84, align 8, !alias.scope !21, !noalias !18
  %85 = getelementptr i64, i64* %73, i64 8
  %86 = bitcast i64* %85 to <4 x i64>*
  store <4 x i64> %wide.load105, <4 x i64>* %86, align 8, !alias.scope !21, !noalias !18
  %87 = getelementptr i64, i64* %73, i64 12
  %88 = bitcast i64* %87 to <4 x i64>*
  store <4 x i64> %wide.load106, <4 x i64>* %88, align 8, !alias.scope !21, !noalias !18
  %index.next94 = or i64 %index93, 16
  %89 = getelementptr i64, i64* %__v8_W, i64 %index.next94
  %90 = getelementptr i64, i64* %__v1_X, i64 %index.next94
  %91 = bitcast i64* %90 to <4 x i64>*
  %wide.load103.1 = load <4 x i64>, <4 x i64>* %91, align 8, !alias.scope !18
  %92 = getelementptr i64, i64* %90, i64 4
  %93 = bitcast i64* %92 to <4 x i64>*
  %wide.load104.1 = load <4 x i64>, <4 x i64>* %93, align 8, !alias.scope !18
  %94 = getelementptr i64, i64* %90, i64 8
  %95 = bitcast i64* %94 to <4 x i64>*
  %wide.load105.1 = load <4 x i64>, <4 x i64>* %95, align 8, !alias.scope !18
  %96 = getelementptr i64, i64* %90, i64 12
  %97 = bitcast i64* %96 to <4 x i64>*
  %wide.load106.1 = load <4 x i64>, <4 x i64>* %97, align 8, !alias.scope !18
  %98 = bitcast i64* %89 to <4 x i64>*
  store <4 x i64> %wide.load103.1, <4 x i64>* %98, align 8, !alias.scope !21, !noalias !18
  %99 = getelementptr i64, i64* %89, i64 4
  %100 = bitcast i64* %99 to <4 x i64>*
  store <4 x i64> %wide.load104.1, <4 x i64>* %100, align 8, !alias.scope !21, !noalias !18
  %101 = getelementptr i64, i64* %89, i64 8
  %102 = bitcast i64* %101 to <4 x i64>*
  store <4 x i64> %wide.load105.1, <4 x i64>* %102, align 8, !alias.scope !21, !noalias !18
  %103 = getelementptr i64, i64* %89, i64 12
  %104 = bitcast i64* %103 to <4 x i64>*
  store <4 x i64> %wide.load106.1, <4 x i64>* %104, align 8, !alias.scope !21, !noalias !18
  %index.next94.1 = add i64 %index93, 32
  %niter383.nsub.1 = add i64 %niter383, -2
  %niter383.ncmp.1 = icmp eq i64 %niter383.nsub.1, 0
  br i1 %niter383.ncmp.1, label %middle.block76.unr-lcssa, label %vector.body75, !llvm.loop !23

middle.block76.unr-lcssa:                         ; preds = %vector.body75, %vector.ph90
  %index93.unr = phi i64 [ 0, %vector.ph90 ], [ %index.next94.1, %vector.body75 ]
  %lcmp.mod381 = icmp eq i64 %xtraiter380, 0
  br i1 %lcmp.mod381, label %middle.block76, label %vector.body75.epil

vector.body75.epil:                               ; preds = %middle.block76.unr-lcssa
  %105 = getelementptr i64, i64* %__v8_W, i64 %index93.unr
  %106 = getelementptr i64, i64* %__v1_X, i64 %index93.unr
  %107 = bitcast i64* %106 to <4 x i64>*
  %wide.load103.epil = load <4 x i64>, <4 x i64>* %107, align 8, !alias.scope !18
  %108 = getelementptr i64, i64* %106, i64 4
  %109 = bitcast i64* %108 to <4 x i64>*
  %wide.load104.epil = load <4 x i64>, <4 x i64>* %109, align 8, !alias.scope !18
  %110 = getelementptr i64, i64* %106, i64 8
  %111 = bitcast i64* %110 to <4 x i64>*
  %wide.load105.epil = load <4 x i64>, <4 x i64>* %111, align 8, !alias.scope !18
  %112 = getelementptr i64, i64* %106, i64 12
  %113 = bitcast i64* %112 to <4 x i64>*
  %wide.load106.epil = load <4 x i64>, <4 x i64>* %113, align 8, !alias.scope !18
  %114 = bitcast i64* %105 to <4 x i64>*
  store <4 x i64> %wide.load103.epil, <4 x i64>* %114, align 8, !alias.scope !21, !noalias !18
  %115 = getelementptr i64, i64* %105, i64 4
  %116 = bitcast i64* %115 to <4 x i64>*
  store <4 x i64> %wide.load104.epil, <4 x i64>* %116, align 8, !alias.scope !21, !noalias !18
  %117 = getelementptr i64, i64* %105, i64 8
  %118 = bitcast i64* %117 to <4 x i64>*
  store <4 x i64> %wide.load105.epil, <4 x i64>* %118, align 8, !alias.scope !21, !noalias !18
  %119 = getelementptr i64, i64* %105, i64 12
  %120 = bitcast i64* %119 to <4 x i64>*
  store <4 x i64> %wide.load106.epil, <4 x i64>* %120, align 8, !alias.scope !21, !noalias !18
  br label %middle.block76

middle.block76:                                   ; preds = %middle.block76.unr-lcssa, %vector.body75.epil
  %cmp.n96 = icmp eq i64 %__v67_clen.i2, %n.vec92
  br i1 %cmp.n96, label %._crit_edge4.i5, label %scalar.ph77.preheader

scalar.ph77.preheader:                            ; preds = %middle.block76, %vector.memcheck89, %.lr.ph3.i3
  %__v68_i2.i4.ph = phi i64 [ 0, %vector.memcheck89 ], [ 0, %.lr.ph3.i3 ], [ %n.vec92, %middle.block76 ]
  br label %scalar.ph77

scalar.ph77:                                      ; preds = %scalar.ph77.preheader, %scalar.ph77
  %__v68_i2.i4 = phi i64 [ %124, %scalar.ph77 ], [ %__v68_i2.i4.ph, %scalar.ph77.preheader ]
  %121 = getelementptr i64, i64* %__v8_W, i64 %__v68_i2.i4
  %122 = getelementptr i64, i64* %__v1_X, i64 %__v68_i2.i4
  %123 = load i64, i64* %122, align 8
  store i64 %123, i64* %121, align 8
  %124 = add nuw nsw i64 %__v68_i2.i4, 1
  %125 = icmp ult i64 %124, %__v67_clen.i2
  br i1 %125, label %scalar.ph77, label %._crit_edge4.i5, !llvm.loop !24

._crit_edge4.i5:                                  ; preds = %scalar.ph77, %middle.block76, %_mpi_copy.exit
  %126 = icmp ugt i64 %__v95_lexpr, %__v71___v1_X_len
  br i1 %126, label %.lr.ph.i6, label %_mpi_copy.exit8

.lr.ph.i6:                                        ; preds = %._crit_edge4.i5
  %scevgep55 = getelementptr i64, i64* %__v8_W, i64 %__v67_clen.i2
  %scevgep5556 = bitcast i64* %scevgep55 to i8*
  %127 = xor i64 %__v71___v1_X_len, 2305843009213693951
  %128 = add i64 %__v95_lexpr, %127
  %129 = shl i64 %128, 3
  %130 = add i64 %129, 8
  call void @llvm.memset.p0i8.i64(i8* %scevgep5556, i8 0, i64 %130, i32 8, i1 false)
  br label %_mpi_copy.exit8

_mpi_copy.exit8:                                  ; preds = %.lr.ph.i6, %._crit_edge4.i5
  %131 = tail call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 true, i32 0, i32 1) #0
  %132 = getelementptr i64, i64* %__v8_W, i64 %__v95_lexpr
  %133 = icmp ult i64 %__v95_lexpr, %__v72___v2_A_len
  %__v67_clen.i9 = select i1 %133, i64 %__v95_lexpr, i64 %__v72___v2_A_len
  %134 = icmp eq i64 %__v67_clen.i9, 0
  br i1 %134, label %._crit_edge4.i12, label %.lr.ph3.i10

.lr.ph3.i10:                                      ; preds = %_mpi_copy.exit8
  %min.iters.check110 = icmp ult i64 %__v67_clen.i9, 16
  br i1 %min.iters.check110, label %scalar.ph109.preheader, label %vector.memcheck121

vector.memcheck121:                               ; preds = %.lr.ph3.i10
  %135 = add nsw i64 %__v95_lexpr, -1
  %136 = icmp ult i64 %__v95_lexpr, %__v72___v2_A_len
  %137 = select i1 %136, i64 %__v95_lexpr, i64 %__v72___v2_A_len
  %138 = xor i64 %137, -1
  %139 = sub nsw i64 %135, %138
  %scevgep112 = getelementptr i64, i64* %__v8_W, i64 %139
  %scevgep115 = getelementptr i64, i64* %__v2_A, i64 %__v67_clen.i9
  %bound0117 = icmp ult i64* %132, %scevgep115
  %bound1118 = icmp ugt i64* %scevgep112, %__v2_A
  %memcheck.conflict120 = and i1 %bound0117, %bound1118
  br i1 %memcheck.conflict120, label %scalar.ph109.preheader, label %vector.ph122

vector.ph122:                                     ; preds = %vector.memcheck121
  %n.vec124 = and i64 %__v67_clen.i9, 4294967280
  %140 = add nsw i64 %n.vec124, -16
  %141 = lshr exact i64 %140, 4
  %142 = add nuw nsw i64 %141, 1
  %xtraiter378 = and i64 %142, 1
  %143 = icmp eq i64 %140, 0
  br i1 %143, label %middle.block108.unr-lcssa, label %vector.ph122.new

vector.ph122.new:                                 ; preds = %vector.ph122
  %unroll_iter = sub nsw i64 %142, %xtraiter378
  br label %vector.body107

vector.body107:                                   ; preds = %vector.body107, %vector.ph122.new
  %index125 = phi i64 [ 0, %vector.ph122.new ], [ %index.next126.1, %vector.body107 ]
  %niter = phi i64 [ %unroll_iter, %vector.ph122.new ], [ %niter.nsub.1, %vector.body107 ]
  %144 = getelementptr i64, i64* %132, i64 %index125
  %145 = getelementptr i64, i64* %__v2_A, i64 %index125
  %146 = bitcast i64* %145 to <4 x i64>*
  %wide.load135 = load <4 x i64>, <4 x i64>* %146, align 8, !alias.scope !25
  %147 = getelementptr i64, i64* %145, i64 4
  %148 = bitcast i64* %147 to <4 x i64>*
  %wide.load136 = load <4 x i64>, <4 x i64>* %148, align 8, !alias.scope !25
  %149 = getelementptr i64, i64* %145, i64 8
  %150 = bitcast i64* %149 to <4 x i64>*
  %wide.load137 = load <4 x i64>, <4 x i64>* %150, align 8, !alias.scope !25
  %151 = getelementptr i64, i64* %145, i64 12
  %152 = bitcast i64* %151 to <4 x i64>*
  %wide.load138 = load <4 x i64>, <4 x i64>* %152, align 8, !alias.scope !25
  %153 = bitcast i64* %144 to <4 x i64>*
  store <4 x i64> %wide.load135, <4 x i64>* %153, align 8, !alias.scope !28, !noalias !25
  %154 = getelementptr i64, i64* %144, i64 4
  %155 = bitcast i64* %154 to <4 x i64>*
  store <4 x i64> %wide.load136, <4 x i64>* %155, align 8, !alias.scope !28, !noalias !25
  %156 = getelementptr i64, i64* %144, i64 8
  %157 = bitcast i64* %156 to <4 x i64>*
  store <4 x i64> %wide.load137, <4 x i64>* %157, align 8, !alias.scope !28, !noalias !25
  %158 = getelementptr i64, i64* %144, i64 12
  %159 = bitcast i64* %158 to <4 x i64>*
  store <4 x i64> %wide.load138, <4 x i64>* %159, align 8, !alias.scope !28, !noalias !25
  %index.next126 = or i64 %index125, 16
  %160 = getelementptr i64, i64* %132, i64 %index.next126
  %161 = getelementptr i64, i64* %__v2_A, i64 %index.next126
  %162 = bitcast i64* %161 to <4 x i64>*
  %wide.load135.1 = load <4 x i64>, <4 x i64>* %162, align 8, !alias.scope !25
  %163 = getelementptr i64, i64* %161, i64 4
  %164 = bitcast i64* %163 to <4 x i64>*
  %wide.load136.1 = load <4 x i64>, <4 x i64>* %164, align 8, !alias.scope !25
  %165 = getelementptr i64, i64* %161, i64 8
  %166 = bitcast i64* %165 to <4 x i64>*
  %wide.load137.1 = load <4 x i64>, <4 x i64>* %166, align 8, !alias.scope !25
  %167 = getelementptr i64, i64* %161, i64 12
  %168 = bitcast i64* %167 to <4 x i64>*
  %wide.load138.1 = load <4 x i64>, <4 x i64>* %168, align 8, !alias.scope !25
  %169 = bitcast i64* %160 to <4 x i64>*
  store <4 x i64> %wide.load135.1, <4 x i64>* %169, align 8, !alias.scope !28, !noalias !25
  %170 = getelementptr i64, i64* %160, i64 4
  %171 = bitcast i64* %170 to <4 x i64>*
  store <4 x i64> %wide.load136.1, <4 x i64>* %171, align 8, !alias.scope !28, !noalias !25
  %172 = getelementptr i64, i64* %160, i64 8
  %173 = bitcast i64* %172 to <4 x i64>*
  store <4 x i64> %wide.load137.1, <4 x i64>* %173, align 8, !alias.scope !28, !noalias !25
  %174 = getelementptr i64, i64* %160, i64 12
  %175 = bitcast i64* %174 to <4 x i64>*
  store <4 x i64> %wide.load138.1, <4 x i64>* %175, align 8, !alias.scope !28, !noalias !25
  %index.next126.1 = add i64 %index125, 32
  %niter.nsub.1 = add i64 %niter, -2
  %niter.ncmp.1 = icmp eq i64 %niter.nsub.1, 0
  br i1 %niter.ncmp.1, label %middle.block108.unr-lcssa, label %vector.body107, !llvm.loop !30

middle.block108.unr-lcssa:                        ; preds = %vector.body107, %vector.ph122
  %index125.unr = phi i64 [ 0, %vector.ph122 ], [ %index.next126.1, %vector.body107 ]
  %lcmp.mod379 = icmp eq i64 %xtraiter378, 0
  br i1 %lcmp.mod379, label %middle.block108, label %vector.body107.epil

vector.body107.epil:                              ; preds = %middle.block108.unr-lcssa
  %176 = getelementptr i64, i64* %132, i64 %index125.unr
  %177 = getelementptr i64, i64* %__v2_A, i64 %index125.unr
  %178 = bitcast i64* %177 to <4 x i64>*
  %wide.load135.epil = load <4 x i64>, <4 x i64>* %178, align 8, !alias.scope !25
  %179 = getelementptr i64, i64* %177, i64 4
  %180 = bitcast i64* %179 to <4 x i64>*
  %wide.load136.epil = load <4 x i64>, <4 x i64>* %180, align 8, !alias.scope !25
  %181 = getelementptr i64, i64* %177, i64 8
  %182 = bitcast i64* %181 to <4 x i64>*
  %wide.load137.epil = load <4 x i64>, <4 x i64>* %182, align 8, !alias.scope !25
  %183 = getelementptr i64, i64* %177, i64 12
  %184 = bitcast i64* %183 to <4 x i64>*
  %wide.load138.epil = load <4 x i64>, <4 x i64>* %184, align 8, !alias.scope !25
  %185 = bitcast i64* %176 to <4 x i64>*
  store <4 x i64> %wide.load135.epil, <4 x i64>* %185, align 8, !alias.scope !28, !noalias !25
  %186 = getelementptr i64, i64* %176, i64 4
  %187 = bitcast i64* %186 to <4 x i64>*
  store <4 x i64> %wide.load136.epil, <4 x i64>* %187, align 8, !alias.scope !28, !noalias !25
  %188 = getelementptr i64, i64* %176, i64 8
  %189 = bitcast i64* %188 to <4 x i64>*
  store <4 x i64> %wide.load137.epil, <4 x i64>* %189, align 8, !alias.scope !28, !noalias !25
  %190 = getelementptr i64, i64* %176, i64 12
  %191 = bitcast i64* %190 to <4 x i64>*
  store <4 x i64> %wide.load138.epil, <4 x i64>* %191, align 8, !alias.scope !28, !noalias !25
  br label %middle.block108

middle.block108:                                  ; preds = %middle.block108.unr-lcssa, %vector.body107.epil
  %cmp.n128 = icmp eq i64 %__v67_clen.i9, %n.vec124
  br i1 %cmp.n128, label %._crit_edge4.i12, label %scalar.ph109.preheader

scalar.ph109.preheader:                           ; preds = %middle.block108, %vector.memcheck121, %.lr.ph3.i10
  %__v68_i2.i11.ph = phi i64 [ 0, %vector.memcheck121 ], [ 0, %.lr.ph3.i10 ], [ %n.vec124, %middle.block108 ]
  br label %scalar.ph109

scalar.ph109:                                     ; preds = %scalar.ph109.preheader, %scalar.ph109
  %__v68_i2.i11 = phi i64 [ %195, %scalar.ph109 ], [ %__v68_i2.i11.ph, %scalar.ph109.preheader ]
  %192 = getelementptr i64, i64* %132, i64 %__v68_i2.i11
  %193 = getelementptr i64, i64* %__v2_A, i64 %__v68_i2.i11
  %194 = load i64, i64* %193, align 8
  store i64 %194, i64* %192, align 8
  %195 = add nuw nsw i64 %__v68_i2.i11, 1
  %196 = icmp ult i64 %195, %__v67_clen.i9
  br i1 %196, label %scalar.ph109, label %._crit_edge4.i12, !llvm.loop !31

._crit_edge4.i12:                                 ; preds = %scalar.ph109, %middle.block108, %_mpi_copy.exit8
  %197 = icmp ugt i64 %__v95_lexpr, %__v72___v2_A_len
  br i1 %197, label %.lr.ph.i13, label %_mpi_copy.exit15

.lr.ph.i13:                                       ; preds = %._crit_edge4.i12
  %198 = add nsw i64 %__v95_lexpr, -1
  %199 = xor i64 %__v72___v2_A_len, -1
  %200 = sub i64 %198, %199
  %scevgep = getelementptr i64, i64* %__v8_W, i64 %200
  %scevgep54 = bitcast i64* %scevgep to i8*
  %201 = add i64 %__v95_lexpr, %199
  %202 = shl i64 %201, 3
  %203 = add i64 %202, 8
  call void @llvm.memset.p0i8.i64(i8* %scevgep54, i8 0, i64 %203, i32 8, i1 false)
  br label %_mpi_copy.exit15

_mpi_copy.exit15:                                 ; preds = %.lr.ph.i13, %._crit_edge4.i12
  %204 = tail call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 true, i32 0, i32 1) #0
  tail call fastcc void @_mpi_montmul(i64* %132, i64 %__v95_lexpr, i64* %__v6_RR, i64 %__v75___v6_RR_len, i64* %__v5_N, i64 %__v74___v5_N_len, i64 %__v10_mm, i64* %__v7_T, i64 %__v76___v7_T_len)
  %205 = icmp eq i64 %__v95_lexpr, 0
  %206 = shl nuw nsw i64 %0, 1
  %207 = trunc i64 %206 to i32
  %208 = trunc i64 %0 to i32
  %scevgep146 = getelementptr i64, i64* %__v8_W, i64 %__v95_lexpr
  %209 = trunc i64 %0 to i32
  %scevgep151 = getelementptr i64, i64* %__v8_W, i64 %__v95_lexpr
  %210 = add nsw i64 %__v95_lexpr, -1
  %min.iters.check142 = icmp ult i64 %__v95_lexpr, 16
  %n.mod.vf160 = and i64 %0, 15
  %n.vec161 = sub nsw i64 %__v95_lexpr, %n.mod.vf160
  %cmp.n165 = icmp eq i64 %n.mod.vf160, 0
  br label %211

; <label>:211:                                    ; preds = %_mpi_copy.exit19, %_mpi_copy.exit15
  %indvar = phi i32 [ %indvar.next, %_mpi_copy.exit19 ], [ 0, %_mpi_copy.exit15 ]
  %indvars.iv51 = phi i64 [ %indvars.iv.next52, %_mpi_copy.exit19 ], [ 2, %_mpi_copy.exit15 ]
  %212 = mul i32 %indvar, %208
  %213 = add i32 %212, %207
  %214 = zext i32 %213 to i64
  %scevgep144 = getelementptr i64, i64* %__v8_W, i64 %214
  %scevgep147 = getelementptr i64, i64* %scevgep146, i64 %214
  %215 = add i32 %212, %209
  %216 = zext i32 %215 to i64
  %scevgep149 = getelementptr i64, i64* %__v8_W, i64 %216
  %scevgep152 = getelementptr i64, i64* %scevgep151, i64 %216
  %217 = mul i64 %indvars.iv51, %0
  %__v104_lexpr = and i64 %217, 4294967295
  %218 = add nuw i64 %indvars.iv51, 4294967295
  %219 = mul i64 %218, %0
  %__v108_lexpr = and i64 %219, 4294967295
  %220 = getelementptr i64, i64* %__v8_W, i64 %__v104_lexpr
  %221 = getelementptr i64, i64* %__v8_W, i64 %__v108_lexpr
  br i1 %205, label %_mpi_copy.exit19, label %.lr.ph3.i16

.lr.ph3.i16:                                      ; preds = %211
  br i1 %min.iters.check142, label %scalar.ph141.preheader, label %vector.memcheck158

vector.memcheck158:                               ; preds = %.lr.ph3.i16
  %bound0154 = icmp ult i64* %scevgep144, %scevgep152
  %bound1155 = icmp ult i64* %scevgep149, %scevgep147
  %memcheck.conflict157 = and i1 %bound0154, %bound1155
  br i1 %memcheck.conflict157, label %scalar.ph141.preheader, label %vector.ph159

vector.ph159:                                     ; preds = %vector.memcheck158
  br label %vector.body139

vector.body139:                                   ; preds = %vector.body139, %vector.ph159
  %index162 = phi i64 [ 0, %vector.ph159 ], [ %index.next163, %vector.body139 ]
  %222 = getelementptr i64, i64* %220, i64 %index162
  %223 = getelementptr i64, i64* %221, i64 %index162
  %224 = bitcast i64* %223 to <4 x i64>*
  %wide.load172 = load <4 x i64>, <4 x i64>* %224, align 8, !alias.scope !32
  %225 = getelementptr i64, i64* %223, i64 4
  %226 = bitcast i64* %225 to <4 x i64>*
  %wide.load173 = load <4 x i64>, <4 x i64>* %226, align 8, !alias.scope !32
  %227 = getelementptr i64, i64* %223, i64 8
  %228 = bitcast i64* %227 to <4 x i64>*
  %wide.load174 = load <4 x i64>, <4 x i64>* %228, align 8, !alias.scope !32
  %229 = getelementptr i64, i64* %223, i64 12
  %230 = bitcast i64* %229 to <4 x i64>*
  %wide.load175 = load <4 x i64>, <4 x i64>* %230, align 8, !alias.scope !32
  %231 = bitcast i64* %222 to <4 x i64>*
  store <4 x i64> %wide.load172, <4 x i64>* %231, align 8, !alias.scope !35, !noalias !32
  %232 = getelementptr i64, i64* %222, i64 4
  %233 = bitcast i64* %232 to <4 x i64>*
  store <4 x i64> %wide.load173, <4 x i64>* %233, align 8, !alias.scope !35, !noalias !32
  %234 = getelementptr i64, i64* %222, i64 8
  %235 = bitcast i64* %234 to <4 x i64>*
  store <4 x i64> %wide.load174, <4 x i64>* %235, align 8, !alias.scope !35, !noalias !32
  %236 = getelementptr i64, i64* %222, i64 12
  %237 = bitcast i64* %236 to <4 x i64>*
  store <4 x i64> %wide.load175, <4 x i64>* %237, align 8, !alias.scope !35, !noalias !32
  %index.next163 = add i64 %index162, 16
  %238 = icmp eq i64 %index.next163, %n.vec161
  br i1 %238, label %middle.block140, label %vector.body139, !llvm.loop !37

middle.block140:                                  ; preds = %vector.body139
  br i1 %cmp.n165, label %_mpi_copy.exit19, label %scalar.ph141.preheader

scalar.ph141.preheader:                           ; preds = %middle.block140, %vector.memcheck158, %.lr.ph3.i16
  %__v68_i2.i17.ph = phi i64 [ 0, %vector.memcheck158 ], [ 0, %.lr.ph3.i16 ], [ %n.vec161, %middle.block140 ]
  %239 = sub nsw i64 %0, %__v68_i2.i17.ph
  %240 = sub nsw i64 %210, %__v68_i2.i17.ph
  %xtraiter375 = and i64 %239, 3
  %lcmp.mod376 = icmp eq i64 %xtraiter375, 0
  br i1 %lcmp.mod376, label %scalar.ph141.prol.loopexit, label %scalar.ph141.prol.preheader

scalar.ph141.prol.preheader:                      ; preds = %scalar.ph141.preheader
  br label %scalar.ph141.prol

scalar.ph141.prol:                                ; preds = %scalar.ph141.prol, %scalar.ph141.prol.preheader
  %__v68_i2.i17.prol = phi i64 [ %244, %scalar.ph141.prol ], [ %__v68_i2.i17.ph, %scalar.ph141.prol.preheader ]
  %prol.iter377 = phi i64 [ %prol.iter377.sub, %scalar.ph141.prol ], [ %xtraiter375, %scalar.ph141.prol.preheader ]
  %241 = getelementptr i64, i64* %220, i64 %__v68_i2.i17.prol
  %242 = getelementptr i64, i64* %221, i64 %__v68_i2.i17.prol
  %243 = load i64, i64* %242, align 8
  store i64 %243, i64* %241, align 8
  %244 = add nuw nsw i64 %__v68_i2.i17.prol, 1
  %prol.iter377.sub = add i64 %prol.iter377, -1
  %prol.iter377.cmp = icmp eq i64 %prol.iter377.sub, 0
  br i1 %prol.iter377.cmp, label %scalar.ph141.prol.loopexit, label %scalar.ph141.prol, !llvm.loop !38

scalar.ph141.prol.loopexit:                       ; preds = %scalar.ph141.prol, %scalar.ph141.preheader
  %__v68_i2.i17.unr = phi i64 [ %__v68_i2.i17.ph, %scalar.ph141.preheader ], [ %244, %scalar.ph141.prol ]
  %245 = icmp ult i64 %240, 3
  br i1 %245, label %_mpi_copy.exit19, label %scalar.ph141.preheader.new

scalar.ph141.preheader.new:                       ; preds = %scalar.ph141.prol.loopexit
  br label %scalar.ph141

scalar.ph141:                                     ; preds = %scalar.ph141, %scalar.ph141.preheader.new
  %__v68_i2.i17 = phi i64 [ %__v68_i2.i17.unr, %scalar.ph141.preheader.new ], [ %261, %scalar.ph141 ]
  %246 = getelementptr i64, i64* %220, i64 %__v68_i2.i17
  %247 = getelementptr i64, i64* %221, i64 %__v68_i2.i17
  %248 = load i64, i64* %247, align 8
  store i64 %248, i64* %246, align 8
  %249 = add nuw nsw i64 %__v68_i2.i17, 1
  %250 = getelementptr i64, i64* %220, i64 %249
  %251 = getelementptr i64, i64* %221, i64 %249
  %252 = load i64, i64* %251, align 8
  store i64 %252, i64* %250, align 8
  %253 = add nsw i64 %__v68_i2.i17, 2
  %254 = getelementptr i64, i64* %220, i64 %253
  %255 = getelementptr i64, i64* %221, i64 %253
  %256 = load i64, i64* %255, align 8
  store i64 %256, i64* %254, align 8
  %257 = add nsw i64 %__v68_i2.i17, 3
  %258 = getelementptr i64, i64* %220, i64 %257
  %259 = getelementptr i64, i64* %221, i64 %257
  %260 = load i64, i64* %259, align 8
  store i64 %260, i64* %258, align 8
  %261 = add nsw i64 %__v68_i2.i17, 4
  %exitcond49.3 = icmp eq i64 %261, %__v95_lexpr
  br i1 %exitcond49.3, label %_mpi_copy.exit19, label %scalar.ph141, !llvm.loop !39

_mpi_copy.exit19:                                 ; preds = %scalar.ph141.prol.loopexit, %scalar.ph141, %middle.block140, %211
  %262 = tail call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 true, i32 0, i32 1) #0
  tail call fastcc void @_mpi_montmul(i64* %220, i64 %__v95_lexpr, i64* %132, i64 %__v95_lexpr, i64* %__v5_N, i64 %__v74___v5_N_len, i64 %__v10_mm, i64* %__v7_T, i64 %__v76___v7_T_len)
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1
  %exitcond53 = icmp eq i64 %indvars.iv.next52, 16
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond53, label %263, label %211

; <label>:263:                                    ; preds = %_mpi_copy.exit19
  %264 = icmp eq i64 %__v73___v4_E_len, 0
  br i1 %264, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %263
  %265 = add i64 %__v73___v4_E_len, 4294967295
  %266 = icmp ugt i64 %__v95_lexpr, %__v78___v9_TW_len
  %__v67_clen.i33 = select i1 %266, i64 %__v78___v9_TW_len, i64 %__v95_lexpr
  %267 = icmp eq i64 %__v67_clen.i33, 0
  %268 = icmp ult i64 %__v95_lexpr, %__v78___v9_TW_len
  %269 = icmp ult i64 %__v95_lexpr, %__v78___v9_TW_len
  %270 = select i1 %269, i64 %__v95_lexpr, i64 %__v78___v9_TW_len
  %271 = xor i64 %270, -1
  %272 = add i64 %271, %__v78___v9_TW_len
  %273 = add i64 %272, 1
  %scevgep212 = getelementptr i64, i64* %__v9_TW, i64 %__v67_clen.i33
  %scevgep216 = getelementptr i64, i64* %__v8_W, i64 %__v67_clen.i33
  %min.iters.check209 = icmp ult i64 %__v67_clen.i33, 16
  %min.iters.check180 = icmp ult i64 %273, 16
  %n.vec183 = and i64 %273, -16
  %ind.end = add i64 %__v67_clen.i33, %n.vec183
  %n.vec226 = and i64 %__v67_clen.i33, 4294967280
  %cmp.n187 = icmp eq i64 %273, %n.vec183
  %cmp.n230 = icmp eq i64 %__v67_clen.i33, %n.vec226
  br label %274

; <label>:274:                                    ; preds = %459, %.lr.ph
  %__v14__limb42 = phi i64 [ 0, %.lr.ph ], [ %460, %459 ]
  %275 = sub i64 %265, %__v14__limb42
  %__v120_lexpr = and i64 %275, 4294967295
  %276 = getelementptr i64, i64* %__v4_E, i64 %__v120_lexpr
  br label %454

._crit_edge:                                      ; preds = %459, %263
  %277 = bitcast i64* %__v24_one.i20 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %277)
  store i64 1, i64* %__v24_one.i20, align 8
  call fastcc void @_mpi_montmul(i64* %__v1_X, i64 %__v71___v1_X_len, i64* nonnull %__v24_one.i20, i64 1, i64* %__v5_N, i64 %__v74___v5_N_len, i64 %__v10_mm, i64* %__v7_T, i64 %__v76___v7_T_len) #0
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %277)
  %278 = icmp slt i32 %__v3_A_sgn, 0
  %279 = load i64, i64* %__v4_E, align 8
  %280 = trunc i64 %279 to i32
  %281 = and i32 %280, 1
  %282 = tail call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %278, i32 %281, i32 0) #0
  %283 = and i32 %282, 1
  %284 = icmp ne i32 %283, 0
  %285 = shl nuw nsw i32 %283, 1
  %286 = xor i32 %285, 2
  %287 = add nsw i32 %286, -1
  %288 = icmp ult i64 %__v76___v7_T_len, %__v74___v5_N_len
  %__v67_clen.i21 = select i1 %288, i64 %__v76___v7_T_len, i64 %__v74___v5_N_len
  %289 = icmp eq i64 %__v67_clen.i21, 0
  br i1 %289, label %._crit_edge4.i24, label %.lr.ph3.i22

.lr.ph3.i22:                                      ; preds = %._crit_edge
  %min.iters.check256 = icmp ult i64 %__v67_clen.i21, 16
  br i1 %min.iters.check256, label %scalar.ph255.preheader, label %vector.memcheck268

vector.memcheck268:                               ; preds = %.lr.ph3.i22
  %scevgep259 = getelementptr i64, i64* %__v7_T, i64 %__v67_clen.i21
  %scevgep262 = getelementptr i64, i64* %__v5_N, i64 %__v67_clen.i21
  %bound0264 = icmp ugt i64* %scevgep262, %__v7_T
  %bound1265 = icmp ugt i64* %scevgep259, %__v5_N
  %memcheck.conflict267 = and i1 %bound0264, %bound1265
  br i1 %memcheck.conflict267, label %scalar.ph255.preheader, label %vector.ph269

vector.ph269:                                     ; preds = %vector.memcheck268
  %n.vec271 = and i64 %__v67_clen.i21, -16
  br label %vector.body253

vector.body253:                                   ; preds = %vector.body253, %vector.ph269
  %index272 = phi i64 [ 0, %vector.ph269 ], [ %index.next273, %vector.body253 ]
  %290 = getelementptr i64, i64* %__v7_T, i64 %index272
  %291 = getelementptr i64, i64* %__v5_N, i64 %index272
  %292 = bitcast i64* %291 to <4 x i64>*
  %wide.load282 = load <4 x i64>, <4 x i64>* %292, align 8, !alias.scope !40
  %293 = getelementptr i64, i64* %291, i64 4
  %294 = bitcast i64* %293 to <4 x i64>*
  %wide.load283 = load <4 x i64>, <4 x i64>* %294, align 8, !alias.scope !40
  %295 = getelementptr i64, i64* %291, i64 8
  %296 = bitcast i64* %295 to <4 x i64>*
  %wide.load284 = load <4 x i64>, <4 x i64>* %296, align 8, !alias.scope !40
  %297 = getelementptr i64, i64* %291, i64 12
  %298 = bitcast i64* %297 to <4 x i64>*
  %wide.load285 = load <4 x i64>, <4 x i64>* %298, align 8, !alias.scope !40
  %299 = bitcast i64* %290 to <4 x i64>*
  %wide.load286 = load <4 x i64>, <4 x i64>* %299, align 8, !alias.scope !43, !noalias !40
  %300 = getelementptr i64, i64* %290, i64 4
  %301 = bitcast i64* %300 to <4 x i64>*
  %wide.load287 = load <4 x i64>, <4 x i64>* %301, align 8, !alias.scope !43, !noalias !40
  %302 = getelementptr i64, i64* %290, i64 8
  %303 = bitcast i64* %302 to <4 x i64>*
  %wide.load288 = load <4 x i64>, <4 x i64>* %303, align 8, !alias.scope !43, !noalias !40
  %304 = getelementptr i64, i64* %290, i64 12
  %305 = bitcast i64* %304 to <4 x i64>*
  %wide.load289 = load <4 x i64>, <4 x i64>* %305, align 8, !alias.scope !43, !noalias !40
  %306 = select i1 %284, <4 x i64> %wide.load282, <4 x i64> %wide.load286
  %307 = select i1 %284, <4 x i64> %wide.load283, <4 x i64> %wide.load287
  %308 = select i1 %284, <4 x i64> %wide.load284, <4 x i64> %wide.load288
  %309 = select i1 %284, <4 x i64> %wide.load285, <4 x i64> %wide.load289
  %310 = bitcast i64* %290 to <4 x i64>*
  store <4 x i64> %306, <4 x i64>* %310, align 8, !alias.scope !43, !noalias !40
  %311 = bitcast i64* %300 to <4 x i64>*
  store <4 x i64> %307, <4 x i64>* %311, align 8, !alias.scope !43, !noalias !40
  %312 = bitcast i64* %302 to <4 x i64>*
  store <4 x i64> %308, <4 x i64>* %312, align 8, !alias.scope !43, !noalias !40
  %313 = bitcast i64* %304 to <4 x i64>*
  store <4 x i64> %309, <4 x i64>* %313, align 8, !alias.scope !43, !noalias !40
  %index.next273 = add i64 %index272, 16
  %314 = icmp eq i64 %index.next273, %n.vec271
  br i1 %314, label %middle.block254, label %vector.body253, !llvm.loop !45

middle.block254:                                  ; preds = %vector.body253
  %cmp.n275 = icmp eq i64 %__v67_clen.i21, %n.vec271
  br i1 %cmp.n275, label %._crit_edge4.i24, label %scalar.ph255.preheader

scalar.ph255.preheader:                           ; preds = %middle.block254, %vector.memcheck268, %.lr.ph3.i22
  %__v68_i2.i23.ph = phi i64 [ 0, %vector.memcheck268 ], [ 0, %.lr.ph3.i22 ], [ %n.vec271, %middle.block254 ]
  br label %scalar.ph255

scalar.ph255:                                     ; preds = %scalar.ph255.preheader, %scalar.ph255
  %__v68_i2.i23 = phi i64 [ %320, %scalar.ph255 ], [ %__v68_i2.i23.ph, %scalar.ph255.preheader ]
  %315 = getelementptr i64, i64* %__v7_T, i64 %__v68_i2.i23
  %316 = getelementptr i64, i64* %__v5_N, i64 %__v68_i2.i23
  %317 = load i64, i64* %316, align 8
  %318 = load i64, i64* %315, align 8
  %319 = select i1 %284, i64 %317, i64 %318
  store i64 %319, i64* %315, align 8
  %320 = add nuw i64 %__v68_i2.i23, 1
  %321 = icmp ult i64 %320, %__v67_clen.i21
  br i1 %321, label %scalar.ph255, label %._crit_edge4.i24, !llvm.loop !46

._crit_edge4.i24:                                 ; preds = %scalar.ph255, %middle.block254, %._crit_edge
  %322 = icmp ugt i64 %__v76___v7_T_len, %__v74___v5_N_len
  br i1 %322, label %.lr.ph.i25, label %_mpi_copy.exit27

.lr.ph.i25:                                       ; preds = %._crit_edge4.i24
  %323 = xor i64 %__v74___v5_N_len, -1
  %324 = add i64 %323, %__v76___v7_T_len
  %325 = add i64 %324, 1
  %min.iters.check302 = icmp ult i64 %325, 16
  br i1 %min.iters.check302, label %scalar.ph300.preheader, label %vector.ph303

vector.ph303:                                     ; preds = %.lr.ph.i25
  %n.vec305 = and i64 %325, -16
  %ind.end309 = add i64 %__v67_clen.i21, %n.vec305
  br label %vector.body298

vector.body298:                                   ; preds = %vector.body298, %vector.ph303
  %index306 = phi i64 [ 0, %vector.ph303 ], [ %index.next307, %vector.body298 ]
  %326 = add i64 %__v67_clen.i21, %index306
  %327 = getelementptr i64, i64* %__v7_T, i64 %326
  %328 = bitcast i64* %327 to <4 x i64>*
  %wide.load318 = load <4 x i64>, <4 x i64>* %328, align 8
  %329 = getelementptr i64, i64* %327, i64 4
  %330 = bitcast i64* %329 to <4 x i64>*
  %wide.load319 = load <4 x i64>, <4 x i64>* %330, align 8
  %331 = getelementptr i64, i64* %327, i64 8
  %332 = bitcast i64* %331 to <4 x i64>*
  %wide.load320 = load <4 x i64>, <4 x i64>* %332, align 8
  %333 = getelementptr i64, i64* %327, i64 12
  %334 = bitcast i64* %333 to <4 x i64>*
  %wide.load321 = load <4 x i64>, <4 x i64>* %334, align 8
  %335 = select i1 %284, <4 x i64> zeroinitializer, <4 x i64> %wide.load318
  %336 = select i1 %284, <4 x i64> zeroinitializer, <4 x i64> %wide.load319
  %337 = select i1 %284, <4 x i64> zeroinitializer, <4 x i64> %wide.load320
  %338 = select i1 %284, <4 x i64> zeroinitializer, <4 x i64> %wide.load321
  %339 = bitcast i64* %327 to <4 x i64>*
  store <4 x i64> %335, <4 x i64>* %339, align 8
  %340 = bitcast i64* %329 to <4 x i64>*
  store <4 x i64> %336, <4 x i64>* %340, align 8
  %341 = bitcast i64* %331 to <4 x i64>*
  store <4 x i64> %337, <4 x i64>* %341, align 8
  %342 = bitcast i64* %333 to <4 x i64>*
  store <4 x i64> %338, <4 x i64>* %342, align 8
  %index.next307 = add i64 %index306, 16
  %343 = icmp eq i64 %index.next307, %n.vec305
  br i1 %343, label %middle.block299, label %vector.body298, !llvm.loop !47

middle.block299:                                  ; preds = %vector.body298
  %cmp.n310 = icmp eq i64 %325, %n.vec305
  br i1 %cmp.n310, label %_mpi_copy.exit27, label %scalar.ph300.preheader

scalar.ph300.preheader:                           ; preds = %middle.block299, %.lr.ph.i25
  %__v69_i1.i26.ph = phi i64 [ %__v67_clen.i21, %.lr.ph.i25 ], [ %ind.end309, %middle.block299 ]
  br label %scalar.ph300

scalar.ph300:                                     ; preds = %scalar.ph300.preheader, %scalar.ph300
  %__v69_i1.i26 = phi i64 [ %347, %scalar.ph300 ], [ %__v69_i1.i26.ph, %scalar.ph300.preheader ]
  %344 = getelementptr i64, i64* %__v7_T, i64 %__v69_i1.i26
  %345 = load i64, i64* %344, align 8
  %346 = select i1 %284, i64 0, i64 %345
  store i64 %346, i64* %344, align 8
  %347 = add i64 %__v69_i1.i26, 1
  %348 = icmp ult i64 %347, %__v76___v7_T_len
  br i1 %348, label %scalar.ph300, label %_mpi_copy.exit27, !llvm.loop !48

_mpi_copy.exit27:                                 ; preds = %scalar.ph300, %middle.block299, %._crit_edge4.i24
  %349 = tail call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %284, i32 0, i32 1) #0
  %350 = icmp eq i64 %__v71___v1_X_len, 0
  br i1 %350, label %._crit_edge8.i, label %.lr.ph7.i.preheader

.lr.ph7.i.preheader:                              ; preds = %_mpi_copy.exit27
  br label %.lr.ph7.i

.lr.ph7.i:                                        ; preds = %.lr.ph7.i.preheader, %.lr.ph7.i
  %__v63_i6.i = phi i64 [ %365, %.lr.ph7.i ], [ 0, %.lr.ph7.i.preheader ]
  %__v61_c.04.i = phi i64 [ %362, %.lr.ph7.i ], [ 0, %.lr.ph7.i.preheader ]
  %351 = getelementptr i64, i64* %__v7_T, i64 %__v63_i6.i
  %352 = load i64, i64* %351, align 8
  %353 = icmp ult i64 %352, %__v61_c.04.i
  %354 = zext i1 %353 to i64
  %355 = select i1 %284, i64 %__v61_c.04.i, i64 0
  %356 = sub i64 %352, %355
  store i64 %356, i64* %351, align 8
  %357 = getelementptr i64, i64* %__v1_X, i64 %__v63_i6.i
  %358 = load i64, i64* %357, align 8
  %359 = icmp ult i64 %356, %358
  %360 = zext i1 %359 to i64
  %361 = add nuw nsw i64 %360, %354
  %362 = select i1 %284, i64 %361, i64 %__v61_c.04.i
  %363 = select i1 %284, i64 %358, i64 0
  %364 = sub i64 %356, %363
  store i64 %364, i64* %351, align 8
  %365 = add nuw i64 %__v63_i6.i, 1
  %exitcond11.i = icmp eq i64 %365, %__v71___v1_X_len
  br i1 %exitcond11.i, label %._crit_edge8.i, label %.lr.ph7.i

._crit_edge8.i:                                   ; preds = %.lr.ph7.i, %_mpi_copy.exit27
  %__v61_c.0.lcssa.i = phi i64 [ 0, %_mpi_copy.exit27 ], [ %362, %.lr.ph7.i ]
  %366 = icmp ugt i64 %__v76___v7_T_len, %__v71___v1_X_len
  br i1 %366, label %.lr.ph.i28.preheader, label %_mpi_sub_hlp.exit

.lr.ph.i28.preheader:                             ; preds = %._crit_edge8.i
  %367 = sub i64 %__v76___v7_T_len, %__v71___v1_X_len
  %368 = add i64 %__v76___v7_T_len, -1
  %xtraiter373 = and i64 %367, 1
  %lcmp.mod374 = icmp eq i64 %xtraiter373, 0
  br i1 %lcmp.mod374, label %.lr.ph.i28.prol.loopexit, label %.lr.ph.i28.prol

.lr.ph.i28.prol:                                  ; preds = %.lr.ph.i28.preheader
  %369 = getelementptr i64, i64* %__v7_T, i64 %__v71___v1_X_len
  %370 = load i64, i64* %369, align 8
  %371 = icmp ult i64 %370, %__v61_c.0.lcssa.i
  %372 = zext i1 %371 to i64
  %373 = select i1 %284, i64 %__v61_c.0.lcssa.i, i64 0
  %374 = sub i64 %370, %373
  store i64 %374, i64* %369, align 8
  %375 = select i1 %284, i64 %372, i64 %__v61_c.0.lcssa.i
  %376 = add nuw i64 %__v71___v1_X_len, 1
  br label %.lr.ph.i28.prol.loopexit

.lr.ph.i28.prol.loopexit:                         ; preds = %.lr.ph.i28.preheader, %.lr.ph.i28.prol
  %__v64_i3.i.unr = phi i64 [ %__v71___v1_X_len, %.lr.ph.i28.preheader ], [ %376, %.lr.ph.i28.prol ]
  %__v61_c.11.i.unr = phi i64 [ %__v61_c.0.lcssa.i, %.lr.ph.i28.preheader ], [ %375, %.lr.ph.i28.prol ]
  %377 = icmp eq i64 %368, %__v71___v1_X_len
  br i1 %377, label %_mpi_sub_hlp.exit, label %.lr.ph.i28.preheader.new

.lr.ph.i28.preheader.new:                         ; preds = %.lr.ph.i28.prol.loopexit
  br label %.lr.ph.i28

.lr.ph.i28:                                       ; preds = %.lr.ph.i28, %.lr.ph.i28.preheader.new
  %__v64_i3.i = phi i64 [ %__v64_i3.i.unr, %.lr.ph.i28.preheader.new ], [ %393, %.lr.ph.i28 ]
  %__v61_c.11.i = phi i64 [ %__v61_c.11.i.unr, %.lr.ph.i28.preheader.new ], [ %392, %.lr.ph.i28 ]
  %378 = getelementptr i64, i64* %__v7_T, i64 %__v64_i3.i
  %379 = load i64, i64* %378, align 8
  %380 = icmp ult i64 %379, %__v61_c.11.i
  %381 = zext i1 %380 to i64
  %382 = select i1 %284, i64 %__v61_c.11.i, i64 0
  %383 = sub i64 %379, %382
  store i64 %383, i64* %378, align 8
  %384 = select i1 %284, i64 %381, i64 %__v61_c.11.i
  %385 = add nuw i64 %__v64_i3.i, 1
  %386 = getelementptr i64, i64* %__v7_T, i64 %385
  %387 = load i64, i64* %386, align 8
  %388 = icmp ult i64 %387, %384
  %389 = zext i1 %388 to i64
  %narrow = and i1 %284, %380
  %390 = zext i1 %narrow to i64
  %391 = sub i64 %387, %390
  store i64 %391, i64* %386, align 8
  %392 = select i1 %284, i64 %389, i64 %__v61_c.11.i
  %393 = add i64 %__v64_i3.i, 2
  %exitcond.i.1 = icmp eq i64 %393, %__v76___v7_T_len
  br i1 %exitcond.i.1, label %_mpi_sub_hlp.exit, label %.lr.ph.i28

_mpi_sub_hlp.exit:                                ; preds = %.lr.ph.i28.prol.loopexit, %.lr.ph.i28, %._crit_edge8.i
  %394 = tail call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %284, i32 0, i32 1) #0
  br i1 %350, label %_mpi_copy.exit32, label %.lr.ph3.i29

.lr.ph3.i29:                                      ; preds = %_mpi_sub_hlp.exit
  %min.iters.check333 = icmp ult i64 %__v71___v1_X_len, 16
  br i1 %min.iters.check333, label %scalar.ph332.preheader, label %vector.memcheck343

vector.memcheck343:                               ; preds = %.lr.ph3.i29
  %scevgep335 = getelementptr i64, i64* %__v1_X, i64 %__v71___v1_X_len
  %scevgep337 = getelementptr i64, i64* %__v7_T, i64 %__v71___v1_X_len
  %bound0339 = icmp ugt i64* %scevgep337, %__v1_X
  %bound1340 = icmp ugt i64* %scevgep335, %__v7_T
  %memcheck.conflict342 = and i1 %bound0339, %bound1340
  br i1 %memcheck.conflict342, label %scalar.ph332.preheader, label %vector.ph344

vector.ph344:                                     ; preds = %vector.memcheck343
  %n.vec346 = and i64 %__v71___v1_X_len, -16
  br label %vector.body330

vector.body330:                                   ; preds = %vector.body330, %vector.ph344
  %index347 = phi i64 [ 0, %vector.ph344 ], [ %index.next348, %vector.body330 ]
  %395 = getelementptr i64, i64* %__v1_X, i64 %index347
  %396 = getelementptr i64, i64* %__v7_T, i64 %index347
  %397 = bitcast i64* %396 to <4 x i64>*
  %wide.load357 = load <4 x i64>, <4 x i64>* %397, align 8, !alias.scope !50
  %398 = getelementptr i64, i64* %396, i64 4
  %399 = bitcast i64* %398 to <4 x i64>*
  %wide.load358 = load <4 x i64>, <4 x i64>* %399, align 8, !alias.scope !50
  %400 = getelementptr i64, i64* %396, i64 8
  %401 = bitcast i64* %400 to <4 x i64>*
  %wide.load359 = load <4 x i64>, <4 x i64>* %401, align 8, !alias.scope !50
  %402 = getelementptr i64, i64* %396, i64 12
  %403 = bitcast i64* %402 to <4 x i64>*
  %wide.load360 = load <4 x i64>, <4 x i64>* %403, align 8, !alias.scope !50
  %404 = bitcast i64* %395 to <4 x i64>*
  %wide.load361 = load <4 x i64>, <4 x i64>* %404, align 8, !alias.scope !53, !noalias !50
  %405 = getelementptr i64, i64* %395, i64 4
  %406 = bitcast i64* %405 to <4 x i64>*
  %wide.load362 = load <4 x i64>, <4 x i64>* %406, align 8, !alias.scope !53, !noalias !50
  %407 = getelementptr i64, i64* %395, i64 8
  %408 = bitcast i64* %407 to <4 x i64>*
  %wide.load363 = load <4 x i64>, <4 x i64>* %408, align 8, !alias.scope !53, !noalias !50
  %409 = getelementptr i64, i64* %395, i64 12
  %410 = bitcast i64* %409 to <4 x i64>*
  %wide.load364 = load <4 x i64>, <4 x i64>* %410, align 8, !alias.scope !53, !noalias !50
  %411 = select i1 %284, <4 x i64> %wide.load357, <4 x i64> %wide.load361
  %412 = select i1 %284, <4 x i64> %wide.load358, <4 x i64> %wide.load362
  %413 = select i1 %284, <4 x i64> %wide.load359, <4 x i64> %wide.load363
  %414 = select i1 %284, <4 x i64> %wide.load360, <4 x i64> %wide.load364
  %415 = bitcast i64* %395 to <4 x i64>*
  store <4 x i64> %411, <4 x i64>* %415, align 8, !alias.scope !53, !noalias !50
  %416 = bitcast i64* %405 to <4 x i64>*
  store <4 x i64> %412, <4 x i64>* %416, align 8, !alias.scope !53, !noalias !50
  %417 = bitcast i64* %407 to <4 x i64>*
  store <4 x i64> %413, <4 x i64>* %417, align 8, !alias.scope !53, !noalias !50
  %418 = bitcast i64* %409 to <4 x i64>*
  store <4 x i64> %414, <4 x i64>* %418, align 8, !alias.scope !53, !noalias !50
  %index.next348 = add i64 %index347, 16
  %419 = icmp eq i64 %index.next348, %n.vec346
  br i1 %419, label %middle.block331, label %vector.body330, !llvm.loop !55

middle.block331:                                  ; preds = %vector.body330
  %cmp.n350 = icmp eq i64 %n.vec346, %__v71___v1_X_len
  br i1 %cmp.n350, label %_mpi_copy.exit32, label %scalar.ph332.preheader

scalar.ph332.preheader:                           ; preds = %middle.block331, %vector.memcheck343, %.lr.ph3.i29
  %__v68_i2.i30.ph = phi i64 [ 0, %vector.memcheck343 ], [ 0, %.lr.ph3.i29 ], [ %n.vec346, %middle.block331 ]
  %420 = add i64 %__v71___v1_X_len, -1
  %421 = sub i64 %420, %__v68_i2.i30.ph
  %xtraiter = and i64 %__v71___v1_X_len, 3
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod, label %scalar.ph332.prol.loopexit, label %scalar.ph332.prol.preheader

scalar.ph332.prol.preheader:                      ; preds = %scalar.ph332.preheader
  br label %scalar.ph332.prol

scalar.ph332.prol:                                ; preds = %scalar.ph332.prol, %scalar.ph332.prol.preheader
  %__v68_i2.i30.prol = phi i64 [ %427, %scalar.ph332.prol ], [ %__v68_i2.i30.ph, %scalar.ph332.prol.preheader ]
  %prol.iter = phi i64 [ %prol.iter.sub, %scalar.ph332.prol ], [ %xtraiter, %scalar.ph332.prol.preheader ]
  %422 = getelementptr i64, i64* %__v1_X, i64 %__v68_i2.i30.prol
  %423 = getelementptr i64, i64* %__v7_T, i64 %__v68_i2.i30.prol
  %424 = load i64, i64* %423, align 8
  %425 = load i64, i64* %422, align 8
  %426 = select i1 %284, i64 %424, i64 %425
  store i64 %426, i64* %422, align 8
  %427 = add nuw i64 %__v68_i2.i30.prol, 1
  %prol.iter.sub = add i64 %prol.iter, -1
  %prol.iter.cmp = icmp eq i64 %prol.iter.sub, 0
  br i1 %prol.iter.cmp, label %scalar.ph332.prol.loopexit, label %scalar.ph332.prol, !llvm.loop !56

scalar.ph332.prol.loopexit:                       ; preds = %scalar.ph332.prol, %scalar.ph332.preheader
  %__v68_i2.i30.unr = phi i64 [ %__v68_i2.i30.ph, %scalar.ph332.preheader ], [ %427, %scalar.ph332.prol ]
  %428 = icmp ult i64 %421, 3
  br i1 %428, label %_mpi_copy.exit32, label %scalar.ph332.preheader.new

scalar.ph332.preheader.new:                       ; preds = %scalar.ph332.prol.loopexit
  br label %scalar.ph332

scalar.ph332:                                     ; preds = %scalar.ph332, %scalar.ph332.preheader.new
  %__v68_i2.i30 = phi i64 [ %__v68_i2.i30.unr, %scalar.ph332.preheader.new ], [ %452, %scalar.ph332 ]
  %429 = getelementptr i64, i64* %__v1_X, i64 %__v68_i2.i30
  %430 = getelementptr i64, i64* %__v7_T, i64 %__v68_i2.i30
  %431 = load i64, i64* %430, align 8
  %432 = load i64, i64* %429, align 8
  %433 = select i1 %284, i64 %431, i64 %432
  store i64 %433, i64* %429, align 8
  %434 = add nuw i64 %__v68_i2.i30, 1
  %435 = getelementptr i64, i64* %__v1_X, i64 %434
  %436 = getelementptr i64, i64* %__v7_T, i64 %434
  %437 = load i64, i64* %436, align 8
  %438 = load i64, i64* %435, align 8
  %439 = select i1 %284, i64 %437, i64 %438
  store i64 %439, i64* %435, align 8
  %440 = add i64 %__v68_i2.i30, 2
  %441 = getelementptr i64, i64* %__v1_X, i64 %440
  %442 = getelementptr i64, i64* %__v7_T, i64 %440
  %443 = load i64, i64* %442, align 8
  %444 = load i64, i64* %441, align 8
  %445 = select i1 %284, i64 %443, i64 %444
  store i64 %445, i64* %441, align 8
  %446 = add i64 %__v68_i2.i30, 3
  %447 = getelementptr i64, i64* %__v1_X, i64 %446
  %448 = getelementptr i64, i64* %__v7_T, i64 %446
  %449 = load i64, i64* %448, align 8
  %450 = load i64, i64* %447, align 8
  %451 = select i1 %284, i64 %449, i64 %450
  store i64 %451, i64* %447, align 8
  %452 = add i64 %__v68_i2.i30, 4
  %exitcond.3 = icmp eq i64 %452, %__v71___v1_X_len
  br i1 %exitcond.3, label %_mpi_copy.exit32, label %scalar.ph332, !llvm.loop !57

_mpi_copy.exit32:                                 ; preds = %scalar.ph332.prol.loopexit, %scalar.ph332, %middle.block331, %_mpi_sub_hlp.exit
  %453 = tail call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %284, i32 0, i32 1) #0
  ret i32 %287

; <label>:454:                                    ; preds = %522, %274
  %indvars.iv45 = phi i64 [ 1, %274 ], [ %indvars.iv.next46, %522 ]
  tail call fastcc void @_mpi_montmul(i64* %__v1_X, i64 %__v71___v1_X_len, i64* %__v1_X, i64 %__v71___v1_X_len, i64* %__v5_N, i64 %__v74___v5_N_len, i64 %__v10_mm, i64* %__v7_T, i64 %__v76___v7_T_len)
  tail call fastcc void @_mpi_montmul(i64* %__v1_X, i64 %__v71___v1_X_len, i64* %__v1_X, i64 %__v71___v1_X_len, i64* %__v5_N, i64 %__v74___v5_N_len, i64 %__v10_mm, i64* %__v7_T, i64 %__v76___v7_T_len)
  tail call fastcc void @_mpi_montmul(i64* %__v1_X, i64 %__v71___v1_X_len, i64* %__v1_X, i64 %__v71___v1_X_len, i64* %__v5_N, i64 %__v74___v5_N_len, i64 %__v10_mm, i64* %__v7_T, i64 %__v76___v7_T_len)
  tail call fastcc void @_mpi_montmul(i64* %__v1_X, i64 %__v71___v1_X_len, i64* %__v1_X, i64 %__v71___v1_X_len, i64* %__v5_N, i64 %__v74___v5_N_len, i64 %__v10_mm, i64* %__v7_T, i64 %__v76___v7_T_len)
  %455 = load i64, i64* %276, align 8
  %456 = shl i64 %indvars.iv45, 2
  %457 = sub nuw nsw i64 64, %456
  %458 = lshr i64 %455, %457
  %__v17_wbits = and i64 %458, 15
  br label %461

; <label>:459:                                    ; preds = %522
  %460 = add nuw i64 %__v14__limb42, 1
  %exitcond48 = icmp eq i64 %460, %__v73___v4_E_len
  br i1 %exitcond48, label %._crit_edge, label %274

; <label>:461:                                    ; preds = %_mpi_copy.exit39, %454
  %indvars.iv = phi i64 [ 0, %454 ], [ %indvars.iv.next, %_mpi_copy.exit39 ]
  %462 = mul i64 %0, %indvars.iv
  %463 = and i64 %462, 4294967295
  %scevgep214 = getelementptr i64, i64* %__v8_W, i64 %463
  %scevgep217 = getelementptr i64, i64* %scevgep216, i64 %463
  %__m3 = icmp eq i64 %__v17_wbits, %indvars.iv
  %464 = mul i64 %indvars.iv, %0
  %__v121_lexpr = and i64 %464, 4294967295
  %465 = getelementptr i64, i64* %__v8_W, i64 %__v121_lexpr
  br i1 %267, label %._crit_edge4.i36, label %.lr.ph3.i34

.lr.ph3.i34:                                      ; preds = %461
  br i1 %min.iters.check209, label %scalar.ph208.preheader, label %vector.memcheck223

vector.memcheck223:                               ; preds = %.lr.ph3.i34
  %bound0219 = icmp ugt i64* %scevgep217, %__v9_TW
  %bound1220 = icmp ult i64* %scevgep214, %scevgep212
  %memcheck.conflict222 = and i1 %bound0219, %bound1220
  br i1 %memcheck.conflict222, label %scalar.ph208.preheader, label %vector.ph224

vector.ph224:                                     ; preds = %vector.memcheck223
  br label %vector.body206

vector.body206:                                   ; preds = %vector.body206, %vector.ph224
  %index227 = phi i64 [ 0, %vector.ph224 ], [ %index.next228, %vector.body206 ]
  %466 = getelementptr i64, i64* %__v9_TW, i64 %index227
  %467 = getelementptr i64, i64* %465, i64 %index227
  %468 = bitcast i64* %467 to <4 x i64>*
  %wide.load237 = load <4 x i64>, <4 x i64>* %468, align 8, !alias.scope !58
  %469 = getelementptr i64, i64* %467, i64 4
  %470 = bitcast i64* %469 to <4 x i64>*
  %wide.load238 = load <4 x i64>, <4 x i64>* %470, align 8, !alias.scope !58
  %471 = getelementptr i64, i64* %467, i64 8
  %472 = bitcast i64* %471 to <4 x i64>*
  %wide.load239 = load <4 x i64>, <4 x i64>* %472, align 8, !alias.scope !58
  %473 = getelementptr i64, i64* %467, i64 12
  %474 = bitcast i64* %473 to <4 x i64>*
  %wide.load240 = load <4 x i64>, <4 x i64>* %474, align 8, !alias.scope !58
  %475 = bitcast i64* %466 to <4 x i64>*
  %wide.load241 = load <4 x i64>, <4 x i64>* %475, align 8, !alias.scope !61, !noalias !58
  %476 = getelementptr i64, i64* %466, i64 4
  %477 = bitcast i64* %476 to <4 x i64>*
  %wide.load242 = load <4 x i64>, <4 x i64>* %477, align 8, !alias.scope !61, !noalias !58
  %478 = getelementptr i64, i64* %466, i64 8
  %479 = bitcast i64* %478 to <4 x i64>*
  %wide.load243 = load <4 x i64>, <4 x i64>* %479, align 8, !alias.scope !61, !noalias !58
  %480 = getelementptr i64, i64* %466, i64 12
  %481 = bitcast i64* %480 to <4 x i64>*
  %wide.load244 = load <4 x i64>, <4 x i64>* %481, align 8, !alias.scope !61, !noalias !58
  %482 = select i1 %__m3, <4 x i64> %wide.load237, <4 x i64> %wide.load241
  %483 = select i1 %__m3, <4 x i64> %wide.load238, <4 x i64> %wide.load242
  %484 = select i1 %__m3, <4 x i64> %wide.load239, <4 x i64> %wide.load243
  %485 = select i1 %__m3, <4 x i64> %wide.load240, <4 x i64> %wide.load244
  %486 = bitcast i64* %466 to <4 x i64>*
  store <4 x i64> %482, <4 x i64>* %486, align 8, !alias.scope !61, !noalias !58
  %487 = bitcast i64* %476 to <4 x i64>*
  store <4 x i64> %483, <4 x i64>* %487, align 8, !alias.scope !61, !noalias !58
  %488 = bitcast i64* %478 to <4 x i64>*
  store <4 x i64> %484, <4 x i64>* %488, align 8, !alias.scope !61, !noalias !58
  %489 = bitcast i64* %480 to <4 x i64>*
  store <4 x i64> %485, <4 x i64>* %489, align 8, !alias.scope !61, !noalias !58
  %index.next228 = add i64 %index227, 16
  %490 = icmp eq i64 %index.next228, %n.vec226
  br i1 %490, label %middle.block207, label %vector.body206, !llvm.loop !63

middle.block207:                                  ; preds = %vector.body206
  br i1 %cmp.n230, label %._crit_edge4.i36, label %scalar.ph208.preheader

scalar.ph208.preheader:                           ; preds = %middle.block207, %vector.memcheck223, %.lr.ph3.i34
  %__v68_i2.i35.ph = phi i64 [ 0, %vector.memcheck223 ], [ 0, %.lr.ph3.i34 ], [ %n.vec226, %middle.block207 ]
  br label %scalar.ph208

scalar.ph208:                                     ; preds = %scalar.ph208.preheader, %scalar.ph208
  %__v68_i2.i35 = phi i64 [ %496, %scalar.ph208 ], [ %__v68_i2.i35.ph, %scalar.ph208.preheader ]
  %491 = getelementptr i64, i64* %__v9_TW, i64 %__v68_i2.i35
  %492 = getelementptr i64, i64* %465, i64 %__v68_i2.i35
  %493 = load i64, i64* %492, align 8
  %494 = load i64, i64* %491, align 8
  %495 = select i1 %__m3, i64 %493, i64 %494
  store i64 %495, i64* %491, align 8
  %496 = add nuw nsw i64 %__v68_i2.i35, 1
  %497 = icmp ult i64 %496, %__v67_clen.i33
  br i1 %497, label %scalar.ph208, label %._crit_edge4.i36, !llvm.loop !64

._crit_edge4.i36:                                 ; preds = %scalar.ph208, %middle.block207, %461
  br i1 %268, label %.lr.ph.i37, label %_mpi_copy.exit39

.lr.ph.i37:                                       ; preds = %._crit_edge4.i36
  br i1 %min.iters.check180, label %scalar.ph178.preheader, label %vector.ph181

vector.ph181:                                     ; preds = %.lr.ph.i37
  br label %vector.body176

vector.body176:                                   ; preds = %vector.body176, %vector.ph181
  %index184 = phi i64 [ 0, %vector.ph181 ], [ %index.next185, %vector.body176 ]
  %498 = add i64 %__v67_clen.i33, %index184
  %499 = getelementptr i64, i64* %__v9_TW, i64 %498
  %500 = bitcast i64* %499 to <4 x i64>*
  %wide.load194 = load <4 x i64>, <4 x i64>* %500, align 8
  %501 = getelementptr i64, i64* %499, i64 4
  %502 = bitcast i64* %501 to <4 x i64>*
  %wide.load195 = load <4 x i64>, <4 x i64>* %502, align 8
  %503 = getelementptr i64, i64* %499, i64 8
  %504 = bitcast i64* %503 to <4 x i64>*
  %wide.load196 = load <4 x i64>, <4 x i64>* %504, align 8
  %505 = getelementptr i64, i64* %499, i64 12
  %506 = bitcast i64* %505 to <4 x i64>*
  %wide.load197 = load <4 x i64>, <4 x i64>* %506, align 8
  %507 = select i1 %__m3, <4 x i64> zeroinitializer, <4 x i64> %wide.load194
  %508 = select i1 %__m3, <4 x i64> zeroinitializer, <4 x i64> %wide.load195
  %509 = select i1 %__m3, <4 x i64> zeroinitializer, <4 x i64> %wide.load196
  %510 = select i1 %__m3, <4 x i64> zeroinitializer, <4 x i64> %wide.load197
  %511 = bitcast i64* %499 to <4 x i64>*
  store <4 x i64> %507, <4 x i64>* %511, align 8
  %512 = bitcast i64* %501 to <4 x i64>*
  store <4 x i64> %508, <4 x i64>* %512, align 8
  %513 = bitcast i64* %503 to <4 x i64>*
  store <4 x i64> %509, <4 x i64>* %513, align 8
  %514 = bitcast i64* %505 to <4 x i64>*
  store <4 x i64> %510, <4 x i64>* %514, align 8
  %index.next185 = add i64 %index184, 16
  %515 = icmp eq i64 %index.next185, %n.vec183
  br i1 %515, label %middle.block177, label %vector.body176, !llvm.loop !65

middle.block177:                                  ; preds = %vector.body176
  br i1 %cmp.n187, label %_mpi_copy.exit39, label %scalar.ph178.preheader

scalar.ph178.preheader:                           ; preds = %middle.block177, %.lr.ph.i37
  %__v69_i1.i38.ph = phi i64 [ %__v67_clen.i33, %.lr.ph.i37 ], [ %ind.end, %middle.block177 ]
  br label %scalar.ph178

scalar.ph178:                                     ; preds = %scalar.ph178.preheader, %scalar.ph178
  %__v69_i1.i38 = phi i64 [ %519, %scalar.ph178 ], [ %__v69_i1.i38.ph, %scalar.ph178.preheader ]
  %516 = getelementptr i64, i64* %__v9_TW, i64 %__v69_i1.i38
  %517 = load i64, i64* %516, align 8
  %518 = select i1 %__m3, i64 0, i64 %517
  store i64 %518, i64* %516, align 8
  %519 = add i64 %__v69_i1.i38, 1
  %520 = icmp ult i64 %519, %__v78___v9_TW_len
  br i1 %520, label %scalar.ph178, label %_mpi_copy.exit39, !llvm.loop !66

_mpi_copy.exit39:                                 ; preds = %scalar.ph178, %middle.block177, %._crit_edge4.i36
  %521 = tail call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m3, i32 0, i32 1) #0
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond44 = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond44, label %522, label %461

; <label>:522:                                    ; preds = %_mpi_copy.exit39
  tail call fastcc void @_mpi_montmul(i64* %__v1_X, i64 %__v71___v1_X_len, i64* %__v9_TW, i64 %__v78___v9_TW_len, i64* %__v5_N, i64 %__v74___v5_N_len, i64 %__v10_mm, i64* %__v7_T, i64 %__v76___v7_T_len)
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1
  %exitcond47 = icmp eq i64 %indvars.iv.next46, 17
  br i1 %exitcond47, label %459, label %454
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

attributes #0 = { nounwind }
attributes #1 = { argmemonly nounwind }

!0 = distinct !{!0, !1}
!1 = !{!"llvm.loop.unroll.disable"}
!2 = !{!3}
!3 = distinct !{!3, !4}
!4 = distinct !{!4, !"LVerDomain"}
!5 = !{!6}
!6 = distinct !{!6, !4}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.isvectorized", i32 1}
!9 = distinct !{!9, !1}
!10 = distinct !{!10, !8}
!11 = !{!12}
!12 = distinct !{!12, !13}
!13 = distinct !{!13, !"LVerDomain"}
!14 = !{!15}
!15 = distinct !{!15, !13}
!16 = distinct !{!16, !8}
!17 = distinct !{!17, !8}
!18 = !{!19}
!19 = distinct !{!19, !20}
!20 = distinct !{!20, !"LVerDomain"}
!21 = !{!22}
!22 = distinct !{!22, !20}
!23 = distinct !{!23, !8}
!24 = distinct !{!24, !8}
!25 = !{!26}
!26 = distinct !{!26, !27}
!27 = distinct !{!27, !"LVerDomain"}
!28 = !{!29}
!29 = distinct !{!29, !27}
!30 = distinct !{!30, !8}
!31 = distinct !{!31, !8}
!32 = !{!33}
!33 = distinct !{!33, !34}
!34 = distinct !{!34, !"LVerDomain"}
!35 = !{!36}
!36 = distinct !{!36, !34}
!37 = distinct !{!37, !8}
!38 = distinct !{!38, !1}
!39 = distinct !{!39, !8}
!40 = !{!41}
!41 = distinct !{!41, !42}
!42 = distinct !{!42, !"LVerDomain"}
!43 = !{!44}
!44 = distinct !{!44, !42}
!45 = distinct !{!45, !8}
!46 = distinct !{!46, !8}
!47 = distinct !{!47, !8}
!48 = distinct !{!48, !49, !8}
!49 = !{!"llvm.loop.unroll.runtime.disable"}
!50 = !{!51}
!51 = distinct !{!51, !52}
!52 = distinct !{!52, !"LVerDomain"}
!53 = !{!54}
!54 = distinct !{!54, !52}
!55 = distinct !{!55, !8}
!56 = distinct !{!56, !1}
!57 = distinct !{!57, !8}
!58 = !{!59}
!59 = distinct !{!59, !60}
!60 = distinct !{!60, !"LVerDomain"}
!61 = !{!62}
!62 = distinct !{!62, !60}
!63 = distinct !{!63, !8}
!64 = distinct !{!64, !8}
!65 = distinct !{!65, !8}
!66 = distinct !{!66, !49, !8}
