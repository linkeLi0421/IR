; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvif/mmu.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvif/mmu.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvif_mclass = type { i32, i32 }
%struct.nvif_mmu = type { %struct.nvif_object, i8, i8, i8, i8, i16, i32, ptr, ptr, ptr }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon }
%struct.anon = type { ptr, i64 }
%struct.nvif_mmu_v0 = type { i8, i8, i8, i8, i16 }
%struct.nvif_mmu_heap_v0 = type { i8, i8, [6 x i8], i64 }
%struct.nvif_mmu_type_v0 = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.nvif_sclass = type { i32, i32, i32 }
%struct.anon.0 = type { i64 }
%struct.anon.1 = type { i8, i8 }
%struct.nvif_mmu_kind_v0 = type { i8, i8, i16, [0 x i8] }

@nvif_mmu_ctor.mems = internal unnamed_addr constant [4 x %struct.nvif_mclass] [%struct.nvif_mclass { i32 -2147446773, i32 -1 }, %struct.nvif_mclass { i32 -2147463157, i32 -1 }, %struct.nvif_mclass { i32 -2147483637, i32 -1 }, %struct.nvif_mclass zeroinitializer], align 4
@.str = private unnamed_addr constant [8 x i8] c"nvifMmu\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvif_mmu_dtor(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nvif_mmu, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #6
  %4 = getelementptr inbounds %struct.nvif_mmu, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  tail call void @kfree(ptr noundef %5) #6
  %6 = getelementptr inbounds %struct.nvif_mmu, ptr %0, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  tail call void @kfree(ptr noundef %7) #6
  tail call void @nvif_object_dtor(ptr noundef %0) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_object_dtor(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvif_mmu_ctor(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.nvif_mmu_v0, align 2
  %6 = alloca ptr, align 4
  %7 = alloca %struct.nvif_mmu_heap_v0, align 8
  %8 = alloca %struct.nvif_mmu_type_v0, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %5) #6
  %9 = getelementptr inbounds %struct.nvif_mmu, ptr %3, i32 0, i32 7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %5, i8 0, i64 6, i1 false)
  store ptr null, ptr %9, align 4
  %10 = getelementptr inbounds %struct.nvif_mmu, ptr %3, i32 0, i32 8
  store ptr null, ptr %10, align 8
  %11 = getelementptr inbounds %struct.nvif_mmu, ptr %3, i32 0, i32 9
  store ptr null, ptr %11, align 4
  %12 = icmp eq ptr %1, null
  %13 = select i1 %12, ptr @.str, ptr %1
  %14 = call i32 @nvif_object_ctor(ptr noundef %0, ptr noundef %13, i32 noundef 0, i32 noundef %2, ptr noundef nonnull %5, i32 noundef 6, ptr noundef %3) #6
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %253

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.nvif_mmu_v0, ptr %5, i32 0, i32 1
  %18 = load i8, ptr %17, align 1
  %19 = getelementptr inbounds %struct.nvif_mmu, ptr %3, i32 0, i32 1
  store i8 %18, ptr %19, align 8
  %20 = getelementptr inbounds %struct.nvif_mmu_v0, ptr %5, i32 0, i32 2
  %21 = load i8, ptr %20, align 2
  %22 = getelementptr inbounds %struct.nvif_mmu, ptr %3, i32 0, i32 2
  store i8 %21, ptr %22, align 1
  %23 = getelementptr inbounds %struct.nvif_mmu_v0, ptr %5, i32 0, i32 3
  %24 = load i8, ptr %23, align 1
  %25 = getelementptr inbounds %struct.nvif_mmu, ptr %3, i32 0, i32 3
  store i8 %24, ptr %25, align 2
  %26 = getelementptr inbounds %struct.nvif_mmu_v0, ptr %5, i32 0, i32 4
  %27 = load i16, ptr %26, align 2
  %28 = getelementptr inbounds %struct.nvif_mmu, ptr %3, i32 0, i32 5
  store i16 %27, ptr %28, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #6
  store ptr null, ptr %6, align 4, !annotation !8
  %29 = call i32 @nvif_object_sclass_get(ptr noundef %3, ptr noundef nonnull %6) #6
  %30 = icmp sgt i32 %29, -1
  br i1 %30, label %31, label %34

31:                                               ; preds = %16
  %32 = icmp eq i32 %29, 0
  %33 = load ptr, ptr %6, align 4
  br i1 %32, label %35, label %36

34:                                               ; preds = %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #6
  br label %253

35:                                               ; preds = %83, %69, %52, %31
  call void @nvif_object_sclass_put(ptr noundef nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #6
  br label %253

36:                                               ; preds = %49, %31
  %37 = phi i32 [ %50, %49 ], [ 0, %31 ]
  %38 = getelementptr %struct.nvif_sclass, ptr %33, i32 %37
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, -2147446773
  br i1 %40, label %41, label %49

41:                                               ; preds = %36
  %42 = getelementptr %struct.nvif_sclass, ptr %33, i32 %37, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = icmp sgt i32 %43, -1
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = getelementptr %struct.nvif_sclass, ptr %33, i32 %37, i32 2
  %47 = load i32, ptr %46, align 4
  %48 = icmp slt i32 %47, -1
  br i1 %48, label %49, label %86

49:                                               ; preds = %45, %41, %36
  %50 = add nuw nsw i32 %37, 1
  %51 = icmp eq i32 %50, %29
  br i1 %51, label %52, label %36

52:                                               ; preds = %49
  br i1 %32, label %35, label %53

53:                                               ; preds = %66, %52
  %54 = phi i32 [ %67, %66 ], [ 0, %52 ]
  %55 = getelementptr %struct.nvif_sclass, ptr %33, i32 %54
  %56 = load i32, ptr %55, align 4
  %57 = icmp eq i32 %56, -2147463157
  br i1 %57, label %58, label %66

58:                                               ; preds = %53
  %59 = getelementptr %struct.nvif_sclass, ptr %33, i32 %54, i32 1
  %60 = load i32, ptr %59, align 4
  %61 = icmp sgt i32 %60, -1
  br i1 %61, label %66, label %62

62:                                               ; preds = %58
  %63 = getelementptr %struct.nvif_sclass, ptr %33, i32 %54, i32 2
  %64 = load i32, ptr %63, align 4
  %65 = icmp slt i32 %64, -1
  br i1 %65, label %66, label %86

66:                                               ; preds = %62, %58, %53
  %67 = add nuw nsw i32 %54, 1
  %68 = icmp eq i32 %67, %29
  br i1 %68, label %69, label %53

69:                                               ; preds = %66
  br i1 %32, label %35, label %70

70:                                               ; preds = %83, %69
  %71 = phi i32 [ %84, %83 ], [ 0, %69 ]
  %72 = getelementptr %struct.nvif_sclass, ptr %33, i32 %71
  %73 = load i32, ptr %72, align 4
  %74 = icmp eq i32 %73, -2147483637
  br i1 %74, label %75, label %83

75:                                               ; preds = %70
  %76 = getelementptr %struct.nvif_sclass, ptr %33, i32 %71, i32 1
  %77 = load i32, ptr %76, align 4
  %78 = icmp sgt i32 %77, -1
  br i1 %78, label %83, label %79

79:                                               ; preds = %75
  %80 = getelementptr %struct.nvif_sclass, ptr %33, i32 %71, i32 2
  %81 = load i32, ptr %80, align 4
  %82 = icmp slt i32 %81, -1
  br i1 %82, label %83, label %86

83:                                               ; preds = %79, %75, %70
  %84 = add nuw nsw i32 %71, 1
  %85 = icmp eq i32 %84, %29
  br i1 %85, label %35, label %70

86:                                               ; preds = %79, %62, %45
  %87 = phi i32 [ 2, %79 ], [ 1, %62 ], [ 0, %45 ]
  call void @nvif_object_sclass_put(ptr noundef nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #6
  %88 = getelementptr [4 x %struct.nvif_mclass], ptr @nvif_mmu_ctor.mems, i32 0, i32 %87
  %89 = load i32, ptr %88, align 4
  %90 = getelementptr inbounds %struct.nvif_mmu, ptr %3, i32 0, i32 6
  store i32 %89, ptr %90, align 8
  %91 = load i8, ptr %22, align 1
  %92 = zext i8 %91 to i32
  %93 = shl nuw nsw i32 %92, 3
  %94 = call noalias align 64 ptr @__kmalloc(i32 noundef %93, i32 noundef 3264) #7
  store ptr %94, ptr %9, align 4
  %95 = load i8, ptr %25, align 2
  %96 = zext i8 %95 to i32
  %97 = shl nuw nsw i32 %96, 1
  %98 = call noalias align 64 ptr @__kmalloc(i32 noundef %97, i32 noundef 3264) #7
  store ptr %98, ptr %10, align 8
  %99 = load ptr, ptr %9, align 4
  %100 = icmp eq ptr %99, null
  %101 = icmp eq ptr %98, null
  %102 = select i1 %100, i1 true, i1 %101
  br i1 %102, label %253, label %103

103:                                              ; preds = %86
  %104 = load i16, ptr %28, align 4
  %105 = zext i16 %104 to i32
  %106 = call noalias align 64 ptr @__kmalloc(i32 noundef %105, i32 noundef 3264) #7
  store ptr %106, ptr %11, align 4
  %107 = icmp eq ptr %106, null
  br i1 %107, label %108, label %111

108:                                              ; preds = %103
  %109 = load i16, ptr %28, align 4
  %110 = icmp eq i16 %109, 0
  br i1 %110, label %111, label %253

111:                                              ; preds = %108, %103
  %112 = load i8, ptr %22, align 1
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %118, label %114

114:                                              ; preds = %111
  %115 = getelementptr inbounds %struct.nvif_mmu_heap_v0, ptr %7, i32 0, i32 1
  %116 = getelementptr inbounds %struct.nvif_mmu_heap_v0, ptr %7, i32 0, i32 2
  %117 = getelementptr inbounds %struct.nvif_mmu_heap_v0, ptr %7, i32 0, i32 3
  br label %133

118:                                              ; preds = %139, %111
  %119 = phi i32 [ -12, %111 ], [ 0, %139 ]
  %120 = load i8, ptr %25, align 2
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %227, label %122

122:                                              ; preds = %118
  %123 = getelementptr inbounds %struct.nvif_mmu_type_v0, ptr %8, i32 0, i32 1
  %124 = getelementptr inbounds %struct.nvif_mmu_type_v0, ptr %8, i32 0, i32 2
  %125 = getelementptr inbounds %struct.nvif_mmu_type_v0, ptr %8, i32 0, i32 3
  %126 = getelementptr inbounds %struct.nvif_mmu_type_v0, ptr %8, i32 0, i32 4
  %127 = getelementptr inbounds %struct.nvif_mmu_type_v0, ptr %8, i32 0, i32 5
  %128 = getelementptr inbounds %struct.nvif_mmu_type_v0, ptr %8, i32 0, i32 6
  %129 = getelementptr inbounds %struct.nvif_mmu_type_v0, ptr %8, i32 0, i32 7
  %130 = getelementptr inbounds %struct.nvif_mmu_type_v0, ptr %8, i32 0, i32 8
  %131 = getelementptr inbounds %struct.nvif_mmu_type_v0, ptr %8, i32 0, i32 9
  %132 = getelementptr inbounds %struct.nvif_mmu_type_v0, ptr %8, i32 0, i32 10
  br label %147

133:                                              ; preds = %139, %114
  %134 = phi i32 [ 0, %114 ], [ %143, %139 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #6
  %135 = trunc i32 %134 to i8
  store i64 0, ptr %7, align 8
  store i8 %135, ptr %115, align 1
  call void @llvm.memset.p0.i64(ptr noundef align 2 dereferenceable(14) %116, i8 0, i64 14, i1 false)
  %136 = call i32 @nvif_object_mthd(ptr noundef %3, i32 noundef 0, ptr noundef nonnull %7, i32 noundef 16) #6
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %139, label %138

138:                                              ; preds = %133
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #6
  br label %253

139:                                              ; preds = %133
  %140 = load i64, ptr %117, align 8
  %141 = load ptr, ptr %9, align 4
  %142 = getelementptr %struct.anon.0, ptr %141, i32 %134
  store i64 %140, ptr %142, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #6
  %143 = add nuw nsw i32 %134, 1
  %144 = load i8, ptr %22, align 1
  %145 = zext i8 %144 to i32
  %146 = icmp ult i32 %143, %145
  br i1 %146, label %133, label %118

147:                                              ; preds = %219, %122
  %148 = phi i32 [ 0, %122 ], [ %223, %219 ]
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %8) #6
  %149 = trunc i32 %148 to i8
  store i8 0, ptr %8, align 1
  store i8 %149, ptr %123, align 1
  call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(9) %124, i8 0, i64 9, i1 false)
  %150 = call i32 @nvif_object_mthd(ptr noundef %3, i32 noundef 1, ptr noundef nonnull %8, i32 noundef 11) #6
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %218

152:                                              ; preds = %147
  %153 = load ptr, ptr %10, align 8
  %154 = getelementptr %struct.anon.1, ptr %153, i32 %148
  store i8 0, ptr %154, align 1
  %155 = load i8, ptr %125, align 1
  %156 = icmp eq i8 %155, 0
  br i1 %156, label %162, label %157

157:                                              ; preds = %152
  %158 = load ptr, ptr %10, align 8
  %159 = getelementptr %struct.anon.1, ptr %158, i32 %148
  %160 = load i8, ptr %159, align 1
  %161 = or i8 %160, 1
  store i8 %161, ptr %159, align 1
  br label %162

162:                                              ; preds = %157, %152
  %163 = load i8, ptr %126, align 1
  %164 = icmp eq i8 %163, 0
  br i1 %164, label %170, label %165

165:                                              ; preds = %162
  %166 = load ptr, ptr %10, align 8
  %167 = getelementptr %struct.anon.1, ptr %166, i32 %148
  %168 = load i8, ptr %167, align 1
  %169 = or i8 %168, 2
  store i8 %169, ptr %167, align 1
  br label %170

170:                                              ; preds = %165, %162
  %171 = load i8, ptr %127, align 1
  %172 = icmp eq i8 %171, 0
  br i1 %172, label %178, label %173

173:                                              ; preds = %170
  %174 = load ptr, ptr %10, align 8
  %175 = getelementptr %struct.anon.1, ptr %174, i32 %148
  %176 = load i8, ptr %175, align 1
  %177 = or i8 %176, 4
  store i8 %177, ptr %175, align 1
  br label %178

178:                                              ; preds = %173, %170
  %179 = load i8, ptr %128, align 1
  %180 = icmp eq i8 %179, 0
  br i1 %180, label %186, label %181

181:                                              ; preds = %178
  %182 = load ptr, ptr %10, align 8
  %183 = getelementptr %struct.anon.1, ptr %182, i32 %148
  %184 = load i8, ptr %183, align 1
  %185 = or i8 %184, 8
  store i8 %185, ptr %183, align 1
  br label %186

186:                                              ; preds = %181, %178
  %187 = load i8, ptr %129, align 1
  %188 = icmp eq i8 %187, 0
  br i1 %188, label %194, label %189

189:                                              ; preds = %186
  %190 = load ptr, ptr %10, align 8
  %191 = getelementptr %struct.anon.1, ptr %190, i32 %148
  %192 = load i8, ptr %191, align 1
  %193 = or i8 %192, 16
  store i8 %193, ptr %191, align 1
  br label %194

194:                                              ; preds = %189, %186
  %195 = load i8, ptr %130, align 1
  %196 = icmp eq i8 %195, 0
  br i1 %196, label %202, label %197

197:                                              ; preds = %194
  %198 = load ptr, ptr %10, align 8
  %199 = getelementptr %struct.anon.1, ptr %198, i32 %148
  %200 = load i8, ptr %199, align 1
  %201 = or i8 %200, 32
  store i8 %201, ptr %199, align 1
  br label %202

202:                                              ; preds = %197, %194
  %203 = load i8, ptr %131, align 1
  %204 = icmp eq i8 %203, 0
  br i1 %204, label %210, label %205

205:                                              ; preds = %202
  %206 = load ptr, ptr %10, align 8
  %207 = getelementptr %struct.anon.1, ptr %206, i32 %148
  %208 = load i8, ptr %207, align 1
  %209 = or i8 %208, 64
  store i8 %209, ptr %207, align 1
  br label %210

210:                                              ; preds = %205, %202
  %211 = load i8, ptr %132, align 1
  %212 = icmp eq i8 %211, 0
  br i1 %212, label %219, label %213

213:                                              ; preds = %210
  %214 = load ptr, ptr %10, align 8
  %215 = getelementptr %struct.anon.1, ptr %214, i32 %148
  %216 = load i8, ptr %215, align 1
  %217 = or i8 %216, -128
  store i8 %217, ptr %215, align 1
  br label %219

218:                                              ; preds = %147
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %8) #6
  br label %253

219:                                              ; preds = %213, %210
  %220 = load i8, ptr %124, align 1
  %221 = load ptr, ptr %10, align 8
  %222 = getelementptr %struct.anon.1, ptr %221, i32 %148, i32 1
  store i8 %220, ptr %222, align 1
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %8) #6
  %223 = add nuw nsw i32 %148, 1
  %224 = load i8, ptr %25, align 2
  %225 = zext i8 %224 to i32
  %226 = icmp ult i32 %223, %225
  br i1 %226, label %147, label %227

227:                                              ; preds = %219, %118
  %228 = phi i32 [ %119, %118 ], [ 0, %219 ]
  %229 = load i16, ptr %28, align 4
  %230 = icmp eq i16 %229, 0
  br i1 %230, label %250, label %231

231:                                              ; preds = %227
  %232 = zext i16 %229 to i32
  %233 = add nuw nsw i32 %232, 4
  %234 = call noalias align 64 ptr @__kmalloc(i32 noundef %233, i32 noundef 3264) #7
  %235 = icmp eq ptr %234, null
  br i1 %235, label %253, label %236

236:                                              ; preds = %231
  store i8 0, ptr %234, align 64
  %237 = load i16, ptr %28, align 4
  %238 = getelementptr inbounds %struct.nvif_mmu_kind_v0, ptr %234, i32 0, i32 2
  store i16 %237, ptr %238, align 2
  %239 = call i32 @nvif_object_mthd(ptr noundef %3, i32 noundef 2, ptr noundef nonnull %234, i32 noundef %233) #6
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %241, label %246

241:                                              ; preds = %236
  %242 = load ptr, ptr %11, align 4
  %243 = getelementptr inbounds %struct.nvif_mmu_kind_v0, ptr %234, i32 0, i32 3
  %244 = load i16, ptr %238, align 2
  %245 = zext i16 %244 to i32
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %242, ptr align 4 %243, i32 %245, i1 false)
  br label %246

246:                                              ; preds = %241, %236
  %247 = getelementptr inbounds %struct.nvif_mmu_kind_v0, ptr %234, i32 0, i32 1
  %248 = load i8, ptr %247, align 1
  %249 = getelementptr inbounds %struct.nvif_mmu, ptr %3, i32 0, i32 4
  store i8 %248, ptr %249, align 1
  call void @kfree(ptr noundef nonnull %234) #6
  br label %250

250:                                              ; preds = %246, %227
  %251 = phi i32 [ %228, %227 ], [ %239, %246 ]
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %258, label %253

253:                                              ; preds = %250, %231, %218, %138, %108, %86, %35, %34, %4
  %254 = phi i32 [ %251, %250 ], [ -19, %35 ], [ -19, %34 ], [ -12, %231 ], [ -12, %86 ], [ -12, %108 ], [ %150, %218 ], [ %136, %138 ], [ %14, %4 ]
  %255 = load ptr, ptr %11, align 4
  call void @kfree(ptr noundef %255) #6
  %256 = load ptr, ptr %10, align 8
  call void @kfree(ptr noundef %256) #6
  %257 = load ptr, ptr %9, align 4
  call void @kfree(ptr noundef %257) #6
  call void @nvif_object_dtor(ptr noundef %3) #6
  br label %258

258:                                              ; preds = %253, %250
  %259 = phi i32 [ 0, %250 ], [ %254, %253 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %5) #6
  ret i32 %259
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_sclass_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_object_sclass_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_mthd(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(0) }

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
