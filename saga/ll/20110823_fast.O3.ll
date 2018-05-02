; ModuleID = 'Module'
source_filename = "Module"

%AES_KEY = type { [60 x i32], i32 }
%SHA_CTX = type { [5 x i32], i32, i32, [64 x i8], i32 }
%EVP_AES_HMAC_SHA1 = type { %AES_KEY, %SHA_CTX, %SHA_CTX, %SHA_CTX, i64, [16 x i8] }

declare void @aesni_cbc_encrypt(i8*, i8*, i64, %AES_KEY*, i8*, i32) local_unnamed_addr

declare void @sha1_block_data_order(%SHA_CTX*, i8*, i32) local_unnamed_addr

define internal fastcc void @SHA1_Update_public(%SHA_CTX* %ctx, i8* %_secret_arrarg1, i32 %_public____in_len2) unnamed_addr {
entry:
  %_public_ucast = zext i32 %_public____in_len2 to i64
  %_public_lshift = shl nuw nsw i64 %_public_ucast, 3
  %_secret_structgep = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i64 0, i32 2
  %_secret_lval = load i32, i32* %_secret_structgep, align 4
  %_secret_ucast = zext i32 %_secret_lval to i64
  %_secret_lshift = shl nuw i64 %_secret_ucast, 32
  %_secret_structgep4 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i64 0, i32 1
  %_secret_lval5 = load i32, i32* %_secret_structgep4, align 4
  %_secret_rhssext = zext i32 %_secret_lval5 to i64
  %_secret_ortmp = or i64 %_secret_lshift, %_secret_rhssext
  %_secret_addtmp = add i64 %_secret_ortmp, %_public_lshift
  %_secret_lrshift = lshr i64 %_secret_addtmp, 32
  %_secret_ucast9 = trunc i64 %_secret_lrshift to i32
  store i32 %_secret_ucast9, i32* %_secret_structgep, align 4
  %_secret_ucast12 = trunc i64 %_secret_addtmp to i32
  store i32 %_secret_ucast12, i32* %_secret_structgep4, align 4
  %_public_structgep = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i64 0, i32 4
  %_public_lval14 = load i32, i32* %_public_structgep, align 4
  %_public_ugttmp = icmp ne i32 %_public_lval14, 0
  %_public_ugttmp17 = icmp ne i32 %_public____in_len2, 0
  %_public_landtmp = and i1 %_public_ugttmp17, %_public_ugttmp
  br i1 %_public_landtmp, label %thenbranch, label %branchmerge60

thenbranch:                                       ; preds = %entry
  %_public_subtmp = sub i32 64, %_public_lval14
  %_public_ulttmp = icmp ugt i32 %_public_subtmp, %_public____in_len2
  %_public_terntmp = select i1 %_public_ulttmp, i32 %_public____in_len2, i32 %_public_subtmp
  %_public_124 = sext i32 %_public_lval14 to i64
  %_secret_source_gep32 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i64 0, i32 3, i64 %_public_124
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %_secret_source_gep32, i8* %_secret_arrarg1, i32 %_public_terntmp, i32 1, i1 false) #2
  %_public_addtmp = add i32 %_public_terntmp, %_public_lval14
  %_public_eqtmp = icmp eq i32 %_public_addtmp, 64
  br i1 %_public_eqtmp, label %thenbranch44, label %elsebranch

thenbranch44:                                     ; preds = %thenbranch
  %_secret_arrtoptr = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i64 0, i32 3, i64 0
  tail call void @sha1_block_data_order(%SHA_CTX* nonnull %ctx, i8* nonnull %_secret_arrtoptr, i32 1)
  br label %branchmerge

elsebranch:                                       ; preds = %thenbranch
  %_public_lval50 = load i32, i32* %_public_structgep, align 4
  %_public_addtmp52 = add i32 %_public_lval50, %_public_terntmp
  br label %branchmerge

branchmerge:                                      ; preds = %elsebranch, %thenbranch44
  %_public_storemerge = phi i32 [ %_public_addtmp52, %elsebranch ], [ 0, %thenbranch44 ]
  store i32 %_public_storemerge, i32* %_public_structgep, align 4
  %_public_subtmp58 = sub i32 %_public____in_len2, %_public_terntmp
  br label %branchmerge60

branchmerge60:                                    ; preds = %entry, %branchmerge
  %_public___v7_inp.0 = phi i32 [ %_public_terntmp, %branchmerge ], [ 0, %entry ]
  %_public___v8__len.0 = phi i32 [ %_public_subtmp58, %branchmerge ], [ %_public____in_len2, %entry ]
  %_public_udivtmp = lshr i32 %_public___v8__len.0, 6
  %_public_ugttmp64 = icmp eq i32 %_public_udivtmp, 0
  br i1 %_public_ugttmp64, label %branchmerge91, label %thenbranch66

thenbranch66:                                     ; preds = %branchmerge60
  %_public_123 = sext i32 %_public___v7_inp.0 to i64
  %_secret_source_gep76 = getelementptr inbounds i8, i8* %_secret_arrarg1, i64 %_public_123
  tail call void @sha1_block_data_order(%SHA_CTX* nonnull %ctx, i8* %_secret_source_gep76, i32 %_public_udivtmp)
  %_public_multmp83 = and i32 %_public___v8__len.0, -64
  %_public_addtmp84 = add i32 %_public_multmp83, %_public___v7_inp.0
  %_public_subtmp89 = and i32 %_public___v8__len.0, 63
  br label %branchmerge91

branchmerge91:                                    ; preds = %branchmerge60, %thenbranch66
  %_public___v7_inp.1 = phi i32 [ %_public_addtmp84, %thenbranch66 ], [ %_public___v7_inp.0, %branchmerge60 ]
  %_public___v8__len.1 = phi i32 [ %_public_subtmp89, %thenbranch66 ], [ %_public___v8__len.0, %branchmerge60 ]
  %_public_ugttmp93 = icmp eq i32 %_public___v8__len.1, 0
  br i1 %_public_ugttmp93, label %branchmerge122, label %thenbranch95

thenbranch95:                                     ; preds = %branchmerge91
  %_secret_source_gep103 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i64 0, i32 3, i64 0
  %_public_ = sext i32 %_public___v7_inp.1 to i64
  %_secret_source_gep112 = getelementptr inbounds i8, i8* %_secret_arrarg1, i64 %_public_
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %_secret_source_gep103, i8* %_secret_source_gep112, i32 %_public___v8__len.1, i32 1, i1 false) #2
  %_public_lval118 = load i32, i32* %_public_structgep, align 4
  %_public_addtmp120 = add i32 %_public_lval118, %_public___v8__len.1
  store i32 %_public_addtmp120, i32* %_public_structgep, align 4
  br label %branchmerge122

branchmerge122:                                   ; preds = %branchmerge91, %thenbranch95
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #0

define internal fastcc void @SHA1_Update_secret(%SHA_CTX* %ctx, i32* nocapture %_secret_ctx_num, i8* nocapture readonly %_secret_arrarg1, i32 %_public____in_len2, i32 %_secret_slen3) unnamed_addr {
entry:
  %_secret_ucast = zext i32 %_secret_slen3 to i64
  %_secret_lshift = shl nuw nsw i64 %_secret_ucast, 3
  %_secret_structgep = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i64 0, i32 2
  %_secret_lval4 = load i32, i32* %_secret_structgep, align 4
  %_secret_ucast5 = zext i32 %_secret_lval4 to i64
  %_secret_lshift6 = shl nuw i64 %_secret_ucast5, 32
  %_secret_structgep7 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i64 0, i32 1
  %_secret_lval8 = load i32, i32* %_secret_structgep7, align 4
  %_secret_rhssext = zext i32 %_secret_lval8 to i64
  %_secret_ortmp = or i64 %_secret_lshift6, %_secret_rhssext
  %_secret_addtmp = add i64 %_secret_ortmp, %_secret_lshift
  %_secret_lrshift = lshr i64 %_secret_addtmp, 32
  %_secret_ucast12 = trunc i64 %_secret_lrshift to i32
  store i32 %_secret_ucast12, i32* %_secret_structgep, align 4
  %_secret_ucast15 = trunc i64 %_secret_addtmp to i32
  store i32 %_secret_ucast15, i32* %_secret_structgep7, align 4
  %_public_structgep = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i64 0, i32 4
  %_public_lval16 = load i32, i32* %_public_structgep, align 4
  %_public_ulttmp83 = icmp eq i32 %_public____in_len2, 0
  br i1 %_public_ulttmp83, label %loop_end, label %loop_body.lr.ph

loop_body.lr.ph:                                  ; preds = %entry
  %_secret_sourcecasted = bitcast %SHA_CTX* %ctx to i8*
  %_secret_arrtoptr = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i64 0, i32 3, i64 0
  %_secret_ptr51 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i64 0, i32 0, i64 0
  %_secret_ptr51.1 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i64 0, i32 0, i64 1
  %_secret_ptr51.2 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i64 0, i32 0, i64 2
  %_secret_ptr51.3 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i64 0, i32 0, i64 3
  %_secret_ptr51.4 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i64 0, i32 0, i64 4
  br label %loop_body

loop_body:                                        ; preds = %loop_body.lr.ph, %branchmerge
  %_public___v27_i.084 = phi i32 [ 0, %loop_body.lr.ph ], [ %_public_addtmp70, %branchmerge ]
  %_public_addtmp = add i32 %_public___v27_i.084, %_public_lval16
  %_public_uremtmp = and i32 %_public_addtmp, 63
  %_secret_ulttmp = icmp ult i32 %_public___v27_i.084, %_secret_slen3
  %_public_ = zext i32 %_public_uremtmp to i64
  %_secret_ptr = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i64 0, i32 3, i64 %_public_
  %_public_89 = sext i32 %_public___v27_i.084 to i64
  %_secret_ptr30 = getelementptr inbounds i8, i8* %_secret_arrarg1, i64 %_public_89
  %_secret_lval31 = load i8, i8* %_secret_ptr30, align 1
  %_secret_lval35 = load i8, i8* %_secret_ptr, align 1
  %_secret_zext.i = zext i8 %_secret_lval31 to i32
  %_secret_zext1.i = zext i8 %_secret_lval35 to i32
  %_secret_asm.i = tail call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %_secret_ulttmp, i32 %_secret_zext.i, i32 %_secret_zext1.i) #2
  %_secret_trunc.i = trunc i32 %_secret_asm.i to i8
  store i8 %_secret_trunc.i, i8* %_secret_ptr, align 1
  %_public_eqtmp = icmp eq i32 %_public_uremtmp, 63
  br i1 %_public_eqtmp, label %thenbranch, label %branchmerge

loop_end:                                         ; preds = %branchmerge, %entry
  %_secret_addtmp73 = add i32 %_public_lval16, %_secret_slen3
  %_secret_andtmp = and i32 %_secret_addtmp73, 63
  store i32 %_secret_andtmp, i32* %_secret_ctx_num, align 4
  %_public_addtmp79 = add i32 %_public_lval16, %_public____in_len2
  %_public_uremtmp81 = and i32 %_public_addtmp79, 63
  store i32 %_public_uremtmp81, i32* %_public_structgep, align 4
  ret void

thenbranch:                                       ; preds = %loop_body
  %_secret___v29_h = alloca [5 x i32], align 4
  %_secret_destcast = bitcast [5 x i32]* %_secret___v29_h to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %_secret_destcast, i8* nonnull %_secret_sourcecasted, i64 20, i32 1, i1 false)
  tail call void @sha1_block_data_order(%SHA_CTX* nonnull %ctx, i8* nonnull %_secret_arrtoptr, i32 1)
  %_secret_ugtetmp = icmp uge i32 %_public___v27_i.084, %_secret_slen3
  %_secret_ptr58 = getelementptr inbounds [5 x i32], [5 x i32]* %_secret___v29_h, i64 0, i64 0
  %_secret_lval59 = load i32, i32* %_secret_ptr58, align 4
  %_secret_lval63 = load i32, i32* %_secret_ptr51, align 4
  %_secret_select.i = select i1 %_secret_ugtetmp, i32 %_secret_lval59, i32 %_secret_lval63
  store i32 %_secret_select.i, i32* %_secret_ptr51, align 4
  %_secret_ptr58.1 = getelementptr inbounds [5 x i32], [5 x i32]* %_secret___v29_h, i64 0, i64 1
  %_secret_lval59.1 = load i32, i32* %_secret_ptr58.1, align 4
  %_secret_lval63.1 = load i32, i32* %_secret_ptr51.1, align 4
  %_secret_select.i88 = select i1 %_secret_ugtetmp, i32 %_secret_lval59.1, i32 %_secret_lval63.1
  store i32 %_secret_select.i88, i32* %_secret_ptr51.1, align 4
  %_secret_ptr58.2 = getelementptr inbounds [5 x i32], [5 x i32]* %_secret___v29_h, i64 0, i64 2
  %_secret_lval59.2 = load i32, i32* %_secret_ptr58.2, align 4
  %_secret_lval63.2 = load i32, i32* %_secret_ptr51.2, align 4
  %_secret_select.i87 = select i1 %_secret_ugtetmp, i32 %_secret_lval59.2, i32 %_secret_lval63.2
  store i32 %_secret_select.i87, i32* %_secret_ptr51.2, align 4
  %_secret_ptr58.3 = getelementptr inbounds [5 x i32], [5 x i32]* %_secret___v29_h, i64 0, i64 3
  %_secret_lval59.3 = load i32, i32* %_secret_ptr58.3, align 4
  %_secret_lval63.3 = load i32, i32* %_secret_ptr51.3, align 4
  %_secret_select.i86 = select i1 %_secret_ugtetmp, i32 %_secret_lval59.3, i32 %_secret_lval63.3
  store i32 %_secret_select.i86, i32* %_secret_ptr51.3, align 4
  %_secret_ptr58.4 = getelementptr inbounds [5 x i32], [5 x i32]* %_secret___v29_h, i64 0, i64 4
  %_secret_lval59.4 = load i32, i32* %_secret_ptr58.4, align 4
  %_secret_lval63.4 = load i32, i32* %_secret_ptr51.4, align 4
  %_secret_select.i85 = select i1 %_secret_ugtetmp, i32 %_secret_lval59.4, i32 %_secret_lval63.4
  store i32 %_secret_select.i85, i32* %_secret_ptr51.4, align 4
  br label %branchmerge

branchmerge:                                      ; preds = %thenbranch, %loop_body
  %_public_addtmp70 = add nuw i32 %_public___v27_i.084, 1
  %_public_ulttmp = icmp ult i32 %_public_addtmp70, %_public____in_len2
  br i1 %_public_ulttmp, label %loop_body, label %loop_end
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #0

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i32, i1) #0

; Function Attrs: noinline nounwind
define internal fastcc void @_memzero(i8* nocapture, i32) unnamed_addr #1 {
entry:
  tail call void @llvm.memset.p0i8.i32(i8* %0, i8 0, i32 %1, i32 1, i1 false)
  ret void
}

define internal fastcc void @SHA1_Final_secret(i8* nocapture %_secret_arrarg1, %SHA_CTX* %ctx, i32 %_secret_ctx_num2) unnamed_addr {
entry:
  %_secret_ulttmp = icmp ult i32 %_secret_ctx_num2, 56
  %_secret_structgep46 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i64 0, i32 1
  %_secret_structgep73 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i64 0, i32 2
  br label %loop_body

loop_body:                                        ; preds = %entry, %branchmerge84
  %_public___v38_i.0150 = phi i32 [ 0, %entry ], [ %_public_addtmp, %branchmerge84 ]
  %_secret_eqtmp = icmp eq i32 %_public___v38_i.0150, %_secret_ctx_num2
  %_public_ = zext i32 %_public___v38_i.0150 to i64
  %_secret_ptr = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i64 0, i32 3, i64 %_public_
  %_secret_lval12 = load i8, i8* %_secret_ptr, align 1
  %_secret_zext1.i = zext i8 %_secret_lval12 to i32
  %_secret_asm.i = tail call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %_secret_eqtmp, i32 128, i32 %_secret_zext1.i) #2
  %_secret_trunc.i = trunc i32 %_secret_asm.i to i8
  store i8 %_secret_trunc.i, i8* %_secret_ptr, align 1
  %_secret_ugttmp = icmp ugt i32 %_public___v38_i.0150, %_secret_ctx_num2
  %_secret_zext1.i151 = zext i8 %_secret_trunc.i to i32
  %_secret_asm.i152 = tail call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %_secret_ugttmp, i32 0, i32 %_secret_zext1.i151) #2
  %_secret_trunc.i153 = trunc i32 %_secret_asm.i152 to i8
  store i8 %_secret_trunc.i153, i8* %_secret_ptr, align 1
  %_public_ugtetmp = icmp ugt i32 %_public___v38_i.0150, 59
  br i1 %_public_ugtetmp, label %branchmerge84.sink.split, label %elsebranch

loop_end:                                         ; preds = %branchmerge84
  %_secret_arrtoptr = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i64 0, i32 3, i64 0
  tail call void @sha1_block_data_order(%SHA_CTX* nonnull %ctx, i8* nonnull %_secret_arrtoptr, i32 1)
  tail call fastcc void @_memzero(i8* nonnull %_secret_arrtoptr, i32 56)
  %_secret_source_gep102 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i64 0, i32 3, i64 56
  %_secret_lval105 = load i32, i32* %_secret_structgep73, align 4
  %_secret_lrshift.i = lshr i32 %_secret_lval105, 24
  %_secret_ucast.i = trunc i32 %_secret_lrshift.i to i8
  store i8 %_secret_ucast.i, i8* %_secret_source_gep102, align 1
  %_secret_ptr4.i = getelementptr inbounds i8, i8* %_secret_source_gep102, i64 1
  %_secret_lrshift6.i = lshr i32 %_secret_lval105, 16
  %_secret_ucast7.i = trunc i32 %_secret_lrshift6.i to i8
  store i8 %_secret_ucast7.i, i8* %_secret_ptr4.i, align 1
  %_secret_ptr9.i = getelementptr inbounds i8, i8* %_secret_source_gep102, i64 2
  %_secret_lrshift11.i = lshr i32 %_secret_lval105, 8
  %_secret_ucast12.i = trunc i32 %_secret_lrshift11.i to i8
  store i8 %_secret_ucast12.i, i8* %_secret_ptr9.i, align 1
  %_secret_ptr14.i = getelementptr inbounds i8, i8* %_secret_source_gep102, i64 3
  %_secret_ucast16.i = trunc i32 %_secret_lval105 to i8
  store i8 %_secret_ucast16.i, i8* %_secret_ptr14.i, align 1
  %_secret_source_gep111 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i64 0, i32 3, i64 60
  %_secret_lval114 = load i32, i32* %_secret_structgep46, align 4
  %_secret_lrshift.i157 = lshr i32 %_secret_lval114, 24
  %_secret_ucast.i158 = trunc i32 %_secret_lrshift.i157 to i8
  store i8 %_secret_ucast.i158, i8* %_secret_source_gep111, align 1
  %_secret_ptr4.i159 = getelementptr inbounds i8, i8* %_secret_source_gep111, i64 1
  %_secret_lrshift6.i160 = lshr i32 %_secret_lval114, 16
  %_secret_ucast7.i161 = trunc i32 %_secret_lrshift6.i160 to i8
  store i8 %_secret_ucast7.i161, i8* %_secret_ptr4.i159, align 1
  %_secret_ptr9.i162 = getelementptr inbounds i8, i8* %_secret_source_gep111, i64 2
  %_secret_lrshift11.i163 = lshr i32 %_secret_lval114, 8
  %_secret_ucast12.i164 = trunc i32 %_secret_lrshift11.i163 to i8
  store i8 %_secret_ucast12.i164, i8* %_secret_ptr9.i162, align 1
  %_secret_ptr14.i165 = getelementptr inbounds i8, i8* %_secret_source_gep111, i64 3
  %_secret_ucast16.i166 = trunc i32 %_secret_lval114 to i8
  store i8 %_secret_ucast16.i166, i8* %_secret_ptr14.i165, align 1
  %_secret___v43_h = alloca [5 x i32], align 4
  %_secret_sourcecasted = bitcast %SHA_CTX* %ctx to i8*
  %_secret_destcast = bitcast [5 x i32]* %_secret___v43_h to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %_secret_destcast, i8* %_secret_sourcecasted, i64 20, i32 1, i1 false)
  tail call void @sha1_block_data_order(%SHA_CTX* nonnull %ctx, i8* nonnull %_secret_arrtoptr, i32 1)
  %_secret_ptr127 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i64 0, i32 0, i64 0
  %_secret_ptr134 = getelementptr inbounds [5 x i32], [5 x i32]* %_secret___v43_h, i64 0, i64 0
  %_secret_lval135 = load i32, i32* %_secret_ptr134, align 4
  %_secret_lval139 = load i32, i32* %_secret_ptr127, align 4
  %_secret_select.i = select i1 %_secret_ulttmp, i32 %_secret_lval135, i32 %_secret_lval139
  store i32 %_secret_select.i, i32* %_secret_ptr127, align 4
  %_secret_ptr127.1 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i64 0, i32 0, i64 1
  %_secret_ptr134.1 = getelementptr inbounds [5 x i32], [5 x i32]* %_secret___v43_h, i64 0, i64 1
  %_secret_lval135.1 = load i32, i32* %_secret_ptr134.1, align 4
  %_secret_lval139.1 = load i32, i32* %_secret_ptr127.1, align 4
  %_secret_select.i170 = select i1 %_secret_ulttmp, i32 %_secret_lval135.1, i32 %_secret_lval139.1
  store i32 %_secret_select.i170, i32* %_secret_ptr127.1, align 4
  %_secret_ptr127.2 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i64 0, i32 0, i64 2
  %_secret_ptr134.2 = getelementptr inbounds [5 x i32], [5 x i32]* %_secret___v43_h, i64 0, i64 2
  %_secret_lval135.2 = load i32, i32* %_secret_ptr134.2, align 4
  %_secret_lval139.2 = load i32, i32* %_secret_ptr127.2, align 4
  %_secret_select.i169 = select i1 %_secret_ulttmp, i32 %_secret_lval135.2, i32 %_secret_lval139.2
  store i32 %_secret_select.i169, i32* %_secret_ptr127.2, align 4
  %_secret_ptr127.3 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i64 0, i32 0, i64 3
  %_secret_ptr134.3 = getelementptr inbounds [5 x i32], [5 x i32]* %_secret___v43_h, i64 0, i64 3
  %_secret_lval135.3 = load i32, i32* %_secret_ptr134.3, align 4
  %_secret_lval139.3 = load i32, i32* %_secret_ptr127.3, align 4
  %_secret_select.i168 = select i1 %_secret_ulttmp, i32 %_secret_lval135.3, i32 %_secret_lval139.3
  store i32 %_secret_select.i168, i32* %_secret_ptr127.3, align 4
  %_secret_ptr127.4 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i64 0, i32 0, i64 4
  %_secret_ptr134.4 = getelementptr inbounds [5 x i32], [5 x i32]* %_secret___v43_h, i64 0, i64 4
  %_secret_lval135.4 = load i32, i32* %_secret_ptr134.4, align 4
  %_secret_lval139.4 = load i32, i32* %_secret_ptr127.4, align 4
  %_secret_select.i167 = select i1 %_secret_ulttmp, i32 %_secret_lval135.4, i32 %_secret_lval139.4
  store i32 %_secret_select.i167, i32* %_secret_ptr127.4, align 4
  %_public_structgep = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i64 0, i32 4
  store i32 0, i32* %_public_structgep, align 4
  tail call fastcc void @_memzero(i8* nonnull %_secret_arrtoptr, i32 64)
  %_secret_ptr.i = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i64 0, i32 0, i64 0
  %_secret_lval.i = load i32, i32* %_secret_ptr.i, align 4
  %_secret_lrshift.i.i = lshr i32 %_secret_lval.i, 24
  %_secret_ucast.i.i = trunc i32 %_secret_lrshift.i.i to i8
  store i8 %_secret_ucast.i.i, i8* %_secret_arrarg1, align 1
  %_secret_ptr4.i.i = getelementptr inbounds i8, i8* %_secret_arrarg1, i64 1
  %_secret_lrshift6.i.i = lshr i32 %_secret_lval.i, 16
  %_secret_ucast7.i.i = trunc i32 %_secret_lrshift6.i.i to i8
  store i8 %_secret_ucast7.i.i, i8* %_secret_ptr4.i.i, align 1
  %_secret_ptr9.i.i = getelementptr inbounds i8, i8* %_secret_arrarg1, i64 2
  %_secret_lrshift11.i.i = lshr i32 %_secret_lval.i, 8
  %_secret_ucast12.i.i = trunc i32 %_secret_lrshift11.i.i to i8
  store i8 %_secret_ucast12.i.i, i8* %_secret_ptr9.i.i, align 1
  %_secret_ptr14.i.i = getelementptr inbounds i8, i8* %_secret_arrarg1, i64 3
  %_secret_ucast16.i.i = trunc i32 %_secret_lval.i to i8
  store i8 %_secret_ucast16.i.i, i8* %_secret_ptr14.i.i, align 1
  %_secret_source_gep6.1.i = getelementptr inbounds i8, i8* %_secret_arrarg1, i64 4
  %_secret_ptr.1.i = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i64 0, i32 0, i64 1
  %_secret_lval.1.i = load i32, i32* %_secret_ptr.1.i, align 4
  %_secret_lrshift.i41.i = lshr i32 %_secret_lval.1.i, 24
  %_secret_ucast.i42.i = trunc i32 %_secret_lrshift.i41.i to i8
  store i8 %_secret_ucast.i42.i, i8* %_secret_source_gep6.1.i, align 1
  %_secret_ptr4.i43.i = getelementptr inbounds i8, i8* %_secret_source_gep6.1.i, i64 1
  %_secret_lrshift6.i44.i = lshr i32 %_secret_lval.1.i, 16
  %_secret_ucast7.i45.i = trunc i32 %_secret_lrshift6.i44.i to i8
  store i8 %_secret_ucast7.i45.i, i8* %_secret_ptr4.i43.i, align 1
  %_secret_ptr9.i46.i = getelementptr inbounds i8, i8* %_secret_source_gep6.1.i, i64 2
  %_secret_lrshift11.i47.i = lshr i32 %_secret_lval.1.i, 8
  %_secret_ucast12.i48.i = trunc i32 %_secret_lrshift11.i47.i to i8
  store i8 %_secret_ucast12.i48.i, i8* %_secret_ptr9.i46.i, align 1
  %_secret_ptr14.i49.i = getelementptr inbounds i8, i8* %_secret_source_gep6.1.i, i64 3
  %_secret_ucast16.i50.i = trunc i32 %_secret_lval.1.i to i8
  store i8 %_secret_ucast16.i50.i, i8* %_secret_ptr14.i49.i, align 1
  %_secret_source_gep6.2.i = getelementptr inbounds i8, i8* %_secret_arrarg1, i64 8
  %_secret_ptr.2.i = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i64 0, i32 0, i64 2
  %_secret_lval.2.i = load i32, i32* %_secret_ptr.2.i, align 4
  %_secret_lrshift.i31.i = lshr i32 %_secret_lval.2.i, 24
  %_secret_ucast.i32.i = trunc i32 %_secret_lrshift.i31.i to i8
  store i8 %_secret_ucast.i32.i, i8* %_secret_source_gep6.2.i, align 1
  %_secret_ptr4.i33.i = getelementptr inbounds i8, i8* %_secret_source_gep6.2.i, i64 1
  %_secret_lrshift6.i34.i = lshr i32 %_secret_lval.2.i, 16
  %_secret_ucast7.i35.i = trunc i32 %_secret_lrshift6.i34.i to i8
  store i8 %_secret_ucast7.i35.i, i8* %_secret_ptr4.i33.i, align 1
  %_secret_ptr9.i36.i = getelementptr inbounds i8, i8* %_secret_source_gep6.2.i, i64 2
  %_secret_lrshift11.i37.i = lshr i32 %_secret_lval.2.i, 8
  %_secret_ucast12.i38.i = trunc i32 %_secret_lrshift11.i37.i to i8
  store i8 %_secret_ucast12.i38.i, i8* %_secret_ptr9.i36.i, align 1
  %_secret_ptr14.i39.i = getelementptr inbounds i8, i8* %_secret_source_gep6.2.i, i64 3
  %_secret_ucast16.i40.i = trunc i32 %_secret_lval.2.i to i8
  store i8 %_secret_ucast16.i40.i, i8* %_secret_ptr14.i39.i, align 1
  %_secret_source_gep6.3.i = getelementptr inbounds i8, i8* %_secret_arrarg1, i64 12
  %_secret_ptr.3.i = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i64 0, i32 0, i64 3
  %_secret_lval.3.i = load i32, i32* %_secret_ptr.3.i, align 4
  %_secret_lrshift.i21.i = lshr i32 %_secret_lval.3.i, 24
  %_secret_ucast.i22.i = trunc i32 %_secret_lrshift.i21.i to i8
  store i8 %_secret_ucast.i22.i, i8* %_secret_source_gep6.3.i, align 1
  %_secret_ptr4.i23.i = getelementptr inbounds i8, i8* %_secret_source_gep6.3.i, i64 1
  %_secret_lrshift6.i24.i = lshr i32 %_secret_lval.3.i, 16
  %_secret_ucast7.i25.i = trunc i32 %_secret_lrshift6.i24.i to i8
  store i8 %_secret_ucast7.i25.i, i8* %_secret_ptr4.i23.i, align 1
  %_secret_ptr9.i26.i = getelementptr inbounds i8, i8* %_secret_source_gep6.3.i, i64 2
  %_secret_lrshift11.i27.i = lshr i32 %_secret_lval.3.i, 8
  %_secret_ucast12.i28.i = trunc i32 %_secret_lrshift11.i27.i to i8
  store i8 %_secret_ucast12.i28.i, i8* %_secret_ptr9.i26.i, align 1
  %_secret_ptr14.i29.i = getelementptr inbounds i8, i8* %_secret_source_gep6.3.i, i64 3
  %_secret_ucast16.i30.i = trunc i32 %_secret_lval.3.i to i8
  store i8 %_secret_ucast16.i30.i, i8* %_secret_ptr14.i29.i, align 1
  %_secret_source_gep6.4.i = getelementptr inbounds i8, i8* %_secret_arrarg1, i64 16
  %_secret_ptr.4.i = getelementptr inbounds %SHA_CTX, %SHA_CTX* %ctx, i64 0, i32 0, i64 4
  %_secret_lval.4.i = load i32, i32* %_secret_ptr.4.i, align 4
  %_secret_lrshift.i11.i = lshr i32 %_secret_lval.4.i, 24
  %_secret_ucast.i12.i = trunc i32 %_secret_lrshift.i11.i to i8
  store i8 %_secret_ucast.i12.i, i8* %_secret_source_gep6.4.i, align 1
  %_secret_ptr4.i13.i = getelementptr inbounds i8, i8* %_secret_source_gep6.4.i, i64 1
  %_secret_lrshift6.i14.i = lshr i32 %_secret_lval.4.i, 16
  %_secret_ucast7.i15.i = trunc i32 %_secret_lrshift6.i14.i to i8
  store i8 %_secret_ucast7.i15.i, i8* %_secret_ptr4.i13.i, align 1
  %_secret_ptr9.i16.i = getelementptr inbounds i8, i8* %_secret_source_gep6.4.i, i64 2
  %_secret_lrshift11.i17.i = lshr i32 %_secret_lval.4.i, 8
  %_secret_ucast12.i18.i = trunc i32 %_secret_lrshift11.i17.i to i8
  store i8 %_secret_ucast12.i18.i, i8* %_secret_ptr9.i16.i, align 1
  %_secret_ptr14.i19.i = getelementptr inbounds i8, i8* %_secret_source_gep6.4.i, i64 3
  %_secret_ucast16.i20.i = trunc i32 %_secret_lval.4.i to i8
  store i8 %_secret_ucast16.i20.i, i8* %_secret_ptr14.i19.i, align 1
  ret void

elsebranch:                                       ; preds = %loop_body
  %_public_ugtetmp55 = icmp ugt i32 %_public___v38_i.0150, 55
  br i1 %_public_ugtetmp55, label %branchmerge84.sink.split, label %branchmerge84

branchmerge84.sink.split:                         ; preds = %elsebranch, %loop_body
  %_public_.sink = phi i32 [ 504, %loop_body ], [ 472, %elsebranch ]
  %_secret_structgep73.sink = phi i32* [ %_secret_structgep46, %loop_body ], [ %_secret_structgep73, %elsebranch ]
  %_public_subtmp59 = shl i32 %_public___v38_i.0150, 3
  %_public_multmp60 = sub nsw i32 %_public_.sink, %_public_subtmp59
  %_secret_landtmp71 = and i1 %_secret_ulttmp, %_secret_ugttmp
  %_secret_lval74 = load i32, i32* %_secret_structgep73.sink, align 4
  %_secret_lrshift76 = lshr i32 %_secret_lval74, %_public_multmp60
  %_secret_ucast77 = trunc i32 %_secret_lrshift76 to i8
  %_secret_zext.i = zext i8 %_secret_ucast77 to i32
  %_secret_zext1.i154 = zext i8 %_secret_trunc.i153 to i32
  %_secret_asm.i155 = tail call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %_secret_landtmp71, i32 %_secret_zext.i, i32 %_secret_zext1.i154) #2
  %_secret_trunc.i156 = trunc i32 %_secret_asm.i155 to i8
  store i8 %_secret_trunc.i156, i8* %_secret_ptr, align 1
  br label %branchmerge84

branchmerge84:                                    ; preds = %branchmerge84.sink.split, %elsebranch
  %_public_addtmp = add nuw nsw i32 %_public___v38_i.0150, 1
  %_public_ulttmp = icmp ult i32 %_public_addtmp, 64
  br i1 %_public_ulttmp, label %loop_body, label %loop_end
}

define i32 @_aesni_cbc_hmac_sha1_cipher(i8* %_secret_arrarg1, %EVP_AES_HMAC_SHA1* %key, i8* %_secret_arrarg3, i32 %_public____out_len4, i8* %_secret_arrarg6, i32 %_public____in_len7, i64 %_public_plen8) local_unnamed_addr {
entry:
  %_secret___v79_ctx_num = alloca i32, align 4
  %_public_uremtmp = and i32 %_public____in_len7, 15
  %_public_neqtmp = icmp eq i32 %_public_uremtmp, 0
  br i1 %_public_neqtmp, label %branchmerge, label %thenbranch

thenbranch:                                       ; preds = %loop_body, %SHA1_Final_public.exit, %elsebranch43, %thenbranch21, %entry
  %_public_merge = phi i32 [ 0, %elsebranch43 ], [ 0, %thenbranch21 ], [ 0, %entry ], [ %_secret_select.i289, %SHA1_Final_public.exit ], [ %_secret_select.i, %loop_body ]
  ret i32 %_public_merge

branchmerge:                                      ; preds = %entry
  %_public_subtmp14 = add i64 %_public_plen8, -4
  %_secret_source_gep17 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 5, i64 %_public_subtmp14
  %_secret_source_gep17.val = load i8, i8* %_secret_source_gep17, align 1
  %_secret_source_gep17.idx = getelementptr i8, i8* %_secret_source_gep17, i64 1
  %_secret_source_gep17.idx.val = load i8, i8* %_secret_source_gep17.idx, align 1
  %_secret_ucast.i = zext i8 %_secret_source_gep17.val to i16
  %_secret_lshift.i = shl nuw i16 %_secret_ucast.i, 8
  %_secret_ucast5.i = zext i8 %_secret_source_gep17.idx.val to i16
  %_secret_ortmp.i = or i16 %_secret_lshift.i, %_secret_ucast5.i
  %_declassified__secret_ugtetmp = icmp ugt i16 %_secret_ortmp.i, 769
  br i1 %_declassified__secret_ugtetmp, label %thenbranch21, label %elsebranch43

thenbranch21:                                     ; preds = %branchmerge
  %_public_ulttmp = icmp ult i32 %_public____out_len4, 37
  br i1 %_public_ulttmp, label %thenbranch, label %branchmerge30

branchmerge30:                                    ; preds = %thenbranch21
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %_secret_arrarg1, i8* %_secret_arrarg6, i32 16, i32 1, i1 false) #2
  %_public_subtmp42 = add i32 %_public____out_len4, -16
  br label %branchmerge53

elsebranch43:                                     ; preds = %branchmerge
  %_public_ulttmp47 = icmp ult i32 %_public____out_len4, 21
  br i1 %_public_ulttmp47, label %thenbranch, label %branchmerge53

branchmerge53:                                    ; preds = %elsebranch43, %branchmerge30
  %_public___v67_inp.0 = phi i64 [ 16, %branchmerge30 ], [ 0, %elsebranch43 ]
  %_public___v68_outp.0 = phi i32 [ 16, %branchmerge30 ], [ 0, %elsebranch43 ]
  %_public___v69__len.0 = phi i32 [ %_public_subtmp42, %branchmerge30 ], [ %_public____out_len4, %elsebranch43 ]
  %_secret_source_gep60 = getelementptr inbounds i8, i8* %_secret_arrarg6, i64 %_public___v67_inp.0
  %_public_300 = zext i32 %_public___v68_outp.0 to i64
  %_secret_source_gep69 = getelementptr inbounds i8, i8* %_secret_arrarg3, i64 %_public_300
  %_public_zexttmp = zext i32 %_public___v69__len.0 to i64
  %_public_structgep = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 0
  tail call void @aesni_cbc_encrypt(i8* %_secret_source_gep60, i8* %_secret_source_gep69, i64 %_public_zexttmp, %AES_KEY* %_public_structgep, i8* %_secret_arrarg1, i32 0)
  %_public_subtmp75 = add i32 %_public____out_len4, -1
  %_public_301 = sext i32 %_public_subtmp75 to i64
  %_secret_ptr = getelementptr inbounds i8, i8* %_secret_arrarg3, i64 %_public_301
  %_secret_lval76 = load i8, i8* %_secret_ptr, align 1
  %_secret_zexttmp = zext i8 %_secret_lval76 to i32
  %_public_subtmp80 = add i32 %_public___v69__len.0, -21
  %_public_302 = icmp ult i32 %_public_subtmp80, 255
  %_public_terntmp = select i1 %_public_302, i32 %_public_subtmp80, i32 255
  %_secret_ugttmp = icmp ult i32 %_public_terntmp, %_secret_zexttmp
  %_secret_select.i288 = select i1 %_secret_ugttmp, i32 0, i32 1
  %_secret_select.i290 = select i1 %_secret_ugttmp, i32 %_public_terntmp, i32 %_secret_zexttmp
  %_secret_subtmp = sub i32 %_public_subtmp80, %_secret_select.i290
  %_public_subtmp108 = add i64 %_public_plen8, -2
  %_secret_source_gep111 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 5, i64 %_public_subtmp108
  %_secret_ucast = trunc i32 %_secret_subtmp to i16
  %_secret_lrshift.i = lshr i16 %_secret_ucast, 8
  %_secret_ucast.i291 = trunc i16 %_secret_lrshift.i to i8
  store i8 %_secret_ucast.i291, i8* %_secret_source_gep111, align 1
  %_secret_ptr4.i = getelementptr inbounds i8, i8* %_secret_source_gep111, i64 1
  %_secret_ucast6.i = trunc i16 %_secret_ucast to i8
  store i8 %_secret_ucast6.i, i8* %_secret_ptr4.i, align 1
  store i32 0, i32* %_secret___v79_ctx_num, align 4
  %_secret___v80_pmac = alloca [20 x i8], align 32
  %_public_structgep114 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 3
  %_public_structgep115 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 1
  %_secret_cast.i = bitcast %SHA_CTX* %_public_structgep114 to i8*
  %_secret_cast1.i = bitcast %SHA_CTX* %_public_structgep115 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %_secret_cast.i, i8* %_secret_cast1.i, i32 96, i32 4, i1 false) #2
  %_public_trunctmp = trunc i64 %_public_plen8 to i32
  %_secret_source_gep123 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 5, i64 0
  tail call fastcc void @SHA1_Update_public(%SHA_CTX* nonnull %_public_structgep114, i8* nonnull %_secret_source_gep123, i32 %_public_trunctmp)
  %_public_ugtetmp = icmp ugt i32 %_public___v69__len.0, 339
  %_public_structgep142 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 3, i32 4
  %_public_lval143 = load i32, i32* %_public_structgep142, align 4
  %_public_andtmp285 = add i32 %_public___v69__len.0, -276
  %_public_subtmp144 = and i32 %_public_andtmp285, -64
  %_public_addtmp145 = sub i32 %_public_subtmp144, %_public_lval143
  %_public_terntmp146 = select i1 %_public_ugtetmp, i32 %_public_addtmp145, i32 0
  %_public_ugttmp148 = icmp eq i32 %_public_terntmp146, 0
  br i1 %_public_ugttmp148, label %branchmerge164, label %thenbranch150

thenbranch150:                                    ; preds = %branchmerge53
  tail call fastcc void @SHA1_Update_public(%SHA_CTX* nonnull %_public_structgep114, i8* %_secret_source_gep69, i32 %_public_terntmp146)
  br label %branchmerge164

branchmerge164:                                   ; preds = %branchmerge53, %thenbranch150
  %_public_subtmp167 = sub i32 %_public___v69__len.0, %_public_terntmp146
  %_public_addtmp177 = add i32 %_public_terntmp146, %_public___v68_outp.0
  %_public_298 = sext i32 %_public_addtmp177 to i64
  %_secret_source_gep179 = getelementptr inbounds i8, i8* %_secret_arrarg3, i64 %_public_298
  %_secret_subtmp185 = sub i32 %_secret_subtmp, %_public_terntmp146
  call fastcc void @SHA1_Update_secret(%SHA_CTX* nonnull %_public_structgep114, i32* nonnull %_secret___v79_ctx_num, i8* %_secret_source_gep179, i32 %_public_subtmp167, i32 %_secret_subtmp185)
  %_secret_arrtoptr = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v80_pmac, i64 0, i64 0
  %_secret_lval187 = load i32, i32* %_secret___v79_ctx_num, align 4
  call fastcc void @SHA1_Final_secret(i8* nonnull %_secret_arrtoptr, %SHA_CTX* nonnull %_public_structgep114, i32 %_secret_lval187)
  %_public_structgep189 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 2
  %_secret_cast.i292 = bitcast %SHA_CTX* %_public_structgep114 to i8*
  %_secret_cast1.i293 = bitcast %SHA_CTX* %_public_structgep189 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %_secret_cast.i292, i8* %_secret_cast1.i293, i32 96, i32 4, i1 false) #2
  call fastcc void @SHA1_Update_public(%SHA_CTX* nonnull %_public_structgep114, i8* nonnull %_secret_arrtoptr, i32 20)
  %_public_structgep.i = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep114, i64 0, i32 4
  %_public_lval.i = load i32, i32* %_public_structgep.i, align 4
  %_public_299 = sext i32 %_public_lval.i to i64
  %_secret_ptr.i = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep114, i64 0, i32 3, i64 %_public_299
  store i8 -128, i8* %_secret_ptr.i, align 1
  %_public_addtmp.i = add i32 %_public_lval.i, 1
  %_public_ugttmp.i = icmp ugt i32 %_public_addtmp.i, 56
  br i1 %_public_ugttmp.i, label %thenbranch.i, label %entry.branchmerge_crit_edge.i

entry.branchmerge_crit_edge.i:                    ; preds = %branchmerge164
  %_public_.pre.i = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep114, i64 0, i32 3, i64 0
  br label %SHA1_Final_public.exit

thenbranch.i:                                     ; preds = %branchmerge164
  %_public_subtmp.i = sub i32 63, %_public_lval.i
  %_public_297 = sext i32 %_public_addtmp.i to i64
  %_secret_source_gep11.i = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep114, i64 0, i32 3, i64 %_public_297
  call fastcc void @_memzero(i8* nonnull %_secret_source_gep11.i, i32 %_public_subtmp.i)
  %_secret_arrtoptr.i = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep114, i64 0, i32 3, i64 0
  call void @sha1_block_data_order(%SHA_CTX* nonnull %_public_structgep114, i8* nonnull %_secret_arrtoptr.i, i32 1)
  br label %SHA1_Final_public.exit

SHA1_Final_public.exit:                           ; preds = %entry.branchmerge_crit_edge.i, %thenbranch.i
  %_secret_arrtoptr46.pre-phi.i = phi i8* [ %_public_.pre.i, %entry.branchmerge_crit_edge.i ], [ %_secret_arrtoptr.i, %thenbranch.i ]
  %_public___v32_num.0.i = phi i32 [ %_public_addtmp.i, %entry.branchmerge_crit_edge.i ], [ 0, %thenbranch.i ]
  %_public_subtmp16.i = sub i32 56, %_public___v32_num.0.i
  %_public_296 = sext i32 %_public___v32_num.0.i to i64
  %_secret_source_gep24.i = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep114, i64 0, i32 3, i64 %_public_296
  call fastcc void @_memzero(i8* nonnull %_secret_source_gep24.i, i32 %_public_subtmp16.i)
  %_secret_source_gep32.i = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep114, i64 0, i32 3, i64 56
  %_secret_structgep34.i = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep114, i64 0, i32 2
  %_secret_lval.i = load i32, i32* %_secret_structgep34.i, align 4
  %_secret_lrshift.i.i = lshr i32 %_secret_lval.i, 24
  %_secret_ucast.i.i = trunc i32 %_secret_lrshift.i.i to i8
  store i8 %_secret_ucast.i.i, i8* %_secret_source_gep32.i, align 1
  %_secret_ptr4.i.i = getelementptr inbounds i8, i8* %_secret_source_gep32.i, i64 1
  %_secret_lrshift6.i.i = lshr i32 %_secret_lval.i, 16
  %_secret_ucast7.i.i = trunc i32 %_secret_lrshift6.i.i to i8
  store i8 %_secret_ucast7.i.i, i8* %_secret_ptr4.i.i, align 1
  %_secret_ptr9.i.i = getelementptr inbounds i8, i8* %_secret_source_gep32.i, i64 2
  %_secret_lrshift11.i.i = lshr i32 %_secret_lval.i, 8
  %_secret_ucast12.i.i = trunc i32 %_secret_lrshift11.i.i to i8
  store i8 %_secret_ucast12.i.i, i8* %_secret_ptr9.i.i, align 1
  %_secret_ptr14.i.i = getelementptr inbounds i8, i8* %_secret_source_gep32.i, i64 3
  %_secret_ucast16.i.i = trunc i32 %_secret_lval.i to i8
  store i8 %_secret_ucast16.i.i, i8* %_secret_ptr14.i.i, align 1
  %_secret_source_gep40.i = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep114, i64 0, i32 3, i64 60
  %_secret_structgep42.i = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep114, i64 0, i32 1
  %_secret_lval43.i = load i32, i32* %_secret_structgep42.i, align 4
  %_secret_lrshift.i52.i = lshr i32 %_secret_lval43.i, 24
  %_secret_ucast.i53.i = trunc i32 %_secret_lrshift.i52.i to i8
  store i8 %_secret_ucast.i53.i, i8* %_secret_source_gep40.i, align 1
  %_secret_ptr4.i54.i = getelementptr inbounds i8, i8* %_secret_source_gep40.i, i64 1
  %_secret_lrshift6.i55.i = lshr i32 %_secret_lval43.i, 16
  %_secret_ucast7.i56.i = trunc i32 %_secret_lrshift6.i55.i to i8
  store i8 %_secret_ucast7.i56.i, i8* %_secret_ptr4.i54.i, align 1
  %_secret_ptr9.i57.i = getelementptr inbounds i8, i8* %_secret_source_gep40.i, i64 2
  %_secret_lrshift11.i58.i = lshr i32 %_secret_lval43.i, 8
  %_secret_ucast12.i59.i = trunc i32 %_secret_lrshift11.i58.i to i8
  store i8 %_secret_ucast12.i59.i, i8* %_secret_ptr9.i57.i, align 1
  %_secret_ptr14.i60.i = getelementptr inbounds i8, i8* %_secret_source_gep40.i, i64 3
  %_secret_ucast16.i61.i = trunc i32 %_secret_lval43.i to i8
  store i8 %_secret_ucast16.i61.i, i8* %_secret_ptr14.i60.i, align 1
  call void @sha1_block_data_order(%SHA_CTX* nonnull %_public_structgep114, i8* nonnull %_secret_arrtoptr46.pre-phi.i, i32 1)
  store i32 0, i32* %_public_structgep.i, align 4
  call fastcc void @_memzero(i8* nonnull %_secret_arrtoptr46.pre-phi.i, i32 64)
  %_secret_ptr.i.i = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep114, i64 0, i32 0, i64 0
  %_secret_lval.i.i = load i32, i32* %_secret_ptr.i.i, align 4
  %_secret_lrshift.i.i.i = lshr i32 %_secret_lval.i.i, 24
  %_secret_ucast.i.i.i = trunc i32 %_secret_lrshift.i.i.i to i8
  store i8 %_secret_ucast.i.i.i, i8* %_secret_arrtoptr, align 1
  %_secret_ptr4.i.i.i = getelementptr inbounds i8, i8* %_secret_arrtoptr, i64 1
  %_secret_lrshift6.i.i.i = lshr i32 %_secret_lval.i.i, 16
  %_secret_ucast7.i.i.i = trunc i32 %_secret_lrshift6.i.i.i to i8
  store i8 %_secret_ucast7.i.i.i, i8* %_secret_ptr4.i.i.i, align 1
  %_secret_ptr9.i.i.i = getelementptr inbounds i8, i8* %_secret_arrtoptr, i64 2
  %_secret_lrshift11.i.i.i = lshr i32 %_secret_lval.i.i, 8
  %_secret_ucast12.i.i.i = trunc i32 %_secret_lrshift11.i.i.i to i8
  store i8 %_secret_ucast12.i.i.i, i8* %_secret_ptr9.i.i.i, align 1
  %_secret_ptr14.i.i.i = getelementptr inbounds i8, i8* %_secret_arrtoptr, i64 3
  %_secret_ucast16.i.i.i = trunc i32 %_secret_lval.i.i to i8
  store i8 %_secret_ucast16.i.i.i, i8* %_secret_ptr14.i.i.i, align 1
  %_secret_source_gep6.1.i.i = getelementptr inbounds i8, i8* %_secret_arrtoptr, i64 4
  %_secret_ptr.1.i.i = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep114, i64 0, i32 0, i64 1
  %_secret_lval.1.i.i = load i32, i32* %_secret_ptr.1.i.i, align 4
  %_secret_lrshift.i41.i.i = lshr i32 %_secret_lval.1.i.i, 24
  %_secret_ucast.i42.i.i = trunc i32 %_secret_lrshift.i41.i.i to i8
  store i8 %_secret_ucast.i42.i.i, i8* %_secret_source_gep6.1.i.i, align 1
  %_secret_ptr4.i43.i.i = getelementptr inbounds i8, i8* %_secret_source_gep6.1.i.i, i64 1
  %_secret_lrshift6.i44.i.i = lshr i32 %_secret_lval.1.i.i, 16
  %_secret_ucast7.i45.i.i = trunc i32 %_secret_lrshift6.i44.i.i to i8
  store i8 %_secret_ucast7.i45.i.i, i8* %_secret_ptr4.i43.i.i, align 1
  %_secret_ptr9.i46.i.i = getelementptr inbounds i8, i8* %_secret_source_gep6.1.i.i, i64 2
  %_secret_lrshift11.i47.i.i = lshr i32 %_secret_lval.1.i.i, 8
  %_secret_ucast12.i48.i.i = trunc i32 %_secret_lrshift11.i47.i.i to i8
  store i8 %_secret_ucast12.i48.i.i, i8* %_secret_ptr9.i46.i.i, align 1
  %_secret_ptr14.i49.i.i = getelementptr inbounds i8, i8* %_secret_source_gep6.1.i.i, i64 3
  %_secret_ucast16.i50.i.i = trunc i32 %_secret_lval.1.i.i to i8
  store i8 %_secret_ucast16.i50.i.i, i8* %_secret_ptr14.i49.i.i, align 1
  %_secret_source_gep6.2.i.i = getelementptr inbounds i8, i8* %_secret_arrtoptr, i64 8
  %_secret_ptr.2.i.i = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep114, i64 0, i32 0, i64 2
  %_secret_lval.2.i.i = load i32, i32* %_secret_ptr.2.i.i, align 4
  %_secret_lrshift.i31.i.i = lshr i32 %_secret_lval.2.i.i, 24
  %_secret_ucast.i32.i.i = trunc i32 %_secret_lrshift.i31.i.i to i8
  store i8 %_secret_ucast.i32.i.i, i8* %_secret_source_gep6.2.i.i, align 1
  %_secret_ptr4.i33.i.i = getelementptr inbounds i8, i8* %_secret_source_gep6.2.i.i, i64 1
  %_secret_lrshift6.i34.i.i = lshr i32 %_secret_lval.2.i.i, 16
  %_secret_ucast7.i35.i.i = trunc i32 %_secret_lrshift6.i34.i.i to i8
  store i8 %_secret_ucast7.i35.i.i, i8* %_secret_ptr4.i33.i.i, align 1
  %_secret_ptr9.i36.i.i = getelementptr inbounds i8, i8* %_secret_source_gep6.2.i.i, i64 2
  %_secret_lrshift11.i37.i.i = lshr i32 %_secret_lval.2.i.i, 8
  %_secret_ucast12.i38.i.i = trunc i32 %_secret_lrshift11.i37.i.i to i8
  store i8 %_secret_ucast12.i38.i.i, i8* %_secret_ptr9.i36.i.i, align 1
  %_secret_ptr14.i39.i.i = getelementptr inbounds i8, i8* %_secret_source_gep6.2.i.i, i64 3
  %_secret_ucast16.i40.i.i = trunc i32 %_secret_lval.2.i.i to i8
  store i8 %_secret_ucast16.i40.i.i, i8* %_secret_ptr14.i39.i.i, align 1
  %_secret_source_gep6.3.i.i = getelementptr inbounds i8, i8* %_secret_arrtoptr, i64 12
  %_secret_ptr.3.i.i = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep114, i64 0, i32 0, i64 3
  %_secret_lval.3.i.i = load i32, i32* %_secret_ptr.3.i.i, align 4
  %_secret_lrshift.i21.i.i = lshr i32 %_secret_lval.3.i.i, 24
  %_secret_ucast.i22.i.i = trunc i32 %_secret_lrshift.i21.i.i to i8
  store i8 %_secret_ucast.i22.i.i, i8* %_secret_source_gep6.3.i.i, align 1
  %_secret_ptr4.i23.i.i = getelementptr inbounds i8, i8* %_secret_source_gep6.3.i.i, i64 1
  %_secret_lrshift6.i24.i.i = lshr i32 %_secret_lval.3.i.i, 16
  %_secret_ucast7.i25.i.i = trunc i32 %_secret_lrshift6.i24.i.i to i8
  store i8 %_secret_ucast7.i25.i.i, i8* %_secret_ptr4.i23.i.i, align 1
  %_secret_ptr9.i26.i.i = getelementptr inbounds i8, i8* %_secret_source_gep6.3.i.i, i64 2
  %_secret_lrshift11.i27.i.i = lshr i32 %_secret_lval.3.i.i, 8
  %_secret_ucast12.i28.i.i = trunc i32 %_secret_lrshift11.i27.i.i to i8
  store i8 %_secret_ucast12.i28.i.i, i8* %_secret_ptr9.i26.i.i, align 1
  %_secret_ptr14.i29.i.i = getelementptr inbounds i8, i8* %_secret_source_gep6.3.i.i, i64 3
  %_secret_ucast16.i30.i.i = trunc i32 %_secret_lval.3.i.i to i8
  store i8 %_secret_ucast16.i30.i.i, i8* %_secret_ptr14.i29.i.i, align 1
  %_secret_source_gep6.4.i.i = getelementptr inbounds i8, i8* %_secret_arrtoptr, i64 16
  %_secret_ptr.4.i.i = getelementptr inbounds %SHA_CTX, %SHA_CTX* %_public_structgep114, i64 0, i32 0, i64 4
  %_secret_lval.4.i.i = load i32, i32* %_secret_ptr.4.i.i, align 4
  %_secret_lrshift.i11.i.i = lshr i32 %_secret_lval.4.i.i, 24
  %_secret_ucast.i12.i.i = trunc i32 %_secret_lrshift.i11.i.i to i8
  store i8 %_secret_ucast.i12.i.i, i8* %_secret_source_gep6.4.i.i, align 1
  %_secret_ptr4.i13.i.i = getelementptr inbounds i8, i8* %_secret_source_gep6.4.i.i, i64 1
  %_secret_lrshift6.i14.i.i = lshr i32 %_secret_lval.4.i.i, 16
  %_secret_ucast7.i15.i.i = trunc i32 %_secret_lrshift6.i14.i.i to i8
  store i8 %_secret_ucast7.i15.i.i, i8* %_secret_ptr4.i13.i.i, align 1
  %_secret_ptr9.i16.i.i = getelementptr inbounds i8, i8* %_secret_source_gep6.4.i.i, i64 2
  %_secret_lrshift11.i17.i.i = lshr i32 %_secret_lval.4.i.i, 8
  %_secret_ucast12.i18.i.i = trunc i32 %_secret_lrshift11.i17.i.i to i8
  store i8 %_secret_ucast12.i18.i.i, i8* %_secret_ptr9.i16.i.i, align 1
  %_secret_ptr14.i19.i.i = getelementptr inbounds i8, i8* %_secret_source_gep6.4.i.i, i64 3
  %_secret_ucast16.i20.i.i = trunc i32 %_secret_lval.4.i.i to i8
  store i8 %_secret_ucast16.i20.i.i, i8* %_secret_ptr14.i19.i.i, align 1
  %_public_ulttmp197 = icmp ult i32 %_public___v69__len.0, 276
  %_public_terntmp203 = select i1 %_public_ulttmp197, i32 0, i32 %_public_andtmp285
  %_secret_addtmp206 = add i32 %_secret_subtmp, %_public___v68_outp.0
  %_secret_addtmp208 = add i32 %_secret_addtmp206, 20
  %_secret_ugttmp210 = icmp ugt i32 %_secret_addtmp208, %_public___v69__len.0
  %_secret_select.i289 = select i1 %_secret_ugttmp210, i32 0, i32 %_secret_select.i288
  %_public_addtmp222 = add i32 %_public_terntmp203, %_public___v68_outp.0
  %_public_ulttmp225282 = icmp ult i32 %_public_addtmp222, %_public___v69__len.0
  br i1 %_public_ulttmp225282, label %loop_body.preheader, label %thenbranch

loop_body.preheader:                              ; preds = %SHA1_Final_public.exit
  br label %loop_body

loop_body:                                        ; preds = %loop_body.preheader, %loop_body
  %_public___v89_i.0284 = phi i32 [ %_public_addtmp279, %loop_body ], [ %_public_addtmp222, %loop_body.preheader ]
  %_secret___v66_ret.0283 = phi i32 [ %_secret_select.i, %loop_body ], [ %_secret_select.i289, %loop_body.preheader ]
  %_secret_ugtetmp = icmp uge i32 %_public___v89_i.0284, %_secret_addtmp206
  %_secret_ulttmp = icmp ult i32 %_public___v89_i.0284, %_secret_addtmp208
  %_secret_zext.i = zext i1 %_secret_ulttmp to i32
  %_secret_asm.i286 = call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %_secret_ugtetmp, i32 %_secret_zext.i, i32 0) #2
  %_secret_ = and i32 %_secret_asm.i286, 1
  %_secret_trunc.i287 = icmp ne i32 %_secret_, 0
  %_secret_lnottmp244 = xor i1 %_secret_ugtetmp, true
  %_secret_zext1.i = zext i1 %_secret_trunc.i287 to i32
  %_secret_asm.i = call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %_secret_lnottmp244, i32 0, i32 %_secret_zext1.i) #2
  %_secret_294 = and i32 %_secret_asm.i, 1
  %_secret_trunc.i = icmp ne i32 %_secret_294, 0
  %_secret_subtmp257 = sub i32 %_public___v89_i.0284, %_secret_addtmp206
  %_public_ = sext i32 %_public___v89_i.0284 to i64
  %_secret_ptr260 = getelementptr inbounds i8, i8* %_secret_arrarg3, i64 %_public_
  %_secret_lval261 = load i8, i8* %_secret_ptr260, align 1
  %_secret_295 = sext i32 %_secret_subtmp257 to i64
  %_secret_ptr263 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v80_pmac, i64 0, i64 %_secret_295
  %_secret_lval264 = load i8, i8* %_secret_ptr263, align 1
  %_secret_neqtmp = icmp ne i8 %_secret_lval261, %_secret_lval264
  %_secret_landtmp270 = and i1 %_secret_trunc.i, %_secret_neqtmp
  %_secret_select.i = select i1 %_secret_landtmp270, i32 0, i32 %_secret___v66_ret.0283
  %_public_addtmp279 = add i32 %_public___v89_i.0284, 1
  %_public_ulttmp225 = icmp ult i32 %_public_addtmp279, %_public___v69__len.0
  br i1 %_public_ulttmp225, label %loop_body, label %thenbranch
}

attributes #0 = { argmemonly nounwind }
attributes #1 = { noinline nounwind }
attributes #2 = { nounwind }
