; ModuleID = 'Module'
source_filename = "Module"

%EVP_AES_HMAC_SHA1 = type { %AES_KEY, %SHA_CTX, %SHA_CTX, %SHA_CTX, i64, [16 x i8] }
%AES_KEY = type { [60 x i32], i32 }
%SHA_CTX = type { i32, i32, i32, i32, i32, i32, i32, [64 x i8], i32 }

declare void @aesni_cbc_encrypt(i8*, i8*, i64, i32*, i8*, i32) local_unnamed_addr

declare void @_sha1_update(i32*, i8*, i64) local_unnamed_addr

declare void @SHA1_Final(i8*, i32*) local_unnamed_addr

declare void @sha1_block_data_order(i32*, i8*, i32) local_unnamed_addr

define i32 @_aesni_cbc_hmac_sha1_cipher(i8* %_secret_arrarg1, %EVP_AES_HMAC_SHA1* %key, i8* %_secret_arrarg3, i32 %_public____out_len4, i8* %_secret_arrarg6, i32 %_public____in_len7, i64 %_public_plen8) local_unnamed_addr {
entry:
  %_public_subtmp = add i64 %_public_plen8, -4
  %_secret_ptr = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 5, i64 %_public_subtmp
  %_secret_lval = load i8, i8* %_secret_ptr, align 1
  %_secret_ucast = zext i8 %_secret_lval to i16
  %_secret_lshift = shl nuw i16 %_secret_ucast, 8
  %_public_subtmp13 = add i64 %_public_plen8, -3
  %_secret_ptr14 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 5, i64 %_public_subtmp13
  %_secret_lval15 = load i8, i8* %_secret_ptr14, align 1
  %_secret_ucast16 = zext i8 %_secret_lval15 to i16
  %_declassified__secret_ortmp = or i16 %_secret_lshift, %_secret_ucast16
  %_public_ugtetmp = icmp ugt i16 %_declassified__secret_ortmp, 769
  br i1 %_public_ugtetmp, label %thenbranch, label %elsebranch37

thenbranch:                                       ; preds = %entry
  %_public_ulttmp = icmp ult i32 %_public____out_len4, 37
  br i1 %_public_ulttmp, label %thenbranch24, label %branchmerge

thenbranch24:                                     ; preds = %elsebranch37, %thenbranch
  ret i32 0

branchmerge:                                      ; preds = %thenbranch
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %_secret_arrarg1, i8* %_secret_arrarg6, i32 16, i32 1, i1 false) #3
  %_public_subtmp36 = add i32 %_public____out_len4, -16
  br label %branchmerge47

elsebranch37:                                     ; preds = %entry
  %_public_ulttmp41 = icmp ult i32 %_public____out_len4, 21
  br i1 %_public_ulttmp41, label %thenbranch24, label %branchmerge47

branchmerge47:                                    ; preds = %elsebranch37, %branchmerge
  %_public___v14__len.0 = phi i32 [ %_public_subtmp36, %branchmerge ], [ %_public____out_len4, %elsebranch37 ]
  %_public___v13_outp.0 = phi i32 [ 16, %branchmerge ], [ 0, %elsebranch37 ]
  %_public___v12_inp.0 = phi i64 [ 16, %branchmerge ], [ 0, %elsebranch37 ]
  %_secret_source_gep53 = getelementptr inbounds i8, i8* %_secret_arrarg6, i64 %_public___v12_inp.0
  %_public_783 = zext i32 %_public___v13_outp.0 to i64
  %_secret_source_gep62 = getelementptr inbounds i8, i8* %_secret_arrarg3, i64 %_public_783
  %_public_zexttmp = zext i32 %_public___v14__len.0 to i64
  %_secret_arrtoptr = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 0, i32 0, i64 0
  tail call void @aesni_cbc_encrypt(i8* %_secret_source_gep53, i8* %_secret_source_gep62, i64 %_public_zexttmp, i32* %_secret_arrtoptr, i8* %_secret_arrarg1, i32 0)
  %_public_subtmp71 = add i32 %_public____out_len4, -1
  %_public_784 = sext i32 %_public_subtmp71 to i64
  %_secret_ptr72 = getelementptr inbounds i8, i8* %_secret_arrarg3, i64 %_public_784
  %_secret_lval73 = load i8, i8* %_secret_ptr72, align 1
  %_secret_zexttmp = zext i8 %_secret_lval73 to i32
  %_public_subtmp77 = add i32 %_public___v14__len.0, 235
  %_public_subtmp80 = sub i32 276, %_public___v14__len.0
  %_public_785 = lshr i32 %_public_subtmp80, 24
  %_public_subtmp77.masked661 = and i32 %_public_subtmp77, 255
  %_public_zexttmp82 = or i32 %_public_subtmp77.masked661, %_public_785
  %_secret_xortmp.i.i = xor i32 %_secret_zexttmp, %_public_zexttmp82
  %_secret_subtmp.i.i = sub i32 %_public_zexttmp82, %_secret_zexttmp
  %_secret_xortmp8.i.i = xor i32 %_secret_subtmp.i.i, %_secret_zexttmp
  %_secret_ortmp.i.i = or i32 %_secret_xortmp8.i.i, %_secret_xortmp.i.i
  %_secret_xortmp9.i.i = xor i32 %_secret_ortmp.i.i, %_public_zexttmp82
  %_secret_subtmp.i.i.i = ashr i32 %_secret_xortmp9.i.i, 31
  %_secret_bnottmp.i = xor i32 %_secret_subtmp.i.i.i, -1
  %_secret_andtmp = and i32 %_secret_bnottmp.i, 1
  %_secret_andtmp.i = and i32 %_secret_zexttmp, %_secret_bnottmp.i
  %_secret_andtmp7.i = and i32 %_secret_subtmp.i.i.i, %_public_zexttmp82
  %_secret_ortmp.i773 = or i32 %_secret_andtmp7.i, %_secret_andtmp.i
  %_secret_addtmp94.neg = add i32 %_public___v14__len.0, -21
  %_secret_subtmp = sub i32 %_secret_addtmp94.neg, %_secret_ortmp.i773
  %_public_subtmp97 = add i64 %_public_plen8, -2
  %_secret_ptr98 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 5, i64 %_public_subtmp97
  %_secret_lrshift = lshr i32 %_secret_subtmp, 8
  %_secret_ucast100 = trunc i32 %_secret_lrshift to i8
  store i8 %_secret_ucast100, i8* %_secret_ptr98, align 1
  %_public_subtmp103 = add i64 %_public_plen8, -1
  %_secret_ptr104 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 5, i64 %_public_subtmp103
  %_secret_ucast107 = trunc i32 %_secret_subtmp to i8
  store i8 %_secret_ucast107, i8* %_secret_ptr104, align 1
  %_public_structgep108 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 3
  %_public_structgep109 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 1
  %_secret_cast.i771 = bitcast %SHA_CTX* %_public_structgep108 to i8*
  %_secret_cast1.i772 = bitcast %SHA_CTX* %_public_structgep109 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %_secret_cast.i771, i8* %_secret_cast1.i772, i32 96, i32 4, i1 false) #3
  %_secret_structgep112 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 3, i32 0
  %_secret_source_gep117 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 5, i64 0
  tail call void @_sha1_update(i32* nonnull %_secret_structgep112, i8* nonnull %_secret_source_gep117, i64 %_public_plen8)
  %_public_subtmp122 = add i32 %_public___v14__len.0, -20
  %_public_ugtetmp126 = icmp ugt i32 %_public_subtmp122, 319
  br i1 %_public_ugtetmp126, label %thenbranch128, label %branchmerge47.branchmerge167_crit_edge

branchmerge47.branchmerge167_crit_edge:           ; preds = %branchmerge47
  %_public_.pre = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 3, i32 8
  br label %branchmerge167

thenbranch128:                                    ; preds = %branchmerge47
  %_public_subtmp132 = add i32 %_public___v14__len.0, -340
  %_public_andtmp135 = and i32 %_public_subtmp132, -64
  %_public_structgep139 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 3, i32 8
  %_public_lval140 = load i32, i32* %_public_structgep139, align 4
  %_public_subtmp141 = sub i32 64, %_public_lval140
  %_public_addtmp142 = add i32 %_public_subtmp141, %_public_andtmp135
  %_public_zexttmp156 = zext i32 %_public_addtmp142 to i64
  tail call void @_sha1_update(i32* nonnull %_secret_structgep112, i8* %_secret_source_gep62, i64 %_public_zexttmp156)
  %_public_addtmp159 = add i32 %_public_addtmp142, %_public___v13_outp.0
  %_public_subtmp162 = sub i32 %_public_subtmp122, %_public_addtmp142
  %_secret_subtmp165 = sub i32 %_secret_subtmp, %_public_addtmp142
  br label %branchmerge167

branchmerge167:                                   ; preds = %branchmerge47.branchmerge167_crit_edge, %thenbranch128
  %_public_structgep177.pre-phi = phi i32* [ %_public_.pre, %branchmerge47.branchmerge167_crit_edge ], [ %_public_structgep139, %thenbranch128 ]
  %_public___v14__len.1 = phi i32 [ %_public_subtmp122, %branchmerge47.branchmerge167_crit_edge ], [ %_public_subtmp162, %thenbranch128 ]
  %_public___v13_outp.1 = phi i32 [ %_public___v13_outp.0, %branchmerge47.branchmerge167_crit_edge ], [ %_public_addtmp159, %thenbranch128 ]
  %_secret___v24_inp_len.0 = phi i32 [ %_secret_subtmp, %branchmerge47.branchmerge167_crit_edge ], [ %_secret_subtmp165, %thenbranch128 ]
  %_secret_structgep169 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 3, i32 5
  %_secret_lval170 = load i32, i32* %_secret_structgep169, align 4
  %_secret_lshift172 = shl i32 %_secret___v24_inp_len.0, 3
  %_secret_addtmp173 = add i32 %_secret_lval170, %_secret_lshift172
  %_secret_ortmp25.i770 = tail call i32 @llvm.bswap.i32(i32 %_secret_addtmp173) #3
  %_secret___v31_pmac = alloca [20 x i8], align 32
  %_secret_sourcecasted = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* nonnull %_secret_sourcecasted, i8 0, i64 20, i32 32, i1 false)
  %_public_lval178 = load i32, i32* %_public_structgep177.pre-phi, align 4
  %_public_ulttmp181669 = icmp eq i32 %_public___v14__len.1, 0
  br i1 %_public_ulttmp181669, label %loop_end, label %loop_body.lr.ph

loop_body.lr.ph:                                  ; preds = %branchmerge167
  %_secret_addtmp218 = add i32 %_secret___v24_inp_len.0, 7
  %_secret_source_gep236 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 3, i32 7, i64 60
  %_secret_arrtoptr247 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 3, i32 7, i64 0
  %_secret_source_gep269 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i64 0, i64 4
  %_secret_structgep272 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 3, i32 1
  %_secret_source_gep279 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i64 0, i64 8
  %_secret_structgep282 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 3, i32 2
  %_secret_source_gep289 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i64 0, i64 12
  %_secret_structgep292 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 3, i32 3
  %_secret_source_gep299 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i64 0, i64 16
  %_secret_structgep302 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 3, i32 4
  br label %loop_body

loop_body:                                        ; preds = %loop_body.lr.ph, %branchmerge307
  %_public___v33_j.0671 = phi i32 [ 0, %loop_body.lr.ph ], [ %_public_addtmp309, %branchmerge307 ]
  %_public___v32_p_res.0670 = phi i32 [ %_public_lval178, %loop_body.lr.ph ], [ %_public___v32_p_res.1, %branchmerge307 ]
  %_public_addtmp184 = add i32 %_public___v33_j.0671, %_public___v13_outp.1
  %_public_781 = sext i32 %_public_addtmp184 to i64
  %_secret_ptr186 = getelementptr inbounds i8, i8* %_secret_arrarg3, i64 %_public_781
  %_secret_lval187 = load i8, i8* %_secret_ptr186, align 1
  %_secret_zexttmp188 = zext i8 %_secret_lval187 to i32
  %_secret_subtmp191 = sub i32 %_public___v33_j.0671, %_secret___v24_inp_len.0
  %_secret_arshift = ashr i32 %_secret_subtmp191, 24
  %_secret_andtmp194 = and i32 %_secret_arshift, %_secret_zexttmp188
  %_secret_subtmp200 = sub i32 %_secret___v24_inp_len.0, %_public___v33_j.0671
  %_secret_lrshift201 = lshr i32 %_secret_subtmp200, 24
  %_secret_bnottmp202 = xor i32 %_secret_lrshift201, 255
  %_secret_ = and i32 %_secret_arshift, 128
  %_secret_lhssext = xor i32 %_secret_, 128
  %_secret_rhssext = and i32 %_secret_lhssext, %_secret_bnottmp202
  %_secret_ortmp = or i32 %_secret_andtmp194, %_secret_rhssext
  %_public_782 = sext i32 %_public___v32_p_res.0670 to i64
  %_secret_ptr208 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 3, i32 7, i64 %_public_782
  %_secret_ucast210 = trunc i32 %_secret_ortmp to i8
  store i8 %_secret_ucast210, i8* %_secret_ptr208, align 1
  %_public_addtmp212 = add i32 %_public___v32_p_res.0670, 1
  %_public_eqtmp = icmp eq i32 %_public_addtmp212, 64
  br i1 %_public_eqtmp, label %thenbranch216, label %branchmerge307

loop_end:                                         ; preds = %branchmerge307, %branchmerge167
  %_public___v32_p_res.0.lcssa = phi i32 [ %_public_lval178, %branchmerge167 ], [ %_public___v32_p_res.1, %branchmerge307 ]
  %_public_ulttmp317666 = icmp ult i32 %_public___v32_p_res.0.lcssa, 64
  br i1 %_public_ulttmp317666, label %loop_end313, label %thenbranch330

thenbranch216:                                    ; preds = %loop_body
  %_secret_subtmp220 = sub i32 %_secret_addtmp218, %_public___v33_j.0671
  %_secret_subtmp222 = ashr i32 %_secret_subtmp220, 31
  %_secret_andtmp240 = and i32 %_secret_subtmp222, %_secret_ortmp25.i770
  %_secret_cast.i.i766 = bitcast i8* %_secret_source_gep236 to i32*
  %_secret_ld.i.i767 = load i32, i32* %_secret_cast.i.i766, align 4
  %_secret_ortmp.i768 = or i32 %_secret_ld.i.i767, %_secret_andtmp240
  %_secret_cast.i5.i769 = bitcast i8* %_secret_source_gep236 to i32*
  store i32 %_secret_ortmp.i768, i32* %_secret_cast.i5.i769, align 4
  tail call void @sha1_block_data_order(i32* nonnull %_secret_structgep112, i8* nonnull %_secret_arrtoptr247, i32 1)
  %_secret_subtmp252 = add i32 %_secret_subtmp191, -72
  %_secret_subtmp254 = ashr i32 %_secret_subtmp252, 31
  %_secret_andtmp255 = and i32 %_secret_subtmp254, %_secret_subtmp222
  %_secret_lval263 = load i32, i32* %_secret_structgep112, align 4
  %_secret_andtmp265 = and i32 %_secret_lval263, %_secret_andtmp255
  %_secret_cast.i.i762 = bitcast i8* %_secret_sourcecasted to i32*
  %_secret_ld.i.i763 = load i32, i32* %_secret_cast.i.i762, align 4
  %_secret_ortmp.i764 = or i32 %_secret_ld.i.i763, %_secret_andtmp265
  %_secret_cast.i5.i765 = bitcast i8* %_secret_sourcecasted to i32*
  store i32 %_secret_ortmp.i764, i32* %_secret_cast.i5.i765, align 4
  %_secret_lval273 = load i32, i32* %_secret_structgep272, align 4
  %_secret_andtmp275 = and i32 %_secret_lval273, %_secret_andtmp255
  %_secret_cast.i.i758 = bitcast i8* %_secret_source_gep269 to i32*
  %_secret_ld.i.i759 = load i32, i32* %_secret_cast.i.i758, align 4
  %_secret_ortmp.i760 = or i32 %_secret_ld.i.i759, %_secret_andtmp275
  %_secret_cast.i5.i761 = bitcast i8* %_secret_source_gep269 to i32*
  store i32 %_secret_ortmp.i760, i32* %_secret_cast.i5.i761, align 4
  %_secret_lval283 = load i32, i32* %_secret_structgep282, align 4
  %_secret_andtmp285 = and i32 %_secret_lval283, %_secret_andtmp255
  %_secret_cast.i.i754 = bitcast i8* %_secret_source_gep279 to i32*
  %_secret_ld.i.i755 = load i32, i32* %_secret_cast.i.i754, align 4
  %_secret_ortmp.i756 = or i32 %_secret_ld.i.i755, %_secret_andtmp285
  %_secret_cast.i5.i757 = bitcast i8* %_secret_source_gep279 to i32*
  store i32 %_secret_ortmp.i756, i32* %_secret_cast.i5.i757, align 4
  %_secret_lval293 = load i32, i32* %_secret_structgep292, align 4
  %_secret_andtmp295 = and i32 %_secret_lval293, %_secret_andtmp255
  %_secret_cast.i.i750 = bitcast i8* %_secret_source_gep289 to i32*
  %_secret_ld.i.i751 = load i32, i32* %_secret_cast.i.i750, align 4
  %_secret_ortmp.i752 = or i32 %_secret_ld.i.i751, %_secret_andtmp295
  %_secret_cast.i5.i753 = bitcast i8* %_secret_source_gep289 to i32*
  store i32 %_secret_ortmp.i752, i32* %_secret_cast.i5.i753, align 4
  %_secret_lval303 = load i32, i32* %_secret_structgep302, align 4
  %_secret_andtmp305 = and i32 %_secret_lval303, %_secret_andtmp255
  %_secret_cast.i.i746 = bitcast i8* %_secret_source_gep299 to i32*
  %_secret_ld.i.i747 = load i32, i32* %_secret_cast.i.i746, align 4
  %_secret_ortmp.i748 = or i32 %_secret_ld.i.i747, %_secret_andtmp305
  %_secret_cast.i5.i749 = bitcast i8* %_secret_source_gep299 to i32*
  store i32 %_secret_ortmp.i748, i32* %_secret_cast.i5.i749, align 4
  br label %branchmerge307

branchmerge307:                                   ; preds = %loop_body, %thenbranch216
  %_public___v32_p_res.1 = phi i32 [ 0, %thenbranch216 ], [ %_public_addtmp212, %loop_body ]
  %_public_addtmp309 = add nuw i32 %_public___v33_j.0671, 1
  %_public_ulttmp181 = icmp ult i32 %_public_addtmp309, %_public___v14__len.1
  br i1 %_public_ulttmp181, label %loop_body, label %loop_end

loop_end313:                                      ; preds = %loop_end
  %_public_775 = add i32 %_public___v14__len.1, 64
  %_public_scevgep = getelementptr %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 0, i32 0, i64 116
  %_public_scevgep673 = bitcast i32* %_public_scevgep to i8*
  %_public_776 = sext i32 %_public___v32_p_res.0.lcssa to i64
  %_public_uglygep = getelementptr i8, i8* %_public_scevgep673, i64 %_public_776
  %_public_777 = sub i32 63, %_public___v32_p_res.0.lcssa
  %_public_778 = zext i32 %_public_777 to i64
  %_public_779 = add nuw nsw i64 %_public_778, 1
  call void @llvm.memset.p0i8.i64(i8* %_public_uglygep, i8 0, i64 %_public_779, i32 1, i1 false)
  %_public_780 = sub i32 %_public_775, %_public___v32_p_res.0.lcssa
  %_public_ugttmp = icmp ugt i32 %_public___v32_p_res.0.lcssa, 56
  br i1 %_public_ugttmp, label %thenbranch330, label %loop_end313.branchmerge428_crit_edge

loop_end313.branchmerge428_crit_edge:             ; preds = %loop_end313
  %_public_.pre674 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 3, i32 7, i64 60
  %_public_.pre675 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 3, i32 7, i64 0
  %_public_.pre676 = sub i32 -72, %_secret___v24_inp_len.0
  %_secret_.pre677 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i64 0, i64 4
  %_public_.pre678 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 3, i32 1
  %_secret_.pre679 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i64 0, i64 8
  %_public_.pre680 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 3, i32 2
  %_secret_.pre681 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i64 0, i64 12
  %_public_.pre682 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 3, i32 3
  %_secret_.pre683 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i64 0, i64 16
  %_public_.pre684 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 3, i32 4
  br label %branchmerge428

thenbranch330:                                    ; preds = %loop_end, %loop_end313
  %_public___v36_j.0.lcssa686 = phi i32 [ %_public_780, %loop_end313 ], [ %_public___v14__len.1, %loop_end ]
  %_secret_addtmp332 = add i32 %_secret___v24_inp_len.0, 8
  %_secret_subtmp334 = sub i32 %_secret_addtmp332, %_public___v36_j.0.lcssa686
  %_secret_subtmp336 = ashr i32 %_secret_subtmp334, 31
  %_secret_source_gep350 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 3, i32 7, i64 60
  %_secret_andtmp354 = and i32 %_secret_subtmp336, %_secret_ortmp25.i770
  %_secret_cast.i.i742 = bitcast i8* %_secret_source_gep350 to i32*
  %_secret_ld.i.i743 = load i32, i32* %_secret_cast.i.i742, align 4
  %_secret_ortmp.i744 = or i32 %_secret_ld.i.i743, %_secret_andtmp354
  %_secret_cast.i5.i745 = bitcast i8* %_secret_source_gep350 to i32*
  store i32 %_secret_ortmp.i744, i32* %_secret_cast.i5.i745, align 4
  %_secret_arrtoptr361 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 3, i32 7, i64 0
  tail call void @sha1_block_data_order(i32* nonnull %_secret_structgep112, i8* nonnull %_secret_arrtoptr361, i32 1)
  %_secret_subtmp365 = sub i32 -72, %_secret___v24_inp_len.0
  %_secret_subtmp366 = add i32 %_secret_subtmp365, %_public___v36_j.0.lcssa686
  %_secret_subtmp368 = ashr i32 %_secret_subtmp366, 31
  %_secret_andtmp369 = and i32 %_secret_subtmp336, %_secret_subtmp368
  %_secret_lval377 = load i32, i32* %_secret_structgep112, align 4
  %_secret_andtmp379 = and i32 %_secret_lval377, %_secret_andtmp369
  %_secret_cast.i.i738 = bitcast i8* %_secret_sourcecasted to i32*
  %_secret_ld.i.i739 = load i32, i32* %_secret_cast.i.i738, align 4
  %_secret_ortmp.i740 = or i32 %_secret_ld.i.i739, %_secret_andtmp379
  %_secret_cast.i5.i741 = bitcast i8* %_secret_sourcecasted to i32*
  store i32 %_secret_ortmp.i740, i32* %_secret_cast.i5.i741, align 4
  %_secret_source_gep383 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i64 0, i64 4
  %_secret_structgep386 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 3, i32 1
  %_secret_lval387 = load i32, i32* %_secret_structgep386, align 4
  %_secret_andtmp389 = and i32 %_secret_lval387, %_secret_andtmp369
  %_secret_cast.i.i734 = bitcast i8* %_secret_source_gep383 to i32*
  %_secret_ld.i.i735 = load i32, i32* %_secret_cast.i.i734, align 4
  %_secret_ortmp.i736 = or i32 %_secret_ld.i.i735, %_secret_andtmp389
  %_secret_cast.i5.i737 = bitcast i8* %_secret_source_gep383 to i32*
  store i32 %_secret_ortmp.i736, i32* %_secret_cast.i5.i737, align 4
  %_secret_source_gep393 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i64 0, i64 8
  %_secret_structgep396 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 3, i32 2
  %_secret_lval397 = load i32, i32* %_secret_structgep396, align 4
  %_secret_andtmp399 = and i32 %_secret_lval397, %_secret_andtmp369
  %_secret_cast.i.i730 = bitcast i8* %_secret_source_gep393 to i32*
  %_secret_ld.i.i731 = load i32, i32* %_secret_cast.i.i730, align 4
  %_secret_ortmp.i732 = or i32 %_secret_ld.i.i731, %_secret_andtmp399
  %_secret_cast.i5.i733 = bitcast i8* %_secret_source_gep393 to i32*
  store i32 %_secret_ortmp.i732, i32* %_secret_cast.i5.i733, align 4
  %_secret_source_gep403 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i64 0, i64 12
  %_secret_structgep406 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 3, i32 3
  %_secret_lval407 = load i32, i32* %_secret_structgep406, align 4
  %_secret_andtmp409 = and i32 %_secret_lval407, %_secret_andtmp369
  %_secret_cast.i.i726 = bitcast i8* %_secret_source_gep403 to i32*
  %_secret_ld.i.i727 = load i32, i32* %_secret_cast.i.i726, align 4
  %_secret_ortmp.i728 = or i32 %_secret_ld.i.i727, %_secret_andtmp409
  %_secret_cast.i5.i729 = bitcast i8* %_secret_source_gep403 to i32*
  store i32 %_secret_ortmp.i728, i32* %_secret_cast.i5.i729, align 4
  %_secret_source_gep413 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i64 0, i64 16
  %_secret_structgep416 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 3, i32 4
  %_secret_lval417 = load i32, i32* %_secret_structgep416, align 4
  %_secret_andtmp419 = and i32 %_secret_lval417, %_secret_andtmp369
  %_secret_cast.i.i722 = bitcast i8* %_secret_source_gep413 to i32*
  %_secret_ld.i.i723 = load i32, i32* %_secret_cast.i.i722, align 4
  %_secret_ortmp.i724 = or i32 %_secret_ld.i.i723, %_secret_andtmp419
  %_secret_cast.i5.i725 = bitcast i8* %_secret_source_gep413 to i32*
  store i32 %_secret_ortmp.i724, i32* %_secret_cast.i5.i725, align 4
  tail call fastcc void @_memzero(i8* nonnull %_secret_arrtoptr361)
  %_public_addtmp426 = add i32 %_public___v36_j.0.lcssa686, 64
  br label %branchmerge428

branchmerge428:                                   ; preds = %loop_end313.branchmerge428_crit_edge, %thenbranch330
  %_secret_structgep504.pre-phi = phi i32* [ %_public_.pre684, %loop_end313.branchmerge428_crit_edge ], [ %_secret_structgep416, %thenbranch330 ]
  %_secret_source_gep501.pre-phi = phi i8* [ %_secret_.pre683, %loop_end313.branchmerge428_crit_edge ], [ %_secret_source_gep413, %thenbranch330 ]
  %_secret_structgep494.pre-phi = phi i32* [ %_public_.pre682, %loop_end313.branchmerge428_crit_edge ], [ %_secret_structgep406, %thenbranch330 ]
  %_secret_source_gep491.pre-phi = phi i8* [ %_secret_.pre681, %loop_end313.branchmerge428_crit_edge ], [ %_secret_source_gep403, %thenbranch330 ]
  %_secret_structgep484.pre-phi = phi i32* [ %_public_.pre680, %loop_end313.branchmerge428_crit_edge ], [ %_secret_structgep396, %thenbranch330 ]
  %_secret_source_gep481.pre-phi = phi i8* [ %_secret_.pre679, %loop_end313.branchmerge428_crit_edge ], [ %_secret_source_gep393, %thenbranch330 ]
  %_secret_structgep474.pre-phi = phi i32* [ %_public_.pre678, %loop_end313.branchmerge428_crit_edge ], [ %_secret_structgep386, %thenbranch330 ]
  %_secret_source_gep471.pre-phi = phi i8* [ %_secret_.pre677, %loop_end313.branchmerge428_crit_edge ], [ %_secret_source_gep383, %thenbranch330 ]
  %_secret_subtmp454.pre-phi = phi i32 [ %_public_.pre676, %loop_end313.branchmerge428_crit_edge ], [ %_secret_subtmp365, %thenbranch330 ]
  %_secret_arrtoptr451.pre-phi = phi i8* [ %_public_.pre675, %loop_end313.branchmerge428_crit_edge ], [ %_secret_arrtoptr361, %thenbranch330 ]
  %_secret_source_gep442.pre-phi = phi i8* [ %_public_.pre674, %loop_end313.branchmerge428_crit_edge ], [ %_secret_source_gep350, %thenbranch330 ]
  %_public___v36_j.1 = phi i32 [ %_public_780, %loop_end313.branchmerge428_crit_edge ], [ %_public_addtmp426, %thenbranch330 ]
  %_secret_cast.i721 = bitcast i8* %_secret_source_gep442.pre-phi to i32*
  store i32 %_secret_ortmp25.i770, i32* %_secret_cast.i721, align 4
  tail call void @sha1_block_data_order(i32* nonnull %_secret_structgep112, i8* nonnull %_secret_arrtoptr451.pre-phi, i32 1)
  %_secret_subtmp455 = add i32 %_secret_subtmp454.pre-phi, %_public___v36_j.1
  %_secret_subtmp457 = ashr i32 %_secret_subtmp455, 31
  %_secret_lval465 = load i32, i32* %_secret_structgep112, align 4
  %_secret_andtmp467 = and i32 %_secret_lval465, %_secret_subtmp457
  %_secret_cast.i.i717 = bitcast i8* %_secret_sourcecasted to i32*
  %_secret_ld.i.i718 = load i32, i32* %_secret_cast.i.i717, align 4
  %_secret_ortmp.i719 = or i32 %_secret_ld.i.i718, %_secret_andtmp467
  %_secret_cast.i5.i720 = bitcast i8* %_secret_sourcecasted to i32*
  store i32 %_secret_ortmp.i719, i32* %_secret_cast.i5.i720, align 4
  %_secret_lval475 = load i32, i32* %_secret_structgep474.pre-phi, align 4
  %_secret_andtmp477 = and i32 %_secret_lval475, %_secret_subtmp457
  %_secret_cast.i.i713 = bitcast i8* %_secret_source_gep471.pre-phi to i32*
  %_secret_ld.i.i714 = load i32, i32* %_secret_cast.i.i713, align 4
  %_secret_ortmp.i715 = or i32 %_secret_ld.i.i714, %_secret_andtmp477
  %_secret_cast.i5.i716 = bitcast i8* %_secret_source_gep471.pre-phi to i32*
  store i32 %_secret_ortmp.i715, i32* %_secret_cast.i5.i716, align 4
  %_secret_lval485 = load i32, i32* %_secret_structgep484.pre-phi, align 4
  %_secret_andtmp487 = and i32 %_secret_lval485, %_secret_subtmp457
  %_secret_cast.i.i709 = bitcast i8* %_secret_source_gep481.pre-phi to i32*
  %_secret_ld.i.i710 = load i32, i32* %_secret_cast.i.i709, align 4
  %_secret_ortmp.i711 = or i32 %_secret_ld.i.i710, %_secret_andtmp487
  %_secret_cast.i5.i712 = bitcast i8* %_secret_source_gep481.pre-phi to i32*
  store i32 %_secret_ortmp.i711, i32* %_secret_cast.i5.i712, align 4
  %_secret_lval495 = load i32, i32* %_secret_structgep494.pre-phi, align 4
  %_secret_andtmp497 = and i32 %_secret_lval495, %_secret_subtmp457
  %_secret_cast.i.i705 = bitcast i8* %_secret_source_gep491.pre-phi to i32*
  %_secret_ld.i.i706 = load i32, i32* %_secret_cast.i.i705, align 4
  %_secret_ortmp.i707 = or i32 %_secret_ld.i.i706, %_secret_andtmp497
  %_secret_cast.i5.i708 = bitcast i8* %_secret_source_gep491.pre-phi to i32*
  store i32 %_secret_ortmp.i707, i32* %_secret_cast.i5.i708, align 4
  %_secret_lval505 = load i32, i32* %_secret_structgep504.pre-phi, align 4
  %_secret_andtmp507 = and i32 %_secret_lval505, %_secret_subtmp457
  %_secret_cast.i.i = bitcast i8* %_secret_source_gep501.pre-phi to i32*
  %_secret_ld.i.i = load i32, i32* %_secret_cast.i.i, align 4
  %_secret_ortmp.i = or i32 %_secret_ld.i.i, %_secret_andtmp507
  %_secret_cast.i5.i = bitcast i8* %_secret_source_gep501.pre-phi to i32*
  store i32 %_secret_ortmp.i, i32* %_secret_cast.i5.i, align 4
  %_secret_cast.i703 = bitcast i8* %_secret_sourcecasted to i32*
  %_secret_ld.i704 = load i32, i32* %_secret_cast.i703, align 4
  %_secret_ortmp25.i702 = tail call i32 @llvm.bswap.i32(i32 %_secret_ld.i704) #3
  %_secret_cast.i701 = bitcast i8* %_secret_sourcecasted to i32*
  store i32 %_secret_ortmp25.i702, i32* %_secret_cast.i701, align 4
  %_secret_cast.i699 = bitcast i8* %_secret_source_gep471.pre-phi to i32*
  %_secret_ld.i700 = load i32, i32* %_secret_cast.i699, align 4
  %_secret_ortmp25.i698 = tail call i32 @llvm.bswap.i32(i32 %_secret_ld.i700) #3
  %_secret_cast.i697 = bitcast i8* %_secret_source_gep471.pre-phi to i32*
  store i32 %_secret_ortmp25.i698, i32* %_secret_cast.i697, align 4
  %_secret_cast.i695 = bitcast i8* %_secret_source_gep481.pre-phi to i32*
  %_secret_ld.i696 = load i32, i32* %_secret_cast.i695, align 4
  %_secret_ortmp25.i694 = tail call i32 @llvm.bswap.i32(i32 %_secret_ld.i696) #3
  %_secret_cast.i693 = bitcast i8* %_secret_source_gep481.pre-phi to i32*
  store i32 %_secret_ortmp25.i694, i32* %_secret_cast.i693, align 4
  %_secret_cast.i691 = bitcast i8* %_secret_source_gep491.pre-phi to i32*
  %_secret_ld.i692 = load i32, i32* %_secret_cast.i691, align 4
  %_secret_ortmp25.i690 = tail call i32 @llvm.bswap.i32(i32 %_secret_ld.i692) #3
  %_secret_cast.i689 = bitcast i8* %_secret_source_gep491.pre-phi to i32*
  store i32 %_secret_ortmp25.i690, i32* %_secret_cast.i689, align 4
  %_secret_cast.i688 = bitcast i8* %_secret_source_gep501.pre-phi to i32*
  %_secret_ld.i = load i32, i32* %_secret_cast.i688, align 4
  %_secret_ortmp25.i = tail call i32 @llvm.bswap.i32(i32 %_secret_ld.i) #3
  %_secret_cast.i687 = bitcast i8* %_secret_source_gep501.pre-phi to i32*
  store i32 %_secret_ortmp25.i, i32* %_secret_cast.i687, align 4
  %_public_structgep572 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 2
  %_secret_cast.i = bitcast %SHA_CTX* %_public_structgep108 to i8*
  %_secret_cast1.i = bitcast %SHA_CTX* %_public_structgep572 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %_secret_cast.i, i8* %_secret_cast1.i, i32 96, i32 4, i1 false) #3
  call void @_sha1_update(i32* nonnull %_secret_structgep112, i8* nonnull %_secret_sourcecasted, i64 20)
  call void @SHA1_Final(i8* nonnull %_secret_sourcecasted, i32* nonnull %_secret_structgep112)
  %_public_subtmp588 = sub i32 %_public_subtmp71, %_public_zexttmp82
  %_public_subtmp590 = add i32 %_public_subtmp588, -20
  %_public_subtmp590.neg = sub i32 20, %_public_subtmp588
  %_secret_addtmp581 = add i32 %_public___v13_outp.1, %_public_subtmp590.neg
  %_secret_subtmp593 = add i32 %_secret_addtmp581, %_secret___v24_inp_len.0
  %_public_addtmp596 = add nuw nsw i32 %_public_zexttmp82, 20
  %_secret_subtmp612 = sub i32 -20, %_secret_subtmp593
  %_secret_subtmp625 = add i32 %_secret_subtmp593, -1
  br label %loop_body598

loop_body598:                                     ; preds = %branchmerge428, %loop_body598
  %_public___v46_j.0665 = phi i32 [ 0, %branchmerge428 ], [ %_public_addtmp647, %loop_body598 ]
  %_secret___v45_i.0664 = phi i32 [ 0, %branchmerge428 ], [ %_secret_addtmp645, %loop_body598 ]
  %_secret___v44_s_res.0663 = phi i32 [ 0, %branchmerge428 ], [ %_secret_ortmp639, %loop_body598 ]
  %_public_addtmp605 = add i32 %_public___v46_j.0665, %_public_subtmp590
  %_public_ = sext i32 %_public_addtmp605 to i64
  %_secret_ptr607 = getelementptr inbounds i8, i8* %_secret_arrarg3, i64 %_public_
  %_secret_lval608 = load i8, i8* %_secret_ptr607, align 1
  %_secret_zexttmp609 = zext i8 %_secret_lval608 to i32
  %_secret_subtmp614 = add i32 %_secret_subtmp612, %_public___v46_j.0665
  %_secret_arshift615 = ashr i32 %_secret_subtmp614, 31
  %_secret_xortmp = xor i32 %_secret_ortmp.i773, %_secret_zexttmp609
  %_secret_bnottmp620 = xor i32 %_secret_arshift615, -1
  %_secret_andtmp621 = and i32 %_secret_xortmp, %_secret_bnottmp620
  %_secret_ortmp622 = or i32 %_secret_andtmp621, %_secret___v44_s_res.0663
  %_secret_subtmp627 = sub i32 %_secret_subtmp625, %_public___v46_j.0665
  %_secret_arshift628 = ashr i32 %_secret_subtmp627, 31
  %_secret_andtmp629 = and i32 %_secret_arshift615, %_secret_arshift628
  %_public_774 = sext i32 %_secret___v45_i.0664 to i64
  %_secret_ptr633 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v31_pmac, i64 0, i64 %_public_774
  %_secret_lval634 = load i8, i8* %_secret_ptr633, align 1
  %_secret_xortmp636662 = xor i8 %_secret_lval634, %_secret_lval608
  %_secret_xortmp636 = zext i8 %_secret_xortmp636662 to i32
  %_secret_andtmp638 = and i32 %_secret_andtmp629, %_secret_xortmp636
  %_secret_ortmp639 = or i32 %_secret_ortmp622, %_secret_andtmp638
  %_secret_rhssext644 = and i32 %_secret_andtmp629, 1
  %_secret_addtmp645 = add i32 %_secret_rhssext644, %_secret___v45_i.0664
  %_public_addtmp647 = add nuw nsw i32 %_public___v46_j.0665, 1
  %_public_ulttmp602 = icmp ult i32 %_public_addtmp647, %_public_addtmp596
  br i1 %_public_ulttmp602, label %loop_body598, label %loop_end599

loop_end599:                                      ; preds = %loop_body598
  %_secret_subtmp652 = sub i32 0, %_secret_ortmp639
  %_secret_subtmp654 = ashr i32 %_secret_subtmp652, 31
  %_secret_bnottmp657 = xor i32 %_secret_subtmp654, -1
  %_secret_andtmp658 = and i32 %_secret_andtmp, %_secret_bnottmp657
  ret i32 %_secret_andtmp658
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #0

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #0

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i32, i1) #0

; Function Attrs: noinline nounwind
define internal fastcc void @_memzero(i8* nocapture) unnamed_addr #1 {
entry:
  tail call void @llvm.memset.p0i8.i32(i8* %0, i8 0, i32 64, i32 1, i1 false)
  ret void
}

; Function Attrs: nounwind readnone speculatable
declare i32 @llvm.bswap.i32(i32) #2

attributes #0 = { argmemonly nounwind }
attributes #1 = { noinline nounwind }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nounwind }
