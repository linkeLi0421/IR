; ModuleID = '/llk/IR/lib/lzo/lzo1x_decompress_safe.c_pt.bc'
source_filename = "../lib/lzo/lzo1x_decompress_safe.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lzo1x_decompress_safe:\09\09\09\09\09"
module asm "\09.asciz \09\22lzo1x_decompress_safe\22\09\09\09\09\09"
module asm "__kstrtabns_lzo1x_decompress_safe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@__kstrtab_lzo1x_decompress_safe = external dso_local constant [0 x i8], align 1
@__kstrtabns_lzo1x_decompress_safe = external dso_local constant [0 x i8], align 1
@__ksymtab_lzo1x_decompress_safe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lzo1x_decompress_safe to i32), ptr @__kstrtab_lzo1x_decompress_safe, ptr @__kstrtabns_lzo1x_decompress_safe }, section "___ksymtab_gpl+lzo1x_decompress_safe", align 4
@__UNIQUE_ID_file100 = internal constant [43 x i8] c"lzo_decompress.file=lib/lzo/lzo_decompress\00", section ".modinfo", align 1
@__UNIQUE_ID_license101 = internal constant [27 x i8] c"lzo_decompress.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description102 = internal constant [46 x i8] c"lzo_decompress.description=LZO1X Decompressor\00", section ".modinfo", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_description102, ptr @__UNIQUE_ID_file100, ptr @__UNIQUE_ID_license101, ptr @__ksymtab_lzo1x_decompress_safe], section "llvm.metadata"

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @lzo1x_decompress_safe(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef %3) #0 {
  %5 = getelementptr i8, ptr %0, i32 %1
  %6 = load i32, ptr %3, align 4
  %7 = getelementptr i8, ptr %2, i32 %6
  %8 = icmp ult i32 %1, 3
  br i1 %8, label %403, label %9, !prof !8

9:                                                ; preds = %4
  %10 = icmp ugt i32 %1, 4
  br i1 %10, label %11, label %18, !prof !9

11:                                               ; preds = %9
  %12 = load i8, ptr %0, align 1
  %13 = icmp eq i8 %12, 17
  br i1 %13, label %14, label %22, !prof !9

14:                                               ; preds = %11
  %15 = getelementptr i8, ptr %0, i32 1
  %16 = load i8, ptr %15, align 1
  %17 = getelementptr i8, ptr %0, i32 2
  br label %18

18:                                               ; preds = %14, %9
  %19 = phi i8 [ 0, %9 ], [ %16, %14 ]
  %20 = phi ptr [ %0, %9 ], [ %17, %14 ]
  %21 = load i8, ptr %20, align 1
  br label %22

22:                                               ; preds = %18, %11
  %23 = phi i8 [ %21, %18 ], [ %12, %11 ]
  %24 = phi i8 [ %19, %18 ], [ 0, %11 ]
  %25 = phi ptr [ %20, %18 ], [ %0, %11 ]
  %26 = icmp ugt i8 %23, 17
  br i1 %26, label %37, label %27

27:                                               ; preds = %22
  %28 = ptrtoint ptr %5 to i32
  %29 = ptrtoint ptr %7 to i32
  br label %30

30:                                               ; preds = %384, %382, %373, %124, %115, %27
  %31 = phi i32 [ %29, %27 ], [ %79, %124 ], [ %361, %382 ], [ %361, %373 ], [ %79, %115 ], [ %361, %384 ]
  %32 = phi i32 [ %28, %27 ], [ %80, %124 ], [ %362, %382 ], [ %362, %373 ], [ %80, %115 ], [ %362, %384 ]
  %33 = phi i32 [ 0, %27 ], [ 4, %124 ], [ %363, %382 ], [ %363, %373 ], [ 4, %115 ], [ %363, %384 ]
  %34 = phi ptr [ %25, %27 ], [ %93, %124 ], [ %364, %382 ], [ %376, %373 ], [ %119, %115 ], [ %388, %384 ]
  %35 = phi ptr [ %2, %27 ], [ %125, %124 ], [ %365, %382 ], [ %375, %373 ], [ %121, %115 ], [ %390, %384 ]
  %36 = icmp eq i8 %24, 0
  br label %44

37:                                               ; preds = %22
  %38 = zext i8 %23 to i32
  %39 = getelementptr i8, ptr %25, i32 1
  %40 = add nsw i32 %38, -17
  %41 = icmp ult i32 %40, 4
  %42 = ptrtoint ptr %5 to i32
  %43 = ptrtoint ptr %7 to i32
  br i1 %41, label %360, label %78

44:                                               ; preds = %337, %30
  %45 = phi i32 [ %295, %337 ], [ %33, %30 ]
  %46 = phi ptr [ %340, %337 ], [ %34, %30 ]
  %47 = phi ptr [ %339, %337 ], [ %35, %30 ]
  %48 = getelementptr i8, ptr %46, i32 1
  %49 = load i8, ptr %46, align 1
  %50 = zext i8 %49 to i32
  %51 = icmp ult i8 %49, 16
  br i1 %51, label %52, label %159

52:                                               ; preds = %44
  switch i32 %45, label %126 [
    i32 0, label %53
    i32 4, label %149
  ], !prof !10

53:                                               ; preds = %52
  %54 = zext i8 %49 to i32
  %55 = icmp eq i8 %49, 0
  br i1 %55, label %56, label %74, !prof !8

56:                                               ; preds = %60, %53
  %57 = phi ptr [ %61, %60 ], [ %48, %53 ]
  %58 = load i8, ptr %57, align 1
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %60, label %63, !prof !8

60:                                               ; preds = %56
  %61 = getelementptr i8, ptr %57, i32 1
  %62 = icmp eq ptr %5, %61
  br i1 %62, label %403, label %56

63:                                               ; preds = %56
  %64 = ptrtoint ptr %57 to i32
  %65 = ptrtoint ptr %48 to i32
  %66 = sub i32 %64, %65
  %67 = icmp ugt i32 %66, 16843007
  br i1 %67, label %416, label %68, !prof !8

68:                                               ; preds = %63
  %69 = zext i8 %58 to i32
  %70 = mul nuw i32 %66, 255
  %71 = getelementptr i8, ptr %57, i32 1
  %72 = add nuw nsw i32 %69, 15
  %73 = add nuw i32 %72, %70
  br label %74

74:                                               ; preds = %68, %53
  %75 = phi i32 [ %54, %53 ], [ %73, %68 ]
  %76 = phi ptr [ %48, %53 ], [ %71, %68 ]
  %77 = add nuw i32 %75, 3
  br label %78

78:                                               ; preds = %74, %37
  %79 = phi i32 [ %31, %74 ], [ %43, %37 ]
  %80 = phi i32 [ %32, %74 ], [ %42, %37 ]
  %81 = phi i32 [ %77, %74 ], [ %40, %37 ]
  %82 = phi ptr [ %76, %74 ], [ %39, %37 ]
  %83 = phi ptr [ %47, %74 ], [ %2, %37 ]
  %84 = ptrtoint ptr %82 to i32
  %85 = sub i32 %80, %84
  %86 = add nuw i32 %81, 15
  %87 = icmp uge i32 %85, %86
  %88 = ptrtoint ptr %83 to i32
  %89 = sub i32 %79, %88
  %90 = icmp uge i32 %89, %86
  %91 = select i1 %87, i1 %90, i1 false
  br i1 %91, label %92, label %110, !prof !9

92:                                               ; preds = %78
  %93 = getelementptr i8, ptr %82, i32 %81
  br label %94

94:                                               ; preds = %94, %92
  %95 = phi ptr [ %82, %92 ], [ %108, %94 ]
  %96 = phi ptr [ %83, %92 ], [ %107, %94 ]
  %97 = load i32, ptr %95, align 1
  store i32 %97, ptr %96, align 1
  %98 = getelementptr i8, ptr %96, i32 4
  %99 = getelementptr i8, ptr %95, i32 4
  %100 = load i32, ptr %99, align 1
  store i32 %100, ptr %98, align 1
  %101 = getelementptr i8, ptr %96, i32 8
  %102 = getelementptr i8, ptr %95, i32 8
  %103 = load i32, ptr %102, align 1
  store i32 %103, ptr %101, align 1
  %104 = getelementptr i8, ptr %96, i32 12
  %105 = getelementptr i8, ptr %95, i32 12
  %106 = load i32, ptr %105, align 1
  store i32 %106, ptr %104, align 1
  %107 = getelementptr i8, ptr %96, i32 16
  %108 = getelementptr i8, ptr %95, i32 16
  %109 = icmp ult ptr %108, %93
  br i1 %109, label %94, label %124

110:                                              ; preds = %78
  %111 = icmp ult i32 %89, %81
  br i1 %111, label %408, label %112

112:                                              ; preds = %110
  %113 = add nuw i32 %81, 3
  %114 = icmp ult i32 %85, %113
  br i1 %114, label %403, label %115

115:                                              ; preds = %115, %112
  %116 = phi i32 [ %122, %115 ], [ %81, %112 ]
  %117 = phi ptr [ %119, %115 ], [ %82, %112 ]
  %118 = phi ptr [ %121, %115 ], [ %83, %112 ]
  %119 = getelementptr i8, ptr %117, i32 1
  %120 = load i8, ptr %117, align 1
  %121 = getelementptr i8, ptr %118, i32 1
  store i8 %120, ptr %118, align 1
  %122 = add i32 %116, -1
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %30, label %115

124:                                              ; preds = %94
  %125 = getelementptr i8, ptr %83, i32 %81
  br label %30

126:                                              ; preds = %52
  %127 = zext i8 %49 to i32
  %128 = and i32 %127, 3
  %129 = getelementptr i8, ptr %47, i32 -1
  %130 = lshr i32 %127, 2
  %131 = sub nsw i32 0, %130
  %132 = getelementptr i8, ptr %129, i32 %131
  %133 = getelementptr i8, ptr %46, i32 2
  %134 = load i8, ptr %48, align 1
  %135 = zext i8 %134 to i32
  %136 = mul nsw i32 %135, -4
  %137 = getelementptr i8, ptr %132, i32 %136
  %138 = icmp ult ptr %137, %2
  br i1 %138, label %412, label %139

139:                                              ; preds = %126
  %140 = ptrtoint ptr %47 to i32
  %141 = sub i32 %31, %140
  %142 = icmp ugt i32 %141, 1
  br i1 %142, label %143, label %408

143:                                              ; preds = %139
  %144 = load i8, ptr %137, align 1
  store i8 %144, ptr %47, align 1
  %145 = getelementptr i8, ptr %137, i32 1
  %146 = load i8, ptr %145, align 1
  %147 = getelementptr i8, ptr %47, i32 1
  store i8 %146, ptr %147, align 1
  %148 = getelementptr i8, ptr %47, i32 2
  br label %360

149:                                              ; preds = %52
  %150 = getelementptr i8, ptr %47, i32 -2049
  %151 = lshr i32 %50, 2
  %152 = sub nsw i32 0, %151
  %153 = getelementptr i8, ptr %150, i32 %152
  %154 = getelementptr i8, ptr %46, i32 2
  %155 = load i8, ptr %48, align 1
  %156 = zext i8 %155 to i32
  %157 = mul nsw i32 %156, -4
  %158 = getelementptr i8, ptr %153, i32 %157
  br label %290

159:                                              ; preds = %44
  %160 = icmp ugt i8 %49, 63
  br i1 %160, label %161, label %174

161:                                              ; preds = %159
  %162 = getelementptr i8, ptr %47, i32 -1
  %163 = lshr i32 %50, 2
  %164 = and i32 %163, 7
  %165 = sub nsw i32 0, %164
  %166 = getelementptr i8, ptr %162, i32 %165
  %167 = getelementptr i8, ptr %46, i32 2
  %168 = load i8, ptr %48, align 1
  %169 = zext i8 %168 to i32
  %170 = mul nsw i32 %169, -8
  %171 = getelementptr i8, ptr %166, i32 %170
  %172 = lshr i32 %50, 5
  %173 = add nuw nsw i32 %172, 1
  br label %290

174:                                              ; preds = %159
  %175 = icmp ugt i8 %49, 31
  br i1 %175, label %176, label %211

176:                                              ; preds = %174
  %177 = and i32 %50, 31
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %200, !prof !8

179:                                              ; preds = %183, %176
  %180 = phi ptr [ %184, %183 ], [ %48, %176 ]
  %181 = load i8, ptr %180, align 1
  %182 = icmp eq i8 %181, 0
  br i1 %182, label %183, label %186, !prof !8

183:                                              ; preds = %179
  %184 = getelementptr i8, ptr %180, i32 1
  %185 = icmp eq ptr %5, %184
  br i1 %185, label %403, label %179

186:                                              ; preds = %179
  %187 = ptrtoint ptr %180 to i32
  %188 = ptrtoint ptr %48 to i32
  %189 = sub i32 %187, %188
  %190 = icmp ugt i32 %189, 16843007
  br i1 %190, label %416, label %191, !prof !8

191:                                              ; preds = %186
  %192 = zext i8 %181 to i32
  %193 = mul nuw i32 %189, 255
  %194 = getelementptr i8, ptr %180, i32 1
  %195 = add nuw nsw i32 %192, 31
  %196 = add nuw i32 %195, %193
  %197 = ptrtoint ptr %194 to i32
  %198 = sub i32 %32, %197
  %199 = icmp ugt i32 %198, 1
  br i1 %199, label %200, label %403

200:                                              ; preds = %191, %176
  %201 = phi i32 [ %177, %176 ], [ %196, %191 ]
  %202 = phi ptr [ %48, %176 ], [ %194, %191 ]
  %203 = add nuw i32 %201, 2
  %204 = getelementptr i8, ptr %47, i32 -1
  %205 = load i16, ptr %202, align 1
  %206 = zext i16 %205 to i32
  %207 = getelementptr i8, ptr %202, i32 2
  %208 = lshr i32 %206, 2
  %209 = sub nsw i32 0, %208
  %210 = getelementptr i8, ptr %204, i32 %209
  br label %290

211:                                              ; preds = %174
  %212 = ptrtoint ptr %48 to i32
  %213 = sub i32 %32, %212
  %214 = icmp ugt i32 %213, 1
  br i1 %214, label %215, label %403

215:                                              ; preds = %211
  %216 = load i16, ptr %48, align 1
  %217 = zext i16 %216 to i32
  %218 = and i32 %217, 65532
  %219 = icmp ne i32 %218, 65532
  %220 = and i32 %50, 248
  %221 = icmp ne i32 %220, 24
  %222 = select i1 %219, i1 true, i1 %221
  %223 = select i1 %222, i1 true, i1 %36
  br i1 %223, label %243, label %224, !prof !11

224:                                              ; preds = %215
  %225 = icmp ugt i32 %213, 2
  br i1 %225, label %226, label %403

226:                                              ; preds = %224
  %227 = and i8 %49, 7
  %228 = getelementptr i8, ptr %46, i32 3
  %229 = load i8, ptr %228, align 1
  %230 = zext i8 %229 to i32
  %231 = shl nuw nsw i32 %230, 3
  %232 = add nuw nsw i8 %227, 4
  %233 = zext i8 %232 to i32
  %234 = add nuw nsw i32 %231, %233
  %235 = ptrtoint ptr %47 to i32
  %236 = sub i32 %31, %235
  %237 = icmp ult i32 %236, %234
  br i1 %237, label %408, label %238

238:                                              ; preds = %226
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 %47, i8 0, i32 %234, i1 false)
  %239 = getelementptr i8, ptr %47, i32 %234
  %240 = and i16 %216, 3
  %241 = zext i16 %240 to i32
  %242 = getelementptr i8, ptr %46, i32 4
  br label %360

243:                                              ; preds = %215
  %244 = shl nuw nsw i32 %50, 11
  %245 = and i32 %244, 16384
  %246 = sub nsw i32 0, %245
  %247 = getelementptr i8, ptr %47, i32 %246
  %248 = and i32 %50, 7
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %250, label %278, !prof !8

250:                                              ; preds = %243
  %251 = trunc i16 %216 to i8
  %252 = icmp eq i8 %251, 0
  br i1 %252, label %253, label %260, !prof !8

253:                                              ; preds = %257, %250
  %254 = phi ptr [ %255, %257 ], [ %48, %250 ]
  %255 = getelementptr i8, ptr %254, i32 1
  %256 = icmp eq ptr %5, %255
  br i1 %256, label %403, label %257

257:                                              ; preds = %253
  %258 = load i8, ptr %255, align 1
  %259 = icmp eq i8 %258, 0
  br i1 %259, label %253, label %260, !prof !8

260:                                              ; preds = %257, %250
  %261 = phi i8 [ %251, %250 ], [ %258, %257 ]
  %262 = phi ptr [ %48, %250 ], [ %255, %257 ]
  %263 = zext i8 %261 to i32
  %264 = ptrtoint ptr %262 to i32
  %265 = sub i32 %264, %212
  %266 = icmp ugt i32 %265, 16843007
  br i1 %266, label %416, label %267, !prof !8

267:                                              ; preds = %260
  %268 = getelementptr i8, ptr %262, i32 1
  %269 = ptrtoint ptr %268 to i32
  %270 = sub i32 %32, %269
  %271 = icmp ugt i32 %270, 1
  br i1 %271, label %272, label %403

272:                                              ; preds = %267
  %273 = mul nuw i32 %265, 255
  %274 = add nuw nsw i32 %263, 7
  %275 = add nuw i32 %274, %273
  %276 = load i16, ptr %268, align 1
  %277 = zext i16 %276 to i32
  br label %278

278:                                              ; preds = %272, %243
  %279 = phi i32 [ %277, %272 ], [ %217, %243 ]
  %280 = phi i32 [ %275, %272 ], [ %248, %243 ]
  %281 = phi ptr [ %262, %272 ], [ %46, %243 ]
  %282 = add nuw i32 %280, 2
  %283 = getelementptr i8, ptr %281, i32 3
  %284 = lshr i32 %279, 2
  %285 = sub nsw i32 0, %284
  %286 = getelementptr i8, ptr %247, i32 %285
  %287 = icmp eq ptr %286, %47
  br i1 %287, label %393, label %288

288:                                              ; preds = %278
  %289 = getelementptr i8, ptr %286, i32 -16384
  br label %290

290:                                              ; preds = %288, %200, %161, %149
  %291 = phi ptr [ %158, %149 ], [ %171, %161 ], [ %210, %200 ], [ %289, %288 ]
  %292 = phi i32 [ %50, %149 ], [ %50, %161 ], [ %206, %200 ], [ %279, %288 ]
  %293 = phi i32 [ 3, %149 ], [ %173, %161 ], [ %203, %200 ], [ %282, %288 ]
  %294 = phi ptr [ %154, %149 ], [ %167, %161 ], [ %207, %200 ], [ %283, %288 ]
  %295 = and i32 %292, 3
  %296 = icmp ult ptr %291, %2
  br i1 %296, label %412, label %297

297:                                              ; preds = %290
  %298 = ptrtoint ptr %47 to i32
  %299 = ptrtoint ptr %291 to i32
  %300 = sub i32 %298, %299
  %301 = icmp sgt i32 %300, 7
  br i1 %301, label %302, label %341

302:                                              ; preds = %297
  %303 = getelementptr i8, ptr %47, i32 %293
  %304 = sub i32 %31, %298
  %305 = add nuw i32 %293, 15
  %306 = icmp ult i32 %304, %305
  br i1 %306, label %327, label %307, !prof !8

307:                                              ; preds = %307, %302
  %308 = phi ptr [ %321, %307 ], [ %291, %302 ]
  %309 = phi ptr [ %320, %307 ], [ %47, %302 ]
  %310 = load i32, ptr %308, align 1
  store i32 %310, ptr %309, align 1
  %311 = getelementptr i8, ptr %309, i32 4
  %312 = getelementptr i8, ptr %308, i32 4
  %313 = load i32, ptr %312, align 1
  store i32 %313, ptr %311, align 1
  %314 = getelementptr i8, ptr %309, i32 8
  %315 = getelementptr i8, ptr %308, i32 8
  %316 = load i32, ptr %315, align 1
  store i32 %316, ptr %314, align 1
  %317 = getelementptr i8, ptr %309, i32 12
  %318 = getelementptr i8, ptr %308, i32 12
  %319 = load i32, ptr %318, align 1
  store i32 %319, ptr %317, align 1
  %320 = getelementptr i8, ptr %309, i32 16
  %321 = getelementptr i8, ptr %308, i32 16
  %322 = icmp ult ptr %320, %303
  br i1 %322, label %307, label %323

323:                                              ; preds = %307
  %324 = ptrtoint ptr %294 to i32
  %325 = sub i32 %32, %324
  %326 = icmp ugt i32 %325, 5
  br i1 %326, label %337, label %360

327:                                              ; preds = %302
  %328 = ptrtoint ptr %47 to i32
  %329 = icmp ult i32 %304, %293
  br i1 %329, label %408, label %330

330:                                              ; preds = %330, %327
  %331 = phi ptr [ %333, %330 ], [ %291, %327 ]
  %332 = phi ptr [ %335, %330 ], [ %47, %327 ]
  %333 = getelementptr i8, ptr %331, i32 1
  %334 = load i8, ptr %331, align 1
  %335 = getelementptr i8, ptr %332, i32 1
  store i8 %334, ptr %332, align 1
  %336 = icmp ult ptr %335, %303
  br i1 %336, label %330, label %360

337:                                              ; preds = %323
  %338 = load i32, ptr %294, align 1
  store i32 %338, ptr %303, align 1
  %339 = getelementptr i8, ptr %303, i32 %295
  %340 = getelementptr i8, ptr %294, i32 %295
  br label %44

341:                                              ; preds = %297
  %342 = ptrtoint ptr %47 to i32
  %343 = getelementptr i8, ptr %47, i32 %293
  %344 = sub i32 %31, %342
  %345 = icmp ult i32 %344, %293
  br i1 %345, label %408, label %346

346:                                              ; preds = %341
  %347 = load i8, ptr %291, align 1
  store i8 %347, ptr %47, align 1
  %348 = getelementptr i8, ptr %291, i32 1
  %349 = load i8, ptr %348, align 1
  %350 = getelementptr i8, ptr %47, i32 1
  store i8 %349, ptr %350, align 1
  %351 = getelementptr i8, ptr %47, i32 2
  %352 = getelementptr i8, ptr %291, i32 2
  br label %353

353:                                              ; preds = %353, %346
  %354 = phi ptr [ %352, %346 ], [ %356, %353 ]
  %355 = phi ptr [ %351, %346 ], [ %358, %353 ]
  %356 = getelementptr i8, ptr %354, i32 1
  %357 = load i8, ptr %354, align 1
  %358 = getelementptr i8, ptr %355, i32 1
  store i8 %357, ptr %355, align 1
  %359 = icmp ult ptr %358, %343
  br i1 %359, label %353, label %360

360:                                              ; preds = %353, %330, %323, %238, %143, %37
  %361 = phi i32 [ %31, %238 ], [ %31, %143 ], [ %43, %37 ], [ %31, %330 ], [ %31, %353 ], [ %31, %323 ]
  %362 = phi i32 [ %32, %238 ], [ %32, %143 ], [ %42, %37 ], [ %32, %330 ], [ %32, %353 ], [ %32, %323 ]
  %363 = phi i32 [ %241, %238 ], [ %128, %143 ], [ %40, %37 ], [ %295, %330 ], [ %295, %353 ], [ %295, %323 ]
  %364 = phi ptr [ %242, %238 ], [ %133, %143 ], [ %39, %37 ], [ %294, %330 ], [ %294, %353 ], [ %294, %323 ]
  %365 = phi ptr [ %239, %238 ], [ %148, %143 ], [ %2, %37 ], [ %335, %330 ], [ %358, %353 ], [ %303, %323 ]
  %366 = ptrtoint ptr %364 to i32
  %367 = sub i32 %362, %366
  %368 = icmp ugt i32 %367, 5
  %369 = ptrtoint ptr %365 to i32
  %370 = sub i32 %361, %369
  %371 = icmp ugt i32 %370, 3
  %372 = select i1 %368, i1 %371, i1 false, !prof !9
  br i1 %372, label %373, label %377, !prof !9

373:                                              ; preds = %360
  %374 = load i32, ptr %364, align 1
  store i32 %374, ptr %365, align 1
  %375 = getelementptr i8, ptr %365, i32 %363
  %376 = getelementptr i8, ptr %364, i32 %363
  br label %30

377:                                              ; preds = %360
  %378 = add nsw i32 %363, 3
  %379 = icmp ult i32 %367, %378
  br i1 %379, label %403, label %380

380:                                              ; preds = %377
  %381 = icmp ult i32 %370, %363
  br i1 %381, label %408, label %382

382:                                              ; preds = %380
  %383 = icmp eq i32 %363, 0
  br i1 %383, label %30, label %384

384:                                              ; preds = %384, %382
  %385 = phi ptr [ %390, %384 ], [ %365, %382 ]
  %386 = phi ptr [ %388, %384 ], [ %364, %382 ]
  %387 = phi i32 [ %391, %384 ], [ %363, %382 ]
  %388 = getelementptr i8, ptr %386, i32 1
  %389 = load i8, ptr %386, align 1
  %390 = getelementptr i8, ptr %385, i32 1
  store i8 %389, ptr %385, align 1
  %391 = add i32 %387, -1
  %392 = icmp eq i32 %391, 0
  br i1 %392, label %30, label %384

393:                                              ; preds = %278
  %394 = ptrtoint ptr %47 to i32
  %395 = ptrtoint ptr %2 to i32
  %396 = sub i32 %394, %395
  store i32 %396, ptr %3, align 4
  %397 = icmp eq i32 %282, 3
  br i1 %397, label %398, label %416

398:                                              ; preds = %393
  %399 = icmp eq ptr %283, %5
  br i1 %399, label %416, label %400

400:                                              ; preds = %398
  %401 = icmp ult ptr %283, %5
  %402 = select i1 %401, i32 -8, i32 -4
  br label %416

403:                                              ; preds = %377, %267, %253, %224, %211, %191, %183, %112, %60, %4
  %404 = phi ptr [ %2, %4 ], [ %83, %112 ], [ %47, %224 ], [ %365, %377 ], [ %47, %60 ], [ %47, %183 ], [ %47, %253 ], [ %47, %211 ], [ %47, %191 ], [ %47, %267 ]
  %405 = ptrtoint ptr %404 to i32
  %406 = ptrtoint ptr %2 to i32
  %407 = sub i32 %405, %406
  store i32 %407, ptr %3, align 4
  br label %416

408:                                              ; preds = %380, %341, %327, %226, %139, %110
  %409 = phi i32 [ %328, %327 ], [ %342, %341 ], [ %369, %380 ], [ %235, %226 ], [ %140, %139 ], [ %88, %110 ]
  %410 = ptrtoint ptr %2 to i32
  %411 = sub i32 %409, %410
  store i32 %411, ptr %3, align 4
  br label %416

412:                                              ; preds = %290, %126
  %413 = ptrtoint ptr %47 to i32
  %414 = ptrtoint ptr %2 to i32
  %415 = sub i32 %413, %414
  store i32 %415, ptr %3, align 4
  br label %416

416:                                              ; preds = %412, %408, %403, %400, %398, %393, %260, %186, %63
  %417 = phi i32 [ -4, %403 ], [ -5, %408 ], [ -6, %412 ], [ -1, %393 ], [ %402, %400 ], [ 0, %398 ], [ -1, %63 ], [ -1, %186 ], [ -1, %260 ]
  ret i32 %417
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #1

attributes #0 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{!"branch_weights", i32 1, i32 4000, i32 1}
!11 = !{!"branch_weights", i32 2002, i32 2000}
