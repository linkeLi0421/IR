; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nouveau_sgdma.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nouveau_sgdma.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nouveau_sgdma_be = type { %struct.ttm_tt, ptr }
%struct.ttm_tt = type { ptr, i32, i32, ptr, ptr, ptr, i32 }
%struct.nouveau_mem = type { %struct.ttm_resource, ptr, i8, i8, %struct.nvif_mem, [2 x %struct.nvif_vma] }
%struct.ttm_resource = type { i32, i32, i32, i32, %struct.ttm_bus_placement }
%struct.ttm_bus_placement = type { ptr, i32, i8, i32 }
%struct.nvif_mem = type { %struct.nvif_object, i8, i8, i64, i64 }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon.79 }
%struct.anon.79 = type { ptr, i64 }
%struct.nvif_vma = type { i64, i64 }
%struct.nouveau_cli = type { %struct.nvif_client, ptr, %struct.mutex, %struct.nvif_device, %struct.nvif_mmu, %struct.nouveau_vmm, %struct.nouveau_vmm, ptr, %struct.list_head, ptr, %struct.list_head, %struct.list_head, [32 x i8], %struct.work_struct, %struct.list_head, %struct.mutex }
%struct.nvif_client = type { %struct.nvif_object, ptr, i64, i8 }
%struct.nvif_device = type { %struct.nvif_object, %struct.nv_device_info_v0, ptr, i32, %struct.nvif_user }
%struct.nv_device_info_v0 = type { i8, i8, i16, i8, i8, [2 x i8], i64, i64, [16 x i8], [64 x i8] }
%struct.nvif_user = type { ptr, %struct.nvif_object }
%struct.nvif_mmu = type { %struct.nvif_object, i8, i8, i8, i8, i16, i32, ptr, ptr, ptr }
%struct.nouveau_vmm = type { ptr, %struct.nvif_vmm, ptr }
%struct.nvif_vmm = type { %struct.nvif_object, i64, i64, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nouveau_bo = type { %struct.ttm_buffer_object, %struct.ttm_placement, i32, [3 x %struct.ttm_place], [3 x %struct.ttm_place], i8, %struct.ttm_bo_kmap_obj, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, i8, i64, %struct.list_head, i24, i32, ptr }
%struct.ttm_buffer_object = type { %struct.drm_gem_object, ptr, i32, i32, ptr, %struct.kref, ptr, ptr, i8, %struct.list_head, %struct.list_head, ptr, i32, i32, ptr }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ttm_placement = type { i32, ptr, i32, ptr }
%struct.ttm_place = type { i32, i32, i32, i32 }
%struct.ttm_bo_kmap_obj = type { ptr, ptr, i32, ptr }

@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nouveau_sgdma_destroy(ptr nocapture noundef readnone %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %2
  tail call void @ttm_tt_fini(ptr noundef nonnull %1) #3
  tail call void @kfree(ptr noundef nonnull %1) #3
  br label %5

5:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_tt_fini(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nouveau_sgdma_bind(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.nouveau_sgdma_be, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %23

7:                                                ; preds = %3
  %8 = tail call i32 @nouveau_mem_host(ptr noundef %2, ptr noundef %1) #3
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %7
  %11 = getelementptr i8, ptr %0, i32 -547
  %12 = load i8, ptr %11, align 1
  %13 = icmp ult i8 %12, 6
  br i1 %13, label %14, label %22

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.nouveau_mem, ptr %2, i32 0, i32 1
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.nouveau_cli, ptr %16, i32 0, i32 5, i32 1
  %18 = getelementptr inbounds %struct.nouveau_mem, ptr %2, i32 0, i32 5
  %19 = tail call i32 @nouveau_mem_map(ptr noundef %2, ptr noundef %17, ptr noundef %18) #3
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %14
  tail call void @nouveau_mem_fini(ptr noundef %2) #3
  br label %23

22:                                               ; preds = %14, %10
  store ptr %2, ptr %4, align 4
  br label %23

23:                                               ; preds = %22, %21, %7, %3
  %24 = phi i32 [ %19, %21 ], [ 0, %22 ], [ 0, %3 ], [ %8, %7 ]
  ret i32 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_mem_host(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_mem_map(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_mem_fini(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nouveau_sgdma_unbind(ptr nocapture noundef readnone %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nouveau_sgdma_be, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @nouveau_mem_fini(ptr noundef nonnull %4) #3
  store ptr null, ptr %3, align 4
  br label %7

7:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nouveau_sgdma_create_ttm(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nouveau_bo, ptr %0, i32 0, i32 5
  %4 = load i8, ptr %3, align 4, !range !8
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ttm_buffer_object, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr i8, ptr %8, i32 -20
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  %12 = select i1 %11, i32 2, i32 1
  br label %13

13:                                               ; preds = %6, %2
  %14 = phi i32 [ 0, %2 ], [ %12, %6 ]
  %15 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %16 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 32) #4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %13
  %19 = tail call i32 @ttm_sg_tt_init(ptr noundef nonnull %16, ptr noundef %0, i32 noundef %1, i32 noundef %14) #3
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  tail call void @kfree(ptr noundef nonnull %16) #3
  br label %22

22:                                               ; preds = %21, %18, %13
  %23 = phi ptr [ null, %21 ], [ null, %13 ], [ %16, %18 ]
  ret ptr %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_sg_tt_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind allocsize(2) }

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
