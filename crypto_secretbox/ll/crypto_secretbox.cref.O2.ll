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

; Function Attrs: norecurse nounwind
define internal fastcc void @_crypto_core_salsa20(i8* nocapture %_secret_arrarg1, i8* nocapture readonly %_secret_arrarg3, i8* nocapture readonly %_secret_arrarg5) unnamed_addr #2 {
entry:
  %_secret_cast.i = bitcast i8* %_secret_arrarg5 to i32*
  %_secret_ld.i = load i32, i32* %_secret_cast.i, align 4
  %_secret_source_gep16 = getelementptr inbounds i8, i8* %_secret_arrarg5, i64 4
  %_secret_cast.i608 = bitcast i8* %_secret_source_gep16 to i32*
  %_secret_ld.i609 = load i32, i32* %_secret_cast.i608, align 4
  %_secret_source_gep24 = getelementptr inbounds i8, i8* %_secret_arrarg5, i64 8
  %_secret_cast.i606 = bitcast i8* %_secret_source_gep24 to i32*
  %_secret_ld.i607 = load i32, i32* %_secret_cast.i606, align 4
  %_secret_source_gep32 = getelementptr inbounds i8, i8* %_secret_arrarg5, i64 12
  %_secret_cast.i604 = bitcast i8* %_secret_source_gep32 to i32*
  %_secret_ld.i605 = load i32, i32* %_secret_cast.i604, align 4
  %_secret_source_gep40 = getelementptr inbounds i8, i8* %_secret_arrarg5, i64 16
  %_secret_cast.i602 = bitcast i8* %_secret_source_gep40 to i32*
  %_secret_ld.i603 = load i32, i32* %_secret_cast.i602, align 4
  %_secret_source_gep48 = getelementptr inbounds i8, i8* %_secret_arrarg5, i64 20
  %_secret_cast.i600 = bitcast i8* %_secret_source_gep48 to i32*
  %_secret_ld.i601 = load i32, i32* %_secret_cast.i600, align 4
  %_secret_source_gep56 = getelementptr inbounds i8, i8* %_secret_arrarg5, i64 24
  %_secret_cast.i598 = bitcast i8* %_secret_source_gep56 to i32*
  %_secret_ld.i599 = load i32, i32* %_secret_cast.i598, align 4
  %_secret_source_gep64 = getelementptr inbounds i8, i8* %_secret_arrarg5, i64 28
  %_secret_cast.i596 = bitcast i8* %_secret_source_gep64 to i32*
  %_secret_ld.i597 = load i32, i32* %_secret_cast.i596, align 4
  %_secret_cast.i594 = bitcast i8* %_secret_arrarg3 to i32*
  %_secret_ld.i595 = load i32, i32* %_secret_cast.i594, align 4
  %_secret_source_gep88 = getelementptr inbounds i8, i8* %_secret_arrarg3, i64 4
  %_secret_cast.i592 = bitcast i8* %_secret_source_gep88 to i32*
  %_secret_ld.i593 = load i32, i32* %_secret_cast.i592, align 4
  %_secret_source_gep96 = getelementptr inbounds i8, i8* %_secret_arrarg3, i64 8
  %_secret_cast.i590 = bitcast i8* %_secret_source_gep96 to i32*
  %_secret_ld.i591 = load i32, i32* %_secret_cast.i590, align 4
  %_secret_source_gep104 = getelementptr inbounds i8, i8* %_secret_arrarg3, i64 12
  %_secret_cast.i588 = bitcast i8* %_secret_source_gep104 to i32*
  %_secret_ld.i589 = load i32, i32* %_secret_cast.i588, align 4
  br label %loop_body

loop_body:                                        ; preds = %entry, %loop_body
  %_public___v79_i.0478 = phi i32 [ 0, %entry ], [ %_public_addtmp, %loop_body ]
  %_secret___v74_x9.0477 = phi i32 [ %_secret_ld.i589, %entry ], [ %_secret_xortmp270, %loop_body ]
  %_secret___v73_x8.0476 = phi i32 [ %_secret_ld.i591, %entry ], [ %_secret_xortmp264, %loop_body ]
  %_secret___v72_x7.0475 = phi i32 [ %_secret_ld.i593, %entry ], [ %_secret_xortmp240, %loop_body ]
  %_secret___v47_x0.0474 = phi i32 [ 1634760805, %entry ], [ %_secret_xortmp228, %loop_body ]
  %_secret___v48_x5.0473 = phi i32 [ 857760878, %entry ], [ %_secret_xortmp252, %loop_body ]
  %_secret___v49_x10.0472 = phi i32 [ 2036477234, %entry ], [ %_secret_xortmp276, %loop_body ]
  %_secret___v50_x15.0471 = phi i32 [ 1797285236, %entry ], [ %_secret_xortmp300, %loop_body ]
  %_secret___v71_x6.0470 = phi i32 [ %_secret_ld.i595, %entry ], [ %_secret_xortmp234, %loop_body ]
  %_secret___v62_x14.0469 = phi i32 [ %_secret_ld.i597, %entry ], [ %_secret_xortmp294, %loop_body ]
  %_secret___v61_x13.0468 = phi i32 [ %_secret_ld.i599, %entry ], [ %_secret_xortmp288, %loop_body ]
  %_secret___v60_x12.0467 = phi i32 [ %_secret_ld.i601, %entry ], [ %_secret_xortmp282, %loop_body ]
  %_secret___v55_x1.0466 = phi i32 [ %_secret_ld.i, %entry ], [ %_secret_xortmp210, %loop_body ]
  %_secret___v56_x2.0465 = phi i32 [ %_secret_ld.i609, %entry ], [ %_secret_xortmp216, %loop_body ]
  %_secret___v57_x3.0464 = phi i32 [ %_secret_ld.i607, %entry ], [ %_secret_xortmp222, %loop_body ]
  %_secret___v58_x4.0463 = phi i32 [ %_secret_ld.i605, %entry ], [ %_secret_xortmp246, %loop_body ]
  %_secret___v59_x11.0462 = phi i32 [ %_secret_ld.i603, %entry ], [ %_secret_xortmp258, %loop_body ]
  %_secret_addtmp = add i32 %_secret___v47_x0.0474, %_secret___v60_x12.0467
  %_secret_lshift.i585 = shl i32 %_secret_addtmp, 7
  %_secret_lrshift.i586 = lshr i32 %_secret_addtmp, 25
  %_secret_rotltmp.i587 = or i32 %_secret_lrshift.i586, %_secret_lshift.i585
  %_secret_xortmp = xor i32 %_secret_rotltmp.i587, %_secret___v58_x4.0463
  %_secret_addtmp118 = add i32 %_secret_xortmp, %_secret___v47_x0.0474
  %_secret_lshift.i582 = shl i32 %_secret_addtmp118, 9
  %_secret_lrshift.i583 = lshr i32 %_secret_addtmp118, 23
  %_secret_rotltmp.i584 = or i32 %_secret_lrshift.i583, %_secret_lshift.i582
  %_secret_xortmp120 = xor i32 %_secret_rotltmp.i584, %_secret___v73_x8.0476
  %_secret_addtmp124 = add i32 %_secret_xortmp120, %_secret_xortmp
  %_secret_lshift.i579 = shl i32 %_secret_addtmp124, 13
  %_secret_lrshift.i580 = lshr i32 %_secret_addtmp124, 19
  %_secret_rotltmp.i581 = or i32 %_secret_lrshift.i580, %_secret_lshift.i579
  %_secret_xortmp126 = xor i32 %_secret_rotltmp.i581, %_secret___v60_x12.0467
  %_secret_addtmp130 = add i32 %_secret_xortmp126, %_secret_xortmp120
  %_secret_lshift.i576 = shl i32 %_secret_addtmp130, 18
  %_secret_lrshift.i577 = lshr i32 %_secret_addtmp130, 14
  %_secret_rotltmp.i578 = or i32 %_secret_lrshift.i577, %_secret_lshift.i576
  %_secret_xortmp132 = xor i32 %_secret_rotltmp.i578, %_secret___v47_x0.0474
  %_secret_addtmp136 = add i32 %_secret___v48_x5.0473, %_secret___v55_x1.0466
  %_secret_lshift.i573 = shl i32 %_secret_addtmp136, 7
  %_secret_lrshift.i574 = lshr i32 %_secret_addtmp136, 25
  %_secret_rotltmp.i575 = or i32 %_secret_lrshift.i574, %_secret_lshift.i573
  %_secret_xortmp138 = xor i32 %_secret_rotltmp.i575, %_secret___v74_x9.0477
  %_secret_addtmp142 = add i32 %_secret_xortmp138, %_secret___v48_x5.0473
  %_secret_lshift.i570 = shl i32 %_secret_addtmp142, 9
  %_secret_lrshift.i571 = lshr i32 %_secret_addtmp142, 23
  %_secret_rotltmp.i572 = or i32 %_secret_lrshift.i571, %_secret_lshift.i570
  %_secret_xortmp144 = xor i32 %_secret_rotltmp.i572, %_secret___v61_x13.0468
  %_secret_addtmp148 = add i32 %_secret_xortmp144, %_secret_xortmp138
  %_secret_lshift.i567 = shl i32 %_secret_addtmp148, 13
  %_secret_lrshift.i568 = lshr i32 %_secret_addtmp148, 19
  %_secret_rotltmp.i569 = or i32 %_secret_lrshift.i568, %_secret_lshift.i567
  %_secret_xortmp150 = xor i32 %_secret_rotltmp.i569, %_secret___v55_x1.0466
  %_secret_addtmp154 = add i32 %_secret_xortmp150, %_secret_xortmp144
  %_secret_lshift.i564 = shl i32 %_secret_addtmp154, 18
  %_secret_lrshift.i565 = lshr i32 %_secret_addtmp154, 14
  %_secret_rotltmp.i566 = or i32 %_secret_lrshift.i565, %_secret_lshift.i564
  %_secret_xortmp156 = xor i32 %_secret_rotltmp.i566, %_secret___v48_x5.0473
  %_secret_addtmp160 = add i32 %_secret___v49_x10.0472, %_secret___v71_x6.0470
  %_secret_lshift.i561 = shl i32 %_secret_addtmp160, 7
  %_secret_lrshift.i562 = lshr i32 %_secret_addtmp160, 25
  %_secret_rotltmp.i563 = or i32 %_secret_lrshift.i562, %_secret_lshift.i561
  %_secret_xortmp162 = xor i32 %_secret_rotltmp.i563, %_secret___v62_x14.0469
  %_secret_addtmp166 = add i32 %_secret_xortmp162, %_secret___v49_x10.0472
  %_secret_lshift.i558 = shl i32 %_secret_addtmp166, 9
  %_secret_lrshift.i559 = lshr i32 %_secret_addtmp166, 23
  %_secret_rotltmp.i560 = or i32 %_secret_lrshift.i559, %_secret_lshift.i558
  %_secret_xortmp168 = xor i32 %_secret_rotltmp.i560, %_secret___v56_x2.0465
  %_secret_addtmp172 = add i32 %_secret_xortmp168, %_secret_xortmp162
  %_secret_lshift.i555 = shl i32 %_secret_addtmp172, 13
  %_secret_lrshift.i556 = lshr i32 %_secret_addtmp172, 19
  %_secret_rotltmp.i557 = or i32 %_secret_lrshift.i556, %_secret_lshift.i555
  %_secret_xortmp174 = xor i32 %_secret_rotltmp.i557, %_secret___v71_x6.0470
  %_secret_addtmp178 = add i32 %_secret_xortmp174, %_secret_xortmp168
  %_secret_lshift.i552 = shl i32 %_secret_addtmp178, 18
  %_secret_lrshift.i553 = lshr i32 %_secret_addtmp178, 14
  %_secret_rotltmp.i554 = or i32 %_secret_lrshift.i553, %_secret_lshift.i552
  %_secret_xortmp180 = xor i32 %_secret_rotltmp.i554, %_secret___v49_x10.0472
  %_secret_addtmp184 = add i32 %_secret___v50_x15.0471, %_secret___v59_x11.0462
  %_secret_lshift.i549 = shl i32 %_secret_addtmp184, 7
  %_secret_lrshift.i550 = lshr i32 %_secret_addtmp184, 25
  %_secret_rotltmp.i551 = or i32 %_secret_lrshift.i550, %_secret_lshift.i549
  %_secret_xortmp186 = xor i32 %_secret_rotltmp.i551, %_secret___v57_x3.0464
  %_secret_addtmp190 = add i32 %_secret_xortmp186, %_secret___v50_x15.0471
  %_secret_lshift.i546 = shl i32 %_secret_addtmp190, 9
  %_secret_lrshift.i547 = lshr i32 %_secret_addtmp190, 23
  %_secret_rotltmp.i548 = or i32 %_secret_lrshift.i547, %_secret_lshift.i546
  %_secret_xortmp192 = xor i32 %_secret_rotltmp.i548, %_secret___v72_x7.0475
  %_secret_addtmp196 = add i32 %_secret_xortmp192, %_secret_xortmp186
  %_secret_lshift.i543 = shl i32 %_secret_addtmp196, 13
  %_secret_lrshift.i544 = lshr i32 %_secret_addtmp196, 19
  %_secret_rotltmp.i545 = or i32 %_secret_lrshift.i544, %_secret_lshift.i543
  %_secret_xortmp198 = xor i32 %_secret_rotltmp.i545, %_secret___v59_x11.0462
  %_secret_addtmp202 = add i32 %_secret_xortmp198, %_secret_xortmp192
  %_secret_lshift.i540 = shl i32 %_secret_addtmp202, 18
  %_secret_lrshift.i541 = lshr i32 %_secret_addtmp202, 14
  %_secret_rotltmp.i542 = or i32 %_secret_lrshift.i541, %_secret_lshift.i540
  %_secret_xortmp204 = xor i32 %_secret_rotltmp.i542, %_secret___v50_x15.0471
  %_secret_addtmp208 = add i32 %_secret_xortmp186, %_secret_xortmp132
  %_secret_lshift.i537 = shl i32 %_secret_addtmp208, 7
  %_secret_lrshift.i538 = lshr i32 %_secret_addtmp208, 25
  %_secret_rotltmp.i539 = or i32 %_secret_lrshift.i538, %_secret_lshift.i537
  %_secret_xortmp210 = xor i32 %_secret_rotltmp.i539, %_secret_xortmp150
  %_secret_addtmp214 = add i32 %_secret_xortmp210, %_secret_xortmp132
  %_secret_lshift.i534 = shl i32 %_secret_addtmp214, 9
  %_secret_lrshift.i535 = lshr i32 %_secret_addtmp214, 23
  %_secret_rotltmp.i536 = or i32 %_secret_lrshift.i535, %_secret_lshift.i534
  %_secret_xortmp216 = xor i32 %_secret_rotltmp.i536, %_secret_xortmp168
  %_secret_addtmp220 = add i32 %_secret_xortmp216, %_secret_xortmp210
  %_secret_lshift.i531 = shl i32 %_secret_addtmp220, 13
  %_secret_lrshift.i532 = lshr i32 %_secret_addtmp220, 19
  %_secret_rotltmp.i533 = or i32 %_secret_lrshift.i532, %_secret_lshift.i531
  %_secret_xortmp222 = xor i32 %_secret_rotltmp.i533, %_secret_xortmp186
  %_secret_addtmp226 = add i32 %_secret_xortmp222, %_secret_xortmp216
  %_secret_lshift.i528 = shl i32 %_secret_addtmp226, 18
  %_secret_lrshift.i529 = lshr i32 %_secret_addtmp226, 14
  %_secret_rotltmp.i530 = or i32 %_secret_lrshift.i529, %_secret_lshift.i528
  %_secret_xortmp228 = xor i32 %_secret_rotltmp.i530, %_secret_xortmp132
  %_secret_addtmp232 = add i32 %_secret_xortmp156, %_secret_xortmp
  %_secret_lshift.i525 = shl i32 %_secret_addtmp232, 7
  %_secret_lrshift.i526 = lshr i32 %_secret_addtmp232, 25
  %_secret_rotltmp.i527 = or i32 %_secret_lrshift.i526, %_secret_lshift.i525
  %_secret_xortmp234 = xor i32 %_secret_rotltmp.i527, %_secret_xortmp174
  %_secret_addtmp238 = add i32 %_secret_xortmp234, %_secret_xortmp156
  %_secret_lshift.i522 = shl i32 %_secret_addtmp238, 9
  %_secret_lrshift.i523 = lshr i32 %_secret_addtmp238, 23
  %_secret_rotltmp.i524 = or i32 %_secret_lrshift.i523, %_secret_lshift.i522
  %_secret_xortmp240 = xor i32 %_secret_rotltmp.i524, %_secret_xortmp192
  %_secret_addtmp244 = add i32 %_secret_xortmp240, %_secret_xortmp234
  %_secret_lshift.i519 = shl i32 %_secret_addtmp244, 13
  %_secret_lrshift.i520 = lshr i32 %_secret_addtmp244, 19
  %_secret_rotltmp.i521 = or i32 %_secret_lrshift.i520, %_secret_lshift.i519
  %_secret_xortmp246 = xor i32 %_secret_rotltmp.i521, %_secret_xortmp
  %_secret_addtmp250 = add i32 %_secret_xortmp246, %_secret_xortmp240
  %_secret_lshift.i516 = shl i32 %_secret_addtmp250, 18
  %_secret_lrshift.i517 = lshr i32 %_secret_addtmp250, 14
  %_secret_rotltmp.i518 = or i32 %_secret_lrshift.i517, %_secret_lshift.i516
  %_secret_xortmp252 = xor i32 %_secret_rotltmp.i518, %_secret_xortmp156
  %_secret_addtmp256 = add i32 %_secret_xortmp180, %_secret_xortmp138
  %_secret_lshift.i513 = shl i32 %_secret_addtmp256, 7
  %_secret_lrshift.i514 = lshr i32 %_secret_addtmp256, 25
  %_secret_rotltmp.i515 = or i32 %_secret_lrshift.i514, %_secret_lshift.i513
  %_secret_xortmp258 = xor i32 %_secret_rotltmp.i515, %_secret_xortmp198
  %_secret_addtmp262 = add i32 %_secret_xortmp258, %_secret_xortmp180
  %_secret_lshift.i510 = shl i32 %_secret_addtmp262, 9
  %_secret_lrshift.i511 = lshr i32 %_secret_addtmp262, 23
  %_secret_rotltmp.i512 = or i32 %_secret_lrshift.i511, %_secret_lshift.i510
  %_secret_xortmp264 = xor i32 %_secret_rotltmp.i512, %_secret_xortmp120
  %_secret_addtmp268 = add i32 %_secret_xortmp264, %_secret_xortmp258
  %_secret_lshift.i507 = shl i32 %_secret_addtmp268, 13
  %_secret_lrshift.i508 = lshr i32 %_secret_addtmp268, 19
  %_secret_rotltmp.i509 = or i32 %_secret_lrshift.i508, %_secret_lshift.i507
  %_secret_xortmp270 = xor i32 %_secret_rotltmp.i509, %_secret_xortmp138
  %_secret_addtmp274 = add i32 %_secret_xortmp270, %_secret_xortmp264
  %_secret_lshift.i504 = shl i32 %_secret_addtmp274, 18
  %_secret_lrshift.i505 = lshr i32 %_secret_addtmp274, 14
  %_secret_rotltmp.i506 = or i32 %_secret_lrshift.i505, %_secret_lshift.i504
  %_secret_xortmp276 = xor i32 %_secret_rotltmp.i506, %_secret_xortmp180
  %_secret_addtmp280 = add i32 %_secret_xortmp204, %_secret_xortmp162
  %_secret_lshift.i501 = shl i32 %_secret_addtmp280, 7
  %_secret_lrshift.i502 = lshr i32 %_secret_addtmp280, 25
  %_secret_rotltmp.i503 = or i32 %_secret_lrshift.i502, %_secret_lshift.i501
  %_secret_xortmp282 = xor i32 %_secret_rotltmp.i503, %_secret_xortmp126
  %_secret_addtmp286 = add i32 %_secret_xortmp282, %_secret_xortmp204
  %_secret_lshift.i498 = shl i32 %_secret_addtmp286, 9
  %_secret_lrshift.i499 = lshr i32 %_secret_addtmp286, 23
  %_secret_rotltmp.i500 = or i32 %_secret_lrshift.i499, %_secret_lshift.i498
  %_secret_xortmp288 = xor i32 %_secret_rotltmp.i500, %_secret_xortmp144
  %_secret_addtmp292 = add i32 %_secret_xortmp288, %_secret_xortmp282
  %_secret_lshift.i495 = shl i32 %_secret_addtmp292, 13
  %_secret_lrshift.i496 = lshr i32 %_secret_addtmp292, 19
  %_secret_rotltmp.i497 = or i32 %_secret_lrshift.i496, %_secret_lshift.i495
  %_secret_xortmp294 = xor i32 %_secret_rotltmp.i497, %_secret_xortmp162
  %_secret_addtmp298 = add i32 %_secret_xortmp294, %_secret_xortmp288
  %_secret_lshift.i = shl i32 %_secret_addtmp298, 18
  %_secret_lrshift.i = lshr i32 %_secret_addtmp298, 14
  %_secret_rotltmp.i = or i32 %_secret_lrshift.i, %_secret_lshift.i
  %_secret_xortmp300 = xor i32 %_secret_rotltmp.i, %_secret_xortmp204
  %_public_addtmp = add nuw nsw i32 %_public___v79_i.0478, 1
  %_public_ulttmp = icmp ult i32 %_public_addtmp, 10
  br i1 %_public_ulttmp, label %loop_body, label %loop_end

loop_end:                                         ; preds = %loop_body
  %_secret_addtmp311 = add i32 %_secret_xortmp228, 1634760805
  %_secret_cast.i494 = bitcast i8* %_secret_arrarg1 to i32*
  store i32 %_secret_addtmp311, i32* %_secret_cast.i494, align 4
  %_secret_source_gep316 = getelementptr inbounds i8, i8* %_secret_arrarg1, i64 4
  %_secret_addtmp321 = add i32 %_secret_xortmp210, %_secret_ld.i
  %_secret_cast.i493 = bitcast i8* %_secret_source_gep316 to i32*
  store i32 %_secret_addtmp321, i32* %_secret_cast.i493, align 4
  %_secret_source_gep326 = getelementptr inbounds i8, i8* %_secret_arrarg1, i64 8
  %_secret_addtmp331 = add i32 %_secret_xortmp216, %_secret_ld.i609
  %_secret_cast.i492 = bitcast i8* %_secret_source_gep326 to i32*
  store i32 %_secret_addtmp331, i32* %_secret_cast.i492, align 4
  %_secret_source_gep336 = getelementptr inbounds i8, i8* %_secret_arrarg1, i64 12
  %_secret_addtmp341 = add i32 %_secret_xortmp222, %_secret_ld.i607
  %_secret_cast.i491 = bitcast i8* %_secret_source_gep336 to i32*
  store i32 %_secret_addtmp341, i32* %_secret_cast.i491, align 4
  %_secret_source_gep346 = getelementptr inbounds i8, i8* %_secret_arrarg1, i64 16
  %_secret_addtmp351 = add i32 %_secret_xortmp246, %_secret_ld.i605
  %_secret_cast.i490 = bitcast i8* %_secret_source_gep346 to i32*
  store i32 %_secret_addtmp351, i32* %_secret_cast.i490, align 4
  %_secret_source_gep356 = getelementptr inbounds i8, i8* %_secret_arrarg1, i64 20
  %_secret_addtmp361 = add i32 %_secret_xortmp252, 857760878
  %_secret_cast.i489 = bitcast i8* %_secret_source_gep356 to i32*
  store i32 %_secret_addtmp361, i32* %_secret_cast.i489, align 4
  %_secret_source_gep366 = getelementptr inbounds i8, i8* %_secret_arrarg1, i64 24
  %_secret_addtmp371 = add i32 %_secret_xortmp234, %_secret_ld.i595
  %_secret_cast.i488 = bitcast i8* %_secret_source_gep366 to i32*
  store i32 %_secret_addtmp371, i32* %_secret_cast.i488, align 4
  %_secret_source_gep376 = getelementptr inbounds i8, i8* %_secret_arrarg1, i64 28
  %_secret_addtmp381 = add i32 %_secret_xortmp240, %_secret_ld.i593
  %_secret_cast.i487 = bitcast i8* %_secret_source_gep376 to i32*
  store i32 %_secret_addtmp381, i32* %_secret_cast.i487, align 4
  %_secret_source_gep386 = getelementptr inbounds i8, i8* %_secret_arrarg1, i64 32
  %_secret_addtmp391 = add i32 %_secret_xortmp264, %_secret_ld.i591
  %_secret_cast.i486 = bitcast i8* %_secret_source_gep386 to i32*
  store i32 %_secret_addtmp391, i32* %_secret_cast.i486, align 4
  %_secret_source_gep396 = getelementptr inbounds i8, i8* %_secret_arrarg1, i64 36
  %_secret_addtmp401 = add i32 %_secret_xortmp270, %_secret_ld.i589
  %_secret_cast.i485 = bitcast i8* %_secret_source_gep396 to i32*
  store i32 %_secret_addtmp401, i32* %_secret_cast.i485, align 4
  %_secret_source_gep406 = getelementptr inbounds i8, i8* %_secret_arrarg1, i64 40
  %_secret_addtmp411 = add i32 %_secret_xortmp276, 2036477234
  %_secret_cast.i484 = bitcast i8* %_secret_source_gep406 to i32*
  store i32 %_secret_addtmp411, i32* %_secret_cast.i484, align 4
  %_secret_source_gep416 = getelementptr inbounds i8, i8* %_secret_arrarg1, i64 44
  %_secret_addtmp421 = add i32 %_secret_xortmp258, %_secret_ld.i603
  %_secret_cast.i483 = bitcast i8* %_secret_source_gep416 to i32*
  store i32 %_secret_addtmp421, i32* %_secret_cast.i483, align 4
  %_secret_source_gep426 = getelementptr inbounds i8, i8* %_secret_arrarg1, i64 48
  %_secret_addtmp431 = add i32 %_secret_xortmp282, %_secret_ld.i601
  %_secret_cast.i482 = bitcast i8* %_secret_source_gep426 to i32*
  store i32 %_secret_addtmp431, i32* %_secret_cast.i482, align 4
  %_secret_source_gep436 = getelementptr inbounds i8, i8* %_secret_arrarg1, i64 52
  %_secret_addtmp441 = add i32 %_secret_xortmp288, %_secret_ld.i599
  %_secret_cast.i481 = bitcast i8* %_secret_source_gep436 to i32*
  store i32 %_secret_addtmp441, i32* %_secret_cast.i481, align 4
  %_secret_source_gep446 = getelementptr inbounds i8, i8* %_secret_arrarg1, i64 56
  %_secret_addtmp451 = add i32 %_secret_xortmp294, %_secret_ld.i597
  %_secret_cast.i480 = bitcast i8* %_secret_source_gep446 to i32*
  store i32 %_secret_addtmp451, i32* %_secret_cast.i480, align 4
  %_secret_source_gep456 = getelementptr inbounds i8, i8* %_secret_arrarg1, i64 60
  %_secret_addtmp461 = add i32 %_secret_xortmp300, 1797285236
  %_secret_cast.i479 = bitcast i8* %_secret_source_gep456 to i32*
  store i32 %_secret_addtmp461, i32* %_secret_cast.i479, align 4
  ret void
}

; Function Attrs: nounwind
define internal fastcc void @_crypto_stream_salsa20(i8* %_secret_arrarg1, i32 %_public___c_len2, i8* nocapture readonly %_public_arrarg3, i8* nocapture readonly %_secret_arrarg5) unnamed_addr #3 {
entry:
  %_public_eqtmp = icmp eq i32 %_public___c_len2, 0
  br i1 %_public_eqtmp, label %thenbranch, label %branchmerge

thenbranch:                                       ; preds = %entry
  ret void

branchmerge:                                      ; preds = %entry
  %_secret___v80_kcopy = alloca [32 x i8], align 1
  %_secret_destcast = getelementptr inbounds [32 x i8], [32 x i8]* %_secret___v80_kcopy, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %_secret_destcast, i8* %_secret_arrarg5, i64 32, i32 1, i1 false)
  %_secret___v81_in = alloca [16 x i8], align 8
  %_secret_sourcecasted = getelementptr inbounds [16 x i8], [16 x i8]* %_secret___v81_in, i64 0, i64 0
  %_secret_20 = getelementptr inbounds [16 x i8], [16 x i8]* %_secret___v81_in, i64 0, i64 8
  %_secret_21 = bitcast i8* %_secret_20 to i64*
  store i64 0, i64* %_secret_21, align 8
  %_public_22 = bitcast i8* %_public_arrarg3 to i64*
  %_secret_23 = bitcast [16 x i8]* %_secret___v81_in to i64*
  %_public_24 = load i64, i64* %_public_22, align 1
  store i64 %_public_24, i64* %_secret_23, align 8
  %_public_lrshift = lshr i32 %_public___c_len2, 6
  %_public_ulttmp185 = icmp eq i32 %_public_lrshift, 0
  br i1 %_public_ulttmp185, label %loop_end15, label %loop_body14.lr.ph

loop_body14.lr.ph:                                ; preds = %branchmerge
  %_secret_ptr32 = getelementptr inbounds [16 x i8], [16 x i8]* %_secret___v81_in, i64 0, i64 8
  %_secret_ptr32.1 = getelementptr inbounds [16 x i8], [16 x i8]* %_secret___v81_in, i64 0, i64 9
  %_secret_ptr32.2 = getelementptr inbounds [16 x i8], [16 x i8]* %_secret___v81_in, i64 0, i64 10
  %_secret_ptr32.3 = getelementptr inbounds [16 x i8], [16 x i8]* %_secret___v81_in, i64 0, i64 11
  %_secret_ptr32.4 = getelementptr inbounds [16 x i8], [16 x i8]* %_secret___v81_in, i64 0, i64 12
  %_secret_ptr32.5 = getelementptr inbounds [16 x i8], [16 x i8]* %_secret___v81_in, i64 0, i64 13
  %_secret_ptr32.6 = getelementptr inbounds [16 x i8], [16 x i8]* %_secret___v81_in, i64 0, i64 14
  %_secret_ptr32.7 = getelementptr inbounds [16 x i8], [16 x i8]* %_secret___v81_in, i64 0, i64 15
  br label %loop_body14

loop_body14:                                      ; preds = %loop_body14.lr.ph, %loop_body14
  %_secret_lval33.7 = phi i8 [ 0, %loop_body14.lr.ph ], [ %_secret_ucast.7, %loop_body14 ]
  %_secret_lval33.6 = phi i8 [ 0, %loop_body14.lr.ph ], [ %_secret_ucast.6, %loop_body14 ]
  %_secret_lval33.5 = phi i8 [ 0, %loop_body14.lr.ph ], [ %_secret_ucast.5, %loop_body14 ]
  %_secret_lval33.4 = phi i8 [ 0, %loop_body14.lr.ph ], [ %_secret_ucast.4, %loop_body14 ]
  %_secret_lval33.3 = phi i8 [ 0, %loop_body14.lr.ph ], [ %_secret_ucast.3, %loop_body14 ]
  %_secret_lval33.2 = phi i8 [ 0, %loop_body14.lr.ph ], [ %_secret_ucast.2, %loop_body14 ]
  %_secret_lval33.1 = phi i8 [ 0, %loop_body14.lr.ph ], [ %_secret_ucast.1, %loop_body14 ]
  %_secret_lval33 = phi i8 [ 0, %loop_body14.lr.ph ], [ %_secret_ucast, %loop_body14 ]
  %_public___v84_j.06 = phi i32 [ 0, %loop_body14.lr.ph ], [ %_public_addtmp41, %loop_body14 ]
  %_public_multmp21 = shl i32 %_public___v84_j.06, 6
  %_public_19 = sext i32 %_public_multmp21 to i64
  %_secret_source_gep23 = getelementptr inbounds i8, i8* %_secret_arrarg1, i64 %_public_19
  call fastcc void @_crypto_core_salsa20(i8* %_secret_source_gep23, i8* nonnull %_secret_sourcecasted, i8* nonnull %_secret_destcast)
  %_secret_rhssext = zext i8 %_secret_lval33 to i32
  %_secret_addtmp = add nuw nsw i32 %_secret_rhssext, 1
  %_secret_ucast = trunc i32 %_secret_addtmp to i8
  store i8 %_secret_ucast, i8* %_secret_ptr32, align 8
  %_secret_lrshift = lshr i32 %_secret_addtmp, 8
  %_secret_rhssext.1 = zext i8 %_secret_lval33.1 to i32
  %_secret_addtmp.1 = add nuw nsw i32 %_secret_lrshift, %_secret_rhssext.1
  %_secret_ucast.1 = trunc i32 %_secret_addtmp.1 to i8
  store i8 %_secret_ucast.1, i8* %_secret_ptr32.1, align 1
  %_secret_lrshift.1 = lshr i32 %_secret_addtmp.1, 8
  %_secret_rhssext.2 = zext i8 %_secret_lval33.2 to i32
  %_secret_addtmp.2 = add nuw nsw i32 %_secret_lrshift.1, %_secret_rhssext.2
  %_secret_ucast.2 = trunc i32 %_secret_addtmp.2 to i8
  store i8 %_secret_ucast.2, i8* %_secret_ptr32.2, align 2
  %_secret_lrshift.2 = lshr i32 %_secret_addtmp.2, 8
  %_secret_rhssext.3 = zext i8 %_secret_lval33.3 to i32
  %_secret_addtmp.3 = add nuw nsw i32 %_secret_lrshift.2, %_secret_rhssext.3
  %_secret_ucast.3 = trunc i32 %_secret_addtmp.3 to i8
  store i8 %_secret_ucast.3, i8* %_secret_ptr32.3, align 1
  %_secret_lrshift.3 = lshr i32 %_secret_addtmp.3, 8
  %_secret_rhssext.4 = zext i8 %_secret_lval33.4 to i32
  %_secret_addtmp.4 = add nuw nsw i32 %_secret_lrshift.3, %_secret_rhssext.4
  %_secret_ucast.4 = trunc i32 %_secret_addtmp.4 to i8
  store i8 %_secret_ucast.4, i8* %_secret_ptr32.4, align 4
  %_secret_lrshift.4 = lshr i32 %_secret_addtmp.4, 8
  %_secret_rhssext.5 = zext i8 %_secret_lval33.5 to i32
  %_secret_addtmp.5 = add nuw nsw i32 %_secret_lrshift.4, %_secret_rhssext.5
  %_secret_ucast.5 = trunc i32 %_secret_addtmp.5 to i8
  store i8 %_secret_ucast.5, i8* %_secret_ptr32.5, align 1
  %_secret_lrshift.5 = lshr i32 %_secret_addtmp.5, 8
  %_secret_rhssext.6 = zext i8 %_secret_lval33.6 to i32
  %_secret_addtmp.6 = add nuw nsw i32 %_secret_lrshift.5, %_secret_rhssext.6
  %_secret_ucast.6 = trunc i32 %_secret_addtmp.6 to i8
  store i8 %_secret_ucast.6, i8* %_secret_ptr32.6, align 2
  %_secret_lrshift.6 = lshr i32 %_secret_addtmp.6, 8
  %_secret_ = trunc i32 %_secret_lrshift.6 to i8
  %_secret_ucast.7 = add i8 %_secret_lval33.7, %_secret_
  store i8 %_secret_ucast.7, i8* %_secret_ptr32.7, align 1
  %_public_addtmp41 = add nuw nsw i32 %_public___v84_j.06, 1
  %_public_ulttmp18 = icmp ult i32 %_public_addtmp41, %_public_lrshift
  br i1 %_public_ulttmp18, label %loop_body14, label %loop_end15

loop_end15:                                       ; preds = %loop_body14, %branchmerge
  %_secret___v87_block = alloca [64 x i8], align 1
  %_secret___v87_block8 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret___v87_block, i64 0, i64 0
  %_public_multmp43 = and i32 %_public___c_len2, -64
  %_public_ulttmp45 = icmp ult i32 %_public_multmp43, %_public___c_len2
  %_secret_arrtoptr48 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret___v87_block, i64 0, i64 0
  br i1 %_public_ulttmp45, label %thenbranch47, label %branchmerge74

thenbranch47:                                     ; preds = %loop_end15
  call fastcc void @_crypto_core_salsa20(i8* nonnull %_secret_arrtoptr48, i8* nonnull %_secret_sourcecasted, i8* nonnull %_secret_destcast)
  %_public_subtmp = and i32 %_public___c_len2, 63
  %_public_ulttmp651 = icmp eq i32 %_public_subtmp, 0
  br i1 %_public_ulttmp651, label %branchmerge74, label %loop_body61.lr.ph

loop_body61.lr.ph:                                ; preds = %thenbranch47
  %_public_ = sext i32 %_public_multmp43 to i64
  %_secret_source_gep58 = getelementptr inbounds i8, i8* %_secret_arrarg1, i64 %_public_
  %_public_.mask = and i32 %_public___c_len2, 63
  %_public_18 = zext i32 %_public_.mask to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %_secret_source_gep58, i8* nonnull %_secret___v87_block8, i64 %_public_18, i32 1, i1 false)
  br label %branchmerge74

branchmerge74:                                    ; preds = %loop_end15, %loop_body61.lr.ph, %thenbranch47
  call fastcc void @_memzero(i8* %_secret_arrtoptr48, i32 64) #3
  call fastcc void @_memzero(i8* %_secret_destcast, i32 32) #3
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #0

; Function Attrs: nounwind
define internal fastcc void @_crypto_stream_salsa20_xor_ic(i8* %_secret_arrarg1, i8* %_secret_arrarg4, i32 %_public___m_len5, i8* nocapture readonly %_secret_arrarg7, i64 %_public_ic_val8, i8* nocapture readonly %_secret_arrarg10) unnamed_addr #3 {
entry:
  %_public_eqtmp = icmp eq i32 %_public___m_len5, 0
  br i1 %_public_eqtmp, label %thenbranch, label %branchmerge

thenbranch:                                       ; preds = %entry
  ret void

branchmerge:                                      ; preds = %entry
  %_secret___v94_kcopy = alloca [32 x i8], align 1
  %_secret_destcast = getelementptr inbounds [32 x i8], [32 x i8]* %_secret___v94_kcopy, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %_secret_destcast, i8* %_secret_arrarg10, i64 32, i32 1, i1 false)
  %_secret___v95_in = alloca [16 x i8], align 8
  %_secret_sourcecasted = getelementptr inbounds [16 x i8], [16 x i8]* %_secret___v95_in, i64 0, i64 0
  %_secret_23 = bitcast i8* %_secret_arrarg7 to i64*
  %_secret_24 = bitcast [16 x i8]* %_secret___v95_in to i64*
  %_secret_25 = load i64, i64* %_secret_23, align 1
  store i64 %_secret_25, i64* %_secret_24, align 8
  %_secret_ptr24 = getelementptr inbounds [16 x i8], [16 x i8]* %_secret___v95_in, i64 0, i64 8
  %_public_truncbinop = trunc i64 %_public_ic_val8 to i8
  store i8 %_public_truncbinop, i8* %_secret_ptr24, align 8
  %_public_lrshift = lshr i64 %_public_ic_val8, 8
  %_secret_ptr24.1 = getelementptr inbounds [16 x i8], [16 x i8]* %_secret___v95_in, i64 0, i64 9
  %_public_truncbinop.1 = trunc i64 %_public_lrshift to i8
  store i8 %_public_truncbinop.1, i8* %_secret_ptr24.1, align 1
  %_public_lrshift.1 = lshr i64 %_public_ic_val8, 16
  %_secret_ptr24.2 = getelementptr inbounds [16 x i8], [16 x i8]* %_secret___v95_in, i64 0, i64 10
  %_public_truncbinop.2 = trunc i64 %_public_lrshift.1 to i8
  store i8 %_public_truncbinop.2, i8* %_secret_ptr24.2, align 2
  %_public_lrshift.2 = lshr i64 %_public_ic_val8, 24
  %_secret_ptr24.3 = getelementptr inbounds [16 x i8], [16 x i8]* %_secret___v95_in, i64 0, i64 11
  %_public_truncbinop.3 = trunc i64 %_public_lrshift.2 to i8
  store i8 %_public_truncbinop.3, i8* %_secret_ptr24.3, align 1
  %_public_lrshift.3 = lshr i64 %_public_ic_val8, 32
  %_secret_ptr24.4 = getelementptr inbounds [16 x i8], [16 x i8]* %_secret___v95_in, i64 0, i64 12
  %_public_truncbinop.4 = trunc i64 %_public_lrshift.3 to i8
  store i8 %_public_truncbinop.4, i8* %_secret_ptr24.4, align 4
  %_public_lrshift.4 = lshr i64 %_public_ic_val8, 40
  %_secret_ptr24.5 = getelementptr inbounds [16 x i8], [16 x i8]* %_secret___v95_in, i64 0, i64 13
  %_public_truncbinop.5 = trunc i64 %_public_lrshift.4 to i8
  store i8 %_public_truncbinop.5, i8* %_secret_ptr24.5, align 1
  %_public_lrshift.5 = lshr i64 %_public_ic_val8, 48
  %_secret_ptr24.6 = getelementptr inbounds [16 x i8], [16 x i8]* %_secret___v95_in, i64 0, i64 14
  %_public_truncbinop.6 = trunc i64 %_public_lrshift.5 to i8
  store i8 %_public_truncbinop.6, i8* %_secret_ptr24.6, align 2
  %_public_lrshift.6 = lshr i64 %_public_ic_val8, 56
  %_secret_ptr24.7 = getelementptr inbounds [16 x i8], [16 x i8]* %_secret___v95_in, i64 0, i64 15
  %_public_truncbinop.7 = trunc i64 %_public_lrshift.6 to i8
  store i8 %_public_truncbinop.7, i8* %_secret_ptr24.7, align 1
  %_public_lrshift30 = lshr i32 %_public___m_len5, 6
  %_secret___v99_block = alloca [64 x i8], align 1
  %_public_ulttmp366 = icmp eq i32 %_public_lrshift30, 0
  br i1 %_public_ulttmp366, label %loop_end33, label %loop_body32.lr.ph

loop_body32.lr.ph:                                ; preds = %branchmerge
  %_secret_arrtoptr = getelementptr inbounds [64 x i8], [64 x i8]* %_secret___v99_block, i64 0, i64 0
  br label %loop_body32

loop_body32:                                      ; preds = %loop_body32.lr.ph, %loop_end46
  %_secret_lval69.7 = phi i8 [ %_public_truncbinop.7, %loop_body32.lr.ph ], [ %_secret_ucast.7, %loop_end46 ]
  %_secret_lval69.6 = phi i8 [ %_public_truncbinop.6, %loop_body32.lr.ph ], [ %_secret_ucast.6, %loop_end46 ]
  %_secret_lval69.5 = phi i8 [ %_public_truncbinop.5, %loop_body32.lr.ph ], [ %_secret_ucast.5, %loop_end46 ]
  %_secret_lval69.4 = phi i8 [ %_public_truncbinop.4, %loop_body32.lr.ph ], [ %_secret_ucast.4, %loop_end46 ]
  %_secret_lval69.3 = phi i8 [ %_public_truncbinop.3, %loop_body32.lr.ph ], [ %_secret_ucast.3, %loop_end46 ]
  %_secret_lval69.2 = phi i8 [ %_public_truncbinop.2, %loop_body32.lr.ph ], [ %_secret_ucast.2, %loop_end46 ]
  %_secret_lval69.1 = phi i8 [ %_public_truncbinop.1, %loop_body32.lr.ph ], [ %_secret_ucast.1, %loop_end46 ]
  %_secret_lval69 = phi i8 [ %_public_truncbinop, %loop_body32.lr.ph ], [ %_secret_ucast, %loop_end46 ]
  %_public___v100_j.07 = phi i32 [ 0, %loop_body32.lr.ph ], [ %_public_addtmp77, %loop_end46 ]
  call fastcc void @_crypto_core_salsa20(i8* nonnull %_secret_arrtoptr, i8* nonnull %_secret_sourcecasted, i8* nonnull %_secret_destcast)
  %_public_multmp = shl i32 %_public___v100_j.07, 6
  %_public_22 = sext i32 %_public_multmp to i64
  %_secret_source_gep = getelementptr inbounds i8, i8* %_secret_arrarg1, i64 %_public_22
  %_secret_source_gep43 = getelementptr inbounds i8, i8* %_secret_arrarg4, i64 %_public_22
  br label %loop_body45

loop_end33:                                       ; preds = %loop_end46, %branchmerge
  %_public_multmp79 = and i32 %_public___m_len5, -64
  %_public_ulttmp81 = icmp ult i32 %_public_multmp79, %_public___m_len5
  br i1 %_public_ulttmp81, label %thenbranch83, label %loop_end33.branchmerge120_crit_edge

loop_end33.branchmerge120_crit_edge:              ; preds = %loop_end33
  %_secret_.pre = getelementptr inbounds [64 x i8], [64 x i8]* %_secret___v99_block, i64 0, i64 0
  br label %branchmerge120

loop_body45:                                      ; preds = %loop_body32, %loop_body45
  %_public___v103_i.03 = phi i32 [ 0, %loop_body32 ], [ %_public_addtmp60, %loop_body45 ]
  %_public_21 = zext i32 %_public___v103_i.03 to i64
  %_secret_ptr51 = getelementptr inbounds i8, i8* %_secret_source_gep, i64 %_public_21
  %_secret_ptr54 = getelementptr inbounds i8, i8* %_secret_source_gep43, i64 %_public_21
  %_secret_lval55 = load i8, i8* %_secret_ptr54, align 1
  %_secret_ptr57 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret___v99_block, i64 0, i64 %_public_21
  %_secret_lval58 = load i8, i8* %_secret_ptr57, align 1
  %_secret_xortmp = xor i8 %_secret_lval58, %_secret_lval55
  store i8 %_secret_xortmp, i8* %_secret_ptr51, align 1
  %_public_addtmp60 = add nuw nsw i32 %_public___v103_i.03, 1
  %_public_ulttmp48 = icmp ult i32 %_public_addtmp60, 64
  br i1 %_public_ulttmp48, label %loop_body45, label %loop_end46

loop_end46:                                       ; preds = %loop_body45
  %_secret_rhssext = zext i8 %_secret_lval69 to i32
  %_secret_addtmp = add nuw nsw i32 %_secret_rhssext, 1
  %_secret_ucast = trunc i32 %_secret_addtmp to i8
  store i8 %_secret_ucast, i8* %_secret_ptr24, align 8
  %_secret_lrshift = lshr i32 %_secret_addtmp, 8
  %_secret_rhssext.1 = zext i8 %_secret_lval69.1 to i32
  %_secret_addtmp.1 = add nuw nsw i32 %_secret_lrshift, %_secret_rhssext.1
  %_secret_ucast.1 = trunc i32 %_secret_addtmp.1 to i8
  store i8 %_secret_ucast.1, i8* %_secret_ptr24.1, align 1
  %_secret_lrshift.1 = lshr i32 %_secret_addtmp.1, 8
  %_secret_rhssext.2 = zext i8 %_secret_lval69.2 to i32
  %_secret_addtmp.2 = add nuw nsw i32 %_secret_lrshift.1, %_secret_rhssext.2
  %_secret_ucast.2 = trunc i32 %_secret_addtmp.2 to i8
  store i8 %_secret_ucast.2, i8* %_secret_ptr24.2, align 2
  %_secret_lrshift.2 = lshr i32 %_secret_addtmp.2, 8
  %_secret_rhssext.3 = zext i8 %_secret_lval69.3 to i32
  %_secret_addtmp.3 = add nuw nsw i32 %_secret_lrshift.2, %_secret_rhssext.3
  %_secret_ucast.3 = trunc i32 %_secret_addtmp.3 to i8
  store i8 %_secret_ucast.3, i8* %_secret_ptr24.3, align 1
  %_secret_lrshift.3 = lshr i32 %_secret_addtmp.3, 8
  %_secret_rhssext.4 = zext i8 %_secret_lval69.4 to i32
  %_secret_addtmp.4 = add nuw nsw i32 %_secret_lrshift.3, %_secret_rhssext.4
  %_secret_ucast.4 = trunc i32 %_secret_addtmp.4 to i8
  store i8 %_secret_ucast.4, i8* %_secret_ptr24.4, align 4
  %_secret_lrshift.4 = lshr i32 %_secret_addtmp.4, 8
  %_secret_rhssext.5 = zext i8 %_secret_lval69.5 to i32
  %_secret_addtmp.5 = add nuw nsw i32 %_secret_lrshift.4, %_secret_rhssext.5
  %_secret_ucast.5 = trunc i32 %_secret_addtmp.5 to i8
  store i8 %_secret_ucast.5, i8* %_secret_ptr24.5, align 1
  %_secret_lrshift.5 = lshr i32 %_secret_addtmp.5, 8
  %_secret_rhssext.6 = zext i8 %_secret_lval69.6 to i32
  %_secret_addtmp.6 = add nuw nsw i32 %_secret_lrshift.5, %_secret_rhssext.6
  %_secret_ucast.6 = trunc i32 %_secret_addtmp.6 to i8
  store i8 %_secret_ucast.6, i8* %_secret_ptr24.6, align 2
  %_secret_lrshift.6 = lshr i32 %_secret_addtmp.6, 8
  %_secret_ = trunc i32 %_secret_lrshift.6 to i8
  %_secret_ucast.7 = add i8 %_secret_lval69.7, %_secret_
  store i8 %_secret_ucast.7, i8* %_secret_ptr24.7, align 1
  %_public_addtmp77 = add nuw nsw i32 %_public___v100_j.07, 1
  %_public_ulttmp36 = icmp ult i32 %_public_addtmp77, %_public_lrshift30
  br i1 %_public_ulttmp36, label %loop_body32, label %loop_end33

thenbranch83:                                     ; preds = %loop_end33
  %_public_subtmp = and i32 %_public___m_len5, 63
  %_secret_arrtoptr87 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret___v99_block, i64 0, i64 0
  call fastcc void @_crypto_core_salsa20(i8* nonnull %_secret_arrtoptr87, i8* nonnull %_secret_sourcecasted, i8* nonnull %_secret_destcast)
  %_public_20 = sext i32 %_public_multmp79 to i64
  %_secret_source_gep94 = getelementptr inbounds i8, i8* %_secret_arrarg1, i64 %_public_20
  %_secret_source_gep99 = getelementptr inbounds i8, i8* %_secret_arrarg4, i64 %_public_20
  %_public_ulttmp1051 = icmp eq i32 %_public_subtmp, 0
  br i1 %_public_ulttmp1051, label %branchmerge120, label %loop_body101.preheader

loop_body101.preheader:                           ; preds = %thenbranch83
  br label %loop_body101

loop_body101:                                     ; preds = %loop_body101.preheader, %loop_body101
  %_public___v113_i.02 = phi i32 [ %_public_addtmp118, %loop_body101 ], [ 0, %loop_body101.preheader ]
  %_public_ = zext i32 %_public___v113_i.02 to i64
  %_secret_ptr108 = getelementptr inbounds i8, i8* %_secret_source_gep94, i64 %_public_
  %_secret_ptr111 = getelementptr inbounds i8, i8* %_secret_source_gep99, i64 %_public_
  %_secret_lval112 = load i8, i8* %_secret_ptr111, align 1
  %_secret_ptr114 = getelementptr inbounds [64 x i8], [64 x i8]* %_secret___v99_block, i64 0, i64 %_public_
  %_secret_lval115 = load i8, i8* %_secret_ptr114, align 1
  %_secret_xortmp116 = xor i8 %_secret_lval115, %_secret_lval112
  store i8 %_secret_xortmp116, i8* %_secret_ptr108, align 1
  %_public_addtmp118 = add nuw nsw i32 %_public___v113_i.02, 1
  %_public_ulttmp105 = icmp ult i32 %_public_addtmp118, %_public_subtmp
  br i1 %_public_ulttmp105, label %loop_body101, label %branchmerge120

branchmerge120:                                   ; preds = %loop_body101, %loop_end33.branchmerge120_crit_edge, %thenbranch83
  %_secret_arrtoptr121.pre-phi = phi i8* [ %_secret_.pre, %loop_end33.branchmerge120_crit_edge ], [ %_secret_arrtoptr87, %thenbranch83 ], [ %_secret_arrtoptr87, %loop_body101 ]
  call fastcc void @_memzero(i8* nonnull %_secret_arrtoptr121.pre-phi, i32 64)
  call fastcc void @_memzero(i8* nonnull %_secret_destcast, i32 32)
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
  %_public___v130_i.0366 = phi i32 [ 0, %entry ], [ %_public_addtmp, %loop_body ]
  %_secret___v129_x9.0365 = phi i32 [ %_secret_ld.i469, %entry ], [ %_secret_xortmp254, %loop_body ]
  %_secret___v128_x8.0364 = phi i32 [ %_secret_ld.i471, %entry ], [ %_secret_xortmp248, %loop_body ]
  %_secret___v127_x7.0363 = phi i32 [ %_secret_ld.i473, %entry ], [ %_secret_xortmp224, %loop_body ]
  %_secret___v114_x0.0362 = phi i32 [ 1634760805, %entry ], [ %_secret_xortmp212, %loop_body ]
  %_secret___v115_x5.0361 = phi i32 [ 857760878, %entry ], [ %_secret_xortmp236, %loop_body ]
  %_secret___v116_x10.0360 = phi i32 [ 2036477234, %entry ], [ %_secret_xortmp260, %loop_body ]
  %_secret___v117_x15.0359 = phi i32 [ 1797285236, %entry ], [ %_secret_xortmp284, %loop_body ]
  %_secret___v118_x1.0358 = phi i32 [ %_secret_ld.i, %entry ], [ %_secret_xortmp194, %loop_body ]
  %_secret___v119_x2.0357 = phi i32 [ %_secret_ld.i489, %entry ], [ %_secret_xortmp200, %loop_body ]
  %_secret___v120_x3.0356 = phi i32 [ %_secret_ld.i487, %entry ], [ %_secret_xortmp206, %loop_body ]
  %_secret___v121_x4.0355 = phi i32 [ %_secret_ld.i485, %entry ], [ %_secret_xortmp230, %loop_body ]
  %_secret___v122_x11.0354 = phi i32 [ %_secret_ld.i483, %entry ], [ %_secret_xortmp242, %loop_body ]
  %_secret___v123_x12.0353 = phi i32 [ %_secret_ld.i481, %entry ], [ %_secret_xortmp266, %loop_body ]
  %_secret___v124_x13.0352 = phi i32 [ %_secret_ld.i479, %entry ], [ %_secret_xortmp272, %loop_body ]
  %_secret___v125_x14.0351 = phi i32 [ %_secret_ld.i477, %entry ], [ %_secret_xortmp278, %loop_body ]
  %_secret___v126_x6.0350 = phi i32 [ %_secret_ld.i475, %entry ], [ %_secret_xortmp218, %loop_body ]
  %_secret_addtmp = add i32 %_secret___v114_x0.0362, %_secret___v123_x12.0353
  %_secret_lshift.i465 = shl i32 %_secret_addtmp, 7
  %_secret_lrshift.i466 = lshr i32 %_secret_addtmp, 25
  %_secret_rotltmp.i467 = or i32 %_secret_lrshift.i466, %_secret_lshift.i465
  %_secret_xortmp = xor i32 %_secret_rotltmp.i467, %_secret___v121_x4.0355
  %_secret_addtmp102 = add i32 %_secret_xortmp, %_secret___v114_x0.0362
  %_secret_lshift.i462 = shl i32 %_secret_addtmp102, 9
  %_secret_lrshift.i463 = lshr i32 %_secret_addtmp102, 23
  %_secret_rotltmp.i464 = or i32 %_secret_lrshift.i463, %_secret_lshift.i462
  %_secret_xortmp104 = xor i32 %_secret_rotltmp.i464, %_secret___v128_x8.0364
  %_secret_addtmp108 = add i32 %_secret_xortmp104, %_secret_xortmp
  %_secret_lshift.i459 = shl i32 %_secret_addtmp108, 13
  %_secret_lrshift.i460 = lshr i32 %_secret_addtmp108, 19
  %_secret_rotltmp.i461 = or i32 %_secret_lrshift.i460, %_secret_lshift.i459
  %_secret_xortmp110 = xor i32 %_secret_rotltmp.i461, %_secret___v123_x12.0353
  %_secret_addtmp114 = add i32 %_secret_xortmp110, %_secret_xortmp104
  %_secret_lshift.i456 = shl i32 %_secret_addtmp114, 18
  %_secret_lrshift.i457 = lshr i32 %_secret_addtmp114, 14
  %_secret_rotltmp.i458 = or i32 %_secret_lrshift.i457, %_secret_lshift.i456
  %_secret_xortmp116 = xor i32 %_secret_rotltmp.i458, %_secret___v114_x0.0362
  %_secret_addtmp120 = add i32 %_secret___v115_x5.0361, %_secret___v118_x1.0358
  %_secret_lshift.i453 = shl i32 %_secret_addtmp120, 7
  %_secret_lrshift.i454 = lshr i32 %_secret_addtmp120, 25
  %_secret_rotltmp.i455 = or i32 %_secret_lrshift.i454, %_secret_lshift.i453
  %_secret_xortmp122 = xor i32 %_secret_rotltmp.i455, %_secret___v129_x9.0365
  %_secret_addtmp126 = add i32 %_secret_xortmp122, %_secret___v115_x5.0361
  %_secret_lshift.i450 = shl i32 %_secret_addtmp126, 9
  %_secret_lrshift.i451 = lshr i32 %_secret_addtmp126, 23
  %_secret_rotltmp.i452 = or i32 %_secret_lrshift.i451, %_secret_lshift.i450
  %_secret_xortmp128 = xor i32 %_secret_rotltmp.i452, %_secret___v124_x13.0352
  %_secret_addtmp132 = add i32 %_secret_xortmp128, %_secret_xortmp122
  %_secret_lshift.i447 = shl i32 %_secret_addtmp132, 13
  %_secret_lrshift.i448 = lshr i32 %_secret_addtmp132, 19
  %_secret_rotltmp.i449 = or i32 %_secret_lrshift.i448, %_secret_lshift.i447
  %_secret_xortmp134 = xor i32 %_secret_rotltmp.i449, %_secret___v118_x1.0358
  %_secret_addtmp138 = add i32 %_secret_xortmp134, %_secret_xortmp128
  %_secret_lshift.i444 = shl i32 %_secret_addtmp138, 18
  %_secret_lrshift.i445 = lshr i32 %_secret_addtmp138, 14
  %_secret_rotltmp.i446 = or i32 %_secret_lrshift.i445, %_secret_lshift.i444
  %_secret_xortmp140 = xor i32 %_secret_rotltmp.i446, %_secret___v115_x5.0361
  %_secret_addtmp144 = add i32 %_secret___v116_x10.0360, %_secret___v126_x6.0350
  %_secret_lshift.i441 = shl i32 %_secret_addtmp144, 7
  %_secret_lrshift.i442 = lshr i32 %_secret_addtmp144, 25
  %_secret_rotltmp.i443 = or i32 %_secret_lrshift.i442, %_secret_lshift.i441
  %_secret_xortmp146 = xor i32 %_secret_rotltmp.i443, %_secret___v125_x14.0351
  %_secret_addtmp150 = add i32 %_secret_xortmp146, %_secret___v116_x10.0360
  %_secret_lshift.i438 = shl i32 %_secret_addtmp150, 9
  %_secret_lrshift.i439 = lshr i32 %_secret_addtmp150, 23
  %_secret_rotltmp.i440 = or i32 %_secret_lrshift.i439, %_secret_lshift.i438
  %_secret_xortmp152 = xor i32 %_secret_rotltmp.i440, %_secret___v119_x2.0357
  %_secret_addtmp156 = add i32 %_secret_xortmp152, %_secret_xortmp146
  %_secret_lshift.i435 = shl i32 %_secret_addtmp156, 13
  %_secret_lrshift.i436 = lshr i32 %_secret_addtmp156, 19
  %_secret_rotltmp.i437 = or i32 %_secret_lrshift.i436, %_secret_lshift.i435
  %_secret_xortmp158 = xor i32 %_secret_rotltmp.i437, %_secret___v126_x6.0350
  %_secret_addtmp162 = add i32 %_secret_xortmp158, %_secret_xortmp152
  %_secret_lshift.i432 = shl i32 %_secret_addtmp162, 18
  %_secret_lrshift.i433 = lshr i32 %_secret_addtmp162, 14
  %_secret_rotltmp.i434 = or i32 %_secret_lrshift.i433, %_secret_lshift.i432
  %_secret_xortmp164 = xor i32 %_secret_rotltmp.i434, %_secret___v116_x10.0360
  %_secret_addtmp168 = add i32 %_secret___v117_x15.0359, %_secret___v122_x11.0354
  %_secret_lshift.i429 = shl i32 %_secret_addtmp168, 7
  %_secret_lrshift.i430 = lshr i32 %_secret_addtmp168, 25
  %_secret_rotltmp.i431 = or i32 %_secret_lrshift.i430, %_secret_lshift.i429
  %_secret_xortmp170 = xor i32 %_secret_rotltmp.i431, %_secret___v120_x3.0356
  %_secret_addtmp174 = add i32 %_secret_xortmp170, %_secret___v117_x15.0359
  %_secret_lshift.i426 = shl i32 %_secret_addtmp174, 9
  %_secret_lrshift.i427 = lshr i32 %_secret_addtmp174, 23
  %_secret_rotltmp.i428 = or i32 %_secret_lrshift.i427, %_secret_lshift.i426
  %_secret_xortmp176 = xor i32 %_secret_rotltmp.i428, %_secret___v127_x7.0363
  %_secret_addtmp180 = add i32 %_secret_xortmp176, %_secret_xortmp170
  %_secret_lshift.i423 = shl i32 %_secret_addtmp180, 13
  %_secret_lrshift.i424 = lshr i32 %_secret_addtmp180, 19
  %_secret_rotltmp.i425 = or i32 %_secret_lrshift.i424, %_secret_lshift.i423
  %_secret_xortmp182 = xor i32 %_secret_rotltmp.i425, %_secret___v122_x11.0354
  %_secret_addtmp186 = add i32 %_secret_xortmp182, %_secret_xortmp176
  %_secret_lshift.i420 = shl i32 %_secret_addtmp186, 18
  %_secret_lrshift.i421 = lshr i32 %_secret_addtmp186, 14
  %_secret_rotltmp.i422 = or i32 %_secret_lrshift.i421, %_secret_lshift.i420
  %_secret_xortmp188 = xor i32 %_secret_rotltmp.i422, %_secret___v117_x15.0359
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
  %_public_addtmp = add nuw nsw i32 %_public___v130_i.0366, 1
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
define internal fastcc i1 @_crypto_secretbox_xsalsa20poly1305_open(i8* %_secret_arrarg1, i8* %_public_arrarg3, i32 %_public___c_len4, i8* nocapture readonly %_public_arrarg6, i8* nocapture readonly %_secret_arrarg8) unnamed_addr #3 {
entry:
  %_secret___v46_correct.i = alloca [16 x i8], align 1
  %_secret___v131_subkey.i = alloca [32 x i8], align 1
  %_public_ulttmp = icmp ult i32 %_public___c_len4, 32
  br i1 %_public_ulttmp, label %thenbranch, label %branchmerge

thenbranch:                                       ; preds = %branchmerge21, %_crypto_onetimeauth_poly1305_verify.exit, %entry
  %_public_merge = phi i1 [ false, %_crypto_onetimeauth_poly1305_verify.exit ], [ false, %entry ], [ true, %branchmerge21 ]
  ret i1 %_public_merge

branchmerge:                                      ; preds = %entry
  %_secret___v142_subkey = alloca [32 x i8], align 1
  %_secret_arrtoptr = getelementptr inbounds [32 x i8], [32 x i8]* %_secret___v142_subkey, i64 0, i64 0
  %_secret_9 = bitcast [32 x i8]* %_secret___v131_subkey.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* %_secret_9)
  %_secret_arrtoptr.i = getelementptr inbounds [32 x i8], [32 x i8]* %_secret___v131_subkey.i, i64 0, i64 0
  call fastcc void @_crypto_core_hsalsa20(i8* nonnull %_secret_arrtoptr.i, i8* %_public_arrarg6, i8* %_secret_arrarg8) #3
  %_public_source_gep15.i = getelementptr inbounds i8, i8* %_public_arrarg6, i64 16
  call fastcc void @_crypto_stream_salsa20(i8* %_secret_arrtoptr, i32 32, i8* nonnull %_public_source_gep15.i, i8* nonnull %_secret_arrtoptr.i) #3
  call fastcc void @_memzero(i8* %_secret_arrtoptr.i, i32 32) #3
  %_secret_10 = bitcast [32 x i8]* %_secret___v131_subkey.i to i8*
  call void @llvm.lifetime.end.p0i8(i64 32, i8* %_secret_10)
  %_public_source_gep = getelementptr inbounds i8, i8* %_public_arrarg3, i64 16
  %_public_subtmp = add i32 %_public___c_len4, -32
  %_public_source_gep12 = getelementptr inbounds i8, i8* %_public_arrarg3, i64 32
  %_secret_11 = bitcast [16 x i8]* %_secret___v46_correct.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %_secret_11)
  %_secret_arrtoptr.i2 = getelementptr inbounds [16 x i8], [16 x i8]* %_secret___v46_correct.i, i64 0, i64 0
  call fastcc void @_crypto_onetimeauth_poly1305(i8* nonnull %_secret_arrtoptr.i2, i8* %_public_source_gep12, i32 %_public_subtmp, i8* %_secret_arrtoptr) #3
  br label %loop_body.i.i

loop_body.i.i:                                    ; preds = %loop_body.i.i, %branchmerge
  %_public___v1_i.035.i.i = phi i32 [ 0, %branchmerge ], [ %_public_addtmp.i.i, %loop_body.i.i ]
  %_secret___rnset.034.i.i = phi i1 [ true, %branchmerge ], [ %_secret_trunc.i38.i.i, %loop_body.i.i ]
  %_secret___rval.033.i.i = phi i1 [ false, %branchmerge ], [ %_secret_trunc.i.i.i, %loop_body.i.i ]
  %_public_ = zext i32 %_public___v1_i.035.i.i to i64
  %_secret_ptr.i.i = getelementptr inbounds i8, i8* %_public_source_gep, i64 %_public_
  %_secret_lval.i.i = load i8, i8* %_secret_ptr.i.i, align 1
  %_secret_ptr7.i.i = getelementptr inbounds i8, i8* %_secret_arrtoptr.i2, i64 %_public_
  %_secret_lval8.i.i = load i8, i8* %_secret_ptr7.i.i, align 1
  %_secret_neqtmp.i.i = icmp ne i8 %_secret_lval.i.i, %_secret_lval8.i.i
  %_secret_landtmp11.i.i = and i1 %_secret___rnset.034.i.i, %_secret_neqtmp.i.i
  %_secret_zext1.i.i.i = zext i1 %_secret___rval.033.i.i to i32
  %_secret_asm.i.i.i = call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %_secret_landtmp11.i.i, i32 0, i32 %_secret_zext1.i.i.i) #3
  %_secret_7 = and i32 %_secret_asm.i.i.i, 1
  %_secret_trunc.i.i.i = icmp ne i32 %_secret_7, 0
  %_secret_zext1.i36.i.i = zext i1 %_secret___rnset.034.i.i to i32
  %_secret_asm.i37.i.i = call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %_secret_landtmp11.i.i, i32 0, i32 %_secret_zext1.i36.i.i) #3
  %_secret_8 = and i32 %_secret_asm.i37.i.i, 1
  %_secret_trunc.i38.i.i = icmp ne i32 %_secret_8, 0
  %_public_addtmp.i.i = add nuw nsw i32 %_public___v1_i.035.i.i, 1
  %_public_ulttmp.i.i = icmp ult i32 %_public_addtmp.i.i, 16
  br i1 %_public_ulttmp.i.i, label %loop_body.i.i, label %_crypto_onetimeauth_poly1305_verify.exit

_crypto_onetimeauth_poly1305_verify.exit:         ; preds = %loop_body.i.i
  %_secret_zext1.i39.i.i = zext i1 %_secret_trunc.i.i.i to i32
  %_secret_asm.i40.i.i = call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %_secret_trunc.i38.i.i, i32 1, i32 %_secret_zext1.i39.i.i) #3
  %_secret_4 = and i32 %_secret_asm.i40.i.i, 1
  %_secret_trunc.i41.i.i = icmp ne i32 %_secret_4, 0
  %_secret_zext1.i42.i.i = zext i1 %_secret_trunc.i38.i.i to i32
  %_secret_asm.i43.i.i = call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %_secret_trunc.i38.i.i, i32 0, i32 %_secret_zext1.i42.i.i) #3
  %_secret_5 = and i32 %_secret_asm.i43.i.i, 1
  %_secret_trunc.i44.i.i = icmp ne i32 %_secret_5, 0
  %_declassified_res.i = call fastcc i1 @fact.declassify.i1(i1 %_secret_trunc.i41.i.i) #3
  %_secret_6 = bitcast [16 x i8]* %_secret___v46_correct.i to i8*
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %_secret_6)
  br i1 %_declassified_res.i, label %branchmerge21, label %thenbranch

branchmerge21:                                    ; preds = %_crypto_onetimeauth_poly1305_verify.exit
  %_secret_ = bitcast [32 x i8]* %_secret___v131_subkey.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* %_secret_) #3
  %_secret_arrtoptr.i.i = getelementptr inbounds [32 x i8], [32 x i8]* %_secret___v131_subkey.i, i64 0, i64 0
  call fastcc void @_crypto_core_hsalsa20(i8* nonnull %_secret_arrtoptr.i.i, i8* %_public_arrarg6, i8* %_secret_arrarg8) #3
  %_public_source_gep15.i.i = getelementptr inbounds i8, i8* %_public_arrarg6, i64 16
  call fastcc void @_crypto_stream_salsa20_xor_ic(i8* %_secret_arrarg1, i8* %_public_arrarg3, i32 %_public___c_len4, i8* nonnull %_public_source_gep15.i.i, i64 0, i8* nonnull %_secret_arrtoptr.i.i) #3
  call fastcc void @_memzero(i8* %_secret_arrtoptr.i.i, i32 32) #3
  %_secret_3 = bitcast [32 x i8]* %_secret___v131_subkey.i to i8*
  call void @llvm.lifetime.end.p0i8(i64 32, i8* %_secret_3) #3
  call void @llvm.memset.p0i8.i64(i8* %_secret_arrarg1, i8 0, i64 32, i32 1, i1 false)
  br label %thenbranch
}

; Function Attrs: nounwind
define i1 @_crypto_secretbox(i8* %_secret_arrarg1, i32 %_public___c_len2, i8* %_secret_arrarg4, i32 %_public___m_len5, i8* nocapture readonly %_public_arrarg6, i8* nocapture readonly %_secret_arrarg8) local_unnamed_addr #3 {
entry:
  %_secret___v133_subkey.i.i.i = alloca [32 x i8], align 1
  %_public_ulttmp.i = icmp ult i32 %_public___m_len5, 32
  br i1 %_public_ulttmp.i, label %_crypto_secretbox_xsalsa20poly1305.exit, label %branchmerge.i

branchmerge.i:                                    ; preds = %entry
  %_secret_ = bitcast [32 x i8]* %_secret___v133_subkey.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* %_secret_) #3
  %_secret_arrtoptr.i.i.i = getelementptr inbounds [32 x i8], [32 x i8]* %_secret___v133_subkey.i.i.i, i64 0, i64 0
  call fastcc void @_crypto_core_hsalsa20(i8* nonnull %_secret_arrtoptr.i.i.i, i8* %_public_arrarg6, i8* %_secret_arrarg8) #3
  %_public_source_gep15.i.i.i = getelementptr inbounds i8, i8* %_public_arrarg6, i64 16
  call fastcc void @_crypto_stream_salsa20_xor_ic(i8* %_secret_arrarg1, i8* %_secret_arrarg4, i32 %_public___m_len5, i8* nonnull %_public_source_gep15.i.i.i, i64 0, i8* nonnull %_secret_arrtoptr.i.i.i) #3
  call fastcc void @_memzero(i8* %_secret_arrtoptr.i.i.i, i32 32) #3
  %_secret_13 = bitcast [32 x i8]* %_secret___v133_subkey.i.i.i to i8*
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
define i1 @_crypto_secretbox_open(i8* %_secret_arrarg1, i32 %_public___m_len2, i8* %_public_arrarg3, i32 %_public___c_len4, i8* nocapture readonly %_public_arrarg6, i8* nocapture readonly %_secret_arrarg8) local_unnamed_addr #3 {
entry:
  %_public_calltmp = tail call fastcc i1 @_crypto_secretbox_xsalsa20poly1305_open(i8* %_secret_arrarg1, i8* %_public_arrarg3, i32 %_public___c_len4, i8* %_public_arrarg6, i8* %_secret_arrarg8)
  ret i1 %_public_calltmp
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #0

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #0

attributes #0 = { argmemonly nounwind }
attributes #1 = { noinline nounwind }
attributes #2 = { norecurse nounwind }
attributes #3 = { nounwind }
attributes #4 = { noinline norecurse nounwind readnone }
