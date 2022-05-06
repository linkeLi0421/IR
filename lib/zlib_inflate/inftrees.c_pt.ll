; ModuleID = '/llk/IR/lib/zlib_inflate/inftrees.c_pt.bc'
source_filename = "../lib/zlib_inflate/inftrees.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.code = type { i8, i8, i16 }

@zlib_inflate_table.lbase = internal unnamed_addr constant [31 x i16] [i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 13, i16 15, i16 17, i16 19, i16 23, i16 27, i16 31, i16 35, i16 43, i16 51, i16 59, i16 67, i16 83, i16 99, i16 115, i16 131, i16 163, i16 195, i16 227, i16 258, i16 0, i16 0], align 2
@zlib_inflate_table.lext = internal unnamed_addr constant [31 x i16] [i16 16, i16 16, i16 16, i16 16, i16 16, i16 16, i16 16, i16 16, i16 17, i16 17, i16 17, i16 17, i16 18, i16 18, i16 18, i16 18, i16 19, i16 19, i16 19, i16 19, i16 20, i16 20, i16 20, i16 20, i16 21, i16 21, i16 21, i16 21, i16 16, i16 201, i16 196], align 2
@zlib_inflate_table.dbase = internal unnamed_addr constant [32 x i16] [i16 1, i16 2, i16 3, i16 4, i16 5, i16 7, i16 9, i16 13, i16 17, i16 25, i16 33, i16 49, i16 65, i16 97, i16 129, i16 193, i16 257, i16 385, i16 513, i16 769, i16 1025, i16 1537, i16 2049, i16 3073, i16 4097, i16 6145, i16 8193, i16 12289, i16 16385, i16 24577, i16 0, i16 0], align 2
@zlib_inflate_table.dext = internal unnamed_addr constant [32 x i16] [i16 16, i16 16, i16 16, i16 16, i16 17, i16 17, i16 18, i16 18, i16 19, i16 19, i16 20, i16 20, i16 21, i16 21, i16 22, i16 22, i16 23, i16 23, i16 24, i16 24, i16 25, i16 25, i16 26, i16 26, i16 27, i16 27, i16 28, i16 28, i16 29, i16 29, i16 64, i16 64], align 2

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @zlib_inflate_table(i32 noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4, ptr nocapture noundef %5) local_unnamed_addr #0 {
  %7 = alloca [16 x i16], align 2
  %8 = alloca [16 x i16], align 2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #4
  store i16 0, ptr %8, align 2, !annotation !8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(32) %7, i8 0, i32 32, i1 false)
  %9 = icmp eq i32 %2, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = load i32, ptr %4, align 4
  br label %27

12:                                               ; preds = %12, %6
  %13 = phi i32 [ %20, %12 ], [ 0, %6 ]
  %14 = getelementptr i16, ptr %1, i32 %13
  %15 = load i16, ptr %14, align 2
  %16 = zext i16 %15 to i32
  %17 = getelementptr [16 x i16], ptr %7, i32 0, i32 %16
  %18 = load i16, ptr %17, align 2
  %19 = add i16 %18, 1
  store i16 %19, ptr %17, align 2
  %20 = add nuw i32 %13, 1
  %21 = icmp eq i32 %20, %2
  br i1 %21, label %22, label %12

22:                                               ; preds = %12
  %23 = getelementptr inbounds [16 x i16], ptr %7, i32 0, i32 15
  %24 = load i16, ptr %23, align 2
  %25 = load i32, ptr %4, align 4
  %26 = icmp eq i16 %24, 0
  br i1 %26, label %27, label %93

27:                                               ; preds = %22, %10
  %28 = phi i32 [ %11, %10 ], [ %25, %22 ]
  %29 = getelementptr inbounds [16 x i16], ptr %7, i32 0, i32 14
  %30 = load i16, ptr %29, align 2
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %32, label %93

32:                                               ; preds = %27
  %33 = getelementptr inbounds [16 x i16], ptr %7, i32 0, i32 13
  %34 = load i16, ptr %33, align 2
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %36, label %93

36:                                               ; preds = %32
  %37 = getelementptr inbounds [16 x i16], ptr %7, i32 0, i32 12
  %38 = load i16, ptr %37, align 2
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %40, label %93

40:                                               ; preds = %36
  %41 = getelementptr inbounds [16 x i16], ptr %7, i32 0, i32 11
  %42 = load i16, ptr %41, align 2
  %43 = icmp eq i16 %42, 0
  br i1 %43, label %44, label %93

44:                                               ; preds = %40
  %45 = getelementptr inbounds [16 x i16], ptr %7, i32 0, i32 10
  %46 = load i16, ptr %45, align 2
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %48, label %93

48:                                               ; preds = %44
  %49 = getelementptr inbounds [16 x i16], ptr %7, i32 0, i32 9
  %50 = load i16, ptr %49, align 2
  %51 = icmp eq i16 %50, 0
  br i1 %51, label %52, label %93

52:                                               ; preds = %48
  %53 = getelementptr inbounds [16 x i16], ptr %7, i32 0, i32 8
  %54 = load i16, ptr %53, align 2
  %55 = icmp eq i16 %54, 0
  br i1 %55, label %56, label %93

56:                                               ; preds = %52
  %57 = getelementptr inbounds [16 x i16], ptr %7, i32 0, i32 7
  %58 = load i16, ptr %57, align 2
  %59 = icmp eq i16 %58, 0
  br i1 %59, label %60, label %93

60:                                               ; preds = %56
  %61 = getelementptr inbounds [16 x i16], ptr %7, i32 0, i32 6
  %62 = load i16, ptr %61, align 2
  %63 = icmp eq i16 %62, 0
  br i1 %63, label %64, label %93

64:                                               ; preds = %60
  %65 = getelementptr inbounds [16 x i16], ptr %7, i32 0, i32 5
  %66 = load i16, ptr %65, align 2
  %67 = icmp eq i16 %66, 0
  br i1 %67, label %68, label %93

68:                                               ; preds = %64
  %69 = getelementptr inbounds [16 x i16], ptr %7, i32 0, i32 4
  %70 = load i16, ptr %69, align 2
  %71 = icmp eq i16 %70, 0
  br i1 %71, label %72, label %93

72:                                               ; preds = %68
  %73 = getelementptr inbounds [16 x i16], ptr %7, i32 0, i32 3
  %74 = load i16, ptr %73, align 2
  %75 = icmp eq i16 %74, 0
  br i1 %75, label %76, label %93

76:                                               ; preds = %72
  %77 = getelementptr inbounds [16 x i16], ptr %7, i32 0, i32 2
  %78 = load i16, ptr %77, align 2
  %79 = icmp eq i16 %78, 0
  br i1 %79, label %80, label %93

80:                                               ; preds = %76
  %81 = getelementptr inbounds [16 x i16], ptr %7, i32 0, i32 1
  %82 = load i16, ptr %81, align 2
  %83 = icmp eq i16 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %80
  %85 = load ptr, ptr %3, align 4
  %86 = getelementptr %struct.code, ptr %85, i32 1
  store ptr %86, ptr %3, align 4
  store i8 64, ptr %85, align 2
  %87 = getelementptr inbounds i8, ptr %85, i32 1
  store i8 1, ptr %87, align 1
  %88 = getelementptr inbounds i8, ptr %85, i32 2
  store i16 0, ptr %88, align 2
  %89 = load ptr, ptr %3, align 4
  %90 = getelementptr %struct.code, ptr %89, i32 1
  store ptr %90, ptr %3, align 4
  store i8 64, ptr %89, align 2
  %91 = getelementptr inbounds i8, ptr %89, i32 1
  store i8 1, ptr %91, align 1
  %92 = getelementptr inbounds i8, ptr %89, i32 2
  store i16 0, ptr %92, align 2
  br label %486

93:                                               ; preds = %80, %76, %72, %68, %64, %60, %56, %52, %48, %44, %40, %36, %32, %27, %22
  %94 = phi i32 [ %28, %80 ], [ %28, %76 ], [ %28, %72 ], [ %28, %68 ], [ %28, %64 ], [ %28, %60 ], [ %28, %56 ], [ %28, %52 ], [ %28, %48 ], [ %28, %44 ], [ %28, %40 ], [ %28, %36 ], [ %28, %32 ], [ %28, %27 ], [ %25, %22 ]
  %95 = phi i16 [ 0, %80 ], [ 0, %76 ], [ 0, %72 ], [ 0, %68 ], [ 0, %64 ], [ 0, %60 ], [ 0, %56 ], [ 0, %52 ], [ 0, %48 ], [ 0, %44 ], [ 0, %40 ], [ 0, %36 ], [ 0, %32 ], [ 0, %27 ], [ %24, %22 ]
  %96 = phi i1 [ false, %80 ], [ true, %76 ], [ true, %72 ], [ true, %68 ], [ true, %64 ], [ true, %60 ], [ true, %56 ], [ true, %52 ], [ true, %48 ], [ true, %44 ], [ true, %40 ], [ true, %36 ], [ true, %32 ], [ true, %27 ], [ true, %22 ]
  %97 = phi i32 [ 1, %80 ], [ 2, %76 ], [ 3, %72 ], [ 4, %68 ], [ 5, %64 ], [ 6, %60 ], [ 7, %56 ], [ 8, %52 ], [ 9, %48 ], [ 10, %44 ], [ 11, %40 ], [ 12, %36 ], [ 13, %32 ], [ 14, %27 ], [ 15, %22 ]
  %98 = tail call i32 @llvm.umin.i32(i32 %94, i32 %97)
  %99 = getelementptr inbounds [16 x i16], ptr %7, i32 0, i32 1
  %100 = load i16, ptr %99, align 2
  %101 = icmp eq i16 %100, 0
  br i1 %101, label %102, label %158

102:                                              ; preds = %93
  %103 = getelementptr inbounds [16 x i16], ptr %7, i32 0, i32 2
  %104 = load i16, ptr %103, align 2
  %105 = icmp eq i16 %104, 0
  br i1 %105, label %106, label %155

106:                                              ; preds = %102
  %107 = getelementptr inbounds [16 x i16], ptr %7, i32 0, i32 3
  %108 = load i16, ptr %107, align 2
  %109 = icmp eq i16 %108, 0
  br i1 %109, label %110, label %155

110:                                              ; preds = %106
  %111 = getelementptr inbounds [16 x i16], ptr %7, i32 0, i32 4
  %112 = load i16, ptr %111, align 2
  %113 = icmp eq i16 %112, 0
  br i1 %113, label %114, label %155

114:                                              ; preds = %110
  %115 = getelementptr inbounds [16 x i16], ptr %7, i32 0, i32 5
  %116 = load i16, ptr %115, align 2
  %117 = icmp eq i16 %116, 0
  br i1 %117, label %118, label %155

118:                                              ; preds = %114
  %119 = getelementptr inbounds [16 x i16], ptr %7, i32 0, i32 6
  %120 = load i16, ptr %119, align 2
  %121 = icmp eq i16 %120, 0
  br i1 %121, label %122, label %155

122:                                              ; preds = %118
  %123 = getelementptr inbounds [16 x i16], ptr %7, i32 0, i32 7
  %124 = load i16, ptr %123, align 2
  %125 = icmp eq i16 %124, 0
  br i1 %125, label %126, label %155

126:                                              ; preds = %122
  %127 = getelementptr inbounds [16 x i16], ptr %7, i32 0, i32 8
  %128 = load i16, ptr %127, align 2
  %129 = icmp eq i16 %128, 0
  br i1 %129, label %130, label %155

130:                                              ; preds = %126
  %131 = getelementptr inbounds [16 x i16], ptr %7, i32 0, i32 9
  %132 = load i16, ptr %131, align 2
  %133 = icmp eq i16 %132, 0
  br i1 %133, label %134, label %155

134:                                              ; preds = %130
  %135 = getelementptr inbounds [16 x i16], ptr %7, i32 0, i32 10
  %136 = load i16, ptr %135, align 2
  %137 = icmp eq i16 %136, 0
  br i1 %137, label %138, label %155

138:                                              ; preds = %134
  %139 = getelementptr inbounds [16 x i16], ptr %7, i32 0, i32 11
  %140 = load i16, ptr %139, align 2
  %141 = icmp eq i16 %140, 0
  br i1 %141, label %142, label %155

142:                                              ; preds = %138
  %143 = getelementptr inbounds [16 x i16], ptr %7, i32 0, i32 12
  %144 = load i16, ptr %143, align 2
  %145 = icmp eq i16 %144, 0
  br i1 %145, label %146, label %155

146:                                              ; preds = %142
  %147 = getelementptr inbounds [16 x i16], ptr %7, i32 0, i32 13
  %148 = load i16, ptr %147, align 2
  %149 = icmp eq i16 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %146
  %151 = getelementptr inbounds [16 x i16], ptr %7, i32 0, i32 14
  %152 = load i16, ptr %151, align 2
  %153 = icmp eq i16 %152, 0
  %154 = select i1 %153, i32 15, i32 14
  br label %155

155:                                              ; preds = %150, %146, %142, %138, %134, %130, %126, %122, %118, %114, %110, %106, %102
  %156 = phi i32 [ 13, %146 ], [ 12, %142 ], [ 11, %138 ], [ 10, %134 ], [ 9, %130 ], [ 8, %126 ], [ 7, %122 ], [ 6, %118 ], [ 5, %114 ], [ 4, %110 ], [ 3, %106 ], [ 2, %102 ], [ %154, %150 ]
  %157 = tail call i32 @llvm.umax.i32(i32 %98, i32 %156)
  br label %161

158:                                              ; preds = %93
  %159 = tail call i32 @llvm.umax.i32(i32 %98, i32 1)
  %160 = icmp ugt i16 %100, 2
  br i1 %160, label %488, label %161

161:                                              ; preds = %158, %155
  %162 = phi i32 [ %157, %155 ], [ %159, %158 ]
  %163 = phi i32 [ %156, %155 ], [ 1, %158 ]
  %164 = zext i16 %100 to i32
  %165 = mul nsw i32 %164, -2
  %166 = add nsw i32 %165, 4
  %167 = getelementptr inbounds [16 x i16], ptr %7, i32 0, i32 2
  %168 = load i16, ptr %167, align 2
  %169 = zext i16 %168 to i32
  %170 = sub nsw i32 %166, %169
  %171 = icmp slt i32 %170, 0
  br i1 %171, label %488, label %172

172:                                              ; preds = %161
  %173 = shl nuw nsw i32 %170, 1
  %174 = getelementptr inbounds [16 x i16], ptr %7, i32 0, i32 3
  %175 = load i16, ptr %174, align 2
  %176 = zext i16 %175 to i32
  %177 = sub nsw i32 %173, %176
  %178 = icmp slt i32 %177, 0
  br i1 %178, label %488, label %179

179:                                              ; preds = %172
  %180 = shl nuw nsw i32 %177, 1
  %181 = getelementptr inbounds [16 x i16], ptr %7, i32 0, i32 4
  %182 = load i16, ptr %181, align 2
  %183 = zext i16 %182 to i32
  %184 = sub nsw i32 %180, %183
  %185 = icmp slt i32 %184, 0
  br i1 %185, label %488, label %186

186:                                              ; preds = %179
  %187 = shl nuw nsw i32 %184, 1
  %188 = getelementptr inbounds [16 x i16], ptr %7, i32 0, i32 5
  %189 = load i16, ptr %188, align 2
  %190 = zext i16 %189 to i32
  %191 = sub nsw i32 %187, %190
  %192 = icmp slt i32 %191, 0
  br i1 %192, label %488, label %193

193:                                              ; preds = %186
  %194 = shl nuw nsw i32 %191, 1
  %195 = getelementptr inbounds [16 x i16], ptr %7, i32 0, i32 6
  %196 = load i16, ptr %195, align 2
  %197 = zext i16 %196 to i32
  %198 = sub nsw i32 %194, %197
  %199 = icmp slt i32 %198, 0
  br i1 %199, label %488, label %200

200:                                              ; preds = %193
  %201 = shl nuw nsw i32 %198, 1
  %202 = getelementptr inbounds [16 x i16], ptr %7, i32 0, i32 7
  %203 = load i16, ptr %202, align 2
  %204 = zext i16 %203 to i32
  %205 = sub nsw i32 %201, %204
  %206 = icmp slt i32 %205, 0
  br i1 %206, label %488, label %207

207:                                              ; preds = %200
  %208 = shl nuw nsw i32 %205, 1
  %209 = getelementptr inbounds [16 x i16], ptr %7, i32 0, i32 8
  %210 = load i16, ptr %209, align 2
  %211 = zext i16 %210 to i32
  %212 = sub nsw i32 %208, %211
  %213 = icmp slt i32 %212, 0
  br i1 %213, label %488, label %214

214:                                              ; preds = %207
  %215 = shl nuw nsw i32 %212, 1
  %216 = getelementptr inbounds [16 x i16], ptr %7, i32 0, i32 9
  %217 = load i16, ptr %216, align 2
  %218 = zext i16 %217 to i32
  %219 = sub nsw i32 %215, %218
  %220 = icmp slt i32 %219, 0
  br i1 %220, label %488, label %221

221:                                              ; preds = %214
  %222 = shl nuw nsw i32 %219, 1
  %223 = getelementptr inbounds [16 x i16], ptr %7, i32 0, i32 10
  %224 = load i16, ptr %223, align 2
  %225 = zext i16 %224 to i32
  %226 = sub nsw i32 %222, %225
  %227 = icmp slt i32 %226, 0
  br i1 %227, label %488, label %228

228:                                              ; preds = %221
  %229 = shl nuw nsw i32 %226, 1
  %230 = getelementptr inbounds [16 x i16], ptr %7, i32 0, i32 11
  %231 = load i16, ptr %230, align 2
  %232 = zext i16 %231 to i32
  %233 = sub nsw i32 %229, %232
  %234 = icmp slt i32 %233, 0
  br i1 %234, label %488, label %235

235:                                              ; preds = %228
  %236 = shl nuw nsw i32 %233, 1
  %237 = getelementptr inbounds [16 x i16], ptr %7, i32 0, i32 12
  %238 = load i16, ptr %237, align 2
  %239 = zext i16 %238 to i32
  %240 = sub nsw i32 %236, %239
  %241 = icmp slt i32 %240, 0
  br i1 %241, label %488, label %242

242:                                              ; preds = %235
  %243 = shl nuw nsw i32 %240, 1
  %244 = getelementptr inbounds [16 x i16], ptr %7, i32 0, i32 13
  %245 = load i16, ptr %244, align 2
  %246 = zext i16 %245 to i32
  %247 = sub nsw i32 %243, %246
  %248 = icmp slt i32 %247, 0
  br i1 %248, label %488, label %249

249:                                              ; preds = %242
  %250 = shl nuw nsw i32 %247, 1
  %251 = getelementptr inbounds [16 x i16], ptr %7, i32 0, i32 14
  %252 = load i16, ptr %251, align 2
  %253 = zext i16 %252 to i32
  %254 = sub nsw i32 %250, %253
  %255 = icmp slt i32 %254, 0
  br i1 %255, label %488, label %256

256:                                              ; preds = %249
  %257 = shl nuw nsw i32 %254, 1
  %258 = zext i16 %95 to i32
  %259 = icmp slt i32 %257, %258
  br i1 %259, label %488, label %260

260:                                              ; preds = %256
  %261 = icmp ne i32 %257, %258
  %262 = icmp eq i32 %0, 0
  %263 = or i1 %262, %96
  %264 = and i1 %261, %263
  br i1 %264, label %488, label %265

265:                                              ; preds = %260
  %266 = getelementptr inbounds [16 x i16], ptr %8, i32 0, i32 1
  store i16 0, ptr %266, align 2
  %267 = getelementptr inbounds [16 x i16], ptr %8, i32 0, i32 2
  store i16 %100, ptr %267, align 2
  %268 = add i16 %168, %100
  %269 = getelementptr inbounds [16 x i16], ptr %8, i32 0, i32 3
  store i16 %268, ptr %269, align 2
  %270 = add i16 %175, %268
  %271 = getelementptr inbounds [16 x i16], ptr %8, i32 0, i32 4
  store i16 %270, ptr %271, align 2
  %272 = add i16 %182, %270
  %273 = getelementptr inbounds [16 x i16], ptr %8, i32 0, i32 5
  store i16 %272, ptr %273, align 2
  %274 = add i16 %189, %272
  %275 = getelementptr inbounds [16 x i16], ptr %8, i32 0, i32 6
  store i16 %274, ptr %275, align 2
  %276 = add i16 %196, %274
  %277 = getelementptr inbounds [16 x i16], ptr %8, i32 0, i32 7
  store i16 %276, ptr %277, align 2
  %278 = add i16 %203, %276
  %279 = getelementptr inbounds [16 x i16], ptr %8, i32 0, i32 8
  store i16 %278, ptr %279, align 2
  %280 = add i16 %210, %278
  %281 = getelementptr inbounds [16 x i16], ptr %8, i32 0, i32 9
  store i16 %280, ptr %281, align 2
  %282 = add i16 %217, %280
  %283 = getelementptr inbounds [16 x i16], ptr %8, i32 0, i32 10
  store i16 %282, ptr %283, align 2
  %284 = add i16 %224, %282
  %285 = getelementptr inbounds [16 x i16], ptr %8, i32 0, i32 11
  store i16 %284, ptr %285, align 2
  %286 = add i16 %231, %284
  %287 = getelementptr inbounds [16 x i16], ptr %8, i32 0, i32 12
  store i16 %286, ptr %287, align 2
  %288 = add i16 %238, %286
  %289 = getelementptr inbounds [16 x i16], ptr %8, i32 0, i32 13
  store i16 %288, ptr %289, align 2
  %290 = add i16 %245, %288
  %291 = getelementptr inbounds [16 x i16], ptr %8, i32 0, i32 14
  store i16 %290, ptr %291, align 2
  %292 = add i16 %252, %290
  %293 = getelementptr inbounds [16 x i16], ptr %8, i32 0, i32 15
  store i16 %292, ptr %293, align 2
  br i1 %9, label %310, label %294

294:                                              ; preds = %307, %265
  %295 = phi i32 [ %308, %307 ], [ 0, %265 ]
  %296 = getelementptr i16, ptr %1, i32 %295
  %297 = load i16, ptr %296, align 2
  %298 = icmp eq i16 %297, 0
  br i1 %298, label %307, label %299

299:                                              ; preds = %294
  %300 = zext i16 %297 to i32
  %301 = trunc i32 %295 to i16
  %302 = getelementptr [16 x i16], ptr %8, i32 0, i32 %300
  %303 = load i16, ptr %302, align 2
  %304 = add i16 %303, 1
  store i16 %304, ptr %302, align 2
  %305 = zext i16 %303 to i32
  %306 = getelementptr i16, ptr %5, i32 %305
  store i16 %301, ptr %306, align 2
  br label %307

307:                                              ; preds = %299, %294
  %308 = add nuw i32 %295, 1
  %309 = icmp eq i32 %308, %2
  br i1 %309, label %310, label %294

310:                                              ; preds = %307, %265
  switch i32 %0, label %311 [
    i32 0, label %314
    i32 1, label %312
  ]

311:                                              ; preds = %310
  br label %314

312:                                              ; preds = %310
  %313 = icmp ugt i32 %162, 10
  br i1 %313, label %488, label %314

314:                                              ; preds = %312, %311, %310
  %315 = phi i1 [ true, %312 ], [ false, %310 ], [ false, %311 ]
  %316 = phi i32 [ 256, %312 ], [ 19, %310 ], [ -1, %311 ]
  %317 = phi ptr [ getelementptr ([31 x i16], ptr @zlib_inflate_table.lext, i32 -9, i32 22), %312 ], [ %5, %310 ], [ @zlib_inflate_table.dext, %311 ]
  %318 = phi ptr [ getelementptr ([31 x i16], ptr @zlib_inflate_table.lbase, i32 -9, i32 22), %312 ], [ %5, %310 ], [ @zlib_inflate_table.dbase, %311 ]
  %319 = shl nuw i32 1, %162
  %320 = add nsw i32 %319, -1
  %321 = load ptr, ptr %3, align 4
  %322 = trunc i32 %162 to i8
  br label %323

323:                                              ; preds = %435, %314
  %324 = phi i32 [ %397, %435 ], [ %163, %314 ]
  %325 = phi i32 [ %378, %435 ], [ 0, %314 ]
  %326 = phi i32 [ %431, %435 ], [ %162, %314 ]
  %327 = phi i32 [ %405, %435 ], [ 0, %314 ]
  %328 = phi i32 [ %432, %435 ], [ %319, %314 ]
  %329 = phi i32 [ %377, %435 ], [ 0, %314 ]
  %330 = phi i32 [ %400, %435 ], [ -1, %314 ]
  %331 = phi ptr [ %406, %435 ], [ %321, %314 ]
  %332 = shl nuw i32 1, %326
  br label %333

333:                                              ; preds = %402, %323
  %334 = phi i32 [ %324, %323 ], [ %397, %402 ]
  %335 = phi i32 [ %325, %323 ], [ %378, %402 ]
  %336 = phi i32 [ %329, %323 ], [ %377, %402 ]
  %337 = sub i32 %334, %327
  %338 = trunc i32 %337 to i8
  %339 = getelementptr i16, ptr %5, i32 %335
  %340 = load i16, ptr %339, align 2
  %341 = zext i16 %340 to i32
  %342 = icmp sgt i32 %316, %341
  br i1 %342, label %351, label %343

343:                                              ; preds = %333
  %344 = icmp slt i32 %316, %341
  br i1 %344, label %345, label %351

345:                                              ; preds = %343
  %346 = getelementptr i16, ptr %317, i32 %341
  %347 = load i16, ptr %346, align 2
  %348 = trunc i16 %347 to i8
  %349 = getelementptr i16, ptr %318, i32 %341
  %350 = load i16, ptr %349, align 2
  br label %351

351:                                              ; preds = %345, %343, %333
  %352 = phi i8 [ %348, %345 ], [ 0, %333 ], [ 96, %343 ]
  %353 = phi i16 [ %350, %345 ], [ %340, %333 ], [ 0, %343 ]
  %354 = shl nsw i32 -1, %337
  %355 = lshr i32 %336, %327
  br label %356

356:                                              ; preds = %356, %351
  %357 = phi i32 [ %332, %351 ], [ %358, %356 ]
  %358 = add i32 %357, %354
  %359 = add i32 %358, %355
  %360 = getelementptr %struct.code, ptr %331, i32 %359
  store i8 %352, ptr %360, align 2
  %361 = getelementptr inbounds i8, ptr %360, i32 1
  store i8 %338, ptr %361, align 1
  %362 = getelementptr inbounds i8, ptr %360, i32 2
  store i16 %353, ptr %362, align 2
  %363 = icmp eq i32 %358, 0
  br i1 %363, label %364, label %356

364:                                              ; preds = %356
  %365 = add i32 %334, -1
  %366 = shl nuw i32 1, %365
  br label %367

367:                                              ; preds = %367, %364
  %368 = phi i32 [ %366, %364 ], [ %371, %367 ]
  %369 = and i32 %368, %336
  %370 = icmp eq i32 %369, 0
  %371 = lshr i32 %368, 1
  br i1 %370, label %372, label %367

372:                                              ; preds = %367
  %373 = icmp eq i32 %368, 0
  %374 = add i32 %368, -1
  %375 = and i32 %374, %336
  %376 = add i32 %375, %368
  %377 = select i1 %373, i32 0, i32 %376
  %378 = add i32 %335, 1
  %379 = getelementptr [16 x i16], ptr %7, i32 0, i32 %334
  %380 = load i16, ptr %379, align 2
  %381 = add i16 %380, -1
  store i16 %381, ptr %379, align 2
  %382 = icmp eq i16 %381, 0
  br i1 %382, label %383, label %396

383:                                              ; preds = %372
  %384 = icmp eq i32 %334, %97
  br i1 %384, label %385, label %389

385:                                              ; preds = %383
  %386 = icmp eq i32 %377, 0
  br i1 %386, label %483, label %387

387:                                              ; preds = %385
  %388 = trunc i32 %337 to i8
  br label %448

389:                                              ; preds = %383
  %390 = getelementptr i16, ptr %5, i32 %378
  %391 = load i16, ptr %390, align 2
  %392 = zext i16 %391 to i32
  %393 = getelementptr i16, ptr %1, i32 %392
  %394 = load i16, ptr %393, align 2
  %395 = zext i16 %394 to i32
  br label %396

396:                                              ; preds = %389, %372
  %397 = phi i32 [ %395, %389 ], [ %334, %372 ]
  %398 = icmp ugt i32 %397, %162
  br i1 %398, label %399, label %402

399:                                              ; preds = %396
  %400 = and i32 %377, %320
  %401 = icmp eq i32 %400, %330
  br i1 %401, label %402, label %403

402:                                              ; preds = %399, %396
  br label %333

403:                                              ; preds = %399
  %404 = icmp eq i32 %327, 0
  %405 = select i1 %404, i32 %162, i32 %327
  %406 = getelementptr %struct.code, ptr %331, i32 %332
  %407 = sub i32 %397, %405
  %408 = shl nuw i32 1, %407
  %409 = icmp ult i32 %397, %97
  br i1 %409, label %410, label %429

410:                                              ; preds = %403
  %411 = sub i32 %97, %405
  br label %412

412:                                              ; preds = %421, %410
  %413 = phi i32 [ %424, %421 ], [ %397, %410 ]
  %414 = phi i32 [ %423, %421 ], [ %408, %410 ]
  %415 = phi i32 [ %422, %421 ], [ %407, %410 ]
  %416 = getelementptr [16 x i16], ptr %7, i32 0, i32 %413
  %417 = load i16, ptr %416, align 2
  %418 = zext i16 %417 to i32
  %419 = sub i32 %414, %418
  %420 = icmp slt i32 %419, 1
  br i1 %420, label %426, label %421

421:                                              ; preds = %412
  %422 = add i32 %415, 1
  %423 = shl nuw i32 %419, 1
  %424 = add i32 %422, %405
  %425 = icmp ult i32 %424, %97
  br i1 %425, label %412, label %426

426:                                              ; preds = %421, %412
  %427 = phi i32 [ %411, %421 ], [ %415, %412 ]
  %428 = shl nuw i32 1, %427
  br label %429

429:                                              ; preds = %426, %403
  %430 = phi i32 [ %428, %426 ], [ %408, %403 ]
  %431 = phi i32 [ %427, %426 ], [ %407, %403 ]
  %432 = add i32 %430, %328
  %433 = icmp ugt i32 %432, 1455
  %434 = select i1 %315, i1 %433, i1 false
  br i1 %434, label %488, label %435

435:                                              ; preds = %429
  %436 = trunc i32 %431 to i8
  %437 = load ptr, ptr %3, align 4
  %438 = getelementptr %struct.code, ptr %437, i32 %400
  store i8 %436, ptr %438, align 2
  %439 = load ptr, ptr %3, align 4
  %440 = getelementptr %struct.code, ptr %439, i32 %400, i32 1
  store i8 %322, ptr %440, align 1
  %441 = load ptr, ptr %3, align 4
  %442 = ptrtoint ptr %406 to i32
  %443 = ptrtoint ptr %441 to i32
  %444 = sub i32 %442, %443
  %445 = lshr exact i32 %444, 2
  %446 = trunc i32 %445 to i16
  %447 = getelementptr %struct.code, ptr %441, i32 %400, i32 2
  store i16 %446, ptr %447, align 2
  br label %323

448:                                              ; preds = %476, %387
  %449 = phi ptr [ %464, %476 ], [ %331, %387 ]
  %450 = phi i8 [ %463, %476 ], [ %388, %387 ]
  %451 = phi i32 [ %480, %476 ], [ %376, %387 ]
  %452 = phi i32 [ %462, %476 ], [ %327, %387 ]
  %453 = phi i32 [ %461, %476 ], [ %97, %387 ]
  %454 = icmp eq i32 %452, 0
  br i1 %454, label %460, label %455

455:                                              ; preds = %448
  %456 = and i32 %451, %320
  %457 = icmp eq i32 %456, %330
  br i1 %457, label %460, label %458

458:                                              ; preds = %455
  %459 = load ptr, ptr %3, align 4
  br label %460

460:                                              ; preds = %458, %455, %448
  %461 = phi i32 [ %162, %458 ], [ %453, %455 ], [ %453, %448 ]
  %462 = phi i32 [ 0, %458 ], [ %452, %455 ], [ 0, %448 ]
  %463 = phi i8 [ %322, %458 ], [ %450, %455 ], [ %450, %448 ]
  %464 = phi ptr [ %459, %458 ], [ %449, %455 ], [ %449, %448 ]
  %465 = lshr i32 %451, %462
  %466 = getelementptr %struct.code, ptr %464, i32 %465
  store i8 64, ptr %466, align 2
  %467 = getelementptr inbounds i8, ptr %466, i32 1
  store i8 %463, ptr %467, align 1
  %468 = getelementptr inbounds i8, ptr %466, i32 2
  store i16 0, ptr %468, align 2
  %469 = add i32 %461, -1
  %470 = shl nuw i32 1, %469
  br label %471

471:                                              ; preds = %471, %460
  %472 = phi i32 [ %470, %460 ], [ %475, %471 ]
  %473 = and i32 %472, %451
  %474 = icmp eq i32 %473, 0
  %475 = lshr i32 %472, 1
  br i1 %474, label %476, label %471

476:                                              ; preds = %471
  %477 = icmp eq i32 %472, 0
  %478 = add i32 %472, -1
  %479 = and i32 %478, %451
  %480 = add i32 %479, %472
  %481 = icmp eq i32 %480, 0
  %482 = select i1 %477, i1 true, i1 %481
  br i1 %482, label %483, label %448

483:                                              ; preds = %476, %385
  %484 = load ptr, ptr %3, align 4
  %485 = getelementptr %struct.code, ptr %484, i32 %328
  store ptr %485, ptr %3, align 4
  br label %486

486:                                              ; preds = %483, %84
  %487 = phi i32 [ %162, %483 ], [ 1, %84 ]
  store i32 %487, ptr %4, align 4
  br label %488

488:                                              ; preds = %486, %429, %312, %260, %256, %249, %242, %235, %228, %221, %214, %207, %200, %193, %186, %179, %172, %161, %158
  %489 = phi i32 [ 1, %312 ], [ -1, %256 ], [ -1, %249 ], [ -1, %242 ], [ -1, %235 ], [ -1, %228 ], [ -1, %221 ], [ -1, %214 ], [ -1, %207 ], [ -1, %200 ], [ -1, %193 ], [ -1, %186 ], [ -1, %179 ], [ -1, %172 ], [ -1, %161 ], [ -1, %158 ], [ -1, %260 ], [ 0, %486 ], [ 1, %429 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #4
  ret i32 %489
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

attributes #0 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }

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
