; ModuleID = '/llk/IR/drivers/crypto/bcm/spu.c_pt.bc'
source_filename = "../drivers/crypto/bcm/spu.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spu_hash_parms = type { i32, i32, i32, i8, ptr, i16, i16, i32 }
%struct.spu_aead_parms = type { i32, i16, i8, i8, i8, i32, i32 }
%struct.spu_request_opts = type { i8, i8, i8, i8, i8, i8 }
%struct.spu_cipher_parms = type { i32, i32, i32, ptr, i16, ptr, i16 }
%struct.MHEADER = type { i8, i8, i16 }
%struct.SPUHEADER = type { %struct.MHEADER, i32, %struct.SCTX }
%struct.SCTX = type { i32, i32, i32 }
%struct.BDESC_HEADER = type { i16, i16, i16, i16, i16, i16 }
%struct.BD_HEADER = type { i16, i16 }

@.str = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"md5\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"sha1\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"sha224\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"sha256\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"aes\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"sha384\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"sha512\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"sha3_224\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"sha3_256\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"sha3_384\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"sha3_512\00", align 1
@hash_alg_name = dso_local local_unnamed_addr global [12 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11], align 4
@.str.12 = private unnamed_addr constant [9 x i8] c"ccm(aes)\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"gcm(aes)\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"authenc\00", align 1
@aead_alg_name = dso_local local_unnamed_addr global [3 x ptr] [ptr @.str.12, ptr @.str.13, ptr @.str.14], align 4
@.str.102 = private unnamed_addr constant [46 x i8] c"\013%s() Warning: Error result from SPU: %#08x\0A\00", align 1
@__func__.spum_status_process = private unnamed_addr constant [20 x i8] c"spum_status_process\00", align 1
@.str.103 = private unnamed_addr constant [54 x i8] c"\013%s(): Invalid IV len %d for CCM mode, should be %d\0A\00", align 1
@__func__.spum_ccm_update_iv = private unnamed_addr constant [19 x i8] c"spum_ccm_update_iv\00", align 1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local void @spum_dump_msg_hdr(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @spum_ns2_ctx_max_payload(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = icmp eq i32 %1, 7
  %5 = select i1 %4, i32 65519, i32 65535
  %6 = urem i32 %5, %2
  %7 = sub nsw i32 %5, %6
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @spum_nsp_ctx_max_payload(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = icmp eq i32 %1, 7
  %5 = select i1 %4, i32 8176, i32 8192
  %6 = urem i32 %5, %2
  %7 = sub nsw i32 %5, %6
  ret i32 %7
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @spum_payload_length(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 8
  %3 = load i16, ptr %2, align 2
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %5 = zext i16 %4 to i32
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @spum_response_hdr_len(i16 noundef zeroext %0, i16 noundef zeroext %1, i1 noundef zeroext %2) local_unnamed_addr #2 {
  %4 = select i1 %2, i16 8, i16 12
  ret i16 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @spum_hash_pad_len(i32 noundef %0, i32 noundef %1, i32 noundef %2, i16 noundef zeroext %3) local_unnamed_addr #2 {
  %5 = icmp eq i32 %0, 5
  %6 = icmp eq i32 %1, 0
  %7 = and i1 %5, %6
  %8 = zext i16 %3 to i32
  %9 = urem i32 %2, %8
  br i1 %7, label %10, label %14

10:                                               ; preds = %4
  %11 = icmp eq i32 %9, 0
  %12 = select i1 %11, i32 0, i32 %8
  %13 = sub nsw i32 %12, %9
  br label %25

14:                                               ; preds = %4
  %15 = and i32 %0, -2
  %16 = icmp eq i32 %15, 6
  %17 = select i1 %16, i32 -17, i32 -9
  %18 = add nsw i32 %17, %8
  %19 = sub nsw i32 %18, %9
  %20 = icmp slt i32 %19, 0
  %21 = select i1 %20, i32 %8, i32 0
  %22 = select i1 %16, i32 17, i32 9
  %23 = add nsw i32 %22, %19
  %24 = add nsw i32 %23, %21
  br label %25

25:                                               ; preds = %14, %10
  %26 = phi i32 [ %13, %10 ], [ %24, %14 ]
  %27 = trunc i32 %26 to i16
  ret i16 %27
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @spum_gcm_ccm_pad_len(i32 noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = add i32 %0, -5
  %4 = icmp ult i32 %3, 2
  %5 = add i32 %1, 15
  %6 = and i32 %5, -16
  %7 = sub i32 %6, %1
  %8 = select i1 %4, i32 %7, i32 0
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @spum_assoc_resp_len(i32 noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #2 {
  switch i32 %0, label %12 [
    i32 6, label %5
    i32 5, label %8
  ]

5:                                                ; preds = %4
  %6 = add i32 %1, 15
  %7 = and i32 %6, -16
  br label %12

8:                                                ; preds = %4
  %9 = add i32 %1, 17
  %10 = and i32 %9, -16
  %11 = add i32 %10, -2
  br label %12

12:                                               ; preds = %8, %5, %4
  %13 = phi i32 [ %11, %8 ], [ %7, %5 ], [ %1, %4 ]
  ret i32 %13
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @spum_aead_ivlen(i32 noundef %0, i16 noundef zeroext %1) local_unnamed_addr #2 {
  ret i8 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @spum_hash_type(i32 noundef %0) local_unnamed_addr #2 {
  %2 = icmp eq i32 %0, 0
  %3 = select i1 %2, i32 1, i32 2
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @spum_digest_size(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = add i32 %2, -1
  %5 = icmp ult i32 %4, 2
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  switch i32 %1, label %8 [
    i32 3, label %9
    i32 6, label %7
  ]

7:                                                ; preds = %6
  br label %9

8:                                                ; preds = %6
  br label %9

9:                                                ; preds = %8, %7, %6, %3
  %10 = phi i32 [ 64, %7 ], [ %0, %3 ], [ 32, %6 ], [ %0, %8 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @spum_create_request(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, i32 noundef %5) local_unnamed_addr #3 {
  %7 = getelementptr inbounds %struct.spu_hash_parms, ptr %3, i32 0, i32 6
  %8 = load i16, ptr %7, align 2
  %9 = zext i16 %8 to i32
  %10 = getelementptr inbounds %struct.spu_hash_parms, ptr %3, i32 0, i32 7
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, %9
  %13 = add i32 %12, %5
  %14 = load i32, ptr %4, align 4
  %15 = getelementptr inbounds %struct.spu_aead_parms, ptr %4, i32 0, i32 1
  %16 = load i16, ptr %15, align 4
  %17 = zext i16 %16 to i32
  %18 = add i32 %14, %17
  %19 = getelementptr inbounds %struct.spu_aead_parms, ptr %4, i32 0, i32 2
  %20 = load i8, ptr %19, align 2
  %21 = zext i8 %20 to i32
  %22 = add i32 %18, %21
  %23 = getelementptr inbounds %struct.spu_aead_parms, ptr %4, i32 0, i32 3
  %24 = load i8, ptr %23, align 1
  %25 = zext i8 %24 to i32
  %26 = add i32 %13, %18
  %27 = add i32 %26, %21
  %28 = add i32 %27, %25
  %29 = getelementptr inbounds %struct.spu_request_opts, ptr %1, i32 0, i32 2
  %30 = load i8, ptr %29, align 1, !range !8
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %41, label %32

32:                                               ; preds = %6
  %33 = load i8, ptr %1, align 1, !range !8
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.spu_hash_parms, ptr %3, i32 0, i32 3
  %37 = load i8, ptr %36, align 4
  %38 = zext i8 %37 to i32
  %39 = sub i32 %13, %38
  %40 = sub i32 %28, %38
  br label %41

41:                                               ; preds = %35, %32, %6
  %42 = phi i32 [ %39, %35 ], [ %13, %6 ], [ %13, %32 ]
  %43 = phi i32 [ %40, %35 ], [ %28, %6 ], [ %28, %32 ]
  %44 = load i32, ptr %3, align 4
  %45 = icmp eq i32 %44, 5
  br i1 %45, label %46, label %53

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.spu_hash_parms, ptr %3, i32 0, i32 1
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = sub i32 %43, %11
  %52 = sub i32 %42, %11
  br label %53

53:                                               ; preds = %50, %46, %41
  %54 = phi i32 [ %52, %50 ], [ %42, %46 ], [ %42, %41 ]
  %55 = phi i32 [ %51, %50 ], [ %43, %46 ], [ %43, %41 ]
  %56 = getelementptr inbounds %struct.spu_request_opts, ptr %1, i32 0, i32 1
  %57 = load i32, ptr %2, align 4
  %58 = getelementptr inbounds %struct.spu_cipher_parms, ptr %2, i32 0, i32 1
  %59 = load i32, ptr %58, align 4
  %60 = tail call ptr @spu_alg_name(i32 noundef %57, i32 noundef %59) #10
  %61 = getelementptr inbounds %struct.spu_cipher_parms, ptr %2, i32 0, i32 2
  %62 = getelementptr inbounds %struct.spu_cipher_parms, ptr %2, i32 0, i32 4
  %63 = getelementptr inbounds %struct.spu_cipher_parms, ptr %2, i32 0, i32 3
  %64 = getelementptr inbounds %struct.spu_cipher_parms, ptr %2, i32 0, i32 6
  %65 = getelementptr inbounds %struct.spu_cipher_parms, ptr %2, i32 0, i32 5
  %66 = getelementptr inbounds %struct.spu_hash_parms, ptr %3, i32 0, i32 1
  %67 = getelementptr inbounds %struct.spu_hash_parms, ptr %3, i32 0, i32 2
  %68 = getelementptr inbounds %struct.spu_hash_parms, ptr %3, i32 0, i32 3
  %69 = getelementptr inbounds %struct.spu_hash_parms, ptr %3, i32 0, i32 5
  %70 = getelementptr inbounds %struct.spu_hash_parms, ptr %3, i32 0, i32 4
  %71 = getelementptr inbounds i8, ptr %0, i32 2
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(20) %71, i8 0, i32 18, i1 false)
  %72 = getelementptr i8, ptr %0, i32 20
  %73 = getelementptr inbounds %struct.MHEADER, ptr %0, i32 0, i32 1
  store i8 1, ptr %73, align 1
  store i8 -88, ptr %0, align 4
  %74 = load i8, ptr %1, align 1, !range !8
  %75 = icmp eq i8 %74, 0
  %76 = select i1 %75, i32 0, i32 -2147483648
  %77 = load i8, ptr %56, align 1, !range !8
  %78 = icmp eq i8 %77, 0
  %79 = or i32 %76, 1073741824
  %80 = select i1 %78, i32 %76, i32 %79
  %81 = load i32, ptr %2, align 4
  %82 = shl i32 %81, 21
  %83 = or i32 %80, %82
  %84 = load i32, ptr %58, align 4
  %85 = shl i32 %84, 18
  %86 = or i32 %83, %85
  %87 = load i32, ptr %61, align 4
  %88 = shl i32 %87, 16
  %89 = or i32 %86, %88
  %90 = load i32, ptr %3, align 4
  %91 = shl i32 %90, 13
  %92 = or i32 %89, %91
  %93 = load i32, ptr %66, align 4
  %94 = shl i32 %93, 10
  %95 = or i32 %92, %94
  %96 = load i32, ptr %67, align 4
  %97 = shl i32 %96, 8
  %98 = or i32 %95, %97
  %99 = icmp eq i32 %90, 0
  br i1 %99, label %138, label %100

100:                                              ; preds = %53
  %101 = load i16, ptr %69, align 4
  %102 = icmp eq i16 %101, 0
  br i1 %102, label %114, label %103

103:                                              ; preds = %100
  %104 = load ptr, ptr %70, align 4
  %105 = zext i16 %101 to i32
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %72, ptr align 1 %104, i32 %105, i1 false)
  %106 = load i16, ptr %69, align 4
  %107 = zext i16 %106 to i32
  %108 = getelementptr i8, ptr %72, i32 %107
  %109 = add nuw nsw i32 %107, 20
  %110 = lshr i16 %106, 2
  %111 = trunc i16 %110 to i8
  %112 = add i8 %111, 3
  %113 = load i32, ptr %58, align 4
  br label %114

114:                                              ; preds = %103, %100
  %115 = phi i32 [ %113, %103 ], [ %84, %100 ]
  %116 = phi ptr [ %108, %103 ], [ %72, %100 ]
  %117 = phi i8 [ %112, %103 ], [ 3, %100 ]
  %118 = phi i32 [ %109, %103 ], [ 20, %100 ]
  %119 = add i32 %115, -5
  %120 = icmp ult i32 %119, 2
  br i1 %120, label %121, label %123

121:                                              ; preds = %114
  %122 = load i32, ptr %4, align 4
  br label %123

123:                                              ; preds = %121, %114
  %124 = phi i32 [ 0, %114 ], [ 8192, %121 ]
  %125 = phi i32 [ 0, %114 ], [ %122, %121 ]
  %126 = load i8, ptr %1, align 1, !range !8
  %127 = icmp eq i8 %126, 0
  %128 = select i1 %127, i32 %124, i32 4096
  %129 = load i8, ptr %68, align 4
  %130 = icmp eq i8 %129, 64
  br i1 %130, label %131, label %133

131:                                              ; preds = %123
  %132 = or i32 %98, 134217728
  br label %138

133:                                              ; preds = %123
  %134 = lshr i8 %129, 2
  %135 = zext i8 %134 to i32
  %136 = shl nuw nsw i32 %135, 8
  %137 = or i32 %136, %128
  br label %138

138:                                              ; preds = %133, %131, %53
  %139 = phi ptr [ %116, %131 ], [ %116, %133 ], [ %72, %53 ]
  %140 = phi i32 [ %132, %131 ], [ %98, %133 ], [ %98, %53 ]
  %141 = phi i32 [ %128, %131 ], [ %137, %133 ], [ 0, %53 ]
  %142 = phi i8 [ %117, %131 ], [ %117, %133 ], [ 3, %53 ]
  %143 = phi i32 [ %118, %131 ], [ %118, %133 ], [ 20, %53 ]
  %144 = phi i32 [ %125, %131 ], [ %125, %133 ], [ 0, %53 ]
  %145 = getelementptr inbounds %struct.spu_request_opts, ptr %1, i32 0, i32 4
  %146 = load i8, ptr %145, align 1, !range !8
  %147 = icmp eq i8 %146, 0
  %148 = or i32 %141, 524288
  %149 = select i1 %147, i32 %141, i32 %148
  %150 = load i32, ptr %2, align 4
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %184, label %152

152:                                              ; preds = %138
  %153 = load i16, ptr %62, align 4
  %154 = icmp eq i16 %153, 0
  br i1 %154, label %165, label %155

155:                                              ; preds = %152
  %156 = load ptr, ptr %63, align 4
  %157 = zext i16 %153 to i32
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %139, ptr align 1 %156, i32 %157, i1 false)
  %158 = load i16, ptr %62, align 4
  %159 = zext i16 %158 to i32
  %160 = getelementptr i8, ptr %139, i32 %159
  %161 = add nuw nsw i32 %143, %159
  %162 = lshr i16 %158, 2
  %163 = trunc i16 %162 to i8
  %164 = add i8 %142, %163
  br label %165

165:                                              ; preds = %155, %152
  %166 = phi ptr [ %160, %155 ], [ %139, %152 ]
  %167 = phi i8 [ %164, %155 ], [ %142, %152 ]
  %168 = phi i32 [ %161, %155 ], [ %143, %152 ]
  %169 = load ptr, ptr %65, align 4
  %170 = icmp eq ptr %169, null
  br i1 %170, label %184, label %171

171:                                              ; preds = %165
  %172 = load i16, ptr %64, align 4
  %173 = icmp eq i16 %172, 0
  br i1 %173, label %184, label %174

174:                                              ; preds = %171
  %175 = zext i16 %172 to i32
  %176 = or i32 %149, 128
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %166, ptr nonnull align 1 %169, i32 %175, i1 false)
  %177 = load i16, ptr %64, align 4
  %178 = zext i16 %177 to i32
  %179 = getelementptr i8, ptr %166, i32 %178
  %180 = add nuw nsw i32 %168, %178
  %181 = lshr i16 %177, 2
  %182 = trunc i16 %181 to i8
  %183 = add i8 %167, %182
  br label %184

184:                                              ; preds = %174, %171, %165, %138
  %185 = phi ptr [ %179, %174 ], [ %166, %171 ], [ %166, %165 ], [ %139, %138 ]
  %186 = phi i32 [ %176, %174 ], [ %149, %171 ], [ %149, %165 ], [ %149, %138 ]
  %187 = phi i8 [ %183, %174 ], [ %167, %171 ], [ %167, %165 ], [ %142, %138 ]
  %188 = phi i32 [ %180, %174 ], [ %168, %171 ], [ %168, %165 ], [ %143, %138 ]
  %189 = getelementptr inbounds %struct.spu_request_opts, ptr %1, i32 0, i32 5
  %190 = load i8, ptr %189, align 1, !range !8
  %191 = icmp eq i8 %190, 0
  br i1 %191, label %206, label %192

192:                                              ; preds = %184
  %193 = load i8, ptr %1, align 1, !range !8
  %194 = icmp eq i8 %193, 0
  br i1 %194, label %199, label %195

195:                                              ; preds = %192
  %196 = load i8, ptr %68, align 4
  %197 = zext i8 %196 to i32
  %198 = sub i32 %5, %197
  br label %199

199:                                              ; preds = %195, %192
  %200 = phi i32 [ %198, %195 ], [ %5, %192 ]
  %201 = load i32, ptr %4, align 4
  %202 = add i32 %201, %200
  %203 = load i8, ptr %23, align 1
  %204 = zext i8 %203 to i32
  %205 = add i32 %202, %204
  br label %206

206:                                              ; preds = %199, %184
  %207 = phi i32 [ 0, %199 ], [ %54, %184 ]
  %208 = phi i32 [ %202, %199 ], [ %22, %184 ]
  %209 = phi i32 [ %202, %199 ], [ %144, %184 ]
  %210 = phi i32 [ %205, %199 ], [ %55, %184 ]
  %211 = zext i8 %187 to i32
  %212 = shl nuw i32 %211, 24
  %213 = getelementptr inbounds %struct.SPUHEADER, ptr %0, i32 0, i32 2
  store i32 %212, ptr %213, align 4
  %214 = tail call i32 @llvm.bswap.i32(i32 %140)
  %215 = getelementptr inbounds %struct.SPUHEADER, ptr %0, i32 0, i32 2, i32 1
  store i32 %214, ptr %215, align 4
  %216 = tail call i32 @llvm.bswap.i32(i32 %186)
  %217 = getelementptr inbounds %struct.SPUHEADER, ptr %0, i32 0, i32 2, i32 2
  store i32 %216, ptr %217, align 4
  store i16 0, ptr %185, align 2
  %218 = trunc i32 %210 to i16
  %219 = tail call i16 @llvm.bswap.i16(i16 %218)
  %220 = getelementptr inbounds %struct.BDESC_HEADER, ptr %185, i32 0, i32 1
  store i16 %219, ptr %220, align 2
  %221 = trunc i32 %208 to i16
  %222 = tail call i16 @llvm.bswap.i16(i16 %221)
  %223 = getelementptr inbounds %struct.BDESC_HEADER, ptr %185, i32 0, i32 2
  store i16 %222, ptr %223, align 2
  %224 = trunc i32 %207 to i16
  %225 = tail call i16 @llvm.bswap.i16(i16 %224)
  %226 = getelementptr inbounds %struct.BDESC_HEADER, ptr %185, i32 0, i32 3
  store i16 %225, ptr %226, align 2
  %227 = load i32, ptr %58, align 4
  %228 = icmp eq i32 %227, 5
  %229 = add i32 %210, 3
  %230 = and i32 %229, 65532
  %231 = select i1 %228, i32 %230, i32 %210
  %232 = trunc i32 %231 to i16
  %233 = tail call i16 @llvm.bswap.i16(i16 %232)
  %234 = getelementptr inbounds %struct.BDESC_HEADER, ptr %185, i32 0, i32 4
  store i16 %233, ptr %234, align 2
  %235 = trunc i32 %209 to i16
  %236 = tail call i16 @llvm.bswap.i16(i16 %235)
  %237 = getelementptr inbounds %struct.BDESC_HEADER, ptr %185, i32 0, i32 5
  store i16 %236, ptr %237, align 2
  %238 = getelementptr i8, ptr %185, i32 12
  %239 = trunc i32 %28 to i16
  %240 = tail call i16 @llvm.bswap.i16(i16 %239)
  store i16 %240, ptr %238, align 2
  %241 = getelementptr i8, ptr %185, i32 14
  store i16 0, ptr %241, align 2
  %242 = add nuw nsw i32 %188, 16
  ret i32 %242
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spu_alg_name(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @spum_wordalign_padlen(i32 noundef %0) local_unnamed_addr #2 {
  %2 = add i32 %0, 3
  %3 = and i32 %2, -4
  %4 = sub i32 %3, %0
  ret i32 %4
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @spum_cipher_req_init(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.spu_cipher_parms, ptr %1, i32 0, i32 1
  %4 = getelementptr inbounds %struct.spu_cipher_parms, ptr %1, i32 0, i32 2
  %5 = getelementptr inbounds %struct.spu_cipher_parms, ptr %1, i32 0, i32 6
  %6 = getelementptr inbounds %struct.spu_cipher_parms, ptr %1, i32 0, i32 4
  %7 = getelementptr inbounds %struct.spu_cipher_parms, ptr %1, i32 0, i32 3
  %8 = getelementptr inbounds i8, ptr %0, i32 2
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(20) %8, i8 0, i32 18, i1 false)
  %9 = getelementptr inbounds %struct.MHEADER, ptr %0, i32 0, i32 1
  store i8 1, ptr %9, align 1
  store i8 -88, ptr %0, align 4
  %10 = load i32, ptr %1, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %28, label %12

12:                                               ; preds = %2
  %13 = load i16, ptr %6, align 4
  %14 = icmp eq i16 %13, 0
  %15 = lshr i16 %13, 2
  %16 = trunc i16 %15 to i8
  %17 = add i8 %16, 3
  %18 = select i1 %14, i8 3, i8 %17
  %19 = load i16, ptr %5, align 4
  %20 = icmp eq i16 %19, 0
  %21 = lshr i16 %19, 2
  %22 = trunc i16 %21 to i8
  %23 = select i1 %20, i32 0, i32 -2147483648
  %24 = select i1 %20, i8 0, i8 %22
  %25 = add i8 %18, %24
  %26 = load i32, ptr %3, align 4
  %27 = load i32, ptr %4, align 4
  br i1 %14, label %35, label %31

28:                                               ; preds = %2
  %29 = load i32, ptr %3, align 4
  %30 = load i32, ptr %4, align 4
  br label %35

31:                                               ; preds = %12
  %32 = zext i16 %13 to i32
  %33 = getelementptr %struct.SPUHEADER, ptr %0, i32 1
  %34 = load ptr, ptr %7, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %33, ptr align 1 %34, i32 %32, i1 false)
  br label %35

35:                                               ; preds = %31, %28, %12
  %36 = phi i32 [ %27, %31 ], [ %27, %12 ], [ %30, %28 ]
  %37 = phi i32 [ %26, %31 ], [ %26, %12 ], [ %29, %28 ]
  %38 = phi i8 [ %25, %31 ], [ %25, %12 ], [ 3, %28 ]
  %39 = phi i32 [ %23, %31 ], [ %23, %12 ], [ 0, %28 ]
  %40 = shl i32 %10, 21
  %41 = shl i32 %37, 18
  %42 = shl i32 %36, 16
  %43 = or i32 %42, %40
  %44 = or i32 %43, %41
  %45 = zext i8 %38 to i32
  %46 = shl nuw i32 %45, 24
  %47 = getelementptr inbounds %struct.SPUHEADER, ptr %0, i32 0, i32 2
  store i32 %46, ptr %47, align 4
  %48 = tail call i32 @llvm.bswap.i32(i32 %44)
  %49 = getelementptr inbounds %struct.SPUHEADER, ptr %0, i32 0, i32 2, i32 1
  store i32 %48, ptr %49, align 4
  %50 = getelementptr inbounds %struct.SPUHEADER, ptr %0, i32 0, i32 2, i32 2
  store i32 %39, ptr %50, align 4
  %51 = load i16, ptr %6, align 4
  %52 = load i16, ptr %5, align 4
  %53 = add i16 %51, 36
  %54 = add i16 %53, %52
  ret i16 %54
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @spum_cipher_req_finish(ptr nocapture noundef %0, i16 noundef zeroext %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4) local_unnamed_addr #7 {
  %6 = zext i16 %1 to i32
  %7 = getelementptr i8, ptr %0, i32 %6
  %8 = getelementptr i8, ptr %7, i32 -16
  %9 = getelementptr inbounds %struct.spu_cipher_parms, ptr %3, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 7
  br i1 %11, label %12, label %18

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.spu_cipher_parms, ptr %3, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.spu_cipher_parms, ptr %3, i32 0, i32 6
  %16 = load i16, ptr %15, align 4
  %17 = zext i16 %16 to i32
  tail call void @llvm.memset.p0.i32(ptr align 1 %14, i8 0, i32 %17, i1 false)
  br label %18

18:                                               ; preds = %12, %5
  %19 = getelementptr inbounds %struct.spu_cipher_parms, ptr %3, i32 0, i32 6
  %20 = getelementptr inbounds %struct.SPUHEADER, ptr %0, i32 0, i32 2, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %2, 0
  %23 = and i32 %21, -129
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %25 = select i1 %22, i32 0, i32 -2147483648
  %26 = or i32 %24, %25
  %27 = load i32, ptr %3, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %40, label %29

29:                                               ; preds = %18
  %30 = getelementptr inbounds %struct.spu_cipher_parms, ptr %3, i32 0, i32 5
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %40, label %33

33:                                               ; preds = %29
  %34 = load i16, ptr %19, align 4
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %33
  %37 = zext i16 %34 to i32
  %38 = sub nsw i32 0, %37
  %39 = getelementptr i8, ptr %8, i32 %38
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %39, ptr nonnull align 1 %31, i32 %37, i1 false)
  br label %40

40:                                               ; preds = %36, %33, %29, %18
  %41 = tail call i32 @llvm.bswap.i32(i32 %26)
  store i32 %41, ptr %20, align 4
  store i16 0, ptr %8, align 2
  %42 = getelementptr inbounds %struct.BDESC_HEADER, ptr %8, i32 0, i32 1
  store i16 0, ptr %42, align 2
  %43 = getelementptr inbounds %struct.BDESC_HEADER, ptr %8, i32 0, i32 2
  store i16 0, ptr %43, align 2
  %44 = load i32, ptr %9, align 4
  %45 = icmp eq i32 %44, 7
  %46 = trunc i32 %4 to i16
  br i1 %45, label %47, label %51

47:                                               ; preds = %40
  %48 = add i16 %46, 16
  %49 = tail call i16 @llvm.bswap.i16(i16 %48)
  %50 = tail call i16 @llvm.bswap.i16(i16 %46)
  br label %55

51:                                               ; preds = %40
  %52 = tail call i16 @llvm.bswap.i16(i16 %46)
  %53 = add i16 %46, 16
  %54 = tail call i16 @llvm.bswap.i16(i16 %53)
  br label %55

55:                                               ; preds = %51, %47
  %56 = phi i16 [ %54, %51 ], [ %49, %47 ]
  %57 = phi i16 [ %52, %51 ], [ %50, %47 ]
  %58 = phi i16 [ %52, %51 ], [ %49, %47 ]
  %59 = getelementptr inbounds %struct.BDESC_HEADER, ptr %8, i32 0, i32 3
  store i16 %58, ptr %59, align 2
  %60 = getelementptr inbounds %struct.BDESC_HEADER, ptr %8, i32 0, i32 4
  store i16 0, ptr %60, align 2
  %61 = getelementptr inbounds %struct.BDESC_HEADER, ptr %8, i32 0, i32 5
  store i16 0, ptr %61, align 2
  %62 = getelementptr i8, ptr %8, i32 12
  store i16 %57, ptr %62, align 2
  %63 = load i32, ptr %9, align 4
  %64 = icmp eq i32 %63, 7
  %65 = select i1 %64, i16 %56, i16 %57
  store i16 %65, ptr %62, align 2
  %66 = getelementptr inbounds %struct.BD_HEADER, ptr %62, i32 0, i32 1
  store i16 0, ptr %66, align 2
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @spum_request_pad(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #8 {
  %8 = icmp eq i32 %1, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %7
  tail call void @llvm.memset.p0.i32(ptr align 1 %0, i8 0, i32 %1, i1 false)
  %10 = getelementptr i8, ptr %0, i32 %1
  br label %11

11:                                               ; preds = %9, %7
  %12 = phi ptr [ %10, %9 ], [ %0, %7 ]
  %13 = icmp eq i32 %2, 0
  br i1 %13, label %29, label %14

14:                                               ; preds = %11
  tail call void @llvm.memset.p0.i32(ptr align 1 %12, i8 0, i32 %2, i1 false)
  %15 = icmp eq i32 %3, 5
  %16 = icmp eq i32 %4, 0
  %17 = and i1 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = getelementptr i8, ptr %12, i32 %2
  br label %29

20:                                               ; preds = %14
  store i8 -128, ptr %12, align 1
  %21 = add i32 %2, -8
  %22 = getelementptr i8, ptr %12, i32 %21
  %23 = icmp eq i32 %3, 1
  %24 = zext i32 %5 to i64
  %25 = shl nuw nsw i64 %24, 3
  %26 = tail call i64 @llvm.bswap.i64(i64 %25)
  %27 = select i1 %23, i64 %25, i64 %26
  store i64 %27, ptr %22, align 8
  %28 = getelementptr i8, ptr %12, i32 %2
  br label %29

29:                                               ; preds = %20, %18, %11
  %30 = phi ptr [ %19, %18 ], [ %28, %20 ], [ %12, %11 ]
  %31 = icmp eq i32 %6, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  tail call void @llvm.memset.p0.i32(ptr align 1 %30, i8 0, i32 %6, i1 false)
  br label %33

33:                                               ; preds = %32, %29
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @spum_xts_tweak_in_payload() local_unnamed_addr #2 {
  ret i8 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @spum_tx_status_len() local_unnamed_addr #2 {
  ret i8 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @spum_rx_status_len() local_unnamed_addr #2 {
  ret i8 4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @spum_status_process(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = load i32, ptr %0, align 4
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %4 = and i32 %3, 131072
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, ptr noundef nonnull @__func__.spum_status_process, i32 noundef %3) #11
  %8 = and i32 %3, 256
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, i32 -74, i32 1
  br label %11

11:                                               ; preds = %6, %1
  %12 = phi i32 [ %10, %6 ], [ 0, %1 ]
  ret i32 %12
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @spum_ccm_update_iv(i32 noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %5) local_unnamed_addr #3 {
  %7 = getelementptr inbounds %struct.spu_cipher_parms, ptr %1, i32 0, i32 6
  %8 = load i16, ptr %7, align 4
  %9 = icmp eq i16 %8, 16
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = zext i16 %8 to i32
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103, ptr noundef nonnull @__func__.spum_ccm_update_iv, i32 noundef %11, i32 noundef 16) #11
  br label %38

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.spu_cipher_parms, ptr %1, i32 0, i32 5
  %15 = load ptr, ptr %14, align 4
  br i1 %5, label %20, label %16

16:                                               ; preds = %13
  %17 = load i8, ptr %15, align 1
  %18 = and i8 %17, 7
  %19 = add nuw nsw i8 %18, 1
  br label %20

20:                                               ; preds = %16, %13
  %21 = phi i8 [ %19, %16 ], [ 4, %13 ]
  %22 = icmp eq i32 %2, 0
  %23 = select i1 %22, i32 0, i32 64
  %24 = shl i32 %0, 2
  %25 = add i32 %24, 248
  %26 = and i32 %25, 248
  %27 = or i32 %23, %26
  %28 = zext i8 %21 to i32
  %29 = add nuw nsw i32 %28, 255
  %30 = or i32 %27, %29
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds %struct.spu_cipher_parms, ptr %1, i32 0, i32 5
  store i8 %31, ptr %15, align 1
  %33 = select i1 %4, i32 0, i32 %0
  %34 = sub i32 %3, %33
  %35 = load ptr, ptr %32, align 4
  %36 = sub nuw nsw i32 16, %28
  %37 = getelementptr i8, ptr %35, i32 %36
  tail call void @format_value_ccm(i32 noundef %34, ptr noundef %37, i8 noundef zeroext %21) #10
  br label %38

38:                                               ; preds = %20, %10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @format_value_ccm(i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

attributes #0 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
!8 = !{i8 0, i8 2}
