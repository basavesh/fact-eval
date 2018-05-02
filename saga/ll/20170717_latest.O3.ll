; ModuleID = 'Module'
source_filename = "Module"

%SHA_CTX = type { [5 x i32], i32, i32, [64 x i8], i32 }
%EVP_AES_HMAC_SHA1 = type { %AES_KEY, %SHA_CTX, %SHA_CTX, %SHA_CTX, i64, [16 x i8] }
%AES_KEY = type { [60 x i32], i32 }

declare void @aesni_cbc_encrypt(i8*, i8*, i64, i32*, i8*, i32) local_unnamed_addr

declare void @_sha1_update(i32*, i8*, i64) local_unnamed_addr

declare void @SHA1_Final(i8*, i32*) local_unnamed_addr

declare void @sha1_block_data_order(%SHA_CTX*, i8*, i32) local_unnamed_addr

define i32 @_aesni_cbc_hmac_sha1_cipher(i8* %_secret_arrarg1, %EVP_AES_HMAC_SHA1* %key, i8* %_secret_arrarg3, i32 %_public____out_len4, i8* %_secret_arrarg6, i32 %_public____in_len7, i64 %_public_plen8) local_unnamed_addr {
entry:
  %_public_subtmp12 = add i64 %_public_plen8, -4
  %_secret_source_gep15 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 5, i64 %_public_subtmp12
  %_secret_source_gep15.val = load i8, i8* %_secret_source_gep15, align 1
  %_secret_source_gep15.idx = getelementptr i8, i8* %_secret_source_gep15, i64 1
  %_secret_source_gep15.idx.val = load i8, i8* %_secret_source_gep15.idx, align 1
  %_secret_ucast.i = zext i8 %_secret_source_gep15.val to i16
  %_secret_lshift.i = shl nuw i16 %_secret_ucast.i, 8
  %_secret_ucast5.i = zext i8 %_secret_source_gep15.idx.val to i16
  %_secret_ortmp.i = or i16 %_secret_lshift.i, %_secret_ucast5.i
  %_declassified__public_ugtetmp = icmp ugt i16 %_secret_ortmp.i, 769
  br i1 %_declassified__public_ugtetmp, label %thenbranch, label %elsebranch36

thenbranch:                                       ; preds = %entry
  %_public_ulttmp = icmp ult i32 %_public____out_len4, 37
  br i1 %_public_ulttmp, label %thenbranch23, label %branchmerge

thenbranch23:                                     ; preds = %loop_body631, %elsebranch36, %thenbranch
  %_public_merge = phi i32 [ 0, %elsebranch36 ], [ 0, %thenbranch ], [ %_secret_select.i731, %loop_body631 ]
  ret i32 %_public_merge

branchmerge:                                      ; preds = %thenbranch
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %_secret_arrarg1, i8* %_secret_arrarg6, i32 16, i32 1, i1 false) #3
  %_public_subtmp35 = add i32 %_public____out_len4, -16
  br label %branchmerge46

elsebranch36:                                     ; preds = %entry
  %_public_ulttmp40 = icmp ult i32 %_public____out_len4, 21
  br i1 %_public_ulttmp40, label %thenbranch23, label %branchmerge46

branchmerge46:                                    ; preds = %elsebranch36, %branchmerge
  %_public___v15_inp.0 = phi i64 [ 16, %branchmerge ], [ 0, %elsebranch36 ]
  %_public___v16_outp.0 = phi i32 [ 16, %branchmerge ], [ 0, %elsebranch36 ]
  %_public___v17__len.0 = phi i32 [ %_public_subtmp35, %branchmerge ], [ %_public____out_len4, %elsebranch36 ]
  %_secret_source_gep53 = getelementptr inbounds i8, i8* %_secret_arrarg6, i64 %_public___v15_inp.0
  %_public_886 = zext i32 %_public___v16_outp.0 to i64
  %_secret_source_gep62 = getelementptr inbounds i8, i8* %_secret_arrarg3, i64 %_public_886
  %_public_zexttmp = zext i32 %_public___v17__len.0 to i64
  %_secret_arrtoptr = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 0, i32 0, i64 0
  tail call void @aesni_cbc_encrypt(i8* %_secret_source_gep53, i8* %_secret_source_gep62, i64 %_public_zexttmp, i32* %_secret_arrtoptr, i8* %_secret_arrarg1, i32 0)
  %_public_subtmp71 = add i32 %_public____out_len4, -1
  %_public_887 = sext i32 %_public_subtmp71 to i64
  %_secret_ptr = getelementptr inbounds i8, i8* %_secret_arrarg3, i64 %_public_887
  %_secret_lval72 = load i8, i8* %_secret_ptr, align 1
  %_secret_zexttmp = zext i8 %_secret_lval72 to i32
  %_public_subtmp76 = add i32 %_public___v17__len.0, -21
  %_public_888 = icmp ult i32 %_public_subtmp76, 255
  %_public_terntmp = select i1 %_public_888, i32 %_public_subtmp76, i32 255
  %_secret_ugttmp = icmp ult i32 %_public_terntmp, %_secret_zexttmp
  %_secret_select.i806 = select i1 %_secret_ugttmp, i32 %_public_terntmp, i32 %_secret_zexttmp
  %_secret_select.i809 = select i1 %_secret_ugttmp, i32 0, i32 1
  %_secret_subtmp = sub i32 %_public_subtmp76, %_secret_select.i806
  %_public_subtmp104 = add i64 %_public_plen8, -2
  %_secret_source_gep107 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 5, i64 %_public_subtmp104
  %_secret_ucast = trunc i32 %_secret_subtmp to i16
  %_secret_lrshift.i = lshr i16 %_secret_ucast, 8
  %_secret_ucast.i849 = trunc i16 %_secret_lrshift.i to i8
  store i8 %_secret_ucast.i849, i8* %_secret_source_gep107, align 1
  %_secret_ptr4.i = getelementptr inbounds i8, i8* %_secret_source_gep107, i64 1
  %_secret_ucast6.i = trunc i16 %_secret_ucast to i8
  store i8 %_secret_ucast6.i, i8* %_secret_ptr4.i, align 1
  %_public_structgep110 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 3
  %_public_structgep111 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 1
  %_secret_cast.i853 = bitcast %SHA_CTX* %_public_structgep110 to i8*
  %_secret_cast1.i854 = bitcast %SHA_CTX* %_public_structgep111 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %_secret_cast.i853, i8* %_secret_cast1.i854, i32 96, i32 4, i1 false) #3
  %_secret_ptr115 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 3, i32 0, i64 0
  %_secret_source_gep121 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 5, i64 0
  tail call void @_sha1_update(i32* nonnull %_secret_ptr115, i8* nonnull %_secret_source_gep121, i64 %_public_plen8)
  %_public_subtmp126 = add i32 %_public___v17__len.0, -20
  %_public_ugtetmp = icmp ugt i32 %_public_subtmp126, 319
  br i1 %_public_ugtetmp, label %thenbranch131, label %branchmerge46.branchmerge169_crit_edge

branchmerge46.branchmerge169_crit_edge:           ; preds = %branchmerge46
  %_public_.pre = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 3, i32 4
  br label %branchmerge169

thenbranch131:                                    ; preds = %branchmerge46
  %_public_andtmp706 = add i32 %_public___v17__len.0, -276
  %_public_addtmp139 = and i32 %_public_andtmp706, -64
  %_public_structgep141 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 3, i32 4
  %_public_lval142 = load i32, i32* %_public_structgep141, align 4
  %_public_subtmp143 = sub i32 %_public_addtmp139, %_public_lval142
  %_public_zexttmp158 = zext i32 %_public_subtmp143 to i64
  tail call void @_sha1_update(i32* nonnull %_secret_ptr115, i8* %_secret_source_gep62, i64 %_public_zexttmp158)
  %_public_addtmp161 = add i32 %_public_subtmp143, %_public___v16_outp.0
  %_public_subtmp164 = sub i32 %_public_subtmp126, %_public_subtmp143
  %_secret_subtmp167 = sub i32 %_secret_subtmp, %_public_subtmp143
  br label %branchmerge169

branchmerge169:                                   ; preds = %branchmerge46.branchmerge169_crit_edge, %thenbranch131
  %_public_structgep176.pre-phi = phi i32* [ %_public_.pre, %branchmerge46.branchmerge169_crit_edge ], [ %_public_structgep141, %thenbranch131 ]
  %_public___v16_outp.1 = phi i32 [ %_public___v16_outp.0, %branchmerge46.branchmerge169_crit_edge ], [ %_public_addtmp161, %thenbranch131 ]
  %_public___v17__len.1 = phi i32 [ %_public_subtmp126, %branchmerge46.branchmerge169_crit_edge ], [ %_public_subtmp164, %thenbranch131 ]
  %_secret___v27_inp_len.0 = phi i32 [ %_secret_subtmp, %branchmerge46.branchmerge169_crit_edge ], [ %_secret_subtmp167, %thenbranch131 ]
  %_secret_structgep171 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 3, i32 1
  %_secret_lval172 = load i32, i32* %_secret_structgep171, align 4
  %_secret_lshift = shl i32 %_secret___v27_inp_len.0, 3
  %_secret_addtmp174 = add i32 %_secret_lval172, %_secret_lshift
  %_secret_ortmp25.i865 = tail call i32 @llvm.bswap.i32(i32 %_secret_addtmp174) #3
  %_secret___v34_pmac = alloca [20 x i8], align 32
  %_secret_sourcecasted = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* nonnull %_secret_sourcecasted, i8 0, i64 20, i32 32, i1 false)
  %_public_lval177 = load i32, i32* %_public_structgep176.pre-phi, align 4
  %_public_ulttmp180713 = icmp eq i32 %_public___v17__len.1, 0
  br i1 %_public_ulttmp180713, label %loop_end, label %loop_body.lr.ph

loop_body.lr.ph:                                  ; preds = %branchmerge169
  %_secret_addtmp240 = add i32 %_secret___v27_inp_len.0, 7
  %_secret_source_gep256 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 3, i32 3, i64 60
  %_secret_arrtoptr265 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 3, i32 3, i64 0
  %_secret_addtmp274 = add i32 %_secret___v27_inp_len.0, 72
  %_secret_source_gep301 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i64 0, i64 4
  %_secret_ptr305 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 3, i32 0, i64 1
  %_secret_source_gep311 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i64 0, i64 8
  %_secret_ptr315 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 3, i32 0, i64 2
  %_secret_source_gep321 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i64 0, i64 12
  %_secret_ptr325 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 3, i32 0, i64 3
  %_secret_source_gep331 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i64 0, i64 16
  %_secret_ptr335 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 3, i32 0, i64 4
  br label %loop_body

loop_body:                                        ; preds = %loop_body.lr.ph, %branchmerge339
  %_public___v36_j.0715 = phi i32 [ 0, %loop_body.lr.ph ], [ %_public_addtmp341, %branchmerge339 ]
  %_public___v35_p_res.0714 = phi i32 [ %_public_lval177, %loop_body.lr.ph ], [ %_public___v35_p_res.1, %branchmerge339 ]
  %_public_884 = sext i32 %_public___v35_p_res.0714 to i64
  %_secret_ptr184 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 3, i32 3, i64 %_public_884
  %_secret_ulttmp = icmp ult i32 %_public___v36_j.0715, %_secret___v27_inp_len.0
  %_public_addtmp194 = add i32 %_public___v36_j.0715, %_public___v16_outp.1
  %_public_885 = sext i32 %_public_addtmp194 to i64
  %_secret_ptr196 = getelementptr inbounds i8, i8* %_secret_arrarg3, i64 %_public_885
  %_secret_lval197 = load i8, i8* %_secret_ptr196, align 1
  %_secret_zext.i869 = zext i8 %_secret_lval197 to i32
  %_secret_asm.i870 = tail call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %_secret_ulttmp, i32 %_secret_zext.i869, i32 0) #3
  %_secret_trunc.i871 = trunc i32 %_secret_asm.i870 to i8
  %_secret_lnottmp201 = xor i1 %_secret_ulttmp, true
  %_secret_eqtmp = icmp eq i32 %_public___v36_j.0715, %_secret___v27_inp_len.0
  %_secret_asm.i872 = tail call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %_secret_eqtmp, i32 128, i32 0) #3
  %_secret_trunc.i873 = trunc i32 %_secret_asm.i872 to i16
  %_secret_landtmp223 = xor i1 %_secret_eqtmp, %_secret_lnottmp201
  %_secret_zext1.i866 = zext i16 %_secret_trunc.i873 to i32
  %_secret_asm.i867 = tail call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %_secret_landtmp223, i32 0, i32 %_secret_zext1.i866) #3
  %_secret_trunc.i868 = trunc i32 %_secret_asm.i867 to i16
  %_secret_trunctmp = trunc i16 %_secret_trunc.i868 to i8
  %_secret_zext.i861 = zext i8 %_secret_trunctmp to i32
  %_secret_zext1.i862 = zext i8 %_secret_trunc.i871 to i32
  %_secret_asm.i863 = tail call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %_secret_lnottmp201, i32 %_secret_zext.i861, i32 %_secret_zext1.i862) #3
  %_secret_trunc.i864 = trunc i32 %_secret_asm.i863 to i8
  store i8 %_secret_trunc.i864, i8* %_secret_ptr184, align 1
  %_public_addtmp234 = add i32 %_public___v35_p_res.0714, 1
  %_public_eqtmp = icmp eq i32 %_public_addtmp234, 64
  br i1 %_public_eqtmp, label %thenbranch238, label %branchmerge339

loop_end:                                         ; preds = %branchmerge339, %branchmerge169
  %_public___v35_p_res.0.lcssa = phi i32 [ %_public_lval177, %branchmerge169 ], [ %_public___v35_p_res.1, %branchmerge339 ]
  %_public_ulttmp349710 = icmp ult i32 %_public___v35_p_res.0.lcssa, 64
  br i1 %_public_ulttmp349710, label %loop_end345, label %thenbranch363

thenbranch238:                                    ; preds = %loop_body
  %_secret_ulttmp242 = icmp ult i32 %_secret_addtmp240, %_public___v36_j.0715
  %_secret_cast.i.i855 = bitcast i8* %_secret_source_gep256 to i32*
  %_secret_ld.i.i856 = load i32, i32* %_secret_cast.i.i855, align 4
  %_secret_select.i22.i857 = select i1 %_secret_ulttmp242, i32 %_secret_ortmp25.i865, i32 0
  %_secret_lnottmp.i858 = xor i1 %_secret_ulttmp242, true
  %_secret_select.i.i859 = select i1 %_secret_lnottmp.i858, i32 %_secret_ld.i.i856, i32 %_secret_select.i22.i857
  %_secret_cast.i21.i860 = bitcast i8* %_secret_source_gep256 to i32*
  store i32 %_secret_select.i.i859, i32* %_secret_cast.i21.i860, align 4
  tail call void @sha1_block_data_order(%SHA_CTX* nonnull %_public_structgep110, i8* nonnull %_secret_arrtoptr265, i32 1)
  %_secret_ulttmp275 = icmp ult i32 %_public___v36_j.0715, %_secret_addtmp274
  %_secret_zext.i850 = zext i1 %_secret_ulttmp275 to i32
  %_secret_asm.i851 = tail call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %_secret_ulttmp242, i32 %_secret_zext.i850, i32 0) #3
  %_secret_882 = and i32 %_secret_asm.i851, 1
  %_secret_trunc.i852 = icmp ne i32 %_secret_882, 0
  %_secret_lnottmp279 = xor i1 %_secret_ulttmp242, true
  %_secret_zext1.i846 = zext i1 %_secret_trunc.i852 to i32
  %_secret_asm.i847 = tail call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %_secret_lnottmp279, i32 0, i32 %_secret_zext1.i846) #3
  %_secret_883 = and i32 %_secret_asm.i847, 1
  %_secret_trunc.i848 = icmp ne i32 %_secret_883, 0
  %_secret_lval296 = load i32, i32* %_secret_ptr115, align 4
  %_secret_cast.i.i840 = bitcast i8* %_secret_sourcecasted to i32*
  %_secret_ld.i.i841 = load i32, i32* %_secret_cast.i.i840, align 4
  %_secret_select.i22.i842 = select i1 %_secret_trunc.i848, i32 %_secret_lval296, i32 0
  %_secret_lnottmp.i843 = xor i1 %_secret_trunc.i848, true
  %_secret_select.i.i844 = select i1 %_secret_lnottmp.i843, i32 %_secret_ld.i.i841, i32 %_secret_select.i22.i842
  %_secret_cast.i21.i845 = bitcast i8* %_secret_sourcecasted to i32*
  store i32 %_secret_select.i.i844, i32* %_secret_cast.i21.i845, align 4
  %_secret_lval306 = load i32, i32* %_secret_ptr305, align 4
  %_secret_cast.i.i834 = bitcast i8* %_secret_source_gep301 to i32*
  %_secret_ld.i.i835 = load i32, i32* %_secret_cast.i.i834, align 4
  %_secret_select.i22.i836 = select i1 %_secret_trunc.i848, i32 %_secret_lval306, i32 0
  %_secret_lnottmp.i837 = xor i1 %_secret_trunc.i848, true
  %_secret_select.i.i838 = select i1 %_secret_lnottmp.i837, i32 %_secret_ld.i.i835, i32 %_secret_select.i22.i836
  %_secret_cast.i21.i839 = bitcast i8* %_secret_source_gep301 to i32*
  store i32 %_secret_select.i.i838, i32* %_secret_cast.i21.i839, align 4
  %_secret_lval316 = load i32, i32* %_secret_ptr315, align 4
  %_secret_cast.i.i828 = bitcast i8* %_secret_source_gep311 to i32*
  %_secret_ld.i.i829 = load i32, i32* %_secret_cast.i.i828, align 4
  %_secret_select.i22.i830 = select i1 %_secret_trunc.i848, i32 %_secret_lval316, i32 0
  %_secret_lnottmp.i831 = xor i1 %_secret_trunc.i848, true
  %_secret_select.i.i832 = select i1 %_secret_lnottmp.i831, i32 %_secret_ld.i.i829, i32 %_secret_select.i22.i830
  %_secret_cast.i21.i833 = bitcast i8* %_secret_source_gep311 to i32*
  store i32 %_secret_select.i.i832, i32* %_secret_cast.i21.i833, align 4
  %_secret_lval326 = load i32, i32* %_secret_ptr325, align 4
  %_secret_cast.i.i822 = bitcast i8* %_secret_source_gep321 to i32*
  %_secret_ld.i.i823 = load i32, i32* %_secret_cast.i.i822, align 4
  %_secret_select.i22.i824 = select i1 %_secret_trunc.i848, i32 %_secret_lval326, i32 0
  %_secret_lnottmp.i825 = xor i1 %_secret_trunc.i848, true
  %_secret_select.i.i826 = select i1 %_secret_lnottmp.i825, i32 %_secret_ld.i.i823, i32 %_secret_select.i22.i824
  %_secret_cast.i21.i827 = bitcast i8* %_secret_source_gep321 to i32*
  store i32 %_secret_select.i.i826, i32* %_secret_cast.i21.i827, align 4
  %_secret_lval336 = load i32, i32* %_secret_ptr335, align 4
  %_secret_cast.i.i816 = bitcast i8* %_secret_source_gep331 to i32*
  %_secret_ld.i.i817 = load i32, i32* %_secret_cast.i.i816, align 4
  %_secret_select.i22.i818 = select i1 %_secret_trunc.i848, i32 %_secret_lval336, i32 0
  %_secret_lnottmp.i819 = xor i1 %_secret_trunc.i848, true
  %_secret_select.i.i820 = select i1 %_secret_lnottmp.i819, i32 %_secret_ld.i.i817, i32 %_secret_select.i22.i818
  %_secret_cast.i21.i821 = bitcast i8* %_secret_source_gep331 to i32*
  store i32 %_secret_select.i.i820, i32* %_secret_cast.i21.i821, align 4
  br label %branchmerge339

branchmerge339:                                   ; preds = %loop_body, %thenbranch238
  %_public___v35_p_res.1 = phi i32 [ 0, %thenbranch238 ], [ %_public_addtmp234, %loop_body ]
  %_public_addtmp341 = add nuw i32 %_public___v36_j.0715, 1
  %_public_ulttmp180 = icmp ult i32 %_public_addtmp341, %_public___v17__len.1
  br i1 %_public_ulttmp180, label %loop_body, label %loop_end

loop_end345:                                      ; preds = %loop_end
  %_public_876 = add i32 %_public___v17__len.1, 64
  %_public_scevgep = getelementptr %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 0, i32 0, i64 116
  %_public_scevgep717 = bitcast i32* %_public_scevgep to i8*
  %_public_877 = sext i32 %_public___v35_p_res.0.lcssa to i64
  %_public_uglygep = getelementptr i8, i8* %_public_scevgep717, i64 %_public_877
  %_public_878 = sub i32 63, %_public___v35_p_res.0.lcssa
  %_public_879 = zext i32 %_public_878 to i64
  %_public_880 = add nuw nsw i64 %_public_879, 1
  call void @llvm.memset.p0i8.i64(i8* %_public_uglygep, i8 0, i64 %_public_880, i32 1, i1 false)
  %_public_881 = sub i32 %_public_876, %_public___v35_p_res.0.lcssa
  %_public_ugttmp361 = icmp ugt i32 %_public___v35_p_res.0.lcssa, 56
  br i1 %_public_ugttmp361, label %thenbranch363, label %loop_end345.branchmerge471_crit_edge

loop_end345.branchmerge471_crit_edge:             ; preds = %loop_end345
  %_public_.pre718 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 3, i32 3, i64 60
  %_public_.pre719 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 3, i32 3, i64 0
  %_public_.pre720 = add i32 %_secret___v27_inp_len.0, 73
  %_secret_.pre721 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i64 0, i64 4
  %_public_.pre722 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 3, i32 0, i64 1
  %_secret_.pre723 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i64 0, i64 8
  %_public_.pre724 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 3, i32 0, i64 2
  %_secret_.pre725 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i64 0, i64 12
  %_public_.pre726 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 3, i32 0, i64 3
  %_secret_.pre727 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i64 0, i64 16
  %_public_.pre728 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 3, i32 0, i64 4
  br label %branchmerge471

thenbranch363:                                    ; preds = %loop_end, %loop_end345
  %_public___v39_j.0.lcssa730 = phi i32 [ %_public_881, %loop_end345 ], [ %_public___v17__len.1, %loop_end ]
  %_secret_addtmp365 = add i32 %_secret___v27_inp_len.0, 8
  %_secret_ulttmp367 = icmp ult i32 %_secret_addtmp365, %_public___v39_j.0.lcssa730
  %_secret_source_gep381 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 3, i32 3, i64 60
  %_secret_cast.i.i810 = bitcast i8* %_secret_source_gep381 to i32*
  %_secret_ld.i.i811 = load i32, i32* %_secret_cast.i.i810, align 4
  %_secret_select.i22.i812 = select i1 %_secret_ulttmp367, i32 %_secret_ortmp25.i865, i32 0
  %_secret_lnottmp.i813 = xor i1 %_secret_ulttmp367, true
  %_secret_select.i.i814 = select i1 %_secret_lnottmp.i813, i32 %_secret_ld.i.i811, i32 %_secret_select.i22.i812
  %_secret_cast.i21.i815 = bitcast i8* %_secret_source_gep381 to i32*
  store i32 %_secret_select.i.i814, i32* %_secret_cast.i21.i815, align 4
  %_secret_arrtoptr390 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 3, i32 3, i64 0
  tail call void @sha1_block_data_order(%SHA_CTX* nonnull %_public_structgep110, i8* nonnull %_secret_arrtoptr390, i32 1)
  %_secret_addtmp399 = add i32 %_secret___v27_inp_len.0, 73
  %_secret_ulttmp400 = icmp ult i32 %_public___v39_j.0.lcssa730, %_secret_addtmp399
  %_secret_zext.i = zext i1 %_secret_ulttmp400 to i32
  %_secret_asm.i807 = tail call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %_secret_ulttmp367, i32 %_secret_zext.i, i32 0) #3
  %_secret_ = and i32 %_secret_asm.i807, 1
  %_secret_trunc.i808 = icmp ne i32 %_secret_, 0
  %_secret_lnottmp404 = xor i1 %_secret_ulttmp367, true
  %_secret_zext1.i = zext i1 %_secret_trunc.i808 to i32
  %_secret_asm.i = tail call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %_secret_lnottmp404, i32 0, i32 %_secret_zext1.i) #3
  %_secret_875 = and i32 %_secret_asm.i, 1
  %_secret_trunc.i = icmp ne i32 %_secret_875, 0
  %_secret_lval421 = load i32, i32* %_secret_ptr115, align 4
  %_secret_cast.i.i800 = bitcast i8* %_secret_sourcecasted to i32*
  %_secret_ld.i.i801 = load i32, i32* %_secret_cast.i.i800, align 4
  %_secret_select.i22.i802 = select i1 %_secret_trunc.i, i32 %_secret_lval421, i32 0
  %_secret_lnottmp.i803 = xor i1 %_secret_trunc.i, true
  %_secret_select.i.i804 = select i1 %_secret_lnottmp.i803, i32 %_secret_ld.i.i801, i32 %_secret_select.i22.i802
  %_secret_cast.i21.i805 = bitcast i8* %_secret_sourcecasted to i32*
  store i32 %_secret_select.i.i804, i32* %_secret_cast.i21.i805, align 4
  %_secret_source_gep426 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i64 0, i64 4
  %_secret_ptr430 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 3, i32 0, i64 1
  %_secret_lval431 = load i32, i32* %_secret_ptr430, align 4
  %_secret_cast.i.i794 = bitcast i8* %_secret_source_gep426 to i32*
  %_secret_ld.i.i795 = load i32, i32* %_secret_cast.i.i794, align 4
  %_secret_select.i22.i796 = select i1 %_secret_trunc.i, i32 %_secret_lval431, i32 0
  %_secret_lnottmp.i797 = xor i1 %_secret_trunc.i, true
  %_secret_select.i.i798 = select i1 %_secret_lnottmp.i797, i32 %_secret_ld.i.i795, i32 %_secret_select.i22.i796
  %_secret_cast.i21.i799 = bitcast i8* %_secret_source_gep426 to i32*
  store i32 %_secret_select.i.i798, i32* %_secret_cast.i21.i799, align 4
  %_secret_source_gep436 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i64 0, i64 8
  %_secret_ptr440 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 3, i32 0, i64 2
  %_secret_lval441 = load i32, i32* %_secret_ptr440, align 4
  %_secret_cast.i.i788 = bitcast i8* %_secret_source_gep436 to i32*
  %_secret_ld.i.i789 = load i32, i32* %_secret_cast.i.i788, align 4
  %_secret_select.i22.i790 = select i1 %_secret_trunc.i, i32 %_secret_lval441, i32 0
  %_secret_lnottmp.i791 = xor i1 %_secret_trunc.i, true
  %_secret_select.i.i792 = select i1 %_secret_lnottmp.i791, i32 %_secret_ld.i.i789, i32 %_secret_select.i22.i790
  %_secret_cast.i21.i793 = bitcast i8* %_secret_source_gep436 to i32*
  store i32 %_secret_select.i.i792, i32* %_secret_cast.i21.i793, align 4
  %_secret_source_gep446 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i64 0, i64 12
  %_secret_ptr450 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 3, i32 0, i64 3
  %_secret_lval451 = load i32, i32* %_secret_ptr450, align 4
  %_secret_cast.i.i782 = bitcast i8* %_secret_source_gep446 to i32*
  %_secret_ld.i.i783 = load i32, i32* %_secret_cast.i.i782, align 4
  %_secret_select.i22.i784 = select i1 %_secret_trunc.i, i32 %_secret_lval451, i32 0
  %_secret_lnottmp.i785 = xor i1 %_secret_trunc.i, true
  %_secret_select.i.i786 = select i1 %_secret_lnottmp.i785, i32 %_secret_ld.i.i783, i32 %_secret_select.i22.i784
  %_secret_cast.i21.i787 = bitcast i8* %_secret_source_gep446 to i32*
  store i32 %_secret_select.i.i786, i32* %_secret_cast.i21.i787, align 4
  %_secret_source_gep456 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i64 0, i64 16
  %_secret_ptr460 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 3, i32 0, i64 4
  %_secret_lval461 = load i32, i32* %_secret_ptr460, align 4
  %_secret_cast.i.i776 = bitcast i8* %_secret_source_gep456 to i32*
  %_secret_ld.i.i777 = load i32, i32* %_secret_cast.i.i776, align 4
  %_secret_select.i22.i778 = select i1 %_secret_trunc.i, i32 %_secret_lval461, i32 0
  %_secret_lnottmp.i779 = xor i1 %_secret_trunc.i, true
  %_secret_select.i.i780 = select i1 %_secret_lnottmp.i779, i32 %_secret_ld.i.i777, i32 %_secret_select.i22.i778
  %_secret_cast.i21.i781 = bitcast i8* %_secret_source_gep456 to i32*
  store i32 %_secret_select.i.i780, i32* %_secret_cast.i21.i781, align 4
  tail call fastcc void @_memzero(i8* nonnull %_secret_arrtoptr390)
  %_public_addtmp469 = add i32 %_public___v39_j.0.lcssa730, 64
  br label %branchmerge471

branchmerge471:                                   ; preds = %loop_end345.branchmerge471_crit_edge, %thenbranch363
  %_secret_ptr545.pre-phi = phi i32* [ %_public_.pre728, %loop_end345.branchmerge471_crit_edge ], [ %_secret_ptr460, %thenbranch363 ]
  %_secret_source_gep541.pre-phi = phi i8* [ %_secret_.pre727, %loop_end345.branchmerge471_crit_edge ], [ %_secret_source_gep456, %thenbranch363 ]
  %_secret_ptr535.pre-phi = phi i32* [ %_public_.pre726, %loop_end345.branchmerge471_crit_edge ], [ %_secret_ptr450, %thenbranch363 ]
  %_secret_source_gep531.pre-phi = phi i8* [ %_secret_.pre725, %loop_end345.branchmerge471_crit_edge ], [ %_secret_source_gep446, %thenbranch363 ]
  %_secret_ptr525.pre-phi = phi i32* [ %_public_.pre724, %loop_end345.branchmerge471_crit_edge ], [ %_secret_ptr440, %thenbranch363 ]
  %_secret_source_gep521.pre-phi = phi i8* [ %_secret_.pre723, %loop_end345.branchmerge471_crit_edge ], [ %_secret_source_gep436, %thenbranch363 ]
  %_secret_ptr515.pre-phi = phi i32* [ %_public_.pre722, %loop_end345.branchmerge471_crit_edge ], [ %_secret_ptr430, %thenbranch363 ]
  %_secret_source_gep511.pre-phi = phi i8* [ %_secret_.pre721, %loop_end345.branchmerge471_crit_edge ], [ %_secret_source_gep426, %thenbranch363 ]
  %_secret_addtmp496.pre-phi = phi i32 [ %_public_.pre720, %loop_end345.branchmerge471_crit_edge ], [ %_secret_addtmp399, %thenbranch363 ]
  %_secret_arrtoptr493.pre-phi = phi i8* [ %_public_.pre719, %loop_end345.branchmerge471_crit_edge ], [ %_secret_arrtoptr390, %thenbranch363 ]
  %_secret_source_gep485.pre-phi = phi i8* [ %_public_.pre718, %loop_end345.branchmerge471_crit_edge ], [ %_secret_source_gep381, %thenbranch363 ]
  %_public___v39_j.1 = phi i32 [ %_public_881, %loop_end345.branchmerge471_crit_edge ], [ %_public_addtmp469, %thenbranch363 ]
  %_secret_cast.i775 = bitcast i8* %_secret_source_gep485.pre-phi to i32*
  store i32 %_secret_ortmp25.i865, i32* %_secret_cast.i775, align 4
  tail call void @sha1_block_data_order(%SHA_CTX* nonnull %_public_structgep110, i8* nonnull %_secret_arrtoptr493.pre-phi, i32 1)
  %_secret_ulttmp497 = icmp ult i32 %_public___v39_j.1, %_secret_addtmp496.pre-phi
  %_secret_lval506 = load i32, i32* %_secret_ptr115, align 4
  %_secret_cast.i.i769 = bitcast i8* %_secret_sourcecasted to i32*
  %_secret_ld.i.i770 = load i32, i32* %_secret_cast.i.i769, align 4
  %_secret_select.i22.i771 = select i1 %_secret_ulttmp497, i32 %_secret_lval506, i32 0
  %_secret_lnottmp.i772 = xor i1 %_secret_ulttmp497, true
  %_secret_select.i.i773 = select i1 %_secret_lnottmp.i772, i32 %_secret_ld.i.i770, i32 %_secret_select.i22.i771
  %_secret_cast.i21.i774 = bitcast i8* %_secret_sourcecasted to i32*
  store i32 %_secret_select.i.i773, i32* %_secret_cast.i21.i774, align 4
  %_secret_lval516 = load i32, i32* %_secret_ptr515.pre-phi, align 4
  %_secret_cast.i.i763 = bitcast i8* %_secret_source_gep511.pre-phi to i32*
  %_secret_ld.i.i764 = load i32, i32* %_secret_cast.i.i763, align 4
  %_secret_select.i22.i765 = select i1 %_secret_ulttmp497, i32 %_secret_lval516, i32 0
  %_secret_lnottmp.i766 = xor i1 %_secret_ulttmp497, true
  %_secret_select.i.i767 = select i1 %_secret_lnottmp.i766, i32 %_secret_ld.i.i764, i32 %_secret_select.i22.i765
  %_secret_cast.i21.i768 = bitcast i8* %_secret_source_gep511.pre-phi to i32*
  store i32 %_secret_select.i.i767, i32* %_secret_cast.i21.i768, align 4
  %_secret_lval526 = load i32, i32* %_secret_ptr525.pre-phi, align 4
  %_secret_cast.i.i757 = bitcast i8* %_secret_source_gep521.pre-phi to i32*
  %_secret_ld.i.i758 = load i32, i32* %_secret_cast.i.i757, align 4
  %_secret_select.i22.i759 = select i1 %_secret_ulttmp497, i32 %_secret_lval526, i32 0
  %_secret_lnottmp.i760 = xor i1 %_secret_ulttmp497, true
  %_secret_select.i.i761 = select i1 %_secret_lnottmp.i760, i32 %_secret_ld.i.i758, i32 %_secret_select.i22.i759
  %_secret_cast.i21.i762 = bitcast i8* %_secret_source_gep521.pre-phi to i32*
  store i32 %_secret_select.i.i761, i32* %_secret_cast.i21.i762, align 4
  %_secret_lval536 = load i32, i32* %_secret_ptr535.pre-phi, align 4
  %_secret_cast.i.i751 = bitcast i8* %_secret_source_gep531.pre-phi to i32*
  %_secret_ld.i.i752 = load i32, i32* %_secret_cast.i.i751, align 4
  %_secret_select.i22.i753 = select i1 %_secret_ulttmp497, i32 %_secret_lval536, i32 0
  %_secret_lnottmp.i754 = xor i1 %_secret_ulttmp497, true
  %_secret_select.i.i755 = select i1 %_secret_lnottmp.i754, i32 %_secret_ld.i.i752, i32 %_secret_select.i22.i753
  %_secret_cast.i21.i756 = bitcast i8* %_secret_source_gep531.pre-phi to i32*
  store i32 %_secret_select.i.i755, i32* %_secret_cast.i21.i756, align 4
  %_secret_lval546 = load i32, i32* %_secret_ptr545.pre-phi, align 4
  %_secret_cast.i.i = bitcast i8* %_secret_source_gep541.pre-phi to i32*
  %_secret_ld.i.i = load i32, i32* %_secret_cast.i.i, align 4
  %_secret_select.i22.i = select i1 %_secret_ulttmp497, i32 %_secret_lval546, i32 0
  %_secret_lnottmp.i = xor i1 %_secret_ulttmp497, true
  %_secret_select.i.i = select i1 %_secret_lnottmp.i, i32 %_secret_ld.i.i, i32 %_secret_select.i22.i
  %_secret_cast.i21.i = bitcast i8* %_secret_source_gep541.pre-phi to i32*
  store i32 %_secret_select.i.i, i32* %_secret_cast.i21.i, align 4
  %_secret_cast.i749 = bitcast i8* %_secret_sourcecasted to i32*
  %_secret_ld.i750 = load i32, i32* %_secret_cast.i749, align 4
  %_secret_ortmp25.i748 = tail call i32 @llvm.bswap.i32(i32 %_secret_ld.i750) #3
  %_secret_cast.i747 = bitcast i8* %_secret_sourcecasted to i32*
  store i32 %_secret_ortmp25.i748, i32* %_secret_cast.i747, align 4
  %_secret_cast.i745 = bitcast i8* %_secret_source_gep511.pre-phi to i32*
  %_secret_ld.i746 = load i32, i32* %_secret_cast.i745, align 4
  %_secret_ortmp25.i744 = tail call i32 @llvm.bswap.i32(i32 %_secret_ld.i746) #3
  %_secret_cast.i743 = bitcast i8* %_secret_source_gep511.pre-phi to i32*
  store i32 %_secret_ortmp25.i744, i32* %_secret_cast.i743, align 4
  %_secret_cast.i741 = bitcast i8* %_secret_source_gep521.pre-phi to i32*
  %_secret_ld.i742 = load i32, i32* %_secret_cast.i741, align 4
  %_secret_ortmp25.i740 = tail call i32 @llvm.bswap.i32(i32 %_secret_ld.i742) #3
  %_secret_cast.i739 = bitcast i8* %_secret_source_gep521.pre-phi to i32*
  store i32 %_secret_ortmp25.i740, i32* %_secret_cast.i739, align 4
  %_secret_cast.i737 = bitcast i8* %_secret_source_gep531.pre-phi to i32*
  %_secret_ld.i738 = load i32, i32* %_secret_cast.i737, align 4
  %_secret_ortmp25.i736 = tail call i32 @llvm.bswap.i32(i32 %_secret_ld.i738) #3
  %_secret_cast.i735 = bitcast i8* %_secret_source_gep531.pre-phi to i32*
  store i32 %_secret_ortmp25.i736, i32* %_secret_cast.i735, align 4
  %_secret_cast.i734 = bitcast i8* %_secret_source_gep541.pre-phi to i32*
  %_secret_ld.i = load i32, i32* %_secret_cast.i734, align 4
  %_secret_ortmp25.i = tail call i32 @llvm.bswap.i32(i32 %_secret_ld.i) #3
  %_secret_cast.i733 = bitcast i8* %_secret_source_gep541.pre-phi to i32*
  store i32 %_secret_ortmp25.i, i32* %_secret_cast.i733, align 4
  %_public_structgep612 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %key, i64 0, i32 2
  %_secret_cast.i = bitcast %SHA_CTX* %_public_structgep110 to i8*
  %_secret_cast1.i = bitcast %SHA_CTX* %_public_structgep612 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %_secret_cast.i, i8* %_secret_cast1.i, i32 96, i32 4, i1 false) #3
  call void @_sha1_update(i32* nonnull %_secret_ptr115, i8* nonnull %_secret_sourcecasted, i64 20)
  call void @SHA1_Final(i8* nonnull %_secret_sourcecasted, i32* nonnull %_secret_ptr115)
  %_secret_addtmp623 = add i32 %_secret___v27_inp_len.0, %_public___v16_outp.1
  %_public_addtmp636 = add nuw nsw i32 %_public_terntmp, 20
  %_public_subtmp627 = add i32 %_public____out_len4, -21
  %_public_subtmp629 = sub i32 %_public_subtmp627, %_public_terntmp
  %_secret_addtmp650 = add i32 %_secret_addtmp623, 20
  br label %loop_body631

loop_body631:                                     ; preds = %branchmerge471, %loop_body631
  %_public___v47_j.0709 = phi i32 [ 0, %branchmerge471 ], [ %_public_addtmp703, %loop_body631 ]
  %_secret___v46_i.0708 = phi i32 [ 0, %branchmerge471 ], [ %_secret_select.i, %loop_body631 ]
  %_secret___v18_ret.0707 = phi i32 [ %_secret_select.i809, %branchmerge471 ], [ %_secret_select.i731, %loop_body631 ]
  %_public_addtmp640 = add i32 %_public_subtmp629, %_public___v47_j.0709
  %_public_ = sext i32 %_public_addtmp640 to i64
  %_secret_ptr642 = getelementptr inbounds i8, i8* %_secret_arrarg3, i64 %_public_
  %_secret_lval643 = load i8, i8* %_secret_ptr642, align 1
  %_secret_zexttmp644 = zext i8 %_secret_lval643 to i32
  %_secret_ugtetmp = icmp uge i32 %_public_addtmp640, %_secret_addtmp650
  %_secret_neqtmp = icmp ne i32 %_secret_select.i806, %_secret_zexttmp644
  %_secret_landtmp658 = and i1 %_secret_ugtetmp, %_secret_neqtmp
  %_secret_select.i732 = select i1 %_secret_landtmp658, i32 0, i32 %_secret___v18_ret.0707
  %_secret_lnottmp665 = xor i1 %_secret_ugtetmp, true
  %_secret_ugtetmp670 = icmp uge i32 %_public_addtmp640, %_secret_addtmp623
  %_public_874 = sext i32 %_secret___v46_i.0708 to i64
  %_secret_ptr673 = getelementptr inbounds [20 x i8], [20 x i8]* %_secret___v34_pmac, i64 0, i64 %_public_874
  %_secret_lval674 = load i8, i8* %_secret_ptr673, align 1
  %_secret_neqtmp675 = icmp ne i8 %_secret_lval643, %_secret_lval674
  %_secret_landtmp679 = and i1 %_secret_ugtetmp670, %_secret_neqtmp675
  %_secret_landtmp683 = and i1 %_secret_landtmp679, %_secret_lnottmp665
  %_secret_select.i731 = select i1 %_secret_landtmp683, i32 0, i32 %_secret_select.i732
  %_secret_landtmp694 = and i1 %_secret_ugtetmp670, %_secret_lnottmp665
  %_secret_addtmp697 = add i32 %_secret___v46_i.0708, 1
  %_secret_select.i = select i1 %_secret_landtmp694, i32 %_secret_addtmp697, i32 %_secret___v46_i.0708
  %_public_addtmp703 = add nuw nsw i32 %_public___v47_j.0709, 1
  %_public_ulttmp637 = icmp ult i32 %_public_addtmp703, %_public_addtmp636
  br i1 %_public_ulttmp637, label %loop_body631, label %thenbranch23
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
