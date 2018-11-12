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
  %xtraiter86 = and i64 %__v30_n, 1
  %12 = icmp eq i64 %__v30_n, 1
  %xtraiter81 = and i64 %8, 1
  %13 = icmp eq i64 %7, 2
  %unroll_iter88 = sub i64 %__v30_n, %xtraiter86
  %lcmp.mod87 = icmp eq i64 %xtraiter86, 0
  %unroll_iter84 = sub i64 %8, %xtraiter81
  %lcmp.mod83 = icmp eq i64 %xtraiter81, 0
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
  %niter85 = phi i64 [ %unroll_iter84, %._crit_edge44.preheader.new ], [ %niter85.nsub.1, %._crit_edge44 ]
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
  %niter85.nsub.1 = add i64 %niter85, -2
  %niter85.ncmp.1 = icmp eq i64 %niter85.nsub.1, 0
  br i1 %niter85.ncmp.1, label %._crit_edge6.i.loopexit.unr-lcssa, label %._crit_edge44

._crit_edge6.i.loopexit.unr-lcssa:                ; preds = %._crit_edge44, %._crit_edge44.preheader
  %.lcssa75.ph = phi i64 [ undef, %._crit_edge44.preheader ], [ %60, %._crit_edge44 ]
  %.unr = phi i64 [ 1, %._crit_edge44.preheader ], [ %61, %._crit_edge44 ]
  %.unr82 = phi i64 [ %31, %._crit_edge44.preheader ], [ %60, %._crit_edge44 ]
  br i1 %lcmp.mod83, label %._crit_edge6.i, label %._crit_edge44.epil

._crit_edge44.epil:                               ; preds = %._crit_edge6.i.loopexit.unr-lcssa
  %.phi.trans.insert.epil = getelementptr i64, i64* %__v26_B_p, i64 %.unr
  %.pre.epil = load i64, i64* %.phi.trans.insert.epil, align 8
  %.phi.trans.insert45.epil = getelementptr i64, i64* %18, i64 %.unr
  %.pre46.epil = load i64, i64* %.phi.trans.insert45.epil, align 8
  %62 = zext i64 %.pre.epil to i128
  %__v43_r.i.epil = mul nuw i128 %62, %23
  %63 = trunc i128 %__v43_r.i.epil to i64
  %64 = add i64 %.unr82, %63
  %65 = getelementptr i64, i64* %18, i64 %.unr
  %66 = add i64 %64, %.pre46.epil
  store i64 %66, i64* %65, align 8
  %67 = icmp ult i64 %64, %.unr82
  %68 = zext i1 %67 to i64
  %69 = lshr i128 %__v43_r.i.epil, 64
  %70 = trunc i128 %69 to i64
  %71 = add i64 %68, %70
  %72 = icmp ult i64 %66, %.pre46.epil
  %73 = zext i1 %72 to i64
  %74 = add i64 %71, %73
  br label %._crit_edge6.i

._crit_edge6.i:                                   ; preds = %._crit_edge44.epil, %._crit_edge6.i.loopexit.unr-lcssa, %.lr.ph5.i, %14
  %__v41_c.0.lcssa.i = phi i64 [ 0, %14 ], [ %31, %.lr.ph5.i ], [ %.lcssa75.ph, %._crit_edge6.i.loopexit.unr-lcssa ], [ %74, %._crit_edge44.epil ]
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
  %niter89 = phi i64 [ %unroll_iter88, %.lr.ph5.i3.new ], [ %niter89.nsub.1, %83 ]
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
  %niter89.nsub.1 = add i64 %niter89, -2
  %niter89.ncmp.1 = icmp eq i64 %niter89.nsub.1, 0
  br i1 %niter89.ncmp.1, label %._crit_edge6.i9.unr-lcssa, label %83

._crit_edge6.i9.unr-lcssa:                        ; preds = %83, %.lr.ph5.i3
  %.lcssa76.ph = phi i64 [ undef, %.lr.ph5.i3 ], [ %116, %83 ]
  %__v42_i4.i4.unr = phi i64 [ 0, %.lr.ph5.i3 ], [ %117, %83 ]
  %__v41_c.03.i5.unr = phi i64 [ 0, %.lr.ph5.i3 ], [ %116, %83 ]
  br i1 %lcmp.mod87, label %._crit_edge6.i9, label %.epil.preheader

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
  %.lcssa76 = phi i64 [ %.lcssa76.ph, %._crit_edge6.i9.unr-lcssa ], [ %133, %.epil.preheader ]
  %134 = icmp ugt i64 %__v126_lexpr, %__v30_n
  br i1 %134, label %.lr.ph.i10.preheader, label %_mpi_mul_hlp.exit14

.lr.ph.i10.preheader:                             ; preds = %._crit_edge6.i9
  %xtraiter90 = and i64 %15, 3
  %lcmp.mod91 = icmp eq i64 %xtraiter90, 0
  br i1 %lcmp.mod91, label %.lr.ph.i10.prol.loopexit, label %.lr.ph.i10.prol.preheader

.lr.ph.i10.prol.preheader:                        ; preds = %.lr.ph.i10.preheader
  br label %.lr.ph.i10.prol

.lr.ph.i10.prol:                                  ; preds = %.lr.ph.i10.prol, %.lr.ph.i10.prol.preheader
  %__v46_i2.i11.prol = phi i64 [ %140, %.lr.ph.i10.prol ], [ %__v30_n, %.lr.ph.i10.prol.preheader ]
  %__v41_c.11.i12.prol = phi i64 [ %139, %.lr.ph.i10.prol ], [ %.lcssa76, %.lr.ph.i10.prol.preheader ]
  %prol.iter92 = phi i64 [ %prol.iter92.sub, %.lr.ph.i10.prol ], [ %xtraiter90, %.lr.ph.i10.prol.preheader ]
  %135 = getelementptr i64, i64* %18, i64 %__v46_i2.i11.prol
  %136 = load i64, i64* %135, align 8
  %137 = add i64 %136, %__v41_c.11.i12.prol
  store i64 %137, i64* %135, align 8
  %138 = icmp ult i64 %137, %__v41_c.11.i12.prol
  %139 = zext i1 %138 to i64
  %140 = add nuw i64 %__v46_i2.i11.prol, 1
  %prol.iter92.sub = add i64 %prol.iter92, -1
  %prol.iter92.cmp = icmp eq i64 %prol.iter92.sub, 0
  br i1 %prol.iter92.cmp, label %.lr.ph.i10.prol.loopexit.unr-lcssa, label %.lr.ph.i10.prol, !llvm.loop !0

.lr.ph.i10.prol.loopexit.unr-lcssa:               ; preds = %.lr.ph.i10.prol
  %141 = zext i1 %138 to i64
  br label %.lr.ph.i10.prol.loopexit

.lr.ph.i10.prol.loopexit:                         ; preds = %.lr.ph.i10.preheader, %.lr.ph.i10.prol.loopexit.unr-lcssa
  %__v46_i2.i11.unr = phi i64 [ %__v30_n, %.lr.ph.i10.preheader ], [ %140, %.lr.ph.i10.prol.loopexit.unr-lcssa ]
  %__v41_c.11.i12.unr = phi i64 [ %.lcssa76, %.lr.ph.i10.preheader ], [ %141, %.lr.ph.i10.prol.loopexit.unr-lcssa ]
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
  %min.iters.check = icmp ult i64 %.pre-phi48, 4
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
  %n.vec = and i64 %.pre-phi48, -4
  %171 = add i64 %n.vec, -4
  %172 = lshr exact i64 %171, 2
  %173 = add nuw nsw i64 %172, 1
  %xtraiter79 = and i64 %173, 3
  %174 = icmp ult i64 %171, 12
  br i1 %174, label %middle.block.unr-lcssa, label %vector.ph.new

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = sub nsw i64 %173, %xtraiter79
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.3, %vector.body ]
  %niter = phi i64 [ %unroll_iter, %vector.ph.new ], [ %niter.nsub.3, %vector.body ]
  %175 = add i64 %index, %__v30_n
  %176 = getelementptr i64, i64* %__v25_A_p, i64 %index
  %177 = getelementptr i64, i64* %__v29_T_p, i64 %175
  %178 = bitcast i64* %177 to <2 x i64>*
  %wide.load = load <2 x i64>, <2 x i64>* %178, align 8, !alias.scope !2
  %179 = getelementptr i64, i64* %177, i64 2
  %180 = bitcast i64* %179 to <2 x i64>*
  %wide.load70 = load <2 x i64>, <2 x i64>* %180, align 8, !alias.scope !2
  %181 = bitcast i64* %176 to <2 x i64>*
  store <2 x i64> %wide.load, <2 x i64>* %181, align 8, !alias.scope !5, !noalias !2
  %182 = getelementptr i64, i64* %176, i64 2
  %183 = bitcast i64* %182 to <2 x i64>*
  store <2 x i64> %wide.load70, <2 x i64>* %183, align 8, !alias.scope !5, !noalias !2
  %index.next = or i64 %index, 4
  %184 = add i64 %index.next, %__v30_n
  %185 = getelementptr i64, i64* %__v25_A_p, i64 %index.next
  %186 = getelementptr i64, i64* %__v29_T_p, i64 %184
  %187 = bitcast i64* %186 to <2 x i64>*
  %wide.load.1 = load <2 x i64>, <2 x i64>* %187, align 8, !alias.scope !2
  %188 = getelementptr i64, i64* %186, i64 2
  %189 = bitcast i64* %188 to <2 x i64>*
  %wide.load70.1 = load <2 x i64>, <2 x i64>* %189, align 8, !alias.scope !2
  %190 = bitcast i64* %185 to <2 x i64>*
  store <2 x i64> %wide.load.1, <2 x i64>* %190, align 8, !alias.scope !5, !noalias !2
  %191 = getelementptr i64, i64* %185, i64 2
  %192 = bitcast i64* %191 to <2 x i64>*
  store <2 x i64> %wide.load70.1, <2 x i64>* %192, align 8, !alias.scope !5, !noalias !2
  %index.next.1 = or i64 %index, 8
  %193 = add i64 %index.next.1, %__v30_n
  %194 = getelementptr i64, i64* %__v25_A_p, i64 %index.next.1
  %195 = getelementptr i64, i64* %__v29_T_p, i64 %193
  %196 = bitcast i64* %195 to <2 x i64>*
  %wide.load.2 = load <2 x i64>, <2 x i64>* %196, align 8, !alias.scope !2
  %197 = getelementptr i64, i64* %195, i64 2
  %198 = bitcast i64* %197 to <2 x i64>*
  %wide.load70.2 = load <2 x i64>, <2 x i64>* %198, align 8, !alias.scope !2
  %199 = bitcast i64* %194 to <2 x i64>*
  store <2 x i64> %wide.load.2, <2 x i64>* %199, align 8, !alias.scope !5, !noalias !2
  %200 = getelementptr i64, i64* %194, i64 2
  %201 = bitcast i64* %200 to <2 x i64>*
  store <2 x i64> %wide.load70.2, <2 x i64>* %201, align 8, !alias.scope !5, !noalias !2
  %index.next.2 = or i64 %index, 12
  %202 = add i64 %index.next.2, %__v30_n
  %203 = getelementptr i64, i64* %__v25_A_p, i64 %index.next.2
  %204 = getelementptr i64, i64* %__v29_T_p, i64 %202
  %205 = bitcast i64* %204 to <2 x i64>*
  %wide.load.3 = load <2 x i64>, <2 x i64>* %205, align 8, !alias.scope !2
  %206 = getelementptr i64, i64* %204, i64 2
  %207 = bitcast i64* %206 to <2 x i64>*
  %wide.load70.3 = load <2 x i64>, <2 x i64>* %207, align 8, !alias.scope !2
  %208 = bitcast i64* %203 to <2 x i64>*
  store <2 x i64> %wide.load.3, <2 x i64>* %208, align 8, !alias.scope !5, !noalias !2
  %209 = getelementptr i64, i64* %203, i64 2
  %210 = bitcast i64* %209 to <2 x i64>*
  store <2 x i64> %wide.load70.3, <2 x i64>* %210, align 8, !alias.scope !5, !noalias !2
  %index.next.3 = add i64 %index, 16
  %niter.nsub.3 = add i64 %niter, -4
  %niter.ncmp.3 = icmp eq i64 %niter.nsub.3, 0
  br i1 %niter.ncmp.3, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !7

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body ]
  %lcmp.mod80 = icmp eq i64 %xtraiter79, 0
  br i1 %lcmp.mod80, label %middle.block, label %vector.body.epil.preheader

vector.body.epil.preheader:                       ; preds = %middle.block.unr-lcssa
  br label %vector.body.epil

vector.body.epil:                                 ; preds = %vector.body.epil, %vector.body.epil.preheader
  %index.epil = phi i64 [ %index.unr, %vector.body.epil.preheader ], [ %index.next.epil, %vector.body.epil ]
  %epil.iter = phi i64 [ %xtraiter79, %vector.body.epil.preheader ], [ %epil.iter.sub, %vector.body.epil ]
  %211 = add i64 %index.epil, %__v30_n
  %212 = getelementptr i64, i64* %__v25_A_p, i64 %index.epil
  %213 = getelementptr i64, i64* %__v29_T_p, i64 %211
  %214 = bitcast i64* %213 to <2 x i64>*
  %wide.load.epil = load <2 x i64>, <2 x i64>* %214, align 8, !alias.scope !2
  %215 = getelementptr i64, i64* %213, i64 2
  %216 = bitcast i64* %215 to <2 x i64>*
  %wide.load70.epil = load <2 x i64>, <2 x i64>* %216, align 8, !alias.scope !2
  %217 = bitcast i64* %212 to <2 x i64>*
  store <2 x i64> %wide.load.epil, <2 x i64>* %217, align 8, !alias.scope !5, !noalias !2
  %218 = getelementptr i64, i64* %212, i64 2
  %219 = bitcast i64* %218 to <2 x i64>*
  store <2 x i64> %wide.load70.epil, <2 x i64>* %219, align 8, !alias.scope !5, !noalias !2
  %index.next.epil = add i64 %index.epil, 4
  %epil.iter.sub = add i64 %epil.iter, -1
  %epil.iter.cmp = icmp eq i64 %epil.iter.sub, 0
  br i1 %epil.iter.cmp, label %middle.block, label %vector.body.epil, !llvm.loop !9

middle.block:                                     ; preds = %vector.body.epil, %middle.block.unr-lcssa
  %cmp.n = icmp eq i64 %.pre-phi48, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %middle.block, %vector.memcheck, %.lr.ph
  %__v36_i24.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %220 = add i64 %.pre-phi48, -1
  %221 = sub i64 %220, %__v36_i24.ph
  %xtraiter77 = and i64 %.pre-phi48, 3
  %lcmp.mod78 = icmp eq i64 %xtraiter77, 0
  br i1 %lcmp.mod78, label %scalar.ph.prol.loopexit, label %scalar.ph.prol.preheader

scalar.ph.prol.preheader:                         ; preds = %scalar.ph.preheader
  br label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.prol, %scalar.ph.prol.preheader
  %__v36_i24.prol = phi i64 [ %225, %scalar.ph.prol ], [ %__v36_i24.ph, %scalar.ph.prol.preheader ]
  %prol.iter = phi i64 [ %prol.iter.sub, %scalar.ph.prol ], [ %xtraiter77, %scalar.ph.prol.preheader ]
  %__v130_lexpr.prol = add i64 %__v36_i24.prol, %__v30_n
  %222 = getelementptr i64, i64* %__v25_A_p, i64 %__v36_i24.prol
  %223 = getelementptr i64, i64* %__v29_T_p, i64 %__v130_lexpr.prol
  %224 = load i64, i64* %223, align 8
  store i64 %224, i64* %222, align 8
  %225 = add nuw i64 %__v36_i24.prol, 1
  %prol.iter.sub = add i64 %prol.iter, -1
  %prol.iter.cmp = icmp eq i64 %prol.iter.sub, 0
  br i1 %prol.iter.cmp, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !10

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %__v36_i24.unr = phi i64 [ %__v36_i24.ph, %scalar.ph.preheader ], [ %225, %scalar.ph.prol ]
  %226 = icmp ult i64 %221, 3
  br i1 %226, label %._crit_edge, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %__v36_i24 = phi i64 [ %__v36_i24.unr, %scalar.ph.preheader.new ], [ %242, %scalar.ph ]
  %__v130_lexpr = add i64 %__v36_i24, %__v30_n
  %227 = getelementptr i64, i64* %__v25_A_p, i64 %__v36_i24
  %228 = getelementptr i64, i64* %__v29_T_p, i64 %__v130_lexpr
  %229 = load i64, i64* %228, align 8
  store i64 %229, i64* %227, align 8
  %230 = add nuw i64 %__v36_i24, 1
  %__v130_lexpr.1 = add i64 %230, %__v30_n
  %231 = getelementptr i64, i64* %__v25_A_p, i64 %230
  %232 = getelementptr i64, i64* %__v29_T_p, i64 %__v130_lexpr.1
  %233 = load i64, i64* %232, align 8
  store i64 %233, i64* %231, align 8
  %234 = add i64 %__v36_i24, 2
  %__v130_lexpr.2 = add i64 %234, %__v30_n
  %235 = getelementptr i64, i64* %__v25_A_p, i64 %234
  %236 = getelementptr i64, i64* %__v29_T_p, i64 %__v130_lexpr.2
  %237 = load i64, i64* %236, align 8
  store i64 %237, i64* %235, align 8
  %238 = add i64 %__v36_i24, 3
  %__v130_lexpr.3 = add i64 %238, %__v30_n
  %239 = getelementptr i64, i64* %__v25_A_p, i64 %238
  %240 = getelementptr i64, i64* %__v29_T_p, i64 %__v130_lexpr.3
  %241 = load i64, i64* %240, align 8
  store i64 %241, i64* %239, align 8
  %242 = add i64 %__v36_i24, 4
  %exitcond.3 = icmp eq i64 %242, %.pre-phi48
  br i1 %exitcond.3, label %._crit_edge, label %scalar.ph, !llvm.loop !11

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %._crit_edge28
  %243 = icmp eq i64 %__v82___v25_A_p_len, 0
  br i1 %243, label %._crit_edge37.i, label %.lr.ph36.i.preheader

.lr.ph36.i.preheader:                             ; preds = %._crit_edge
  br label %.lr.ph36.i

.lr.ph36.i:                                       ; preds = %.lr.ph36.i.preheader, %.lr.ph36.i
  %__v51__i35.i = phi i64 [ %253, %.lr.ph36.i ], [ 0, %.lr.ph36.i.preheader ]
  %__v49_saved_i.034.i = phi i64 [ %252, %.lr.ph36.i ], [ 0, %.lr.ph36.i.preheader ]
  %__v52_i.i = sub i64 %__v82___v25_A_p_len, %__v51__i35.i
  %__v131_lexpr.i = add i64 %__v52_i.i, -1
  %244 = icmp eq i64 %__v49_saved_i.034.i, 0
  %245 = getelementptr i64, i64* %__v25_A_p, i64 %__v131_lexpr.i
  %246 = load i64, i64* %245, align 8
  %247 = icmp ne i64 %246, 0
  %248 = zext i1 %247 to i32
  %249 = tail call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %244, i32 %248, i32 0) #0
  %250 = and i32 %249, 1
  %251 = icmp eq i32 %250, 0
  %252 = select i1 %251, i64 %__v49_saved_i.034.i, i64 %__v52_i.i
  %253 = add nuw i64 %__v51__i35.i, 1
  %exitcond43.i = icmp eq i64 %253, %__v82___v25_A_p_len
  br i1 %exitcond43.i, label %._crit_edge37.i, label %.lr.ph36.i

._crit_edge37.i:                                  ; preds = %.lr.ph36.i, %._crit_edge
  %__v49_saved_i.0.lcssa.i = phi i64 [ 0, %._crit_edge ], [ %252, %.lr.ph36.i ]
  br i1 %3, label %._crit_edge32.i, label %.lr.ph31.i.preheader

.lr.ph31.i.preheader:                             ; preds = %._crit_edge37.i
  br label %.lr.ph31.i

.lr.ph31.i:                                       ; preds = %.lr.ph31.i.preheader, %.lr.ph31.i
  %__v53__j29.i = phi i64 [ %263, %.lr.ph31.i ], [ 0, %.lr.ph31.i.preheader ]
  %__v50_saved_j.028.i = phi i64 [ %262, %.lr.ph31.i ], [ 0, %.lr.ph31.i.preheader ]
  %__v54_j.i = sub i64 %__v30_n, %__v53__j29.i
  %__v132_lexpr.i = add i64 %__v54_j.i, -1
  %254 = icmp eq i64 %__v50_saved_j.028.i, 0
  %255 = getelementptr i64, i64* %__v27_N_p, i64 %__v132_lexpr.i
  %256 = load i64, i64* %255, align 8
  %257 = icmp ne i64 %256, 0
  %258 = zext i1 %257 to i32
  %259 = tail call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %254, i32 %258, i32 0) #0
  %260 = and i32 %259, 1
  %261 = icmp eq i32 %260, 0
  %262 = select i1 %261, i64 %__v50_saved_j.028.i, i64 %__v54_j.i
  %263 = add nuw i64 %__v53__j29.i, 1
  %exitcond.i15 = icmp eq i64 %263, %__v30_n
  br i1 %exitcond.i15, label %._crit_edge32.i, label %.lr.ph31.i

._crit_edge32.i:                                  ; preds = %.lr.ph31.i, %._crit_edge37.i
  %__v50_saved_j.0.lcssa.i = phi i64 [ 0, %._crit_edge37.i ], [ %262, %.lr.ph31.i ]
  %264 = icmp eq i64 %__v49_saved_i.0.lcssa.i, 0
  %265 = icmp eq i64 %__v50_saved_j.0.lcssa.i, 0
  %266 = zext i1 %265 to i32
  %267 = tail call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %264, i32 %266, i32 0) #0
  %268 = and i32 %267, 1
  %269 = icmp ne i32 %268, 0
  %270 = tail call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %269, i32 0, i32 1) #0
  %271 = and i32 %270, 1
  %272 = icmp ne i32 %271, 0
  %__m10.i = icmp ugt i64 %__v49_saved_i.0.lcssa.i, %__v50_saved_j.0.lcssa.i
  %273 = and i1 %__m10.i, %272
  %274 = zext i1 %273 to i32
  %275 = tail call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %273, i32 0, i32 %271) #0
  %276 = and i32 %275, 1
  %__m13.i = icmp ugt i64 %__v50_saved_j.0.lcssa.i, %__v49_saved_i.0.lcssa.i
  %277 = and i32 %271, %275
  %278 = icmp ne i32 %277, 0
  %279 = and i1 %__m13.i, %278
  %280 = select i1 %279, i32 -1, i32 %274
  %281 = tail call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %279, i32 0, i32 %276) #0
  %282 = icmp ult i64 %__v82___v25_A_p_len, %__v30_n
  %__v55_start_idx.i = select i1 %282, i64 %__v82___v25_A_p_len, i64 %__v30_n
  %__rctx.0.in21.i = and i32 %281, 1
  %283 = icmp eq i64 %__v55_start_idx.i, 0
  %.pre.i = and i32 %277, %281
  br i1 %283, label %_mbedtls_mpi_cmp_abs.exit, label %.lr.ph.i16.preheader

.lr.ph.i16.preheader:                             ; preds = %._crit_edge32.i
  br label %.lr.ph.i16

.lr.ph.i16:                                       ; preds = %.lr.ph.i16.preheader, %.lr.ph.i16
  %__rctx.0.in25.i = phi i32 [ %__rctx.0.in.i, %.lr.ph.i16 ], [ %__rctx.0.in21.i, %.lr.ph.i16.preheader ]
  %__v56__i24.i = phi i64 [ %303, %.lr.ph.i16 ], [ 0, %.lr.ph.i16.preheader ]
  %__rctx.0.in.in23.i = phi i32 [ %302, %.lr.ph.i16 ], [ %281, %.lr.ph.i16.preheader ]
  %__rval.022.i = phi i32 [ %301, %.lr.ph.i16 ], [ %280, %.lr.ph.i16.preheader ]
  %__v57_i.i = sub i64 %__v55_start_idx.i, %__v56__i24.i
  %__m19.i = icmp ule i64 %__v57_i.i, %__v49_saved_i.0.lcssa.i
  %__v133_lexpr.i = add i64 %__v57_i.i, -1
  %284 = getelementptr i64, i64* %__v25_A_p, i64 %__v133_lexpr.i
  %285 = load i64, i64* %284, align 8
  %286 = getelementptr i64, i64* %__v27_N_p, i64 %__v133_lexpr.i
  %287 = load i64, i64* %286, align 8
  %__m20.i = icmp ugt i64 %285, %287
  %288 = and i1 %__m19.i, %__m20.i
  %289 = and i32 %__rctx.0.in.in23.i, %.pre.i
  %290 = icmp ne i32 %289, 0
  %291 = and i1 %290, %288
  %292 = select i1 %291, i32 1, i32 %__rval.022.i
  %293 = tail call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %291, i32 0, i32 %__rctx.0.in25.i) #0
  %294 = and i32 %293, 1
  %295 = icmp ne i32 %294, 0
  %296 = load i64, i64* %284, align 8
  %297 = load i64, i64* %286, align 8
  %__m23.i = icmp ult i64 %296, %297
  %298 = and i1 %295, %__m23.i
  %299 = and i1 %__m19.i, %298
  %300 = and i1 %290, %299
  %301 = select i1 %300, i32 -1, i32 %292
  %302 = tail call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %300, i32 0, i32 %294) #0
  %303 = add nuw i64 %__v56__i24.i, 1
  %__rctx.0.in.i = and i32 %302, 1
  %304 = icmp ugt i64 %__v55_start_idx.i, %303
  br i1 %304, label %.lr.ph.i16, label %_mbedtls_mpi_cmp_abs.exit

_mbedtls_mpi_cmp_abs.exit:                        ; preds = %.lr.ph.i16, %._crit_edge32.i
  %__rval.0.lcssa.i = phi i32 [ %280, %._crit_edge32.i ], [ %301, %.lr.ph.i16 ]
  %__rctx.0.in.in.lcssa.i = phi i32 [ %281, %._crit_edge32.i ], [ %302, %.lr.ph.i16 ]
  %__rctx.0.in.lcssa.i = phi i32 [ %__rctx.0.in21.i, %._crit_edge32.i ], [ %__rctx.0.in.i, %.lr.ph.i16 ]
  %305 = and i32 %__rctx.0.in.in.lcssa.i, %.pre.i
  %306 = icmp ne i32 %305, 0
  %307 = tail call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %306, i32 0, i32 %__rctx.0.in.lcssa.i) #0
  %__m517 = icmp sgt i32 %__rval.0.lcssa.i, -1
  %__m5 = or i1 %__m517, %306
  br i1 %3, label %._crit_edge8.i, label %.lr.ph7.i.preheader

.lr.ph7.i.preheader:                              ; preds = %_mbedtls_mpi_cmp_abs.exit
  br label %.lr.ph7.i

.lr.ph7.i:                                        ; preds = %.lr.ph7.i.preheader, %.lr.ph7.i
  %__v63_i6.i = phi i64 [ %322, %.lr.ph7.i ], [ 0, %.lr.ph7.i.preheader ]
  %__v61_c.04.i = phi i64 [ %319, %.lr.ph7.i ], [ 0, %.lr.ph7.i.preheader ]
  %308 = getelementptr i64, i64* %__v25_A_p, i64 %__v63_i6.i
  %309 = load i64, i64* %308, align 8
  %310 = icmp ult i64 %309, %__v61_c.04.i
  %311 = zext i1 %310 to i64
  %312 = select i1 %__m5, i64 %__v61_c.04.i, i64 0
  %313 = sub i64 %309, %312
  store i64 %313, i64* %308, align 8
  %314 = getelementptr i64, i64* %__v27_N_p, i64 %__v63_i6.i
  %315 = load i64, i64* %314, align 8
  %316 = icmp ult i64 %313, %315
  %317 = zext i1 %316 to i64
  %318 = add nuw nsw i64 %317, %311
  %319 = select i1 %__m5, i64 %318, i64 %__v61_c.04.i
  %320 = select i1 %__m5, i64 %315, i64 0
  %321 = sub i64 %313, %320
  store i64 %321, i64* %308, align 8
  %322 = add nuw i64 %__v63_i6.i, 1
  %exitcond11.i = icmp eq i64 %322, %__v30_n
  br i1 %exitcond11.i, label %._crit_edge8.i, label %.lr.ph7.i

._crit_edge8.i:                                   ; preds = %.lr.ph7.i, %_mbedtls_mpi_cmp_abs.exit
  %__v61_c.0.lcssa.i = phi i64 [ 0, %_mbedtls_mpi_cmp_abs.exit ], [ %319, %.lr.ph7.i ]
  %323 = icmp ugt i64 %__v82___v25_A_p_len, %__v30_n
  br i1 %323, label %.lr.ph.i1.preheader, label %_mpi_sub_hlp.exit

.lr.ph.i1.preheader:                              ; preds = %._crit_edge8.i
  %324 = sub i64 %__v82___v25_A_p_len, %__v30_n
  %325 = add i64 %__v82___v25_A_p_len, -1
  %xtraiter = and i64 %324, 1
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod, label %.lr.ph.i1.prol.loopexit, label %.lr.ph.i1.prol

.lr.ph.i1.prol:                                   ; preds = %.lr.ph.i1.preheader
  %326 = getelementptr i64, i64* %__v25_A_p, i64 %__v30_n
  %327 = load i64, i64* %326, align 8
  %328 = icmp ult i64 %327, %__v61_c.0.lcssa.i
  %329 = zext i1 %328 to i64
  %330 = select i1 %__m5, i64 %__v61_c.0.lcssa.i, i64 0
  %331 = sub i64 %327, %330
  store i64 %331, i64* %326, align 8
  %332 = select i1 %__m5, i64 %329, i64 %__v61_c.0.lcssa.i
  %333 = add nuw i64 %__v30_n, 1
  br label %.lr.ph.i1.prol.loopexit

.lr.ph.i1.prol.loopexit:                          ; preds = %.lr.ph.i1.preheader, %.lr.ph.i1.prol
  %__v64_i3.i.unr = phi i64 [ %__v30_n, %.lr.ph.i1.preheader ], [ %333, %.lr.ph.i1.prol ]
  %__v61_c.11.i.unr = phi i64 [ %__v61_c.0.lcssa.i, %.lr.ph.i1.preheader ], [ %332, %.lr.ph.i1.prol ]
  %334 = icmp eq i64 %325, %__v30_n
  br i1 %334, label %_mpi_sub_hlp.exit, label %.lr.ph.i1.preheader.new

.lr.ph.i1.preheader.new:                          ; preds = %.lr.ph.i1.prol.loopexit
  br label %.lr.ph.i1

.lr.ph.i1:                                        ; preds = %.lr.ph.i1, %.lr.ph.i1.preheader.new
  %__v64_i3.i = phi i64 [ %__v64_i3.i.unr, %.lr.ph.i1.preheader.new ], [ %350, %.lr.ph.i1 ]
  %__v61_c.11.i = phi i64 [ %__v61_c.11.i.unr, %.lr.ph.i1.preheader.new ], [ %349, %.lr.ph.i1 ]
  %335 = getelementptr i64, i64* %__v25_A_p, i64 %__v64_i3.i
  %336 = load i64, i64* %335, align 8
  %337 = icmp ult i64 %336, %__v61_c.11.i
  %338 = zext i1 %337 to i64
  %339 = select i1 %__m5, i64 %__v61_c.11.i, i64 0
  %340 = sub i64 %336, %339
  store i64 %340, i64* %335, align 8
  %341 = select i1 %__m5, i64 %338, i64 %__v61_c.11.i
  %342 = add nuw i64 %__v64_i3.i, 1
  %343 = getelementptr i64, i64* %__v25_A_p, i64 %342
  %344 = load i64, i64* %343, align 8
  %345 = icmp ult i64 %344, %341
  %346 = zext i1 %345 to i64
  %narrow = and i1 %__m5, %337
  %347 = zext i1 %narrow to i64
  %348 = sub i64 %344, %347
  store i64 %348, i64* %343, align 8
  %349 = select i1 %__m5, i64 %346, i64 %__v61_c.11.i
  %350 = add i64 %__v64_i3.i, 2
  %exitcond.i2.1 = icmp eq i64 %350, %__v82___v25_A_p_len
  br i1 %exitcond.i2.1, label %_mpi_sub_hlp.exit, label %.lr.ph.i1

_mpi_sub_hlp.exit:                                ; preds = %.lr.ph.i1.prol.loopexit, %.lr.ph.i1, %._crit_edge8.i
  %351 = tail call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m5, i32 0, i32 1) #0
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
  %min.iters.check = icmp ult i64 %__v67_clen.i, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph3.i
  %scevgep64 = getelementptr i64, i64* %__v1_X, i64 %__v67_clen.i
  %scevgep67 = getelementptr i64, i64* %__v6_RR, i64 %__v67_clen.i
  %bound0 = icmp ugt i64* %scevgep67, %__v1_X
  %bound1 = icmp ugt i64* %scevgep64, %__v6_RR
  %memcheck.conflict = and i1 %bound0, %bound1
  br i1 %memcheck.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %__v67_clen.i, -4
  %3 = add i64 %n.vec, -4
  %4 = lshr exact i64 %3, 2
  %5 = add nuw nsw i64 %4, 1
  %xtraiter343 = and i64 %5, 3
  %6 = icmp ult i64 %3, 12
  br i1 %6, label %middle.block.unr-lcssa, label %vector.ph.new

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter346 = sub nsw i64 %5, %xtraiter343
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.3, %vector.body ]
  %niter347 = phi i64 [ %unroll_iter346, %vector.ph.new ], [ %niter347.nsub.3, %vector.body ]
  %7 = getelementptr i64, i64* %__v1_X, i64 %index
  %8 = getelementptr i64, i64* %__v6_RR, i64 %index
  %9 = bitcast i64* %8 to <2 x i64>*
  %wide.load = load <2 x i64>, <2 x i64>* %9, align 8, !alias.scope !12
  %10 = getelementptr i64, i64* %8, i64 2
  %11 = bitcast i64* %10 to <2 x i64>*
  %wide.load70 = load <2 x i64>, <2 x i64>* %11, align 8, !alias.scope !12
  %12 = bitcast i64* %7 to <2 x i64>*
  store <2 x i64> %wide.load, <2 x i64>* %12, align 8, !alias.scope !15, !noalias !12
  %13 = getelementptr i64, i64* %7, i64 2
  %14 = bitcast i64* %13 to <2 x i64>*
  store <2 x i64> %wide.load70, <2 x i64>* %14, align 8, !alias.scope !15, !noalias !12
  %index.next = or i64 %index, 4
  %15 = getelementptr i64, i64* %__v1_X, i64 %index.next
  %16 = getelementptr i64, i64* %__v6_RR, i64 %index.next
  %17 = bitcast i64* %16 to <2 x i64>*
  %wide.load.1 = load <2 x i64>, <2 x i64>* %17, align 8, !alias.scope !12
  %18 = getelementptr i64, i64* %16, i64 2
  %19 = bitcast i64* %18 to <2 x i64>*
  %wide.load70.1 = load <2 x i64>, <2 x i64>* %19, align 8, !alias.scope !12
  %20 = bitcast i64* %15 to <2 x i64>*
  store <2 x i64> %wide.load.1, <2 x i64>* %20, align 8, !alias.scope !15, !noalias !12
  %21 = getelementptr i64, i64* %15, i64 2
  %22 = bitcast i64* %21 to <2 x i64>*
  store <2 x i64> %wide.load70.1, <2 x i64>* %22, align 8, !alias.scope !15, !noalias !12
  %index.next.1 = or i64 %index, 8
  %23 = getelementptr i64, i64* %__v1_X, i64 %index.next.1
  %24 = getelementptr i64, i64* %__v6_RR, i64 %index.next.1
  %25 = bitcast i64* %24 to <2 x i64>*
  %wide.load.2 = load <2 x i64>, <2 x i64>* %25, align 8, !alias.scope !12
  %26 = getelementptr i64, i64* %24, i64 2
  %27 = bitcast i64* %26 to <2 x i64>*
  %wide.load70.2 = load <2 x i64>, <2 x i64>* %27, align 8, !alias.scope !12
  %28 = bitcast i64* %23 to <2 x i64>*
  store <2 x i64> %wide.load.2, <2 x i64>* %28, align 8, !alias.scope !15, !noalias !12
  %29 = getelementptr i64, i64* %23, i64 2
  %30 = bitcast i64* %29 to <2 x i64>*
  store <2 x i64> %wide.load70.2, <2 x i64>* %30, align 8, !alias.scope !15, !noalias !12
  %index.next.2 = or i64 %index, 12
  %31 = getelementptr i64, i64* %__v1_X, i64 %index.next.2
  %32 = getelementptr i64, i64* %__v6_RR, i64 %index.next.2
  %33 = bitcast i64* %32 to <2 x i64>*
  %wide.load.3 = load <2 x i64>, <2 x i64>* %33, align 8, !alias.scope !12
  %34 = getelementptr i64, i64* %32, i64 2
  %35 = bitcast i64* %34 to <2 x i64>*
  %wide.load70.3 = load <2 x i64>, <2 x i64>* %35, align 8, !alias.scope !12
  %36 = bitcast i64* %31 to <2 x i64>*
  store <2 x i64> %wide.load.3, <2 x i64>* %36, align 8, !alias.scope !15, !noalias !12
  %37 = getelementptr i64, i64* %31, i64 2
  %38 = bitcast i64* %37 to <2 x i64>*
  store <2 x i64> %wide.load70.3, <2 x i64>* %38, align 8, !alias.scope !15, !noalias !12
  %index.next.3 = add i64 %index, 16
  %niter347.nsub.3 = add i64 %niter347, -4
  %niter347.ncmp.3 = icmp eq i64 %niter347.nsub.3, 0
  br i1 %niter347.ncmp.3, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !17

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body ]
  %lcmp.mod345 = icmp eq i64 %xtraiter343, 0
  br i1 %lcmp.mod345, label %middle.block, label %vector.body.epil.preheader

vector.body.epil.preheader:                       ; preds = %middle.block.unr-lcssa
  br label %vector.body.epil

vector.body.epil:                                 ; preds = %vector.body.epil, %vector.body.epil.preheader
  %index.epil = phi i64 [ %index.unr, %vector.body.epil.preheader ], [ %index.next.epil, %vector.body.epil ]
  %epil.iter344 = phi i64 [ %xtraiter343, %vector.body.epil.preheader ], [ %epil.iter344.sub, %vector.body.epil ]
  %39 = getelementptr i64, i64* %__v1_X, i64 %index.epil
  %40 = getelementptr i64, i64* %__v6_RR, i64 %index.epil
  %41 = bitcast i64* %40 to <2 x i64>*
  %wide.load.epil = load <2 x i64>, <2 x i64>* %41, align 8, !alias.scope !12
  %42 = getelementptr i64, i64* %40, i64 2
  %43 = bitcast i64* %42 to <2 x i64>*
  %wide.load70.epil = load <2 x i64>, <2 x i64>* %43, align 8, !alias.scope !12
  %44 = bitcast i64* %39 to <2 x i64>*
  store <2 x i64> %wide.load.epil, <2 x i64>* %44, align 8, !alias.scope !15, !noalias !12
  %45 = getelementptr i64, i64* %39, i64 2
  %46 = bitcast i64* %45 to <2 x i64>*
  store <2 x i64> %wide.load70.epil, <2 x i64>* %46, align 8, !alias.scope !15, !noalias !12
  %index.next.epil = add i64 %index.epil, 4
  %epil.iter344.sub = add i64 %epil.iter344, -1
  %epil.iter344.cmp = icmp eq i64 %epil.iter344.sub, 0
  br i1 %epil.iter344.cmp, label %middle.block, label %vector.body.epil, !llvm.loop !18

middle.block:                                     ; preds = %vector.body.epil, %middle.block.unr-lcssa
  %cmp.n = icmp eq i64 %__v67_clen.i, %n.vec
  br i1 %cmp.n, label %._crit_edge4.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %middle.block, %vector.memcheck, %.lr.ph3.i
  %__v68_i2.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph3.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %__v68_i2.i = phi i64 [ %50, %scalar.ph ], [ %__v68_i2.i.ph, %scalar.ph.preheader ]
  %47 = getelementptr i64, i64* %__v1_X, i64 %__v68_i2.i
  %48 = getelementptr i64, i64* %__v6_RR, i64 %__v68_i2.i
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %47, align 8
  %50 = add nuw i64 %__v68_i2.i, 1
  %51 = icmp ult i64 %50, %__v67_clen.i
  br i1 %51, label %scalar.ph, label %._crit_edge4.i, !llvm.loop !19

._crit_edge4.i:                                   ; preds = %scalar.ph, %middle.block, %entry
  %52 = icmp ugt i64 %__v71___v1_X_len, %__v75___v6_RR_len
  br i1 %52, label %.lr.ph.i, label %_mpi_copy.exit

.lr.ph.i:                                         ; preds = %._crit_edge4.i
  %scevgep59 = getelementptr i64, i64* %__v1_X, i64 %__v67_clen.i
  %scevgep5960 = bitcast i64* %scevgep59 to i8*
  %53 = xor i64 %__v75___v6_RR_len, 2305843009213693951
  %54 = add i64 %53, %__v71___v1_X_len
  %55 = shl i64 %54, 3
  %56 = add i64 %55, 8
  call void @llvm.memset.p0i8.i64(i8* %scevgep5960, i8 0, i64 %56, i32 8, i1 false)
  br label %_mpi_copy.exit

_mpi_copy.exit:                                   ; preds = %.lr.ph.i, %._crit_edge4.i
  %57 = tail call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 true, i32 0, i32 1) #0
  %58 = bitcast i64* %__v24_one.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %58)
  store i64 1, i64* %__v24_one.i, align 8
  call fastcc void @_mpi_montmul(i64* %__v1_X, i64 %__v71___v1_X_len, i64* nonnull %__v24_one.i, i64 1, i64* %__v5_N, i64 %__v74___v5_N_len, i64 %__v10_mm, i64* %__v7_T, i64 %__v76___v7_T_len) #0
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %58)
  %__v95_lexpr = and i64 %0, 4294967295
  %59 = icmp ult i64 %__v95_lexpr, %__v71___v1_X_len
  %__v67_clen.i2 = select i1 %59, i64 %__v95_lexpr, i64 %__v71___v1_X_len
  %60 = icmp eq i64 %__v67_clen.i2, 0
  br i1 %60, label %._crit_edge4.i5, label %.lr.ph3.i3

.lr.ph3.i3:                                       ; preds = %_mpi_copy.exit
  %min.iters.check74 = icmp ult i64 %__v67_clen.i2, 4
  br i1 %min.iters.check74, label %scalar.ph73.preheader, label %vector.memcheck85

vector.memcheck85:                                ; preds = %.lr.ph3.i3
  %scevgep77 = getelementptr i64, i64* %__v8_W, i64 %__v67_clen.i2
  %scevgep79 = getelementptr i64, i64* %__v1_X, i64 %__v67_clen.i2
  %bound081 = icmp ugt i64* %scevgep79, %__v8_W
  %bound182 = icmp ugt i64* %scevgep77, %__v1_X
  %memcheck.conflict84 = and i1 %bound081, %bound182
  br i1 %memcheck.conflict84, label %scalar.ph73.preheader, label %vector.ph86

vector.ph86:                                      ; preds = %vector.memcheck85
  %n.vec88 = and i64 %__v67_clen.i2, 4294967292
  %61 = add nsw i64 %n.vec88, -4
  %62 = lshr exact i64 %61, 2
  %63 = add nuw nsw i64 %62, 1
  %xtraiter338 = and i64 %63, 3
  %64 = icmp ult i64 %61, 12
  br i1 %64, label %middle.block72.unr-lcssa, label %vector.ph86.new

vector.ph86.new:                                  ; preds = %vector.ph86
  %unroll_iter341 = sub nsw i64 %63, %xtraiter338
  br label %vector.body71

vector.body71:                                    ; preds = %vector.body71, %vector.ph86.new
  %index89 = phi i64 [ 0, %vector.ph86.new ], [ %index.next90.3, %vector.body71 ]
  %niter342 = phi i64 [ %unroll_iter341, %vector.ph86.new ], [ %niter342.nsub.3, %vector.body71 ]
  %65 = getelementptr i64, i64* %__v8_W, i64 %index89
  %66 = getelementptr i64, i64* %__v1_X, i64 %index89
  %67 = bitcast i64* %66 to <2 x i64>*
  %wide.load97 = load <2 x i64>, <2 x i64>* %67, align 8, !alias.scope !20
  %68 = getelementptr i64, i64* %66, i64 2
  %69 = bitcast i64* %68 to <2 x i64>*
  %wide.load98 = load <2 x i64>, <2 x i64>* %69, align 8, !alias.scope !20
  %70 = bitcast i64* %65 to <2 x i64>*
  store <2 x i64> %wide.load97, <2 x i64>* %70, align 8, !alias.scope !23, !noalias !20
  %71 = getelementptr i64, i64* %65, i64 2
  %72 = bitcast i64* %71 to <2 x i64>*
  store <2 x i64> %wide.load98, <2 x i64>* %72, align 8, !alias.scope !23, !noalias !20
  %index.next90 = or i64 %index89, 4
  %73 = getelementptr i64, i64* %__v8_W, i64 %index.next90
  %74 = getelementptr i64, i64* %__v1_X, i64 %index.next90
  %75 = bitcast i64* %74 to <2 x i64>*
  %wide.load97.1 = load <2 x i64>, <2 x i64>* %75, align 8, !alias.scope !20
  %76 = getelementptr i64, i64* %74, i64 2
  %77 = bitcast i64* %76 to <2 x i64>*
  %wide.load98.1 = load <2 x i64>, <2 x i64>* %77, align 8, !alias.scope !20
  %78 = bitcast i64* %73 to <2 x i64>*
  store <2 x i64> %wide.load97.1, <2 x i64>* %78, align 8, !alias.scope !23, !noalias !20
  %79 = getelementptr i64, i64* %73, i64 2
  %80 = bitcast i64* %79 to <2 x i64>*
  store <2 x i64> %wide.load98.1, <2 x i64>* %80, align 8, !alias.scope !23, !noalias !20
  %index.next90.1 = or i64 %index89, 8
  %81 = getelementptr i64, i64* %__v8_W, i64 %index.next90.1
  %82 = getelementptr i64, i64* %__v1_X, i64 %index.next90.1
  %83 = bitcast i64* %82 to <2 x i64>*
  %wide.load97.2 = load <2 x i64>, <2 x i64>* %83, align 8, !alias.scope !20
  %84 = getelementptr i64, i64* %82, i64 2
  %85 = bitcast i64* %84 to <2 x i64>*
  %wide.load98.2 = load <2 x i64>, <2 x i64>* %85, align 8, !alias.scope !20
  %86 = bitcast i64* %81 to <2 x i64>*
  store <2 x i64> %wide.load97.2, <2 x i64>* %86, align 8, !alias.scope !23, !noalias !20
  %87 = getelementptr i64, i64* %81, i64 2
  %88 = bitcast i64* %87 to <2 x i64>*
  store <2 x i64> %wide.load98.2, <2 x i64>* %88, align 8, !alias.scope !23, !noalias !20
  %index.next90.2 = or i64 %index89, 12
  %89 = getelementptr i64, i64* %__v8_W, i64 %index.next90.2
  %90 = getelementptr i64, i64* %__v1_X, i64 %index.next90.2
  %91 = bitcast i64* %90 to <2 x i64>*
  %wide.load97.3 = load <2 x i64>, <2 x i64>* %91, align 8, !alias.scope !20
  %92 = getelementptr i64, i64* %90, i64 2
  %93 = bitcast i64* %92 to <2 x i64>*
  %wide.load98.3 = load <2 x i64>, <2 x i64>* %93, align 8, !alias.scope !20
  %94 = bitcast i64* %89 to <2 x i64>*
  store <2 x i64> %wide.load97.3, <2 x i64>* %94, align 8, !alias.scope !23, !noalias !20
  %95 = getelementptr i64, i64* %89, i64 2
  %96 = bitcast i64* %95 to <2 x i64>*
  store <2 x i64> %wide.load98.3, <2 x i64>* %96, align 8, !alias.scope !23, !noalias !20
  %index.next90.3 = add i64 %index89, 16
  %niter342.nsub.3 = add i64 %niter342, -4
  %niter342.ncmp.3 = icmp eq i64 %niter342.nsub.3, 0
  br i1 %niter342.ncmp.3, label %middle.block72.unr-lcssa, label %vector.body71, !llvm.loop !25

middle.block72.unr-lcssa:                         ; preds = %vector.body71, %vector.ph86
  %index89.unr = phi i64 [ 0, %vector.ph86 ], [ %index.next90.3, %vector.body71 ]
  %lcmp.mod340 = icmp eq i64 %xtraiter338, 0
  br i1 %lcmp.mod340, label %middle.block72, label %vector.body71.epil.preheader

vector.body71.epil.preheader:                     ; preds = %middle.block72.unr-lcssa
  br label %vector.body71.epil

vector.body71.epil:                               ; preds = %vector.body71.epil, %vector.body71.epil.preheader
  %index89.epil = phi i64 [ %index89.unr, %vector.body71.epil.preheader ], [ %index.next90.epil, %vector.body71.epil ]
  %epil.iter339 = phi i64 [ %xtraiter338, %vector.body71.epil.preheader ], [ %epil.iter339.sub, %vector.body71.epil ]
  %97 = getelementptr i64, i64* %__v8_W, i64 %index89.epil
  %98 = getelementptr i64, i64* %__v1_X, i64 %index89.epil
  %99 = bitcast i64* %98 to <2 x i64>*
  %wide.load97.epil = load <2 x i64>, <2 x i64>* %99, align 8, !alias.scope !20
  %100 = getelementptr i64, i64* %98, i64 2
  %101 = bitcast i64* %100 to <2 x i64>*
  %wide.load98.epil = load <2 x i64>, <2 x i64>* %101, align 8, !alias.scope !20
  %102 = bitcast i64* %97 to <2 x i64>*
  store <2 x i64> %wide.load97.epil, <2 x i64>* %102, align 8, !alias.scope !23, !noalias !20
  %103 = getelementptr i64, i64* %97, i64 2
  %104 = bitcast i64* %103 to <2 x i64>*
  store <2 x i64> %wide.load98.epil, <2 x i64>* %104, align 8, !alias.scope !23, !noalias !20
  %index.next90.epil = add i64 %index89.epil, 4
  %epil.iter339.sub = add i64 %epil.iter339, -1
  %epil.iter339.cmp = icmp eq i64 %epil.iter339.sub, 0
  br i1 %epil.iter339.cmp, label %middle.block72, label %vector.body71.epil, !llvm.loop !26

middle.block72:                                   ; preds = %vector.body71.epil, %middle.block72.unr-lcssa
  %cmp.n92 = icmp eq i64 %__v67_clen.i2, %n.vec88
  br i1 %cmp.n92, label %._crit_edge4.i5, label %scalar.ph73.preheader

scalar.ph73.preheader:                            ; preds = %middle.block72, %vector.memcheck85, %.lr.ph3.i3
  %__v68_i2.i4.ph = phi i64 [ 0, %vector.memcheck85 ], [ 0, %.lr.ph3.i3 ], [ %n.vec88, %middle.block72 ]
  br label %scalar.ph73

scalar.ph73:                                      ; preds = %scalar.ph73.preheader, %scalar.ph73
  %__v68_i2.i4 = phi i64 [ %108, %scalar.ph73 ], [ %__v68_i2.i4.ph, %scalar.ph73.preheader ]
  %105 = getelementptr i64, i64* %__v8_W, i64 %__v68_i2.i4
  %106 = getelementptr i64, i64* %__v1_X, i64 %__v68_i2.i4
  %107 = load i64, i64* %106, align 8
  store i64 %107, i64* %105, align 8
  %108 = add nuw nsw i64 %__v68_i2.i4, 1
  %109 = icmp ult i64 %108, %__v67_clen.i2
  br i1 %109, label %scalar.ph73, label %._crit_edge4.i5, !llvm.loop !27

._crit_edge4.i5:                                  ; preds = %scalar.ph73, %middle.block72, %_mpi_copy.exit
  %110 = icmp ugt i64 %__v95_lexpr, %__v71___v1_X_len
  br i1 %110, label %.lr.ph.i6, label %_mpi_copy.exit8

.lr.ph.i6:                                        ; preds = %._crit_edge4.i5
  %scevgep55 = getelementptr i64, i64* %__v8_W, i64 %__v67_clen.i2
  %scevgep5556 = bitcast i64* %scevgep55 to i8*
  %111 = xor i64 %__v71___v1_X_len, 2305843009213693951
  %112 = add i64 %__v95_lexpr, %111
  %113 = shl i64 %112, 3
  %114 = add i64 %113, 8
  call void @llvm.memset.p0i8.i64(i8* %scevgep5556, i8 0, i64 %114, i32 8, i1 false)
  br label %_mpi_copy.exit8

_mpi_copy.exit8:                                  ; preds = %.lr.ph.i6, %._crit_edge4.i5
  %115 = tail call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 true, i32 0, i32 1) #0
  %116 = getelementptr i64, i64* %__v8_W, i64 %__v95_lexpr
  %117 = icmp ult i64 %__v95_lexpr, %__v72___v2_A_len
  %__v67_clen.i9 = select i1 %117, i64 %__v95_lexpr, i64 %__v72___v2_A_len
  %118 = icmp eq i64 %__v67_clen.i9, 0
  br i1 %118, label %._crit_edge4.i12, label %.lr.ph3.i10

.lr.ph3.i10:                                      ; preds = %_mpi_copy.exit8
  %min.iters.check102 = icmp ult i64 %__v67_clen.i9, 4
  br i1 %min.iters.check102, label %scalar.ph101.preheader, label %vector.memcheck113

vector.memcheck113:                               ; preds = %.lr.ph3.i10
  %119 = add nsw i64 %__v95_lexpr, -1
  %120 = icmp ult i64 %__v95_lexpr, %__v72___v2_A_len
  %121 = select i1 %120, i64 %__v95_lexpr, i64 %__v72___v2_A_len
  %122 = xor i64 %121, -1
  %123 = sub nsw i64 %119, %122
  %scevgep104 = getelementptr i64, i64* %__v8_W, i64 %123
  %scevgep107 = getelementptr i64, i64* %__v2_A, i64 %__v67_clen.i9
  %bound0109 = icmp ult i64* %116, %scevgep107
  %bound1110 = icmp ugt i64* %scevgep104, %__v2_A
  %memcheck.conflict112 = and i1 %bound0109, %bound1110
  br i1 %memcheck.conflict112, label %scalar.ph101.preheader, label %vector.ph114

vector.ph114:                                     ; preds = %vector.memcheck113
  %n.vec116 = and i64 %__v67_clen.i9, 4294967292
  %124 = add nsw i64 %n.vec116, -4
  %125 = lshr exact i64 %124, 2
  %126 = add nuw nsw i64 %125, 1
  %xtraiter334 = and i64 %126, 3
  %127 = icmp ult i64 %124, 12
  br i1 %127, label %middle.block100.unr-lcssa, label %vector.ph114.new

vector.ph114.new:                                 ; preds = %vector.ph114
  %unroll_iter336 = sub nsw i64 %126, %xtraiter334
  br label %vector.body99

vector.body99:                                    ; preds = %vector.body99, %vector.ph114.new
  %index117 = phi i64 [ 0, %vector.ph114.new ], [ %index.next118.3, %vector.body99 ]
  %niter337 = phi i64 [ %unroll_iter336, %vector.ph114.new ], [ %niter337.nsub.3, %vector.body99 ]
  %128 = getelementptr i64, i64* %116, i64 %index117
  %129 = getelementptr i64, i64* %__v2_A, i64 %index117
  %130 = bitcast i64* %129 to <2 x i64>*
  %wide.load125 = load <2 x i64>, <2 x i64>* %130, align 8, !alias.scope !28
  %131 = getelementptr i64, i64* %129, i64 2
  %132 = bitcast i64* %131 to <2 x i64>*
  %wide.load126 = load <2 x i64>, <2 x i64>* %132, align 8, !alias.scope !28
  %133 = bitcast i64* %128 to <2 x i64>*
  store <2 x i64> %wide.load125, <2 x i64>* %133, align 8, !alias.scope !31, !noalias !28
  %134 = getelementptr i64, i64* %128, i64 2
  %135 = bitcast i64* %134 to <2 x i64>*
  store <2 x i64> %wide.load126, <2 x i64>* %135, align 8, !alias.scope !31, !noalias !28
  %index.next118 = or i64 %index117, 4
  %136 = getelementptr i64, i64* %116, i64 %index.next118
  %137 = getelementptr i64, i64* %__v2_A, i64 %index.next118
  %138 = bitcast i64* %137 to <2 x i64>*
  %wide.load125.1 = load <2 x i64>, <2 x i64>* %138, align 8, !alias.scope !28
  %139 = getelementptr i64, i64* %137, i64 2
  %140 = bitcast i64* %139 to <2 x i64>*
  %wide.load126.1 = load <2 x i64>, <2 x i64>* %140, align 8, !alias.scope !28
  %141 = bitcast i64* %136 to <2 x i64>*
  store <2 x i64> %wide.load125.1, <2 x i64>* %141, align 8, !alias.scope !31, !noalias !28
  %142 = getelementptr i64, i64* %136, i64 2
  %143 = bitcast i64* %142 to <2 x i64>*
  store <2 x i64> %wide.load126.1, <2 x i64>* %143, align 8, !alias.scope !31, !noalias !28
  %index.next118.1 = or i64 %index117, 8
  %144 = getelementptr i64, i64* %116, i64 %index.next118.1
  %145 = getelementptr i64, i64* %__v2_A, i64 %index.next118.1
  %146 = bitcast i64* %145 to <2 x i64>*
  %wide.load125.2 = load <2 x i64>, <2 x i64>* %146, align 8, !alias.scope !28
  %147 = getelementptr i64, i64* %145, i64 2
  %148 = bitcast i64* %147 to <2 x i64>*
  %wide.load126.2 = load <2 x i64>, <2 x i64>* %148, align 8, !alias.scope !28
  %149 = bitcast i64* %144 to <2 x i64>*
  store <2 x i64> %wide.load125.2, <2 x i64>* %149, align 8, !alias.scope !31, !noalias !28
  %150 = getelementptr i64, i64* %144, i64 2
  %151 = bitcast i64* %150 to <2 x i64>*
  store <2 x i64> %wide.load126.2, <2 x i64>* %151, align 8, !alias.scope !31, !noalias !28
  %index.next118.2 = or i64 %index117, 12
  %152 = getelementptr i64, i64* %116, i64 %index.next118.2
  %153 = getelementptr i64, i64* %__v2_A, i64 %index.next118.2
  %154 = bitcast i64* %153 to <2 x i64>*
  %wide.load125.3 = load <2 x i64>, <2 x i64>* %154, align 8, !alias.scope !28
  %155 = getelementptr i64, i64* %153, i64 2
  %156 = bitcast i64* %155 to <2 x i64>*
  %wide.load126.3 = load <2 x i64>, <2 x i64>* %156, align 8, !alias.scope !28
  %157 = bitcast i64* %152 to <2 x i64>*
  store <2 x i64> %wide.load125.3, <2 x i64>* %157, align 8, !alias.scope !31, !noalias !28
  %158 = getelementptr i64, i64* %152, i64 2
  %159 = bitcast i64* %158 to <2 x i64>*
  store <2 x i64> %wide.load126.3, <2 x i64>* %159, align 8, !alias.scope !31, !noalias !28
  %index.next118.3 = add i64 %index117, 16
  %niter337.nsub.3 = add i64 %niter337, -4
  %niter337.ncmp.3 = icmp eq i64 %niter337.nsub.3, 0
  br i1 %niter337.ncmp.3, label %middle.block100.unr-lcssa, label %vector.body99, !llvm.loop !33

middle.block100.unr-lcssa:                        ; preds = %vector.body99, %vector.ph114
  %index117.unr = phi i64 [ 0, %vector.ph114 ], [ %index.next118.3, %vector.body99 ]
  %lcmp.mod335 = icmp eq i64 %xtraiter334, 0
  br i1 %lcmp.mod335, label %middle.block100, label %vector.body99.epil.preheader

vector.body99.epil.preheader:                     ; preds = %middle.block100.unr-lcssa
  br label %vector.body99.epil

vector.body99.epil:                               ; preds = %vector.body99.epil, %vector.body99.epil.preheader
  %index117.epil = phi i64 [ %index117.unr, %vector.body99.epil.preheader ], [ %index.next118.epil, %vector.body99.epil ]
  %epil.iter = phi i64 [ %xtraiter334, %vector.body99.epil.preheader ], [ %epil.iter.sub, %vector.body99.epil ]
  %160 = getelementptr i64, i64* %116, i64 %index117.epil
  %161 = getelementptr i64, i64* %__v2_A, i64 %index117.epil
  %162 = bitcast i64* %161 to <2 x i64>*
  %wide.load125.epil = load <2 x i64>, <2 x i64>* %162, align 8, !alias.scope !28
  %163 = getelementptr i64, i64* %161, i64 2
  %164 = bitcast i64* %163 to <2 x i64>*
  %wide.load126.epil = load <2 x i64>, <2 x i64>* %164, align 8, !alias.scope !28
  %165 = bitcast i64* %160 to <2 x i64>*
  store <2 x i64> %wide.load125.epil, <2 x i64>* %165, align 8, !alias.scope !31, !noalias !28
  %166 = getelementptr i64, i64* %160, i64 2
  %167 = bitcast i64* %166 to <2 x i64>*
  store <2 x i64> %wide.load126.epil, <2 x i64>* %167, align 8, !alias.scope !31, !noalias !28
  %index.next118.epil = add i64 %index117.epil, 4
  %epil.iter.sub = add i64 %epil.iter, -1
  %epil.iter.cmp = icmp eq i64 %epil.iter.sub, 0
  br i1 %epil.iter.cmp, label %middle.block100, label %vector.body99.epil, !llvm.loop !34

middle.block100:                                  ; preds = %vector.body99.epil, %middle.block100.unr-lcssa
  %cmp.n120 = icmp eq i64 %__v67_clen.i9, %n.vec116
  br i1 %cmp.n120, label %._crit_edge4.i12, label %scalar.ph101.preheader

scalar.ph101.preheader:                           ; preds = %middle.block100, %vector.memcheck113, %.lr.ph3.i10
  %__v68_i2.i11.ph = phi i64 [ 0, %vector.memcheck113 ], [ 0, %.lr.ph3.i10 ], [ %n.vec116, %middle.block100 ]
  br label %scalar.ph101

scalar.ph101:                                     ; preds = %scalar.ph101.preheader, %scalar.ph101
  %__v68_i2.i11 = phi i64 [ %171, %scalar.ph101 ], [ %__v68_i2.i11.ph, %scalar.ph101.preheader ]
  %168 = getelementptr i64, i64* %116, i64 %__v68_i2.i11
  %169 = getelementptr i64, i64* %__v2_A, i64 %__v68_i2.i11
  %170 = load i64, i64* %169, align 8
  store i64 %170, i64* %168, align 8
  %171 = add nuw nsw i64 %__v68_i2.i11, 1
  %172 = icmp ult i64 %171, %__v67_clen.i9
  br i1 %172, label %scalar.ph101, label %._crit_edge4.i12, !llvm.loop !35

._crit_edge4.i12:                                 ; preds = %scalar.ph101, %middle.block100, %_mpi_copy.exit8
  %173 = icmp ugt i64 %__v95_lexpr, %__v72___v2_A_len
  br i1 %173, label %.lr.ph.i13, label %_mpi_copy.exit15

.lr.ph.i13:                                       ; preds = %._crit_edge4.i12
  %174 = add nsw i64 %__v95_lexpr, -1
  %175 = xor i64 %__v72___v2_A_len, -1
  %176 = sub i64 %174, %175
  %scevgep = getelementptr i64, i64* %__v8_W, i64 %176
  %scevgep54 = bitcast i64* %scevgep to i8*
  %177 = add i64 %__v95_lexpr, %175
  %178 = shl i64 %177, 3
  %179 = add i64 %178, 8
  call void @llvm.memset.p0i8.i64(i8* %scevgep54, i8 0, i64 %179, i32 8, i1 false)
  br label %_mpi_copy.exit15

_mpi_copy.exit15:                                 ; preds = %.lr.ph.i13, %._crit_edge4.i12
  %180 = tail call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 true, i32 0, i32 1) #0
  tail call fastcc void @_mpi_montmul(i64* %116, i64 %__v95_lexpr, i64* %__v6_RR, i64 %__v75___v6_RR_len, i64* %__v5_N, i64 %__v74___v5_N_len, i64 %__v10_mm, i64* %__v7_T, i64 %__v76___v7_T_len)
  %181 = icmp eq i64 %__v95_lexpr, 0
  %182 = shl nuw nsw i64 %0, 1
  %183 = trunc i64 %182 to i32
  %184 = trunc i64 %0 to i32
  %scevgep134 = getelementptr i64, i64* %__v8_W, i64 %__v95_lexpr
  %185 = trunc i64 %0 to i32
  %scevgep139 = getelementptr i64, i64* %__v8_W, i64 %__v95_lexpr
  %186 = add nsw i64 %__v95_lexpr, -1
  %min.iters.check130 = icmp ult i64 %__v95_lexpr, 4
  %n.mod.vf148 = and i64 %0, 3
  %n.vec149 = sub nsw i64 %__v95_lexpr, %n.mod.vf148
  %cmp.n153 = icmp eq i64 %n.mod.vf148, 0
  br label %187

; <label>:187:                                    ; preds = %_mpi_copy.exit19, %_mpi_copy.exit15
  %indvar = phi i32 [ %indvar.next, %_mpi_copy.exit19 ], [ 0, %_mpi_copy.exit15 ]
  %indvars.iv51 = phi i64 [ %indvars.iv.next52, %_mpi_copy.exit19 ], [ 2, %_mpi_copy.exit15 ]
  %188 = mul i32 %indvar, %184
  %189 = add i32 %188, %183
  %190 = zext i32 %189 to i64
  %scevgep132 = getelementptr i64, i64* %__v8_W, i64 %190
  %scevgep135 = getelementptr i64, i64* %scevgep134, i64 %190
  %191 = add i32 %188, %185
  %192 = zext i32 %191 to i64
  %scevgep137 = getelementptr i64, i64* %__v8_W, i64 %192
  %scevgep140 = getelementptr i64, i64* %scevgep139, i64 %192
  %193 = mul i64 %indvars.iv51, %0
  %__v104_lexpr = and i64 %193, 4294967295
  %194 = add nuw i64 %indvars.iv51, 4294967295
  %195 = mul i64 %194, %0
  %__v108_lexpr = and i64 %195, 4294967295
  %196 = getelementptr i64, i64* %__v8_W, i64 %__v104_lexpr
  %197 = getelementptr i64, i64* %__v8_W, i64 %__v108_lexpr
  br i1 %181, label %_mpi_copy.exit19, label %.lr.ph3.i16

.lr.ph3.i16:                                      ; preds = %187
  br i1 %min.iters.check130, label %scalar.ph129.preheader, label %vector.memcheck146

vector.memcheck146:                               ; preds = %.lr.ph3.i16
  %bound0142 = icmp ult i64* %scevgep132, %scevgep140
  %bound1143 = icmp ult i64* %scevgep137, %scevgep135
  %memcheck.conflict145 = and i1 %bound0142, %bound1143
  br i1 %memcheck.conflict145, label %scalar.ph129.preheader, label %vector.ph147

vector.ph147:                                     ; preds = %vector.memcheck146
  br label %vector.body127

vector.body127:                                   ; preds = %vector.body127, %vector.ph147
  %index150 = phi i64 [ 0, %vector.ph147 ], [ %index.next151, %vector.body127 ]
  %198 = getelementptr i64, i64* %196, i64 %index150
  %199 = getelementptr i64, i64* %197, i64 %index150
  %200 = bitcast i64* %199 to <2 x i64>*
  %wide.load158 = load <2 x i64>, <2 x i64>* %200, align 8, !alias.scope !36
  %201 = getelementptr i64, i64* %199, i64 2
  %202 = bitcast i64* %201 to <2 x i64>*
  %wide.load159 = load <2 x i64>, <2 x i64>* %202, align 8, !alias.scope !36
  %203 = bitcast i64* %198 to <2 x i64>*
  store <2 x i64> %wide.load158, <2 x i64>* %203, align 8, !alias.scope !39, !noalias !36
  %204 = getelementptr i64, i64* %198, i64 2
  %205 = bitcast i64* %204 to <2 x i64>*
  store <2 x i64> %wide.load159, <2 x i64>* %205, align 8, !alias.scope !39, !noalias !36
  %index.next151 = add i64 %index150, 4
  %206 = icmp eq i64 %index.next151, %n.vec149
  br i1 %206, label %middle.block128, label %vector.body127, !llvm.loop !41

middle.block128:                                  ; preds = %vector.body127
  br i1 %cmp.n153, label %_mpi_copy.exit19, label %scalar.ph129.preheader

scalar.ph129.preheader:                           ; preds = %middle.block128, %vector.memcheck146, %.lr.ph3.i16
  %__v68_i2.i17.ph = phi i64 [ 0, %vector.memcheck146 ], [ 0, %.lr.ph3.i16 ], [ %n.vec149, %middle.block128 ]
  %207 = sub nsw i64 %0, %__v68_i2.i17.ph
  %208 = sub nsw i64 %186, %__v68_i2.i17.ph
  %xtraiter331 = and i64 %207, 3
  %lcmp.mod332 = icmp eq i64 %xtraiter331, 0
  br i1 %lcmp.mod332, label %scalar.ph129.prol.loopexit, label %scalar.ph129.prol.preheader

scalar.ph129.prol.preheader:                      ; preds = %scalar.ph129.preheader
  br label %scalar.ph129.prol

scalar.ph129.prol:                                ; preds = %scalar.ph129.prol, %scalar.ph129.prol.preheader
  %__v68_i2.i17.prol = phi i64 [ %212, %scalar.ph129.prol ], [ %__v68_i2.i17.ph, %scalar.ph129.prol.preheader ]
  %prol.iter333 = phi i64 [ %prol.iter333.sub, %scalar.ph129.prol ], [ %xtraiter331, %scalar.ph129.prol.preheader ]
  %209 = getelementptr i64, i64* %196, i64 %__v68_i2.i17.prol
  %210 = getelementptr i64, i64* %197, i64 %__v68_i2.i17.prol
  %211 = load i64, i64* %210, align 8
  store i64 %211, i64* %209, align 8
  %212 = add nuw nsw i64 %__v68_i2.i17.prol, 1
  %prol.iter333.sub = add i64 %prol.iter333, -1
  %prol.iter333.cmp = icmp eq i64 %prol.iter333.sub, 0
  br i1 %prol.iter333.cmp, label %scalar.ph129.prol.loopexit, label %scalar.ph129.prol, !llvm.loop !42

scalar.ph129.prol.loopexit:                       ; preds = %scalar.ph129.prol, %scalar.ph129.preheader
  %__v68_i2.i17.unr = phi i64 [ %__v68_i2.i17.ph, %scalar.ph129.preheader ], [ %212, %scalar.ph129.prol ]
  %213 = icmp ult i64 %208, 3
  br i1 %213, label %_mpi_copy.exit19, label %scalar.ph129.preheader.new

scalar.ph129.preheader.new:                       ; preds = %scalar.ph129.prol.loopexit
  br label %scalar.ph129

scalar.ph129:                                     ; preds = %scalar.ph129, %scalar.ph129.preheader.new
  %__v68_i2.i17 = phi i64 [ %__v68_i2.i17.unr, %scalar.ph129.preheader.new ], [ %229, %scalar.ph129 ]
  %214 = getelementptr i64, i64* %196, i64 %__v68_i2.i17
  %215 = getelementptr i64, i64* %197, i64 %__v68_i2.i17
  %216 = load i64, i64* %215, align 8
  store i64 %216, i64* %214, align 8
  %217 = add nuw nsw i64 %__v68_i2.i17, 1
  %218 = getelementptr i64, i64* %196, i64 %217
  %219 = getelementptr i64, i64* %197, i64 %217
  %220 = load i64, i64* %219, align 8
  store i64 %220, i64* %218, align 8
  %221 = add nsw i64 %__v68_i2.i17, 2
  %222 = getelementptr i64, i64* %196, i64 %221
  %223 = getelementptr i64, i64* %197, i64 %221
  %224 = load i64, i64* %223, align 8
  store i64 %224, i64* %222, align 8
  %225 = add nsw i64 %__v68_i2.i17, 3
  %226 = getelementptr i64, i64* %196, i64 %225
  %227 = getelementptr i64, i64* %197, i64 %225
  %228 = load i64, i64* %227, align 8
  store i64 %228, i64* %226, align 8
  %229 = add nsw i64 %__v68_i2.i17, 4
  %exitcond49.3 = icmp eq i64 %229, %__v95_lexpr
  br i1 %exitcond49.3, label %_mpi_copy.exit19, label %scalar.ph129, !llvm.loop !43

_mpi_copy.exit19:                                 ; preds = %scalar.ph129.prol.loopexit, %scalar.ph129, %middle.block128, %187
  %230 = tail call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 true, i32 0, i32 1) #0
  tail call fastcc void @_mpi_montmul(i64* %196, i64 %__v95_lexpr, i64* %116, i64 %__v95_lexpr, i64* %__v5_N, i64 %__v74___v5_N_len, i64 %__v10_mm, i64* %__v7_T, i64 %__v76___v7_T_len)
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1
  %exitcond53 = icmp eq i64 %indvars.iv.next52, 16
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond53, label %231, label %187

; <label>:231:                                    ; preds = %_mpi_copy.exit19
  %232 = icmp eq i64 %__v73___v4_E_len, 0
  br i1 %232, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %231
  %233 = add i64 %__v73___v4_E_len, 4294967295
  %234 = icmp ugt i64 %__v95_lexpr, %__v78___v9_TW_len
  %__v67_clen.i33 = select i1 %234, i64 %__v78___v9_TW_len, i64 %__v95_lexpr
  %235 = icmp eq i64 %__v67_clen.i33, 0
  %236 = icmp ult i64 %__v95_lexpr, %__v78___v9_TW_len
  %237 = icmp ult i64 %__v95_lexpr, %__v78___v9_TW_len
  %238 = select i1 %237, i64 %__v95_lexpr, i64 %__v78___v9_TW_len
  %239 = xor i64 %238, -1
  %240 = add i64 %239, %__v78___v9_TW_len
  %241 = add i64 %240, 1
  %scevgep188 = getelementptr i64, i64* %__v9_TW, i64 %__v67_clen.i33
  %scevgep192 = getelementptr i64, i64* %__v8_W, i64 %__v67_clen.i33
  %242 = and i64 %__v67_clen.i33, 4294967292
  %243 = add nsw i64 %242, -4
  %244 = lshr exact i64 %243, 2
  %245 = add nuw nsw i64 %244, 1
  %246 = add i64 %240, -3
  %247 = lshr i64 %246, 2
  %248 = add nuw nsw i64 %247, 1
  %min.iters.check185 = icmp ult i64 %__v67_clen.i33, 4
  %min.iters.check164 = icmp ult i64 %241, 4
  %n.vec167 = and i64 %241, -4
  %ind.end = add i64 %__v67_clen.i33, %n.vec167
  %xtraiter327 = and i64 %248, 1
  %249 = icmp eq i64 %247, 0
  %n.vec202 = and i64 %__v67_clen.i33, 4294967292
  %xtraiter323 = and i64 %245, 1
  %250 = icmp eq i64 %243, 0
  %unroll_iter329 = sub nsw i64 %248, %xtraiter327
  %lcmp.mod328 = icmp eq i64 %xtraiter327, 0
  %unroll_iter325 = sub nsw i64 %245, %xtraiter323
  %lcmp.mod324 = icmp eq i64 %xtraiter323, 0
  %cmp.n171 = icmp eq i64 %241, %n.vec167
  %cmp.n206 = icmp eq i64 %__v67_clen.i33, %n.vec202
  br label %251

; <label>:251:                                    ; preds = %479, %.lr.ph
  %__v14__limb42 = phi i64 [ 0, %.lr.ph ], [ %480, %479 ]
  %252 = sub i64 %233, %__v14__limb42
  %__v120_lexpr = and i64 %252, 4294967295
  %253 = getelementptr i64, i64* %__v4_E, i64 %__v120_lexpr
  br label %474

._crit_edge:                                      ; preds = %479, %231
  %254 = bitcast i64* %__v24_one.i20 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %254)
  store i64 1, i64* %__v24_one.i20, align 8
  call fastcc void @_mpi_montmul(i64* %__v1_X, i64 %__v71___v1_X_len, i64* nonnull %__v24_one.i20, i64 1, i64* %__v5_N, i64 %__v74___v5_N_len, i64 %__v10_mm, i64* %__v7_T, i64 %__v76___v7_T_len) #0
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %254)
  %255 = icmp slt i32 %__v3_A_sgn, 0
  %256 = load i64, i64* %__v4_E, align 8
  %257 = trunc i64 %256 to i32
  %258 = and i32 %257, 1
  %259 = tail call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %255, i32 %258, i32 0) #0
  %260 = and i32 %259, 1
  %261 = icmp ne i32 %260, 0
  %262 = shl nuw nsw i32 %260, 1
  %263 = xor i32 %262, 2
  %264 = add nsw i32 %263, -1
  %265 = icmp ult i64 %__v76___v7_T_len, %__v74___v5_N_len
  %__v67_clen.i21 = select i1 %265, i64 %__v76___v7_T_len, i64 %__v74___v5_N_len
  %266 = icmp eq i64 %__v67_clen.i21, 0
  br i1 %266, label %._crit_edge4.i24, label %.lr.ph3.i22

.lr.ph3.i22:                                      ; preds = %._crit_edge
  %min.iters.check222 = icmp ult i64 %__v67_clen.i21, 4
  br i1 %min.iters.check222, label %scalar.ph221.preheader, label %vector.memcheck234

vector.memcheck234:                               ; preds = %.lr.ph3.i22
  %scevgep225 = getelementptr i64, i64* %__v7_T, i64 %__v67_clen.i21
  %scevgep228 = getelementptr i64, i64* %__v5_N, i64 %__v67_clen.i21
  %bound0230 = icmp ugt i64* %scevgep228, %__v7_T
  %bound1231 = icmp ugt i64* %scevgep225, %__v5_N
  %memcheck.conflict233 = and i1 %bound0230, %bound1231
  br i1 %memcheck.conflict233, label %scalar.ph221.preheader, label %vector.ph235

vector.ph235:                                     ; preds = %vector.memcheck234
  %n.vec237 = and i64 %__v67_clen.i21, -4
  %267 = add i64 %n.vec237, -4
  %268 = lshr exact i64 %267, 2
  %269 = add nuw nsw i64 %268, 1
  %xtraiter319 = and i64 %269, 1
  %270 = icmp eq i64 %267, 0
  br i1 %270, label %middle.block220.unr-lcssa, label %vector.ph235.new

vector.ph235.new:                                 ; preds = %vector.ph235
  %unroll_iter321 = sub nsw i64 %269, %xtraiter319
  br label %vector.body219

vector.body219:                                   ; preds = %vector.body219, %vector.ph235.new
  %index238 = phi i64 [ 0, %vector.ph235.new ], [ %index.next239.1, %vector.body219 ]
  %niter322 = phi i64 [ %unroll_iter321, %vector.ph235.new ], [ %niter322.nsub.1, %vector.body219 ]
  %271 = getelementptr i64, i64* %__v7_T, i64 %index238
  %272 = getelementptr i64, i64* %__v5_N, i64 %index238
  %273 = bitcast i64* %272 to <2 x i64>*
  %wide.load246 = load <2 x i64>, <2 x i64>* %273, align 8, !alias.scope !44
  %274 = getelementptr i64, i64* %272, i64 2
  %275 = bitcast i64* %274 to <2 x i64>*
  %wide.load247 = load <2 x i64>, <2 x i64>* %275, align 8, !alias.scope !44
  %276 = bitcast i64* %271 to <2 x i64>*
  %wide.load248 = load <2 x i64>, <2 x i64>* %276, align 8, !alias.scope !47, !noalias !44
  %277 = getelementptr i64, i64* %271, i64 2
  %278 = bitcast i64* %277 to <2 x i64>*
  %wide.load249 = load <2 x i64>, <2 x i64>* %278, align 8, !alias.scope !47, !noalias !44
  %279 = select i1 %261, <2 x i64> %wide.load246, <2 x i64> %wide.load248
  %280 = select i1 %261, <2 x i64> %wide.load247, <2 x i64> %wide.load249
  %281 = bitcast i64* %271 to <2 x i64>*
  store <2 x i64> %279, <2 x i64>* %281, align 8, !alias.scope !47, !noalias !44
  %282 = bitcast i64* %277 to <2 x i64>*
  store <2 x i64> %280, <2 x i64>* %282, align 8, !alias.scope !47, !noalias !44
  %index.next239 = or i64 %index238, 4
  %283 = getelementptr i64, i64* %__v7_T, i64 %index.next239
  %284 = getelementptr i64, i64* %__v5_N, i64 %index.next239
  %285 = bitcast i64* %284 to <2 x i64>*
  %wide.load246.1 = load <2 x i64>, <2 x i64>* %285, align 8, !alias.scope !44
  %286 = getelementptr i64, i64* %284, i64 2
  %287 = bitcast i64* %286 to <2 x i64>*
  %wide.load247.1 = load <2 x i64>, <2 x i64>* %287, align 8, !alias.scope !44
  %288 = bitcast i64* %283 to <2 x i64>*
  %wide.load248.1 = load <2 x i64>, <2 x i64>* %288, align 8, !alias.scope !47, !noalias !44
  %289 = getelementptr i64, i64* %283, i64 2
  %290 = bitcast i64* %289 to <2 x i64>*
  %wide.load249.1 = load <2 x i64>, <2 x i64>* %290, align 8, !alias.scope !47, !noalias !44
  %291 = select i1 %261, <2 x i64> %wide.load246.1, <2 x i64> %wide.load248.1
  %292 = select i1 %261, <2 x i64> %wide.load247.1, <2 x i64> %wide.load249.1
  %293 = bitcast i64* %283 to <2 x i64>*
  store <2 x i64> %291, <2 x i64>* %293, align 8, !alias.scope !47, !noalias !44
  %294 = bitcast i64* %289 to <2 x i64>*
  store <2 x i64> %292, <2 x i64>* %294, align 8, !alias.scope !47, !noalias !44
  %index.next239.1 = add i64 %index238, 8
  %niter322.nsub.1 = add i64 %niter322, -2
  %niter322.ncmp.1 = icmp eq i64 %niter322.nsub.1, 0
  br i1 %niter322.ncmp.1, label %middle.block220.unr-lcssa, label %vector.body219, !llvm.loop !49

middle.block220.unr-lcssa:                        ; preds = %vector.body219, %vector.ph235
  %index238.unr = phi i64 [ 0, %vector.ph235 ], [ %index.next239.1, %vector.body219 ]
  %lcmp.mod320 = icmp eq i64 %xtraiter319, 0
  br i1 %lcmp.mod320, label %middle.block220, label %vector.body219.epil

vector.body219.epil:                              ; preds = %middle.block220.unr-lcssa
  %295 = getelementptr i64, i64* %__v7_T, i64 %index238.unr
  %296 = getelementptr i64, i64* %__v5_N, i64 %index238.unr
  %297 = bitcast i64* %296 to <2 x i64>*
  %wide.load246.epil = load <2 x i64>, <2 x i64>* %297, align 8, !alias.scope !44
  %298 = getelementptr i64, i64* %296, i64 2
  %299 = bitcast i64* %298 to <2 x i64>*
  %wide.load247.epil = load <2 x i64>, <2 x i64>* %299, align 8, !alias.scope !44
  %300 = bitcast i64* %295 to <2 x i64>*
  %wide.load248.epil = load <2 x i64>, <2 x i64>* %300, align 8, !alias.scope !47, !noalias !44
  %301 = getelementptr i64, i64* %295, i64 2
  %302 = bitcast i64* %301 to <2 x i64>*
  %wide.load249.epil = load <2 x i64>, <2 x i64>* %302, align 8, !alias.scope !47, !noalias !44
  %303 = select i1 %261, <2 x i64> %wide.load246.epil, <2 x i64> %wide.load248.epil
  %304 = select i1 %261, <2 x i64> %wide.load247.epil, <2 x i64> %wide.load249.epil
  %305 = bitcast i64* %295 to <2 x i64>*
  store <2 x i64> %303, <2 x i64>* %305, align 8, !alias.scope !47, !noalias !44
  %306 = bitcast i64* %301 to <2 x i64>*
  store <2 x i64> %304, <2 x i64>* %306, align 8, !alias.scope !47, !noalias !44
  br label %middle.block220

middle.block220:                                  ; preds = %middle.block220.unr-lcssa, %vector.body219.epil
  %cmp.n241 = icmp eq i64 %__v67_clen.i21, %n.vec237
  br i1 %cmp.n241, label %._crit_edge4.i24, label %scalar.ph221.preheader

scalar.ph221.preheader:                           ; preds = %middle.block220, %vector.memcheck234, %.lr.ph3.i22
  %__v68_i2.i23.ph = phi i64 [ 0, %vector.memcheck234 ], [ 0, %.lr.ph3.i22 ], [ %n.vec237, %middle.block220 ]
  br label %scalar.ph221

scalar.ph221:                                     ; preds = %scalar.ph221.preheader, %scalar.ph221
  %__v68_i2.i23 = phi i64 [ %312, %scalar.ph221 ], [ %__v68_i2.i23.ph, %scalar.ph221.preheader ]
  %307 = getelementptr i64, i64* %__v7_T, i64 %__v68_i2.i23
  %308 = getelementptr i64, i64* %__v5_N, i64 %__v68_i2.i23
  %309 = load i64, i64* %308, align 8
  %310 = load i64, i64* %307, align 8
  %311 = select i1 %261, i64 %309, i64 %310
  store i64 %311, i64* %307, align 8
  %312 = add nuw i64 %__v68_i2.i23, 1
  %313 = icmp ult i64 %312, %__v67_clen.i21
  br i1 %313, label %scalar.ph221, label %._crit_edge4.i24, !llvm.loop !50

._crit_edge4.i24:                                 ; preds = %scalar.ph221, %middle.block220, %._crit_edge
  %314 = icmp ugt i64 %__v76___v7_T_len, %__v74___v5_N_len
  br i1 %314, label %.lr.ph.i25, label %_mpi_copy.exit27

.lr.ph.i25:                                       ; preds = %._crit_edge4.i24
  %315 = xor i64 %__v74___v5_N_len, -1
  %316 = add i64 %315, %__v76___v7_T_len
  %317 = add i64 %316, 1
  %min.iters.check258 = icmp ult i64 %317, 4
  br i1 %min.iters.check258, label %scalar.ph256.preheader, label %vector.ph259

vector.ph259:                                     ; preds = %.lr.ph.i25
  %n.vec261 = and i64 %317, -4
  %ind.end265 = add i64 %__v67_clen.i21, %n.vec261
  %318 = add i64 %n.vec261, -4
  %319 = lshr exact i64 %318, 2
  %320 = add nuw nsw i64 %319, 1
  %xtraiter315 = and i64 %320, 1
  %321 = icmp eq i64 %318, 0
  br i1 %321, label %middle.block255.unr-lcssa, label %vector.ph259.new

vector.ph259.new:                                 ; preds = %vector.ph259
  %unroll_iter317 = sub nsw i64 %320, %xtraiter315
  br label %vector.body254

vector.body254:                                   ; preds = %vector.body254, %vector.ph259.new
  %index262 = phi i64 [ 0, %vector.ph259.new ], [ %index.next263.1, %vector.body254 ]
  %niter318 = phi i64 [ %unroll_iter317, %vector.ph259.new ], [ %niter318.nsub.1, %vector.body254 ]
  %322 = add i64 %__v67_clen.i21, %index262
  %323 = getelementptr i64, i64* %__v7_T, i64 %322
  %324 = bitcast i64* %323 to <2 x i64>*
  %wide.load272 = load <2 x i64>, <2 x i64>* %324, align 8
  %325 = getelementptr i64, i64* %323, i64 2
  %326 = bitcast i64* %325 to <2 x i64>*
  %wide.load273 = load <2 x i64>, <2 x i64>* %326, align 8
  %327 = select i1 %261, <2 x i64> zeroinitializer, <2 x i64> %wide.load272
  %328 = select i1 %261, <2 x i64> zeroinitializer, <2 x i64> %wide.load273
  %329 = bitcast i64* %323 to <2 x i64>*
  store <2 x i64> %327, <2 x i64>* %329, align 8
  %330 = bitcast i64* %325 to <2 x i64>*
  store <2 x i64> %328, <2 x i64>* %330, align 8
  %index.next263 = or i64 %index262, 4
  %331 = add i64 %__v67_clen.i21, %index.next263
  %332 = getelementptr i64, i64* %__v7_T, i64 %331
  %333 = bitcast i64* %332 to <2 x i64>*
  %wide.load272.1 = load <2 x i64>, <2 x i64>* %333, align 8
  %334 = getelementptr i64, i64* %332, i64 2
  %335 = bitcast i64* %334 to <2 x i64>*
  %wide.load273.1 = load <2 x i64>, <2 x i64>* %335, align 8
  %336 = select i1 %261, <2 x i64> zeroinitializer, <2 x i64> %wide.load272.1
  %337 = select i1 %261, <2 x i64> zeroinitializer, <2 x i64> %wide.load273.1
  %338 = bitcast i64* %332 to <2 x i64>*
  store <2 x i64> %336, <2 x i64>* %338, align 8
  %339 = bitcast i64* %334 to <2 x i64>*
  store <2 x i64> %337, <2 x i64>* %339, align 8
  %index.next263.1 = add i64 %index262, 8
  %niter318.nsub.1 = add i64 %niter318, -2
  %niter318.ncmp.1 = icmp eq i64 %niter318.nsub.1, 0
  br i1 %niter318.ncmp.1, label %middle.block255.unr-lcssa, label %vector.body254, !llvm.loop !51

middle.block255.unr-lcssa:                        ; preds = %vector.body254, %vector.ph259
  %index262.unr = phi i64 [ 0, %vector.ph259 ], [ %index.next263.1, %vector.body254 ]
  %lcmp.mod316 = icmp eq i64 %xtraiter315, 0
  br i1 %lcmp.mod316, label %middle.block255, label %vector.body254.epil

vector.body254.epil:                              ; preds = %middle.block255.unr-lcssa
  %340 = add i64 %__v67_clen.i21, %index262.unr
  %341 = getelementptr i64, i64* %__v7_T, i64 %340
  %342 = bitcast i64* %341 to <2 x i64>*
  %wide.load272.epil = load <2 x i64>, <2 x i64>* %342, align 8
  %343 = getelementptr i64, i64* %341, i64 2
  %344 = bitcast i64* %343 to <2 x i64>*
  %wide.load273.epil = load <2 x i64>, <2 x i64>* %344, align 8
  %345 = select i1 %261, <2 x i64> zeroinitializer, <2 x i64> %wide.load272.epil
  %346 = select i1 %261, <2 x i64> zeroinitializer, <2 x i64> %wide.load273.epil
  %347 = bitcast i64* %341 to <2 x i64>*
  store <2 x i64> %345, <2 x i64>* %347, align 8
  %348 = bitcast i64* %343 to <2 x i64>*
  store <2 x i64> %346, <2 x i64>* %348, align 8
  br label %middle.block255

middle.block255:                                  ; preds = %middle.block255.unr-lcssa, %vector.body254.epil
  %cmp.n266 = icmp eq i64 %317, %n.vec261
  br i1 %cmp.n266, label %_mpi_copy.exit27, label %scalar.ph256.preheader

scalar.ph256.preheader:                           ; preds = %middle.block255, %.lr.ph.i25
  %__v69_i1.i26.ph = phi i64 [ %__v67_clen.i21, %.lr.ph.i25 ], [ %ind.end265, %middle.block255 ]
  br label %scalar.ph256

scalar.ph256:                                     ; preds = %scalar.ph256.preheader, %scalar.ph256
  %__v69_i1.i26 = phi i64 [ %352, %scalar.ph256 ], [ %__v69_i1.i26.ph, %scalar.ph256.preheader ]
  %349 = getelementptr i64, i64* %__v7_T, i64 %__v69_i1.i26
  %350 = load i64, i64* %349, align 8
  %351 = select i1 %261, i64 0, i64 %350
  store i64 %351, i64* %349, align 8
  %352 = add i64 %__v69_i1.i26, 1
  %353 = icmp ult i64 %352, %__v76___v7_T_len
  br i1 %353, label %scalar.ph256, label %_mpi_copy.exit27, !llvm.loop !52

_mpi_copy.exit27:                                 ; preds = %scalar.ph256, %middle.block255, %._crit_edge4.i24
  %354 = tail call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %261, i32 0, i32 1) #0
  %355 = icmp eq i64 %__v71___v1_X_len, 0
  br i1 %355, label %._crit_edge8.i, label %.lr.ph7.i.preheader

.lr.ph7.i.preheader:                              ; preds = %_mpi_copy.exit27
  br label %.lr.ph7.i

.lr.ph7.i:                                        ; preds = %.lr.ph7.i.preheader, %.lr.ph7.i
  %__v63_i6.i = phi i64 [ %370, %.lr.ph7.i ], [ 0, %.lr.ph7.i.preheader ]
  %__v61_c.04.i = phi i64 [ %367, %.lr.ph7.i ], [ 0, %.lr.ph7.i.preheader ]
  %356 = getelementptr i64, i64* %__v7_T, i64 %__v63_i6.i
  %357 = load i64, i64* %356, align 8
  %358 = icmp ult i64 %357, %__v61_c.04.i
  %359 = zext i1 %358 to i64
  %360 = select i1 %261, i64 %__v61_c.04.i, i64 0
  %361 = sub i64 %357, %360
  store i64 %361, i64* %356, align 8
  %362 = getelementptr i64, i64* %__v1_X, i64 %__v63_i6.i
  %363 = load i64, i64* %362, align 8
  %364 = icmp ult i64 %361, %363
  %365 = zext i1 %364 to i64
  %366 = add nuw nsw i64 %365, %359
  %367 = select i1 %261, i64 %366, i64 %__v61_c.04.i
  %368 = select i1 %261, i64 %363, i64 0
  %369 = sub i64 %361, %368
  store i64 %369, i64* %356, align 8
  %370 = add nuw i64 %__v63_i6.i, 1
  %exitcond11.i = icmp eq i64 %370, %__v71___v1_X_len
  br i1 %exitcond11.i, label %._crit_edge8.i, label %.lr.ph7.i

._crit_edge8.i:                                   ; preds = %.lr.ph7.i, %_mpi_copy.exit27
  %__v61_c.0.lcssa.i = phi i64 [ 0, %_mpi_copy.exit27 ], [ %367, %.lr.ph7.i ]
  %371 = icmp ugt i64 %__v76___v7_T_len, %__v71___v1_X_len
  br i1 %371, label %.lr.ph.i28.preheader, label %_mpi_sub_hlp.exit

.lr.ph.i28.preheader:                             ; preds = %._crit_edge8.i
  %372 = sub i64 %__v76___v7_T_len, %__v71___v1_X_len
  %373 = add i64 %__v76___v7_T_len, -1
  %xtraiter313 = and i64 %372, 1
  %lcmp.mod314 = icmp eq i64 %xtraiter313, 0
  br i1 %lcmp.mod314, label %.lr.ph.i28.prol.loopexit, label %.lr.ph.i28.prol

.lr.ph.i28.prol:                                  ; preds = %.lr.ph.i28.preheader
  %374 = getelementptr i64, i64* %__v7_T, i64 %__v71___v1_X_len
  %375 = load i64, i64* %374, align 8
  %376 = icmp ult i64 %375, %__v61_c.0.lcssa.i
  %377 = zext i1 %376 to i64
  %378 = select i1 %261, i64 %__v61_c.0.lcssa.i, i64 0
  %379 = sub i64 %375, %378
  store i64 %379, i64* %374, align 8
  %380 = select i1 %261, i64 %377, i64 %__v61_c.0.lcssa.i
  %381 = add nuw i64 %__v71___v1_X_len, 1
  br label %.lr.ph.i28.prol.loopexit

.lr.ph.i28.prol.loopexit:                         ; preds = %.lr.ph.i28.preheader, %.lr.ph.i28.prol
  %__v64_i3.i.unr = phi i64 [ %__v71___v1_X_len, %.lr.ph.i28.preheader ], [ %381, %.lr.ph.i28.prol ]
  %__v61_c.11.i.unr = phi i64 [ %__v61_c.0.lcssa.i, %.lr.ph.i28.preheader ], [ %380, %.lr.ph.i28.prol ]
  %382 = icmp eq i64 %373, %__v71___v1_X_len
  br i1 %382, label %_mpi_sub_hlp.exit, label %.lr.ph.i28.preheader.new

.lr.ph.i28.preheader.new:                         ; preds = %.lr.ph.i28.prol.loopexit
  br label %.lr.ph.i28

.lr.ph.i28:                                       ; preds = %.lr.ph.i28, %.lr.ph.i28.preheader.new
  %__v64_i3.i = phi i64 [ %__v64_i3.i.unr, %.lr.ph.i28.preheader.new ], [ %398, %.lr.ph.i28 ]
  %__v61_c.11.i = phi i64 [ %__v61_c.11.i.unr, %.lr.ph.i28.preheader.new ], [ %397, %.lr.ph.i28 ]
  %383 = getelementptr i64, i64* %__v7_T, i64 %__v64_i3.i
  %384 = load i64, i64* %383, align 8
  %385 = icmp ult i64 %384, %__v61_c.11.i
  %386 = zext i1 %385 to i64
  %387 = select i1 %261, i64 %__v61_c.11.i, i64 0
  %388 = sub i64 %384, %387
  store i64 %388, i64* %383, align 8
  %389 = select i1 %261, i64 %386, i64 %__v61_c.11.i
  %390 = add nuw i64 %__v64_i3.i, 1
  %391 = getelementptr i64, i64* %__v7_T, i64 %390
  %392 = load i64, i64* %391, align 8
  %393 = icmp ult i64 %392, %389
  %394 = zext i1 %393 to i64
  %narrow = and i1 %261, %385
  %395 = zext i1 %narrow to i64
  %396 = sub i64 %392, %395
  store i64 %396, i64* %391, align 8
  %397 = select i1 %261, i64 %394, i64 %__v61_c.11.i
  %398 = add i64 %__v64_i3.i, 2
  %exitcond.i.1 = icmp eq i64 %398, %__v76___v7_T_len
  br i1 %exitcond.i.1, label %_mpi_sub_hlp.exit, label %.lr.ph.i28

_mpi_sub_hlp.exit:                                ; preds = %.lr.ph.i28.prol.loopexit, %.lr.ph.i28, %._crit_edge8.i
  %399 = tail call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %261, i32 0, i32 1) #0
  br i1 %355, label %_mpi_copy.exit32, label %.lr.ph3.i29

.lr.ph3.i29:                                      ; preds = %_mpi_sub_hlp.exit
  %min.iters.check281 = icmp ult i64 %__v71___v1_X_len, 4
  br i1 %min.iters.check281, label %scalar.ph280.preheader, label %vector.memcheck291

vector.memcheck291:                               ; preds = %.lr.ph3.i29
  %scevgep283 = getelementptr i64, i64* %__v1_X, i64 %__v71___v1_X_len
  %scevgep285 = getelementptr i64, i64* %__v7_T, i64 %__v71___v1_X_len
  %bound0287 = icmp ugt i64* %scevgep285, %__v1_X
  %bound1288 = icmp ugt i64* %scevgep283, %__v7_T
  %memcheck.conflict290 = and i1 %bound0287, %bound1288
  br i1 %memcheck.conflict290, label %scalar.ph280.preheader, label %vector.ph292

vector.ph292:                                     ; preds = %vector.memcheck291
  %n.vec294 = and i64 %__v71___v1_X_len, -4
  %400 = add i64 %n.vec294, -4
  %401 = lshr exact i64 %400, 2
  %402 = add nuw nsw i64 %401, 1
  %xtraiter311 = and i64 %402, 1
  %403 = icmp eq i64 %400, 0
  br i1 %403, label %middle.block279.unr-lcssa, label %vector.ph292.new

vector.ph292.new:                                 ; preds = %vector.ph292
  %unroll_iter = sub nsw i64 %402, %xtraiter311
  br label %vector.body278

vector.body278:                                   ; preds = %vector.body278, %vector.ph292.new
  %index295 = phi i64 [ 0, %vector.ph292.new ], [ %index.next296.1, %vector.body278 ]
  %niter = phi i64 [ %unroll_iter, %vector.ph292.new ], [ %niter.nsub.1, %vector.body278 ]
  %404 = getelementptr i64, i64* %__v1_X, i64 %index295
  %405 = getelementptr i64, i64* %__v7_T, i64 %index295
  %406 = bitcast i64* %405 to <2 x i64>*
  %wide.load303 = load <2 x i64>, <2 x i64>* %406, align 8, !alias.scope !54
  %407 = getelementptr i64, i64* %405, i64 2
  %408 = bitcast i64* %407 to <2 x i64>*
  %wide.load304 = load <2 x i64>, <2 x i64>* %408, align 8, !alias.scope !54
  %409 = bitcast i64* %404 to <2 x i64>*
  %wide.load305 = load <2 x i64>, <2 x i64>* %409, align 8, !alias.scope !57, !noalias !54
  %410 = getelementptr i64, i64* %404, i64 2
  %411 = bitcast i64* %410 to <2 x i64>*
  %wide.load306 = load <2 x i64>, <2 x i64>* %411, align 8, !alias.scope !57, !noalias !54
  %412 = select i1 %261, <2 x i64> %wide.load303, <2 x i64> %wide.load305
  %413 = select i1 %261, <2 x i64> %wide.load304, <2 x i64> %wide.load306
  %414 = bitcast i64* %404 to <2 x i64>*
  store <2 x i64> %412, <2 x i64>* %414, align 8, !alias.scope !57, !noalias !54
  %415 = bitcast i64* %410 to <2 x i64>*
  store <2 x i64> %413, <2 x i64>* %415, align 8, !alias.scope !57, !noalias !54
  %index.next296 = or i64 %index295, 4
  %416 = getelementptr i64, i64* %__v1_X, i64 %index.next296
  %417 = getelementptr i64, i64* %__v7_T, i64 %index.next296
  %418 = bitcast i64* %417 to <2 x i64>*
  %wide.load303.1 = load <2 x i64>, <2 x i64>* %418, align 8, !alias.scope !54
  %419 = getelementptr i64, i64* %417, i64 2
  %420 = bitcast i64* %419 to <2 x i64>*
  %wide.load304.1 = load <2 x i64>, <2 x i64>* %420, align 8, !alias.scope !54
  %421 = bitcast i64* %416 to <2 x i64>*
  %wide.load305.1 = load <2 x i64>, <2 x i64>* %421, align 8, !alias.scope !57, !noalias !54
  %422 = getelementptr i64, i64* %416, i64 2
  %423 = bitcast i64* %422 to <2 x i64>*
  %wide.load306.1 = load <2 x i64>, <2 x i64>* %423, align 8, !alias.scope !57, !noalias !54
  %424 = select i1 %261, <2 x i64> %wide.load303.1, <2 x i64> %wide.load305.1
  %425 = select i1 %261, <2 x i64> %wide.load304.1, <2 x i64> %wide.load306.1
  %426 = bitcast i64* %416 to <2 x i64>*
  store <2 x i64> %424, <2 x i64>* %426, align 8, !alias.scope !57, !noalias !54
  %427 = bitcast i64* %422 to <2 x i64>*
  store <2 x i64> %425, <2 x i64>* %427, align 8, !alias.scope !57, !noalias !54
  %index.next296.1 = add i64 %index295, 8
  %niter.nsub.1 = add i64 %niter, -2
  %niter.ncmp.1 = icmp eq i64 %niter.nsub.1, 0
  br i1 %niter.ncmp.1, label %middle.block279.unr-lcssa, label %vector.body278, !llvm.loop !59

middle.block279.unr-lcssa:                        ; preds = %vector.body278, %vector.ph292
  %index295.unr = phi i64 [ 0, %vector.ph292 ], [ %index.next296.1, %vector.body278 ]
  %lcmp.mod312 = icmp eq i64 %xtraiter311, 0
  br i1 %lcmp.mod312, label %middle.block279, label %vector.body278.epil

vector.body278.epil:                              ; preds = %middle.block279.unr-lcssa
  %428 = getelementptr i64, i64* %__v1_X, i64 %index295.unr
  %429 = getelementptr i64, i64* %__v7_T, i64 %index295.unr
  %430 = bitcast i64* %429 to <2 x i64>*
  %wide.load303.epil = load <2 x i64>, <2 x i64>* %430, align 8, !alias.scope !54
  %431 = getelementptr i64, i64* %429, i64 2
  %432 = bitcast i64* %431 to <2 x i64>*
  %wide.load304.epil = load <2 x i64>, <2 x i64>* %432, align 8, !alias.scope !54
  %433 = bitcast i64* %428 to <2 x i64>*
  %wide.load305.epil = load <2 x i64>, <2 x i64>* %433, align 8, !alias.scope !57, !noalias !54
  %434 = getelementptr i64, i64* %428, i64 2
  %435 = bitcast i64* %434 to <2 x i64>*
  %wide.load306.epil = load <2 x i64>, <2 x i64>* %435, align 8, !alias.scope !57, !noalias !54
  %436 = select i1 %261, <2 x i64> %wide.load303.epil, <2 x i64> %wide.load305.epil
  %437 = select i1 %261, <2 x i64> %wide.load304.epil, <2 x i64> %wide.load306.epil
  %438 = bitcast i64* %428 to <2 x i64>*
  store <2 x i64> %436, <2 x i64>* %438, align 8, !alias.scope !57, !noalias !54
  %439 = bitcast i64* %434 to <2 x i64>*
  store <2 x i64> %437, <2 x i64>* %439, align 8, !alias.scope !57, !noalias !54
  br label %middle.block279

middle.block279:                                  ; preds = %middle.block279.unr-lcssa, %vector.body278.epil
  %cmp.n298 = icmp eq i64 %n.vec294, %__v71___v1_X_len
  br i1 %cmp.n298, label %_mpi_copy.exit32, label %scalar.ph280.preheader

scalar.ph280.preheader:                           ; preds = %middle.block279, %vector.memcheck291, %.lr.ph3.i29
  %__v68_i2.i30.ph = phi i64 [ 0, %vector.memcheck291 ], [ 0, %.lr.ph3.i29 ], [ %n.vec294, %middle.block279 ]
  %440 = add i64 %__v71___v1_X_len, -1
  %441 = sub i64 %440, %__v68_i2.i30.ph
  %xtraiter = and i64 %__v71___v1_X_len, 3
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod, label %scalar.ph280.prol.loopexit, label %scalar.ph280.prol.preheader

scalar.ph280.prol.preheader:                      ; preds = %scalar.ph280.preheader
  br label %scalar.ph280.prol

scalar.ph280.prol:                                ; preds = %scalar.ph280.prol, %scalar.ph280.prol.preheader
  %__v68_i2.i30.prol = phi i64 [ %447, %scalar.ph280.prol ], [ %__v68_i2.i30.ph, %scalar.ph280.prol.preheader ]
  %prol.iter = phi i64 [ %prol.iter.sub, %scalar.ph280.prol ], [ %xtraiter, %scalar.ph280.prol.preheader ]
  %442 = getelementptr i64, i64* %__v1_X, i64 %__v68_i2.i30.prol
  %443 = getelementptr i64, i64* %__v7_T, i64 %__v68_i2.i30.prol
  %444 = load i64, i64* %443, align 8
  %445 = load i64, i64* %442, align 8
  %446 = select i1 %261, i64 %444, i64 %445
  store i64 %446, i64* %442, align 8
  %447 = add nuw i64 %__v68_i2.i30.prol, 1
  %prol.iter.sub = add i64 %prol.iter, -1
  %prol.iter.cmp = icmp eq i64 %prol.iter.sub, 0
  br i1 %prol.iter.cmp, label %scalar.ph280.prol.loopexit, label %scalar.ph280.prol, !llvm.loop !60

scalar.ph280.prol.loopexit:                       ; preds = %scalar.ph280.prol, %scalar.ph280.preheader
  %__v68_i2.i30.unr = phi i64 [ %__v68_i2.i30.ph, %scalar.ph280.preheader ], [ %447, %scalar.ph280.prol ]
  %448 = icmp ult i64 %441, 3
  br i1 %448, label %_mpi_copy.exit32, label %scalar.ph280.preheader.new

scalar.ph280.preheader.new:                       ; preds = %scalar.ph280.prol.loopexit
  br label %scalar.ph280

scalar.ph280:                                     ; preds = %scalar.ph280, %scalar.ph280.preheader.new
  %__v68_i2.i30 = phi i64 [ %__v68_i2.i30.unr, %scalar.ph280.preheader.new ], [ %472, %scalar.ph280 ]
  %449 = getelementptr i64, i64* %__v1_X, i64 %__v68_i2.i30
  %450 = getelementptr i64, i64* %__v7_T, i64 %__v68_i2.i30
  %451 = load i64, i64* %450, align 8
  %452 = load i64, i64* %449, align 8
  %453 = select i1 %261, i64 %451, i64 %452
  store i64 %453, i64* %449, align 8
  %454 = add nuw i64 %__v68_i2.i30, 1
  %455 = getelementptr i64, i64* %__v1_X, i64 %454
  %456 = getelementptr i64, i64* %__v7_T, i64 %454
  %457 = load i64, i64* %456, align 8
  %458 = load i64, i64* %455, align 8
  %459 = select i1 %261, i64 %457, i64 %458
  store i64 %459, i64* %455, align 8
  %460 = add i64 %__v68_i2.i30, 2
  %461 = getelementptr i64, i64* %__v1_X, i64 %460
  %462 = getelementptr i64, i64* %__v7_T, i64 %460
  %463 = load i64, i64* %462, align 8
  %464 = load i64, i64* %461, align 8
  %465 = select i1 %261, i64 %463, i64 %464
  store i64 %465, i64* %461, align 8
  %466 = add i64 %__v68_i2.i30, 3
  %467 = getelementptr i64, i64* %__v1_X, i64 %466
  %468 = getelementptr i64, i64* %__v7_T, i64 %466
  %469 = load i64, i64* %468, align 8
  %470 = load i64, i64* %467, align 8
  %471 = select i1 %261, i64 %469, i64 %470
  store i64 %471, i64* %467, align 8
  %472 = add i64 %__v68_i2.i30, 4
  %exitcond.3 = icmp eq i64 %472, %__v71___v1_X_len
  br i1 %exitcond.3, label %_mpi_copy.exit32, label %scalar.ph280, !llvm.loop !61

_mpi_copy.exit32:                                 ; preds = %scalar.ph280.prol.loopexit, %scalar.ph280, %middle.block279, %_mpi_sub_hlp.exit
  %473 = tail call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %261, i32 0, i32 1) #0
  ret i32 %264

; <label>:474:                                    ; preds = %562, %251
  %indvars.iv45 = phi i64 [ 1, %251 ], [ %indvars.iv.next46, %562 ]
  tail call fastcc void @_mpi_montmul(i64* %__v1_X, i64 %__v71___v1_X_len, i64* %__v1_X, i64 %__v71___v1_X_len, i64* %__v5_N, i64 %__v74___v5_N_len, i64 %__v10_mm, i64* %__v7_T, i64 %__v76___v7_T_len)
  tail call fastcc void @_mpi_montmul(i64* %__v1_X, i64 %__v71___v1_X_len, i64* %__v1_X, i64 %__v71___v1_X_len, i64* %__v5_N, i64 %__v74___v5_N_len, i64 %__v10_mm, i64* %__v7_T, i64 %__v76___v7_T_len)
  tail call fastcc void @_mpi_montmul(i64* %__v1_X, i64 %__v71___v1_X_len, i64* %__v1_X, i64 %__v71___v1_X_len, i64* %__v5_N, i64 %__v74___v5_N_len, i64 %__v10_mm, i64* %__v7_T, i64 %__v76___v7_T_len)
  tail call fastcc void @_mpi_montmul(i64* %__v1_X, i64 %__v71___v1_X_len, i64* %__v1_X, i64 %__v71___v1_X_len, i64* %__v5_N, i64 %__v74___v5_N_len, i64 %__v10_mm, i64* %__v7_T, i64 %__v76___v7_T_len)
  %475 = load i64, i64* %253, align 8
  %476 = shl i64 %indvars.iv45, 2
  %477 = sub nuw nsw i64 64, %476
  %478 = lshr i64 %475, %477
  %__v17_wbits = and i64 %478, 15
  br label %481

; <label>:479:                                    ; preds = %562
  %480 = add nuw i64 %__v14__limb42, 1
  %exitcond48 = icmp eq i64 %480, %__v73___v4_E_len
  br i1 %exitcond48, label %._crit_edge, label %251

; <label>:481:                                    ; preds = %_mpi_copy.exit39, %474
  %indvars.iv = phi i64 [ 0, %474 ], [ %indvars.iv.next, %_mpi_copy.exit39 ]
  %482 = mul i64 %0, %indvars.iv
  %483 = and i64 %482, 4294967295
  %scevgep190 = getelementptr i64, i64* %__v8_W, i64 %483
  %scevgep193 = getelementptr i64, i64* %scevgep192, i64 %483
  %__m3 = icmp eq i64 %__v17_wbits, %indvars.iv
  %484 = mul i64 %indvars.iv, %0
  %__v121_lexpr = and i64 %484, 4294967295
  %485 = getelementptr i64, i64* %__v8_W, i64 %__v121_lexpr
  br i1 %235, label %._crit_edge4.i36, label %.lr.ph3.i34

.lr.ph3.i34:                                      ; preds = %481
  br i1 %min.iters.check185, label %scalar.ph184.preheader, label %vector.memcheck199

vector.memcheck199:                               ; preds = %.lr.ph3.i34
  %bound0195 = icmp ugt i64* %scevgep193, %__v9_TW
  %bound1196 = icmp ult i64* %scevgep190, %scevgep188
  %memcheck.conflict198 = and i1 %bound0195, %bound1196
  br i1 %memcheck.conflict198, label %scalar.ph184.preheader, label %vector.ph200

vector.ph200:                                     ; preds = %vector.memcheck199
  br i1 %250, label %middle.block183.unr-lcssa, label %vector.ph200.new

vector.ph200.new:                                 ; preds = %vector.ph200
  br label %vector.body182

vector.body182:                                   ; preds = %vector.body182, %vector.ph200.new
  %index203 = phi i64 [ 0, %vector.ph200.new ], [ %index.next204.1, %vector.body182 ]
  %niter326 = phi i64 [ %unroll_iter325, %vector.ph200.new ], [ %niter326.nsub.1, %vector.body182 ]
  %486 = getelementptr i64, i64* %__v9_TW, i64 %index203
  %487 = getelementptr i64, i64* %485, i64 %index203
  %488 = bitcast i64* %487 to <2 x i64>*
  %wide.load211 = load <2 x i64>, <2 x i64>* %488, align 8, !alias.scope !62
  %489 = getelementptr i64, i64* %487, i64 2
  %490 = bitcast i64* %489 to <2 x i64>*
  %wide.load212 = load <2 x i64>, <2 x i64>* %490, align 8, !alias.scope !62
  %491 = bitcast i64* %486 to <2 x i64>*
  %wide.load213 = load <2 x i64>, <2 x i64>* %491, align 8, !alias.scope !65, !noalias !62
  %492 = getelementptr i64, i64* %486, i64 2
  %493 = bitcast i64* %492 to <2 x i64>*
  %wide.load214 = load <2 x i64>, <2 x i64>* %493, align 8, !alias.scope !65, !noalias !62
  %494 = select i1 %__m3, <2 x i64> %wide.load211, <2 x i64> %wide.load213
  %495 = select i1 %__m3, <2 x i64> %wide.load212, <2 x i64> %wide.load214
  %496 = bitcast i64* %486 to <2 x i64>*
  store <2 x i64> %494, <2 x i64>* %496, align 8, !alias.scope !65, !noalias !62
  %497 = bitcast i64* %492 to <2 x i64>*
  store <2 x i64> %495, <2 x i64>* %497, align 8, !alias.scope !65, !noalias !62
  %index.next204 = or i64 %index203, 4
  %498 = getelementptr i64, i64* %__v9_TW, i64 %index.next204
  %499 = getelementptr i64, i64* %485, i64 %index.next204
  %500 = bitcast i64* %499 to <2 x i64>*
  %wide.load211.1 = load <2 x i64>, <2 x i64>* %500, align 8, !alias.scope !62
  %501 = getelementptr i64, i64* %499, i64 2
  %502 = bitcast i64* %501 to <2 x i64>*
  %wide.load212.1 = load <2 x i64>, <2 x i64>* %502, align 8, !alias.scope !62
  %503 = bitcast i64* %498 to <2 x i64>*
  %wide.load213.1 = load <2 x i64>, <2 x i64>* %503, align 8, !alias.scope !65, !noalias !62
  %504 = getelementptr i64, i64* %498, i64 2
  %505 = bitcast i64* %504 to <2 x i64>*
  %wide.load214.1 = load <2 x i64>, <2 x i64>* %505, align 8, !alias.scope !65, !noalias !62
  %506 = select i1 %__m3, <2 x i64> %wide.load211.1, <2 x i64> %wide.load213.1
  %507 = select i1 %__m3, <2 x i64> %wide.load212.1, <2 x i64> %wide.load214.1
  %508 = bitcast i64* %498 to <2 x i64>*
  store <2 x i64> %506, <2 x i64>* %508, align 8, !alias.scope !65, !noalias !62
  %509 = bitcast i64* %504 to <2 x i64>*
  store <2 x i64> %507, <2 x i64>* %509, align 8, !alias.scope !65, !noalias !62
  %index.next204.1 = add i64 %index203, 8
  %niter326.nsub.1 = add i64 %niter326, -2
  %niter326.ncmp.1 = icmp eq i64 %niter326.nsub.1, 0
  br i1 %niter326.ncmp.1, label %middle.block183.unr-lcssa, label %vector.body182, !llvm.loop !67

middle.block183.unr-lcssa:                        ; preds = %vector.body182, %vector.ph200
  %index203.unr = phi i64 [ 0, %vector.ph200 ], [ %index.next204.1, %vector.body182 ]
  br i1 %lcmp.mod324, label %middle.block183, label %vector.body182.epil

vector.body182.epil:                              ; preds = %middle.block183.unr-lcssa
  %510 = getelementptr i64, i64* %__v9_TW, i64 %index203.unr
  %511 = getelementptr i64, i64* %485, i64 %index203.unr
  %512 = bitcast i64* %511 to <2 x i64>*
  %wide.load211.epil = load <2 x i64>, <2 x i64>* %512, align 8, !alias.scope !62
  %513 = getelementptr i64, i64* %511, i64 2
  %514 = bitcast i64* %513 to <2 x i64>*
  %wide.load212.epil = load <2 x i64>, <2 x i64>* %514, align 8, !alias.scope !62
  %515 = bitcast i64* %510 to <2 x i64>*
  %wide.load213.epil = load <2 x i64>, <2 x i64>* %515, align 8, !alias.scope !65, !noalias !62
  %516 = getelementptr i64, i64* %510, i64 2
  %517 = bitcast i64* %516 to <2 x i64>*
  %wide.load214.epil = load <2 x i64>, <2 x i64>* %517, align 8, !alias.scope !65, !noalias !62
  %518 = select i1 %__m3, <2 x i64> %wide.load211.epil, <2 x i64> %wide.load213.epil
  %519 = select i1 %__m3, <2 x i64> %wide.load212.epil, <2 x i64> %wide.load214.epil
  %520 = bitcast i64* %510 to <2 x i64>*
  store <2 x i64> %518, <2 x i64>* %520, align 8, !alias.scope !65, !noalias !62
  %521 = bitcast i64* %516 to <2 x i64>*
  store <2 x i64> %519, <2 x i64>* %521, align 8, !alias.scope !65, !noalias !62
  br label %middle.block183

middle.block183:                                  ; preds = %middle.block183.unr-lcssa, %vector.body182.epil
  br i1 %cmp.n206, label %._crit_edge4.i36, label %scalar.ph184.preheader

scalar.ph184.preheader:                           ; preds = %middle.block183, %vector.memcheck199, %.lr.ph3.i34
  %__v68_i2.i35.ph = phi i64 [ 0, %vector.memcheck199 ], [ 0, %.lr.ph3.i34 ], [ %n.vec202, %middle.block183 ]
  br label %scalar.ph184

scalar.ph184:                                     ; preds = %scalar.ph184.preheader, %scalar.ph184
  %__v68_i2.i35 = phi i64 [ %527, %scalar.ph184 ], [ %__v68_i2.i35.ph, %scalar.ph184.preheader ]
  %522 = getelementptr i64, i64* %__v9_TW, i64 %__v68_i2.i35
  %523 = getelementptr i64, i64* %485, i64 %__v68_i2.i35
  %524 = load i64, i64* %523, align 8
  %525 = load i64, i64* %522, align 8
  %526 = select i1 %__m3, i64 %524, i64 %525
  store i64 %526, i64* %522, align 8
  %527 = add nuw nsw i64 %__v68_i2.i35, 1
  %528 = icmp ult i64 %527, %__v67_clen.i33
  br i1 %528, label %scalar.ph184, label %._crit_edge4.i36, !llvm.loop !68

._crit_edge4.i36:                                 ; preds = %scalar.ph184, %middle.block183, %481
  br i1 %236, label %.lr.ph.i37, label %_mpi_copy.exit39

.lr.ph.i37:                                       ; preds = %._crit_edge4.i36
  br i1 %min.iters.check164, label %scalar.ph162.preheader, label %vector.ph165

vector.ph165:                                     ; preds = %.lr.ph.i37
  br i1 %249, label %middle.block161.unr-lcssa, label %vector.ph165.new

vector.ph165.new:                                 ; preds = %vector.ph165
  br label %vector.body160

vector.body160:                                   ; preds = %vector.body160, %vector.ph165.new
  %index168 = phi i64 [ 0, %vector.ph165.new ], [ %index.next169.1, %vector.body160 ]
  %niter330 = phi i64 [ %unroll_iter329, %vector.ph165.new ], [ %niter330.nsub.1, %vector.body160 ]
  %529 = add i64 %__v67_clen.i33, %index168
  %530 = getelementptr i64, i64* %__v9_TW, i64 %529
  %531 = bitcast i64* %530 to <2 x i64>*
  %wide.load176 = load <2 x i64>, <2 x i64>* %531, align 8
  %532 = getelementptr i64, i64* %530, i64 2
  %533 = bitcast i64* %532 to <2 x i64>*
  %wide.load177 = load <2 x i64>, <2 x i64>* %533, align 8
  %534 = select i1 %__m3, <2 x i64> zeroinitializer, <2 x i64> %wide.load176
  %535 = select i1 %__m3, <2 x i64> zeroinitializer, <2 x i64> %wide.load177
  %536 = bitcast i64* %530 to <2 x i64>*
  store <2 x i64> %534, <2 x i64>* %536, align 8
  %537 = bitcast i64* %532 to <2 x i64>*
  store <2 x i64> %535, <2 x i64>* %537, align 8
  %index.next169 = or i64 %index168, 4
  %538 = add i64 %__v67_clen.i33, %index.next169
  %539 = getelementptr i64, i64* %__v9_TW, i64 %538
  %540 = bitcast i64* %539 to <2 x i64>*
  %wide.load176.1 = load <2 x i64>, <2 x i64>* %540, align 8
  %541 = getelementptr i64, i64* %539, i64 2
  %542 = bitcast i64* %541 to <2 x i64>*
  %wide.load177.1 = load <2 x i64>, <2 x i64>* %542, align 8
  %543 = select i1 %__m3, <2 x i64> zeroinitializer, <2 x i64> %wide.load176.1
  %544 = select i1 %__m3, <2 x i64> zeroinitializer, <2 x i64> %wide.load177.1
  %545 = bitcast i64* %539 to <2 x i64>*
  store <2 x i64> %543, <2 x i64>* %545, align 8
  %546 = bitcast i64* %541 to <2 x i64>*
  store <2 x i64> %544, <2 x i64>* %546, align 8
  %index.next169.1 = add i64 %index168, 8
  %niter330.nsub.1 = add i64 %niter330, -2
  %niter330.ncmp.1 = icmp eq i64 %niter330.nsub.1, 0
  br i1 %niter330.ncmp.1, label %middle.block161.unr-lcssa, label %vector.body160, !llvm.loop !69

middle.block161.unr-lcssa:                        ; preds = %vector.body160, %vector.ph165
  %index168.unr = phi i64 [ 0, %vector.ph165 ], [ %index.next169.1, %vector.body160 ]
  br i1 %lcmp.mod328, label %middle.block161, label %vector.body160.epil

vector.body160.epil:                              ; preds = %middle.block161.unr-lcssa
  %547 = add i64 %__v67_clen.i33, %index168.unr
  %548 = getelementptr i64, i64* %__v9_TW, i64 %547
  %549 = bitcast i64* %548 to <2 x i64>*
  %wide.load176.epil = load <2 x i64>, <2 x i64>* %549, align 8
  %550 = getelementptr i64, i64* %548, i64 2
  %551 = bitcast i64* %550 to <2 x i64>*
  %wide.load177.epil = load <2 x i64>, <2 x i64>* %551, align 8
  %552 = select i1 %__m3, <2 x i64> zeroinitializer, <2 x i64> %wide.load176.epil
  %553 = select i1 %__m3, <2 x i64> zeroinitializer, <2 x i64> %wide.load177.epil
  %554 = bitcast i64* %548 to <2 x i64>*
  store <2 x i64> %552, <2 x i64>* %554, align 8
  %555 = bitcast i64* %550 to <2 x i64>*
  store <2 x i64> %553, <2 x i64>* %555, align 8
  br label %middle.block161

middle.block161:                                  ; preds = %middle.block161.unr-lcssa, %vector.body160.epil
  br i1 %cmp.n171, label %_mpi_copy.exit39, label %scalar.ph162.preheader

scalar.ph162.preheader:                           ; preds = %middle.block161, %.lr.ph.i37
  %__v69_i1.i38.ph = phi i64 [ %__v67_clen.i33, %.lr.ph.i37 ], [ %ind.end, %middle.block161 ]
  br label %scalar.ph162

scalar.ph162:                                     ; preds = %scalar.ph162.preheader, %scalar.ph162
  %__v69_i1.i38 = phi i64 [ %559, %scalar.ph162 ], [ %__v69_i1.i38.ph, %scalar.ph162.preheader ]
  %556 = getelementptr i64, i64* %__v9_TW, i64 %__v69_i1.i38
  %557 = load i64, i64* %556, align 8
  %558 = select i1 %__m3, i64 0, i64 %557
  store i64 %558, i64* %556, align 8
  %559 = add i64 %__v69_i1.i38, 1
  %560 = icmp ult i64 %559, %__v78___v9_TW_len
  br i1 %560, label %scalar.ph162, label %_mpi_copy.exit39, !llvm.loop !70

_mpi_copy.exit39:                                 ; preds = %scalar.ph162, %middle.block161, %._crit_edge4.i36
  %561 = tail call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m3, i32 0, i32 1) #0
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond44 = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond44, label %562, label %481

; <label>:562:                                    ; preds = %_mpi_copy.exit39
  tail call fastcc void @_mpi_montmul(i64* %__v1_X, i64 %__v71___v1_X_len, i64* %__v9_TW, i64 %__v78___v9_TW_len, i64* %__v5_N, i64 %__v74___v5_N_len, i64 %__v10_mm, i64* %__v7_T, i64 %__v76___v7_T_len)
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1
  %exitcond47 = icmp eq i64 %indvars.iv.next46, 17
  br i1 %exitcond47, label %479, label %474
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
!10 = distinct !{!10, !1}
!11 = distinct !{!11, !8}
!12 = !{!13}
!13 = distinct !{!13, !14}
!14 = distinct !{!14, !"LVerDomain"}
!15 = !{!16}
!16 = distinct !{!16, !14}
!17 = distinct !{!17, !8}
!18 = distinct !{!18, !1}
!19 = distinct !{!19, !8}
!20 = !{!21}
!21 = distinct !{!21, !22}
!22 = distinct !{!22, !"LVerDomain"}
!23 = !{!24}
!24 = distinct !{!24, !22}
!25 = distinct !{!25, !8}
!26 = distinct !{!26, !1}
!27 = distinct !{!27, !8}
!28 = !{!29}
!29 = distinct !{!29, !30}
!30 = distinct !{!30, !"LVerDomain"}
!31 = !{!32}
!32 = distinct !{!32, !30}
!33 = distinct !{!33, !8}
!34 = distinct !{!34, !1}
!35 = distinct !{!35, !8}
!36 = !{!37}
!37 = distinct !{!37, !38}
!38 = distinct !{!38, !"LVerDomain"}
!39 = !{!40}
!40 = distinct !{!40, !38}
!41 = distinct !{!41, !8}
!42 = distinct !{!42, !1}
!43 = distinct !{!43, !8}
!44 = !{!45}
!45 = distinct !{!45, !46}
!46 = distinct !{!46, !"LVerDomain"}
!47 = !{!48}
!48 = distinct !{!48, !46}
!49 = distinct !{!49, !8}
!50 = distinct !{!50, !8}
!51 = distinct !{!51, !8}
!52 = distinct !{!52, !53, !8}
!53 = !{!"llvm.loop.unroll.runtime.disable"}
!54 = !{!55}
!55 = distinct !{!55, !56}
!56 = distinct !{!56, !"LVerDomain"}
!57 = !{!58}
!58 = distinct !{!58, !56}
!59 = distinct !{!59, !8}
!60 = distinct !{!60, !1}
!61 = distinct !{!61, !8}
!62 = !{!63}
!63 = distinct !{!63, !64}
!64 = distinct !{!64, !"LVerDomain"}
!65 = !{!66}
!66 = distinct !{!66, !64}
!67 = distinct !{!67, !8}
!68 = distinct !{!68, !8}
!69 = distinct !{!69, !8}
!70 = distinct !{!70, !53, !8}
