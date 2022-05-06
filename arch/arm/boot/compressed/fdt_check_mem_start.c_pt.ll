; ModuleID = '/llk/IR/arch/arm/boot/compressed/fdt_check_mem_start.c_pt.bc'
source_filename = "../arch/arm/boot/compressed/fdt_check_mem_start.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

@.str = private unnamed_addr constant [15 x i8] c"#address-cells\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"#size-cells\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"/chosen\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"linux,usable-memory-range\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"device_type\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"memory\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"linux,usable-memory\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"/\00", align 1

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define i32 @fdt_check_mem_start(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #4
  store i32 0, ptr %6, align 4, !annotation !9
  %7 = icmp eq ptr %1, null
  br i1 %7, label %338, label %8

8:                                                ; preds = %2
  %9 = load i8, ptr %1, align 1
  %10 = zext i8 %9 to i32
  %11 = shl nuw i32 %10, 24
  %12 = getelementptr i8, ptr %1, i32 1
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i32
  %15 = shl nuw nsw i32 %14, 16
  %16 = or i32 %15, %11
  %17 = getelementptr i8, ptr %1, i32 2
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i32
  %20 = shl nuw nsw i32 %19, 8
  %21 = or i32 %16, %20
  %22 = getelementptr i8, ptr %1, i32 3
  %23 = load i8, ptr %22, align 1
  %24 = zext i8 %23 to i32
  %25 = or i32 %21, %24
  %26 = icmp eq i32 %25, -804389139
  br i1 %26, label %27, label %338

27:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #4
  store i32 0, ptr %5, align 4, !annotation !9
  %28 = tail call i32 @fdt_path_offset(ptr noundef nonnull %1, ptr noundef nonnull @.str.8) #5
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %27
  %31 = call ptr @fdt_getprop(ptr noundef nonnull %1, i32 noundef %28, ptr noundef nonnull @.str, ptr noundef nonnull %5) #5
  %32 = icmp eq ptr %31, null
  %33 = load i32, ptr %5, align 4
  %34 = icmp slt i32 %33, 4
  %35 = select i1 %32, i1 true, i1 %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30, %27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #4
  br label %55

37:                                               ; preds = %30
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #4
  %38 = load i8, ptr %31, align 1
  %39 = zext i8 %38 to i32
  %40 = shl nuw i32 %39, 24
  %41 = getelementptr i8, ptr %31, i32 1
  %42 = load i8, ptr %41, align 1
  %43 = zext i8 %42 to i32
  %44 = shl nuw nsw i32 %43, 16
  %45 = or i32 %44, %40
  %46 = getelementptr i8, ptr %31, i32 2
  %47 = load i8, ptr %46, align 1
  %48 = zext i8 %47 to i32
  %49 = shl nuw nsw i32 %48, 8
  %50 = or i32 %45, %49
  %51 = getelementptr i8, ptr %31, i32 3
  %52 = load i8, ptr %51, align 1
  %53 = zext i8 %52 to i32
  %54 = or i32 %50, %53
  br label %55

55:                                               ; preds = %37, %36
  %56 = phi i32 [ %54, %37 ], [ 1, %36 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #4
  store i32 0, ptr %4, align 4, !annotation !9
  %57 = call i32 @fdt_path_offset(ptr noundef nonnull %1, ptr noundef nonnull @.str.8) #5
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %55
  %60 = call ptr @fdt_getprop(ptr noundef nonnull %1, i32 noundef %57, ptr noundef nonnull @.str.1, ptr noundef nonnull %4) #5
  %61 = icmp eq ptr %60, null
  %62 = load i32, ptr %4, align 4
  %63 = icmp slt i32 %62, 4
  %64 = select i1 %61, i1 true, i1 %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %59, %55
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #4
  br label %84

66:                                               ; preds = %59
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #4
  %67 = load i8, ptr %60, align 1
  %68 = zext i8 %67 to i32
  %69 = shl nuw i32 %68, 24
  %70 = getelementptr i8, ptr %60, i32 1
  %71 = load i8, ptr %70, align 1
  %72 = zext i8 %71 to i32
  %73 = shl nuw nsw i32 %72, 16
  %74 = or i32 %73, %69
  %75 = getelementptr i8, ptr %60, i32 2
  %76 = load i8, ptr %75, align 1
  %77 = zext i8 %76 to i32
  %78 = shl nuw nsw i32 %77, 8
  %79 = or i32 %74, %78
  %80 = getelementptr i8, ptr %60, i32 3
  %81 = load i8, ptr %80, align 1
  %82 = zext i8 %81 to i32
  %83 = or i32 %79, %82
  br label %84

84:                                               ; preds = %66, %65
  %85 = phi i32 [ %83, %66 ], [ 1, %65 ]
  %86 = icmp ugt i32 %56, 2
  %87 = icmp ugt i32 %85, 2
  %88 = select i1 %86, i1 true, i1 %87
  br i1 %88, label %338, label %89

89:                                               ; preds = %84
  %90 = add nuw nsw i32 %85, %56
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #4
  store i32 0, ptr %3, align 4, !annotation !9
  %91 = call i32 @fdt_path_offset(ptr noundef nonnull %1, ptr noundef nonnull @.str.2) #5
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %100, label %93

93:                                               ; preds = %89
  %94 = shl nuw nsw i32 %90, 2
  %95 = call ptr @fdt_getprop(ptr noundef nonnull %1, i32 noundef %91, ptr noundef nonnull @.str.3, ptr noundef nonnull %3) #5
  %96 = icmp eq ptr %95, null
  %97 = load i32, ptr %3, align 4
  %98 = icmp slt i32 %97, %94
  %99 = select i1 %96, i1 true, i1 %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %93, %89
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #4
  br label %189

101:                                              ; preds = %93
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #4
  %102 = getelementptr i32, ptr %95, i32 %56
  %103 = load i8, ptr %102, align 1
  %104 = zext i8 %103 to i32
  %105 = shl nuw i32 %104, 24
  %106 = getelementptr i8, ptr %102, i32 1
  %107 = load i8, ptr %106, align 1
  %108 = zext i8 %107 to i32
  %109 = shl nuw nsw i32 %108, 16
  %110 = or i32 %109, %105
  %111 = getelementptr i8, ptr %102, i32 2
  %112 = load i8, ptr %111, align 1
  %113 = zext i8 %112 to i32
  %114 = shl nuw nsw i32 %113, 8
  %115 = or i32 %110, %114
  %116 = getelementptr i8, ptr %102, i32 3
  %117 = load i8, ptr %116, align 1
  %118 = zext i8 %117 to i32
  %119 = or i32 %115, %118
  %120 = zext i32 %119 to i64
  %121 = icmp ugt i32 %85, 1
  br i1 %121, label %122, label %144

122:                                              ; preds = %101
  %123 = shl nuw i64 %120, 32
  %124 = getelementptr i32, ptr %102, i32 1
  %125 = load i8, ptr %124, align 1
  %126 = zext i8 %125 to i32
  %127 = shl nuw i32 %126, 24
  %128 = getelementptr i8, ptr %124, i32 1
  %129 = load i8, ptr %128, align 1
  %130 = zext i8 %129 to i32
  %131 = shl nuw nsw i32 %130, 16
  %132 = or i32 %131, %127
  %133 = getelementptr i8, ptr %124, i32 2
  %134 = load i8, ptr %133, align 1
  %135 = zext i8 %134 to i32
  %136 = shl nuw nsw i32 %135, 8
  %137 = or i32 %132, %136
  %138 = getelementptr i8, ptr %124, i32 3
  %139 = load i8, ptr %138, align 1
  %140 = zext i8 %139 to i32
  %141 = or i32 %137, %140
  %142 = zext i32 %141 to i64
  %143 = or i64 %123, %142
  br label %144

144:                                              ; preds = %122, %101
  %145 = phi i64 [ %143, %122 ], [ %120, %101 ]
  %146 = icmp eq i64 %145, 0
  br i1 %146, label %338, label %147

147:                                              ; preds = %144
  %148 = icmp ugt i32 %56, 1
  br i1 %148, label %149, label %168

149:                                              ; preds = %147
  %150 = load i8, ptr %95, align 1
  %151 = zext i8 %150 to i32
  %152 = shl nuw i32 %151, 24
  %153 = getelementptr i8, ptr %95, i32 1
  %154 = load i8, ptr %153, align 1
  %155 = zext i8 %154 to i32
  %156 = shl nuw nsw i32 %155, 16
  %157 = or i32 %156, %152
  %158 = getelementptr i8, ptr %95, i32 2
  %159 = load i8, ptr %158, align 1
  %160 = zext i8 %159 to i32
  %161 = shl nuw nsw i32 %160, 8
  %162 = or i32 %157, %161
  %163 = getelementptr i8, ptr %95, i32 3
  %164 = load i8, ptr %163, align 1
  %165 = zext i8 %164 to i32
  %166 = or i32 %162, %165
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %338

168:                                              ; preds = %149, %147
  %169 = getelementptr i32, ptr %102, i32 -1
  %170 = load i8, ptr %169, align 1
  %171 = zext i8 %170 to i32
  %172 = shl nuw i32 %171, 24
  %173 = getelementptr i8, ptr %169, i32 1
  %174 = load i8, ptr %173, align 1
  %175 = zext i8 %174 to i32
  %176 = shl nuw nsw i32 %175, 16
  %177 = or i32 %176, %172
  %178 = getelementptr i8, ptr %169, i32 2
  %179 = load i8, ptr %178, align 1
  %180 = zext i8 %179 to i32
  %181 = shl nuw nsw i32 %180, 8
  %182 = or i32 %177, %181
  %183 = getelementptr i8, ptr %169, i32 3
  %184 = load i8, ptr %183, align 1
  %185 = zext i8 %184 to i32
  %186 = or i32 %182, %185
  %187 = zext i32 %186 to i64
  %188 = add i64 %145, %187
  br label %189

189:                                              ; preds = %168, %100
  %190 = phi i1 [ false, %168 ], [ true, %100 ]
  %191 = phi i32 [ %186, %168 ], [ 0, %100 ]
  %192 = phi i64 [ %188, %168 ], [ 0, %100 ]
  %193 = call i32 @fdt_next_node(ptr noundef nonnull %1, i32 noundef -1, ptr noundef null) #5
  %194 = icmp sgt i32 %193, -1
  br i1 %194, label %195, label %338

195:                                              ; preds = %189
  %196 = icmp ugt i32 %85, 1
  %197 = icmp ugt i32 %56, 1
  %198 = zext i32 %0 to i64
  br label %199

199:                                              ; preds = %328, %195
  %200 = phi i32 [ %193, %195 ], [ %330, %328 ]
  %201 = phi i32 [ -1, %195 ], [ %329, %328 ]
  %202 = call ptr @fdt_getprop(ptr noundef nonnull %1, i32 noundef %200, ptr noundef nonnull @.str.4, ptr noundef null) #5
  %203 = icmp eq ptr %202, null
  br i1 %203, label %328, label %204

204:                                              ; preds = %199
  %205 = call i32 @strcmp(ptr noundef nonnull %202, ptr noundef nonnull @.str.5) #5
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %328

207:                                              ; preds = %204
  %208 = call ptr @fdt_getprop(ptr noundef nonnull %1, i32 noundef %200, ptr noundef nonnull @.str.6, ptr noundef nonnull %6) #5
  %209 = icmp eq ptr %208, null
  br i1 %209, label %210, label %213

210:                                              ; preds = %207
  %211 = call ptr @fdt_getprop(ptr noundef nonnull %1, i32 noundef %200, ptr noundef nonnull @.str.7, ptr noundef nonnull %6) #5
  %212 = icmp eq ptr %211, null
  br i1 %212, label %328, label %213

213:                                              ; preds = %210, %207
  %214 = phi ptr [ %211, %210 ], [ %208, %207 ]
  %215 = load i32, ptr %6, align 4
  %216 = lshr i32 %215, 2
  %217 = getelementptr i32, ptr %214, i32 %216
  %218 = ptrtoint ptr %217 to i32
  %219 = ashr i32 %215, 2
  %220 = icmp ult i32 %219, %90
  br i1 %220, label %328, label %221

221:                                              ; preds = %321, %213
  %222 = phi ptr [ %323, %321 ], [ %214, %213 ]
  %223 = phi i32 [ %322, %321 ], [ %201, %213 ]
  %224 = getelementptr i32, ptr %222, i32 %56
  %225 = load i8, ptr %224, align 1
  %226 = zext i8 %225 to i32
  %227 = shl nuw i32 %226, 24
  %228 = getelementptr i8, ptr %224, i32 1
  %229 = load i8, ptr %228, align 1
  %230 = zext i8 %229 to i32
  %231 = shl nuw nsw i32 %230, 16
  %232 = or i32 %231, %227
  %233 = getelementptr i8, ptr %224, i32 2
  %234 = load i8, ptr %233, align 1
  %235 = zext i8 %234 to i32
  %236 = shl nuw nsw i32 %235, 8
  %237 = or i32 %232, %236
  %238 = getelementptr i8, ptr %224, i32 3
  %239 = load i8, ptr %238, align 1
  %240 = zext i8 %239 to i32
  %241 = or i32 %237, %240
  %242 = zext i32 %241 to i64
  br i1 %196, label %243, label %265

243:                                              ; preds = %221
  %244 = shl nuw i64 %242, 32
  %245 = getelementptr i32, ptr %224, i32 1
  %246 = load i8, ptr %245, align 1
  %247 = zext i8 %246 to i32
  %248 = shl nuw i32 %247, 24
  %249 = getelementptr i8, ptr %245, i32 1
  %250 = load i8, ptr %249, align 1
  %251 = zext i8 %250 to i32
  %252 = shl nuw nsw i32 %251, 16
  %253 = or i32 %252, %248
  %254 = getelementptr i8, ptr %245, i32 2
  %255 = load i8, ptr %254, align 1
  %256 = zext i8 %255 to i32
  %257 = shl nuw nsw i32 %256, 8
  %258 = or i32 %253, %257
  %259 = getelementptr i8, ptr %245, i32 3
  %260 = load i8, ptr %259, align 1
  %261 = zext i8 %260 to i32
  %262 = or i32 %258, %261
  %263 = zext i32 %262 to i64
  %264 = or i64 %244, %263
  br label %265

265:                                              ; preds = %243, %221
  %266 = phi i64 [ %264, %243 ], [ %242, %221 ]
  %267 = icmp eq i64 %266, 0
  br i1 %267, label %321, label %268

268:                                              ; preds = %265
  br i1 %197, label %269, label %288

269:                                              ; preds = %268
  %270 = load i8, ptr %222, align 1
  %271 = zext i8 %270 to i32
  %272 = shl nuw i32 %271, 24
  %273 = getelementptr i8, ptr %222, i32 1
  %274 = load i8, ptr %273, align 1
  %275 = zext i8 %274 to i32
  %276 = shl nuw nsw i32 %275, 16
  %277 = or i32 %276, %272
  %278 = getelementptr i8, ptr %222, i32 2
  %279 = load i8, ptr %278, align 1
  %280 = zext i8 %279 to i32
  %281 = shl nuw nsw i32 %280, 8
  %282 = or i32 %277, %281
  %283 = getelementptr i8, ptr %222, i32 3
  %284 = load i8, ptr %283, align 1
  %285 = zext i8 %284 to i32
  %286 = or i32 %282, %285
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %288, label %321

288:                                              ; preds = %269, %268
  %289 = getelementptr i32, ptr %224, i32 -1
  %290 = load i8, ptr %289, align 1
  %291 = zext i8 %290 to i32
  %292 = shl nuw i32 %291, 24
  %293 = getelementptr i8, ptr %289, i32 1
  %294 = load i8, ptr %293, align 1
  %295 = zext i8 %294 to i32
  %296 = shl nuw nsw i32 %295, 16
  %297 = or i32 %296, %292
  %298 = getelementptr i8, ptr %289, i32 2
  %299 = load i8, ptr %298, align 1
  %300 = zext i8 %299 to i32
  %301 = shl nuw nsw i32 %300, 8
  %302 = or i32 %297, %301
  %303 = getelementptr i8, ptr %289, i32 3
  %304 = load i8, ptr %303, align 1
  %305 = zext i8 %304 to i32
  %306 = or i32 %302, %305
  %307 = zext i32 %306 to i64
  %308 = add i64 %266, %307
  br i1 %190, label %314, label %309

309:                                              ; preds = %288
  %310 = call i32 @llvm.umax.i32(i32 %306, i32 %191)
  %311 = call i64 @llvm.umin.i64(i64 %308, i64 %192)
  %312 = zext i32 %310 to i64
  %313 = icmp ugt i64 %311, %312
  br i1 %313, label %318, label %321

314:                                              ; preds = %288
  %315 = icmp ule i32 %306, %0
  %316 = icmp ugt i64 %308, %198
  %317 = select i1 %315, i1 %316, i1 false
  br i1 %317, label %338, label %318

318:                                              ; preds = %314, %309
  %319 = phi i32 [ %310, %309 ], [ %306, %314 ]
  %320 = call i32 @llvm.umin.i32(i32 %319, i32 %223)
  br label %321

321:                                              ; preds = %318, %309, %269, %265
  %322 = phi i32 [ %223, %269 ], [ %223, %309 ], [ %223, %265 ], [ %320, %318 ]
  %323 = getelementptr i32, ptr %222, i32 %90
  %324 = ptrtoint ptr %323 to i32
  %325 = sub i32 %218, %324
  %326 = ashr exact i32 %325, 2
  %327 = icmp ult i32 %326, %90
  br i1 %327, label %328, label %221

328:                                              ; preds = %321, %213, %210, %204, %199
  %329 = phi i32 [ %201, %204 ], [ %201, %210 ], [ %201, %199 ], [ %201, %213 ], [ %322, %321 ]
  %330 = call i32 @fdt_next_node(ptr noundef nonnull %1, i32 noundef %200, ptr noundef null) #5
  %331 = icmp sgt i32 %330, -1
  br i1 %331, label %199, label %332

332:                                              ; preds = %328
  %333 = icmp eq i32 %329, -1
  br i1 %333, label %338, label %334

334:                                              ; preds = %332
  %335 = add i32 %329, -1
  %336 = or i32 %335, 2097151
  %337 = add i32 %336, 1
  br label %338

338:                                              ; preds = %334, %332, %314, %189, %149, %144, %84, %8, %2
  %339 = phi i32 [ %337, %334 ], [ %0, %2 ], [ %0, %8 ], [ %0, %84 ], [ %0, %144 ], [ %0, %149 ], [ %0, %332 ], [ %0, %189 ], [ %0, %314 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #4
  ret i32 %339
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare i32 @fdt_next_node(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @fdt_getprop(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @strcmp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare i32 @fdt_path_offset(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

attributes #0 = { nounwind null_pointer_is_valid uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"PIC Level", i32 1}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
!9 = !{!"auto-init"}
