; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nouveau_bo5039.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nouveau_bo5039.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.anon = type { %struct.nvif_push, ptr }
%struct.nvif_push = type { ptr, ptr, %struct.nvif_mem, ptr, ptr, ptr, ptr }
%struct.nvif_mem = type { %struct.nvif_object, i8, i8, i64, i64 }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon.0 }
%struct.anon.0 = type { ptr, i64 }
%struct.ttm_resource = type { i32, i32, i32, i32, %struct.ttm_bus_placement }
%struct.ttm_bus_placement = type { ptr, i32, i8, i32 }
%struct.nouveau_mem = type { %struct.ttm_resource, ptr, i8, i8, %struct.nvif_mem, [2 x %struct.nvif_vma] }
%struct.nvif_vma = type { i64, i64 }
%struct.nouveau_channel = type { %struct.anon, ptr, ptr, ptr, i32, i64, i32, %struct.nvif_object, %struct.nvif_object, %struct.nvif_object, %struct.anon.99, i8, ptr, %struct.anon.100, i32, i32, i32, %struct.nvif_object, %struct.nvif_notify, %struct.atomic_t }
%struct.anon.99 = type { ptr, ptr, %struct.nvif_object, i64 }
%struct.anon.100 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nvif_notify = type { ptr, ptr, i32, i32, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.nouveau_drm = type { %struct.nvif_parent, %struct.nouveau_cli, %struct.nouveau_cli, ptr, %struct.list_head, %struct.mutex, i8, %struct.anon.81, %struct.anon.82, %struct.anon.84, ptr, %struct.anon.85, ptr, ptr, ptr, ptr, %struct.nvif_object, %struct.anon.86, %struct.nvbios, ptr, %struct.work_struct, %struct.mutex, i32, %struct.work_struct, i32, ptr, ptr, ptr, %struct.dev_pm_domain, ptr, ptr, %struct.anon.98 }
%struct.nvif_parent = type { ptr }
%struct.nouveau_cli = type { %struct.nvif_client, ptr, %struct.mutex, %struct.nvif_device, %struct.nvif_mmu, %struct.nouveau_vmm, %struct.nouveau_vmm, ptr, %struct.list_head, ptr, %struct.list_head, %struct.list_head, [32 x i8], %struct.work_struct, %struct.list_head, %struct.mutex }
%struct.nvif_client = type { %struct.nvif_object, ptr, i64, i8 }
%struct.nvif_device = type { %struct.nvif_object, %struct.nv_device_info_v0, ptr, i32, %struct.nvif_user }
%struct.nv_device_info_v0 = type { i8, i8, i16, i8, i8, [2 x i8], i64, i64, [16 x i8], [64 x i8] }
%struct.nvif_user = type { ptr, %struct.nvif_object }
%struct.nvif_mmu = type { %struct.nvif_object, i8, i8, i8, i8, i16, i32, ptr, ptr, ptr }
%struct.nouveau_vmm = type { ptr, %struct.nvif_vmm, ptr }
%struct.nvif_vmm = type { %struct.nvif_object, i64, i64, ptr, i32 }
%struct.anon.81 = type { ptr, i32, i32, i8 }
%struct.anon.82 = type { %struct.ttm_device, %struct.atomic_t, ptr, ptr, %struct.nvif_object, i32, i32, [2 x i32], [2 x i32], %struct.mutex, %struct.list_head }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.83] }
%struct.anon.83 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.4 }
%union.anon.4 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.84 = type { i64, i64 }
%struct.anon.85 = type { i32, i64 }
%struct.anon.86 = type { [15 x %struct.nouveau_drm_tile], %struct.spinlock }
%struct.nouveau_drm_tile = type { ptr, i8 }
%struct.nvbios = type { ptr, i32, i16, i32, ptr, i8, i32, i32, i8, i8, %struct.spinlock, i8, i8, i8, i8, i32, i32, i8, i16, i16, i16, i8, %struct.dcb_table, %struct.anon.93, %struct.anon.94, %struct.anon.95, %struct.anon.96 }
%struct.dcb_table = type { i8, i32, [16 x %struct.dcb_output] }
%struct.dcb_output = type { i32, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %union.anon.87, i8 }
%union.anon.87 = type { %struct.anon.91 }
%struct.anon.91 = type { %struct.sor_conf, i32, i32 }
%struct.sor_conf = type { i32 }
%struct.anon.93 = type { i32 }
%struct.anon.94 = type { i16, i16, i32, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i8, ptr, i32, i8 }
%struct.anon.95 = type { i16, i16 }
%struct.anon.96 = type { i16, i16, i16, %struct.anon.97, i16 }
%struct.anon.97 = type { i8, i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.98 = type { ptr, %struct.mutex, i8 }

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv50_bo_move_m2mf(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.ttm_resource, ptr %3, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = shl i32 %8, 12
  %10 = getelementptr inbounds %struct.nouveau_mem, ptr %2, i32 0, i32 2
  %11 = load i8, ptr %10, align 4
  %12 = icmp ne i8 %11, 0
  %13 = getelementptr inbounds %struct.nouveau_mem, ptr %3, i32 0, i32 2
  %14 = load i8, ptr %13, align 4
  %15 = icmp ne i8 %14, 0
  %16 = icmp eq i32 %9, 0
  br i1 %16, label %128, label %17

17:                                               ; preds = %4
  %18 = zext i32 %9 to i64
  %19 = zext i1 %15 to i32
  %20 = zext i1 %12 to i32
  %21 = getelementptr %struct.nouveau_mem, ptr %2, i32 0, i32 5, i32 1
  %22 = load i64, ptr %21, align 8
  %23 = getelementptr inbounds %struct.nouveau_mem, ptr %2, i32 0, i32 5
  %24 = load i64, ptr %23, align 8
  %25 = add nuw nsw i32 %19, %20
  %26 = mul nuw nsw i32 %25, 6
  %27 = add nuw nsw i32 %26, 18
  %28 = getelementptr inbounds %struct.nvif_push, ptr %6, i32 0, i32 4
  %29 = getelementptr inbounds %struct.nvif_push, ptr %6, i32 0, i32 6
  br label %30

30:                                               ; preds = %87, %17
  %31 = phi i64 [ %18, %17 ], [ %124, %87 ]
  %32 = phi i64 [ %24, %17 ], [ %125, %87 ]
  %33 = phi i64 [ %22, %17 ], [ %126, %87 ]
  %34 = load ptr, ptr %28, align 4
  %35 = getelementptr i32, ptr %34, i32 %27
  %36 = load ptr, ptr %29, align 4
  %37 = icmp ult ptr %35, %36
  br i1 %37, label %42, label %38

38:                                               ; preds = %30
  %39 = load ptr, ptr %6, align 8
  %40 = tail call i32 %39(ptr noundef %6, i32 noundef %27) #2
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %128

42:                                               ; preds = %38, %30
  %43 = tail call i64 @llvm.umin.i64(i64 %31, i64 4194304)
  %44 = trunc i64 %43 to i32
  %45 = lshr i32 %44, 6
  %46 = load ptr, ptr %28, align 4
  %47 = getelementptr i32, ptr %46, i32 1
  store ptr %47, ptr %28, align 4
  br i1 %12, label %48, label %63

48:                                               ; preds = %42
  store i32 1868288, ptr %46, align 4
  %49 = load ptr, ptr %28, align 4
  %50 = getelementptr i32, ptr %49, i32 1
  store ptr %50, ptr %28, align 4
  store i32 0, ptr %49, align 4
  %51 = load ptr, ptr %28, align 4
  %52 = getelementptr i32, ptr %51, i32 1
  store ptr %52, ptr %28, align 4
  store i32 0, ptr %51, align 4
  %53 = load ptr, ptr %28, align 4
  %54 = getelementptr i32, ptr %53, i32 1
  store ptr %54, ptr %28, align 4
  store i32 64, ptr %53, align 4
  %55 = load ptr, ptr %28, align 4
  %56 = getelementptr i32, ptr %55, i32 1
  store ptr %56, ptr %28, align 4
  store i32 %45, ptr %55, align 4
  %57 = load ptr, ptr %28, align 4
  %58 = getelementptr i32, ptr %57, i32 1
  store ptr %58, ptr %28, align 4
  store i32 1, ptr %57, align 4
  %59 = load ptr, ptr %28, align 4
  %60 = getelementptr i32, ptr %59, i32 1
  store ptr %60, ptr %28, align 4
  store i32 0, ptr %59, align 4
  %61 = load ptr, ptr %28, align 4
  %62 = getelementptr i32, ptr %61, i32 1
  store ptr %62, ptr %28, align 4
  store i32 0, ptr %61, align 4
  br label %66

63:                                               ; preds = %42
  store i32 295424, ptr %46, align 4
  %64 = load ptr, ptr %28, align 4
  %65 = getelementptr i32, ptr %64, i32 1
  store ptr %65, ptr %28, align 4
  store i32 1, ptr %64, align 4
  br label %66

66:                                               ; preds = %63, %48
  %67 = load ptr, ptr %28, align 4
  %68 = getelementptr i32, ptr %67, i32 1
  store ptr %68, ptr %28, align 4
  br i1 %15, label %69, label %84

69:                                               ; preds = %66
  store i32 1868316, ptr %67, align 4
  %70 = load ptr, ptr %28, align 4
  %71 = getelementptr i32, ptr %70, i32 1
  store ptr %71, ptr %28, align 4
  store i32 0, ptr %70, align 4
  %72 = load ptr, ptr %28, align 4
  %73 = getelementptr i32, ptr %72, i32 1
  store ptr %73, ptr %28, align 4
  store i32 0, ptr %72, align 4
  %74 = load ptr, ptr %28, align 4
  %75 = getelementptr i32, ptr %74, i32 1
  store ptr %75, ptr %28, align 4
  store i32 64, ptr %74, align 4
  %76 = load ptr, ptr %28, align 4
  %77 = getelementptr i32, ptr %76, i32 1
  store ptr %77, ptr %28, align 4
  store i32 %45, ptr %76, align 4
  %78 = load ptr, ptr %28, align 4
  %79 = getelementptr i32, ptr %78, i32 1
  store ptr %79, ptr %28, align 4
  store i32 1, ptr %78, align 4
  %80 = load ptr, ptr %28, align 4
  %81 = getelementptr i32, ptr %80, i32 1
  store ptr %81, ptr %28, align 4
  store i32 0, ptr %80, align 4
  %82 = load ptr, ptr %28, align 4
  %83 = getelementptr i32, ptr %82, i32 1
  store ptr %83, ptr %28, align 4
  store i32 0, ptr %82, align 4
  br label %87

84:                                               ; preds = %66
  store i32 295452, ptr %67, align 4
  %85 = load ptr, ptr %28, align 4
  %86 = getelementptr i32, ptr %85, i32 1
  store ptr %86, ptr %28, align 4
  store i32 1, ptr %85, align 4
  br label %87

87:                                               ; preds = %84, %69
  %88 = load ptr, ptr %28, align 4
  %89 = getelementptr i32, ptr %88, i32 1
  store ptr %89, ptr %28, align 4
  store i32 557624, ptr %88, align 4
  %90 = lshr i64 %32, 32
  %91 = trunc i64 %90 to i32
  %92 = and i32 %91, 255
  %93 = load ptr, ptr %28, align 4
  %94 = getelementptr i32, ptr %93, i32 1
  store ptr %94, ptr %28, align 4
  store i32 %92, ptr %93, align 4
  %95 = lshr i64 %33, 32
  %96 = trunc i64 %95 to i32
  %97 = and i32 %96, 255
  %98 = load ptr, ptr %28, align 4
  %99 = getelementptr i32, ptr %98, i32 1
  store ptr %99, ptr %28, align 4
  store i32 %97, ptr %98, align 4
  %100 = load ptr, ptr %28, align 4
  %101 = getelementptr i32, ptr %100, i32 1
  store ptr %101, ptr %28, align 4
  store i32 2130700, ptr %100, align 4
  %102 = trunc i64 %32 to i32
  %103 = load ptr, ptr %28, align 4
  %104 = getelementptr i32, ptr %103, i32 1
  store ptr %104, ptr %28, align 4
  store i32 %102, ptr %103, align 4
  %105 = trunc i64 %33 to i32
  %106 = load ptr, ptr %28, align 4
  %107 = getelementptr i32, ptr %106, i32 1
  store ptr %107, ptr %28, align 4
  store i32 %105, ptr %106, align 4
  %108 = load ptr, ptr %28, align 4
  %109 = getelementptr i32, ptr %108, i32 1
  store ptr %109, ptr %28, align 4
  store i32 64, ptr %108, align 4
  %110 = load ptr, ptr %28, align 4
  %111 = getelementptr i32, ptr %110, i32 1
  store ptr %111, ptr %28, align 4
  store i32 64, ptr %110, align 4
  %112 = load ptr, ptr %28, align 4
  %113 = getelementptr i32, ptr %112, i32 1
  store ptr %113, ptr %28, align 4
  store i32 64, ptr %112, align 4
  %114 = load ptr, ptr %28, align 4
  %115 = getelementptr i32, ptr %114, i32 1
  store ptr %115, ptr %28, align 4
  store i32 %45, ptr %114, align 4
  %116 = load ptr, ptr %28, align 4
  %117 = getelementptr i32, ptr %116, i32 1
  store ptr %117, ptr %28, align 4
  store i32 257, ptr %116, align 4
  %118 = load ptr, ptr %28, align 4
  %119 = getelementptr i32, ptr %118, i32 1
  store ptr %119, ptr %28, align 4
  store i32 0, ptr %118, align 4
  %120 = load ptr, ptr %28, align 4
  %121 = getelementptr i32, ptr %120, i32 1
  store ptr %121, ptr %28, align 4
  store i32 295168, ptr %120, align 4
  %122 = load ptr, ptr %28, align 4
  %123 = getelementptr i32, ptr %122, i32 1
  store ptr %123, ptr %28, align 4
  store i32 0, ptr %122, align 4
  %124 = sub i64 %31, %43
  %125 = add i64 %43, %32
  %126 = add i64 %43, %33
  %127 = icmp eq i64 %124, 0
  br i1 %127, label %128, label %30

128:                                              ; preds = %87, %38, %4
  %129 = phi i32 [ 0, %4 ], [ %40, %38 ], [ 0, %87 ]
  ret i32 %129
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv50_bo_move_init(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.nvif_push, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i32, ptr %6, i32 6
  %8 = getelementptr inbounds %struct.nvif_push, ptr %4, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = icmp ult ptr %7, %9
  br i1 %10, label %17, label %11

11:                                               ; preds = %2
  %12 = load ptr, ptr %4, align 8
  %13 = tail call i32 %12(ptr noundef %4, i32 noundef 6) #2
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %37

15:                                               ; preds = %11
  %16 = load ptr, ptr %5, align 4
  br label %17

17:                                               ; preds = %15, %2
  %18 = phi ptr [ %16, %15 ], [ %6, %2 ]
  %19 = getelementptr i32, ptr %18, i32 1
  store ptr %19, ptr %5, align 4
  store i32 294912, ptr %18, align 4
  %20 = load ptr, ptr %5, align 4
  %21 = getelementptr i32, ptr %20, i32 1
  store ptr %21, ptr %5, align 4
  store i32 %1, ptr %20, align 4
  %22 = load ptr, ptr %5, align 4
  %23 = getelementptr i32, ptr %22, i32 1
  store ptr %23, ptr %5, align 4
  store i32 819584, ptr %22, align 4
  %24 = getelementptr inbounds %struct.nouveau_channel, ptr %0, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.nouveau_drm, ptr %25, i32 0, i32 16, i32 3
  %27 = load i32, ptr %26, align 4
  %28 = load ptr, ptr %5, align 4
  %29 = getelementptr i32, ptr %28, i32 1
  store ptr %29, ptr %5, align 4
  store i32 %27, ptr %28, align 4
  %30 = getelementptr inbounds %struct.nouveau_channel, ptr %0, i32 0, i32 7, i32 3
  %31 = load i32, ptr %30, align 4
  %32 = load ptr, ptr %5, align 4
  %33 = getelementptr i32, ptr %32, i32 1
  store ptr %33, ptr %5, align 4
  store i32 %31, ptr %32, align 4
  %34 = load i32, ptr %30, align 4
  %35 = load ptr, ptr %5, align 4
  %36 = getelementptr i32, ptr %35, i32 1
  store ptr %36, ptr %5, align 4
  store i32 %34, ptr %35, align 4
  br label %37

37:                                               ; preds = %17, %11
  %38 = phi i32 [ 0, %17 ], [ %13, %11 ]
  ret i32 %38
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind }

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
