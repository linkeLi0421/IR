; ModuleID = '/llk/IR/drivers/firmware/efi/libstub/vsprintf.c_pt.bc'
source_filename = "../drivers/firmware/efi/libstub/vsprintf.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.__va_list = type { ptr }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@number.digits = internal unnamed_addr constant [16 x i8] c"0123456789ABCDEF", align 1

; Function Attrs: nounwind null_pointer_is_valid optsize uwtable(sync)
define hidden i32 @vsnprintf(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2, [1 x i32] %3) local_unnamed_addr #0 {
  %5 = alloca %struct.__va_list, align 4
  %6 = alloca [22 x i8], align 2
  %7 = alloca %struct.__va_list, align 4
  %8 = extractvalue [1 x i32] %3, 0
  store i32 %8, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 22, ptr nonnull %6) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(22) %6, i8 0, i32 22, i1 false), !annotation !9
  %9 = getelementptr inbounds [22 x i8], ptr %6, i32 0, i32 22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #6
  store i32 0, ptr %7, align 4, !annotation !9
  call void @llvm.va_copy(ptr nonnull %7, ptr nonnull %5)
  %10 = getelementptr inbounds [22 x i8], ptr %6, i32 0, i32 18
  %11 = getelementptr inbounds [22 x i8], ptr %6, i32 0, i32 14
  %12 = getelementptr inbounds [22 x i8], ptr %6, i32 0, i32 10
  %13 = getelementptr inbounds [22 x i8], ptr %6, i32 0, i32 6
  %14 = getelementptr inbounds [22 x i8], ptr %6, i32 0, i32 2
  %15 = ptrtoint ptr %9 to i32
  br label %16

16:                                               ; preds = %723, %4
  %17 = phi ptr [ %2, %4 ], [ %726, %723 ]
  %18 = phi i32 [ 0, %4 ], [ %725, %723 ]
  %19 = load i8, ptr %17, align 1
  switch i8 %19, label %24 [
    i8 0, label %727
    i8 37, label %20
  ]

20:                                               ; preds = %16
  %21 = getelementptr i8, ptr %17, i32 1
  %22 = load i8, ptr %21, align 1
  %23 = icmp eq i8 %22, 37
  br i1 %23, label %24, label %31

24:                                               ; preds = %20, %16
  %25 = phi ptr [ %17, %16 ], [ %21, %20 ]
  %26 = icmp ult i32 %18, %1
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = getelementptr i8, ptr %0, i32 %18
  store i8 %19, ptr %28, align 1
  br label %29

29:                                               ; preds = %27, %24
  %30 = add i32 %18, 1
  br label %723

31:                                               ; preds = %39, %20
  %32 = phi i8 [ %43, %39 ], [ %22, %20 ]
  %33 = phi ptr [ %42, %39 ], [ %21, %20 ]
  %34 = phi i32 [ %41, %39 ], [ 0, %20 ]
  switch i8 %32, label %44 [
    i8 45, label %39
    i8 43, label %35
    i8 32, label %36
    i8 35, label %37
    i8 48, label %38
  ]

35:                                               ; preds = %31
  br label %39

36:                                               ; preds = %31
  br label %39

37:                                               ; preds = %31
  br label %39

38:                                               ; preds = %31
  br label %39

39:                                               ; preds = %38, %37, %36, %35, %31
  %40 = phi i32 [ 1, %38 ], [ 64, %37 ], [ 8, %36 ], [ 4, %35 ], [ 16, %31 ]
  %41 = or i32 %40, %34
  %42 = getelementptr i8, ptr %33, i32 1
  %43 = load i8, ptr %42, align 1
  br label %31

44:                                               ; preds = %31
  %45 = zext i8 %32 to i32
  %46 = add nsw i32 %45, -58
  %47 = icmp ult i32 %46, -10
  br i1 %47, label %61, label %48

48:                                               ; preds = %48, %44
  %49 = phi i8 [ %57, %48 ], [ %32, %44 ]
  %50 = phi ptr [ %53, %48 ], [ %33, %44 ]
  %51 = phi i32 [ %56, %48 ], [ 0, %44 ]
  %52 = mul i32 %51, 10
  %53 = getelementptr i8, ptr %50, i32 1
  %54 = zext i8 %49 to i32
  %55 = add i32 %52, -48
  %56 = add i32 %55, %54
  %57 = load i8, ptr %53, align 1
  %58 = zext i8 %57 to i32
  %59 = add nsw i32 %58, -58
  %60 = icmp ult i32 %59, -10
  br i1 %60, label %69, label %48

61:                                               ; preds = %44
  %62 = icmp eq i8 %32, 42
  br i1 %62, label %63, label %76

63:                                               ; preds = %61
  %64 = getelementptr i8, ptr %33, i32 1
  %65 = load ptr, ptr %7, align 4
  %66 = getelementptr inbounds i8, ptr %65, i32 4
  store ptr %66, ptr %7, align 4
  %67 = load i32, ptr %65, align 4
  %68 = load i8, ptr %64, align 1
  br label %69

69:                                               ; preds = %63, %48
  %70 = phi i8 [ %68, %63 ], [ %57, %48 ]
  %71 = phi ptr [ %64, %63 ], [ %53, %48 ]
  %72 = phi i32 [ %67, %63 ], [ %56, %48 ]
  %73 = icmp slt i32 %72, 0
  %74 = or i32 %34, 16
  %75 = select i1 %73, i32 %74, i32 %34
  br label %76

76:                                               ; preds = %69, %61
  %77 = phi i32 [ 0, %61 ], [ %72, %69 ]
  %78 = phi ptr [ %33, %61 ], [ %71, %69 ]
  %79 = phi i8 [ %32, %61 ], [ %70, %69 ]
  %80 = phi i32 [ %34, %61 ], [ %75, %69 ]
  %81 = call i32 @llvm.abs.i32(i32 %77, i1 false)
  %82 = and i32 %80, 16
  %83 = icmp eq i32 %82, 0
  %84 = and i32 %80, -2
  %85 = select i1 %83, i32 %80, i32 %84
  %86 = icmp eq i8 %79, 46
  br i1 %86, label %87, label %125

87:                                               ; preds = %76
  %88 = getelementptr i8, ptr %78, i32 1
  %89 = load i8, ptr %88, align 1
  %90 = zext i8 %89 to i32
  %91 = add nsw i32 %90, -58
  %92 = icmp ult i32 %91, -10
  br i1 %92, label %106, label %93

93:                                               ; preds = %93, %87
  %94 = phi i8 [ %102, %93 ], [ %89, %87 ]
  %95 = phi ptr [ %98, %93 ], [ %88, %87 ]
  %96 = phi i32 [ %101, %93 ], [ 0, %87 ]
  %97 = mul i32 %96, 10
  %98 = getelementptr i8, ptr %95, i32 1
  %99 = zext i8 %94 to i32
  %100 = add i32 %97, -48
  %101 = add i32 %100, %99
  %102 = load i8, ptr %98, align 1
  %103 = zext i8 %102 to i32
  %104 = add nsw i32 %103, -58
  %105 = icmp ult i32 %104, -10
  br i1 %105, label %113, label %93

106:                                              ; preds = %87
  %107 = icmp eq i8 %89, 42
  br i1 %107, label %108, label %117

108:                                              ; preds = %106
  %109 = getelementptr i8, ptr %78, i32 2
  %110 = load ptr, ptr %7, align 4
  %111 = getelementptr inbounds i8, ptr %110, i32 4
  store ptr %111, ptr %7, align 4
  %112 = load i32, ptr %110, align 4
  br label %113

113:                                              ; preds = %108, %93
  %114 = phi ptr [ %109, %108 ], [ %98, %93 ]
  %115 = phi i32 [ %112, %108 ], [ %101, %93 ]
  %116 = icmp sgt i32 %115, -1
  br i1 %116, label %117, label %120

117:                                              ; preds = %113, %106
  %118 = phi i32 [ %115, %113 ], [ 0, %106 ]
  %119 = phi ptr [ %114, %113 ], [ %88, %106 ]
  br label %120

120:                                              ; preds = %117, %113
  %121 = phi ptr [ %114, %113 ], [ %119, %117 ]
  %122 = phi i32 [ %85, %113 ], [ %84, %117 ]
  %123 = phi i32 [ %115, %113 ], [ %118, %117 ]
  %124 = load i8, ptr %121, align 1
  br label %125

125:                                              ; preds = %120, %76
  %126 = phi i8 [ %124, %120 ], [ %79, %76 ]
  %127 = phi ptr [ %121, %120 ], [ %78, %76 ]
  %128 = phi i32 [ %122, %120 ], [ %85, %76 ]
  %129 = phi i32 [ %123, %120 ], [ -1, %76 ]
  switch i8 %126, label %139 [
    i8 104, label %130
    i8 108, label %130
  ]

130:                                              ; preds = %125, %125
  %131 = zext i8 %126 to i32
  %132 = getelementptr i8, ptr %127, i32 1
  %133 = load i8, ptr %132, align 1
  %134 = icmp eq i8 %126, %133
  br i1 %134, label %135, label %139

135:                                              ; preds = %130
  %136 = add nsw i32 %131, -32
  %137 = getelementptr i8, ptr %127, i32 2
  %138 = load i8, ptr %137, align 1
  br label %139

139:                                              ; preds = %135, %130, %125
  %140 = phi i8 [ %133, %130 ], [ %138, %135 ], [ %126, %125 ]
  %141 = phi ptr [ %132, %130 ], [ %137, %135 ], [ %127, %125 ]
  %142 = phi i32 [ %131, %130 ], [ %136, %135 ], [ -1, %125 ]
  switch i8 %140, label %727 [
    i8 99, label %144
    i8 115, label %155
    i8 111, label %224
    i8 112, label %207
    i8 120, label %210
    i8 88, label %143
    i8 100, label %213
    i8 105, label %213
    i8 117, label %215
  ]

143:                                              ; preds = %139
  br label %224

144:                                              ; preds = %139
  %145 = and i32 %128, 16
  %146 = icmp eq i32 %142, 108
  %147 = load ptr, ptr %7, align 4
  %148 = getelementptr inbounds i8, ptr %147, i32 4
  store ptr %148, ptr %7, align 4
  %149 = load i32, ptr %147, align 4
  br i1 %146, label %150, label %153

150:                                              ; preds = %144
  %151 = trunc i32 %149 to i16
  store i16 %151, ptr %6, align 2
  store i16 0, ptr %14, align 2
  %152 = or i32 %145, 128
  br label %170

153:                                              ; preds = %144
  %154 = trunc i32 %149 to i8
  store i8 %154, ptr %6, align 2
  br label %549

155:                                              ; preds = %139
  %156 = and i32 %128, 16
  %157 = call i32 @llvm.umin.i32(i32 %129, i32 2147483647)
  %158 = load ptr, ptr %7, align 4
  %159 = getelementptr inbounds i8, ptr %158, i32 4
  store ptr %159, ptr %7, align 4
  %160 = load ptr, ptr %158, align 4
  %161 = icmp eq ptr %160, null
  br i1 %161, label %162, label %165

162:                                              ; preds = %155
  %163 = icmp ult i32 %157, 6
  %164 = select i1 %163, ptr @.str, ptr @.str.1
  br label %204

165:                                              ; preds = %155
  %166 = icmp eq i32 %142, 108
  br i1 %166, label %167, label %204

167:                                              ; preds = %165
  %168 = or i32 %156, 128
  %169 = icmp eq i32 %157, 0
  br i1 %169, label %549, label %170

170:                                              ; preds = %167, %150
  %171 = phi i32 [ %152, %150 ], [ %168, %167 ]
  %172 = phi ptr [ %6, %150 ], [ %160, %167 ]
  %173 = phi i32 [ 2147483647, %150 ], [ %157, %167 ]
  br label %174

174:                                              ; preds = %200, %170
  %175 = phi i32 [ %201, %200 ], [ 0, %170 ]
  %176 = phi ptr [ %202, %200 ], [ %172, %170 ]
  %177 = load i16, ptr %176, align 2
  %178 = icmp eq i16 %177, 0
  br i1 %178, label %549, label %179

179:                                              ; preds = %174
  %180 = getelementptr i16, ptr %176, i32 1
  %181 = icmp ugt i16 %177, 127
  %182 = select i1 %181, i32 2, i32 1
  %183 = icmp ugt i16 %177, 2047
  %184 = zext i1 %183 to i32
  %185 = add nuw nsw i32 %182, %184
  %186 = add i32 %185, %175
  %187 = icmp ugt i32 %186, %173
  br i1 %187, label %549, label %188

188:                                              ; preds = %179
  %189 = and i16 %177, -1024
  %190 = icmp eq i16 %189, -10240
  br i1 %190, label %191, label %200

191:                                              ; preds = %188
  %192 = icmp eq i32 %186, %173
  br i1 %192, label %549, label %193

193:                                              ; preds = %191
  %194 = load i16, ptr %180, align 2
  %195 = and i16 %194, -1024
  %196 = icmp eq i16 %195, -9216
  br i1 %196, label %197, label %200

197:                                              ; preds = %193
  %198 = getelementptr i16, ptr %176, i32 2
  %199 = add i32 %186, 1
  br label %200

200:                                              ; preds = %197, %193, %188
  %201 = phi i32 [ %186, %193 ], [ %199, %197 ], [ %186, %188 ]
  %202 = phi ptr [ %180, %193 ], [ %198, %197 ], [ %180, %188 ]
  %203 = icmp ult i32 %201, %173
  br i1 %203, label %174, label %549

204:                                              ; preds = %165, %162
  %205 = phi ptr [ %160, %165 ], [ %164, %162 ]
  %206 = call i32 @strnlen(ptr noundef nonnull %205, i32 noundef %157) #7
  br label %549

207:                                              ; preds = %139
  %208 = icmp slt i32 %129, 0
  %209 = select i1 %208, i32 8, i32 %129
  br label %210

210:                                              ; preds = %207, %139
  %211 = phi i32 [ %129, %139 ], [ %209, %207 ]
  %212 = or i32 %128, 32
  br label %218

213:                                              ; preds = %139, %139
  %214 = or i32 %128, 2
  br label %215

215:                                              ; preds = %213, %139
  %216 = phi i32 [ %128, %139 ], [ %214, %213 ]
  %217 = and i32 %216, -65
  br label %218

218:                                              ; preds = %215, %210
  %219 = phi i32 [ %217, %215 ], [ %212, %210 ]
  %220 = phi i32 [ %129, %215 ], [ %211, %210 ]
  %221 = phi i1 [ false, %215 ], [ true, %210 ]
  %222 = phi i32 [ 10, %215 ], [ 16, %210 ]
  %223 = icmp eq i8 %140, 112
  br i1 %223, label %296, label %224

224:                                              ; preds = %218, %143, %139
  %225 = phi i32 [ %222, %218 ], [ 8, %139 ], [ 16, %143 ]
  %226 = phi i1 [ %221, %218 ], [ false, %139 ], [ true, %143 ]
  %227 = phi i1 [ false, %218 ], [ true, %139 ], [ false, %143 ]
  %228 = phi i32 [ %220, %218 ], [ %129, %139 ], [ %129, %143 ]
  %229 = phi i32 [ %219, %218 ], [ %128, %139 ], [ %128, %143 ]
  %230 = and i32 %229, 2
  %231 = icmp eq i32 %230, 0
  %232 = add nsw i32 %142, -72
  %233 = call i32 @llvm.fshl.i32(i32 %232, i32 %232, i32 30) #6
  br i1 %231, label %265, label %234

234:                                              ; preds = %224
  switch i32 %233, label %260 [
    i32 1, label %235
    i32 9, label %243
    i32 8, label %248
    i32 0, label %254
  ]

235:                                              ; preds = %234
  %236 = load ptr, ptr %7, align 4
  %237 = ptrtoint ptr %236 to i32
  %238 = add i32 %237, 7
  %239 = and i32 %238, -8
  %240 = inttoptr i32 %239 to ptr
  %241 = getelementptr inbounds i8, ptr %240, i32 8
  store ptr %241, ptr %7, align 4
  %242 = load i64, ptr %240, align 8
  br label %304

243:                                              ; preds = %234
  %244 = load ptr, ptr %7, align 4
  %245 = getelementptr inbounds i8, ptr %244, i32 4
  store ptr %245, ptr %7, align 4
  %246 = load i32, ptr %244, align 4
  %247 = sext i32 %246 to i64
  br label %304

248:                                              ; preds = %234
  %249 = load ptr, ptr %7, align 4
  %250 = getelementptr inbounds i8, ptr %249, i32 4
  store ptr %250, ptr %7, align 4
  %251 = load i32, ptr %249, align 4
  %252 = trunc i32 %251 to i16
  %253 = sext i16 %252 to i64
  br label %304

254:                                              ; preds = %234
  %255 = load ptr, ptr %7, align 4
  %256 = getelementptr inbounds i8, ptr %255, i32 4
  store ptr %256, ptr %7, align 4
  %257 = load i32, ptr %255, align 4
  %258 = trunc i32 %257 to i8
  %259 = sext i8 %258 to i64
  br label %304

260:                                              ; preds = %234
  %261 = load ptr, ptr %7, align 4
  %262 = getelementptr inbounds i8, ptr %261, i32 4
  store ptr %262, ptr %7, align 4
  %263 = load i32, ptr %261, align 4
  %264 = sext i32 %263 to i64
  br label %304

265:                                              ; preds = %224
  switch i32 %233, label %291 [
    i32 1, label %266
    i32 9, label %274
    i32 8, label %279
    i32 0, label %285
  ]

266:                                              ; preds = %265
  %267 = load ptr, ptr %7, align 4
  %268 = ptrtoint ptr %267 to i32
  %269 = add i32 %268, 7
  %270 = and i32 %269, -8
  %271 = inttoptr i32 %270 to ptr
  %272 = getelementptr inbounds i8, ptr %271, i32 8
  store ptr %272, ptr %7, align 4
  %273 = load i64, ptr %271, align 8
  br label %333

274:                                              ; preds = %265
  %275 = load ptr, ptr %7, align 4
  %276 = getelementptr inbounds i8, ptr %275, i32 4
  store ptr %276, ptr %7, align 4
  %277 = load i32, ptr %275, align 4
  %278 = zext i32 %277 to i64
  br label %333

279:                                              ; preds = %265
  %280 = load ptr, ptr %7, align 4
  %281 = getelementptr inbounds i8, ptr %280, i32 4
  store ptr %281, ptr %7, align 4
  %282 = load i32, ptr %280, align 4
  %283 = and i32 %282, 65535
  %284 = zext i32 %283 to i64
  br label %333

285:                                              ; preds = %265
  %286 = load ptr, ptr %7, align 4
  %287 = getelementptr inbounds i8, ptr %286, i32 4
  store ptr %287, ptr %7, align 4
  %288 = load i32, ptr %286, align 4
  %289 = and i32 %288, 255
  %290 = zext i32 %289 to i64
  br label %333

291:                                              ; preds = %265
  %292 = load ptr, ptr %7, align 4
  %293 = getelementptr inbounds i8, ptr %292, i32 4
  store ptr %293, ptr %7, align 4
  %294 = load i32, ptr %292, align 4
  %295 = zext i32 %294 to i64
  br label %333

296:                                              ; preds = %218
  %297 = load ptr, ptr %7, align 4
  %298 = getelementptr inbounds i8, ptr %297, i32 4
  store ptr %298, ptr %7, align 4
  %299 = load ptr, ptr %297, align 4
  %300 = ptrtoint ptr %299 to i32
  %301 = zext i32 %300 to i64
  %302 = and i32 %219, 2
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %333, label %309

304:                                              ; preds = %260, %254, %248, %243, %235
  %305 = phi i64 [ %242, %235 ], [ %247, %243 ], [ %253, %248 ], [ %259, %254 ], [ %264, %260 ]
  %306 = icmp slt i64 %305, 0
  br i1 %306, label %307, label %309

307:                                              ; preds = %304
  %308 = sub i64 0, %305
  br label %318

309:                                              ; preds = %304, %296
  %310 = phi i32 [ %225, %304 ], [ %222, %296 ]
  %311 = phi i1 [ %226, %304 ], [ %221, %296 ]
  %312 = phi i1 [ %227, %304 ], [ false, %296 ]
  %313 = phi i32 [ %228, %304 ], [ %220, %296 ]
  %314 = phi i32 [ %229, %304 ], [ %219, %296 ]
  %315 = phi i64 [ %305, %304 ], [ %301, %296 ]
  %316 = and i32 %314, 4
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %327, label %318

318:                                              ; preds = %309, %307
  %319 = phi i32 [ %314, %309 ], [ %229, %307 ]
  %320 = phi i32 [ %313, %309 ], [ %228, %307 ]
  %321 = phi i1 [ %312, %309 ], [ %227, %307 ]
  %322 = phi i1 [ %311, %309 ], [ %226, %307 ]
  %323 = phi i32 [ %310, %309 ], [ %225, %307 ]
  %324 = phi i64 [ %315, %309 ], [ %308, %307 ]
  %325 = phi i8 [ 43, %309 ], [ 45, %307 ]
  %326 = add i32 %81, -1
  br label %340

327:                                              ; preds = %309
  %328 = trunc i32 %314 to i8
  %329 = shl i8 %328, 2
  %330 = and i8 %329, 32
  %331 = icmp eq i8 %330, 0
  %332 = add i32 %81, -1
  br i1 %331, label %333, label %340

333:                                              ; preds = %327, %296, %291, %285, %279, %274, %266
  %334 = phi i64 [ %301, %296 ], [ %315, %327 ], [ %273, %266 ], [ %278, %274 ], [ %284, %279 ], [ %290, %285 ], [ %295, %291 ]
  %335 = phi i32 [ %219, %296 ], [ %314, %327 ], [ %229, %266 ], [ %229, %274 ], [ %229, %279 ], [ %229, %285 ], [ %229, %291 ]
  %336 = phi i32 [ %220, %296 ], [ %313, %327 ], [ %228, %266 ], [ %228, %274 ], [ %228, %279 ], [ %228, %285 ], [ %228, %291 ]
  %337 = phi i1 [ false, %296 ], [ %312, %327 ], [ %227, %266 ], [ %227, %274 ], [ %227, %279 ], [ %227, %285 ], [ %227, %291 ]
  %338 = phi i1 [ %221, %296 ], [ %311, %327 ], [ %226, %266 ], [ %226, %274 ], [ %226, %279 ], [ %226, %285 ], [ %226, %291 ]
  %339 = phi i32 [ %222, %296 ], [ %310, %327 ], [ %225, %266 ], [ %225, %274 ], [ %225, %279 ], [ %225, %285 ], [ %225, %291 ]
  br label %340

340:                                              ; preds = %333, %327, %318
  %341 = phi i32 [ %335, %333 ], [ %314, %327 ], [ %319, %318 ]
  %342 = phi i32 [ %336, %333 ], [ %313, %327 ], [ %320, %318 ]
  %343 = phi i1 [ %337, %333 ], [ %312, %327 ], [ %321, %318 ]
  %344 = phi i1 [ %338, %333 ], [ %311, %327 ], [ %322, %318 ]
  %345 = phi i32 [ %339, %333 ], [ %310, %327 ], [ %323, %318 ]
  %346 = phi i8 [ 0, %333 ], [ %330, %327 ], [ %325, %318 ]
  %347 = phi i64 [ %334, %333 ], [ %315, %327 ], [ %324, %318 ]
  %348 = phi i32 [ %81, %333 ], [ %332, %327 ], [ %326, %318 ]
  %349 = trunc i32 %341 to i8
  %350 = and i8 %349, 32
  switch i32 %345, label %519 [
    i32 10, label %355
    i32 8, label %353
    i32 16, label %351
  ]

351:                                              ; preds = %340
  %352 = icmp eq i64 %347, 0
  br i1 %352, label %520, label %508

353:                                              ; preds = %340
  %354 = icmp eq i64 %347, 0
  br i1 %354, label %520, label %499

355:                                              ; preds = %340
  %356 = icmp eq i64 %347, 0
  br i1 %356, label %520, label %357

357:                                              ; preds = %355
  %358 = trunc i64 %347 to i32
  %359 = lshr i32 %358, 16
  %360 = lshr i64 %347, 32
  %361 = trunc i64 %360 to i32
  %362 = and i32 %361, 65535
  %363 = lshr i32 %361, 16
  %364 = mul nuw nsw i32 %363, 656
  %365 = mul nuw nsw i32 %362, 7296
  %366 = mul nuw nsw i32 %359, 5536
  %367 = and i32 %358, 65535
  %368 = add nuw nsw i32 %366, %367
  %369 = add nuw nsw i32 %368, %365
  %370 = add nuw nsw i32 %369, %364
  %371 = zext i32 %370 to i64
  %372 = mul nuw nsw i64 %371, 879609303
  %373 = lshr i64 %372, 43
  %374 = trunc i64 %373 to i32
  %375 = mul nsw i32 %374, -10000
  %376 = add nsw i32 %375, %370
  br label %377

377:                                              ; preds = %377, %357
  %378 = phi ptr [ %9, %357 ], [ %387, %377 ]
  %379 = phi i32 [ 0, %357 ], [ %388, %377 ]
  %380 = phi i32 [ %376, %357 ], [ %382, %377 ]
  %381 = mul i32 %380, 3277
  %382 = lshr i32 %381, 15
  %383 = mul nuw nsw i32 %382, 246
  %384 = add i32 %383, %380
  %385 = trunc i32 %384 to i8
  %386 = add i8 %385, 48
  %387 = getelementptr i8, ptr %378, i32 -1
  store i8 %386, ptr %387, align 1
  %388 = add nuw nsw i32 %379, 1
  %389 = icmp eq i32 %388, 3
  br i1 %389, label %390, label %377

390:                                              ; preds = %377
  %391 = trunc i32 %382 to i8
  %392 = add i8 %391, 48
  %393 = getelementptr i8, ptr %378, i32 -2
  store i8 %392, ptr %393, align 1
  %394 = mul nuw nsw i32 %363, 7671
  %395 = mul nuw nsw i32 %362, 9496
  %396 = mul nuw nsw i32 %359, 6
  %397 = add nuw nsw i32 %395, %396
  %398 = add nuw i32 %397, %394
  %399 = add i32 %398, %374
  %400 = zext i32 %399 to i64
  %401 = mul nuw nsw i64 %400, 879609303
  %402 = lshr i64 %401, 43
  %403 = trunc i64 %402 to i32
  %404 = mul i32 %403, -10000
  %405 = add i32 %404, %399
  br label %406

406:                                              ; preds = %406, %390
  %407 = phi ptr [ %10, %390 ], [ %416, %406 ]
  %408 = phi i32 [ 0, %390 ], [ %417, %406 ]
  %409 = phi i32 [ %405, %390 ], [ %411, %406 ]
  %410 = mul i32 %409, 3277
  %411 = lshr i32 %410, 15
  %412 = mul nuw nsw i32 %411, 246
  %413 = add i32 %412, %409
  %414 = trunc i32 %413 to i8
  %415 = add i8 %414, 48
  %416 = getelementptr i8, ptr %407, i32 -1
  store i8 %415, ptr %416, align 1
  %417 = add nuw nsw i32 %408, 1
  %418 = icmp eq i32 %417, 3
  br i1 %418, label %419, label %406

419:                                              ; preds = %406
  %420 = trunc i32 %411 to i8
  %421 = add i8 %420, 48
  %422 = getelementptr i8, ptr %407, i32 -2
  store i8 %421, ptr %422, align 1
  %423 = mul nuw nsw i32 %363, 4749
  %424 = mul nuw nsw i32 %362, 42
  %425 = add nuw nsw i32 %423, %424
  %426 = add nuw nsw i32 %425, %403
  %427 = zext i32 %426 to i64
  %428 = mul nuw nsw i64 %427, 879609303
  %429 = lshr i64 %428, 43
  %430 = trunc i64 %429 to i32
  %431 = mul i32 %430, -10000
  %432 = add i32 %431, %426
  br label %433

433:                                              ; preds = %433, %419
  %434 = phi ptr [ %11, %419 ], [ %443, %433 ]
  %435 = phi i32 [ 0, %419 ], [ %444, %433 ]
  %436 = phi i32 [ %432, %419 ], [ %438, %433 ]
  %437 = mul i32 %436, 3277
  %438 = lshr i32 %437, 15
  %439 = mul nuw nsw i32 %438, 246
  %440 = add i32 %439, %436
  %441 = trunc i32 %440 to i8
  %442 = add i8 %441, 48
  %443 = getelementptr i8, ptr %434, i32 -1
  store i8 %442, ptr %443, align 1
  %444 = add nuw nsw i32 %435, 1
  %445 = icmp eq i32 %444, 3
  br i1 %445, label %446, label %433

446:                                              ; preds = %433
  %447 = trunc i32 %438 to i8
  %448 = add i8 %447, 48
  %449 = getelementptr i8, ptr %434, i32 -2
  store i8 %448, ptr %449, align 1
  %450 = mul nuw nsw i32 %363, 281
  %451 = add nuw nsw i32 %450, %430
  %452 = zext i32 %451 to i64
  %453 = mul nuw nsw i64 %452, 879609303
  %454 = lshr i64 %453, 43
  %455 = trunc i64 %454 to i32
  %456 = mul i32 %455, -10000
  %457 = add i32 %456, %451
  br label %458

458:                                              ; preds = %458, %446
  %459 = phi ptr [ %12, %446 ], [ %468, %458 ]
  %460 = phi i32 [ 0, %446 ], [ %469, %458 ]
  %461 = phi i32 [ %457, %446 ], [ %463, %458 ]
  %462 = mul i32 %461, 3277
  %463 = lshr i32 %462, 15
  %464 = mul nuw nsw i32 %463, 246
  %465 = add i32 %464, %461
  %466 = trunc i32 %465 to i8
  %467 = add i8 %466, 48
  %468 = getelementptr i8, ptr %459, i32 -1
  store i8 %467, ptr %468, align 1
  %469 = add nuw nsw i32 %460, 1
  %470 = icmp eq i32 %469, 3
  br i1 %470, label %471, label %458

471:                                              ; preds = %458
  %472 = trunc i32 %463 to i8
  %473 = add i8 %472, 48
  %474 = getelementptr i8, ptr %459, i32 -2
  store i8 %473, ptr %474, align 1
  br label %475

475:                                              ; preds = %475, %471
  %476 = phi ptr [ %13, %471 ], [ %485, %475 ]
  %477 = phi i32 [ 0, %471 ], [ %486, %475 ]
  %478 = phi i32 [ %455, %471 ], [ %480, %475 ]
  %479 = mul nsw i32 %478, 3277
  %480 = lshr i32 %479, 15
  %481 = mul nuw nsw i32 %480, 246
  %482 = add nsw i32 %481, %478
  %483 = trunc i32 %482 to i8
  %484 = add i8 %483, 48
  %485 = getelementptr i8, ptr %476, i32 -1
  store i8 %484, ptr %485, align 1
  %486 = add nuw nsw i32 %477, 1
  %487 = icmp eq i32 %486, 3
  br i1 %487, label %488, label %475

488:                                              ; preds = %475
  %489 = trunc i32 %480 to i8
  %490 = add i8 %489, 48
  %491 = getelementptr i8, ptr %476, i32 -2
  store i8 %490, ptr %491, align 1
  br label %492

492:                                              ; preds = %496, %488
  %493 = phi ptr [ %497, %496 ], [ %14, %488 ]
  %494 = load i8, ptr %493, align 1
  %495 = icmp eq i8 %494, 48
  br i1 %495, label %496, label %520

496:                                              ; preds = %492
  %497 = getelementptr i8, ptr %493, i32 1
  %498 = icmp eq ptr %497, %9
  br i1 %498, label %520, label %492

499:                                              ; preds = %499, %353
  %500 = phi ptr [ %505, %499 ], [ %9, %353 ]
  %501 = phi i64 [ %506, %499 ], [ %347, %353 ]
  %502 = trunc i64 %501 to i8
  %503 = and i8 %502, 7
  %504 = or i8 %503, 48
  %505 = getelementptr i8, ptr %500, i32 -1
  store i8 %504, ptr %505, align 1
  %506 = lshr i64 %501, 3
  %507 = icmp ult i64 %501, 8
  br i1 %507, label %520, label %499

508:                                              ; preds = %508, %351
  %509 = phi ptr [ %516, %508 ], [ %9, %351 ]
  %510 = phi i64 [ %517, %508 ], [ %347, %351 ]
  %511 = trunc i64 %510 to i32
  %512 = and i32 %511, 15
  %513 = getelementptr [16 x i8], ptr @number.digits, i32 0, i32 %512
  %514 = load i8, ptr %513, align 1
  %515 = or i8 %514, %350
  %516 = getelementptr i8, ptr %509, i32 -1
  store i8 %515, ptr %516, align 1
  %517 = lshr i64 %510, 4
  %518 = icmp ult i64 %510, 16
  br i1 %518, label %520, label %508

519:                                              ; preds = %340
  unreachable

520:                                              ; preds = %508, %499, %496, %492, %355, %353, %351
  %521 = phi ptr [ %9, %355 ], [ %9, %353 ], [ %9, %351 ], [ %9, %496 ], [ %493, %492 ], [ %505, %499 ], [ %516, %508 ]
  %522 = ptrtoint ptr %521 to i32
  %523 = sub i32 %15, %522
  %524 = icmp slt i32 %342, 0
  %525 = select i1 %524, i32 1, i32 %342
  %526 = call i32 @llvm.umax.i32(i32 %525, i32 %523)
  %527 = and i32 %341, 64
  %528 = icmp eq i32 %527, 0
  br i1 %528, label %540, label %529

529:                                              ; preds = %520
  %530 = icmp uge i32 %523, %525
  %531 = select i1 %343, i1 %530, i1 false
  %532 = zext i1 %531 to i32
  %533 = add i32 %526, %532
  %534 = icmp sgt i32 %533, 0
  %535 = select i1 %344, i1 %534, i1 false
  br i1 %535, label %536, label %538

536:                                              ; preds = %529
  %537 = add i32 %348, -2
  br label %540

538:                                              ; preds = %529
  %539 = and i32 %341, -65
  br label %540

540:                                              ; preds = %538, %536, %520
  %541 = phi i32 [ %341, %536 ], [ %539, %538 ], [ %341, %520 ]
  %542 = phi i32 [ %537, %536 ], [ %348, %538 ], [ %348, %520 ]
  %543 = phi i32 [ %533, %536 ], [ %533, %538 ], [ %526, %520 ]
  %544 = and i32 %541, 1
  %545 = icmp ne i32 %544, 0
  %546 = icmp sgt i32 %542, %543
  %547 = select i1 %545, i1 %546, i1 false
  %548 = select i1 %547, i32 %542, i32 %543
  br label %549

549:                                              ; preds = %540, %204, %200, %191, %179, %174, %167, %153
  %550 = phi i32 [ %206, %204 ], [ 1, %153 ], [ %523, %540 ], [ 0, %167 ], [ %175, %174 ], [ %201, %200 ], [ %175, %191 ], [ %175, %179 ]
  %551 = phi i8 [ 0, %204 ], [ 0, %153 ], [ %346, %540 ], [ 0, %167 ], [ 0, %174 ], [ 0, %179 ], [ 0, %191 ], [ 0, %200 ]
  %552 = phi i32 [ %156, %204 ], [ %145, %153 ], [ %541, %540 ], [ %168, %167 ], [ %171, %174 ], [ %171, %179 ], [ %171, %191 ], [ %171, %200 ]
  %553 = phi i32 [ %81, %204 ], [ %81, %153 ], [ %542, %540 ], [ %81, %167 ], [ %81, %174 ], [ %81, %179 ], [ %81, %191 ], [ %81, %200 ]
  %554 = phi i32 [ %206, %204 ], [ 1, %153 ], [ %548, %540 ], [ 0, %167 ], [ %175, %174 ], [ %201, %200 ], [ %175, %191 ], [ %175, %179 ]
  %555 = phi ptr [ %205, %204 ], [ %6, %153 ], [ %521, %540 ], [ %160, %167 ], [ %172, %174 ], [ %172, %179 ], [ %172, %191 ], [ %172, %200 ]
  %556 = sub i32 %553, %554
  %557 = and i32 %552, 16
  %558 = icmp eq i32 %557, 0
  br i1 %558, label %559, label %572

559:                                              ; preds = %549
  %560 = add i32 %556, -1
  %561 = icmp sgt i32 %556, 0
  br i1 %561, label %562, label %572

562:                                              ; preds = %568, %559
  %563 = phi i32 [ %570, %568 ], [ %560, %559 ]
  %564 = phi i32 [ %569, %568 ], [ %18, %559 ]
  %565 = icmp ult i32 %564, %1
  br i1 %565, label %566, label %568

566:                                              ; preds = %562
  %567 = getelementptr i8, ptr %0, i32 %564
  store i8 32, ptr %567, align 1
  br label %568

568:                                              ; preds = %566, %562
  %569 = add i32 %564, 1
  %570 = add i32 %563, -1
  %571 = icmp sgt i32 %563, 0
  br i1 %571, label %562, label %572

572:                                              ; preds = %568, %559, %549
  %573 = phi i32 [ %18, %549 ], [ %18, %559 ], [ %569, %568 ]
  %574 = phi i32 [ %556, %549 ], [ %560, %559 ], [ -1, %568 ]
  %575 = icmp eq i8 %551, 0
  br i1 %575, label %582, label %576

576:                                              ; preds = %572
  %577 = icmp ult i32 %573, %1
  br i1 %577, label %578, label %580

578:                                              ; preds = %576
  %579 = getelementptr i8, ptr %0, i32 %573
  store i8 %551, ptr %579, align 1
  br label %580

580:                                              ; preds = %578, %576
  %581 = add i32 %573, 1
  br label %582

582:                                              ; preds = %580, %572
  %583 = phi i32 [ %581, %580 ], [ %573, %572 ]
  %584 = and i32 %552, 64
  %585 = icmp eq i32 %584, 0
  br i1 %585, label %600, label %586

586:                                              ; preds = %582
  %587 = icmp ult i32 %583, %1
  br i1 %587, label %588, label %590

588:                                              ; preds = %586
  %589 = getelementptr i8, ptr %0, i32 %583
  store i8 48, ptr %589, align 1
  br label %590

590:                                              ; preds = %588, %586
  %591 = add i32 %583, 1
  %592 = icmp ult i32 %591, %1
  br i1 %592, label %593, label %598

593:                                              ; preds = %590
  %594 = trunc i32 %552 to i8
  %595 = and i8 %594, 32
  %596 = or i8 %595, 88
  %597 = getelementptr i8, ptr %0, i32 %591
  store i8 %596, ptr %597, align 1
  br label %598

598:                                              ; preds = %593, %590
  %599 = add i32 %583, 2
  br label %600

600:                                              ; preds = %598, %582
  %601 = phi i32 [ %599, %598 ], [ %583, %582 ]
  %602 = icmp ugt i32 %554, %550
  br i1 %602, label %603, label %613

603:                                              ; preds = %610, %600
  %604 = phi i32 [ %606, %610 ], [ %554, %600 ]
  %605 = phi i32 [ %611, %610 ], [ %601, %600 ]
  %606 = add i32 %604, -1
  %607 = icmp ult i32 %605, %1
  br i1 %607, label %608, label %610

608:                                              ; preds = %603
  %609 = getelementptr i8, ptr %0, i32 %605
  store i8 48, ptr %609, align 1
  br label %610

610:                                              ; preds = %608, %603
  %611 = add i32 %605, 1
  %612 = icmp ugt i32 %606, %550
  br i1 %612, label %603, label %613

613:                                              ; preds = %610, %600
  %614 = phi i32 [ %601, %600 ], [ %611, %610 ]
  %615 = and i32 %552, 128
  %616 = icmp eq i32 %615, 0
  %617 = icmp eq i32 %550, 0
  br i1 %616, label %619, label %618

618:                                              ; preds = %613
  br i1 %617, label %710, label %620

619:                                              ; preds = %613
  br i1 %617, label %710, label %696

620:                                              ; preds = %691, %618
  %621 = phi i32 [ %693, %691 ], [ %550, %618 ]
  %622 = phi i32 [ %694, %691 ], [ %614, %618 ]
  %623 = phi ptr [ %692, %691 ], [ %555, %618 ]
  %624 = add i32 %621, -1
  %625 = getelementptr i16, ptr %623, i32 1
  %626 = load i16, ptr %623, align 2
  %627 = zext i16 %626 to i32
  %628 = and i32 %627, 63488
  %629 = icmp eq i32 %628, 55296
  br i1 %629, label %630, label %643

630:                                              ; preds = %620
  %631 = and i32 %627, 1024
  %632 = icmp eq i32 %631, 0
  br i1 %632, label %633, label %654

633:                                              ; preds = %630
  %634 = load i16, ptr %625, align 2
  %635 = zext i16 %634 to i32
  %636 = and i32 %635, 64512
  %637 = icmp eq i32 %636, 56320
  br i1 %637, label %638, label %654

638:                                              ; preds = %633
  %639 = getelementptr i16, ptr %623, i32 2
  %640 = shl nuw nsw i32 %627, 10
  %641 = add nsw i32 %640, -56613888
  %642 = add nuw nsw i32 %641, %635
  br label %654

643:                                              ; preds = %620
  %644 = icmp ult i16 %626, 128
  br i1 %644, label %645, label %652

645:                                              ; preds = %643
  %646 = icmp ult i32 %622, %1
  br i1 %646, label %647, label %650

647:                                              ; preds = %645
  %648 = trunc i16 %626 to i8
  %649 = getelementptr i8, ptr %0, i32 %622
  store i8 %648, ptr %649, align 1
  br label %650

650:                                              ; preds = %647, %645
  %651 = add i32 %622, 1
  br label %691

652:                                              ; preds = %643
  %653 = icmp ugt i16 %626, 2047
  br i1 %653, label %654, label %657

654:                                              ; preds = %652, %638, %633, %630
  %655 = phi ptr [ %625, %652 ], [ %639, %638 ], [ %625, %633 ], [ %625, %630 ]
  %656 = phi i32 [ %627, %652 ], [ %642, %638 ], [ 65533, %633 ], [ 65533, %630 ]
  br label %657

657:                                              ; preds = %654, %652
  %658 = phi ptr [ %655, %654 ], [ %625, %652 ]
  %659 = phi i32 [ %656, %654 ], [ %627, %652 ]
  %660 = phi i32 [ 2, %654 ], [ 1, %652 ]
  %661 = icmp ugt i32 %659, 65535
  %662 = zext i1 %661 to i32
  %663 = add nuw nsw i32 %660, %662
  %664 = sub i32 %624, %663
  %665 = getelementptr i8, ptr %0, i32 %622
  %666 = icmp ult i32 %622, %1
  br i1 %666, label %667, label %668

667:                                              ; preds = %657
  store i8 0, ptr %665, align 1
  br label %668

668:                                              ; preds = %667, %657
  %669 = add i32 %622, 1
  %670 = add i32 %669, %663
  %671 = icmp ult i32 %670, %1
  br i1 %671, label %672, label %691

672:                                              ; preds = %668
  %673 = lshr i32 1920, %663
  %674 = trunc i32 %673 to i8
  store i8 %674, ptr %665, align 1
  %675 = getelementptr i8, ptr %665, i32 %663
  br label %676

676:                                              ; preds = %676, %672
  %677 = phi i32 [ %663, %672 ], [ %684, %676 ]
  %678 = phi ptr [ %675, %672 ], [ %683, %676 ]
  %679 = phi i32 [ %659, %672 ], [ %685, %676 ]
  %680 = trunc i32 %679 to i8
  %681 = and i8 %680, 63
  %682 = or i8 %681, -128
  %683 = getelementptr i8, ptr %678, i32 -1
  store i8 %682, ptr %678, align 1
  %684 = add nsw i32 %677, -1
  %685 = lshr i32 %679, 6
  %686 = icmp eq i32 %684, 0
  br i1 %686, label %687, label %676

687:                                              ; preds = %676
  %688 = load i8, ptr %683, align 1
  %689 = trunc i32 %685 to i8
  %690 = or i8 %688, %689
  store i8 %690, ptr %683, align 1
  br label %691

691:                                              ; preds = %687, %668, %650
  %692 = phi ptr [ %625, %650 ], [ %658, %687 ], [ %658, %668 ]
  %693 = phi i32 [ %624, %650 ], [ %664, %687 ], [ %664, %668 ]
  %694 = phi i32 [ %651, %650 ], [ %670, %687 ], [ %670, %668 ]
  %695 = icmp eq i32 %693, 0
  br i1 %695, label %710, label %620

696:                                              ; preds = %706, %619
  %697 = phi i32 [ %700, %706 ], [ %550, %619 ]
  %698 = phi ptr [ %707, %706 ], [ %555, %619 ]
  %699 = phi i32 [ %708, %706 ], [ %614, %619 ]
  %700 = add i32 %697, -1
  %701 = icmp ult i32 %699, %1
  br i1 %701, label %702, label %706

702:                                              ; preds = %696
  %703 = getelementptr i8, ptr %698, i32 1
  %704 = load i8, ptr %698, align 1
  %705 = getelementptr i8, ptr %0, i32 %699
  store i8 %704, ptr %705, align 1
  br label %706

706:                                              ; preds = %702, %696
  %707 = phi ptr [ %703, %702 ], [ %698, %696 ]
  %708 = add i32 %699, 1
  %709 = icmp eq i32 %700, 0
  br i1 %709, label %710, label %696

710:                                              ; preds = %706, %691, %619, %618
  %711 = phi i32 [ %614, %619 ], [ %614, %618 ], [ %708, %706 ], [ %694, %691 ]
  %712 = icmp sgt i32 %574, 0
  br i1 %712, label %713, label %723

713:                                              ; preds = %720, %710
  %714 = phi i32 [ %716, %720 ], [ %574, %710 ]
  %715 = phi i32 [ %721, %720 ], [ %711, %710 ]
  %716 = add nsw i32 %714, -1
  %717 = icmp ult i32 %715, %1
  br i1 %717, label %718, label %720

718:                                              ; preds = %713
  %719 = getelementptr i8, ptr %0, i32 %715
  store i8 32, ptr %719, align 1
  br label %720

720:                                              ; preds = %718, %713
  %721 = add i32 %715, 1
  %722 = icmp ugt i32 %714, 1
  br i1 %722, label %713, label %723

723:                                              ; preds = %720, %710, %29
  %724 = phi ptr [ %25, %29 ], [ %141, %710 ], [ %141, %720 ]
  %725 = phi i32 [ %30, %29 ], [ %711, %710 ], [ %721, %720 ]
  %726 = getelementptr i8, ptr %724, i32 1
  br label %16

727:                                              ; preds = %139, %16
  call void @llvm.va_end(ptr nonnull %7)
  %728 = icmp eq i32 %1, 0
  br i1 %728, label %733, label %729

729:                                              ; preds = %727
  %730 = add i32 %1, -1
  %731 = call i32 @llvm.umin.i32(i32 %18, i32 %730)
  %732 = getelementptr i8, ptr %0, i32 %731
  store i8 0, ptr %732, align 1
  br label %733

733:                                              ; preds = %729, %727
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 22, ptr nonnull %6) #6
  ret i32 %18
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_copy(ptr, ptr) #3

; Function Attrs: null_pointer_is_valid optsize
declare hidden i32 @strnlen(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #3

; Function Attrs: nounwind null_pointer_is_valid optsize uwtable(sync)
define hidden i32 @snprintf(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #0 {
  %4 = alloca %struct.__va_list, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store i32 0, ptr %4, align 4, !annotation !9
  call void @llvm.va_start(ptr nonnull %4)
  %5 = load i32, ptr %4, align 4
  %6 = insertvalue [1 x i32] poison, i32 %5, 0
  %7 = call i32 @vsnprintf(ptr noundef %0, i32 noundef %1, ptr noundef %2, [1 x i32] %6) #8
  call void @llvm.va_end(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  ret i32 %7
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

attributes #0 = { nounwind null_pointer_is_valid optsize uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid optsize "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin nounwind optsize "no-builtins" }
attributes #8 = { nobuiltin optsize "no-builtins" }

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
