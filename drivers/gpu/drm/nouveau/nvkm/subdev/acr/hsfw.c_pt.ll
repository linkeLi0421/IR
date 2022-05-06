; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/acr/hsfw.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/acr/hsfw.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_acr = type { ptr, %struct.nvkm_subdev, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i64, ptr, i64, i64, i64, ptr, ptr, i8, ptr, i8, i64 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_acr_hsf_fwif = type { i32, ptr, ptr }
%struct.nvkm_acr_hsfw = type { ptr, ptr, %struct.list_head, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.anon }
%struct.anon = type { %struct.anon.0, %struct.anon.0, i32 }
%struct.anon.0 = type { ptr, i32 }
%struct.firmware = type { i32, ptr, ptr }
%struct.nvfw_bin_hdr = type { i32, i32, i32, i32, i32, i32 }
%struct.nvfw_bl_desc = type { i32, i32, i32, i32, i32, i32 }
%struct.nvfw_hs_header = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nvfw_hs_load_header = type { i32, i32, i32, i32, i32, [0 x i32] }

@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_acr_hsfw_del_all(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %21, label %5

5:                                                ; preds = %5, %1
  %6 = phi ptr [ %8, %5 ], [ %3, %1 ]
  %7 = getelementptr i8, ptr %6, i32 -8
  %8 = load ptr, ptr %6, align 4
  %9 = getelementptr i8, ptr %6, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  store ptr %10, ptr %11, align 4
  store volatile ptr %8, ptr %10, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %9, align 4
  %12 = getelementptr i8, ptr %6, i32 16
  %13 = load ptr, ptr %12, align 4
  tail call void @kfree(ptr noundef %13) #6
  %14 = getelementptr i8, ptr %6, i32 20
  %15 = load ptr, ptr %14, align 4
  tail call void @kfree(ptr noundef %15) #6
  %16 = getelementptr i8, ptr %6, i32 52
  %17 = load ptr, ptr %16, align 4
  tail call void @kfree(ptr noundef %17) #6
  %18 = getelementptr i8, ptr %6, i32 60
  %19 = load ptr, ptr %18, align 4
  tail call void @kfree(ptr noundef %19) #6
  tail call void @kfree(ptr noundef %7) #6
  %20 = icmp eq ptr %8, %2
  br i1 %20, label %21, label %5

21:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_acr_hsfw_load(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #0 {
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %10 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 80) #7
  %11 = icmp eq ptr %10, null
  br i1 %11, label %176, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.nvkm_acr_hsf_fwif, ptr %5, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  store ptr %14, ptr %10, align 8
  %15 = getelementptr inbounds %struct.nvkm_acr_hsfw, ptr %10, i32 0, i32 1
  store ptr %3, ptr %15, align 4
  %16 = getelementptr inbounds %struct.nvkm_acr_hsfw, ptr %10, i32 0, i32 2
  %17 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 2
  %18 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 2, i32 1
  %19 = load ptr, ptr %18, align 4
  store ptr %16, ptr %18, align 4
  store ptr %17, ptr %16, align 8
  %20 = getelementptr inbounds %struct.nvkm_acr_hsfw, ptr %10, i32 0, i32 2, i32 1
  store ptr %19, ptr %20, align 4
  store volatile ptr %16, ptr %19, align 4
  %21 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #6
  store ptr null, ptr %8, align 4, !annotation !8
  %22 = call i32 @nvkm_firmware_get(ptr noundef %21, ptr noundef %1, i32 noundef %4, ptr noundef nonnull %8) #6
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %57

24:                                               ; preds = %12
  %25 = load ptr, ptr %8, align 4
  %26 = getelementptr inbounds %struct.firmware, ptr %25, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = call ptr @nvfw_bin_hdr(ptr noundef %21, ptr noundef %27) #6
  %29 = load ptr, ptr %8, align 4
  %30 = getelementptr inbounds %struct.firmware, ptr %29, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.nvfw_bin_hdr, ptr %28, i32 0, i32 3
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr i8, ptr %31, i32 %33
  %35 = call ptr @nvfw_bl_desc(ptr noundef %21, ptr noundef %34) #6
  %36 = load ptr, ptr %8, align 4
  %37 = getelementptr inbounds %struct.firmware, ptr %36, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.nvfw_bin_hdr, ptr %28, i32 0, i32 4
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr i8, ptr %38, i32 %40
  %42 = getelementptr inbounds %struct.nvfw_bl_desc, ptr %35, i32 0, i32 3
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr inbounds %struct.nvkm_acr_hsfw, ptr %10, i32 0, i32 3
  store i32 %43, ptr %44, align 8
  %45 = load i32, ptr %35, align 4
  %46 = getelementptr inbounds %struct.nvkm_acr_hsfw, ptr %10, i32 0, i32 4
  store i32 %45, ptr %46, align 4
  %47 = load i32, ptr %42, align 4
  %48 = call noalias align 64 ptr @__kmalloc(i32 noundef %47, i32 noundef 3264) #8
  %49 = getelementptr inbounds %struct.nvkm_acr_hsfw, ptr %10, i32 0, i32 5
  store ptr %48, ptr %49, align 8
  %50 = getelementptr inbounds %struct.nvfw_bl_desc, ptr %35, i32 0, i32 2
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr i8, ptr %41, i32 %51
  %53 = load i32, ptr %42, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 64 %48, ptr align 1 %52, i32 %53, i1 false) #6
  %54 = load ptr, ptr %8, align 4
  call void @nvkm_firmware_put(ptr noundef %54) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #6
  store ptr null, ptr %7, align 4, !annotation !8
  %55 = call i32 @nvkm_firmware_get(ptr noundef %21, ptr noundef %2, i32 noundef %4, ptr noundef nonnull %7) #6
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %58, label %59

57:                                               ; preds = %12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #6
  br label %163

58:                                               ; preds = %24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #6
  br label %163

59:                                               ; preds = %24
  %60 = load ptr, ptr %7, align 4
  %61 = getelementptr inbounds %struct.firmware, ptr %60, i32 0, i32 1
  %62 = load ptr, ptr %61, align 4
  %63 = call ptr @nvfw_bin_hdr(ptr noundef %21, ptr noundef %62) #6
  %64 = load ptr, ptr %7, align 4
  %65 = getelementptr inbounds %struct.firmware, ptr %64, i32 0, i32 1
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.nvfw_bin_hdr, ptr %63, i32 0, i32 3
  %68 = load i32, ptr %67, align 4
  %69 = getelementptr i8, ptr %66, i32 %68
  %70 = call ptr @nvfw_hs_header(ptr noundef %21, ptr noundef %69) #6
  %71 = load i32, ptr %63, align 4
  switch i32 %71, label %156 [
    i32 4318, label %72
    i32 991761648, label %82
  ]

72:                                               ; preds = %59
  %73 = load ptr, ptr %7, align 4
  %74 = getelementptr inbounds %struct.firmware, ptr %73, i32 0, i32 1
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.nvfw_hs_header, ptr %70, i32 0, i32 4
  %77 = load i32, ptr %76, align 4
  %78 = getelementptr i8, ptr %75, i32 %77
  %79 = getelementptr inbounds %struct.nvfw_hs_header, ptr %70, i32 0, i32 5
  %80 = load i32, ptr %79, align 4
  %81 = getelementptr i8, ptr %75, i32 %80
  br label %88

82:                                               ; preds = %59
  %83 = getelementptr inbounds %struct.nvfw_hs_header, ptr %70, i32 0, i32 4
  %84 = getelementptr inbounds %struct.nvfw_hs_header, ptr %70, i32 0, i32 5
  %85 = load ptr, ptr %7, align 4
  %86 = getelementptr inbounds %struct.firmware, ptr %85, i32 0, i32 1
  %87 = load ptr, ptr %86, align 4
  br label %88

88:                                               ; preds = %82, %72
  %89 = phi ptr [ %87, %82 ], [ %75, %72 ]
  %90 = phi ptr [ %83, %82 ], [ %78, %72 ]
  %91 = phi ptr [ %84, %82 ], [ %81, %72 ]
  %92 = load i32, ptr %91, align 4
  %93 = load i32, ptr %90, align 4
  %94 = getelementptr inbounds %struct.nvfw_hs_header, ptr %70, i32 0, i32 6
  %95 = load i32, ptr %94, align 4
  %96 = getelementptr i8, ptr %89, i32 %95
  %97 = call ptr @nvfw_hs_load_header(ptr noundef %21, ptr noundef %96) #6
  %98 = getelementptr inbounds %struct.nvfw_bin_hdr, ptr %63, i32 0, i32 5
  %99 = load i32, ptr %98, align 4
  %100 = call noalias align 64 ptr @__kmalloc(i32 noundef %99, i32 noundef 3264) #8
  %101 = getelementptr inbounds %struct.nvkm_acr_hsfw, ptr %10, i32 0, i32 6
  store ptr %100, ptr %101, align 4
  %102 = icmp eq ptr %100, null
  br i1 %102, label %156, label %103

103:                                              ; preds = %88
  %104 = load ptr, ptr %7, align 4
  %105 = getelementptr inbounds %struct.firmware, ptr %104, i32 0, i32 1
  %106 = load ptr, ptr %105, align 4
  %107 = getelementptr inbounds %struct.nvfw_bin_hdr, ptr %63, i32 0, i32 4
  %108 = load i32, ptr %107, align 4
  %109 = getelementptr i8, ptr %106, i32 %108
  %110 = load i32, ptr %98, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 64 %100, ptr align 1 %109, i32 %110, i1 false) #6
  %111 = load i32, ptr %98, align 4
  %112 = getelementptr inbounds %struct.nvkm_acr_hsfw, ptr %10, i32 0, i32 7
  store i32 %111, ptr %112, align 8
  %113 = load i32, ptr %97, align 4
  %114 = getelementptr inbounds %struct.nvkm_acr_hsfw, ptr %10, i32 0, i32 8
  store i32 %113, ptr %114, align 4
  %115 = getelementptr inbounds %struct.nvfw_hs_load_header, ptr %97, i32 0, i32 1
  %116 = load i32, ptr %115, align 4
  %117 = getelementptr inbounds %struct.nvkm_acr_hsfw, ptr %10, i32 0, i32 9
  store i32 %116, ptr %117, align 8
  %118 = getelementptr inbounds %struct.nvfw_hs_load_header, ptr %97, i32 0, i32 5
  %119 = load i32, ptr %118, align 4
  %120 = getelementptr inbounds %struct.nvkm_acr_hsfw, ptr %10, i32 0, i32 10
  store i32 %119, ptr %120, align 4
  %121 = getelementptr inbounds %struct.nvfw_hs_load_header, ptr %97, i32 0, i32 4
  %122 = load i32, ptr %121, align 4
  %123 = getelementptr %struct.nvfw_hs_load_header, ptr %97, i32 0, i32 5, i32 %122
  %124 = load i32, ptr %123, align 4
  %125 = getelementptr inbounds %struct.nvkm_acr_hsfw, ptr %10, i32 0, i32 11
  store i32 %124, ptr %125, align 8
  %126 = getelementptr inbounds %struct.nvfw_hs_load_header, ptr %97, i32 0, i32 2
  %127 = load i32, ptr %126, align 4
  %128 = getelementptr inbounds %struct.nvkm_acr_hsfw, ptr %10, i32 0, i32 12
  store i32 %127, ptr %128, align 4
  %129 = getelementptr inbounds %struct.nvfw_hs_load_header, ptr %97, i32 0, i32 3
  %130 = load i32, ptr %129, align 4
  %131 = getelementptr inbounds %struct.nvkm_acr_hsfw, ptr %10, i32 0, i32 13
  store i32 %130, ptr %131, align 8
  %132 = getelementptr inbounds %struct.nvfw_hs_header, ptr %70, i32 0, i32 3
  %133 = load i32, ptr %132, align 4
  %134 = getelementptr inbounds %struct.nvkm_acr_hsfw, ptr %10, i32 0, i32 14
  %135 = getelementptr inbounds %struct.nvkm_acr_hsfw, ptr %10, i32 0, i32 14, i32 0, i32 1
  store i32 %133, ptr %135, align 8
  %136 = load ptr, ptr %105, align 4
  %137 = getelementptr inbounds %struct.nvfw_hs_header, ptr %70, i32 0, i32 2
  %138 = load i32, ptr %137, align 4
  %139 = getelementptr i8, ptr %136, i32 %138
  %140 = getelementptr i8, ptr %139, i32 %92
  %141 = call ptr @kmemdup(ptr noundef %140, i32 noundef %133, i32 noundef 3264) #6
  store ptr %141, ptr %134, align 4
  %142 = icmp eq ptr %141, null
  br i1 %142, label %156, label %143

143:                                              ; preds = %103
  %144 = getelementptr inbounds %struct.nvfw_hs_header, ptr %70, i32 0, i32 1
  %145 = load i32, ptr %144, align 4
  %146 = getelementptr inbounds %struct.nvkm_acr_hsfw, ptr %10, i32 0, i32 14, i32 1
  %147 = getelementptr inbounds %struct.nvkm_acr_hsfw, ptr %10, i32 0, i32 14, i32 1, i32 1
  store i32 %145, ptr %147, align 8
  %148 = load ptr, ptr %7, align 4
  %149 = getelementptr inbounds %struct.firmware, ptr %148, i32 0, i32 1
  %150 = load ptr, ptr %149, align 4
  %151 = load i32, ptr %70, align 4
  %152 = getelementptr i8, ptr %150, i32 %151
  %153 = getelementptr i8, ptr %152, i32 %92
  %154 = call ptr @kmemdup(ptr noundef %153, i32 noundef %145, i32 noundef 3264) #6
  store ptr %154, ptr %146, align 4
  %155 = icmp eq ptr %154, null
  br i1 %155, label %156, label %159

156:                                              ; preds = %143, %103, %88, %59
  %157 = phi i32 [ -12, %143 ], [ -12, %103 ], [ -12, %88 ], [ -22, %59 ]
  %158 = load ptr, ptr %7, align 4
  call void @nvkm_firmware_put(ptr noundef %158) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #6
  br label %163

159:                                              ; preds = %143
  %160 = getelementptr inbounds %struct.nvkm_acr_hsfw, ptr %10, i32 0, i32 14, i32 2
  store i32 %93, ptr %160, align 4
  %161 = load ptr, ptr %7, align 4
  call void @nvkm_firmware_put(ptr noundef %161) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #6
  %162 = icmp eq i32 %55, 0
  br i1 %162, label %176, label %163

163:                                              ; preds = %159, %156, %58, %57
  %164 = phi i32 [ %22, %57 ], [ %55, %159 ], [ %55, %58 ], [ %157, %156 ]
  %165 = load ptr, ptr %20, align 4
  %166 = load ptr, ptr %16, align 8
  %167 = getelementptr inbounds %struct.list_head, ptr %166, i32 0, i32 1
  store ptr %165, ptr %167, align 4
  store volatile ptr %166, ptr %165, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %16, align 8
  store ptr inttoptr (i32 290 to ptr), ptr %20, align 4
  %168 = getelementptr inbounds %struct.nvkm_acr_hsfw, ptr %10, i32 0, i32 5
  %169 = load ptr, ptr %168, align 8
  call void @kfree(ptr noundef %169) #6
  %170 = getelementptr inbounds %struct.nvkm_acr_hsfw, ptr %10, i32 0, i32 6
  %171 = load ptr, ptr %170, align 4
  call void @kfree(ptr noundef %171) #6
  %172 = getelementptr inbounds %struct.nvkm_acr_hsfw, ptr %10, i32 0, i32 14
  %173 = load ptr, ptr %172, align 4
  call void @kfree(ptr noundef %173) #6
  %174 = getelementptr inbounds %struct.nvkm_acr_hsfw, ptr %10, i32 0, i32 14, i32 1
  %175 = load ptr, ptr %174, align 4
  call void @kfree(ptr noundef %175) #6
  call void @kfree(ptr noundef nonnull %10) #6
  br label %176

176:                                              ; preds = %163, %159, %6
  %177 = phi i32 [ -12, %6 ], [ %164, %163 ], [ 0, %159 ]
  ret i32 %177
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_firmware_get(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvfw_bin_hdr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvfw_bl_desc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_firmware_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvfw_hs_header(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvfw_hs_load_header(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(2) }
attributes #8 = { nounwind allocsize(0) }

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
