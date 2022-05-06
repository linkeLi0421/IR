; ModuleID = '/llk/IR/lib/zlib_inflate/inffast.c_pt.bc'
source_filename = "../lib/zlib_inflate/inffast.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.z_stream_s = type { ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, i32, i32, i32 }
%struct.inflate_state = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, [320 x i16], [288 x i16], [2048 x %struct.code] }
%struct.code = type { i8, i8, i16 }

@.str = private unnamed_addr constant [30 x i8] c"invalid distance too far back\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"invalid distance code\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"invalid literal/length code\00", align 1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @inflate_fast(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.z_stream_s, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr inbounds %struct.z_stream_s, ptr %0, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, -5
  %9 = getelementptr i8, ptr %5, i32 %8
  %10 = getelementptr inbounds %struct.z_stream_s, ptr %0, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.z_stream_s, ptr %0, i32 0, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = sub i32 %13, %1
  %15 = getelementptr i8, ptr %11, i32 %14
  %16 = add i32 %13, -257
  %17 = getelementptr i8, ptr %11, i32 %16
  %18 = getelementptr inbounds %struct.inflate_state, ptr %4, i32 0, i32 9
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.inflate_state, ptr %4, i32 0, i32 10
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.inflate_state, ptr %4, i32 0, i32 11
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.inflate_state, ptr %4, i32 0, i32 12
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.inflate_state, ptr %4, i32 0, i32 13
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.inflate_state, ptr %4, i32 0, i32 14
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.inflate_state, ptr %4, i32 0, i32 18
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.inflate_state, ptr %4, i32 0, i32 19
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.inflate_state, ptr %4, i32 0, i32 20
  %35 = load i32, ptr %34, align 4
  %36 = shl nsw i32 -1, %35
  %37 = xor i32 %36, -1
  %38 = getelementptr inbounds %struct.inflate_state, ptr %4, i32 0, i32 21
  %39 = load i32, ptr %38, align 4
  %40 = shl nsw i32 -1, %39
  %41 = xor i32 %40, -1
  %42 = ptrtoint ptr %15 to i32
  %43 = icmp eq i32 %23, 0
  %44 = add i32 %23, %19
  br label %45

45:                                               ; preds = %393, %2
  %46 = phi ptr [ %5, %2 ], [ %394, %393 ]
  %47 = phi ptr [ %11, %2 ], [ %395, %393 ]
  %48 = phi i32 [ %27, %2 ], [ %396, %393 ]
  %49 = phi i32 [ %29, %2 ], [ %397, %393 ]
  %50 = icmp ult i32 %49, 15
  br i1 %50, label %51, label %64

51:                                               ; preds = %45
  %52 = getelementptr i8, ptr %46, i32 1
  %53 = load i8, ptr %46, align 1
  %54 = zext i8 %53 to i32
  %55 = shl nuw nsw i32 %54, %49
  %56 = add i32 %55, %48
  %57 = add nuw nsw i32 %49, 8
  %58 = getelementptr i8, ptr %46, i32 2
  %59 = load i8, ptr %52, align 1
  %60 = zext i8 %59 to i32
  %61 = shl nuw nsw i32 %60, %57
  %62 = add i32 %56, %61
  %63 = add nuw nsw i32 %49, 16
  br label %64

64:                                               ; preds = %51, %45
  %65 = phi ptr [ %58, %51 ], [ %46, %45 ]
  %66 = phi i32 [ %62, %51 ], [ %48, %45 ]
  %67 = phi i32 [ %63, %51 ], [ %49, %45 ]
  %68 = and i32 %66, %37
  %69 = getelementptr %struct.code, ptr %31, i32 %68
  %70 = getelementptr inbounds i8, ptr %69, i32 2
  %71 = load i16, ptr %70, align 2
  %72 = getelementptr inbounds i8, ptr %69, i32 1
  %73 = load i8, ptr %72, align 1
  %74 = load i8, ptr %69, align 2
  %75 = zext i8 %73 to i32
  %76 = lshr i32 %66, %75
  %77 = sub i32 %67, %75
  %78 = icmp eq i8 %74, 0
  %79 = trunc i16 %71 to i8
  br i1 %78, label %82, label %87

80:                                               ; preds = %374
  %81 = trunc i16 %382 to i8
  br label %82

82:                                               ; preds = %80, %64
  %83 = phi i8 [ %79, %64 ], [ %81, %80 ]
  %84 = phi i32 [ %76, %64 ], [ %387, %80 ]
  %85 = phi i32 [ %77, %64 ], [ %388, %80 ]
  %86 = getelementptr i8, ptr %47, i32 1
  store i8 %83, ptr %47, align 1
  br label %393

87:                                               ; preds = %374, %64
  %88 = phi i32 [ %388, %374 ], [ %77, %64 ]
  %89 = phi i32 [ %387, %374 ], [ %76, %64 ]
  %90 = phi i8 [ %385, %374 ], [ %74, %64 ]
  %91 = phi i16 [ %382, %374 ], [ %71, %64 ]
  %92 = zext i8 %90 to i32
  %93 = and i32 %92, 16
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %371, label %95

95:                                               ; preds = %87
  %96 = zext i16 %91 to i32
  %97 = and i8 %90, 15
  %98 = zext i8 %97 to i32
  %99 = icmp eq i8 %97, 0
  br i1 %99, label %119, label %100

100:                                              ; preds = %95
  %101 = icmp ult i32 %88, %98
  br i1 %101, label %102, label %109

102:                                              ; preds = %100
  %103 = getelementptr i8, ptr %65, i32 1
  %104 = load i8, ptr %65, align 1
  %105 = zext i8 %104 to i32
  %106 = shl i32 %105, %88
  %107 = add i32 %106, %89
  %108 = add i32 %88, 8
  br label %109

109:                                              ; preds = %102, %100
  %110 = phi ptr [ %103, %102 ], [ %65, %100 ]
  %111 = phi i32 [ %107, %102 ], [ %89, %100 ]
  %112 = phi i32 [ %108, %102 ], [ %88, %100 ]
  %113 = shl nsw i32 -1, %98
  %114 = xor i32 %113, -1
  %115 = and i32 %111, %114
  %116 = add nuw nsw i32 %115, %96
  %117 = lshr i32 %111, %98
  %118 = sub i32 %112, %98
  br label %119

119:                                              ; preds = %109, %95
  %120 = phi ptr [ %110, %109 ], [ %65, %95 ]
  %121 = phi i32 [ %117, %109 ], [ %89, %95 ]
  %122 = phi i32 [ %118, %109 ], [ %88, %95 ]
  %123 = phi i32 [ %116, %109 ], [ %96, %95 ]
  %124 = icmp ult i32 %122, 15
  br i1 %124, label %125, label %138

125:                                              ; preds = %119
  %126 = getelementptr i8, ptr %120, i32 1
  %127 = load i8, ptr %120, align 1
  %128 = zext i8 %127 to i32
  %129 = shl nuw nsw i32 %128, %122
  %130 = add i32 %129, %121
  %131 = add nuw nsw i32 %122, 8
  %132 = getelementptr i8, ptr %120, i32 2
  %133 = load i8, ptr %126, align 1
  %134 = zext i8 %133 to i32
  %135 = shl nuw nsw i32 %134, %131
  %136 = add i32 %130, %135
  %137 = add nuw nsw i32 %122, 16
  br label %138

138:                                              ; preds = %125, %119
  %139 = phi ptr [ %132, %125 ], [ %120, %119 ]
  %140 = phi i32 [ %136, %125 ], [ %121, %119 ]
  %141 = phi i32 [ %137, %125 ], [ %122, %119 ]
  %142 = and i32 %140, %41
  %143 = getelementptr %struct.code, ptr %33, i32 %142
  %144 = getelementptr inbounds i8, ptr %143, i32 2
  %145 = load i16, ptr %144, align 2
  %146 = getelementptr inbounds i8, ptr %143, i32 1
  %147 = load i8, ptr %146, align 1
  %148 = load i8, ptr %143, align 2
  %149 = zext i8 %147 to i32
  %150 = lshr i32 %140, %149
  %151 = sub i32 %141, %149
  %152 = zext i8 %148 to i32
  %153 = and i32 %152, 16
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %346, label %155

155:                                              ; preds = %353, %138
  %156 = phi i8 [ %148, %138 ], [ %364, %353 ]
  %157 = phi i16 [ %145, %138 ], [ %361, %353 ]
  %158 = phi i32 [ %150, %138 ], [ %366, %353 ]
  %159 = phi i32 [ %151, %138 ], [ %367, %353 ]
  %160 = zext i16 %157 to i32
  %161 = and i8 %156, 15
  %162 = zext i8 %161 to i32
  %163 = icmp ult i32 %159, %162
  br i1 %163, label %164, label %179

164:                                              ; preds = %155
  %165 = getelementptr i8, ptr %139, i32 1
  %166 = load i8, ptr %139, align 1
  %167 = zext i8 %166 to i32
  %168 = shl i32 %167, %159
  %169 = add i32 %168, %158
  %170 = add i32 %159, 8
  %171 = icmp ult i32 %170, %162
  br i1 %171, label %172, label %179

172:                                              ; preds = %164
  %173 = getelementptr i8, ptr %139, i32 2
  %174 = load i8, ptr %165, align 1
  %175 = zext i8 %174 to i32
  %176 = shl i32 %175, %170
  %177 = add i32 %176, %169
  %178 = add i32 %159, 16
  br label %179

179:                                              ; preds = %172, %164, %155
  %180 = phi ptr [ %173, %172 ], [ %165, %164 ], [ %139, %155 ]
  %181 = phi i32 [ %177, %172 ], [ %169, %164 ], [ %158, %155 ]
  %182 = phi i32 [ %178, %172 ], [ %170, %164 ], [ %159, %155 ]
  %183 = shl nsw i32 -1, %162
  %184 = xor i32 %183, -1
  %185 = and i32 %181, %184
  %186 = add nuw nsw i32 %185, %160
  %187 = lshr i32 %181, %162
  %188 = sub i32 %182, %162
  %189 = ptrtoint ptr %47 to i32
  %190 = sub i32 %189, %42
  %191 = icmp ugt i32 %186, %190
  br i1 %191, label %192, label %295

192:                                              ; preds = %179
  %193 = sub i32 %186, %190
  %194 = icmp ugt i32 %193, %21
  br i1 %194, label %401, label %195

195:                                              ; preds = %192
  br i1 %43, label %196, label %213

196:                                              ; preds = %195
  %197 = sub i32 %19, %193
  %198 = getelementptr i8, ptr %25, i32 %197
  %199 = icmp ugt i32 %123, %193
  br i1 %199, label %200, label %262

200:                                              ; preds = %200, %196
  %201 = phi ptr [ %206, %200 ], [ %47, %196 ]
  %202 = phi i32 [ %207, %200 ], [ %193, %196 ]
  %203 = phi ptr [ %204, %200 ], [ %198, %196 ]
  %204 = getelementptr i8, ptr %203, i32 1
  %205 = load i8, ptr %203, align 1
  %206 = getelementptr i8, ptr %201, i32 1
  store i8 %205, ptr %201, align 1
  %207 = add i32 %202, -1
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %200

209:                                              ; preds = %200
  %210 = sub i32 %123, %193
  %211 = sub nsw i32 0, %186
  %212 = getelementptr i8, ptr %206, i32 %211
  br label %262

213:                                              ; preds = %195
  %214 = icmp ult i32 %23, %193
  br i1 %214, label %215, label %245

215:                                              ; preds = %213
  %216 = sub i32 %44, %193
  %217 = getelementptr i8, ptr %25, i32 %216
  %218 = sub i32 %193, %23
  %219 = icmp ugt i32 %123, %218
  br i1 %219, label %220, label %262

220:                                              ; preds = %220, %215
  %221 = phi ptr [ %226, %220 ], [ %47, %215 ]
  %222 = phi i32 [ %227, %220 ], [ %218, %215 ]
  %223 = phi ptr [ %224, %220 ], [ %217, %215 ]
  %224 = getelementptr i8, ptr %223, i32 1
  %225 = load i8, ptr %223, align 1
  %226 = getelementptr i8, ptr %221, i32 1
  store i8 %225, ptr %221, align 1
  %227 = add i32 %222, -1
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %229, label %220

229:                                              ; preds = %220
  %230 = sub i32 %123, %218
  %231 = icmp ugt i32 %230, %23
  br i1 %231, label %232, label %262

232:                                              ; preds = %232, %229
  %233 = phi ptr [ %238, %232 ], [ %226, %229 ]
  %234 = phi i32 [ %239, %232 ], [ %23, %229 ]
  %235 = phi ptr [ %236, %232 ], [ %25, %229 ]
  %236 = getelementptr i8, ptr %235, i32 1
  %237 = load i8, ptr %235, align 1
  %238 = getelementptr i8, ptr %233, i32 1
  store i8 %237, ptr %233, align 1
  %239 = add i32 %234, -1
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %241, label %232

241:                                              ; preds = %232
  %242 = sub i32 %230, %23
  %243 = sub nsw i32 0, %186
  %244 = getelementptr i8, ptr %238, i32 %243
  br label %262

245:                                              ; preds = %213
  %246 = sub i32 %23, %193
  %247 = getelementptr i8, ptr %25, i32 %246
  %248 = icmp ugt i32 %123, %193
  br i1 %248, label %249, label %262

249:                                              ; preds = %249, %245
  %250 = phi ptr [ %255, %249 ], [ %47, %245 ]
  %251 = phi i32 [ %256, %249 ], [ %193, %245 ]
  %252 = phi ptr [ %253, %249 ], [ %247, %245 ]
  %253 = getelementptr i8, ptr %252, i32 1
  %254 = load i8, ptr %252, align 1
  %255 = getelementptr i8, ptr %250, i32 1
  store i8 %254, ptr %250, align 1
  %256 = add i32 %251, -1
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %258, label %249

258:                                              ; preds = %249
  %259 = sub i32 %123, %193
  %260 = sub nsw i32 0, %186
  %261 = getelementptr i8, ptr %255, i32 %260
  br label %262

262:                                              ; preds = %258, %245, %241, %229, %215, %209, %196
  %263 = phi ptr [ %206, %209 ], [ %47, %196 ], [ %238, %241 ], [ %226, %229 ], [ %47, %215 ], [ %255, %258 ], [ %47, %245 ]
  %264 = phi i32 [ %210, %209 ], [ %123, %196 ], [ %242, %241 ], [ %230, %229 ], [ %123, %215 ], [ %259, %258 ], [ %123, %245 ]
  %265 = phi ptr [ %212, %209 ], [ %198, %196 ], [ %244, %241 ], [ %25, %229 ], [ %217, %215 ], [ %261, %258 ], [ %247, %245 ]
  %266 = icmp ugt i32 %264, 2
  br i1 %266, label %267, label %282

267:                                              ; preds = %267, %262
  %268 = phi ptr [ %277, %267 ], [ %265, %262 ]
  %269 = phi i32 [ %280, %267 ], [ %264, %262 ]
  %270 = phi ptr [ %279, %267 ], [ %263, %262 ]
  %271 = getelementptr i8, ptr %268, i32 1
  %272 = load i8, ptr %268, align 1
  %273 = getelementptr i8, ptr %270, i32 1
  store i8 %272, ptr %270, align 1
  %274 = getelementptr i8, ptr %268, i32 2
  %275 = load i8, ptr %271, align 1
  %276 = getelementptr i8, ptr %270, i32 2
  store i8 %275, ptr %273, align 1
  %277 = getelementptr i8, ptr %268, i32 3
  %278 = load i8, ptr %274, align 1
  %279 = getelementptr i8, ptr %270, i32 3
  store i8 %278, ptr %276, align 1
  %280 = add i32 %269, -3
  %281 = icmp ugt i32 %280, 2
  br i1 %281, label %267, label %282

282:                                              ; preds = %267, %262
  %283 = phi ptr [ %263, %262 ], [ %279, %267 ]
  %284 = phi i32 [ %264, %262 ], [ %280, %267 ]
  %285 = phi ptr [ %265, %262 ], [ %277, %267 ]
  %286 = icmp eq i32 %284, 0
  br i1 %286, label %393, label %287

287:                                              ; preds = %282
  %288 = load i8, ptr %285, align 1
  %289 = getelementptr i8, ptr %283, i32 1
  store i8 %288, ptr %283, align 1
  %290 = icmp eq i32 %284, 1
  br i1 %290, label %393, label %291

291:                                              ; preds = %287
  %292 = getelementptr i8, ptr %285, i32 1
  %293 = load i8, ptr %292, align 1
  %294 = getelementptr i8, ptr %283, i32 2
  store i8 %293, ptr %289, align 1
  br label %393

295:                                              ; preds = %179
  %296 = sub nsw i32 0, %186
  %297 = getelementptr i8, ptr %47, i32 %296
  %298 = getelementptr i8, ptr %47, i32 -1
  %299 = ptrtoint ptr %298 to i32
  %300 = and i32 %299, 1
  %301 = icmp eq i32 %300, 0
  br i1 %301, label %302, label %307

302:                                              ; preds = %295
  %303 = getelementptr i8, ptr %297, i32 1
  %304 = load i8, ptr %297, align 1
  %305 = getelementptr i8, ptr %47, i32 1
  store i8 %304, ptr %47, align 1
  %306 = add nsw i32 %123, -1
  br label %307

307:                                              ; preds = %302, %295
  %308 = phi ptr [ %47, %295 ], [ %305, %302 ]
  %309 = phi i32 [ %123, %295 ], [ %306, %302 ]
  %310 = phi ptr [ %297, %295 ], [ %303, %302 ]
  %311 = icmp ugt i32 %186, 2
  br i1 %311, label %312, label %323

312:                                              ; preds = %307
  %313 = lshr i32 %309, 1
  br label %314

314:                                              ; preds = %314, %312
  %315 = phi ptr [ %308, %312 ], [ %320, %314 ]
  %316 = phi i32 [ %313, %312 ], [ %321, %314 ]
  %317 = phi ptr [ %310, %312 ], [ %318, %314 ]
  %318 = getelementptr i16, ptr %317, i32 1
  %319 = load i16, ptr %317, align 2
  %320 = getelementptr i16, ptr %315, i32 1
  store i16 %319, ptr %315, align 2
  %321 = add i32 %316, -1
  %322 = icmp eq i32 %321, 0
  br i1 %322, label %338, label %314

323:                                              ; preds = %307
  %324 = getelementptr i16, ptr %308, i32 -1
  %325 = load i16, ptr %324, align 2
  %326 = icmp eq i32 %186, 1
  %327 = lshr i16 %325, 8
  %328 = and i16 %325, -256
  %329 = or i16 %328, %327
  %330 = select i1 %326, i16 %329, i16 %325
  %331 = lshr i32 %309, 1
  br label %332

332:                                              ; preds = %332, %323
  %333 = phi ptr [ %308, %323 ], [ %335, %332 ]
  %334 = phi i32 [ %331, %323 ], [ %336, %332 ]
  %335 = getelementptr i16, ptr %333, i32 1
  store i16 %330, ptr %333, align 2
  %336 = add i32 %334, -1
  %337 = icmp eq i32 %336, 0
  br i1 %337, label %338, label %332

338:                                              ; preds = %332, %314
  %339 = phi ptr [ %320, %314 ], [ %335, %332 ]
  %340 = phi ptr [ %318, %314 ], [ %310, %332 ]
  %341 = and i32 %309, 1
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %393, label %343

343:                                              ; preds = %338
  %344 = load i8, ptr %340, align 1
  %345 = getelementptr i8, ptr %339, i32 1
  store i8 %344, ptr %339, align 1
  br label %393

346:                                              ; preds = %353, %138
  %347 = phi i32 [ %368, %353 ], [ %152, %138 ]
  %348 = phi i32 [ %367, %353 ], [ %151, %138 ]
  %349 = phi i32 [ %366, %353 ], [ %150, %138 ]
  %350 = phi i16 [ %361, %353 ], [ %145, %138 ]
  %351 = and i32 %347, 64
  %352 = icmp eq i32 %351, 0
  br i1 %352, label %353, label %401

353:                                              ; preds = %346
  %354 = zext i16 %350 to i32
  %355 = shl nsw i32 -1, %347
  %356 = xor i32 %355, -1
  %357 = and i32 %349, %356
  %358 = add i32 %357, %354
  %359 = getelementptr %struct.code, ptr %33, i32 %358
  %360 = getelementptr inbounds i8, ptr %359, i32 2
  %361 = load i16, ptr %360, align 2
  %362 = getelementptr inbounds i8, ptr %359, i32 1
  %363 = load i8, ptr %362, align 1
  %364 = load i8, ptr %359, align 2
  %365 = zext i8 %363 to i32
  %366 = lshr i32 %349, %365
  %367 = sub i32 %348, %365
  %368 = zext i8 %364 to i32
  %369 = and i32 %368, 16
  %370 = icmp eq i32 %369, 0
  br i1 %370, label %346, label %155

371:                                              ; preds = %87
  %372 = and i32 %92, 64
  %373 = icmp eq i32 %372, 0
  br i1 %373, label %374, label %390

374:                                              ; preds = %371
  %375 = zext i16 %91 to i32
  %376 = shl nsw i32 -1, %92
  %377 = xor i32 %376, -1
  %378 = and i32 %89, %377
  %379 = add i32 %378, %375
  %380 = getelementptr %struct.code, ptr %31, i32 %379
  %381 = getelementptr inbounds i8, ptr %380, i32 2
  %382 = load i16, ptr %381, align 2
  %383 = getelementptr inbounds i8, ptr %380, i32 1
  %384 = load i8, ptr %383, align 1
  %385 = load i8, ptr %380, align 2
  %386 = zext i8 %384 to i32
  %387 = lshr i32 %89, %386
  %388 = sub i32 %88, %386
  %389 = icmp eq i8 %385, 0
  br i1 %389, label %80, label %87

390:                                              ; preds = %371
  %391 = and i8 %90, 32
  %392 = icmp eq i8 %391, 0
  br i1 %392, label %401, label %407

393:                                              ; preds = %343, %338, %291, %287, %282, %82
  %394 = phi ptr [ %65, %82 ], [ %180, %291 ], [ %180, %287 ], [ %180, %282 ], [ %180, %343 ], [ %180, %338 ]
  %395 = phi ptr [ %86, %82 ], [ %294, %291 ], [ %289, %287 ], [ %283, %282 ], [ %345, %343 ], [ %339, %338 ]
  %396 = phi i32 [ %84, %82 ], [ %187, %291 ], [ %187, %287 ], [ %187, %282 ], [ %187, %343 ], [ %187, %338 ]
  %397 = phi i32 [ %85, %82 ], [ %188, %291 ], [ %188, %287 ], [ %188, %282 ], [ %188, %343 ], [ %188, %338 ]
  %398 = icmp ult ptr %394, %9
  %399 = icmp ult ptr %395, %17
  %400 = select i1 %398, i1 %399, i1 false
  br i1 %400, label %45, label %412

401:                                              ; preds = %390, %346, %192
  %402 = phi ptr [ @.str.2, %390 ], [ @.str.1, %346 ], [ @.str, %192 ]
  %403 = phi ptr [ %65, %390 ], [ %139, %346 ], [ %180, %192 ]
  %404 = phi i32 [ %89, %390 ], [ %349, %346 ], [ %187, %192 ]
  %405 = phi i32 [ %88, %390 ], [ %348, %346 ], [ %188, %192 ]
  %406 = getelementptr inbounds %struct.z_stream_s, ptr %0, i32 0, i32 6
  store ptr %402, ptr %406, align 4
  br label %407

407:                                              ; preds = %401, %390
  %408 = phi i32 [ 11, %390 ], [ 27, %401 ]
  %409 = phi ptr [ %65, %390 ], [ %403, %401 ]
  %410 = phi i32 [ %89, %390 ], [ %404, %401 ]
  %411 = phi i32 [ %88, %390 ], [ %405, %401 ]
  store i32 %408, ptr %4, align 4
  br label %412

412:                                              ; preds = %407, %393
  %413 = phi ptr [ %409, %407 ], [ %394, %393 ]
  %414 = phi ptr [ %47, %407 ], [ %395, %393 ]
  %415 = phi i32 [ %410, %407 ], [ %396, %393 ]
  %416 = phi i32 [ %411, %407 ], [ %397, %393 ]
  %417 = lshr i32 %416, 3
  %418 = sub nsw i32 0, %417
  %419 = getelementptr i8, ptr %413, i32 %418
  store ptr %419, ptr %0, align 4
  store ptr %414, ptr %10, align 4
  %420 = ptrtoint ptr %9 to i32
  %421 = ptrtoint ptr %419 to i32
  %422 = add i32 %420, 5
  %423 = sub i32 %422, %421
  store i32 %423, ptr %6, align 4
  %424 = ptrtoint ptr %17 to i32
  %425 = ptrtoint ptr %414 to i32
  %426 = add i32 %424, 257
  %427 = sub i32 %426, %425
  %428 = and i32 %416, 7
  %429 = shl nsw i32 -1, %428
  %430 = xor i32 %429, -1
  %431 = and i32 %415, %430
  store i32 %427, ptr %12, align 4
  store i32 %431, ptr %26, align 4
  store i32 %428, ptr %28, align 4
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }

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
