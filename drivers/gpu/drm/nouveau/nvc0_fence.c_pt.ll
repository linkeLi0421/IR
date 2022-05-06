; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvc0_fence.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvc0_fence.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nouveau_drm = type { %struct.nvif_parent, %struct.nouveau_cli, %struct.nouveau_cli, ptr, %struct.list_head, %struct.mutex, i8, %struct.anon.81, %struct.anon.82, %struct.anon.87, ptr, %struct.anon.88, ptr, ptr, ptr, ptr, %struct.nvif_object, %struct.anon.89, %struct.nvbios, ptr, %struct.work_struct, %struct.mutex, i32, %struct.work_struct, i32, ptr, ptr, ptr, %struct.dev_pm_domain, ptr, ptr, %struct.anon.101 }
%struct.nvif_parent = type { ptr }
%struct.nouveau_cli = type { %struct.nvif_client, ptr, %struct.mutex, %struct.nvif_device, %struct.nvif_mmu, %struct.nouveau_vmm, %struct.nouveau_vmm, ptr, %struct.list_head, ptr, %struct.list_head, %struct.list_head, [32 x i8], %struct.work_struct, %struct.list_head, %struct.mutex }
%struct.nvif_client = type { %struct.nvif_object, ptr, i64, i8 }
%struct.nvif_device = type { %struct.nvif_object, %struct.nv_device_info_v0, ptr, i32, %struct.nvif_user }
%struct.nv_device_info_v0 = type { i8, i8, i16, i8, i8, [2 x i8], i64, i64, [16 x i8], [64 x i8] }
%struct.nvif_user = type { ptr, %struct.nvif_object }
%struct.nvif_mmu = type { %struct.nvif_object, i8, i8, i8, i8, i16, i32, ptr, ptr, ptr }
%struct.nouveau_vmm = type { ptr, %struct.nvif_vmm, ptr }
%struct.nvif_vmm = type { %struct.nvif_object, i64, i64, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.anon.81 = type { ptr, i32, i32, i8 }
%struct.anon.82 = type { %struct.ttm_device, %struct.atomic_t, ptr, ptr, %struct.nvif_object, i32, i32, [2 x i32], [2 x i32], %struct.mutex, %struct.list_head }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.83] }
%struct.anon.83 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.anon.87 = type { i64, i64 }
%struct.anon.88 = type { i32, i64 }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon }
%struct.anon = type { ptr, i64 }
%struct.anon.89 = type { [15 x %struct.nouveau_drm_tile], %struct.spinlock }
%struct.nouveau_drm_tile = type { ptr, i8 }
%struct.nvbios = type { ptr, i32, i16, i32, ptr, i8, i32, i32, i8, i8, %struct.spinlock, i8, i8, i8, i8, i32, i32, i8, i16, i16, i16, i8, %struct.dcb_table, %struct.anon.96, %struct.anon.97, %struct.anon.98, %struct.anon.99 }
%struct.dcb_table = type { i8, i32, [16 x %struct.dcb_output] }
%struct.dcb_output = type { i32, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %union.anon.90, i8 }
%union.anon.90 = type { %struct.anon.94 }
%struct.anon.94 = type { %struct.sor_conf, i32, i32 }
%struct.sor_conf = type { i32 }
%struct.anon.96 = type { i32 }
%struct.anon.97 = type { i16, i16, i32, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i8, ptr, i32, i8 }
%struct.anon.98 = type { i16, i16 }
%struct.anon.99 = type { i16, i16, i16, %struct.anon.100, i16 }
%struct.anon.100 = type { i8, i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.101 = type { ptr, %struct.mutex, i8 }
%struct.nouveau_fence_priv = type { ptr, ptr, ptr, ptr, ptr, i8 }
%struct.nouveau_channel = type { %struct.anon.84, ptr, ptr, ptr, i32, i64, i32, %struct.nvif_object, %struct.nvif_object, %struct.nvif_object, %struct.anon.85, i8, ptr, %struct.anon.86, i32, i32, i32, %struct.nvif_object, %struct.nvif_notify, %struct.atomic_t }
%struct.anon.84 = type { %struct.nvif_push, ptr }
%struct.nvif_push = type { ptr, ptr, %struct.nvif_mem, ptr, ptr, ptr, ptr }
%struct.nvif_mem = type { %struct.nvif_object, i8, i8, i64, i64 }
%struct.anon.85 = type { ptr, ptr, %struct.nvif_object, i64 }
%struct.anon.86 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nvif_notify = type { ptr, ptr, i32, i32, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.work_struct }
%struct.nouveau_fence_chan = type { %struct.spinlock, %struct.kref, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i32, [32 x i8], %struct.nvif_notify, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvc0_fence_create(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @nv84_fence_create(ptr noundef %0) #2
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.nouveau_fence_priv, ptr %6, i32 0, i32 3
  store ptr @nvc0_fence_context_new, ptr %7, align 4
  br label %8

8:                                                ; preds = %4, %1
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv84_fence_create(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvc0_fence_context_new(ptr noundef %0) #0 {
  %2 = tail call i32 @nv84_fence_context_new(ptr noundef %0) #2
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %9

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.nouveau_channel, ptr %0, i32 0, i32 12
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nouveau_fence_chan, ptr %6, i32 0, i32 7
  store ptr @nvc0_fence_emit32, ptr %7, align 4
  %8 = getelementptr inbounds %struct.nouveau_fence_chan, ptr %6, i32 0, i32 8
  store ptr @nvc0_fence_sync32, ptr %8, align 4
  br label %9

9:                                                ; preds = %4, %1
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv84_fence_context_new(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvc0_fence_emit32(ptr nocapture noundef readonly %0, i64 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.anon.84, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.nvif_push, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i32, ptr %7, i32 6
  %9 = getelementptr inbounds %struct.nvif_push, ptr %5, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = icmp ult ptr %8, %10
  br i1 %11, label %18, label %12

12:                                               ; preds = %3
  %13 = load ptr, ptr %5, align 8
  %14 = tail call i32 %13(ptr noundef %5, i32 noundef 6) #2
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %37

16:                                               ; preds = %12
  %17 = load ptr, ptr %6, align 4
  br label %18

18:                                               ; preds = %16, %3
  %19 = phi ptr [ %17, %16 ], [ %7, %3 ]
  %20 = getelementptr i32, ptr %19, i32 1
  store ptr %20, ptr %6, align 4
  store i32 537198596, ptr %19, align 4
  %21 = lshr i64 %1, 32
  %22 = trunc i64 %21 to i32
  %23 = and i32 %22, 255
  %24 = load ptr, ptr %6, align 4
  %25 = getelementptr i32, ptr %24, i32 1
  store ptr %25, ptr %6, align 4
  store i32 %23, ptr %24, align 4
  %26 = trunc i64 %1 to i32
  %27 = load ptr, ptr %6, align 4
  %28 = getelementptr i32, ptr %27, i32 1
  store ptr %28, ptr %6, align 4
  store i32 %26, ptr %27, align 4
  %29 = load ptr, ptr %6, align 4
  %30 = getelementptr i32, ptr %29, i32 1
  store ptr %30, ptr %6, align 4
  store i32 %2, ptr %29, align 4
  %31 = load ptr, ptr %6, align 4
  %32 = getelementptr i32, ptr %31, i32 1
  store ptr %32, ptr %6, align 4
  store i32 2, ptr %31, align 4
  %33 = load ptr, ptr %6, align 4
  %34 = getelementptr i32, ptr %33, i32 1
  store ptr %34, ptr %6, align 4
  store i32 0, ptr %33, align 4
  %35 = getelementptr inbounds %struct.nvif_push, ptr %5, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  tail call void %36(ptr noundef %5) #2
  br label %37

37:                                               ; preds = %18, %12
  %38 = phi i32 [ 0, %18 ], [ %14, %12 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvc0_fence_sync32(ptr nocapture noundef readonly %0, i64 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.anon.84, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.nvif_push, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i32, ptr %7, i32 5
  %9 = getelementptr inbounds %struct.nvif_push, ptr %5, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = icmp ult ptr %8, %10
  br i1 %11, label %18, label %12

12:                                               ; preds = %3
  %13 = load ptr, ptr %5, align 8
  %14 = tail call i32 %13(ptr noundef %5, i32 noundef 5) #2
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %35

16:                                               ; preds = %12
  %17 = load ptr, ptr %6, align 4
  br label %18

18:                                               ; preds = %16, %3
  %19 = phi ptr [ %17, %16 ], [ %7, %3 ]
  %20 = getelementptr i32, ptr %19, i32 1
  store ptr %20, ptr %6, align 4
  store i32 537133060, ptr %19, align 4
  %21 = lshr i64 %1, 32
  %22 = trunc i64 %21 to i32
  %23 = and i32 %22, 255
  %24 = load ptr, ptr %6, align 4
  %25 = getelementptr i32, ptr %24, i32 1
  store ptr %25, ptr %6, align 4
  store i32 %23, ptr %24, align 4
  %26 = trunc i64 %1 to i32
  %27 = load ptr, ptr %6, align 4
  %28 = getelementptr i32, ptr %27, i32 1
  store ptr %28, ptr %6, align 4
  store i32 %26, ptr %27, align 4
  %29 = load ptr, ptr %6, align 4
  %30 = getelementptr i32, ptr %29, i32 1
  store ptr %30, ptr %6, align 4
  store i32 %2, ptr %29, align 4
  %31 = load ptr, ptr %6, align 4
  %32 = getelementptr i32, ptr %31, i32 1
  store ptr %32, ptr %6, align 4
  store i32 4100, ptr %31, align 4
  %33 = getelementptr inbounds %struct.nvif_push, ptr %5, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  tail call void %34(ptr noundef %5) #2
  br label %35

35:                                               ; preds = %18, %12
  %36 = phi i32 [ 0, %18 ], [ %14, %12 ]
  ret i32 %36
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
