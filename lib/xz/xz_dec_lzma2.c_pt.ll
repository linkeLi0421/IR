; ModuleID = '/llk/IR/lib/xz/xz_dec_lzma2.c_pt.bc'
source_filename = "../lib/xz/xz_dec_lzma2.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xz_buf = type { ptr, i32, i32, ptr, i32, i32 }
%struct.xz_dec_lzma2 = type { %struct.rc_dec, %struct.dictionary, %struct.lzma2_dec, %struct.lzma_dec, %struct.anon }
%struct.rc_dec = type { i32, i32, i32, ptr, i32, i32 }
%struct.dictionary = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lzma2_dec = type { i32, i32, i32, i32, i8, i8 }
%struct.lzma_dec = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x [16 x i16]], [12 x i16], [12 x i16], [12 x i16], [12 x i16], [12 x [16 x i16]], [4 x [64 x i16]], [114 x i16], [16 x i16], %struct.lzma_len_dec, %struct.lzma_len_dec, [16 x [768 x i16]] }
%struct.lzma_len_dec = type { i16, i16, [16 x [8 x i16]], [16 x [8 x i16]], [256 x i16] }
%struct.anon = type { i32, [63 x i8] }

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xz_dec_lzma2_run(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.xz_buf, ptr %1, i32 0, i32 1
  %4 = getelementptr inbounds %struct.xz_buf, ptr %1, i32 0, i32 2
  %5 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %0, i32 0, i32 2
  %6 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %0, i32 0, i32 1
  %7 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %0, i32 0, i32 2, i32 3
  %8 = getelementptr inbounds %struct.xz_buf, ptr %1, i32 0, i32 4
  %9 = getelementptr inbounds %struct.xz_buf, ptr %1, i32 0, i32 5
  %10 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %0, i32 0, i32 1, i32 5
  %11 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %0, i32 0, i32 1, i32 2
  %12 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %0, i32 0, i32 1, i32 3
  %13 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %0, i32 0, i32 1, i32 9
  %14 = getelementptr inbounds %struct.xz_buf, ptr %1, i32 0, i32 3
  %15 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %0, i32 0, i32 1, i32 1
  %16 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %0, i32 0, i32 3, i32 8
  %17 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %0, i32 0, i32 3, i32 7
  %18 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %0, i32 0, i32 3, i32 6
  %19 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %0, i32 0, i32 3
  %20 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %0, i32 0, i32 3, i32 9
  %21 = getelementptr inbounds %struct.rc_dec, ptr %0, i32 0, i32 1
  %22 = getelementptr inbounds %struct.rc_dec, ptr %0, i32 0, i32 2
  %23 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %0, i32 0, i32 2, i32 2
  %24 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %0, i32 0, i32 1, i32 4
  %25 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %0, i32 0, i32 4
  %26 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %0, i32 0, i32 4, i32 1
  %27 = getelementptr inbounds %struct.rc_dec, ptr %0, i32 0, i32 5
  %28 = getelementptr inbounds %struct.rc_dec, ptr %0, i32 0, i32 3
  %29 = getelementptr inbounds %struct.rc_dec, ptr %0, i32 0, i32 4
  %30 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %0, i32 0, i32 3, i32 5
  %31 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %0, i32 0, i32 2, i32 1
  %32 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %0, i32 0, i32 2, i32 4
  %33 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %0, i32 0, i32 2, i32 5
  br label %34

34:                                               ; preds = %335, %2
  %35 = load i32, ptr %3, align 4
  %36 = load i32, ptr %4, align 4
  %37 = icmp ult i32 %35, %36
  %38 = load i32, ptr %5, align 4
  br i1 %37, label %41, label %39

39:                                               ; preds = %34
  %40 = icmp eq i32 %38, 7
  br i1 %40, label %42, label %407

41:                                               ; preds = %34
  switch i32 %38, label %335 [
    i32 0, label %44
    i32 1, label %91
    i32 2, label %100
    i32 3, label %109
    i32 4, label %116
    i32 5, label %126
    i32 6, label %171
    i32 7, label %42
    i32 8, label %348
  ]

42:                                               ; preds = %41, %39
  %43 = load i32, ptr %7, align 4
  br label %198

44:                                               ; preds = %41
  %45 = load ptr, ptr %1, align 4
  %46 = add nuw i32 %35, 1
  store i32 %46, ptr %3, align 4
  %47 = getelementptr i8, ptr %45, i32 %35
  %48 = load i8, ptr %47, align 1
  %49 = zext i8 %48 to i32
  %50 = icmp eq i8 %48, 0
  br i1 %50, label %407, label %51

51:                                               ; preds = %44
  %52 = icmp ugt i8 %48, -33
  %53 = icmp eq i8 %48, 1
  %54 = or i1 %52, %53
  br i1 %54, label %55, label %66

55:                                               ; preds = %51
  store i8 1, ptr %33, align 1
  store i8 0, ptr %32, align 4
  %56 = load i32, ptr %13, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %55
  %59 = load ptr, ptr %14, align 4
  %60 = load i32, ptr %8, align 4
  %61 = getelementptr i8, ptr %59, i32 %60
  store ptr %61, ptr %6, align 4
  %62 = load i32, ptr %9, align 4
  %63 = load i32, ptr %8, align 4
  %64 = sub i32 %62, %63
  store i32 %64, ptr %10, align 4
  br label %65

65:                                               ; preds = %58, %55
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %15, i8 0, i64 16, i1 false) #8
  br label %69

66:                                               ; preds = %51
  %67 = load i8, ptr %32, align 4, !range !8
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %69, label %407

69:                                               ; preds = %66, %65
  %70 = icmp slt i8 %48, 0
  br i1 %70, label %71, label %88

71:                                               ; preds = %69
  %72 = shl nuw nsw i32 %49, 16
  %73 = and i32 %72, 2031616
  store i32 %73, ptr %23, align 4
  store i32 1, ptr %5, align 4
  %74 = icmp ugt i8 %48, -65
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  store i8 0, ptr %33, align 1
  store i32 5, ptr %31, align 4
  br label %335

76:                                               ; preds = %71
  %77 = load i8, ptr %33, align 1, !range !8
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %79, label %407

79:                                               ; preds = %76
  store i32 6, ptr %31, align 4
  %80 = icmp ugt i8 %48, -97
  br i1 %80, label %81, label %335

81:                                               ; preds = %79
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(24) %19, i8 0, i64 24, i1 false) #8
  br label %82

82:                                               ; preds = %82, %81
  %83 = phi i32 [ 0, %81 ], [ %85, %82 ]
  %84 = getelementptr i16, ptr %20, i32 %83
  store i16 1024, ptr %84, align 2
  %85 = add nuw nsw i32 %83, 1
  %86 = icmp eq i32 %85, 14134
  br i1 %86, label %87, label %82

87:                                               ; preds = %82
  store i32 -1, ptr %0, align 4
  store i32 0, ptr %21, align 4
  store i32 5, ptr %22, align 4
  br label %335

88:                                               ; preds = %69
  %89 = icmp ugt i8 %48, 2
  br i1 %89, label %407, label %90

90:                                               ; preds = %88
  store i32 3, ptr %5, align 4
  store i32 8, ptr %31, align 4
  br label %335

91:                                               ; preds = %41
  %92 = load ptr, ptr %1, align 4
  %93 = add nuw i32 %35, 1
  store i32 %93, ptr %3, align 4
  %94 = getelementptr i8, ptr %92, i32 %35
  %95 = load i8, ptr %94, align 1
  %96 = zext i8 %95 to i32
  %97 = shl nuw nsw i32 %96, 8
  %98 = load i32, ptr %23, align 4
  %99 = add i32 %97, %98
  store i32 %99, ptr %23, align 4
  store i32 2, ptr %5, align 4
  br label %335

100:                                              ; preds = %41
  %101 = load ptr, ptr %1, align 4
  %102 = add nuw i32 %35, 1
  store i32 %102, ptr %3, align 4
  %103 = getelementptr i8, ptr %101, i32 %35
  %104 = load i8, ptr %103, align 1
  %105 = zext i8 %104 to i32
  %106 = add nuw nsw i32 %105, 1
  %107 = load i32, ptr %23, align 4
  %108 = add i32 %106, %107
  store i32 %108, ptr %23, align 4
  store i32 3, ptr %5, align 4
  br label %335

109:                                              ; preds = %41
  %110 = load ptr, ptr %1, align 4
  %111 = add nuw i32 %35, 1
  store i32 %111, ptr %3, align 4
  %112 = getelementptr i8, ptr %110, i32 %35
  %113 = load i8, ptr %112, align 1
  %114 = zext i8 %113 to i32
  %115 = shl nuw nsw i32 %114, 8
  store i32 %115, ptr %7, align 4
  store i32 4, ptr %5, align 4
  br label %335

116:                                              ; preds = %41
  %117 = load ptr, ptr %1, align 4
  %118 = add nuw i32 %35, 1
  store i32 %118, ptr %3, align 4
  %119 = getelementptr i8, ptr %117, i32 %35
  %120 = load i8, ptr %119, align 1
  %121 = zext i8 %120 to i32
  %122 = add nuw nsw i32 %121, 1
  %123 = load i32, ptr %7, align 4
  %124 = add i32 %122, %123
  store i32 %124, ptr %7, align 4
  %125 = load i32, ptr %31, align 4
  store i32 %125, ptr %5, align 4
  br label %335

126:                                              ; preds = %41
  %127 = load ptr, ptr %1, align 4
  %128 = add nuw i32 %35, 1
  store i32 %128, ptr %3, align 4
  %129 = getelementptr i8, ptr %127, i32 %35
  %130 = load i8, ptr %129, align 1
  %131 = icmp ugt i8 %130, -32
  br i1 %131, label %407, label %132

132:                                              ; preds = %126
  %133 = icmp ugt i8 %130, 44
  br i1 %133, label %134, label %142

134:                                              ; preds = %132
  %135 = add i8 %130, -45
  %136 = freeze i8 %135
  %137 = udiv i8 %136, 45
  %138 = mul i8 %137, 45
  %139 = sub i8 %136, %138
  %140 = add nuw nsw i8 %137, 1
  %141 = zext i8 %140 to i32
  br label %142

142:                                              ; preds = %134, %132
  %143 = phi i32 [ 0, %132 ], [ %141, %134 ]
  %144 = phi i8 [ %130, %132 ], [ %139, %134 ]
  %145 = shl nsw i32 -1, %143
  %146 = xor i32 %145, -1
  store i32 %146, ptr %16, align 4
  %147 = icmp ugt i8 %144, 8
  br i1 %147, label %148, label %156

148:                                              ; preds = %142
  %149 = add nsw i8 %144, -9
  %150 = freeze i8 %149
  %151 = udiv i8 %150, 9
  %152 = mul i8 %151, 9
  %153 = sub i8 %150, %152
  %154 = add nuw nsw i8 %151, 1
  %155 = zext i8 %154 to i32
  br label %156

156:                                              ; preds = %148, %142
  %157 = phi i32 [ 0, %142 ], [ %155, %148 ]
  %158 = phi i8 [ %144, %142 ], [ %153, %148 ]
  store i32 %157, ptr %17, align 4
  %159 = zext i8 %158 to i32
  store i32 %159, ptr %18, align 4
  %160 = add nuw nsw i32 %157, %159
  %161 = icmp ugt i32 %160, 4
  br i1 %161, label %407, label %162

162:                                              ; preds = %156
  %163 = shl nsw i32 -1, %157
  %164 = xor i32 %163, -1
  store i32 %164, ptr %17, align 4
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(24) %19, i8 0, i64 24, i1 false) #8
  br label %165

165:                                              ; preds = %165, %162
  %166 = phi i32 [ 0, %162 ], [ %168, %165 ]
  %167 = getelementptr i16, ptr %20, i32 %166
  store i16 1024, ptr %167, align 2
  %168 = add nuw nsw i32 %166, 1
  %169 = icmp eq i32 %168, 14134
  br i1 %169, label %170, label %165

170:                                              ; preds = %165
  store i32 -1, ptr %0, align 4
  store i32 0, ptr %21, align 4
  store i32 5, ptr %22, align 4
  store i32 6, ptr %5, align 4
  br label %171

171:                                              ; preds = %170, %41
  %172 = load i32, ptr %7, align 4
  %173 = icmp ult i32 %172, 5
  br i1 %173, label %407, label %174

174:                                              ; preds = %171
  %175 = load i32, ptr %22, align 4
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %195, label %177

177:                                              ; preds = %181, %174
  %178 = load i32, ptr %3, align 4
  %179 = load i32, ptr %4, align 4
  %180 = icmp eq i32 %178, %179
  br i1 %180, label %407, label %181

181:                                              ; preds = %177
  %182 = load i32, ptr %21, align 4
  %183 = shl i32 %182, 8
  %184 = load ptr, ptr %1, align 4
  %185 = add i32 %178, 1
  store i32 %185, ptr %3, align 4
  %186 = getelementptr i8, ptr %184, i32 %178
  %187 = load i8, ptr %186, align 1
  %188 = zext i8 %187 to i32
  %189 = or i32 %183, %188
  store i32 %189, ptr %21, align 4
  %190 = load i32, ptr %22, align 4
  %191 = add i32 %190, -1
  store i32 %191, ptr %22, align 4
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %177

193:                                              ; preds = %181
  %194 = load i32, ptr %7, align 4
  br label %195

195:                                              ; preds = %193, %174
  %196 = phi i32 [ %194, %193 ], [ %172, %174 ]
  %197 = add i32 %196, -5
  store i32 %197, ptr %7, align 4
  store i32 7, ptr %5, align 4
  br label %198

198:                                              ; preds = %195, %42
  %199 = phi i32 [ %43, %42 ], [ %197, %195 ]
  %200 = load i32, ptr %9, align 4
  %201 = load i32, ptr %8, align 4
  %202 = sub i32 %200, %201
  %203 = load i32, ptr %23, align 4
  %204 = tail call i32 @llvm.umin.i32(i32 %202, i32 %203)
  %205 = load i32, ptr %10, align 4
  %206 = load i32, ptr %11, align 4
  %207 = sub i32 %205, %206
  %208 = icmp ugt i32 %207, %204
  %209 = add i32 %206, %204
  %210 = select i1 %208, i32 %209, i32 %205
  store i32 %210, ptr %24, align 4
  %211 = load i32, ptr %4, align 4
  %212 = load i32, ptr %3, align 4
  %213 = sub i32 %211, %212
  %214 = load i32, ptr %25, align 4
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %216, label %218

216:                                              ; preds = %198
  %217 = icmp eq i32 %199, 0
  br i1 %217, label %218, label %266

218:                                              ; preds = %216, %198
  %219 = phi i32 [ 0, %216 ], [ %199, %198 ]
  %220 = sub i32 42, %214
  %221 = sub i32 %219, %214
  %222 = tail call i32 @llvm.umin.i32(i32 %220, i32 %221) #8
  %223 = tail call i32 @llvm.umin.i32(i32 %222, i32 %213) #8
  %224 = getelementptr i8, ptr %26, i32 %214
  %225 = load ptr, ptr %1, align 4
  %226 = getelementptr i8, ptr %225, i32 %212
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %224, ptr align 1 %226, i32 %223, i1 false) #8
  %227 = load i32, ptr %25, align 4
  %228 = add i32 %227, %223
  %229 = load i32, ptr %7, align 4
  %230 = icmp eq i32 %228, %229
  br i1 %230, label %231, label %237

231:                                              ; preds = %218
  %232 = getelementptr i8, ptr %26, i32 %227
  %233 = getelementptr i8, ptr %232, i32 %223
  %234 = sub i32 63, %228
  tail call void @llvm.memset.p0.i32(ptr align 1 %233, i8 0, i32 %234, i1 false) #8
  %235 = load i32, ptr %25, align 4
  %236 = add i32 %235, %223
  br label %244

237:                                              ; preds = %218
  %238 = icmp ult i32 %228, 21
  br i1 %238, label %239, label %242

239:                                              ; preds = %237
  store i32 %228, ptr %25, align 4
  %240 = load i32, ptr %3, align 4
  %241 = add i32 %240, %223
  store i32 %241, ptr %3, align 4
  br label %301

242:                                              ; preds = %237
  %243 = add i32 %228, -21
  br label %244

244:                                              ; preds = %242, %231
  %245 = phi i32 [ %243, %242 ], [ %236, %231 ]
  store i32 %245, ptr %27, align 4
  store ptr %26, ptr %28, align 4
  store i32 0, ptr %29, align 4
  %246 = tail call fastcc zeroext i1 @lzma_main(ptr noundef %0) #8
  br i1 %246, label %247, label %407

247:                                              ; preds = %244
  %248 = load i32, ptr %29, align 4
  %249 = load i32, ptr %25, align 4
  %250 = add i32 %249, %223
  %251 = icmp ugt i32 %248, %250
  br i1 %251, label %407, label %252

252:                                              ; preds = %247
  %253 = load i32, ptr %7, align 4
  %254 = sub i32 %253, %248
  store i32 %254, ptr %7, align 4
  %255 = icmp ugt i32 %249, %248
  br i1 %255, label %256, label %259

256:                                              ; preds = %252
  %257 = sub i32 %249, %248
  store i32 %257, ptr %25, align 4
  %258 = getelementptr i8, ptr %26, i32 %248
  tail call void @llvm.memmove.p0.p0.i32(ptr align 4 %26, ptr align 1 %258, i32 %257, i1 false) #8
  br label %301

259:                                              ; preds = %252
  %260 = sub i32 %248, %249
  %261 = load i32, ptr %3, align 4
  %262 = add i32 %260, %261
  store i32 %262, ptr %3, align 4
  store i32 0, ptr %25, align 4
  %263 = load i32, ptr %4, align 4
  %264 = load i32, ptr %3, align 4
  %265 = sub i32 %263, %264
  br label %266

266:                                              ; preds = %259, %216
  %267 = phi i32 [ %265, %259 ], [ %213, %216 ]
  %268 = phi i32 [ %264, %259 ], [ %212, %216 ]
  %269 = icmp ugt i32 %267, 20
  br i1 %269, label %270, label %292

270:                                              ; preds = %266
  %271 = load ptr, ptr %1, align 4
  store ptr %271, ptr %28, align 4
  %272 = load i32, ptr %3, align 4
  store i32 %272, ptr %29, align 4
  %273 = load i32, ptr %7, align 4
  %274 = add i32 %273, 21
  %275 = icmp ult i32 %267, %274
  %276 = select i1 %275, ptr %4, ptr %3
  %277 = select i1 %275, i32 -21, i32 %273
  %278 = load i32, ptr %276, align 4
  %279 = add i32 %277, %278
  store i32 %279, ptr %27, align 4
  %280 = tail call fastcc zeroext i1 @lzma_main(ptr noundef %0) #8
  br i1 %280, label %281, label %407

281:                                              ; preds = %270
  %282 = load i32, ptr %29, align 4
  %283 = load i32, ptr %3, align 4
  %284 = sub i32 %282, %283
  %285 = load i32, ptr %7, align 4
  %286 = icmp ult i32 %285, %284
  br i1 %286, label %407, label %287

287:                                              ; preds = %281
  %288 = sub i32 %285, %284
  store i32 %288, ptr %7, align 4
  store i32 %282, ptr %3, align 4
  %289 = load i32, ptr %4, align 4
  %290 = sub i32 %289, %282
  %291 = icmp ult i32 %290, 21
  br i1 %291, label %292, label %301

292:                                              ; preds = %287, %266
  %293 = phi i32 [ %282, %287 ], [ %268, %266 ]
  %294 = phi i32 [ %290, %287 ], [ %267, %266 ]
  %295 = load i32, ptr %7, align 4
  %296 = tail call i32 @llvm.umin.i32(i32 %294, i32 %295) #8
  %297 = load ptr, ptr %1, align 4
  %298 = getelementptr i8, ptr %297, i32 %293
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %26, ptr align 1 %298, i32 %296, i1 false) #8
  store i32 %296, ptr %25, align 4
  %299 = load i32, ptr %3, align 4
  %300 = add i32 %299, %296
  store i32 %300, ptr %3, align 4
  br label %301

301:                                              ; preds = %292, %287, %256, %239
  %302 = load i32, ptr %11, align 4
  %303 = load i32, ptr %15, align 4
  %304 = sub i32 %302, %303
  %305 = load i32, ptr %13, align 4
  %306 = icmp eq i32 %305, 0
  br i1 %306, label %318, label %307

307:                                              ; preds = %301
  %308 = load i32, ptr %10, align 4
  %309 = icmp eq i32 %302, %308
  br i1 %309, label %310, label %311

310:                                              ; preds = %307
  store i32 0, ptr %11, align 4
  br label %311

311:                                              ; preds = %310, %307
  %312 = load ptr, ptr %14, align 4
  %313 = load i32, ptr %8, align 4
  %314 = getelementptr i8, ptr %312, i32 %313
  %315 = load ptr, ptr %6, align 4
  %316 = getelementptr i8, ptr %315, i32 %303
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %314, ptr align 1 %316, i32 %304, i1 false) #8
  %317 = load i32, ptr %11, align 4
  br label %318

318:                                              ; preds = %311, %301
  %319 = phi i32 [ %317, %311 ], [ %302, %301 ]
  store i32 %319, ptr %15, align 4
  %320 = load i32, ptr %8, align 4
  %321 = add i32 %320, %304
  store i32 %321, ptr %8, align 4
  %322 = load i32, ptr %23, align 4
  %323 = sub i32 %322, %304
  store i32 %323, ptr %23, align 4
  %324 = icmp eq i32 %322, %304
  br i1 %324, label %325, label %336

325:                                              ; preds = %318
  %326 = load i32, ptr %7, align 4
  %327 = icmp eq i32 %326, 0
  br i1 %327, label %328, label %407

328:                                              ; preds = %325
  %329 = load i32, ptr %30, align 4
  %330 = icmp eq i32 %329, 0
  br i1 %330, label %331, label %407

331:                                              ; preds = %328
  %332 = load i32, ptr %21, align 4
  %333 = icmp eq i32 %332, 0
  br i1 %333, label %334, label %407

334:                                              ; preds = %331
  store i32 -1, ptr %0, align 4
  store i32 0, ptr %21, align 4
  store i32 5, ptr %22, align 4
  store i32 0, ptr %5, align 4
  br label %335

335:                                              ; preds = %406, %344, %340, %334, %116, %109, %100, %91, %90, %87, %79, %75, %41
  br label %34

336:                                              ; preds = %318
  %337 = load i32, ptr %8, align 4
  %338 = load i32, ptr %9, align 4
  %339 = icmp eq i32 %337, %338
  br i1 %339, label %407, label %340

340:                                              ; preds = %336
  %341 = load i32, ptr %3, align 4
  %342 = load i32, ptr %4, align 4
  %343 = icmp eq i32 %341, %342
  br i1 %343, label %344, label %335

344:                                              ; preds = %340
  %345 = load i32, ptr %25, align 4
  %346 = load i32, ptr %7, align 4
  %347 = icmp ult i32 %345, %346
  br i1 %347, label %407, label %335

348:                                              ; preds = %41
  %349 = load i32, ptr %7, align 4
  %350 = icmp eq i32 %349, 0
  br i1 %350, label %406, label %351

351:                                              ; preds = %348
  %352 = icmp ugt i32 %36, %35
  br i1 %352, label %353, label %407

353:                                              ; preds = %403, %351
  %354 = phi i32 [ %401, %403 ], [ %349, %351 ]
  %355 = phi i32 [ %400, %403 ], [ %35, %351 ]
  %356 = phi i32 [ %404, %403 ], [ %36, %351 ]
  %357 = load i32, ptr %8, align 4
  %358 = load i32, ptr %9, align 4
  %359 = icmp ugt i32 %358, %357
  br i1 %359, label %360, label %407

360:                                              ; preds = %353
  %361 = sub i32 %356, %355
  %362 = sub i32 %358, %357
  %363 = tail call i32 @llvm.umin.i32(i32 %361, i32 %362) #8
  %364 = load i32, ptr %10, align 4
  %365 = load i32, ptr %11, align 4
  %366 = sub i32 %364, %365
  %367 = tail call i32 @llvm.umin.i32(i32 %363, i32 %366) #8
  %368 = tail call i32 @llvm.umin.i32(i32 %367, i32 %354) #8
  %369 = sub i32 %354, %368
  store i32 %369, ptr %7, align 4
  %370 = load ptr, ptr %6, align 4
  %371 = getelementptr i8, ptr %370, i32 %365
  %372 = load ptr, ptr %1, align 4
  %373 = load i32, ptr %3, align 4
  %374 = getelementptr i8, ptr %372, i32 %373
  tail call void @llvm.memmove.p0.p0.i32(ptr align 1 %371, ptr align 1 %374, i32 %368, i1 false) #8
  %375 = load i32, ptr %11, align 4
  %376 = add i32 %375, %368
  store i32 %376, ptr %11, align 4
  %377 = load i32, ptr %12, align 4
  %378 = icmp ult i32 %377, %376
  br i1 %378, label %379, label %380

379:                                              ; preds = %360
  store i32 %376, ptr %12, align 4
  br label %380

380:                                              ; preds = %379, %360
  %381 = load i32, ptr %13, align 4
  %382 = icmp eq i32 %381, 0
  br i1 %382, label %395, label %383

383:                                              ; preds = %380
  %384 = load i32, ptr %10, align 4
  %385 = icmp eq i32 %376, %384
  br i1 %385, label %386, label %387

386:                                              ; preds = %383
  store i32 0, ptr %11, align 4
  br label %387

387:                                              ; preds = %386, %383
  %388 = load ptr, ptr %14, align 4
  %389 = load i32, ptr %8, align 4
  %390 = getelementptr i8, ptr %388, i32 %389
  %391 = load ptr, ptr %1, align 4
  %392 = load i32, ptr %3, align 4
  %393 = getelementptr i8, ptr %391, i32 %392
  tail call void @llvm.memmove.p0.p0.i32(ptr align 1 %390, ptr align 1 %393, i32 %368, i1 false) #8
  %394 = load i32, ptr %11, align 4
  br label %395

395:                                              ; preds = %387, %380
  %396 = phi i32 [ %394, %387 ], [ %376, %380 ]
  store i32 %396, ptr %15, align 4
  %397 = load i32, ptr %8, align 4
  %398 = add i32 %397, %368
  store i32 %398, ptr %8, align 4
  %399 = load i32, ptr %3, align 4
  %400 = add i32 %399, %368
  store i32 %400, ptr %3, align 4
  %401 = load i32, ptr %7, align 4
  %402 = icmp eq i32 %401, 0
  br i1 %402, label %406, label %403

403:                                              ; preds = %395
  %404 = load i32, ptr %4, align 4
  %405 = icmp ugt i32 %404, %400
  br i1 %405, label %353, label %407

406:                                              ; preds = %395, %348
  store i32 0, ptr %5, align 4
  br label %335

407:                                              ; preds = %403, %353, %351, %344, %336, %331, %328, %325, %281, %270, %247, %244, %177, %171, %156, %126, %88, %76, %66, %44, %39
  %408 = phi i32 [ 0, %177 ], [ 0, %403 ], [ 0, %353 ], [ 7, %156 ], [ 7, %126 ], [ 7, %281 ], [ 7, %270 ], [ 7, %247 ], [ 7, %244 ], [ 0, %39 ], [ 0, %336 ], [ 0, %344 ], [ 7, %325 ], [ 7, %328 ], [ 7, %331 ], [ 7, %171 ], [ 7, %88 ], [ 7, %76 ], [ 7, %66 ], [ 1, %44 ], [ 0, %351 ]
  ret i32 %408
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @xz_dec_lzma2_create(i32 noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 28456, i32 noundef 3264, i32 noundef 3) #9
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %3, i32 0, i32 1
  %7 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %3, i32 0, i32 1, i32 9
  store i32 %0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %3, i32 0, i32 1, i32 7
  store i32 %1, ptr %8, align 4
  switch i32 %0, label %15 [
    i32 1, label %9
    i32 2, label %13
  ]

9:                                                ; preds = %5
  %10 = tail call noalias ptr @vmalloc(i32 noundef %1) #9
  store ptr %10, ptr %6, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  tail call void @kfree(ptr noundef nonnull %3) #8
  br label %15

13:                                               ; preds = %5
  store ptr null, ptr %6, align 8
  %14 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %3, i32 0, i32 1, i32 8
  store i32 0, ptr %14, align 8
  br label %15

15:                                               ; preds = %13, %12, %9, %5, %2
  %16 = phi ptr [ null, %12 ], [ null, %2 ], [ %3, %5 ], [ %3, %13 ], [ %3, %9 ]
  ret ptr %16
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xz_dec_lzma2_reset(ptr nocapture noundef %0, i8 noundef zeroext %1) local_unnamed_addr #1 {
  %3 = icmp ugt i8 %1, 39
  br i1 %3, label %39, label %4

4:                                                ; preds = %2
  %5 = zext i8 %1 to i32
  %6 = and i32 %5, 1
  %7 = or i32 %6, 2
  %8 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %0, i32 0, i32 1
  %9 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %0, i32 0, i32 1, i32 6
  %10 = lshr i32 %5, 1
  %11 = add nuw nsw i32 %10, 11
  %12 = shl i32 %7, %11
  store i32 %12, ptr %9, align 4
  %13 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %0, i32 0, i32 1, i32 9
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %32, label %16

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %0, i32 0, i32 1, i32 7
  %18 = load i32, ptr %17, align 4
  %19 = icmp ugt i32 %12, %18
  br i1 %19, label %39, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %0, i32 0, i32 1, i32 5
  store i32 %12, ptr %21, align 4
  %22 = icmp eq i32 %14, 2
  br i1 %22, label %23, label %32

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %0, i32 0, i32 1, i32 8
  %25 = load i32, ptr %24, align 4
  %26 = icmp ult i32 %25, %12
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  store i32 %12, ptr %24, align 4
  %28 = load ptr, ptr %8, align 4
  tail call void @vfree(ptr noundef %28) #8
  %29 = load i32, ptr %9, align 4
  %30 = tail call noalias ptr @vmalloc(i32 noundef %29) #9
  store ptr %30, ptr %8, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %27, %23, %20, %4
  %33 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %0, i32 0, i32 2
  store i32 0, ptr %33, align 4
  %34 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %0, i32 0, i32 2, i32 4
  store i8 1, ptr %34, align 4
  %35 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %0, i32 0, i32 4
  br label %36

36:                                               ; preds = %32, %27
  %37 = phi ptr [ %35, %32 ], [ %24, %27 ]
  %38 = phi i32 [ 0, %32 ], [ 3, %27 ]
  store i32 0, ptr %37, align 4
  br label %39

39:                                               ; preds = %36, %16, %2
  %40 = phi i32 [ 6, %2 ], [ 4, %16 ], [ %38, %36 ]
  ret i32 %40
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xz_dec_lzma2_end(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %0, i32 0, i32 1, i32 9
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  tail call void @vfree(ptr noundef %7) #8
  br label %8

8:                                                ; preds = %5, %1
  tail call void @kfree(ptr noundef %0) #8
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @lzma_main(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %0, i32 0, i32 1
  %3 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %0, i32 0, i32 1, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %0, i32 0, i32 1, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = icmp ugt i32 %6, %4
  br i1 %7, label %8, label %63

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %0, i32 0, i32 3, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %63, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %0, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %0, i32 0, i32 1, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = icmp ugt i32 %16, %14
  br i1 %17, label %18, label %63

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %0, i32 0, i32 1, i32 6
  %20 = load i32, ptr %19, align 4
  %21 = icmp ugt i32 %20, %14
  br i1 %21, label %22, label %63

22:                                               ; preds = %18
  %23 = sub i32 %6, %4
  %24 = tail call i32 @llvm.umin.i32(i32 %23, i32 %10) #8
  %25 = sub i32 %10, %24
  store i32 %25, ptr %9, align 4
  %26 = xor i32 %14, -1
  %27 = add i32 %4, %26
  %28 = icmp ugt i32 %4, %14
  br i1 %28, label %33, label %29

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %0, i32 0, i32 1, i32 5
  %31 = load i32, ptr %30, align 4
  %32 = add i32 %31, %27
  br label %33

33:                                               ; preds = %29, %22
  %34 = phi i32 [ %32, %29 ], [ %27, %22 ]
  %35 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %0, i32 0, i32 1, i32 5
  %36 = load ptr, ptr %2, align 4
  %37 = getelementptr i8, ptr %36, i32 %34
  %38 = load i8, ptr %37, align 1
  %39 = add nuw i32 %4, 1
  store i32 %39, ptr %3, align 4
  %40 = getelementptr i8, ptr %36, i32 %4
  store i8 %38, ptr %40, align 1
  %41 = add i32 %24, -1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %58, label %43

43:                                               ; preds = %43, %33
  %44 = phi i32 [ %56, %43 ], [ %41, %33 ]
  %45 = phi i32 [ %49, %43 ], [ %34, %33 ]
  %46 = add i32 %45, 1
  %47 = load i32, ptr %35, align 4
  %48 = icmp eq i32 %46, %47
  %49 = select i1 %48, i32 0, i32 %46
  %50 = load i32, ptr %3, align 4
  %51 = load ptr, ptr %2, align 4
  %52 = getelementptr i8, ptr %51, i32 %49
  %53 = load i8, ptr %52, align 1
  %54 = add i32 %50, 1
  store i32 %54, ptr %3, align 4
  %55 = getelementptr i8, ptr %51, i32 %50
  store i8 %53, ptr %55, align 1
  %56 = add i32 %44, -1
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %43

58:                                               ; preds = %43, %33
  %59 = load i32, ptr %15, align 4
  %60 = load i32, ptr %3, align 4
  %61 = icmp ult i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  store i32 %60, ptr %15, align 4
  br label %63

63:                                               ; preds = %62, %58, %18, %12, %8, %1
  %64 = phi i32 [ %60, %62 ], [ %60, %58 ], [ %4, %18 ], [ %4, %12 ], [ %4, %8 ], [ %4, %1 ]
  %65 = load i32, ptr %5, align 4
  %66 = icmp ult i32 %64, %65
  br i1 %66, label %67, label %868

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.rc_dec, ptr %0, i32 0, i32 4
  %69 = getelementptr inbounds %struct.rc_dec, ptr %0, i32 0, i32 5
  %70 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %0, i32 0, i32 3
  %71 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %0, i32 0, i32 3, i32 8
  %72 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %0, i32 0, i32 3, i32 4
  %73 = getelementptr inbounds %struct.rc_dec, ptr %0, i32 0, i32 1
  %74 = getelementptr inbounds %struct.rc_dec, ptr %0, i32 0, i32 3
  %75 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %0, i32 0, i32 3, i32 3
  %76 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %0, i32 0, i32 3, i32 2
  %77 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %0, i32 0, i32 3, i32 1
  %78 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %0, i32 0, i32 3, i32 19
  %79 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %0, i32 0, i32 3, i32 5
  %80 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %0, i32 0, i32 3, i32 18
  %81 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %0, i32 0, i32 3, i32 17
  %82 = getelementptr %struct.xz_dec_lzma2, ptr %0, i32 0, i32 3, i32 17, i32 1
  %83 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %0, i32 0, i32 1, i32 3
  %84 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %0, i32 0, i32 1, i32 6
  %85 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %0, i32 0, i32 1, i32 5
  %86 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %0, i32 0, i32 3, i32 6
  %87 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %0, i32 0, i32 3, i32 7
  %88 = getelementptr %struct.xz_dec_lzma2, ptr %0, i32 0, i32 3, i32 15, i32 3, i32 63
  br label %89

89:                                               ; preds = %864, %67
  %90 = phi i32 [ %64, %67 ], [ %865, %864 ]
  %91 = load i32, ptr %68, align 4
  %92 = load i32, ptr %69, align 4
  %93 = icmp ugt i32 %91, %92
  br i1 %93, label %868, label %94

94:                                               ; preds = %89
  %95 = load i32, ptr %71, align 4
  %96 = and i32 %95, %90
  %97 = load i32, ptr %72, align 4
  %98 = getelementptr %struct.xz_dec_lzma2, ptr %0, i32 0, i32 3, i32 9, i32 %97, i32 %96
  %99 = load i32, ptr %0, align 4
  %100 = icmp ult i32 %99, 16777216
  br i1 %100, label %103, label %101

101:                                              ; preds = %94
  %102 = load i32, ptr %73, align 4
  br label %113

103:                                              ; preds = %94
  %104 = shl nuw i32 %99, 8
  store i32 %104, ptr %0, align 4
  %105 = load i32, ptr %73, align 4
  %106 = shl i32 %105, 8
  %107 = load ptr, ptr %74, align 4
  %108 = add i32 %91, 1
  store i32 %108, ptr %68, align 4
  %109 = getelementptr i8, ptr %107, i32 %91
  %110 = load i8, ptr %109, align 1
  %111 = zext i8 %110 to i32
  %112 = or i32 %106, %111
  store i32 %112, ptr %73, align 4
  br label %113

113:                                              ; preds = %103, %101
  %114 = phi i32 [ %102, %101 ], [ %112, %103 ]
  %115 = phi i32 [ %99, %101 ], [ %104, %103 ]
  %116 = lshr i32 %115, 11
  %117 = load i16, ptr %98, align 2
  %118 = zext i16 %117 to i32
  %119 = mul i32 %116, %118
  %120 = icmp ult i32 %114, %119
  br i1 %120, label %121, label %293

121:                                              ; preds = %113
  store i32 %119, ptr %0, align 4
  %122 = load i16, ptr %98, align 2
  %123 = zext i16 %122 to i32
  %124 = sub nsw i32 2048, %123
  %125 = ashr i32 %124, 5
  %126 = trunc i32 %125 to i16
  %127 = add i16 %122, %126
  store i16 %127, ptr %98, align 2
  %128 = load i32, ptr %3, align 4
  %129 = add i32 %128, -1
  %130 = icmp eq i32 %128, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %121
  %132 = load i32, ptr %85, align 4
  %133 = add i32 %132, %129
  br label %134

134:                                              ; preds = %131, %121
  %135 = phi i32 [ %133, %131 ], [ %129, %121 ]
  %136 = load i32, ptr %83, align 4
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %143, label %138

138:                                              ; preds = %134
  %139 = load ptr, ptr %2, align 4
  %140 = getelementptr i8, ptr %139, i32 %135
  %141 = load i8, ptr %140, align 1
  %142 = zext i8 %141 to i32
  br label %143

143:                                              ; preds = %138, %134
  %144 = phi i32 [ %142, %138 ], [ 0, %134 ]
  %145 = load i32, ptr %86, align 4
  %146 = sub i32 8, %145
  %147 = lshr i32 %144, %146
  %148 = load i32, ptr %87, align 4
  %149 = and i32 %148, %128
  %150 = shl i32 %149, %145
  %151 = add i32 %150, %147
  %152 = getelementptr %struct.xz_dec_lzma2, ptr %0, i32 0, i32 3, i32 20, i32 %151
  %153 = load i32, ptr %72, align 4
  %154 = icmp ult i32 %153, 7
  br i1 %154, label %155, label %200

155:                                              ; preds = %197, %143
  %156 = phi i32 [ %198, %197 ], [ 1, %143 ]
  %157 = getelementptr i16, ptr %152, i32 %156
  %158 = load i32, ptr %0, align 4
  %159 = icmp ult i32 %158, 16777216
  br i1 %159, label %162, label %160

160:                                              ; preds = %155
  %161 = load i32, ptr %73, align 4
  br label %173

162:                                              ; preds = %155
  %163 = shl nuw i32 %158, 8
  store i32 %163, ptr %0, align 4
  %164 = load i32, ptr %73, align 4
  %165 = shl i32 %164, 8
  %166 = load ptr, ptr %74, align 4
  %167 = load i32, ptr %68, align 4
  %168 = add i32 %167, 1
  store i32 %168, ptr %68, align 4
  %169 = getelementptr i8, ptr %166, i32 %167
  %170 = load i8, ptr %169, align 1
  %171 = zext i8 %170 to i32
  %172 = or i32 %165, %171
  store i32 %172, ptr %73, align 4
  br label %173

173:                                              ; preds = %162, %160
  %174 = phi i32 [ %161, %160 ], [ %172, %162 ]
  %175 = phi i32 [ %158, %160 ], [ %163, %162 ]
  %176 = lshr i32 %175, 11
  %177 = load i16, ptr %157, align 2
  %178 = zext i16 %177 to i32
  %179 = mul i32 %176, %178
  %180 = icmp ult i32 %174, %179
  br i1 %180, label %189, label %181

181:                                              ; preds = %173
  %182 = sub i32 %175, %179
  store i32 %182, ptr %0, align 4
  %183 = sub i32 %174, %179
  store i32 %183, ptr %73, align 4
  %184 = load i16, ptr %157, align 2
  %185 = lshr i16 %184, 5
  %186 = sub i16 %184, %185
  store i16 %186, ptr %157, align 2
  %187 = shl nuw nsw i32 %156, 1
  %188 = or i32 %187, 1
  br label %197

189:                                              ; preds = %173
  store i32 %179, ptr %0, align 4
  %190 = load i16, ptr %157, align 2
  %191 = zext i16 %190 to i32
  %192 = sub nsw i32 2048, %191
  %193 = ashr i32 %192, 5
  %194 = trunc i32 %193 to i16
  %195 = add i16 %190, %194
  store i16 %195, ptr %157, align 2
  %196 = shl nuw nsw i32 %156, 1
  br label %197

197:                                              ; preds = %189, %181
  %198 = phi i32 [ %196, %189 ], [ %188, %181 ]
  %199 = icmp ult i32 %198, 256
  br i1 %199, label %155, label %271

200:                                              ; preds = %143
  %201 = load i32, ptr %70, align 4
  %202 = xor i32 %201, -1
  %203 = add i32 %128, %202
  %204 = icmp ugt i32 %128, %201
  br i1 %204, label %208, label %205

205:                                              ; preds = %200
  %206 = load i32, ptr %85, align 4
  %207 = add i32 %206, %203
  br label %208

208:                                              ; preds = %205, %200
  %209 = phi i32 [ %207, %205 ], [ %203, %200 ]
  br i1 %137, label %215, label %210

210:                                              ; preds = %208
  %211 = load ptr, ptr %2, align 4
  %212 = getelementptr i8, ptr %211, i32 %209
  %213 = load i8, ptr %212, align 1
  %214 = zext i8 %213 to i32
  br label %215

215:                                              ; preds = %210, %208
  %216 = phi i32 [ 0, %208 ], [ %214, %210 ]
  br label %217

217:                                              ; preds = %262, %215
  %218 = phi i32 [ %268, %262 ], [ 1, %215 ]
  %219 = phi i32 [ %221, %262 ], [ %216, %215 ]
  %220 = phi i32 [ %269, %262 ], [ 256, %215 ]
  %221 = shl i32 %219, 1
  %222 = and i32 %221, %220
  %223 = add i32 %220, %218
  %224 = add i32 %223, %222
  %225 = getelementptr i16, ptr %152, i32 %224
  %226 = load i32, ptr %0, align 4
  %227 = icmp ult i32 %226, 16777216
  br i1 %227, label %230, label %228

228:                                              ; preds = %217
  %229 = load i32, ptr %73, align 4
  br label %241

230:                                              ; preds = %217
  %231 = shl nuw i32 %226, 8
  store i32 %231, ptr %0, align 4
  %232 = load i32, ptr %73, align 4
  %233 = shl i32 %232, 8
  %234 = load ptr, ptr %74, align 4
  %235 = load i32, ptr %68, align 4
  %236 = add i32 %235, 1
  store i32 %236, ptr %68, align 4
  %237 = getelementptr i8, ptr %234, i32 %235
  %238 = load i8, ptr %237, align 1
  %239 = zext i8 %238 to i32
  %240 = or i32 %233, %239
  store i32 %240, ptr %73, align 4
  br label %241

241:                                              ; preds = %230, %228
  %242 = phi i32 [ %229, %228 ], [ %240, %230 ]
  %243 = phi i32 [ %226, %228 ], [ %231, %230 ]
  %244 = lshr i32 %243, 11
  %245 = load i16, ptr %225, align 2
  %246 = zext i16 %245 to i32
  %247 = mul i32 %244, %246
  %248 = icmp ult i32 %242, %247
  br i1 %248, label %249, label %256

249:                                              ; preds = %241
  store i32 %247, ptr %0, align 4
  %250 = load i16, ptr %225, align 2
  %251 = zext i16 %250 to i32
  %252 = sub nsw i32 2048, %251
  %253 = ashr i32 %252, 5
  %254 = trunc i32 %253 to i16
  %255 = add i16 %250, %254
  br label %262

256:                                              ; preds = %241
  %257 = sub i32 %243, %247
  store i32 %257, ptr %0, align 4
  %258 = sub i32 %242, %247
  store i32 %258, ptr %73, align 4
  %259 = load i16, ptr %225, align 2
  %260 = lshr i16 %259, 5
  %261 = sub i16 %259, %260
  br label %262

262:                                              ; preds = %256, %249
  %263 = phi i32 [ %220, %249 ], [ 0, %256 ]
  %264 = phi i16 [ %255, %249 ], [ %261, %256 ]
  store i16 %264, ptr %225, align 2
  %265 = shl nuw nsw i32 %218, 1
  %266 = xor i1 %248, true
  %267 = zext i1 %266 to i32
  %268 = or i32 %265, %267
  %269 = xor i32 %263, %222
  %270 = icmp ult i32 %268, 256
  br i1 %270, label %217, label %271

271:                                              ; preds = %262, %197
  %272 = phi i32 [ %198, %197 ], [ %268, %262 ]
  %273 = trunc i32 %272 to i8
  %274 = load ptr, ptr %2, align 4
  %275 = load i32, ptr %3, align 4
  %276 = add i32 %275, 1
  store i32 %276, ptr %3, align 4
  %277 = getelementptr i8, ptr %274, i32 %275
  store i8 %273, ptr %277, align 1
  %278 = load i32, ptr %83, align 4
  %279 = load i32, ptr %3, align 4
  %280 = icmp ult i32 %278, %279
  br i1 %280, label %281, label %282

281:                                              ; preds = %271
  store i32 %279, ptr %83, align 4
  br label %282

282:                                              ; preds = %281, %271
  %283 = load i32, ptr %72, align 4
  %284 = icmp ult i32 %283, 4
  br i1 %284, label %291, label %285

285:                                              ; preds = %282
  %286 = icmp ult i32 %283, 10
  br i1 %286, label %287, label %289

287:                                              ; preds = %285
  %288 = add nsw i32 %283, -3
  br label %291

289:                                              ; preds = %285
  %290 = add i32 %283, -6
  br label %291

291:                                              ; preds = %289, %287, %282
  %292 = phi i32 [ %288, %287 ], [ %290, %289 ], [ 0, %282 ]
  store i32 %292, ptr %72, align 4
  br label %864

293:                                              ; preds = %113
  %294 = sub i32 %115, %119
  store i32 %294, ptr %0, align 4
  %295 = sub i32 %114, %119
  store i32 %295, ptr %73, align 4
  %296 = load i16, ptr %98, align 2
  %297 = lshr i16 %296, 5
  %298 = sub i16 %296, %297
  store i16 %298, ptr %98, align 2
  %299 = load i32, ptr %72, align 4
  %300 = getelementptr %struct.xz_dec_lzma2, ptr %0, i32 0, i32 3, i32 10, i32 %299
  %301 = load i32, ptr %0, align 4
  %302 = icmp ult i32 %301, 16777216
  br i1 %302, label %305, label %303

303:                                              ; preds = %293
  %304 = load i32, ptr %73, align 4
  br label %316

305:                                              ; preds = %293
  %306 = shl nuw i32 %301, 8
  store i32 %306, ptr %0, align 4
  %307 = load i32, ptr %73, align 4
  %308 = shl i32 %307, 8
  %309 = load ptr, ptr %74, align 4
  %310 = load i32, ptr %68, align 4
  %311 = add i32 %310, 1
  store i32 %311, ptr %68, align 4
  %312 = getelementptr i8, ptr %309, i32 %310
  %313 = load i8, ptr %312, align 1
  %314 = zext i8 %313 to i32
  %315 = or i32 %308, %314
  store i32 %315, ptr %73, align 4
  br label %316

316:                                              ; preds = %305, %303
  %317 = phi i32 [ %304, %303 ], [ %315, %305 ]
  %318 = phi i32 [ %301, %303 ], [ %306, %305 ]
  %319 = lshr i32 %318, 11
  %320 = load i16, ptr %300, align 2
  %321 = zext i16 %320 to i32
  %322 = mul i32 %319, %321
  %323 = icmp ult i32 %317, %322
  br i1 %323, label %499, label %324

324:                                              ; preds = %316
  %325 = sub i32 %318, %322
  store i32 %325, ptr %0, align 4
  %326 = sub i32 %317, %322
  store i32 %326, ptr %73, align 4
  %327 = load i16, ptr %300, align 2
  %328 = lshr i16 %327, 5
  %329 = sub i16 %327, %328
  store i16 %329, ptr %300, align 2
  %330 = load i32, ptr %72, align 4
  %331 = getelementptr %struct.xz_dec_lzma2, ptr %0, i32 0, i32 3, i32 11, i32 %330
  %332 = load i32, ptr %0, align 4
  %333 = icmp ult i32 %332, 16777216
  br i1 %333, label %336, label %334

334:                                              ; preds = %324
  %335 = load i32, ptr %73, align 4
  br label %347

336:                                              ; preds = %324
  %337 = shl nuw i32 %332, 8
  store i32 %337, ptr %0, align 4
  %338 = load i32, ptr %73, align 4
  %339 = shl i32 %338, 8
  %340 = load ptr, ptr %74, align 4
  %341 = load i32, ptr %68, align 4
  %342 = add i32 %341, 1
  store i32 %342, ptr %68, align 4
  %343 = getelementptr i8, ptr %340, i32 %341
  %344 = load i8, ptr %343, align 1
  %345 = zext i8 %344 to i32
  %346 = or i32 %339, %345
  store i32 %346, ptr %73, align 4
  br label %347

347:                                              ; preds = %336, %334
  %348 = phi i32 [ %335, %334 ], [ %346, %336 ]
  %349 = phi i32 [ %332, %334 ], [ %337, %336 ]
  %350 = lshr i32 %349, 11
  %351 = load i16, ptr %331, align 2
  %352 = zext i16 %351 to i32
  %353 = mul i32 %350, %352
  %354 = icmp ult i32 %348, %353
  br i1 %354, label %355, label %403

355:                                              ; preds = %347
  store i32 %353, ptr %0, align 4
  %356 = load i16, ptr %331, align 2
  %357 = zext i16 %356 to i32
  %358 = sub nsw i32 2048, %357
  %359 = ashr i32 %358, 5
  %360 = trunc i32 %359 to i16
  %361 = add i16 %356, %360
  store i16 %361, ptr %331, align 2
  %362 = load i32, ptr %72, align 4
  %363 = getelementptr %struct.xz_dec_lzma2, ptr %0, i32 0, i32 3, i32 14, i32 %362, i32 %96
  %364 = load i32, ptr %0, align 4
  %365 = icmp ult i32 %364, 16777216
  br i1 %365, label %368, label %366

366:                                              ; preds = %355
  %367 = load i32, ptr %73, align 4
  br label %379

368:                                              ; preds = %355
  %369 = shl nuw i32 %364, 8
  store i32 %369, ptr %0, align 4
  %370 = load i32, ptr %73, align 4
  %371 = shl i32 %370, 8
  %372 = load ptr, ptr %74, align 4
  %373 = load i32, ptr %68, align 4
  %374 = add i32 %373, 1
  store i32 %374, ptr %68, align 4
  %375 = getelementptr i8, ptr %372, i32 %373
  %376 = load i8, ptr %375, align 1
  %377 = zext i8 %376 to i32
  %378 = or i32 %371, %377
  store i32 %378, ptr %73, align 4
  br label %379

379:                                              ; preds = %368, %366
  %380 = phi i32 [ %367, %366 ], [ %378, %368 ]
  %381 = phi i32 [ %364, %366 ], [ %369, %368 ]
  %382 = lshr i32 %381, 11
  %383 = load i16, ptr %363, align 2
  %384 = zext i16 %383 to i32
  %385 = mul i32 %382, %384
  %386 = icmp ult i32 %380, %385
  br i1 %386, label %393, label %387

387:                                              ; preds = %379
  %388 = sub i32 %381, %385
  store i32 %388, ptr %0, align 4
  %389 = sub i32 %380, %385
  store i32 %389, ptr %73, align 4
  %390 = load i16, ptr %363, align 2
  %391 = lshr i16 %390, 5
  %392 = sub i16 %390, %391
  store i16 %392, ptr %363, align 2
  br label %495

393:                                              ; preds = %379
  store i32 %385, ptr %0, align 4
  %394 = load i16, ptr %363, align 2
  %395 = zext i16 %394 to i32
  %396 = sub nsw i32 2048, %395
  %397 = ashr i32 %396, 5
  %398 = trunc i32 %397 to i16
  %399 = add i16 %394, %398
  store i16 %399, ptr %363, align 2
  %400 = load i32, ptr %72, align 4
  %401 = icmp ult i32 %400, 7
  %402 = select i1 %401, i32 9, i32 11
  store i32 %402, ptr %72, align 4
  store i32 1, ptr %79, align 4
  br label %815

403:                                              ; preds = %347
  %404 = sub i32 %349, %353
  store i32 %404, ptr %0, align 4
  %405 = sub i32 %348, %353
  store i32 %405, ptr %73, align 4
  %406 = load i16, ptr %331, align 2
  %407 = lshr i16 %406, 5
  %408 = sub i16 %406, %407
  store i16 %408, ptr %331, align 2
  %409 = load i32, ptr %72, align 4
  %410 = getelementptr %struct.xz_dec_lzma2, ptr %0, i32 0, i32 3, i32 12, i32 %409
  %411 = load i32, ptr %0, align 4
  %412 = icmp ult i32 %411, 16777216
  br i1 %412, label %415, label %413

413:                                              ; preds = %403
  %414 = load i32, ptr %73, align 4
  br label %426

415:                                              ; preds = %403
  %416 = shl nuw i32 %411, 8
  store i32 %416, ptr %0, align 4
  %417 = load i32, ptr %73, align 4
  %418 = shl i32 %417, 8
  %419 = load ptr, ptr %74, align 4
  %420 = load i32, ptr %68, align 4
  %421 = add i32 %420, 1
  store i32 %421, ptr %68, align 4
  %422 = getelementptr i8, ptr %419, i32 %420
  %423 = load i8, ptr %422, align 1
  %424 = zext i8 %423 to i32
  %425 = or i32 %418, %424
  store i32 %425, ptr %73, align 4
  br label %426

426:                                              ; preds = %415, %413
  %427 = phi i32 [ %414, %413 ], [ %425, %415 ]
  %428 = phi i32 [ %411, %413 ], [ %416, %415 ]
  %429 = lshr i32 %428, 11
  %430 = load i16, ptr %410, align 2
  %431 = zext i16 %430 to i32
  %432 = mul i32 %429, %431
  %433 = icmp ult i32 %427, %432
  br i1 %433, label %434, label %442

434:                                              ; preds = %426
  store i32 %432, ptr %0, align 4
  %435 = load i16, ptr %410, align 2
  %436 = zext i16 %435 to i32
  %437 = sub nsw i32 2048, %436
  %438 = ashr i32 %437, 5
  %439 = trunc i32 %438 to i16
  %440 = add i16 %435, %439
  store i16 %440, ptr %410, align 2
  %441 = load i32, ptr %77, align 4
  br label %492

442:                                              ; preds = %426
  %443 = sub i32 %428, %432
  store i32 %443, ptr %0, align 4
  %444 = sub i32 %427, %432
  store i32 %444, ptr %73, align 4
  %445 = load i16, ptr %410, align 2
  %446 = lshr i16 %445, 5
  %447 = sub i16 %445, %446
  store i16 %447, ptr %410, align 2
  %448 = load i32, ptr %72, align 4
  %449 = getelementptr %struct.xz_dec_lzma2, ptr %0, i32 0, i32 3, i32 13, i32 %448
  %450 = load i32, ptr %0, align 4
  %451 = icmp ult i32 %450, 16777216
  br i1 %451, label %454, label %452

452:                                              ; preds = %442
  %453 = load i32, ptr %73, align 4
  br label %465

454:                                              ; preds = %442
  %455 = shl nuw i32 %450, 8
  store i32 %455, ptr %0, align 4
  %456 = load i32, ptr %73, align 4
  %457 = shl i32 %456, 8
  %458 = load ptr, ptr %74, align 4
  %459 = load i32, ptr %68, align 4
  %460 = add i32 %459, 1
  store i32 %460, ptr %68, align 4
  %461 = getelementptr i8, ptr %458, i32 %459
  %462 = load i8, ptr %461, align 1
  %463 = zext i8 %462 to i32
  %464 = or i32 %457, %463
  store i32 %464, ptr %73, align 4
  br label %465

465:                                              ; preds = %454, %452
  %466 = phi i32 [ %453, %452 ], [ %464, %454 ]
  %467 = phi i32 [ %450, %452 ], [ %455, %454 ]
  %468 = lshr i32 %467, 11
  %469 = load i16, ptr %449, align 2
  %470 = zext i16 %469 to i32
  %471 = mul i32 %468, %470
  %472 = icmp ult i32 %466, %471
  br i1 %472, label %473, label %481

473:                                              ; preds = %465
  store i32 %471, ptr %0, align 4
  %474 = load i16, ptr %449, align 2
  %475 = zext i16 %474 to i32
  %476 = sub nsw i32 2048, %475
  %477 = ashr i32 %476, 5
  %478 = trunc i32 %477 to i16
  %479 = add i16 %474, %478
  store i16 %479, ptr %449, align 2
  %480 = load i32, ptr %76, align 4
  br label %489

481:                                              ; preds = %465
  %482 = sub i32 %467, %471
  store i32 %482, ptr %0, align 4
  %483 = sub i32 %466, %471
  store i32 %483, ptr %73, align 4
  %484 = load i16, ptr %449, align 2
  %485 = lshr i16 %484, 5
  %486 = sub i16 %484, %485
  store i16 %486, ptr %449, align 2
  %487 = load i32, ptr %75, align 4
  %488 = load i32, ptr %76, align 4
  store i32 %488, ptr %75, align 4
  br label %489

489:                                              ; preds = %481, %473
  %490 = phi i32 [ %487, %481 ], [ %480, %473 ]
  %491 = load i32, ptr %77, align 4
  store i32 %491, ptr %76, align 4
  br label %492

492:                                              ; preds = %489, %434
  %493 = phi i32 [ %490, %489 ], [ %441, %434 ]
  %494 = load i32, ptr %70, align 4
  store i32 %494, ptr %77, align 4
  store i32 %493, ptr %70, align 4
  br label %495

495:                                              ; preds = %492, %387
  %496 = load i32, ptr %72, align 4
  %497 = icmp ult i32 %496, 7
  %498 = select i1 %497, i32 8, i32 11
  store i32 %498, ptr %72, align 4
  tail call fastcc void @lzma_len(ptr noundef %0, ptr noundef %78, i32 noundef %96) #8
  br label %815

499:                                              ; preds = %316
  store i32 %322, ptr %0, align 4
  %500 = load i16, ptr %300, align 2
  %501 = zext i16 %500 to i32
  %502 = sub nsw i32 2048, %501
  %503 = ashr i32 %502, 5
  %504 = trunc i32 %503 to i16
  %505 = add i16 %500, %504
  store i16 %505, ptr %300, align 2
  %506 = load i32, ptr %72, align 4
  %507 = icmp ult i32 %506, 7
  %508 = select i1 %507, i32 7, i32 10
  store i32 %508, ptr %72, align 4
  %509 = load i32, ptr %76, align 4
  store i32 %509, ptr %75, align 4
  %510 = load i32, ptr %77, align 4
  store i32 %510, ptr %76, align 4
  %511 = load i32, ptr %70, align 4
  store i32 %511, ptr %77, align 4
  tail call fastcc void @lzma_len(ptr noundef %0, ptr noundef %80, i32 noundef %96) #8
  %512 = load i32, ptr %79, align 4
  %513 = icmp ult i32 %512, 6
  %514 = add i32 %512, -2
  %515 = select i1 %513, i32 %514, i32 3
  %516 = getelementptr %struct.xz_dec_lzma2, ptr %0, i32 0, i32 3, i32 15, i32 %515
  br label %517

517:                                              ; preds = %559, %499
  %518 = phi i32 [ 1, %499 ], [ %560, %559 ]
  %519 = getelementptr i16, ptr %516, i32 %518
  %520 = load i32, ptr %0, align 4
  %521 = icmp ult i32 %520, 16777216
  br i1 %521, label %524, label %522

522:                                              ; preds = %517
  %523 = load i32, ptr %73, align 4
  br label %535

524:                                              ; preds = %517
  %525 = shl nuw i32 %520, 8
  store i32 %525, ptr %0, align 4
  %526 = load i32, ptr %73, align 4
  %527 = shl i32 %526, 8
  %528 = load ptr, ptr %74, align 4
  %529 = load i32, ptr %68, align 4
  %530 = add i32 %529, 1
  store i32 %530, ptr %68, align 4
  %531 = getelementptr i8, ptr %528, i32 %529
  %532 = load i8, ptr %531, align 1
  %533 = zext i8 %532 to i32
  %534 = or i32 %527, %533
  store i32 %534, ptr %73, align 4
  br label %535

535:                                              ; preds = %524, %522
  %536 = phi i32 [ %523, %522 ], [ %534, %524 ]
  %537 = phi i32 [ %520, %522 ], [ %525, %524 ]
  %538 = lshr i32 %537, 11
  %539 = load i16, ptr %519, align 2
  %540 = zext i16 %539 to i32
  %541 = mul i32 %538, %540
  %542 = icmp ult i32 %536, %541
  br i1 %542, label %551, label %543

543:                                              ; preds = %535
  %544 = sub i32 %537, %541
  store i32 %544, ptr %0, align 4
  %545 = sub i32 %536, %541
  store i32 %545, ptr %73, align 4
  %546 = load i16, ptr %519, align 2
  %547 = lshr i16 %546, 5
  %548 = sub i16 %546, %547
  store i16 %548, ptr %519, align 2
  %549 = shl nuw nsw i32 %518, 1
  %550 = or i32 %549, 1
  br label %559

551:                                              ; preds = %535
  store i32 %541, ptr %0, align 4
  %552 = load i16, ptr %519, align 2
  %553 = zext i16 %552 to i32
  %554 = sub nsw i32 2048, %553
  %555 = ashr i32 %554, 5
  %556 = trunc i32 %555 to i16
  %557 = add i16 %552, %556
  store i16 %557, ptr %519, align 2
  %558 = shl nuw nsw i32 %518, 1
  br label %559

559:                                              ; preds = %551, %543
  %560 = phi i32 [ %558, %551 ], [ %550, %543 ]
  %561 = icmp ult i32 %560, 64
  br i1 %561, label %517, label %562

562:                                              ; preds = %559
  %563 = add i32 %560, -64
  %564 = icmp ult i32 %563, 4
  br i1 %564, label %565, label %566

565:                                              ; preds = %562
  store i32 %563, ptr %70, align 4
  br label %815

566:                                              ; preds = %562
  %567 = lshr i32 %563, 1
  %568 = and i32 %560, 1
  %569 = or i32 %568, 2
  store i32 %569, ptr %70, align 4
  %570 = icmp ult i32 %563, 14
  br i1 %570, label %571, label %627

571:                                              ; preds = %566
  %572 = add nsw i32 %567, -1
  %573 = shl i32 %569, %572
  store i32 %573, ptr %70, align 4
  %574 = sub nsw i32 64, %560
  %575 = getelementptr i16, ptr %88, i32 %573
  %576 = getelementptr i16, ptr %575, i32 %574
  br label %577

577:                                              ; preds = %623, %571
  %578 = phi i32 [ 1, %571 ], [ %624, %623 ]
  %579 = phi i32 [ 0, %571 ], [ %625, %623 ]
  %580 = getelementptr i16, ptr %576, i32 %578
  %581 = load i32, ptr %0, align 4
  %582 = icmp ult i32 %581, 16777216
  br i1 %582, label %585, label %583

583:                                              ; preds = %577
  %584 = load i32, ptr %73, align 4
  br label %596

585:                                              ; preds = %577
  %586 = shl nuw i32 %581, 8
  store i32 %586, ptr %0, align 4
  %587 = load i32, ptr %73, align 4
  %588 = shl i32 %587, 8
  %589 = load ptr, ptr %74, align 4
  %590 = load i32, ptr %68, align 4
  %591 = add i32 %590, 1
  store i32 %591, ptr %68, align 4
  %592 = getelementptr i8, ptr %589, i32 %590
  %593 = load i8, ptr %592, align 1
  %594 = zext i8 %593 to i32
  %595 = or i32 %588, %594
  store i32 %595, ptr %73, align 4
  br label %596

596:                                              ; preds = %585, %583
  %597 = phi i32 [ %584, %583 ], [ %595, %585 ]
  %598 = phi i32 [ %581, %583 ], [ %586, %585 ]
  %599 = lshr i32 %598, 11
  %600 = load i16, ptr %580, align 2
  %601 = zext i16 %600 to i32
  %602 = mul i32 %599, %601
  %603 = icmp ult i32 %597, %602
  br i1 %603, label %615, label %604

604:                                              ; preds = %596
  %605 = sub i32 %598, %602
  store i32 %605, ptr %0, align 4
  %606 = sub i32 %597, %602
  store i32 %606, ptr %73, align 4
  %607 = load i16, ptr %580, align 2
  %608 = lshr i16 %607, 5
  %609 = sub i16 %607, %608
  store i16 %609, ptr %580, align 2
  %610 = shl i32 %578, 1
  %611 = or i32 %610, 1
  %612 = shl nuw i32 1, %579
  %613 = load i32, ptr %70, align 4
  %614 = add i32 %613, %612
  store i32 %614, ptr %70, align 4
  br label %623

615:                                              ; preds = %596
  store i32 %602, ptr %0, align 4
  %616 = load i16, ptr %580, align 2
  %617 = zext i16 %616 to i32
  %618 = sub nsw i32 2048, %617
  %619 = ashr i32 %618, 5
  %620 = trunc i32 %619 to i16
  %621 = add i16 %616, %620
  store i16 %621, ptr %580, align 2
  %622 = shl i32 %578, 1
  br label %623

623:                                              ; preds = %615, %604
  %624 = phi i32 [ %611, %604 ], [ %622, %615 ]
  %625 = add nuw i32 %579, 1
  %626 = icmp eq i32 %625, %572
  br i1 %626, label %815, label %577

627:                                              ; preds = %566
  %628 = add nsw i32 %567, -5
  %629 = load i32, ptr %0, align 4
  br label %630

630:                                              ; preds = %648, %627
  %631 = phi i32 [ %569, %627 ], [ %658, %648 ]
  %632 = phi i32 [ %629, %627 ], [ %651, %648 ]
  %633 = phi i32 [ %628, %627 ], [ %659, %648 ]
  %634 = icmp ult i32 %632, 16777216
  br i1 %634, label %637, label %635

635:                                              ; preds = %630
  %636 = load i32, ptr %73, align 4
  br label %648

637:                                              ; preds = %630
  %638 = shl nuw i32 %632, 8
  store i32 %638, ptr %0, align 4
  %639 = load i32, ptr %73, align 4
  %640 = shl i32 %639, 8
  %641 = load ptr, ptr %74, align 4
  %642 = load i32, ptr %68, align 4
  %643 = add i32 %642, 1
  store i32 %643, ptr %68, align 4
  %644 = getelementptr i8, ptr %641, i32 %642
  %645 = load i8, ptr %644, align 1
  %646 = zext i8 %645 to i32
  %647 = or i32 %640, %646
  br label %648

648:                                              ; preds = %637, %635
  %649 = phi i32 [ %636, %635 ], [ %647, %637 ]
  %650 = phi i32 [ %632, %635 ], [ %638, %637 ]
  %651 = lshr i32 %650, 1
  store i32 %651, ptr %0, align 4
  %652 = sub i32 %649, %651
  %653 = ashr i32 %652, 31
  %654 = and i32 %653, %651
  %655 = add i32 %654, %652
  store i32 %655, ptr %73, align 4
  %656 = shl i32 %631, 1
  %657 = or i32 %656, 1
  %658 = add nsw i32 %657, %653
  store i32 %658, ptr %70, align 4
  %659 = add i32 %633, -1
  %660 = icmp eq i32 %659, 0
  br i1 %660, label %661, label %630

661:                                              ; preds = %648
  %662 = shl i32 %658, 4
  store i32 %662, ptr %70, align 4
  %663 = icmp ult i32 %650, 33554432
  br i1 %663, label %664, label %674

664:                                              ; preds = %661
  %665 = shl nuw i32 %651, 8
  store i32 %665, ptr %0, align 4
  %666 = shl i32 %655, 8
  %667 = load ptr, ptr %74, align 4
  %668 = load i32, ptr %68, align 4
  %669 = add i32 %668, 1
  store i32 %669, ptr %68, align 4
  %670 = getelementptr i8, ptr %667, i32 %668
  %671 = load i8, ptr %670, align 1
  %672 = zext i8 %671 to i32
  %673 = or i32 %666, %672
  store i32 %673, ptr %73, align 4
  br label %674

674:                                              ; preds = %664, %661
  %675 = phi i32 [ %673, %664 ], [ %655, %661 ]
  %676 = phi i32 [ %665, %664 ], [ %651, %661 ]
  %677 = lshr i32 %676, 11
  %678 = load i16, ptr %82, align 2
  %679 = zext i16 %678 to i32
  %680 = mul i32 %677, %679
  %681 = icmp ult i32 %675, %680
  br i1 %681, label %688, label %682

682:                                              ; preds = %674
  %683 = sub i32 %676, %680
  %684 = sub i32 %675, %680
  store i32 %684, ptr %73, align 4
  %685 = lshr i16 %678, 5
  %686 = sub i16 %678, %685
  store i16 %686, ptr %82, align 2
  %687 = or i32 %662, 1
  store i32 %687, ptr %70, align 4
  br label %693

688:                                              ; preds = %674
  %689 = sub nsw i32 2048, %679
  %690 = ashr i32 %689, 5
  %691 = trunc i32 %690 to i16
  %692 = add i16 %678, %691
  store i16 %692, ptr %82, align 2
  br label %693

693:                                              ; preds = %688, %682
  %694 = phi i32 [ %687, %682 ], [ %662, %688 ]
  %695 = phi i32 [ %684, %682 ], [ %675, %688 ]
  %696 = phi i32 [ %683, %682 ], [ %680, %688 ]
  %697 = phi i32 [ 3, %682 ], [ 2, %688 ]
  %698 = getelementptr i16, ptr %81, i32 %697
  %699 = icmp ult i32 %696, 16777216
  br i1 %699, label %700, label %710

700:                                              ; preds = %693
  %701 = shl nuw i32 %696, 8
  store i32 %701, ptr %0, align 4
  %702 = shl i32 %695, 8
  %703 = load ptr, ptr %74, align 4
  %704 = load i32, ptr %68, align 4
  %705 = add i32 %704, 1
  store i32 %705, ptr %68, align 4
  %706 = getelementptr i8, ptr %703, i32 %704
  %707 = load i8, ptr %706, align 1
  %708 = zext i8 %707 to i32
  %709 = or i32 %702, %708
  store i32 %709, ptr %73, align 4
  br label %710

710:                                              ; preds = %700, %693
  %711 = phi i32 [ %709, %700 ], [ %695, %693 ]
  %712 = phi i32 [ %701, %700 ], [ %696, %693 ]
  %713 = lshr i32 %712, 11
  %714 = load i16, ptr %698, align 2
  %715 = zext i16 %714 to i32
  %716 = mul i32 %713, %715
  %717 = icmp ult i32 %711, %716
  br i1 %717, label %726, label %718

718:                                              ; preds = %710
  %719 = sub i32 %712, %716
  store i32 %719, ptr %0, align 4
  %720 = sub i32 %711, %716
  store i32 %720, ptr %73, align 4
  %721 = lshr i16 %714, 5
  %722 = sub i16 %714, %721
  store i16 %722, ptr %698, align 2
  %723 = shl nuw nsw i32 %697, 1
  %724 = or i32 %723, 1
  %725 = add i32 %694, 2
  store i32 %725, ptr %70, align 4
  br label %732

726:                                              ; preds = %710
  store i32 %716, ptr %0, align 4
  %727 = sub nsw i32 2048, %715
  %728 = ashr i32 %727, 5
  %729 = trunc i32 %728 to i16
  %730 = add i16 %714, %729
  store i16 %730, ptr %698, align 2
  %731 = shl nuw nsw i32 %697, 1
  br label %732

732:                                              ; preds = %726, %718
  %733 = phi i32 [ %720, %718 ], [ %711, %726 ]
  %734 = phi i32 [ %719, %718 ], [ %716, %726 ]
  %735 = phi i32 [ %724, %718 ], [ %731, %726 ]
  %736 = getelementptr i16, ptr %81, i32 %735
  %737 = icmp ult i32 %734, 16777216
  br i1 %737, label %738, label %748

738:                                              ; preds = %732
  %739 = shl nuw i32 %734, 8
  store i32 %739, ptr %0, align 4
  %740 = shl i32 %733, 8
  %741 = load ptr, ptr %74, align 4
  %742 = load i32, ptr %68, align 4
  %743 = add i32 %742, 1
  store i32 %743, ptr %68, align 4
  %744 = getelementptr i8, ptr %741, i32 %742
  %745 = load i8, ptr %744, align 1
  %746 = zext i8 %745 to i32
  %747 = or i32 %740, %746
  store i32 %747, ptr %73, align 4
  br label %748

748:                                              ; preds = %738, %732
  %749 = phi i32 [ %747, %738 ], [ %733, %732 ]
  %750 = phi i32 [ %739, %738 ], [ %734, %732 ]
  %751 = lshr i32 %750, 11
  %752 = load i16, ptr %736, align 2
  %753 = zext i16 %752 to i32
  %754 = mul i32 %751, %753
  %755 = icmp ult i32 %749, %754
  br i1 %755, label %766, label %756

756:                                              ; preds = %748
  %757 = sub i32 %750, %754
  store i32 %757, ptr %0, align 4
  %758 = sub i32 %749, %754
  store i32 %758, ptr %73, align 4
  %759 = load i16, ptr %736, align 2
  %760 = lshr i16 %759, 5
  %761 = sub i16 %759, %760
  store i16 %761, ptr %736, align 2
  %762 = shl nsw i32 %735, 1
  %763 = or i32 %762, 1
  %764 = load i32, ptr %70, align 4
  %765 = add i32 %764, 4
  store i32 %765, ptr %70, align 4
  br label %774

766:                                              ; preds = %748
  store i32 %754, ptr %0, align 4
  %767 = load i16, ptr %736, align 2
  %768 = zext i16 %767 to i32
  %769 = sub nsw i32 2048, %768
  %770 = ashr i32 %769, 5
  %771 = trunc i32 %770 to i16
  %772 = add i16 %767, %771
  store i16 %772, ptr %736, align 2
  %773 = shl nsw i32 %735, 1
  br label %774

774:                                              ; preds = %766, %756
  %775 = phi i32 [ %763, %756 ], [ %773, %766 ]
  %776 = getelementptr i16, ptr %81, i32 %775
  %777 = load i32, ptr %0, align 4
  %778 = icmp ult i32 %777, 16777216
  br i1 %778, label %781, label %779

779:                                              ; preds = %774
  %780 = load i32, ptr %73, align 4
  br label %792

781:                                              ; preds = %774
  %782 = shl nuw i32 %777, 8
  store i32 %782, ptr %0, align 4
  %783 = load i32, ptr %73, align 4
  %784 = shl i32 %783, 8
  %785 = load ptr, ptr %74, align 4
  %786 = load i32, ptr %68, align 4
  %787 = add i32 %786, 1
  store i32 %787, ptr %68, align 4
  %788 = getelementptr i8, ptr %785, i32 %786
  %789 = load i8, ptr %788, align 1
  %790 = zext i8 %789 to i32
  %791 = or i32 %784, %790
  store i32 %791, ptr %73, align 4
  br label %792

792:                                              ; preds = %781, %779
  %793 = phi i32 [ %780, %779 ], [ %791, %781 ]
  %794 = phi i32 [ %777, %779 ], [ %782, %781 ]
  %795 = lshr i32 %794, 11
  %796 = load i16, ptr %776, align 2
  %797 = zext i16 %796 to i32
  %798 = mul i32 %795, %797
  %799 = icmp ult i32 %793, %798
  br i1 %799, label %808, label %800

800:                                              ; preds = %792
  %801 = sub i32 %794, %798
  store i32 %801, ptr %0, align 4
  %802 = sub i32 %793, %798
  store i32 %802, ptr %73, align 4
  %803 = load i16, ptr %776, align 2
  %804 = lshr i16 %803, 5
  %805 = sub i16 %803, %804
  store i16 %805, ptr %776, align 2
  %806 = load i32, ptr %70, align 4
  %807 = add i32 %806, 8
  store i32 %807, ptr %70, align 4
  br label %815

808:                                              ; preds = %792
  store i32 %798, ptr %0, align 4
  %809 = load i16, ptr %776, align 2
  %810 = zext i16 %809 to i32
  %811 = sub nsw i32 2048, %810
  %812 = ashr i32 %811, 5
  %813 = trunc i32 %812 to i16
  %814 = add i16 %809, %813
  store i16 %814, ptr %776, align 2
  br label %815

815:                                              ; preds = %808, %800, %623, %565, %495, %393
  %816 = load i32, ptr %70, align 4
  %817 = load i32, ptr %83, align 4
  %818 = icmp ugt i32 %817, %816
  br i1 %818, label %819, label %885

819:                                              ; preds = %815
  %820 = load i32, ptr %84, align 4
  %821 = icmp ugt i32 %820, %816
  br i1 %821, label %822, label %885

822:                                              ; preds = %819
  %823 = load i32, ptr %5, align 4
  %824 = load i32, ptr %3, align 4
  %825 = sub i32 %823, %824
  %826 = load i32, ptr %79, align 4
  %827 = tail call i32 @llvm.umin.i32(i32 %825, i32 %826) #8
  %828 = sub i32 %826, %827
  store i32 %828, ptr %79, align 4
  %829 = xor i32 %816, -1
  %830 = add i32 %824, %829
  %831 = icmp ugt i32 %824, %816
  br i1 %831, label %835, label %832

832:                                              ; preds = %822
  %833 = load i32, ptr %85, align 4
  %834 = add i32 %833, %830
  br label %835

835:                                              ; preds = %832, %822
  %836 = phi i32 [ %834, %832 ], [ %830, %822 ]
  %837 = load ptr, ptr %2, align 4
  %838 = getelementptr i8, ptr %837, i32 %836
  %839 = load i8, ptr %838, align 1
  %840 = add i32 %824, 1
  store i32 %840, ptr %3, align 4
  %841 = getelementptr i8, ptr %837, i32 %824
  store i8 %839, ptr %841, align 1
  %842 = add i32 %827, -1
  %843 = icmp eq i32 %842, 0
  br i1 %843, label %859, label %844

844:                                              ; preds = %844, %835
  %845 = phi i32 [ %857, %844 ], [ %842, %835 ]
  %846 = phi i32 [ %850, %844 ], [ %836, %835 ]
  %847 = add i32 %846, 1
  %848 = load i32, ptr %85, align 4
  %849 = icmp eq i32 %847, %848
  %850 = select i1 %849, i32 0, i32 %847
  %851 = load i32, ptr %3, align 4
  %852 = load ptr, ptr %2, align 4
  %853 = getelementptr i8, ptr %852, i32 %850
  %854 = load i8, ptr %853, align 1
  %855 = add i32 %851, 1
  store i32 %855, ptr %3, align 4
  %856 = getelementptr i8, ptr %852, i32 %851
  store i8 %854, ptr %856, align 1
  %857 = add i32 %845, -1
  %858 = icmp eq i32 %857, 0
  br i1 %858, label %859, label %844

859:                                              ; preds = %844, %835
  %860 = load i32, ptr %83, align 4
  %861 = load i32, ptr %3, align 4
  %862 = icmp ult i32 %860, %861
  br i1 %862, label %863, label %864

863:                                              ; preds = %859
  store i32 %861, ptr %83, align 4
  br label %864

864:                                              ; preds = %863, %859, %291
  %865 = phi i32 [ %861, %859 ], [ %861, %863 ], [ %279, %291 ]
  %866 = load i32, ptr %5, align 4
  %867 = icmp ult i32 %865, %866
  br i1 %867, label %89, label %868

868:                                              ; preds = %864, %89, %63
  %869 = load i32, ptr %0, align 4
  %870 = icmp ult i32 %869, 16777216
  br i1 %870, label %871, label %885

871:                                              ; preds = %868
  %872 = shl nuw i32 %869, 8
  store i32 %872, ptr %0, align 4
  %873 = getelementptr inbounds %struct.rc_dec, ptr %0, i32 0, i32 1
  %874 = load i32, ptr %873, align 4
  %875 = shl i32 %874, 8
  %876 = getelementptr inbounds %struct.rc_dec, ptr %0, i32 0, i32 3
  %877 = load ptr, ptr %876, align 4
  %878 = getelementptr inbounds %struct.rc_dec, ptr %0, i32 0, i32 4
  %879 = load i32, ptr %878, align 4
  %880 = add i32 %879, 1
  store i32 %880, ptr %878, align 4
  %881 = getelementptr i8, ptr %877, i32 %879
  %882 = load i8, ptr %881, align 1
  %883 = zext i8 %882 to i32
  %884 = or i32 %875, %883
  store i32 %884, ptr %873, align 4
  br label %885

885:                                              ; preds = %871, %868, %819, %815
  %886 = phi i1 [ true, %868 ], [ true, %871 ], [ false, %815 ], [ false, %819 ]
  ret i1 %886
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i32(ptr nocapture writeonly, ptr nocapture readonly, i32, i1 immarg) #4

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @lzma_len(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2) unnamed_addr #6 {
  %4 = load i32, ptr %0, align 4
  %5 = icmp ult i32 %4, 16777216
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.rc_dec, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  br label %23

9:                                                ; preds = %3
  %10 = shl nuw i32 %4, 8
  store i32 %10, ptr %0, align 4
  %11 = getelementptr inbounds %struct.rc_dec, ptr %0, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = shl i32 %12, 8
  %14 = getelementptr inbounds %struct.rc_dec, ptr %0, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.rc_dec, ptr %0, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %17, 1
  store i32 %18, ptr %16, align 4
  %19 = getelementptr i8, ptr %15, i32 %17
  %20 = load i8, ptr %19, align 1
  %21 = zext i8 %20 to i32
  %22 = or i32 %13, %21
  store i32 %22, ptr %11, align 4
  br label %23

23:                                               ; preds = %9, %6
  %24 = phi i32 [ %8, %6 ], [ %22, %9 ]
  %25 = phi i32 [ %4, %6 ], [ %10, %9 ]
  %26 = lshr i32 %25, 11
  %27 = load i16, ptr %1, align 2
  %28 = zext i16 %27 to i32
  %29 = mul i32 %26, %28
  %30 = icmp ult i32 %24, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %23
  store i32 %29, ptr %0, align 4
  %32 = load i16, ptr %1, align 2
  %33 = zext i16 %32 to i32
  %34 = sub nsw i32 2048, %33
  %35 = ashr i32 %34, 5
  %36 = trunc i32 %35 to i16
  %37 = add i16 %32, %36
  store i16 %37, ptr %1, align 2
  %38 = getelementptr %struct.lzma_len_dec, ptr %1, i32 0, i32 2, i32 %2
  br label %87

39:                                               ; preds = %23
  %40 = getelementptr inbounds %struct.rc_dec, ptr %0, i32 0, i32 1
  %41 = sub i32 %25, %29
  store i32 %41, ptr %0, align 4
  %42 = sub i32 %24, %29
  store i32 %42, ptr %40, align 4
  %43 = load i16, ptr %1, align 2
  %44 = lshr i16 %43, 5
  %45 = sub i16 %43, %44
  store i16 %45, ptr %1, align 2
  %46 = getelementptr inbounds %struct.lzma_len_dec, ptr %1, i32 0, i32 1
  %47 = load i32, ptr %0, align 4
  %48 = icmp ult i32 %47, 16777216
  br i1 %48, label %51, label %49

49:                                               ; preds = %39
  %50 = load i32, ptr %40, align 4
  br label %64

51:                                               ; preds = %39
  %52 = shl nuw i32 %47, 8
  store i32 %52, ptr %0, align 4
  %53 = load i32, ptr %40, align 4
  %54 = shl i32 %53, 8
  %55 = getelementptr inbounds %struct.rc_dec, ptr %0, i32 0, i32 3
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.rc_dec, ptr %0, i32 0, i32 4
  %58 = load i32, ptr %57, align 4
  %59 = add i32 %58, 1
  store i32 %59, ptr %57, align 4
  %60 = getelementptr i8, ptr %56, i32 %58
  %61 = load i8, ptr %60, align 1
  %62 = zext i8 %61 to i32
  %63 = or i32 %54, %62
  store i32 %63, ptr %40, align 4
  br label %64

64:                                               ; preds = %51, %49
  %65 = phi i32 [ %50, %49 ], [ %63, %51 ]
  %66 = phi i32 [ %47, %49 ], [ %52, %51 ]
  %67 = lshr i32 %66, 11
  %68 = load i16, ptr %46, align 2
  %69 = zext i16 %68 to i32
  %70 = mul i32 %67, %69
  %71 = icmp ult i32 %65, %70
  br i1 %71, label %72, label %80

72:                                               ; preds = %64
  store i32 %70, ptr %0, align 4
  %73 = load i16, ptr %46, align 2
  %74 = zext i16 %73 to i32
  %75 = sub nsw i32 2048, %74
  %76 = ashr i32 %75, 5
  %77 = trunc i32 %76 to i16
  %78 = add i16 %73, %77
  store i16 %78, ptr %46, align 2
  %79 = getelementptr %struct.lzma_len_dec, ptr %1, i32 0, i32 3, i32 %2
  br label %87

80:                                               ; preds = %64
  %81 = sub i32 %66, %70
  store i32 %81, ptr %0, align 4
  %82 = sub i32 %65, %70
  store i32 %82, ptr %40, align 4
  %83 = load i16, ptr %46, align 2
  %84 = lshr i16 %83, 5
  %85 = sub i16 %83, %84
  store i16 %85, ptr %46, align 2
  %86 = getelementptr inbounds %struct.lzma_len_dec, ptr %1, i32 0, i32 4
  br label %87

87:                                               ; preds = %80, %72, %31
  %88 = phi i32 [ 10, %72 ], [ 18, %80 ], [ 2, %31 ]
  %89 = phi ptr [ %79, %72 ], [ %86, %80 ], [ %38, %31 ]
  %90 = phi i32 [ 8, %72 ], [ 256, %80 ], [ 8, %31 ]
  %91 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %0, i32 0, i32 3, i32 5
  store i32 %88, ptr %91, align 4
  %92 = getelementptr inbounds %struct.rc_dec, ptr %0, i32 0, i32 1
  %93 = getelementptr inbounds %struct.rc_dec, ptr %0, i32 0, i32 3
  %94 = getelementptr inbounds %struct.rc_dec, ptr %0, i32 0, i32 4
  br label %95

95:                                               ; preds = %137, %87
  %96 = phi i32 [ 1, %87 ], [ %138, %137 ]
  %97 = getelementptr i16, ptr %89, i32 %96
  %98 = load i32, ptr %0, align 4
  %99 = icmp ult i32 %98, 16777216
  br i1 %99, label %102, label %100

100:                                              ; preds = %95
  %101 = load i32, ptr %92, align 4
  br label %113

102:                                              ; preds = %95
  %103 = shl nuw i32 %98, 8
  store i32 %103, ptr %0, align 4
  %104 = load i32, ptr %92, align 4
  %105 = shl i32 %104, 8
  %106 = load ptr, ptr %93, align 4
  %107 = load i32, ptr %94, align 4
  %108 = add i32 %107, 1
  store i32 %108, ptr %94, align 4
  %109 = getelementptr i8, ptr %106, i32 %107
  %110 = load i8, ptr %109, align 1
  %111 = zext i8 %110 to i32
  %112 = or i32 %105, %111
  store i32 %112, ptr %92, align 4
  br label %113

113:                                              ; preds = %102, %100
  %114 = phi i32 [ %101, %100 ], [ %112, %102 ]
  %115 = phi i32 [ %98, %100 ], [ %103, %102 ]
  %116 = lshr i32 %115, 11
  %117 = load i16, ptr %97, align 2
  %118 = zext i16 %117 to i32
  %119 = mul i32 %116, %118
  %120 = icmp ult i32 %114, %119
  br i1 %120, label %129, label %121

121:                                              ; preds = %113
  %122 = sub i32 %115, %119
  store i32 %122, ptr %0, align 4
  %123 = sub i32 %114, %119
  store i32 %123, ptr %92, align 4
  %124 = load i16, ptr %97, align 2
  %125 = lshr i16 %124, 5
  %126 = sub i16 %124, %125
  store i16 %126, ptr %97, align 2
  %127 = shl i32 %96, 1
  %128 = or i32 %127, 1
  br label %137

129:                                              ; preds = %113
  store i32 %119, ptr %0, align 4
  %130 = load i16, ptr %97, align 2
  %131 = zext i16 %130 to i32
  %132 = sub nsw i32 2048, %131
  %133 = ashr i32 %132, 5
  %134 = trunc i32 %133 to i16
  %135 = add i16 %130, %134
  store i16 %135, ptr %97, align 2
  %136 = shl i32 %96, 1
  br label %137

137:                                              ; preds = %129, %121
  %138 = phi i32 [ %136, %129 ], [ %128, %121 ]
  %139 = icmp ult i32 %138, %90
  br i1 %139, label %95, label %140

140:                                              ; preds = %137
  %141 = sub i32 %138, %90
  %142 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %0, i32 0, i32 3, i32 5
  %143 = load i32, ptr %142, align 4
  %144 = add i32 %141, %143
  store i32 %144, ptr %142, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(0) }

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
