; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/clk/pllnv04.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/clk/pllnv04.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvbios_pll = type { i32, i32, i32, i8, i8, i8, i8, %struct.anon.127, %struct.anon.127 }
%struct.anon.127 = type { i32, i32, i32, i32, i8, i8, i8, i8 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.119, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.anon.119 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_bios = type { %struct.nvkm_subdev, i32, ptr, i32, i32, i32, i32, %struct.anon.120 }
%struct.anon.120 = type { i8, i8, i8, i8, i8 }

@.str = private unnamed_addr constant [45 x i8] c"%s: unable to compute acceptable pll values\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv04_pll_calc(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr noundef writeonly %5, ptr nocapture noundef writeonly %6, ptr nocapture noundef writeonly %7) local_unnamed_addr #0 {
  %9 = getelementptr inbounds %struct.nvbios_pll, ptr %1, i32 0, i32 8, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = icmp ne i32 %10, 0
  %12 = icmp ne ptr %5, null
  %13 = and i1 %12, %11
  %14 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.nvkm_device, ptr %15, i32 0, i32 21
  %17 = load ptr, ptr %16, align 8
  br i1 %13, label %137, label %18

18:                                               ; preds = %8
  %19 = getelementptr inbounds %struct.nvbios_pll, ptr %1, i32 0, i32 7
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.nvbios_pll, ptr %1, i32 0, i32 7, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.nvbios_pll, ptr %1, i32 0, i32 7, i32 4
  %24 = load i8, ptr %23, align 4
  %25 = zext i8 %24 to i32
  %26 = getelementptr inbounds %struct.nvbios_pll, ptr %1, i32 0, i32 7, i32 5
  %27 = load i8, ptr %26, align 1
  %28 = zext i8 %27 to i32
  %29 = getelementptr inbounds %struct.nvbios_pll, ptr %1, i32 0, i32 7, i32 6
  %30 = load i8, ptr %29, align 2
  %31 = zext i8 %30 to i32
  %32 = getelementptr inbounds %struct.nvbios_pll, ptr %1, i32 0, i32 7, i32 7
  %33 = load i8, ptr %32, align 1
  %34 = zext i8 %33 to i32
  %35 = getelementptr inbounds %struct.nvbios_pll, ptr %1, i32 0, i32 7, i32 2
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.nvbios_pll, ptr %1, i32 0, i32 7, i32 3
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.nvbios_pll, ptr %1, i32 0, i32 3
  %40 = load i8, ptr %39, align 4
  %41 = zext i8 %40 to i32
  %42 = getelementptr inbounds %struct.nvbios_pll, ptr %1, i32 0, i32 6
  %43 = load i8, ptr %42, align 1
  %44 = zext i8 %43 to i32
  %45 = getelementptr inbounds %struct.nvbios_pll, ptr %1, i32 0, i32 2
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr inbounds %struct.nvkm_bios, ptr %17, i32 0, i32 7
  %48 = load i8, ptr %47, align 4
  %49 = icmp ult i8 %48, 96
  br i1 %49, label %50, label %70

50:                                               ; preds = %18
  %51 = getelementptr inbounds %struct.nvkm_bios, ptr %17, i32 0, i32 7, i32 1
  %52 = load i8, ptr %51, align 1
  %53 = freeze i8 %52
  %54 = icmp ult i8 %53, 23
  br i1 %54, label %56, label %55

55:                                               ; preds = %50
  switch i8 %53, label %61 [
    i8 32, label %56
    i8 26, label %56
  ]

56:                                               ; preds = %55, %55, %50
  %57 = icmp sgt i32 %2, 250000
  %58 = select i1 %57, i32 6, i32 %28
  %59 = icmp sgt i32 %2, 340000
  %60 = select i1 %59, i32 2, i32 %58
  br label %70

61:                                               ; preds = %55
  %62 = icmp ult i8 %53, 64
  br i1 %62, label %63, label %70

63:                                               ; preds = %61
  %64 = icmp sgt i32 %2, 150000
  %65 = select i1 %64, i32 6, i32 %28
  %66 = icmp sgt i32 %2, 200000
  %67 = select i1 %66, i32 4, i32 %65
  %68 = icmp sgt i32 %2, 340000
  %69 = select i1 %68, i32 2, i32 %67
  br label %70

70:                                               ; preds = %63, %61, %56, %18
  %71 = phi i32 [ %28, %18 ], [ %28, %61 ], [ %60, %56 ], [ %69, %63 ]
  %72 = shl i32 %2, %44
  %73 = icmp slt i32 %72, %20
  %74 = mul i32 %44, %2
  %75 = shl i32 %74, 1
  %76 = select i1 %73, i32 %74, i32 %20
  %77 = select i1 %73, i32 %75, i32 %22
  %78 = sdiv i32 %2, 200
  %79 = add i32 %78, %2
  %80 = tail call i32 @llvm.smax.i32(i32 %79, i32 %77) #3
  %81 = icmp ugt i8 %40, %43
  br i1 %81, label %134, label %82

82:                                               ; preds = %70
  %83 = icmp ult i32 %71, %25
  %84 = sdiv i32 %46, 2
  br label %85

85:                                               ; preds = %129, %82
  %86 = phi i32 [ 0, %82 ], [ %131, %129 ]
  %87 = phi i32 [ 2147483647, %82 ], [ %130, %129 ]
  %88 = phi i32 [ %41, %82 ], [ %132, %129 ]
  %89 = shl nuw i32 1, %88
  %90 = shl i32 %2, %88
  %91 = icmp slt i32 %90, %76
  br i1 %91, label %129, label %92

92:                                               ; preds = %85
  %93 = icmp sgt i32 %90, %80
  br i1 %93, label %134, label %94

94:                                               ; preds = %92
  br i1 %83, label %129, label %95

95:                                               ; preds = %94
  %96 = sdiv i32 %89, 2
  br label %97

97:                                               ; preds = %124, %95
  %98 = phi i32 [ %86, %95 ], [ %126, %124 ]
  %99 = phi i32 [ %87, %95 ], [ %125, %124 ]
  %100 = phi i32 [ %25, %95 ], [ %127, %124 ]
  %101 = sdiv i32 %46, %100
  %102 = icmp slt i32 %101, %36
  br i1 %102, label %134, label %103

103:                                              ; preds = %97
  %104 = icmp sgt i32 %101, %38
  br i1 %104, label %124, label %105

105:                                              ; preds = %103
  %106 = mul i32 %100, %90
  %107 = add i32 %106, %84
  %108 = sdiv i32 %107, %46
  %109 = icmp slt i32 %108, %31
  br i1 %109, label %124, label %110

110:                                              ; preds = %105
  %111 = icmp sgt i32 %108, %34
  br i1 %111, label %129, label %112

112:                                              ; preds = %110
  %113 = mul i32 %108, %46
  %114 = add i32 %113, %96
  %115 = sdiv i32 %114, %89
  %116 = lshr i32 %100, 1
  %117 = add i32 %115, %116
  %118 = sdiv i32 %117, %100
  %119 = sub i32 %118, %2
  %120 = tail call i32 @llvm.abs.i32(i32 %119, i1 false) #3
  %121 = icmp slt i32 %120, %99
  br i1 %121, label %122, label %124

122:                                              ; preds = %112
  store i32 %108, ptr %3, align 4
  store i32 %100, ptr %4, align 4
  store i32 %88, ptr %7, align 4
  %123 = icmp eq i32 %118, %2
  br i1 %123, label %134, label %124

124:                                              ; preds = %122, %112, %105, %103
  %125 = phi i32 [ %99, %103 ], [ %99, %105 ], [ %120, %122 ], [ %99, %112 ]
  %126 = phi i32 [ %98, %103 ], [ %98, %105 ], [ %118, %122 ], [ %98, %112 ]
  %127 = add nuw nsw i32 %100, 1
  %128 = icmp eq i32 %100, %71
  br i1 %128, label %129, label %97

129:                                              ; preds = %124, %110, %94, %85
  %130 = phi i32 [ %87, %85 ], [ %87, %94 ], [ %125, %124 ], [ %99, %110 ]
  %131 = phi i32 [ %86, %85 ], [ %86, %94 ], [ %126, %124 ], [ %98, %110 ]
  %132 = add nuw nsw i32 %88, 1
  %133 = icmp eq i32 %88, %44
  br i1 %133, label %134, label %85

134:                                              ; preds = %129, %122, %97, %92, %70
  %135 = phi i32 [ 0, %70 ], [ %98, %97 ], [ %2, %122 ], [ %131, %129 ], [ %86, %92 ]
  br i1 %12, label %136, label %279

136:                                              ; preds = %134
  store i32 1, ptr %5, align 4
  store i32 1, ptr %6, align 4
  br label %279

137:                                              ; preds = %8
  %138 = getelementptr inbounds %struct.nvkm_bios, ptr %17, i32 0, i32 7, i32 1
  %139 = load i8, ptr %138, align 1
  %140 = getelementptr inbounds %struct.nvbios_pll, ptr %1, i32 0, i32 7
  %141 = load i32, ptr %140, align 4
  %142 = getelementptr inbounds %struct.nvbios_pll, ptr %1, i32 0, i32 7, i32 1
  %143 = load i32, ptr %142, align 4
  %144 = getelementptr inbounds %struct.nvbios_pll, ptr %1, i32 0, i32 8
  %145 = load i32, ptr %144, align 4
  %146 = getelementptr inbounds %struct.nvbios_pll, ptr %1, i32 0, i32 7, i32 2
  %147 = load i32, ptr %146, align 4
  %148 = getelementptr inbounds %struct.nvbios_pll, ptr %1, i32 0, i32 8, i32 2
  %149 = load i32, ptr %148, align 4
  %150 = getelementptr inbounds %struct.nvbios_pll, ptr %1, i32 0, i32 7, i32 3
  %151 = load i32, ptr %150, align 4
  %152 = getelementptr inbounds %struct.nvbios_pll, ptr %1, i32 0, i32 8, i32 3
  %153 = load i32, ptr %152, align 4
  %154 = getelementptr inbounds %struct.nvbios_pll, ptr %1, i32 0, i32 7, i32 4
  %155 = load i8, ptr %154, align 4
  %156 = getelementptr inbounds %struct.nvbios_pll, ptr %1, i32 0, i32 7, i32 5
  %157 = load i8, ptr %156, align 1
  %158 = getelementptr inbounds %struct.nvbios_pll, ptr %1, i32 0, i32 7, i32 6
  %159 = load i8, ptr %158, align 2
  %160 = getelementptr inbounds %struct.nvbios_pll, ptr %1, i32 0, i32 7, i32 7
  %161 = load i8, ptr %160, align 1
  %162 = getelementptr inbounds %struct.nvbios_pll, ptr %1, i32 0, i32 8, i32 4
  %163 = load i8, ptr %162, align 4
  %164 = getelementptr inbounds %struct.nvbios_pll, ptr %1, i32 0, i32 8, i32 5
  %165 = load i8, ptr %164, align 1
  %166 = getelementptr inbounds %struct.nvbios_pll, ptr %1, i32 0, i32 8, i32 6
  %167 = load i8, ptr %166, align 2
  %168 = getelementptr inbounds %struct.nvbios_pll, ptr %1, i32 0, i32 8, i32 7
  %169 = load i8, ptr %168, align 1
  %170 = getelementptr inbounds %struct.nvbios_pll, ptr %1, i32 0, i32 6
  %171 = load i8, ptr %170, align 1
  %172 = zext i8 %171 to i32
  %173 = getelementptr inbounds %struct.nvbios_pll, ptr %1, i32 0, i32 2
  %174 = load i32, ptr %173, align 4
  %175 = sdiv i32 %10, -200
  %176 = add i32 %175, %10
  %177 = sdiv i32 %176, 2
  %178 = icmp eq i32 %2, 0
  br label %179

179:                                              ; preds = %179, %137
  %180 = phi i32 [ 0, %137 ], [ %186, %179 ]
  %181 = icmp uge i32 %180, %172
  %182 = select i1 %178, i1 true, i1 %181
  %183 = ashr i32 %177, %180
  %184 = icmp slt i32 %183, %2
  %185 = select i1 %182, i1 true, i1 %184
  %186 = add nuw nsw i32 %180, 1
  br i1 %185, label %187, label %179

187:                                              ; preds = %179
  %188 = icmp eq i8 %167, %169
  %189 = zext i8 %159 to i32
  %190 = zext i8 %163 to i32
  %191 = zext i8 %167 to i32
  %192 = zext i8 %169 to i32
  %193 = icmp eq i8 %163, %165
  %194 = select i1 %193, i1 %188, i1 false
  %195 = shl i32 %2, %180
  %196 = sdiv i32 %2, 200
  %197 = add i32 %196, %2
  %198 = tail call i32 @llvm.smax.i32(i32 %10, i32 %197) #3
  %199 = icmp ugt i8 %155, %157
  br i1 %199, label %282, label %200

200:                                              ; preds = %187
  %201 = zext i8 %165 to i32
  %202 = zext i8 %161 to i32
  %203 = zext i8 %157 to i32
  %204 = zext i8 %155 to i32
  %205 = icmp ugt i8 %159, %161
  %206 = icmp ugt i8 %163, %165
  %207 = icmp ult i8 %139, 96
  br label %208

208:                                              ; preds = %274, %200
  %209 = phi i32 [ 0, %200 ], [ %276, %274 ]
  %210 = phi i32 [ 2147483647, %200 ], [ %275, %274 ]
  %211 = phi i32 [ %204, %200 ], [ %277, %274 ]
  %212 = sdiv i32 %174, %211
  %213 = icmp slt i32 %212, %147
  br i1 %213, label %279, label %214

214:                                              ; preds = %208
  %215 = icmp sgt i32 %212, %151
  %216 = select i1 %215, i1 true, i1 %205
  br i1 %216, label %274, label %217

217:                                              ; preds = %269, %214
  %218 = phi i32 [ %271, %269 ], [ %209, %214 ]
  %219 = phi i32 [ %270, %269 ], [ %210, %214 ]
  %220 = phi i32 [ %272, %269 ], [ %189, %214 ]
  %221 = mul i32 %220, %174
  %222 = sdiv i32 %221, %211
  %223 = icmp slt i32 %222, %141
  br i1 %223, label %269, label %224

224:                                              ; preds = %217
  %225 = icmp sgt i32 %222, %143
  br i1 %225, label %274, label %226

226:                                              ; preds = %224
  br i1 %206, label %269, label %227

227:                                              ; preds = %226
  %228 = sdiv i32 %222, 2
  br label %229

229:                                              ; preds = %264, %227
  %230 = phi i32 [ %218, %227 ], [ %266, %264 ]
  %231 = phi i32 [ %219, %227 ], [ %265, %264 ]
  %232 = phi i32 [ %190, %227 ], [ %267, %264 ]
  %233 = sdiv i32 %222, %232
  %234 = icmp slt i32 %233, %149
  br i1 %234, label %269, label %235

235:                                              ; preds = %229
  %236 = icmp sgt i32 %233, %153
  br i1 %236, label %264, label %237

237:                                              ; preds = %235
  %238 = mul i32 %232, %195
  %239 = add i32 %238, %228
  %240 = sdiv i32 %239, %222
  %241 = icmp slt i32 %240, %191
  br i1 %241, label %264, label %242

242:                                              ; preds = %237
  %243 = icmp sgt i32 %240, %192
  br i1 %243, label %269, label %244

244:                                              ; preds = %242
  br i1 %194, label %256, label %245

245:                                              ; preds = %244
  br i1 %207, label %246, label %250

246:                                              ; preds = %245
  %247 = sdiv i32 %240, %232
  %248 = add i32 %247, -11
  %249 = icmp ult i32 %248, -7
  br i1 %249, label %264, label %250

250:                                              ; preds = %246, %245
  %251 = mul i32 %240, %222
  %252 = sdiv i32 %251, %232
  %253 = icmp slt i32 %252, %145
  br i1 %253, label %269, label %254

254:                                              ; preds = %250
  %255 = icmp sgt i32 %252, %198
  br i1 %255, label %264, label %256

256:                                              ; preds = %254, %244
  %257 = phi i32 [ %252, %254 ], [ %222, %244 ]
  %258 = ashr i32 %257, %180
  %259 = sub i32 %258, %2
  %260 = tail call i32 @llvm.abs.i32(i32 %259, i1 false) #3
  %261 = icmp slt i32 %260, %231
  br i1 %261, label %262, label %264

262:                                              ; preds = %256
  store i32 %220, ptr %3, align 4
  store i32 %211, ptr %4, align 4
  store i32 %240, ptr %5, align 4
  store i32 %232, ptr %6, align 4
  store i32 %180, ptr %7, align 4
  %263 = icmp eq i32 %258, %2
  br i1 %263, label %279, label %264

264:                                              ; preds = %262, %256, %254, %246, %237, %235
  %265 = phi i32 [ %231, %235 ], [ %231, %237 ], [ %260, %262 ], [ %231, %256 ], [ %231, %246 ], [ %231, %254 ]
  %266 = phi i32 [ %230, %235 ], [ %230, %237 ], [ %258, %262 ], [ %230, %256 ], [ %230, %246 ], [ %230, %254 ]
  %267 = add nuw nsw i32 %232, 1
  %268 = icmp eq i32 %232, %201
  br i1 %268, label %269, label %229

269:                                              ; preds = %264, %250, %242, %229, %226, %217
  %270 = phi i32 [ %219, %217 ], [ %219, %226 ], [ %265, %264 ], [ %231, %229 ], [ %231, %242 ], [ %231, %250 ]
  %271 = phi i32 [ %218, %217 ], [ %218, %226 ], [ %266, %264 ], [ %230, %229 ], [ %230, %242 ], [ %230, %250 ]
  %272 = add nuw nsw i32 %220, 1
  %273 = icmp eq i32 %220, %202
  br i1 %273, label %274, label %217

274:                                              ; preds = %269, %224, %214
  %275 = phi i32 [ %210, %214 ], [ %270, %269 ], [ %219, %224 ]
  %276 = phi i32 [ %209, %214 ], [ %271, %269 ], [ %218, %224 ]
  %277 = add nuw nsw i32 %211, 1
  %278 = icmp eq i32 %211, %203
  br i1 %278, label %279, label %208

279:                                              ; preds = %274, %262, %208, %136, %134
  %280 = phi i32 [ %135, %136 ], [ %135, %134 ], [ %2, %262 ], [ %276, %274 ], [ %209, %208 ]
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %282, label %292

282:                                              ; preds = %279, %187
  %283 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 5
  %284 = load i32, ptr %283, align 4
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %292, label %286

286:                                              ; preds = %282
  %287 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 1
  %288 = load ptr, ptr %287, align 4
  %289 = getelementptr inbounds %struct.nvkm_device, ptr %288, i32 0, i32 2
  %290 = load ptr, ptr %289, align 8
  %291 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %290, ptr noundef nonnull @.str, ptr noundef %291) #4
  br label %292

292:                                              ; preds = %286, %282, %279
  %293 = phi i32 [ 0, %282 ], [ 0, %286 ], [ %280, %279 ]
  ret i32 %293
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { cold nounwind }

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
