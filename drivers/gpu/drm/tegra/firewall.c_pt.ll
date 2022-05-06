; ModuleID = '/llk/IR/drivers/gpu/drm/tegra/firewall.c_pt.bc'
source_filename = "../drivers/gpu/drm/tegra/firewall.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tegra_drm_firewall = type { ptr, ptr, ptr, i32, i32, i32 }
%struct.host1x_client = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.mutex, %struct.host1x_bo_cache }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.host1x_bo_cache = type { %struct.list_head, %struct.mutex }
%struct.tegra_drm_client = type { %struct.host1x_client, %struct.list_head, ptr, ptr, i32, ptr }
%struct.tegra_drm_client_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.tegra_drm_submit_data = type { ptr, i32 }
%struct.tegra_drm_used_mapping = type { ptr, i32 }
%struct.tegra_drm_mapping = type { %struct.kref, ptr, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }

@.str = private unnamed_addr constant [64 x i8] c"illegal SETCLASS(offset=0x%x, mask=0x%x, class=0x%x) at word %u\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"illegal INCR(offset=0x%x, count=%u) in class 0x%x at word %u\00", align 1
@.str.2 = private unnamed_addr constant [64 x i8] c"illegal NONINCR(offset=0x%x, count=%u) in class 0x%x at word %u\00", align 1
@.str.3 = private unnamed_addr constant [62 x i8] c"illegal MASK(offset=0x%x, mask=0x%x) in class 0x%x at word %u\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"illegal IMM(offset=0x%x) in class 0x%x at word %u\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c"illegal INCR_W(offset=0x%x) in class 0x%x at word %u\00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"illegal NONINCR(offset=0x%x) in class 0x%x at word %u\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"illegal opcode at word %u\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tegra_drm_fw_validate(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef %5) local_unnamed_addr #0 {
  %7 = alloca %struct.tegra_drm_firewall, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #4
  %8 = getelementptr inbounds i8, ptr %7, i32 12
  store i32 0, ptr %8, align 4, !annotation !8
  store ptr %4, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tegra_drm_firewall, ptr %7, i32 0, i32 1
  store ptr %0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.tegra_drm_firewall, ptr %7, i32 0, i32 2
  store ptr %1, ptr %10, align 4
  %11 = getelementptr inbounds %struct.tegra_drm_firewall, ptr %7, i32 0, i32 3
  %12 = getelementptr inbounds %struct.tegra_drm_firewall, ptr %7, i32 0, i32 4
  %13 = add i32 %3, %2
  store i32 %13, ptr %12, align 4
  %14 = getelementptr inbounds %struct.tegra_drm_firewall, ptr %7, i32 0, i32 5
  %15 = load i32, ptr %5, align 4
  store i32 %15, ptr %14, align 4
  %16 = getelementptr inbounds %struct.host1x_client, ptr %0, i32 0, i32 2
  %17 = icmp eq i32 %3, 0
  br i1 %17, label %344, label %18

18:                                               ; preds = %338, %6
  %19 = phi i32 [ %340, %338 ], [ 0, %6 ]
  %20 = phi i1 [ %339, %338 ], [ false, %6 ]
  %21 = phi i32 [ %341, %338 ], [ %2, %6 ]
  %22 = phi i32 [ %342, %338 ], [ %13, %6 ]
  %23 = load ptr, ptr %10, align 4
  %24 = add i32 %21, 1
  store i32 %24, ptr %11, align 4
  %25 = getelementptr i32, ptr %23, i32 %21
  %26 = load i32, ptr %25, align 4
  %27 = lshr i32 %26, 28
  switch i32 %27, label %330 [
    i32 0, label %28
    i32 1, label %59
    i32 2, label %123
    i32 3, label %185
    i32 4, label %197
    i32 9, label %210
    i32 10, label %212
    i32 11, label %272
  ]

28:                                               ; preds = %18
  %29 = lshr i32 %26, 16
  %30 = and i32 %29, 4095
  %31 = and i32 %26, 63
  %32 = lshr i32 %26, 6
  %33 = and i32 %32, 1023
  %34 = load ptr, ptr %9, align 4
  %35 = getelementptr inbounds %struct.tegra_drm_client, ptr %34, i32 0, i32 5
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.tegra_drm_client_ops, ptr %36, i32 0, i32 3
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %28
  %41 = getelementptr inbounds %struct.host1x_client, ptr %34, i32 0, i32 5
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, %33
  br i1 %43, label %48, label %47

44:                                               ; preds = %28
  %45 = tail call i32 %38(i32 noundef %33) #4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %44, %40
  store i32 %33, ptr %14, align 4
  store i32 %33, ptr %5, align 4
  br label %54

48:                                               ; preds = %44, %40
  store i32 %33, ptr %14, align 4
  store i32 %33, ptr %5, align 4
  %49 = trunc i32 %31 to i16
  %50 = call fastcc i32 @fw_check_regs_mask(ptr noundef nonnull %7, i32 noundef %30, i16 noundef zeroext %49)
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %338, label %52

52:                                               ; preds = %48
  %53 = load i32, ptr %11, align 4
  br label %54

54:                                               ; preds = %52, %47
  %55 = phi i32 [ %24, %47 ], [ %53, %52 ]
  %56 = phi i32 [ -22, %47 ], [ %50, %52 ]
  %57 = load ptr, ptr %16, align 4
  %58 = add i32 %55, -1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %57, ptr noundef nonnull @.str, i32 noundef %30, i32 noundef %31, i32 noundef %33, i32 noundef %58) #5
  br label %344

59:                                               ; preds = %18
  %60 = lshr i32 %26, 16
  %61 = and i32 %60, 4095
  %62 = and i32 %26, 65535
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %338, label %64

64:                                               ; preds = %59
  %65 = load ptr, ptr %9, align 4
  %66 = getelementptr inbounds %struct.tegra_drm_client, ptr %65, i32 0, i32 5
  %67 = getelementptr inbounds %struct.host1x_client, ptr %65, i32 0, i32 2
  %68 = load i32, ptr %14, align 4
  %69 = load ptr, ptr %7, align 4
  %70 = getelementptr inbounds %struct.tegra_drm_submit_data, ptr %69, i32 0, i32 1
  %71 = icmp eq i32 %24, %22
  br i1 %71, label %116, label %75

72:                                               ; preds = %113
  %73 = add nuw nsw i32 %76, 1
  %74 = icmp eq i32 %79, %22
  br i1 %74, label %118, label %75

75:                                               ; preds = %72, %64
  %76 = phi i32 [ %73, %72 ], [ %61, %64 ]
  %77 = phi i32 [ %114, %72 ], [ 0, %64 ]
  %78 = phi i32 [ %79, %72 ], [ %24, %64 ]
  %79 = add i32 %78, 1
  %80 = getelementptr i32, ptr %23, i32 %78
  %81 = load i32, ptr %80, align 4
  %82 = load ptr, ptr %66, align 4
  %83 = getelementptr inbounds %struct.tegra_drm_client_ops, ptr %82, i32 0, i32 2
  %84 = load ptr, ptr %83, align 4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %113, label %86

86:                                               ; preds = %75
  %87 = load ptr, ptr %67, align 4
  %88 = tail call i32 %84(ptr noundef %87, i32 noundef %68, i32 noundef %76) #4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %113, label %90

90:                                               ; preds = %86
  %91 = load i32, ptr %70, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %118, label %93

93:                                               ; preds = %90
  %94 = load ptr, ptr %69, align 4
  br label %95

95:                                               ; preds = %107, %93
  %96 = phi i1 [ true, %93 ], [ %109, %107 ]
  %97 = phi i32 [ 0, %93 ], [ %108, %107 ]
  %98 = getelementptr %struct.tegra_drm_used_mapping, ptr %94, i32 %97
  %99 = load ptr, ptr %98, align 4
  %100 = getelementptr inbounds %struct.tegra_drm_mapping, ptr %99, i32 0, i32 3
  %101 = load i32, ptr %100, align 4
  %102 = icmp ugt i32 %101, %81
  br i1 %102, label %107, label %103

103:                                              ; preds = %95
  %104 = getelementptr inbounds %struct.tegra_drm_mapping, ptr %99, i32 0, i32 4
  %105 = load i32, ptr %104, align 4
  %106 = icmp ult i32 %105, %81
  br i1 %106, label %107, label %111

107:                                              ; preds = %103, %95
  %108 = add nuw i32 %97, 1
  %109 = icmp ult i32 %108, %91
  %110 = icmp eq i32 %108, %91
  br i1 %110, label %111, label %95

111:                                              ; preds = %107, %103
  %112 = phi i1 [ %109, %107 ], [ %96, %103 ]
  br i1 %112, label %113, label %118

113:                                              ; preds = %111, %86, %75
  %114 = add nuw nsw i32 %77, 1
  %115 = icmp eq i32 %114, %62
  br i1 %115, label %336, label %72

116:                                              ; preds = %64
  %117 = load i32, ptr %11, align 4
  br label %118

118:                                              ; preds = %116, %111, %90, %72
  %119 = phi i32 [ %117, %116 ], [ %79, %90 ], [ %79, %72 ], [ %79, %111 ]
  %120 = phi i32 [ %22, %116 ], [ %79, %111 ], [ %22, %72 ], [ %79, %90 ]
  store i32 %119, ptr %11, align 4
  %121 = load ptr, ptr %16, align 4
  %122 = add i32 %120, -1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %121, ptr noundef nonnull @.str.1, i32 noundef %61, i32 noundef %62, i32 noundef %68, i32 noundef %122) #5
  br label %344

123:                                              ; preds = %18
  %124 = lshr i32 %26, 16
  %125 = and i32 %124, 4095
  %126 = and i32 %26, 65535
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %338, label %128

128:                                              ; preds = %123
  %129 = load ptr, ptr %9, align 4
  %130 = getelementptr inbounds %struct.tegra_drm_client, ptr %129, i32 0, i32 5
  %131 = getelementptr inbounds %struct.host1x_client, ptr %129, i32 0, i32 2
  %132 = load i32, ptr %14, align 4
  %133 = load ptr, ptr %7, align 4
  %134 = getelementptr inbounds %struct.tegra_drm_submit_data, ptr %133, i32 0, i32 1
  %135 = icmp eq i32 %24, %22
  br i1 %135, label %178, label %138

136:                                              ; preds = %175
  %137 = icmp eq i32 %141, %22
  br i1 %137, label %180, label %138

138:                                              ; preds = %136, %128
  %139 = phi i32 [ %176, %136 ], [ 0, %128 ]
  %140 = phi i32 [ %141, %136 ], [ %24, %128 ]
  %141 = add i32 %140, 1
  %142 = getelementptr i32, ptr %23, i32 %140
  %143 = load i32, ptr %142, align 4
  %144 = load ptr, ptr %130, align 4
  %145 = getelementptr inbounds %struct.tegra_drm_client_ops, ptr %144, i32 0, i32 2
  %146 = load ptr, ptr %145, align 4
  %147 = icmp eq ptr %146, null
  br i1 %147, label %175, label %148

148:                                              ; preds = %138
  %149 = load ptr, ptr %131, align 4
  %150 = tail call i32 %146(ptr noundef %149, i32 noundef %132, i32 noundef %125) #4
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %175, label %152

152:                                              ; preds = %148
  %153 = load i32, ptr %134, align 4
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %180, label %155

155:                                              ; preds = %152
  %156 = load ptr, ptr %133, align 4
  br label %157

157:                                              ; preds = %169, %155
  %158 = phi i1 [ true, %155 ], [ %171, %169 ]
  %159 = phi i32 [ 0, %155 ], [ %170, %169 ]
  %160 = getelementptr %struct.tegra_drm_used_mapping, ptr %156, i32 %159
  %161 = load ptr, ptr %160, align 4
  %162 = getelementptr inbounds %struct.tegra_drm_mapping, ptr %161, i32 0, i32 3
  %163 = load i32, ptr %162, align 4
  %164 = icmp ugt i32 %163, %143
  br i1 %164, label %169, label %165

165:                                              ; preds = %157
  %166 = getelementptr inbounds %struct.tegra_drm_mapping, ptr %161, i32 0, i32 4
  %167 = load i32, ptr %166, align 4
  %168 = icmp ult i32 %167, %143
  br i1 %168, label %169, label %173

169:                                              ; preds = %165, %157
  %170 = add nuw i32 %159, 1
  %171 = icmp ult i32 %170, %153
  %172 = icmp eq i32 %170, %153
  br i1 %172, label %173, label %157

173:                                              ; preds = %169, %165
  %174 = phi i1 [ %171, %169 ], [ %158, %165 ]
  br i1 %174, label %175, label %180

175:                                              ; preds = %173, %148, %138
  %176 = add nuw nsw i32 %139, 1
  %177 = icmp eq i32 %176, %126
  br i1 %177, label %337, label %136

178:                                              ; preds = %128
  %179 = load i32, ptr %11, align 4
  br label %180

180:                                              ; preds = %178, %173, %152, %136
  %181 = phi i32 [ %179, %178 ], [ %141, %152 ], [ %141, %136 ], [ %141, %173 ]
  %182 = phi i32 [ %22, %178 ], [ %141, %173 ], [ %22, %136 ], [ %141, %152 ]
  store i32 %181, ptr %11, align 4
  %183 = load ptr, ptr %16, align 4
  %184 = add i32 %182, -1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %183, ptr noundef nonnull @.str.2, i32 noundef %125, i32 noundef %126, i32 noundef %132, i32 noundef %184) #5
  br label %344

185:                                              ; preds = %18
  %186 = lshr i32 %26, 16
  %187 = and i32 %186, 4095
  %188 = trunc i32 %26 to i16
  %189 = call fastcc i32 @fw_check_regs_mask(ptr noundef nonnull %7, i32 noundef %187, i16 noundef zeroext %188)
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %338, label %191

191:                                              ; preds = %185
  %192 = and i32 %26, 65535
  %193 = load ptr, ptr %16, align 4
  %194 = load i32, ptr %14, align 4
  %195 = load i32, ptr %11, align 4
  %196 = add i32 %195, -1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %193, ptr noundef nonnull @.str.3, i32 noundef %187, i32 noundef %192, i32 noundef %194, i32 noundef %196) #5
  br label %344

197:                                              ; preds = %18
  %198 = lshr i32 %26, 16
  %199 = and i32 %198, 4095
  %200 = load ptr, ptr %9, align 4
  %201 = getelementptr inbounds %struct.tegra_drm_client, ptr %200, i32 0, i32 5
  %202 = load ptr, ptr %201, align 4
  %203 = getelementptr inbounds %struct.tegra_drm_client_ops, ptr %202, i32 0, i32 2
  %204 = load ptr, ptr %203, align 4
  %205 = getelementptr inbounds %struct.host1x_client, ptr %200, i32 0, i32 2
  %206 = load ptr, ptr %205, align 4
  %207 = load i32, ptr %14, align 4
  %208 = tail call i32 %204(ptr noundef %206, i32 noundef %207, i32 noundef %199) #4
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %338, label %334

210:                                              ; preds = %18
  %211 = and i32 %26, 65535
  br label %338

212:                                              ; preds = %18
  br i1 %20, label %213, label %344

213:                                              ; preds = %212
  %214 = and i32 %26, 4194303
  %215 = icmp eq i32 %19, 0
  br i1 %215, label %338, label %216

216:                                              ; preds = %213
  %217 = load ptr, ptr %9, align 4
  %218 = getelementptr inbounds %struct.tegra_drm_client, ptr %217, i32 0, i32 5
  %219 = getelementptr inbounds %struct.host1x_client, ptr %217, i32 0, i32 2
  %220 = load i32, ptr %14, align 4
  %221 = load ptr, ptr %7, align 4
  %222 = getelementptr inbounds %struct.tegra_drm_submit_data, ptr %221, i32 0, i32 1
  %223 = add i32 %19, %24
  br label %224

224:                                              ; preds = %264, %216
  %225 = phi i32 [ %230, %264 ], [ %24, %216 ]
  %226 = phi i32 [ %266, %264 ], [ 0, %216 ]
  %227 = phi i32 [ %265, %264 ], [ %214, %216 ]
  %228 = icmp eq i32 %225, %22
  br i1 %228, label %268, label %229

229:                                              ; preds = %224
  %230 = add i32 %225, 1
  %231 = getelementptr i32, ptr %23, i32 %225
  %232 = load i32, ptr %231, align 4
  %233 = load ptr, ptr %218, align 4
  %234 = getelementptr inbounds %struct.tegra_drm_client_ops, ptr %233, i32 0, i32 2
  %235 = load ptr, ptr %234, align 4
  %236 = icmp eq ptr %235, null
  br i1 %236, label %264, label %237

237:                                              ; preds = %229
  %238 = load ptr, ptr %219, align 4
  %239 = tail call i32 %235(ptr noundef %238, i32 noundef %220, i32 noundef %227) #4
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %264, label %241

241:                                              ; preds = %237
  %242 = load i32, ptr %222, align 4
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %268, label %244

244:                                              ; preds = %241
  %245 = load ptr, ptr %221, align 4
  br label %246

246:                                              ; preds = %258, %244
  %247 = phi i1 [ true, %244 ], [ %260, %258 ]
  %248 = phi i32 [ 0, %244 ], [ %259, %258 ]
  %249 = getelementptr %struct.tegra_drm_used_mapping, ptr %245, i32 %248
  %250 = load ptr, ptr %249, align 4
  %251 = getelementptr inbounds %struct.tegra_drm_mapping, ptr %250, i32 0, i32 3
  %252 = load i32, ptr %251, align 4
  %253 = icmp ugt i32 %252, %232
  br i1 %253, label %258, label %254

254:                                              ; preds = %246
  %255 = getelementptr inbounds %struct.tegra_drm_mapping, ptr %250, i32 0, i32 4
  %256 = load i32, ptr %255, align 4
  %257 = icmp ult i32 %256, %232
  br i1 %257, label %258, label %262

258:                                              ; preds = %254, %246
  %259 = add nuw i32 %248, 1
  %260 = icmp ult i32 %259, %242
  %261 = icmp eq i32 %259, %242
  br i1 %261, label %262, label %246

262:                                              ; preds = %258, %254
  %263 = phi i1 [ %260, %258 ], [ %247, %254 ]
  br i1 %263, label %264, label %268

264:                                              ; preds = %262, %237, %229
  %265 = add i32 %227, 1
  %266 = add nuw i32 %226, 1
  %267 = icmp eq i32 %266, %19
  br i1 %267, label %332, label %224

268:                                              ; preds = %262, %241, %224
  %269 = phi i32 [ %230, %241 ], [ %22, %224 ], [ %230, %262 ]
  %270 = load ptr, ptr %16, align 4
  %271 = add i32 %269, -1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %270, ptr noundef nonnull @.str.5, i32 noundef %214, i32 noundef %220, i32 noundef %271) #5
  br label %344

272:                                              ; preds = %18
  br i1 %20, label %273, label %344

273:                                              ; preds = %272
  %274 = and i32 %26, 4194303
  %275 = icmp eq i32 %19, 0
  br i1 %275, label %338, label %276

276:                                              ; preds = %273
  %277 = load ptr, ptr %9, align 4
  %278 = getelementptr inbounds %struct.tegra_drm_client, ptr %277, i32 0, i32 5
  %279 = getelementptr inbounds %struct.host1x_client, ptr %277, i32 0, i32 2
  %280 = load i32, ptr %14, align 4
  %281 = load ptr, ptr %7, align 4
  %282 = getelementptr inbounds %struct.tegra_drm_submit_data, ptr %281, i32 0, i32 1
  %283 = add i32 %19, %24
  br label %284

284:                                              ; preds = %323, %276
  %285 = phi i32 [ %289, %323 ], [ %24, %276 ]
  %286 = phi i32 [ %324, %323 ], [ 0, %276 ]
  %287 = icmp eq i32 %285, %22
  br i1 %287, label %326, label %288

288:                                              ; preds = %284
  %289 = add i32 %285, 1
  %290 = getelementptr i32, ptr %23, i32 %285
  %291 = load i32, ptr %290, align 4
  %292 = load ptr, ptr %278, align 4
  %293 = getelementptr inbounds %struct.tegra_drm_client_ops, ptr %292, i32 0, i32 2
  %294 = load ptr, ptr %293, align 4
  %295 = icmp eq ptr %294, null
  br i1 %295, label %323, label %296

296:                                              ; preds = %288
  %297 = load ptr, ptr %279, align 4
  %298 = tail call i32 %294(ptr noundef %297, i32 noundef %280, i32 noundef %274) #4
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %323, label %300

300:                                              ; preds = %296
  %301 = load i32, ptr %282, align 4
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %326, label %303

303:                                              ; preds = %300
  %304 = load ptr, ptr %281, align 4
  br label %305

305:                                              ; preds = %317, %303
  %306 = phi i1 [ true, %303 ], [ %319, %317 ]
  %307 = phi i32 [ 0, %303 ], [ %318, %317 ]
  %308 = getelementptr %struct.tegra_drm_used_mapping, ptr %304, i32 %307
  %309 = load ptr, ptr %308, align 4
  %310 = getelementptr inbounds %struct.tegra_drm_mapping, ptr %309, i32 0, i32 3
  %311 = load i32, ptr %310, align 4
  %312 = icmp ugt i32 %311, %291
  br i1 %312, label %317, label %313

313:                                              ; preds = %305
  %314 = getelementptr inbounds %struct.tegra_drm_mapping, ptr %309, i32 0, i32 4
  %315 = load i32, ptr %314, align 4
  %316 = icmp ult i32 %315, %291
  br i1 %316, label %317, label %321

317:                                              ; preds = %313, %305
  %318 = add nuw i32 %307, 1
  %319 = icmp ult i32 %318, %301
  %320 = icmp eq i32 %318, %301
  br i1 %320, label %321, label %305

321:                                              ; preds = %317, %313
  %322 = phi i1 [ %319, %317 ], [ %306, %313 ]
  br i1 %322, label %323, label %326

323:                                              ; preds = %321, %296, %288
  %324 = add nuw i32 %286, 1
  %325 = icmp eq i32 %324, %19
  br i1 %325, label %333, label %284

326:                                              ; preds = %321, %300, %284
  %327 = phi i32 [ %289, %300 ], [ %22, %284 ], [ %289, %321 ]
  store i32 %327, ptr %11, align 4
  %328 = load ptr, ptr %16, align 4
  %329 = add i32 %327, -1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %328, ptr noundef nonnull @.str.6, i32 noundef %274, i32 noundef %280, i32 noundef %329) #5
  br label %344

330:                                              ; preds = %18
  %331 = load ptr, ptr %16, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %331, ptr noundef nonnull @.str.7, i32 noundef %21) #5
  br label %344

332:                                              ; preds = %264
  store i32 %223, ptr %11, align 4
  br label %338

333:                                              ; preds = %323
  store i32 %283, ptr %11, align 4
  br label %338

334:                                              ; preds = %197
  %335 = load ptr, ptr %16, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %335, ptr noundef nonnull @.str.4, i32 noundef %199, i32 noundef %207, i32 noundef %21) #5
  br label %344

336:                                              ; preds = %113
  store i32 %79, ptr %11, align 4
  br label %338

337:                                              ; preds = %175
  store i32 %141, ptr %11, align 4
  br label %338

338:                                              ; preds = %337, %336, %333, %332, %273, %213, %210, %197, %185, %123, %59, %48
  %339 = phi i1 [ true, %333 ], [ true, %332 ], [ true, %273 ], [ true, %213 ], [ %20, %123 ], [ %20, %59 ], [ %20, %48 ], [ %20, %185 ], [ %20, %197 ], [ true, %210 ], [ %20, %336 ], [ %20, %337 ]
  %340 = phi i32 [ %19, %333 ], [ %19, %332 ], [ 0, %273 ], [ 0, %213 ], [ %19, %123 ], [ %19, %59 ], [ %19, %48 ], [ %19, %185 ], [ %19, %197 ], [ %211, %210 ], [ %19, %336 ], [ %19, %337 ]
  %341 = load i32, ptr %11, align 4
  %342 = load i32, ptr %12, align 4
  %343 = icmp eq i32 %341, %342
  br i1 %343, label %344, label %18

344:                                              ; preds = %338, %334, %330, %326, %272, %268, %212, %191, %180, %118, %54, %6
  %345 = phi i32 [ -22, %330 ], [ %56, %54 ], [ -22, %118 ], [ -22, %180 ], [ %189, %191 ], [ -22, %268 ], [ -22, %326 ], [ -22, %334 ], [ 0, %6 ], [ -22, %272 ], [ -22, %212 ], [ 0, %338 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #4
  ret i32 %345
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @fw_check_regs_mask(ptr nocapture noundef %0, i32 noundef %1, i16 noundef zeroext %2) unnamed_addr #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #4
  %5 = zext i16 %2 to i32
  store i32 %5, ptr %4, align 4
  %6 = call i32 @_find_next_bit_le(ptr noundef nonnull %4, i32 noundef 16, i32 noundef 0) #4
  %7 = icmp ult i32 %6, 16
  br i1 %7, label %8, label %66

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.tegra_drm_firewall, ptr %0, i32 0, i32 3
  %10 = getelementptr inbounds %struct.tegra_drm_firewall, ptr %0, i32 0, i32 4
  %11 = getelementptr inbounds %struct.tegra_drm_firewall, ptr %0, i32 0, i32 2
  %12 = getelementptr inbounds %struct.tegra_drm_firewall, ptr %0, i32 0, i32 1
  %13 = getelementptr inbounds %struct.tegra_drm_firewall, ptr %0, i32 0, i32 5
  br label %14

14:                                               ; preds = %62, %8
  %15 = phi i32 [ %6, %8 ], [ %64, %62 ]
  %16 = add i32 %15, %1
  %17 = load i32, ptr %9, align 4
  %18 = load i32, ptr %10, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %66, label %20

20:                                               ; preds = %14
  %21 = load ptr, ptr %11, align 4
  %22 = add i32 %17, 1
  store i32 %22, ptr %9, align 4
  %23 = getelementptr i32, ptr %21, i32 %17
  %24 = load i32, ptr %23, align 4
  %25 = load ptr, ptr %12, align 4
  %26 = getelementptr inbounds %struct.tegra_drm_client, ptr %25, i32 0, i32 5
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.tegra_drm_client_ops, ptr %27, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %62, label %31

31:                                               ; preds = %20
  %32 = getelementptr inbounds %struct.host1x_client, ptr %25, i32 0, i32 2
  %33 = load ptr, ptr %32, align 4
  %34 = load i32, ptr %13, align 4
  %35 = call i32 %29(ptr noundef %33, i32 noundef %34, i32 noundef %16) #4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %62, label %37

37:                                               ; preds = %31
  %38 = load ptr, ptr %0, align 4
  %39 = getelementptr inbounds %struct.tegra_drm_submit_data, ptr %38, i32 0, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %66, label %42

42:                                               ; preds = %37
  %43 = load ptr, ptr %38, align 4
  br label %44

44:                                               ; preds = %56, %42
  %45 = phi i1 [ true, %42 ], [ %58, %56 ]
  %46 = phi i32 [ 0, %42 ], [ %57, %56 ]
  %47 = getelementptr %struct.tegra_drm_used_mapping, ptr %43, i32 %46
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.tegra_drm_mapping, ptr %48, i32 0, i32 3
  %50 = load i32, ptr %49, align 4
  %51 = icmp ugt i32 %50, %24
  br i1 %51, label %56, label %52

52:                                               ; preds = %44
  %53 = getelementptr inbounds %struct.tegra_drm_mapping, ptr %48, i32 0, i32 4
  %54 = load i32, ptr %53, align 4
  %55 = icmp ult i32 %54, %24
  br i1 %55, label %56, label %60

56:                                               ; preds = %52, %44
  %57 = add nuw i32 %46, 1
  %58 = icmp ult i32 %57, %40
  %59 = icmp eq i32 %57, %40
  br i1 %59, label %60, label %44

60:                                               ; preds = %56, %52
  %61 = phi i1 [ %58, %56 ], [ %45, %52 ]
  br i1 %61, label %62, label %66

62:                                               ; preds = %60, %31, %20
  %63 = add i32 %15, 1
  %64 = call i32 @_find_next_bit_le(ptr noundef nonnull %4, i32 noundef 16, i32 noundef %63) #4
  %65 = icmp ult i32 %64, 16
  br i1 %65, label %14, label %66

66:                                               ; preds = %62, %60, %37, %14, %3
  %67 = phi i32 [ 0, %3 ], [ -22, %37 ], [ -22, %14 ], [ -22, %60 ], [ 0, %62 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #4
  ret i32 %67
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { cold nounwind }

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
