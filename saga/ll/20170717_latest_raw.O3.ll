; ModuleID = 'Module'
source_filename = "Module"

%EVP_AES_HMAC_SHA1 = type { %AES_KEY, %SHA_CTX, %SHA_CTX, %SHA_CTX, i64, [16 x i8] }
%AES_KEY = type { [60 x i32], i32 }
%SHA_CTX = type { i32, i32, i32, i32, i32, i32, i32, [64 x i8], i32 }

declare void @aesni_cbc_encrypt(i8*, i8*, i64, i32*, i8*, i32) local_unnamed_addr

declare void @_sha1_update(i32*, i8*, i64) local_unnamed_addr

declare void @SHA1_Final(i8*, i32*) local_unnamed_addr

declare void @sha1_block_data_order(i32*, i8*, i32) local_unnamed_addr

define i32 @_aesni_cbc_hmac_sha1_cipher(i8* %_secret_arrarg1, %EVP_AES_HMAC_SHA1* %key, i8* %_secret_arrarg3, i32 %_public____out_len4, i8* %_secret_arrarg6, i32 %_public____in_len7, i64 %_public_plen8, i16 %_public_tls_ver9) local_unnamed_addr {
entry:
  %_public_ugtetmp = icmp ugt i16 %_public_tls_ver9, 769
  br i1 %_public_ugtetmp, label %thenbranch, label %elsebranch29

thenbranch:                                       ; preds = %entry
  %_public_ulttmp = icmp ult i32 %_public____out_len4, 37
  br i1 %_public_ulttmp, label %thenbranch18, label %branchmerge

thenbranch18:                                     ; preds = %elsebranch29, %thenbranch
  ret i32 0

branchmerge:                                      ; preds = %thenbranch
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %_secret_arrarg1, i8* %_secret_arrarg6, i32 16, i32 1, i1 false) #3
  %_public_subtmp = add i32 %_public____out_len4, -16
  br label %branchmerge39

elsebranch29:                                     ; preds = %entry
  %_public_ulttmp33 = icmp ult i32 %_public____out_len4, 21
  br i1 %_public_ulttmp33, label %thenbranch18, label %branchmerge39

branchmerge39:                                    ; preds = %elsebranch29, %branchmerge
  %_public___v13_outp.0 = phi i32 [ 16, %branchmerge ], [ 0, %elsebranch29 ]
  %_public___v12_inp.0 = phi i64 [ 16, %branchmerge ], [ 0, %elsebranch29 ]
  %_public___v14__len.0 = phi i32 [ %_public_subtmp, %branchmerge ], [ %_public____out_len4, %elsebranch29 ]
  %_secret_source_gep45 = getelementptr inbounds i8, i8* %_secret_arrarg6, i64 %_public___v12_inp.0
  %_public_771 = zext i32 %_public___v13_outp.0 to i64
  %_secret_source_gep54 = getelementptr inbounds i8, i8* %_secret_arrarg3, i64 %_public_771
  %_public_zexttmp = zext i32 %_public___v14__len.0 to i64
  %_secret_arrtoptr = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 0, i32 0, i64 0
  tail call void @aesni_cbc_encrypt(i8* %_secret_source_gep45, i8* %_secret_source_gep54, i64 %_public_zexttmp, i32* %_secret_arrtoptr, i8* %_secret_arrarg1, i32 0)
  %_public_subtmp62 = add i32 %_public____out_len4, -1
  %_public_772 = sext i32 %_public_subtmp62 to i64
  %_secret_ptr = getelementptr inbounds i8, i8* %_secret_arrarg3, i64 %_public_772
  %_secret_lval63 = load i8, i8* %_secret_ptr, align 1
  %_secret_zexttmp = zext i8 %_secret_lval63 to i32
  %_public_subtmp67 = add i32 %_public___v14__len.0, 235
  %_public_subtmp70 = sub i32 276, %_public___v14__len.0
  %_public_773 = lshr i32 %_public_subtmp70, 24
  %_public_subtmp67.masked649 = and i32 %_public_subtmp67, 255
  %_public_zexttmp72 = or i32 %_public_subtmp67.masked649, %_public_773
  %_secret_xortmp.i.i = xor i32 %_secret_zexttmp, %_public_zexttmp72
  %_secret_subtmp.i.i = sub i32 %_public_zexttmp72, %_secret_zexttmp
  %_secret_xortmp8.i.i = xor i32 %_secret_subtmp.i.i, %_secret_zexttmp
  %_secret_ortmp.i.i = or i32 %_secret_xortmp8.i.i, %_secret_xortmp.i.i
  %_secret_xortmp9.i.i = xor i32 %_secret_ortmp.i.i, %_public_zexttmp72
  %_secret_subtmp.i.i.i = ashr i32 %_secret_xortmp9.i.i, 31
  %_secret_bnottmp.i = xor i32 %_secret_subtmp.i.i.i, -1
  %_secret_andtmp = and i32 %_secret_bnottmp.i, 1
  %_secret_andtmp.i = and i32 %_secret_zexttmp, %_secret_bnottmp.i
  %_secret_andtmp7.i = and i32 %_secret_subtmp.i.i.i, %_public_zexttmp72
  %_secret_ortmp.i761 = or i32 %_secret_andtmp7.i, %_secret_andtmp.i
  %_secret_addtmp84.neg = add i32 %_public___v14__len.0, -21
  %_secret_subtmp = sub i32 %_secret_addtmp84.neg, %_secret_ortmp.i761
  %_public_subtmp87 = add i64 %_public_plen8, -2
  %_secret_ptr88 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 5, i64 %_public_subtmp87
  %_secret_lrshift = lshr i32 %_secret_subtmp, 8
  %_secret_ucast = trunc i32 %_secret_lrshift to i8
  store i8 %_secret_ucast, i8* %_secret_ptr88, align 1
  %_public_subtmp92 = add i64 %_public_plen8, -1
  %_secret_ptr93 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 5, i64 %_public_subtmp92
  %_secret_ucast96 = trunc i32 %_secret_subtmp to i8
  store i8 %_secret_ucast96, i8* %_secret_ptr93, align 1
  %_public_structgep97 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 3
  %_public_structgep98 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 1
  %_secret_cast.i759 = bitcast %SHA_CTX* %_public_structgep97 to i8*
  %_secret_cast1.i760 = bitcast %SHA_CTX* %_public_structgep98 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %_secret_cast.i759, i8* %_secret_cast1.i760, i32 96, i32 4, i1 false) #3
  %_secret_structgep101 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 3, i32 0
  %_secret_source_gep106 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 5, i64 0
  tail call void @_sha1_update(i32* nonnull %_secret_structgep101, i8* nonnull %_secret_source_gep106, i64 %_public_plen8)
  %_public_subtmp111 = add i32 %_public___v14__len.0, -20
  %_public_ugtetmp115 = icmp ugt i32 %_public_subtmp111, 319
  br i1 %_public_ugtetmp115, label %thenbranch117, label %branchmerge39.branchmerge156_crit_edge

branchmerge39.branchmerge156_crit_edge:           ; preds = %branchmerge39
  %_public_.pre = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 3, i32 8
  br label %branchmerge156

thenbranch117:                                    ; preds = %branchmerge39
  %_public_subtmp121 = add i32 %_public___v14__len.0, -340
  %_public_andtmp124 = and i32 %_public_subtmp121, -64
  %_public_structgep128 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 3, i32 8
  %_public_lval129 = load i32, i32* %_public_structgep128, align 4
  %_public_subtmp130 = sub i32 64, %_public_lval129
  %_public_addtmp131 = add i32 %_public_subtmp130, %_public_andtmp124
  %_public_zexttmp145 = zext i32 %_public_addtmp131 to i64
  tail call void @_sha1_update(i32* nonnull %_secret_structgep101, i8* %_secret_source_gep54, i64 %_public_zexttmp145)
  %_public_addtmp148 = add i32 %_public_addtmp131, %_public___v13_outp.0
  %_public_subtmp151 = sub i32 %_public_subtmp111, %_public_addtmp131
  %_secret_subtmp154 = sub i32 %_secret_subtmp, %_public_addtmp131
  br label %branchmerge156

branchmerge156:                                   ; preds = %branchmerge39.branchmerge156_crit_edge, %thenbranch117
  %_public_structgep165.pre-phi = phi i32* [ %_public_.pre, %branchmerge39.branchmerge156_crit_edge ], [ %_public_structgep128, %thenbranch117 ]
  %_public___v13_outp.1 = phi i32 [ %_public___v13_outp.0, %branchmerge39.branchmerge156_crit_edge ], [ %_public_addtmp148, %thenbranch117 ]
  %_public___v14__len.1 = phi i32 [ %_public_subtmp111, %branchmerge39.branchmerge156_crit_edge ], [ %_public_subtmp151, %thenbranch117 ]
  %_secret___v23_inp_len.0 = phi i32 [ %_secret_subtmp, %branchmerge39.branchmerge156_crit_edge ], [ %_secret_subtmp154, %thenbranch117 ]
  %_secret_structgep158 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 3, i32 5
  %_secret_lval159 = load i32, i32* %_secret_structgep158, align 4
  %_secret_lshift = shl i32 %_secret___v23_inp_len.0, 3
  %_secret_addtmp161 = add i32 %_secret_lval159, %_secret_lshift
  %_secret_ortmp25.i758 = tail call i32 @llvm.bswap.i32(i32 %_secret_addtmp161) #3
  %_secret___v30_pmac = alloca [20 x i8], align 32
  %_secret_sourcecasted = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* nonnull %_secret_sourcecasted, i8 0, i64 20, i32 32, i1 false)
  %_public_lval166 = load i32, i32* %_public_structgep165.pre-phi, align 4
  %_public_ulttmp169657 = icmp eq i32 %_public___v14__len.1, 0
  br i1 %_public_ulttmp169657, label %loop_end, label %loop_body.lr.ph

loop_body.lr.ph:                                  ; preds = %branchmerge156
  %_secret_addtmp206 = add i32 %_secret___v23_inp_len.0, 7
  %_secret_source_gep224 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 3, i32 7, i64 60
  %_secret_arrtoptr235 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 3, i32 7, i64 0
  %_secret_source_gep257 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i64 0, i64 4
  %_secret_structgep260 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 3, i32 1
  %_secret_source_gep267 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i64 0, i64 8
  %_secret_structgep270 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 3, i32 2
  %_secret_source_gep277 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i64 0, i64 12
  %_secret_structgep280 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 3, i32 3
  %_secret_source_gep287 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i64 0, i64 16
  %_secret_structgep290 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 3, i32 4
  br label %loop_body

loop_body:                                        ; preds = %loop_body.lr.ph, %branchmerge295
  %_public___v32_j.0659 = phi i32 [ 0, %loop_body.lr.ph ], [ %_public_addtmp297, %branchmerge295 ]
  %_public___v31_p_res.0658 = phi i32 [ %_public_lval166, %loop_body.lr.ph ], [ %_public___v31_p_res.1, %branchmerge295 ]
  %_public_addtmp172 = add i32 %_public___v32_j.0659, %_public___v13_outp.1
  %_public_769 = sext i32 %_public_addtmp172 to i64
  %_secret_ptr174 = getelementptr inbounds i8, i8* %_secret_arrarg3, i64 %_public_769
  %_secret_lval175 = load i8, i8* %_secret_ptr174, align 1
  %_secret_zexttmp176 = zext i8 %_secret_lval175 to i32
  %_secret_subtmp179 = sub i32 %_public___v32_j.0659, %_secret___v23_inp_len.0
  %_secret_arshift = ashr i32 %_secret_subtmp179, 24
  %_secret_andtmp182 = and i32 %_secret_arshift, %_secret_zexttmp176
  %_secret_subtmp188 = sub i32 %_secret___v23_inp_len.0, %_public___v32_j.0659
  %_secret_lrshift189 = lshr i32 %_secret_subtmp188, 24
  %_secret_bnottmp190 = xor i32 %_secret_lrshift189, 255
  %_secret_ = and i32 %_secret_arshift, 128
  %_secret_lhssext = xor i32 %_secret_, 128
  %_secret_rhssext = and i32 %_secret_lhssext, %_secret_bnottmp190
  %_secret_ortmp = or i32 %_secret_andtmp182, %_secret_rhssext
  %_public_770 = sext i32 %_public___v31_p_res.0658 to i64
  %_secret_ptr196 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 3, i32 7, i64 %_public_770
  %_secret_ucast198 = trunc i32 %_secret_ortmp to i8
  store i8 %_secret_ucast198, i8* %_secret_ptr196, align 1
  %_public_addtmp200 = add i32 %_public___v31_p_res.0658, 1
  %_public_eqtmp = icmp eq i32 %_public_addtmp200, 64
  br i1 %_public_eqtmp, label %thenbranch204, label %branchmerge295

loop_end:                                         ; preds = %branchmerge295, %branchmerge156
  %_public___v31_p_res.0.lcssa = phi i32 [ %_public_lval166, %branchmerge156 ], [ %_public___v31_p_res.1, %branchmerge295 ]
  %_public_ulttmp305654 = icmp ult i32 %_public___v31_p_res.0.lcssa, 64
  br i1 %_public_ulttmp305654, label %loop_end301, label %thenbranch318

thenbranch204:                                    ; preds = %loop_body
  %_secret_subtmp208 = sub i32 %_secret_addtmp206, %_public___v32_j.0659
  %_secret_subtmp210 = ashr i32 %_secret_subtmp208, 31
  %_secret_andtmp228 = and i32 %_secret_subtmp210, %_secret_ortmp25.i758
  %_secret_cast.i.i754 = bitcast i8* %_secret_source_gep224 to i32*
  %_secret_ld.i.i755 = load i32, i32* %_secret_cast.i.i754, align 4
  %_secret_ortmp.i756 = or i32 %_secret_ld.i.i755, %_secret_andtmp228
  %_secret_cast.i5.i757 = bitcast i8* %_secret_source_gep224 to i32*
  store i32 %_secret_ortmp.i756, i32* %_secret_cast.i5.i757, align 4
  tail call void @sha1_block_data_order(i32* nonnull %_secret_structgep101, i8* nonnull %_secret_arrtoptr235, i32 1)
  %_secret_subtmp240 = add i32 %_secret_subtmp179, -72
  %_secret_subtmp242 = ashr i32 %_secret_subtmp240, 31
  %_secret_andtmp243 = and i32 %_secret_subtmp242, %_secret_subtmp210
  %_secret_lval251 = load i32, i32* %_secret_structgep101, align 4
  %_secret_andtmp253 = and i32 %_secret_lval251, %_secret_andtmp243
  %_secret_cast.i.i750 = bitcast i8* %_secret_sourcecasted to i32*
  %_secret_ld.i.i751 = load i32, i32* %_secret_cast.i.i750, align 4
  %_secret_ortmp.i752 = or i32 %_secret_ld.i.i751, %_secret_andtmp253
  %_secret_cast.i5.i753 = bitcast i8* %_secret_sourcecasted to i32*
  store i32 %_secret_ortmp.i752, i32* %_secret_cast.i5.i753, align 4
  %_secret_lval261 = load i32, i32* %_secret_structgep260, align 4
  %_secret_andtmp263 = and i32 %_secret_lval261, %_secret_andtmp243
  %_secret_cast.i.i746 = bitcast i8* %_secret_source_gep257 to i32*
  %_secret_ld.i.i747 = load i32, i32* %_secret_cast.i.i746, align 4
  %_secret_ortmp.i748 = or i32 %_secret_ld.i.i747, %_secret_andtmp263
  %_secret_cast.i5.i749 = bitcast i8* %_secret_source_gep257 to i32*
  store i32 %_secret_ortmp.i748, i32* %_secret_cast.i5.i749, align 4
  %_secret_lval271 = load i32, i32* %_secret_structgep270, align 4
  %_secret_andtmp273 = and i32 %_secret_lval271, %_secret_andtmp243
  %_secret_cast.i.i742 = bitcast i8* %_secret_source_gep267 to i32*
  %_secret_ld.i.i743 = load i32, i32* %_secret_cast.i.i742, align 4
  %_secret_ortmp.i744 = or i32 %_secret_ld.i.i743, %_secret_andtmp273
  %_secret_cast.i5.i745 = bitcast i8* %_secret_source_gep267 to i32*
  store i32 %_secret_ortmp.i744, i32* %_secret_cast.i5.i745, align 4
  %_secret_lval281 = load i32, i32* %_secret_structgep280, align 4
  %_secret_andtmp283 = and i32 %_secret_lval281, %_secret_andtmp243
  %_secret_cast.i.i738 = bitcast i8* %_secret_source_gep277 to i32*
  %_secret_ld.i.i739 = load i32, i32* %_secret_cast.i.i738, align 4
  %_secret_ortmp.i740 = or i32 %_secret_ld.i.i739, %_secret_andtmp283
  %_secret_cast.i5.i741 = bitcast i8* %_secret_source_gep277 to i32*
  store i32 %_secret_ortmp.i740, i32* %_secret_cast.i5.i741, align 4
  %_secret_lval291 = load i32, i32* %_secret_structgep290, align 4
  %_secret_andtmp293 = and i32 %_secret_lval291, %_secret_andtmp243
  %_secret_cast.i.i734 = bitcast i8* %_secret_source_gep287 to i32*
  %_secret_ld.i.i735 = load i32, i32* %_secret_cast.i.i734, align 4
  %_secret_ortmp.i736 = or i32 %_secret_ld.i.i735, %_secret_andtmp293
  %_secret_cast.i5.i737 = bitcast i8* %_secret_source_gep287 to i32*
  store i32 %_secret_ortmp.i736, i32* %_secret_cast.i5.i737, align 4
  br label %branchmerge295

branchmerge295:                                   ; preds = %loop_body, %thenbranch204
  %_public___v31_p_res.1 = phi i32 [ 0, %thenbranch204 ], [ %_public_addtmp200, %loop_body ]
  %_public_addtmp297 = add nuw i32 %_public___v32_j.0659, 1
  %_public_ulttmp169 = icmp ult i32 %_public_addtmp297, %_public___v14__len.1
  br i1 %_public_ulttmp169, label %loop_body, label %loop_end

loop_end301:                                      ; preds = %loop_end
  %_public_763 = add i32 %_public___v14__len.1, 64
  %_public_scevgep = getelementptr %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 0, i32 0, i64 116
  %_public_scevgep661 = bitcast i32* %_public_scevgep to i8*
  %_public_764 = sext i32 %_public___v31_p_res.0.lcssa to i64
  %_public_uglygep = getelementptr i8, i8* %_public_scevgep661, i64 %_public_764
  %_public_765 = sub i32 63, %_public___v31_p_res.0.lcssa
  %_public_766 = zext i32 %_public_765 to i64
  %_public_767 = add nuw nsw i64 %_public_766, 1
  call void @llvm.memset.p0i8.i64(i8* %_public_uglygep, i8 0, i64 %_public_767, i32 1, i1 false)
  %_public_768 = sub i32 %_public_763, %_public___v31_p_res.0.lcssa
  %_public_ugttmp = icmp ugt i32 %_public___v31_p_res.0.lcssa, 56
  br i1 %_public_ugttmp, label %thenbranch318, label %loop_end301.branchmerge416_crit_edge

loop_end301.branchmerge416_crit_edge:             ; preds = %loop_end301
  %_public_.pre662 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 3, i32 7, i64 60
  %_public_.pre663 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 3, i32 7, i64 0
  %_public_.pre664 = sub i32 -72, %_secret___v23_inp_len.0
  %_secret_.pre665 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i64 0, i64 4
  %_public_.pre666 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 3, i32 1
  %_secret_.pre667 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i64 0, i64 8
  %_public_.pre668 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 3, i32 2
  %_secret_.pre669 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i64 0, i64 12
  %_public_.pre670 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 3, i32 3
  %_secret_.pre671 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i64 0, i64 16
  %_public_.pre672 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 3, i32 4
  br label %branchmerge416

thenbranch318:                                    ; preds = %loop_end, %loop_end301
  %_public___v35_j.0.lcssa674 = phi i32 [ %_public_768, %loop_end301 ], [ %_public___v14__len.1, %loop_end ]
  %_secret_addtmp320 = add i32 %_secret___v23_inp_len.0, 8
  %_secret_subtmp322 = sub i32 %_secret_addtmp320, %_public___v35_j.0.lcssa674
  %_secret_subtmp324 = ashr i32 %_secret_subtmp322, 31
  %_secret_source_gep338 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 3, i32 7, i64 60
  %_secret_andtmp342 = and i32 %_secret_subtmp324, %_secret_ortmp25.i758
  %_secret_cast.i.i730 = bitcast i8* %_secret_source_gep338 to i32*
  %_secret_ld.i.i731 = load i32, i32* %_secret_cast.i.i730, align 4
  %_secret_ortmp.i732 = or i32 %_secret_ld.i.i731, %_secret_andtmp342
  %_secret_cast.i5.i733 = bitcast i8* %_secret_source_gep338 to i32*
  store i32 %_secret_ortmp.i732, i32* %_secret_cast.i5.i733, align 4
  %_secret_arrtoptr349 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 3, i32 7, i64 0
  tail call void @sha1_block_data_order(i32* nonnull %_secret_structgep101, i8* nonnull %_secret_arrtoptr349, i32 1)
  %_secret_subtmp353 = sub i32 -72, %_secret___v23_inp_len.0
  %_secret_subtmp354 = add i32 %_secret_subtmp353, %_public___v35_j.0.lcssa674
  %_secret_subtmp356 = ashr i32 %_secret_subtmp354, 31
  %_secret_andtmp357 = and i32 %_secret_subtmp324, %_secret_subtmp356
  %_secret_lval365 = load i32, i32* %_secret_structgep101, align 4
  %_secret_andtmp367 = and i32 %_secret_lval365, %_secret_andtmp357
  %_secret_cast.i.i726 = bitcast i8* %_secret_sourcecasted to i32*
  %_secret_ld.i.i727 = load i32, i32* %_secret_cast.i.i726, align 4
  %_secret_ortmp.i728 = or i32 %_secret_ld.i.i727, %_secret_andtmp367
  %_secret_cast.i5.i729 = bitcast i8* %_secret_sourcecasted to i32*
  store i32 %_secret_ortmp.i728, i32* %_secret_cast.i5.i729, align 4
  %_secret_source_gep371 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i64 0, i64 4
  %_secret_structgep374 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 3, i32 1
  %_secret_lval375 = load i32, i32* %_secret_structgep374, align 4
  %_secret_andtmp377 = and i32 %_secret_lval375, %_secret_andtmp357
  %_secret_cast.i.i722 = bitcast i8* %_secret_source_gep371 to i32*
  %_secret_ld.i.i723 = load i32, i32* %_secret_cast.i.i722, align 4
  %_secret_ortmp.i724 = or i32 %_secret_ld.i.i723, %_secret_andtmp377
  %_secret_cast.i5.i725 = bitcast i8* %_secret_source_gep371 to i32*
  store i32 %_secret_ortmp.i724, i32* %_secret_cast.i5.i725, align 4
  %_secret_source_gep381 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i64 0, i64 8
  %_secret_structgep384 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 3, i32 2
  %_secret_lval385 = load i32, i32* %_secret_structgep384, align 4
  %_secret_andtmp387 = and i32 %_secret_lval385, %_secret_andtmp357
  %_secret_cast.i.i718 = bitcast i8* %_secret_source_gep381 to i32*
  %_secret_ld.i.i719 = load i32, i32* %_secret_cast.i.i718, align 4
  %_secret_ortmp.i720 = or i32 %_secret_ld.i.i719, %_secret_andtmp387
  %_secret_cast.i5.i721 = bitcast i8* %_secret_source_gep381 to i32*
  store i32 %_secret_ortmp.i720, i32* %_secret_cast.i5.i721, align 4
  %_secret_source_gep391 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i64 0, i64 12
  %_secret_structgep394 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 3, i32 3
  %_secret_lval395 = load i32, i32* %_secret_structgep394, align 4
  %_secret_andtmp397 = and i32 %_secret_lval395, %_secret_andtmp357
  %_secret_cast.i.i714 = bitcast i8* %_secret_source_gep391 to i32*
  %_secret_ld.i.i715 = load i32, i32* %_secret_cast.i.i714, align 4
  %_secret_ortmp.i716 = or i32 %_secret_ld.i.i715, %_secret_andtmp397
  %_secret_cast.i5.i717 = bitcast i8* %_secret_source_gep391 to i32*
  store i32 %_secret_ortmp.i716, i32* %_secret_cast.i5.i717, align 4
  %_secret_source_gep401 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i64 0, i64 16
  %_secret_structgep404 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 3, i32 4
  %_secret_lval405 = load i32, i32* %_secret_structgep404, align 4
  %_secret_andtmp407 = and i32 %_secret_lval405, %_secret_andtmp357
  %_secret_cast.i.i710 = bitcast i8* %_secret_source_gep401 to i32*
  %_secret_ld.i.i711 = load i32, i32* %_secret_cast.i.i710, align 4
  %_secret_ortmp.i712 = or i32 %_secret_ld.i.i711, %_secret_andtmp407
  %_secret_cast.i5.i713 = bitcast i8* %_secret_source_gep401 to i32*
  store i32 %_secret_ortmp.i712, i32* %_secret_cast.i5.i713, align 4
  tail call fastcc void @_memzero(i8* nonnull %_secret_arrtoptr349)
  %_public_addtmp414 = add i32 %_public___v35_j.0.lcssa674, 64
  br label %branchmerge416

branchmerge416:                                   ; preds = %loop_end301.branchmerge416_crit_edge, %thenbranch318
  %_secret_structgep492.pre-phi = phi i32* [ %_public_.pre672, %loop_end301.branchmerge416_crit_edge ], [ %_secret_structgep404, %thenbranch318 ]
  %_secret_source_gep489.pre-phi = phi i8* [ %_secret_.pre671, %loop_end301.branchmerge416_crit_edge ], [ %_secret_source_gep401, %thenbranch318 ]
  %_secret_structgep482.pre-phi = phi i32* [ %_public_.pre670, %loop_end301.branchmerge416_crit_edge ], [ %_secret_structgep394, %thenbranch318 ]
  %_secret_source_gep479.pre-phi = phi i8* [ %_secret_.pre669, %loop_end301.branchmerge416_crit_edge ], [ %_secret_source_gep391, %thenbranch318 ]
  %_secret_structgep472.pre-phi = phi i32* [ %_public_.pre668, %loop_end301.branchmerge416_crit_edge ], [ %_secret_structgep384, %thenbranch318 ]
  %_secret_source_gep469.pre-phi = phi i8* [ %_secret_.pre667, %loop_end301.branchmerge416_crit_edge ], [ %_secret_source_gep381, %thenbranch318 ]
  %_secret_structgep462.pre-phi = phi i32* [ %_public_.pre666, %loop_end301.branchmerge416_crit_edge ], [ %_secret_structgep374, %thenbranch318 ]
  %_secret_source_gep459.pre-phi = phi i8* [ %_secret_.pre665, %loop_end301.branchmerge416_crit_edge ], [ %_secret_source_gep371, %thenbranch318 ]
  %_secret_subtmp442.pre-phi = phi i32 [ %_public_.pre664, %loop_end301.branchmerge416_crit_edge ], [ %_secret_subtmp353, %thenbranch318 ]
  %_secret_arrtoptr439.pre-phi = phi i8* [ %_public_.pre663, %loop_end301.branchmerge416_crit_edge ], [ %_secret_arrtoptr349, %thenbranch318 ]
  %_secret_source_gep430.pre-phi = phi i8* [ %_public_.pre662, %loop_end301.branchmerge416_crit_edge ], [ %_secret_source_gep338, %thenbranch318 ]
  %_public___v35_j.1 = phi i32 [ %_public_768, %loop_end301.branchmerge416_crit_edge ], [ %_public_addtmp414, %thenbranch318 ]
  %_secret_cast.i709 = bitcast i8* %_secret_source_gep430.pre-phi to i32*
  store i32 %_secret_ortmp25.i758, i32* %_secret_cast.i709, align 4
  tail call void @sha1_block_data_order(i32* nonnull %_secret_structgep101, i8* nonnull %_secret_arrtoptr439.pre-phi, i32 1)
  %_secret_subtmp443 = add i32 %_secret_subtmp442.pre-phi, %_public___v35_j.1
  %_secret_subtmp445 = ashr i32 %_secret_subtmp443, 31
  %_secret_lval453 = load i32, i32* %_secret_structgep101, align 4
  %_secret_andtmp455 = and i32 %_secret_lval453, %_secret_subtmp445
  %_secret_cast.i.i705 = bitcast i8* %_secret_sourcecasted to i32*
  %_secret_ld.i.i706 = load i32, i32* %_secret_cast.i.i705, align 4
  %_secret_ortmp.i707 = or i32 %_secret_ld.i.i706, %_secret_andtmp455
  %_secret_cast.i5.i708 = bitcast i8* %_secret_sourcecasted to i32*
  store i32 %_secret_ortmp.i707, i32* %_secret_cast.i5.i708, align 4
  %_secret_lval463 = load i32, i32* %_secret_structgep462.pre-phi, align 4
  %_secret_andtmp465 = and i32 %_secret_lval463, %_secret_subtmp445
  %_secret_cast.i.i701 = bitcast i8* %_secret_source_gep459.pre-phi to i32*
  %_secret_ld.i.i702 = load i32, i32* %_secret_cast.i.i701, align 4
  %_secret_ortmp.i703 = or i32 %_secret_ld.i.i702, %_secret_andtmp465
  %_secret_cast.i5.i704 = bitcast i8* %_secret_source_gep459.pre-phi to i32*
  store i32 %_secret_ortmp.i703, i32* %_secret_cast.i5.i704, align 4
  %_secret_lval473 = load i32, i32* %_secret_structgep472.pre-phi, align 4
  %_secret_andtmp475 = and i32 %_secret_lval473, %_secret_subtmp445
  %_secret_cast.i.i697 = bitcast i8* %_secret_source_gep469.pre-phi to i32*
  %_secret_ld.i.i698 = load i32, i32* %_secret_cast.i.i697, align 4
  %_secret_ortmp.i699 = or i32 %_secret_ld.i.i698, %_secret_andtmp475
  %_secret_cast.i5.i700 = bitcast i8* %_secret_source_gep469.pre-phi to i32*
  store i32 %_secret_ortmp.i699, i32* %_secret_cast.i5.i700, align 4
  %_secret_lval483 = load i32, i32* %_secret_structgep482.pre-phi, align 4
  %_secret_andtmp485 = and i32 %_secret_lval483, %_secret_subtmp445
  %_secret_cast.i.i693 = bitcast i8* %_secret_source_gep479.pre-phi to i32*
  %_secret_ld.i.i694 = load i32, i32* %_secret_cast.i.i693, align 4
  %_secret_ortmp.i695 = or i32 %_secret_ld.i.i694, %_secret_andtmp485
  %_secret_cast.i5.i696 = bitcast i8* %_secret_source_gep479.pre-phi to i32*
  store i32 %_secret_ortmp.i695, i32* %_secret_cast.i5.i696, align 4
  %_secret_lval493 = load i32, i32* %_secret_structgep492.pre-phi, align 4
  %_secret_andtmp495 = and i32 %_secret_lval493, %_secret_subtmp445
  %_secret_cast.i.i = bitcast i8* %_secret_source_gep489.pre-phi to i32*
  %_secret_ld.i.i = load i32, i32* %_secret_cast.i.i, align 4
  %_secret_ortmp.i = or i32 %_secret_ld.i.i, %_secret_andtmp495
  %_secret_cast.i5.i = bitcast i8* %_secret_source_gep489.pre-phi to i32*
  store i32 %_secret_ortmp.i, i32* %_secret_cast.i5.i, align 4
  %_secret_cast.i691 = bitcast i8* %_secret_sourcecasted to i32*
  %_secret_ld.i692 = load i32, i32* %_secret_cast.i691, align 4
  %_secret_ortmp25.i690 = tail call i32 @llvm.bswap.i32(i32 %_secret_ld.i692) #3
  %_secret_cast.i689 = bitcast i8* %_secret_sourcecasted to i32*
  store i32 %_secret_ortmp25.i690, i32* %_secret_cast.i689, align 4
  %_secret_cast.i687 = bitcast i8* %_secret_source_gep459.pre-phi to i32*
  %_secret_ld.i688 = load i32, i32* %_secret_cast.i687, align 4
  %_secret_ortmp25.i686 = tail call i32 @llvm.bswap.i32(i32 %_secret_ld.i688) #3
  %_secret_cast.i685 = bitcast i8* %_secret_source_gep459.pre-phi to i32*
  store i32 %_secret_ortmp25.i686, i32* %_secret_cast.i685, align 4
  %_secret_cast.i683 = bitcast i8* %_secret_source_gep469.pre-phi to i32*
  %_secret_ld.i684 = load i32, i32* %_secret_cast.i683, align 4
  %_secret_ortmp25.i682 = tail call i32 @llvm.bswap.i32(i32 %_secret_ld.i684) #3
  %_secret_cast.i681 = bitcast i8* %_secret_source_gep469.pre-phi to i32*
  store i32 %_secret_ortmp25.i682, i32* %_secret_cast.i681, align 4
  %_secret_cast.i679 = bitcast i8* %_secret_source_gep479.pre-phi to i32*
  %_secret_ld.i680 = load i32, i32* %_secret_cast.i679, align 4
  %_secret_ortmp25.i678 = tail call i32 @llvm.bswap.i32(i32 %_secret_ld.i680) #3
  %_secret_cast.i677 = bitcast i8* %_secret_source_gep479.pre-phi to i32*
  store i32 %_secret_ortmp25.i678, i32* %_secret_cast.i677, align 4
  %_secret_cast.i676 = bitcast i8* %_secret_source_gep489.pre-phi to i32*
  %_secret_ld.i = load i32, i32* %_secret_cast.i676, align 4
  %_secret_ortmp25.i = tail call i32 @llvm.bswap.i32(i32 %_secret_ld.i) #3
  %_secret_cast.i675 = bitcast i8* %_secret_source_gep489.pre-phi to i32*
  store i32 %_secret_ortmp25.i, i32* %_secret_cast.i675, align 4
  %_public_structgep560 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 2
  %_secret_cast.i = bitcast %SHA_CTX* %_public_structgep97 to i8*
  %_secret_cast1.i = bitcast %SHA_CTX* %_public_structgep560 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %_secret_cast.i, i8* %_secret_cast1.i, i32 96, i32 4, i1 false) #3
  call void @_sha1_update(i32* nonnull %_secret_structgep101, i8* nonnull %_secret_sourcecasted, i64 20)
  call void @SHA1_Final(i8* nonnull %_secret_sourcecasted, i32* nonnull %_secret_structgep101)
  %_public_subtmp576 = sub i32 %_public_subtmp62, %_public_zexttmp72
  %_public_subtmp578 = add i32 %_public_subtmp576, -20
  %_public_subtmp578.neg = sub i32 20, %_public_subtmp576
  %_secret_addtmp569 = add i32 %_public___v13_outp.1, %_public_subtmp578.neg
  %_secret_subtmp581 = add i32 %_secret_addtmp569, %_secret___v23_inp_len.0
  %_public_addtmp584 = add nuw nsw i32 %_public_zexttmp72, 20
  %_secret_subtmp600 = sub i32 -20, %_secret_subtmp581
  %_secret_subtmp613 = add i32 %_secret_subtmp581, -1
  br label %loop_body586

loop_body586:                                     ; preds = %branchmerge416, %loop_body586
  %_public___v45_j.0653 = phi i32 [ 0, %branchmerge416 ], [ %_public_addtmp635, %loop_body586 ]
  %_secret___v44_i.0652 = phi i32 [ 0, %branchmerge416 ], [ %_secret_addtmp633, %loop_body586 ]
  %_secret___v43_s_res.0651 = phi i32 [ 0, %branchmerge416 ], [ %_secret_ortmp627, %loop_body586 ]
  %_public_addtmp593 = add i32 %_public___v45_j.0653, %_public_subtmp578
  %_public_ = sext i32 %_public_addtmp593 to i64
  %_secret_ptr595 = getelementptr inbounds i8, i8* %_secret_arrarg3, i64 %_public_
  %_secret_lval596 = load i8, i8* %_secret_ptr595, align 1
  %_secret_zexttmp597 = zext i8 %_secret_lval596 to i32
  %_secret_subtmp602 = add i32 %_secret_subtmp600, %_public___v45_j.0653
  %_secret_arshift603 = ashr i32 %_secret_subtmp602, 31
  %_secret_xortmp = xor i32 %_secret_ortmp.i761, %_secret_zexttmp597
  %_secret_bnottmp608 = xor i32 %_secret_arshift603, -1
  %_secret_andtmp609 = and i32 %_secret_xortmp, %_secret_bnottmp608
  %_secret_ortmp610 = or i32 %_secret_andtmp609, %_secret___v43_s_res.0651
  %_secret_subtmp615 = sub i32 %_secret_subtmp613, %_public___v45_j.0653
  %_secret_arshift616 = ashr i32 %_secret_subtmp615, 31
  %_secret_andtmp617 = and i32 %_secret_arshift603, %_secret_arshift616
  %_public_762 = sext i32 %_secret___v44_i.0652 to i64
  %_secret_ptr621 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v30_pmac, i64 0, i64 %_public_762
  %_secret_lval622 = load i8, i8* %_secret_ptr621, align 1
  %_secret_xortmp624650 = xor i8 %_secret_lval622, %_secret_lval596
  %_secret_xortmp624 = zext i8 %_secret_xortmp624650 to i32
  %_secret_andtmp626 = and i32 %_secret_andtmp617, %_secret_xortmp624
  %_secret_ortmp627 = or i32 %_secret_ortmp610, %_secret_andtmp626
  %_secret_rhssext632 = and i32 %_secret_andtmp617, 1
  %_secret_addtmp633 = add i32 %_secret_rhssext632, %_secret___v44_i.0652
  %_public_addtmp635 = add nuw nsw i32 %_public___v45_j.0653, 1
  %_public_ulttmp590 = icmp ult i32 %_public_addtmp635, %_public_addtmp584
  br i1 %_public_ulttmp590, label %loop_body586, label %loop_end587

loop_end587:                                      ; preds = %loop_body586
  %_secret_subtmp640 = sub i32 0, %_secret_ortmp627
  %_secret_subtmp642 = ashr i32 %_secret_subtmp640, 31
  %_secret_bnottmp645 = xor i32 %_secret_subtmp642, -1
  %_secret_andtmp646 = and i32 %_secret_andtmp, %_secret_bnottmp645
  ret i32 %_secret_andtmp646
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
