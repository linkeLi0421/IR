; ModuleID = '/llk/IR/lib/mpi/mpih-div.c_pt.bc'
source_filename = "../lib/mpi/mpih-div.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @mpihelp_mod_1(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %373, label %5

5:                                                ; preds = %3
  %6 = mul i32 %1, 54
  %7 = icmp sgt i32 %6, 100
  %8 = tail call i32 @llvm.ctlz.i32(i32 %2, i1 false) #6, !range !8
  %9 = icmp eq i32 %8, 0
  br i1 %7, label %10, label %214

10:                                               ; preds = %5
  br i1 %9, label %130, label %11

11:                                               ; preds = %10
  %12 = shl i32 %2, %8
  %13 = and i32 %12, 2147483647
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %59, label %15

15:                                               ; preds = %11
  %16 = lshr i32 %12, 16
  %17 = and i32 %12, 65535
  %18 = sub i32 0, %12
  %19 = freeze i32 %18
  %20 = freeze i32 %16
  %21 = udiv i32 %19, %20
  %22 = mul i32 %21, %20
  %23 = sub i32 %19, %22
  %24 = mul i32 %21, %17
  %25 = shl nuw i32 %23, 16
  %26 = icmp ult i32 %25, %24
  br i1 %26, label %27, label %36

27:                                               ; preds = %15
  %28 = add i32 %21, -1
  %29 = add i32 %25, %12
  %30 = icmp uge i32 %29, %12
  %31 = icmp ult i32 %29, %24
  %32 = select i1 %30, i1 %31, i1 false
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = add i32 %21, -2
  %35 = add i32 %29, %12
  br label %36

36:                                               ; preds = %33, %27, %15
  %37 = phi i32 [ %34, %33 ], [ %28, %27 ], [ %21, %15 ]
  %38 = phi i32 [ %35, %33 ], [ %29, %27 ], [ %25, %15 ]
  %39 = sub i32 %38, %24
  %40 = freeze i32 %39
  %41 = freeze i32 %16
  %42 = udiv i32 %40, %41
  %43 = mul i32 %42, %41
  %44 = sub i32 %40, %43
  %45 = mul i32 %42, %17
  %46 = shl nuw i32 %44, 16
  %47 = icmp ult i32 %46, %45
  br i1 %47, label %48, label %55

48:                                               ; preds = %36
  %49 = add i32 %46, %12
  %50 = icmp uge i32 %49, %12
  %51 = icmp ult i32 %49, %45
  %52 = select i1 %50, i1 %51, i1 false
  %53 = select i1 %52, i32 -2, i32 -1
  %54 = add i32 %53, %42
  br label %55

55:                                               ; preds = %48, %36
  %56 = phi i32 [ %42, %36 ], [ %54, %48 ]
  %57 = shl i32 %37, 16
  %58 = or i32 %56, %57
  br label %59

59:                                               ; preds = %55, %11
  %60 = phi i32 [ %58, %55 ], [ -1, %11 ]
  %61 = add i32 %1, -1
  %62 = getelementptr i32, ptr %0, i32 %61
  %63 = load i32, ptr %62, align 4
  %64 = sub nuw nsw i32 32, %8
  %65 = lshr i32 %63, %64
  %66 = add i32 %1, -2
  %67 = icmp sgt i32 %66, -1
  br i1 %67, label %68, label %102

68:                                               ; preds = %95, %59
  %69 = phi i32 [ %100, %95 ], [ %66, %59 ]
  %70 = phi i32 [ %73, %95 ], [ %63, %59 ]
  %71 = phi i32 [ %99, %95 ], [ %65, %59 ]
  %72 = getelementptr i32, ptr %0, i32 %69
  %73 = load i32, ptr %72, align 4
  %74 = tail call { i32, i32 } asm "@ Inlined umul_ppmm\0Aumull $1, $0, $2, $3", "=&r,=&r,r,r,~{r0},~{r1}"(i32 %71, i32 %60) #7, !srcloc !9
  %75 = extractvalue { i32, i32 } %74, 0
  %76 = add i32 %75, %71
  %77 = tail call { i32, i32 } asm "@ Inlined umul_ppmm\0Aumull $1, $0, $2, $3", "=&r,=&r,r,r,~{r0},~{r1}"(i32 %76, i32 %12) #7, !srcloc !10
  %78 = extractvalue { i32, i32 } %77, 0
  %79 = extractvalue { i32, i32 } %77, 1
  %80 = shl i32 %70, %8
  %81 = lshr i32 %73, %64
  %82 = or i32 %81, %80
  %83 = tail call { i32, i32 } asm "subs $1, $4, $5\0Asbc  $0, $2, $3", "=r,=&r,r,rI,r,rI"(i32 %71, i32 %78, i32 %82, i32 %79) #7, !srcloc !11
  %84 = extractvalue { i32, i32 } %83, 0
  %85 = extractvalue { i32, i32 } %83, 1
  %86 = icmp eq i32 %84, 0
  br i1 %86, label %95, label %87

87:                                               ; preds = %68
  %88 = tail call { i32, i32 } asm "subs $1, $4, $5\0Asbc  $0, $2, $3", "=r,=&r,r,rI,r,rI"(i32 %84, i32 0, i32 %85, i32 %12) #7, !srcloc !12
  %89 = extractvalue { i32, i32 } %88, 0
  %90 = extractvalue { i32, i32 } %88, 1
  %91 = icmp eq i32 %89, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %87
  %93 = tail call { i32, i32 } asm "subs $1, $4, $5\0Asbc  $0, $2, $3", "=r,=&r,r,rI,r,rI"(i32 %89, i32 0, i32 %90, i32 %12) #7, !srcloc !13
  %94 = extractvalue { i32, i32 } %93, 1
  br label %95

95:                                               ; preds = %92, %87, %68
  %96 = phi i32 [ %94, %92 ], [ %90, %87 ], [ %85, %68 ]
  %97 = icmp ult i32 %96, %12
  %98 = select i1 %97, i32 0, i32 %12
  %99 = sub i32 %96, %98
  %100 = add nsw i32 %69, -1
  %101 = icmp sgt i32 %69, 0
  br i1 %101, label %68, label %102

102:                                              ; preds = %95, %59
  %103 = phi i32 [ %65, %59 ], [ %99, %95 ]
  %104 = phi i32 [ %63, %59 ], [ %73, %95 ]
  %105 = tail call { i32, i32 } asm "@ Inlined umul_ppmm\0Aumull $1, $0, $2, $3", "=&r,=&r,r,r,~{r0},~{r1}"(i32 %103, i32 %60) #7, !srcloc !14
  %106 = extractvalue { i32, i32 } %105, 0
  %107 = add i32 %106, %103
  %108 = tail call { i32, i32 } asm "@ Inlined umul_ppmm\0Aumull $1, $0, $2, $3", "=&r,=&r,r,r,~{r0},~{r1}"(i32 %107, i32 %12) #7, !srcloc !15
  %109 = extractvalue { i32, i32 } %108, 0
  %110 = extractvalue { i32, i32 } %108, 1
  %111 = shl i32 %104, %8
  %112 = tail call { i32, i32 } asm "subs $1, $4, $5\0Asbc  $0, $2, $3", "=r,=&r,r,rI,r,rI"(i32 %103, i32 %109, i32 %111, i32 %110) #7, !srcloc !16
  %113 = extractvalue { i32, i32 } %112, 0
  %114 = extractvalue { i32, i32 } %112, 1
  %115 = icmp eq i32 %113, 0
  br i1 %115, label %124, label %116

116:                                              ; preds = %102
  %117 = tail call { i32, i32 } asm "subs $1, $4, $5\0Asbc  $0, $2, $3", "=r,=&r,r,rI,r,rI"(i32 %113, i32 0, i32 %114, i32 %12) #7, !srcloc !17
  %118 = extractvalue { i32, i32 } %117, 0
  %119 = extractvalue { i32, i32 } %117, 1
  %120 = icmp eq i32 %118, 0
  br i1 %120, label %124, label %121

121:                                              ; preds = %116
  %122 = tail call { i32, i32 } asm "subs $1, $4, $5\0Asbc  $0, $2, $3", "=r,=&r,r,rI,r,rI"(i32 %118, i32 0, i32 %119, i32 %12) #7, !srcloc !18
  %123 = extractvalue { i32, i32 } %122, 1
  br label %124

124:                                              ; preds = %121, %116, %102
  %125 = phi i32 [ %123, %121 ], [ %119, %116 ], [ %114, %102 ]
  %126 = icmp ult i32 %125, %12
  %127 = select i1 %126, i32 0, i32 %12
  %128 = sub i32 %125, %127
  %129 = lshr i32 %128, %8
  br label %373

130:                                              ; preds = %10
  %131 = and i32 %2, 2147483647
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %174, label %133

133:                                              ; preds = %130
  %134 = lshr i32 %2, 16
  %135 = and i32 %2, 65535
  %136 = sub i32 0, %2
  %137 = udiv i32 %136, %134
  %138 = mul i32 %137, %134
  %139 = sub i32 %136, %138
  %140 = mul i32 %137, %135
  %141 = shl nuw i32 %139, 16
  %142 = icmp ult i32 %141, %140
  br i1 %142, label %143, label %152

143:                                              ; preds = %133
  %144 = add i32 %137, -1
  %145 = add i32 %141, %2
  %146 = icmp uge i32 %145, %2
  %147 = icmp ult i32 %145, %140
  %148 = and i1 %146, %147
  br i1 %148, label %149, label %152

149:                                              ; preds = %143
  %150 = add i32 %137, -2
  %151 = add i32 %145, %2
  br label %152

152:                                              ; preds = %149, %143, %133
  %153 = phi i32 [ %150, %149 ], [ %144, %143 ], [ %137, %133 ]
  %154 = phi i32 [ %151, %149 ], [ %145, %143 ], [ %141, %133 ]
  %155 = sub i32 %154, %140
  %156 = freeze i32 %155
  %157 = udiv i32 %156, %134
  %158 = mul i32 %157, %134
  %159 = sub i32 %156, %158
  %160 = mul i32 %157, %135
  %161 = shl nuw i32 %159, 16
  %162 = icmp ult i32 %161, %160
  br i1 %162, label %163, label %170

163:                                              ; preds = %152
  %164 = add i32 %161, %2
  %165 = icmp uge i32 %164, %2
  %166 = icmp ult i32 %164, %160
  %167 = select i1 %165, i1 %166, i1 false
  %168 = select i1 %167, i32 -2, i32 -1
  %169 = add i32 %168, %157
  br label %170

170:                                              ; preds = %163, %152
  %171 = phi i32 [ %157, %152 ], [ %169, %163 ]
  %172 = shl i32 %153, 16
  %173 = or i32 %171, %172
  br label %174

174:                                              ; preds = %170, %130
  %175 = phi i32 [ %173, %170 ], [ -1, %130 ]
  %176 = add i32 %1, -1
  %177 = getelementptr i32, ptr %0, i32 %176
  %178 = load i32, ptr %177, align 4
  %179 = icmp ult i32 %178, %2
  %180 = add i32 %1, -2
  %181 = select i1 %179, i32 %178, i32 0
  %182 = select i1 %179, i32 %180, i32 %176
  %183 = icmp sgt i32 %182, -1
  br i1 %183, label %184, label %373

184:                                              ; preds = %207, %174
  %185 = phi i32 [ %212, %207 ], [ %182, %174 ]
  %186 = phi i32 [ %211, %207 ], [ %181, %174 ]
  %187 = getelementptr i32, ptr %0, i32 %185
  %188 = load i32, ptr %187, align 4
  %189 = tail call { i32, i32 } asm "@ Inlined umul_ppmm\0Aumull $1, $0, $2, $3", "=&r,=&r,r,r,~{r0},~{r1}"(i32 %186, i32 %175) #7, !srcloc !19
  %190 = extractvalue { i32, i32 } %189, 0
  %191 = add i32 %190, %186
  %192 = tail call { i32, i32 } asm "@ Inlined umul_ppmm\0Aumull $1, $0, $2, $3", "=&r,=&r,r,r,~{r0},~{r1}"(i32 %191, i32 %2) #7, !srcloc !20
  %193 = extractvalue { i32, i32 } %192, 0
  %194 = extractvalue { i32, i32 } %192, 1
  %195 = tail call { i32, i32 } asm "subs $1, $4, $5\0Asbc  $0, $2, $3", "=r,=&r,r,rI,r,rI"(i32 %186, i32 %193, i32 %188, i32 %194) #7, !srcloc !21
  %196 = extractvalue { i32, i32 } %195, 0
  %197 = extractvalue { i32, i32 } %195, 1
  %198 = icmp eq i32 %196, 0
  br i1 %198, label %207, label %199

199:                                              ; preds = %184
  %200 = tail call { i32, i32 } asm "subs $1, $4, $5\0Asbc  $0, $2, $3", "=r,=&r,r,rI,r,rI"(i32 %196, i32 0, i32 %197, i32 %2) #7, !srcloc !22
  %201 = extractvalue { i32, i32 } %200, 0
  %202 = extractvalue { i32, i32 } %200, 1
  %203 = icmp eq i32 %201, 0
  br i1 %203, label %207, label %204

204:                                              ; preds = %199
  %205 = tail call { i32, i32 } asm "subs $1, $4, $5\0Asbc  $0, $2, $3", "=r,=&r,r,rI,r,rI"(i32 %201, i32 0, i32 %202, i32 %2) #7, !srcloc !23
  %206 = extractvalue { i32, i32 } %205, 1
  br label %207

207:                                              ; preds = %204, %199, %184
  %208 = phi i32 [ %206, %204 ], [ %202, %199 ], [ %197, %184 ]
  %209 = icmp ult i32 %208, %2
  %210 = select i1 %209, i32 0, i32 %2
  %211 = sub i32 %208, %210
  %212 = add nsw i32 %185, -1
  %213 = icmp sgt i32 %185, 0
  br i1 %213, label %184, label %373

214:                                              ; preds = %5
  br i1 %9, label %318, label %215

215:                                              ; preds = %214
  %216 = shl i32 %2, %8
  %217 = add i32 %1, -1
  %218 = getelementptr i32, ptr %0, i32 %217
  %219 = load i32, ptr %218, align 4
  %220 = sub nuw nsw i32 32, %8
  %221 = lshr i32 %219, %220
  %222 = add i32 %1, -2
  %223 = icmp sgt i32 %222, -1
  %224 = lshr i32 %216, 16
  %225 = and i32 %216, 65535
  br i1 %223, label %226, label %275

226:                                              ; preds = %270, %215
  %227 = phi i32 [ %273, %270 ], [ %222, %215 ]
  %228 = phi i32 [ %231, %270 ], [ %219, %215 ]
  %229 = phi i32 [ %272, %270 ], [ %221, %215 ]
  %230 = getelementptr i32, ptr %0, i32 %227
  %231 = load i32, ptr %230, align 4
  %232 = freeze i32 %229
  %233 = freeze i32 %224
  %234 = udiv i32 %232, %233
  %235 = mul i32 %234, %233
  %236 = sub i32 %232, %235
  %237 = mul i32 %234, %225
  %238 = shl i32 %228, %8
  %239 = lshr i32 %231, %220
  %240 = or i32 %239, %238
  %241 = tail call i32 @llvm.fshl.i32(i32 %236, i32 %240, i32 16)
  %242 = icmp ult i32 %241, %237
  br i1 %242, label %243, label %250

243:                                              ; preds = %226
  %244 = add i32 %241, %216
  %245 = icmp uge i32 %244, %216
  %246 = icmp ult i32 %244, %237
  %247 = select i1 %245, i1 %246, i1 false
  %248 = select i1 %247, i32 %216, i32 0
  %249 = add i32 %248, %244
  br label %250

250:                                              ; preds = %243, %226
  %251 = phi i32 [ %241, %226 ], [ %249, %243 ]
  %252 = sub i32 %251, %237
  %253 = freeze i32 %252
  %254 = freeze i32 %224
  %255 = udiv i32 %253, %254
  %256 = mul i32 %255, %254
  %257 = sub i32 %253, %256
  %258 = mul i32 %255, %225
  %259 = shl nuw i32 %257, 16
  %260 = and i32 %240, 65535
  %261 = or i32 %259, %260
  %262 = icmp ult i32 %261, %258
  br i1 %262, label %263, label %270

263:                                              ; preds = %250
  %264 = add i32 %261, %216
  %265 = icmp uge i32 %264, %216
  %266 = icmp ult i32 %264, %258
  %267 = select i1 %265, i1 %266, i1 false
  %268 = select i1 %267, i32 %216, i32 0
  %269 = add i32 %268, %264
  br label %270

270:                                              ; preds = %263, %250
  %271 = phi i32 [ %261, %250 ], [ %269, %263 ]
  %272 = sub i32 %271, %258
  %273 = add nsw i32 %227, -1
  %274 = icmp sgt i32 %227, 0
  br i1 %274, label %226, label %275

275:                                              ; preds = %270, %215
  %276 = phi i32 [ %221, %215 ], [ %272, %270 ]
  %277 = phi i32 [ %219, %215 ], [ %231, %270 ]
  %278 = freeze i32 %276
  %279 = freeze i32 %224
  %280 = udiv i32 %278, %279
  %281 = mul i32 %280, %279
  %282 = sub i32 %278, %281
  %283 = mul i32 %280, %225
  %284 = shl i32 %277, %8
  %285 = tail call i32 @llvm.fshl.i32(i32 %282, i32 %284, i32 16)
  %286 = icmp ult i32 %285, %283
  br i1 %286, label %287, label %294

287:                                              ; preds = %275
  %288 = add i32 %285, %216
  %289 = icmp uge i32 %288, %216
  %290 = icmp ult i32 %288, %283
  %291 = select i1 %289, i1 %290, i1 false
  %292 = select i1 %291, i32 %216, i32 0
  %293 = add i32 %292, %288
  br label %294

294:                                              ; preds = %287, %275
  %295 = phi i32 [ %285, %275 ], [ %293, %287 ]
  %296 = sub i32 %295, %283
  %297 = freeze i32 %296
  %298 = freeze i32 %224
  %299 = udiv i32 %297, %298
  %300 = mul i32 %299, %298
  %301 = sub i32 %297, %300
  %302 = mul i32 %299, %225
  %303 = shl nuw i32 %301, 16
  %304 = and i32 %284, 65535
  %305 = or i32 %303, %304
  %306 = icmp ult i32 %305, %302
  br i1 %306, label %307, label %314

307:                                              ; preds = %294
  %308 = add i32 %305, %216
  %309 = icmp uge i32 %308, %216
  %310 = icmp ult i32 %308, %302
  %311 = select i1 %309, i1 %310, i1 false
  %312 = select i1 %311, i32 %216, i32 0
  %313 = add i32 %312, %308
  br label %314

314:                                              ; preds = %307, %294
  %315 = phi i32 [ %305, %294 ], [ %313, %307 ]
  %316 = sub i32 %315, %302
  %317 = lshr i32 %316, %8
  br label %373

318:                                              ; preds = %214
  %319 = add i32 %1, -1
  %320 = getelementptr i32, ptr %0, i32 %319
  %321 = load i32, ptr %320, align 4
  %322 = add i32 %1, -2
  %323 = icmp ult i32 %321, %2
  %324 = select i1 %323, i32 %321, i32 0
  %325 = select i1 %323, i32 %322, i32 %319
  %326 = icmp sgt i32 %325, -1
  br i1 %326, label %327, label %373

327:                                              ; preds = %318
  %328 = lshr i32 %2, 16
  %329 = and i32 %2, 65535
  br label %330

330:                                              ; preds = %368, %327
  %331 = phi i32 [ %325, %327 ], [ %371, %368 ]
  %332 = phi i32 [ %324, %327 ], [ %370, %368 ]
  %333 = getelementptr i32, ptr %0, i32 %331
  %334 = load i32, ptr %333, align 4
  %335 = freeze i32 %332
  %336 = udiv i32 %335, %328
  %337 = mul i32 %336, %328
  %338 = sub i32 %335, %337
  %339 = mul i32 %336, %329
  %340 = tail call i32 @llvm.fshl.i32(i32 %338, i32 %334, i32 16)
  %341 = icmp ult i32 %340, %339
  br i1 %341, label %342, label %349

342:                                              ; preds = %330
  %343 = add i32 %340, %2
  %344 = icmp uge i32 %343, %2
  %345 = icmp ult i32 %343, %339
  %346 = select i1 %344, i1 %345, i1 false
  %347 = select i1 %346, i32 %2, i32 0
  %348 = add i32 %347, %343
  br label %349

349:                                              ; preds = %342, %330
  %350 = phi i32 [ %340, %330 ], [ %348, %342 ]
  %351 = sub i32 %350, %339
  %352 = freeze i32 %351
  %353 = udiv i32 %352, %328
  %354 = mul i32 %353, %328
  %355 = sub i32 %352, %354
  %356 = mul i32 %353, %329
  %357 = shl nuw i32 %355, 16
  %358 = and i32 %334, 65535
  %359 = or i32 %357, %358
  %360 = icmp ult i32 %359, %356
  br i1 %360, label %361, label %368

361:                                              ; preds = %349
  %362 = add i32 %359, %2
  %363 = icmp uge i32 %362, %2
  %364 = icmp ult i32 %362, %356
  %365 = select i1 %363, i1 %364, i1 false
  %366 = select i1 %365, i32 %2, i32 0
  %367 = add i32 %366, %362
  br label %368

368:                                              ; preds = %361, %349
  %369 = phi i32 [ %359, %349 ], [ %367, %361 ]
  %370 = sub i32 %369, %356
  %371 = add nsw i32 %331, -1
  %372 = icmp sgt i32 %331, 0
  br i1 %372, label %330, label %373

373:                                              ; preds = %368, %318, %314, %207, %174, %124, %3
  %374 = phi i32 [ %317, %314 ], [ 0, %3 ], [ %129, %124 ], [ %181, %174 ], [ %324, %318 ], [ %211, %207 ], [ %370, %368 ]
  ret i32 %374
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mpihelp_divrem(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #1 {
  switch i32 %5, label %285 [
    i32 0, label %424
    i32 1, label %7
    i32 2, label %136
  ]

7:                                                ; preds = %6
  %8 = load i32, ptr %4, align 4
  %9 = add i32 %3, -1
  %10 = getelementptr i32, ptr %2, i32 %9
  %11 = load i32, ptr %10, align 4
  %12 = icmp ult i32 %11, %8
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = select i1 %12, i32 0, i32 %8
  %16 = sub i32 %11, %15
  %17 = getelementptr i32, ptr %0, i32 %1
  %18 = add i32 %3, -2
  %19 = icmp sgt i32 %18, -1
  br i1 %19, label %20, label %23

20:                                               ; preds = %7
  %21 = lshr i32 %8, 16
  %22 = and i32 %8, 65535
  br label %30

23:                                               ; preds = %75, %7
  %24 = phi i32 [ %16, %7 ], [ %78, %75 ]
  %25 = add i32 %1, -1
  %26 = icmp sgt i32 %25, -1
  br i1 %26, label %27, label %134

27:                                               ; preds = %23
  %28 = lshr i32 %8, 16
  %29 = and i32 %8, 65535
  br label %84

30:                                               ; preds = %75, %20
  %31 = phi i32 [ %16, %20 ], [ %78, %75 ]
  %32 = phi i32 [ %18, %20 ], [ %82, %75 ]
  %33 = freeze i32 %31
  %34 = freeze i32 %21
  %35 = udiv i32 %33, %34
  %36 = mul i32 %35, %34
  %37 = sub i32 %33, %36
  %38 = mul i32 %35, %22
  %39 = getelementptr i32, ptr %2, i32 %32
  %40 = load i32, ptr %39, align 4
  %41 = tail call i32 @llvm.fshl.i32(i32 %37, i32 %40, i32 16)
  %42 = icmp ult i32 %41, %38
  br i1 %42, label %43, label %52

43:                                               ; preds = %30
  %44 = add i32 %35, -1
  %45 = add i32 %41, %8
  %46 = icmp uge i32 %45, %8
  %47 = icmp ult i32 %45, %38
  %48 = select i1 %46, i1 %47, i1 false
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = add i32 %35, -2
  %51 = add i32 %45, %8
  br label %52

52:                                               ; preds = %49, %43, %30
  %53 = phi i32 [ %50, %49 ], [ %44, %43 ], [ %35, %30 ]
  %54 = phi i32 [ %51, %49 ], [ %45, %43 ], [ %41, %30 ]
  %55 = sub i32 %54, %38
  %56 = freeze i32 %55
  %57 = freeze i32 %21
  %58 = udiv i32 %56, %57
  %59 = mul i32 %58, %57
  %60 = sub i32 %56, %59
  %61 = mul i32 %58, %22
  %62 = shl nuw i32 %60, 16
  %63 = and i32 %40, 65535
  %64 = or i32 %62, %63
  %65 = icmp ult i32 %64, %61
  br i1 %65, label %66, label %75

66:                                               ; preds = %52
  %67 = add i32 %58, -1
  %68 = add i32 %64, %8
  %69 = icmp uge i32 %68, %8
  %70 = icmp ult i32 %68, %61
  %71 = select i1 %69, i1 %70, i1 false
  br i1 %71, label %72, label %75

72:                                               ; preds = %66
  %73 = add i32 %58, -2
  %74 = add i32 %68, %8
  br label %75

75:                                               ; preds = %72, %66, %52
  %76 = phi i32 [ %73, %72 ], [ %67, %66 ], [ %58, %52 ]
  %77 = phi i32 [ %74, %72 ], [ %68, %66 ], [ %64, %52 ]
  %78 = sub i32 %77, %61
  %79 = shl i32 %53, 16
  %80 = or i32 %76, %79
  %81 = getelementptr i32, ptr %17, i32 %32
  store i32 %80, ptr %81, align 4
  %82 = add nsw i32 %32, -1
  %83 = icmp sgt i32 %32, 0
  br i1 %83, label %30, label %23

84:                                               ; preds = %125, %27
  %85 = phi i32 [ %25, %27 ], [ %132, %125 ]
  %86 = phi i32 [ %24, %27 ], [ %128, %125 ]
  %87 = freeze i32 %86
  %88 = freeze i32 %28
  %89 = udiv i32 %87, %88
  %90 = mul i32 %89, %88
  %91 = sub i32 %87, %90
  %92 = mul i32 %89, %29
  %93 = shl nuw i32 %91, 16
  %94 = icmp ult i32 %93, %92
  br i1 %94, label %95, label %104

95:                                               ; preds = %84
  %96 = add i32 %89, -1
  %97 = add i32 %93, %8
  %98 = icmp uge i32 %97, %8
  %99 = icmp ult i32 %97, %92
  %100 = select i1 %98, i1 %99, i1 false
  br i1 %100, label %101, label %104

101:                                              ; preds = %95
  %102 = add i32 %89, -2
  %103 = add i32 %97, %8
  br label %104

104:                                              ; preds = %101, %95, %84
  %105 = phi i32 [ %102, %101 ], [ %96, %95 ], [ %89, %84 ]
  %106 = phi i32 [ %103, %101 ], [ %97, %95 ], [ %93, %84 ]
  %107 = sub i32 %106, %92
  %108 = freeze i32 %107
  %109 = freeze i32 %28
  %110 = udiv i32 %108, %109
  %111 = mul i32 %110, %109
  %112 = sub i32 %108, %111
  %113 = mul i32 %110, %29
  %114 = shl nuw i32 %112, 16
  %115 = icmp ult i32 %114, %113
  br i1 %115, label %116, label %125

116:                                              ; preds = %104
  %117 = add i32 %110, -1
  %118 = add i32 %114, %8
  %119 = icmp uge i32 %118, %8
  %120 = icmp ult i32 %118, %113
  %121 = select i1 %119, i1 %120, i1 false
  br i1 %121, label %122, label %125

122:                                              ; preds = %116
  %123 = add i32 %110, -2
  %124 = add i32 %118, %8
  br label %125

125:                                              ; preds = %122, %116, %104
  %126 = phi i32 [ %123, %122 ], [ %117, %116 ], [ %110, %104 ]
  %127 = phi i32 [ %124, %122 ], [ %118, %116 ], [ %114, %104 ]
  %128 = sub i32 %127, %113
  %129 = shl i32 %105, 16
  %130 = or i32 %126, %129
  %131 = getelementptr i32, ptr %0, i32 %85
  store i32 %130, ptr %131, align 4
  %132 = add i32 %85, -1
  %133 = icmp sgt i32 %132, -1
  br i1 %133, label %84, label %134

134:                                              ; preds = %125, %23
  %135 = phi i32 [ %24, %23 ], [ %128, %125 ]
  store i32 %135, ptr %2, align 4
  br label %424

136:                                              ; preds = %6
  %137 = add i32 %3, -2
  %138 = getelementptr i32, ptr %2, i32 %137
  %139 = getelementptr i32, ptr %4, i32 1
  %140 = load i32, ptr %139, align 4
  %141 = load i32, ptr %4, align 4
  %142 = getelementptr i32, ptr %138, i32 1
  %143 = load i32, ptr %142, align 4
  %144 = load i32, ptr %138, align 4
  %145 = icmp ult i32 %143, %140
  br i1 %145, label %154, label %146

146:                                              ; preds = %136
  %147 = icmp ule i32 %143, %140
  %148 = icmp ult i32 %144, %141
  %149 = select i1 %147, i1 %148, i1 false
  br i1 %149, label %154, label %150

150:                                              ; preds = %146
  %151 = tail call { i32, i32 } asm "subs $1, $4, $5\0Asbc  $0, $2, $3", "=r,=&r,r,rI,r,rI"(i32 %143, i32 %140, i32 %144, i32 %141) #7, !srcloc !24
  %152 = extractvalue { i32, i32 } %151, 0
  %153 = extractvalue { i32, i32 } %151, 1
  br label %154

154:                                              ; preds = %150, %146, %136
  %155 = phi i32 [ 1, %150 ], [ 0, %136 ], [ 0, %146 ]
  %156 = phi i32 [ %152, %150 ], [ %143, %136 ], [ %143, %146 ]
  %157 = phi i32 [ %153, %150 ], [ %144, %136 ], [ %144, %146 ]
  %158 = add i32 %3, %1
  %159 = add i32 %158, -3
  %160 = icmp sgt i32 %159, -1
  br i1 %160, label %161, label %280

161:                                              ; preds = %154
  %162 = lshr i32 %140, 16
  %163 = and i32 %140, 65535
  %164 = icmp ne i32 %141, 0
  %165 = sext i1 %164 to i32
  %166 = add i32 %141, %165
  %167 = sub i32 0, %141
  br label %168

168:                                              ; preds = %271, %161
  %169 = phi i32 [ %157, %161 ], [ %273, %271 ]
  %170 = phi i32 [ %156, %161 ], [ %274, %271 ]
  %171 = phi i32 [ %159, %161 ], [ %275, %271 ]
  %172 = phi ptr [ %138, %161 ], [ %178, %271 ]
  %173 = icmp slt i32 %171, %1
  br i1 %173, label %176, label %174

174:                                              ; preds = %168
  %175 = getelementptr i32, ptr %172, i32 -1
  br label %177

176:                                              ; preds = %168
  store i32 0, ptr %172, align 4
  br label %177

177:                                              ; preds = %176, %174
  %178 = phi ptr [ %175, %174 ], [ %172, %176 ]
  %179 = icmp eq i32 %170, %140
  br i1 %179, label %180, label %188

180:                                              ; preds = %177
  %181 = add i32 %169, %140
  %182 = icmp ult i32 %181, %140
  br i1 %182, label %183, label %238

183:                                              ; preds = %180
  %184 = sub i32 %181, %141
  %185 = load i32, ptr %178, align 4
  %186 = tail call { i32, i32 } asm "adds $1, $4, $5\0Aadc  $0, $2, $3", "=r,=&r,%r,rI,%r,rI"(i32 %184, i32 0, i32 %185, i32 %141) #7, !srcloc !25
  %187 = getelementptr i32, ptr %0, i32 %171
  store i32 -1, ptr %187, align 4
  br label %271

188:                                              ; preds = %177
  %189 = freeze i32 %170
  %190 = freeze i32 %162
  %191 = udiv i32 %189, %190
  %192 = mul i32 %191, %190
  %193 = sub i32 %189, %192
  %194 = mul i32 %191, %163
  %195 = tail call i32 @llvm.fshl.i32(i32 %193, i32 %169, i32 16)
  %196 = icmp ult i32 %195, %194
  br i1 %196, label %197, label %206

197:                                              ; preds = %188
  %198 = add i32 %191, -1
  %199 = add i32 %195, %140
  %200 = icmp uge i32 %199, %140
  %201 = icmp ult i32 %199, %194
  %202 = select i1 %200, i1 %201, i1 false
  br i1 %202, label %203, label %206

203:                                              ; preds = %197
  %204 = add i32 %191, -2
  %205 = add i32 %199, %140
  br label %206

206:                                              ; preds = %203, %197, %188
  %207 = phi i32 [ %204, %203 ], [ %198, %197 ], [ %191, %188 ]
  %208 = phi i32 [ %205, %203 ], [ %199, %197 ], [ %195, %188 ]
  %209 = sub i32 %208, %194
  %210 = freeze i32 %209
  %211 = freeze i32 %162
  %212 = udiv i32 %210, %211
  %213 = mul i32 %212, %211
  %214 = sub i32 %210, %213
  %215 = mul i32 %212, %163
  %216 = shl nuw i32 %214, 16
  %217 = and i32 %169, 65535
  %218 = or i32 %216, %217
  %219 = icmp ult i32 %218, %215
  br i1 %219, label %220, label %229

220:                                              ; preds = %206
  %221 = add i32 %212, -1
  %222 = add i32 %218, %140
  %223 = icmp uge i32 %222, %140
  %224 = icmp ult i32 %222, %215
  %225 = select i1 %223, i1 %224, i1 false
  br i1 %225, label %226, label %229

226:                                              ; preds = %220
  %227 = add i32 %212, -2
  %228 = add i32 %222, %140
  br label %229

229:                                              ; preds = %226, %220, %206
  %230 = phi i32 [ %227, %226 ], [ %221, %220 ], [ %212, %206 ]
  %231 = phi i32 [ %228, %226 ], [ %222, %220 ], [ %218, %206 ]
  %232 = sub i32 %231, %215
  %233 = shl i32 %207, 16
  %234 = or i32 %230, %233
  %235 = tail call { i32, i32 } asm "@ Inlined umul_ppmm\0Aumull $1, $0, $2, $3", "=&r,=&r,r,r,~{r0},~{r1}"(i32 %141, i32 %234) #7, !srcloc !26
  %236 = extractvalue { i32, i32 } %235, 0
  %237 = extractvalue { i32, i32 } %235, 1
  br label %238

238:                                              ; preds = %229, %180
  %239 = phi i32 [ %236, %229 ], [ %166, %180 ]
  %240 = phi i32 [ %237, %229 ], [ %167, %180 ]
  %241 = phi i32 [ %234, %229 ], [ -1, %180 ]
  %242 = phi i32 [ %232, %229 ], [ %181, %180 ]
  %243 = load i32, ptr %178, align 4
  br label %244

244:                                              ; preds = %254, %238
  %245 = phi i32 [ %239, %238 ], [ %257, %254 ]
  %246 = phi i32 [ %240, %238 ], [ %258, %254 ]
  %247 = phi i32 [ %241, %238 ], [ %255, %254 ]
  %248 = phi i32 [ %242, %238 ], [ %259, %254 ]
  %249 = icmp ugt i32 %245, %248
  br i1 %249, label %254, label %250

250:                                              ; preds = %244
  %251 = icmp eq i32 %245, %248
  %252 = icmp ugt i32 %246, %243
  %253 = select i1 %251, i1 %252, i1 false
  br i1 %253, label %254, label %264

254:                                              ; preds = %250, %244
  %255 = add i32 %247, -1
  %256 = tail call { i32, i32 } asm "subs $1, $4, $5\0Asbc  $0, $2, $3", "=r,=&r,r,rI,r,rI"(i32 %245, i32 0, i32 %246, i32 %141) #7, !srcloc !27
  %257 = extractvalue { i32, i32 } %256, 0
  %258 = extractvalue { i32, i32 } %256, 1
  %259 = add i32 %248, %140
  %260 = icmp ult i32 %259, %140
  br i1 %260, label %261, label %244

261:                                              ; preds = %254
  %262 = extractvalue { i32, i32 } %256, 0
  %263 = extractvalue { i32, i32 } %256, 1
  br label %264

264:                                              ; preds = %261, %250
  %265 = phi i32 [ %262, %261 ], [ %245, %250 ]
  %266 = phi i32 [ %263, %261 ], [ %246, %250 ]
  %267 = phi i32 [ %255, %261 ], [ %247, %250 ]
  %268 = phi i32 [ %259, %261 ], [ %248, %250 ]
  %269 = getelementptr i32, ptr %0, i32 %171
  store i32 %267, ptr %269, align 4
  %270 = tail call { i32, i32 } asm "subs $1, $4, $5\0Asbc  $0, $2, $3", "=r,=&r,r,rI,r,rI"(i32 %268, i32 %265, i32 %243, i32 %266) #7, !srcloc !28
  br label %271

271:                                              ; preds = %264, %183
  %272 = phi { i32, i32 } [ %186, %183 ], [ %270, %264 ]
  %273 = extractvalue { i32, i32 } %272, 1
  %274 = extractvalue { i32, i32 } %272, 0
  %275 = add i32 %171, -1
  %276 = icmp sgt i32 %275, -1
  br i1 %276, label %168, label %277

277:                                              ; preds = %271
  %278 = extractvalue { i32, i32 } %272, 1
  %279 = extractvalue { i32, i32 } %272, 0
  br label %280

280:                                              ; preds = %277, %154
  %281 = phi ptr [ %138, %154 ], [ %178, %277 ]
  %282 = phi i32 [ %156, %154 ], [ %279, %277 ]
  %283 = phi i32 [ %157, %154 ], [ %278, %277 ]
  %284 = getelementptr i32, ptr %281, i32 1
  store i32 %282, ptr %284, align 4
  store i32 %283, ptr %281, align 4
  br label %424

285:                                              ; preds = %6
  %286 = sub i32 %3, %5
  %287 = getelementptr i32, ptr %2, i32 %286
  %288 = add i32 %5, -1
  %289 = getelementptr i32, ptr %4, i32 %288
  %290 = load i32, ptr %289, align 4
  %291 = add i32 %5, -2
  %292 = getelementptr i32, ptr %4, i32 %291
  %293 = load i32, ptr %292, align 4
  %294 = getelementptr i32, ptr %287, i32 %288
  %295 = load i32, ptr %294, align 4
  %296 = icmp ult i32 %295, %290
  br i1 %296, label %305, label %297

297:                                              ; preds = %285
  %298 = icmp ugt i32 %295, %290
  br i1 %298, label %302, label %299

299:                                              ; preds = %297
  %300 = tail call i32 @mpihelp_cmp(ptr noundef %287, ptr noundef %4, i32 noundef %288) #6
  %301 = icmp sgt i32 %300, -1
  br i1 %301, label %302, label %305

302:                                              ; preds = %299, %297
  %303 = tail call i32 @mpihelp_sub_n(ptr noundef %287, ptr noundef %287, ptr noundef %4, i32 noundef %5) #6
  %304 = load i32, ptr %294, align 4
  br label %305

305:                                              ; preds = %302, %299, %285
  %306 = phi i32 [ 1, %302 ], [ 0, %299 ], [ 0, %285 ]
  %307 = phi i32 [ %304, %302 ], [ %295, %299 ], [ %295, %285 ]
  %308 = add i32 %3, %1
  %309 = xor i32 %5, -1
  %310 = add i32 %308, %309
  %311 = icmp sgt i32 %310, -1
  br i1 %311, label %312, label %424

312:                                              ; preds = %305
  %313 = icmp sgt i32 %291, -1
  %314 = lshr i32 %290, 16
  %315 = and i32 %290, 65535
  %316 = shl i32 %5, 2
  %317 = add i32 %316, -4
  br label %318

318:                                              ; preds = %417, %312
  %319 = phi i32 [ %307, %312 ], [ %421, %417 ]
  %320 = phi i32 [ %310, %312 ], [ %422, %417 ]
  %321 = phi ptr [ %287, %312 ], [ %334, %417 ]
  %322 = icmp slt i32 %320, %1
  br i1 %322, label %327, label %323

323:                                              ; preds = %318
  %324 = getelementptr i32, ptr %321, i32 -1
  %325 = getelementptr i32, ptr %324, i32 %5
  %326 = load i32, ptr %325, align 4
  br label %333

327:                                              ; preds = %318
  %328 = getelementptr i32, ptr %321, i32 %288
  %329 = load i32, ptr %328, align 4
  br i1 %313, label %330, label %332

330:                                              ; preds = %327
  %331 = getelementptr i32, ptr %321, i32 1
  call void @llvm.memmove.p0.p0.i32(ptr align 4 %331, ptr align 4 %321, i32 %317, i1 false)
  br label %332

332:                                              ; preds = %330, %327
  store i32 0, ptr %321, align 4
  br label %333

333:                                              ; preds = %332, %323
  %334 = phi ptr [ %324, %323 ], [ %321, %332 ]
  %335 = phi i32 [ %326, %323 ], [ %329, %332 ]
  %336 = icmp eq i32 %319, %290
  br i1 %336, label %410, label %337

337:                                              ; preds = %333
  %338 = freeze i32 %319
  %339 = freeze i32 %314
  %340 = udiv i32 %338, %339
  %341 = mul i32 %340, %339
  %342 = sub i32 %338, %341
  %343 = mul i32 %340, %315
  %344 = getelementptr i32, ptr %334, i32 %288
  %345 = load i32, ptr %344, align 4
  %346 = tail call i32 @llvm.fshl.i32(i32 %342, i32 %345, i32 16)
  %347 = icmp ult i32 %346, %343
  br i1 %347, label %348, label %357

348:                                              ; preds = %337
  %349 = add i32 %340, -1
  %350 = add i32 %346, %290
  %351 = icmp uge i32 %350, %290
  %352 = icmp ult i32 %350, %343
  %353 = select i1 %351, i1 %352, i1 false
  br i1 %353, label %354, label %357

354:                                              ; preds = %348
  %355 = add i32 %340, -2
  %356 = add i32 %350, %290
  br label %357

357:                                              ; preds = %354, %348, %337
  %358 = phi i32 [ %355, %354 ], [ %349, %348 ], [ %340, %337 ]
  %359 = phi i32 [ %356, %354 ], [ %350, %348 ], [ %346, %337 ]
  %360 = sub i32 %359, %343
  %361 = freeze i32 %360
  %362 = freeze i32 %314
  %363 = udiv i32 %361, %362
  %364 = mul i32 %363, %362
  %365 = sub i32 %361, %364
  %366 = mul i32 %363, %315
  %367 = shl nuw i32 %365, 16
  %368 = and i32 %345, 65535
  %369 = or i32 %367, %368
  %370 = icmp ult i32 %369, %366
  br i1 %370, label %371, label %380

371:                                              ; preds = %357
  %372 = add i32 %363, -1
  %373 = add i32 %369, %290
  %374 = icmp uge i32 %373, %290
  %375 = icmp ult i32 %373, %366
  %376 = select i1 %374, i1 %375, i1 false
  br i1 %376, label %377, label %380

377:                                              ; preds = %371
  %378 = add i32 %363, -2
  %379 = add i32 %373, %290
  br label %380

380:                                              ; preds = %377, %371, %357
  %381 = phi i32 [ %378, %377 ], [ %372, %371 ], [ %363, %357 ]
  %382 = phi i32 [ %379, %377 ], [ %373, %371 ], [ %369, %357 ]
  %383 = sub i32 %382, %366
  %384 = shl i32 %358, 16
  %385 = or i32 %381, %384
  %386 = tail call { i32, i32 } asm "@ Inlined umul_ppmm\0Aumull $1, $0, $2, $3", "=&r,=&r,r,r,~{r0},~{r1}"(i32 %293, i32 %385) #7, !srcloc !29
  %387 = extractvalue { i32, i32 } %386, 0
  %388 = extractvalue { i32, i32 } %386, 1
  %389 = getelementptr i32, ptr %334, i32 %291
  br label %390

390:                                              ; preds = %405, %380
  %391 = phi i32 [ %388, %380 ], [ %409, %405 ]
  %392 = phi i32 [ %385, %380 ], [ %402, %405 ]
  %393 = phi i32 [ %387, %380 ], [ %408, %405 ]
  %394 = phi i32 [ %383, %380 ], [ %403, %405 ]
  %395 = icmp ugt i32 %393, %394
  br i1 %395, label %401, label %396

396:                                              ; preds = %390
  %397 = icmp eq i32 %393, %394
  br i1 %397, label %398, label %410

398:                                              ; preds = %396
  %399 = load i32, ptr %389, align 4
  %400 = icmp ugt i32 %391, %399
  br i1 %400, label %401, label %410

401:                                              ; preds = %398, %390
  %402 = add i32 %392, -1
  %403 = add i32 %394, %290
  %404 = icmp ult i32 %403, %290
  br i1 %404, label %410, label %405

405:                                              ; preds = %401
  %406 = icmp ult i32 %391, %293
  %407 = sext i1 %406 to i32
  %408 = add i32 %393, %407
  %409 = sub i32 %391, %293
  br label %390

410:                                              ; preds = %401, %398, %396, %333
  %411 = phi i32 [ -1, %333 ], [ %392, %396 ], [ %392, %398 ], [ %402, %401 ]
  %412 = tail call i32 @mpihelp_submul_1(ptr noundef %334, ptr noundef %4, i32 noundef %5, i32 noundef %411) #6
  %413 = icmp eq i32 %335, %412
  br i1 %413, label %417, label %414

414:                                              ; preds = %410
  %415 = tail call i32 @mpihelp_add_n(ptr noundef %334, ptr noundef %334, ptr noundef %4, i32 noundef %5) #6
  %416 = add i32 %411, -1
  br label %417

417:                                              ; preds = %414, %410
  %418 = phi i32 [ %416, %414 ], [ %411, %410 ]
  %419 = getelementptr i32, ptr %0, i32 %320
  store i32 %418, ptr %419, align 4
  %420 = getelementptr i32, ptr %334, i32 %288
  %421 = load i32, ptr %420, align 4
  %422 = add i32 %320, -1
  %423 = icmp sgt i32 %422, -1
  br i1 %423, label %318, label %424

424:                                              ; preds = %417, %305, %280, %134, %6
  %425 = phi i32 [ poison, %6 ], [ %155, %280 ], [ %14, %134 ], [ %306, %305 ], [ %306, %417 ]
  ret i32 %425
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpihelp_cmp(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpihelp_sub_n(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpihelp_submul_1(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpihelp_add_n(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mpihelp_divmod_1(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 {
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %430, label %6

6:                                                ; preds = %4
  %7 = mul i32 %2, 54
  %8 = icmp sgt i32 %7, 100
  %9 = tail call i32 @llvm.ctlz.i32(i32 %3, i1 false) #6, !range !8
  %10 = icmp eq i32 %9, 0
  br i1 %8, label %11, label %238

11:                                               ; preds = %6
  br i1 %10, label %144, label %12

12:                                               ; preds = %11
  %13 = shl i32 %3, %9
  %14 = and i32 %13, 2147483647
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %60, label %16

16:                                               ; preds = %12
  %17 = lshr i32 %13, 16
  %18 = and i32 %13, 65535
  %19 = sub i32 0, %13
  %20 = freeze i32 %19
  %21 = freeze i32 %17
  %22 = udiv i32 %20, %21
  %23 = mul i32 %22, %21
  %24 = sub i32 %20, %23
  %25 = mul i32 %22, %18
  %26 = shl nuw i32 %24, 16
  %27 = icmp ult i32 %26, %25
  br i1 %27, label %28, label %37

28:                                               ; preds = %16
  %29 = add i32 %22, -1
  %30 = add i32 %26, %13
  %31 = icmp uge i32 %30, %13
  %32 = icmp ult i32 %30, %25
  %33 = select i1 %31, i1 %32, i1 false
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = add i32 %22, -2
  %36 = add i32 %30, %13
  br label %37

37:                                               ; preds = %34, %28, %16
  %38 = phi i32 [ %35, %34 ], [ %29, %28 ], [ %22, %16 ]
  %39 = phi i32 [ %36, %34 ], [ %30, %28 ], [ %26, %16 ]
  %40 = sub i32 %39, %25
  %41 = freeze i32 %40
  %42 = freeze i32 %17
  %43 = udiv i32 %41, %42
  %44 = mul i32 %43, %42
  %45 = sub i32 %41, %44
  %46 = mul i32 %43, %18
  %47 = shl nuw i32 %45, 16
  %48 = icmp ult i32 %47, %46
  br i1 %48, label %49, label %56

49:                                               ; preds = %37
  %50 = add i32 %47, %13
  %51 = icmp uge i32 %50, %13
  %52 = icmp ult i32 %50, %46
  %53 = select i1 %51, i1 %52, i1 false
  %54 = select i1 %53, i32 -2, i32 -1
  %55 = add i32 %54, %43
  br label %56

56:                                               ; preds = %49, %37
  %57 = phi i32 [ %43, %37 ], [ %55, %49 ]
  %58 = shl i32 %38, 16
  %59 = or i32 %57, %58
  br label %60

60:                                               ; preds = %56, %12
  %61 = phi i32 [ %59, %56 ], [ -1, %12 ]
  %62 = add i32 %2, -1
  %63 = getelementptr i32, ptr %1, i32 %62
  %64 = load i32, ptr %63, align 4
  %65 = sub nuw nsw i32 32, %9
  %66 = lshr i32 %64, %65
  %67 = add i32 %2, -2
  %68 = icmp sgt i32 %67, -1
  br i1 %68, label %69, label %111

69:                                               ; preds = %98, %60
  %70 = phi i32 [ %109, %98 ], [ %67, %60 ]
  %71 = phi i32 [ %74, %98 ], [ %64, %60 ]
  %72 = phi i32 [ %106, %98 ], [ %66, %60 ]
  %73 = getelementptr i32, ptr %1, i32 %70
  %74 = load i32, ptr %73, align 4
  %75 = tail call { i32, i32 } asm "@ Inlined umul_ppmm\0Aumull $1, $0, $2, $3", "=&r,=&r,r,r,~{r0},~{r1}"(i32 %72, i32 %61) #7, !srcloc !30
  %76 = extractvalue { i32, i32 } %75, 0
  %77 = add i32 %76, %72
  %78 = tail call { i32, i32 } asm "@ Inlined umul_ppmm\0Aumull $1, $0, $2, $3", "=&r,=&r,r,r,~{r0},~{r1}"(i32 %77, i32 %13) #7, !srcloc !31
  %79 = extractvalue { i32, i32 } %78, 0
  %80 = extractvalue { i32, i32 } %78, 1
  %81 = shl i32 %71, %9
  %82 = lshr i32 %74, %65
  %83 = or i32 %82, %81
  %84 = tail call { i32, i32 } asm "subs $1, $4, $5\0Asbc  $0, $2, $3", "=r,=&r,r,rI,r,rI"(i32 %72, i32 %79, i32 %83, i32 %80) #7, !srcloc !32
  %85 = extractvalue { i32, i32 } %84, 0
  %86 = extractvalue { i32, i32 } %84, 1
  %87 = icmp eq i32 %85, 0
  br i1 %87, label %98, label %88

88:                                               ; preds = %69
  %89 = tail call { i32, i32 } asm "subs $1, $4, $5\0Asbc  $0, $2, $3", "=r,=&r,r,rI,r,rI"(i32 %85, i32 0, i32 %86, i32 %13) #7, !srcloc !33
  %90 = extractvalue { i32, i32 } %89, 0
  %91 = extractvalue { i32, i32 } %89, 1
  %92 = add i32 %77, 1
  %93 = icmp eq i32 %90, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %88
  %95 = tail call { i32, i32 } asm "subs $1, $4, $5\0Asbc  $0, $2, $3", "=r,=&r,r,rI,r,rI"(i32 %90, i32 0, i32 %91, i32 %13) #7, !srcloc !34
  %96 = extractvalue { i32, i32 } %95, 1
  %97 = add i32 %77, 2
  br label %98

98:                                               ; preds = %94, %88, %69
  %99 = phi i32 [ %97, %94 ], [ %92, %88 ], [ %77, %69 ]
  %100 = phi i32 [ %96, %94 ], [ %91, %88 ], [ %86, %69 ]
  %101 = icmp ult i32 %100, %13
  %102 = xor i1 %101, true
  %103 = zext i1 %102 to i32
  %104 = add i32 %99, %103
  %105 = select i1 %101, i32 0, i32 %13
  %106 = sub i32 %100, %105
  %107 = add nuw i32 %70, 1
  %108 = getelementptr i32, ptr %0, i32 %107
  store i32 %104, ptr %108, align 4
  %109 = add nsw i32 %70, -1
  %110 = icmp sgt i32 %70, 0
  br i1 %110, label %69, label %111

111:                                              ; preds = %98, %60
  %112 = phi i32 [ %66, %60 ], [ %106, %98 ]
  %113 = phi i32 [ %64, %60 ], [ %74, %98 ]
  %114 = tail call { i32, i32 } asm "@ Inlined umul_ppmm\0Aumull $1, $0, $2, $3", "=&r,=&r,r,r,~{r0},~{r1}"(i32 %112, i32 %61) #7, !srcloc !35
  %115 = extractvalue { i32, i32 } %114, 0
  %116 = add i32 %115, %112
  %117 = tail call { i32, i32 } asm "@ Inlined umul_ppmm\0Aumull $1, $0, $2, $3", "=&r,=&r,r,r,~{r0},~{r1}"(i32 %116, i32 %13) #7, !srcloc !36
  %118 = extractvalue { i32, i32 } %117, 0
  %119 = extractvalue { i32, i32 } %117, 1
  %120 = shl i32 %113, %9
  %121 = tail call { i32, i32 } asm "subs $1, $4, $5\0Asbc  $0, $2, $3", "=r,=&r,r,rI,r,rI"(i32 %112, i32 %118, i32 %120, i32 %119) #7, !srcloc !37
  %122 = extractvalue { i32, i32 } %121, 0
  %123 = extractvalue { i32, i32 } %121, 1
  %124 = icmp eq i32 %122, 0
  br i1 %124, label %135, label %125

125:                                              ; preds = %111
  %126 = tail call { i32, i32 } asm "subs $1, $4, $5\0Asbc  $0, $2, $3", "=r,=&r,r,rI,r,rI"(i32 %122, i32 0, i32 %123, i32 %13) #7, !srcloc !38
  %127 = extractvalue { i32, i32 } %126, 0
  %128 = extractvalue { i32, i32 } %126, 1
  %129 = add i32 %116, 1
  %130 = icmp eq i32 %127, 0
  br i1 %130, label %135, label %131

131:                                              ; preds = %125
  %132 = tail call { i32, i32 } asm "subs $1, $4, $5\0Asbc  $0, $2, $3", "=r,=&r,r,rI,r,rI"(i32 %127, i32 0, i32 %128, i32 %13) #7, !srcloc !39
  %133 = extractvalue { i32, i32 } %132, 1
  %134 = add i32 %116, 2
  br label %135

135:                                              ; preds = %131, %125, %111
  %136 = phi i32 [ %134, %131 ], [ %129, %125 ], [ %116, %111 ]
  %137 = phi i32 [ %133, %131 ], [ %128, %125 ], [ %123, %111 ]
  %138 = icmp ult i32 %137, %13
  %139 = xor i1 %138, true
  %140 = zext i1 %139 to i32
  %141 = add i32 %136, %140
  %142 = select i1 %138, i32 0, i32 %13
  %143 = sub i32 %137, %142
  br label %426

144:                                              ; preds = %11
  %145 = and i32 %3, 2147483647
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %188, label %147

147:                                              ; preds = %144
  %148 = lshr i32 %3, 16
  %149 = and i32 %3, 65535
  %150 = sub i32 0, %3
  %151 = udiv i32 %150, %148
  %152 = mul i32 %151, %148
  %153 = sub i32 %150, %152
  %154 = mul i32 %151, %149
  %155 = shl nuw i32 %153, 16
  %156 = icmp ult i32 %155, %154
  br i1 %156, label %157, label %166

157:                                              ; preds = %147
  %158 = add i32 %151, -1
  %159 = add i32 %155, %3
  %160 = icmp uge i32 %159, %3
  %161 = icmp ult i32 %159, %154
  %162 = and i1 %160, %161
  br i1 %162, label %163, label %166

163:                                              ; preds = %157
  %164 = add i32 %151, -2
  %165 = add i32 %159, %3
  br label %166

166:                                              ; preds = %163, %157, %147
  %167 = phi i32 [ %164, %163 ], [ %158, %157 ], [ %151, %147 ]
  %168 = phi i32 [ %165, %163 ], [ %159, %157 ], [ %155, %147 ]
  %169 = sub i32 %168, %154
  %170 = freeze i32 %169
  %171 = udiv i32 %170, %148
  %172 = mul i32 %171, %148
  %173 = sub i32 %170, %172
  %174 = mul i32 %171, %149
  %175 = shl nuw i32 %173, 16
  %176 = icmp ult i32 %175, %174
  br i1 %176, label %177, label %184

177:                                              ; preds = %166
  %178 = add i32 %175, %3
  %179 = icmp uge i32 %178, %3
  %180 = icmp ult i32 %178, %174
  %181 = select i1 %179, i1 %180, i1 false
  %182 = select i1 %181, i32 -2, i32 -1
  %183 = add i32 %182, %171
  br label %184

184:                                              ; preds = %177, %166
  %185 = phi i32 [ %171, %166 ], [ %183, %177 ]
  %186 = shl i32 %167, 16
  %187 = or i32 %185, %186
  br label %188

188:                                              ; preds = %184, %144
  %189 = phi i32 [ %187, %184 ], [ -1, %144 ]
  %190 = add i32 %2, -1
  %191 = getelementptr i32, ptr %1, i32 %190
  %192 = load i32, ptr %191, align 4
  %193 = icmp ult i32 %192, %3
  br i1 %193, label %194, label %197

194:                                              ; preds = %188
  %195 = add i32 %2, -2
  %196 = getelementptr i32, ptr %0, i32 %190
  store i32 0, ptr %196, align 4
  br label %197

197:                                              ; preds = %194, %188
  %198 = phi i32 [ %192, %194 ], [ 0, %188 ]
  %199 = phi i32 [ %195, %194 ], [ %190, %188 ]
  %200 = icmp sgt i32 %199, -1
  br i1 %200, label %201, label %430

201:                                              ; preds = %226, %197
  %202 = phi i32 [ %236, %226 ], [ %199, %197 ]
  %203 = phi i32 [ %234, %226 ], [ %198, %197 ]
  %204 = getelementptr i32, ptr %1, i32 %202
  %205 = load i32, ptr %204, align 4
  %206 = tail call { i32, i32 } asm "@ Inlined umul_ppmm\0Aumull $1, $0, $2, $3", "=&r,=&r,r,r,~{r0},~{r1}"(i32 %203, i32 %189) #7, !srcloc !40
  %207 = extractvalue { i32, i32 } %206, 0
  %208 = add i32 %207, %203
  %209 = tail call { i32, i32 } asm "@ Inlined umul_ppmm\0Aumull $1, $0, $2, $3", "=&r,=&r,r,r,~{r0},~{r1}"(i32 %208, i32 %3) #7, !srcloc !41
  %210 = extractvalue { i32, i32 } %209, 0
  %211 = extractvalue { i32, i32 } %209, 1
  %212 = tail call { i32, i32 } asm "subs $1, $4, $5\0Asbc  $0, $2, $3", "=r,=&r,r,rI,r,rI"(i32 %203, i32 %210, i32 %205, i32 %211) #7, !srcloc !42
  %213 = extractvalue { i32, i32 } %212, 0
  %214 = extractvalue { i32, i32 } %212, 1
  %215 = icmp eq i32 %213, 0
  br i1 %215, label %226, label %216

216:                                              ; preds = %201
  %217 = tail call { i32, i32 } asm "subs $1, $4, $5\0Asbc  $0, $2, $3", "=r,=&r,r,rI,r,rI"(i32 %213, i32 0, i32 %214, i32 %3) #7, !srcloc !43
  %218 = extractvalue { i32, i32 } %217, 0
  %219 = extractvalue { i32, i32 } %217, 1
  %220 = add i32 %208, 1
  %221 = icmp eq i32 %218, 0
  br i1 %221, label %226, label %222

222:                                              ; preds = %216
  %223 = tail call { i32, i32 } asm "subs $1, $4, $5\0Asbc  $0, $2, $3", "=r,=&r,r,rI,r,rI"(i32 %218, i32 0, i32 %219, i32 %3) #7, !srcloc !44
  %224 = extractvalue { i32, i32 } %223, 1
  %225 = add i32 %208, 2
  br label %226

226:                                              ; preds = %222, %216, %201
  %227 = phi i32 [ %225, %222 ], [ %220, %216 ], [ %208, %201 ]
  %228 = phi i32 [ %224, %222 ], [ %219, %216 ], [ %214, %201 ]
  %229 = icmp ult i32 %228, %3
  %230 = xor i1 %229, true
  %231 = zext i1 %230 to i32
  %232 = add i32 %227, %231
  %233 = select i1 %229, i32 0, i32 %3
  %234 = sub i32 %228, %233
  %235 = getelementptr i32, ptr %0, i32 %202
  store i32 %232, ptr %235, align 4
  %236 = add nsw i32 %202, -1
  %237 = icmp sgt i32 %202, 0
  br i1 %237, label %201, label %430

238:                                              ; preds = %6
  br i1 %10, label %359, label %239

239:                                              ; preds = %238
  %240 = shl i32 %3, %9
  %241 = add i32 %2, -1
  %242 = getelementptr i32, ptr %1, i32 %241
  %243 = load i32, ptr %242, align 4
  %244 = sub nuw nsw i32 32, %9
  %245 = lshr i32 %243, %244
  %246 = add i32 %2, -2
  %247 = icmp sgt i32 %246, -1
  %248 = lshr i32 %240, 16
  %249 = and i32 %240, 65535
  br i1 %247, label %250, label %309

250:                                              ; preds = %299, %239
  %251 = phi i32 [ %307, %299 ], [ %246, %239 ]
  %252 = phi i32 [ %255, %299 ], [ %243, %239 ]
  %253 = phi i32 [ %302, %299 ], [ %245, %239 ]
  %254 = getelementptr i32, ptr %1, i32 %251
  %255 = load i32, ptr %254, align 4
  %256 = freeze i32 %253
  %257 = freeze i32 %248
  %258 = udiv i32 %256, %257
  %259 = mul i32 %258, %257
  %260 = sub i32 %256, %259
  %261 = mul i32 %258, %249
  %262 = shl i32 %252, %9
  %263 = lshr i32 %255, %244
  %264 = or i32 %263, %262
  %265 = tail call i32 @llvm.fshl.i32(i32 %260, i32 %264, i32 16)
  %266 = icmp ult i32 %265, %261
  br i1 %266, label %267, label %276

267:                                              ; preds = %250
  %268 = add i32 %258, -1
  %269 = add i32 %265, %240
  %270 = icmp uge i32 %269, %240
  %271 = icmp ult i32 %269, %261
  %272 = select i1 %270, i1 %271, i1 false
  br i1 %272, label %273, label %276

273:                                              ; preds = %267
  %274 = add i32 %258, -2
  %275 = add i32 %269, %240
  br label %276

276:                                              ; preds = %273, %267, %250
  %277 = phi i32 [ %274, %273 ], [ %268, %267 ], [ %258, %250 ]
  %278 = phi i32 [ %275, %273 ], [ %269, %267 ], [ %265, %250 ]
  %279 = sub i32 %278, %261
  %280 = freeze i32 %279
  %281 = freeze i32 %248
  %282 = udiv i32 %280, %281
  %283 = mul i32 %282, %281
  %284 = sub i32 %280, %283
  %285 = mul i32 %282, %249
  %286 = shl nuw i32 %284, 16
  %287 = and i32 %264, 65535
  %288 = or i32 %286, %287
  %289 = icmp ult i32 %288, %285
  br i1 %289, label %290, label %299

290:                                              ; preds = %276
  %291 = add i32 %282, -1
  %292 = add i32 %288, %240
  %293 = icmp uge i32 %292, %240
  %294 = icmp ult i32 %292, %285
  %295 = select i1 %293, i1 %294, i1 false
  br i1 %295, label %296, label %299

296:                                              ; preds = %290
  %297 = add i32 %282, -2
  %298 = add i32 %292, %240
  br label %299

299:                                              ; preds = %296, %290, %276
  %300 = phi i32 [ %297, %296 ], [ %291, %290 ], [ %282, %276 ]
  %301 = phi i32 [ %298, %296 ], [ %292, %290 ], [ %288, %276 ]
  %302 = sub i32 %301, %285
  %303 = shl i32 %277, 16
  %304 = or i32 %300, %303
  %305 = add nuw i32 %251, 1
  %306 = getelementptr i32, ptr %0, i32 %305
  store i32 %304, ptr %306, align 4
  %307 = add nsw i32 %251, -1
  %308 = icmp sgt i32 %251, 0
  br i1 %308, label %250, label %309

309:                                              ; preds = %299, %239
  %310 = phi i32 [ %245, %239 ], [ %302, %299 ]
  %311 = phi i32 [ %243, %239 ], [ %255, %299 ]
  %312 = freeze i32 %310
  %313 = freeze i32 %248
  %314 = udiv i32 %312, %313
  %315 = mul i32 %314, %313
  %316 = sub i32 %312, %315
  %317 = mul i32 %314, %249
  %318 = shl i32 %311, %9
  %319 = tail call i32 @llvm.fshl.i32(i32 %316, i32 %318, i32 16)
  %320 = icmp ult i32 %319, %317
  br i1 %320, label %321, label %330

321:                                              ; preds = %309
  %322 = add i32 %314, -1
  %323 = add i32 %319, %240
  %324 = icmp uge i32 %323, %240
  %325 = icmp ult i32 %323, %317
  %326 = select i1 %324, i1 %325, i1 false
  br i1 %326, label %327, label %330

327:                                              ; preds = %321
  %328 = add i32 %314, -2
  %329 = add i32 %323, %240
  br label %330

330:                                              ; preds = %327, %321, %309
  %331 = phi i32 [ %328, %327 ], [ %322, %321 ], [ %314, %309 ]
  %332 = phi i32 [ %329, %327 ], [ %323, %321 ], [ %319, %309 ]
  %333 = sub i32 %332, %317
  %334 = freeze i32 %333
  %335 = freeze i32 %248
  %336 = udiv i32 %334, %335
  %337 = mul i32 %336, %335
  %338 = sub i32 %334, %337
  %339 = mul i32 %336, %249
  %340 = shl nuw i32 %338, 16
  %341 = and i32 %318, 65535
  %342 = or i32 %340, %341
  %343 = icmp ult i32 %342, %339
  br i1 %343, label %344, label %353

344:                                              ; preds = %330
  %345 = add i32 %336, -1
  %346 = add i32 %342, %240
  %347 = icmp uge i32 %346, %240
  %348 = icmp ult i32 %346, %339
  %349 = select i1 %347, i1 %348, i1 false
  br i1 %349, label %350, label %353

350:                                              ; preds = %344
  %351 = add i32 %336, -2
  %352 = add i32 %346, %240
  br label %353

353:                                              ; preds = %350, %344, %330
  %354 = phi i32 [ %351, %350 ], [ %345, %344 ], [ %336, %330 ]
  %355 = phi i32 [ %352, %350 ], [ %346, %344 ], [ %342, %330 ]
  %356 = sub i32 %355, %339
  %357 = shl i32 %331, 16
  %358 = or i32 %354, %357
  br label %426

359:                                              ; preds = %238
  %360 = add i32 %2, -1
  %361 = getelementptr i32, ptr %1, i32 %360
  %362 = load i32, ptr %361, align 4
  %363 = icmp ult i32 %362, %3
  br i1 %363, label %364, label %367

364:                                              ; preds = %359
  %365 = add i32 %2, -2
  %366 = getelementptr i32, ptr %0, i32 %360
  store i32 0, ptr %366, align 4
  br label %367

367:                                              ; preds = %364, %359
  %368 = phi i32 [ %362, %364 ], [ 0, %359 ]
  %369 = phi i32 [ %365, %364 ], [ %360, %359 ]
  %370 = icmp sgt i32 %369, -1
  br i1 %370, label %371, label %430

371:                                              ; preds = %367
  %372 = lshr i32 %3, 16
  %373 = and i32 %3, 65535
  br label %374

374:                                              ; preds = %417, %371
  %375 = phi i32 [ %369, %371 ], [ %424, %417 ]
  %376 = phi i32 [ %368, %371 ], [ %420, %417 ]
  %377 = getelementptr i32, ptr %1, i32 %375
  %378 = load i32, ptr %377, align 4
  %379 = freeze i32 %376
  %380 = udiv i32 %379, %372
  %381 = mul i32 %380, %372
  %382 = sub i32 %379, %381
  %383 = mul i32 %380, %373
  %384 = tail call i32 @llvm.fshl.i32(i32 %382, i32 %378, i32 16)
  %385 = icmp ult i32 %384, %383
  br i1 %385, label %386, label %395

386:                                              ; preds = %374
  %387 = add i32 %380, -1
  %388 = add i32 %384, %3
  %389 = icmp uge i32 %388, %3
  %390 = icmp ult i32 %388, %383
  %391 = select i1 %389, i1 %390, i1 false
  br i1 %391, label %392, label %395

392:                                              ; preds = %386
  %393 = add i32 %380, -2
  %394 = add i32 %388, %3
  br label %395

395:                                              ; preds = %392, %386, %374
  %396 = phi i32 [ %393, %392 ], [ %387, %386 ], [ %380, %374 ]
  %397 = phi i32 [ %394, %392 ], [ %388, %386 ], [ %384, %374 ]
  %398 = sub i32 %397, %383
  %399 = freeze i32 %398
  %400 = udiv i32 %399, %372
  %401 = mul i32 %400, %372
  %402 = sub i32 %399, %401
  %403 = mul i32 %400, %373
  %404 = shl nuw i32 %402, 16
  %405 = and i32 %378, 65535
  %406 = or i32 %404, %405
  %407 = icmp ult i32 %406, %403
  br i1 %407, label %408, label %417

408:                                              ; preds = %395
  %409 = add i32 %400, -1
  %410 = add i32 %406, %3
  %411 = icmp uge i32 %410, %3
  %412 = icmp ult i32 %410, %403
  %413 = select i1 %411, i1 %412, i1 false
  br i1 %413, label %414, label %417

414:                                              ; preds = %408
  %415 = add i32 %400, -2
  %416 = add i32 %410, %3
  br label %417

417:                                              ; preds = %414, %408, %395
  %418 = phi i32 [ %415, %414 ], [ %409, %408 ], [ %400, %395 ]
  %419 = phi i32 [ %416, %414 ], [ %410, %408 ], [ %406, %395 ]
  %420 = sub i32 %419, %403
  %421 = shl i32 %396, 16
  %422 = or i32 %418, %421
  %423 = getelementptr i32, ptr %0, i32 %375
  store i32 %422, ptr %423, align 4
  %424 = add nsw i32 %375, -1
  %425 = icmp sgt i32 %375, 0
  br i1 %425, label %374, label %430

426:                                              ; preds = %353, %135
  %427 = phi i32 [ %358, %353 ], [ %141, %135 ]
  %428 = phi i32 [ %356, %353 ], [ %143, %135 ]
  store i32 %427, ptr %0, align 4
  %429 = lshr i32 %428, %9
  br label %430

430:                                              ; preds = %426, %417, %367, %226, %197, %4
  %431 = phi i32 [ 0, %4 ], [ %198, %197 ], [ %368, %367 ], [ %429, %426 ], [ %234, %226 ], [ %420, %417 ]
  ret i32 %431
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i32(ptr nocapture writeonly, ptr nocapture readonly, i32, i1 immarg) #5

attributes #0 = { argmemonly nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone }

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
!8 = !{i32 0, i32 33}
!9 = !{i64 2152407083, i64 2152407112}
!10 = !{i64 2152407279, i64 2152407308}
!11 = !{i64 2152407464, i64 2152407489}
!12 = !{i64 2152407749, i64 2152407774}
!13 = !{i64 2152407967, i64 2152407992}
!14 = !{i64 2152408939, i64 2152408968}
!15 = !{i64 2152409135, i64 2152409164}
!16 = !{i64 2152409320, i64 2152409345}
!17 = !{i64 2152409556, i64 2152409581}
!18 = !{i64 2152409774, i64 2152409799}
!19 = !{i64 2152412234, i64 2152412263}
!20 = !{i64 2152412430, i64 2152412459}
!21 = !{i64 2152412615, i64 2152412640}
!22 = !{i64 2152412828, i64 2152412853}
!23 = !{i64 2152413046, i64 2152413071}
!24 = !{i64 2152420829, i64 2152420854}
!25 = !{i64 2152421032, i64 2152421057}
!26 = !{i64 2152422612, i64 2152422641}
!27 = !{i64 2152422780, i64 2152422805}
!28 = !{i64 2152422982, i64 2152423007}
!29 = !{i64 2152424722, i64 2152424751}
!30 = !{i64 2152427294, i64 2152427323}
!31 = !{i64 2152427490, i64 2152427519}
!32 = !{i64 2152427675, i64 2152427700}
!33 = !{i64 2152427960, i64 2152427985}
!34 = !{i64 2152428178, i64 2152428203}
!35 = !{i64 2152429156, i64 2152429185}
!36 = !{i64 2152429352, i64 2152429381}
!37 = !{i64 2152429537, i64 2152429562}
!38 = !{i64 2152429773, i64 2152429798}
!39 = !{i64 2152429991, i64 2152430016}
!40 = !{i64 2152432457, i64 2152432486}
!41 = !{i64 2152432653, i64 2152432682}
!42 = !{i64 2152432838, i64 2152432863}
!43 = !{i64 2152433051, i64 2152433076}
!44 = !{i64 2152433269, i64 2152433294}
