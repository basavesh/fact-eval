; ModuleID = 'Module'
source_filename = "Module"

declare void @_md_transform(i32, i8*, i8*) local_unnamed_addr

declare void @_md_final_raw(i32, i8*, i8*) local_unnamed_addr

define i32 @__ssl3_cbc_digest_record(i8* %_secret_arrarg1, i8* nocapture %_secret_arrarg3, i8* %_secret_arrarg5, i64 %_public_md_size6, i64 %_public_md_block_size7, i64 %_public_log_md_block_size8, i64 %_public_sslv3_pad_length9, i64 %_public_md_length_size10, i1 %_public_length_is_big_endian11, i32 %_public_sha_type12, i8* %_secret_arrarg14, i8* %_secret_arrarg16, i32 %_public___data_len17, i64 %_secret_data_plus_mac_size18, i8* nocapture readonly %_secret_arrarg20, i32 %_public___mac_secret_len21, i1 %_public_is_sslv322) local_unnamed_addr {
entry:
  %_public_lhssext = zext i32 %_public___mac_secret_len21 to i64
  %_public_addtmp = add i64 %_public_sslv3_pad_length9, 11
  %_public_addtmp27 = add i64 %_public_addtmp, %_public_lhssext
  %_public_terntmp = select i1 %_public_is_sslv322, i64 %_public_addtmp27, i64 13
  %_public_zexttmp = select i1 %_public_is_sslv322, i64 2, i64 6
  %_public_lhssext33 = zext i32 %_public___data_len17 to i64
  %_public_addtmp34 = add i64 %_public_terntmp, %_public_lhssext33
  %_public_subtmp = add i64 %_public_md_block_size7, -1
  %_public_addtmp41 = sub i64 %_public_subtmp, %_public_md_size6
  %_public_addtmp43 = add i64 %_public_addtmp41, %_public_md_length_size10
  %_public_subtmp44 = add i64 %_public_addtmp43, %_public_addtmp34
  %_public_lrshift = lshr i64 %_public_subtmp44, %_public_log_md_block_size8
  %_secret_addtmp = sub i64 %_secret_data_plus_mac_size18, %_public_md_size6
  %_secret_subtmp = add i64 %_secret_addtmp, %_public_terntmp
  %_secret_andtmp = and i64 %_secret_subtmp, %_public_subtmp
  %_secret_lrshift = lshr i64 %_secret_subtmp, %_public_log_md_block_size8
  %_secret_addtmp55 = add i64 %_secret_subtmp, %_public_md_length_size10
  %_secret_lrshift57 = lshr i64 %_secret_addtmp55, %_public_log_md_block_size8
  %_public_rhssext = zext i1 %_public_is_sslv322 to i64
  %_public_addtmp63 = or i64 %_public_zexttmp, %_public_rhssext
  %_public_ugttmp = icmp ugt i64 %_public_lrshift, %_public_addtmp63
  %_public_subtmp66 = sub i64 %_public_lrshift, %_public_zexttmp
  %_public_multmp = mul i64 %_public_subtmp66, %_public_md_block_size7
  %_public___v16_num_starting_blocks.0 = select i1 %_public_ugttmp, i64 %_public_subtmp66, i64 0
  %_public___v17_k.0 = select i1 %_public_ugttmp, i64 %_public_multmp, i64 0
  %_secret___v18_first_block = alloca [128 x i8], align 1
  %_secret_multmp = shl i64 %_secret_subtmp, 3
  br i1 %_public_is_sslv322, label %elsebranch99, label %thenbranch72

thenbranch72:                                     ; preds = %entry
  %_public_multmp75 = shl i64 %_public_md_block_size7, 3
  %_secret_addtmp76 = add i64 %_secret_multmp, %_public_multmp75
  %_public_ugttmp79 = icmp ugt i32 %_public___mac_secret_len21, 128
  br i1 %_public_ugttmp79, label %thenbranch81, label %branchmerge84

thenbranch81:                                     ; preds = %loop_end494, %branchmerge299, %thenbranch157, %thenbranch72
  %_public_merge = phi i32 [ 0, %thenbranch157 ], [ 0, %thenbranch72 ], [ 1, %branchmerge299 ], [ 1, %loop_end494 ]
  ret i32 %_public_merge

branchmerge84:                                    ; preds = %thenbranch72
  %_public_rhssext.i = zext i32 %_public___mac_secret_len21 to i64
  %_public_ulttmp1.i = icmp eq i32 %_public___mac_secret_len21, 0
  br i1 %_public_ulttmp1.i, label %_memcpy.exit, label %loop_body.preheader.i

loop_body.preheader.i:                            ; preds = %branchmerge84
  br label %loop_body.i

loop_body.i:                                      ; preds = %loop_body.i, %loop_body.preheader.i
  %_public___v1_i.02.i = phi i64 [ %_public_addtmp.i, %loop_body.i ], [ 0, %loop_body.preheader.i ]
  %_secret_ptr.i = getelementptr inbounds i8, i8* %_secret_arrarg5, i64 %_public___v1_i.02.i
  %_secret_ptr10.i = getelementptr inbounds i8, i8* %_secret_arrarg20, i64 %_public___v1_i.02.i
  %_secret_lval.i = load i8, i8* %_secret_ptr10.i, align 1
  store i8 %_secret_lval.i, i8* %_secret_ptr.i, align 1
  %_public_addtmp.i = add nuw nsw i64 %_public___v1_i.02.i, 1
  %_public_ulttmp.i = icmp ult i64 %_public_addtmp.i, %_public_rhssext.i
  br i1 %_public_ulttmp.i, label %loop_body.i, label %_memcpy.exit

_memcpy.exit:                                     ; preds = %branchmerge84, %loop_body.i
  %_public_ulttmp557 = icmp eq i64 %_public_md_block_size7, 0
  br i1 %_public_ulttmp557, label %loop_end, label %loop_body.preheader

loop_body.preheader:                              ; preds = %_memcpy.exit
  br label %loop_body

loop_body:                                        ; preds = %loop_body.preheader, %loop_body
  %_public___v20_i.0558 = phi i64 [ %_public_addtmp95, %loop_body ], [ 0, %loop_body.preheader ]
  %_secret_ptr = getelementptr inbounds i8, i8* %_secret_arrarg5, i64 %_public___v20_i.0558
  %_secret_lval93 = load i8, i8* %_secret_ptr, align 1
  %_secret_xortmp = xor i8 %_secret_lval93, 54
  store i8 %_secret_xortmp, i8* %_secret_ptr, align 1
  %_public_addtmp95 = add nuw i64 %_public___v20_i.0558, 1
  %_public_ulttmp = icmp ult i64 %_public_addtmp95, %_public_md_block_size7
  br i1 %_public_ulttmp, label %loop_body, label %loop_end

loop_end:                                         ; preds = %loop_body, %_memcpy.exit
  tail call void @_md_transform(i32 %_public_sha_type12, i8* %_secret_arrarg1, i8* %_secret_arrarg5)
  %_secret_extract.t = trunc i64 %_secret_addtmp76 to i8
  %_secret_extract = lshr i64 %_secret_addtmp76, 8
  %_secret_extract.t532 = trunc i64 %_secret_extract to i8
  %_secret_extract535 = lshr i64 %_secret_addtmp76, 16
  %_secret_extract.t536 = trunc i64 %_secret_extract535 to i8
  %_secret_extract539 = lshr i64 %_secret_addtmp76, 24
  %_secret_extract.t570 = trunc i64 %_secret_extract539 to i8
  br label %branchmerge100

elsebranch99:                                     ; preds = %entry
  %_secret_extract.t531 = trunc i64 %_secret_multmp to i8
  %_secret_659 = lshr i64 %_secret_subtmp, 5
  %_secret_extract.t534 = trunc i64 %_secret_659 to i8
  %_secret_660 = lshr i64 %_secret_subtmp, 13
  %_secret_extract.t538 = trunc i64 %_secret_660 to i8
  %_secret_661 = lshr i64 %_secret_subtmp, 21
  %_secret_extract.t569 = trunc i64 %_secret_661 to i8
  br label %branchmerge100

branchmerge100:                                   ; preds = %elsebranch99, %loop_end
  %_public_.sink.off0 = phi i8 [ %_secret_extract.t569, %elsebranch99 ], [ %_secret_extract.t570, %loop_end ]
  %_secret___v19_bits.0.off0 = phi i8 [ %_secret_extract.t531, %elsebranch99 ], [ %_secret_extract.t, %loop_end ]
  %_secret___v19_bits.0.off8 = phi i8 [ %_secret_extract.t534, %elsebranch99 ], [ %_secret_extract.t532, %loop_end ]
  %_secret___v19_bits.0.off16 = phi i8 [ %_secret_extract.t538, %elsebranch99 ], [ %_secret_extract.t536, %loop_end ]
  %_secret___v21_length_bytes = alloca [16 x i8], align 1
  %_secret_sourcecasted = getelementptr inbounds [16 x i8], [16 x i8]* %_secret___v21_length_bytes, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* nonnull %_secret_sourcecasted, i8 0, i64 16, i32 1, i1 false)
  %_public_. = select i1 %_public_length_is_big_endian11, i64 -4, i64 -5
  %_public_.566 = select i1 %_public_length_is_big_endian11, i64 -3, i64 -6
  %_public_.567 = select i1 %_public_length_is_big_endian11, i64 -2, i64 -7
  %_public_.568 = select i1 %_public_length_is_big_endian11, i64 -1, i64 -8
  %_public_subtmp128 = add i64 %_public_., %_public_md_length_size10
  %_secret_ptr129 = getelementptr inbounds [16 x i8], [16 x i8]* %_secret___v21_length_bytes, i64 0, i64 %_public_subtmp128
  store i8 %_public_.sink.off0, i8* %_secret_ptr129, align 1
  %_public_subtmp134 = add i64 %_public_.566, %_public_md_length_size10
  %_secret_ptr135 = getelementptr inbounds [16 x i8], [16 x i8]* %_secret___v21_length_bytes, i64 0, i64 %_public_subtmp134
  store i8 %_secret___v19_bits.0.off16, i8* %_secret_ptr135, align 1
  %_public_subtmp140 = add i64 %_public_.567, %_public_md_length_size10
  %_secret_ptr141 = getelementptr inbounds [16 x i8], [16 x i8]* %_secret___v21_length_bytes, i64 0, i64 %_public_subtmp140
  store i8 %_secret___v19_bits.0.off8, i8* %_secret_ptr141, align 1
  %_public_subtmp146 = add i64 %_public_.568, %_public_md_length_size10
  %_secret_ptr147 = getelementptr inbounds [16 x i8], [16 x i8]* %_secret___v21_length_bytes, i64 0, i64 %_public_subtmp146
  store i8 %_secret___v19_bits.0.off0, i8* %_secret_ptr147, align 1
  %_public_ugttmp152 = icmp eq i64 %_public___v17_k.0, 0
  br i1 %_public_ugttmp152, label %branchmerge299, label %thenbranch154

thenbranch154:                                    ; preds = %branchmerge100
  br i1 %_public_is_sslv322, label %thenbranch157, label %elsebranch236

thenbranch157:                                    ; preds = %thenbranch154
  %_public_ultetmp = icmp ugt i64 %_public_terntmp, %_public_md_block_size7
  br i1 %_public_ultetmp, label %branchmerge164, label %thenbranch81

branchmerge164:                                   ; preds = %thenbranch157
  %_public_subtmp167 = sub i64 %_public_terntmp, %_public_md_block_size7
  tail call void @_md_transform(i32 %_public_sha_type12, i8* %_secret_arrarg1, i8* %_secret_arrarg14)
  %_public_trunctmp = trunc i64 %_public_subtmp167 to i32
  %_secret_arrtoptr = getelementptr inbounds [128 x i8], [128 x i8]* %_secret___v18_first_block, i64 0, i64 0
  %_secret_source_gep175 = getelementptr inbounds i8, i8* %_secret_arrarg14, i64 %_public_md_block_size7
  %_public_rhssext.i572 = zext i32 %_public_trunctmp to i64
  %_public_ulttmp1.i573 = icmp eq i32 %_public_trunctmp, 0
  br i1 %_public_ulttmp1.i573, label %_memcpy.exit582, label %loop_body.preheader.i574

loop_body.preheader.i574:                         ; preds = %branchmerge164
  br label %loop_body.i581

loop_body.i581:                                   ; preds = %loop_body.i581, %loop_body.preheader.i574
  %_public___v1_i.02.i575 = phi i64 [ %_public_addtmp.i579, %loop_body.i581 ], [ 0, %loop_body.preheader.i574 ]
  %_secret_ptr.i576 = getelementptr inbounds i8, i8* %_secret_arrtoptr, i64 %_public___v1_i.02.i575
  %_secret_ptr10.i577 = getelementptr inbounds i8, i8* %_secret_source_gep175, i64 %_public___v1_i.02.i575
  %_secret_lval.i578 = load i8, i8* %_secret_ptr10.i577, align 1
  store i8 %_secret_lval.i578, i8* %_secret_ptr.i576, align 1
  %_public_addtmp.i579 = add nuw nsw i64 %_public___v1_i.02.i575, 1
  %_public_ulttmp.i580 = icmp ult i64 %_public_addtmp.i579, %_public_rhssext.i572
  br i1 %_public_ulttmp.i580, label %loop_body.i581, label %_memcpy.exit582

_memcpy.exit582:                                  ; preds = %branchmerge164, %loop_body.i581
  %_public_subtmp185 = sub i64 %_public_md_block_size7, %_public_subtmp167
  %_public_trunctmp186 = trunc i64 %_public_subtmp185 to i32
  %_secret_source_gep191 = getelementptr inbounds [128 x i8], [128 x i8]* %_secret___v18_first_block, i64 0, i64 %_public_subtmp167
  %_public_rhssext.i585 = zext i32 %_public_trunctmp186 to i64
  %_public_ulttmp1.i586 = icmp eq i32 %_public_trunctmp186, 0
  br i1 %_public_ulttmp1.i586, label %_memcpy.exit595, label %loop_body.preheader.i587

loop_body.preheader.i587:                         ; preds = %_memcpy.exit582
  br label %loop_body.i594

loop_body.i594:                                   ; preds = %loop_body.i594, %loop_body.preheader.i587
  %_public___v1_i.02.i588 = phi i64 [ %_public_addtmp.i592, %loop_body.i594 ], [ 0, %loop_body.preheader.i587 ]
  %_secret_ptr.i589 = getelementptr inbounds i8, i8* %_secret_source_gep191, i64 %_public___v1_i.02.i588
  %_secret_ptr10.i590 = getelementptr inbounds i8, i8* %_secret_arrarg16, i64 %_public___v1_i.02.i588
  %_secret_lval.i591 = load i8, i8* %_secret_ptr10.i590, align 1
  store i8 %_secret_lval.i591, i8* %_secret_ptr.i589, align 1
  %_public_addtmp.i592 = add nuw nsw i64 %_public___v1_i.02.i588, 1
  %_public_ulttmp.i593 = icmp ult i64 %_public_addtmp.i592, %_public_rhssext.i585
  br i1 %_public_ulttmp.i593, label %loop_body.i594, label %_memcpy.exit595

_memcpy.exit595:                                  ; preds = %_memcpy.exit582, %loop_body.i594
  call void @_md_transform(i32 %_public_sha_type12, i8* %_secret_arrarg1, i8* nonnull %_secret_arrtoptr)
  %_public_udivtmp = udiv i64 %_public___v17_k.0, %_public_md_block_size7
  %_public_subtmp211 = add i64 %_public_udivtmp, -1
  %_public_ulttmp212553 = icmp ugt i64 %_public_subtmp211, 1
  br i1 %_public_ulttmp212553, label %loop_body206.preheader, label %branchmerge299

loop_body206.preheader:                           ; preds = %_memcpy.exit595
  br label %loop_body206

loop_body206:                                     ; preds = %loop_body206.preheader, %loop_body206
  %_public___v29_i.0554 = phi i64 [ %_public_addtmp235, %loop_body206 ], [ 1, %loop_body206.preheader ]
  %_public_multmp227 = mul i64 %_public___v29_i.0554, %_public_md_block_size7
  %_public_subtmp229 = sub i64 %_public_multmp227, %_public_subtmp167
  %_secret_source_gep231 = getelementptr inbounds i8, i8* %_secret_arrarg16, i64 %_public_subtmp229
  call void @_md_transform(i32 %_public_sha_type12, i8* %_secret_arrarg1, i8* %_secret_source_gep231)
  %_public_addtmp235 = add nuw i64 %_public___v29_i.0554, 1
  %_public_ulttmp212 = icmp ult i64 %_public_addtmp235, %_public_subtmp211
  br i1 %_public_ulttmp212, label %loop_body206, label %branchmerge299

elsebranch236:                                    ; preds = %thenbranch154
  %_secret_arrtoptr237 = getelementptr inbounds [128 x i8], [128 x i8]* %_secret___v18_first_block, i64 0, i64 0
  br label %loop_body.i607

loop_body.i607:                                   ; preds = %loop_body.i607, %elsebranch236
  %_public___v1_i.02.i601 = phi i64 [ %_public_addtmp.i605, %loop_body.i607 ], [ 0, %elsebranch236 ]
  %_secret_ptr.i602 = getelementptr inbounds i8, i8* %_secret_arrtoptr237, i64 %_public___v1_i.02.i601
  %_secret_ptr10.i603 = getelementptr inbounds i8, i8* %_secret_arrarg14, i64 %_public___v1_i.02.i601
  %_secret_lval.i604 = load i8, i8* %_secret_ptr10.i603, align 1
  store i8 %_secret_lval.i604, i8* %_secret_ptr.i602, align 1
  %_public_addtmp.i605 = add nuw nsw i64 %_public___v1_i.02.i601, 1
  %_public_ulttmp.i606 = icmp ult i64 %_public_addtmp.i605, 13
  br i1 %_public_ulttmp.i606, label %loop_body.i607, label %_memcpy.exit608

_memcpy.exit608:                                  ; preds = %loop_body.i607
  %_public_658 = trunc i64 %_public_md_block_size7 to i32
  %_public_trunctmp250 = add i32 %_public_658, -13
  %_secret_source_gep254 = getelementptr inbounds [128 x i8], [128 x i8]* %_secret___v18_first_block, i64 0, i64 13
  %_public_rhssext.i612 = zext i32 %_public_trunctmp250 to i64
  %_public_ulttmp1.i613 = icmp eq i32 %_public_trunctmp250, 0
  br i1 %_public_ulttmp1.i613, label %_memcpy.exit622, label %loop_body.preheader.i614

loop_body.preheader.i614:                         ; preds = %_memcpy.exit608
  br label %loop_body.i621

loop_body.i621:                                   ; preds = %loop_body.i621, %loop_body.preheader.i614
  %_public___v1_i.02.i615 = phi i64 [ %_public_addtmp.i619, %loop_body.i621 ], [ 0, %loop_body.preheader.i614 ]
  %_secret_ptr.i616 = getelementptr inbounds i8, i8* %_secret_source_gep254, i64 %_public___v1_i.02.i615
  %_secret_ptr10.i617 = getelementptr inbounds i8, i8* %_secret_arrarg16, i64 %_public___v1_i.02.i615
  %_secret_lval.i618 = load i8, i8* %_secret_ptr10.i617, align 1
  store i8 %_secret_lval.i618, i8* %_secret_ptr.i616, align 1
  %_public_addtmp.i619 = add nuw nsw i64 %_public___v1_i.02.i615, 1
  %_public_ulttmp.i620 = icmp ult i64 %_public_addtmp.i619, %_public_rhssext.i612
  br i1 %_public_ulttmp.i620, label %loop_body.i621, label %_memcpy.exit622

_memcpy.exit622:                                  ; preds = %_memcpy.exit608, %loop_body.i621
  call void @_md_transform(i32 %_public_sha_type12, i8* %_secret_arrarg1, i8* nonnull %_secret_arrtoptr237)
  %_public_udivtmp274 = udiv i64 %_public___v17_k.0, %_public_md_block_size7
  %_public_ulttmp275555 = icmp ugt i64 %_public_udivtmp274, 1
  br i1 %_public_ulttmp275555, label %loop_body269.preheader, label %branchmerge299

loop_body269.preheader:                           ; preds = %_memcpy.exit622
  br label %loop_body269

loop_body269:                                     ; preds = %loop_body269.preheader, %loop_body269
  %_public___v36_i.0556 = phi i64 [ %_public_addtmp296, %loop_body269 ], [ 1, %loop_body269.preheader ]
  %_public_multmp289 = mul i64 %_public___v36_i.0556, %_public_md_block_size7
  %_public_subtmp290 = add i64 %_public_multmp289, -13
  %_secret_source_gep292 = getelementptr inbounds i8, i8* %_secret_arrarg16, i64 %_public_subtmp290
  call void @_md_transform(i32 %_public_sha_type12, i8* %_secret_arrarg1, i8* %_secret_source_gep292)
  %_public_addtmp296 = add nuw i64 %_public___v36_i.0556, 1
  %_public_ulttmp275 = icmp ult i64 %_public_addtmp296, %_public_udivtmp274
  br i1 %_public_ulttmp275, label %loop_body269, label %branchmerge299

branchmerge299:                                   ; preds = %loop_body269, %loop_body206, %_memcpy.exit622, %_memcpy.exit595, %branchmerge100
  %_public_addtmp307 = or i64 %_public_zexttmp, 1
  %_public_addtmp308 = add i64 %_public_addtmp307, %_public___v16_num_starting_blocks.0
  %_public_ulttmp309550 = icmp ult i64 %_public___v16_num_starting_blocks.0, %_public_addtmp308
  br i1 %_public_ulttmp309550, label %loop_body301.lr.ph, label %thenbranch81

loop_body301.lr.ph:                               ; preds = %branchmerge299
  %_public_ulttmp321545 = icmp eq i64 %_public_md_block_size7, 0
  %_public_ulttmp497548 = icmp eq i64 %_public_md_size6, 0
  %_secret_addtmp375 = add i64 %_secret_andtmp, 1
  %_public_subtmp450 = sub i64 %_public_md_block_size7, %_public_md_length_size10
  %_public_subtmp462543 = sub i64 %_public_md_length_size10, %_public_md_block_size7
  br label %loop_body301

loop_body301:                                     ; preds = %loop_body301.lr.ph, %loop_end494
  %_public___v39_i.0552 = phi i64 [ %_public___v16_num_starting_blocks.0, %loop_body301.lr.ph ], [ %_public_addtmp529, %loop_end494 ]
  %_public___v17_k.1551 = phi i64 [ %_public___v17_k.0, %loop_body301.lr.ph ], [ %_public___v17_k.2.lcssa, %loop_end494 ]
  %_secret___v40_block = alloca [128 x i8], align 1
  %_secret_sourcecasted310 = getelementptr inbounds [128 x i8], [128 x i8]* %_secret___v40_block, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* nonnull %_secret_sourcecasted310, i8 0, i64 128, i32 1, i1 false)
  %_secret_eqtmp = icmp eq i64 %_public___v39_i.0552, %_secret_lrshift
  %_secret_eqtmp315 = icmp eq i64 %_public___v39_i.0552, %_secret_lrshift57
  br i1 %_public_ulttmp321545, label %loop_end318, label %loop_body317.lr.ph

loop_body317.lr.ph:                               ; preds = %loop_body301
  %_secret_lnottmp = xor i1 %_secret_eqtmp, true
  %_secret_lnottmp429 = xor i1 %_secret_eqtmp315, true
  br label %loop_body317

loop_body317:                                     ; preds = %loop_body317.lr.ph, %branchmerge480
  %_public___v43_j.0547 = phi i64 [ 0, %loop_body317.lr.ph ], [ %_public_addtmp485, %branchmerge480 ]
  %_public___v17_k.2546 = phi i64 [ %_public___v17_k.1551, %loop_body317.lr.ph ], [ %_public_addtmp350, %branchmerge480 ]
  %_public_ulttmp324 = icmp ult i64 %_public___v17_k.2546, %_public_terntmp
  br i1 %_public_ulttmp324, label %thenbranch326, label %elsebranch331

loop_end318.loopexit:                             ; preds = %branchmerge480
  %_public_ = add i64 %_public___v17_k.1551, %_public_md_block_size7
  br label %loop_end318

loop_end318:                                      ; preds = %loop_end318.loopexit, %loop_body301
  %_public___v17_k.2.lcssa = phi i64 [ %_public___v17_k.1551, %loop_body301 ], [ %_public_, %loop_end318.loopexit ]
  call void @_md_transform(i32 %_public_sha_type12, i8* %_secret_arrarg1, i8* nonnull %_secret_sourcecasted310)
  call void @_md_final_raw(i32 %_public_sha_type12, i8* %_secret_arrarg1, i8* nonnull %_secret_sourcecasted310)
  br i1 %_public_ulttmp497548, label %loop_end494, label %loop_body493.lr.ph

loop_body493.lr.ph:                               ; preds = %loop_end318
  %_secret_lnottmp517 = xor i1 %_secret_eqtmp315, true
  br label %loop_body493

thenbranch326:                                    ; preds = %loop_body317
  %_secret_ptr329 = getelementptr inbounds i8, i8* %_secret_arrarg14, i64 %_public___v17_k.2546
  br label %branchmerge348.sink.split

elsebranch331:                                    ; preds = %loop_body317
  %_public_ulttmp337 = icmp ult i64 %_public___v17_k.2546, %_public_addtmp34
  br i1 %_public_ulttmp337, label %thenbranch339, label %branchmerge348

thenbranch339:                                    ; preds = %elsebranch331
  %_public_subtmp342 = sub i64 %_public___v17_k.2546, %_public_terntmp
  %_secret_ptr344 = getelementptr inbounds i8, i8* %_secret_arrarg16, i64 %_public_subtmp342
  br label %branchmerge348.sink.split

branchmerge348.sink.split:                        ; preds = %thenbranch326, %thenbranch339
  %_secret_ptr344.sink = phi i8* [ %_secret_ptr344, %thenbranch339 ], [ %_secret_ptr329, %thenbranch326 ]
  %_secret_lval345 = load i8, i8* %_secret_ptr344.sink, align 1
  br label %branchmerge348

branchmerge348:                                   ; preds = %branchmerge348.sink.split, %elsebranch331
  %_secret___v44_b.1 = phi i8 [ 0, %elsebranch331 ], [ %_secret_lval345, %branchmerge348.sink.split ]
  %_public_addtmp350 = add i64 %_public___v17_k.2546, 1
  %_secret_ugtetmp = icmp uge i64 %_public___v43_j.0547, %_secret_andtmp
  %_secret_zext.i626 = zext i1 %_secret_ugtetmp to i32
  %_secret_asm.i627 = call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %_secret_eqtmp, i32 %_secret_zext.i626, i32 0) #1
  %_secret_ = and i32 %_secret_asm.i627, 1
  %_secret_trunc.i628 = icmp ne i32 %_secret_, 0
  %_secret_zext1.i629 = zext i1 %_secret_trunc.i628 to i32
  %_secret_asm.i630 = call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %_secret_lnottmp, i32 0, i32 %_secret_zext1.i629) #1
  %_secret_653 = and i32 %_secret_asm.i630, 1
  %_secret_trunc.i631 = icmp ne i32 %_secret_653, 0
  %_secret_ugtetmp376 = icmp uge i64 %_public___v43_j.0547, %_secret_addtmp375
  %_secret_zext.i632 = zext i1 %_secret_ugtetmp376 to i32
  %_secret_asm.i633 = call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %_secret_eqtmp, i32 %_secret_zext.i632, i32 0) #1
  %_secret_654 = and i32 %_secret_asm.i633, 1
  %_secret_trunc.i634 = icmp ne i32 %_secret_654, 0
  %_secret_zext1.i635 = zext i1 %_secret_trunc.i634 to i32
  %_secret_asm.i636 = call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %_secret_lnottmp, i32 0, i32 %_secret_zext1.i635) #1
  %_secret_655 = and i32 %_secret_asm.i636, 1
  %_secret_trunc.i637 = icmp ne i32 %_secret_655, 0
  %_secret_asm.i638 = call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %_secret_trunc.i631, i32 128, i32 0) #1
  %_secret_trunc.i639 = trunc i32 %_secret_asm.i638 to i8
  %_secret_lnottmp398 = xor i1 %_secret_trunc.i631, true
  %_secret_zext.i640 = zext i8 %_secret___v44_b.1 to i32
  %_secret_zext1.i641 = zext i8 %_secret_trunc.i639 to i32
  %_secret_asm.i642 = call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %_secret_lnottmp398, i32 %_secret_zext.i640, i32 %_secret_zext1.i641) #1
  %_secret_trunc.i643 = trunc i32 %_secret_asm.i642 to i8
  %_secret_zext1.i644 = zext i8 %_secret_trunc.i643 to i32
  %_secret_asm.i645 = call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %_secret_trunc.i637, i32 0, i32 %_secret_zext1.i644) #1
  %_secret_trunc.i646 = trunc i32 %_secret_asm.i645 to i8
  %_secret_zext.i647 = zext i1 %_secret_lnottmp to i32
  %_secret_asm.i648 = call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %_secret_eqtmp315, i32 %_secret_zext.i647, i32 0) #1
  %_secret_656 = and i32 %_secret_asm.i648, 1
  %_secret_trunc.i649 = icmp ne i32 %_secret_656, 0
  %_secret_zext1.i650 = zext i1 %_secret_trunc.i649 to i32
  %_secret_asm.i651 = call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %_secret_lnottmp429, i32 0, i32 %_secret_zext1.i650) #1
  %_secret_657 = and i32 %_secret_asm.i651, 1
  %_secret_trunc.i652 = icmp ne i32 %_secret_657, 0
  %_secret_zext1.i623 = zext i8 %_secret_trunc.i646 to i32
  %_secret_asm.i624 = call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %_secret_trunc.i652, i32 0, i32 %_secret_zext1.i623) #1
  %_secret_trunc.i625 = trunc i32 %_secret_asm.i624 to i8
  %_public_ugtetmp = icmp ult i64 %_public___v43_j.0547, %_public_subtmp450
  br i1 %_public_ugtetmp, label %branchmerge480, label %thenbranch452

thenbranch452:                                    ; preds = %branchmerge348
  %_public_subtmp463 = add i64 %_public_subtmp462543, %_public___v43_j.0547
  %_secret_ptr464 = getelementptr inbounds [16 x i8], [16 x i8]* %_secret___v21_length_bytes, i64 0, i64 %_public_subtmp463
  %_secret_lval465 = load i8, i8* %_secret_ptr464, align 1
  %_secret_zext.i609 = zext i8 %_secret_lval465 to i32
  %_secret_asm.i610 = call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %_secret_eqtmp315, i32 %_secret_zext.i609, i32 0) #1
  %_secret_trunc.i611 = trunc i32 %_secret_asm.i610 to i8
  %_secret_zext.i596 = zext i8 %_secret_trunc.i625 to i32
  %_secret_zext1.i597 = zext i8 %_secret_trunc.i611 to i32
  %_secret_asm.i598 = call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %_secret_lnottmp429, i32 %_secret_zext.i596, i32 %_secret_zext1.i597) #1
  %_secret_trunc.i599 = trunc i32 %_secret_asm.i598 to i8
  br label %branchmerge480

branchmerge480:                                   ; preds = %branchmerge348, %thenbranch452
  %_secret___v44_b.2 = phi i8 [ %_secret_trunc.i599, %thenbranch452 ], [ %_secret_trunc.i625, %branchmerge348 ]
  %_secret_ptr482 = getelementptr inbounds [128 x i8], [128 x i8]* %_secret___v40_block, i64 0, i64 %_public___v43_j.0547
  store i8 %_secret___v44_b.2, i8* %_secret_ptr482, align 1
  %_public_addtmp485 = add nuw i64 %_public___v43_j.0547, 1
  %_public_ulttmp321 = icmp ult i64 %_public_addtmp485, %_public_md_block_size7
  br i1 %_public_ulttmp321, label %loop_body317, label %loop_end318.loopexit

loop_body493:                                     ; preds = %loop_body493.lr.ph, %loop_body493
  %_public___v47_j.0549 = phi i64 [ 0, %loop_body493.lr.ph ], [ %_public_addtmp527, %loop_body493 ]
  %_secret_ptr500 = getelementptr inbounds i8, i8* %_secret_arrarg3, i64 %_public___v47_j.0549
  %_secret_lval504 = load i8, i8* %_secret_ptr500, align 1
  %_secret_ptr512 = getelementptr inbounds [128 x i8], [128 x i8]* %_secret___v40_block, i64 0, i64 %_public___v47_j.0549
  %_secret_lval513 = load i8, i8* %_secret_ptr512, align 1
  %_secret_zext.i = zext i8 %_secret_lval513 to i32
  %_secret_asm.i583 = call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %_secret_eqtmp315, i32 %_secret_zext.i, i32 0) #1
  %_secret_trunc.i584 = trunc i32 %_secret_asm.i583 to i8
  %_secret_zext1.i = zext i8 %_secret_trunc.i584 to i32
  %_secret_asm.i = call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %_secret_lnottmp517, i32 0, i32 %_secret_zext1.i) #1
  %_secret_trunc.i = trunc i32 %_secret_asm.i to i8
  %_secret_ortmp = or i8 %_secret_trunc.i, %_secret_lval504
  store i8 %_secret_ortmp, i8* %_secret_ptr500, align 1
  %_public_addtmp527 = add nuw i64 %_public___v47_j.0549, 1
  %_public_ulttmp497 = icmp ult i64 %_public_addtmp527, %_public_md_size6
  br i1 %_public_ulttmp497, label %loop_body493, label %loop_end494

loop_end494:                                      ; preds = %loop_body493, %loop_end318
  %_public_addtmp529 = add nuw i64 %_public___v39_i.0552, 1
  %_public_ulttmp309 = icmp ult i64 %_public_addtmp529, %_public_addtmp308
  br i1 %_public_ulttmp309, label %loop_body301, label %thenbranch81
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #0

attributes #0 = { argmemonly nounwind }
attributes #1 = { nounwind }
