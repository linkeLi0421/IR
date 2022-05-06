; ModuleID = '/llk/IR/drivers/media/test-drivers/vivid/vivid-vbi-gen.c_pt.bc'
source_filename = "../drivers/media/test-drivers/vivid/vivid-vbi-gen.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.timezone = type { i32, i32 }
%struct.v4l2_vbi_format = type { i32, i32, i32, i32, [2 x i32], [2 x i32], i32, [2 x i32] }
%struct.v4l2_sliced_vbi_data = type { i32, i32, i32, i32, [48 x i8] }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vivid_vbi_gen_data = type { [25 x %struct.v4l2_sliced_vbi_data], [16 x i8] }

@vivid_cc_sequence2 = internal unnamed_addr constant [30 x i8] c"\14 Closed captions test\14/\00\00\00\00\00\00", align 1
@__const.vivid_vbi_gen_cc_raw.cc = private unnamed_addr constant <{ [20 x i8], [32 x i8] }> <{ [20 x i8] c"\00\01\00\01\00\01\00\01\00\01\00\01\00\01\00\00\00\00\01\01", [32 x i8] zeroinitializer }>, align 1
@hamming = internal unnamed_addr constant [16 x i8] c"\15\02I^ds8/\D0\C7\8C\9B\A1\B6\FD\EA", align 1
@.str = private unnamed_addr constant [18 x i8] c"Page: 100 Row: 10\00", align 1
@vivid_cc_sequence1 = internal unnamed_addr constant <{ [16 x i8], [14 x i8] }> <{ [16 x i8] c"\14 Hello world!\14/", [14 x i8] zeroinitializer }>, align 1
@sys_tz = external dso_local local_unnamed_addr global %struct.timezone, align 4

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vivid_vbi_gen_raw(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = alloca [45 x i8], align 1
  %5 = alloca [137 x i8], align 1
  %6 = alloca [52 x i8], align 1
  %7 = getelementptr inbounds %struct.v4l2_vbi_format, ptr %1, i32 0, i32 6
  %8 = getelementptr inbounds %struct.v4l2_vbi_format, ptr %1, i32 0, i32 2
  %9 = getelementptr inbounds %struct.v4l2_vbi_format, ptr %1, i32 0, i32 5
  %10 = getelementptr inbounds <{ i8, i8, i8, [42 x i8] }>, ptr %4, i32 0, i32 1
  %11 = getelementptr inbounds <{ i8, i8, i8, [42 x i8] }>, ptr %4, i32 0, i32 2
  %12 = getelementptr inbounds i8, ptr %4, i32 3
  %13 = getelementptr inbounds i8, ptr %5, i32 29
  %14 = getelementptr inbounds i8, ptr %5, i32 30
  %15 = getelementptr inbounds i8, ptr %5, i32 31
  %16 = getelementptr inbounds i8, ptr %5, i32 32
  %17 = getelementptr inbounds i8, ptr %5, i32 36
  %18 = getelementptr inbounds i8, ptr %5, i32 37
  %19 = getelementptr inbounds i8, ptr %5, i32 38
  %20 = getelementptr inbounds i8, ptr %5, i32 39
  %21 = getelementptr inbounds i8, ptr %5, i32 43
  %22 = getelementptr inbounds i8, ptr %5, i32 48
  %23 = getelementptr inbounds i8, ptr %6, i32 20
  %24 = getelementptr inbounds i8, ptr %6, i32 21
  %25 = getelementptr inbounds i8, ptr %6, i32 23
  %26 = getelementptr inbounds i8, ptr %6, i32 22
  %27 = getelementptr inbounds i8, ptr %6, i32 25
  %28 = getelementptr inbounds i8, ptr %6, i32 24
  %29 = getelementptr inbounds i8, ptr %6, i32 27
  %30 = getelementptr inbounds i8, ptr %6, i32 26
  %31 = getelementptr inbounds i8, ptr %6, i32 29
  %32 = getelementptr inbounds i8, ptr %6, i32 28
  %33 = getelementptr inbounds i8, ptr %6, i32 31
  %34 = getelementptr inbounds i8, ptr %6, i32 30
  %35 = getelementptr inbounds i8, ptr %6, i32 33
  %36 = getelementptr inbounds i8, ptr %6, i32 32
  %37 = getelementptr inbounds i8, ptr %6, i32 35
  %38 = getelementptr inbounds i8, ptr %6, i32 34
  %39 = getelementptr inbounds i8, ptr %6, i32 36
  %40 = getelementptr inbounds i8, ptr %6, i32 37
  %41 = getelementptr inbounds i8, ptr %6, i32 39
  %42 = getelementptr inbounds i8, ptr %6, i32 38
  %43 = getelementptr inbounds i8, ptr %6, i32 41
  %44 = getelementptr inbounds i8, ptr %6, i32 40
  %45 = getelementptr inbounds i8, ptr %6, i32 43
  %46 = getelementptr inbounds i8, ptr %6, i32 42
  %47 = getelementptr inbounds i8, ptr %6, i32 45
  %48 = getelementptr inbounds i8, ptr %6, i32 44
  %49 = getelementptr inbounds i8, ptr %6, i32 47
  %50 = getelementptr inbounds i8, ptr %6, i32 46
  %51 = getelementptr inbounds i8, ptr %6, i32 49
  %52 = getelementptr inbounds i8, ptr %6, i32 48
  %53 = getelementptr inbounds i8, ptr %6, i32 51
  %54 = getelementptr inbounds i8, ptr %6, i32 50
  br label %55

55:                                               ; preds = %292, %3
  %56 = phi i32 [ 0, %3 ], [ %293, %292 ]
  %57 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %0, i32 %56
  %58 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %0, i32 %56, i32 2
  %59 = load i32, ptr %58, align 4
  %60 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %0, i32 %56, i32 1
  %61 = load i32, ptr %60, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %69, label %63

63:                                               ; preds = %55
  %64 = load i32, ptr %57, align 4
  %65 = and i32 %64, 4096
  %66 = icmp eq i32 %65, 0
  %67 = select i1 %66, i32 313, i32 263
  %68 = add i32 %67, %59
  br label %69

69:                                               ; preds = %63, %55
  %70 = phi i32 [ %68, %63 ], [ %59, %55 ]
  %71 = getelementptr %struct.v4l2_vbi_format, ptr %1, i32 0, i32 4, i32 %61
  %72 = load i32, ptr %71, align 4
  %73 = sub i32 %70, %72
  %74 = load i32, ptr %7, align 4
  %75 = and i32 %74, 2
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %69
  %78 = shl i32 %73, 1
  %79 = add i32 %78, %61
  %80 = load i32, ptr %8, align 4
  br label %86

81:                                               ; preds = %69
  %82 = load i32, ptr %9, align 4
  %83 = mul i32 %82, %61
  %84 = add i32 %83, %73
  %85 = load i32, ptr %8, align 4
  br label %86

86:                                               ; preds = %81, %77
  %87 = phi i32 [ %85, %81 ], [ %79, %77 ]
  %88 = phi i32 [ %84, %81 ], [ %80, %77 ]
  %89 = mul i32 %88, %87
  %90 = getelementptr i8, ptr %2, i32 %89
  %91 = load i32, ptr %57, align 4
  switch i32 %91, label %292 [
    i32 4096, label %92
    i32 16384, label %182
    i32 1, label %259
  ]

92:                                               ; preds = %86
  %93 = load i32, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %6) #7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(52) %6, ptr noundef nonnull align 1 dereferenceable(52) @__const.vivid_vbi_gen_cc_raw.cc, i32 20, i1 false) #7
  %94 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %0, i32 %56, i32 4
  %95 = load i8, ptr %94, align 4
  %96 = zext i8 %95 to i32
  %97 = and i32 %96, 1
  %98 = trunc i32 %97 to i8
  store i8 %98, ptr %24, align 1
  store i8 %98, ptr %23, align 1
  %99 = lshr i32 %96, 1
  %100 = trunc i32 %99 to i8
  %101 = and i8 %100, 1
  store i8 %101, ptr %25, align 1
  store i8 %101, ptr %26, align 1
  %102 = lshr i32 %96, 2
  %103 = trunc i32 %102 to i8
  %104 = and i8 %103, 1
  store i8 %104, ptr %27, align 1
  store i8 %104, ptr %28, align 1
  %105 = lshr i32 %96, 3
  %106 = trunc i32 %105 to i8
  %107 = and i8 %106, 1
  store i8 %107, ptr %29, align 1
  store i8 %107, ptr %30, align 1
  %108 = lshr i32 %96, 4
  %109 = trunc i32 %108 to i8
  %110 = and i8 %109, 1
  store i8 %110, ptr %31, align 1
  store i8 %110, ptr %32, align 1
  %111 = lshr i32 %96, 5
  %112 = trunc i32 %111 to i8
  %113 = and i8 %112, 1
  store i8 %113, ptr %33, align 1
  store i8 %113, ptr %34, align 1
  %114 = lshr i32 %96, 6
  %115 = trunc i32 %114 to i8
  %116 = and i8 %115, 1
  store i8 %116, ptr %35, align 1
  store i8 %116, ptr %36, align 1
  %117 = add nuw nsw i32 %108, %97
  %118 = add nuw nsw i32 %117, %111
  %119 = add nuw nsw i32 %118, %114
  %120 = add nuw nsw i32 %119, %99
  %121 = add nuw nsw i32 %120, %102
  %122 = add nuw nsw i32 %121, %105
  %123 = trunc i32 %122 to i8
  %124 = and i8 %123, 1
  %125 = xor i8 %124, 1
  store i8 %125, ptr %37, align 1
  store i8 %125, ptr %38, align 1
  %126 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %0, i32 %56, i32 4, i32 1
  %127 = load i8, ptr %126, align 1
  %128 = zext i8 %127 to i32
  %129 = and i32 %128, 1
  %130 = trunc i32 %129 to i8
  store i8 %130, ptr %40, align 1
  store i8 %130, ptr %39, align 1
  %131 = lshr i32 %128, 1
  %132 = trunc i32 %131 to i8
  %133 = and i8 %132, 1
  store i8 %133, ptr %41, align 1
  store i8 %133, ptr %42, align 1
  %134 = lshr i32 %128, 2
  %135 = trunc i32 %134 to i8
  %136 = and i8 %135, 1
  store i8 %136, ptr %43, align 1
  store i8 %136, ptr %44, align 1
  %137 = lshr i32 %128, 3
  %138 = trunc i32 %137 to i8
  %139 = and i8 %138, 1
  store i8 %139, ptr %45, align 1
  store i8 %139, ptr %46, align 1
  %140 = lshr i32 %128, 4
  %141 = trunc i32 %140 to i8
  %142 = and i8 %141, 1
  store i8 %142, ptr %47, align 1
  store i8 %142, ptr %48, align 1
  %143 = lshr i32 %128, 5
  %144 = trunc i32 %143 to i8
  %145 = and i8 %144, 1
  store i8 %145, ptr %49, align 1
  store i8 %145, ptr %50, align 1
  %146 = lshr i32 %128, 6
  %147 = trunc i32 %146 to i8
  %148 = and i8 %147, 1
  store i8 %148, ptr %51, align 1
  store i8 %148, ptr %52, align 1
  %149 = add nuw nsw i32 %140, %129
  %150 = add nuw nsw i32 %149, %143
  %151 = add nuw nsw i32 %150, %146
  %152 = add nuw nsw i32 %151, %131
  %153 = add nuw nsw i32 %152, %134
  %154 = add nuw nsw i32 %153, %137
  %155 = trunc i32 %154 to i8
  %156 = and i8 %155, 1
  %157 = xor i8 %156, 1
  store i8 %157, ptr %53, align 1
  store i8 %157, ptr %54, align 1
  br label %162

158:                                              ; preds = %170, %162
  %159 = phi i32 [ %164, %162 ], [ %174, %170 ]
  %160 = add i32 %163, %93
  %161 = icmp eq i32 %166, 52
  br i1 %161, label %181, label %162

162:                                              ; preds = %158, %92
  %163 = phi i32 [ %93, %92 ], [ %160, %158 ]
  %164 = phi i32 [ 0, %92 ], [ %159, %158 ]
  %165 = phi i32 [ 0, %92 ], [ %166, %158 ]
  %166 = add nuw nsw i32 %165, 1
  %167 = mul i32 %166, %93
  %168 = udiv i32 %167, 1000000
  %169 = icmp ult i32 %164, %168
  br i1 %169, label %170, label %158

170:                                              ; preds = %162
  %171 = mul i32 %165, %93
  %172 = add i32 %171, %93
  %173 = udiv i32 %172, 1000000
  %174 = udiv i32 %163, 1000000
  %175 = getelementptr [52 x i8], ptr %6, i32 0, i32 %165
  %176 = load i8, ptr %175, align 1
  %177 = icmp eq i8 %176, 0
  %178 = select i1 %177, i8 16, i8 -64
  %179 = getelementptr i8, ptr %90, i32 %164
  %180 = sub i32 %173, %164
  tail call void @llvm.memset.p0.i32(ptr align 1 %179, i8 %178, i32 %180, i1 false) #7
  br label %158

181:                                              ; preds = %158
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %6) #7
  br label %292

182:                                              ; preds = %86
  %183 = load i32, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 137, ptr nonnull %5) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(137) %5, i8 0, i32 137, i1 false) #7
  br label %184

184:                                              ; preds = %184, %182
  %185 = phi i32 [ %187, %184 ], [ 29, %182 ]
  %186 = phi ptr [ %192, %184 ], [ %5, %182 ]
  %187 = add nsw i32 %185, -1
  %188 = shl nuw i32 1, %187
  %189 = and i32 %188, 521957831
  %190 = icmp eq i32 %189, 0
  %191 = select i1 %190, i8 16, i8 -64
  %192 = getelementptr i8, ptr %186, i32 1
  store i8 %191, ptr %186, align 1
  %193 = icmp eq i32 %187, 0
  br i1 %193, label %194, label %184

194:                                              ; preds = %184
  store i8 16, ptr %13, align 1
  store i8 16, ptr %14, align 1
  store i8 16, ptr %15, align 1
  store i32 -1061109568, ptr %16, align 1
  store i8 16, ptr %17, align 1
  store i8 16, ptr %18, align 1
  store i8 16, ptr %19, align 1
  store i32 -1061109568, ptr %20, align 1
  call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(5) %21, i8 16, i64 5, i1 false) #7
  %195 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %0, i32 %56, i32 4
  %196 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %0, i32 %56, i32 4, i32 1
  call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(5) %22, i8 -64, i64 5, i1 false) #7
  %197 = load i8, ptr %196, align 1
  %198 = zext i8 %197 to i32
  %199 = shl nuw nsw i32 %198, 8
  %200 = load i8, ptr %195, align 4
  %201 = zext i8 %200 to i32
  %202 = or i32 %199, %201
  br label %203

203:                                              ; preds = %203, %194
  %204 = phi i32 [ 0, %194 ], [ %234, %203 ]
  %205 = phi i32 [ 53, %194 ], [ %235, %203 ]
  %206 = getelementptr i8, ptr %5, i32 %205
  %207 = shl nuw nsw i32 1, %204
  %208 = and i32 %207, %202
  %209 = icmp eq i32 %208, 0
  %210 = select i1 %209, i32 7, i32 56
  %211 = and i32 %210, 32
  %212 = icmp eq i32 %211, 0
  %213 = select i1 %212, i8 16, i8 -64
  %214 = getelementptr i8, ptr %206, i32 1
  store i8 %213, ptr %206, align 1
  %215 = and i32 %210, 16
  %216 = icmp eq i32 %215, 0
  %217 = select i1 %216, i8 16, i8 -64
  %218 = getelementptr i8, ptr %214, i32 1
  store i8 %217, ptr %214, align 1
  %219 = and i32 %210, 8
  %220 = icmp eq i32 %219, 0
  %221 = select i1 %220, i8 16, i8 -64
  %222 = getelementptr i8, ptr %218, i32 1
  store i8 %221, ptr %218, align 1
  %223 = and i32 %210, 4
  %224 = icmp eq i32 %223, 0
  %225 = select i1 %224, i8 16, i8 -64
  %226 = getelementptr i8, ptr %222, i32 1
  store i8 %225, ptr %222, align 1
  %227 = and i32 %210, 2
  %228 = icmp eq i32 %227, 0
  %229 = select i1 %228, i8 16, i8 -64
  %230 = getelementptr i8, ptr %226, i32 1
  store i8 %229, ptr %226, align 1
  %231 = and i32 %210, 1
  %232 = icmp eq i32 %231, 0
  %233 = select i1 %232, i8 16, i8 -64
  store i8 %233, ptr %230, align 1
  %234 = add nuw nsw i32 %204, 1
  %235 = add nuw nsw i32 %205, 6
  %236 = icmp eq i32 %234, 14
  br i1 %236, label %241, label %203

237:                                              ; preds = %249, %241
  %238 = phi i32 [ %243, %241 ], [ %253, %249 ]
  %239 = add i32 %242, %183
  %240 = icmp eq i32 %245, 137
  br i1 %240, label %258, label %241

241:                                              ; preds = %237, %203
  %242 = phi i32 [ %239, %237 ], [ %183, %203 ]
  %243 = phi i32 [ %238, %237 ], [ 0, %203 ]
  %244 = phi i32 [ %245, %237 ], [ 0, %203 ]
  %245 = add nuw nsw i32 %244, 1
  %246 = mul i32 %245, %183
  %247 = udiv i32 %246, 5000000
  %248 = icmp ult i32 %243, %247
  br i1 %248, label %249, label %237

249:                                              ; preds = %241
  %250 = mul i32 %244, %183
  %251 = add i32 %250, %183
  %252 = udiv i32 %251, 5000000
  %253 = udiv i32 %242, 5000000
  %254 = getelementptr [137 x i8], ptr %5, i32 0, i32 %244
  %255 = load i8, ptr %254, align 1
  %256 = getelementptr i8, ptr %90, i32 %243
  %257 = sub i32 %252, %243
  tail call void @llvm.memset.p0.i32(ptr align 1 %256, i8 %255, i32 %257, i1 false) #7
  br label %237

258:                                              ; preds = %237
  call void @llvm.lifetime.end.p0(i64 137, ptr nonnull %5) #7
  br label %292

259:                                              ; preds = %86
  %260 = load i32, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 45, ptr nonnull %4) #7
  store i8 85, ptr %4, align 1
  store i8 85, ptr %10, align 1
  store i8 39, ptr %11, align 1
  %261 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %0, i32 %56, i32 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(42) %12, ptr noundef align 4 dereferenceable(42) %261, i32 42, i1 false) #7
  %262 = udiv i32 %260, 10
  br label %267

263:                                              ; preds = %275, %267
  %264 = phi i32 [ %269, %267 ], [ %288, %275 ]
  %265 = add i32 %268, %262
  %266 = icmp eq i32 %271, 360
  br i1 %266, label %291, label %267

267:                                              ; preds = %263, %259
  %268 = phi i32 [ %262, %259 ], [ %265, %263 ]
  %269 = phi i32 [ 0, %259 ], [ %264, %263 ]
  %270 = phi i32 [ 0, %259 ], [ %271, %263 ]
  %271 = add nuw nsw i32 %270, 1
  %272 = mul i32 %271, %262
  %273 = udiv i32 %272, 693750
  %274 = icmp ult i32 %269, %273
  br i1 %274, label %275, label %263

275:                                              ; preds = %267
  %276 = and i32 %270, 7
  %277 = shl nuw nsw i32 1, %276
  %278 = lshr i32 %270, 3
  %279 = getelementptr [45 x i8], ptr %4, i32 0, i32 %278
  %280 = load i8, ptr %279, align 1
  %281 = zext i8 %280 to i32
  %282 = and i32 %277, %281
  %283 = icmp eq i32 %282, 0
  %284 = select i1 %283, i8 16, i8 -64
  %285 = mul i32 %270, %262
  %286 = add i32 %285, %262
  %287 = udiv i32 %286, 693750
  %288 = udiv i32 %268, 693750
  %289 = getelementptr i8, ptr %90, i32 %269
  %290 = sub i32 %287, %269
  tail call void @llvm.memset.p0.i32(ptr align 1 %289, i8 %284, i32 %290, i1 false) #7
  br label %263

291:                                              ; preds = %263
  call void @llvm.lifetime.end.p0(i64 45, ptr nonnull %4) #7
  br label %292

292:                                              ; preds = %291, %258, %181, %86
  %293 = add nuw nsw i32 %56, 1
  %294 = icmp eq i32 %293, 25
  br i1 %294, label %295, label %55

295:                                              ; preds = %292
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vivid_vbi_gen_sliced(ptr nocapture noundef %0, i1 noundef zeroext %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = alloca %struct.tm, align 4
  %5 = urem i32 %2, 60
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(1600) %0, i8 0, i32 1600, i1 false)
  br i1 %1, label %93, label %6

6:                                                ; preds = %3
  store i32 1, ptr %0, align 4
  %7 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, ptr %0, i32 0, i32 2
  store i32 7, ptr %7, align 4
  %8 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, ptr %0, i32 0, i32 4
  tail call fastcc void @vivid_vbi_gen_teletext(ptr noundef %8, i32 noundef 0, i32 noundef %5)
  %9 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %0, i32 1
  store i32 1, ptr %9, align 4
  %10 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %0, i32 1, i32 2
  store i32 8, ptr %10, align 4
  %11 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %0, i32 1, i32 4
  tail call fastcc void @vivid_vbi_gen_teletext(ptr noundef %11, i32 noundef 1, i32 noundef %5)
  %12 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %0, i32 2
  store i32 1, ptr %12, align 4
  %13 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %0, i32 2, i32 2
  store i32 9, ptr %13, align 4
  %14 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %0, i32 2, i32 4
  tail call fastcc void @vivid_vbi_gen_teletext(ptr noundef %14, i32 noundef 2, i32 noundef %5)
  %15 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %0, i32 3
  store i32 1, ptr %15, align 4
  %16 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %0, i32 3, i32 2
  store i32 10, ptr %16, align 4
  %17 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %0, i32 3, i32 4
  tail call fastcc void @vivid_vbi_gen_teletext(ptr noundef %17, i32 noundef 3, i32 noundef %5)
  %18 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %0, i32 4
  store i32 1, ptr %18, align 4
  %19 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %0, i32 4, i32 2
  store i32 11, ptr %19, align 4
  %20 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %0, i32 4, i32 4
  tail call fastcc void @vivid_vbi_gen_teletext(ptr noundef %20, i32 noundef 4, i32 noundef %5)
  %21 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %0, i32 5
  store i32 1, ptr %21, align 4
  %22 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %0, i32 5, i32 2
  store i32 12, ptr %22, align 4
  %23 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %0, i32 5, i32 4
  tail call fastcc void @vivid_vbi_gen_teletext(ptr noundef %23, i32 noundef 5, i32 noundef %5)
  %24 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %0, i32 6
  store i32 1, ptr %24, align 4
  %25 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %0, i32 6, i32 2
  store i32 13, ptr %25, align 4
  %26 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %0, i32 6, i32 4
  tail call fastcc void @vivid_vbi_gen_teletext(ptr noundef %26, i32 noundef 6, i32 noundef %5)
  %27 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %0, i32 7
  store i32 1, ptr %27, align 4
  %28 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %0, i32 7, i32 2
  store i32 14, ptr %28, align 4
  %29 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %0, i32 7, i32 4
  tail call fastcc void @vivid_vbi_gen_teletext(ptr noundef %29, i32 noundef 7, i32 noundef %5)
  %30 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %0, i32 8
  store i32 1, ptr %30, align 4
  %31 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %0, i32 8, i32 2
  store i32 15, ptr %31, align 4
  %32 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %0, i32 8, i32 4
  tail call fastcc void @vivid_vbi_gen_teletext(ptr noundef %32, i32 noundef 8, i32 noundef %5)
  %33 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %0, i32 9
  store i32 1, ptr %33, align 4
  %34 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %0, i32 9, i32 2
  store i32 16, ptr %34, align 4
  %35 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %0, i32 9, i32 4
  tail call fastcc void @vivid_vbi_gen_teletext(ptr noundef %35, i32 noundef 9, i32 noundef %5)
  %36 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %0, i32 10
  store i32 1, ptr %36, align 4
  %37 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %0, i32 10, i32 2
  store i32 17, ptr %37, align 4
  %38 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %0, i32 10, i32 4
  tail call fastcc void @vivid_vbi_gen_teletext(ptr noundef %38, i32 noundef 10, i32 noundef %5)
  %39 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %0, i32 11
  store i32 1, ptr %39, align 4
  %40 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %0, i32 11, i32 2
  store i32 18, ptr %40, align 4
  %41 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %0, i32 11, i32 4
  tail call fastcc void @vivid_vbi_gen_teletext(ptr noundef %41, i32 noundef 11, i32 noundef %5)
  %42 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %0, i32 12
  store i32 16384, ptr %42, align 4
  %43 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %0, i32 12, i32 2
  store i32 23, ptr %43, align 4
  %44 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %0, i32 12, i32 4
  store i8 8, ptr %44, align 4
  %45 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %0, i32 13
  store i32 1, ptr %45, align 4
  %46 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %0, i32 13, i32 1
  store i32 1, ptr %46, align 4
  %47 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %0, i32 13, i32 2
  store i32 7, ptr %47, align 4
  %48 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %0, i32 13, i32 4
  tail call fastcc void @vivid_vbi_gen_teletext(ptr noundef %48, i32 noundef 12, i32 noundef %5)
  %49 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %0, i32 14
  store i32 1, ptr %49, align 4
  %50 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %0, i32 14, i32 1
  store i32 1, ptr %50, align 4
  %51 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %0, i32 14, i32 2
  store i32 8, ptr %51, align 4
  %52 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %0, i32 14, i32 4
  tail call fastcc void @vivid_vbi_gen_teletext(ptr noundef %52, i32 noundef 13, i32 noundef %5)
  %53 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %0, i32 15
  store i32 1, ptr %53, align 4
  %54 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %0, i32 15, i32 1
  store i32 1, ptr %54, align 4
  %55 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %0, i32 15, i32 2
  store i32 9, ptr %55, align 4
  %56 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %0, i32 15, i32 4
  tail call fastcc void @vivid_vbi_gen_teletext(ptr noundef %56, i32 noundef 14, i32 noundef %5)
  %57 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %0, i32 16
  store i32 1, ptr %57, align 4
  %58 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %0, i32 16, i32 1
  store i32 1, ptr %58, align 4
  %59 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %0, i32 16, i32 2
  store i32 10, ptr %59, align 4
  %60 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %0, i32 16, i32 4
  tail call fastcc void @vivid_vbi_gen_teletext(ptr noundef %60, i32 noundef 15, i32 noundef %5)
  %61 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %0, i32 17
  store i32 1, ptr %61, align 4
  %62 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %0, i32 17, i32 1
  store i32 1, ptr %62, align 4
  %63 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %0, i32 17, i32 2
  store i32 11, ptr %63, align 4
  %64 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %0, i32 17, i32 4
  tail call fastcc void @vivid_vbi_gen_teletext(ptr noundef %64, i32 noundef 16, i32 noundef %5)
  %65 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %0, i32 18
  store i32 1, ptr %65, align 4
  %66 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %0, i32 18, i32 1
  store i32 1, ptr %66, align 4
  %67 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %0, i32 18, i32 2
  store i32 12, ptr %67, align 4
  %68 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %0, i32 18, i32 4
  tail call fastcc void @vivid_vbi_gen_teletext(ptr noundef %68, i32 noundef 17, i32 noundef %5)
  %69 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %0, i32 19
  store i32 1, ptr %69, align 4
  %70 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %0, i32 19, i32 1
  store i32 1, ptr %70, align 4
  %71 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %0, i32 19, i32 2
  store i32 13, ptr %71, align 4
  %72 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %0, i32 19, i32 4
  tail call fastcc void @vivid_vbi_gen_teletext(ptr noundef %72, i32 noundef 18, i32 noundef %5)
  %73 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %0, i32 20
  store i32 1, ptr %73, align 4
  %74 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %0, i32 20, i32 1
  store i32 1, ptr %74, align 4
  %75 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %0, i32 20, i32 2
  store i32 14, ptr %75, align 4
  %76 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %0, i32 20, i32 4
  tail call fastcc void @vivid_vbi_gen_teletext(ptr noundef %76, i32 noundef 19, i32 noundef %5)
  %77 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %0, i32 21
  store i32 1, ptr %77, align 4
  %78 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %0, i32 21, i32 1
  store i32 1, ptr %78, align 4
  %79 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %0, i32 21, i32 2
  store i32 15, ptr %79, align 4
  %80 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %0, i32 21, i32 4
  tail call fastcc void @vivid_vbi_gen_teletext(ptr noundef %80, i32 noundef 20, i32 noundef %5)
  %81 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %0, i32 22
  store i32 1, ptr %81, align 4
  %82 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %0, i32 22, i32 1
  store i32 1, ptr %82, align 4
  %83 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %0, i32 22, i32 2
  store i32 16, ptr %83, align 4
  %84 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %0, i32 22, i32 4
  tail call fastcc void @vivid_vbi_gen_teletext(ptr noundef %84, i32 noundef 21, i32 noundef %5)
  %85 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %0, i32 23
  store i32 1, ptr %85, align 4
  %86 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %0, i32 23, i32 1
  store i32 1, ptr %86, align 4
  %87 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %0, i32 23, i32 2
  store i32 17, ptr %87, align 4
  %88 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %0, i32 23, i32 4
  tail call fastcc void @vivid_vbi_gen_teletext(ptr noundef %88, i32 noundef 22, i32 noundef %5)
  %89 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %0, i32 24
  store i32 1, ptr %89, align 4
  %90 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %0, i32 24, i32 1
  store i32 1, ptr %90, align 4
  %91 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %0, i32 24, i32 2
  store i32 18, ptr %91, align 4
  %92 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %0, i32 24, i32 4
  tail call fastcc void @vivid_vbi_gen_teletext(ptr noundef %92, i32 noundef 23, i32 noundef %5)
  br label %387

93:                                               ; preds = %3
  %94 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %0, i32 1
  store i32 4096, ptr %0, align 4
  %95 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, ptr %0, i32 0, i32 2
  store i32 21, ptr %95, align 4
  store i32 4096, ptr %94, align 4
  %96 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %0, i32 1, i32 1
  store i32 1, ptr %96, align 4
  %97 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %0, i32 1, i32 2
  store i32 21, ptr %97, align 4
  %98 = icmp ult i32 %5, 15
  br i1 %98, label %99, label %139

99:                                               ; preds = %93
  %100 = shl nuw nsw i32 %5, 1
  %101 = getelementptr [30 x i8], ptr @vivid_cc_sequence1, i32 0, i32 %100
  %102 = load i8, ptr %101, align 1
  %103 = and i8 %102, 1
  %104 = lshr i8 %102, 1
  %105 = lshr i8 %102, 2
  %106 = lshr i8 %102, 3
  %107 = lshr i8 %102, 4
  %108 = lshr i8 %102, 5
  %109 = lshr i8 %102, 6
  %110 = add nuw nsw i8 %107, %103
  %111 = add nuw nsw i8 %110, %108
  %112 = add nuw nsw i8 %111, %109
  %113 = add nuw i8 %112, %104
  %114 = add nuw i8 %113, %105
  %115 = add nuw i8 %114, %106
  %116 = xor i8 %115, -1
  %117 = shl i8 %116, 7
  %118 = or i8 %117, %102
  %119 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, ptr %0, i32 0, i32 4
  store i8 %118, ptr %119, align 4
  %120 = or i32 %100, 1
  %121 = getelementptr [30 x i8], ptr @vivid_cc_sequence1, i32 0, i32 %120
  %122 = load i8, ptr %121, align 1
  %123 = and i8 %122, 1
  %124 = lshr i8 %122, 1
  %125 = lshr i8 %122, 2
  %126 = lshr i8 %122, 3
  %127 = lshr i8 %122, 4
  %128 = lshr i8 %122, 5
  %129 = lshr i8 %122, 6
  %130 = add nuw nsw i8 %127, %123
  %131 = add nuw nsw i8 %130, %128
  %132 = add nuw nsw i8 %131, %129
  %133 = add nuw i8 %132, %124
  %134 = add nuw i8 %133, %125
  %135 = add nuw i8 %134, %126
  %136 = xor i8 %135, -1
  %137 = shl i8 %136, 7
  %138 = or i8 %137, %122
  br label %185

139:                                              ; preds = %93
  %140 = add nsw i32 %5, -30
  %141 = icmp ult i32 %140, 15
  br i1 %141, label %142, label %183

142:                                              ; preds = %139
  %143 = shl nuw nsw i32 %5, 1
  %144 = add nsw i32 %143, -60
  %145 = getelementptr [30 x i8], ptr @vivid_cc_sequence2, i32 0, i32 %144
  %146 = load i8, ptr %145, align 1
  %147 = and i8 %146, 1
  %148 = lshr i8 %146, 1
  %149 = lshr i8 %146, 2
  %150 = lshr i8 %146, 3
  %151 = lshr i8 %146, 4
  %152 = lshr i8 %146, 5
  %153 = lshr i8 %146, 6
  %154 = add nuw nsw i8 %151, %147
  %155 = add nuw nsw i8 %154, %152
  %156 = add nuw nsw i8 %155, %153
  %157 = add nuw i8 %156, %148
  %158 = add nuw i8 %157, %149
  %159 = add nuw i8 %158, %150
  %160 = xor i8 %159, -1
  %161 = shl i8 %160, 7
  %162 = or i8 %161, %146
  %163 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, ptr %0, i32 0, i32 4
  store i8 %162, ptr %163, align 4
  %164 = add nsw i32 %143, -59
  %165 = getelementptr [30 x i8], ptr @vivid_cc_sequence2, i32 0, i32 %164
  %166 = load i8, ptr %165, align 1
  %167 = and i8 %166, 1
  %168 = lshr i8 %166, 1
  %169 = lshr i8 %166, 2
  %170 = lshr i8 %166, 3
  %171 = lshr i8 %166, 4
  %172 = lshr i8 %166, 5
  %173 = lshr i8 %166, 6
  %174 = add nuw nsw i8 %171, %167
  %175 = add nuw nsw i8 %174, %172
  %176 = add nuw nsw i8 %175, %173
  %177 = add nuw i8 %176, %168
  %178 = add nuw i8 %177, %169
  %179 = add nuw i8 %178, %170
  %180 = xor i8 %179, -1
  %181 = shl i8 %180, 7
  %182 = or i8 %181, %166
  br label %185

183:                                              ; preds = %139
  %184 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, ptr %0, i32 0, i32 4
  store i8 -128, ptr %184, align 4
  br label %185

185:                                              ; preds = %183, %142, %99
  %186 = phi i8 [ %182, %142 ], [ -128, %183 ], [ %138, %99 ]
  %187 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %0, i32 0, i32 4, i32 1
  store i8 %186, ptr %187, align 1
  %188 = urem i32 %2, 1800
  switch i32 %188, label %384 [
    i32 0, label %189
    i32 1, label %375
    i32 2, label %375
    i32 3, label %375
    i32 4, label %375
    i32 5, label %375
    i32 6, label %375
    i32 7, label %375
  ]

189:                                              ; preds = %185
  %190 = getelementptr inbounds %struct.vivid_vbi_gen_data, ptr %0, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %4, i8 0, i32 32, i1 false) #7, !annotation !8
  %191 = tail call i64 @ktime_get_real_seconds() #7
  call void @time64_to_tm(i64 noundef %191, i32 noundef 0, ptr noundef nonnull %4) #7
  store i8 7, ptr %190, align 1
  %192 = getelementptr %struct.vivid_vbi_gen_data, ptr %0, i32 0, i32 1, i32 1
  store i8 1, ptr %192, align 1
  %193 = getelementptr inbounds %struct.tm, ptr %4, i32 0, i32 1
  %194 = load i32, ptr %193, align 4
  %195 = trunc i32 %194 to i8
  %196 = lshr i8 %195, 1
  %197 = lshr i8 %195, 2
  %198 = lshr i8 %195, 3
  %199 = lshr i8 %195, 4
  %200 = lshr i8 %195, 5
  %201 = sub i8 %196, %195
  %202 = add i8 %201, %197
  %203 = add i8 %202, %198
  %204 = add nuw nsw i8 %199, %200
  %205 = sub i8 %203, %204
  %206 = shl i8 %205, 7
  %207 = or i8 %206, %195
  %208 = or i8 %207, 64
  %209 = getelementptr %struct.vivid_vbi_gen_data, ptr %0, i32 0, i32 1, i32 2
  store i8 %208, ptr %209, align 1
  %210 = getelementptr inbounds %struct.tm, ptr %4, i32 0, i32 2
  %211 = load i32, ptr %210, align 4
  %212 = trunc i32 %211 to i8
  %213 = lshr i8 %212, 1
  %214 = lshr i8 %212, 2
  %215 = lshr i8 %212, 3
  %216 = lshr i8 %212, 4
  %217 = lshr i8 %212, 5
  %218 = sub i8 %213, %212
  %219 = add i8 %218, %214
  %220 = add i8 %219, %215
  %221 = add nuw nsw i8 %216, %217
  %222 = sub i8 %220, %221
  %223 = shl i8 %222, 7
  %224 = or i8 %223, %212
  %225 = or i8 %224, 64
  %226 = getelementptr %struct.vivid_vbi_gen_data, ptr %0, i32 0, i32 1, i32 3
  store i8 %225, ptr %226, align 1
  %227 = getelementptr inbounds %struct.tm, ptr %4, i32 0, i32 3
  %228 = load i32, ptr %227, align 4
  %229 = trunc i32 %228 to i8
  %230 = lshr i8 %229, 1
  %231 = lshr i8 %229, 2
  %232 = lshr i8 %229, 3
  %233 = lshr i8 %229, 4
  %234 = lshr i8 %229, 5
  %235 = sub i8 %230, %229
  %236 = add i8 %235, %231
  %237 = add i8 %236, %232
  %238 = add nuw nsw i8 %233, %234
  %239 = sub i8 %237, %238
  %240 = shl i8 %239, 7
  %241 = or i8 %240, %229
  %242 = or i8 %241, 64
  %243 = getelementptr %struct.vivid_vbi_gen_data, ptr %0, i32 0, i32 1, i32 4
  store i8 %242, ptr %243, align 1
  %244 = icmp eq i32 %228, 1
  %245 = getelementptr inbounds %struct.tm, ptr %4, i32 0, i32 4
  %246 = load i32, ptr %245, align 4
  %247 = icmp eq i32 %246, 2
  %248 = select i1 %244, i1 %247, i1 false
  br i1 %248, label %249, label %255

249:                                              ; preds = %189
  %250 = load i32, ptr @sys_tz, align 4
  %251 = mul i32 %211, 60
  %252 = add i32 %251, %194
  %253 = icmp sgt i32 %250, %252
  br i1 %253, label %254, label %255

254:                                              ; preds = %249
  store i8 97, ptr %243, align 1
  br label %255

255:                                              ; preds = %254, %249, %189
  %256 = phi i8 [ 97, %254 ], [ %242, %249 ], [ %242, %189 ]
  %257 = trunc i32 %246 to i8
  %258 = add i8 %257, 1
  %259 = lshr i8 %258, 1
  %260 = xor i8 %257, -1
  %261 = lshr i8 %258, 2
  %262 = lshr i8 %258, 3
  %263 = lshr i8 %258, 4
  %264 = lshr i8 %258, 5
  %265 = add i8 %259, %260
  %266 = add i8 %265, %261
  %267 = add i8 %266, %262
  %268 = add nuw nsw i8 %263, %264
  %269 = sub i8 %267, %268
  %270 = shl i8 %269, 7
  %271 = or i8 %258, %270
  %272 = or i8 %271, 64
  %273 = getelementptr %struct.vivid_vbi_gen_data, ptr %0, i32 0, i32 1, i32 5
  store i8 %272, ptr %273, align 1
  %274 = getelementptr inbounds %struct.tm, ptr %4, i32 0, i32 6
  %275 = load i32, ptr %274, align 4
  %276 = trunc i32 %275 to i8
  %277 = add i8 %276, 1
  %278 = lshr i8 %277, 1
  %279 = xor i8 %276, -1
  %280 = lshr i8 %277, 2
  %281 = lshr i8 %277, 3
  %282 = lshr i8 %277, 4
  %283 = lshr i8 %277, 5
  %284 = add i8 %278, %279
  %285 = add i8 %284, %280
  %286 = add i8 %285, %281
  %287 = add nuw nsw i8 %282, %283
  %288 = sub i8 %286, %287
  %289 = shl i8 %288, 7
  %290 = or i8 %277, %289
  %291 = or i8 %290, 64
  %292 = getelementptr %struct.vivid_vbi_gen_data, ptr %0, i32 0, i32 1, i32 6
  store i8 %291, ptr %292, align 1
  %293 = getelementptr inbounds %struct.tm, ptr %4, i32 0, i32 5
  %294 = load i32, ptr %293, align 4
  %295 = trunc i32 %294 to i8
  %296 = add i8 %295, 38
  %297 = and i8 %296, 63
  %298 = or i8 %297, 64
  %299 = lshr i8 %296, 1
  %300 = lshr i8 %296, 2
  %301 = lshr i8 %296, 3
  %302 = lshr i8 %296, 4
  %303 = lshr i8 %296, 5
  %304 = sub i8 %299, %295
  %305 = add i8 %304, %300
  %306 = add i8 %305, %301
  %307 = add nuw nsw i8 %302, %303
  %308 = sub i8 %306, %307
  %309 = shl i8 %308, 7
  %310 = or i8 %309, %298
  %311 = getelementptr %struct.vivid_vbi_gen_data, ptr %0, i32 0, i32 1, i32 7
  store i8 %310, ptr %311, align 1
  %312 = getelementptr %struct.vivid_vbi_gen_data, ptr %0, i32 0, i32 1, i32 8
  store i8 -113, ptr %312, align 1
  %313 = and i8 %208, 127
  %314 = and i8 %225, 127
  %315 = and i8 %256, 127
  %316 = and i8 %272, 127
  %317 = and i8 %291, 127
  %318 = add nuw i8 %313, %314
  %319 = add nsw i8 %318, %316
  %320 = add i8 %319, %315
  %321 = add i8 %320, %298
  %322 = add i8 %321, %317
  %323 = sub i8 -23, %322
  %324 = and i8 %323, 1
  %325 = lshr i8 %323, 1
  %326 = lshr i8 %323, 2
  %327 = lshr i8 %323, 3
  %328 = lshr i8 %323, 4
  %329 = lshr i8 %323, 5
  %330 = lshr i8 %323, 6
  %331 = add nuw nsw i8 %328, %324
  %332 = add nuw nsw i8 %331, %329
  %333 = add nuw nsw i8 %332, %330
  %334 = add nuw i8 %333, %325
  %335 = add nuw i8 %334, %326
  %336 = add nuw i8 %335, %327
  %337 = xor i8 %336, -1
  %338 = shl i8 %337, 7
  %339 = or i8 %338, %323
  %340 = getelementptr %struct.vivid_vbi_gen_data, ptr %0, i32 0, i32 1, i32 9
  store i8 %339, ptr %340, align 1
  %341 = getelementptr %struct.vivid_vbi_gen_data, ptr %0, i32 0, i32 1, i32 10
  store i8 7, ptr %341, align 1
  %342 = getelementptr %struct.vivid_vbi_gen_data, ptr %0, i32 0, i32 1, i32 11
  store i8 4, ptr %342, align 1
  %343 = load i32, ptr @sys_tz, align 4
  %344 = icmp sgt i32 %343, -1
  br i1 %344, label %345, label %350

345:                                              ; preds = %255
  %346 = udiv i32 %343, 60
  %347 = trunc i32 %346 to i8
  %348 = lshr i8 %347, 1
  %349 = sub i8 %348, %347
  br label %357

350:                                              ; preds = %255
  %351 = sub i32 0, %343
  %352 = udiv i32 %351, 60
  %353 = trunc i32 %352 to i8
  %354 = sub i8 24, %353
  %355 = lshr i8 %354, 1
  %356 = add i8 %355, %353
  br label %357

357:                                              ; preds = %350, %345
  %358 = phi i8 [ %354, %350 ], [ %347, %345 ]
  %359 = phi i8 [ %356, %350 ], [ %349, %345 ]
  %360 = and i8 %358, 31
  %361 = or i8 %360, 64
  %362 = lshr i8 %358, 2
  %363 = add i8 %359, %362
  %364 = lshr i8 %358, 3
  %365 = add i8 %363, %364
  %366 = lshr i8 %358, 4
  %367 = sub i8 %365, %366
  %368 = shl i8 %367, 7
  %369 = or i8 %368, %361
  %370 = getelementptr %struct.vivid_vbi_gen_data, ptr %0, i32 0, i32 1, i32 12
  store i8 %369, ptr %370, align 1
  %371 = getelementptr %struct.vivid_vbi_gen_data, ptr %0, i32 0, i32 1, i32 13
  store i8 -128, ptr %371, align 1
  %372 = getelementptr %struct.vivid_vbi_gen_data, ptr %0, i32 0, i32 1, i32 14
  store i8 -113, ptr %372, align 1
  %373 = sub nuw nsw i8 -26, %361
  %374 = getelementptr %struct.vivid_vbi_gen_data, ptr %0, i32 0, i32 1, i32 15
  store i8 %373, ptr %374, align 1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #7
  br label %375

375:                                              ; preds = %357, %185, %185, %185, %185, %185, %185, %185
  %376 = shl nuw nsw i32 %188, 1
  %377 = getelementptr %struct.vivid_vbi_gen_data, ptr %0, i32 0, i32 1, i32 %376
  %378 = load i8, ptr %377, align 1
  %379 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %0, i32 1, i32 4
  store i8 %378, ptr %379, align 4
  %380 = or i32 %376, 1
  %381 = getelementptr %struct.vivid_vbi_gen_data, ptr %0, i32 0, i32 1, i32 %380
  %382 = load i8, ptr %381, align 1
  %383 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %0, i32 1, i32 4, i32 1
  store i8 %382, ptr %383, align 1
  br label %387

384:                                              ; preds = %185
  %385 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %0, i32 1, i32 4
  store i8 -128, ptr %385, align 4
  %386 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %0, i32 1, i32 4, i32 1
  store i8 -128, ptr %386, align 1
  br label %387

387:                                              ; preds = %384, %375, %6
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @vivid_vbi_gen_teletext(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #4 {
  %4 = shl i32 %1, 3
  %5 = and i32 %4, 8
  %6 = or i32 %5, 1
  %7 = getelementptr [16 x i8], ptr @hamming, i32 0, i32 %6
  %8 = load i8, ptr %7, align 1
  store i8 %8, ptr %0, align 1
  %9 = lshr i32 %1, 1
  %10 = getelementptr [16 x i8], ptr @hamming, i32 0, i32 %9
  %11 = load i8, ptr %10, align 1
  %12 = getelementptr i8, ptr %0, i32 1
  store i8 %11, ptr %12, align 1
  %13 = getelementptr i8, ptr %0, i32 2
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(40) %13, i8 32, i32 40, i1 false)
  %14 = icmp eq i32 %1, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = udiv i32 %2, 10
  %17 = urem i32 %2, 10
  br label %29

18:                                               ; preds = %3
  %19 = udiv i32 %2, 10
  %20 = mul i32 %19, 10
  %21 = sub i32 %2, %20
  %22 = getelementptr [16 x i8], ptr @hamming, i32 0, i32 %21
  %23 = load i8, ptr %22, align 1
  store i8 %23, ptr %13, align 1
  %24 = getelementptr [16 x i8], ptr @hamming, i32 0, i32 %19
  %25 = load i8, ptr %24, align 1
  %26 = getelementptr i8, ptr %0, i32 3
  store i8 %25, ptr %26, align 1
  %27 = getelementptr i8, ptr %0, i32 4
  %28 = getelementptr i8, ptr %0, i32 9
  call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(5) %27, i8 21, i64 5, i1 false)
  store i8 2, ptr %28, align 1
  br label %29

29:                                               ; preds = %18, %15
  %30 = phi i32 [ %17, %15 ], [ %21, %18 ]
  %31 = phi i32 [ %16, %15 ], [ %19, %18 ]
  %32 = phi i32 [ 2, %15 ], [ 10, %18 ]
  %33 = getelementptr i8, ptr %0, i32 %32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(17) %33, ptr noundef nonnull align 1 dereferenceable(17) @.str, i32 15, i1 false)
  %34 = trunc i32 %31 to i8
  %35 = add i8 %34, 48
  %36 = getelementptr i8, ptr %33, i32 7
  store i8 %35, ptr %36, align 1
  %37 = trunc i32 %30 to i8
  %38 = or i8 %37, 48
  %39 = getelementptr i8, ptr %33, i32 8
  store i8 %38, ptr %39, align 1
  %40 = udiv i32 %1, 10
  %41 = trunc i32 %40 to i8
  %42 = add i8 %41, 48
  %43 = getelementptr i8, ptr %33, i32 15
  store i8 %42, ptr %43, align 1
  %44 = mul i32 %40, 10
  %45 = sub i32 %1, %44
  %46 = trunc i32 %45 to i8
  %47 = or i8 %46, 48
  %48 = getelementptr i8, ptr %33, i32 16
  store i8 %47, ptr %48, align 1
  %49 = sub nuw nsw i32 42, %32
  store i8 -48, ptr %33, align 1
  br label %50

50:                                               ; preds = %50, %29
  %51 = phi i32 [ 1, %29 ], [ %71, %50 ]
  %52 = getelementptr i8, ptr %33, i32 %51
  %53 = load i8, ptr %52, align 1
  %54 = getelementptr i8, ptr %33, i32 %51
  %55 = and i8 %53, 1
  %56 = lshr i8 %53, 1
  %57 = lshr i8 %53, 2
  %58 = lshr i8 %53, 3
  %59 = lshr i8 %53, 4
  %60 = lshr i8 %53, 5
  %61 = lshr i8 %53, 6
  %62 = add nuw nsw i8 %59, %55
  %63 = add nuw nsw i8 %62, %60
  %64 = add nuw nsw i8 %63, %61
  %65 = add nuw i8 %64, %56
  %66 = add nuw i8 %65, %57
  %67 = add nuw i8 %66, %58
  %68 = xor i8 %67, -1
  %69 = shl i8 %68, 7
  %70 = or i8 %69, %53
  store i8 %70, ptr %54, align 1
  %71 = add nuw nsw i32 %51, 1
  %72 = icmp eq i32 %71, %49
  br i1 %72, label %73, label %50

73:                                               ; preds = %50
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @time64_to_tm(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

attributes #0 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!8 = !{!"auto-init"}
