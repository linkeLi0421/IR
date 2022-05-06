; ModuleID = '/llk/IR/lib/zstd/compress/zstd_opt.c_pt.bc'
source_filename = "../lib/zstd/compress/zstd_opt.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

%struct.ZSTD_matchState_t = type { %struct.ZSTD_window_t, i32, i32, i32, ptr, ptr, ptr, i32, %struct.optState_t, ptr, %struct.ZSTD_compressionParameters, ptr }
%struct.ZSTD_window_t = type { ptr, ptr, ptr, i32, i32 }
%struct.optState_t = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.ZSTD_compressionParameters = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ZSTD_optLdm_t = type { %struct.rawSeqStore_t, i32, i32, i32 }
%struct.rawSeqStore_t = type { ptr, i32, i32, i32, i32 }
%struct.ZSTD_hufCTables_t = type { [256 x %struct.HUF_CElt_s], i32 }
%struct.HUF_CElt_s = type { i16, i8 }
%struct.ZSTD_entropyCTables_t = type { %struct.ZSTD_hufCTables_t, %struct.ZSTD_fseCTables_t }
%struct.ZSTD_fseCTables_t = type { [193 x i32], [363 x i32], [329 x i32], i32, i32, i32 }
%struct.FSE_symbolCompressionTransform = type { i32, i32 }
%struct.ZSTD_optimal_t = type { i32, i32, i32, i32, [3 x i32] }
%struct.seqStore_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.ZSTD_match_t = type { i32, i32 }
%struct.seqDef_s = type { i32, i16, i16 }
%struct.rawSeq = type { i32, i32, i32 }

@LL_bits = internal unnamed_addr constant [36 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16], align 4
@ZSTD_LLcode.LL_Code = internal unnamed_addr constant [64 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\10\11\11\12\12\13\13\14\14\14\14\15\15\15\15\16\16\16\16\16\16\16\16\17\17\17\17\17\17\17\17\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18", align 1
@ML_bits = internal unnamed_addr constant [53 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16], align 4
@ZSTD_MLcode.ML_Code = internal unnamed_addr constant [128 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F  !!\22\22##$$$$%%%%&&&&&&&&''''''''(((((((((((((((())))))))))))))))********************************", align 1
@switch.table.ZSTD_compressBlock_opt_generic.1 = private unnamed_addr constant [5 x i32] [i32 3, i32 4, i32 5, i32 6, i32 6], align 4

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ZSTD_updateTree(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 10, i32 4
  %5 = load i32, ptr %4, align 4
  tail call fastcc void @ZSTD_updateTree_internal(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %5, i32 noundef 0)
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ZSTD_updateTree_internal(ptr nocapture noundef %0, ptr noundef %1, ptr noundef readnone %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = ptrtoint ptr %1 to i32
  %10 = ptrtoint ptr %8 to i32
  %11 = sub i32 %9, %10
  %12 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = icmp ult i32 %13, %11
  br i1 %14, label %15, label %354

15:                                               ; preds = %5
  %16 = icmp eq i32 %4, 1
  %17 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 4
  %18 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 10, i32 2
  %19 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 6
  %20 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 10, i32 1
  %21 = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i32 0, i32 2
  %22 = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i32 0, i32 3
  %23 = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i32 0, i32 4
  %24 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 10, i32 3
  %25 = getelementptr i8, ptr %2, i32 -3
  %26 = getelementptr i8, ptr %2, i32 -1
  br label %27

27:                                               ; preds = %346, %15
  %28 = phi i32 [ %13, %15 ], [ %352, %346 ]
  %29 = getelementptr i8, ptr %8, i32 %28
  %30 = load ptr, ptr %17, align 4
  %31 = load i32, ptr %18, align 4
  switch i32 %3, label %32 [
    i32 8, label %58
    i32 5, label %37
    i32 6, label %44
    i32 7, label %51
  ]

32:                                               ; preds = %27
  %33 = load i32, ptr %29, align 1
  %34 = mul i32 %33, -1640531535
  %35 = sub i32 32, %31
  %36 = lshr i32 %34, %35
  br label %65

37:                                               ; preds = %27
  %38 = load i64, ptr %29, align 1
  %39 = mul i64 %38, -3523014627271114752
  %40 = sub i32 64, %31
  %41 = zext i32 %40 to i64
  %42 = lshr i64 %39, %41
  %43 = trunc i64 %42 to i32
  br label %65

44:                                               ; preds = %27
  %45 = load i64, ptr %29, align 1
  %46 = mul i64 %45, -3523014627193847808
  %47 = sub i32 64, %31
  %48 = zext i32 %47 to i64
  %49 = lshr i64 %46, %48
  %50 = trunc i64 %49 to i32
  br label %65

51:                                               ; preds = %27
  %52 = load i64, ptr %29, align 1
  %53 = mul i64 %52, -3523014627193167104
  %54 = sub i32 64, %31
  %55 = zext i32 %54 to i64
  %56 = lshr i64 %53, %55
  %57 = trunc i64 %56 to i32
  br label %65

58:                                               ; preds = %27
  %59 = load i64, ptr %29, align 1
  %60 = mul i64 %59, -3523014627327384477
  %61 = sub i32 64, %31
  %62 = zext i32 %61 to i64
  %63 = lshr i64 %60, %62
  %64 = trunc i64 %63 to i32
  br label %65

65:                                               ; preds = %58, %51, %44, %37, %32
  %66 = phi i32 [ %36, %32 ], [ %57, %51 ], [ %50, %44 ], [ %43, %37 ], [ %64, %58 ]
  %67 = load ptr, ptr %19, align 4
  %68 = load i32, ptr %20, align 4
  %69 = add i32 %68, -1
  %70 = shl nsw i32 -1, %69
  %71 = xor i32 %70, -1
  %72 = getelementptr i32, ptr %30, i32 %66
  %73 = load i32, ptr %72, align 4
  %74 = load ptr, ptr %7, align 4
  %75 = load ptr, ptr %21, align 4
  %76 = load i32, ptr %22, align 4
  %77 = getelementptr i8, ptr %75, i32 %76
  %78 = getelementptr i8, ptr %74, i32 %76
  %79 = ptrtoint ptr %29 to i32
  %80 = ptrtoint ptr %74 to i32
  %81 = sub i32 %79, %80
  %82 = tail call i32 @llvm.usub.sat.i32(i32 %81, i32 %71) #10
  %83 = and i32 %81, %71
  %84 = shl i32 %83, 1
  %85 = getelementptr i32, ptr %67, i32 %84
  %86 = getelementptr i32, ptr %85, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6)
  store i32 0, ptr %6, align 4
  %87 = load i32, ptr %23, align 4
  %88 = add i32 %81, 9
  %89 = load i32, ptr %24, align 4
  store i32 %81, ptr %72, align 4
  %90 = icmp ult i32 %73, %87
  br i1 %90, label %91, label %92

91:                                               ; preds = %65
  store i32 0, ptr %86, align 4
  store i32 0, ptr %85, align 4
  br label %346

92:                                               ; preds = %65
  %93 = shl nuw i32 1, %89
  %94 = ptrtoint ptr %77 to i32
  br label %95

95:                                               ; preds = %328, %92
  %96 = phi i32 [ %93, %92 ], [ %335, %328 ]
  %97 = phi i32 [ 8, %92 ], [ %313, %328 ]
  %98 = phi i32 [ %88, %92 ], [ %312, %328 ]
  %99 = phi ptr [ %86, %92 ], [ %333, %328 ]
  %100 = phi ptr [ %85, %92 ], [ %332, %328 ]
  %101 = phi i32 [ 0, %92 ], [ %331, %328 ]
  %102 = phi i32 [ 0, %92 ], [ %330, %328 ]
  %103 = phi i32 [ %73, %92 ], [ %334, %328 ]
  %104 = and i32 %103, %71
  %105 = shl i32 %104, 1
  %106 = getelementptr i32, ptr %67, i32 %105
  %107 = tail call i32 @llvm.umin.i32(i32 %102, i32 %101) #10
  %108 = add i32 %107, %103
  %109 = icmp ult i32 %108, %76
  %110 = select i1 %16, i1 %109, i1 false
  br i1 %110, label %172, label %111

111:                                              ; preds = %95
  %112 = getelementptr i8, ptr %74, i32 %103
  %113 = getelementptr i8, ptr %29, i32 %107
  %114 = getelementptr i8, ptr %112, i32 %107
  %115 = icmp ugt ptr %25, %113
  br i1 %115, label %116, label %142

116:                                              ; preds = %111
  %117 = load i32, ptr %114, align 1
  %118 = load i32, ptr %113, align 1
  %119 = xor i32 %118, %117
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %124, label %121

121:                                              ; preds = %116
  %122 = tail call i32 @llvm.cttz.i32(i32 %119, i1 true) #10, !range !8
  %123 = lshr i32 %122, 3
  br label %168

124:                                              ; preds = %130, %116
  %125 = phi ptr [ %128, %130 ], [ %113, %116 ]
  %126 = phi ptr [ %127, %130 ], [ %114, %116 ]
  %127 = getelementptr i8, ptr %126, i32 4
  %128 = getelementptr i8, ptr %125, i32 4
  %129 = icmp ult ptr %128, %25
  br i1 %129, label %130, label %142

130:                                              ; preds = %124
  %131 = load i32, ptr %127, align 1
  %132 = load i32, ptr %128, align 1
  %133 = xor i32 %132, %131
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %124, label %135

135:                                              ; preds = %130
  %136 = tail call i32 @llvm.cttz.i32(i32 %133, i1 true) #10, !range !8
  %137 = lshr i32 %136, 3
  %138 = getelementptr i8, ptr %128, i32 %137
  %139 = ptrtoint ptr %138 to i32
  %140 = ptrtoint ptr %113 to i32
  %141 = sub i32 %139, %140
  br label %168

142:                                              ; preds = %124, %111
  %143 = phi ptr [ %113, %111 ], [ %128, %124 ]
  %144 = phi ptr [ %114, %111 ], [ %127, %124 ]
  %145 = icmp ult ptr %143, %26
  br i1 %145, label %146, label %153

146:                                              ; preds = %142
  %147 = load i16, ptr %144, align 1
  %148 = load i16, ptr %143, align 1
  %149 = icmp eq i16 %147, %148
  br i1 %149, label %150, label %153

150:                                              ; preds = %146
  %151 = getelementptr i8, ptr %143, i32 2
  %152 = getelementptr i8, ptr %144, i32 2
  br label %153

153:                                              ; preds = %150, %146, %142
  %154 = phi ptr [ %151, %150 ], [ %143, %146 ], [ %143, %142 ]
  %155 = phi ptr [ %152, %150 ], [ %144, %146 ], [ %144, %142 ]
  %156 = icmp ult ptr %154, %2
  br i1 %156, label %157, label %163

157:                                              ; preds = %153
  %158 = load i8, ptr %155, align 1
  %159 = load i8, ptr %154, align 1
  %160 = icmp eq i8 %158, %159
  %161 = zext i1 %160 to i32
  %162 = getelementptr i8, ptr %154, i32 %161
  br label %163

163:                                              ; preds = %157, %153
  %164 = phi ptr [ %154, %153 ], [ %162, %157 ]
  %165 = ptrtoint ptr %164 to i32
  %166 = ptrtoint ptr %113 to i32
  %167 = sub i32 %165, %166
  br label %168

168:                                              ; preds = %163, %135, %121
  %169 = phi i32 [ %167, %163 ], [ %123, %121 ], [ %141, %135 ]
  %170 = add i32 %169, %107
  %171 = add i32 %170, %103
  br label %304

172:                                              ; preds = %95
  %173 = getelementptr i8, ptr %75, i32 %103
  %174 = getelementptr i8, ptr %29, i32 %107
  %175 = getelementptr i8, ptr %173, i32 %107
  %176 = ptrtoint ptr %175 to i32
  %177 = sub i32 %94, %176
  %178 = getelementptr i8, ptr %174, i32 %177
  %179 = icmp ult ptr %178, %2
  %180 = select i1 %179, ptr %178, ptr %2
  %181 = getelementptr i8, ptr %180, i32 -3
  %182 = icmp ugt ptr %181, %174
  br i1 %182, label %183, label %209

183:                                              ; preds = %172
  %184 = load i32, ptr %175, align 1
  %185 = load i32, ptr %174, align 1
  %186 = xor i32 %185, %184
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %191, label %188

188:                                              ; preds = %183
  %189 = tail call i32 @llvm.cttz.i32(i32 %186, i1 true) #10, !range !8
  %190 = lshr i32 %189, 3
  br label %236

191:                                              ; preds = %197, %183
  %192 = phi ptr [ %195, %197 ], [ %174, %183 ]
  %193 = phi ptr [ %194, %197 ], [ %175, %183 ]
  %194 = getelementptr i8, ptr %193, i32 4
  %195 = getelementptr i8, ptr %192, i32 4
  %196 = icmp ult ptr %195, %181
  br i1 %196, label %197, label %209

197:                                              ; preds = %191
  %198 = load i32, ptr %194, align 1
  %199 = load i32, ptr %195, align 1
  %200 = xor i32 %199, %198
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %191, label %202

202:                                              ; preds = %197
  %203 = tail call i32 @llvm.cttz.i32(i32 %200, i1 true) #10, !range !8
  %204 = lshr i32 %203, 3
  %205 = getelementptr i8, ptr %195, i32 %204
  %206 = ptrtoint ptr %205 to i32
  %207 = ptrtoint ptr %174 to i32
  %208 = sub i32 %206, %207
  br label %236

209:                                              ; preds = %191, %172
  %210 = phi ptr [ %174, %172 ], [ %195, %191 ]
  %211 = phi ptr [ %175, %172 ], [ %194, %191 ]
  %212 = getelementptr i8, ptr %180, i32 -1
  %213 = icmp ult ptr %210, %212
  br i1 %213, label %214, label %221

214:                                              ; preds = %209
  %215 = load i16, ptr %211, align 1
  %216 = load i16, ptr %210, align 1
  %217 = icmp eq i16 %215, %216
  br i1 %217, label %218, label %221

218:                                              ; preds = %214
  %219 = getelementptr i8, ptr %210, i32 2
  %220 = getelementptr i8, ptr %211, i32 2
  br label %221

221:                                              ; preds = %218, %214, %209
  %222 = phi ptr [ %219, %218 ], [ %210, %214 ], [ %210, %209 ]
  %223 = phi ptr [ %220, %218 ], [ %211, %214 ], [ %211, %209 ]
  %224 = icmp ult ptr %222, %180
  br i1 %224, label %225, label %231

225:                                              ; preds = %221
  %226 = load i8, ptr %223, align 1
  %227 = load i8, ptr %222, align 1
  %228 = icmp eq i8 %226, %227
  %229 = zext i1 %228 to i32
  %230 = getelementptr i8, ptr %222, i32 %229
  br label %231

231:                                              ; preds = %225, %221
  %232 = phi ptr [ %222, %221 ], [ %230, %225 ]
  %233 = ptrtoint ptr %232 to i32
  %234 = ptrtoint ptr %174 to i32
  %235 = sub i32 %233, %234
  br label %236

236:                                              ; preds = %231, %202, %188
  %237 = phi i32 [ %235, %231 ], [ %190, %188 ], [ %208, %202 ]
  %238 = getelementptr i8, ptr %175, i32 %237
  %239 = icmp eq ptr %238, %77
  br i1 %239, label %240, label %298

240:                                              ; preds = %236
  %241 = getelementptr i8, ptr %174, i32 %237
  %242 = icmp ugt ptr %25, %241
  br i1 %242, label %243, label %269

243:                                              ; preds = %240
  %244 = load i32, ptr %78, align 1
  %245 = load i32, ptr %241, align 1
  %246 = xor i32 %245, %244
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %251, label %248

248:                                              ; preds = %243
  %249 = tail call i32 @llvm.cttz.i32(i32 %246, i1 true) #10, !range !8
  %250 = lshr i32 %249, 3
  br label %295

251:                                              ; preds = %257, %243
  %252 = phi ptr [ %255, %257 ], [ %241, %243 ]
  %253 = phi ptr [ %254, %257 ], [ %78, %243 ]
  %254 = getelementptr i8, ptr %253, i32 4
  %255 = getelementptr i8, ptr %252, i32 4
  %256 = icmp ult ptr %255, %25
  br i1 %256, label %257, label %269

257:                                              ; preds = %251
  %258 = load i32, ptr %254, align 1
  %259 = load i32, ptr %255, align 1
  %260 = xor i32 %259, %258
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %251, label %262

262:                                              ; preds = %257
  %263 = tail call i32 @llvm.cttz.i32(i32 %260, i1 true) #10, !range !8
  %264 = lshr i32 %263, 3
  %265 = getelementptr i8, ptr %255, i32 %264
  %266 = ptrtoint ptr %265 to i32
  %267 = ptrtoint ptr %241 to i32
  %268 = sub i32 %266, %267
  br label %295

269:                                              ; preds = %251, %240
  %270 = phi ptr [ %241, %240 ], [ %255, %251 ]
  %271 = phi ptr [ %78, %240 ], [ %254, %251 ]
  %272 = icmp ult ptr %270, %26
  br i1 %272, label %273, label %280

273:                                              ; preds = %269
  %274 = load i16, ptr %271, align 1
  %275 = load i16, ptr %270, align 1
  %276 = icmp eq i16 %274, %275
  br i1 %276, label %277, label %280

277:                                              ; preds = %273
  %278 = getelementptr i8, ptr %270, i32 2
  %279 = getelementptr i8, ptr %271, i32 2
  br label %280

280:                                              ; preds = %277, %273, %269
  %281 = phi ptr [ %278, %277 ], [ %270, %273 ], [ %270, %269 ]
  %282 = phi ptr [ %279, %277 ], [ %271, %273 ], [ %271, %269 ]
  %283 = icmp ult ptr %281, %2
  br i1 %283, label %284, label %290

284:                                              ; preds = %280
  %285 = load i8, ptr %282, align 1
  %286 = load i8, ptr %281, align 1
  %287 = icmp eq i8 %285, %286
  %288 = zext i1 %287 to i32
  %289 = getelementptr i8, ptr %281, i32 %288
  br label %290

290:                                              ; preds = %284, %280
  %291 = phi ptr [ %281, %280 ], [ %289, %284 ]
  %292 = ptrtoint ptr %291 to i32
  %293 = ptrtoint ptr %241 to i32
  %294 = sub i32 %292, %293
  br label %295

295:                                              ; preds = %290, %262, %248
  %296 = phi i32 [ %294, %290 ], [ %250, %248 ], [ %268, %262 ]
  %297 = add i32 %296, %237
  br label %298

298:                                              ; preds = %295, %236
  %299 = phi i32 [ %297, %295 ], [ %237, %236 ]
  %300 = add i32 %299, %107
  %301 = add i32 %300, %103
  %302 = icmp ult i32 %301, %76
  %303 = select i1 %302, ptr %75, ptr %74
  br label %304

304:                                              ; preds = %298, %168
  %305 = phi i32 [ %301, %298 ], [ %171, %168 ]
  %306 = phi ptr [ %303, %298 ], [ %74, %168 ]
  %307 = phi i32 [ %300, %298 ], [ %170, %168 ]
  %308 = icmp ugt i32 %307, %97
  %309 = sub i32 %98, %103
  %310 = icmp ugt i32 %307, %309
  %311 = select i1 %308, i1 %310, i1 false
  %312 = select i1 %311, i32 %305, i32 %98
  %313 = tail call i32 @llvm.umax.i32(i32 %307, i32 %97) #10
  %314 = getelementptr i8, ptr %29, i32 %307
  %315 = icmp eq ptr %314, %2
  br i1 %315, label %339, label %316

316:                                              ; preds = %304
  %317 = getelementptr i8, ptr %306, i32 %103
  %318 = getelementptr i8, ptr %317, i32 %307
  %319 = load i8, ptr %318, align 1
  %320 = load i8, ptr %314, align 1
  %321 = icmp ult i8 %319, %320
  br i1 %321, label %322, label %326

322:                                              ; preds = %316
  store i32 %103, ptr %100, align 4
  %323 = icmp ugt i32 %103, %82
  br i1 %323, label %324, label %339

324:                                              ; preds = %322
  %325 = getelementptr i32, ptr %106, i32 1
  br label %328

326:                                              ; preds = %316
  store i32 %103, ptr %99, align 4
  %327 = icmp ugt i32 %103, %82
  br i1 %327, label %328, label %339

328:                                              ; preds = %326, %324
  %329 = phi ptr [ %325, %324 ], [ %106, %326 ]
  %330 = phi i32 [ %307, %324 ], [ %102, %326 ]
  %331 = phi i32 [ %101, %324 ], [ %307, %326 ]
  %332 = phi ptr [ %325, %324 ], [ %100, %326 ]
  %333 = phi ptr [ %99, %324 ], [ %106, %326 ]
  %334 = load i32, ptr %329, align 4
  %335 = add i32 %96, -1
  %336 = icmp ne i32 %335, 0
  %337 = icmp uge i32 %334, %87
  %338 = select i1 %336, i1 %337, i1 false
  br i1 %338, label %95, label %339

339:                                              ; preds = %328, %326, %322, %304
  %340 = phi ptr [ %332, %328 ], [ %100, %304 ], [ %6, %322 ], [ %100, %326 ]
  %341 = phi ptr [ %333, %328 ], [ %99, %304 ], [ %99, %322 ], [ %6, %326 ]
  store i32 0, ptr %341, align 4
  store i32 0, ptr %340, align 4
  %342 = icmp ugt i32 %313, 384
  %343 = add i32 %313, -384
  %344 = tail call i32 @llvm.umin.i32(i32 %343, i32 192) #10
  %345 = select i1 %342, i32 %344, i32 0
  br label %346

346:                                              ; preds = %339, %91
  %347 = phi i32 [ %88, %91 ], [ %312, %339 ]
  %348 = phi i32 [ 0, %91 ], [ %345, %339 ]
  %349 = sub i32 -8, %81
  %350 = add i32 %349, %347
  %351 = tail call i32 @llvm.umax.i32(i32 %348, i32 %350) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6)
  %352 = add i32 %351, %28
  %353 = icmp ult i32 %352, %11
  br i1 %353, label %27, label %354

354:                                              ; preds = %346, %5
  store i32 %11, ptr %12, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ZSTD_compressBlock_btopt(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #1 {
  %6 = tail call fastcc i32 @ZSTD_compressBlock_opt_generic(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef 0, i32 noundef 0)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ZSTD_compressBlock_opt_generic(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #1 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ZSTD_optLdm_t, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 8
  %14 = getelementptr i8, ptr %3, i32 %4
  %15 = getelementptr i8, ptr %14, i32 -8
  %16 = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr i8, ptr %17, i32 %19
  %21 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 10, i32 5
  %22 = load i32, ptr %21, align 4
  %23 = tail call i32 @llvm.umin.i32(i32 %22, i32 4095)
  %24 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 10, i32 4
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 3
  %27 = select i1 %26, i32 3, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #10
  %28 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 2
  %29 = load i32, ptr %28, align 4
  store i32 %29, ptr %9, align 4
  %30 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 8, i32 5
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 8, i32 4
  %33 = load ptr, ptr %32, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %10, i8 0, i32 20, i1 false), !annotation !9
  %34 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 11
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %10, ptr noundef nonnull align 4 dereferenceable(20) %35, i32 20, i1 false)
  br label %39

38:                                               ; preds = %7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %10, i8 0, i32 20, i1 false)
  br label %39

39:                                               ; preds = %38, %37
  %40 = getelementptr inbounds %struct.ZSTD_optLdm_t, ptr %10, i32 0, i32 3
  store i32 0, ptr %40, align 4
  %41 = getelementptr inbounds %struct.ZSTD_optLdm_t, ptr %10, i32 0, i32 1
  store i32 0, ptr %41, align 4
  %42 = getelementptr inbounds %struct.ZSTD_optLdm_t, ptr %10, i32 0, i32 2
  store i32 0, ptr %42, align 4
  %43 = ptrtoint ptr %3 to i32
  %44 = ptrtoint ptr %14 to i32
  call fastcc void @ZSTD_opt_getNextMatchAndUpdateSeqStore(ptr noundef nonnull %10, i32 noundef 0, i32 noundef %4)
  %45 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 8, i32 16
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %46, 2
  %48 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 8, i32 14
  store i32 0, ptr %48, align 4
  %49 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 8, i32 7
  %50 = load i32, ptr %49, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %343

52:                                               ; preds = %39
  %53 = icmp ult i32 %4, 1025
  br i1 %53, label %54, label %55

54:                                               ; preds = %52
  store i32 1, ptr %48, align 4
  br label %55

55:                                               ; preds = %54, %52
  %56 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 8, i32 15
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.ZSTD_hufCTables_t, ptr %57, i32 0, i32 1
  %59 = load i32, ptr %58, align 4
  %60 = icmp eq i32 %59, 2
  br i1 %60, label %61, label %180

61:                                               ; preds = %55
  store i32 0, ptr %48, align 4
  br i1 %47, label %82, label %62

62:                                               ; preds = %61
  %63 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 8, i32 6
  store i32 0, ptr %63, align 4
  br label %64

64:                                               ; preds = %64, %62
  %65 = phi ptr [ %57, %62 ], [ %81, %64 ]
  %66 = phi i32 [ 0, %62 ], [ %79, %64 ]
  %67 = call i32 @HUF_getNbBits(ptr noundef %65, i32 noundef %66) #10
  %68 = icmp eq i32 %67, 0
  %69 = sub i32 11, %67
  %70 = shl nuw i32 1, %69
  %71 = select i1 %68, i32 1, i32 %70
  %72 = load ptr, ptr %13, align 4
  %73 = getelementptr i32, ptr %72, i32 %66
  store i32 %71, ptr %73, align 4
  %74 = load ptr, ptr %13, align 4
  %75 = getelementptr i32, ptr %74, i32 %66
  %76 = load i32, ptr %75, align 4
  %77 = load i32, ptr %63, align 4
  %78 = add i32 %77, %76
  store i32 %78, ptr %63, align 4
  %79 = add nuw nsw i32 %66, 1
  %80 = icmp eq i32 %79, 256
  %81 = load ptr, ptr %56, align 4
  br i1 %80, label %82, label %64

82:                                               ; preds = %64, %61
  %83 = phi ptr [ %57, %61 ], [ %81, %64 ]
  %84 = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %83, i32 0, i32 1, i32 2
  %85 = load i16, ptr %84, align 1
  %86 = zext i16 %85 to i32
  %87 = getelementptr %struct.ZSTD_entropyCTables_t, ptr %83, i32 0, i32 1, i32 2, i32 1
  %88 = icmp eq i16 %85, 0
  %89 = add nsw i32 %86, -1
  %90 = shl nuw i32 1, %89
  %91 = select i1 %88, i32 1, i32 %90
  %92 = getelementptr i32, ptr %87, i32 %91
  store i32 0, ptr %49, align 4
  %93 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 8, i32 1
  %94 = load ptr, ptr %93, align 4
  br label %95

95:                                               ; preds = %95, %82
  %96 = phi ptr [ %94, %82 ], [ %107, %95 ]
  %97 = phi i32 [ 0, %82 ], [ %112, %95 ]
  %98 = getelementptr %struct.FSE_symbolCompressionTransform, ptr %92, i32 %97, i32 1
  %99 = load i32, ptr %98, align 4
  %100 = add i32 %99, 65535
  %101 = lshr i32 %100, 16
  %102 = icmp ult i32 %100, 65536
  %103 = sub nsw i32 10, %101
  %104 = shl nuw nsw i32 1, %103
  %105 = select i1 %102, i32 1, i32 %104
  %106 = getelementptr i32, ptr %96, i32 %97
  store i32 %105, ptr %106, align 4
  %107 = load ptr, ptr %93, align 4
  %108 = getelementptr i32, ptr %107, i32 %97
  %109 = load i32, ptr %108, align 4
  %110 = load i32, ptr %49, align 4
  %111 = add i32 %110, %109
  store i32 %111, ptr %49, align 4
  %112 = add nuw nsw i32 %97, 1
  %113 = icmp eq i32 %112, 36
  br i1 %113, label %114, label %95

114:                                              ; preds = %95
  %115 = load ptr, ptr %56, align 4
  %116 = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %115, i32 0, i32 1, i32 1
  %117 = load i16, ptr %116, align 1
  %118 = zext i16 %117 to i32
  %119 = getelementptr %struct.ZSTD_entropyCTables_t, ptr %115, i32 0, i32 1, i32 1, i32 1
  %120 = icmp eq i16 %117, 0
  %121 = add nsw i32 %118, -1
  %122 = shl nuw i32 1, %121
  %123 = select i1 %120, i32 1, i32 %122
  %124 = getelementptr i32, ptr %119, i32 %123
  %125 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 8, i32 8
  store i32 0, ptr %125, align 4
  %126 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 8, i32 2
  %127 = load ptr, ptr %126, align 4
  br label %128

128:                                              ; preds = %128, %114
  %129 = phi ptr [ %127, %114 ], [ %140, %128 ]
  %130 = phi i32 [ 0, %114 ], [ %145, %128 ]
  %131 = getelementptr %struct.FSE_symbolCompressionTransform, ptr %124, i32 %130, i32 1
  %132 = load i32, ptr %131, align 4
  %133 = add i32 %132, 65535
  %134 = lshr i32 %133, 16
  %135 = icmp ult i32 %133, 65536
  %136 = sub nsw i32 10, %134
  %137 = shl nuw nsw i32 1, %136
  %138 = select i1 %135, i32 1, i32 %137
  %139 = getelementptr i32, ptr %129, i32 %130
  store i32 %138, ptr %139, align 4
  %140 = load ptr, ptr %126, align 4
  %141 = getelementptr i32, ptr %140, i32 %130
  %142 = load i32, ptr %141, align 4
  %143 = load i32, ptr %125, align 4
  %144 = add i32 %143, %142
  store i32 %144, ptr %125, align 4
  %145 = add nuw nsw i32 %130, 1
  %146 = icmp eq i32 %145, 53
  br i1 %146, label %147, label %128

147:                                              ; preds = %128
  %148 = load ptr, ptr %56, align 4
  %149 = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %148, i32 0, i32 1
  %150 = load i16, ptr %149, align 1
  %151 = zext i16 %150 to i32
  %152 = getelementptr %struct.ZSTD_entropyCTables_t, ptr %148, i32 0, i32 1, i32 0, i32 1
  %153 = icmp eq i16 %150, 0
  %154 = add nsw i32 %151, -1
  %155 = shl nuw i32 1, %154
  %156 = select i1 %153, i32 1, i32 %155
  %157 = getelementptr i32, ptr %152, i32 %156
  %158 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 8, i32 9
  store i32 0, ptr %158, align 4
  %159 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 8, i32 3
  %160 = load ptr, ptr %159, align 4
  br label %161

161:                                              ; preds = %161, %147
  %162 = phi ptr [ %160, %147 ], [ %173, %161 ]
  %163 = phi i32 [ 0, %147 ], [ %178, %161 ]
  %164 = getelementptr %struct.FSE_symbolCompressionTransform, ptr %157, i32 %163, i32 1
  %165 = load i32, ptr %164, align 4
  %166 = add i32 %165, 65535
  %167 = lshr i32 %166, 16
  %168 = icmp ult i32 %166, 65536
  %169 = sub nsw i32 10, %167
  %170 = shl nuw nsw i32 1, %169
  %171 = select i1 %168, i32 1, i32 %170
  %172 = getelementptr i32, ptr %162, i32 %163
  store i32 %171, ptr %172, align 4
  %173 = load ptr, ptr %159, align 4
  %174 = getelementptr i32, ptr %173, i32 %163
  %175 = load i32, ptr %174, align 4
  %176 = load i32, ptr %158, align 4
  %177 = add i32 %176, %175
  store i32 %177, ptr %158, align 4
  %178 = add nuw nsw i32 %163, 1
  %179 = icmp eq i32 %178, 32
  br i1 %179, label %401, label %161

180:                                              ; preds = %55
  br i1 %47, label %197, label %181

181:                                              ; preds = %180
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #10
  store i32 255, ptr %8, align 4
  %182 = load ptr, ptr %13, align 4
  %183 = call i32 @HIST_count_simple(ptr noundef %182, ptr noundef nonnull %8, ptr noundef %3, i32 noundef %4) #10
  %184 = load ptr, ptr %13, align 4
  br label %185

185:                                              ; preds = %185, %181
  %186 = phi i32 [ 0, %181 ], [ %192, %185 ]
  %187 = phi i32 [ 0, %181 ], [ %193, %185 ]
  %188 = getelementptr i32, ptr %184, i32 %187
  %189 = load i32, ptr %188, align 4
  %190 = lshr i32 %189, 5
  %191 = add nuw nsw i32 %190, 1
  store i32 %191, ptr %188, align 4
  %192 = add i32 %191, %186
  %193 = add nuw nsw i32 %187, 1
  %194 = icmp eq i32 %187, 255
  br i1 %194, label %195, label %185

195:                                              ; preds = %185
  %196 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 8, i32 6
  store i32 %192, ptr %196, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #10
  br label %197

197:                                              ; preds = %195, %180
  %198 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 8, i32 1
  %199 = load ptr, ptr %198, align 4
  store i32 1, ptr %199, align 4
  %200 = load ptr, ptr %198, align 4
  %201 = getelementptr i32, ptr %200, i32 1
  store i32 1, ptr %201, align 4
  %202 = load ptr, ptr %198, align 4
  %203 = getelementptr i32, ptr %202, i32 2
  store i32 1, ptr %203, align 4
  %204 = load ptr, ptr %198, align 4
  %205 = getelementptr i32, ptr %204, i32 3
  store i32 1, ptr %205, align 4
  %206 = load ptr, ptr %198, align 4
  %207 = getelementptr i32, ptr %206, i32 4
  store i32 1, ptr %207, align 4
  %208 = load ptr, ptr %198, align 4
  %209 = getelementptr i32, ptr %208, i32 5
  store i32 1, ptr %209, align 4
  %210 = load ptr, ptr %198, align 4
  %211 = getelementptr i32, ptr %210, i32 6
  store i32 1, ptr %211, align 4
  %212 = load ptr, ptr %198, align 4
  %213 = getelementptr i32, ptr %212, i32 7
  store i32 1, ptr %213, align 4
  %214 = load ptr, ptr %198, align 4
  %215 = getelementptr i32, ptr %214, i32 8
  store i32 1, ptr %215, align 4
  %216 = load ptr, ptr %198, align 4
  %217 = getelementptr i32, ptr %216, i32 9
  store i32 1, ptr %217, align 4
  %218 = load ptr, ptr %198, align 4
  %219 = getelementptr i32, ptr %218, i32 10
  store i32 1, ptr %219, align 4
  %220 = load ptr, ptr %198, align 4
  %221 = getelementptr i32, ptr %220, i32 11
  store i32 1, ptr %221, align 4
  %222 = load ptr, ptr %198, align 4
  %223 = getelementptr i32, ptr %222, i32 12
  store i32 1, ptr %223, align 4
  %224 = load ptr, ptr %198, align 4
  %225 = getelementptr i32, ptr %224, i32 13
  store i32 1, ptr %225, align 4
  %226 = load ptr, ptr %198, align 4
  %227 = getelementptr i32, ptr %226, i32 14
  store i32 1, ptr %227, align 4
  %228 = load ptr, ptr %198, align 4
  %229 = getelementptr i32, ptr %228, i32 15
  store i32 1, ptr %229, align 4
  %230 = load ptr, ptr %198, align 4
  %231 = getelementptr i32, ptr %230, i32 16
  store i32 1, ptr %231, align 4
  %232 = load ptr, ptr %198, align 4
  %233 = getelementptr i32, ptr %232, i32 17
  store i32 1, ptr %233, align 4
  %234 = load ptr, ptr %198, align 4
  %235 = getelementptr i32, ptr %234, i32 18
  store i32 1, ptr %235, align 4
  %236 = load ptr, ptr %198, align 4
  %237 = getelementptr i32, ptr %236, i32 19
  store i32 1, ptr %237, align 4
  %238 = load ptr, ptr %198, align 4
  %239 = getelementptr i32, ptr %238, i32 20
  store i32 1, ptr %239, align 4
  %240 = load ptr, ptr %198, align 4
  %241 = getelementptr i32, ptr %240, i32 21
  store i32 1, ptr %241, align 4
  %242 = load ptr, ptr %198, align 4
  %243 = getelementptr i32, ptr %242, i32 22
  store i32 1, ptr %243, align 4
  %244 = load ptr, ptr %198, align 4
  %245 = getelementptr i32, ptr %244, i32 23
  store i32 1, ptr %245, align 4
  %246 = load ptr, ptr %198, align 4
  %247 = getelementptr i32, ptr %246, i32 24
  store i32 1, ptr %247, align 4
  %248 = load ptr, ptr %198, align 4
  %249 = getelementptr i32, ptr %248, i32 25
  store i32 1, ptr %249, align 4
  %250 = load ptr, ptr %198, align 4
  %251 = getelementptr i32, ptr %250, i32 26
  store i32 1, ptr %251, align 4
  %252 = load ptr, ptr %198, align 4
  %253 = getelementptr i32, ptr %252, i32 27
  store i32 1, ptr %253, align 4
  %254 = load ptr, ptr %198, align 4
  %255 = getelementptr i32, ptr %254, i32 28
  store i32 1, ptr %255, align 4
  %256 = load ptr, ptr %198, align 4
  %257 = getelementptr i32, ptr %256, i32 29
  store i32 1, ptr %257, align 4
  %258 = load ptr, ptr %198, align 4
  %259 = getelementptr i32, ptr %258, i32 30
  store i32 1, ptr %259, align 4
  %260 = load ptr, ptr %198, align 4
  %261 = getelementptr i32, ptr %260, i32 31
  store i32 1, ptr %261, align 4
  %262 = load ptr, ptr %198, align 4
  %263 = getelementptr i32, ptr %262, i32 32
  store i32 1, ptr %263, align 4
  %264 = load ptr, ptr %198, align 4
  %265 = getelementptr i32, ptr %264, i32 33
  store i32 1, ptr %265, align 4
  %266 = load ptr, ptr %198, align 4
  %267 = getelementptr i32, ptr %266, i32 34
  store i32 1, ptr %267, align 4
  %268 = load ptr, ptr %198, align 4
  %269 = getelementptr i32, ptr %268, i32 35
  store i32 1, ptr %269, align 4
  store i32 36, ptr %49, align 4
  %270 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 8, i32 2
  br label %271

271:                                              ; preds = %271, %197
  %272 = phi i32 [ 0, %197 ], [ %275, %271 ]
  %273 = load ptr, ptr %270, align 4
  %274 = getelementptr i32, ptr %273, i32 %272
  store i32 1, ptr %274, align 4
  %275 = add nuw nsw i32 %272, 1
  %276 = icmp eq i32 %275, 53
  br i1 %276, label %277, label %271

277:                                              ; preds = %271
  %278 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 8, i32 8
  store i32 53, ptr %278, align 4
  %279 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 8, i32 3
  %280 = load ptr, ptr %279, align 4
  store i32 1, ptr %280, align 4
  %281 = load ptr, ptr %279, align 4
  %282 = getelementptr i32, ptr %281, i32 1
  store i32 1, ptr %282, align 4
  %283 = load ptr, ptr %279, align 4
  %284 = getelementptr i32, ptr %283, i32 2
  store i32 1, ptr %284, align 4
  %285 = load ptr, ptr %279, align 4
  %286 = getelementptr i32, ptr %285, i32 3
  store i32 1, ptr %286, align 4
  %287 = load ptr, ptr %279, align 4
  %288 = getelementptr i32, ptr %287, i32 4
  store i32 1, ptr %288, align 4
  %289 = load ptr, ptr %279, align 4
  %290 = getelementptr i32, ptr %289, i32 5
  store i32 1, ptr %290, align 4
  %291 = load ptr, ptr %279, align 4
  %292 = getelementptr i32, ptr %291, i32 6
  store i32 1, ptr %292, align 4
  %293 = load ptr, ptr %279, align 4
  %294 = getelementptr i32, ptr %293, i32 7
  store i32 1, ptr %294, align 4
  %295 = load ptr, ptr %279, align 4
  %296 = getelementptr i32, ptr %295, i32 8
  store i32 1, ptr %296, align 4
  %297 = load ptr, ptr %279, align 4
  %298 = getelementptr i32, ptr %297, i32 9
  store i32 1, ptr %298, align 4
  %299 = load ptr, ptr %279, align 4
  %300 = getelementptr i32, ptr %299, i32 10
  store i32 1, ptr %300, align 4
  %301 = load ptr, ptr %279, align 4
  %302 = getelementptr i32, ptr %301, i32 11
  store i32 1, ptr %302, align 4
  %303 = load ptr, ptr %279, align 4
  %304 = getelementptr i32, ptr %303, i32 12
  store i32 1, ptr %304, align 4
  %305 = load ptr, ptr %279, align 4
  %306 = getelementptr i32, ptr %305, i32 13
  store i32 1, ptr %306, align 4
  %307 = load ptr, ptr %279, align 4
  %308 = getelementptr i32, ptr %307, i32 14
  store i32 1, ptr %308, align 4
  %309 = load ptr, ptr %279, align 4
  %310 = getelementptr i32, ptr %309, i32 15
  store i32 1, ptr %310, align 4
  %311 = load ptr, ptr %279, align 4
  %312 = getelementptr i32, ptr %311, i32 16
  store i32 1, ptr %312, align 4
  %313 = load ptr, ptr %279, align 4
  %314 = getelementptr i32, ptr %313, i32 17
  store i32 1, ptr %314, align 4
  %315 = load ptr, ptr %279, align 4
  %316 = getelementptr i32, ptr %315, i32 18
  store i32 1, ptr %316, align 4
  %317 = load ptr, ptr %279, align 4
  %318 = getelementptr i32, ptr %317, i32 19
  store i32 1, ptr %318, align 4
  %319 = load ptr, ptr %279, align 4
  %320 = getelementptr i32, ptr %319, i32 20
  store i32 1, ptr %320, align 4
  %321 = load ptr, ptr %279, align 4
  %322 = getelementptr i32, ptr %321, i32 21
  store i32 1, ptr %322, align 4
  %323 = load ptr, ptr %279, align 4
  %324 = getelementptr i32, ptr %323, i32 22
  store i32 1, ptr %324, align 4
  %325 = load ptr, ptr %279, align 4
  %326 = getelementptr i32, ptr %325, i32 23
  store i32 1, ptr %326, align 4
  %327 = load ptr, ptr %279, align 4
  %328 = getelementptr i32, ptr %327, i32 24
  store i32 1, ptr %328, align 4
  %329 = load ptr, ptr %279, align 4
  %330 = getelementptr i32, ptr %329, i32 25
  store i32 1, ptr %330, align 4
  %331 = load ptr, ptr %279, align 4
  %332 = getelementptr i32, ptr %331, i32 26
  store i32 1, ptr %332, align 4
  %333 = load ptr, ptr %279, align 4
  %334 = getelementptr i32, ptr %333, i32 27
  store i32 1, ptr %334, align 4
  %335 = load ptr, ptr %279, align 4
  %336 = getelementptr i32, ptr %335, i32 28
  store i32 1, ptr %336, align 4
  %337 = load ptr, ptr %279, align 4
  %338 = getelementptr i32, ptr %337, i32 29
  store i32 1, ptr %338, align 4
  %339 = load ptr, ptr %279, align 4
  %340 = getelementptr i32, ptr %339, i32 30
  store i32 1, ptr %340, align 4
  %341 = load ptr, ptr %279, align 4
  %342 = getelementptr i32, ptr %341, i32 31
  store i32 1, ptr %342, align 4
  br label %398

343:                                              ; preds = %39
  br i1 %47, label %358, label %344

344:                                              ; preds = %343
  %345 = load ptr, ptr %13, align 4
  br label %346

346:                                              ; preds = %346, %344
  %347 = phi i32 [ 0, %344 ], [ %353, %346 ]
  %348 = phi i32 [ 0, %344 ], [ %354, %346 ]
  %349 = getelementptr i32, ptr %345, i32 %348
  %350 = load i32, ptr %349, align 4
  %351 = lshr i32 %350, 5
  %352 = add nuw nsw i32 %351, 1
  store i32 %352, ptr %349, align 4
  %353 = add i32 %352, %347
  %354 = add nuw nsw i32 %348, 1
  %355 = icmp eq i32 %348, 255
  br i1 %355, label %356, label %346

356:                                              ; preds = %346
  %357 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 8, i32 6
  store i32 %353, ptr %357, align 4
  br label %358

358:                                              ; preds = %356, %343
  %359 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 8, i32 1
  %360 = load ptr, ptr %359, align 4
  br label %361

361:                                              ; preds = %361, %358
  %362 = phi i32 [ 0, %358 ], [ %368, %361 ]
  %363 = phi i32 [ 0, %358 ], [ %369, %361 ]
  %364 = getelementptr i32, ptr %360, i32 %363
  %365 = load i32, ptr %364, align 4
  %366 = lshr i32 %365, 4
  %367 = add nuw nsw i32 %366, 1
  store i32 %367, ptr %364, align 4
  %368 = add i32 %367, %362
  %369 = add nuw nsw i32 %363, 1
  %370 = icmp eq i32 %363, 35
  br i1 %370, label %371, label %361

371:                                              ; preds = %361
  store i32 %368, ptr %49, align 4
  %372 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 8, i32 2
  %373 = load ptr, ptr %372, align 4
  br label %374

374:                                              ; preds = %374, %371
  %375 = phi i32 [ 0, %371 ], [ %381, %374 ]
  %376 = phi i32 [ 0, %371 ], [ %382, %374 ]
  %377 = getelementptr i32, ptr %373, i32 %376
  %378 = load i32, ptr %377, align 4
  %379 = lshr i32 %378, 4
  %380 = add nuw nsw i32 %379, 1
  store i32 %380, ptr %377, align 4
  %381 = add i32 %380, %375
  %382 = add nuw nsw i32 %376, 1
  %383 = icmp eq i32 %376, 52
  br i1 %383, label %384, label %374

384:                                              ; preds = %374
  %385 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 8, i32 8
  store i32 %381, ptr %385, align 4
  %386 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 8, i32 3
  %387 = load ptr, ptr %386, align 4
  br label %388

388:                                              ; preds = %388, %384
  %389 = phi i32 [ 0, %384 ], [ %395, %388 ]
  %390 = phi i32 [ 0, %384 ], [ %396, %388 ]
  %391 = getelementptr i32, ptr %387, i32 %390
  %392 = load i32, ptr %391, align 4
  %393 = lshr i32 %392, 4
  %394 = add nuw nsw i32 %393, 1
  store i32 %394, ptr %391, align 4
  %395 = add i32 %394, %389
  %396 = add nuw nsw i32 %390, 1
  %397 = icmp eq i32 %390, 31
  br i1 %397, label %398, label %388

398:                                              ; preds = %388, %277
  %399 = phi i32 [ 32, %277 ], [ %395, %388 ]
  %400 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 8, i32 9
  store i32 %399, ptr %400, align 4
  br label %401

401:                                              ; preds = %398, %161
  call fastcc void @ZSTD_setBasePrices(ptr noundef %13, i32 noundef %5) #10
  %402 = icmp eq ptr %20, %3
  %403 = zext i1 %402 to i32
  %404 = getelementptr i8, ptr %3, i32 %403
  %405 = icmp ult ptr %404, %15
  br i1 %405, label %406, label %1218

406:                                              ; preds = %401
  %407 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %31, i32 0, i32 2
  %408 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %31, i32 0, i32 3
  %409 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 8, i32 11
  %410 = icmp eq i32 %5, 0
  %411 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 8, i32 1
  %412 = select i1 %410, i32 0, i32 256
  %413 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 8, i32 10
  %414 = getelementptr i8, ptr %2, i32 4
  %415 = getelementptr i8, ptr %2, i32 8
  %416 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 8, i32 6
  %417 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 8, i32 3
  %418 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 8, i32 9
  %419 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 8, i32 2
  %420 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 8, i32 8
  %421 = getelementptr i8, ptr %14, i32 -32
  %422 = getelementptr inbounds %struct.seqStore_t, ptr %1, i32 0, i32 3
  %423 = ptrtoint ptr %421 to i32
  %424 = getelementptr inbounds %struct.seqStore_t, ptr %1, i32 0, i32 9
  %425 = getelementptr inbounds %struct.seqStore_t, ptr %1, i32 0, i32 1
  %426 = getelementptr inbounds %struct.seqStore_t, ptr %1, i32 0, i32 10
  %427 = getelementptr %struct.ZSTD_optimal_t, ptr %31, i32 0, i32 4, i32 0
  %428 = getelementptr %struct.ZSTD_optimal_t, ptr %31, i32 0, i32 4, i32 1
  %429 = getelementptr %struct.ZSTD_optimal_t, ptr %31, i32 0, i32 4, i32 2
  br label %430

430:                                              ; preds = %1208, %406
  %431 = phi ptr [ %404, %406 ], [ %1214, %1208 ]
  %432 = phi ptr [ %3, %406 ], [ %1213, %1208 ]
  %433 = phi i32 [ 0, %406 ], [ %1212, %1208 ]
  %434 = phi i32 [ 0, %406 ], [ %1211, %1208 ]
  %435 = phi i32 [ 0, %406 ], [ %1210, %1208 ]
  %436 = phi i32 [ 0, %406 ], [ %1209, %1208 ]
  %437 = ptrtoint ptr %431 to i32
  %438 = ptrtoint ptr %432 to i32
  %439 = sub i32 %437, %438
  %440 = icmp eq i32 %439, 0
  %441 = zext i1 %440 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #10
  %442 = load ptr, ptr %16, align 4
  %443 = load i32, ptr %28, align 4
  %444 = getelementptr i8, ptr %442, i32 %443
  %445 = icmp ugt ptr %444, %431
  br i1 %445, label %456, label %446

446:                                              ; preds = %430
  %447 = load i32, ptr %24, align 4
  call fastcc void @ZSTD_updateTree_internal(ptr noundef %0, ptr noundef %431, ptr noundef %14, i32 noundef %447, i32 noundef %6) #10
  %448 = add i32 %447, -3
  %449 = icmp ult i32 %448, 5
  br i1 %449, label %450, label %453

450:                                              ; preds = %446
  %451 = getelementptr inbounds [5 x i32], ptr @switch.table.ZSTD_compressBlock_opt_generic.1, i32 0, i32 %448
  %452 = load i32, ptr %451, align 4
  br label %453

453:                                              ; preds = %450, %446
  %454 = phi i32 [ %452, %450 ], [ 4, %446 ]
  %455 = call fastcc i32 @ZSTD_insertBtAndGetAllMatches(ptr noundef %33, ptr noundef %0, ptr noundef nonnull %9, ptr noundef %431, ptr noundef %14, i32 noundef %6, ptr noundef %2, i32 noundef %441, i32 noundef %27, i32 noundef %454) #10
  br label %456

456:                                              ; preds = %453, %430
  %457 = phi i32 [ 0, %430 ], [ %455, %453 ]
  store i32 %457, ptr %11, align 4
  %458 = sub i32 %437, %43
  %459 = sub i32 %44, %437
  call fastcc void @ZSTD_optLdm_processMatchCandidate(ptr noundef nonnull %10, ptr noundef %33, ptr noundef nonnull %11, i32 noundef %458, i32 noundef %459)
  %460 = load i32, ptr %11, align 4
  %461 = icmp eq i32 %460, 0
  br i1 %461, label %468, label %462

462:                                              ; preds = %456
  %463 = load i32, ptr %2, align 4
  store i32 %463, ptr %427, align 4
  %464 = load i32, ptr %414, align 4
  store i32 %464, ptr %428, align 4
  %465 = load i32, ptr %415, align 4
  store i32 %465, ptr %429, align 4
  store i32 0, ptr %407, align 4
  store i32 %439, ptr %408, align 4
  %466 = load i32, ptr %48, align 4
  %467 = icmp eq i32 %466, 1
  br i1 %467, label %470, label %482

468:                                              ; preds = %456
  %469 = getelementptr i8, ptr %431, i32 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #10
  br label %1208

470:                                              ; preds = %462
  %471 = add i32 %439, 1
  %472 = call i32 @llvm.ctlz.i32(i32 %471, i1 false) #10, !range !8
  br i1 %410, label %479, label %473

473:                                              ; preds = %470
  %474 = xor i32 %472, 31
  %475 = shl nuw nsw i32 %474, 8
  %476 = shl i32 %471, 8
  %477 = lshr i32 %476, %474
  %478 = add i32 %475, %477
  br label %516

479:                                              ; preds = %470
  %480 = shl nuw nsw i32 %472, 8
  %481 = xor i32 %480, 7936
  br label %516

482:                                              ; preds = %462
  %483 = icmp ugt i32 %439, 63
  br i1 %483, label %484, label %487

484:                                              ; preds = %482
  %485 = call i32 @llvm.ctlz.i32(i32 %439, i1 true) #10, !range !8
  %486 = sub nuw nsw i32 50, %485
  br label %491

487:                                              ; preds = %482
  %488 = getelementptr [64 x i8], ptr @ZSTD_LLcode.LL_Code, i32 0, i32 %439
  %489 = load i8, ptr %488, align 1
  %490 = zext i8 %489 to i32
  br label %491

491:                                              ; preds = %487, %484
  %492 = phi i32 [ %486, %484 ], [ %490, %487 ]
  %493 = getelementptr [36 x i32], ptr @LL_bits, i32 0, i32 %492
  %494 = load i32, ptr %493, align 4
  %495 = shl i32 %494, 8
  %496 = load i32, ptr %409, align 4
  %497 = add i32 %495, %496
  %498 = load ptr, ptr %411, align 4
  %499 = getelementptr i32, ptr %498, i32 %492
  %500 = load i32, ptr %499, align 4
  %501 = add i32 %500, 1
  %502 = call i32 @llvm.ctlz.i32(i32 %501, i1 false) #10, !range !8
  br i1 %410, label %509, label %503

503:                                              ; preds = %491
  %504 = xor i32 %502, 31
  %505 = mul nsw i32 %504, -256
  %506 = shl i32 %501, 8
  %507 = lshr i32 %506, %504
  %508 = sub i32 %505, %507
  br label %513

509:                                              ; preds = %491
  %510 = shl nuw nsw i32 %502, 8
  %511 = xor i32 %510, -7937
  %512 = add nsw i32 %511, 1
  br label %513

513:                                              ; preds = %509, %503
  %514 = phi i32 [ %508, %503 ], [ %512, %509 ]
  %515 = add i32 %497, %514
  br label %516

516:                                              ; preds = %513, %479, %473
  %517 = phi i32 [ %515, %513 ], [ %478, %473 ], [ %481, %479 ]
  store i32 %517, ptr %31, align 4
  %518 = add i32 %460, -1
  %519 = getelementptr %struct.ZSTD_match_t, ptr %33, i32 %518, i32 1
  %520 = load i32, ptr %519, align 4
  %521 = icmp ugt i32 %520, %23
  br i1 %521, label %522, label %525

522:                                              ; preds = %516
  %523 = getelementptr %struct.ZSTD_match_t, ptr %33, i32 %518
  %524 = load i32, ptr %523, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #10
  br label %955

525:                                              ; preds = %516
  %526 = load i32, ptr %48, align 4
  %527 = icmp eq i32 %526, 1
  br i1 %527, label %547, label %528

528:                                              ; preds = %525
  %529 = load i32, ptr %409, align 4
  %530 = load ptr, ptr %411, align 4
  %531 = load i32, ptr %530, align 4
  %532 = add i32 %531, 1
  %533 = call i32 @llvm.ctlz.i32(i32 %532, i1 false) #10, !range !8
  br i1 %410, label %540, label %534

534:                                              ; preds = %528
  %535 = xor i32 %533, 31
  %536 = mul nsw i32 %535, -256
  %537 = shl i32 %532, 8
  %538 = lshr i32 %537, %535
  %539 = sub i32 %536, %538
  br label %544

540:                                              ; preds = %528
  %541 = shl nuw nsw i32 %533, 8
  %542 = xor i32 %541, -7937
  %543 = add nsw i32 %542, 1
  br label %544

544:                                              ; preds = %540, %534
  %545 = phi i32 [ %539, %534 ], [ %543, %540 ]
  %546 = add i32 %545, %529
  br label %547

547:                                              ; preds = %544, %525
  %548 = phi i32 [ %546, %544 ], [ %412, %525 ]
  br label %549

549:                                              ; preds = %549, %547
  %550 = phi i32 [ 1, %547 ], [ %552, %549 ]
  %551 = getelementptr %struct.ZSTD_optimal_t, ptr %31, i32 %550
  store i32 1073741824, ptr %551, align 4
  %552 = add nuw nsw i32 %550, 1
  %553 = icmp eq i32 %552, %27
  br i1 %553, label %554, label %549

554:                                              ; preds = %549
  %555 = add i32 %548, %517
  %556 = call i32 @llvm.umax.i32(i32 %460, i32 1)
  br label %557

557:                                              ; preds = %575, %554
  %558 = phi i32 [ %577, %575 ], [ 0, %554 ]
  %559 = phi i32 [ %576, %575 ], [ %27, %554 ]
  %560 = getelementptr %struct.ZSTD_match_t, ptr %33, i32 %558
  %561 = load i32, ptr %560, align 4
  %562 = getelementptr %struct.ZSTD_match_t, ptr %33, i32 %558, i32 1
  %563 = load i32, ptr %562, align 4
  %564 = icmp ugt i32 %559, %563
  br i1 %564, label %575, label %565

565:                                              ; preds = %565, %557
  %566 = phi i32 [ %573, %565 ], [ %559, %557 ]
  %567 = call fastcc i32 @ZSTD_getMatchPrice(i32 noundef %561, i32 noundef %566, ptr noundef %13, i32 noundef %5)
  %568 = add i32 %555, %567
  %569 = getelementptr %struct.ZSTD_optimal_t, ptr %31, i32 %566
  %570 = getelementptr %struct.ZSTD_optimal_t, ptr %31, i32 %566, i32 2
  store i32 %566, ptr %570, align 4
  %571 = getelementptr %struct.ZSTD_optimal_t, ptr %31, i32 %566, i32 1
  store i32 %561, ptr %571, align 4
  %572 = getelementptr %struct.ZSTD_optimal_t, ptr %31, i32 %566, i32 3
  store i32 %439, ptr %572, align 4
  store i32 %568, ptr %569, align 4
  %573 = add i32 %566, 1
  %574 = icmp ugt i32 %573, %563
  br i1 %574, label %575, label %565

575:                                              ; preds = %565, %557
  %576 = phi i32 [ %559, %557 ], [ %573, %565 ]
  %577 = add nuw i32 %558, 1
  %578 = icmp eq i32 %577, %556
  br i1 %578, label %579, label %557

579:                                              ; preds = %575
  %580 = add i32 %576, -1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #10
  %581 = icmp eq i32 %580, 0
  br i1 %581, label %927, label %582

582:                                              ; preds = %923, %579
  %583 = phi i32 [ %924, %923 ], [ %580, %579 ]
  %584 = phi i32 [ %925, %923 ], [ 1, %579 ]
  %585 = getelementptr i8, ptr %431, i32 %584
  %586 = add i32 %584, -1
  %587 = getelementptr %struct.ZSTD_optimal_t, ptr %31, i32 %586
  %588 = getelementptr %struct.ZSTD_optimal_t, ptr %31, i32 %586, i32 2
  %589 = load i32, ptr %588, align 4
  %590 = icmp eq i32 %589, 0
  br i1 %590, label %591, label %595

591:                                              ; preds = %582
  %592 = getelementptr %struct.ZSTD_optimal_t, ptr %31, i32 %586, i32 3
  %593 = load i32, ptr %592, align 4
  %594 = add i32 %593, 1
  br label %595

595:                                              ; preds = %591, %582
  %596 = phi i32 [ %594, %591 ], [ 1, %582 ]
  %597 = load i32, ptr %587, align 4
  %598 = getelementptr i8, ptr %585, i32 -1
  %599 = load i32, ptr %45, align 4
  %600 = icmp eq i32 %599, 2
  %601 = load i32, ptr %48, align 4
  br i1 %600, label %628, label %602

602:                                              ; preds = %595
  %603 = icmp eq i32 %601, 1
  br i1 %603, label %604, label %606

604:                                              ; preds = %602
  %605 = add i32 %597, 1536
  br label %631

606:                                              ; preds = %602
  %607 = load i32, ptr %413, align 4
  %608 = load ptr, ptr %13, align 4
  %609 = load i8, ptr %598, align 1
  %610 = zext i8 %609 to i32
  %611 = getelementptr i32, ptr %608, i32 %610
  %612 = load i32, ptr %611, align 4
  %613 = add i32 %612, 1
  %614 = call i32 @llvm.ctlz.i32(i32 %613, i1 false) #10, !range !8
  br i1 %410, label %621, label %615

615:                                              ; preds = %606
  %616 = xor i32 %614, 31
  %617 = shl nuw nsw i32 %616, 8
  %618 = shl i32 %613, 8
  %619 = lshr i32 %618, %616
  %620 = add i32 %617, %619
  br label %624

621:                                              ; preds = %606
  %622 = shl nuw nsw i32 %614, 8
  %623 = xor i32 %622, 7936
  br label %624

624:                                              ; preds = %621, %615
  %625 = phi i32 [ %620, %615 ], [ %623, %621 ]
  %626 = sub i32 %607, %625
  %627 = add i32 %626, %597
  br label %648

628:                                              ; preds = %595
  %629 = add i32 %597, 2048
  %630 = icmp eq i32 %601, 1
  br i1 %630, label %631, label %648

631:                                              ; preds = %628, %604
  %632 = phi i32 [ %605, %604 ], [ %629, %628 ]
  %633 = add i32 %596, 1
  %634 = call i32 @llvm.ctlz.i32(i32 %633, i1 false) #10, !range !8
  br i1 %410, label %686, label %635

635:                                              ; preds = %631
  %636 = xor i32 %634, 31
  %637 = shl nuw nsw i32 %636, 8
  %638 = shl i32 %633, 8
  %639 = lshr i32 %638, %636
  %640 = add i32 %637, %639
  %641 = add i32 %640, %632
  %642 = call i32 @llvm.ctlz.i32(i32 %596, i1 false) #10, !range !8
  %643 = xor i32 %642, 31
  %644 = shl nuw nsw i32 %643, 8
  %645 = shl i32 %596, 8
  %646 = lshr i32 %645, %643
  %647 = add i32 %644, %646
  br label %723

648:                                              ; preds = %628, %624
  %649 = phi i32 [ %627, %624 ], [ %629, %628 ]
  %650 = icmp ugt i32 %596, 63
  br i1 %650, label %651, label %654

651:                                              ; preds = %648
  %652 = call i32 @llvm.ctlz.i32(i32 %596, i1 true) #10, !range !8
  %653 = sub nuw nsw i32 50, %652
  br label %658

654:                                              ; preds = %648
  %655 = getelementptr [64 x i8], ptr @ZSTD_LLcode.LL_Code, i32 0, i32 %596
  %656 = load i8, ptr %655, align 1
  %657 = zext i8 %656 to i32
  br label %658

658:                                              ; preds = %654, %651
  %659 = phi i32 [ %653, %651 ], [ %657, %654 ]
  %660 = getelementptr [36 x i32], ptr @LL_bits, i32 0, i32 %659
  %661 = load i32, ptr %660, align 4
  %662 = shl i32 %661, 8
  %663 = load i32, ptr %409, align 4
  %664 = load ptr, ptr %411, align 4
  %665 = getelementptr i32, ptr %664, i32 %659
  %666 = load i32, ptr %665, align 4
  %667 = add i32 %666, 1
  %668 = call i32 @llvm.ctlz.i32(i32 %667, i1 false) #10, !range !8
  br i1 %410, label %675, label %669

669:                                              ; preds = %658
  %670 = xor i32 %668, 31
  %671 = mul nsw i32 %670, -256
  %672 = shl i32 %667, 8
  %673 = lshr i32 %672, %670
  %674 = sub i32 %671, %673
  br label %679

675:                                              ; preds = %658
  %676 = shl nuw nsw i32 %668, 8
  %677 = xor i32 %676, -7937
  %678 = add nsw i32 %677, 1
  br label %679

679:                                              ; preds = %675, %669
  %680 = phi i32 [ %674, %669 ], [ %678, %675 ]
  %681 = add i32 %663, %649
  %682 = add i32 %681, %662
  %683 = add i32 %682, %680
  %684 = add i32 %596, -1
  %685 = icmp ugt i32 %684, 63
  br i1 %685, label %693, label %696

686:                                              ; preds = %631
  %687 = shl nuw nsw i32 %634, 8
  %688 = xor i32 %687, 7936
  %689 = add i32 %632, %688
  %690 = call i32 @llvm.ctlz.i32(i32 %596, i1 false) #10, !range !8
  %691 = shl nuw nsw i32 %690, 8
  %692 = xor i32 %691, 7936
  br label %723

693:                                              ; preds = %679
  %694 = call i32 @llvm.ctlz.i32(i32 %684, i1 true) #10, !range !8
  %695 = sub nuw nsw i32 50, %694
  br label %700

696:                                              ; preds = %679
  %697 = getelementptr [64 x i8], ptr @ZSTD_LLcode.LL_Code, i32 0, i32 %684
  %698 = load i8, ptr %697, align 1
  %699 = zext i8 %698 to i32
  br label %700

700:                                              ; preds = %696, %693
  %701 = phi i32 [ %695, %693 ], [ %699, %696 ]
  %702 = getelementptr [36 x i32], ptr @LL_bits, i32 0, i32 %701
  %703 = load i32, ptr %702, align 4
  %704 = shl i32 %703, 8
  %705 = add i32 %704, %663
  %706 = getelementptr i32, ptr %664, i32 %701
  %707 = load i32, ptr %706, align 4
  %708 = add i32 %707, 1
  %709 = call i32 @llvm.ctlz.i32(i32 %708, i1 false) #10, !range !8
  br i1 %410, label %716, label %710

710:                                              ; preds = %700
  %711 = xor i32 %709, 31
  %712 = mul nsw i32 %711, -256
  %713 = shl i32 %708, 8
  %714 = lshr i32 %713, %711
  %715 = sub i32 %712, %714
  br label %720

716:                                              ; preds = %700
  %717 = shl nuw nsw i32 %709, 8
  %718 = xor i32 %717, -7937
  %719 = add nsw i32 %718, 1
  br label %720

720:                                              ; preds = %716, %710
  %721 = phi i32 [ %715, %710 ], [ %719, %716 ]
  %722 = add i32 %705, %721
  br label %723

723:                                              ; preds = %720, %686, %635
  %724 = phi i32 [ %683, %720 ], [ %641, %635 ], [ %689, %686 ]
  %725 = phi i32 [ %722, %720 ], [ %647, %635 ], [ %692, %686 ]
  %726 = sub i32 %724, %725
  %727 = getelementptr %struct.ZSTD_optimal_t, ptr %31, i32 %584
  %728 = load i32, ptr %727, align 4
  %729 = icmp sgt i32 %726, %728
  %730 = getelementptr %struct.ZSTD_optimal_t, ptr %31, i32 %584, i32 2
  br i1 %729, label %735, label %731

731:                                              ; preds = %723
  store i32 0, ptr %730, align 4
  %732 = getelementptr %struct.ZSTD_optimal_t, ptr %31, i32 %584, i32 1
  store i32 0, ptr %732, align 4
  %733 = getelementptr %struct.ZSTD_optimal_t, ptr %31, i32 %584, i32 3
  store i32 %596, ptr %733, align 4
  store i32 %726, ptr %727, align 4
  %734 = getelementptr %struct.ZSTD_optimal_t, ptr %31, i32 %584, i32 2
  br label %781

735:                                              ; preds = %723
  %736 = load i32, ptr %730, align 4
  %737 = getelementptr %struct.ZSTD_optimal_t, ptr %31, i32 %584, i32 2
  %738 = icmp eq i32 %736, 0
  br i1 %738, label %781, label %739

739:                                              ; preds = %735
  %740 = sub i32 %584, %736
  %741 = getelementptr %struct.ZSTD_optimal_t, ptr %31, i32 %740, i32 4
  %742 = getelementptr %struct.ZSTD_optimal_t, ptr %31, i32 %584, i32 1
  %743 = load i32, ptr %742, align 4
  %744 = icmp ugt i32 %743, 2
  br i1 %744, label %745, label %749

745:                                              ; preds = %739
  %746 = getelementptr i32, ptr %741, i32 1
  %747 = load i32, ptr %741, align 4, !noalias !10
  %748 = add i32 %743, -2
  br label %773

749:                                              ; preds = %739
  %750 = getelementptr %struct.ZSTD_optimal_t, ptr %31, i32 %584, i32 3
  %751 = load i32, ptr %750, align 4
  %752 = icmp eq i32 %751, 0
  %753 = zext i1 %752 to i32
  %754 = add nuw nsw i32 %743, %753
  switch i32 %754, label %758 [
    i32 0, label %768
    i32 3, label %755
  ]

755:                                              ; preds = %749
  %756 = load i32, ptr %741, align 4, !noalias !10
  %757 = add i32 %756, -1
  br label %762

758:                                              ; preds = %749
  %759 = getelementptr i32, ptr %741, i32 %754
  %760 = load i32, ptr %759, align 4, !noalias !10
  %761 = load i32, ptr %741, align 4, !noalias !10
  br label %762

762:                                              ; preds = %758, %755
  %763 = phi i32 [ %756, %755 ], [ %761, %758 ]
  %764 = phi i32 [ %757, %755 ], [ %760, %758 ]
  %765 = icmp ugt i32 %754, 1
  %766 = select i1 %765, i32 1, i32 2
  %767 = getelementptr i32, ptr %741, i32 %766
  br label %773

768:                                              ; preds = %749
  %769 = load i32, ptr %741, align 4
  %770 = getelementptr inbounds i8, ptr %741, i32 4
  %771 = load i32, ptr %770, align 4
  %772 = getelementptr inbounds i8, ptr %741, i32 8
  br label %773

773:                                              ; preds = %768, %762, %745
  %774 = phi i32 [ %748, %745 ], [ %764, %762 ], [ %769, %768 ]
  %775 = phi i32 [ %747, %745 ], [ %763, %762 ], [ %771, %768 ]
  %776 = phi ptr [ %746, %745 ], [ %767, %762 ], [ %772, %768 ]
  %777 = load i32, ptr %776, align 4
  %778 = getelementptr %struct.ZSTD_optimal_t, ptr %31, i32 %584, i32 4
  store i32 %774, ptr %778, align 4
  %779 = getelementptr inbounds i8, ptr %778, i32 4
  store i32 %775, ptr %779, align 4
  %780 = getelementptr inbounds i8, ptr %778, i32 8
  store i32 %777, ptr %780, align 4
  br label %786

781:                                              ; preds = %735, %731
  %782 = phi ptr [ %734, %731 ], [ %737, %735 ]
  %783 = phi i32 [ %726, %731 ], [ %728, %735 ]
  %784 = getelementptr %struct.ZSTD_optimal_t, ptr %31, i32 %584, i32 4
  %785 = getelementptr %struct.ZSTD_optimal_t, ptr %31, i32 %586, i32 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %784, ptr noundef align 4 dereferenceable(12) %785, i32 12, i1 false)
  br label %786

786:                                              ; preds = %781, %773
  %787 = phi i1 [ true, %781 ], [ false, %773 ]
  %788 = phi ptr [ %782, %781 ], [ %737, %773 ]
  %789 = phi i32 [ 0, %781 ], [ 1, %773 ]
  %790 = phi i32 [ %783, %781 ], [ %728, %773 ]
  %791 = icmp ugt ptr %585, %15
  br i1 %791, label %923, label %792

792:                                              ; preds = %786
  %793 = icmp eq i32 %584, %583
  br i1 %793, label %927, label %794

794:                                              ; preds = %792
  br i1 %410, label %795, label %801

795:                                              ; preds = %794
  %796 = add i32 %584, 1
  %797 = getelementptr %struct.ZSTD_optimal_t, ptr %31, i32 %796
  %798 = load i32, ptr %797, align 4
  %799 = add i32 %790, 128
  %800 = icmp sgt i32 %798, %799
  br i1 %800, label %801, label %923

801:                                              ; preds = %795, %794
  br i1 %787, label %802, label %805

802:                                              ; preds = %801
  %803 = getelementptr %struct.ZSTD_optimal_t, ptr %31, i32 %584, i32 3
  %804 = load i32, ptr %803, align 4
  br label %805

805:                                              ; preds = %802, %801
  %806 = phi i32 [ %804, %802 ], [ 0, %801 ]
  %807 = load i32, ptr %48, align 4
  %808 = icmp eq i32 %807, 1
  br i1 %808, label %828, label %809

809:                                              ; preds = %805
  %810 = load i32, ptr %409, align 4
  %811 = load ptr, ptr %411, align 4
  %812 = load i32, ptr %811, align 4
  %813 = add i32 %812, 1
  %814 = call i32 @llvm.ctlz.i32(i32 %813, i1 false) #10, !range !8
  br i1 %410, label %821, label %815

815:                                              ; preds = %809
  %816 = xor i32 %814, 31
  %817 = mul nsw i32 %816, -256
  %818 = shl i32 %813, 8
  %819 = lshr i32 %818, %816
  %820 = sub i32 %817, %819
  br label %825

821:                                              ; preds = %809
  %822 = shl nuw nsw i32 %814, 8
  %823 = xor i32 %822, -7937
  %824 = add nsw i32 %823, 1
  br label %825

825:                                              ; preds = %821, %815
  %826 = phi i32 [ %820, %815 ], [ %824, %821 ]
  %827 = add i32 %826, %810
  br label %828

828:                                              ; preds = %825, %805
  %829 = phi i32 [ %827, %825 ], [ %412, %805 ]
  %830 = add i32 %829, %790
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #10
  %831 = getelementptr %struct.ZSTD_optimal_t, ptr %31, i32 %584, i32 4
  %832 = load ptr, ptr %16, align 4
  %833 = load i32, ptr %28, align 4
  %834 = getelementptr i8, ptr %832, i32 %833
  %835 = icmp ugt ptr %834, %585
  br i1 %835, label %846, label %836

836:                                              ; preds = %828
  %837 = load i32, ptr %24, align 4
  call fastcc void @ZSTD_updateTree_internal(ptr noundef %0, ptr noundef %585, ptr noundef %14, i32 noundef %837, i32 noundef %6) #10
  %838 = add i32 %837, -3
  %839 = icmp ult i32 %838, 5
  br i1 %839, label %840, label %843

840:                                              ; preds = %836
  %841 = getelementptr inbounds [5 x i32], ptr @switch.table.ZSTD_compressBlock_opt_generic.1, i32 0, i32 %838
  %842 = load i32, ptr %841, align 4
  br label %843

843:                                              ; preds = %840, %836
  %844 = phi i32 [ %842, %840 ], [ 4, %836 ]
  %845 = call fastcc i32 @ZSTD_insertBtAndGetAllMatches(ptr noundef %33, ptr noundef %0, ptr noundef nonnull %9, ptr noundef %585, ptr noundef %14, i32 noundef %6, ptr noundef %831, i32 noundef %789, i32 noundef %27, i32 noundef %844) #10
  br label %846

846:                                              ; preds = %843, %828
  %847 = phi i32 [ 0, %828 ], [ %845, %843 ]
  store i32 %847, ptr %12, align 4
  %848 = ptrtoint ptr %585 to i32
  %849 = sub i32 %848, %43
  %850 = sub i32 %44, %848
  call fastcc void @ZSTD_optLdm_processMatchCandidate(ptr noundef nonnull %10, ptr noundef %33, ptr noundef nonnull %12, i32 noundef %849, i32 noundef %850)
  %851 = load i32, ptr %12, align 4
  %852 = icmp eq i32 %851, 0
  br i1 %852, label %916, label %853

853:                                              ; preds = %846
  %854 = add i32 %851, -1
  %855 = getelementptr %struct.ZSTD_match_t, ptr %33, i32 %854, i32 1
  %856 = load i32, ptr %855, align 4
  %857 = icmp ugt i32 %856, %23
  %858 = add i32 %856, %584
  %859 = icmp ugt i32 %858, 4095
  %860 = select i1 %857, i1 true, i1 %859
  br i1 %860, label %861, label %869

861:                                              ; preds = %853
  %862 = getelementptr %struct.ZSTD_match_t, ptr %33, i32 %854
  %863 = load i32, ptr %862, align 4
  %864 = load i32, ptr %788, align 4
  %865 = icmp eq i32 %864, 0
  br i1 %865, label %866, label %918

866:                                              ; preds = %861
  %867 = getelementptr %struct.ZSTD_optimal_t, ptr %31, i32 %584, i32 3
  %868 = load i32, ptr %867, align 4
  br label %918

869:                                              ; preds = %912, %853
  %870 = phi i32 [ %914, %912 ], [ 0, %853 ]
  %871 = phi i32 [ %913, %912 ], [ %583, %853 ]
  %872 = getelementptr %struct.ZSTD_match_t, ptr %33, i32 %870
  %873 = load i32, ptr %872, align 4
  %874 = getelementptr %struct.ZSTD_match_t, ptr %33, i32 %870, i32 1
  %875 = load i32, ptr %874, align 4
  %876 = icmp eq i32 %870, 0
  br i1 %876, label %882, label %877

877:                                              ; preds = %869
  %878 = add i32 %870, -1
  %879 = getelementptr %struct.ZSTD_match_t, ptr %33, i32 %878, i32 1
  %880 = load i32, ptr %879, align 4
  %881 = add i32 %880, 1
  br label %882

882:                                              ; preds = %877, %869
  %883 = phi i32 [ %881, %877 ], [ %27, %869 ]
  %884 = icmp ult i32 %875, %883
  br i1 %884, label %912, label %885

885:                                              ; preds = %908, %882
  %886 = phi i32 [ %910, %908 ], [ %875, %882 ]
  %887 = phi i32 [ %909, %908 ], [ %871, %882 ]
  %888 = add i32 %886, %584
  %889 = call fastcc i32 @ZSTD_getMatchPrice(i32 noundef %873, i32 noundef %886, ptr noundef %13, i32 noundef %5)
  %890 = add i32 %830, %889
  %891 = icmp ugt i32 %888, %887
  br i1 %891, label %896, label %892

892:                                              ; preds = %885
  %893 = getelementptr %struct.ZSTD_optimal_t, ptr %31, i32 %888
  %894 = load i32, ptr %893, align 4
  %895 = icmp slt i32 %890, %894
  br i1 %895, label %901, label %907

896:                                              ; preds = %896, %885
  %897 = phi i32 [ %898, %896 ], [ %887, %885 ]
  %898 = add nuw i32 %897, 1
  %899 = getelementptr %struct.ZSTD_optimal_t, ptr %31, i32 %898
  store i32 1073741824, ptr %899, align 4
  %900 = icmp ult i32 %898, %888
  br i1 %900, label %896, label %901

901:                                              ; preds = %896, %892
  %902 = phi i32 [ %887, %892 ], [ %898, %896 ]
  %903 = getelementptr %struct.ZSTD_optimal_t, ptr %31, i32 %888
  %904 = getelementptr %struct.ZSTD_optimal_t, ptr %31, i32 %888, i32 2
  store i32 %886, ptr %904, align 4
  %905 = getelementptr %struct.ZSTD_optimal_t, ptr %31, i32 %888, i32 1
  store i32 %873, ptr %905, align 4
  %906 = getelementptr %struct.ZSTD_optimal_t, ptr %31, i32 %888, i32 3
  store i32 %806, ptr %906, align 4
  store i32 %890, ptr %903, align 4
  br label %908

907:                                              ; preds = %892
  br i1 %410, label %912, label %908

908:                                              ; preds = %907, %901
  %909 = phi i32 [ %902, %901 ], [ %887, %907 ]
  %910 = add i32 %886, -1
  %911 = icmp ult i32 %910, %883
  br i1 %911, label %912, label %885

912:                                              ; preds = %908, %907, %882
  %913 = phi i32 [ %871, %882 ], [ %887, %907 ], [ %909, %908 ]
  %914 = add nuw i32 %870, 1
  %915 = icmp eq i32 %914, %851
  br i1 %915, label %916, label %869

916:                                              ; preds = %912, %846
  %917 = phi i32 [ %583, %846 ], [ %913, %912 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #10
  br label %923

918:                                              ; preds = %866, %861
  %919 = phi i32 [ %868, %866 ], [ 0, %861 ]
  %920 = sub i32 %584, %919
  %921 = icmp ugt i32 %920, 4096
  %922 = select i1 %921, i32 0, i32 %920
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #10
  br label %945

923:                                              ; preds = %916, %795, %786
  %924 = phi i32 [ %917, %916 ], [ %583, %786 ], [ %583, %795 ]
  %925 = add i32 %584, 1
  %926 = icmp ugt i32 %925, %924
  br i1 %926, label %927, label %582

927:                                              ; preds = %923, %792, %579
  %928 = phi i32 [ 0, %579 ], [ %583, %792 ], [ %924, %923 ]
  %929 = getelementptr %struct.ZSTD_optimal_t, ptr %31, i32 %928
  %930 = load i32, ptr %929, align 4
  %931 = getelementptr inbounds i8, ptr %929, i32 4
  %932 = load i32, ptr %931, align 4
  %933 = getelementptr inbounds i8, ptr %929, i32 8
  %934 = load i32, ptr %933, align 4
  %935 = getelementptr inbounds i8, ptr %929, i32 12
  %936 = load i32, ptr %935, align 4
  %937 = getelementptr inbounds i8, ptr %929, i32 16
  %938 = load i32, ptr %937, align 4
  %939 = getelementptr inbounds i8, ptr %929, i32 20
  %940 = load i32, ptr %939, align 4
  %941 = getelementptr inbounds i8, ptr %929, i32 24
  %942 = load i32, ptr %941, align 4
  %943 = add i32 %936, %934
  %944 = call i32 @llvm.usub.sat.i32(i32 %928, i32 %943)
  br label %945

945:                                              ; preds = %927, %918
  %946 = phi i32 [ %436, %918 ], [ %930, %927 ]
  %947 = phi i32 [ %863, %918 ], [ %932, %927 ]
  %948 = phi i32 [ %856, %918 ], [ %934, %927 ]
  %949 = phi i32 [ %806, %918 ], [ %936, %927 ]
  %950 = phi i32 [ %435, %918 ], [ %938, %927 ]
  %951 = phi i32 [ %434, %918 ], [ %940, %927 ]
  %952 = phi i32 [ %433, %918 ], [ %942, %927 ]
  %953 = phi i32 [ %922, %918 ], [ %944, %927 ]
  %954 = icmp eq i32 %948, 0
  br i1 %954, label %997, label %955

955:                                              ; preds = %945, %522
  %956 = phi i32 [ 0, %522 ], [ %953, %945 ]
  %957 = phi i32 [ %433, %522 ], [ %952, %945 ]
  %958 = phi i32 [ %434, %522 ], [ %951, %945 ]
  %959 = phi i32 [ %435, %522 ], [ %950, %945 ]
  %960 = phi i32 [ %439, %522 ], [ %949, %945 ]
  %961 = phi i32 [ %520, %522 ], [ %948, %945 ]
  %962 = phi i32 [ %524, %522 ], [ %947, %945 ]
  %963 = phi i32 [ %436, %522 ], [ %946, %945 ]
  %964 = getelementptr %struct.ZSTD_optimal_t, ptr %31, i32 %956, i32 4
  %965 = icmp ugt i32 %962, 2
  br i1 %965, label %966, label %970

966:                                              ; preds = %955
  %967 = getelementptr i32, ptr %964, i32 1
  %968 = load i32, ptr %964, align 4, !noalias !13
  %969 = add i32 %962, -2
  br label %992

970:                                              ; preds = %955
  %971 = icmp eq i32 %960, 0
  %972 = zext i1 %971 to i32
  %973 = add nuw nsw i32 %962, %972
  switch i32 %973, label %977 [
    i32 0, label %987
    i32 3, label %974
  ]

974:                                              ; preds = %970
  %975 = load i32, ptr %964, align 4, !noalias !13
  %976 = add i32 %975, -1
  br label %981

977:                                              ; preds = %970
  %978 = getelementptr i32, ptr %964, i32 %973
  %979 = load i32, ptr %978, align 4, !noalias !13
  %980 = load i32, ptr %964, align 4, !noalias !13
  br label %981

981:                                              ; preds = %977, %974
  %982 = phi i32 [ %975, %974 ], [ %980, %977 ]
  %983 = phi i32 [ %976, %974 ], [ %979, %977 ]
  %984 = icmp ugt i32 %973, 1
  %985 = select i1 %984, i32 1, i32 2
  %986 = getelementptr i32, ptr %964, i32 %985
  br label %992

987:                                              ; preds = %970
  %988 = load i32, ptr %964, align 4
  %989 = getelementptr inbounds i8, ptr %964, i32 4
  %990 = load i32, ptr %989, align 4
  %991 = getelementptr inbounds i8, ptr %964, i32 8
  br label %992

992:                                              ; preds = %987, %981, %966
  %993 = phi i32 [ %969, %966 ], [ %983, %981 ], [ %988, %987 ]
  %994 = phi i32 [ %968, %966 ], [ %982, %981 ], [ %990, %987 ]
  %995 = phi ptr [ %967, %966 ], [ %986, %981 ], [ %991, %987 ]
  %996 = load i32, ptr %995, align 4
  store i32 %993, ptr %2, align 4
  store i32 %994, ptr %414, align 4
  store i32 %996, ptr %415, align 4
  br label %999

997:                                              ; preds = %945
  %998 = getelementptr %struct.ZSTD_optimal_t, ptr %31, i32 %953, i32 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %2, ptr noundef align 4 dereferenceable(12) %998, i32 12, i1 false)
  br label %999

999:                                              ; preds = %997, %992
  %1000 = phi i32 [ %953, %997 ], [ %956, %992 ]
  %1001 = phi i32 [ %952, %997 ], [ %957, %992 ]
  %1002 = phi i32 [ %951, %997 ], [ %958, %992 ]
  %1003 = phi i32 [ %950, %997 ], [ %959, %992 ]
  %1004 = phi i32 [ %949, %997 ], [ %960, %992 ]
  %1005 = phi i32 [ 0, %997 ], [ %961, %992 ]
  %1006 = phi i32 [ %947, %997 ], [ %962, %992 ]
  %1007 = phi i32 [ %946, %997 ], [ %963, %992 ]
  %1008 = add i32 %1000, 1
  %1009 = getelementptr %struct.ZSTD_optimal_t, ptr %31, i32 %1008
  store i32 %1007, ptr %1009, align 4
  %1010 = getelementptr inbounds i8, ptr %1009, i32 4
  store i32 %1006, ptr %1010, align 4
  %1011 = getelementptr inbounds i8, ptr %1009, i32 8
  store i32 %1005, ptr %1011, align 4
  %1012 = getelementptr inbounds i8, ptr %1009, i32 12
  store i32 %1004, ptr %1012, align 4
  %1013 = getelementptr inbounds i8, ptr %1009, i32 16
  store i32 %1003, ptr %1013, align 4
  %1014 = getelementptr inbounds i8, ptr %1009, i32 20
  store i32 %1002, ptr %1014, align 4
  %1015 = getelementptr inbounds i8, ptr %1009, i32 24
  store i32 %1001, ptr %1015, align 4
  %1016 = icmp eq i32 %1000, 0
  br i1 %1016, label %1019, label %1021

1017:                                             ; preds = %1021
  %1018 = icmp ugt i32 %1030, %1008
  br i1 %1018, label %1205, label %1019

1019:                                             ; preds = %1017, %999
  %1020 = phi i32 [ 1, %999 ], [ %1030, %1017 ]
  br label %1034

1021:                                             ; preds = %1021, %999
  %1022 = phi i32 [ %1032, %1021 ], [ %1000, %999 ]
  %1023 = phi i32 [ %1030, %1021 ], [ %1008, %999 ]
  %1024 = getelementptr %struct.ZSTD_optimal_t, ptr %31, i32 %1022
  %1025 = getelementptr inbounds [7 x i32], ptr %1024, i32 0, i32 2
  %1026 = load i32, ptr %1025, align 4
  %1027 = getelementptr inbounds [7 x i32], ptr %1024, i32 0, i32 3
  %1028 = load i32, ptr %1027, align 4
  %1029 = add i32 %1028, %1026
  %1030 = add i32 %1023, -1
  %1031 = getelementptr %struct.ZSTD_optimal_t, ptr %31, i32 %1030
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(28) %1031, ptr noundef align 4 dereferenceable(28) %1024, i32 28, i1 false)
  %1032 = call i32 @llvm.usub.sat.i32(i32 %1022, i32 %1029)
  %1033 = icmp ugt i32 %1022, %1029
  br i1 %1033, label %1021, label %1017

1034:                                             ; preds = %1200, %1019
  %1035 = phi i32 [ %1203, %1200 ], [ %1020, %1019 ]
  %1036 = phi ptr [ %1201, %1200 ], [ %432, %1019 ]
  %1037 = getelementptr %struct.ZSTD_optimal_t, ptr %31, i32 %1035, i32 3
  %1038 = load i32, ptr %1037, align 4
  %1039 = getelementptr %struct.ZSTD_optimal_t, ptr %31, i32 %1035, i32 2
  %1040 = load i32, ptr %1039, align 4
  %1041 = icmp eq i32 %1040, 0
  br i1 %1041, label %1042, label %1044

1042:                                             ; preds = %1034
  %1043 = getelementptr i8, ptr %1036, i32 %1038
  br label %1200

1044:                                             ; preds = %1034
  %1045 = add i32 %1040, %1038
  %1046 = getelementptr %struct.ZSTD_optimal_t, ptr %31, i32 %1035, i32 1
  %1047 = load i32, ptr %1046, align 4
  %1048 = load i32, ptr %45, align 4
  %1049 = icmp eq i32 %1048, 2
  br i1 %1049, label %1067, label %1050

1050:                                             ; preds = %1044
  %1051 = icmp eq i32 %1038, 0
  br i1 %1051, label %1063, label %1052

1052:                                             ; preds = %1052, %1050
  %1053 = phi i32 [ %1061, %1052 ], [ 0, %1050 ]
  %1054 = load ptr, ptr %13, align 4
  %1055 = getelementptr i8, ptr %1036, i32 %1053
  %1056 = load i8, ptr %1055, align 1
  %1057 = zext i8 %1056 to i32
  %1058 = getelementptr i32, ptr %1054, i32 %1057
  %1059 = load i32, ptr %1058, align 4
  %1060 = add i32 %1059, 2
  store i32 %1060, ptr %1058, align 4
  %1061 = add nuw i32 %1053, 1
  %1062 = icmp eq i32 %1061, %1038
  br i1 %1062, label %1063, label %1052

1063:                                             ; preds = %1052, %1050
  %1064 = shl i32 %1038, 1
  %1065 = load i32, ptr %416, align 4
  %1066 = add i32 %1065, %1064
  store i32 %1066, ptr %416, align 4
  br label %1067

1067:                                             ; preds = %1063, %1044
  %1068 = icmp ugt i32 %1038, 63
  br i1 %1068, label %1069, label %1072

1069:                                             ; preds = %1067
  %1070 = call i32 @llvm.ctlz.i32(i32 %1038, i1 true) #10, !range !8
  %1071 = sub nuw nsw i32 50, %1070
  br label %1076

1072:                                             ; preds = %1067
  %1073 = getelementptr [64 x i8], ptr @ZSTD_LLcode.LL_Code, i32 0, i32 %1038
  %1074 = load i8, ptr %1073, align 1
  %1075 = zext i8 %1074 to i32
  br label %1076

1076:                                             ; preds = %1072, %1069
  %1077 = phi i32 [ %1071, %1069 ], [ %1075, %1072 ]
  %1078 = load ptr, ptr %411, align 4
  %1079 = getelementptr i32, ptr %1078, i32 %1077
  %1080 = load i32, ptr %1079, align 4
  %1081 = add i32 %1080, 1
  store i32 %1081, ptr %1079, align 4
  %1082 = load i32, ptr %49, align 4
  %1083 = add i32 %1082, 1
  store i32 %1083, ptr %49, align 4
  %1084 = add i32 %1047, 1
  %1085 = call i32 @llvm.ctlz.i32(i32 %1084, i1 false) #10, !range !8
  %1086 = xor i32 %1085, 31
  %1087 = load ptr, ptr %417, align 4
  %1088 = getelementptr i32, ptr %1087, i32 %1086
  %1089 = load i32, ptr %1088, align 4
  %1090 = add i32 %1089, 1
  store i32 %1090, ptr %1088, align 4
  %1091 = load i32, ptr %418, align 4
  %1092 = add i32 %1091, 1
  store i32 %1092, ptr %418, align 4
  %1093 = add i32 %1040, -3
  %1094 = icmp ugt i32 %1093, 127
  br i1 %1094, label %1095, label %1098

1095:                                             ; preds = %1076
  %1096 = call i32 @llvm.ctlz.i32(i32 %1093, i1 true) #10, !range !8
  %1097 = sub nuw nsw i32 67, %1096
  br label %1102

1098:                                             ; preds = %1076
  %1099 = getelementptr [128 x i8], ptr @ZSTD_MLcode.ML_Code, i32 0, i32 %1093
  %1100 = load i8, ptr %1099, align 1
  %1101 = zext i8 %1100 to i32
  br label %1102

1102:                                             ; preds = %1098, %1095
  %1103 = phi i32 [ %1097, %1095 ], [ %1101, %1098 ]
  %1104 = load ptr, ptr %419, align 4
  %1105 = getelementptr i32, ptr %1104, i32 %1103
  %1106 = load i32, ptr %1105, align 4
  %1107 = add i32 %1106, 1
  store i32 %1107, ptr %1105, align 4
  %1108 = load i32, ptr %420, align 4
  %1109 = add i32 %1108, 1
  store i32 %1109, ptr %420, align 4
  %1110 = getelementptr i8, ptr %1036, i32 %1038
  %1111 = icmp ugt ptr %1110, %421
  %1112 = load ptr, ptr %422, align 4
  br i1 %1111, label %1134, label %1113

1113:                                             ; preds = %1102
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1112, ptr noundef align 1 dereferenceable(16) %1036, i32 16, i1 false) #10
  %1114 = icmp ugt i32 %1038, 16
  %1115 = load ptr, ptr %422, align 4
  br i1 %1114, label %1118, label %1116

1116:                                             ; preds = %1113
  %1117 = getelementptr i8, ptr %1115, i32 %1038
  store ptr %1117, ptr %422, align 4
  br label %1178

1118:                                             ; preds = %1113
  %1119 = getelementptr i8, ptr %1115, i32 16
  %1120 = getelementptr i8, ptr %1036, i32 16
  %1121 = add i32 %1038, -16
  %1122 = getelementptr i8, ptr %1115, i32 %1038
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1119, ptr noundef align 1 dereferenceable(16) %1120, i32 16, i1 false) #10
  %1123 = icmp slt i32 %1121, 17
  br i1 %1123, label %1167, label %1124

1124:                                             ; preds = %1118
  %1125 = getelementptr i8, ptr %1115, i32 32
  br label %1126

1126:                                             ; preds = %1126, %1124
  %1127 = phi ptr [ %1120, %1124 ], [ %1131, %1126 ]
  %1128 = phi ptr [ %1125, %1124 ], [ %1132, %1126 ]
  %1129 = getelementptr i8, ptr %1127, i32 16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1128, ptr noundef align 1 dereferenceable(16) %1129, i32 16, i1 false) #10
  %1130 = getelementptr i8, ptr %1128, i32 16
  %1131 = getelementptr i8, ptr %1127, i32 32
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1130, ptr noundef align 1 dereferenceable(16) %1131, i32 16, i1 false) #10
  %1132 = getelementptr i8, ptr %1128, i32 32
  %1133 = icmp ult ptr %1132, %1122
  br i1 %1133, label %1126, label %1167

1134:                                             ; preds = %1102
  %1135 = ptrtoint ptr %1110 to i32
  %1136 = icmp ult ptr %421, %1036
  br i1 %1136, label %1152, label %1137

1137:                                             ; preds = %1134
  %1138 = ptrtoint ptr %1036 to i32
  %1139 = sub i32 %423, %1138
  %1140 = getelementptr i8, ptr %1112, i32 %1139
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1112, ptr noundef align 1 dereferenceable(16) %1036, i32 16, i1 false) #10
  %1141 = icmp slt i32 %1139, 17
  br i1 %1141, label %1152, label %1142

1142:                                             ; preds = %1137
  %1143 = getelementptr i8, ptr %1112, i32 16
  br label %1144

1144:                                             ; preds = %1144, %1142
  %1145 = phi ptr [ %1036, %1142 ], [ %1149, %1144 ]
  %1146 = phi ptr [ %1143, %1142 ], [ %1150, %1144 ]
  %1147 = getelementptr i8, ptr %1145, i32 16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1146, ptr noundef align 1 dereferenceable(16) %1147, i32 16, i1 false) #10
  %1148 = getelementptr i8, ptr %1146, i32 16
  %1149 = getelementptr i8, ptr %1145, i32 32
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1148, ptr noundef align 1 dereferenceable(16) %1149, i32 16, i1 false) #10
  %1150 = getelementptr i8, ptr %1146, i32 32
  %1151 = icmp ult ptr %1150, %1140
  br i1 %1151, label %1144, label %1152

1152:                                             ; preds = %1144, %1137, %1134
  %1153 = phi ptr [ %421, %1137 ], [ %1036, %1134 ], [ %421, %1144 ]
  %1154 = phi ptr [ %1140, %1137 ], [ %1112, %1134 ], [ %1140, %1144 ]
  %1155 = icmp ult ptr %1153, %1110
  br i1 %1155, label %1156, label %1167

1156:                                             ; preds = %1152
  %1157 = ptrtoint ptr %1153 to i32
  %1158 = sub i32 %1135, %1157
  %1159 = getelementptr i8, ptr %1153, i32 %1158
  br label %1160

1160:                                             ; preds = %1160, %1156
  %1161 = phi ptr [ %1165, %1160 ], [ %1154, %1156 ]
  %1162 = phi ptr [ %1163, %1160 ], [ %1153, %1156 ]
  %1163 = getelementptr i8, ptr %1162, i32 1
  %1164 = load i8, ptr %1162, align 1
  %1165 = getelementptr i8, ptr %1161, i32 1
  store i8 %1164, ptr %1161, align 1
  %1166 = icmp eq ptr %1163, %1159
  br i1 %1166, label %1167, label %1160

1167:                                             ; preds = %1160, %1152, %1126, %1118
  %1168 = load ptr, ptr %422, align 4
  %1169 = getelementptr i8, ptr %1168, i32 %1038
  store ptr %1169, ptr %422, align 4
  %1170 = icmp ugt i32 %1038, 65535
  br i1 %1170, label %1171, label %1178

1171:                                             ; preds = %1167
  store i32 1, ptr %424, align 4
  %1172 = load ptr, ptr %425, align 4
  %1173 = load ptr, ptr %1, align 4
  %1174 = ptrtoint ptr %1172 to i32
  %1175 = ptrtoint ptr %1173 to i32
  %1176 = sub i32 %1174, %1175
  %1177 = ashr exact i32 %1176, 3
  store i32 %1177, ptr %426, align 4
  br label %1178

1178:                                             ; preds = %1171, %1167, %1116
  %1179 = trunc i32 %1038 to i16
  %1180 = load ptr, ptr %425, align 4
  %1181 = getelementptr inbounds %struct.seqDef_s, ptr %1180, i32 0, i32 1
  store i16 %1179, ptr %1181, align 4
  %1182 = load ptr, ptr %425, align 4
  store i32 %1084, ptr %1182, align 4
  %1183 = icmp ugt i32 %1093, 65535
  br i1 %1183, label %1186, label %1184

1184:                                             ; preds = %1178
  %1185 = load ptr, ptr %425, align 4
  br label %1193

1186:                                             ; preds = %1178
  store i32 2, ptr %424, align 4
  %1187 = load ptr, ptr %425, align 4
  %1188 = load ptr, ptr %1, align 4
  %1189 = ptrtoint ptr %1187 to i32
  %1190 = ptrtoint ptr %1188 to i32
  %1191 = sub i32 %1189, %1190
  %1192 = ashr exact i32 %1191, 3
  store i32 %1192, ptr %426, align 4
  br label %1193

1193:                                             ; preds = %1186, %1184
  %1194 = phi ptr [ %1185, %1184 ], [ %1187, %1186 ]
  %1195 = trunc i32 %1093 to i16
  %1196 = getelementptr inbounds %struct.seqDef_s, ptr %1194, i32 0, i32 2
  store i16 %1195, ptr %1196, align 2
  %1197 = load ptr, ptr %425, align 4
  %1198 = getelementptr %struct.seqDef_s, ptr %1197, i32 1
  store ptr %1198, ptr %425, align 4
  %1199 = getelementptr i8, ptr %1036, i32 %1045
  br label %1200

1200:                                             ; preds = %1193, %1042
  %1201 = phi ptr [ %1036, %1042 ], [ %1199, %1193 ]
  %1202 = phi ptr [ %1043, %1042 ], [ %1199, %1193 ]
  %1203 = add i32 %1035, 1
  %1204 = icmp ugt i32 %1203, %1008
  br i1 %1204, label %1205, label %1034

1205:                                             ; preds = %1200, %1017
  %1206 = phi ptr [ %432, %1017 ], [ %1201, %1200 ]
  %1207 = phi ptr [ %431, %1017 ], [ %1202, %1200 ]
  call fastcc void @ZSTD_setBasePrices(ptr noundef %13, i32 noundef %5)
  br label %1208

1208:                                             ; preds = %1205, %468
  %1209 = phi i32 [ %1007, %1205 ], [ %436, %468 ]
  %1210 = phi i32 [ %1003, %1205 ], [ %435, %468 ]
  %1211 = phi i32 [ %1002, %1205 ], [ %434, %468 ]
  %1212 = phi i32 [ %1001, %1205 ], [ %433, %468 ]
  %1213 = phi ptr [ %1206, %1205 ], [ %432, %468 ]
  %1214 = phi ptr [ %1207, %1205 ], [ %469, %468 ]
  %1215 = icmp ult ptr %1214, %15
  br i1 %1215, label %430, label %1216

1216:                                             ; preds = %1208
  %1217 = ptrtoint ptr %1213 to i32
  br label %1218

1218:                                             ; preds = %1216, %401
  %1219 = phi i32 [ %1217, %1216 ], [ %43, %401 ]
  %1220 = sub i32 %44, %1219
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #10
  ret i32 %1220
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ZSTD_compressBlock_btultra(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #1 {
  %6 = tail call fastcc i32 @ZSTD_compressBlock_opt_generic(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef 2, i32 noundef 0)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ZSTD_compressBlock_btultra2(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #1 {
  %6 = alloca [3 x i32], align 4
  %7 = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = ptrtoint ptr %3 to i32
  %10 = ptrtoint ptr %8 to i32
  %11 = sub i32 %9, %10
  %12 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 8, i32 7
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %98

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.seqStore_t, ptr %1, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = load ptr, ptr %1, align 4
  %19 = icmp eq ptr %17, %18
  br i1 %19, label %20, label %98

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i32 0, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i32 0, i32 4
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %22, %24
  br i1 %25, label %26, label %98

26:                                               ; preds = %20
  %27 = icmp eq i32 %11, %22
  %28 = icmp ugt i32 %4, 1024
  %29 = and i1 %28, %27
  br i1 %29, label %30, label %98

30:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #10
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %6, ptr noundef align 4 dereferenceable(12) %2, i32 12, i1 false) #10
  %31 = call fastcc i32 @ZSTD_compressBlock_opt_generic(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %6, ptr noundef %3, i32 noundef %4, i32 noundef 2, i32 noundef 0) #10
  tail call void @ZSTD_resetSeqStore(ptr noundef %1) #10
  %32 = load ptr, ptr %7, align 4
  %33 = sub i32 0, %4
  %34 = getelementptr i8, ptr %32, i32 %33
  store ptr %34, ptr %7, align 4
  %35 = load i32, ptr %21, align 4
  %36 = add i32 %35, %4
  store i32 %36, ptr %21, align 4
  store i32 %36, ptr %23, align 4
  %37 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 2
  store i32 %36, ptr %37, align 4
  %38 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 8, i32 16
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 2
  br i1 %40, label %56, label %41

41:                                               ; preds = %30
  %42 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 8
  %43 = load ptr, ptr %42, align 4
  br label %44

44:                                               ; preds = %44, %41
  %45 = phi i32 [ %51, %44 ], [ 0, %41 ]
  %46 = phi i32 [ %52, %44 ], [ 0, %41 ]
  %47 = getelementptr i32, ptr %43, i32 %46
  %48 = load i32, ptr %47, align 4
  %49 = shl i32 %48, 4
  %50 = add i32 %49, -1
  store i32 %50, ptr %47, align 4
  %51 = add i32 %50, %45
  %52 = add nuw nsw i32 %46, 1
  %53 = icmp eq i32 %46, 255
  br i1 %53, label %54, label %44

54:                                               ; preds = %44
  %55 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 8, i32 6
  store i32 %51, ptr %55, align 4
  br label %56

56:                                               ; preds = %54, %30
  %57 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 8, i32 1
  %58 = load ptr, ptr %57, align 4
  br label %59

59:                                               ; preds = %59, %56
  %60 = phi i32 [ %66, %59 ], [ 0, %56 ]
  %61 = phi i32 [ %67, %59 ], [ 0, %56 ]
  %62 = getelementptr i32, ptr %58, i32 %61
  %63 = load i32, ptr %62, align 4
  %64 = shl i32 %63, 4
  %65 = add i32 %64, -1
  store i32 %65, ptr %62, align 4
  %66 = add i32 %65, %60
  %67 = add nuw nsw i32 %61, 1
  %68 = icmp eq i32 %61, 35
  br i1 %68, label %69, label %59

69:                                               ; preds = %59
  store i32 %66, ptr %12, align 4
  %70 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 8, i32 2
  %71 = load ptr, ptr %70, align 4
  br label %72

72:                                               ; preds = %72, %69
  %73 = phi i32 [ %79, %72 ], [ 0, %69 ]
  %74 = phi i32 [ %80, %72 ], [ 0, %69 ]
  %75 = getelementptr i32, ptr %71, i32 %74
  %76 = load i32, ptr %75, align 4
  %77 = shl i32 %76, 4
  %78 = add i32 %77, -1
  store i32 %78, ptr %75, align 4
  %79 = add i32 %78, %73
  %80 = add nuw nsw i32 %74, 1
  %81 = icmp eq i32 %74, 52
  br i1 %81, label %82, label %72

82:                                               ; preds = %72
  %83 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 8, i32 8
  store i32 %79, ptr %83, align 4
  %84 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 8, i32 3
  %85 = load ptr, ptr %84, align 4
  br label %86

86:                                               ; preds = %86, %82
  %87 = phi i32 [ %93, %86 ], [ 0, %82 ]
  %88 = phi i32 [ %94, %86 ], [ 0, %82 ]
  %89 = getelementptr i32, ptr %85, i32 %88
  %90 = load i32, ptr %89, align 4
  %91 = shl i32 %90, 4
  %92 = add i32 %91, -1
  store i32 %92, ptr %89, align 4
  %93 = add i32 %92, %87
  %94 = add nuw nsw i32 %88, 1
  %95 = icmp eq i32 %88, 31
  br i1 %95, label %96, label %86

96:                                               ; preds = %86
  %97 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 8, i32 9
  store i32 %93, ptr %97, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #10
  br label %98

98:                                               ; preds = %96, %26, %20, %15, %5
  %99 = tail call fastcc i32 @ZSTD_compressBlock_opt_generic(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef 2, i32 noundef 0)
  ret i32 %99
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ZSTD_compressBlock_btopt_dictMatchState(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #1 {
  %6 = tail call fastcc i32 @ZSTD_compressBlock_opt_generic(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef 0, i32 noundef 2)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ZSTD_compressBlock_btultra_dictMatchState(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #1 {
  %6 = tail call fastcc i32 @ZSTD_compressBlock_opt_generic(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef 2, i32 noundef 2)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ZSTD_compressBlock_btopt_extDict(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #1 {
  %6 = tail call fastcc i32 @ZSTD_compressBlock_opt_generic(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef 0, i32 noundef 1)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ZSTD_compressBlock_btultra_extDict(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #1 {
  %6 = tail call fastcc i32 @ZSTD_compressBlock_opt_generic(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef 2, i32 noundef 1)
  ret i32 %6
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ZSTD_opt_getNextMatchAndUpdateSeqStore(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #6 {
  %4 = getelementptr inbounds %struct.rawSeqStore_t, ptr %0, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rawSeqStore_t, ptr %0, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = icmp ult i32 %9, %5
  br i1 %10, label %14, label %11

11:                                               ; preds = %7, %3
  %12 = getelementptr inbounds %struct.ZSTD_optLdm_t, ptr %0, i32 0, i32 1
  store i32 -1, ptr %12, align 4
  %13 = getelementptr inbounds %struct.ZSTD_optLdm_t, ptr %0, i32 0, i32 2
  store i32 -1, ptr %13, align 4
  br label %117

14:                                               ; preds = %7
  %15 = load ptr, ptr %0, align 4
  %16 = getelementptr %struct.rawSeq, ptr %15, i32 %9
  %17 = getelementptr inbounds i8, ptr %16, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds i8, ptr %16, i32 8
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %2, %1
  %22 = getelementptr inbounds %struct.rawSeqStore_t, ptr %0, i32 0, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = tail call i32 @llvm.usub.sat.i32(i32 %18, i32 %23)
  %25 = tail call i32 @llvm.usub.sat.i32(i32 %23, i32 %18)
  %26 = sub i32 %20, %25
  %27 = icmp ult i32 %24, %2
  br i1 %27, label %56, label %28

28:                                               ; preds = %14
  %29 = getelementptr inbounds %struct.ZSTD_optLdm_t, ptr %0, i32 0, i32 1
  store i32 -1, ptr %29, align 4
  %30 = getelementptr inbounds %struct.ZSTD_optLdm_t, ptr %0, i32 0, i32 2
  store i32 -1, ptr %30, align 4
  %31 = add i32 %23, %2
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %55, label %33

33:                                               ; preds = %28
  %34 = call i32 @llvm.umax.i32(i32 %9, i32 %5)
  br label %35

35:                                               ; preds = %48, %33
  %36 = phi i32 [ %50, %48 ], [ %9, %33 ]
  %37 = phi i32 [ %49, %48 ], [ %31, %33 ]
  %38 = icmp eq i32 %36, %34
  br i1 %38, label %52, label %39

39:                                               ; preds = %35
  %40 = getelementptr %struct.rawSeq, ptr %15, i32 %36
  %41 = getelementptr inbounds i8, ptr %40, i32 4
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr inbounds i8, ptr %40, i32 8
  %44 = load i32, ptr %43, align 4
  %45 = add i32 %44, %42
  %46 = icmp ult i32 %37, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  store i32 %37, ptr %22, align 4
  br label %52

48:                                               ; preds = %39
  %49 = sub i32 %37, %45
  %50 = add i32 %36, 1
  store i32 %50, ptr %8, align 4
  %51 = icmp eq i32 %49, 0
  br i1 %51, label %55, label %35

52:                                               ; preds = %47, %35
  %53 = phi i32 [ %36, %47 ], [ %34, %35 ]
  %54 = icmp eq i32 %53, %5
  br i1 %54, label %55, label %117

55:                                               ; preds = %52, %48, %28
  store i32 0, ptr %22, align 4
  br label %117

56:                                               ; preds = %14
  %57 = load i32, ptr %16, align 4
  %58 = add i32 %24, %1
  %59 = getelementptr inbounds %struct.ZSTD_optLdm_t, ptr %0, i32 0, i32 1
  store i32 %58, ptr %59, align 4
  %60 = add i32 %58, %26
  %61 = getelementptr inbounds %struct.ZSTD_optLdm_t, ptr %0, i32 0, i32 2
  store i32 %60, ptr %61, align 4
  %62 = getelementptr inbounds %struct.ZSTD_optLdm_t, ptr %0, i32 0, i32 3
  store i32 %57, ptr %62, align 4
  %63 = icmp ugt i32 %60, %21
  br i1 %63, label %64, label %90

64:                                               ; preds = %56
  store i32 %21, ptr %61, align 4
  %65 = add i32 %23, %2
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %89, label %67

67:                                               ; preds = %64
  %68 = call i32 @llvm.umax.i32(i32 %9, i32 %5)
  br label %69

69:                                               ; preds = %82, %67
  %70 = phi i32 [ %84, %82 ], [ %9, %67 ]
  %71 = phi i32 [ %83, %82 ], [ %65, %67 ]
  %72 = icmp eq i32 %70, %68
  br i1 %72, label %86, label %73

73:                                               ; preds = %69
  %74 = getelementptr %struct.rawSeq, ptr %15, i32 %70
  %75 = getelementptr inbounds i8, ptr %74, i32 4
  %76 = load i32, ptr %75, align 4
  %77 = getelementptr inbounds i8, ptr %74, i32 8
  %78 = load i32, ptr %77, align 4
  %79 = add i32 %78, %76
  %80 = icmp ult i32 %71, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %73
  store i32 %71, ptr %22, align 4
  br label %86

82:                                               ; preds = %73
  %83 = sub i32 %71, %79
  %84 = add i32 %70, 1
  store i32 %84, ptr %8, align 4
  %85 = icmp eq i32 %83, 0
  br i1 %85, label %89, label %69

86:                                               ; preds = %81, %69
  %87 = phi i32 [ %70, %81 ], [ %68, %69 ]
  %88 = icmp eq i32 %87, %5
  br i1 %88, label %89, label %117

89:                                               ; preds = %86, %82, %64
  store i32 0, ptr %22, align 4
  br label %117

90:                                               ; preds = %56
  %91 = add i32 %24, %23
  %92 = add i32 %91, %26
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %116, label %94

94:                                               ; preds = %90
  %95 = call i32 @llvm.umax.i32(i32 %9, i32 %5)
  br label %96

96:                                               ; preds = %109, %94
  %97 = phi i32 [ %111, %109 ], [ %9, %94 ]
  %98 = phi i32 [ %110, %109 ], [ %92, %94 ]
  %99 = icmp eq i32 %97, %95
  br i1 %99, label %113, label %100

100:                                              ; preds = %96
  %101 = getelementptr %struct.rawSeq, ptr %15, i32 %97
  %102 = getelementptr inbounds i8, ptr %101, i32 4
  %103 = load i32, ptr %102, align 4
  %104 = getelementptr inbounds i8, ptr %101, i32 8
  %105 = load i32, ptr %104, align 4
  %106 = add i32 %105, %103
  %107 = icmp ult i32 %98, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %100
  store i32 %98, ptr %22, align 4
  br label %113

109:                                              ; preds = %100
  %110 = sub i32 %98, %106
  %111 = add i32 %97, 1
  store i32 %111, ptr %8, align 4
  %112 = icmp eq i32 %110, 0
  br i1 %112, label %116, label %96

113:                                              ; preds = %108, %96
  %114 = phi i32 [ %97, %108 ], [ %95, %96 ]
  %115 = icmp eq i32 %114, %5
  br i1 %115, label %116, label %117

116:                                              ; preds = %113, %109, %90
  store i32 0, ptr %22, align 4
  br label %117

117:                                              ; preds = %116, %113, %89, %86, %55, %52, %11
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ZSTD_optLdm_processMatchCandidate(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #6 {
  %6 = getelementptr inbounds %struct.rawSeqStore_t, ptr %0, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %82, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.rawSeqStore_t, ptr %0, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp ult i32 %11, %7
  br i1 %12, label %13, label %82

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.ZSTD_optLdm_t, ptr %0, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = icmp ugt i32 %15, %3
  br i1 %16, label %51, label %17

17:                                               ; preds = %13
  %18 = icmp ult i32 %15, %3
  br i1 %18, label %19, label %49

19:                                               ; preds = %17
  %20 = sub i32 %3, %15
  %21 = getelementptr inbounds %struct.rawSeqStore_t, ptr %0, i32 0, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %22, %20
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %48, label %25

25:                                               ; preds = %19
  %26 = call i32 @llvm.umax.i32(i32 %11, i32 %7)
  br label %27

27:                                               ; preds = %41, %25
  %28 = phi i32 [ %43, %41 ], [ %11, %25 ]
  %29 = phi i32 [ %42, %41 ], [ %23, %25 ]
  %30 = icmp eq i32 %28, %26
  br i1 %30, label %45, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %0, align 4
  %33 = getelementptr %struct.rawSeq, ptr %32, i32 %28
  %34 = getelementptr inbounds i8, ptr %33, i32 4
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds i8, ptr %33, i32 8
  %37 = load i32, ptr %36, align 4
  %38 = add i32 %37, %35
  %39 = icmp ult i32 %29, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  store i32 %29, ptr %21, align 4
  br label %45

41:                                               ; preds = %31
  %42 = sub i32 %29, %38
  %43 = add i32 %28, 1
  store i32 %43, ptr %10, align 4
  %44 = icmp eq i32 %42, 0
  br i1 %44, label %48, label %27

45:                                               ; preds = %40, %27
  %46 = phi i32 [ %28, %40 ], [ %26, %27 ]
  %47 = icmp eq i32 %46, %7
  br i1 %47, label %48, label %49

48:                                               ; preds = %45, %41, %19
  store i32 0, ptr %21, align 4
  br label %49

49:                                               ; preds = %48, %45, %17
  tail call fastcc void @ZSTD_opt_getNextMatchAndUpdateSeqStore(ptr noundef %0, i32 noundef %3, i32 noundef %4)
  %50 = load i32, ptr %14, align 4
  br label %51

51:                                               ; preds = %49, %13
  %52 = phi i32 [ %50, %49 ], [ %15, %13 ]
  %53 = getelementptr inbounds %struct.ZSTD_optLdm_t, ptr %0, i32 0, i32 1
  %54 = load i32, ptr %53, align 4
  %55 = sub i32 %54, %3
  %56 = sub i32 %52, %54
  %57 = add i32 %56, %55
  %58 = getelementptr inbounds %struct.ZSTD_optLdm_t, ptr %0, i32 0, i32 3
  %59 = load i32, ptr %58, align 4
  %60 = add i32 %59, 2
  %61 = icmp ugt i32 %54, %3
  br i1 %61, label %82, label %62

62:                                               ; preds = %51
  %63 = icmp ule i32 %52, %3
  %64 = icmp ult i32 %57, 3
  %65 = select i1 %63, i1 true, i1 %64
  br i1 %65, label %82, label %66

66:                                               ; preds = %62
  %67 = load i32, ptr %2, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %76, label %69

69:                                               ; preds = %66
  %70 = add i32 %67, -1
  %71 = getelementptr %struct.ZSTD_match_t, ptr %1, i32 %70, i32 1
  %72 = load i32, ptr %71, align 4
  %73 = icmp ugt i32 %57, %72
  %74 = icmp ult i32 %67, 4096
  %75 = select i1 %73, i1 %74, i1 false
  br i1 %75, label %76, label %82

76:                                               ; preds = %69, %66
  %77 = getelementptr %struct.ZSTD_match_t, ptr %1, i32 %67, i32 1
  store i32 %57, ptr %77, align 4
  %78 = load i32, ptr %2, align 4
  %79 = getelementptr %struct.ZSTD_match_t, ptr %1, i32 %78
  store i32 %60, ptr %79, align 4
  %80 = load i32, ptr %2, align 4
  %81 = add i32 %80, 1
  store i32 %81, ptr %2, align 4
  br label %82

82:                                               ; preds = %76, %69, %62, %51, %9, %5
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal fastcc i32 @ZSTD_getMatchPrice(i32 noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #7 {
  %5 = add i32 %0, 1
  %6 = tail call i32 @llvm.ctlz.i32(i32 %5, i1 false) #10, !range !8
  %7 = xor i32 %6, 31
  %8 = add i32 %1, -3
  %9 = getelementptr inbounds %struct.optState_t, ptr %2, i32 0, i32 14
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %30

12:                                               ; preds = %4
  %13 = icmp eq i32 %3, 0
  %14 = add i32 %1, -2
  %15 = tail call i32 @llvm.ctlz.i32(i32 %14, i1 false) #10, !range !8
  br i1 %13, label %22, label %16

16:                                               ; preds = %12
  %17 = xor i32 %15, 31
  %18 = shl nuw nsw i32 %17, 8
  %19 = shl i32 %14, 8
  %20 = lshr i32 %19, %17
  %21 = add i32 %18, %20
  br label %25

22:                                               ; preds = %12
  %23 = shl nuw nsw i32 %15, 8
  %24 = xor i32 %23, 7936
  br label %25

25:                                               ; preds = %22, %16
  %26 = phi i32 [ %21, %16 ], [ %24, %22 ]
  %27 = shl nuw nsw i32 %7, 8
  %28 = add nuw nsw i32 %27, 4096
  %29 = add i32 %28, %26
  br label %97

30:                                               ; preds = %4
  %31 = getelementptr inbounds %struct.optState_t, ptr %2, i32 0, i32 13
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %3, 0
  %34 = getelementptr inbounds %struct.optState_t, ptr %2, i32 0, i32 3
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr i32, ptr %35, i32 %7
  %37 = load i32, ptr %36, align 4
  %38 = add i32 %37, 1
  %39 = tail call i32 @llvm.ctlz.i32(i32 %38, i1 false) #10, !range !8
  br i1 %33, label %46, label %40

40:                                               ; preds = %30
  %41 = xor i32 %39, 31
  %42 = mul nsw i32 %41, -256
  %43 = shl i32 %38, 8
  %44 = lshr i32 %43, %41
  %45 = sub i32 %42, %44
  br label %50

46:                                               ; preds = %30
  %47 = shl nuw nsw i32 %39, 8
  %48 = xor i32 %47, -7937
  %49 = add nsw i32 %48, 1
  br label %50

50:                                               ; preds = %46, %40
  %51 = phi i32 [ %45, %40 ], [ %49, %46 ]
  %52 = icmp slt i32 %3, 2
  %53 = icmp ugt i32 %7, 19
  %54 = select i1 %52, i1 %53, i1 false
  %55 = shl nuw nsw i32 %7, 9
  %56 = icmp ugt i32 %8, 127
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = tail call i32 @llvm.ctlz.i32(i32 %8, i1 true) #10, !range !8
  %59 = sub nuw nsw i32 67, %58
  br label %64

60:                                               ; preds = %50
  %61 = getelementptr [128 x i8], ptr @ZSTD_MLcode.ML_Code, i32 0, i32 %8
  %62 = load i8, ptr %61, align 1
  %63 = zext i8 %62 to i32
  br label %64

64:                                               ; preds = %60, %57
  %65 = phi i32 [ %59, %57 ], [ %63, %60 ]
  %66 = getelementptr [53 x i32], ptr @ML_bits, i32 0, i32 %65
  %67 = load i32, ptr %66, align 4
  %68 = getelementptr inbounds %struct.optState_t, ptr %2, i32 0, i32 12
  %69 = load i32, ptr %68, align 4
  %70 = getelementptr inbounds %struct.optState_t, ptr %2, i32 0, i32 2
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr i32, ptr %71, i32 %65
  %73 = load i32, ptr %72, align 4
  %74 = add i32 %73, 1
  %75 = tail call i32 @llvm.ctlz.i32(i32 %74, i1 false) #10, !range !8
  br i1 %33, label %82, label %76

76:                                               ; preds = %64
  %77 = xor i32 %75, 31
  %78 = mul nsw i32 %77, -256
  %79 = shl i32 %74, 8
  %80 = lshr i32 %79, %77
  %81 = sub i32 %78, %80
  br label %86

82:                                               ; preds = %64
  %83 = shl nuw nsw i32 %75, 8
  %84 = xor i32 %83, -7937
  %85 = add nsw i32 %84, 1
  br label %86

86:                                               ; preds = %82, %76
  %87 = phi i32 [ %81, %76 ], [ %85, %82 ]
  %88 = add i32 %67, %7
  %89 = shl i32 %88, 8
  %90 = add nsw i32 %55, -9677
  %91 = select i1 %54, i32 %90, i32 51
  %92 = add i32 %91, %32
  %93 = add i32 %92, %51
  %94 = add i32 %93, %69
  %95 = add i32 %94, %89
  %96 = add i32 %95, %87
  br label %97

97:                                               ; preds = %86, %25
  %98 = phi i32 [ %29, %25 ], [ %96, %86 ]
  ret i32 %98
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal fastcc void @ZSTD_setBasePrices(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.optState_t, ptr %0, i32 0, i32 16
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 2
  br i1 %5, label %24, label %6

6:                                                ; preds = %2
  %7 = icmp eq i32 %1, 0
  %8 = getelementptr inbounds %struct.optState_t, ptr %0, i32 0, i32 6
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, 1
  %11 = tail call i32 @llvm.ctlz.i32(i32 %10, i1 false) #10, !range !8
  br i1 %7, label %18, label %12

12:                                               ; preds = %6
  %13 = xor i32 %11, 31
  %14 = shl nuw nsw i32 %13, 8
  %15 = shl i32 %10, 8
  %16 = lshr i32 %15, %13
  %17 = add i32 %14, %16
  br label %21

18:                                               ; preds = %6
  %19 = shl nuw nsw i32 %11, 8
  %20 = xor i32 %19, 7936
  br label %21

21:                                               ; preds = %18, %12
  %22 = phi i32 [ %17, %12 ], [ %20, %18 ]
  %23 = getelementptr inbounds %struct.optState_t, ptr %0, i32 0, i32 10
  store i32 %22, ptr %23, align 4
  br label %24

24:                                               ; preds = %21, %2
  %25 = icmp eq i32 %1, 0
  %26 = getelementptr inbounds %struct.optState_t, ptr %0, i32 0, i32 7
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, 1
  %29 = tail call i32 @llvm.ctlz.i32(i32 %28, i1 false) #10, !range !8
  br i1 %25, label %54, label %30

30:                                               ; preds = %24
  %31 = xor i32 %29, 31
  %32 = shl nuw nsw i32 %31, 8
  %33 = shl i32 %28, 8
  %34 = lshr i32 %33, %31
  %35 = add i32 %32, %34
  %36 = getelementptr inbounds %struct.optState_t, ptr %0, i32 0, i32 8
  %37 = load i32, ptr %36, align 4
  %38 = add i32 %37, 1
  %39 = tail call i32 @llvm.ctlz.i32(i32 %38, i1 false) #10, !range !8
  %40 = xor i32 %39, 31
  %41 = shl nuw nsw i32 %40, 8
  %42 = shl i32 %38, 8
  %43 = lshr i32 %42, %40
  %44 = add i32 %41, %43
  %45 = getelementptr inbounds %struct.optState_t, ptr %0, i32 0, i32 9
  %46 = load i32, ptr %45, align 4
  %47 = add i32 %46, 1
  %48 = tail call i32 @llvm.ctlz.i32(i32 %47, i1 false) #10, !range !8
  %49 = xor i32 %48, 31
  %50 = shl nuw nsw i32 %49, 8
  %51 = shl i32 %47, 8
  %52 = lshr i32 %51, %49
  %53 = add i32 %50, %52
  br label %69

54:                                               ; preds = %24
  %55 = shl nuw nsw i32 %29, 8
  %56 = xor i32 %55, 7936
  %57 = getelementptr inbounds %struct.optState_t, ptr %0, i32 0, i32 8
  %58 = load i32, ptr %57, align 4
  %59 = add i32 %58, 1
  %60 = tail call i32 @llvm.ctlz.i32(i32 %59, i1 false) #10, !range !8
  %61 = shl nuw nsw i32 %60, 8
  %62 = xor i32 %61, 7936
  %63 = getelementptr inbounds %struct.optState_t, ptr %0, i32 0, i32 9
  %64 = load i32, ptr %63, align 4
  %65 = add i32 %64, 1
  %66 = tail call i32 @llvm.ctlz.i32(i32 %65, i1 false) #10, !range !8
  %67 = shl nuw nsw i32 %66, 8
  %68 = xor i32 %67, 7936
  br label %69

69:                                               ; preds = %54, %30
  %70 = phi i32 [ %56, %54 ], [ %35, %30 ]
  %71 = phi i32 [ %62, %54 ], [ %44, %30 ]
  %72 = phi i32 [ %68, %54 ], [ %53, %30 ]
  %73 = getelementptr inbounds %struct.optState_t, ptr %0, i32 0, i32 11
  store i32 %70, ptr %73, align 4
  %74 = getelementptr inbounds %struct.optState_t, ptr %0, i32 0, i32 12
  store i32 %71, ptr %74, align 4
  %75 = getelementptr inbounds %struct.optState_t, ptr %0, i32 0, i32 13
  store i32 %72, ptr %75, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @HUF_getNbBits(ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @HIST_count_simple(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ZSTD_insertBtAndGetAllMatches(ptr nocapture noundef writeonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr noundef %3, ptr noundef readnone %4, i32 noundef %5, ptr nocapture noundef readonly %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) unnamed_addr #0 {
  %11 = alloca i32, align 4
  %12 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %1, i32 0, i32 10
  %13 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %1, i32 0, i32 10, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = tail call i32 @llvm.umin.i32(i32 %14, i32 4095)
  %16 = getelementptr inbounds %struct.ZSTD_window_t, ptr %1, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = ptrtoint ptr %3 to i32
  %19 = ptrtoint ptr %17 to i32
  %20 = sub i32 %18, %19
  %21 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %1, i32 0, i32 10, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %9, 3
  %24 = select i1 %23, i32 3, i32 4
  %25 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %1, i32 0, i32 4
  %26 = load ptr, ptr %25, align 4
  switch i32 %9, label %27 [
    i32 8, label %53
    i32 5, label %32
    i32 6, label %39
    i32 7, label %46
  ]

27:                                               ; preds = %10
  %28 = load i32, ptr %3, align 1
  %29 = mul i32 %28, -1640531535
  %30 = sub i32 32, %22
  %31 = lshr i32 %29, %30
  br label %60

32:                                               ; preds = %10
  %33 = load i64, ptr %3, align 1
  %34 = mul i64 %33, -3523014627271114752
  %35 = sub i32 64, %22
  %36 = zext i32 %35 to i64
  %37 = lshr i64 %34, %36
  %38 = trunc i64 %37 to i32
  br label %60

39:                                               ; preds = %10
  %40 = load i64, ptr %3, align 1
  %41 = mul i64 %40, -3523014627193847808
  %42 = sub i32 64, %22
  %43 = zext i32 %42 to i64
  %44 = lshr i64 %41, %43
  %45 = trunc i64 %44 to i32
  br label %60

46:                                               ; preds = %10
  %47 = load i64, ptr %3, align 1
  %48 = mul i64 %47, -3523014627193167104
  %49 = sub i32 64, %22
  %50 = zext i32 %49 to i64
  %51 = lshr i64 %48, %50
  %52 = trunc i64 %51 to i32
  br label %60

53:                                               ; preds = %10
  %54 = load i64, ptr %3, align 1
  %55 = mul i64 %54, -3523014627327384477
  %56 = sub i32 64, %22
  %57 = zext i32 %56 to i64
  %58 = lshr i64 %55, %57
  %59 = trunc i64 %58 to i32
  br label %60

60:                                               ; preds = %53, %46, %39, %32, %27
  %61 = phi i32 [ %31, %27 ], [ %52, %46 ], [ %45, %39 ], [ %38, %32 ], [ %59, %53 ]
  %62 = getelementptr i32, ptr %26, i32 %61
  %63 = load i32, ptr %62, align 4
  %64 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %1, i32 0, i32 6
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %1, i32 0, i32 10, i32 1
  %67 = load i32, ptr %66, align 4
  %68 = add i32 %67, -1
  %69 = shl nsw i32 -1, %68
  %70 = xor i32 %69, -1
  %71 = getelementptr inbounds %struct.ZSTD_window_t, ptr %1, i32 0, i32 2
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr inbounds %struct.ZSTD_window_t, ptr %1, i32 0, i32 3
  %74 = load i32, ptr %73, align 4
  %75 = getelementptr i8, ptr %72, i32 %74
  %76 = getelementptr i8, ptr %17, i32 %74
  %77 = tail call i32 @llvm.usub.sat.i32(i32 %20, i32 %70)
  %78 = load i32, ptr %12, align 4
  %79 = shl nuw i32 1, %78
  %80 = getelementptr inbounds %struct.ZSTD_window_t, ptr %1, i32 0, i32 4
  %81 = load i32, ptr %80, align 4
  %82 = sub i32 %20, %81
  %83 = icmp ugt i32 %82, %79
  %84 = sub i32 %20, %79
  %85 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %1, i32 0, i32 1
  %86 = load i32, ptr %85, align 4
  %87 = icmp eq i32 %86, 0
  %88 = select i1 %87, i1 %83, i1 false
  %89 = select i1 %88, i32 %84, i32 %81
  %90 = icmp eq i32 %89, 0
  %91 = select i1 %90, i32 1, i32 %89
  %92 = and i32 %20, %70
  %93 = shl i32 %92, 1
  %94 = getelementptr i32, ptr %65, i32 %93
  %95 = getelementptr i32, ptr %94, i32 1
  %96 = add i32 %20, 9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11)
  store i32 0, ptr %11, align 4
  %97 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %1, i32 0, i32 10, i32 3
  %98 = load i32, ptr %97, align 4
  %99 = shl nuw i32 1, %98
  %100 = icmp eq i32 %5, 2
  br i1 %100, label %101, label %120

101:                                              ; preds = %60
  %102 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %1, i32 0, i32 9
  %103 = load ptr, ptr %102, align 4
  %104 = getelementptr inbounds %struct.ZSTD_window_t, ptr %103, i32 0, i32 1
  %105 = load ptr, ptr %104, align 4
  %106 = load ptr, ptr %103, align 4
  %107 = ptrtoint ptr %106 to i32
  %108 = ptrtoint ptr %105 to i32
  %109 = sub i32 %107, %108
  %110 = getelementptr inbounds %struct.ZSTD_window_t, ptr %103, i32 0, i32 4
  %111 = load i32, ptr %110, align 4
  %112 = sub i32 %89, %109
  %113 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %103, i32 0, i32 10, i32 2
  %114 = load i32, ptr %113, align 4
  %115 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %103, i32 0, i32 10, i32 1
  %116 = load i32, ptr %115, align 4
  %117 = add i32 %116, -1
  %118 = shl nsw i32 -1, %117
  %119 = xor i32 %118, -1
  br label %120

120:                                              ; preds = %101, %60
  %121 = phi i32 [ 0, %60 ], [ %119, %101 ]
  %122 = phi i32 [ %22, %60 ], [ %114, %101 ]
  %123 = phi i32 [ 0, %60 ], [ %109, %101 ]
  %124 = phi i32 [ 0, %60 ], [ %107, %101 ]
  %125 = phi ptr [ null, %60 ], [ %106, %101 ]
  %126 = phi ptr [ null, %60 ], [ %103, %101 ]
  %127 = phi ptr [ null, %60 ], [ %105, %101 ]
  %128 = phi i32 [ 0, %60 ], [ %111, %101 ]
  %129 = phi i32 [ 0, %60 ], [ %112, %101 ]
  %130 = sub i32 %123, %128
  %131 = icmp ult i32 %121, %130
  %132 = select i1 %100, i1 %131, i1 false
  %133 = sub i32 %123, %121
  %134 = select i1 %132, i32 %133, i32 %128
  %135 = add i32 %8, -1
  %136 = add i32 %7, 3
  %137 = icmp ult i32 %7, -3
  br i1 %137, label %138, label %535

138:                                              ; preds = %120
  %139 = sub i32 0, %129
  %140 = sub i32 %20, %74
  %141 = icmp eq i32 %5, 1
  %142 = sub i32 %20, %89
  %143 = getelementptr i8, ptr %3, i32 %24
  %144 = ptrtoint ptr %75 to i32
  %145 = ptrtoint ptr %143 to i32
  %146 = getelementptr i8, ptr %4, i32 -3
  %147 = getelementptr i8, ptr %4, i32 -1
  %148 = add i32 %128, %129
  %149 = sub i32 %20, %148
  %150 = icmp ugt ptr %146, %143
  %151 = getelementptr i8, ptr %127, i32 %139
  %152 = select i1 %100, ptr %151, ptr %72
  br label %153

153:                                              ; preds = %530, %138
  %154 = phi i32 [ %7, %138 ], [ %533, %530 ]
  %155 = phi i32 [ %135, %138 ], [ %532, %530 ]
  %156 = phi i32 [ 0, %138 ], [ %531, %530 ]
  %157 = icmp eq i32 %154, 3
  br i1 %157, label %158, label %161

158:                                              ; preds = %153
  %159 = load i32, ptr %6, align 4
  %160 = add i32 %159, -1
  br label %164

161:                                              ; preds = %153
  %162 = getelementptr i32, ptr %6, i32 %154
  %163 = load i32, ptr %162, align 4
  br label %164

164:                                              ; preds = %161, %158
  %165 = phi i32 [ %160, %158 ], [ %163, %161 ]
  %166 = sub i32 %20, %165
  %167 = add i32 %165, -1
  %168 = icmp ult i32 %167, %140
  br i1 %168, label %169, label %236

169:                                              ; preds = %164
  %170 = icmp uge i32 %166, %89
  %171 = load i32, ptr %3, align 1
  %172 = shl i32 %171, 8
  %173 = select i1 %23, i32 %172, i32 %171
  %174 = sub i32 0, %165
  %175 = getelementptr i8, ptr %3, i32 %174
  %176 = load i32, ptr %175, align 1
  %177 = shl i32 %176, 8
  %178 = select i1 %23, i32 %177, i32 %176
  %179 = icmp eq i32 %173, %178
  %180 = and i1 %170, %179
  br i1 %180, label %181, label %530

181:                                              ; preds = %169
  %182 = getelementptr i8, ptr %143, i32 %174
  br i1 %150, label %183, label %208

183:                                              ; preds = %181
  %184 = load i32, ptr %182, align 1
  %185 = load i32, ptr %143, align 1
  %186 = xor i32 %185, %184
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %191, label %188

188:                                              ; preds = %183
  %189 = tail call i32 @llvm.cttz.i32(i32 %186, i1 true) #10, !range !8
  %190 = lshr i32 %189, 3
  br label %233

191:                                              ; preds = %197, %183
  %192 = phi ptr [ %195, %197 ], [ %143, %183 ]
  %193 = phi ptr [ %194, %197 ], [ %182, %183 ]
  %194 = getelementptr i8, ptr %193, i32 4
  %195 = getelementptr i8, ptr %192, i32 4
  %196 = icmp ult ptr %195, %146
  br i1 %196, label %197, label %208

197:                                              ; preds = %191
  %198 = load i32, ptr %194, align 1
  %199 = load i32, ptr %195, align 1
  %200 = xor i32 %199, %198
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %191, label %202

202:                                              ; preds = %197
  %203 = tail call i32 @llvm.cttz.i32(i32 %200, i1 true) #10, !range !8
  %204 = lshr i32 %203, 3
  %205 = getelementptr i8, ptr %195, i32 %204
  %206 = ptrtoint ptr %205 to i32
  %207 = sub i32 %206, %145
  br label %233

208:                                              ; preds = %191, %181
  %209 = phi ptr [ %143, %181 ], [ %195, %191 ]
  %210 = phi ptr [ %182, %181 ], [ %194, %191 ]
  %211 = icmp ult ptr %209, %147
  br i1 %211, label %212, label %219

212:                                              ; preds = %208
  %213 = load i16, ptr %210, align 1
  %214 = load i16, ptr %209, align 1
  %215 = icmp eq i16 %213, %214
  br i1 %215, label %216, label %219

216:                                              ; preds = %212
  %217 = getelementptr i8, ptr %209, i32 2
  %218 = getelementptr i8, ptr %210, i32 2
  br label %219

219:                                              ; preds = %216, %212, %208
  %220 = phi ptr [ %217, %216 ], [ %209, %212 ], [ %209, %208 ]
  %221 = phi ptr [ %218, %216 ], [ %210, %212 ], [ %210, %208 ]
  %222 = icmp ult ptr %220, %4
  br i1 %222, label %223, label %229

223:                                              ; preds = %219
  %224 = load i8, ptr %221, align 1
  %225 = load i8, ptr %220, align 1
  %226 = icmp eq i8 %224, %225
  %227 = zext i1 %226 to i32
  %228 = getelementptr i8, ptr %220, i32 %227
  br label %229

229:                                              ; preds = %223, %219
  %230 = phi ptr [ %220, %219 ], [ %228, %223 ]
  %231 = ptrtoint ptr %230 to i32
  %232 = sub i32 %231, %145
  br label %233

233:                                              ; preds = %229, %202, %188
  %234 = phi i32 [ %232, %229 ], [ %190, %188 ], [ %207, %202 ]
  %235 = add i32 %234, %24
  br label %518

236:                                              ; preds = %164
  %237 = getelementptr i8, ptr %152, i32 %166
  br i1 %141, label %238, label %377

238:                                              ; preds = %236
  %239 = icmp ult i32 %167, %142
  %240 = xor i32 %166, -1
  %241 = add i32 %74, %240
  %242 = icmp ugt i32 %241, 2
  %243 = and i1 %239, %242
  br i1 %243, label %244, label %377

244:                                              ; preds = %238
  %245 = load i32, ptr %3, align 1
  %246 = shl i32 %245, 8
  %247 = select i1 %23, i32 %246, i32 %245
  %248 = load i32, ptr %237, align 1
  %249 = shl i32 %248, 8
  %250 = select i1 %23, i32 %249, i32 %248
  %251 = icmp eq i32 %247, %250
  br i1 %251, label %252, label %377

252:                                              ; preds = %244
  %253 = getelementptr i8, ptr %237, i32 %24
  %254 = ptrtoint ptr %253 to i32
  %255 = sub i32 %144, %254
  %256 = getelementptr i8, ptr %143, i32 %255
  %257 = icmp ult ptr %256, %4
  %258 = select i1 %257, ptr %256, ptr %4
  %259 = getelementptr i8, ptr %258, i32 -3
  %260 = icmp ugt ptr %259, %143
  br i1 %260, label %261, label %286

261:                                              ; preds = %252
  %262 = load i32, ptr %253, align 1
  %263 = load i32, ptr %143, align 1
  %264 = xor i32 %263, %262
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %269, label %266

266:                                              ; preds = %261
  %267 = tail call i32 @llvm.cttz.i32(i32 %264, i1 true) #10, !range !8
  %268 = lshr i32 %267, 3
  br label %312

269:                                              ; preds = %275, %261
  %270 = phi ptr [ %273, %275 ], [ %143, %261 ]
  %271 = phi ptr [ %272, %275 ], [ %253, %261 ]
  %272 = getelementptr i8, ptr %271, i32 4
  %273 = getelementptr i8, ptr %270, i32 4
  %274 = icmp ult ptr %273, %259
  br i1 %274, label %275, label %286

275:                                              ; preds = %269
  %276 = load i32, ptr %272, align 1
  %277 = load i32, ptr %273, align 1
  %278 = xor i32 %277, %276
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %269, label %280

280:                                              ; preds = %275
  %281 = tail call i32 @llvm.cttz.i32(i32 %278, i1 true) #10, !range !8
  %282 = lshr i32 %281, 3
  %283 = getelementptr i8, ptr %273, i32 %282
  %284 = ptrtoint ptr %283 to i32
  %285 = sub i32 %284, %145
  br label %312

286:                                              ; preds = %269, %252
  %287 = phi ptr [ %143, %252 ], [ %273, %269 ]
  %288 = phi ptr [ %253, %252 ], [ %272, %269 ]
  %289 = getelementptr i8, ptr %258, i32 -1
  %290 = icmp ult ptr %287, %289
  br i1 %290, label %291, label %298

291:                                              ; preds = %286
  %292 = load i16, ptr %288, align 1
  %293 = load i16, ptr %287, align 1
  %294 = icmp eq i16 %292, %293
  br i1 %294, label %295, label %298

295:                                              ; preds = %291
  %296 = getelementptr i8, ptr %287, i32 2
  %297 = getelementptr i8, ptr %288, i32 2
  br label %298

298:                                              ; preds = %295, %291, %286
  %299 = phi ptr [ %296, %295 ], [ %287, %291 ], [ %287, %286 ]
  %300 = phi ptr [ %297, %295 ], [ %288, %291 ], [ %288, %286 ]
  %301 = icmp ult ptr %299, %258
  br i1 %301, label %302, label %308

302:                                              ; preds = %298
  %303 = load i8, ptr %300, align 1
  %304 = load i8, ptr %299, align 1
  %305 = icmp eq i8 %303, %304
  %306 = zext i1 %305 to i32
  %307 = getelementptr i8, ptr %299, i32 %306
  br label %308

308:                                              ; preds = %302, %298
  %309 = phi ptr [ %299, %298 ], [ %307, %302 ]
  %310 = ptrtoint ptr %309 to i32
  %311 = sub i32 %310, %145
  br label %312

312:                                              ; preds = %308, %280, %266
  %313 = phi i32 [ %311, %308 ], [ %268, %266 ], [ %285, %280 ]
  %314 = getelementptr i8, ptr %253, i32 %313
  %315 = icmp eq ptr %314, %75
  br i1 %315, label %316, label %374

316:                                              ; preds = %312
  %317 = getelementptr i8, ptr %143, i32 %313
  %318 = icmp ugt ptr %146, %317
  br i1 %318, label %319, label %345

319:                                              ; preds = %316
  %320 = load i32, ptr %76, align 1
  %321 = load i32, ptr %317, align 1
  %322 = xor i32 %321, %320
  %323 = icmp eq i32 %322, 0
  br i1 %323, label %327, label %324

324:                                              ; preds = %319
  %325 = tail call i32 @llvm.cttz.i32(i32 %322, i1 true) #10, !range !8
  %326 = lshr i32 %325, 3
  br label %371

327:                                              ; preds = %333, %319
  %328 = phi ptr [ %331, %333 ], [ %317, %319 ]
  %329 = phi ptr [ %330, %333 ], [ %76, %319 ]
  %330 = getelementptr i8, ptr %329, i32 4
  %331 = getelementptr i8, ptr %328, i32 4
  %332 = icmp ult ptr %331, %146
  br i1 %332, label %333, label %345

333:                                              ; preds = %327
  %334 = load i32, ptr %330, align 1
  %335 = load i32, ptr %331, align 1
  %336 = xor i32 %335, %334
  %337 = icmp eq i32 %336, 0
  br i1 %337, label %327, label %338

338:                                              ; preds = %333
  %339 = tail call i32 @llvm.cttz.i32(i32 %336, i1 true) #10, !range !8
  %340 = lshr i32 %339, 3
  %341 = getelementptr i8, ptr %331, i32 %340
  %342 = ptrtoint ptr %341 to i32
  %343 = ptrtoint ptr %317 to i32
  %344 = sub i32 %342, %343
  br label %371

345:                                              ; preds = %327, %316
  %346 = phi ptr [ %317, %316 ], [ %331, %327 ]
  %347 = phi ptr [ %76, %316 ], [ %330, %327 ]
  %348 = icmp ult ptr %346, %147
  br i1 %348, label %349, label %356

349:                                              ; preds = %345
  %350 = load i16, ptr %347, align 1
  %351 = load i16, ptr %346, align 1
  %352 = icmp eq i16 %350, %351
  br i1 %352, label %353, label %356

353:                                              ; preds = %349
  %354 = getelementptr i8, ptr %346, i32 2
  %355 = getelementptr i8, ptr %347, i32 2
  br label %356

356:                                              ; preds = %353, %349, %345
  %357 = phi ptr [ %354, %353 ], [ %346, %349 ], [ %346, %345 ]
  %358 = phi ptr [ %355, %353 ], [ %347, %349 ], [ %347, %345 ]
  %359 = icmp ult ptr %357, %4
  br i1 %359, label %360, label %366

360:                                              ; preds = %356
  %361 = load i8, ptr %358, align 1
  %362 = load i8, ptr %357, align 1
  %363 = icmp eq i8 %361, %362
  %364 = zext i1 %363 to i32
  %365 = getelementptr i8, ptr %357, i32 %364
  br label %366

366:                                              ; preds = %360, %356
  %367 = phi ptr [ %357, %356 ], [ %365, %360 ]
  %368 = ptrtoint ptr %367 to i32
  %369 = ptrtoint ptr %317 to i32
  %370 = sub i32 %368, %369
  br label %371

371:                                              ; preds = %366, %338, %324
  %372 = phi i32 [ %370, %366 ], [ %326, %324 ], [ %344, %338 ]
  %373 = add i32 %372, %313
  br label %374

374:                                              ; preds = %371, %312
  %375 = phi i32 [ %373, %371 ], [ %313, %312 ]
  %376 = add i32 %375, %24
  br label %377

377:                                              ; preds = %374, %244, %238, %236
  %378 = phi i32 [ %376, %374 ], [ 0, %244 ], [ 0, %238 ], [ 0, %236 ]
  br i1 %100, label %379, label %518

379:                                              ; preds = %377
  %380 = icmp ult i32 %167, %149
  %381 = xor i32 %166, -1
  %382 = add i32 %74, %381
  %383 = icmp ugt i32 %382, 2
  %384 = and i1 %380, %383
  br i1 %384, label %385, label %518

385:                                              ; preds = %379
  %386 = load i32, ptr %3, align 1
  %387 = shl i32 %386, 8
  %388 = select i1 %23, i32 %387, i32 %386
  %389 = load i32, ptr %237, align 1
  %390 = shl i32 %389, 8
  %391 = select i1 %23, i32 %390, i32 %389
  %392 = icmp eq i32 %388, %391
  br i1 %392, label %393, label %518

393:                                              ; preds = %385
  %394 = getelementptr i8, ptr %237, i32 %24
  %395 = ptrtoint ptr %394 to i32
  %396 = sub i32 %124, %395
  %397 = getelementptr i8, ptr %143, i32 %396
  %398 = icmp ult ptr %397, %4
  %399 = select i1 %398, ptr %397, ptr %4
  %400 = getelementptr i8, ptr %399, i32 -3
  %401 = icmp ugt ptr %400, %143
  br i1 %401, label %402, label %427

402:                                              ; preds = %393
  %403 = load i32, ptr %394, align 1
  %404 = load i32, ptr %143, align 1
  %405 = xor i32 %404, %403
  %406 = icmp eq i32 %405, 0
  br i1 %406, label %410, label %407

407:                                              ; preds = %402
  %408 = tail call i32 @llvm.cttz.i32(i32 %405, i1 true) #10, !range !8
  %409 = lshr i32 %408, 3
  br label %453

410:                                              ; preds = %416, %402
  %411 = phi ptr [ %414, %416 ], [ %143, %402 ]
  %412 = phi ptr [ %413, %416 ], [ %394, %402 ]
  %413 = getelementptr i8, ptr %412, i32 4
  %414 = getelementptr i8, ptr %411, i32 4
  %415 = icmp ult ptr %414, %400
  br i1 %415, label %416, label %427

416:                                              ; preds = %410
  %417 = load i32, ptr %413, align 1
  %418 = load i32, ptr %414, align 1
  %419 = xor i32 %418, %417
  %420 = icmp eq i32 %419, 0
  br i1 %420, label %410, label %421

421:                                              ; preds = %416
  %422 = tail call i32 @llvm.cttz.i32(i32 %419, i1 true) #10, !range !8
  %423 = lshr i32 %422, 3
  %424 = getelementptr i8, ptr %414, i32 %423
  %425 = ptrtoint ptr %424 to i32
  %426 = sub i32 %425, %145
  br label %453

427:                                              ; preds = %410, %393
  %428 = phi ptr [ %143, %393 ], [ %414, %410 ]
  %429 = phi ptr [ %394, %393 ], [ %413, %410 ]
  %430 = getelementptr i8, ptr %399, i32 -1
  %431 = icmp ult ptr %428, %430
  br i1 %431, label %432, label %439

432:                                              ; preds = %427
  %433 = load i16, ptr %429, align 1
  %434 = load i16, ptr %428, align 1
  %435 = icmp eq i16 %433, %434
  br i1 %435, label %436, label %439

436:                                              ; preds = %432
  %437 = getelementptr i8, ptr %428, i32 2
  %438 = getelementptr i8, ptr %429, i32 2
  br label %439

439:                                              ; preds = %436, %432, %427
  %440 = phi ptr [ %437, %436 ], [ %428, %432 ], [ %428, %427 ]
  %441 = phi ptr [ %438, %436 ], [ %429, %432 ], [ %429, %427 ]
  %442 = icmp ult ptr %440, %399
  br i1 %442, label %443, label %449

443:                                              ; preds = %439
  %444 = load i8, ptr %441, align 1
  %445 = load i8, ptr %440, align 1
  %446 = icmp eq i8 %444, %445
  %447 = zext i1 %446 to i32
  %448 = getelementptr i8, ptr %440, i32 %447
  br label %449

449:                                              ; preds = %443, %439
  %450 = phi ptr [ %440, %439 ], [ %448, %443 ]
  %451 = ptrtoint ptr %450 to i32
  %452 = sub i32 %451, %145
  br label %453

453:                                              ; preds = %449, %421, %407
  %454 = phi i32 [ %452, %449 ], [ %409, %407 ], [ %426, %421 ]
  %455 = getelementptr i8, ptr %394, i32 %454
  %456 = icmp eq ptr %455, %125
  br i1 %456, label %457, label %515

457:                                              ; preds = %453
  %458 = getelementptr i8, ptr %143, i32 %454
  %459 = icmp ugt ptr %146, %458
  br i1 %459, label %460, label %486

460:                                              ; preds = %457
  %461 = load i32, ptr %76, align 1
  %462 = load i32, ptr %458, align 1
  %463 = xor i32 %462, %461
  %464 = icmp eq i32 %463, 0
  br i1 %464, label %468, label %465

465:                                              ; preds = %460
  %466 = tail call i32 @llvm.cttz.i32(i32 %463, i1 true) #10, !range !8
  %467 = lshr i32 %466, 3
  br label %512

468:                                              ; preds = %474, %460
  %469 = phi ptr [ %472, %474 ], [ %458, %460 ]
  %470 = phi ptr [ %471, %474 ], [ %76, %460 ]
  %471 = getelementptr i8, ptr %470, i32 4
  %472 = getelementptr i8, ptr %469, i32 4
  %473 = icmp ult ptr %472, %146
  br i1 %473, label %474, label %486

474:                                              ; preds = %468
  %475 = load i32, ptr %471, align 1
  %476 = load i32, ptr %472, align 1
  %477 = xor i32 %476, %475
  %478 = icmp eq i32 %477, 0
  br i1 %478, label %468, label %479

479:                                              ; preds = %474
  %480 = tail call i32 @llvm.cttz.i32(i32 %477, i1 true) #10, !range !8
  %481 = lshr i32 %480, 3
  %482 = getelementptr i8, ptr %472, i32 %481
  %483 = ptrtoint ptr %482 to i32
  %484 = ptrtoint ptr %458 to i32
  %485 = sub i32 %483, %484
  br label %512

486:                                              ; preds = %468, %457
  %487 = phi ptr [ %458, %457 ], [ %472, %468 ]
  %488 = phi ptr [ %76, %457 ], [ %471, %468 ]
  %489 = icmp ult ptr %487, %147
  br i1 %489, label %490, label %497

490:                                              ; preds = %486
  %491 = load i16, ptr %488, align 1
  %492 = load i16, ptr %487, align 1
  %493 = icmp eq i16 %491, %492
  br i1 %493, label %494, label %497

494:                                              ; preds = %490
  %495 = getelementptr i8, ptr %487, i32 2
  %496 = getelementptr i8, ptr %488, i32 2
  br label %497

497:                                              ; preds = %494, %490, %486
  %498 = phi ptr [ %495, %494 ], [ %487, %490 ], [ %487, %486 ]
  %499 = phi ptr [ %496, %494 ], [ %488, %490 ], [ %488, %486 ]
  %500 = icmp ult ptr %498, %4
  br i1 %500, label %501, label %507

501:                                              ; preds = %497
  %502 = load i8, ptr %499, align 1
  %503 = load i8, ptr %498, align 1
  %504 = icmp eq i8 %502, %503
  %505 = zext i1 %504 to i32
  %506 = getelementptr i8, ptr %498, i32 %505
  br label %507

507:                                              ; preds = %501, %497
  %508 = phi ptr [ %498, %497 ], [ %506, %501 ]
  %509 = ptrtoint ptr %508 to i32
  %510 = ptrtoint ptr %458 to i32
  %511 = sub i32 %509, %510
  br label %512

512:                                              ; preds = %507, %479, %465
  %513 = phi i32 [ %511, %507 ], [ %467, %465 ], [ %485, %479 ]
  %514 = add i32 %513, %454
  br label %515

515:                                              ; preds = %512, %453
  %516 = phi i32 [ %514, %512 ], [ %454, %453 ]
  %517 = add i32 %516, %24
  br label %518

518:                                              ; preds = %515, %385, %379, %377, %233
  %519 = phi i32 [ %235, %233 ], [ %517, %515 ], [ %378, %385 ], [ %378, %379 ], [ %378, %377 ]
  %520 = icmp ugt i32 %519, %155
  br i1 %520, label %521, label %530

521:                                              ; preds = %518
  %522 = sub nuw i32 %154, %7
  %523 = getelementptr %struct.ZSTD_match_t, ptr %0, i32 %156
  store i32 %522, ptr %523, align 4
  %524 = getelementptr %struct.ZSTD_match_t, ptr %0, i32 %156, i32 1
  store i32 %519, ptr %524, align 4
  %525 = add i32 %156, 1
  %526 = icmp ugt i32 %519, %15
  %527 = getelementptr i8, ptr %3, i32 %519
  %528 = icmp eq ptr %527, %4
  %529 = or i1 %526, %528
  br i1 %529, label %1273, label %530

530:                                              ; preds = %521, %518, %169
  %531 = phi i32 [ %525, %521 ], [ %156, %518 ], [ %156, %169 ]
  %532 = phi i32 [ %519, %521 ], [ %155, %518 ], [ %155, %169 ]
  %533 = add nuw i32 %154, 1
  %534 = icmp ult i32 %533, %136
  br i1 %534, label %153, label %535

535:                                              ; preds = %530, %120
  %536 = phi i32 [ %135, %120 ], [ %532, %530 ]
  %537 = phi i32 [ 0, %120 ], [ %531, %530 ]
  %538 = icmp ult i32 %536, 3
  %539 = select i1 %23, i1 %538, i1 false
  br i1 %539, label %540, label %765

540:                                              ; preds = %535
  %541 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %1, i32 0, i32 5
  %542 = load ptr, ptr %541, align 4
  %543 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %1, i32 0, i32 3
  %544 = load i32, ptr %543, align 4
  %545 = load ptr, ptr %16, align 4
  %546 = load i32, ptr %2, align 4
  %547 = ptrtoint ptr %545 to i32
  %548 = sub i32 %18, %547
  %549 = load i32, ptr %3, align 1
  %550 = sub i32 32, %544
  %551 = icmp ult i32 %546, %548
  br i1 %551, label %552, label %561

552:                                              ; preds = %552, %540
  %553 = phi i32 [ %559, %552 ], [ %546, %540 ]
  %554 = getelementptr i8, ptr %545, i32 %553
  %555 = load i32, ptr %554, align 1
  %556 = mul i32 %555, 900185344
  %557 = lshr i32 %556, %550
  %558 = getelementptr i32, ptr %542, i32 %557
  store i32 %553, ptr %558, align 4
  %559 = add nuw i32 %553, 1
  %560 = icmp ult i32 %559, %548
  br i1 %560, label %552, label %561

561:                                              ; preds = %552, %540
  %562 = mul i32 %549, 900185344
  %563 = lshr i32 %562, %550
  store i32 %548, ptr %2, align 4
  %564 = getelementptr i32, ptr %542, i32 %563
  %565 = load i32, ptr %564, align 4
  %566 = icmp uge i32 %565, %91
  %567 = sub i32 %20, %565
  %568 = icmp ult i32 %567, 262144
  %569 = and i1 %566, %568
  br i1 %569, label %570, label %765

570:                                              ; preds = %561
  switch i32 %5, label %571 [
    i32 2, label %573
    i32 0, label %573
  ]

571:                                              ; preds = %570
  %572 = icmp ult i32 %565, %74
  br i1 %572, label %628, label %573

573:                                              ; preds = %571, %570, %570
  %574 = getelementptr i8, ptr %17, i32 %565
  %575 = getelementptr i8, ptr %4, i32 -3
  %576 = icmp ugt ptr %575, %3
  br i1 %576, label %577, label %602

577:                                              ; preds = %573
  %578 = load i32, ptr %574, align 1
  %579 = load i32, ptr %3, align 1
  %580 = xor i32 %579, %578
  %581 = icmp eq i32 %580, 0
  br i1 %581, label %585, label %582

582:                                              ; preds = %577
  %583 = tail call i32 @llvm.cttz.i32(i32 %580, i1 true) #10, !range !8
  %584 = lshr i32 %583, 3
  br label %753

585:                                              ; preds = %591, %577
  %586 = phi ptr [ %589, %591 ], [ %3, %577 ]
  %587 = phi ptr [ %588, %591 ], [ %574, %577 ]
  %588 = getelementptr i8, ptr %587, i32 4
  %589 = getelementptr i8, ptr %586, i32 4
  %590 = icmp ult ptr %589, %575
  br i1 %590, label %591, label %602

591:                                              ; preds = %585
  %592 = load i32, ptr %588, align 1
  %593 = load i32, ptr %589, align 1
  %594 = xor i32 %593, %592
  %595 = icmp eq i32 %594, 0
  br i1 %595, label %585, label %596

596:                                              ; preds = %591
  %597 = tail call i32 @llvm.cttz.i32(i32 %594, i1 true) #10, !range !8
  %598 = lshr i32 %597, 3
  %599 = getelementptr i8, ptr %589, i32 %598
  %600 = ptrtoint ptr %599 to i32
  %601 = sub i32 %600, %18
  br label %753

602:                                              ; preds = %585, %573
  %603 = phi ptr [ %3, %573 ], [ %589, %585 ]
  %604 = phi ptr [ %574, %573 ], [ %588, %585 ]
  %605 = getelementptr i8, ptr %4, i32 -1
  %606 = icmp ult ptr %603, %605
  br i1 %606, label %607, label %614

607:                                              ; preds = %602
  %608 = load i16, ptr %604, align 1
  %609 = load i16, ptr %603, align 1
  %610 = icmp eq i16 %608, %609
  br i1 %610, label %611, label %614

611:                                              ; preds = %607
  %612 = getelementptr i8, ptr %603, i32 2
  %613 = getelementptr i8, ptr %604, i32 2
  br label %614

614:                                              ; preds = %611, %607, %602
  %615 = phi ptr [ %612, %611 ], [ %603, %607 ], [ %603, %602 ]
  %616 = phi ptr [ %613, %611 ], [ %604, %607 ], [ %604, %602 ]
  %617 = icmp ult ptr %615, %4
  br i1 %617, label %618, label %624

618:                                              ; preds = %614
  %619 = load i8, ptr %616, align 1
  %620 = load i8, ptr %615, align 1
  %621 = icmp eq i8 %619, %620
  %622 = zext i1 %621 to i32
  %623 = getelementptr i8, ptr %615, i32 %622
  br label %624

624:                                              ; preds = %618, %614
  %625 = phi ptr [ %615, %614 ], [ %623, %618 ]
  %626 = ptrtoint ptr %625 to i32
  %627 = sub i32 %626, %18
  br label %753

628:                                              ; preds = %571
  %629 = getelementptr i8, ptr %72, i32 %565
  %630 = ptrtoint ptr %75 to i32
  %631 = ptrtoint ptr %629 to i32
  %632 = sub i32 %630, %631
  %633 = getelementptr i8, ptr %3, i32 %632
  %634 = icmp ult ptr %633, %4
  %635 = select i1 %634, ptr %633, ptr %4
  %636 = getelementptr i8, ptr %635, i32 -3
  %637 = icmp ugt ptr %636, %3
  br i1 %637, label %638, label %663

638:                                              ; preds = %628
  %639 = load i32, ptr %629, align 1
  %640 = load i32, ptr %3, align 1
  %641 = xor i32 %640, %639
  %642 = icmp eq i32 %641, 0
  br i1 %642, label %646, label %643

643:                                              ; preds = %638
  %644 = tail call i32 @llvm.cttz.i32(i32 %641, i1 true) #10, !range !8
  %645 = lshr i32 %644, 3
  br label %689

646:                                              ; preds = %652, %638
  %647 = phi ptr [ %650, %652 ], [ %3, %638 ]
  %648 = phi ptr [ %649, %652 ], [ %629, %638 ]
  %649 = getelementptr i8, ptr %648, i32 4
  %650 = getelementptr i8, ptr %647, i32 4
  %651 = icmp ult ptr %650, %636
  br i1 %651, label %652, label %663

652:                                              ; preds = %646
  %653 = load i32, ptr %649, align 1
  %654 = load i32, ptr %650, align 1
  %655 = xor i32 %654, %653
  %656 = icmp eq i32 %655, 0
  br i1 %656, label %646, label %657

657:                                              ; preds = %652
  %658 = tail call i32 @llvm.cttz.i32(i32 %655, i1 true) #10, !range !8
  %659 = lshr i32 %658, 3
  %660 = getelementptr i8, ptr %650, i32 %659
  %661 = ptrtoint ptr %660 to i32
  %662 = sub i32 %661, %18
  br label %689

663:                                              ; preds = %646, %628
  %664 = phi ptr [ %3, %628 ], [ %650, %646 ]
  %665 = phi ptr [ %629, %628 ], [ %649, %646 ]
  %666 = getelementptr i8, ptr %635, i32 -1
  %667 = icmp ult ptr %664, %666
  br i1 %667, label %668, label %675

668:                                              ; preds = %663
  %669 = load i16, ptr %665, align 1
  %670 = load i16, ptr %664, align 1
  %671 = icmp eq i16 %669, %670
  br i1 %671, label %672, label %675

672:                                              ; preds = %668
  %673 = getelementptr i8, ptr %664, i32 2
  %674 = getelementptr i8, ptr %665, i32 2
  br label %675

675:                                              ; preds = %672, %668, %663
  %676 = phi ptr [ %673, %672 ], [ %664, %668 ], [ %664, %663 ]
  %677 = phi ptr [ %674, %672 ], [ %665, %668 ], [ %665, %663 ]
  %678 = icmp ult ptr %676, %635
  br i1 %678, label %679, label %685

679:                                              ; preds = %675
  %680 = load i8, ptr %677, align 1
  %681 = load i8, ptr %676, align 1
  %682 = icmp eq i8 %680, %681
  %683 = zext i1 %682 to i32
  %684 = getelementptr i8, ptr %676, i32 %683
  br label %685

685:                                              ; preds = %679, %675
  %686 = phi ptr [ %676, %675 ], [ %684, %679 ]
  %687 = ptrtoint ptr %686 to i32
  %688 = sub i32 %687, %18
  br label %689

689:                                              ; preds = %685, %657, %643
  %690 = phi i32 [ %688, %685 ], [ %645, %643 ], [ %662, %657 ]
  %691 = getelementptr i8, ptr %629, i32 %690
  %692 = icmp eq ptr %691, %75
  br i1 %692, label %693, label %753

693:                                              ; preds = %689
  %694 = getelementptr i8, ptr %3, i32 %690
  %695 = getelementptr i8, ptr %4, i32 -3
  %696 = icmp ugt ptr %695, %694
  br i1 %696, label %697, label %723

697:                                              ; preds = %693
  %698 = load i32, ptr %76, align 1
  %699 = load i32, ptr %694, align 1
  %700 = xor i32 %699, %698
  %701 = icmp eq i32 %700, 0
  br i1 %701, label %705, label %702

702:                                              ; preds = %697
  %703 = tail call i32 @llvm.cttz.i32(i32 %700, i1 true) #10, !range !8
  %704 = lshr i32 %703, 3
  br label %750

705:                                              ; preds = %711, %697
  %706 = phi ptr [ %709, %711 ], [ %694, %697 ]
  %707 = phi ptr [ %708, %711 ], [ %76, %697 ]
  %708 = getelementptr i8, ptr %707, i32 4
  %709 = getelementptr i8, ptr %706, i32 4
  %710 = icmp ult ptr %709, %695
  br i1 %710, label %711, label %723

711:                                              ; preds = %705
  %712 = load i32, ptr %708, align 1
  %713 = load i32, ptr %709, align 1
  %714 = xor i32 %713, %712
  %715 = icmp eq i32 %714, 0
  br i1 %715, label %705, label %716

716:                                              ; preds = %711
  %717 = tail call i32 @llvm.cttz.i32(i32 %714, i1 true) #10, !range !8
  %718 = lshr i32 %717, 3
  %719 = getelementptr i8, ptr %709, i32 %718
  %720 = ptrtoint ptr %719 to i32
  %721 = ptrtoint ptr %694 to i32
  %722 = sub i32 %720, %721
  br label %750

723:                                              ; preds = %705, %693
  %724 = phi ptr [ %694, %693 ], [ %709, %705 ]
  %725 = phi ptr [ %76, %693 ], [ %708, %705 ]
  %726 = getelementptr i8, ptr %4, i32 -1
  %727 = icmp ult ptr %724, %726
  br i1 %727, label %728, label %735

728:                                              ; preds = %723
  %729 = load i16, ptr %725, align 1
  %730 = load i16, ptr %724, align 1
  %731 = icmp eq i16 %729, %730
  br i1 %731, label %732, label %735

732:                                              ; preds = %728
  %733 = getelementptr i8, ptr %724, i32 2
  %734 = getelementptr i8, ptr %725, i32 2
  br label %735

735:                                              ; preds = %732, %728, %723
  %736 = phi ptr [ %733, %732 ], [ %724, %728 ], [ %724, %723 ]
  %737 = phi ptr [ %734, %732 ], [ %725, %728 ], [ %725, %723 ]
  %738 = icmp ult ptr %736, %4
  br i1 %738, label %739, label %745

739:                                              ; preds = %735
  %740 = load i8, ptr %737, align 1
  %741 = load i8, ptr %736, align 1
  %742 = icmp eq i8 %740, %741
  %743 = zext i1 %742 to i32
  %744 = getelementptr i8, ptr %736, i32 %743
  br label %745

745:                                              ; preds = %739, %735
  %746 = phi ptr [ %736, %735 ], [ %744, %739 ]
  %747 = ptrtoint ptr %746 to i32
  %748 = ptrtoint ptr %694 to i32
  %749 = sub i32 %747, %748
  br label %750

750:                                              ; preds = %745, %716, %702
  %751 = phi i32 [ %749, %745 ], [ %704, %702 ], [ %722, %716 ]
  %752 = add i32 %751, %690
  br label %753

753:                                              ; preds = %750, %689, %624, %596, %582
  %754 = phi i32 [ %627, %624 ], [ %584, %582 ], [ %601, %596 ], [ %752, %750 ], [ %690, %689 ]
  %755 = icmp ugt i32 %754, 2
  br i1 %755, label %756, label %765

756:                                              ; preds = %753
  %757 = add i32 %567, 2
  store i32 %757, ptr %0, align 4
  %758 = getelementptr inbounds %struct.ZSTD_match_t, ptr %0, i32 0, i32 1
  store i32 %754, ptr %758, align 4
  %759 = icmp ugt i32 %754, %15
  %760 = getelementptr i8, ptr %3, i32 %754
  %761 = icmp eq ptr %760, %4
  %762 = or i1 %759, %761
  br i1 %762, label %763, label %765

763:                                              ; preds = %756
  %764 = add i32 %20, 1
  br label %1269

765:                                              ; preds = %756, %753, %561, %535
  %766 = phi i32 [ %537, %535 ], [ %537, %561 ], [ %537, %753 ], [ 1, %756 ]
  %767 = phi i32 [ %536, %535 ], [ %536, %561 ], [ %536, %753 ], [ %754, %756 ]
  store i32 %20, ptr %62, align 4
  %768 = icmp ult i32 %63, %91
  br i1 %768, label %1029, label %769

769:                                              ; preds = %765
  %770 = getelementptr i8, ptr %4, i32 -3
  %771 = getelementptr i8, ptr %4, i32 -1
  %772 = ptrtoint ptr %75 to i32
  %773 = add i32 %20, 2
  br label %774

774:                                              ; preds = %1018, %769
  %775 = phi i32 [ %767, %769 ], [ %1005, %1018 ]
  %776 = phi i32 [ %99, %769 ], [ %1025, %1018 ]
  %777 = phi i32 [ %766, %769 ], [ %1004, %1018 ]
  %778 = phi i32 [ %96, %769 ], [ %1003, %1018 ]
  %779 = phi ptr [ %95, %769 ], [ %1023, %1018 ]
  %780 = phi ptr [ %94, %769 ], [ %1022, %1018 ]
  %781 = phi i32 [ 0, %769 ], [ %1021, %1018 ]
  %782 = phi i32 [ 0, %769 ], [ %1020, %1018 ]
  %783 = phi i32 [ %63, %769 ], [ %1024, %1018 ]
  %784 = and i32 %783, %70
  %785 = shl i32 %784, 1
  %786 = getelementptr i32, ptr %65, i32 %785
  %787 = tail call i32 @llvm.umin.i32(i32 %782, i32 %781)
  switch i32 %5, label %788 [
    i32 2, label %791
    i32 0, label %791
  ]

788:                                              ; preds = %774
  %789 = add i32 %787, %783
  %790 = icmp ult i32 %789, %74
  br i1 %790, label %851, label %791

791:                                              ; preds = %788, %774, %774
  %792 = getelementptr i8, ptr %17, i32 %783
  %793 = getelementptr i8, ptr %3, i32 %787
  %794 = getelementptr i8, ptr %792, i32 %787
  %795 = icmp ugt ptr %770, %793
  br i1 %795, label %796, label %822

796:                                              ; preds = %791
  %797 = load i32, ptr %794, align 1
  %798 = load i32, ptr %793, align 1
  %799 = xor i32 %798, %797
  %800 = icmp eq i32 %799, 0
  br i1 %800, label %804, label %801

801:                                              ; preds = %796
  %802 = tail call i32 @llvm.cttz.i32(i32 %799, i1 true) #10, !range !8
  %803 = lshr i32 %802, 3
  br label %848

804:                                              ; preds = %810, %796
  %805 = phi ptr [ %808, %810 ], [ %793, %796 ]
  %806 = phi ptr [ %807, %810 ], [ %794, %796 ]
  %807 = getelementptr i8, ptr %806, i32 4
  %808 = getelementptr i8, ptr %805, i32 4
  %809 = icmp ult ptr %808, %770
  br i1 %809, label %810, label %822

810:                                              ; preds = %804
  %811 = load i32, ptr %807, align 1
  %812 = load i32, ptr %808, align 1
  %813 = xor i32 %812, %811
  %814 = icmp eq i32 %813, 0
  br i1 %814, label %804, label %815

815:                                              ; preds = %810
  %816 = tail call i32 @llvm.cttz.i32(i32 %813, i1 true) #10, !range !8
  %817 = lshr i32 %816, 3
  %818 = getelementptr i8, ptr %808, i32 %817
  %819 = ptrtoint ptr %818 to i32
  %820 = ptrtoint ptr %793 to i32
  %821 = sub i32 %819, %820
  br label %848

822:                                              ; preds = %804, %791
  %823 = phi ptr [ %793, %791 ], [ %808, %804 ]
  %824 = phi ptr [ %794, %791 ], [ %807, %804 ]
  %825 = icmp ult ptr %823, %771
  br i1 %825, label %826, label %833

826:                                              ; preds = %822
  %827 = load i16, ptr %824, align 1
  %828 = load i16, ptr %823, align 1
  %829 = icmp eq i16 %827, %828
  br i1 %829, label %830, label %833

830:                                              ; preds = %826
  %831 = getelementptr i8, ptr %823, i32 2
  %832 = getelementptr i8, ptr %824, i32 2
  br label %833

833:                                              ; preds = %830, %826, %822
  %834 = phi ptr [ %831, %830 ], [ %823, %826 ], [ %823, %822 ]
  %835 = phi ptr [ %832, %830 ], [ %824, %826 ], [ %824, %822 ]
  %836 = icmp ult ptr %834, %4
  br i1 %836, label %837, label %843

837:                                              ; preds = %833
  %838 = load i8, ptr %835, align 1
  %839 = load i8, ptr %834, align 1
  %840 = icmp eq i8 %838, %839
  %841 = zext i1 %840 to i32
  %842 = getelementptr i8, ptr %834, i32 %841
  br label %843

843:                                              ; preds = %837, %833
  %844 = phi ptr [ %834, %833 ], [ %842, %837 ]
  %845 = ptrtoint ptr %844 to i32
  %846 = ptrtoint ptr %793 to i32
  %847 = sub i32 %845, %846
  br label %848

848:                                              ; preds = %843, %815, %801
  %849 = phi i32 [ %847, %843 ], [ %803, %801 ], [ %821, %815 ]
  %850 = add i32 %849, %787
  br label %983

851:                                              ; preds = %788
  %852 = getelementptr i8, ptr %72, i32 %783
  %853 = getelementptr i8, ptr %3, i32 %787
  %854 = getelementptr i8, ptr %852, i32 %787
  %855 = ptrtoint ptr %854 to i32
  %856 = sub i32 %772, %855
  %857 = getelementptr i8, ptr %853, i32 %856
  %858 = icmp ult ptr %857, %4
  %859 = select i1 %858, ptr %857, ptr %4
  %860 = getelementptr i8, ptr %859, i32 -3
  %861 = icmp ugt ptr %860, %853
  br i1 %861, label %862, label %888

862:                                              ; preds = %851
  %863 = load i32, ptr %854, align 1
  %864 = load i32, ptr %853, align 1
  %865 = xor i32 %864, %863
  %866 = icmp eq i32 %865, 0
  br i1 %866, label %870, label %867

867:                                              ; preds = %862
  %868 = tail call i32 @llvm.cttz.i32(i32 %865, i1 true) #10, !range !8
  %869 = lshr i32 %868, 3
  br label %915

870:                                              ; preds = %876, %862
  %871 = phi ptr [ %874, %876 ], [ %853, %862 ]
  %872 = phi ptr [ %873, %876 ], [ %854, %862 ]
  %873 = getelementptr i8, ptr %872, i32 4
  %874 = getelementptr i8, ptr %871, i32 4
  %875 = icmp ult ptr %874, %860
  br i1 %875, label %876, label %888

876:                                              ; preds = %870
  %877 = load i32, ptr %873, align 1
  %878 = load i32, ptr %874, align 1
  %879 = xor i32 %878, %877
  %880 = icmp eq i32 %879, 0
  br i1 %880, label %870, label %881

881:                                              ; preds = %876
  %882 = tail call i32 @llvm.cttz.i32(i32 %879, i1 true) #10, !range !8
  %883 = lshr i32 %882, 3
  %884 = getelementptr i8, ptr %874, i32 %883
  %885 = ptrtoint ptr %884 to i32
  %886 = ptrtoint ptr %853 to i32
  %887 = sub i32 %885, %886
  br label %915

888:                                              ; preds = %870, %851
  %889 = phi ptr [ %853, %851 ], [ %874, %870 ]
  %890 = phi ptr [ %854, %851 ], [ %873, %870 ]
  %891 = getelementptr i8, ptr %859, i32 -1
  %892 = icmp ult ptr %889, %891
  br i1 %892, label %893, label %900

893:                                              ; preds = %888
  %894 = load i16, ptr %890, align 1
  %895 = load i16, ptr %889, align 1
  %896 = icmp eq i16 %894, %895
  br i1 %896, label %897, label %900

897:                                              ; preds = %893
  %898 = getelementptr i8, ptr %889, i32 2
  %899 = getelementptr i8, ptr %890, i32 2
  br label %900

900:                                              ; preds = %897, %893, %888
  %901 = phi ptr [ %898, %897 ], [ %889, %893 ], [ %889, %888 ]
  %902 = phi ptr [ %899, %897 ], [ %890, %893 ], [ %890, %888 ]
  %903 = icmp ult ptr %901, %859
  br i1 %903, label %904, label %910

904:                                              ; preds = %900
  %905 = load i8, ptr %902, align 1
  %906 = load i8, ptr %901, align 1
  %907 = icmp eq i8 %905, %906
  %908 = zext i1 %907 to i32
  %909 = getelementptr i8, ptr %901, i32 %908
  br label %910

910:                                              ; preds = %904, %900
  %911 = phi ptr [ %901, %900 ], [ %909, %904 ]
  %912 = ptrtoint ptr %911 to i32
  %913 = ptrtoint ptr %853 to i32
  %914 = sub i32 %912, %913
  br label %915

915:                                              ; preds = %910, %881, %867
  %916 = phi i32 [ %914, %910 ], [ %869, %867 ], [ %887, %881 ]
  %917 = getelementptr i8, ptr %854, i32 %916
  %918 = icmp eq ptr %917, %75
  br i1 %918, label %919, label %977

919:                                              ; preds = %915
  %920 = getelementptr i8, ptr %853, i32 %916
  %921 = icmp ugt ptr %770, %920
  br i1 %921, label %922, label %948

922:                                              ; preds = %919
  %923 = load i32, ptr %76, align 1
  %924 = load i32, ptr %920, align 1
  %925 = xor i32 %924, %923
  %926 = icmp eq i32 %925, 0
  br i1 %926, label %930, label %927

927:                                              ; preds = %922
  %928 = tail call i32 @llvm.cttz.i32(i32 %925, i1 true) #10, !range !8
  %929 = lshr i32 %928, 3
  br label %974

930:                                              ; preds = %936, %922
  %931 = phi ptr [ %934, %936 ], [ %920, %922 ]
  %932 = phi ptr [ %933, %936 ], [ %76, %922 ]
  %933 = getelementptr i8, ptr %932, i32 4
  %934 = getelementptr i8, ptr %931, i32 4
  %935 = icmp ult ptr %934, %770
  br i1 %935, label %936, label %948

936:                                              ; preds = %930
  %937 = load i32, ptr %933, align 1
  %938 = load i32, ptr %934, align 1
  %939 = xor i32 %938, %937
  %940 = icmp eq i32 %939, 0
  br i1 %940, label %930, label %941

941:                                              ; preds = %936
  %942 = tail call i32 @llvm.cttz.i32(i32 %939, i1 true) #10, !range !8
  %943 = lshr i32 %942, 3
  %944 = getelementptr i8, ptr %934, i32 %943
  %945 = ptrtoint ptr %944 to i32
  %946 = ptrtoint ptr %920 to i32
  %947 = sub i32 %945, %946
  br label %974

948:                                              ; preds = %930, %919
  %949 = phi ptr [ %920, %919 ], [ %934, %930 ]
  %950 = phi ptr [ %76, %919 ], [ %933, %930 ]
  %951 = icmp ult ptr %949, %771
  br i1 %951, label %952, label %959

952:                                              ; preds = %948
  %953 = load i16, ptr %950, align 1
  %954 = load i16, ptr %949, align 1
  %955 = icmp eq i16 %953, %954
  br i1 %955, label %956, label %959

956:                                              ; preds = %952
  %957 = getelementptr i8, ptr %949, i32 2
  %958 = getelementptr i8, ptr %950, i32 2
  br label %959

959:                                              ; preds = %956, %952, %948
  %960 = phi ptr [ %957, %956 ], [ %949, %952 ], [ %949, %948 ]
  %961 = phi ptr [ %958, %956 ], [ %950, %952 ], [ %950, %948 ]
  %962 = icmp ult ptr %960, %4
  br i1 %962, label %963, label %969

963:                                              ; preds = %959
  %964 = load i8, ptr %961, align 1
  %965 = load i8, ptr %960, align 1
  %966 = icmp eq i8 %964, %965
  %967 = zext i1 %966 to i32
  %968 = getelementptr i8, ptr %960, i32 %967
  br label %969

969:                                              ; preds = %963, %959
  %970 = phi ptr [ %960, %959 ], [ %968, %963 ]
  %971 = ptrtoint ptr %970 to i32
  %972 = ptrtoint ptr %920 to i32
  %973 = sub i32 %971, %972
  br label %974

974:                                              ; preds = %969, %941, %927
  %975 = phi i32 [ %973, %969 ], [ %929, %927 ], [ %947, %941 ]
  %976 = add i32 %975, %916
  br label %977

977:                                              ; preds = %974, %915
  %978 = phi i32 [ %976, %974 ], [ %916, %915 ]
  %979 = add i32 %978, %787
  %980 = add i32 %979, %783
  %981 = icmp ult i32 %980, %74
  %982 = select i1 %981, ptr %72, ptr %17
  br label %983

983:                                              ; preds = %977, %848
  %984 = phi ptr [ %17, %848 ], [ %982, %977 ]
  %985 = phi i32 [ %850, %848 ], [ %979, %977 ]
  %986 = icmp ugt i32 %985, %775
  br i1 %986, label %987, label %1002

987:                                              ; preds = %983
  %988 = sub i32 %778, %783
  %989 = icmp ugt i32 %985, %988
  %990 = add i32 %985, %783
  %991 = select i1 %989, i32 %990, i32 %778
  %992 = sub i32 %773, %783
  %993 = getelementptr %struct.ZSTD_match_t, ptr %0, i32 %777
  store i32 %992, ptr %993, align 4
  %994 = getelementptr %struct.ZSTD_match_t, ptr %0, i32 %777, i32 1
  store i32 %985, ptr %994, align 4
  %995 = add i32 %777, 1
  %996 = icmp ugt i32 %985, 4096
  %997 = getelementptr i8, ptr %3, i32 %985
  %998 = icmp eq ptr %997, %4
  %999 = or i1 %996, %998
  br i1 %999, label %1000, label %1002

1000:                                             ; preds = %987
  %1001 = select i1 %100, i32 0, i32 %776
  br label %1029

1002:                                             ; preds = %987, %983
  %1003 = phi i32 [ %991, %987 ], [ %778, %983 ]
  %1004 = phi i32 [ %995, %987 ], [ %777, %983 ]
  %1005 = phi i32 [ %985, %987 ], [ %775, %983 ]
  %1006 = getelementptr i8, ptr %984, i32 %783
  %1007 = getelementptr i8, ptr %1006, i32 %985
  %1008 = load i8, ptr %1007, align 1
  %1009 = getelementptr i8, ptr %3, i32 %985
  %1010 = load i8, ptr %1009, align 1
  %1011 = icmp ult i8 %1008, %1010
  br i1 %1011, label %1012, label %1016

1012:                                             ; preds = %1002
  store i32 %783, ptr %780, align 4
  %1013 = icmp ugt i32 %783, %77
  br i1 %1013, label %1014, label %1029

1014:                                             ; preds = %1012
  %1015 = getelementptr i32, ptr %786, i32 1
  br label %1018

1016:                                             ; preds = %1002
  store i32 %783, ptr %779, align 4
  %1017 = icmp ugt i32 %783, %77
  br i1 %1017, label %1018, label %1029

1018:                                             ; preds = %1016, %1014
  %1019 = phi ptr [ %1015, %1014 ], [ %786, %1016 ]
  %1020 = phi i32 [ %985, %1014 ], [ %782, %1016 ]
  %1021 = phi i32 [ %781, %1014 ], [ %985, %1016 ]
  %1022 = phi ptr [ %1015, %1014 ], [ %780, %1016 ]
  %1023 = phi ptr [ %779, %1014 ], [ %786, %1016 ]
  %1024 = load i32, ptr %1019, align 4
  %1025 = add i32 %776, -1
  %1026 = icmp ne i32 %1025, 0
  %1027 = icmp uge i32 %1024, %91
  %1028 = select i1 %1026, i1 %1027, i1 false
  br i1 %1028, label %774, label %1029

1029:                                             ; preds = %1018, %1016, %1012, %1000, %765
  %1030 = phi ptr [ %780, %1000 ], [ %94, %765 ], [ %1022, %1018 ], [ %11, %1012 ], [ %780, %1016 ]
  %1031 = phi ptr [ %779, %1000 ], [ %95, %765 ], [ %1023, %1018 ], [ %779, %1012 ], [ %11, %1016 ]
  %1032 = phi i32 [ %991, %1000 ], [ %96, %765 ], [ %1003, %1016 ], [ %1003, %1012 ], [ %1003, %1018 ]
  %1033 = phi i32 [ %995, %1000 ], [ %766, %765 ], [ %1004, %1016 ], [ %1004, %1012 ], [ %1004, %1018 ]
  %1034 = phi i32 [ %1001, %1000 ], [ %99, %765 ], [ %1025, %1018 ], [ %776, %1012 ], [ %776, %1016 ]
  %1035 = phi i32 [ %985, %1000 ], [ %767, %765 ], [ %1005, %1016 ], [ %1005, %1012 ], [ %1005, %1018 ]
  store i32 0, ptr %1031, align 4
  store i32 0, ptr %1030, align 4
  %1036 = icmp ne i32 %1034, 0
  %1037 = select i1 %100, i1 %1036, i1 false
  br i1 %1037, label %1038, label %1265

1038:                                             ; preds = %1029
  switch i32 %9, label %1039 [
    i32 8, label %1065
    i32 5, label %1044
    i32 6, label %1051
    i32 7, label %1058
  ]

1039:                                             ; preds = %1038
  %1040 = load i32, ptr %3, align 1
  %1041 = mul i32 %1040, -1640531535
  %1042 = sub i32 32, %122
  %1043 = lshr i32 %1041, %1042
  br label %1072

1044:                                             ; preds = %1038
  %1045 = load i64, ptr %3, align 1
  %1046 = mul i64 %1045, -3523014627271114752
  %1047 = sub i32 64, %122
  %1048 = zext i32 %1047 to i64
  %1049 = lshr i64 %1046, %1048
  %1050 = trunc i64 %1049 to i32
  br label %1072

1051:                                             ; preds = %1038
  %1052 = load i64, ptr %3, align 1
  %1053 = mul i64 %1052, -3523014627193847808
  %1054 = sub i32 64, %122
  %1055 = zext i32 %1054 to i64
  %1056 = lshr i64 %1053, %1055
  %1057 = trunc i64 %1056 to i32
  br label %1072

1058:                                             ; preds = %1038
  %1059 = load i64, ptr %3, align 1
  %1060 = mul i64 %1059, -3523014627193167104
  %1061 = sub i32 64, %122
  %1062 = zext i32 %1061 to i64
  %1063 = lshr i64 %1060, %1062
  %1064 = trunc i64 %1063 to i32
  br label %1072

1065:                                             ; preds = %1038
  %1066 = load i64, ptr %3, align 1
  %1067 = mul i64 %1066, -3523014627327384477
  %1068 = sub i32 64, %122
  %1069 = zext i32 %1068 to i64
  %1070 = lshr i64 %1067, %1069
  %1071 = trunc i64 %1070 to i32
  br label %1072

1072:                                             ; preds = %1065, %1058, %1051, %1044, %1039
  %1073 = phi i32 [ %1043, %1039 ], [ %1064, %1058 ], [ %1057, %1051 ], [ %1050, %1044 ], [ %1071, %1065 ]
  %1074 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %126, i32 0, i32 4
  %1075 = load ptr, ptr %1074, align 4
  %1076 = getelementptr i32, ptr %1075, i32 %1073
  %1077 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %126, i32 0, i32 6
  %1078 = load ptr, ptr %1077, align 4
  %1079 = load i32, ptr %1076, align 4
  %1080 = icmp ugt i32 %1079, %128
  br i1 %1080, label %1081, label %1265

1081:                                             ; preds = %1072
  %1082 = getelementptr i8, ptr %4, i32 -3
  %1083 = getelementptr i8, ptr %4, i32 -1
  %1084 = add i32 %20, 2
  %1085 = getelementptr i8, ptr %17, i32 %129
  br label %1086

1086:                                             ; preds = %1250, %1081
  %1087 = phi i32 [ %1079, %1081 ], [ %1261, %1250 ]
  %1088 = phi i32 [ %1035, %1081 ], [ %1248, %1250 ]
  %1089 = phi i32 [ %1034, %1081 ], [ %1260, %1250 ]
  %1090 = phi i32 [ %1033, %1081 ], [ %1247, %1250 ]
  %1091 = phi i32 [ %1032, %1081 ], [ %1246, %1250 ]
  %1092 = phi i32 [ 0, %1081 ], [ %1257, %1250 ]
  %1093 = phi i32 [ 0, %1081 ], [ %1256, %1250 ]
  %1094 = and i32 %1087, %121
  %1095 = shl i32 %1094, 1
  %1096 = getelementptr i32, ptr %1078, i32 %1095
  %1097 = tail call i32 @llvm.umin.i32(i32 %1093, i32 %1092)
  %1098 = getelementptr i8, ptr %127, i32 %1087
  %1099 = getelementptr i8, ptr %3, i32 %1097
  %1100 = getelementptr i8, ptr %1098, i32 %1097
  %1101 = ptrtoint ptr %1100 to i32
  %1102 = sub i32 %124, %1101
  %1103 = getelementptr i8, ptr %1099, i32 %1102
  %1104 = icmp ult ptr %1103, %4
  %1105 = select i1 %1104, ptr %1103, ptr %4
  %1106 = getelementptr i8, ptr %1105, i32 -3
  %1107 = icmp ugt ptr %1106, %1099
  br i1 %1107, label %1108, label %1134

1108:                                             ; preds = %1086
  %1109 = load i32, ptr %1100, align 1
  %1110 = load i32, ptr %1099, align 1
  %1111 = xor i32 %1110, %1109
  %1112 = icmp eq i32 %1111, 0
  br i1 %1112, label %1116, label %1113

1113:                                             ; preds = %1108
  %1114 = tail call i32 @llvm.cttz.i32(i32 %1111, i1 true) #10, !range !8
  %1115 = lshr i32 %1114, 3
  br label %1161

1116:                                             ; preds = %1122, %1108
  %1117 = phi ptr [ %1120, %1122 ], [ %1099, %1108 ]
  %1118 = phi ptr [ %1119, %1122 ], [ %1100, %1108 ]
  %1119 = getelementptr i8, ptr %1118, i32 4
  %1120 = getelementptr i8, ptr %1117, i32 4
  %1121 = icmp ult ptr %1120, %1106
  br i1 %1121, label %1122, label %1134

1122:                                             ; preds = %1116
  %1123 = load i32, ptr %1119, align 1
  %1124 = load i32, ptr %1120, align 1
  %1125 = xor i32 %1124, %1123
  %1126 = icmp eq i32 %1125, 0
  br i1 %1126, label %1116, label %1127

1127:                                             ; preds = %1122
  %1128 = tail call i32 @llvm.cttz.i32(i32 %1125, i1 true) #10, !range !8
  %1129 = lshr i32 %1128, 3
  %1130 = getelementptr i8, ptr %1120, i32 %1129
  %1131 = ptrtoint ptr %1130 to i32
  %1132 = ptrtoint ptr %1099 to i32
  %1133 = sub i32 %1131, %1132
  br label %1161

1134:                                             ; preds = %1116, %1086
  %1135 = phi ptr [ %1099, %1086 ], [ %1120, %1116 ]
  %1136 = phi ptr [ %1100, %1086 ], [ %1119, %1116 ]
  %1137 = getelementptr i8, ptr %1105, i32 -1
  %1138 = icmp ult ptr %1135, %1137
  br i1 %1138, label %1139, label %1146

1139:                                             ; preds = %1134
  %1140 = load i16, ptr %1136, align 1
  %1141 = load i16, ptr %1135, align 1
  %1142 = icmp eq i16 %1140, %1141
  br i1 %1142, label %1143, label %1146

1143:                                             ; preds = %1139
  %1144 = getelementptr i8, ptr %1135, i32 2
  %1145 = getelementptr i8, ptr %1136, i32 2
  br label %1146

1146:                                             ; preds = %1143, %1139, %1134
  %1147 = phi ptr [ %1144, %1143 ], [ %1135, %1139 ], [ %1135, %1134 ]
  %1148 = phi ptr [ %1145, %1143 ], [ %1136, %1139 ], [ %1136, %1134 ]
  %1149 = icmp ult ptr %1147, %1105
  br i1 %1149, label %1150, label %1156

1150:                                             ; preds = %1146
  %1151 = load i8, ptr %1148, align 1
  %1152 = load i8, ptr %1147, align 1
  %1153 = icmp eq i8 %1151, %1152
  %1154 = zext i1 %1153 to i32
  %1155 = getelementptr i8, ptr %1147, i32 %1154
  br label %1156

1156:                                             ; preds = %1150, %1146
  %1157 = phi ptr [ %1147, %1146 ], [ %1155, %1150 ]
  %1158 = ptrtoint ptr %1157 to i32
  %1159 = ptrtoint ptr %1099 to i32
  %1160 = sub i32 %1158, %1159
  br label %1161

1161:                                             ; preds = %1156, %1127, %1113
  %1162 = phi i32 [ %1160, %1156 ], [ %1115, %1113 ], [ %1133, %1127 ]
  %1163 = getelementptr i8, ptr %1100, i32 %1162
  %1164 = icmp eq ptr %1163, %125
  br i1 %1164, label %1165, label %1223

1165:                                             ; preds = %1161
  %1166 = getelementptr i8, ptr %1099, i32 %1162
  %1167 = icmp ugt ptr %1082, %1166
  br i1 %1167, label %1168, label %1194

1168:                                             ; preds = %1165
  %1169 = load i32, ptr %76, align 1
  %1170 = load i32, ptr %1166, align 1
  %1171 = xor i32 %1170, %1169
  %1172 = icmp eq i32 %1171, 0
  br i1 %1172, label %1176, label %1173

1173:                                             ; preds = %1168
  %1174 = tail call i32 @llvm.cttz.i32(i32 %1171, i1 true) #10, !range !8
  %1175 = lshr i32 %1174, 3
  br label %1220

1176:                                             ; preds = %1182, %1168
  %1177 = phi ptr [ %1180, %1182 ], [ %1166, %1168 ]
  %1178 = phi ptr [ %1179, %1182 ], [ %76, %1168 ]
  %1179 = getelementptr i8, ptr %1178, i32 4
  %1180 = getelementptr i8, ptr %1177, i32 4
  %1181 = icmp ult ptr %1180, %1082
  br i1 %1181, label %1182, label %1194

1182:                                             ; preds = %1176
  %1183 = load i32, ptr %1179, align 1
  %1184 = load i32, ptr %1180, align 1
  %1185 = xor i32 %1184, %1183
  %1186 = icmp eq i32 %1185, 0
  br i1 %1186, label %1176, label %1187

1187:                                             ; preds = %1182
  %1188 = tail call i32 @llvm.cttz.i32(i32 %1185, i1 true) #10, !range !8
  %1189 = lshr i32 %1188, 3
  %1190 = getelementptr i8, ptr %1180, i32 %1189
  %1191 = ptrtoint ptr %1190 to i32
  %1192 = ptrtoint ptr %1166 to i32
  %1193 = sub i32 %1191, %1192
  br label %1220

1194:                                             ; preds = %1176, %1165
  %1195 = phi ptr [ %1166, %1165 ], [ %1180, %1176 ]
  %1196 = phi ptr [ %76, %1165 ], [ %1179, %1176 ]
  %1197 = icmp ult ptr %1195, %1083
  br i1 %1197, label %1198, label %1205

1198:                                             ; preds = %1194
  %1199 = load i16, ptr %1196, align 1
  %1200 = load i16, ptr %1195, align 1
  %1201 = icmp eq i16 %1199, %1200
  br i1 %1201, label %1202, label %1205

1202:                                             ; preds = %1198
  %1203 = getelementptr i8, ptr %1195, i32 2
  %1204 = getelementptr i8, ptr %1196, i32 2
  br label %1205

1205:                                             ; preds = %1202, %1198, %1194
  %1206 = phi ptr [ %1203, %1202 ], [ %1195, %1198 ], [ %1195, %1194 ]
  %1207 = phi ptr [ %1204, %1202 ], [ %1196, %1198 ], [ %1196, %1194 ]
  %1208 = icmp ult ptr %1206, %4
  br i1 %1208, label %1209, label %1215

1209:                                             ; preds = %1205
  %1210 = load i8, ptr %1207, align 1
  %1211 = load i8, ptr %1206, align 1
  %1212 = icmp eq i8 %1210, %1211
  %1213 = zext i1 %1212 to i32
  %1214 = getelementptr i8, ptr %1206, i32 %1213
  br label %1215

1215:                                             ; preds = %1209, %1205
  %1216 = phi ptr [ %1206, %1205 ], [ %1214, %1209 ]
  %1217 = ptrtoint ptr %1216 to i32
  %1218 = ptrtoint ptr %1166 to i32
  %1219 = sub i32 %1217, %1218
  br label %1220

1220:                                             ; preds = %1215, %1187, %1173
  %1221 = phi i32 [ %1219, %1215 ], [ %1175, %1173 ], [ %1193, %1187 ]
  %1222 = add i32 %1221, %1162
  br label %1223

1223:                                             ; preds = %1220, %1161
  %1224 = phi i32 [ %1222, %1220 ], [ %1162, %1161 ]
  %1225 = add i32 %1224, %1097
  %1226 = add i32 %1225, %1087
  %1227 = icmp ult i32 %1226, %123
  %1228 = getelementptr i8, ptr %1085, i32 %1087
  %1229 = select i1 %1227, ptr %1098, ptr %1228
  %1230 = icmp ugt i32 %1225, %1088
  br i1 %1230, label %1231, label %1245

1231:                                             ; preds = %1223
  %1232 = add i32 %1087, %129
  %1233 = sub i32 %1091, %1232
  %1234 = icmp ugt i32 %1225, %1233
  %1235 = add i32 %1225, %1232
  %1236 = select i1 %1234, i32 %1235, i32 %1091
  %1237 = sub i32 %1084, %1232
  %1238 = getelementptr %struct.ZSTD_match_t, ptr %0, i32 %1090
  store i32 %1237, ptr %1238, align 4
  %1239 = getelementptr %struct.ZSTD_match_t, ptr %0, i32 %1090, i32 1
  store i32 %1225, ptr %1239, align 4
  %1240 = add i32 %1090, 1
  %1241 = icmp ugt i32 %1225, 4096
  %1242 = getelementptr i8, ptr %3, i32 %1225
  %1243 = icmp eq ptr %1242, %4
  %1244 = or i1 %1241, %1243
  br i1 %1244, label %1265, label %1245

1245:                                             ; preds = %1231, %1223
  %1246 = phi i32 [ %1236, %1231 ], [ %1091, %1223 ]
  %1247 = phi i32 [ %1240, %1231 ], [ %1090, %1223 ]
  %1248 = phi i32 [ %1225, %1231 ], [ %1088, %1223 ]
  %1249 = icmp ugt i32 %1087, %134
  br i1 %1249, label %1250, label %1265

1250:                                             ; preds = %1245
  %1251 = getelementptr i8, ptr %1229, i32 %1225
  %1252 = load i8, ptr %1251, align 1
  %1253 = getelementptr i8, ptr %3, i32 %1225
  %1254 = load i8, ptr %1253, align 1
  %1255 = icmp ult i8 %1252, %1254
  %1256 = select i1 %1255, i32 %1225, i32 %1093
  %1257 = select i1 %1255, i32 %1092, i32 %1225
  %1258 = zext i1 %1255 to i32
  %1259 = getelementptr i32, ptr %1096, i32 %1258
  %1260 = add i32 %1089, -1
  %1261 = load i32, ptr %1259, align 4
  %1262 = icmp ne i32 %1260, 0
  %1263 = icmp ugt i32 %1261, %128
  %1264 = select i1 %1262, i1 %1263, i1 false
  br i1 %1264, label %1086, label %1265

1265:                                             ; preds = %1250, %1245, %1231, %1072, %1029
  %1266 = phi i32 [ %1032, %1029 ], [ %1032, %1072 ], [ %1246, %1250 ], [ %1236, %1231 ], [ %1246, %1245 ]
  %1267 = phi i32 [ %1033, %1029 ], [ %1033, %1072 ], [ %1247, %1250 ], [ %1240, %1231 ], [ %1247, %1245 ]
  %1268 = add i32 %1266, -8
  br label %1269

1269:                                             ; preds = %1265, %763
  %1270 = phi i32 [ %764, %763 ], [ %1268, %1265 ]
  %1271 = phi i32 [ 1, %763 ], [ %1267, %1265 ]
  %1272 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %1, i32 0, i32 2
  store i32 %1270, ptr %1272, align 4
  br label %1273

1273:                                             ; preds = %1269, %521
  %1274 = phi i32 [ %1271, %1269 ], [ %525, %521 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11)
  ret i32 %1274
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ZSTD_resetSeqStore(ptr noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

attributes #0 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }

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
!9 = !{!"auto-init"}
!10 = !{!11}
!11 = distinct !{!11, !12, !"ZSTD_updateRep: argument 0"}
!12 = distinct !{!12, !"ZSTD_updateRep"}
!13 = !{!14}
!14 = distinct !{!14, !15, !"ZSTD_updateRep: argument 0"}
!15 = distinct !{!15, !"ZSTD_updateRep"}
