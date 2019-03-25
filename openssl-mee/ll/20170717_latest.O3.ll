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
  %15 = tail call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m1, i32 %__v19_maxpad, i32 %13) #2
  %16 = tail call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m1, i32 0, i32 1) #2
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

.loopexit:                                        ; preds = %201, %4, %2
  %merge = phi i32 [ 0, %4 ], [ 0, %2 ], [ %211, %201 ]
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
  %__v23_pmac23 = alloca [20 x i8], align 4
  %__v23_pmac23.sub = getelementptr inbounds [20 x i8], [20 x i8]* %__v23_pmac23, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* nonnull %__v23_pmac23.sub, i8 0, i64 20, i32 4, i1 false) #2
  %50 = load i32, i32* %.pre-phi, align 4
  %51 = icmp eq i32 %__v27_j.promoted, 0
  br i1 %51, label %._crit_edge33, label %.lr.ph32

.lr.ph32:                                         ; preds = %43
  %52 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 3, i32 3, i64 0
  %53 = add i32 %44, 7
  %54 = getelementptr %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 3, i32 3, i64 60
  %55 = bitcast i8* %54 to i32*
  %56 = add i32 %44, 72
  %57 = bitcast [20 x i8]* %__v23_pmac23 to i32*
  %58 = getelementptr inbounds [20 x i8], [20 x i8]* %__v23_pmac23, i64 0, i64 4
  %59 = getelementptr %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 3, i32 0, i64 1
  %60 = bitcast i8* %58 to i32*
  %61 = getelementptr inbounds [20 x i8], [20 x i8]* %__v23_pmac23, i64 0, i64 8
  %62 = getelementptr %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 3, i32 0, i64 2
  %63 = bitcast i8* %61 to i32*
  %64 = getelementptr inbounds [20 x i8], [20 x i8]* %__v23_pmac23, i64 0, i64 12
  %65 = getelementptr %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 3, i32 0, i64 3
  %66 = bitcast i8* %64 to i32*
  %67 = getelementptr inbounds [20 x i8], [20 x i8]* %__v23_pmac23, i64 0, i64 16
  %68 = getelementptr %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 3, i32 0, i64 4
  %69 = bitcast i8* %67 to i32*
  %70 = zext i32 %56 to i64
  %71 = zext i32 %53 to i64
  %72 = zext i32 %44 to i64
  %wide.trip.count = zext i32 %__v27_j.promoted to i64
  br label %73

; <label>:73:                                     ; preds = %119, %.lr.ph32
  %74 = phi i32 [ 0, %.lr.ph32 ], [ %120, %119 ]
  %75 = phi i32 [ 0, %.lr.ph32 ], [ %121, %119 ]
  %76 = phi i32 [ 0, %.lr.ph32 ], [ %122, %119 ]
  %77 = phi i32 [ 0, %.lr.ph32 ], [ %123, %119 ]
  %78 = phi i32 [ 0, %.lr.ph32 ], [ %124, %119 ]
  %indvars.iv40 = phi i64 [ 0, %.lr.ph32 ], [ %indvars.iv.next41, %119 ]
  %79 = phi i32 [ %50, %.lr.ph32 ], [ %125, %119 ]
  %__v84_lexpr = zext i32 %79 to i64
  %80 = trunc i64 %indvars.iv40 to i32
  %81 = add i32 %__v14_outp.1, %80
  %__v85_lexpr = zext i32 %81 to i64
  %82 = getelementptr %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 3, i32 3, i64 %__v84_lexpr
  %83 = icmp ult i64 %indvars.iv40, %72
  %84 = getelementptr i8, i8* %__v3__out, i64 %__v85_lexpr
  %85 = load i8, i8* %84, align 1
  %86 = icmp eq i64 %indvars.iv40, %72
  %87 = tail call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %86, i32 128, i32 0) #2
  %88 = zext i8 %85 to i32
  %89 = and i32 %87, 255
  %90 = tail call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %83, i32 %88, i32 %89) #2
  %91 = trunc i32 %90 to i8
  store i8 %91, i8* %82, align 1
  %92 = add i32 %79, 1
  %93 = icmp eq i32 %92, 64
  br i1 %93, label %101, label %119

._crit_edge33:                                    ; preds = %119, %43
  %94 = phi i32 [ 0, %43 ], [ %120, %119 ]
  %95 = phi i32 [ 0, %43 ], [ %121, %119 ]
  %96 = phi i32 [ 0, %43 ], [ %122, %119 ]
  %97 = phi i32 [ 0, %43 ], [ %123, %119 ]
  %98 = phi i32 [ 0, %43 ], [ %124, %119 ]
  %99 = phi i32 [ %50, %43 ], [ %125, %119 ]
  %100 = icmp ult i32 %99, 64
  br i1 %100, label %126, label %.thread

; <label>:101:                                    ; preds = %73
  %__m17 = icmp ugt i64 %indvars.iv40, %71
  %102 = load i32, i32* %55, align 4
  %103 = tail call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m17, i32 %49, i32 %102) #2
  store i32 %103, i32* %55, align 4
  tail call void @sha1_block_data_order(%SHA_CTX* nonnull %25, i8* nonnull %52, i32 1)
  %104 = icmp ult i64 %indvars.iv40, %70
  %105 = zext i1 %104 to i32
  %106 = tail call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %__m17, i32 %105, i32 0) #2
  %107 = and i32 %106, 1
  %108 = icmp ne i32 %107, 0
  %109 = load i32, i32* %29, align 4
  %110 = tail call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %108, i32 %109, i32 %78) #2
  store i32 %110, i32* %57, align 4
  %111 = load i32, i32* %59, align 4
  %112 = tail call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %108, i32 %111, i32 %77) #2
  store i32 %112, i32* %60, align 4
  %113 = load i32, i32* %62, align 4
  %114 = tail call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %108, i32 %113, i32 %76) #2
  store i32 %114, i32* %63, align 4
  %115 = load i32, i32* %65, align 4
  %116 = tail call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %108, i32 %115, i32 %75) #2
  store i32 %116, i32* %66, align 4
  %117 = load i32, i32* %68, align 4
  %118 = tail call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %108, i32 %117, i32 %74) #2
  store i32 %118, i32* %69, align 4
  br label %119

; <label>:119:                                    ; preds = %73, %101
  %120 = phi i32 [ %74, %73 ], [ %118, %101 ]
  %121 = phi i32 [ %75, %73 ], [ %116, %101 ]
  %122 = phi i32 [ %76, %73 ], [ %114, %101 ]
  %123 = phi i32 [ %77, %73 ], [ %112, %101 ]
  %124 = phi i32 [ %78, %73 ], [ %110, %101 ]
  %125 = phi i32 [ %92, %73 ], [ 0, %101 ]
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1
  %exitcond = icmp eq i64 %indvars.iv.next41, %wide.trip.count
  br i1 %exitcond, label %._crit_edge33, label %73

; <label>:126:                                    ; preds = %._crit_edge33
  %127 = zext i32 %99 to i64
  %128 = add i32 %__v27_j.promoted, 64
  %scevgep = getelementptr %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 0, i32 0, i64 116
  %scevgep39 = bitcast i32* %scevgep to i8*
  %uglygep = getelementptr i8, i8* %scevgep39, i64 %127
  %129 = sub i32 63, %99
  %130 = zext i32 %129 to i64
  %131 = add nuw nsw i64 %130, 1
  call void @llvm.memset.p0i8.i64(i8* %uglygep, i8 0, i64 %131, i32 1, i1 false)
  %132 = sub i32 %128, %99
  %133 = icmp ugt i32 %99, 56
  br i1 %133, label %.thread, label %._crit_edge

._crit_edge:                                      ; preds = %126
  %.pre43 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 3, i32 3, i64 0
  %.pre45 = getelementptr %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 3, i32 3, i64 60
  %.pre47 = bitcast i8* %.pre45 to i32*
  %.pre49 = add i32 %44, 73
  %.pre51 = bitcast [20 x i8]* %__v23_pmac23 to i32*
  %.pre53 = getelementptr inbounds [20 x i8], [20 x i8]* %__v23_pmac23, i64 0, i64 4
  %.pre55 = getelementptr %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 3, i32 0, i64 1
  %.pre57 = bitcast i8* %.pre53 to i32*
  %.pre59 = getelementptr inbounds [20 x i8], [20 x i8]* %__v23_pmac23, i64 0, i64 8
  %.pre61 = getelementptr %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 3, i32 0, i64 2
  %.pre63 = bitcast i8* %.pre59 to i32*
  %.pre65 = getelementptr inbounds [20 x i8], [20 x i8]* %__v23_pmac23, i64 0, i64 12
  %.pre67 = getelementptr %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 3, i32 0, i64 3
  %.pre69 = bitcast i8* %.pre65 to i32*
  %.pre71 = getelementptr inbounds [20 x i8], [20 x i8]* %__v23_pmac23, i64 0, i64 16
  %.pre73 = getelementptr %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 3, i32 0, i64 4
  %.pre75 = bitcast i8* %.pre71 to i32*
  br label %171

.thread:                                          ; preds = %._crit_edge33, %126
  %134 = phi i32 [ %132, %126 ], [ %__v27_j.promoted, %._crit_edge33 ]
  %135 = add i32 %44, 8
  %__m13 = icmp ult i32 %135, %134
  %136 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 3, i32 3, i64 0
  %137 = getelementptr %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 3, i32 3, i64 60
  %138 = bitcast i8* %137 to i32*
  %139 = load i32, i32* %138, align 4
  %140 = tail call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m13, i32 %49, i32 %139) #2
  store i32 %140, i32* %138, align 4
  tail call void @sha1_block_data_order(%SHA_CTX* nonnull %25, i8* nonnull %136, i32 1)
  %141 = add i32 %44, 73
  %142 = icmp ult i32 %134, %141
  %143 = zext i1 %142 to i32
  %144 = tail call i32 asm "testb $1, $1; mov $3, $0; cmovnz $2, $0", "=&r,r,r,r,~{flags}"(i1 %__m13, i32 %143, i32 0) #2
  %145 = and i32 %144, 1
  %146 = icmp ne i32 %145, 0
  %147 = load i32, i32* %29, align 4
  %148 = bitcast [20 x i8]* %__v23_pmac23 to i32*
  %149 = tail call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %146, i32 %147, i32 %98) #2
  store i32 %149, i32* %148, align 4
  %150 = getelementptr inbounds [20 x i8], [20 x i8]* %__v23_pmac23, i64 0, i64 4
  %151 = getelementptr %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 3, i32 0, i64 1
  %152 = load i32, i32* %151, align 4
  %153 = bitcast i8* %150 to i32*
  %154 = tail call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %146, i32 %152, i32 %97) #2
  store i32 %154, i32* %153, align 4
  %155 = getelementptr inbounds [20 x i8], [20 x i8]* %__v23_pmac23, i64 0, i64 8
  %156 = getelementptr %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 3, i32 0, i64 2
  %157 = load i32, i32* %156, align 4
  %158 = bitcast i8* %155 to i32*
  %159 = tail call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %146, i32 %157, i32 %96) #2
  store i32 %159, i32* %158, align 4
  %160 = getelementptr inbounds [20 x i8], [20 x i8]* %__v23_pmac23, i64 0, i64 12
  %161 = getelementptr %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 3, i32 0, i64 3
  %162 = load i32, i32* %161, align 4
  %163 = bitcast i8* %160 to i32*
  %164 = tail call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %146, i32 %162, i32 %95) #2
  store i32 %164, i32* %163, align 4
  %165 = getelementptr inbounds [20 x i8], [20 x i8]* %__v23_pmac23, i64 0, i64 16
  %166 = getelementptr %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 3, i32 0, i64 4
  %167 = load i32, i32* %166, align 4
  %168 = bitcast i8* %165 to i32*
  %169 = tail call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %146, i32 %167, i32 %94) #2
  store i32 %169, i32* %168, align 4
  tail call void @llvm.memset.p0i8.i64(i8* nonnull %136, i8 0, i64 64, i32 1, i1 false) #2
  %170 = add i32 %134, 64
  br label %171

; <label>:171:                                    ; preds = %._crit_edge, %.thread
  %.pre-phi76 = phi i32* [ %.pre75, %._crit_edge ], [ %168, %.thread ]
  %.pre-phi74 = phi i32* [ %.pre73, %._crit_edge ], [ %166, %.thread ]
  %.pre-phi70 = phi i32* [ %.pre69, %._crit_edge ], [ %163, %.thread ]
  %.pre-phi68 = phi i32* [ %.pre67, %._crit_edge ], [ %161, %.thread ]
  %.pre-phi64 = phi i32* [ %.pre63, %._crit_edge ], [ %158, %.thread ]
  %.pre-phi62 = phi i32* [ %.pre61, %._crit_edge ], [ %156, %.thread ]
  %.pre-phi58 = phi i32* [ %.pre57, %._crit_edge ], [ %153, %.thread ]
  %.pre-phi56 = phi i32* [ %.pre55, %._crit_edge ], [ %151, %.thread ]
  %.pre-phi52 = phi i32* [ %.pre51, %._crit_edge ], [ %148, %.thread ]
  %.pre-phi50 = phi i32 [ %.pre49, %._crit_edge ], [ %141, %.thread ]
  %.pre-phi48 = phi i32* [ %.pre47, %._crit_edge ], [ %138, %.thread ]
  %.pre-phi44 = phi i8* [ %.pre43, %._crit_edge ], [ %136, %.thread ]
  %172 = phi i32 [ %94, %._crit_edge ], [ %169, %.thread ]
  %173 = phi i32 [ %95, %._crit_edge ], [ %164, %.thread ]
  %174 = phi i32 [ %96, %._crit_edge ], [ %159, %.thread ]
  %175 = phi i32 [ %97, %._crit_edge ], [ %154, %.thread ]
  %176 = phi i32 [ %98, %._crit_edge ], [ %149, %.thread ]
  %177 = phi i32 [ %132, %._crit_edge ], [ %170, %.thread ]
  store i32 %49, i32* %.pre-phi48, align 4
  tail call void @sha1_block_data_order(%SHA_CTX* nonnull %25, i8* nonnull %.pre-phi44, i32 1)
  %__m3 = icmp ult i32 %177, %.pre-phi50
  %178 = load i32, i32* %29, align 4
  %179 = tail call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m3, i32 %178, i32 %176) #2
  store i32 %179, i32* %.pre-phi52, align 4
  %180 = load i32, i32* %.pre-phi56, align 4
  %181 = tail call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m3, i32 %180, i32 %175) #2
  store i32 %181, i32* %.pre-phi58, align 4
  %182 = load i32, i32* %.pre-phi62, align 4
  %183 = tail call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m3, i32 %182, i32 %174) #2
  store i32 %183, i32* %.pre-phi64, align 4
  %184 = load i32, i32* %.pre-phi68, align 4
  %185 = tail call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m3, i32 %184, i32 %173) #2
  store i32 %185, i32* %.pre-phi70, align 4
  %186 = load i32, i32* %.pre-phi74, align 4
  %187 = tail call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %__m3, i32 %186, i32 %172) #2
  %188 = tail call i32 @llvm.bswap.i32(i32 %179) #2
  store i32 %188, i32* %.pre-phi52, align 4
  %189 = tail call i32 @llvm.bswap.i32(i32 %181) #2
  store i32 %189, i32* %.pre-phi58, align 4
  %190 = tail call i32 @llvm.bswap.i32(i32 %183) #2
  store i32 %190, i32* %.pre-phi64, align 4
  %191 = tail call i32 @llvm.bswap.i32(i32 %185) #2
  store i32 %191, i32* %.pre-phi70, align 4
  %192 = tail call i32 @llvm.bswap.i32(i32 %187) #2
  store i32 %192, i32* %.pre-phi76, align 4
  %193 = getelementptr inbounds %EVP_AES_HMAC_SHA1, %EVP_AES_HMAC_SHA1* %__v2_key, i64 0, i32 2
  %194 = bitcast %SHA_CTX* %193 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %27, i8* nonnull %194, i64 96, i32 1, i1 false) #2
  call void @_sha1_update(i32* nonnull %29, i8* nonnull %__v23_pmac23.sub, i64 20)
  call void @SHA1_Final(i8* nonnull %__v23_pmac23.sub, i32* nonnull %29)
  %195 = add i32 %44, %__v14_outp.1
  %__v30_s_outp = zext i32 %195 to i64
  %196 = zext i32 %__v19_maxpad to i64
  %197 = add nuw nsw i32 %__v19_maxpad, 20
  %198 = add i64 %__v69___v3__out_len, -21
  %__v31_p_outp = sub i64 %198, %196
  %199 = add nuw nsw i64 %__v30_s_outp, 20
  %200 = zext i32 %197 to i64
  br label %201

; <label>:201:                                    ; preds = %171, %201
  %indvars.iv = phi i64 [ 0, %171 ], [ %indvars.iv.next, %201 ]
  %202 = phi i32 [ 0, %171 ], [ %214, %201 ]
  %__v16_ret.026 = phi i32 [ %16, %171 ], [ %211, %201 ]
  %__v93_lexpr = add i64 %__v31_p_outp, %indvars.iv
  %203 = getelementptr i8, i8* %__v3__out, i64 %__v93_lexpr
  %204 = load i8, i8* %203, align 1
  %__v34_c = zext i8 %204 to i32
  %__m5 = icmp uge i64 %__v93_lexpr, %199
  %__m6 = icmp ne i32 %15, %__v34_c
  %205 = and i1 %__m5, %__m6
  %206 = call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %205, i32 0, i32 %__v16_ret.026) #2
  %__m8 = xor i1 %__m5, true
  %__m9 = icmp uge i64 %__v93_lexpr, %__v30_s_outp
  %__v94_lexpr = zext i32 %202 to i64
  %207 = getelementptr [20 x i8], [20 x i8]* %__v23_pmac23, i64 0, i64 %__v94_lexpr
  %208 = load i8, i8* %207, align 1
  %__m10 = icmp ne i8 %204, %208
  %209 = and i1 %__m9, %__m10
  %210 = and i1 %209, %__m8
  %211 = call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %210, i32 0, i32 %206) #2
  %212 = add i32 %202, 1
  %213 = and i1 %__m9, %__m8
  %214 = call i32 asm "testb $1, $1; cmovnz $2, $0", "=r,r,r,0,~{flags}"(i1 %213, i32 %212, i32 %202) #2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %215 = icmp ult i64 %indvars.iv.next, %200
  br i1 %215, label %201, label %.loopexit
}

; Function Attrs: nounwind readnone speculatable
declare i32 @llvm.bswap.i32(i32) #1

attributes #0 = { argmemonly nounwind }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { nounwind }
