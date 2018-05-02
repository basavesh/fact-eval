; ModuleID = 'Module'
source_filename = "Module"

%SHA_CTX = type { [5 x i32], i32, i32, [64 x i8], i32 }
%EVP_AES_HMAC_SHA1 = type { %AES_KEY, %SHA_CTX, %SHA_CTX, %SHA_CTX, i64, [16 x i8] }
%AES_KEY = type { [60 x i32], i32 }

declare void @aesni_cbc_encrypt(i8*, i8*, i64, i32*, i8*, i32) local_unnamed_addr

declare void @_sha1_update(i32*, i8*, i64) local_unnamed_addr

declare void @SHA1_Final(i8*, i32*) local_unnamed_addr

declare void @sha1_block_data_order(%SHA_CTX*, i8*, i32) local_unnamed_addr

define i32 @_aesni_cbc_hmac_sha1_cipher(i8* %_secret_arrarg1, %EVP_AES_HMAC_SHA1* %key, i8* %_secret_arrarg3, i32 %_public____out_len4, i8* %_secret_arrarg6, i32 %_public____in_len7, i64 %_public_plen8, i16 %_public_tls_ver9) local_unnamed_addr {
entry:
  %_public_ugtetmp = icmp ugt i16 %_public_tls_ver9, 769
  br i1 %_public_ugtetmp, label %thenbranch, label %elsebranch29

thenbranch:                                       ; preds = %entry
  %_public_ulttmp = icmp ult i32 %_public____out_len4, 37
  br i1 %_public_ulttmp, label %thenbranch18, label %branchmerge

thenbranch18:                                     ; preds = %loop_body622, %elsebranch29, %thenbranch
  %_public_merge = phi i32 [ 0, %elsebranch29 ], [ 0, %thenbranch ], [ %_secret_select.i722, %loop_body622 ]
  ret i32 %_public_merge

branchmerge:                                      ; preds = %thenbranch
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %_secret_arrarg1, i8* %_secret_arrarg6, i32 16, i32 1, i1 false) #3
  %_public_subtmp = add i32 %_public____out_len4, -16
  br label %branchmerge39

elsebranch29:                                     ; preds = %entry
  %_public_ulttmp33 = icmp ult i32 %_public____out_len4, 21
  br i1 %_public_ulttmp33, label %thenbranch18, label %branchmerge39

branchmerge39:                                    ; preds = %elsebranch29, %branchmerge
  %_public___v15_inp.0 = phi i64 [ 16, %branchmerge ], [ 0, %elsebranch29 ]
  %_public___v16_outp.0 = phi i32 [ 16, %branchmerge ], [ 0, %elsebranch29 ]
  %_public___v17__len.0 = phi i32 [ %_public_subtmp, %branchmerge ], [ %_public____out_len4, %elsebranch29 ]
  %_secret_source_gep45 = getelementptr inbounds i8, i8* %_secret_arrarg6, i64 %_public___v15_inp.0
  %_public_876 = zext i32 %_public___v16_outp.0 to i64
  %_secret_source_gep54 = getelementptr inbounds i8, i8* %_secret_arrarg3, i64 %_public_876
  %_public_zexttmp = zext i32 %_public___v17__len.0 to i64
  %_secret_arrtoptr = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 0, i32 0, i64 0
  tail call void @aesni_cbc_encrypt(i8* %_secret_source_gep45, i8* %_secret_source_gep54, i64 %_public_zexttmp, i32* %_secret_arrtoptr, i8* %_secret_arrarg1, i32 0)
  %_public_subtmp62 = add i32 %_public____out_len4, -1
  %_public_877 = sext i32 %_public_subtmp62 to i64
  %_secret_ptr = getelementptr inbounds i8, i8* %_secret_arrarg3, i64 %_public_877
  %_secret_lval63 = load i8, i8* %_secret_ptr, align 1
  %_secret_zexttmp = zext i8 %_secret_lval63 to i32
  %_public_subtmp67 = add i32 %_public___v17__len.0, -21
  %_public_878 = icmp ult i32 %_public_subtmp67, 255
  %_public_terntmp = select i1 %_public_878, i32 %_public_subtmp67, i32 255
  %_secret_ugttmp = icmp ult i32 %_public_terntmp, %_secret_zexttmp
  %_secret_select.i767 = select i1 %_secret_ugttmp, i32 %_public_terntmp, i32 %_secret_zexttmp
  %_secret_select.i798 = select i1 %_secret_ugttmp, i32 0, i32 1
  %_secret_subtmp = sub i32 %_public_subtmp67, %_secret_select.i767
  %_public_subtmp94 = add i64 %_public_plen8, -2
  %_secret_source_gep97 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 5, i64 %_public_subtmp94
  %_secret_ucast = trunc i32 %_secret_subtmp to i16
  %_secret_lrshift.i = lshr i16 %_secret_ucast, 8
  %_secret_ucast.i = trunc i16 %_secret_lrshift.i to i8
  store i8 %_secret_ucast.i, i8* %_secret_source_gep97, align 1
  %_secret_ptr4.i = getelementptr inbounds i8, i8* %_secret_source_gep97, i64 1
  %_secret_ucast6.i = trunc i16 %_secret_ucast to i8
  store i8 %_secret_ucast6.i, i8* %_secret_ptr4.i, align 1
  %_public_structgep100 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 3
  %_public_structgep101 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 1
  %_secret_cast.i840 = bitcast %SHA_CTX* %_public_structgep100 to i8*
  %_secret_cast1.i841 = bitcast %SHA_CTX* %_public_structgep101 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %_secret_cast.i840, i8* %_secret_cast1.i841, i32 96, i32 4, i1 false) #3
  %_secret_ptr105 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 3, i32 0, i64 0
  %_secret_source_gep111 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 5, i64 0
  tail call void @_sha1_update(i32* nonnull %_secret_ptr105, i8* nonnull %_secret_source_gep111, i64 %_public_plen8)
  %_public_subtmp116 = add i32 %_public___v17__len.0, -20
  %_public_ugtetmp120 = icmp ugt i32 %_public_subtmp116, 319
  br i1 %_public_ugtetmp120, label %thenbranch122, label %branchmerge39.branchmerge160_crit_edge

branchmerge39.branchmerge160_crit_edge:           ; preds = %branchmerge39
  %_public_.pre = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 3, i32 4
  br label %branchmerge160

thenbranch122:                                    ; preds = %branchmerge39
  %_public_andtmp697 = add i32 %_public___v17__len.0, -276
  %_public_addtmp130 = and i32 %_public_andtmp697, -64
  %_public_structgep132 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 3, i32 4
  %_public_lval133 = load i32, i32* %_public_structgep132, align 4
  %_public_subtmp134 = sub i32 %_public_addtmp130, %_public_lval133
  %_public_zexttmp149 = zext i32 %_public_subtmp134 to i64
  tail call void @_sha1_update(i32* nonnull %_secret_ptr105, i8* %_secret_source_gep54, i64 %_public_zexttmp149)
  %_public_addtmp152 = add i32 %_public_subtmp134, %_public___v16_outp.0
  %_public_subtmp155 = sub i32 %_public_subtmp116, %_public_subtmp134
  %_secret_subtmp158 = sub i32 %_secret_subtmp, %_public_subtmp134
  br label %branchmerge160

branchmerge160:                                   ; preds = %branchmerge39.branchmerge160_crit_edge, %thenbranch122
  %_public_structgep167.pre-phi = phi i32* [ %_public_.pre, %branchmerge39.branchmerge160_crit_edge ], [ %_public_structgep132, %thenbranch122 ]
  %_public___v16_outp.1 = phi i32 [ %_public___v16_outp.0, %branchmerge39.branchmerge160_crit_edge ], [ %_public_addtmp152, %thenbranch122 ]
  %_public___v17__len.1 = phi i32 [ %_public_subtmp116, %branchmerge39.branchmerge160_crit_edge ], [ %_public_subtmp155, %thenbranch122 ]
  %_secret___v26_inp_len.0 = phi i32 [ %_secret_subtmp, %branchmerge39.branchmerge160_crit_edge ], [ %_secret_subtmp158, %thenbranch122 ]
  %_secret_structgep162 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 3, i32 1
  %_secret_lval163 = load i32, i32* %_secret_structgep162, align 4
  %_secret_lshift = shl i32 %_secret___v26_inp_len.0, 3
  %_secret_addtmp165 = add i32 %_secret_lval163, %_secret_lshift
  %_secret_ortmp25.i845 = tail call i32 @llvm.bswap.i32(i32 %_secret_addtmp165) #3
  %_secret___v33_pmac = alloca [20 x i8], align 32
  %_secret_sourcecasted = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* nonnull %_secret_sourcecasted, i8 0, i64 20, i32 32, i1 false)
  %_public_lval168 = load i32, i32* %_public_structgep167.pre-phi, align 4
  %_public_ulttmp171704 = icmp eq i32 %_public___v17__len.1, 0
  br i1 %_public_ulttmp171704, label %loop_end, label %loop_body.lr.ph

loop_body.lr.ph:                                  ; preds = %branchmerge160
  %_secret_addtmp231 = add i32 %_secret___v26_inp_len.0, 7
  %_secret_source_gep247 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 3, i32 3, i64 60
  %_secret_arrtoptr256 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 3, i32 3, i64 0
  %_secret_addtmp265 = add i32 %_secret___v26_inp_len.0, 72
  %_secret_source_gep292 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i64 0, i64 4
  %_secret_ptr296 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 3, i32 0, i64 1
  %_secret_source_gep302 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i64 0, i64 8
  %_secret_ptr306 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 3, i32 0, i64 2
  %_secret_source_gep312 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i64 0, i64 12
  %_secret_ptr316 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 3, i32 0, i64 3
  %_secret_source_gep322 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i64 0, i64 16
  %_secret_ptr326 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 3, i32 0, i64 4
  br label %loop_body

loop_body:                                        ; preds = %loop_body.lr.ph, %branchmerge330
  %_public___v35_j.0706 = phi i32 [ 0, %loop_body.lr.ph ], [ %_public_addtmp332, %branchmerge330 ]
  %_public___v34_p_res.0705 = phi i32 [ %_public_lval168, %loop_body.lr.ph ], [ %_public___v34_p_res.1, %branchmerge330 ]
  %_public_874 = sext i32 %_public___v34_p_res.0705 to i64
  %_secret_ptr175 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 3, i32 3, i64 %_public_874
  %_secret_ulttmp = icmp ult i32 %_public___v35_j.0706, %_secret___v26_inp_len.0
  %_public_addtmp185 = add i32 %_public___v35_j.0706, %_public___v16_outp.1
  %_public_875 = sext i32 %_public_addtmp185 to i64
  %_secret_ptr187 = getelementptr inbounds i8, i8* %_secret_arrarg3, i64 %_public_875
  %_secret_lval188 = load i8, i8* %_secret_ptr187, align 1
  %_secret_zext.i856 = zext i8 %_secret_lval188 to i32
  %_secret_asm.i857 = tail call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %_secret_ulttmp, i32 %_secret_zext.i856, i32 0) #3
  %_secret_trunc.i858 = trunc i32 %_secret_asm.i857 to i8
  %_secret_lnottmp192 = xor i1 %_secret_ulttmp, true
  %_secret_eqtmp = icmp eq i32 %_public___v35_j.0706, %_secret___v26_inp_len.0
  %_secret_asm.i859 = tail call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %_secret_eqtmp, i32 128, i32 0) #3
  %_secret_trunc.i860 = trunc i32 %_secret_asm.i859 to i16
  %_secret_landtmp214 = xor i1 %_secret_eqtmp, %_secret_lnottmp192
  %_secret_zext1.i861 = zext i16 %_secret_trunc.i860 to i32
  %_secret_asm.i862 = tail call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %_secret_landtmp214, i32 0, i32 %_secret_zext1.i861) #3
  %_secret_trunc.i863 = trunc i32 %_secret_asm.i862 to i16
  %_secret_trunctmp = trunc i16 %_secret_trunc.i863 to i8
  %_secret_zext.i852 = zext i8 %_secret_trunctmp to i32
  %_secret_zext1.i853 = zext i8 %_secret_trunc.i858 to i32
  %_secret_asm.i854 = tail call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %_secret_lnottmp192, i32 %_secret_zext.i852, i32 %_secret_zext1.i853) #3
  %_secret_trunc.i855 = trunc i32 %_secret_asm.i854 to i8
  store i8 %_secret_trunc.i855, i8* %_secret_ptr175, align 1
  %_public_addtmp225 = add i32 %_public___v34_p_res.0705, 1
  %_public_eqtmp = icmp eq i32 %_public_addtmp225, 64
  br i1 %_public_eqtmp, label %thenbranch229, label %branchmerge330

loop_end:                                         ; preds = %branchmerge330, %branchmerge160
  %_public___v34_p_res.0.lcssa = phi i32 [ %_public_lval168, %branchmerge160 ], [ %_public___v34_p_res.1, %branchmerge330 ]
  %_public_ulttmp340701 = icmp ult i32 %_public___v34_p_res.0.lcssa, 64
  br i1 %_public_ulttmp340701, label %loop_end336, label %thenbranch354

thenbranch229:                                    ; preds = %loop_body
  %_secret_ulttmp233 = icmp ult i32 %_secret_addtmp231, %_public___v35_j.0706
  %_secret_cast.i.i846 = bitcast i8* %_secret_source_gep247 to i32*
  %_secret_ld.i.i847 = load i32, i32* %_secret_cast.i.i846, align 4
  %_secret_select.i22.i848 = select i1 %_secret_ulttmp233, i32 %_secret_ortmp25.i845, i32 0
  %_secret_lnottmp.i849 = xor i1 %_secret_ulttmp233, true
  %_secret_select.i.i850 = select i1 %_secret_lnottmp.i849, i32 %_secret_ld.i.i847, i32 %_secret_select.i22.i848
  %_secret_cast.i21.i851 = bitcast i8* %_secret_source_gep247 to i32*
  store i32 %_secret_select.i.i850, i32* %_secret_cast.i21.i851, align 4
  tail call void @sha1_block_data_order(%SHA_CTX* nonnull %_public_structgep100, i8* nonnull %_secret_arrtoptr256, i32 1)
  %_secret_ulttmp266 = icmp ult i32 %_public___v35_j.0706, %_secret_addtmp265
  %_secret_zext.i842 = zext i1 %_secret_ulttmp266 to i32
  %_secret_asm.i843 = tail call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %_secret_ulttmp233, i32 %_secret_zext.i842, i32 0) #3
  %_secret_872 = and i32 %_secret_asm.i843, 1
  %_secret_trunc.i844 = icmp ne i32 %_secret_872, 0
  %_secret_lnottmp270 = xor i1 %_secret_ulttmp233, true
  %_secret_zext1.i837 = zext i1 %_secret_trunc.i844 to i32
  %_secret_asm.i838 = tail call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %_secret_lnottmp270, i32 0, i32 %_secret_zext1.i837) #3
  %_secret_873 = and i32 %_secret_asm.i838, 1
  %_secret_trunc.i839 = icmp ne i32 %_secret_873, 0
  %_secret_lval287 = load i32, i32* %_secret_ptr105, align 4
  %_secret_cast.i.i831 = bitcast i8* %_secret_sourcecasted to i32*
  %_secret_ld.i.i832 = load i32, i32* %_secret_cast.i.i831, align 4
  %_secret_select.i22.i833 = select i1 %_secret_trunc.i839, i32 %_secret_lval287, i32 0
  %_secret_lnottmp.i834 = xor i1 %_secret_trunc.i839, true
  %_secret_select.i.i835 = select i1 %_secret_lnottmp.i834, i32 %_secret_ld.i.i832, i32 %_secret_select.i22.i833
  %_secret_cast.i21.i836 = bitcast i8* %_secret_sourcecasted to i32*
  store i32 %_secret_select.i.i835, i32* %_secret_cast.i21.i836, align 4
  %_secret_lval297 = load i32, i32* %_secret_ptr296, align 4
  %_secret_cast.i.i825 = bitcast i8* %_secret_source_gep292 to i32*
  %_secret_ld.i.i826 = load i32, i32* %_secret_cast.i.i825, align 4
  %_secret_select.i22.i827 = select i1 %_secret_trunc.i839, i32 %_secret_lval297, i32 0
  %_secret_lnottmp.i828 = xor i1 %_secret_trunc.i839, true
  %_secret_select.i.i829 = select i1 %_secret_lnottmp.i828, i32 %_secret_ld.i.i826, i32 %_secret_select.i22.i827
  %_secret_cast.i21.i830 = bitcast i8* %_secret_source_gep292 to i32*
  store i32 %_secret_select.i.i829, i32* %_secret_cast.i21.i830, align 4
  %_secret_lval307 = load i32, i32* %_secret_ptr306, align 4
  %_secret_cast.i.i819 = bitcast i8* %_secret_source_gep302 to i32*
  %_secret_ld.i.i820 = load i32, i32* %_secret_cast.i.i819, align 4
  %_secret_select.i22.i821 = select i1 %_secret_trunc.i839, i32 %_secret_lval307, i32 0
  %_secret_lnottmp.i822 = xor i1 %_secret_trunc.i839, true
  %_secret_select.i.i823 = select i1 %_secret_lnottmp.i822, i32 %_secret_ld.i.i820, i32 %_secret_select.i22.i821
  %_secret_cast.i21.i824 = bitcast i8* %_secret_source_gep302 to i32*
  store i32 %_secret_select.i.i823, i32* %_secret_cast.i21.i824, align 4
  %_secret_lval317 = load i32, i32* %_secret_ptr316, align 4
  %_secret_cast.i.i813 = bitcast i8* %_secret_source_gep312 to i32*
  %_secret_ld.i.i814 = load i32, i32* %_secret_cast.i.i813, align 4
  %_secret_select.i22.i815 = select i1 %_secret_trunc.i839, i32 %_secret_lval317, i32 0
  %_secret_lnottmp.i816 = xor i1 %_secret_trunc.i839, true
  %_secret_select.i.i817 = select i1 %_secret_lnottmp.i816, i32 %_secret_ld.i.i814, i32 %_secret_select.i22.i815
  %_secret_cast.i21.i818 = bitcast i8* %_secret_source_gep312 to i32*
  store i32 %_secret_select.i.i817, i32* %_secret_cast.i21.i818, align 4
  %_secret_lval327 = load i32, i32* %_secret_ptr326, align 4
  %_secret_cast.i.i807 = bitcast i8* %_secret_source_gep322 to i32*
  %_secret_ld.i.i808 = load i32, i32* %_secret_cast.i.i807, align 4
  %_secret_select.i22.i809 = select i1 %_secret_trunc.i839, i32 %_secret_lval327, i32 0
  %_secret_lnottmp.i810 = xor i1 %_secret_trunc.i839, true
  %_secret_select.i.i811 = select i1 %_secret_lnottmp.i810, i32 %_secret_ld.i.i808, i32 %_secret_select.i22.i809
  %_secret_cast.i21.i812 = bitcast i8* %_secret_source_gep322 to i32*
  store i32 %_secret_select.i.i811, i32* %_secret_cast.i21.i812, align 4
  br label %branchmerge330

branchmerge330:                                   ; preds = %loop_body, %thenbranch229
  %_public___v34_p_res.1 = phi i32 [ 0, %thenbranch229 ], [ %_public_addtmp225, %loop_body ]
  %_public_addtmp332 = add nuw i32 %_public___v35_j.0706, 1
  %_public_ulttmp171 = icmp ult i32 %_public_addtmp332, %_public___v17__len.1
  br i1 %_public_ulttmp171, label %loop_body, label %loop_end

loop_end336:                                      ; preds = %loop_end
  %_public_866 = add i32 %_public___v17__len.1, 64
  %_public_scevgep = getelementptr %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 0, i32 0, i64 116
  %_public_scevgep708 = bitcast i32* %_public_scevgep to i8*
  %_public_867 = sext i32 %_public___v34_p_res.0.lcssa to i64
  %_public_uglygep = getelementptr i8, i8* %_public_scevgep708, i64 %_public_867
  %_public_868 = sub i32 63, %_public___v34_p_res.0.lcssa
  %_public_869 = zext i32 %_public_868 to i64
  %_public_870 = add nuw nsw i64 %_public_869, 1
  call void @llvm.memset.p0i8.i64(i8* %_public_uglygep, i8 0, i64 %_public_870, i32 1, i1 false)
  %_public_871 = sub i32 %_public_866, %_public___v34_p_res.0.lcssa
  %_public_ugttmp352 = icmp ugt i32 %_public___v34_p_res.0.lcssa, 56
  br i1 %_public_ugttmp352, label %thenbranch354, label %loop_end336.branchmerge462_crit_edge

loop_end336.branchmerge462_crit_edge:             ; preds = %loop_end336
  %_public_.pre709 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 3, i32 3, i64 60
  %_public_.pre710 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 3, i32 3, i64 0
  %_public_.pre711 = add i32 %_secret___v26_inp_len.0, 73
  %_secret_.pre712 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i64 0, i64 4
  %_public_.pre713 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 3, i32 0, i64 1
  %_secret_.pre714 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i64 0, i64 8
  %_public_.pre715 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 3, i32 0, i64 2
  %_secret_.pre716 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i64 0, i64 12
  %_public_.pre717 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 3, i32 0, i64 3
  %_secret_.pre718 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i64 0, i64 16
  %_public_.pre719 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 3, i32 0, i64 4
  br label %branchmerge462

thenbranch354:                                    ; preds = %loop_end, %loop_end336
  %_public___v38_j.0.lcssa721 = phi i32 [ %_public_871, %loop_end336 ], [ %_public___v17__len.1, %loop_end ]
  %_secret_addtmp356 = add i32 %_secret___v26_inp_len.0, 8
  %_secret_ulttmp358 = icmp ult i32 %_secret_addtmp356, %_public___v38_j.0.lcssa721
  %_secret_source_gep372 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 3, i32 3, i64 60
  %_secret_cast.i.i801 = bitcast i8* %_secret_source_gep372 to i32*
  %_secret_ld.i.i802 = load i32, i32* %_secret_cast.i.i801, align 4
  %_secret_select.i22.i803 = select i1 %_secret_ulttmp358, i32 %_secret_ortmp25.i845, i32 0
  %_secret_lnottmp.i804 = xor i1 %_secret_ulttmp358, true
  %_secret_select.i.i805 = select i1 %_secret_lnottmp.i804, i32 %_secret_ld.i.i802, i32 %_secret_select.i22.i803
  %_secret_cast.i21.i806 = bitcast i8* %_secret_source_gep372 to i32*
  store i32 %_secret_select.i.i805, i32* %_secret_cast.i21.i806, align 4
  %_secret_arrtoptr381 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 3, i32 3, i64 0
  tail call void @sha1_block_data_order(%SHA_CTX* nonnull %_public_structgep100, i8* nonnull %_secret_arrtoptr381, i32 1)
  %_secret_addtmp390 = add i32 %_secret___v26_inp_len.0, 73
  %_secret_ulttmp391 = icmp ult i32 %_public___v38_j.0.lcssa721, %_secret_addtmp390
  %_secret_zext.i = zext i1 %_secret_ulttmp391 to i32
  %_secret_asm.i799 = tail call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %_secret_ulttmp358, i32 %_secret_zext.i, i32 0) #3
  %_secret_ = and i32 %_secret_asm.i799, 1
  %_secret_trunc.i800 = icmp ne i32 %_secret_, 0
  %_secret_lnottmp395 = xor i1 %_secret_ulttmp358, true
  %_secret_zext1.i = zext i1 %_secret_trunc.i800 to i32
  %_secret_asm.i = tail call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %_secret_lnottmp395, i32 0, i32 %_secret_zext1.i) #3
  %_secret_865 = and i32 %_secret_asm.i, 1
  %_secret_trunc.i = icmp ne i32 %_secret_865, 0
  %_secret_lval412 = load i32, i32* %_secret_ptr105, align 4
  %_secret_cast.i.i792 = bitcast i8* %_secret_sourcecasted to i32*
  %_secret_ld.i.i793 = load i32, i32* %_secret_cast.i.i792, align 4
  %_secret_select.i22.i794 = select i1 %_secret_trunc.i, i32 %_secret_lval412, i32 0
  %_secret_lnottmp.i795 = xor i1 %_secret_trunc.i, true
  %_secret_select.i.i796 = select i1 %_secret_lnottmp.i795, i32 %_secret_ld.i.i793, i32 %_secret_select.i22.i794
  %_secret_cast.i21.i797 = bitcast i8* %_secret_sourcecasted to i32*
  store i32 %_secret_select.i.i796, i32* %_secret_cast.i21.i797, align 4
  %_secret_source_gep417 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i64 0, i64 4
  %_secret_ptr421 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 3, i32 0, i64 1
  %_secret_lval422 = load i32, i32* %_secret_ptr421, align 4
  %_secret_cast.i.i786 = bitcast i8* %_secret_source_gep417 to i32*
  %_secret_ld.i.i787 = load i32, i32* %_secret_cast.i.i786, align 4
  %_secret_select.i22.i788 = select i1 %_secret_trunc.i, i32 %_secret_lval422, i32 0
  %_secret_lnottmp.i789 = xor i1 %_secret_trunc.i, true
  %_secret_select.i.i790 = select i1 %_secret_lnottmp.i789, i32 %_secret_ld.i.i787, i32 %_secret_select.i22.i788
  %_secret_cast.i21.i791 = bitcast i8* %_secret_source_gep417 to i32*
  store i32 %_secret_select.i.i790, i32* %_secret_cast.i21.i791, align 4
  %_secret_source_gep427 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i64 0, i64 8
  %_secret_ptr431 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 3, i32 0, i64 2
  %_secret_lval432 = load i32, i32* %_secret_ptr431, align 4
  %_secret_cast.i.i780 = bitcast i8* %_secret_source_gep427 to i32*
  %_secret_ld.i.i781 = load i32, i32* %_secret_cast.i.i780, align 4
  %_secret_select.i22.i782 = select i1 %_secret_trunc.i, i32 %_secret_lval432, i32 0
  %_secret_lnottmp.i783 = xor i1 %_secret_trunc.i, true
  %_secret_select.i.i784 = select i1 %_secret_lnottmp.i783, i32 %_secret_ld.i.i781, i32 %_secret_select.i22.i782
  %_secret_cast.i21.i785 = bitcast i8* %_secret_source_gep427 to i32*
  store i32 %_secret_select.i.i784, i32* %_secret_cast.i21.i785, align 4
  %_secret_source_gep437 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i64 0, i64 12
  %_secret_ptr441 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 3, i32 0, i64 3
  %_secret_lval442 = load i32, i32* %_secret_ptr441, align 4
  %_secret_cast.i.i774 = bitcast i8* %_secret_source_gep437 to i32*
  %_secret_ld.i.i775 = load i32, i32* %_secret_cast.i.i774, align 4
  %_secret_select.i22.i776 = select i1 %_secret_trunc.i, i32 %_secret_lval442, i32 0
  %_secret_lnottmp.i777 = xor i1 %_secret_trunc.i, true
  %_secret_select.i.i778 = select i1 %_secret_lnottmp.i777, i32 %_secret_ld.i.i775, i32 %_secret_select.i22.i776
  %_secret_cast.i21.i779 = bitcast i8* %_secret_source_gep437 to i32*
  store i32 %_secret_select.i.i778, i32* %_secret_cast.i21.i779, align 4
  %_secret_source_gep447 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i64 0, i64 16
  %_secret_ptr451 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 3, i32 0, i64 4
  %_secret_lval452 = load i32, i32* %_secret_ptr451, align 4
  %_secret_cast.i.i768 = bitcast i8* %_secret_source_gep447 to i32*
  %_secret_ld.i.i769 = load i32, i32* %_secret_cast.i.i768, align 4
  %_secret_select.i22.i770 = select i1 %_secret_trunc.i, i32 %_secret_lval452, i32 0
  %_secret_lnottmp.i771 = xor i1 %_secret_trunc.i, true
  %_secret_select.i.i772 = select i1 %_secret_lnottmp.i771, i32 %_secret_ld.i.i769, i32 %_secret_select.i22.i770
  %_secret_cast.i21.i773 = bitcast i8* %_secret_source_gep447 to i32*
  store i32 %_secret_select.i.i772, i32* %_secret_cast.i21.i773, align 4
  tail call fastcc void @_memzero(i8* nonnull %_secret_arrtoptr381)
  %_public_addtmp460 = add i32 %_public___v38_j.0.lcssa721, 64
  br label %branchmerge462

branchmerge462:                                   ; preds = %loop_end336.branchmerge462_crit_edge, %thenbranch354
  %_secret_ptr536.pre-phi = phi i32* [ %_public_.pre719, %loop_end336.branchmerge462_crit_edge ], [ %_secret_ptr451, %thenbranch354 ]
  %_secret_source_gep532.pre-phi = phi i8* [ %_secret_.pre718, %loop_end336.branchmerge462_crit_edge ], [ %_secret_source_gep447, %thenbranch354 ]
  %_secret_ptr526.pre-phi = phi i32* [ %_public_.pre717, %loop_end336.branchmerge462_crit_edge ], [ %_secret_ptr441, %thenbranch354 ]
  %_secret_source_gep522.pre-phi = phi i8* [ %_secret_.pre716, %loop_end336.branchmerge462_crit_edge ], [ %_secret_source_gep437, %thenbranch354 ]
  %_secret_ptr516.pre-phi = phi i32* [ %_public_.pre715, %loop_end336.branchmerge462_crit_edge ], [ %_secret_ptr431, %thenbranch354 ]
  %_secret_source_gep512.pre-phi = phi i8* [ %_secret_.pre714, %loop_end336.branchmerge462_crit_edge ], [ %_secret_source_gep427, %thenbranch354 ]
  %_secret_ptr506.pre-phi = phi i32* [ %_public_.pre713, %loop_end336.branchmerge462_crit_edge ], [ %_secret_ptr421, %thenbranch354 ]
  %_secret_source_gep502.pre-phi = phi i8* [ %_secret_.pre712, %loop_end336.branchmerge462_crit_edge ], [ %_secret_source_gep417, %thenbranch354 ]
  %_secret_addtmp487.pre-phi = phi i32 [ %_public_.pre711, %loop_end336.branchmerge462_crit_edge ], [ %_secret_addtmp390, %thenbranch354 ]
  %_secret_arrtoptr484.pre-phi = phi i8* [ %_public_.pre710, %loop_end336.branchmerge462_crit_edge ], [ %_secret_arrtoptr381, %thenbranch354 ]
  %_secret_source_gep476.pre-phi = phi i8* [ %_public_.pre709, %loop_end336.branchmerge462_crit_edge ], [ %_secret_source_gep372, %thenbranch354 ]
  %_public___v38_j.1 = phi i32 [ %_public_871, %loop_end336.branchmerge462_crit_edge ], [ %_public_addtmp460, %thenbranch354 ]
  %_secret_cast.i766 = bitcast i8* %_secret_source_gep476.pre-phi to i32*
  store i32 %_secret_ortmp25.i845, i32* %_secret_cast.i766, align 4
  tail call void @sha1_block_data_order(%SHA_CTX* nonnull %_public_structgep100, i8* nonnull %_secret_arrtoptr484.pre-phi, i32 1)
  %_secret_ulttmp488 = icmp ult i32 %_public___v38_j.1, %_secret_addtmp487.pre-phi
  %_secret_lval497 = load i32, i32* %_secret_ptr105, align 4
  %_secret_cast.i.i760 = bitcast i8* %_secret_sourcecasted to i32*
  %_secret_ld.i.i761 = load i32, i32* %_secret_cast.i.i760, align 4
  %_secret_select.i22.i762 = select i1 %_secret_ulttmp488, i32 %_secret_lval497, i32 0
  %_secret_lnottmp.i763 = xor i1 %_secret_ulttmp488, true
  %_secret_select.i.i764 = select i1 %_secret_lnottmp.i763, i32 %_secret_ld.i.i761, i32 %_secret_select.i22.i762
  %_secret_cast.i21.i765 = bitcast i8* %_secret_sourcecasted to i32*
  store i32 %_secret_select.i.i764, i32* %_secret_cast.i21.i765, align 4
  %_secret_lval507 = load i32, i32* %_secret_ptr506.pre-phi, align 4
  %_secret_cast.i.i754 = bitcast i8* %_secret_source_gep502.pre-phi to i32*
  %_secret_ld.i.i755 = load i32, i32* %_secret_cast.i.i754, align 4
  %_secret_select.i22.i756 = select i1 %_secret_ulttmp488, i32 %_secret_lval507, i32 0
  %_secret_lnottmp.i757 = xor i1 %_secret_ulttmp488, true
  %_secret_select.i.i758 = select i1 %_secret_lnottmp.i757, i32 %_secret_ld.i.i755, i32 %_secret_select.i22.i756
  %_secret_cast.i21.i759 = bitcast i8* %_secret_source_gep502.pre-phi to i32*
  store i32 %_secret_select.i.i758, i32* %_secret_cast.i21.i759, align 4
  %_secret_lval517 = load i32, i32* %_secret_ptr516.pre-phi, align 4
  %_secret_cast.i.i748 = bitcast i8* %_secret_source_gep512.pre-phi to i32*
  %_secret_ld.i.i749 = load i32, i32* %_secret_cast.i.i748, align 4
  %_secret_select.i22.i750 = select i1 %_secret_ulttmp488, i32 %_secret_lval517, i32 0
  %_secret_lnottmp.i751 = xor i1 %_secret_ulttmp488, true
  %_secret_select.i.i752 = select i1 %_secret_lnottmp.i751, i32 %_secret_ld.i.i749, i32 %_secret_select.i22.i750
  %_secret_cast.i21.i753 = bitcast i8* %_secret_source_gep512.pre-phi to i32*
  store i32 %_secret_select.i.i752, i32* %_secret_cast.i21.i753, align 4
  %_secret_lval527 = load i32, i32* %_secret_ptr526.pre-phi, align 4
  %_secret_cast.i.i742 = bitcast i8* %_secret_source_gep522.pre-phi to i32*
  %_secret_ld.i.i743 = load i32, i32* %_secret_cast.i.i742, align 4
  %_secret_select.i22.i744 = select i1 %_secret_ulttmp488, i32 %_secret_lval527, i32 0
  %_secret_lnottmp.i745 = xor i1 %_secret_ulttmp488, true
  %_secret_select.i.i746 = select i1 %_secret_lnottmp.i745, i32 %_secret_ld.i.i743, i32 %_secret_select.i22.i744
  %_secret_cast.i21.i747 = bitcast i8* %_secret_source_gep522.pre-phi to i32*
  store i32 %_secret_select.i.i746, i32* %_secret_cast.i21.i747, align 4
  %_secret_lval537 = load i32, i32* %_secret_ptr536.pre-phi, align 4
  %_secret_cast.i.i = bitcast i8* %_secret_source_gep532.pre-phi to i32*
  %_secret_ld.i.i = load i32, i32* %_secret_cast.i.i, align 4
  %_secret_select.i22.i = select i1 %_secret_ulttmp488, i32 %_secret_lval537, i32 0
  %_secret_lnottmp.i = xor i1 %_secret_ulttmp488, true
  %_secret_select.i.i = select i1 %_secret_lnottmp.i, i32 %_secret_ld.i.i, i32 %_secret_select.i22.i
  %_secret_cast.i21.i = bitcast i8* %_secret_source_gep532.pre-phi to i32*
  store i32 %_secret_select.i.i, i32* %_secret_cast.i21.i, align 4
  %_secret_cast.i740 = bitcast i8* %_secret_sourcecasted to i32*
  %_secret_ld.i741 = load i32, i32* %_secret_cast.i740, align 4
  %_secret_ortmp25.i739 = tail call i32 @llvm.bswap.i32(i32 %_secret_ld.i741) #3
  %_secret_cast.i738 = bitcast i8* %_secret_sourcecasted to i32*
  store i32 %_secret_ortmp25.i739, i32* %_secret_cast.i738, align 4
  %_secret_cast.i736 = bitcast i8* %_secret_source_gep502.pre-phi to i32*
  %_secret_ld.i737 = load i32, i32* %_secret_cast.i736, align 4
  %_secret_ortmp25.i735 = tail call i32 @llvm.bswap.i32(i32 %_secret_ld.i737) #3
  %_secret_cast.i734 = bitcast i8* %_secret_source_gep502.pre-phi to i32*
  store i32 %_secret_ortmp25.i735, i32* %_secret_cast.i734, align 4
  %_secret_cast.i732 = bitcast i8* %_secret_source_gep512.pre-phi to i32*
  %_secret_ld.i733 = load i32, i32* %_secret_cast.i732, align 4
  %_secret_ortmp25.i731 = tail call i32 @llvm.bswap.i32(i32 %_secret_ld.i733) #3
  %_secret_cast.i730 = bitcast i8* %_secret_source_gep512.pre-phi to i32*
  store i32 %_secret_ortmp25.i731, i32* %_secret_cast.i730, align 4
  %_secret_cast.i728 = bitcast i8* %_secret_source_gep522.pre-phi to i32*
  %_secret_ld.i729 = load i32, i32* %_secret_cast.i728, align 4
  %_secret_ortmp25.i727 = tail call i32 @llvm.bswap.i32(i32 %_secret_ld.i729) #3
  %_secret_cast.i726 = bitcast i8* %_secret_source_gep522.pre-phi to i32*
  store i32 %_secret_ortmp25.i727, i32* %_secret_cast.i726, align 4
  %_secret_cast.i725 = bitcast i8* %_secret_source_gep532.pre-phi to i32*
  %_secret_ld.i = load i32, i32* %_secret_cast.i725, align 4
  %_secret_ortmp25.i = tail call i32 @llvm.bswap.i32(i32 %_secret_ld.i) #3
  %_secret_cast.i724 = bitcast i8* %_secret_source_gep532.pre-phi to i32*
  store i32 %_secret_ortmp25.i, i32* %_secret_cast.i724, align 4
  %_public_structgep603 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 2
  %_secret_cast.i = bitcast %SHA_CTX* %_public_structgep100 to i8*
  %_secret_cast1.i = bitcast %SHA_CTX* %_public_structgep603 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %_secret_cast.i, i8* %_secret_cast1.i, i32 96, i32 4, i1 false) #3
  call void @_sha1_update(i32* nonnull %_secret_ptr105, i8* nonnull %_secret_sourcecasted, i64 20)
  call void @SHA1_Final(i8* nonnull %_secret_sourcecasted, i32* nonnull %_secret_ptr105)
  %_secret_addtmp614 = add i32 %_secret___v26_inp_len.0, %_public___v16_outp.1
  %_public_addtmp627 = add nuw nsw i32 %_public_terntmp, 20
  %_public_subtmp618 = add i32 %_public____out_len4, -21
  %_public_subtmp620 = sub i32 %_public_subtmp618, %_public_terntmp
  %_secret_addtmp641 = add i32 %_secret_addtmp614, 20
  br label %loop_body622

loop_body622:                                     ; preds = %branchmerge462, %loop_body622
  %_public___v46_j.0700 = phi i32 [ 0, %branchmerge462 ], [ %_public_addtmp694, %loop_body622 ]
  %_secret___v45_i.0699 = phi i32 [ 0, %branchmerge462 ], [ %_secret_select.i, %loop_body622 ]
  %_secret___v18_ret.0698 = phi i32 [ %_secret_select.i798, %branchmerge462 ], [ %_secret_select.i722, %loop_body622 ]
  %_public_addtmp631 = add i32 %_public_subtmp620, %_public___v46_j.0700
  %_public_ = sext i32 %_public_addtmp631 to i64
  %_secret_ptr633 = getelementptr inbounds i8, i8* %_secret_arrarg3, i64 %_public_
  %_secret_lval634 = load i8, i8* %_secret_ptr633, align 1
  %_secret_zexttmp635 = zext i8 %_secret_lval634 to i32
  %_secret_ugtetmp = icmp uge i32 %_public_addtmp631, %_secret_addtmp641
  %_secret_neqtmp = icmp ne i32 %_secret_select.i767, %_secret_zexttmp635
  %_secret_landtmp649 = and i1 %_secret_ugtetmp, %_secret_neqtmp
  %_secret_select.i723 = select i1 %_secret_landtmp649, i32 0, i32 %_secret___v18_ret.0698
  %_secret_lnottmp656 = xor i1 %_secret_ugtetmp, true
  %_secret_ugtetmp661 = icmp uge i32 %_public_addtmp631, %_secret_addtmp614
  %_public_864 = sext i32 %_secret___v45_i.0699 to i64
  %_secret_ptr664 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v33_pmac, i64 0, i64 %_public_864
  %_secret_lval665 = load i8, i8* %_secret_ptr664, align 1
  %_secret_neqtmp666 = icmp ne i8 %_secret_lval634, %_secret_lval665
  %_secret_landtmp670 = and i1 %_secret_ugtetmp661, %_secret_neqtmp666
  %_secret_landtmp674 = and i1 %_secret_landtmp670, %_secret_lnottmp656
  %_secret_select.i722 = select i1 %_secret_landtmp674, i32 0, i32 %_secret_select.i723
  %_secret_landtmp685 = and i1 %_secret_ugtetmp661, %_secret_lnottmp656
  %_secret_addtmp688 = add i32 %_secret___v45_i.0699, 1
  %_secret_select.i = select i1 %_secret_landtmp685, i32 %_secret_addtmp688, i32 %_secret___v45_i.0699
  %_public_addtmp694 = add nuw nsw i32 %_public___v46_j.0700, 1
  %_public_ulttmp628 = icmp ult i32 %_public_addtmp694, %_public_addtmp627
  br i1 %_public_ulttmp628, label %loop_body622, label %thenbranch18
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
