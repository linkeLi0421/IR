; ModuleID = '/llk/IR/drivers/crypto/bcm/spu2.c_pt.bc'
source_filename = "../drivers/crypto/bcm/spu2.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.SPU2_FMD = type { i64, i64, i64, i64 }
%struct.spu_hash_parms = type { i32, i32, i32, i8, ptr, i16, i16, i32 }
%struct.spu_request_opts = type { i8, i8, i8, i8, i8, i8 }
%struct.spu_aead_parms = type { i32, i16, i8, i8, i8, i32, i32 }
%struct.spu_cipher_parms = type { i32, i32, i32, ptr, i16, ptr, i16 }

@switch.table.spu2_create_request = private unnamed_addr constant [8 x i32] [i32 0, i32 1, i32 4, i32 3, i32 2, i32 6, i32 7, i32 5], align 4
@switch.table.spu2_create_request.121 = private unnamed_addr constant [7 x i32] [i32 2, i32 0, i32 3, i32 2, i32 2, i32 5, i32 6], align 4
@switch.table.spu2_cipher_req_init = private unnamed_addr constant [8 x i32] [i32 0, i32 256, i32 1024, i32 768, i32 512, i32 1536, i32 1792, i32 1280], align 4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local void @spu2_dump_msg_hdr(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @spu2_ctx_max_payload(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = icmp eq i32 %0, 4
  %5 = icmp eq i32 %1, 5
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = urem i32 -1, %2
  %9 = xor i32 %8, -1
  br label %10

10:                                               ; preds = %7, %3
  %11 = phi i32 [ %9, %7 ], [ -1, %3 ]
  ret i32 %11
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @spu2_payload_length(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.SPU2_FMD, ptr %0, i32 0, i32 3
  %3 = load i64, ptr %2, align 8
  %4 = trunc i64 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @spu2_response_hdr_len(i16 noundef zeroext %0, i16 noundef zeroext %1, i1 noundef zeroext %2) local_unnamed_addr #1 {
  ret i16 32
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @spu2_hash_pad_len(i32 noundef %0, i32 noundef %1, i32 noundef %2, i16 noundef zeroext %3) local_unnamed_addr #1 {
  ret i16 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @spu2_gcm_ccm_pad_len(i32 noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @spu2_assoc_resp_len(i32 noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #1 {
  %5 = select i1 %3, i32 %2, i32 0
  %6 = add i32 %5, %1
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @spu2_aead_ivlen(i32 noundef %0, i16 noundef zeroext %1) local_unnamed_addr #1 {
  ret i8 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @spu2_hash_type(i32 noundef %0) local_unnamed_addr #1 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @spu2_digest_size(i32 noundef returned %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  ret i32 %0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @spu2_create_request(ptr nocapture noundef writeonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5) local_unnamed_addr #2 {
  %7 = getelementptr inbounds %struct.spu_hash_parms, ptr %3, i32 0, i32 6
  %8 = load i16, ptr %7, align 2
  %9 = zext i16 %8 to i32
  %10 = add i32 %9, %5
  %11 = getelementptr inbounds %struct.spu_hash_parms, ptr %3, i32 0, i32 7
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %10, %12
  %14 = getelementptr inbounds %struct.spu_request_opts, ptr %1, i32 0, i32 2
  %15 = load i8, ptr %14, align 1, !range !8
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %6
  %18 = load i8, ptr %1, align 1, !range !8
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %34, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.spu_hash_parms, ptr %3, i32 0, i32 3
  %22 = load i8, ptr %21, align 4
  %23 = zext i8 %22 to i32
  br label %34

24:                                               ; preds = %6
  %25 = load i32, ptr %4, align 4
  %26 = getelementptr inbounds %struct.spu_aead_parms, ptr %4, i32 0, i32 2
  %27 = load i8, ptr %26, align 2
  %28 = zext i8 %27 to i32
  %29 = add i32 %25, %28
  %30 = getelementptr inbounds %struct.spu_aead_parms, ptr %4, i32 0, i32 1
  %31 = load i16, ptr %30, align 4
  %32 = zext i16 %31 to i32
  %33 = add i32 %29, %32
  br label %65

34:                                               ; preds = %20, %17
  %35 = phi i32 [ 0, %17 ], [ %23, %20 ]
  %36 = load i32, ptr %4, align 4
  %37 = getelementptr inbounds %struct.spu_aead_parms, ptr %4, i32 0, i32 2
  %38 = load i8, ptr %37, align 2
  %39 = zext i8 %38 to i32
  %40 = add i32 %36, %39
  %41 = getelementptr inbounds %struct.spu_aead_parms, ptr %4, i32 0, i32 1
  %42 = load i16, ptr %41, align 4
  %43 = zext i16 %42 to i32
  %44 = add i32 %40, %43
  %45 = load i32, ptr %2, align 4
  %46 = icmp eq i32 %45, 4
  br i1 %46, label %47, label %65

47:                                               ; preds = %34
  %48 = getelementptr inbounds %struct.spu_cipher_parms, ptr %2, i32 0, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %49, 6
  br i1 %50, label %51, label %58

51:                                               ; preds = %47
  %52 = load i8, ptr %1, align 1, !range !8
  %53 = getelementptr inbounds %struct.spu_request_opts, ptr %1, i32 0, i32 1
  store i8 %52, ptr %53, align 1
  %54 = load i32, ptr %2, align 4
  %55 = icmp eq i32 %54, 4
  br i1 %55, label %56, label %65

56:                                               ; preds = %51
  %57 = load i32, ptr %48, align 4
  br label %58

58:                                               ; preds = %56, %47
  %59 = phi i32 [ %57, %56 ], [ %49, %47 ]
  %60 = icmp eq i32 %59, 5
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = load i8, ptr %1, align 1, !range !8
  %63 = getelementptr inbounds %struct.spu_request_opts, ptr %1, i32 0, i32 1
  %64 = xor i8 %62, 1
  store i8 %64, ptr %63, align 1
  br label %65

65:                                               ; preds = %61, %58, %51, %34, %24
  %66 = phi i32 [ %44, %34 ], [ %33, %24 ], [ %44, %61 ], [ %44, %58 ], [ %44, %51 ]
  %67 = phi i32 [ %36, %34 ], [ %25, %24 ], [ %36, %61 ], [ %36, %58 ], [ %36, %51 ]
  %68 = phi i32 [ %35, %34 ], [ 0, %24 ], [ %35, %61 ], [ %35, %58 ], [ %35, %51 ]
  %69 = sub i32 %13, %68
  %70 = getelementptr inbounds %struct.spu_request_opts, ptr %1, i32 0, i32 1
  %71 = getelementptr inbounds %struct.spu_cipher_parms, ptr %2, i32 0, i32 1
  %72 = getelementptr inbounds %struct.spu_cipher_parms, ptr %2, i32 0, i32 2
  %73 = getelementptr inbounds %struct.spu_cipher_parms, ptr %2, i32 0, i32 4
  %74 = getelementptr inbounds %struct.spu_cipher_parms, ptr %2, i32 0, i32 3
  %75 = getelementptr inbounds %struct.spu_cipher_parms, ptr %2, i32 0, i32 6
  %76 = getelementptr inbounds %struct.spu_cipher_parms, ptr %2, i32 0, i32 5
  %77 = getelementptr inbounds %struct.spu_hash_parms, ptr %3, i32 0, i32 1
  %78 = getelementptr inbounds %struct.spu_hash_parms, ptr %3, i32 0, i32 3
  %79 = getelementptr inbounds %struct.spu_hash_parms, ptr %3, i32 0, i32 5
  %80 = getelementptr inbounds %struct.spu_hash_parms, ptr %3, i32 0, i32 4
  %81 = load i32, ptr %71, align 4
  %82 = load i32, ptr %72, align 4
  %83 = icmp ult i32 %81, 8
  br i1 %83, label %84, label %98

84:                                               ; preds = %65
  %85 = load i32, ptr %2, align 4
  %86 = getelementptr inbounds [8 x i32], ptr @switch.table.spu2_create_request, i32 0, i32 %81
  %87 = load i32, ptr %86, align 4
  switch i32 %85, label %98 [
    i32 0, label %95
    i32 1, label %88
    i32 2, label %89
    i32 3, label %90
    i32 4, label %91
  ]

88:                                               ; preds = %84
  br label %95

89:                                               ; preds = %84
  br label %95

90:                                               ; preds = %84
  br label %95

91:                                               ; preds = %84
  %92 = icmp ult i32 %82, 3
  br i1 %92, label %93, label %98

93:                                               ; preds = %91
  %94 = add i32 %82, 1
  br label %95

95:                                               ; preds = %93, %90, %89, %88, %84
  %96 = phi i32 [ 4, %89 ], [ 5, %90 ], [ 0, %88 ], [ %85, %84 ], [ %94, %93 ]
  %97 = phi i32 [ 0, %89 ], [ 0, %90 ], [ -22, %88 ], [ %85, %84 ], [ 0, %93 ]
  br label %98

98:                                               ; preds = %95, %91, %84, %65
  %99 = phi i32 [ 0, %65 ], [ 0, %84 ], [ 0, %91 ], [ %96, %95 ]
  %100 = phi i32 [ 0, %65 ], [ %87, %84 ], [ %87, %91 ], [ %87, %95 ]
  %101 = phi i32 [ -22, %65 ], [ -22, %84 ], [ -22, %91 ], [ %97, %95 ]
  %102 = getelementptr inbounds %struct.spu_request_opts, ptr %1, i32 0, i32 5
  %103 = load i8, ptr %102, align 1, !range !8
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %98
  %106 = icmp eq i32 %100, 7
  %107 = icmp eq i32 %69, 0
  %108 = select i1 %106, i1 %107, i1 false
  br i1 %108, label %109, label %120

109:                                              ; preds = %105, %98
  %110 = phi i32 [ 0, %105 ], [ %69, %98 ]
  %111 = load i16, ptr %73, align 4
  store i16 %111, ptr %79, align 4
  %112 = load ptr, ptr %80, align 4
  %113 = load ptr, ptr %74, align 4
  %114 = load i16, ptr %73, align 4
  %115 = zext i16 %114 to i32
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %112, ptr align 1 %113, i32 %115, i1 false)
  store i16 0, ptr %73, align 4
  %116 = load i8, ptr %102, align 1, !range !8
  %117 = icmp eq i8 %116, 0
  %118 = select i1 %117, i32 0, i32 %110
  %119 = add i32 %118, %67
  br label %120

120:                                              ; preds = %109, %105
  %121 = phi i32 [ 0, %109 ], [ %99, %105 ]
  %122 = phi i32 [ %119, %109 ], [ %69, %105 ]
  %123 = phi i32 [ 0, %109 ], [ %66, %105 ]
  %124 = phi i32 [ 0, %109 ], [ %67, %105 ]
  %125 = icmp eq i32 %101, 0
  br i1 %125, label %126, label %274

126:                                              ; preds = %120
  %127 = load i32, ptr %3, align 4
  %128 = load i32, ptr %77, align 4
  %129 = load i32, ptr %72, align 4
  %130 = icmp ult i32 %128, 7
  br i1 %130, label %131, label %274

131:                                              ; preds = %126
  %132 = trunc i32 %128 to i8
  %133 = lshr i8 103, %132
  %134 = and i8 %133, 1
  %135 = icmp eq i8 %134, 0
  br i1 %135, label %274, label %136

136:                                              ; preds = %131
  %137 = getelementptr inbounds [7 x i32], ptr @switch.table.spu2_create_request.121, i32 0, i32 %128
  %138 = load i32, ptr %137, align 4
  switch i32 %127, label %274 [
    i32 0, label %152
    i32 1, label %139
    i32 2, label %140
    i32 3, label %141
    i32 4, label %142
    i32 6, label %143
    i32 7, label %144
    i32 5, label %145
    i32 8, label %148
    i32 9, label %149
    i32 10, label %150
    i32 11, label %151
  ]

139:                                              ; preds = %136
  br label %152

140:                                              ; preds = %136
  br label %152

141:                                              ; preds = %136
  br label %152

142:                                              ; preds = %136
  br label %152

143:                                              ; preds = %136
  br label %152

144:                                              ; preds = %136
  br label %152

145:                                              ; preds = %136
  switch i32 %129, label %274 [
    i32 0, label %152
    i32 1, label %146
    i32 2, label %147
  ]

146:                                              ; preds = %145
  br label %152

147:                                              ; preds = %145
  br label %152

148:                                              ; preds = %136
  br label %152

149:                                              ; preds = %136
  br label %152

150:                                              ; preds = %136
  br label %152

151:                                              ; preds = %136
  br label %152

152:                                              ; preds = %151, %150, %149, %148, %147, %146, %145, %144, %143, %142, %141, %140, %139, %136
  %153 = phi i1 [ true, %151 ], [ true, %150 ], [ true, %149 ], [ true, %148 ], [ true, %147 ], [ true, %146 ], [ true, %145 ], [ true, %144 ], [ true, %143 ], [ true, %142 ], [ true, %141 ], [ true, %140 ], [ true, %139 ], [ false, %136 ]
  %154 = phi i32 [ 17, %151 ], [ 16, %150 ], [ 15, %149 ], [ 14, %148 ], [ 3, %147 ], [ 2, %146 ], [ 1, %145 ], [ 11, %144 ], [ 10, %143 ], [ 9, %142 ], [ 8, %141 ], [ 7, %140 ], [ 6, %139 ], [ %127, %136 ]
  %155 = load i8, ptr %1, align 1, !range !8
  %156 = icmp ne i8 %155, 0
  %157 = load i8, ptr %70, align 1, !range !8
  %158 = icmp eq i8 %157, 0
  %159 = icmp ne i32 %121, 0
  %160 = xor i1 %156, true
  %161 = and i1 %159, %160
  %162 = zext i1 %161 to i64
  %163 = zext i32 %121 to i64
  %164 = shl nuw nsw i64 %163, 4
  %165 = zext i32 %100 to i64
  %166 = shl nuw nsw i64 %165, 8
  %167 = or i64 %164, %166
  %168 = or i64 %167, %162
  %169 = or i64 %168, 16777216
  %170 = select i1 %158, i64 %168, i64 %169
  %171 = and i1 %153, %156
  %172 = or i64 %170, 33554432
  %173 = select i1 %171, i64 %172, i64 %170
  %174 = zext i32 %154 to i64
  %175 = shl nuw nsw i64 %174, 28
  %176 = zext i32 %138 to i64
  %177 = shl nuw nsw i64 %176, 36
  %178 = or i64 %175, %177
  %179 = or i64 %173, %178
  store i64 %179, ptr %0, align 8
  %180 = load i8, ptr %1, align 1, !range !8
  %181 = icmp ne i8 %180, 0
  %182 = load i16, ptr %79, align 4
  %183 = zext i16 %182 to i64
  %184 = load i16, ptr %73, align 4
  %185 = zext i16 %184 to i64
  %186 = getelementptr inbounds %struct.spu_aead_parms, ptr %4, i32 0, i32 4
  %187 = load i8, ptr %186, align 4, !range !8
  %188 = icmp eq i8 %187, 0
  %189 = load i16, ptr %75, align 4
  %190 = zext i16 %189 to i64
  %191 = load i8, ptr %78, align 4
  %192 = zext i8 %191 to i64
  %193 = getelementptr inbounds %struct.spu_request_opts, ptr %1, i32 0, i32 4
  %194 = load i8, ptr %193, align 1, !range !8
  %195 = icmp eq i8 %194, 0
  %196 = icmp ne i8 %191, 0
  %197 = and i1 %181, %196
  %198 = zext i1 %197 to i64
  %199 = icmp eq i32 %124, 0
  %200 = or i64 %198, 2305843009213693968
  %201 = select i1 %199, i64 %198, i64 %200
  %202 = icmp eq i16 %182, 0
  %203 = shl nuw nsw i64 %183, 8
  %204 = and i64 %203, 65280
  %205 = select i1 %202, i64 0, i64 %204
  %206 = icmp eq i16 %184, 0
  %207 = shl nuw nsw i64 %185, 20
  %208 = and i64 %207, 267386880
  %209 = select i1 %206, i64 0, i64 %208
  %210 = or i64 %209, %205
  %211 = or i64 %210, %201
  br i1 %188, label %224, label %212

212:                                              ; preds = %152
  %213 = getelementptr inbounds %struct.spu_aead_parms, ptr %4, i32 0, i32 6
  %214 = load i32, ptr %213, align 4
  %215 = zext i32 %214 to i64
  %216 = getelementptr inbounds %struct.spu_aead_parms, ptr %4, i32 0, i32 5
  %217 = load i32, ptr %216, align 4
  %218 = zext i32 %217 to i64
  %219 = shl nuw i64 %218, 32
  %220 = shl i64 %215, 36
  %221 = or i64 %211, %220
  %222 = or i64 %221, %219
  %223 = or i64 %222, 1073741824
  br label %224

224:                                              ; preds = %212, %152
  %225 = phi i64 [ %223, %212 ], [ %211, %152 ]
  %226 = shl nuw nsw i64 %190, 40
  %227 = and i64 %226, 34084860461056
  %228 = shl nuw nsw i64 %192, 48
  %229 = and i64 %228, 35747322042253312
  %230 = select i1 %196, i64 %229, i64 0
  %231 = select i1 %195, i64 4755801206503243776, i64 144115188075855872
  %232 = or i64 %231, %227
  %233 = or i64 %232, %230
  %234 = or i64 %233, %225
  %235 = getelementptr inbounds %struct.SPU2_FMD, ptr %0, i32 0, i32 1
  store i64 %234, ptr %235, align 8
  %236 = zext i32 %123 to i64
  %237 = shl nuw i64 %236, 32
  %238 = getelementptr inbounds %struct.SPU2_FMD, ptr %0, i32 0, i32 2
  store i64 %237, ptr %238, align 8
  %239 = zext i32 %122 to i64
  %240 = getelementptr inbounds %struct.SPU2_FMD, ptr %0, i32 0, i32 3
  store i64 %239, ptr %240, align 8
  %241 = getelementptr %struct.SPU2_FMD, ptr %0, i32 1
  %242 = load i16, ptr %79, align 4
  %243 = icmp eq i16 %242, 0
  br i1 %243, label %251, label %244

244:                                              ; preds = %224
  %245 = load ptr, ptr %80, align 4
  %246 = zext i16 %242 to i32
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %241, ptr align 1 %245, i32 %246, i1 false)
  %247 = load i16, ptr %79, align 4
  %248 = zext i16 %247 to i32
  %249 = getelementptr i8, ptr %241, i32 %248
  %250 = add nuw nsw i32 %248, 32
  br label %251

251:                                              ; preds = %244, %224
  %252 = phi ptr [ %249, %244 ], [ %241, %224 ]
  %253 = phi i32 [ %250, %244 ], [ 32, %224 ]
  %254 = load i16, ptr %73, align 4
  %255 = icmp eq i16 %254, 0
  br i1 %255, label %263, label %256

256:                                              ; preds = %251
  %257 = load ptr, ptr %74, align 4
  %258 = zext i16 %254 to i32
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %252, ptr align 1 %257, i32 %258, i1 false)
  %259 = load i16, ptr %73, align 4
  %260 = zext i16 %259 to i32
  %261 = getelementptr i8, ptr %252, i32 %260
  %262 = add nuw nsw i32 %253, %260
  br label %263

263:                                              ; preds = %256, %251
  %264 = phi ptr [ %261, %256 ], [ %252, %251 ]
  %265 = phi i32 [ %262, %256 ], [ %253, %251 ]
  %266 = load i16, ptr %75, align 4
  %267 = icmp eq i16 %266, 0
  br i1 %267, label %274, label %268

268:                                              ; preds = %263
  %269 = load ptr, ptr %76, align 4
  %270 = zext i16 %266 to i32
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %264, ptr align 1 %269, i32 %270, i1 false)
  %271 = load i16, ptr %75, align 4
  %272 = zext i16 %271 to i32
  %273 = add nuw nsw i32 %265, %272
  br label %274

274:                                              ; preds = %268, %263, %145, %136, %131, %126, %120
  %275 = phi i32 [ 0, %120 ], [ %273, %268 ], [ %265, %263 ], [ 0, %126 ], [ 0, %145 ], [ 0, %136 ], [ 0, %131 ]
  ret i32 %275
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @spu2_cipher_req_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.spu_cipher_parms, ptr %1, i32 0, i32 1
  %4 = getelementptr inbounds %struct.spu_cipher_parms, ptr %1, i32 0, i32 2
  %5 = getelementptr inbounds %struct.spu_cipher_parms, ptr %1, i32 0, i32 6
  %6 = getelementptr inbounds %struct.spu_cipher_parms, ptr %1, i32 0, i32 4
  %7 = getelementptr inbounds %struct.spu_cipher_parms, ptr %1, i32 0, i32 3
  %8 = load i32, ptr %3, align 4
  %9 = load i32, ptr %4, align 4
  %10 = icmp ult i32 %8, 8
  br i1 %10, label %11, label %50

11:                                               ; preds = %2
  %12 = load i32, ptr %1, align 4
  %13 = getelementptr inbounds [8 x i32], ptr @switch.table.spu2_cipher_req_init, i32 0, i32 %8
  %14 = load i32, ptr %13, align 4
  switch i32 %12, label %50 [
    i32 0, label %22
    i32 4, label %17
    i32 2, label %15
    i32 3, label %16
  ]

15:                                               ; preds = %11
  br label %22

16:                                               ; preds = %11
  br label %22

17:                                               ; preds = %11
  %18 = icmp ult i32 %9, 3
  br i1 %18, label %19, label %50

19:                                               ; preds = %17
  %20 = shl i32 %9, 4
  %21 = add i32 %20, 16
  br label %22

22:                                               ; preds = %19, %16, %15, %11
  %23 = phi i32 [ %12, %11 ], [ 80, %16 ], [ 64, %15 ], [ %21, %19 ]
  %24 = load i16, ptr %6, align 4
  %25 = zext i16 %24 to i32
  %26 = load i16, ptr %5, align 4
  %27 = or i32 %23, %14
  %28 = zext i32 %27 to i64
  %29 = shl i32 %25, 20
  %30 = zext i32 %29 to i64
  %31 = zext i16 %26 to i64
  %32 = shl nuw nsw i64 %31, 40
  %33 = or i64 %32, %30
  %34 = or i64 %33, 4755801206503243776
  store i64 %28, ptr %0, align 8
  %35 = getelementptr inbounds %struct.SPU2_FMD, ptr %0, i32 0, i32 1
  store i64 %34, ptr %35, align 8
  %36 = getelementptr inbounds %struct.SPU2_FMD, ptr %0, i32 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %36, i8 0, i64 16, i1 false) #7
  %37 = getelementptr %struct.SPU2_FMD, ptr %0, i32 1
  %38 = load ptr, ptr %7, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %45, label %40

40:                                               ; preds = %22
  %41 = load i16, ptr %6, align 4
  %42 = icmp eq i16 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %40
  %44 = zext i16 %41 to i32
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %37, ptr nonnull align 1 %38, i32 %44, i1 false)
  br label %45

45:                                               ; preds = %43, %40, %22
  %46 = load i16, ptr %6, align 4
  %47 = add i16 %46, 32
  %48 = load i16, ptr %5, align 4
  %49 = add i16 %47, %48
  br label %50

50:                                               ; preds = %45, %17, %11, %2
  %51 = phi i16 [ %49, %45 ], [ 0, %2 ], [ 0, %17 ], [ 0, %11 ]
  ret i16 %51
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @spu2_cipher_req_finish(ptr nocapture noundef %0, i16 noundef zeroext %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4) local_unnamed_addr #2 {
  %6 = getelementptr inbounds %struct.spu_cipher_parms, ptr %3, i32 0, i32 6
  %7 = getelementptr %struct.SPU2_FMD, ptr %0, i32 1
  %8 = load i64, ptr %0, align 8
  %9 = icmp eq i32 %2, 0
  %10 = and i64 %8, -2
  %11 = zext i1 %9 to i64
  %12 = or i64 %10, %11
  store i64 %12, ptr %0, align 8
  %13 = load i32, ptr %3, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %28, label %15

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.spu_cipher_parms, ptr %3, i32 0, i32 5
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %28, label %19

19:                                               ; preds = %15
  %20 = load i16, ptr %6, align 4
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %19
  %23 = zext i16 %20 to i32
  %24 = getelementptr inbounds %struct.spu_cipher_parms, ptr %3, i32 0, i32 4
  %25 = load i16, ptr %24, align 4
  %26 = zext i16 %25 to i32
  %27 = getelementptr i8, ptr %7, i32 %26
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %27, ptr nonnull align 1 %17, i32 %23, i1 false)
  br label %28

28:                                               ; preds = %22, %19, %15, %5
  %29 = getelementptr inbounds %struct.SPU2_FMD, ptr %0, i32 0, i32 3
  %30 = load i64, ptr %29, align 8
  %31 = zext i32 %4 to i64
  %32 = or i64 %30, %31
  store i64 %32, ptr %29, align 8
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @spu2_request_pad(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #4 {
  %8 = icmp eq i32 %1, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %7
  tail call void @llvm.memset.p0.i32(ptr align 1 %0, i8 0, i32 %1, i1 false)
  %10 = getelementptr i8, ptr %0, i32 %1
  br label %11

11:                                               ; preds = %9, %7
  %12 = phi ptr [ %10, %9 ], [ %0, %7 ]
  %13 = icmp eq i32 %2, 0
  br i1 %13, label %23, label %14

14:                                               ; preds = %11
  tail call void @llvm.memset.p0.i32(ptr align 1 %12, i8 0, i32 %2, i1 false)
  store i8 -128, ptr %12, align 1
  %15 = add i32 %2, -8
  %16 = getelementptr i8, ptr %12, i32 %15
  %17 = icmp eq i32 %3, 1
  %18 = zext i32 %5 to i64
  %19 = shl nuw nsw i64 %18, 3
  %20 = tail call i64 @llvm.bswap.i64(i64 %19)
  %21 = select i1 %17, i64 %19, i64 %20
  store i64 %21, ptr %16, align 8
  %22 = getelementptr i8, ptr %12, i32 %2
  br label %23

23:                                               ; preds = %14, %11
  %24 = phi ptr [ %22, %14 ], [ %12, %11 ]
  %25 = icmp eq i32 %6, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  tail call void @llvm.memset.p0.i32(ptr align 1 %24, i8 0, i32 %6, i1 false)
  br label %27

27:                                               ; preds = %26, %23
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @spu2_xts_tweak_in_payload() local_unnamed_addr #1 {
  ret i8 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @spu2_tx_status_len() local_unnamed_addr #1 {
  ret i8 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @spu2_rx_status_len() local_unnamed_addr #1 {
  ret i8 2
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @spu2_status_process(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i16, ptr %0, align 2
  %3 = icmp eq i16 %2, 0
  %4 = icmp eq i16 %2, 1
  %5 = select i1 %4, i32 1, i32 -74
  %6 = select i1 %3, i32 0, i32 %5
  ret i32 %6
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @spu2_ccm_update_iv(i32 noundef %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %5) local_unnamed_addr #2 {
  %7 = getelementptr inbounds %struct.spu_cipher_parms, ptr %1, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  br i1 %5, label %14, label %9

9:                                                ; preds = %6
  %10 = load i8, ptr %8, align 1
  %11 = and i8 %10, 7
  %12 = add nuw nsw i8 %11, 2
  %13 = zext i8 %12 to i16
  br label %14

14:                                               ; preds = %9, %6
  %15 = phi i16 [ %13, %9 ], [ 5, %6 ]
  %16 = getelementptr inbounds %struct.spu_cipher_parms, ptr %1, i32 0, i32 6
  %17 = load i16, ptr %16, align 4
  %18 = sub i16 %17, %15
  store i16 %18, ptr %16, align 4
  %19 = getelementptr i8, ptr %8, i32 1
  %20 = zext i16 %18 to i32
  tail call void @llvm.memmove.p0.p0.i32(ptr align 1 %8, ptr align 1 %19, i32 %20, i1 false)
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i32(ptr nocapture writeonly, ptr nocapture readonly, i32, i1 immarg) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @spu2_wordalign_padlen(i32 noundef %0) local_unnamed_addr #1 {
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }

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
