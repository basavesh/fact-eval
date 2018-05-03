; ModuleID = 'Module'
source_filename = "Module"

%poly1305_state_internal_t = type { [3 x i64], [3 x i64], [2 x i64], i64, [16 x i8], i8 }

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i32, i1) #0

; Function Attrs: noinline nounwind
define internal fastcc void @_memzero(i8* nocapture, i32) unnamed_addr #1 {
entry:
  tail call void @llvm.memset.p0i8.i32(i8* %0, i8 0, i32 %1, i32 1, i1 false)
  ret void
}

; Function Attrs: noinline nounwind
define internal fastcc void @_memzero64(i64* nocapture, i32) unnamed_addr #1 {
entry:
  %_secret_cast = bitcast i64* %0 to i8*
  tail call void @llvm.memset.p0i8.i32(i8* %_secret_cast, i8 0, i32 %1, i32 8, i1 false)
  ret void
}

; Function Attrs: norecurse nounwind
define internal fastcc void @_poly1305_blocks(%poly1305_state_internal_t* nocapture %state, i8* nocapture readonly %_secret_arrarg1, i32 %_public___m_len2) unnamed_addr #2 {
entry:
  %_secret_structgep = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i64 0, i32 5
  %_secret_lval = load i8, i8* %_secret_structgep, align 1
  %_secret_neqtmp = icmp ne i8 %_secret_lval, 0
  %_secret_lnottmp = xor i1 %_secret_neqtmp, true
  %_secret_select.i = select i1 %_secret_lnottmp, i64 1099511627776, i64 0
  %_secret_ptr19 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i64 0, i32 0, i64 1
  %_secret_lval20 = load i64, i64* %_secret_ptr19, align 4
  %_secret_ptr22 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i64 0, i32 0, i64 2
  %_secret_lval23 = load i64, i64* %_secret_ptr22, align 4
  %_secret_ptr25 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i64 0, i32 1, i64 0
  %_secret_lval26 = load i64, i64* %_secret_ptr25, align 4
  %_secret_ptr28 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i64 0, i32 1, i64 1
  %_secret_lval29 = load i64, i64* %_secret_ptr28, align 4
  %_secret_ptr31 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i64 0, i32 1, i64 2
  %_secret_lval32 = load i64, i64* %_secret_ptr31, align 4
  %_public_lrshift = lshr i32 %_public___m_len2, 4
  %_public_ulttmp177 = icmp eq i32 %_public_lrshift, 0
  br i1 %_public_ulttmp177, label %loop_end, label %loop_body.lr.ph

loop_body.lr.ph:                                  ; preds = %entry
  %_secret_multmp35 = mul i64 %_secret_lval23, 20
  %_secret_multmp = mul i64 %_secret_lval20, 20
  %_secret_ptr = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %state, i64 0, i32 0, i64 0
  %_secret_lval17 = load i64, i64* %_secret_ptr, align 4
  %_secret_rhssext = zext i64 %_secret_lval17 to i128
  %_secret_rhssext80 = zext i64 %_secret_multmp35 to i128
  %_secret_rhssext86 = zext i64 %_secret_multmp to i128
  %_secret_rhssext92 = zext i64 %_secret_lval20 to i128
  %_secret_rhssext109 = zext i64 %_secret_lval23 to i128
  br label %loop_body

loop_body:                                        ; preds = %loop_body.lr.ph, %loop_body
  %_public___v14_bindex.0181 = phi i32 [ 0, %loop_body.lr.ph ], [ %_public_addtmp167, %loop_body ]
  %_secret___v10_h2.0180 = phi i64 [ %_secret_lval32, %loop_body.lr.ph ], [ %_secret_truncbinop153, %loop_body ]
  %_secret___v9_h1.0179 = phi i64 [ %_secret_lval29, %loop_body.lr.ph ], [ %_secret_addtmp165, %loop_body ]
  %_secret___v8_h0.0178 = phi i64 [ %_secret_lval26, %loop_body.lr.ph ], [ %_secret_andtmp162, %loop_body ]
  %_public_multmp40 = shl i32 %_public___v14_bindex.0181, 4
  %_public_ = sext i32 %_public_multmp40 to i64
  %_secret_source_gep42 = getelementptr inbounds i8, i8* %_secret_arrarg1, i64 %_public_
  %_secret_cast.i184 = bitcast i8* %_secret_source_gep42 to i64*
  %_secret_ld.i185 = load i64, i64* %_secret_cast.i184, align 4
  %_public_addtmp51 = or i32 %_public_multmp40, 8
  %_public_186 = sext i32 %_public_addtmp51 to i64
  %_secret_source_gep53 = getelementptr inbounds i8, i8* %_secret_arrarg1, i64 %_public_186
  %_secret_cast.i = bitcast i8* %_secret_source_gep53 to i64*
  %_secret_ld.i = load i64, i64* %_secret_cast.i, align 4
  %_secret_andtmp = and i64 %_secret_ld.i185, 17592186044415
  %_secret_addtmp = add i64 %_secret_andtmp, %_secret___v8_h0.0178
  %_secret_lrshift = lshr i64 %_secret_ld.i185, 44
  %_secret_lshift = shl i64 %_secret_ld.i, 20
  %_secret_lshift.masked = and i64 %_secret_lshift, 17592184995840
  %_secret_andtmp64 = or i64 %_secret_lshift.masked, %_secret_lrshift
  %_secret_addtmp65 = add i64 %_secret_andtmp64, %_secret___v9_h1.0179
  %_secret_lrshift68 = lshr i64 %_secret_ld.i, 24
  %_secret_ortmp72 = or i64 %_secret_lrshift68, %_secret_select.i
  %_secret_addtmp73 = add i64 %_secret_ortmp72, %_secret___v10_h2.0180
  %_secret_ucast = zext i64 %_secret_addtmp to i128
  %_secret_multmp76 = mul nuw i128 %_secret_ucast, %_secret_rhssext
  %_secret_ucast78 = zext i64 %_secret_addtmp65 to i128
  %_secret_multmp81 = mul nuw i128 %_secret_ucast78, %_secret_rhssext80
  %_secret_ucast84 = zext i64 %_secret_addtmp73 to i128
  %_secret_multmp87 = mul nuw i128 %_secret_ucast84, %_secret_rhssext86
  %_secret_addtmp82 = add i128 %_secret_multmp87, %_secret_multmp76
  %_secret_addtmp88 = add i128 %_secret_addtmp82, %_secret_multmp81
  %_secret_multmp93 = mul nuw i128 %_secret_ucast, %_secret_rhssext92
  %_secret_multmp98 = mul nuw i128 %_secret_ucast78, %_secret_rhssext
  %_secret_multmp104 = mul nuw i128 %_secret_ucast84, %_secret_rhssext80
  %_secret_multmp110 = mul nuw i128 %_secret_ucast, %_secret_rhssext109
  %_secret_multmp115 = mul nuw i128 %_secret_ucast78, %_secret_rhssext92
  %_secret_multmp121 = mul nuw i128 %_secret_ucast84, %_secret_rhssext
  %_secret_lrshift124 = lshr i128 %_secret_addtmp88, 44
  %_secret_ = trunc i128 %_secret_addtmp88 to i64
  %_secret_truncbinop = and i64 %_secret_, 17592186044415
  %_secret_rhssext132 = and i128 %_secret_lrshift124, 18446744073709551615
  %_secret_addtmp99 = add i128 %_secret_multmp104, %_secret_multmp93
  %_secret_addtmp105 = add i128 %_secret_addtmp99, %_secret_multmp98
  %_secret_addtmp133 = add i128 %_secret_addtmp105, %_secret_rhssext132
  %_secret_lrshift135 = lshr i128 %_secret_addtmp133, 44
  %_secret_187 = trunc i128 %_secret_addtmp133 to i64
  %_secret_truncbinop141 = and i64 %_secret_187, 17592186044415
  %_secret_rhssext144 = and i128 %_secret_lrshift135, 18446744073709551615
  %_secret_addtmp116 = add i128 %_secret_multmp121, %_secret_multmp110
  %_secret_addtmp122 = add i128 %_secret_addtmp116, %_secret_multmp115
  %_secret_addtmp145 = add i128 %_secret_addtmp122, %_secret_rhssext144
  %_secret_lrshift147 = lshr i128 %_secret_addtmp145, 42
  %_secret_ucast148 = trunc i128 %_secret_lrshift147 to i64
  %_secret_188 = trunc i128 %_secret_addtmp145 to i64
  %_secret_truncbinop153 = and i64 %_secret_188, 4398046511103
  %_secret_multmp156 = mul i64 %_secret_ucast148, 5
  %_secret_addtmp157 = add i64 %_secret_multmp156, %_secret_truncbinop
  %_secret_lrshift159 = lshr i64 %_secret_addtmp157, 44
  %_secret_andtmp162 = and i64 %_secret_addtmp157, 17592186044415
  %_secret_addtmp165 = add nuw nsw i64 %_secret_lrshift159, %_secret_truncbinop141
  %_public_addtmp167 = add nuw nsw i32 %_public___v14_bindex.0181, 1
  %_public_ulttmp = icmp ult i32 %_public_addtmp167, %_public_lrshift
  br i1 %_public_ulttmp, label %loop_body, label %loop_end

loop_end:                                         ; preds = %loop_body, %entry
  %_secret___v8_h0.0.lcssa = phi i64 [ %_secret_lval26, %entry ], [ %_secret_andtmp162, %loop_body ]
  %_secret___v9_h1.0.lcssa = phi i64 [ %_secret_lval29, %entry ], [ %_secret_addtmp165, %loop_body ]
  %_secret___v10_h2.0.lcssa = phi i64 [ %_secret_lval32, %entry ], [ %_secret_truncbinop153, %loop_body ]
  store i64 %_secret___v8_h0.0.lcssa, i64* %_secret_ptr25, align 4
  store i64 %_secret___v9_h1.0.lcssa, i64* %_secret_ptr28, align 4
  store i64 %_secret___v10_h2.0.lcssa, i64* %_secret_ptr31, align 4
  ret void
}

; Function Attrs: nounwind
define internal fastcc void @_crypto_onetimeauth_poly1305(i8* nocapture %_secret_arrarg1, i8* nocapture readonly %_secret_arrarg3, i32 %_public___m_len4, i8* nocapture readonly %_secret_arrarg6) unnamed_addr #3 {
entry:
  %_public___v45_state = alloca %poly1305_state_internal_t, align 8
  %_public_sourcecasted = bitcast %poly1305_state_internal_t* %_public___v45_state to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull %_public_sourcecasted, i8 0, i64 92, i32 8, i1 false)
  %_secret_arrtoptr = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %_public___v45_state, i64 0, i32 0, i64 0
  call fastcc void @_memzero64(i64* %_secret_arrtoptr, i32 3) #3
  %_secret_arrtoptr10 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %_public___v45_state, i64 0, i32 1, i64 0
  call fastcc void @_memzero64(i64* %_secret_arrtoptr10, i32 3) #3
  %_secret_arrtoptr13 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %_public___v45_state, i64 0, i32 2, i64 0
  call fastcc void @_memzero64(i64* %_secret_arrtoptr13, i32 2) #3
  %_public_structgep = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %_public___v45_state, i64 0, i32 3
  store i64 0, i64* %_public_structgep, align 8
  %_secret_arrtoptr16 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %_public___v45_state, i64 0, i32 4, i64 0
  call fastcc void @_memzero(i8* %_secret_arrtoptr16, i32 16) #3
  %_secret_structgep17 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %_public___v45_state, i64 0, i32 5
  store i8 0, i8* %_secret_structgep17, align 8
  %_secret_cast.i.i = bitcast i8* %_secret_arrarg6 to i64*
  %_secret_ld.i.i = load i64, i64* %_secret_cast.i.i, align 4
  %_secret_source_gep9.i = getelementptr inbounds i8, i8* %_secret_arrarg6, i64 8
  %_secret_cast.i54.i = bitcast i8* %_secret_source_gep9.i to i64*
  %_secret_ld.i55.i = load i64, i64* %_secret_cast.i54.i, align 4
  %_secret_ptr.i = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %_public___v45_state, i64 0, i32 0, i64 0
  %_secret_andtmp.i = and i64 %_secret_ld.i.i, 17575274610687
  store i64 %_secret_andtmp.i, i64* %_secret_ptr.i, align 4
  %_secret_ptr14.i = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %_public___v45_state, i64 0, i32 0, i64 1
  %_secret_lrshift.i = lshr i64 %_secret_ld.i.i, 44
  %_secret_lshift.i = shl i64 %_secret_ld.i55.i, 20
  %_secret_ortmp.i = or i64 %_secret_lshift.i, %_secret_lrshift.i
  %_secret_andtmp17.i = and i64 %_secret_ortmp.i, 17592181915647
  store i64 %_secret_andtmp17.i, i64* %_secret_ptr14.i, align 4
  %_secret_ptr19.i = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %_public___v45_state, i64 0, i32 0, i64 2
  %_secret_lrshift21.i = lshr i64 %_secret_ld.i55.i, 24
  %_secret_andtmp22.i = and i64 %_secret_lrshift21.i, 68719475727
  store i64 %_secret_andtmp22.i, i64* %_secret_ptr19.i, align 4
  %_secret_ptr24.i = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %_public___v45_state, i64 0, i32 1, i64 0
  %_secret_ptr30.i = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %_public___v45_state, i64 0, i32 2, i64 0
  %_secret_source_gep35.i = getelementptr inbounds i8, i8* %_secret_arrarg6, i64 16
  %_secret_20 = bitcast i64* %_secret_ptr24.i to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull %_secret_20, i8 0, i64 24, i32 4, i1 false) #3
  %_secret_cast.i52.i = bitcast i8* %_secret_source_gep35.i to i64*
  %_secret_ld.i53.i = load i64, i64* %_secret_cast.i52.i, align 4
  store i64 %_secret_ld.i53.i, i64* %_secret_ptr30.i, align 4
  %_secret_ptr40.i = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %_public___v45_state, i64 0, i32 2, i64 1
  %_secret_source_gep45.i = getelementptr inbounds i8, i8* %_secret_arrarg6, i64 24
  %_secret_cast.i50.i = bitcast i8* %_secret_source_gep45.i to i64*
  %_secret_ld.i51.i = load i64, i64* %_secret_cast.i50.i, align 4
  store i64 %_secret_ld.i51.i, i64* %_secret_ptr40.i, align 4
  %_public_structgep.i = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %_public___v45_state, i64 0, i32 3
  store i64 0, i64* %_public_structgep.i, align 4
  %_secret_structgep49.i = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %_public___v45_state, i64 0, i32 5
  store i8 0, i8* %_secret_structgep49.i, align 1
  %_public_structgep.i8 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %_public___v45_state, i64 0, i32 3
  %_public_lval.i9 = load i64, i64* %_public_structgep.i8, align 4
  %_public_neqtmp.i10 = icmp eq i64 %_public_lval.i9, 0
  br i1 %_public_neqtmp.i10, label %entry.branchmerge38_crit_edge.i, label %thenbranch.i12

entry.branchmerge38_crit_edge.i:                  ; preds = %entry
  %_public_.pre.i11 = zext i32 %_public___m_len4 to i64
  br label %branchmerge38.i

thenbranch.i12:                                   ; preds = %entry
  %_public_subtmp.i = sub i64 16, %_public_lval.i9
  %_public_rhssext.i = zext i32 %_public___m_len4 to i64
  %_public_ugttmp.i = icmp ugt i64 %_public_subtmp.i, %_public_rhssext.i
  %_public___v24_want.0.i = select i1 %_public_ugttmp.i, i64 %_public_rhssext.i, i64 %_public_subtmp.i
  %_public_ulttmp98.i = icmp eq i64 %_public___v24_want.0.i, 0
  br i1 %_public_ulttmp98.i, label %loop_end.i16, label %loop_body.preheader.i

loop_body.preheader.i:                            ; preds = %thenbranch.i12
  br label %loop_body.i

loop_body.i:                                      ; preds = %loop_body.i, %loop_body.preheader.i
  %_public_lval13101.i = phi i64 [ %_public_lval13.i, %loop_body.i ], [ %_public_lval.i9, %loop_body.preheader.i ]
  %_public___v25_i.0100.i = phi i64 [ %_public_addtmp18.i, %loop_body.i ], [ 0, %loop_body.preheader.i ]
  %_public_addtmp.i = add i64 %_public_lval13101.i, %_public___v25_i.0100.i
  %_secret_ptr.i13 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %_public___v45_state, i64 0, i32 4, i64 %_public_addtmp.i
  %_secret_ptr16.i14 = getelementptr inbounds i8, i8* %_secret_arrarg3, i64 %_public___v25_i.0100.i
  %_secret_lval.i15 = load i8, i8* %_secret_ptr16.i14, align 1
  store i8 %_secret_lval.i15, i8* %_secret_ptr.i13, align 1
  %_public_addtmp18.i = add nuw nsw i64 %_public___v25_i.0100.i, 1
  %_public_ulttmp.i = icmp ult i64 %_public_addtmp18.i, %_public___v24_want.0.i
  %_public_lval13.i = load i64, i64* %_public_structgep.i8, align 4
  br i1 %_public_ulttmp.i, label %loop_body.i, label %loop_end.i16

loop_end.i16:                                     ; preds = %loop_body.i, %thenbranch.i12
  %_public_lval13.lcssa.i = phi i64 [ %_public_lval.i9, %thenbranch.i12 ], [ %_public_lval13.i, %loop_body.i ]
  %_public_addtmp26.i = add i64 %_public_lval13.lcssa.i, %_public___v24_want.0.i
  store i64 %_public_addtmp26.i, i64* %_public_structgep.i8, align 4
  %_public_ulttmp29.i = icmp ult i64 %_public_addtmp26.i, 16
  br i1 %_public_ulttmp29.i, label %_poly1305_update.exit, label %branchmerge33.i

branchmerge33.i:                                  ; preds = %loop_end.i16
  %_secret_arrtoptr.i17 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %_public___v45_state, i64 0, i32 4, i64 0
  call fastcc void @_poly1305_blocks(%poly1305_state_internal_t* nonnull %_public___v45_state, i8* nonnull %_secret_arrtoptr.i17, i32 16) #3
  store i64 0, i64* %_public_structgep.i8, align 4
  br label %branchmerge38.i

branchmerge38.i:                                  ; preds = %branchmerge33.i, %entry.branchmerge38_crit_edge.i
  %_public_lhssext.pre-phi.i = phi i64 [ %_public_.pre.i11, %entry.branchmerge38_crit_edge.i ], [ %_public_rhssext.i, %branchmerge33.i ]
  %_public___v23_mindex.0.i = phi i64 [ 0, %entry.branchmerge38_crit_edge.i ], [ %_public___v24_want.0.i, %branchmerge33.i ]
  %_public_subtmp41.i = sub i64 %_public_lhssext.pre-phi.i, %_public___v23_mindex.0.i
  %_public_ugtetmp.i = icmp ugt i64 %_public_subtmp41.i, 15
  br i1 %_public_ugtetmp.i, label %thenbranch43.i, label %branchmerge56.i

thenbranch43.i:                                   ; preds = %branchmerge38.i
  %_public_18 = trunc i64 %_public___v23_mindex.0.i to i32
  %_public_19 = sub i32 %_public___m_len4, %_public_18
  %_public_truncbinop.i = and i32 %_public_19, -16
  %_public_zexttmp48.i = zext i32 %_public_truncbinop.i to i64
  %_secret_source_gep.i = getelementptr inbounds i8, i8* %_secret_arrarg3, i64 %_public___v23_mindex.0.i
  call fastcc void @_poly1305_blocks(%poly1305_state_internal_t* nonnull %_public___v45_state, i8* %_secret_source_gep.i, i32 %_public_truncbinop.i) #3
  %_public_addtmp54.i = add i64 %_public___v23_mindex.0.i, %_public_zexttmp48.i
  br label %branchmerge56.i

branchmerge56.i:                                  ; preds = %thenbranch43.i, %branchmerge38.i
  %_public___v23_mindex.1.i = phi i64 [ %_public_addtmp54.i, %thenbranch43.i ], [ %_public___v23_mindex.0.i, %branchmerge38.i ]
  %_public_ulttmp60.i = icmp ugt i64 %_public_lhssext.pre-phi.i, %_public___v23_mindex.1.i
  br i1 %_public_ulttmp60.i, label %thenbranch62.i, label %_poly1305_update.exit

thenbranch62.i:                                   ; preds = %branchmerge56.i
  %_public_subtmp66.i = sub i64 %_public_lhssext.pre-phi.i, %_public___v23_mindex.1.i
  %_public_ulttmp7294.i = icmp eq i64 %_public_subtmp66.i, 0
  %_public_lval7595.i = load i64, i64* %_public_structgep.i8, align 4
  br i1 %_public_ulttmp7294.i, label %loop_end69.i, label %loop_body68.preheader.i

loop_body68.preheader.i:                          ; preds = %thenbranch62.i
  br label %loop_body68.i

loop_body68.i:                                    ; preds = %loop_body68.i, %loop_body68.preheader.i
  %_public_lval7597.i = phi i64 [ %_public_lval75.i, %loop_body68.i ], [ %_public_lval7595.i, %loop_body68.preheader.i ]
  %_public___v31_i.096.i = phi i64 [ %_public_addtmp86.i, %loop_body68.i ], [ 0, %loop_body68.preheader.i ]
  %_public_addtmp77.i = add i64 %_public_lval7597.i, %_public___v31_i.096.i
  %_secret_ptr78.i = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %_public___v45_state, i64 0, i32 4, i64 %_public_addtmp77.i
  %_public_addtmp81.i = add i64 %_public___v31_i.096.i, %_public___v23_mindex.1.i
  %_secret_ptr83.i = getelementptr inbounds i8, i8* %_secret_arrarg3, i64 %_public_addtmp81.i
  %_secret_lval84.i = load i8, i8* %_secret_ptr83.i, align 1
  store i8 %_secret_lval84.i, i8* %_secret_ptr78.i, align 1
  %_public_addtmp86.i = add nuw i64 %_public___v31_i.096.i, 1
  %_public_ulttmp72.i = icmp ult i64 %_public_addtmp86.i, %_public_subtmp66.i
  %_public_lval75.i = load i64, i64* %_public_structgep.i8, align 4
  br i1 %_public_ulttmp72.i, label %loop_body68.i, label %loop_end69.i

loop_end69.i:                                     ; preds = %loop_body68.i, %thenbranch62.i
  %_public_lval75.lcssa.i = phi i64 [ %_public_lval7595.i, %thenbranch62.i ], [ %_public_lval75.i, %loop_body68.i ]
  %_public_addtmp91.i = add i64 %_public_lval75.lcssa.i, %_public_subtmp66.i
  store i64 %_public_addtmp91.i, i64* %_public_structgep.i8, align 4
  br label %_poly1305_update.exit

_poly1305_update.exit:                            ; preds = %loop_end.i16, %branchmerge56.i, %loop_end69.i
  %_public_structgep.i1 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %_public___v45_state, i64 0, i32 3
  %_public_lval.i = load i64, i64* %_public_structgep.i1, align 4
  %_public_neqtmp.i = icmp eq i64 %_public_lval.i, 0
  br i1 %_public_neqtmp.i, label %entry.branchmerge_crit_edge.i, label %thenbranch.i

entry.branchmerge_crit_edge.i:                    ; preds = %_poly1305_update.exit
  %_public_.pre.i = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %_public___v45_state, i64 0, i32 4, i64 0
  %_public_.pre195.i = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %_public___v45_state, i64 0, i32 5
  br label %_poly1305_finish.exit

thenbranch.i:                                     ; preds = %_poly1305_update.exit
  %_secret_ptr.i2 = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %_public___v45_state, i64 0, i32 4, i64 %_public_lval.i
  store i8 1, i8* %_secret_ptr.i2, align 1
  %_public___v33_i.0191.i = add i64 %_public_lval.i, 1
  %_public_ulttmp192.i = icmp ult i64 %_public___v33_i.0191.i, 16
  br i1 %_public_ulttmp192.i, label %loop_body.lr.ph.i, label %loop_end.i

loop_body.lr.ph.i:                                ; preds = %thenbranch.i
  %_public_scevgep.i = getelementptr %poly1305_state_internal_t, %poly1305_state_internal_t* %_public___v45_state, i64 0, i32 0, i64 9
  %_public_scevgep194.i = bitcast i64* %_public_scevgep.i to i8*
  %_public_uglygep.i = getelementptr i8, i8* %_public_scevgep194.i, i64 %_public___v33_i.0191.i
  %_public_ = sub i64 15, %_public_lval.i
  call void @llvm.memset.p0i8.i64(i8* %_public_uglygep.i, i8 0, i64 %_public_, i32 1, i1 false) #3
  br label %loop_end.i

loop_end.i:                                       ; preds = %loop_body.lr.ph.i, %thenbranch.i
  %_secret_structgep12.i = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %_public___v45_state, i64 0, i32 5
  store i8 1, i8* %_secret_structgep12.i, align 1
  %_secret_arrtoptr.i = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %_public___v45_state, i64 0, i32 4, i64 0
  call fastcc void @_poly1305_blocks(%poly1305_state_internal_t* nonnull %_public___v45_state, i8* nonnull %_secret_arrtoptr.i, i32 16) #3
  br label %_poly1305_finish.exit

_poly1305_finish.exit:                            ; preds = %entry.branchmerge_crit_edge.i, %loop_end.i
  %_secret_structgep190.pre-phi.i = phi i8* [ %_public_.pre195.i, %entry.branchmerge_crit_edge.i ], [ %_secret_structgep12.i, %loop_end.i ]
  %_secret_arrtoptr189.pre-phi.i = phi i8* [ %_public_.pre.i, %entry.branchmerge_crit_edge.i ], [ %_secret_arrtoptr.i, %loop_end.i ]
  %_secret_ptr16.i = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %_public___v45_state, i64 0, i32 1, i64 0
  %_secret_lval.i = load i64, i64* %_secret_ptr16.i, align 4
  %_secret_ptr18.i = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %_public___v45_state, i64 0, i32 1, i64 1
  %_secret_lval19.i = load i64, i64* %_secret_ptr18.i, align 4
  %_secret_ptr21.i = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %_public___v45_state, i64 0, i32 1, i64 2
  %_secret_lval22.i = load i64, i64* %_secret_ptr21.i, align 4
  %_secret_lrshift.i3 = lshr i64 %_secret_lval19.i, 44
  %_secret_andtmp.i4 = and i64 %_secret_lval19.i, 17592186044415
  %_secret_addtmp.i = add i64 %_secret_lval22.i, %_secret_lrshift.i3
  %_secret_lrshift29.i = lshr i64 %_secret_addtmp.i, 42
  %_secret_andtmp32.i = and i64 %_secret_addtmp.i, 4398046511103
  %_secret_multmp.i = mul nuw nsw i64 %_secret_lrshift29.i, 5
  %_secret_addtmp35.i = add i64 %_secret_multmp.i, %_secret_lval.i
  %_secret_lrshift37.i = lshr i64 %_secret_addtmp35.i, 44
  %_secret_andtmp40.i = and i64 %_secret_addtmp35.i, 17592186044415
  %_secret_addtmp43.i = add nuw nsw i64 %_secret_lrshift37.i, %_secret_andtmp.i4
  %_secret_lrshift45.i = lshr i64 %_secret_addtmp43.i, 44
  %_secret_andtmp48.i = and i64 %_secret_addtmp43.i, 17592186044415
  %_secret_addtmp51.i = add nuw nsw i64 %_secret_lrshift45.i, %_secret_andtmp32.i
  %_secret_lrshift53.i = lshr i64 %_secret_addtmp51.i, 42
  %_secret_ = sub nsw i64 0, %_secret_lrshift53.i
  %_secret_multmp59.i = and i64 %_secret_, 5
  %_secret_addtmp60.i = add nuw nsw i64 %_secret_multmp59.i, %_secret_andtmp40.i
  %_secret_lrshift62.i = lshr i64 %_secret_addtmp60.i, 44
  %_secret_andtmp65.i = and i64 %_secret_addtmp60.i, 17592186044415
  %_secret_addtmp68.i = add nuw nsw i64 %_secret_lrshift62.i, %_secret_andtmp48.i
  %_secret_addtmp70.i = add nuw nsw i64 %_secret_andtmp65.i, 5
  %_secret_lrshift72.i = lshr i64 %_secret_addtmp70.i, 44
  %_secret_addtmp78.i = add nuw nsw i64 %_secret_lrshift72.i, %_secret_addtmp68.i
  %_secret_lrshift80.i = lshr i64 %_secret_addtmp78.i, 44
  %_secret_addtmp86.i = or i64 %_secret_addtmp51.i, -4398046511104
  %_secret_subtmp.i = add nsw i64 %_secret_addtmp86.i, %_secret_lrshift80.i
  %_secret_lrshift88.i = lshr i64 %_secret_subtmp.i, 63
  %_secret_subtmp89.i = add nsw i64 %_secret_lrshift88.i, -1
  %_secret_andtmp75.i = and i64 %_secret_subtmp89.i, 17592186044415
  %_secret_andtmp92.i = and i64 %_secret_andtmp75.i, %_secret_addtmp70.i
  %_secret_andtmp95.i = and i64 %_secret_andtmp75.i, %_secret_addtmp78.i
  %_secret_andtmp98.i = and i64 %_secret_subtmp89.i, %_secret_subtmp.i
  %_secret_bnottmp.i = ashr i64 %_secret_subtmp.i, 63
  %_secret_andtmp102.i = and i64 %_secret_bnottmp.i, %_secret_andtmp65.i
  %_secret_ortmp.i5 = or i64 %_secret_andtmp102.i, %_secret_andtmp92.i
  %_secret_andtmp106.i = and i64 %_secret_bnottmp.i, %_secret_addtmp68.i
  %_secret_ortmp108.i = or i64 %_secret_andtmp106.i, %_secret_andtmp95.i
  %_secret_andtmp111.i = and i64 %_secret_bnottmp.i, %_secret_addtmp51.i
  %_secret_ortmp113.i = or i64 %_secret_andtmp98.i, %_secret_andtmp111.i
  %_secret_ptr115.i = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %_public___v45_state, i64 0, i32 2, i64 0
  %_secret_lval116.i = load i64, i64* %_secret_ptr115.i, align 4
  %_secret_ptr118.i = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %_public___v45_state, i64 0, i32 2, i64 1
  %_secret_lval119.i = load i64, i64* %_secret_ptr118.i, align 4
  %_secret_andtmp123.i = and i64 %_secret_lval116.i, 17592186044415
  %_secret_addtmp124.i = add nuw nsw i64 %_secret_ortmp.i5, %_secret_andtmp123.i
  %_secret_lrshift126.i = lshr i64 %_secret_addtmp124.i, 44
  %_secret_andtmp129.i = and i64 %_secret_addtmp124.i, 17592186044415
  %_secret_lrshift132.i = lshr i64 %_secret_lval116.i, 44
  %_secret_lshift.i6 = shl i64 %_secret_lval119.i, 20
  %_secret_lshift.masked.i = and i64 %_secret_lshift.i6, 17592184995840
  %_secret_andtmp136.i = or i64 %_secret_lshift.masked.i, %_secret_lrshift132.i
  %_secret_addtmp138.i = add nuw nsw i64 %_secret_ortmp108.i, %_secret_andtmp136.i
  %_secret_addtmp139.i = add nuw nsw i64 %_secret_addtmp138.i, %_secret_lrshift126.i
  %_secret_lrshift141.i = lshr i64 %_secret_addtmp139.i, 44
  %_secret_lrshift147.i = lshr i64 %_secret_lval119.i, 24
  %_secret_addtmp151.i = add nsw i64 %_secret_ortmp113.i, %_secret_lrshift147.i
  %_secret_addtmp152.i = add nsw i64 %_secret_addtmp151.i, %_secret_lrshift141.i
  %_secret_lshift158.i = shl i64 %_secret_addtmp139.i, 44
  %_secret_ortmp159.i = or i64 %_secret_lshift158.i, %_secret_andtmp129.i
  %_secret_andtmp144.i = lshr i64 %_secret_addtmp139.i, 20
  %_secret_lrshift161.i = and i64 %_secret_andtmp144.i, 16777215
  %_secret_lshift163.i = shl i64 %_secret_addtmp152.i, 24
  %_secret_ortmp164.i = or i64 %_secret_lshift163.i, %_secret_lrshift161.i
  %_secret_cast.i.i7 = bitcast i8* %_secret_arrarg1 to i64*
  store i64 %_secret_ortmp159.i, i64* %_secret_cast.i.i7, align 4
  %_secret_source_gep173.i = getelementptr inbounds i8, i8* %_secret_arrarg1, i64 8
  %_secret_cast.i196.i = bitcast i8* %_secret_source_gep173.i to i64*
  store i64 %_secret_ortmp164.i, i64* %_secret_cast.i196.i, align 4
  %_secret_arrtoptr179.i = getelementptr inbounds %poly1305_state_internal_t, %poly1305_state_internal_t* %_public___v45_state, i64 0, i32 0, i64 0
  call fastcc void @_memzero64(i64* %_secret_arrtoptr179.i, i32 3) #3
  call fastcc void @_memzero64(i64* %_secret_ptr16.i, i32 3) #3
  call fastcc void @_memzero64(i64* %_secret_ptr115.i, i32 2) #3
  store i64 0, i64* %_public_structgep.i1, align 4
  call fastcc void @_memzero(i8* %_secret_arrtoptr189.pre-phi.i, i32 16) #3
  store i8 0, i8* %_secret_structgep190.pre-phi.i, align 1
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #0

; Function Attrs: noinline norecurse nounwind readnone
define internal fastcc i1 @fact.declassify.i1(i1 returned %_declassified_x) unnamed_addr #4 {
entry:
  ret i1 %_declassified_x
}

; Function Attrs: nounwind
define internal fastcc void @u0(i32* nocapture %_secret_arrarg1, i8* nocapture readonly %_secret_arrarg4, i32 %_public___m_len5, i8* nocapture %_secret_arrarg7, i32 %_public___c_len8) unnamed_addr #3 {
entry:
  %_public_ultetmp6.i = icmp ult i32 %_public___m_len5, 64
  br i1 %_public_ultetmp6.i, label %_u1.exit, label %loop_body.lr.ph.i

loop_body.lr.ph.i:                                ; preds = %entry
  %_secret_source_gep18.i = getelementptr inbounds i32, i32* %_secret_arrarg1, i64 4
  %_secret_source_gep26.i = getelementptr inbounds i32, i32* %_secret_arrarg1, i64 8
  %_secret_source_gep34.i = getelementptr inbounds i32, i32* %_secret_arrarg1, i64 12
  %_secret_ptr960.i = getelementptr inbounds i32, i32* %_secret_arrarg1, i64 13
  br label %loop_body.i

loop_body.i:                                      ; preds = %loop_end40.i, %loop_body.lr.ph.i
  %_public_addtmp8.i = phi i32 [ 64, %loop_body.lr.ph.i ], [ %_public_addtmp.i, %loop_end40.i ]
  %_public___v48_j.07.i = phi i32 [ 0, %loop_body.lr.ph.i ], [ %_public_addtmp8.i, %loop_end40.i ]
  %_secret_cast.i.i = bitcast i32* %_secret_arrarg1 to <4 x i32>*
  %_secret_ld.i.i = load <4 x i32>, <4 x i32>* %_secret_cast.i.i, align 16
  %_secret_cast.i61.i = bitcast i32* %_secret_source_gep18.i to <4 x i32>*
  %_secret_ld.i62.i = load <4 x i32>, <4 x i32>* %_secret_cast.i61.i, align 16
  %_secret_cast.i59.i = bitcast i32* %_secret_source_gep26.i to <4 x i32>*
  %_secret_ld.i60.i = load <4 x i32>, <4 x i32>* %_secret_cast.i59.i, align 16
  %_secret_cast.i57.i = bitcast i32* %_secret_source_gep34.i to <4 x i32>*
  %_secret_ld.i58.i = load <4 x i32>, <4 x i32>* %_secret_cast.i57.i, align 16
  br label %loop_body39.i

loop_body39.i:                                    ; preds = %loop_body39.i, %loop_body.i
  %_public___v54_i.05.i = phi i32 [ 0, %loop_body.i ], [ %_public_addtmp302.i, %loop_body39.i ]
  %_secret___v52_diag3.04.i = phi <4 x i32> [ %_secret_ld.i58.i, %loop_body.i ], [ %_secret_shuffletmp297.i, %loop_body39.i ]
  %_secret___v51_diag2.03.i = phi <4 x i32> [ %_secret_ld.i60.i, %loop_body.i ], [ %_secret_shuffletmp280.i, %loop_body39.i ]
  %_secret___v50_diag1.02.i = phi <4 x i32> [ %_secret_ld.i62.i, %loop_body.i ], [ %_secret_shuffletmp263.i, %loop_body39.i ]
  %_secret___v49_diag0.01.i = phi <4 x i32> [ %_secret_ld.i.i, %loop_body.i ], [ %_secret_xortmp300.i, %loop_body39.i ]
  %_secret_addtmp.i = add <4 x i32> %_secret___v50_diag1.02.i, %_secret___v49_diag0.01.i
  %_secret_lshift.i = shl <4 x i32> %_secret_addtmp.i, <i32 7, i32 7, i32 7, i32 7>
  %_secret_lrshift.i = lshr <4 x i32> %_secret_addtmp.i, <i32 25, i32 25, i32 25, i32 25>
  %_secret_xortmp.i = xor <4 x i32> %_secret___v52_diag3.04.i, %_secret_lshift.i
  %_secret_xortmp52.i = xor <4 x i32> %_secret_xortmp.i, %_secret_lrshift.i
  %_secret_addtmp55.i = add <4 x i32> %_secret_xortmp52.i, %_secret___v49_diag0.01.i
  %_secret_lshift59.i = shl <4 x i32> %_secret_addtmp55.i, <i32 9, i32 9, i32 9, i32 9>
  %_secret_lrshift61.i = lshr <4 x i32> %_secret_addtmp55.i, <i32 23, i32 23, i32 23, i32 23>
  %_secret_xortmp64.i = xor <4 x i32> %_secret_lshift59.i, %_secret___v51_diag2.03.i
  %_secret_shuffletmp.i = shufflevector <4 x i32> %_secret_xortmp52.i, <4 x i32> undef, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %_secret_xortmp68.i = xor <4 x i32> %_secret_xortmp64.i, %_secret_lrshift61.i
  %_secret_addtmp71.i = add <4 x i32> %_secret_xortmp68.i, %_secret_xortmp52.i
  %_secret_lshift75.i = shl <4 x i32> %_secret_addtmp71.i, <i32 13, i32 13, i32 13, i32 13>
  %_secret_lrshift77.i = lshr <4 x i32> %_secret_addtmp71.i, <i32 19, i32 19, i32 19, i32 19>
  %_secret_xortmp80.i = xor <4 x i32> %_secret_lshift75.i, %_secret___v50_diag1.02.i
  %_secret_shuffletmp82.i = shufflevector <4 x i32> %_secret_xortmp68.i, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %_secret_xortmp85.i = xor <4 x i32> %_secret_xortmp80.i, %_secret_lrshift77.i
  %_secret_addtmp88.i = add <4 x i32> %_secret_xortmp85.i, %_secret_xortmp68.i
  %_secret_lshift92.i = shl <4 x i32> %_secret_addtmp88.i, <i32 18, i32 18, i32 18, i32 18>
  %_secret_lrshift94.i = lshr <4 x i32> %_secret_addtmp88.i, <i32 14, i32 14, i32 14, i32 14>
  %_secret_xortmp97.i = xor <4 x i32> %_secret_lshift92.i, %_secret___v49_diag0.01.i
  %_secret_shuffletmp99.i = shufflevector <4 x i32> %_secret_xortmp85.i, <4 x i32> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %_secret_xortmp102.i = xor <4 x i32> %_secret_xortmp97.i, %_secret_lrshift94.i
  %_secret_addtmp105.i = add <4 x i32> %_secret_xortmp102.i, %_secret_shuffletmp.i
  %_secret_lshift109.i = shl <4 x i32> %_secret_addtmp105.i, <i32 7, i32 7, i32 7, i32 7>
  %_secret_lrshift111.i = lshr <4 x i32> %_secret_addtmp105.i, <i32 25, i32 25, i32 25, i32 25>
  %_secret_xortmp114.i = xor <4 x i32> %_secret_lshift109.i, %_secret_shuffletmp99.i
  %_secret_xortmp117.i = xor <4 x i32> %_secret_xortmp114.i, %_secret_lrshift111.i
  %_secret_addtmp120.i = add <4 x i32> %_secret_xortmp117.i, %_secret_xortmp102.i
  %_secret_lshift124.i = shl <4 x i32> %_secret_addtmp120.i, <i32 9, i32 9, i32 9, i32 9>
  %_secret_lrshift126.i = lshr <4 x i32> %_secret_addtmp120.i, <i32 23, i32 23, i32 23, i32 23>
  %_secret_xortmp129.i = xor <4 x i32> %_secret_lshift124.i, %_secret_shuffletmp82.i
  %_secret_shuffletmp131.i = shufflevector <4 x i32> %_secret_xortmp117.i, <4 x i32> undef, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %_secret_xortmp134.i = xor <4 x i32> %_secret_xortmp129.i, %_secret_lrshift126.i
  %_secret_addtmp137.i = add <4 x i32> %_secret_xortmp134.i, %_secret_xortmp117.i
  %_secret_lshift141.i = shl <4 x i32> %_secret_addtmp137.i, <i32 13, i32 13, i32 13, i32 13>
  %_secret_lrshift143.i = lshr <4 x i32> %_secret_addtmp137.i, <i32 19, i32 19, i32 19, i32 19>
  %_secret_xortmp146.i = xor <4 x i32> %_secret_lshift141.i, %_secret_shuffletmp.i
  %_secret_shuffletmp148.i = shufflevector <4 x i32> %_secret_xortmp134.i, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %_secret_xortmp151.i = xor <4 x i32> %_secret_xortmp146.i, %_secret_lrshift143.i
  %_secret_addtmp154.i = add <4 x i32> %_secret_xortmp151.i, %_secret_xortmp134.i
  %_secret_lshift158.i = shl <4 x i32> %_secret_addtmp154.i, <i32 18, i32 18, i32 18, i32 18>
  %_secret_lrshift160.i = lshr <4 x i32> %_secret_addtmp154.i, <i32 14, i32 14, i32 14, i32 14>
  %_secret_xortmp163.i = xor <4 x i32> %_secret_lshift158.i, %_secret_xortmp102.i
  %_secret_shuffletmp165.i = shufflevector <4 x i32> %_secret_xortmp151.i, <4 x i32> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %_secret_xortmp168.i = xor <4 x i32> %_secret_xortmp163.i, %_secret_lrshift160.i
  %_secret_addtmp171.i = add <4 x i32> %_secret_xortmp168.i, %_secret_shuffletmp131.i
  %_secret_lshift175.i = shl <4 x i32> %_secret_addtmp171.i, <i32 7, i32 7, i32 7, i32 7>
  %_secret_lrshift177.i = lshr <4 x i32> %_secret_addtmp171.i, <i32 25, i32 25, i32 25, i32 25>
  %_secret_xortmp180.i = xor <4 x i32> %_secret_lshift175.i, %_secret_shuffletmp165.i
  %_secret_xortmp183.i = xor <4 x i32> %_secret_xortmp180.i, %_secret_lrshift177.i
  %_secret_addtmp186.i = add <4 x i32> %_secret_xortmp183.i, %_secret_xortmp168.i
  %_secret_lshift190.i = shl <4 x i32> %_secret_addtmp186.i, <i32 9, i32 9, i32 9, i32 9>
  %_secret_lrshift192.i = lshr <4 x i32> %_secret_addtmp186.i, <i32 23, i32 23, i32 23, i32 23>
  %_secret_xortmp195.i = xor <4 x i32> %_secret_lshift190.i, %_secret_shuffletmp148.i
  %_secret_shuffletmp197.i = shufflevector <4 x i32> %_secret_xortmp183.i, <4 x i32> undef, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %_secret_xortmp200.i = xor <4 x i32> %_secret_xortmp195.i, %_secret_lrshift192.i
  %_secret_addtmp203.i = add <4 x i32> %_secret_xortmp200.i, %_secret_xortmp183.i
  %_secret_lshift207.i = shl <4 x i32> %_secret_addtmp203.i, <i32 13, i32 13, i32 13, i32 13>
  %_secret_lrshift209.i = lshr <4 x i32> %_secret_addtmp203.i, <i32 19, i32 19, i32 19, i32 19>
  %_secret_xortmp212.i = xor <4 x i32> %_secret_lshift207.i, %_secret_shuffletmp131.i
  %_secret_shuffletmp214.i = shufflevector <4 x i32> %_secret_xortmp200.i, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %_secret_xortmp217.i = xor <4 x i32> %_secret_xortmp212.i, %_secret_lrshift209.i
  %_secret_addtmp220.i = add <4 x i32> %_secret_xortmp217.i, %_secret_xortmp200.i
  %_secret_lshift224.i = shl <4 x i32> %_secret_addtmp220.i, <i32 18, i32 18, i32 18, i32 18>
  %_secret_lrshift226.i = lshr <4 x i32> %_secret_addtmp220.i, <i32 14, i32 14, i32 14, i32 14>
  %_secret_xortmp229.i = xor <4 x i32> %_secret_lshift224.i, %_secret_xortmp168.i
  %_secret_shuffletmp231.i = shufflevector <4 x i32> %_secret_xortmp217.i, <4 x i32> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %_secret_xortmp234.i = xor <4 x i32> %_secret_xortmp229.i, %_secret_lrshift226.i
  %_secret_addtmp237.i = add <4 x i32> %_secret_xortmp234.i, %_secret_shuffletmp197.i
  %_secret_lshift241.i = shl <4 x i32> %_secret_addtmp237.i, <i32 7, i32 7, i32 7, i32 7>
  %_secret_lrshift243.i = lshr <4 x i32> %_secret_addtmp237.i, <i32 25, i32 25, i32 25, i32 25>
  %_secret_xortmp246.i = xor <4 x i32> %_secret_lshift241.i, %_secret_shuffletmp231.i
  %_secret_xortmp249.i = xor <4 x i32> %_secret_xortmp246.i, %_secret_lrshift243.i
  %_secret_addtmp252.i = add <4 x i32> %_secret_xortmp249.i, %_secret_xortmp234.i
  %_secret_lshift256.i = shl <4 x i32> %_secret_addtmp252.i, <i32 9, i32 9, i32 9, i32 9>
  %_secret_lrshift258.i = lshr <4 x i32> %_secret_addtmp252.i, <i32 23, i32 23, i32 23, i32 23>
  %_secret_xortmp261.i = xor <4 x i32> %_secret_lshift256.i, %_secret_shuffletmp214.i
  %_secret_shuffletmp263.i = shufflevector <4 x i32> %_secret_xortmp249.i, <4 x i32> undef, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %_secret_xortmp266.i = xor <4 x i32> %_secret_xortmp261.i, %_secret_lrshift258.i
  %_secret_addtmp269.i = add <4 x i32> %_secret_xortmp266.i, %_secret_xortmp249.i
  %_secret_lshift273.i = shl <4 x i32> %_secret_addtmp269.i, <i32 13, i32 13, i32 13, i32 13>
  %_secret_lrshift275.i = lshr <4 x i32> %_secret_addtmp269.i, <i32 19, i32 19, i32 19, i32 19>
  %_secret_xortmp278.i = xor <4 x i32> %_secret_lshift273.i, %_secret_shuffletmp197.i
  %_secret_shuffletmp280.i = shufflevector <4 x i32> %_secret_xortmp266.i, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %_secret_xortmp283.i = xor <4 x i32> %_secret_xortmp278.i, %_secret_lrshift275.i
  %_secret_addtmp286.i = add <4 x i32> %_secret_xortmp283.i, %_secret_xortmp266.i
  %_secret_lshift290.i = shl <4 x i32> %_secret_addtmp286.i, <i32 18, i32 18, i32 18, i32 18>
  %_secret_lrshift292.i = lshr <4 x i32> %_secret_addtmp286.i, <i32 14, i32 14, i32 14, i32 14>
  %_secret_xortmp295.i = xor <4 x i32> %_secret_lshift290.i, %_secret_xortmp234.i
  %_secret_shuffletmp297.i = shufflevector <4 x i32> %_secret_xortmp283.i, <4 x i32> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %_secret_xortmp300.i = xor <4 x i32> %_secret_xortmp295.i, %_secret_lrshift292.i
  %_public_addtmp302.i = add nuw nsw i32 %_public___v54_i.05.i, 4
  %_public_ulttmp.i = icmp ult i32 %_public_addtmp302.i, 20
  br i1 %_public_ulttmp.i, label %loop_body39.i, label %loop_end40.i

loop_end40.i:                                     ; preds = %loop_body39.i
  %_secret_addtmp312.i = add <4 x i32> %_secret_xortmp300.i, %_secret_ld.i.i
  %_secret_addtmp322.i = add <4 x i32> %_secret_shuffletmp263.i, %_secret_ld.i62.i
  %_secret_addtmp332.i = add <4 x i32> %_secret_shuffletmp280.i, %_secret_ld.i60.i
  %_secret_addtmp342.i = add <4 x i32> %_secret_shuffletmp297.i, %_secret_ld.i58.i
  %_secret_extracttmp.i = extractelement <4 x i32> %_secret_addtmp312.i, i32 0
  %_secret_extracttmp345.i = extractelement <4 x i32> %_secret_addtmp322.i, i32 0
  %_secret_extracttmp347.i = extractelement <4 x i32> %_secret_addtmp332.i, i32 0
  %_secret_extracttmp349.i = extractelement <4 x i32> %_secret_addtmp342.i, i32 0
  %_public_29 = sext i32 %_public___v48_j.07.i to i64
  %_secret_source_gep370.i = getelementptr inbounds i8, i8* %_secret_arrarg4, i64 %_public_29
  %_secret_cast.i55.i = bitcast i8* %_secret_source_gep370.i to i32*
  %_secret_ld.i56.i = load i32, i32* %_secret_cast.i55.i, align 4
  %_secret_xortmp374.i = xor i32 %_secret_ld.i56.i, %_secret_extracttmp.i
  %_public_addtmp386.i = or i32 %_public___v48_j.07.i, 48
  %_public_30 = sext i32 %_public_addtmp386.i to i64
  %_secret_source_gep388.i = getelementptr inbounds i8, i8* %_secret_arrarg4, i64 %_public_30
  %_secret_cast.i53.i = bitcast i8* %_secret_source_gep388.i to i32*
  %_secret_ld.i54.i = load i32, i32* %_secret_cast.i53.i, align 4
  %_secret_xortmp392.i = xor i32 %_secret_ld.i54.i, %_secret_extracttmp345.i
  %_public_addtmp404.i = or i32 %_public___v48_j.07.i, 32
  %_public_31 = sext i32 %_public_addtmp404.i to i64
  %_secret_source_gep406.i = getelementptr inbounds i8, i8* %_secret_arrarg4, i64 %_public_31
  %_secret_cast.i51.i = bitcast i8* %_secret_source_gep406.i to i32*
  %_secret_ld.i52.i = load i32, i32* %_secret_cast.i51.i, align 4
  %_secret_xortmp410.i = xor i32 %_secret_ld.i52.i, %_secret_extracttmp347.i
  %_public_addtmp422.i = or i32 %_public___v48_j.07.i, 16
  %_public_32 = sext i32 %_public_addtmp422.i to i64
  %_secret_source_gep424.i = getelementptr inbounds i8, i8* %_secret_arrarg4, i64 %_public_32
  %_secret_cast.i49.i = bitcast i8* %_secret_source_gep424.i to i32*
  %_secret_ld.i50.i = load i32, i32* %_secret_cast.i49.i, align 4
  %_secret_xortmp428.i = xor i32 %_secret_ld.i50.i, %_secret_extracttmp349.i
  %_secret_source_gep441.i = getelementptr inbounds i8, i8* %_secret_arrarg7, i64 %_public_29
  %_secret_cast.i48.i = bitcast i8* %_secret_source_gep441.i to i32*
  store i32 %_secret_xortmp374.i, i32* %_secret_cast.i48.i, align 4
  %_secret_source_gep457.i = getelementptr inbounds i8, i8* %_secret_arrarg7, i64 %_public_30
  %_secret_cast.i47.i = bitcast i8* %_secret_source_gep457.i to i32*
  store i32 %_secret_xortmp392.i, i32* %_secret_cast.i47.i, align 4
  %_secret_source_gep473.i = getelementptr inbounds i8, i8* %_secret_arrarg7, i64 %_public_31
  %_secret_cast.i46.i = bitcast i8* %_secret_source_gep473.i to i32*
  store i32 %_secret_xortmp410.i, i32* %_secret_cast.i46.i, align 4
  %_secret_source_gep489.i = getelementptr inbounds i8, i8* %_secret_arrarg7, i64 %_public_32
  %_secret_cast.i45.i = bitcast i8* %_secret_source_gep489.i to i32*
  store i32 %_secret_xortmp428.i, i32* %_secret_cast.i45.i, align 4
  %_secret_extracttmp495.i = extractelement <4 x i32> %_secret_addtmp312.i, i32 1
  %_secret_extracttmp497.i = extractelement <4 x i32> %_secret_addtmp322.i, i32 1
  %_secret_extracttmp499.i = extractelement <4 x i32> %_secret_addtmp332.i, i32 1
  %_secret_extracttmp501.i = extractelement <4 x i32> %_secret_addtmp342.i, i32 1
  %_public_addtmp521.i = or i32 %_public___v48_j.07.i, 20
  %_public_33 = sext i32 %_public_addtmp521.i to i64
  %_secret_source_gep523.i = getelementptr inbounds i8, i8* %_secret_arrarg4, i64 %_public_33
  %_secret_cast.i43.i = bitcast i8* %_secret_source_gep523.i to i32*
  %_secret_ld.i44.i = load i32, i32* %_secret_cast.i43.i, align 4
  %_secret_xortmp527.i = xor i32 %_secret_ld.i44.i, %_secret_extracttmp495.i
  %_public_addtmp539.i = or i32 %_public___v48_j.07.i, 4
  %_public_34 = sext i32 %_public_addtmp539.i to i64
  %_secret_source_gep541.i = getelementptr inbounds i8, i8* %_secret_arrarg4, i64 %_public_34
  %_secret_cast.i41.i = bitcast i8* %_secret_source_gep541.i to i32*
  %_secret_ld.i42.i = load i32, i32* %_secret_cast.i41.i, align 4
  %_secret_xortmp545.i = xor i32 %_secret_ld.i42.i, %_secret_extracttmp497.i
  %_public_addtmp557.i = or i32 %_public___v48_j.07.i, 52
  %_public_35 = sext i32 %_public_addtmp557.i to i64
  %_secret_source_gep559.i = getelementptr inbounds i8, i8* %_secret_arrarg4, i64 %_public_35
  %_secret_cast.i39.i = bitcast i8* %_secret_source_gep559.i to i32*
  %_secret_ld.i40.i = load i32, i32* %_secret_cast.i39.i, align 4
  %_secret_xortmp563.i = xor i32 %_secret_ld.i40.i, %_secret_extracttmp499.i
  %_public_addtmp575.i = or i32 %_public___v48_j.07.i, 36
  %_public_36 = sext i32 %_public_addtmp575.i to i64
  %_secret_source_gep577.i = getelementptr inbounds i8, i8* %_secret_arrarg4, i64 %_public_36
  %_secret_cast.i37.i = bitcast i8* %_secret_source_gep577.i to i32*
  %_secret_ld.i38.i = load i32, i32* %_secret_cast.i37.i, align 4
  %_secret_xortmp581.i = xor i32 %_secret_ld.i38.i, %_secret_extracttmp501.i
  %_secret_source_gep594.i = getelementptr inbounds i8, i8* %_secret_arrarg7, i64 %_public_33
  %_secret_cast.i36.i = bitcast i8* %_secret_source_gep594.i to i32*
  store i32 %_secret_xortmp527.i, i32* %_secret_cast.i36.i, align 4
  %_secret_source_gep610.i = getelementptr inbounds i8, i8* %_secret_arrarg7, i64 %_public_34
  %_secret_cast.i35.i = bitcast i8* %_secret_source_gep610.i to i32*
  store i32 %_secret_xortmp545.i, i32* %_secret_cast.i35.i, align 4
  %_secret_source_gep626.i = getelementptr inbounds i8, i8* %_secret_arrarg7, i64 %_public_35
  %_secret_cast.i34.i = bitcast i8* %_secret_source_gep626.i to i32*
  store i32 %_secret_xortmp563.i, i32* %_secret_cast.i34.i, align 4
  %_secret_source_gep642.i = getelementptr inbounds i8, i8* %_secret_arrarg7, i64 %_public_36
  %_secret_cast.i33.i = bitcast i8* %_secret_source_gep642.i to i32*
  store i32 %_secret_xortmp581.i, i32* %_secret_cast.i33.i, align 4
  %_secret_extracttmp650.i = extractelement <4 x i32> %_secret_addtmp312.i, i32 2
  %_secret_extracttmp652.i = extractelement <4 x i32> %_secret_addtmp322.i, i32 2
  %_secret_extracttmp654.i = extractelement <4 x i32> %_secret_addtmp332.i, i32 2
  %_secret_extracttmp656.i = extractelement <4 x i32> %_secret_addtmp342.i, i32 2
  %_public_addtmp676.i = or i32 %_public___v48_j.07.i, 40
  %_public_37 = sext i32 %_public_addtmp676.i to i64
  %_secret_source_gep678.i = getelementptr inbounds i8, i8* %_secret_arrarg4, i64 %_public_37
  %_secret_cast.i31.i = bitcast i8* %_secret_source_gep678.i to i32*
  %_secret_ld.i32.i = load i32, i32* %_secret_cast.i31.i, align 4
  %_secret_xortmp682.i = xor i32 %_secret_ld.i32.i, %_secret_extracttmp650.i
  %_public_addtmp694.i = or i32 %_public___v48_j.07.i, 24
  %_public_38 = sext i32 %_public_addtmp694.i to i64
  %_secret_source_gep696.i = getelementptr inbounds i8, i8* %_secret_arrarg4, i64 %_public_38
  %_secret_cast.i29.i = bitcast i8* %_secret_source_gep696.i to i32*
  %_secret_ld.i30.i = load i32, i32* %_secret_cast.i29.i, align 4
  %_secret_xortmp700.i = xor i32 %_secret_ld.i30.i, %_secret_extracttmp652.i
  %_public_addtmp712.i = or i32 %_public___v48_j.07.i, 8
  %_public_39 = sext i32 %_public_addtmp712.i to i64
  %_secret_source_gep714.i = getelementptr inbounds i8, i8* %_secret_arrarg4, i64 %_public_39
  %_secret_cast.i27.i = bitcast i8* %_secret_source_gep714.i to i32*
  %_secret_ld.i28.i = load i32, i32* %_secret_cast.i27.i, align 4
  %_secret_xortmp718.i = xor i32 %_secret_ld.i28.i, %_secret_extracttmp654.i
  %_public_addtmp730.i = or i32 %_public___v48_j.07.i, 56
  %_public_40 = sext i32 %_public_addtmp730.i to i64
  %_secret_source_gep732.i = getelementptr inbounds i8, i8* %_secret_arrarg4, i64 %_public_40
  %_secret_cast.i25.i = bitcast i8* %_secret_source_gep732.i to i32*
  %_secret_ld.i26.i = load i32, i32* %_secret_cast.i25.i, align 4
  %_secret_xortmp736.i = xor i32 %_secret_ld.i26.i, %_secret_extracttmp656.i
  %_secret_source_gep749.i = getelementptr inbounds i8, i8* %_secret_arrarg7, i64 %_public_37
  %_secret_cast.i24.i = bitcast i8* %_secret_source_gep749.i to i32*
  store i32 %_secret_xortmp682.i, i32* %_secret_cast.i24.i, align 4
  %_secret_source_gep765.i = getelementptr inbounds i8, i8* %_secret_arrarg7, i64 %_public_38
  %_secret_cast.i23.i = bitcast i8* %_secret_source_gep765.i to i32*
  store i32 %_secret_xortmp700.i, i32* %_secret_cast.i23.i, align 4
  %_secret_source_gep781.i = getelementptr inbounds i8, i8* %_secret_arrarg7, i64 %_public_39
  %_secret_cast.i22.i = bitcast i8* %_secret_source_gep781.i to i32*
  store i32 %_secret_xortmp718.i, i32* %_secret_cast.i22.i, align 4
  %_secret_source_gep797.i = getelementptr inbounds i8, i8* %_secret_arrarg7, i64 %_public_40
  %_secret_cast.i21.i = bitcast i8* %_secret_source_gep797.i to i32*
  store i32 %_secret_xortmp736.i, i32* %_secret_cast.i21.i, align 4
  %_secret_extracttmp805.i = extractelement <4 x i32> %_secret_addtmp312.i, i32 3
  %_secret_extracttmp807.i = extractelement <4 x i32> %_secret_addtmp322.i, i32 3
  %_secret_extracttmp809.i = extractelement <4 x i32> %_secret_addtmp332.i, i32 3
  %_secret_extracttmp811.i = extractelement <4 x i32> %_secret_addtmp342.i, i32 3
  %_public_addtmp831.i = or i32 %_public___v48_j.07.i, 60
  %_public_41 = sext i32 %_public_addtmp831.i to i64
  %_secret_source_gep833.i = getelementptr inbounds i8, i8* %_secret_arrarg4, i64 %_public_41
  %_secret_cast.i19.i = bitcast i8* %_secret_source_gep833.i to i32*
  %_secret_ld.i20.i = load i32, i32* %_secret_cast.i19.i, align 4
  %_secret_xortmp837.i = xor i32 %_secret_ld.i20.i, %_secret_extracttmp805.i
  %_public_addtmp849.i = or i32 %_public___v48_j.07.i, 44
  %_public_42 = sext i32 %_public_addtmp849.i to i64
  %_secret_source_gep851.i = getelementptr inbounds i8, i8* %_secret_arrarg4, i64 %_public_42
  %_secret_cast.i17.i = bitcast i8* %_secret_source_gep851.i to i32*
  %_secret_ld.i18.i = load i32, i32* %_secret_cast.i17.i, align 4
  %_secret_xortmp855.i = xor i32 %_secret_ld.i18.i, %_secret_extracttmp807.i
  %_public_addtmp867.i = or i32 %_public___v48_j.07.i, 28
  %_public_43 = sext i32 %_public_addtmp867.i to i64
  %_secret_source_gep869.i = getelementptr inbounds i8, i8* %_secret_arrarg4, i64 %_public_43
  %_secret_cast.i15.i = bitcast i8* %_secret_source_gep869.i to i32*
  %_secret_ld.i16.i = load i32, i32* %_secret_cast.i15.i, align 4
  %_secret_xortmp873.i = xor i32 %_secret_ld.i16.i, %_secret_extracttmp809.i
  %_public_addtmp885.i = or i32 %_public___v48_j.07.i, 12
  %_public_44 = sext i32 %_public_addtmp885.i to i64
  %_secret_source_gep887.i = getelementptr inbounds i8, i8* %_secret_arrarg4, i64 %_public_44
  %_secret_cast.i13.i = bitcast i8* %_secret_source_gep887.i to i32*
  %_secret_ld.i14.i = load i32, i32* %_secret_cast.i13.i, align 4
  %_secret_xortmp891.i = xor i32 %_secret_ld.i14.i, %_secret_extracttmp811.i
  %_secret_source_gep904.i = getelementptr inbounds i8, i8* %_secret_arrarg7, i64 %_public_41
  %_secret_cast.i12.i = bitcast i8* %_secret_source_gep904.i to i32*
  store i32 %_secret_xortmp837.i, i32* %_secret_cast.i12.i, align 4
  %_secret_source_gep920.i = getelementptr inbounds i8, i8* %_secret_arrarg7, i64 %_public_42
  %_secret_cast.i11.i = bitcast i8* %_secret_source_gep920.i to i32*
  store i32 %_secret_xortmp855.i, i32* %_secret_cast.i11.i, align 4
  %_secret_source_gep936.i = getelementptr inbounds i8, i8* %_secret_arrarg7, i64 %_public_43
  %_secret_cast.i10.i = bitcast i8* %_secret_source_gep936.i to i32*
  store i32 %_secret_xortmp873.i, i32* %_secret_cast.i10.i, align 4
  %_secret_source_gep952.i = getelementptr inbounds i8, i8* %_secret_arrarg7, i64 %_public_44
  %_secret_cast.i9.i = bitcast i8* %_secret_source_gep952.i to i32*
  store i32 %_secret_xortmp891.i, i32* %_secret_cast.i9.i, align 4
  %_secret_lval958.i = load i32, i32* %_secret_source_gep26.i, align 4
  %_secret_lval961.i = load i32, i32* %_secret_ptr960.i, align 4
  %_secret_addtmp963.i = add i32 %_secret_lval958.i, 1
  %_secret_eqtmp.i = icmp eq i32 %_secret_addtmp963.i, 0
  %_secret_addtmp969.i = add i32 %_secret_lval961.i, 1
  %_secret_select.i.i = select i1 %_secret_eqtmp.i, i32 %_secret_addtmp969.i, i32 %_secret_lval961.i
  store i32 %_secret_addtmp963.i, i32* %_secret_source_gep26.i, align 4
  store i32 %_secret_select.i.i, i32* %_secret_ptr960.i, align 4
  %_public_addtmp.i = add i32 %_public_addtmp8.i, 64
  %_public_ultetmp.i = icmp ugt i32 %_public_addtmp.i, %_public___m_len5
  br i1 %_public_ultetmp.i, label %_u1.exit, label %loop_body.i

_u1.exit:                                         ; preds = %entry, %loop_end40.i
  %_public_27 = and i32 %_public___m_len5, -64
  %_public_multmp981.i = zext i32 %_public_27 to i64
  %_public_28 = trunc i64 %_public_multmp981.i to i32
  %_public_trunctmp = sub i32 %_public___m_len5, %_public_28
  %_secret_source_gep25 = getelementptr inbounds i8, i8* %_secret_arrarg4, i64 %_public_multmp981.i
  %_secret_source_gep35 = getelementptr inbounds i8, i8* %_secret_arrarg7, i64 %_public_multmp981.i
  %_public_savedstack = call i8* @llvm.stacksave()
  %_public_ugttmp.i = icmp eq i32 %_public_trunctmp, 0
  br i1 %_public_ugttmp.i, label %_u0.exit, label %thenbranch.i

thenbranch.i:                                     ; preds = %_u1.exit
  %_secret_cast.i.i1 = bitcast i32* %_secret_arrarg1 to <4 x i32>*
  %_secret_ld.i.i2 = load <4 x i32>, <4 x i32>* %_secret_cast.i.i1, align 16
  %_secret_source_gep17.i = getelementptr inbounds i32, i32* %_secret_arrarg1, i64 4
  %_secret_cast.i8.i = bitcast i32* %_secret_source_gep17.i to <4 x i32>*
  %_secret_ld.i9.i = load <4 x i32>, <4 x i32>* %_secret_cast.i8.i, align 16
  %_secret_source_gep25.i = getelementptr inbounds i32, i32* %_secret_arrarg1, i64 8
  %_secret_cast.i28.i = bitcast i32* %_secret_source_gep25.i to <4 x i32>*
  %_secret_ld.i29.i = load <4 x i32>, <4 x i32>* %_secret_cast.i28.i, align 16
  %_secret_source_gep33.i = getelementptr inbounds i32, i32* %_secret_arrarg1, i64 12
  %_secret_cast.i26.i = bitcast i32* %_secret_source_gep33.i to <4 x i32>*
  %_secret_ld.i27.i = load <4 x i32>, <4 x i32>* %_secret_cast.i26.i, align 16
  br label %loop_body.i11

loop_body.i11:                                    ; preds = %loop_body.i11, %thenbranch.i
  %_public___v110_i.07.i = phi i32 [ 0, %thenbranch.i ], [ %_public_addtmp.i9, %loop_body.i11 ]
  %_secret___v108_diag3.06.i = phi <4 x i32> [ %_secret_ld.i27.i, %thenbranch.i ], [ %_secret_shuffletmp293.i, %loop_body.i11 ]
  %_secret___v107_diag2.05.i = phi <4 x i32> [ %_secret_ld.i29.i, %thenbranch.i ], [ %_secret_shuffletmp276.i, %loop_body.i11 ]
  %_secret___v106_diag1.04.i = phi <4 x i32> [ %_secret_ld.i9.i, %thenbranch.i ], [ %_secret_shuffletmp259.i, %loop_body.i11 ]
  %_secret___v105_diag0.03.i = phi <4 x i32> [ %_secret_ld.i.i2, %thenbranch.i ], [ %_secret_xortmp296.i, %loop_body.i11 ]
  %_secret_addtmp.i3 = add <4 x i32> %_secret___v106_diag1.04.i, %_secret___v105_diag0.03.i
  %_secret_lshift.i4 = shl <4 x i32> %_secret_addtmp.i3, <i32 7, i32 7, i32 7, i32 7>
  %_secret_lrshift.i5 = lshr <4 x i32> %_secret_addtmp.i3, <i32 25, i32 25, i32 25, i32 25>
  %_secret_xortmp.i6 = xor <4 x i32> %_secret___v108_diag3.06.i, %_secret_lshift.i4
  %_secret_xortmp48.i = xor <4 x i32> %_secret_xortmp.i6, %_secret_lrshift.i5
  %_secret_addtmp51.i = add <4 x i32> %_secret_xortmp48.i, %_secret___v105_diag0.03.i
  %_secret_lshift55.i = shl <4 x i32> %_secret_addtmp51.i, <i32 9, i32 9, i32 9, i32 9>
  %_secret_lrshift57.i = lshr <4 x i32> %_secret_addtmp51.i, <i32 23, i32 23, i32 23, i32 23>
  %_secret_xortmp60.i = xor <4 x i32> %_secret_lshift55.i, %_secret___v107_diag2.05.i
  %_secret_shuffletmp.i7 = shufflevector <4 x i32> %_secret_xortmp48.i, <4 x i32> undef, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %_secret_xortmp64.i8 = xor <4 x i32> %_secret_xortmp60.i, %_secret_lrshift57.i
  %_secret_addtmp67.i = add <4 x i32> %_secret_xortmp64.i8, %_secret_xortmp48.i
  %_secret_lshift71.i = shl <4 x i32> %_secret_addtmp67.i, <i32 13, i32 13, i32 13, i32 13>
  %_secret_lrshift73.i = lshr <4 x i32> %_secret_addtmp67.i, <i32 19, i32 19, i32 19, i32 19>
  %_secret_xortmp76.i = xor <4 x i32> %_secret_lshift71.i, %_secret___v106_diag1.04.i
  %_secret_shuffletmp78.i = shufflevector <4 x i32> %_secret_xortmp64.i8, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %_secret_xortmp81.i = xor <4 x i32> %_secret_xortmp76.i, %_secret_lrshift73.i
  %_secret_addtmp84.i = add <4 x i32> %_secret_xortmp81.i, %_secret_xortmp64.i8
  %_secret_lshift88.i = shl <4 x i32> %_secret_addtmp84.i, <i32 18, i32 18, i32 18, i32 18>
  %_secret_lrshift90.i = lshr <4 x i32> %_secret_addtmp84.i, <i32 14, i32 14, i32 14, i32 14>
  %_secret_xortmp93.i = xor <4 x i32> %_secret_lshift88.i, %_secret___v105_diag0.03.i
  %_secret_shuffletmp95.i = shufflevector <4 x i32> %_secret_xortmp81.i, <4 x i32> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %_secret_xortmp98.i = xor <4 x i32> %_secret_xortmp93.i, %_secret_lrshift90.i
  %_secret_addtmp101.i = add <4 x i32> %_secret_xortmp98.i, %_secret_shuffletmp.i7
  %_secret_lshift105.i = shl <4 x i32> %_secret_addtmp101.i, <i32 7, i32 7, i32 7, i32 7>
  %_secret_lrshift107.i = lshr <4 x i32> %_secret_addtmp101.i, <i32 25, i32 25, i32 25, i32 25>
  %_secret_xortmp110.i = xor <4 x i32> %_secret_lshift105.i, %_secret_shuffletmp95.i
  %_secret_xortmp113.i = xor <4 x i32> %_secret_xortmp110.i, %_secret_lrshift107.i
  %_secret_addtmp116.i = add <4 x i32> %_secret_xortmp113.i, %_secret_xortmp98.i
  %_secret_lshift120.i = shl <4 x i32> %_secret_addtmp116.i, <i32 9, i32 9, i32 9, i32 9>
  %_secret_lrshift122.i = lshr <4 x i32> %_secret_addtmp116.i, <i32 23, i32 23, i32 23, i32 23>
  %_secret_xortmp125.i = xor <4 x i32> %_secret_lshift120.i, %_secret_shuffletmp78.i
  %_secret_shuffletmp127.i = shufflevector <4 x i32> %_secret_xortmp113.i, <4 x i32> undef, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %_secret_xortmp130.i = xor <4 x i32> %_secret_xortmp125.i, %_secret_lrshift122.i
  %_secret_addtmp133.i = add <4 x i32> %_secret_xortmp130.i, %_secret_xortmp113.i
  %_secret_lshift137.i = shl <4 x i32> %_secret_addtmp133.i, <i32 13, i32 13, i32 13, i32 13>
  %_secret_lrshift139.i = lshr <4 x i32> %_secret_addtmp133.i, <i32 19, i32 19, i32 19, i32 19>
  %_secret_xortmp142.i = xor <4 x i32> %_secret_lshift137.i, %_secret_shuffletmp.i7
  %_secret_shuffletmp144.i = shufflevector <4 x i32> %_secret_xortmp130.i, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %_secret_xortmp147.i = xor <4 x i32> %_secret_xortmp142.i, %_secret_lrshift139.i
  %_secret_addtmp150.i = add <4 x i32> %_secret_xortmp147.i, %_secret_xortmp130.i
  %_secret_lshift154.i = shl <4 x i32> %_secret_addtmp150.i, <i32 18, i32 18, i32 18, i32 18>
  %_secret_lrshift156.i = lshr <4 x i32> %_secret_addtmp150.i, <i32 14, i32 14, i32 14, i32 14>
  %_secret_xortmp159.i = xor <4 x i32> %_secret_lshift154.i, %_secret_xortmp98.i
  %_secret_shuffletmp161.i = shufflevector <4 x i32> %_secret_xortmp147.i, <4 x i32> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %_secret_xortmp164.i = xor <4 x i32> %_secret_xortmp159.i, %_secret_lrshift156.i
  %_secret_addtmp167.i = add <4 x i32> %_secret_xortmp164.i, %_secret_shuffletmp127.i
  %_secret_lshift171.i = shl <4 x i32> %_secret_addtmp167.i, <i32 7, i32 7, i32 7, i32 7>
  %_secret_lrshift173.i = lshr <4 x i32> %_secret_addtmp167.i, <i32 25, i32 25, i32 25, i32 25>
  %_secret_xortmp176.i = xor <4 x i32> %_secret_lshift171.i, %_secret_shuffletmp161.i
  %_secret_xortmp179.i = xor <4 x i32> %_secret_xortmp176.i, %_secret_lrshift173.i
  %_secret_addtmp182.i = add <4 x i32> %_secret_xortmp179.i, %_secret_xortmp164.i
  %_secret_lshift186.i = shl <4 x i32> %_secret_addtmp182.i, <i32 9, i32 9, i32 9, i32 9>
  %_secret_lrshift188.i = lshr <4 x i32> %_secret_addtmp182.i, <i32 23, i32 23, i32 23, i32 23>
  %_secret_xortmp191.i = xor <4 x i32> %_secret_lshift186.i, %_secret_shuffletmp144.i
  %_secret_shuffletmp193.i = shufflevector <4 x i32> %_secret_xortmp179.i, <4 x i32> undef, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %_secret_xortmp196.i = xor <4 x i32> %_secret_xortmp191.i, %_secret_lrshift188.i
  %_secret_addtmp199.i = add <4 x i32> %_secret_xortmp196.i, %_secret_xortmp179.i
  %_secret_lshift203.i = shl <4 x i32> %_secret_addtmp199.i, <i32 13, i32 13, i32 13, i32 13>
  %_secret_lrshift205.i = lshr <4 x i32> %_secret_addtmp199.i, <i32 19, i32 19, i32 19, i32 19>
  %_secret_xortmp208.i = xor <4 x i32> %_secret_lshift203.i, %_secret_shuffletmp127.i
  %_secret_shuffletmp210.i = shufflevector <4 x i32> %_secret_xortmp196.i, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %_secret_xortmp213.i = xor <4 x i32> %_secret_xortmp208.i, %_secret_lrshift205.i
  %_secret_addtmp216.i = add <4 x i32> %_secret_xortmp213.i, %_secret_xortmp196.i
  %_secret_lshift220.i = shl <4 x i32> %_secret_addtmp216.i, <i32 18, i32 18, i32 18, i32 18>
  %_secret_lrshift222.i = lshr <4 x i32> %_secret_addtmp216.i, <i32 14, i32 14, i32 14, i32 14>
  %_secret_xortmp225.i = xor <4 x i32> %_secret_lshift220.i, %_secret_xortmp164.i
  %_secret_shuffletmp227.i = shufflevector <4 x i32> %_secret_xortmp213.i, <4 x i32> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %_secret_xortmp230.i = xor <4 x i32> %_secret_xortmp225.i, %_secret_lrshift222.i
  %_secret_addtmp233.i = add <4 x i32> %_secret_xortmp230.i, %_secret_shuffletmp193.i
  %_secret_lshift237.i = shl <4 x i32> %_secret_addtmp233.i, <i32 7, i32 7, i32 7, i32 7>
  %_secret_lrshift239.i = lshr <4 x i32> %_secret_addtmp233.i, <i32 25, i32 25, i32 25, i32 25>
  %_secret_xortmp242.i = xor <4 x i32> %_secret_lshift237.i, %_secret_shuffletmp227.i
  %_secret_xortmp245.i = xor <4 x i32> %_secret_xortmp242.i, %_secret_lrshift239.i
  %_secret_addtmp248.i = add <4 x i32> %_secret_xortmp245.i, %_secret_xortmp230.i
  %_secret_lshift252.i = shl <4 x i32> %_secret_addtmp248.i, <i32 9, i32 9, i32 9, i32 9>
  %_secret_lrshift254.i = lshr <4 x i32> %_secret_addtmp248.i, <i32 23, i32 23, i32 23, i32 23>
  %_secret_xortmp257.i = xor <4 x i32> %_secret_lshift252.i, %_secret_shuffletmp210.i
  %_secret_shuffletmp259.i = shufflevector <4 x i32> %_secret_xortmp245.i, <4 x i32> undef, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %_secret_xortmp262.i = xor <4 x i32> %_secret_xortmp257.i, %_secret_lrshift254.i
  %_secret_addtmp265.i = add <4 x i32> %_secret_xortmp262.i, %_secret_xortmp245.i
  %_secret_lshift269.i = shl <4 x i32> %_secret_addtmp265.i, <i32 13, i32 13, i32 13, i32 13>
  %_secret_lrshift271.i = lshr <4 x i32> %_secret_addtmp265.i, <i32 19, i32 19, i32 19, i32 19>
  %_secret_xortmp274.i = xor <4 x i32> %_secret_lshift269.i, %_secret_shuffletmp193.i
  %_secret_shuffletmp276.i = shufflevector <4 x i32> %_secret_xortmp262.i, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %_secret_xortmp279.i = xor <4 x i32> %_secret_xortmp274.i, %_secret_lrshift271.i
  %_secret_addtmp282.i = add <4 x i32> %_secret_xortmp279.i, %_secret_xortmp262.i
  %_secret_lshift286.i = shl <4 x i32> %_secret_addtmp282.i, <i32 18, i32 18, i32 18, i32 18>
  %_secret_lrshift288.i = lshr <4 x i32> %_secret_addtmp282.i, <i32 14, i32 14, i32 14, i32 14>
  %_secret_xortmp291.i = xor <4 x i32> %_secret_lshift286.i, %_secret_xortmp230.i
  %_secret_shuffletmp293.i = shufflevector <4 x i32> %_secret_xortmp279.i, <4 x i32> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %_secret_xortmp296.i = xor <4 x i32> %_secret_xortmp291.i, %_secret_lrshift288.i
  %_public_addtmp.i9 = add nuw nsw i32 %_public___v110_i.07.i, 4
  %_public_ulttmp.i10 = icmp ult i32 %_public_addtmp.i9, 20
  br i1 %_public_ulttmp.i10, label %loop_body.i11, label %loop_body507.lr.ph.i

loop_body507.lr.ph.i:                             ; preds = %loop_body.i11
  %_secret_addtmp307.i = add <4 x i32> %_secret_xortmp296.i, %_secret_ld.i.i2
  %_secret_addtmp317.i = add <4 x i32> %_secret_shuffletmp259.i, %_secret_ld.i9.i
  %_secret_addtmp327.i = add <4 x i32> %_secret_shuffletmp276.i, %_secret_ld.i29.i
  %_secret_addtmp337.i = add <4 x i32> %_secret_shuffletmp293.i, %_secret_ld.i27.i
  %_secret___v126_partialblock.i = alloca [64 x i8], align 1
  %_secret_extracttmp.i12 = extractelement <4 x i32> %_secret_addtmp307.i, i32 0
  %_secret_extracttmp341.i = extractelement <4 x i32> %_secret_addtmp317.i, i32 0
  %_secret_extracttmp343.i = extractelement <4 x i32> %_secret_addtmp327.i, i32 0
  %_secret_extracttmp345.i13 = extractelement <4 x i32> %_secret_addtmp337.i, i32 0
  %_secret_source_gep356.i = getelementptr inbounds [64 x i8], [64 x i8]* %_secret___v126_partialblock.i, i64 0, i64 0
  %_secret_cast.i25.i14 = bitcast i8* %_secret_source_gep356.i to i32*
  store i32 %_secret_extracttmp.i12, i32* %_secret_cast.i25.i14, align 4
  %_secret_source_gep362.i = getelementptr inbounds [64 x i8], [64 x i8]* %_secret___v126_partialblock.i, i64 0, i64 48
  %_secret_cast.i24.i15 = bitcast i8* %_secret_source_gep362.i to i32*
  store i32 %_secret_extracttmp341.i, i32* %_secret_cast.i24.i15, align 4
  %_secret_source_gep368.i = getelementptr inbounds [64 x i8], [64 x i8]* %_secret___v126_partialblock.i, i64 0, i64 32
  %_secret_cast.i23.i16 = bitcast i8* %_secret_source_gep368.i to i32*
  store i32 %_secret_extracttmp343.i, i32* %_secret_cast.i23.i16, align 4
  %_secret_source_gep374.i = getelementptr inbounds [64 x i8], [64 x i8]* %_secret___v126_partialblock.i, i64 0, i64 16
  %_secret_cast.i22.i17 = bitcast i8* %_secret_source_gep374.i to i32*
  store i32 %_secret_extracttmp345.i13, i32* %_secret_cast.i22.i17, align 4
  %_secret_extracttmp379.i = extractelement <4 x i32> %_secret_addtmp307.i, i32 1
  %_secret_extracttmp381.i = extractelement <4 x i32> %_secret_addtmp317.i, i32 1
  %_secret_extracttmp383.i = extractelement <4 x i32> %_secret_addtmp327.i, i32 1
  %_secret_extracttmp385.i = extractelement <4 x i32> %_secret_addtmp337.i, i32 1
  %_secret_source_gep397.i = getelementptr inbounds [64 x i8], [64 x i8]* %_secret___v126_partialblock.i, i64 0, i64 20
  %_secret_cast.i21.i18 = bitcast i8* %_secret_source_gep397.i to i32*
  store i32 %_secret_extracttmp379.i, i32* %_secret_cast.i21.i18, align 4
  %_secret_source_gep403.i = getelementptr inbounds [64 x i8], [64 x i8]* %_secret___v126_partialblock.i, i64 0, i64 4
  %_secret_cast.i20.i = bitcast i8* %_secret_source_gep403.i to i32*
  store i32 %_secret_extracttmp381.i, i32* %_secret_cast.i20.i, align 4
  %_secret_source_gep409.i = getelementptr inbounds [64 x i8], [64 x i8]* %_secret___v126_partialblock.i, i64 0, i64 52
  %_secret_cast.i19.i19 = bitcast i8* %_secret_source_gep409.i to i32*
  store i32 %_secret_extracttmp383.i, i32* %_secret_cast.i19.i19, align 4
  %_secret_source_gep415.i = getelementptr inbounds [64 x i8], [64 x i8]* %_secret___v126_partialblock.i, i64 0, i64 36
  %_secret_cast.i18.i = bitcast i8* %_secret_source_gep415.i to i32*
  store i32 %_secret_extracttmp385.i, i32* %_secret_cast.i18.i, align 4
  %_secret_extracttmp422.i = extractelement <4 x i32> %_secret_addtmp307.i, i32 2
  %_secret_extracttmp424.i = extractelement <4 x i32> %_secret_addtmp317.i, i32 2
  %_secret_extracttmp426.i = extractelement <4 x i32> %_secret_addtmp327.i, i32 2
  %_secret_extracttmp428.i = extractelement <4 x i32> %_secret_addtmp337.i, i32 2
  %_secret_source_gep440.i = getelementptr inbounds [64 x i8], [64 x i8]* %_secret___v126_partialblock.i, i64 0, i64 40
  %_secret_cast.i17.i20 = bitcast i8* %_secret_source_gep440.i to i32*
  store i32 %_secret_extracttmp422.i, i32* %_secret_cast.i17.i20, align 4
  %_secret_source_gep446.i = getelementptr inbounds [64 x i8], [64 x i8]* %_secret___v126_partialblock.i, i64 0, i64 24
  %_secret_cast.i16.i = bitcast i8* %_secret_source_gep446.i to i32*
  store i32 %_secret_extracttmp424.i, i32* %_secret_cast.i16.i, align 4
  %_secret_source_gep452.i = getelementptr inbounds [64 x i8], [64 x i8]* %_secret___v126_partialblock.i, i64 0, i64 8
  %_secret_cast.i15.i21 = bitcast i8* %_secret_source_gep452.i to i32*
  store i32 %_secret_extracttmp426.i, i32* %_secret_cast.i15.i21, align 4
  %_secret_source_gep458.i = getelementptr inbounds [64 x i8], [64 x i8]* %_secret___v126_partialblock.i, i64 0, i64 56
  %_secret_cast.i14.i = bitcast i8* %_secret_source_gep458.i to i32*
  store i32 %_secret_extracttmp428.i, i32* %_secret_cast.i14.i, align 4
  %_secret_extracttmp465.i = extractelement <4 x i32> %_secret_addtmp307.i, i32 3
  %_secret_extracttmp467.i = extractelement <4 x i32> %_secret_addtmp317.i, i32 3
  %_secret_extracttmp469.i = extractelement <4 x i32> %_secret_addtmp327.i, i32 3
  %_secret_extracttmp471.i = extractelement <4 x i32> %_secret_addtmp337.i, i32 3
  %_secret_source_gep483.i = getelementptr inbounds [64 x i8], [64 x i8]* %_secret___v126_partialblock.i, i64 0, i64 60
  %_secret_cast.i13.i22 = bitcast i8* %_secret_source_gep483.i to i32*
  store i32 %_secret_extracttmp465.i, i32* %_secret_cast.i13.i22, align 4
  %_secret_source_gep489.i23 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret___v126_partialblock.i, i64 0, i64 44
  %_secret_cast.i12.i24 = bitcast i8* %_secret_source_gep489.i23 to i32*
  store i32 %_secret_extracttmp467.i, i32* %_secret_cast.i12.i24, align 4
  %_secret_source_gep495.i = getelementptr inbounds [64 x i8], [64 x i8]* %_secret___v126_partialblock.i, i64 0, i64 28
  %_secret_cast.i11.i25 = bitcast i8* %_secret_source_gep495.i to i32*
  store i32 %_secret_extracttmp469.i, i32* %_secret_cast.i11.i25, align 4
  %_secret_source_gep501.i = getelementptr inbounds [64 x i8], [64 x i8]* %_secret___v126_partialblock.i, i64 0, i64 12
  %_secret_cast.i10.i26 = bitcast i8* %_secret_source_gep501.i to i32*
  store i32 %_secret_extracttmp471.i, i32* %_secret_cast.i10.i26, align 4
  br label %loop_body507.i

loop_body507.i:                                   ; preds = %loop_body507.i, %loop_body507.lr.ph.i
  %_public___v143_i.02.i = phi i32 [ 0, %loop_body507.lr.ph.i ], [ %_public_addtmp522.i, %loop_body507.i ]
  %_public_ = sext i32 %_public___v143_i.02.i to i64
  %_secret_ptr.i = getelementptr inbounds i8, i8* %_secret_source_gep35, i64 %_public_
  %_secret_ptr515.i = getelementptr inbounds i8, i8* %_secret_source_gep25, i64 %_public_
  %_secret_lval516.i = load i8, i8* %_secret_ptr515.i, align 1
  %_secret_ptr518.i = getelementptr inbounds [64 x i8], [64 x i8]* %_secret___v126_partialblock.i, i64 0, i64 %_public_
  %_secret_lval519.i = load i8, i8* %_secret_ptr518.i, align 1
  %_secret_xortmp520.i = xor i8 %_secret_lval519.i, %_secret_lval516.i
  store i8 %_secret_xortmp520.i, i8* %_secret_ptr.i, align 1
  %_public_addtmp522.i = add nuw i32 %_public___v143_i.02.i, 1
  %_public_ulttmp511.i = icmp ult i32 %_public_addtmp522.i, %_public_trunctmp
  br i1 %_public_ulttmp511.i, label %loop_body507.i, label %loop_end508.i

loop_end508.i:                                    ; preds = %loop_body507.i
  call fastcc void @_memzero(i8* nonnull %_secret_source_gep356.i, i32 64) #3
  br label %_u0.exit

_u0.exit:                                         ; preds = %_u1.exit, %loop_end508.i
  call void @llvm.stackrestore(i8* %_public_savedstack)
  ret void
}

; Function Attrs: nounwind
define internal fastcc void @_crypto_stream_salsa20(i8* nocapture %_secret_arrarg1, i32 %_public___c_len2, i8* nocapture readonly %_public_arrarg3, i8* nocapture readonly %_secret_arrarg5) unnamed_addr #3 {
entry:
  %_public_eqtmp = icmp eq i32 %_public___c_len2, 0
  br i1 %_public_eqtmp, label %thenbranch, label %branchmerge

thenbranch:                                       ; preds = %entry
  ret void

branchmerge:                                      ; preds = %entry
  %_secret___v152_ctx = alloca [16 x i32], align 4
  %_secret_arrtoptr = getelementptr inbounds [16 x i32], [16 x i32]* %_secret___v152_ctx, i64 0, i64 0
  %_secret_ptr.i = getelementptr inbounds i32, i32* %_secret_arrtoptr, i64 5
  %_secret_cast.i.i = bitcast i8* %_secret_arrarg5 to i32*
  %_secret_ld.i.i = load i32, i32* %_secret_cast.i.i, align 4
  store i32 %_secret_ld.i.i, i32* %_secret_ptr.i, align 4
  %_secret_ptr25.i = getelementptr inbounds i32, i32* %_secret_arrtoptr, i64 10
  %_secret_source_gep30.i = getelementptr inbounds i8, i8* %_secret_arrarg5, i64 4
  %_secret_cast.i134.i = bitcast i8* %_secret_source_gep30.i to i32*
  %_secret_ld.i135.i = load i32, i32* %_secret_cast.i134.i, align 4
  store i32 %_secret_ld.i135.i, i32* %_secret_ptr25.i, align 4
  %_secret_ptr37.i = getelementptr inbounds i32, i32* %_secret_arrtoptr, i64 15
  %_secret_source_gep42.i = getelementptr inbounds i8, i8* %_secret_arrarg5, i64 8
  %_secret_cast.i132.i = bitcast i8* %_secret_source_gep42.i to i32*
  %_secret_ld.i133.i = load i32, i32* %_secret_cast.i132.i, align 4
  store i32 %_secret_ld.i133.i, i32* %_secret_ptr37.i, align 4
  %_secret_ptr49.i = getelementptr inbounds i32, i32* %_secret_arrtoptr, i64 12
  %_secret_source_gep54.i = getelementptr inbounds i8, i8* %_secret_arrarg5, i64 12
  %_secret_cast.i130.i = bitcast i8* %_secret_source_gep54.i to i32*
  %_secret_ld.i131.i = load i32, i32* %_secret_cast.i130.i, align 4
  store i32 %_secret_ld.i131.i, i32* %_secret_ptr49.i, align 4
  %_secret_ptr61.i = getelementptr inbounds i32, i32* %_secret_arrtoptr, i64 7
  %_secret_source_gep66.i = getelementptr inbounds i8, i8* %_secret_arrarg5, i64 16
  %_secret_cast.i128.i = bitcast i8* %_secret_source_gep66.i to i32*
  %_secret_ld.i129.i = load i32, i32* %_secret_cast.i128.i, align 4
  store i32 %_secret_ld.i129.i, i32* %_secret_ptr61.i, align 4
  %_secret_ptr73.i = getelementptr inbounds i32, i32* %_secret_arrtoptr, i64 4
  %_secret_source_gep78.i = getelementptr inbounds i8, i8* %_secret_arrarg5, i64 20
  %_secret_cast.i126.i = bitcast i8* %_secret_source_gep78.i to i32*
  %_secret_ld.i127.i = load i32, i32* %_secret_cast.i126.i, align 4
  store i32 %_secret_ld.i127.i, i32* %_secret_ptr73.i, align 4
  %_secret_ptr85.i = getelementptr inbounds i32, i32* %_secret_arrtoptr, i64 9
  %_secret_source_gep90.i = getelementptr inbounds i8, i8* %_secret_arrarg5, i64 24
  %_secret_cast.i124.i = bitcast i8* %_secret_source_gep90.i to i32*
  %_secret_ld.i125.i = load i32, i32* %_secret_cast.i124.i, align 4
  store i32 %_secret_ld.i125.i, i32* %_secret_ptr85.i, align 4
  %_secret_ptr97.i = getelementptr inbounds i32, i32* %_secret_arrtoptr, i64 14
  %_secret_source_gep102.i = getelementptr inbounds i8, i8* %_secret_arrarg5, i64 28
  %_secret_cast.i122.i = bitcast i8* %_secret_source_gep102.i to i32*
  %_secret_ld.i123.i = load i32, i32* %_secret_cast.i122.i, align 4
  store i32 %_secret_ld.i123.i, i32* %_secret_ptr97.i, align 4
  store i32 1634760805, i32* %_secret_arrtoptr, align 4
  %_secret_ptr113.i = getelementptr inbounds i32, i32* %_secret_arrtoptr, i64 1
  store i32 857760878, i32* %_secret_ptr113.i, align 4
  %_secret_ptr117.i = getelementptr inbounds i32, i32* %_secret_arrtoptr, i64 2
  store i32 2036477234, i32* %_secret_ptr117.i, align 4
  %_secret_ptr121.i = getelementptr inbounds i32, i32* %_secret_arrtoptr, i64 3
  store i32 1797285236, i32* %_secret_ptr121.i, align 4
  %_secret_ptr.i1 = getelementptr inbounds i32, i32* %_secret_arrtoptr, i64 6
  %_secret_cast.i.i2 = bitcast i8* %_public_arrarg3 to i32*
  %_secret_ld.i.i3 = load i32, i32* %_secret_cast.i.i2, align 4
  store i32 %_secret_ld.i.i3, i32* %_secret_ptr.i1, align 4
  %_secret_ptr25.i4 = getelementptr inbounds i32, i32* %_secret_arrtoptr, i64 11
  %_secret_source_gep30.i5 = getelementptr inbounds i8, i8* %_public_arrarg3, i64 4
  %_secret_cast.i42.i = bitcast i8* %_secret_source_gep30.i5 to i32*
  %_secret_ld.i43.i = load i32, i32* %_secret_cast.i42.i, align 4
  store i32 %_secret_ld.i43.i, i32* %_secret_ptr25.i4, align 4
  %_secret_ptr37.i6 = getelementptr inbounds i32, i32* %_secret_arrtoptr, i64 8
  store i32 0, i32* %_secret_ptr37.i6, align 4
  %_secret_ptr41.i = getelementptr inbounds i32, i32* %_secret_arrtoptr, i64 13
  store i32 0, i32* %_secret_ptr41.i, align 4
  tail call fastcc void @_memzero(i8* %_secret_arrarg1, i32 %_public___c_len2)
  call fastcc void @u0(i32* %_secret_arrtoptr, i8* %_secret_arrarg1, i32 %_public___c_len2, i8* %_secret_arrarg1, i32 %_public___c_len2) #3
  call fastcc void @_memzero32(i32* nonnull %_secret_arrtoptr)
  ret void
}

; Function Attrs: noinline nounwind
define internal fastcc void @_memzero32(i32* nocapture) unnamed_addr #1 {
entry:
  %_secret_cast = bitcast i32* %0 to i8*
  tail call void @llvm.memset.p0i8.i32(i8* %_secret_cast, i8 0, i32 16, i32 4, i1 false)
  ret void
}

; Function Attrs: nounwind
define internal fastcc void @_crypto_stream_salsa20_xor_ic(i8* nocapture %_secret_arrarg1, i32 %_public___c_len2, i8* nocapture readonly %_secret_arrarg4, i32 %_public___m_len5, i8* nocapture readonly %_secret_arrarg7, i64 %_public_ic_val8, i8* nocapture readonly %_secret_arrarg10) unnamed_addr #3 {
entry:
  %_public_eqtmp = icmp eq i32 %_public___m_len5, 0
  br i1 %_public_eqtmp, label %thenbranch, label %branchmerge

thenbranch:                                       ; preds = %entry
  ret void

branchmerge:                                      ; preds = %entry
  %_public___v153_ic_bytes = alloca [8 x i8], align 1
  %_public_arrtoptr = getelementptr inbounds [8 x i8], [8 x i8]* %_public___v153_ic_bytes, i64 0, i64 0
  %_secret_cast.i = bitcast i8* %_public_arrtoptr to i64*
  store i64 %_public_ic_val8, i64* %_secret_cast.i, align 4
  %_secret___v154_ctx = alloca [16 x i32], align 4
  %_secret_arrtoptr = getelementptr inbounds [16 x i32], [16 x i32]* %_secret___v154_ctx, i64 0, i64 0
  %_secret_ptr.i = getelementptr inbounds i32, i32* %_secret_arrtoptr, i64 5
  %_secret_cast.i.i = bitcast i8* %_secret_arrarg10 to i32*
  %_secret_ld.i.i = load i32, i32* %_secret_cast.i.i, align 4
  store i32 %_secret_ld.i.i, i32* %_secret_ptr.i, align 4
  %_secret_ptr25.i = getelementptr inbounds i32, i32* %_secret_arrtoptr, i64 10
  %_secret_source_gep30.i = getelementptr inbounds i8, i8* %_secret_arrarg10, i64 4
  %_secret_cast.i134.i = bitcast i8* %_secret_source_gep30.i to i32*
  %_secret_ld.i135.i = load i32, i32* %_secret_cast.i134.i, align 4
  store i32 %_secret_ld.i135.i, i32* %_secret_ptr25.i, align 4
  %_secret_ptr37.i = getelementptr inbounds i32, i32* %_secret_arrtoptr, i64 15
  %_secret_source_gep42.i = getelementptr inbounds i8, i8* %_secret_arrarg10, i64 8
  %_secret_cast.i132.i = bitcast i8* %_secret_source_gep42.i to i32*
  %_secret_ld.i133.i = load i32, i32* %_secret_cast.i132.i, align 4
  store i32 %_secret_ld.i133.i, i32* %_secret_ptr37.i, align 4
  %_secret_ptr49.i = getelementptr inbounds i32, i32* %_secret_arrtoptr, i64 12
  %_secret_source_gep54.i = getelementptr inbounds i8, i8* %_secret_arrarg10, i64 12
  %_secret_cast.i130.i = bitcast i8* %_secret_source_gep54.i to i32*
  %_secret_ld.i131.i = load i32, i32* %_secret_cast.i130.i, align 4
  store i32 %_secret_ld.i131.i, i32* %_secret_ptr49.i, align 4
  %_secret_ptr61.i = getelementptr inbounds i32, i32* %_secret_arrtoptr, i64 7
  %_secret_source_gep66.i = getelementptr inbounds i8, i8* %_secret_arrarg10, i64 16
  %_secret_cast.i128.i = bitcast i8* %_secret_source_gep66.i to i32*
  %_secret_ld.i129.i = load i32, i32* %_secret_cast.i128.i, align 4
  store i32 %_secret_ld.i129.i, i32* %_secret_ptr61.i, align 4
  %_secret_ptr73.i = getelementptr inbounds i32, i32* %_secret_arrtoptr, i64 4
  %_secret_source_gep78.i = getelementptr inbounds i8, i8* %_secret_arrarg10, i64 20
  %_secret_cast.i126.i = bitcast i8* %_secret_source_gep78.i to i32*
  %_secret_ld.i127.i = load i32, i32* %_secret_cast.i126.i, align 4
  store i32 %_secret_ld.i127.i, i32* %_secret_ptr73.i, align 4
  %_secret_ptr85.i = getelementptr inbounds i32, i32* %_secret_arrtoptr, i64 9
  %_secret_source_gep90.i = getelementptr inbounds i8, i8* %_secret_arrarg10, i64 24
  %_secret_cast.i124.i = bitcast i8* %_secret_source_gep90.i to i32*
  %_secret_ld.i125.i = load i32, i32* %_secret_cast.i124.i, align 4
  store i32 %_secret_ld.i125.i, i32* %_secret_ptr85.i, align 4
  %_secret_ptr97.i = getelementptr inbounds i32, i32* %_secret_arrtoptr, i64 14
  %_secret_source_gep102.i = getelementptr inbounds i8, i8* %_secret_arrarg10, i64 28
  %_secret_cast.i122.i = bitcast i8* %_secret_source_gep102.i to i32*
  %_secret_ld.i123.i = load i32, i32* %_secret_cast.i122.i, align 4
  store i32 %_secret_ld.i123.i, i32* %_secret_ptr97.i, align 4
  store i32 1634760805, i32* %_secret_arrtoptr, align 4
  %_secret_ptr113.i = getelementptr inbounds i32, i32* %_secret_arrtoptr, i64 1
  store i32 857760878, i32* %_secret_ptr113.i, align 4
  %_secret_ptr117.i = getelementptr inbounds i32, i32* %_secret_arrtoptr, i64 2
  store i32 2036477234, i32* %_secret_ptr117.i, align 4
  %_secret_ptr121.i = getelementptr inbounds i32, i32* %_secret_arrtoptr, i64 3
  store i32 1797285236, i32* %_secret_ptr121.i, align 4
  %_secret_ptr.i1 = getelementptr inbounds i32, i32* %_secret_arrtoptr, i64 6
  %_secret_cast.i.i2 = bitcast i8* %_secret_arrarg7 to i32*
  %_secret_ld.i.i3 = load i32, i32* %_secret_cast.i.i2, align 4
  store i32 %_secret_ld.i.i3, i32* %_secret_ptr.i1, align 4
  %_secret_ptr26.i = getelementptr inbounds i32, i32* %_secret_arrtoptr, i64 11
  %_secret_source_gep31.i = getelementptr inbounds i8, i8* %_secret_arrarg7, i64 4
  %_secret_cast.i60.i = bitcast i8* %_secret_source_gep31.i to i32*
  %_secret_ld.i61.i = load i32, i32* %_secret_cast.i60.i, align 4
  store i32 %_secret_ld.i61.i, i32* %_secret_ptr26.i, align 4
  %_secret_ptr38.i = getelementptr inbounds i32, i32* %_secret_arrtoptr, i64 8
  %_secret_cast.i58.i = bitcast i8* %_public_arrtoptr to i32*
  %_secret_ld.i59.i = load i32, i32* %_secret_cast.i58.i, align 4
  store i32 %_secret_ld.i59.i, i32* %_secret_ptr38.i, align 4
  %_secret_ptr47.i = getelementptr inbounds i32, i32* %_secret_arrtoptr, i64 13
  %_public_source_gep52.i = getelementptr inbounds i8, i8* %_public_arrtoptr, i64 4
  %_secret_cast.i56.i = bitcast i8* %_public_source_gep52.i to i32*
  %_secret_ld.i57.i = load i32, i32* %_secret_cast.i56.i, align 4
  store i32 %_secret_ld.i57.i, i32* %_secret_ptr47.i, align 4
  call fastcc void @u0(i32* %_secret_arrtoptr, i8* %_secret_arrarg4, i32 %_public___m_len5, i8* %_secret_arrarg1, i32 %_public___c_len2) #3
  call fastcc void @_memzero32(i32* nonnull %_secret_arrtoptr)
  ret void
}

; Function Attrs: norecurse nounwind
define internal fastcc void @_crypto_core_hsalsa20(i8* nocapture %_secret_arrarg1, i8* nocapture readonly %_secret_arrarg3, i8* nocapture readonly %_secret_arrarg5) unnamed_addr #2 {
entry:
  %_secret_cast.i = bitcast i8* %_secret_arrarg5 to i32*
  %_secret_ld.i = load i32, i32* %_secret_cast.i, align 4
  %_secret_source_gep13 = getelementptr inbounds i8, i8* %_secret_arrarg5, i64 4
  %_secret_cast.i488 = bitcast i8* %_secret_source_gep13 to i32*
  %_secret_ld.i489 = load i32, i32* %_secret_cast.i488, align 4
  %_secret_source_gep21 = getelementptr inbounds i8, i8* %_secret_arrarg5, i64 8
  %_secret_cast.i486 = bitcast i8* %_secret_source_gep21 to i32*
  %_secret_ld.i487 = load i32, i32* %_secret_cast.i486, align 4
  %_secret_source_gep29 = getelementptr inbounds i8, i8* %_secret_arrarg5, i64 12
  %_secret_cast.i484 = bitcast i8* %_secret_source_gep29 to i32*
  %_secret_ld.i485 = load i32, i32* %_secret_cast.i484, align 4
  %_secret_source_gep37 = getelementptr inbounds i8, i8* %_secret_arrarg5, i64 16
  %_secret_cast.i482 = bitcast i8* %_secret_source_gep37 to i32*
  %_secret_ld.i483 = load i32, i32* %_secret_cast.i482, align 4
  %_secret_source_gep45 = getelementptr inbounds i8, i8* %_secret_arrarg5, i64 20
  %_secret_cast.i480 = bitcast i8* %_secret_source_gep45 to i32*
  %_secret_ld.i481 = load i32, i32* %_secret_cast.i480, align 4
  %_secret_source_gep53 = getelementptr inbounds i8, i8* %_secret_arrarg5, i64 24
  %_secret_cast.i478 = bitcast i8* %_secret_source_gep53 to i32*
  %_secret_ld.i479 = load i32, i32* %_secret_cast.i478, align 4
  %_secret_source_gep61 = getelementptr inbounds i8, i8* %_secret_arrarg5, i64 28
  %_secret_cast.i476 = bitcast i8* %_secret_source_gep61 to i32*
  %_secret_ld.i477 = load i32, i32* %_secret_cast.i476, align 4
  %_secret_cast.i474 = bitcast i8* %_secret_arrarg3 to i32*
  %_secret_ld.i475 = load i32, i32* %_secret_cast.i474, align 4
  %_secret_source_gep77 = getelementptr inbounds i8, i8* %_secret_arrarg3, i64 4
  %_secret_cast.i472 = bitcast i8* %_secret_source_gep77 to i32*
  %_secret_ld.i473 = load i32, i32* %_secret_cast.i472, align 4
  %_secret_source_gep85 = getelementptr inbounds i8, i8* %_secret_arrarg3, i64 8
  %_secret_cast.i470 = bitcast i8* %_secret_source_gep85 to i32*
  %_secret_ld.i471 = load i32, i32* %_secret_cast.i470, align 4
  %_secret_source_gep93 = getelementptr inbounds i8, i8* %_secret_arrarg3, i64 12
  %_secret_cast.i468 = bitcast i8* %_secret_source_gep93 to i32*
  %_secret_ld.i469 = load i32, i32* %_secret_cast.i468, align 4
  br label %loop_body

loop_body:                                        ; preds = %entry, %loop_body
  %_public___v171_i.0366 = phi i32 [ 0, %entry ], [ %_public_addtmp, %loop_body ]
  %_secret___v170_x9.0365 = phi i32 [ %_secret_ld.i469, %entry ], [ %_secret_xortmp254, %loop_body ]
  %_secret___v169_x8.0364 = phi i32 [ %_secret_ld.i471, %entry ], [ %_secret_xortmp248, %loop_body ]
  %_secret___v168_x7.0363 = phi i32 [ %_secret_ld.i473, %entry ], [ %_secret_xortmp224, %loop_body ]
  %_secret___v155_x0.0362 = phi i32 [ 1634760805, %entry ], [ %_secret_xortmp212, %loop_body ]
  %_secret___v156_x5.0361 = phi i32 [ 857760878, %entry ], [ %_secret_xortmp236, %loop_body ]
  %_secret___v157_x10.0360 = phi i32 [ 2036477234, %entry ], [ %_secret_xortmp260, %loop_body ]
  %_secret___v158_x15.0359 = phi i32 [ 1797285236, %entry ], [ %_secret_xortmp284, %loop_body ]
  %_secret___v159_x1.0358 = phi i32 [ %_secret_ld.i, %entry ], [ %_secret_xortmp194, %loop_body ]
  %_secret___v160_x2.0357 = phi i32 [ %_secret_ld.i489, %entry ], [ %_secret_xortmp200, %loop_body ]
  %_secret___v161_x3.0356 = phi i32 [ %_secret_ld.i487, %entry ], [ %_secret_xortmp206, %loop_body ]
  %_secret___v162_x4.0355 = phi i32 [ %_secret_ld.i485, %entry ], [ %_secret_xortmp230, %loop_body ]
  %_secret___v163_x11.0354 = phi i32 [ %_secret_ld.i483, %entry ], [ %_secret_xortmp242, %loop_body ]
  %_secret___v164_x12.0353 = phi i32 [ %_secret_ld.i481, %entry ], [ %_secret_xortmp266, %loop_body ]
  %_secret___v165_x13.0352 = phi i32 [ %_secret_ld.i479, %entry ], [ %_secret_xortmp272, %loop_body ]
  %_secret___v166_x14.0351 = phi i32 [ %_secret_ld.i477, %entry ], [ %_secret_xortmp278, %loop_body ]
  %_secret___v167_x6.0350 = phi i32 [ %_secret_ld.i475, %entry ], [ %_secret_xortmp218, %loop_body ]
  %_secret_addtmp = add i32 %_secret___v155_x0.0362, %_secret___v164_x12.0353
  %_secret_lshift.i465 = shl i32 %_secret_addtmp, 7
  %_secret_lrshift.i466 = lshr i32 %_secret_addtmp, 25
  %_secret_rotltmp.i467 = or i32 %_secret_lrshift.i466, %_secret_lshift.i465
  %_secret_xortmp = xor i32 %_secret_rotltmp.i467, %_secret___v162_x4.0355
  %_secret_addtmp102 = add i32 %_secret_xortmp, %_secret___v155_x0.0362
  %_secret_lshift.i462 = shl i32 %_secret_addtmp102, 9
  %_secret_lrshift.i463 = lshr i32 %_secret_addtmp102, 23
  %_secret_rotltmp.i464 = or i32 %_secret_lrshift.i463, %_secret_lshift.i462
  %_secret_xortmp104 = xor i32 %_secret_rotltmp.i464, %_secret___v169_x8.0364
  %_secret_addtmp108 = add i32 %_secret_xortmp104, %_secret_xortmp
  %_secret_lshift.i459 = shl i32 %_secret_addtmp108, 13
  %_secret_lrshift.i460 = lshr i32 %_secret_addtmp108, 19
  %_secret_rotltmp.i461 = or i32 %_secret_lrshift.i460, %_secret_lshift.i459
  %_secret_xortmp110 = xor i32 %_secret_rotltmp.i461, %_secret___v164_x12.0353
  %_secret_addtmp114 = add i32 %_secret_xortmp110, %_secret_xortmp104
  %_secret_lshift.i456 = shl i32 %_secret_addtmp114, 18
  %_secret_lrshift.i457 = lshr i32 %_secret_addtmp114, 14
  %_secret_rotltmp.i458 = or i32 %_secret_lrshift.i457, %_secret_lshift.i456
  %_secret_xortmp116 = xor i32 %_secret_rotltmp.i458, %_secret___v155_x0.0362
  %_secret_addtmp120 = add i32 %_secret___v156_x5.0361, %_secret___v159_x1.0358
  %_secret_lshift.i453 = shl i32 %_secret_addtmp120, 7
  %_secret_lrshift.i454 = lshr i32 %_secret_addtmp120, 25
  %_secret_rotltmp.i455 = or i32 %_secret_lrshift.i454, %_secret_lshift.i453
  %_secret_xortmp122 = xor i32 %_secret_rotltmp.i455, %_secret___v170_x9.0365
  %_secret_addtmp126 = add i32 %_secret_xortmp122, %_secret___v156_x5.0361
  %_secret_lshift.i450 = shl i32 %_secret_addtmp126, 9
  %_secret_lrshift.i451 = lshr i32 %_secret_addtmp126, 23
  %_secret_rotltmp.i452 = or i32 %_secret_lrshift.i451, %_secret_lshift.i450
  %_secret_xortmp128 = xor i32 %_secret_rotltmp.i452, %_secret___v165_x13.0352
  %_secret_addtmp132 = add i32 %_secret_xortmp128, %_secret_xortmp122
  %_secret_lshift.i447 = shl i32 %_secret_addtmp132, 13
  %_secret_lrshift.i448 = lshr i32 %_secret_addtmp132, 19
  %_secret_rotltmp.i449 = or i32 %_secret_lrshift.i448, %_secret_lshift.i447
  %_secret_xortmp134 = xor i32 %_secret_rotltmp.i449, %_secret___v159_x1.0358
  %_secret_addtmp138 = add i32 %_secret_xortmp134, %_secret_xortmp128
  %_secret_lshift.i444 = shl i32 %_secret_addtmp138, 18
  %_secret_lrshift.i445 = lshr i32 %_secret_addtmp138, 14
  %_secret_rotltmp.i446 = or i32 %_secret_lrshift.i445, %_secret_lshift.i444
  %_secret_xortmp140 = xor i32 %_secret_rotltmp.i446, %_secret___v156_x5.0361
  %_secret_addtmp144 = add i32 %_secret___v157_x10.0360, %_secret___v167_x6.0350
  %_secret_lshift.i441 = shl i32 %_secret_addtmp144, 7
  %_secret_lrshift.i442 = lshr i32 %_secret_addtmp144, 25
  %_secret_rotltmp.i443 = or i32 %_secret_lrshift.i442, %_secret_lshift.i441
  %_secret_xortmp146 = xor i32 %_secret_rotltmp.i443, %_secret___v166_x14.0351
  %_secret_addtmp150 = add i32 %_secret_xortmp146, %_secret___v157_x10.0360
  %_secret_lshift.i438 = shl i32 %_secret_addtmp150, 9
  %_secret_lrshift.i439 = lshr i32 %_secret_addtmp150, 23
  %_secret_rotltmp.i440 = or i32 %_secret_lrshift.i439, %_secret_lshift.i438
  %_secret_xortmp152 = xor i32 %_secret_rotltmp.i440, %_secret___v160_x2.0357
  %_secret_addtmp156 = add i32 %_secret_xortmp152, %_secret_xortmp146
  %_secret_lshift.i435 = shl i32 %_secret_addtmp156, 13
  %_secret_lrshift.i436 = lshr i32 %_secret_addtmp156, 19
  %_secret_rotltmp.i437 = or i32 %_secret_lrshift.i436, %_secret_lshift.i435
  %_secret_xortmp158 = xor i32 %_secret_rotltmp.i437, %_secret___v167_x6.0350
  %_secret_addtmp162 = add i32 %_secret_xortmp158, %_secret_xortmp152
  %_secret_lshift.i432 = shl i32 %_secret_addtmp162, 18
  %_secret_lrshift.i433 = lshr i32 %_secret_addtmp162, 14
  %_secret_rotltmp.i434 = or i32 %_secret_lrshift.i433, %_secret_lshift.i432
  %_secret_xortmp164 = xor i32 %_secret_rotltmp.i434, %_secret___v157_x10.0360
  %_secret_addtmp168 = add i32 %_secret___v158_x15.0359, %_secret___v163_x11.0354
  %_secret_lshift.i429 = shl i32 %_secret_addtmp168, 7
  %_secret_lrshift.i430 = lshr i32 %_secret_addtmp168, 25
  %_secret_rotltmp.i431 = or i32 %_secret_lrshift.i430, %_secret_lshift.i429
  %_secret_xortmp170 = xor i32 %_secret_rotltmp.i431, %_secret___v161_x3.0356
  %_secret_addtmp174 = add i32 %_secret_xortmp170, %_secret___v158_x15.0359
  %_secret_lshift.i426 = shl i32 %_secret_addtmp174, 9
  %_secret_lrshift.i427 = lshr i32 %_secret_addtmp174, 23
  %_secret_rotltmp.i428 = or i32 %_secret_lrshift.i427, %_secret_lshift.i426
  %_secret_xortmp176 = xor i32 %_secret_rotltmp.i428, %_secret___v168_x7.0363
  %_secret_addtmp180 = add i32 %_secret_xortmp176, %_secret_xortmp170
  %_secret_lshift.i423 = shl i32 %_secret_addtmp180, 13
  %_secret_lrshift.i424 = lshr i32 %_secret_addtmp180, 19
  %_secret_rotltmp.i425 = or i32 %_secret_lrshift.i424, %_secret_lshift.i423
  %_secret_xortmp182 = xor i32 %_secret_rotltmp.i425, %_secret___v163_x11.0354
  %_secret_addtmp186 = add i32 %_secret_xortmp182, %_secret_xortmp176
  %_secret_lshift.i420 = shl i32 %_secret_addtmp186, 18
  %_secret_lrshift.i421 = lshr i32 %_secret_addtmp186, 14
  %_secret_rotltmp.i422 = or i32 %_secret_lrshift.i421, %_secret_lshift.i420
  %_secret_xortmp188 = xor i32 %_secret_rotltmp.i422, %_secret___v158_x15.0359
  %_secret_addtmp192 = add i32 %_secret_xortmp170, %_secret_xortmp116
  %_secret_lshift.i417 = shl i32 %_secret_addtmp192, 7
  %_secret_lrshift.i418 = lshr i32 %_secret_addtmp192, 25
  %_secret_rotltmp.i419 = or i32 %_secret_lrshift.i418, %_secret_lshift.i417
  %_secret_xortmp194 = xor i32 %_secret_rotltmp.i419, %_secret_xortmp134
  %_secret_addtmp198 = add i32 %_secret_xortmp194, %_secret_xortmp116
  %_secret_lshift.i414 = shl i32 %_secret_addtmp198, 9
  %_secret_lrshift.i415 = lshr i32 %_secret_addtmp198, 23
  %_secret_rotltmp.i416 = or i32 %_secret_lrshift.i415, %_secret_lshift.i414
  %_secret_xortmp200 = xor i32 %_secret_rotltmp.i416, %_secret_xortmp152
  %_secret_addtmp204 = add i32 %_secret_xortmp200, %_secret_xortmp194
  %_secret_lshift.i411 = shl i32 %_secret_addtmp204, 13
  %_secret_lrshift.i412 = lshr i32 %_secret_addtmp204, 19
  %_secret_rotltmp.i413 = or i32 %_secret_lrshift.i412, %_secret_lshift.i411
  %_secret_xortmp206 = xor i32 %_secret_rotltmp.i413, %_secret_xortmp170
  %_secret_addtmp210 = add i32 %_secret_xortmp206, %_secret_xortmp200
  %_secret_lshift.i408 = shl i32 %_secret_addtmp210, 18
  %_secret_lrshift.i409 = lshr i32 %_secret_addtmp210, 14
  %_secret_rotltmp.i410 = or i32 %_secret_lrshift.i409, %_secret_lshift.i408
  %_secret_xortmp212 = xor i32 %_secret_rotltmp.i410, %_secret_xortmp116
  %_secret_addtmp216 = add i32 %_secret_xortmp140, %_secret_xortmp
  %_secret_lshift.i405 = shl i32 %_secret_addtmp216, 7
  %_secret_lrshift.i406 = lshr i32 %_secret_addtmp216, 25
  %_secret_rotltmp.i407 = or i32 %_secret_lrshift.i406, %_secret_lshift.i405
  %_secret_xortmp218 = xor i32 %_secret_rotltmp.i407, %_secret_xortmp158
  %_secret_addtmp222 = add i32 %_secret_xortmp218, %_secret_xortmp140
  %_secret_lshift.i402 = shl i32 %_secret_addtmp222, 9
  %_secret_lrshift.i403 = lshr i32 %_secret_addtmp222, 23
  %_secret_rotltmp.i404 = or i32 %_secret_lrshift.i403, %_secret_lshift.i402
  %_secret_xortmp224 = xor i32 %_secret_rotltmp.i404, %_secret_xortmp176
  %_secret_addtmp228 = add i32 %_secret_xortmp224, %_secret_xortmp218
  %_secret_lshift.i399 = shl i32 %_secret_addtmp228, 13
  %_secret_lrshift.i400 = lshr i32 %_secret_addtmp228, 19
  %_secret_rotltmp.i401 = or i32 %_secret_lrshift.i400, %_secret_lshift.i399
  %_secret_xortmp230 = xor i32 %_secret_rotltmp.i401, %_secret_xortmp
  %_secret_addtmp234 = add i32 %_secret_xortmp230, %_secret_xortmp224
  %_secret_lshift.i396 = shl i32 %_secret_addtmp234, 18
  %_secret_lrshift.i397 = lshr i32 %_secret_addtmp234, 14
  %_secret_rotltmp.i398 = or i32 %_secret_lrshift.i397, %_secret_lshift.i396
  %_secret_xortmp236 = xor i32 %_secret_rotltmp.i398, %_secret_xortmp140
  %_secret_addtmp240 = add i32 %_secret_xortmp164, %_secret_xortmp122
  %_secret_lshift.i393 = shl i32 %_secret_addtmp240, 7
  %_secret_lrshift.i394 = lshr i32 %_secret_addtmp240, 25
  %_secret_rotltmp.i395 = or i32 %_secret_lrshift.i394, %_secret_lshift.i393
  %_secret_xortmp242 = xor i32 %_secret_rotltmp.i395, %_secret_xortmp182
  %_secret_addtmp246 = add i32 %_secret_xortmp242, %_secret_xortmp164
  %_secret_lshift.i390 = shl i32 %_secret_addtmp246, 9
  %_secret_lrshift.i391 = lshr i32 %_secret_addtmp246, 23
  %_secret_rotltmp.i392 = or i32 %_secret_lrshift.i391, %_secret_lshift.i390
  %_secret_xortmp248 = xor i32 %_secret_rotltmp.i392, %_secret_xortmp104
  %_secret_addtmp252 = add i32 %_secret_xortmp248, %_secret_xortmp242
  %_secret_lshift.i387 = shl i32 %_secret_addtmp252, 13
  %_secret_lrshift.i388 = lshr i32 %_secret_addtmp252, 19
  %_secret_rotltmp.i389 = or i32 %_secret_lrshift.i388, %_secret_lshift.i387
  %_secret_xortmp254 = xor i32 %_secret_rotltmp.i389, %_secret_xortmp122
  %_secret_addtmp258 = add i32 %_secret_xortmp254, %_secret_xortmp248
  %_secret_lshift.i384 = shl i32 %_secret_addtmp258, 18
  %_secret_lrshift.i385 = lshr i32 %_secret_addtmp258, 14
  %_secret_rotltmp.i386 = or i32 %_secret_lrshift.i385, %_secret_lshift.i384
  %_secret_xortmp260 = xor i32 %_secret_rotltmp.i386, %_secret_xortmp164
  %_secret_addtmp264 = add i32 %_secret_xortmp188, %_secret_xortmp146
  %_secret_lshift.i381 = shl i32 %_secret_addtmp264, 7
  %_secret_lrshift.i382 = lshr i32 %_secret_addtmp264, 25
  %_secret_rotltmp.i383 = or i32 %_secret_lrshift.i382, %_secret_lshift.i381
  %_secret_xortmp266 = xor i32 %_secret_rotltmp.i383, %_secret_xortmp110
  %_secret_addtmp270 = add i32 %_secret_xortmp266, %_secret_xortmp188
  %_secret_lshift.i378 = shl i32 %_secret_addtmp270, 9
  %_secret_lrshift.i379 = lshr i32 %_secret_addtmp270, 23
  %_secret_rotltmp.i380 = or i32 %_secret_lrshift.i379, %_secret_lshift.i378
  %_secret_xortmp272 = xor i32 %_secret_rotltmp.i380, %_secret_xortmp128
  %_secret_addtmp276 = add i32 %_secret_xortmp272, %_secret_xortmp266
  %_secret_lshift.i375 = shl i32 %_secret_addtmp276, 13
  %_secret_lrshift.i376 = lshr i32 %_secret_addtmp276, 19
  %_secret_rotltmp.i377 = or i32 %_secret_lrshift.i376, %_secret_lshift.i375
  %_secret_xortmp278 = xor i32 %_secret_rotltmp.i377, %_secret_xortmp146
  %_secret_addtmp282 = add i32 %_secret_xortmp278, %_secret_xortmp272
  %_secret_lshift.i = shl i32 %_secret_addtmp282, 18
  %_secret_lrshift.i = lshr i32 %_secret_addtmp282, 14
  %_secret_rotltmp.i = or i32 %_secret_lrshift.i, %_secret_lshift.i
  %_secret_xortmp284 = xor i32 %_secret_rotltmp.i, %_secret_xortmp188
  %_public_addtmp = add nuw nsw i32 %_public___v171_i.0366, 1
  %_public_ulttmp = icmp ult i32 %_public_addtmp, 10
  br i1 %_public_ulttmp, label %loop_body, label %loop_end

loop_end:                                         ; preds = %loop_body
  %_secret_cast.i374 = bitcast i8* %_secret_arrarg1 to i32*
  store i32 %_secret_xortmp212, i32* %_secret_cast.i374, align 4
  %_secret_source_gep298 = getelementptr inbounds i8, i8* %_secret_arrarg1, i64 4
  %_secret_cast.i373 = bitcast i8* %_secret_source_gep298 to i32*
  store i32 %_secret_xortmp236, i32* %_secret_cast.i373, align 4
  %_secret_source_gep306 = getelementptr inbounds i8, i8* %_secret_arrarg1, i64 8
  %_secret_cast.i372 = bitcast i8* %_secret_source_gep306 to i32*
  store i32 %_secret_xortmp260, i32* %_secret_cast.i372, align 4
  %_secret_source_gep314 = getelementptr inbounds i8, i8* %_secret_arrarg1, i64 12
  %_secret_cast.i371 = bitcast i8* %_secret_source_gep314 to i32*
  store i32 %_secret_xortmp284, i32* %_secret_cast.i371, align 4
  %_secret_source_gep322 = getelementptr inbounds i8, i8* %_secret_arrarg1, i64 16
  %_secret_cast.i370 = bitcast i8* %_secret_source_gep322 to i32*
  store i32 %_secret_xortmp218, i32* %_secret_cast.i370, align 4
  %_secret_source_gep330 = getelementptr inbounds i8, i8* %_secret_arrarg1, i64 20
  %_secret_cast.i369 = bitcast i8* %_secret_source_gep330 to i32*
  store i32 %_secret_xortmp224, i32* %_secret_cast.i369, align 4
  %_secret_source_gep338 = getelementptr inbounds i8, i8* %_secret_arrarg1, i64 24
  %_secret_cast.i368 = bitcast i8* %_secret_source_gep338 to i32*
  store i32 %_secret_xortmp248, i32* %_secret_cast.i368, align 4
  %_secret_source_gep346 = getelementptr inbounds i8, i8* %_secret_arrarg1, i64 28
  %_secret_cast.i367 = bitcast i8* %_secret_source_gep346 to i32*
  store i32 %_secret_xortmp254, i32* %_secret_cast.i367, align 4
  ret void
}

; Function Attrs: nounwind
define internal fastcc i1 @_crypto_secretbox_xsalsa20poly1305_open(i8* nocapture %_secret_arrarg1, i32 %_public___m_len2, i8* nocapture readonly %_public_arrarg3, i32 %_public___c_len4, i8* nocapture readonly %_public_arrarg6, i8* nocapture readonly %_secret_arrarg8) unnamed_addr #3 {
entry:
  %_secret___v46_correct.i = alloca [16 x i8], align 1
  %_secret___v172_subkey.i = alloca [32 x i8], align 1
  %_public_ulttmp = icmp ult i32 %_public___c_len4, 32
  br i1 %_public_ulttmp, label %thenbranch, label %branchmerge

thenbranch:                                       ; preds = %branchmerge21, %_crypto_onetimeauth_poly1305_verify.exit, %entry
  %_public_merge = phi i1 [ false, %_crypto_onetimeauth_poly1305_verify.exit ], [ false, %entry ], [ true, %branchmerge21 ]
  ret i1 %_public_merge

branchmerge:                                      ; preds = %entry
  %_secret___v183_subkey = alloca [32 x i8], align 1
  %_secret_arrtoptr = getelementptr inbounds [32 x i8], [32 x i8]* %_secret___v183_subkey, i64 0, i64 0
  %_secret_41 = bitcast [32 x i8]* %_secret___v172_subkey.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* %_secret_41)
  %_secret_arrtoptr.i = getelementptr inbounds [32 x i8], [32 x i8]* %_secret___v172_subkey.i, i64 0, i64 0
  call fastcc void @_crypto_core_hsalsa20(i8* nonnull %_secret_arrtoptr.i, i8* %_public_arrarg6, i8* %_secret_arrarg8) #3
  %_public_source_gep15.i = getelementptr inbounds i8, i8* %_public_arrarg6, i64 16
  call fastcc void @_crypto_stream_salsa20(i8* %_secret_arrtoptr, i32 32, i8* nonnull %_public_source_gep15.i, i8* nonnull %_secret_arrtoptr.i) #3
  call fastcc void @_memzero(i8* %_secret_arrtoptr.i, i32 32) #3
  %_secret_42 = bitcast [32 x i8]* %_secret___v172_subkey.i to i8*
  call void @llvm.lifetime.end.p0i8(i64 32, i8* %_secret_42)
  %_public_source_gep = getelementptr inbounds i8, i8* %_public_arrarg3, i64 16
  %_public_subtmp = add i32 %_public___c_len4, -32
  %_public_source_gep12 = getelementptr inbounds i8, i8* %_public_arrarg3, i64 32
  %_secret_43 = bitcast [16 x i8]* %_secret___v46_correct.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %_secret_43)
  %_secret_arrtoptr.i34 = getelementptr inbounds [16 x i8], [16 x i8]* %_secret___v46_correct.i, i64 0, i64 0
  call fastcc void @_crypto_onetimeauth_poly1305(i8* nonnull %_secret_arrtoptr.i34, i8* %_public_source_gep12, i32 %_public_subtmp, i8* %_secret_arrtoptr) #3
  br label %loop_body.i.i

loop_body.i.i:                                    ; preds = %loop_body.i.i, %branchmerge
  %_public___v1_i.035.i.i = phi i32 [ 0, %branchmerge ], [ %_public_addtmp.i.i, %loop_body.i.i ]
  %_secret___rnset.034.i.i = phi i1 [ true, %branchmerge ], [ %_secret_trunc.i38.i.i, %loop_body.i.i ]
  %_secret___rval.033.i.i = phi i1 [ false, %branchmerge ], [ %_secret_trunc.i.i.i, %loop_body.i.i ]
  %_public_ = zext i32 %_public___v1_i.035.i.i to i64
  %_secret_ptr.i.i = getelementptr inbounds i8, i8* %_public_source_gep, i64 %_public_
  %_secret_lval.i.i = load i8, i8* %_secret_ptr.i.i, align 1
  %_secret_ptr7.i.i = getelementptr inbounds i8, i8* %_secret_arrtoptr.i34, i64 %_public_
  %_secret_lval8.i.i = load i8, i8* %_secret_ptr7.i.i, align 1
  %_secret_neqtmp.i.i = icmp ne i8 %_secret_lval.i.i, %_secret_lval8.i.i
  %_secret_landtmp11.i.i = and i1 %_secret___rnset.034.i.i, %_secret_neqtmp.i.i
  %_secret_zext1.i.i.i = zext i1 %_secret___rval.033.i.i to i32
  %_secret_asm.i.i.i = call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %_secret_landtmp11.i.i, i32 0, i32 %_secret_zext1.i.i.i) #3
  %_secret_39 = and i32 %_secret_asm.i.i.i, 1
  %_secret_trunc.i.i.i = icmp ne i32 %_secret_39, 0
  %_secret_zext1.i36.i.i = zext i1 %_secret___rnset.034.i.i to i32
  %_secret_asm.i37.i.i = call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %_secret_landtmp11.i.i, i32 0, i32 %_secret_zext1.i36.i.i) #3
  %_secret_40 = and i32 %_secret_asm.i37.i.i, 1
  %_secret_trunc.i38.i.i = icmp ne i32 %_secret_40, 0
  %_public_addtmp.i.i = add nuw nsw i32 %_public___v1_i.035.i.i, 1
  %_public_ulttmp.i.i = icmp ult i32 %_public_addtmp.i.i, 16
  br i1 %_public_ulttmp.i.i, label %loop_body.i.i, label %_crypto_onetimeauth_poly1305_verify.exit

_crypto_onetimeauth_poly1305_verify.exit:         ; preds = %loop_body.i.i
  %_secret_zext1.i39.i.i = zext i1 %_secret_trunc.i.i.i to i32
  %_secret_asm.i40.i.i = call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %_secret_trunc.i38.i.i, i32 1, i32 %_secret_zext1.i39.i.i) #3
  %_secret_36 = and i32 %_secret_asm.i40.i.i, 1
  %_secret_trunc.i41.i.i = icmp ne i32 %_secret_36, 0
  %_secret_zext1.i42.i.i = zext i1 %_secret_trunc.i38.i.i to i32
  %_secret_asm.i43.i.i = call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %_secret_trunc.i38.i.i, i32 0, i32 %_secret_zext1.i42.i.i) #3
  %_secret_37 = and i32 %_secret_asm.i43.i.i, 1
  %_secret_trunc.i44.i.i = icmp ne i32 %_secret_37, 0
  %_declassified_res.i = call fastcc i1 @fact.declassify.i1(i1 %_secret_trunc.i41.i.i) #3
  %_secret_38 = bitcast [16 x i8]* %_secret___v46_correct.i to i8*
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %_secret_38)
  br i1 %_declassified_res.i, label %branchmerge21, label %thenbranch

branchmerge21:                                    ; preds = %_crypto_onetimeauth_poly1305_verify.exit
  %_secret_ = bitcast [32 x i8]* %_secret___v172_subkey.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* %_secret_) #3
  %_secret_arrtoptr.i.i = getelementptr inbounds [32 x i8], [32 x i8]* %_secret___v172_subkey.i, i64 0, i64 0
  call fastcc void @_crypto_core_hsalsa20(i8* nonnull %_secret_arrtoptr.i.i, i8* %_public_arrarg6, i8* %_secret_arrarg8) #3
  %_public_source_gep15.i.i = getelementptr inbounds i8, i8* %_public_arrarg6, i64 16
  call fastcc void @_crypto_stream_salsa20_xor_ic(i8* %_secret_arrarg1, i32 %_public___m_len2, i8* %_public_arrarg3, i32 %_public___c_len4, i8* nonnull %_public_source_gep15.i.i, i64 0, i8* nonnull %_secret_arrtoptr.i.i) #3
  call fastcc void @_memzero(i8* %_secret_arrtoptr.i.i, i32 32) #3
  %_secret_35 = bitcast [32 x i8]* %_secret___v172_subkey.i to i8*
  call void @llvm.lifetime.end.p0i8(i64 32, i8* %_secret_35) #3
  call void @llvm.memset.p0i8.i64(i8* %_secret_arrarg1, i8 0, i64 32, i32 1, i1 false)
  br label %thenbranch
}

; Function Attrs: nounwind
define i1 @_crypto_secretbox(i8* nocapture %_secret_arrarg1, i32 %_public___c_len2, i8* nocapture readonly %_secret_arrarg4, i32 %_public___m_len5, i8* nocapture readonly %_public_arrarg6, i8* nocapture readonly %_secret_arrarg8) local_unnamed_addr #3 {
entry:
  %_secret___v174_subkey.i.i.i = alloca [32 x i8], align 1
  %_public_ulttmp.i = icmp ult i32 %_public___m_len5, 32
  br i1 %_public_ulttmp.i, label %_crypto_secretbox_xsalsa20poly1305.exit, label %branchmerge.i

branchmerge.i:                                    ; preds = %entry
  %_secret_ = bitcast [32 x i8]* %_secret___v174_subkey.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* %_secret_) #3
  %_secret_arrtoptr.i.i.i = getelementptr inbounds [32 x i8], [32 x i8]* %_secret___v174_subkey.i.i.i, i64 0, i64 0
  call fastcc void @_crypto_core_hsalsa20(i8* nonnull %_secret_arrtoptr.i.i.i, i8* %_public_arrarg6, i8* %_secret_arrarg8) #3
  %_public_source_gep15.i.i.i = getelementptr inbounds i8, i8* %_public_arrarg6, i64 16
  call fastcc void @_crypto_stream_salsa20_xor_ic(i8* %_secret_arrarg1, i32 %_public___c_len2, i8* %_secret_arrarg4, i32 %_public___m_len5, i8* nonnull %_public_source_gep15.i.i.i, i64 0, i8* nonnull %_secret_arrtoptr.i.i.i) #3
  call fastcc void @_memzero(i8* %_secret_arrtoptr.i.i.i, i32 32) #3
  %_secret_13 = bitcast [32 x i8]* %_secret___v174_subkey.i.i.i to i8*
  call void @llvm.lifetime.end.p0i8(i64 32, i8* %_secret_13) #3
  %_secret_source_gep.i = getelementptr inbounds i8, i8* %_secret_arrarg1, i64 16
  %_public_subtmp.i = add i32 %_public___c_len2, -32
  %_secret_source_gep16.i = getelementptr inbounds i8, i8* %_secret_arrarg1, i64 32
  tail call fastcc void @_crypto_onetimeauth_poly1305(i8* nonnull %_secret_source_gep.i, i8* nonnull %_secret_source_gep16.i, i32 %_public_subtmp.i, i8* %_secret_arrarg1) #3
  call void @llvm.memset.p0i8.i64(i8* %_secret_arrarg1, i8 0, i64 16, i32 1, i1 false) #3
  br label %_crypto_secretbox_xsalsa20poly1305.exit

_crypto_secretbox_xsalsa20poly1305.exit:          ; preds = %entry, %branchmerge.i
  %_public_merge.i = phi i1 [ false, %entry ], [ true, %branchmerge.i ]
  ret i1 %_public_merge.i
}

; Function Attrs: nounwind
define i1 @_crypto_secretbox_open(i8* nocapture %_secret_arrarg1, i32 %_public___m_len2, i8* nocapture readonly %_public_arrarg3, i32 %_public___c_len4, i8* nocapture readonly %_public_arrarg6, i8* nocapture readonly %_secret_arrarg8) local_unnamed_addr #3 {
entry:
  %_public_calltmp = tail call fastcc i1 @_crypto_secretbox_xsalsa20poly1305_open(i8* %_secret_arrarg1, i32 %_public___m_len2, i8* %_public_arrarg3, i32 %_public___c_len4, i8* %_public_arrarg6, i8* %_secret_arrarg8)
  ret i1 %_public_calltmp
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #0

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #0

attributes #0 = { argmemonly nounwind }
attributes #1 = { noinline nounwind }
attributes #2 = { norecurse nounwind }
attributes #3 = { nounwind }
attributes #4 = { noinline norecurse nounwind readnone }
