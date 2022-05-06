; ModuleID = '/llk/IR/lib/xz/xz_dec_stream.c_pt.bc'
source_filename = "../lib/xz/xz_dec_stream.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xz_dec = type { i32, i32, i64, i32, i32, i32, i32, i32, i8, %struct.anon, %struct.anon.0, %struct.anon.1, %struct.anon.2, ptr, ptr, i8 }
%struct.anon = type { i64, i64, i32 }
%struct.anon.0 = type { i64, i64, i64, %struct.xz_dec_hash }
%struct.xz_dec_hash = type { i64, i64, i32 }
%struct.anon.1 = type { i32, i64, i64, %struct.xz_dec_hash }
%struct.anon.2 = type { i32, i32, [1024 x i8] }
%struct.xz_buf = type { ptr, i32, i32, ptr, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"\FD7zXZ\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"YZ\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xz_dec_run(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.xz_dec, ptr %0, i32 0, i32 7
  %4 = load i32, ptr %3, align 8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = load i32, ptr %0, align 8
  br label %14

8:                                                ; preds = %2
  store i32 0, ptr %0, align 8
  %9 = getelementptr inbounds %struct.xz_dec, ptr %0, i32 0, i32 8
  store i8 0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.xz_dec, ptr %0, i32 0, i32 1
  store i32 0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.xz_dec, ptr %0, i32 0, i32 5
  store i32 0, ptr %11, align 8
  %12 = getelementptr inbounds %struct.xz_dec, ptr %0, i32 0, i32 10
  %13 = getelementptr inbounds %struct.xz_dec, ptr %0, i32 0, i32 12, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(100) %12, i8 0, i64 100, i1 false) #14
  store i32 12, ptr %13, align 4
  br label %14

14:                                               ; preds = %8, %6
  %15 = phi i32 [ %7, %6 ], [ 0, %8 ]
  %16 = getelementptr inbounds %struct.xz_buf, ptr %1, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.xz_buf, ptr %1, i32 0, i32 4
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.xz_dec, ptr %0, i32 0, i32 3
  store i32 %17, ptr %20, align 8
  %21 = getelementptr inbounds %struct.xz_buf, ptr %1, i32 0, i32 2
  %22 = getelementptr inbounds %struct.xz_dec, ptr %0, i32 0, i32 12
  %23 = getelementptr inbounds %struct.xz_dec, ptr %0, i32 0, i32 12, i32 1
  %24 = getelementptr inbounds %struct.xz_dec, ptr %0, i32 0, i32 12, i32 2
  %25 = getelementptr %struct.xz_dec, ptr %0, i32 0, i32 12, i32 2, i32 6
  %26 = getelementptr %struct.xz_dec, ptr %0, i32 0, i32 12, i32 2, i32 8
  %27 = getelementptr %struct.xz_dec, ptr %0, i32 0, i32 12, i32 2, i32 7
  %28 = getelementptr inbounds %struct.xz_dec, ptr %0, i32 0, i32 6
  %29 = getelementptr inbounds %struct.xz_dec, ptr %0, i32 0, i32 9, i32 2
  %30 = getelementptr %struct.xz_dec, ptr %0, i32 0, i32 12, i32 2, i32 1
  %31 = getelementptr inbounds %struct.xz_dec, ptr %0, i32 0, i32 1
  %32 = getelementptr inbounds %struct.xz_dec, ptr %0, i32 0, i32 2
  %33 = getelementptr inbounds %struct.xz_dec, ptr %0, i32 0, i32 9
  %34 = getelementptr inbounds %struct.xz_dec, ptr %0, i32 0, i32 9, i32 1
  %35 = getelementptr inbounds %struct.xz_dec, ptr %0, i32 0, i32 15
  %36 = getelementptr inbounds %struct.xz_dec, ptr %0, i32 0, i32 14
  %37 = getelementptr inbounds %struct.xz_dec, ptr %0, i32 0, i32 13
  %38 = getelementptr inbounds %struct.xz_dec, ptr %0, i32 0, i32 10
  %39 = getelementptr inbounds %struct.xz_dec, ptr %0, i32 0, i32 4
  %40 = getelementptr inbounds %struct.xz_dec, ptr %0, i32 0, i32 10, i32 1
  %41 = getelementptr inbounds %struct.xz_dec, ptr %0, i32 0, i32 5
  %42 = getelementptr inbounds %struct.xz_buf, ptr %1, i32 0, i32 3
  %43 = getelementptr inbounds %struct.xz_dec, ptr %0, i32 0, i32 10, i32 3
  %44 = getelementptr inbounds %struct.xz_dec, ptr %0, i32 0, i32 10, i32 3, i32 1
  %45 = getelementptr inbounds %struct.xz_dec, ptr %0, i32 0, i32 10, i32 3, i32 2
  %46 = getelementptr inbounds %struct.xz_dec, ptr %0, i32 0, i32 10, i32 2
  br label %47

47:                                               ; preds = %414, %14
  %48 = phi i32 [ %415, %414 ], [ %15, %14 ]
  br label %49

49:                                               ; preds = %49, %47
  switch i32 %48, label %49 [
    i32 0, label %55
    i32 1, label %90
    i32 2, label %52
    i32 3, label %264
    i32 4, label %50
    i32 5, label %353
    i32 6, label %375
    i32 7, label %379
    i32 8, label %406
    i32 9, label %410
  ]

50:                                               ; preds = %49
  %51 = load i64, ptr %38, align 8
  br label %333

52:                                               ; preds = %49
  %53 = load i32, ptr %23, align 4
  %54 = load i32, ptr %22, align 8
  br label %105

55:                                               ; preds = %49
  %56 = load i32, ptr %21, align 4
  %57 = load i32, ptr %16, align 4
  %58 = sub i32 %56, %57
  %59 = load i32, ptr %23, align 4
  %60 = load i32, ptr %22, align 8
  %61 = sub i32 %59, %60
  %62 = tail call i32 @llvm.umin.i32(i32 %58, i32 %61) #14
  %63 = getelementptr i8, ptr %24, i32 %60
  %64 = load ptr, ptr %1, align 4
  %65 = getelementptr i8, ptr %64, i32 %57
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %63, ptr align 1 %65, i32 %62, i1 false) #14
  %66 = load i32, ptr %16, align 4
  %67 = add i32 %66, %62
  store i32 %67, ptr %16, align 4
  %68 = load i32, ptr %22, align 8
  %69 = add i32 %68, %62
  %70 = load i32, ptr %23, align 4
  %71 = icmp eq i32 %69, %70
  %72 = select i1 %71, i32 0, i32 %69
  store i32 %72, ptr %22, align 8
  br i1 %71, label %73, label %416

73:                                               ; preds = %55
  store i32 1, ptr %0, align 8
  %74 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %24, ptr noundef nonnull dereferenceable(6) @.str, i32 6) #14
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %416

76:                                               ; preds = %73
  %77 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %25, i32 noundef 2) #15
  %78 = xor i32 %77, -1
  %79 = load i32, ptr %26, align 4
  %80 = icmp eq i32 %79, %78
  br i1 %80, label %81, label %416

81:                                               ; preds = %76
  %82 = load i8, ptr %25, align 2
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %84, label %416

84:                                               ; preds = %81
  %85 = load i8, ptr %27, align 1
  %86 = icmp ugt i8 %85, 15
  br i1 %86, label %416, label %87

87:                                               ; preds = %84
  %88 = zext i8 %85 to i32
  store i32 %88, ptr %28, align 4
  %89 = icmp ugt i8 %85, 1
  br i1 %89, label %416, label %90

90:                                               ; preds = %87, %49
  %91 = load i32, ptr %16, align 4
  %92 = load i32, ptr %21, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %416, label %94

94:                                               ; preds = %90
  %95 = load ptr, ptr %1, align 4
  %96 = getelementptr i8, ptr %95, i32 %91
  %97 = load i8, ptr %96, align 1
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %94
  %100 = add i32 %91, 1
  store i32 %100, ptr %16, align 4
  store i32 %91, ptr %20, align 8
  br label %414

101:                                              ; preds = %94
  %102 = zext i8 %97 to i32
  %103 = shl nuw nsw i32 %102, 2
  %104 = add nuw nsw i32 %103, 4
  store i32 %104, ptr %29, align 8
  store i32 %104, ptr %23, align 4
  store i32 0, ptr %22, align 8
  store i32 2, ptr %0, align 8
  br label %105

105:                                              ; preds = %101, %52
  %106 = phi i32 [ %54, %52 ], [ 0, %101 ]
  %107 = phi i32 [ %53, %52 ], [ %104, %101 ]
  %108 = load i32, ptr %21, align 4
  %109 = load i32, ptr %16, align 4
  %110 = sub i32 %108, %109
  %111 = sub i32 %107, %106
  %112 = tail call i32 @llvm.umin.i32(i32 %110, i32 %111) #14
  %113 = getelementptr i8, ptr %24, i32 %106
  %114 = load ptr, ptr %1, align 4
  %115 = getelementptr i8, ptr %114, i32 %109
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %113, ptr align 1 %115, i32 %112, i1 false) #14
  %116 = load i32, ptr %16, align 4
  %117 = add i32 %116, %112
  store i32 %117, ptr %16, align 4
  %118 = load i32, ptr %22, align 8
  %119 = add i32 %118, %112
  %120 = load i32, ptr %23, align 4
  %121 = icmp eq i32 %119, %120
  %122 = select i1 %121, i32 0, i32 %119
  store i32 %122, ptr %22, align 8
  br i1 %121, label %123, label %416

123:                                              ; preds = %105
  %124 = add i32 %119, -4
  store i32 %124, ptr %23, align 4
  %125 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %24, i32 noundef %124) #15
  %126 = xor i32 %125, -1
  %127 = getelementptr i8, ptr %24, i32 %124
  %128 = load i32, ptr %127, align 4
  %129 = icmp eq i32 %128, %126
  br i1 %129, label %130, label %416

130:                                              ; preds = %123
  store i32 2, ptr %22, align 8
  %131 = load i8, ptr %30, align 1
  %132 = zext i8 %131 to i32
  %133 = and i32 %132, 62
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %416

135:                                              ; preds = %130
  %136 = and i32 %132, 64
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %169, label %138

138:                                              ; preds = %135
  %139 = load i32, ptr %31, align 4
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %138
  store i64 0, ptr %32, align 8
  br label %142

142:                                              ; preds = %141, %138
  %143 = tail call i32 @llvm.umax.i32(i32 %124, i32 2) #14
  br label %144

144:                                              ; preds = %165, %142
  %145 = phi i32 [ %166, %165 ], [ %139, %142 ]
  %146 = phi i32 [ %151, %165 ], [ 2, %142 ]
  %147 = icmp eq i32 %146, %143
  br i1 %147, label %416, label %148

148:                                              ; preds = %144
  %149 = getelementptr i8, ptr %24, i32 %146
  %150 = load i8, ptr %149, align 1
  %151 = add i32 %146, 1
  store i32 %151, ptr %22, align 4
  %152 = zext i8 %150 to i32
  %153 = and i32 %152, 127
  %154 = zext i32 %153 to i64
  %155 = zext i32 %145 to i64
  %156 = shl i64 %154, %155
  %157 = load i64, ptr %32, align 8
  %158 = or i64 %156, %157
  store i64 %158, ptr %32, align 8
  %159 = and i32 %152, 128
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %165

161:                                              ; preds = %148
  %162 = icmp ne i8 %150, 0
  %163 = icmp eq i32 %145, 0
  %164 = select i1 %162, i1 true, i1 %163
  br i1 %164, label %168, label %416

165:                                              ; preds = %148
  %166 = add i32 %145, 7
  store i32 %166, ptr %31, align 4
  %167 = icmp eq i32 %166, 63
  br i1 %167, label %416, label %144

168:                                              ; preds = %161
  store i32 0, ptr %31, align 4
  br label %169

169:                                              ; preds = %168, %135
  %170 = phi i64 [ %158, %168 ], [ -1, %135 ]
  %171 = phi i32 [ %151, %168 ], [ 2, %135 ]
  store i64 %170, ptr %33, align 8
  %172 = icmp sgt i8 %131, -1
  br i1 %172, label %204, label %173

173:                                              ; preds = %169
  %174 = load i32, ptr %31, align 4
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %173
  store i64 0, ptr %32, align 8
  br label %177

177:                                              ; preds = %176, %173
  %178 = tail call i32 @llvm.umax.i32(i32 %171, i32 %124) #14
  br label %179

179:                                              ; preds = %200, %177
  %180 = phi i32 [ %201, %200 ], [ %174, %177 ]
  %181 = phi i32 [ %186, %200 ], [ %171, %177 ]
  %182 = icmp eq i32 %181, %178
  br i1 %182, label %416, label %183

183:                                              ; preds = %179
  %184 = getelementptr i8, ptr %24, i32 %181
  %185 = load i8, ptr %184, align 1
  %186 = add i32 %181, 1
  store i32 %186, ptr %22, align 4
  %187 = zext i8 %185 to i32
  %188 = and i32 %187, 127
  %189 = zext i32 %188 to i64
  %190 = zext i32 %180 to i64
  %191 = shl i64 %189, %190
  %192 = load i64, ptr %32, align 8
  %193 = or i64 %191, %192
  store i64 %193, ptr %32, align 8
  %194 = and i32 %187, 128
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %200

196:                                              ; preds = %183
  %197 = icmp ne i8 %185, 0
  %198 = icmp eq i32 %180, 0
  %199 = select i1 %197, i1 true, i1 %198
  br i1 %199, label %203, label %416

200:                                              ; preds = %183
  %201 = add i32 %180, 7
  store i32 %201, ptr %31, align 4
  %202 = icmp eq i32 %201, 63
  br i1 %202, label %416, label %179

203:                                              ; preds = %196
  store i32 0, ptr %31, align 4
  br label %204

204:                                              ; preds = %203, %169
  %205 = phi i64 [ %193, %203 ], [ -1, %169 ]
  %206 = phi i32 [ %186, %203 ], [ %171, %169 ]
  store i64 %205, ptr %34, align 8
  %207 = and i8 %131, 1
  %208 = icmp eq i8 %207, 0
  store i8 %207, ptr %35, align 8
  br i1 %208, label %227, label %209

209:                                              ; preds = %204
  %210 = sub i32 %124, %206
  %211 = icmp ult i32 %210, 2
  br i1 %211, label %416, label %212

212:                                              ; preds = %209
  %213 = load ptr, ptr %36, align 4
  %214 = add i32 %206, 1
  store i32 %214, ptr %22, align 8
  %215 = getelementptr %struct.xz_dec, ptr %0, i32 0, i32 12, i32 2, i32 %206
  %216 = load i8, ptr %215, align 1
  %217 = tail call i32 @xz_dec_bcj_reset(ptr noundef %213, i8 noundef zeroext %216) #14
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %219, label %416

219:                                              ; preds = %212
  %220 = load i32, ptr %22, align 8
  %221 = add i32 %220, 1
  store i32 %221, ptr %22, align 8
  %222 = getelementptr %struct.xz_dec, ptr %0, i32 0, i32 12, i32 2, i32 %220
  %223 = load i8, ptr %222, align 1
  %224 = icmp eq i8 %223, 0
  br i1 %224, label %225, label %416

225:                                              ; preds = %219
  %226 = load i32, ptr %23, align 4
  br label %227

227:                                              ; preds = %225, %204
  %228 = phi i32 [ %221, %225 ], [ %206, %204 ]
  %229 = phi i32 [ %226, %225 ], [ %124, %204 ]
  %230 = sub i32 %229, %228
  %231 = icmp ult i32 %230, 2
  br i1 %231, label %416, label %232

232:                                              ; preds = %227
  %233 = add i32 %228, 1
  store i32 %233, ptr %22, align 8
  %234 = getelementptr %struct.xz_dec, ptr %0, i32 0, i32 12, i32 2, i32 %228
  %235 = load i8, ptr %234, align 1
  %236 = icmp eq i8 %235, 33
  br i1 %236, label %237, label %416

237:                                              ; preds = %232
  %238 = add i32 %228, 2
  store i32 %238, ptr %22, align 8
  %239 = getelementptr %struct.xz_dec, ptr %0, i32 0, i32 12, i32 2, i32 %233
  %240 = load i8, ptr %239, align 1
  %241 = icmp eq i8 %240, 1
  br i1 %241, label %242, label %416

242:                                              ; preds = %237
  %243 = icmp eq i32 %229, %238
  br i1 %243, label %416, label %244

244:                                              ; preds = %242
  %245 = load ptr, ptr %37, align 8
  %246 = add i32 %228, 3
  store i32 %246, ptr %22, align 8
  %247 = getelementptr %struct.xz_dec, ptr %0, i32 0, i32 12, i32 2, i32 %238
  %248 = load i8, ptr %247, align 1
  %249 = tail call i32 @xz_dec_lzma2_reset(ptr noundef %245, i8 noundef zeroext %248) #14
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %251, label %416

251:                                              ; preds = %244
  %252 = load i32, ptr %23, align 4
  %253 = load i32, ptr %22, align 8
  %254 = tail call i32 @llvm.umax.i32(i32 %252, i32 %253) #14
  br label %255

255:                                              ; preds = %258, %251
  %256 = phi i32 [ %253, %251 ], [ %259, %258 ]
  %257 = icmp eq i32 %256, %254
  br i1 %257, label %263, label %258

258:                                              ; preds = %255
  %259 = add i32 %256, 1
  store i32 %259, ptr %22, align 8
  %260 = getelementptr %struct.xz_dec, ptr %0, i32 0, i32 12, i32 2, i32 %256
  %261 = load i8, ptr %260, align 1
  %262 = icmp eq i8 %261, 0
  br i1 %262, label %255, label %416

263:                                              ; preds = %255
  store i32 0, ptr %22, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %38, i8 0, i64 16, i1 false) #14
  store i32 3, ptr %0, align 8
  br label %264

264:                                              ; preds = %263, %49
  %265 = load i32, ptr %16, align 4
  store i32 %265, ptr %20, align 8
  %266 = load i32, ptr %18, align 4
  store i32 %266, ptr %39, align 4
  %267 = load i8, ptr %35, align 8, !range !8
  %268 = icmp eq i8 %267, 0
  br i1 %268, label %273, label %269

269:                                              ; preds = %264
  %270 = load ptr, ptr %36, align 4
  %271 = load ptr, ptr %37, align 8
  %272 = tail call i32 @xz_dec_bcj_run(ptr noundef %270, ptr noundef %271, ptr noundef %1) #14
  br label %276

273:                                              ; preds = %264
  %274 = load ptr, ptr %37, align 8
  %275 = tail call i32 @xz_dec_lzma2_run(ptr noundef %274, ptr noundef %1) #14
  br label %276

276:                                              ; preds = %273, %269
  %277 = phi i32 [ %272, %269 ], [ %275, %273 ]
  %278 = load i32, ptr %16, align 4
  %279 = load i32, ptr %20, align 8
  %280 = sub i32 %278, %279
  %281 = zext i32 %280 to i64
  %282 = load i64, ptr %38, align 8
  %283 = add i64 %282, %281
  store i64 %283, ptr %38, align 8
  %284 = load i32, ptr %18, align 4
  %285 = load i32, ptr %39, align 4
  %286 = sub i32 %284, %285
  %287 = zext i32 %286 to i64
  %288 = load i64, ptr %40, align 8
  %289 = add i64 %288, %287
  store i64 %289, ptr %40, align 8
  %290 = load i64, ptr %33, align 8
  %291 = icmp ugt i64 %283, %290
  br i1 %291, label %416, label %292

292:                                              ; preds = %276
  %293 = load i64, ptr %34, align 8
  %294 = icmp ugt i64 %289, %293
  br i1 %294, label %416, label %295

295:                                              ; preds = %292
  %296 = load i32, ptr %28, align 4
  %297 = icmp eq i32 %296, 1
  br i1 %297, label %298, label %307

298:                                              ; preds = %295
  %299 = load i32, ptr %41, align 8
  %300 = xor i32 %299, -1
  %301 = load ptr, ptr %42, align 4
  %302 = getelementptr i8, ptr %301, i32 %285
  %303 = load i32, ptr %18, align 4
  %304 = sub i32 %303, %285
  %305 = tail call i32 @crc32_le(i32 noundef %300, ptr noundef %302, i32 noundef %304) #15
  %306 = xor i32 %305, -1
  store i32 %306, ptr %41, align 8
  br label %307

307:                                              ; preds = %298, %295
  %308 = icmp eq i32 %277, 1
  br i1 %308, label %309, label %416

309:                                              ; preds = %307
  %310 = icmp eq i64 %290, -1
  %311 = icmp eq i64 %290, %283
  %312 = select i1 %310, i1 true, i1 %311
  br i1 %312, label %313, label %416

313:                                              ; preds = %309
  %314 = icmp eq i64 %293, -1
  %315 = icmp eq i64 %293, %289
  %316 = select i1 %314, i1 true, i1 %315
  br i1 %316, label %317, label %416

317:                                              ; preds = %313
  %318 = load i32, ptr %29, align 8
  %319 = zext i32 %318 to i64
  %320 = add i64 %283, %319
  %321 = load i64, ptr %43, align 8
  %322 = add i64 %320, %321
  %323 = add i64 %322, 4
  %324 = select i1 %297, i64 %323, i64 %322
  store i64 %324, ptr %43, align 8
  %325 = load i64, ptr %44, align 8
  %326 = add i64 %325, %289
  store i64 %326, ptr %44, align 8
  %327 = load i32, ptr %45, align 8
  %328 = xor i32 %327, -1
  %329 = tail call i32 @crc32_le(i32 noundef %328, ptr noundef %43, i32 noundef 24) #15
  %330 = xor i32 %329, -1
  store i32 %330, ptr %45, align 8
  %331 = load i64, ptr %46, align 8
  %332 = add i64 %331, 1
  store i64 %332, ptr %46, align 8
  store i32 4, ptr %0, align 8
  br label %333

333:                                              ; preds = %317, %50
  %334 = phi i64 [ %51, %50 ], [ %283, %317 ]
  %335 = and i64 %334, 3
  %336 = icmp eq i64 %335, 0
  br i1 %336, label %352, label %337

337:                                              ; preds = %347, %333
  %338 = load i32, ptr %16, align 4
  %339 = load i32, ptr %21, align 4
  %340 = icmp eq i32 %338, %339
  br i1 %340, label %416, label %341

341:                                              ; preds = %337
  %342 = load ptr, ptr %1, align 4
  %343 = add i32 %338, 1
  store i32 %343, ptr %16, align 4
  %344 = getelementptr i8, ptr %342, i32 %338
  %345 = load i8, ptr %344, align 1
  %346 = icmp eq i8 %345, 0
  br i1 %346, label %347, label %416

347:                                              ; preds = %341
  %348 = load i64, ptr %38, align 8
  %349 = add i64 %348, 1
  store i64 %349, ptr %38, align 8
  %350 = and i64 %349, 3
  %351 = icmp eq i64 %350, 0
  br i1 %351, label %352, label %337

352:                                              ; preds = %347, %333
  store i32 5, ptr %0, align 8
  br label %353

353:                                              ; preds = %352, %49
  %354 = load i32, ptr %28, align 4
  %355 = icmp eq i32 %354, 1
  br i1 %355, label %356, label %414

356:                                              ; preds = %370, %353
  %357 = load i32, ptr %16, align 4
  %358 = load i32, ptr %21, align 4
  %359 = icmp eq i32 %357, %358
  br i1 %359, label %416, label %360

360:                                              ; preds = %356
  %361 = load i32, ptr %41, align 8
  %362 = load i32, ptr %31, align 4
  %363 = lshr i32 %361, %362
  %364 = load ptr, ptr %1, align 4
  %365 = add i32 %357, 1
  store i32 %365, ptr %16, align 4
  %366 = getelementptr i8, ptr %364, i32 %357
  %367 = load i8, ptr %366, align 1
  %368 = trunc i32 %363 to i8
  %369 = icmp eq i8 %367, %368
  br i1 %369, label %370, label %416

370:                                              ; preds = %360
  %371 = load i32, ptr %31, align 4
  %372 = add i32 %371, 8
  store i32 %372, ptr %31, align 4
  %373 = icmp ult i32 %372, 32
  br i1 %373, label %356, label %374

374:                                              ; preds = %370
  store i32 0, ptr %41, align 8
  store i32 0, ptr %31, align 4
  br label %414

375:                                              ; preds = %49
  %376 = tail call fastcc i32 @dec_index(ptr noundef %0, ptr noundef %1) #14
  %377 = icmp eq i32 %376, 1
  br i1 %377, label %378, label %416

378:                                              ; preds = %375
  store i32 7, ptr %0, align 8
  br label %379

379:                                              ; preds = %378, %49
  %380 = getelementptr inbounds %struct.xz_dec, ptr %0, i32 0, i32 11, i32 1
  %381 = load i32, ptr %16, align 4
  br label %382

382:                                              ; preds = %395, %379
  %383 = phi i32 [ %397, %395 ], [ %381, %379 ]
  %384 = load i64, ptr %380, align 8
  %385 = load i32, ptr %20, align 8
  %386 = sub i32 %383, %385
  %387 = zext i32 %386 to i64
  %388 = add i64 %384, %387
  %389 = and i64 %388, 3
  %390 = icmp eq i64 %389, 0
  br i1 %390, label %401, label %391

391:                                              ; preds = %382
  %392 = load i32, ptr %21, align 4
  %393 = icmp eq i32 %383, %392
  br i1 %393, label %394, label %395

394:                                              ; preds = %391
  tail call fastcc void @index_update(ptr noundef %0, ptr noundef %1) #14
  br label %416

395:                                              ; preds = %391
  %396 = load ptr, ptr %1, align 4
  %397 = add i32 %383, 1
  store i32 %397, ptr %16, align 4
  %398 = getelementptr i8, ptr %396, i32 %383
  %399 = load i8, ptr %398, align 1
  %400 = icmp eq i8 %399, 0
  br i1 %400, label %382, label %416

401:                                              ; preds = %382
  tail call fastcc void @index_update(ptr noundef %0, ptr noundef %1) #14
  %402 = getelementptr inbounds %struct.xz_dec, ptr %0, i32 0, i32 11, i32 3
  %403 = tail call i32 @bcmp(ptr noundef dereferenceable(24) %43, ptr noundef dereferenceable(24) %402, i32 24) #14
  %404 = icmp eq i32 %403, 0
  br i1 %404, label %405, label %416

405:                                              ; preds = %401
  store i32 8, ptr %0, align 8
  br label %406

406:                                              ; preds = %405, %49
  %407 = tail call fastcc i32 @crc32_validate(ptr noundef %0, ptr noundef %1) #14
  %408 = icmp eq i32 %407, 1
  br i1 %408, label %409, label %416

409:                                              ; preds = %406
  store i32 12, ptr %23, align 4
  store i32 9, ptr %0, align 8
  br label %410

410:                                              ; preds = %409, %49
  %411 = tail call fastcc zeroext i1 @fill_temp(ptr noundef %0, ptr noundef %1) #14
  br i1 %411, label %412, label %416

412:                                              ; preds = %410
  %413 = tail call fastcc i32 @dec_stream_footer(ptr noundef %0) #14
  br label %416

414:                                              ; preds = %374, %353, %99
  %415 = phi i32 [ 6, %99 ], [ 1, %374 ], [ 1, %353 ]
  store i32 %415, ptr %0, align 8
  br label %47

416:                                              ; preds = %412, %410, %406, %401, %395, %394, %375, %360, %356, %341, %337, %313, %309, %307, %292, %276, %258, %244, %242, %237, %232, %227, %219, %212, %209, %200, %196, %179, %165, %161, %144, %130, %123, %105, %90, %87, %84, %81, %76, %73, %55
  %417 = phi i32 [ %413, %412 ], [ 0, %394 ], [ %376, %375 ], [ 7, %401 ], [ %407, %406 ], [ 0, %410 ], [ 7, %395 ], [ 0, %356 ], [ 7, %360 ], [ 0, %337 ], [ 7, %341 ], [ 6, %258 ], [ 7, %200 ], [ 7, %179 ], [ 7, %165 ], [ 7, %144 ], [ 0, %55 ], [ 0, %90 ], [ 0, %105 ], [ 6, %84 ], [ 6, %81 ], [ 7, %76 ], [ 5, %73 ], [ 6, %87 ], [ 7, %196 ], [ 7, %161 ], [ %249, %244 ], [ 7, %242 ], [ 6, %237 ], [ 6, %232 ], [ 7, %227 ], [ 6, %219 ], [ %217, %212 ], [ 6, %209 ], [ 6, %130 ], [ 7, %123 ], [ 7, %313 ], [ 7, %309 ], [ %277, %307 ], [ 7, %276 ], [ 7, %292 ]
  %418 = load i32, ptr %3, align 8
  %419 = icmp eq i32 %418, 0
  br i1 %419, label %420, label %428

420:                                              ; preds = %416
  switch i32 %417, label %426 [
    i32 0, label %421
    i32 1, label %443
  ]

421:                                              ; preds = %420
  %422 = load i32, ptr %16, align 4
  %423 = load i32, ptr %21, align 4
  %424 = icmp eq i32 %422, %423
  %425 = select i1 %424, i32 7, i32 8
  br label %426

426:                                              ; preds = %421, %420
  %427 = phi i32 [ %425, %421 ], [ %417, %420 ]
  store i32 %17, ptr %16, align 4
  store i32 %19, ptr %18, align 4
  br label %443

428:                                              ; preds = %416
  %429 = icmp eq i32 %417, 0
  br i1 %429, label %430, label %441

430:                                              ; preds = %428
  %431 = load i32, ptr %16, align 4
  %432 = icmp eq i32 %17, %431
  br i1 %432, label %433, label %441

433:                                              ; preds = %430
  %434 = load i32, ptr %18, align 4
  %435 = icmp eq i32 %19, %434
  br i1 %435, label %436, label %441

436:                                              ; preds = %433
  %437 = getelementptr inbounds %struct.xz_dec, ptr %0, i32 0, i32 8
  %438 = load i8, ptr %437, align 4, !range !8
  %439 = icmp eq i8 %438, 0
  %440 = select i1 %439, i32 0, i32 8
  store i8 1, ptr %437, align 4
  br label %443

441:                                              ; preds = %433, %430, %428
  %442 = getelementptr inbounds %struct.xz_dec, ptr %0, i32 0, i32 8
  store i8 0, ptr %442, align 4
  br label %443

443:                                              ; preds = %441, %436, %426, %420
  %444 = phi i32 [ %427, %426 ], [ %440, %436 ], [ %417, %441 ], [ %417, %420 ]
  ret i32 %444
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @xz_dec_reset(ptr nocapture noundef writeonly %0) local_unnamed_addr #1 {
  store i32 0, ptr %0, align 8
  %2 = getelementptr inbounds %struct.xz_dec, ptr %0, i32 0, i32 8
  store i8 0, ptr %2, align 4
  %3 = getelementptr inbounds %struct.xz_dec, ptr %0, i32 0, i32 1
  store i32 0, ptr %3, align 4
  %4 = getelementptr inbounds %struct.xz_dec, ptr %0, i32 0, i32 5
  store i32 0, ptr %4, align 8
  %5 = getelementptr inbounds %struct.xz_dec, ptr %0, i32 0, i32 10
  %6 = getelementptr inbounds %struct.xz_dec, ptr %0, i32 0, i32 12, i32 1
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(100) %5, i8 0, i64 100, i1 false)
  store i32 12, ptr %6, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @xz_dec_init(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3264, i32 noundef 1208) #16
  %5 = icmp eq ptr %4, null
  br i1 %5, label %24, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.xz_dec, ptr %4, i32 0, i32 7
  store i32 %0, ptr %7, align 8
  %8 = icmp eq i32 %0, 0
  %9 = tail call ptr @xz_dec_bcj_create(i1 noundef zeroext %8) #14
  %10 = getelementptr inbounds %struct.xz_dec, ptr %4, i32 0, i32 14
  store ptr %9, ptr %10, align 4
  %11 = icmp eq ptr %9, null
  br i1 %11, label %23, label %12

12:                                               ; preds = %6
  %13 = tail call ptr @xz_dec_lzma2_create(i32 noundef %0, i32 noundef %1) #14
  %14 = getelementptr inbounds %struct.xz_dec, ptr %4, i32 0, i32 13
  store ptr %13, ptr %14, align 8
  %15 = icmp eq ptr %13, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %12
  store i32 0, ptr %4, align 8
  %17 = getelementptr inbounds %struct.xz_dec, ptr %4, i32 0, i32 8
  store i8 0, ptr %17, align 4
  %18 = getelementptr inbounds %struct.xz_dec, ptr %4, i32 0, i32 1
  store i32 0, ptr %18, align 4
  %19 = getelementptr inbounds %struct.xz_dec, ptr %4, i32 0, i32 5
  store i32 0, ptr %19, align 8
  %20 = getelementptr inbounds %struct.xz_dec, ptr %4, i32 0, i32 10
  %21 = getelementptr inbounds %struct.xz_dec, ptr %4, i32 0, i32 12, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(100) %20, i8 0, i64 100, i1 false) #14
  store i32 12, ptr %21, align 4
  br label %24

22:                                               ; preds = %12
  tail call void @kfree(ptr noundef nonnull %9) #14
  br label %23

23:                                               ; preds = %22, %6
  tail call void @kfree(ptr noundef nonnull %4) #14
  br label %24

24:                                               ; preds = %23, %16, %2
  %25 = phi ptr [ null, %23 ], [ %4, %16 ], [ null, %2 ]
  ret ptr %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xz_dec_bcj_create(i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xz_dec_lzma2_create(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xz_dec_end(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.xz_dec, ptr %0, i32 0, i32 13
  %5 = load ptr, ptr %4, align 8
  tail call void @xz_dec_lzma2_end(ptr noundef %5) #14
  %6 = getelementptr inbounds %struct.xz_dec, ptr %0, i32 0, i32 14
  %7 = load ptr, ptr %6, align 4
  tail call void @kfree(ptr noundef %7) #14
  tail call void @kfree(ptr noundef nonnull %0) #14
  br label %8

8:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xz_dec_lzma2_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal fastcc zeroext i1 @fill_temp(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.xz_buf, ptr %1, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.xz_buf, ptr %1, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = sub i32 %4, %6
  %8 = getelementptr inbounds %struct.xz_dec, ptr %0, i32 0, i32 12
  %9 = getelementptr inbounds %struct.xz_dec, ptr %0, i32 0, i32 12, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = load i32, ptr %8, align 8
  %12 = sub i32 %10, %11
  %13 = tail call i32 @llvm.umin.i32(i32 %7, i32 %12)
  %14 = getelementptr inbounds %struct.xz_dec, ptr %0, i32 0, i32 12, i32 2
  %15 = getelementptr i8, ptr %14, i32 %11
  %16 = load ptr, ptr %1, align 4
  %17 = getelementptr i8, ptr %16, i32 %6
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %15, ptr align 1 %17, i32 %13, i1 false)
  %18 = load i32, ptr %5, align 4
  %19 = add i32 %18, %13
  store i32 %19, ptr %5, align 4
  %20 = load i32, ptr %8, align 8
  %21 = add i32 %20, %13
  %22 = load i32, ptr %9, align 4
  %23 = icmp eq i32 %21, %22
  %24 = select i1 %23, i32 0, i32 %21
  store i32 %24, ptr %8, align 8
  ret i1 %23
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @crc32_validate(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.xz_buf, ptr %1, i32 0, i32 1
  %4 = getelementptr inbounds %struct.xz_buf, ptr %1, i32 0, i32 2
  %5 = getelementptr inbounds %struct.xz_dec, ptr %0, i32 0, i32 5
  %6 = getelementptr inbounds %struct.xz_dec, ptr %0, i32 0, i32 1
  br label %7

7:                                                ; preds = %21, %2
  %8 = load i32, ptr %3, align 4
  %9 = load i32, ptr %4, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %26, label %11

11:                                               ; preds = %7
  %12 = load i32, ptr %5, align 8
  %13 = load i32, ptr %6, align 4
  %14 = lshr i32 %12, %13
  %15 = load ptr, ptr %1, align 4
  %16 = add i32 %8, 1
  store i32 %16, ptr %3, align 4
  %17 = getelementptr i8, ptr %15, i32 %8
  %18 = load i8, ptr %17, align 1
  %19 = trunc i32 %14 to i8
  %20 = icmp eq i8 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %11
  %22 = load i32, ptr %6, align 4
  %23 = add i32 %22, 8
  store i32 %23, ptr %6, align 4
  %24 = icmp ult i32 %23, 32
  br i1 %24, label %7, label %25

25:                                               ; preds = %21
  store i32 0, ptr %5, align 8
  store i32 0, ptr %6, align 4
  br label %26

26:                                               ; preds = %25, %11, %7
  %27 = phi i32 [ 1, %25 ], [ 7, %11 ], [ 0, %7 ]
  ret i32 %27
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dec_index(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.xz_buf, ptr %1, i32 0, i32 1
  %4 = getelementptr inbounds %struct.xz_buf, ptr %1, i32 0, i32 2
  %5 = getelementptr inbounds %struct.xz_dec, ptr %0, i32 0, i32 1
  %6 = getelementptr inbounds %struct.xz_dec, ptr %0, i32 0, i32 2
  %7 = getelementptr inbounds %struct.xz_dec, ptr %0, i32 0, i32 11
  %8 = getelementptr inbounds %struct.xz_dec, ptr %0, i32 0, i32 11, i32 3
  %9 = getelementptr inbounds %struct.xz_dec, ptr %0, i32 0, i32 11, i32 3, i32 1
  %10 = getelementptr inbounds %struct.xz_dec, ptr %0, i32 0, i32 11, i32 3, i32 2
  %11 = getelementptr inbounds %struct.xz_dec, ptr %0, i32 0, i32 11, i32 2
  %12 = getelementptr inbounds %struct.xz_dec, ptr %0, i32 0, i32 10, i32 2
  %13 = load i32, ptr %5, align 4
  %14 = icmp eq i32 %13, 0
  br label %15

15:                                               ; preds = %82, %2
  %16 = phi i1 [ true, %82 ], [ %14, %2 ]
  %17 = load ptr, ptr %1, align 4
  %18 = load i32, ptr %4, align 4
  br i1 %16, label %19, label %20

19:                                               ; preds = %15
  store i64 0, ptr %6, align 8
  br label %20

20:                                               ; preds = %19, %15
  br label %21

21:                                               ; preds = %42, %20
  %22 = load i32, ptr %3, align 4
  %23 = icmp ult i32 %22, %18
  br i1 %23, label %24, label %45

24:                                               ; preds = %21
  %25 = getelementptr i8, ptr %17, i32 %22
  %26 = load i8, ptr %25, align 1
  %27 = add nuw i32 %22, 1
  store i32 %27, ptr %3, align 4
  %28 = zext i8 %26 to i32
  %29 = and i32 %28, 127
  %30 = zext i32 %29 to i64
  %31 = load i32, ptr %5, align 4
  %32 = zext i32 %31 to i64
  %33 = shl i64 %30, %32
  %34 = load i64, ptr %6, align 8
  %35 = or i64 %33, %34
  store i64 %35, ptr %6, align 8
  %36 = and i32 %28, 128
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %24
  %39 = icmp ne i8 %26, 0
  %40 = icmp eq i32 %31, 0
  %41 = select i1 %39, i1 true, i1 %40
  br i1 %41, label %62, label %45

42:                                               ; preds = %24
  %43 = add i32 %31, 7
  store i32 %43, ptr %5, align 4
  %44 = icmp eq i32 %43, 63
  br i1 %44, label %45, label %21

45:                                               ; preds = %42, %38, %21
  %46 = phi i32 [ 0, %21 ], [ 7, %42 ], [ 7, %38 ]
  %47 = load i32, ptr %3, align 4
  %48 = getelementptr inbounds %struct.xz_dec, ptr %0, i32 0, i32 3
  %49 = load i32, ptr %48, align 8
  %50 = sub i32 %47, %49
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.xz_dec, ptr %0, i32 0, i32 11, i32 1
  %53 = load i64, ptr %52, align 8
  %54 = add i64 %53, %51
  store i64 %54, ptr %52, align 8
  %55 = getelementptr inbounds %struct.xz_dec, ptr %0, i32 0, i32 5
  %56 = load i32, ptr %55, align 8
  %57 = xor i32 %56, -1
  %58 = load ptr, ptr %1, align 4
  %59 = getelementptr i8, ptr %58, i32 %49
  %60 = tail call i32 @crc32_le(i32 noundef %57, ptr noundef %59, i32 noundef %50) #15
  %61 = xor i32 %60, -1
  store i32 %61, ptr %55, align 8
  br label %85

62:                                               ; preds = %38
  store i32 0, ptr %5, align 4
  %63 = load i32, ptr %7, align 8
  switch i32 %63, label %80 [
    i32 0, label %64
    i32 1, label %68
    i32 2, label %71
  ]

64:                                               ; preds = %62
  store i64 %35, ptr %11, align 8
  %65 = load i64, ptr %12, align 8
  %66 = icmp eq i64 %35, %65
  br i1 %66, label %67, label %85

67:                                               ; preds = %64
  store i32 1, ptr %7, align 8
  br label %82

68:                                               ; preds = %62
  %69 = load i64, ptr %8, align 8
  %70 = add i64 %69, %35
  store i64 %70, ptr %8, align 8
  store i32 2, ptr %7, align 8
  br label %80

71:                                               ; preds = %62
  %72 = load i64, ptr %9, align 8
  %73 = add i64 %72, %35
  store i64 %73, ptr %9, align 8
  %74 = load i32, ptr %10, align 8
  %75 = xor i32 %74, -1
  %76 = tail call i32 @crc32_le(i32 noundef %75, ptr noundef %8, i32 noundef 24) #15
  %77 = xor i32 %76, -1
  store i32 %77, ptr %10, align 8
  %78 = load i64, ptr %11, align 8
  %79 = add i64 %78, -1
  store i64 %79, ptr %11, align 8
  store i32 1, ptr %7, align 8
  br label %82

80:                                               ; preds = %68, %62
  %81 = load i64, ptr %11, align 8
  br label %82

82:                                               ; preds = %80, %71, %67
  %83 = phi i64 [ %81, %80 ], [ %35, %67 ], [ %79, %71 ]
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %15

85:                                               ; preds = %82, %64, %45
  %86 = phi i32 [ %46, %45 ], [ 1, %82 ], [ 7, %64 ]
  ret i32 %86
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal fastcc void @index_update(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.xz_buf, ptr %1, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.xz_dec, ptr %0, i32 0, i32 3
  %6 = load i32, ptr %5, align 8
  %7 = sub i32 %4, %6
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds %struct.xz_dec, ptr %0, i32 0, i32 11, i32 1
  %10 = load i64, ptr %9, align 8
  %11 = add i64 %10, %8
  store i64 %11, ptr %9, align 8
  %12 = getelementptr inbounds %struct.xz_dec, ptr %0, i32 0, i32 5
  %13 = load i32, ptr %12, align 8
  %14 = xor i32 %13, -1
  %15 = load ptr, ptr %1, align 4
  %16 = getelementptr i8, ptr %15, i32 %6
  %17 = tail call i32 @crc32_le(i32 noundef %14, ptr noundef %16, i32 noundef %7) #15
  %18 = xor i32 %17, -1
  store i32 %18, ptr %12, align 8
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal fastcc i32 @dec_stream_footer(ptr noundef %0) unnamed_addr #7 {
  %2 = getelementptr %struct.xz_dec, ptr %0, i32 0, i32 12, i32 2, i32 10
  %3 = tail call i32 @bcmp(ptr noundef dereferenceable(2) %2, ptr noundef nonnull dereferenceable(2) @.str.1, i32 2)
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %31

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.xz_dec, ptr %0, i32 0, i32 12, i32 2
  %7 = getelementptr %struct.xz_dec, ptr %0, i32 0, i32 12, i32 2, i32 4
  %8 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %7, i32 noundef 6) #15
  %9 = xor i32 %8, -1
  %10 = load i32, ptr %6, align 4
  %11 = icmp eq i32 %10, %9
  br i1 %11, label %12, label %31

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.xz_dec, ptr %0, i32 0, i32 11, i32 1
  %14 = load i64, ptr %13, align 8
  %15 = lshr i64 %14, 2
  %16 = load i32, ptr %7, align 4
  %17 = zext i32 %16 to i64
  %18 = icmp eq i64 %15, %17
  br i1 %18, label %19, label %31

19:                                               ; preds = %12
  %20 = getelementptr %struct.xz_dec, ptr %0, i32 0, i32 12, i32 2, i32 8
  %21 = load i8, ptr %20, align 8
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %19
  %24 = getelementptr %struct.xz_dec, ptr %0, i32 0, i32 12, i32 2, i32 9
  %25 = load i8, ptr %24, align 1
  %26 = zext i8 %25 to i32
  %27 = getelementptr inbounds %struct.xz_dec, ptr %0, i32 0, i32 6
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, %26
  %30 = select i1 %29, i32 1, i32 7
  br label %31

31:                                               ; preds = %23, %19, %12, %5, %1
  %32 = phi i32 [ 7, %1 ], [ 7, %5 ], [ 7, %12 ], [ 7, %19 ], [ %30, %23 ]
  ret i32 %32
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #8

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xz_dec_bcj_reset(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xz_dec_lzma2_reset(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xz_dec_bcj_run(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xz_dec_lzma2_run(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #12

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree nounwind willreturn }
attributes #9 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly nofree nounwind readonly willreturn }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { argmemonly nofree nounwind willreturn writeonly }
attributes #14 = { nounwind }
attributes #15 = { nounwind readonly willreturn }
attributes #16 = { nounwind allocsize(2) }

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
