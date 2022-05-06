; ModuleID = '/llk/IR/fs/ext4/hash.c_pt.bc'
source_filename = "../fs/ext4/hash.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dx_hash_info = type { i32, i32, i32, ptr }

@__func__.__ext4fs_dirhash = private unnamed_addr constant [17 x i8] c"__ext4fs_dirhash\00", align 1
@.str = private unnamed_addr constant [21 x i8] c"Siphash requires key\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4fs_dirhash(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3) local_unnamed_addr #0 {
  %5 = alloca [8 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %5, i8 0, i32 32, i1 false) #6, !annotation !8
  %6 = getelementptr inbounds %struct.dx_hash_info, ptr %3, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %33, label %9

9:                                                ; preds = %4
  %10 = load i32, ptr %7, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds i8, ptr %7, i32 4
  %14 = load i32, ptr %13, align 4
  br label %27

15:                                               ; preds = %9
  %16 = getelementptr i32, ptr %7, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %15
  %20 = getelementptr i32, ptr %7, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = getelementptr i32, ptr %7, i32 3
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %23, %19, %15, %12
  %28 = phi i32 [ %14, %12 ], [ 0, %23 ], [ 0, %19 ], [ %17, %15 ]
  %29 = getelementptr inbounds i8, ptr %7, i32 8
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds i8, ptr %7, i32 12
  %32 = load i32, ptr %31, align 4
  br label %33

33:                                               ; preds = %27, %23, %4
  %34 = phi i32 [ 1732584193, %4 ], [ %10, %27 ], [ 1732584193, %23 ]
  %35 = phi i32 [ -271733879, %4 ], [ %28, %27 ], [ -271733879, %23 ]
  %36 = phi i32 [ -1732584194, %4 ], [ %30, %27 ], [ -1732584194, %23 ]
  %37 = phi i32 [ 271733878, %4 ], [ %32, %27 ], [ 271733878, %23 ]
  %38 = getelementptr inbounds %struct.dx_hash_info, ptr %3, i32 0, i32 2
  %39 = load i32, ptr %38, align 4
  switch i32 %39, label %319 [
    i32 3, label %40
    i32 0, label %60
    i32 4, label %80
    i32 1, label %81
    i32 5, label %271
    i32 2, label %272
    i32 6, label %318
  ]

40:                                               ; preds = %33
  %41 = icmp eq i32 %2, 0
  br i1 %41, label %326, label %42

42:                                               ; preds = %42, %40
  %43 = phi ptr [ %48, %42 ], [ %1, %40 ]
  %44 = phi i32 [ %45, %42 ], [ 934013177, %40 ]
  %45 = phi i32 [ %56, %42 ], [ 312737325, %40 ]
  %46 = phi i32 [ %47, %42 ], [ %2, %40 ]
  %47 = add i32 %46, -1
  %48 = getelementptr i8, ptr %43, i32 1
  %49 = load i8, ptr %43, align 1
  %50 = zext i8 %49 to i32
  %51 = mul nuw nsw i32 %50, 7152373
  %52 = xor i32 %51, %45
  %53 = add i32 %52, %44
  %54 = add i32 %53, -2147483647
  %55 = icmp slt i32 %53, 0
  %56 = select i1 %55, i32 %54, i32 %53
  %57 = icmp eq i32 %47, 0
  br i1 %57, label %58, label %42

58:                                               ; preds = %42
  %59 = shl i32 %56, 1
  br label %320

60:                                               ; preds = %33
  %61 = icmp eq i32 %2, 0
  br i1 %61, label %326, label %62

62:                                               ; preds = %62, %60
  %63 = phi ptr [ %68, %62 ], [ %1, %60 ]
  %64 = phi i32 [ %65, %62 ], [ 934013177, %60 ]
  %65 = phi i32 [ %76, %62 ], [ 312737325, %60 ]
  %66 = phi i32 [ %67, %62 ], [ %2, %60 ]
  %67 = add i32 %66, -1
  %68 = getelementptr i8, ptr %63, i32 1
  %69 = load i8, ptr %63, align 1
  %70 = sext i8 %69 to i32
  %71 = mul nsw i32 %70, 7152373
  %72 = xor i32 %71, %65
  %73 = add i32 %72, %64
  %74 = add i32 %73, -2147483647
  %75 = icmp slt i32 %73, 0
  %76 = select i1 %75, i32 %74, i32 %73
  %77 = icmp eq i32 %67, 0
  br i1 %77, label %78, label %62

78:                                               ; preds = %62
  %79 = shl i32 %76, 1
  br label %320

80:                                               ; preds = %33
  br label %81

81:                                               ; preds = %80, %33
  %82 = phi ptr [ @str2hashbuf_signed, %33 ], [ @str2hashbuf_unsigned, %80 ]
  %83 = icmp sgt i32 %2, 0
  br i1 %83, label %84, label %320

84:                                               ; preds = %81
  %85 = getelementptr inbounds i32, ptr %5, i32 1
  %86 = getelementptr inbounds i32, ptr %5, i32 2
  %87 = getelementptr inbounds i32, ptr %5, i32 3
  %88 = getelementptr inbounds i32, ptr %5, i32 4
  %89 = getelementptr inbounds i32, ptr %5, i32 5
  %90 = getelementptr inbounds i32, ptr %5, i32 6
  %91 = getelementptr inbounds i32, ptr %5, i32 7
  br label %92

92:                                               ; preds = %92, %84
  %93 = phi ptr [ %1, %84 ], [ %269, %92 ]
  %94 = phi i32 [ %2, %84 ], [ %268, %92 ]
  %95 = phi i32 [ %37, %84 ], [ %267, %92 ]
  %96 = phi i32 [ %36, %84 ], [ %266, %92 ]
  %97 = phi i32 [ %35, %84 ], [ %265, %92 ]
  %98 = phi i32 [ %34, %84 ], [ %264, %92 ]
  call void %82(ptr noundef %93, i32 noundef %94, ptr noundef nonnull %5, i32 noundef 8) #6, !callees !9
  %99 = xor i32 %96, %95
  %100 = and i32 %99, %97
  %101 = xor i32 %100, %95
  %102 = load i32, ptr %5, align 4
  %103 = add i32 %101, %98
  %104 = add i32 %103, %102
  %105 = call i32 @llvm.fshl.i32(i32 %104, i32 %104, i32 3) #6
  %106 = xor i32 %97, %96
  %107 = and i32 %105, %106
  %108 = xor i32 %107, %96
  %109 = load i32, ptr %85, align 4
  %110 = add i32 %109, %95
  %111 = add i32 %110, %108
  %112 = call i32 @llvm.fshl.i32(i32 %111, i32 %111, i32 7) #6
  %113 = xor i32 %105, %97
  %114 = and i32 %112, %113
  %115 = xor i32 %114, %97
  %116 = load i32, ptr %86, align 4
  %117 = add i32 %116, %96
  %118 = add i32 %117, %115
  %119 = call i32 @llvm.fshl.i32(i32 %118, i32 %118, i32 11) #6
  %120 = xor i32 %112, %105
  %121 = and i32 %119, %120
  %122 = xor i32 %121, %105
  %123 = load i32, ptr %87, align 4
  %124 = add i32 %123, %97
  %125 = add i32 %124, %122
  %126 = call i32 @llvm.fshl.i32(i32 %125, i32 %125, i32 19) #6
  %127 = xor i32 %119, %112
  %128 = and i32 %126, %127
  %129 = xor i32 %128, %112
  %130 = load i32, ptr %88, align 4
  %131 = add i32 %130, %105
  %132 = add i32 %131, %129
  %133 = call i32 @llvm.fshl.i32(i32 %132, i32 %132, i32 3) #6
  %134 = xor i32 %126, %119
  %135 = and i32 %133, %134
  %136 = xor i32 %135, %119
  %137 = load i32, ptr %89, align 4
  %138 = add i32 %112, %137
  %139 = add i32 %138, %136
  %140 = call i32 @llvm.fshl.i32(i32 %139, i32 %139, i32 7) #6
  %141 = xor i32 %133, %126
  %142 = and i32 %140, %141
  %143 = xor i32 %142, %126
  %144 = load i32, ptr %90, align 4
  %145 = add i32 %119, %144
  %146 = add i32 %145, %143
  %147 = call i32 @llvm.fshl.i32(i32 %146, i32 %146, i32 11) #6
  %148 = xor i32 %140, %133
  %149 = and i32 %147, %148
  %150 = xor i32 %149, %133
  %151 = load i32, ptr %91, align 4
  %152 = add i32 %126, %151
  %153 = add i32 %152, %150
  %154 = call i32 @llvm.fshl.i32(i32 %153, i32 %153, i32 19) #6
  %155 = and i32 %154, %147
  %156 = xor i32 %154, %147
  %157 = and i32 %156, %140
  %158 = add i32 %109, 1518500249
  %159 = add i32 %158, %133
  %160 = add i32 %159, %155
  %161 = add i32 %160, %157
  %162 = call i32 @llvm.fshl.i32(i32 %161, i32 %161, i32 3) #6
  %163 = and i32 %162, %154
  %164 = xor i32 %162, %154
  %165 = and i32 %164, %147
  %166 = add i32 %123, 1518500249
  %167 = add i32 %166, %140
  %168 = add i32 %167, %163
  %169 = add i32 %168, %165
  %170 = call i32 @llvm.fshl.i32(i32 %169, i32 %169, i32 5) #6
  %171 = and i32 %170, %162
  %172 = xor i32 %170, %162
  %173 = and i32 %172, %154
  %174 = add i32 %137, 1518500249
  %175 = add i32 %174, %147
  %176 = add i32 %175, %171
  %177 = add i32 %176, %173
  %178 = call i32 @llvm.fshl.i32(i32 %177, i32 %177, i32 9) #6
  %179 = and i32 %178, %170
  %180 = xor i32 %178, %170
  %181 = and i32 %180, %162
  %182 = add i32 %151, 1518500249
  %183 = add i32 %182, %154
  %184 = add i32 %183, %179
  %185 = add i32 %184, %181
  %186 = call i32 @llvm.fshl.i32(i32 %185, i32 %185, i32 13) #6
  %187 = and i32 %186, %178
  %188 = xor i32 %186, %178
  %189 = and i32 %188, %170
  %190 = add i32 %102, 1518500249
  %191 = add i32 %190, %162
  %192 = add i32 %191, %187
  %193 = add i32 %192, %189
  %194 = call i32 @llvm.fshl.i32(i32 %193, i32 %193, i32 3) #6
  %195 = and i32 %194, %186
  %196 = xor i32 %194, %186
  %197 = and i32 %196, %178
  %198 = add i32 %116, 1518500249
  %199 = add i32 %198, %170
  %200 = add i32 %199, %195
  %201 = add i32 %200, %197
  %202 = call i32 @llvm.fshl.i32(i32 %201, i32 %201, i32 5) #6
  %203 = and i32 %202, %194
  %204 = xor i32 %202, %194
  %205 = and i32 %204, %186
  %206 = add i32 %130, 1518500249
  %207 = add i32 %206, %178
  %208 = add i32 %207, %203
  %209 = add i32 %208, %205
  %210 = call i32 @llvm.fshl.i32(i32 %209, i32 %209, i32 9) #6
  %211 = and i32 %210, %202
  %212 = xor i32 %210, %202
  %213 = and i32 %212, %194
  %214 = add i32 %144, 1518500249
  %215 = add i32 %214, %186
  %216 = add i32 %215, %211
  %217 = add i32 %216, %213
  %218 = call i32 @llvm.fshl.i32(i32 %217, i32 %217, i32 13) #6
  %219 = xor i32 %218, %212
  %220 = add i32 %123, 1859775393
  %221 = add i32 %220, %194
  %222 = add i32 %221, %219
  %223 = call i32 @llvm.fshl.i32(i32 %222, i32 %222, i32 3) #6
  %224 = xor i32 %223, %218
  %225 = xor i32 %224, %210
  %226 = add i32 %151, 1859775393
  %227 = add i32 %226, %202
  %228 = add i32 %227, %225
  %229 = call i32 @llvm.fshl.i32(i32 %228, i32 %228, i32 9) #6
  %230 = xor i32 %229, %224
  %231 = add i32 %116, 1859775393
  %232 = add i32 %231, %210
  %233 = add i32 %232, %230
  %234 = call i32 @llvm.fshl.i32(i32 %233, i32 %233, i32 11) #6
  %235 = xor i32 %234, %229
  %236 = xor i32 %235, %223
  %237 = add i32 %144, 1859775393
  %238 = add i32 %237, %218
  %239 = add i32 %238, %236
  %240 = call i32 @llvm.fshl.i32(i32 %239, i32 %239, i32 15) #6
  %241 = xor i32 %235, %240
  %242 = add i32 %109, 1859775393
  %243 = add i32 %242, %223
  %244 = add i32 %243, %241
  %245 = call i32 @llvm.fshl.i32(i32 %244, i32 %244, i32 3) #6
  %246 = xor i32 %240, %234
  %247 = xor i32 %246, %245
  %248 = add i32 %137, 1859775393
  %249 = add i32 %248, %229
  %250 = add i32 %249, %247
  %251 = call i32 @llvm.fshl.i32(i32 %250, i32 %250, i32 9) #6
  %252 = xor i32 %245, %240
  %253 = xor i32 %252, %251
  %254 = add i32 %102, 1859775393
  %255 = add i32 %254, %234
  %256 = add i32 %255, %253
  %257 = call i32 @llvm.fshl.i32(i32 %256, i32 %256, i32 11) #6
  %258 = xor i32 %251, %245
  %259 = xor i32 %258, %257
  %260 = add i32 %130, 1859775393
  %261 = add i32 %260, %240
  %262 = add i32 %261, %259
  %263 = call i32 @llvm.fshl.i32(i32 %262, i32 %262, i32 15) #6
  %264 = add i32 %245, %98
  %265 = add i32 %263, %97
  %266 = add i32 %257, %96
  %267 = add i32 %251, %95
  %268 = add nsw i32 %94, -32
  %269 = getelementptr i8, ptr %93, i32 32
  %270 = icmp ugt i32 %94, 32
  br i1 %270, label %92, label %320

271:                                              ; preds = %33
  br label %272

272:                                              ; preds = %271, %33
  %273 = phi ptr [ @str2hashbuf_signed, %33 ], [ @str2hashbuf_unsigned, %271 ]
  %274 = icmp sgt i32 %2, 0
  br i1 %274, label %275, label %320

275:                                              ; preds = %272
  %276 = getelementptr inbounds i32, ptr %5, i32 1
  %277 = getelementptr inbounds i32, ptr %5, i32 2
  %278 = getelementptr inbounds i32, ptr %5, i32 3
  br label %279

279:                                              ; preds = %312, %275
  %280 = phi ptr [ %1, %275 ], [ %316, %312 ]
  %281 = phi i32 [ %2, %275 ], [ %315, %312 ]
  %282 = phi i32 [ %35, %275 ], [ %314, %312 ]
  %283 = phi i32 [ %34, %275 ], [ %313, %312 ]
  call void %273(ptr noundef %280, i32 noundef %281, ptr noundef nonnull %5, i32 noundef 4) #6, !callees !9
  %284 = load i32, ptr %5, align 4
  %285 = load i32, ptr %276, align 4
  %286 = load i32, ptr %277, align 4
  %287 = load i32, ptr %278, align 4
  br label %288

288:                                              ; preds = %288, %279
  %289 = phi i32 [ 0, %279 ], [ %293, %288 ]
  %290 = phi i32 [ %283, %279 ], [ %301, %288 ]
  %291 = phi i32 [ %282, %279 ], [ %309, %288 ]
  %292 = phi i32 [ 16, %279 ], [ %310, %288 ]
  %293 = add i32 %289, -1640531527
  %294 = shl i32 %291, 4
  %295 = add i32 %294, %284
  %296 = add i32 %291, %293
  %297 = xor i32 %295, %296
  %298 = lshr i32 %291, 5
  %299 = add i32 %298, %285
  %300 = xor i32 %297, %299
  %301 = add i32 %300, %290
  %302 = shl i32 %301, 4
  %303 = add i32 %302, %286
  %304 = add i32 %301, %293
  %305 = xor i32 %303, %304
  %306 = lshr i32 %301, 5
  %307 = add i32 %306, %287
  %308 = xor i32 %305, %307
  %309 = add i32 %308, %291
  %310 = add nsw i32 %292, -1
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %312, label %288

312:                                              ; preds = %288
  %313 = add i32 %301, %283
  %314 = add i32 %309, %282
  %315 = add nsw i32 %281, -16
  %316 = getelementptr i8, ptr %280, i32 16
  %317 = icmp sgt i32 %281, 16
  br i1 %317, label %279, label %320

318:                                              ; preds = %33
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning_inode(ptr noundef %0, ptr noundef nonnull @__func__.__ext4fs_dirhash, i32 noundef 270, ptr noundef nonnull @.str) #6
  br label %330

319:                                              ; preds = %33
  store i32 0, ptr %3, align 4
  br label %330

320:                                              ; preds = %312, %272, %92, %81, %78, %58
  %321 = phi i32 [ %59, %58 ], [ %79, %78 ], [ %35, %81 ], [ %34, %272 ], [ %265, %92 ], [ %313, %312 ]
  %322 = phi i32 [ 0, %58 ], [ 0, %78 ], [ %36, %81 ], [ %35, %272 ], [ %266, %92 ], [ %314, %312 ]
  %323 = and i32 %321, -2
  %324 = icmp ugt i32 %321, -3
  %325 = select i1 %324, i32 -4, i32 %323
  br label %326

326:                                              ; preds = %320, %60, %40
  %327 = phi i32 [ 0, %40 ], [ 0, %60 ], [ %322, %320 ]
  %328 = phi i32 [ 625474650, %40 ], [ 625474650, %60 ], [ %325, %320 ]
  store i32 %328, ptr %3, align 4
  %329 = getelementptr inbounds %struct.dx_hash_info, ptr %3, i32 0, i32 1
  store i32 %327, ptr %329, align 4
  br label %330

330:                                              ; preds = %326, %319, %318
  %331 = phi i32 [ -1, %319 ], [ 0, %326 ], [ -1, %318 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #6
  ret i32 %331
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @str2hashbuf_signed(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2, i32 noundef %3) unnamed_addr #3 {
  %5 = shl i32 %1, 8
  %6 = or i32 %5, %1
  %7 = shl i32 %6, 16
  %8 = or i32 %7, %6
  %9 = shl i32 %3, 2
  %10 = tail call i32 @llvm.smin.i32(i32 %9, i32 %1)
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %33

12:                                               ; preds = %27, %4
  %13 = phi i32 [ %31, %27 ], [ 0, %4 ]
  %14 = phi i32 [ %30, %27 ], [ %8, %4 ]
  %15 = phi i32 [ %29, %27 ], [ %3, %4 ]
  %16 = phi ptr [ %28, %27 ], [ %2, %4 ]
  %17 = getelementptr i8, ptr %0, i32 %13
  %18 = load i8, ptr %17, align 1
  %19 = sext i8 %18 to i32
  %20 = shl i32 %14, 8
  %21 = add i32 %20, %19
  %22 = and i32 %13, 3
  %23 = icmp eq i32 %22, 3
  br i1 %23, label %24, label %27

24:                                               ; preds = %12
  %25 = getelementptr i32, ptr %16, i32 1
  store i32 %21, ptr %16, align 4
  %26 = add i32 %15, -1
  br label %27

27:                                               ; preds = %24, %12
  %28 = phi ptr [ %25, %24 ], [ %16, %12 ]
  %29 = phi i32 [ %26, %24 ], [ %15, %12 ]
  %30 = phi i32 [ %8, %24 ], [ %21, %12 ]
  %31 = add nuw nsw i32 %13, 1
  %32 = icmp eq i32 %31, %10
  br i1 %32, label %33, label %12

33:                                               ; preds = %27, %4
  %34 = phi ptr [ %2, %4 ], [ %28, %27 ]
  %35 = phi i32 [ %3, %4 ], [ %29, %27 ]
  %36 = phi i32 [ %8, %4 ], [ %30, %27 ]
  %37 = add i32 %35, -1
  %38 = icmp sgt i32 %37, -1
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = getelementptr i32, ptr %34, i32 1
  store i32 %36, ptr %34, align 4
  br label %41

41:                                               ; preds = %39, %33
  %42 = phi ptr [ %40, %39 ], [ %34, %33 ]
  %43 = add i32 %35, -2
  %44 = icmp sgt i32 %43, -1
  br i1 %44, label %45, label %51

45:                                               ; preds = %45, %41
  %46 = phi i32 [ %49, %45 ], [ %43, %41 ]
  %47 = phi ptr [ %48, %45 ], [ %42, %41 ]
  %48 = getelementptr i32, ptr %47, i32 1
  store i32 %8, ptr %47, align 4
  %49 = add nsw i32 %46, -1
  %50 = icmp sgt i32 %46, 0
  br i1 %50, label %45, label %51

51:                                               ; preds = %45, %41
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @str2hashbuf_unsigned(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2, i32 noundef %3) unnamed_addr #3 {
  %5 = shl i32 %1, 8
  %6 = or i32 %5, %1
  %7 = shl i32 %6, 16
  %8 = or i32 %7, %6
  %9 = shl i32 %3, 2
  %10 = tail call i32 @llvm.smin.i32(i32 %9, i32 %1)
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %33

12:                                               ; preds = %27, %4
  %13 = phi i32 [ %31, %27 ], [ 0, %4 ]
  %14 = phi i32 [ %30, %27 ], [ %8, %4 ]
  %15 = phi i32 [ %29, %27 ], [ %3, %4 ]
  %16 = phi ptr [ %28, %27 ], [ %2, %4 ]
  %17 = getelementptr i8, ptr %0, i32 %13
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i32
  %20 = shl i32 %14, 8
  %21 = or i32 %20, %19
  %22 = and i32 %13, 3
  %23 = icmp eq i32 %22, 3
  br i1 %23, label %24, label %27

24:                                               ; preds = %12
  %25 = getelementptr i32, ptr %16, i32 1
  store i32 %21, ptr %16, align 4
  %26 = add i32 %15, -1
  br label %27

27:                                               ; preds = %24, %12
  %28 = phi ptr [ %25, %24 ], [ %16, %12 ]
  %29 = phi i32 [ %26, %24 ], [ %15, %12 ]
  %30 = phi i32 [ %8, %24 ], [ %21, %12 ]
  %31 = add nuw nsw i32 %13, 1
  %32 = icmp eq i32 %31, %10
  br i1 %32, label %33, label %12

33:                                               ; preds = %27, %4
  %34 = phi ptr [ %2, %4 ], [ %28, %27 ]
  %35 = phi i32 [ %3, %4 ], [ %29, %27 ]
  %36 = phi i32 [ %8, %4 ], [ %30, %27 ]
  %37 = add i32 %35, -1
  %38 = icmp sgt i32 %37, -1
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = getelementptr i32, ptr %34, i32 1
  store i32 %36, ptr %34, align 4
  br label %41

41:                                               ; preds = %39, %33
  %42 = phi ptr [ %40, %39 ], [ %34, %33 ]
  %43 = add i32 %35, -2
  %44 = icmp sgt i32 %43, -1
  br i1 %44, label %45, label %51

45:                                               ; preds = %45, %41
  %46 = phi i32 [ %49, %45 ], [ %43, %41 ]
  %47 = phi ptr [ %48, %45 ], [ %42, %41 ]
  %48 = getelementptr i32, ptr %47, i32 1
  store i32 %8, ptr %47, align 4
  %49 = add nsw i32 %46, -1
  %50 = icmp sgt i32 %46, 0
  br i1 %50, label %45, label %51

51:                                               ; preds = %45, %41
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ext4_warning_inode(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }

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
!8 = !{!"auto-init"}
!9 = !{ptr @str2hashbuf_signed, ptr @str2hashbuf_unsigned}
