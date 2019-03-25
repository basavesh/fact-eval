; ModuleID = './20170717_latest_raw.O3.bc'
source_filename = "Module"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%EVP_AES_HMAC_SHA1 = type { %AES_KEY, %SHA_CTX, %SHA_CTX, %SHA_CTX, i64, [16 x i8] }
%AES_KEY = type { [60 x i32], i32 }
%SHA_CTX = type { i32, i32, i32, i32, i32, i32, i32, [64 x i8], i32 }

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #0

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #0

declare void @SHA1_Final(i8*, i32*) local_unnamed_addr

declare void @_sha1_update(i32*, i8*, i64) local_unnamed_addr

declare void @sha1_block_data_order(i32*, i8*, i32) local_unnamed_addr

declare void @aesni_cbc_encrypt(i8*, i8*, i64, i32*, i8*, i32) local_unnamed_addr

define i32 @_aesni_cbc_hmac_sha1_cipher(i8* %__v1_iv, %EVP_AES_HMAC_SHA1* %__v2_key, i8* %__v3__out, i64 %__v85___v3__out_len, i8* %__v4__in, i64 %__v86___v4__in_len, i16 %__v5_tls_ver) local_unnamed_addr {
entry:
  %0 = icmp ugt i16 %__v5_tls_ver, 769
  br i1 %0, label %1, label %3

; <label>:1:                                      ; preds = %entry
  %2 = icmp ult i64 %__v85___v3__out_len, 37
  br i1 %2, label %41, label %42

; <label>:3:                                      ; preds = %entry
  %4 = icmp ult i64 %__v85___v3__out_len, 21
  br i1 %4, label %41, label %5

; <label>:5:                                      ; preds = %3, %42
  %__v13_inp.0 = phi i64 [ 16, %42 ], [ 0, %3 ]
  %__v15__len.0 = phi i64 [ %43, %42 ], [ %__v85___v3__out_len, %3 ]
  %6 = getelementptr i8, i8* %__v4__in, i64 %__v13_inp.0
  %7 = getelementptr i8, i8* %__v3__out, i64 %__v13_inp.0
  %8 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 0, i32 0, i64 0
  tail call void @aesni_cbc_encrypt(i8* %6, i8* %7, i64 %__v15__len.0, i32* %8, i8* %__v1_iv, i32 0)
  %__v95_lexpr = add i64 %__v85___v3__out_len, -1
  %9 = getelementptr i8, i8* %__v3__out, i64 %__v95_lexpr
  %10 = load i8, i8* %9, align 1
  %11 = zext i8 %10 to i32
  %12 = trunc i64 %__v15__len.0 to i32
  %13 = add i32 %12, 235
  %14 = sub i32 276, %12
  %15 = lshr i32 %14, 24
  %.masked = and i32 %13, 255
  %16 = or i32 %.masked, %15
  %17 = sub nsw i32 %16, %11
  %18 = ashr i32 %17, 31
  %19 = xor i32 %18, -1
  %20 = and i32 %19, 1
  %21 = and i32 %19, %11
  %22 = and i32 %18, %16
  %23 = or i32 %22, %21
  %24 = add nuw nsw i32 %23, 21
  %25 = zext i32 %24 to i64
  %26 = sub i64 %__v15__len.0, %25
  %27 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 5, i64 0
  %28 = getelementptr %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 5, i64 11
  %29 = lshr i64 %26, 8
  %30 = trunc i64 %29 to i8
  store i8 %30, i8* %28, align 1
  %31 = getelementptr %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 5, i64 12
  %32 = trunc i64 %26 to i8
  store i8 %32, i8* %31, align 1
  %33 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 3
  %34 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 1
  %35 = bitcast %SHA_CTX* %33 to i8*
  %36 = bitcast %SHA_CTX* %34 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %35, i8* nonnull %36, i64 96, i32 1, i1 false) #2
  %37 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %33, i64 0, i32 0
  tail call void @_sha1_update(i32* nonnull %37, i8* nonnull %27, i64 13)
  %38 = add i64 %__v15__len.0, -20
  %39 = icmp ugt i64 %38, 319
  %40 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 3, i32 8
  br i1 %39, label %44, label %._crit_edge39

; <label>:41:                                     ; preds = %3, %1
  ret i32 0

; <label>:42:                                     ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %__v1_iv, i8* %__v4__in, i64 16, i32 1, i1 false) #2
  %43 = add i64 %__v85___v3__out_len, -16
  br label %5

; <label>:44:                                     ; preds = %5
  %45 = load i32, i32* %40, align 4
  %46 = add i32 %12, -276
  %47 = and i32 %46, -64
  %48 = sub i32 %47, %45
  %49 = zext i32 %48 to i64
  tail call void @_sha1_update(i32* nonnull %37, i8* %7, i64 %49)
  %50 = add nuw nsw i64 %__v13_inp.0, %49
  %51 = sub i64 %38, %49
  %52 = sub i64 %26, %49
  br label %._crit_edge39

._crit_edge39:                                    ; preds = %5, %44
  %53 = phi i64 [ %52, %44 ], [ %26, %5 ]
  %__v14_outp.1 = phi i64 [ %50, %44 ], [ %__v13_inp.0, %5 ]
  %__v15__len.1 = phi i64 [ %51, %44 ], [ %38, %5 ]
  %54 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 3, i32 5
  %55 = load i32, i32* %54, align 4
  %.tr = trunc i64 %53 to i32
  %56 = shl i32 %.tr, 3
  %57 = add i32 %56, %55
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #2
  %__v23_pmac23 = alloca [20 x i8], align 16
  %__v23_pmac23.sub = getelementptr inbounds [20 x i8], [20 x i8]* %__v23_pmac23, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* nonnull %__v23_pmac23.sub, i8 0, i64 20, i32 16, i1 false) #2
  %59 = load i32, i32* %40, align 4
  %60 = icmp eq i64 %__v15__len.1, 0
  br i1 %60, label %._crit_edge32, label %.lr.ph31

.lr.ph31:                                         ; preds = %._crit_edge39
  %61 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 3, i32 7, i64 0
  %62 = add i64 %53, 7
  %63 = getelementptr %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 3, i32 7, i64 60
  %64 = bitcast i8* %63 to i32*
  %65 = getelementptr inbounds [20 x i8], [20 x i8]* %__v23_pmac23, i64 0, i64 16
  %66 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 3, i32 4
  %67 = bitcast i8* %65 to i32*
  %68 = bitcast %SHA_CTX* %33 to <4 x i32>*
  %69 = bitcast [20 x i8]* %__v23_pmac23 to <4 x i32>*
  br label %70

; <label>:70:                                     ; preds = %116, %.lr.ph31
  %71 = phi i32 [ 0, %.lr.ph31 ], [ %117, %116 ]
  %72 = phi i32 [ %59, %.lr.ph31 ], [ %118, %116 ]
  %__v25_j29 = phi i64 [ 0, %.lr.ph31 ], [ %120, %116 ]
  %73 = phi <4 x i32> [ zeroinitializer, %.lr.ph31 ], [ %119, %116 ]
  %__v100_lexpr = add i64 %__v25_j29, %__v14_outp.1
  %74 = getelementptr i8, i8* %__v3__out, i64 %__v100_lexpr
  %75 = load i8, i8* %74, align 1
  %76 = zext i8 %75 to i32
  %77 = sub i64 %__v25_j29, %53
  %78 = trunc i64 %77 to i32
  %79 = ashr i32 %78, 24
  %80 = and i32 %79, %76
  %81 = and i32 %79, 128
  %82 = xor i32 %81, 128
  %83 = sub i64 %53, %__v25_j29
  %84 = trunc i64 %83 to i32
  %85 = lshr i32 %84, 24
  %86 = xor i32 %85, 255
  %87 = and i32 %82, %86
  %88 = or i32 %80, %87
  %__v101_lexpr = zext i32 %72 to i64
  %89 = getelementptr %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 3, i32 7, i64 %__v101_lexpr
  %90 = trunc i32 %88 to i8
  store i8 %90, i8* %89, align 1
  %91 = add i32 %72, 1
  %92 = icmp eq i32 %91, 64
  br i1 %92, label %98, label %116

._crit_edge32:                                    ; preds = %116, %._crit_edge39
  %93 = phi i32 [ 0, %._crit_edge39 ], [ %117, %116 ]
  %94 = phi i32 [ %59, %._crit_edge39 ], [ %118, %116 ]
  %95 = phi <4 x i32> [ zeroinitializer, %._crit_edge39 ], [ %119, %116 ]
  %96 = trunc i64 %__v15__len.1 to i32
  %97 = icmp ult i32 %94, 64
  br i1 %97, label %121, label %.thread

; <label>:98:                                     ; preds = %70
  %99 = sub i64 %62, %__v25_j29
  %100 = trunc i64 %99 to i32
  %101 = ashr i32 %100, 31
  %102 = and i32 %101, %58
  %103 = load i32, i32* %64, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %64, align 4
  tail call void @sha1_block_data_order(i32* nonnull %37, i8* nonnull %61, i32 1)
  %105 = add i32 %78, -72
  %106 = ashr i32 %105, 31
  %107 = and i32 %106, %101
  %108 = load <4 x i32>, <4 x i32>* %68, align 4
  %109 = insertelement <4 x i32> undef, i32 %107, i32 0
  %110 = shufflevector <4 x i32> %109, <4 x i32> undef, <4 x i32> zeroinitializer
  %111 = and <4 x i32> %108, %110
  %112 = or <4 x i32> %73, %111
  store <4 x i32> %112, <4 x i32>* %69, align 16
  %113 = load i32, i32* %66, align 4
  %114 = and i32 %113, %107
  %115 = or i32 %71, %114
  store i32 %115, i32* %67, align 16
  br label %116

; <label>:116:                                    ; preds = %70, %98
  %117 = phi i32 [ %71, %70 ], [ %115, %98 ]
  %118 = phi i32 [ %91, %70 ], [ 0, %98 ]
  %119 = phi <4 x i32> [ %73, %70 ], [ %112, %98 ]
  %120 = add nuw i64 %__v25_j29, 1
  %exitcond38 = icmp eq i64 %120, %__v15__len.1
  br i1 %exitcond38, label %._crit_edge32, label %70

; <label>:121:                                    ; preds = %._crit_edge32
  %122 = zext i32 %94 to i64
  %123 = add i32 %96, 64
  %scevgep = getelementptr %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 0, i32 0, i64 116
  %scevgep37 = bitcast i32* %scevgep to i8*
  %uglygep = getelementptr i8, i8* %scevgep37, i64 %122
  %124 = sub nsw i64 64, %122
  call void @llvm.memset.p0i8.i64(i8* %uglygep, i8 0, i64 %124, i32 1, i1 false)
  %125 = sub i32 %123, %94
  %126 = icmp ugt i32 %94, 56
  br i1 %126, label %.thread, label %._crit_edge

._crit_edge:                                      ; preds = %121
  %.pre40 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 3, i32 7, i64 0
  %.pre42 = getelementptr %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 3, i32 7, i64 60
  %.pre44 = bitcast i8* %.pre42 to i32*
  %.pre46 = sub i32 -72, %.tr
  %.pre50 = getelementptr inbounds [20 x i8], [20 x i8]* %__v23_pmac23, i64 0, i64 4
  %.pre56 = getelementptr inbounds [20 x i8], [20 x i8]* %__v23_pmac23, i64 0, i64 8
  %.pre62 = getelementptr inbounds [20 x i8], [20 x i8]* %__v23_pmac23, i64 0, i64 12
  %.pre68 = getelementptr inbounds [20 x i8], [20 x i8]* %__v23_pmac23, i64 0, i64 16
  %.pre70 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 3, i32 4
  %.pre72 = bitcast i8* %.pre68 to i32*
  %127 = extractelement <4 x i32> %95, i32 0
  %128 = extractelement <4 x i32> %95, i32 1
  %129 = extractelement <4 x i32> %95, i32 2
  %130 = extractelement <4 x i32> %95, i32 3
  br label %166

.thread:                                          ; preds = %._crit_edge32, %121
  %131 = phi i32 [ %125, %121 ], [ %96, %._crit_edge32 ]
  %132 = add i32 %.tr, 8
  %133 = sub i32 %132, %131
  %134 = ashr i32 %133, 31
  %135 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 3, i32 7, i64 0
  %136 = getelementptr %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 3, i32 7, i64 60
  %137 = and i32 %134, %58
  %138 = bitcast i8* %136 to i32*
  %139 = load i32, i32* %138, align 4
  %140 = or i32 %137, %139
  store i32 %140, i32* %138, align 4
  tail call void @sha1_block_data_order(i32* nonnull %37, i8* nonnull %135, i32 1)
  %141 = sub i32 -72, %.tr
  %142 = add i32 %141, %131
  %143 = ashr i32 %142, 31
  %144 = and i32 %134, %143
  %145 = getelementptr inbounds [20 x i8], [20 x i8]* %__v23_pmac23, i64 0, i64 4
  %146 = getelementptr inbounds [20 x i8], [20 x i8]* %__v23_pmac23, i64 0, i64 8
  %147 = getelementptr inbounds [20 x i8], [20 x i8]* %__v23_pmac23, i64 0, i64 12
  %148 = bitcast %SHA_CTX* %33 to <4 x i32>*
  %149 = load <4 x i32>, <4 x i32>* %148, align 4
  %150 = insertelement <4 x i32> undef, i32 %144, i32 0
  %151 = shufflevector <4 x i32> %150, <4 x i32> undef, <4 x i32> zeroinitializer
  %152 = and <4 x i32> %149, %151
  %153 = or <4 x i32> %95, %152
  %154 = bitcast [20 x i8]* %__v23_pmac23 to <4 x i32>*
  store <4 x i32> %153, <4 x i32>* %154, align 16
  %155 = getelementptr inbounds [20 x i8], [20 x i8]* %__v23_pmac23, i64 0, i64 16
  %156 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 3, i32 4
  %157 = load i32, i32* %156, align 4
  %158 = and i32 %157, %144
  %159 = bitcast i8* %155 to i32*
  %160 = or i32 %93, %158
  store i32 %160, i32* %159, align 16
  tail call void @llvm.memset.p0i8.i64(i8* nonnull %135, i8 0, i64 64, i32 1, i1 false) #2
  %161 = add i32 %131, 64
  %162 = extractelement <4 x i32> %153, i32 0
  %163 = extractelement <4 x i32> %153, i32 1
  %164 = extractelement <4 x i32> %153, i32 2
  %165 = extractelement <4 x i32> %153, i32 3
  br label %166

; <label>:166:                                    ; preds = %._crit_edge, %.thread
  %.pre-phi73 = phi i32* [ %.pre72, %._crit_edge ], [ %159, %.thread ]
  %.pre-phi71 = phi i32* [ %.pre70, %._crit_edge ], [ %156, %.thread ]
  %.pre-phi67.in = phi i8* [ %.pre62, %._crit_edge ], [ %147, %.thread ]
  %.pre-phi61.in = phi i8* [ %.pre56, %._crit_edge ], [ %146, %.thread ]
  %.pre-phi55.in = phi i8* [ %.pre50, %._crit_edge ], [ %145, %.thread ]
  %.pre-phi47 = phi i32 [ %.pre46, %._crit_edge ], [ %141, %.thread ]
  %.pre-phi45 = phi i32* [ %.pre44, %._crit_edge ], [ %138, %.thread ]
  %.pre-phi41 = phi i8* [ %.pre40, %._crit_edge ], [ %135, %.thread ]
  %167 = phi i32 [ %93, %._crit_edge ], [ %160, %.thread ]
  %168 = phi i32 [ %130, %._crit_edge ], [ %165, %.thread ]
  %169 = phi i32 [ %129, %._crit_edge ], [ %164, %.thread ]
  %170 = phi i32 [ %128, %._crit_edge ], [ %163, %.thread ]
  %171 = phi i32 [ %127, %._crit_edge ], [ %162, %.thread ]
  %172 = phi i32 [ %125, %._crit_edge ], [ %161, %.thread ]
  %.pre-phi49 = bitcast [20 x i8]* %__v23_pmac23 to i32*
  %.pre-phi53 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 3, i32 1
  %.pre-phi55 = bitcast i8* %.pre-phi55.in to i32*
  %.pre-phi59 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 3, i32 2
  %.pre-phi61 = bitcast i8* %.pre-phi61.in to i32*
  %.pre-phi65 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 3, i32 3
  %.pre-phi67 = bitcast i8* %.pre-phi67.in to i32*
  store i32 %58, i32* %.pre-phi45, align 4
  tail call void @sha1_block_data_order(i32* nonnull %37, i8* nonnull %.pre-phi41, i32 1)
  %173 = add i32 %.pre-phi47, %172
  %__v31_mask_ = ashr i32 %173, 31
  %174 = load i32, i32* %37, align 4
  %175 = and i32 %__v31_mask_, %174
  %176 = or i32 %175, %171
  %177 = load i32, i32* %.pre-phi53, align 4
  %178 = and i32 %177, %__v31_mask_
  %179 = or i32 %170, %178
  %180 = load i32, i32* %.pre-phi59, align 4
  %181 = and i32 %180, %__v31_mask_
  %182 = or i32 %169, %181
  %183 = load i32, i32* %.pre-phi65, align 4
  %184 = and i32 %183, %__v31_mask_
  %185 = or i32 %168, %184
  %186 = load i32, i32* %.pre-phi71, align 4
  %187 = and i32 %186, %__v31_mask_
  %188 = or i32 %167, %187
  %189 = tail call i32 @llvm.bswap.i32(i32 %176) #2
  store i32 %189, i32* %.pre-phi49, align 16
  %190 = tail call i32 @llvm.bswap.i32(i32 %179) #2
  store i32 %190, i32* %.pre-phi55, align 4
  %191 = tail call i32 @llvm.bswap.i32(i32 %182) #2
  store i32 %191, i32* %.pre-phi61, align 4
  %192 = tail call i32 @llvm.bswap.i32(i32 %185) #2
  store i32 %192, i32* %.pre-phi67, align 4
  %193 = tail call i32 @llvm.bswap.i32(i32 %188) #2
  store i32 %193, i32* %.pre-phi73, align 4
  %194 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 2
  %195 = bitcast %SHA_CTX* %194 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %35, i8* nonnull %195, i64 96, i32 1, i1 false) #2
  call void @_sha1_update(i32* nonnull %37, i8* nonnull %__v23_pmac23.sub, i64 20)
  call void @SHA1_Final(i8* nonnull %__v23_pmac23.sub, i32* nonnull %37)
  %196 = zext i32 %16 to i64
  %197 = sub i64 %__v95_lexpr, %196
  %__v34_p_outp = add i64 %197, -20
  %__v34_p_outp.neg = sub i64 20, %197
  %__v32_s_outp = add i64 %__v14_outp.1, %__v34_p_outp.neg
  %__v35_off = add i64 %__v32_s_outp, %53
  %198 = add nuw nsw i32 %16, 20
  %199 = zext i32 %198 to i64
  %200 = add i64 %__v35_off, 4294967295
  br label %201

; <label>:201:                                    ; preds = %201, %166
  %202 = phi i32 [ 0, %166 ], [ %225, %201 ]
  %203 = phi i32 [ 0, %166 ], [ %223, %201 ]
  %__v38_j25 = phi i64 [ 0, %166 ], [ %226, %201 ]
  %__v106_lexpr = add i64 %__v38_j25, %__v34_p_outp
  %204 = getelementptr i8, i8* %__v3__out, i64 %__v106_lexpr
  %205 = load i8, i8* %204, align 1
  %__v39_c = zext i8 %205 to i32
  %206 = sub i64 %__v38_j25, %__v35_off
  %207 = trunc i64 %206 to i32
  %208 = add i32 %207, -20
  %209 = ashr i32 %208, 31
  %210 = xor i32 %23, %__v39_c
  %211 = xor i32 %209, -1
  %212 = and i32 %210, %211
  %213 = or i32 %212, %203
  %214 = sub i64 %200, %__v38_j25
  %215 = trunc i64 %214 to i32
  %216 = ashr i32 %215, 31
  %217 = and i32 %209, %216
  %__v107_lexpr = zext i32 %202 to i64
  %218 = getelementptr [20 x i8], [20 x i8]* %__v23_pmac23, i64 0, i64 %__v107_lexpr
  %219 = load i8, i8* %218, align 1
  %220 = xor i8 %219, %205
  %221 = zext i8 %220 to i32
  %222 = and i32 %217, %221
  %223 = or i32 %222, %213
  %224 = and i32 %217, 1
  %225 = add i32 %202, %224
  %226 = add nuw nsw i64 %__v38_j25, 1
  %exitcond = icmp eq i64 %226, %199
  br i1 %exitcond, label %227, label %201

; <label>:227:                                    ; preds = %201
  %228 = sub i32 0, %223
  %229 = ashr i32 %228, 31
  %230 = xor i32 %229, -1
  %231 = and i32 %20, %230
  ret i32 %231
}

; Function Attrs: nounwind readnone speculatable
declare i32 @llvm.bswap.i32(i32) #1

attributes #0 = { argmemonly nounwind }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { nounwind }
