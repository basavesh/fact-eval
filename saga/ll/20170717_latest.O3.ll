; ModuleID = './20170717_latest.O3.bc'
source_filename = "Module"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%SHA_CTX = type { [5 x i32], i32, i32, [64 x i8], i32 }
%EVP_AES_HMAC_SHA1 = type { %AES_KEY, %SHA_CTX, %SHA_CTX, %SHA_CTX, i64, [16 x i8] }
%AES_KEY = type { [60 x i32], i32 }

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #0

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #0

declare void @SHA1_Final(i8*, i32*) local_unnamed_addr

declare void @_sha1_update(i32*, i8*, i64) local_unnamed_addr

declare void @sha1_block_data_order(%SHA_CTX*, i8*, i32) local_unnamed_addr

declare void @aesni_cbc_encrypt(i8*, i8*, i64, i32*, i8*, i32) local_unnamed_addr

define i32 @_aesni_cbc_hmac_sha1_cipher(i8* %__v1_iv, %EVP_AES_HMAC_SHA1* %__v2_key, i8* %__v3__out, i64 %__v69___v3__out_len, i8* %__v4__in, i64 %__v70___v4__in_len, i16 %__v5_tls_ver) local_unnamed_addr {
entry:
  %0 = trunc i64 %__v69___v3__out_len to i32
  %1 = icmp ugt i16 %__v5_tls_ver, 769
  br i1 %1, label %2, label %4

; <label>:2:                                      ; preds = %entry
  %3 = icmp ult i32 %0, 37
  br i1 %3, label %.loopexit, label %32

; <label>:4:                                      ; preds = %entry
  %5 = icmp ult i32 %0, 21
  br i1 %5, label %.loopexit, label %6

; <label>:6:                                      ; preds = %4, %32
  %__v13_inp.0 = phi i64 [ 16, %32 ], [ 0, %4 ]
  %__v14_outp.0 = phi i32 [ 16, %32 ], [ 0, %4 ]
  %__v15__len.0 = phi i32 [ %33, %32 ], [ %0, %4 ]
  %__v78_lexpr = zext i32 %__v14_outp.0 to i64
  %7 = getelementptr i8, i8* %__v4__in, i64 %__v13_inp.0
  %8 = getelementptr i8, i8* %__v3__out, i64 %__v78_lexpr
  %9 = zext i32 %__v15__len.0 to i64
  %10 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 0, i32 0, i64 0
  tail call void @aesni_cbc_encrypt(i8* %7, i8* %8, i64 %9, i32* %10, i8* %__v1_iv, i32 0)
  %__v80_lexpr = add i64 %__v69___v3__out_len, -1
  %11 = getelementptr i8, i8* %__v3__out, i64 %__v80_lexpr
  %12 = load i8, i8* %11, align 1
  %13 = zext i8 %12 to i32
  %__v18_tmppad = add i32 %__v15__len.0, -21
  %14 = icmp ult i32 %__v18_tmppad, 255
  %__v19_maxpad = select i1 %14, i32 %__v18_tmppad, i32 255
  %__m1 = icmp ult i32 %__v19_maxpad, %13
  %15 = select i1 %__m1, i32 %__v19_maxpad, i32 %13
  %not.__m1 = xor i1 %__m1, true
  %16 = zext i1 %not.__m1 to i32
  %17 = sub i32 %__v18_tmppad, %15
  %18 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 5, i64 0
  %19 = getelementptr %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 5, i64 11
  %20 = trunc i32 %17 to i16
  %21 = lshr i16 %20, 8
  %22 = trunc i16 %21 to i8
  store i8 %22, i8* %19, align 1
  %23 = getelementptr %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 5, i64 12
  %24 = trunc i32 %17 to i8
  store i8 %24, i8* %23, align 1
  %25 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 3
  %26 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 1
  %27 = bitcast %SHA_CTX* %25 to i8*
  %28 = bitcast %SHA_CTX* %26 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %27, i8* nonnull %28, i64 96, i32 1, i1 false) #2
  %29 = getelementptr inbounds %SHA_CTX, %SHA_CTX* %25, i64 0, i32 0, i64 0
  tail call void @_sha1_update(i32* nonnull %29, i8* nonnull %18, i64 13)
  %30 = add i32 %__v15__len.0, -20
  %31 = icmp ugt i32 %30, 319
  br i1 %31, label %34, label %._crit_edge42

._crit_edge42:                                    ; preds = %6
  %.pre = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 3, i32 4
  br label %43

.loopexit:                                        ; preds = %179, %4, %2
  %merge = phi i32 [ 0, %4 ], [ 0, %2 ], [ %187, %179 ]
  ret i32 %merge

; <label>:32:                                     ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %__v1_iv, i8* %__v4__in, i64 16, i32 1, i1 false) #2
  %33 = add i32 %0, -16
  br label %6

; <label>:34:                                     ; preds = %6
  %35 = add i32 %__v15__len.0, -276
  %36 = and i32 %35, -64
  %37 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 3, i32 4
  %38 = load i32, i32* %37, align 4
  %__v21_j = sub i32 %36, %38
  %39 = zext i32 %__v21_j to i64
  tail call void @_sha1_update(i32* nonnull %29, i8* %8, i64 %39)
  %40 = add i32 %__v21_j, %__v14_outp.0
  %41 = sub i32 %30, %__v21_j
  %42 = sub i32 %17, %__v21_j
  br label %43

; <label>:43:                                     ; preds = %._crit_edge42, %34
  %.pre-phi = phi i32* [ %.pre, %._crit_edge42 ], [ %37, %34 ]
  %44 = phi i32 [ %17, %._crit_edge42 ], [ %42, %34 ]
  %__v14_outp.1 = phi i32 [ %__v14_outp.0, %._crit_edge42 ], [ %40, %34 ]
  %__v27_j.promoted = phi i32 [ %30, %._crit_edge42 ], [ %41, %34 ]
  %45 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 3, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = shl i32 %44, 3
  %48 = add i32 %47, %46
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #2
  %__v23_pmac23 = alloca [20 x i8], align 16
  %__v23_pmac23.sub = getelementptr inbounds [20 x i8], [20 x i8]* %__v23_pmac23, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* nonnull %__v23_pmac23.sub, i8 0, i64 20, i32 16, i1 false) #2
  %50 = load i32, i32* %.pre-phi, align 4
  %51 = icmp eq i32 %__v27_j.promoted, 0
  br i1 %51, label %._crit_edge33, label %.lr.ph32

.lr.ph32:                                         ; preds = %43
  %52 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 3, i32 3, i64 0
  %53 = add i32 %44, 7
  %54 = getelementptr %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 3, i32 3, i64 60
  %55 = bitcast i8* %54 to i32*
  %56 = add i32 %44, 72
  %57 = getelementptr inbounds [20 x i8], [20 x i8]* %__v23_pmac23, i64 0, i64 16
  %58 = getelementptr %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 3, i32 0, i64 4
  %59 = bitcast i8* %57 to i32*
  %60 = zext i32 %56 to i64
  %61 = zext i32 %53 to i64
  %62 = zext i32 %44 to i64
  %wide.trip.count = zext i32 %__v27_j.promoted to i64
  %63 = bitcast %SHA_CTX* %25 to <4 x i32>*
  %64 = bitcast [20 x i8]* %__v23_pmac23 to <4 x i32>*
  br label %65

; <label>:65:                                     ; preds = %101, %.lr.ph32
  %66 = phi i32 [ 0, %.lr.ph32 ], [ %102, %101 ]
  %indvars.iv40 = phi i64 [ 0, %.lr.ph32 ], [ %indvars.iv.next41, %101 ]
  %67 = phi i32 [ %50, %.lr.ph32 ], [ %103, %101 ]
  %68 = phi <4 x i32> [ zeroinitializer, %.lr.ph32 ], [ %104, %101 ]
  %__v84_lexpr = zext i32 %67 to i64
  %69 = trunc i64 %indvars.iv40 to i32
  %70 = add i32 %__v14_outp.1, %69
  %__v85_lexpr = zext i32 %70 to i64
  %71 = getelementptr %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 3, i32 3, i64 %__v84_lexpr
  %72 = icmp ult i64 %indvars.iv40, %62
  %73 = getelementptr i8, i8* %__v3__out, i64 %__v85_lexpr
  %74 = load i8, i8* %73, align 1
  %75 = icmp eq i64 %indvars.iv40, %62
  %76 = tail call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %75, i32 128, i32 0) #2
  %77 = zext i8 %74 to i32
  %78 = and i32 %76, 255
  %79 = tail call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %72, i32 %77, i32 %78) #2
  %80 = trunc i32 %79 to i8
  store i8 %80, i8* %71, align 1
  %81 = add i32 %67, 1
  %82 = icmp eq i32 %81, 64
  br i1 %82, label %87, label %101

._crit_edge33:                                    ; preds = %101, %43
  %83 = phi i32 [ 0, %43 ], [ %102, %101 ]
  %84 = phi i32 [ %50, %43 ], [ %103, %101 ]
  %85 = phi <4 x i32> [ zeroinitializer, %43 ], [ %104, %101 ]
  %86 = icmp ult i32 %84, 64
  br i1 %86, label %105, label %.thread

; <label>:87:                                     ; preds = %65
  %__m17 = icmp ugt i64 %indvars.iv40, %61
  %88 = load i32, i32* %55, align 4
  %89 = select i1 %__m17, i32 %49, i32 %88
  store i32 %89, i32* %55, align 4
  tail call void @sha1_block_data_order(%SHA_CTX* nonnull %25, i8* nonnull %52, i32 1)
  %90 = icmp ult i64 %indvars.iv40, %60
  %91 = zext i1 %90 to i32
  %92 = tail call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %__m17, i32 %91, i32 0) #2
  %93 = and i32 %92, 1
  %94 = icmp ne i32 %93, 0
  %95 = load <4 x i32>, <4 x i32>* %63, align 4
  %96 = insertelement <4 x i1> undef, i1 %94, i32 0
  %97 = shufflevector <4 x i1> %96, <4 x i1> undef, <4 x i32> zeroinitializer
  %98 = select <4 x i1> %97, <4 x i32> %95, <4 x i32> %68
  store <4 x i32> %98, <4 x i32>* %64, align 16
  %99 = load i32, i32* %58, align 4
  %100 = select i1 %94, i32 %99, i32 %66
  store i32 %100, i32* %59, align 16
  br label %101

; <label>:101:                                    ; preds = %65, %87
  %102 = phi i32 [ %66, %65 ], [ %100, %87 ]
  %103 = phi i32 [ %81, %65 ], [ 0, %87 ]
  %104 = phi <4 x i32> [ %68, %65 ], [ %98, %87 ]
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1
  %exitcond = icmp eq i64 %indvars.iv.next41, %wide.trip.count
  br i1 %exitcond, label %._crit_edge33, label %65

; <label>:105:                                    ; preds = %._crit_edge33
  %106 = zext i32 %84 to i64
  %107 = add i32 %__v27_j.promoted, 64
  %scevgep = getelementptr %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 0, i32 0, i64 116
  %scevgep39 = bitcast i32* %scevgep to i8*
  %uglygep = getelementptr i8, i8* %scevgep39, i64 %106
  %108 = sub i32 63, %84
  %109 = zext i32 %108 to i64
  %110 = add nuw nsw i64 %109, 1
  call void @llvm.memset.p0i8.i64(i8* %uglygep, i8 0, i64 %110, i32 1, i1 false)
  %111 = sub i32 %107, %84
  %112 = icmp ugt i32 %84, 56
  br i1 %112, label %.thread, label %._crit_edge

._crit_edge:                                      ; preds = %105
  %.pre43 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 3, i32 3, i64 0
  %.pre45 = getelementptr %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 3, i32 3, i64 60
  %.pre47 = bitcast i8* %.pre45 to i32*
  %.pre49 = add i32 %44, 73
  %.pre53 = getelementptr inbounds [20 x i8], [20 x i8]* %__v23_pmac23, i64 0, i64 4
  %.pre59 = getelementptr inbounds [20 x i8], [20 x i8]* %__v23_pmac23, i64 0, i64 8
  %.pre65 = getelementptr inbounds [20 x i8], [20 x i8]* %__v23_pmac23, i64 0, i64 12
  %.pre71 = getelementptr inbounds [20 x i8], [20 x i8]* %__v23_pmac23, i64 0, i64 16
  %.pre73 = getelementptr %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 3, i32 0, i64 4
  %.pre75 = bitcast i8* %.pre71 to i32*
  %113 = extractelement <4 x i32> %85, i32 0
  %114 = extractelement <4 x i32> %85, i32 1
  %115 = extractelement <4 x i32> %85, i32 2
  %116 = extractelement <4 x i32> %85, i32 3
  br label %149

.thread:                                          ; preds = %._crit_edge33, %105
  %117 = phi i32 [ %111, %105 ], [ %__v27_j.promoted, %._crit_edge33 ]
  %118 = add i32 %44, 8
  %__m13 = icmp ult i32 %118, %117
  %119 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 3, i32 3, i64 0
  %120 = getelementptr %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 3, i32 3, i64 60
  %121 = bitcast i8* %120 to i32*
  %122 = load i32, i32* %121, align 4
  %123 = select i1 %__m13, i32 %49, i32 %122
  store i32 %123, i32* %121, align 4
  tail call void @sha1_block_data_order(%SHA_CTX* nonnull %25, i8* nonnull %119, i32 1)
  %124 = add i32 %44, 73
  %125 = icmp ult i32 %117, %124
  %126 = zext i1 %125 to i32
  %127 = tail call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %__m13, i32 %126, i32 0) #2
  %128 = and i32 %127, 1
  %129 = icmp ne i32 %128, 0
  %130 = getelementptr inbounds [20 x i8], [20 x i8]* %__v23_pmac23, i64 0, i64 4
  %131 = getelementptr inbounds [20 x i8], [20 x i8]* %__v23_pmac23, i64 0, i64 8
  %132 = getelementptr inbounds [20 x i8], [20 x i8]* %__v23_pmac23, i64 0, i64 12
  %133 = bitcast %SHA_CTX* %25 to <4 x i32>*
  %134 = load <4 x i32>, <4 x i32>* %133, align 4
  %135 = insertelement <4 x i1> undef, i1 %129, i32 0
  %136 = shufflevector <4 x i1> %135, <4 x i1> undef, <4 x i32> zeroinitializer
  %137 = select <4 x i1> %136, <4 x i32> %134, <4 x i32> %85
  %138 = bitcast [20 x i8]* %__v23_pmac23 to <4 x i32>*
  store <4 x i32> %137, <4 x i32>* %138, align 16
  %139 = getelementptr inbounds [20 x i8], [20 x i8]* %__v23_pmac23, i64 0, i64 16
  %140 = getelementptr %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 3, i32 0, i64 4
  %141 = load i32, i32* %140, align 4
  %142 = bitcast i8* %139 to i32*
  %143 = select i1 %129, i32 %141, i32 %83
  store i32 %143, i32* %142, align 16
  tail call void @llvm.memset.p0i8.i64(i8* nonnull %119, i8 0, i64 64, i32 1, i1 false) #2
  %144 = add i32 %117, 64
  %145 = extractelement <4 x i32> %137, i32 0
  %146 = extractelement <4 x i32> %137, i32 1
  %147 = extractelement <4 x i32> %137, i32 2
  %148 = extractelement <4 x i32> %137, i32 3
  br label %149

; <label>:149:                                    ; preds = %._crit_edge, %.thread
  %.pre-phi76 = phi i32* [ %.pre75, %._crit_edge ], [ %142, %.thread ]
  %.pre-phi74 = phi i32* [ %.pre73, %._crit_edge ], [ %140, %.thread ]
  %.pre-phi70.in = phi i8* [ %.pre65, %._crit_edge ], [ %132, %.thread ]
  %.pre-phi64.in = phi i8* [ %.pre59, %._crit_edge ], [ %131, %.thread ]
  %.pre-phi58.in = phi i8* [ %.pre53, %._crit_edge ], [ %130, %.thread ]
  %.pre-phi50 = phi i32 [ %.pre49, %._crit_edge ], [ %124, %.thread ]
  %.pre-phi48 = phi i32* [ %.pre47, %._crit_edge ], [ %121, %.thread ]
  %.pre-phi44 = phi i8* [ %.pre43, %._crit_edge ], [ %119, %.thread ]
  %150 = phi i32 [ %83, %._crit_edge ], [ %143, %.thread ]
  %151 = phi i32 [ %116, %._crit_edge ], [ %148, %.thread ]
  %152 = phi i32 [ %115, %._crit_edge ], [ %147, %.thread ]
  %153 = phi i32 [ %114, %._crit_edge ], [ %146, %.thread ]
  %154 = phi i32 [ %113, %._crit_edge ], [ %145, %.thread ]
  %155 = phi i32 [ %111, %._crit_edge ], [ %144, %.thread ]
  %.pre-phi52 = bitcast [20 x i8]* %__v23_pmac23 to i32*
  %.pre-phi56 = getelementptr %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 3, i32 0, i64 1
  %.pre-phi58 = bitcast i8* %.pre-phi58.in to i32*
  %.pre-phi62 = getelementptr %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 3, i32 0, i64 2
  %.pre-phi64 = bitcast i8* %.pre-phi64.in to i32*
  %.pre-phi68 = getelementptr %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 3, i32 0, i64 3
  %.pre-phi70 = bitcast i8* %.pre-phi70.in to i32*
  store i32 %49, i32* %.pre-phi48, align 4
  tail call void @sha1_block_data_order(%SHA_CTX* nonnull %25, i8* nonnull %.pre-phi44, i32 1)
  %__m3 = icmp ult i32 %155, %.pre-phi50
  %156 = load i32, i32* %29, align 4
  %157 = select i1 %__m3, i32 %156, i32 %154
  %158 = load i32, i32* %.pre-phi56, align 4
  %159 = select i1 %__m3, i32 %158, i32 %153
  %160 = load i32, i32* %.pre-phi62, align 4
  %161 = select i1 %__m3, i32 %160, i32 %152
  %162 = load i32, i32* %.pre-phi68, align 4
  %163 = select i1 %__m3, i32 %162, i32 %151
  %164 = load i32, i32* %.pre-phi74, align 4
  %165 = select i1 %__m3, i32 %164, i32 %150
  %166 = tail call i32 @llvm.bswap.i32(i32 %157) #2
  store i32 %166, i32* %.pre-phi52, align 16
  %167 = tail call i32 @llvm.bswap.i32(i32 %159) #2
  store i32 %167, i32* %.pre-phi58, align 4
  %168 = tail call i32 @llvm.bswap.i32(i32 %161) #2
  store i32 %168, i32* %.pre-phi64, align 4
  %169 = tail call i32 @llvm.bswap.i32(i32 %163) #2
  store i32 %169, i32* %.pre-phi70, align 4
  %170 = tail call i32 @llvm.bswap.i32(i32 %165) #2
  store i32 %170, i32* %.pre-phi76, align 4
  %171 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 2
  %172 = bitcast %SHA_CTX* %171 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %27, i8* nonnull %172, i64 96, i32 1, i1 false) #2
  call void @_sha1_update(i32* nonnull %29, i8* nonnull %__v23_pmac23.sub, i64 20)
  call void @SHA1_Final(i8* nonnull %__v23_pmac23.sub, i32* nonnull %29)
  %173 = add i32 %44, %__v14_outp.1
  %__v30_s_outp = zext i32 %173 to i64
  %174 = zext i32 %__v19_maxpad to i64
  %175 = add nuw nsw i32 %__v19_maxpad, 20
  %176 = add i64 %__v69___v3__out_len, -21
  %__v31_p_outp = sub i64 %176, %174
  %177 = add nuw nsw i64 %__v30_s_outp, 20
  %178 = zext i32 %175 to i64
  br label %179

; <label>:179:                                    ; preds = %149, %179
  %indvars.iv = phi i64 [ 0, %149 ], [ %indvars.iv.next, %179 ]
  %180 = phi i32 [ 0, %149 ], [ %190, %179 ]
  %__v16_ret.026 = phi i32 [ %16, %149 ], [ %187, %179 ]
  %__v93_lexpr = add i64 %__v31_p_outp, %indvars.iv
  %181 = getelementptr i8, i8* %__v3__out, i64 %__v93_lexpr
  %182 = load i8, i8* %181, align 1
  %__v34_c = zext i8 %182 to i32
  %__m5 = icmp uge i64 %__v93_lexpr, %177
  %__m6 = icmp ne i32 %15, %__v34_c
  %__m8 = xor i1 %__m5, true
  %__m9 = icmp uge i64 %__v93_lexpr, %__v30_s_outp
  %__v94_lexpr = zext i32 %180 to i64
  %183 = getelementptr [20 x i8], [20 x i8]* %__v23_pmac23, i64 0, i64 %__v94_lexpr
  %184 = load i8, i8* %183, align 1
  %__m10 = icmp ne i8 %182, %184
  %185 = and i1 %__m9, %__m10
  %186 = select i1 %__m5, i1 %__m6, i1 %185
  %187 = select i1 %186, i32 0, i32 %__v16_ret.026
  %188 = and i1 %__m9, %__m8
  %189 = zext i1 %188 to i32
  %190 = add i32 %180, %189
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %191 = icmp ult i64 %indvars.iv.next, %178
  br i1 %191, label %179, label %.loopexit
}

; Function Attrs: nounwind readnone speculatable
declare i32 @llvm.bswap.i32(i32) #1

attributes #0 = { argmemonly nounwind }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { nounwind }
