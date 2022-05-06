; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nouveau_prime.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nouveau_prime.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_gem_object_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32 }
%struct.list_head = type { ptr, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.seqcount_ww_mutex = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.ttm_buffer_object = type { %struct.drm_gem_object, ptr, i32, i32, ptr, %struct.kref, ptr, ptr, i8, %struct.list_head, %struct.list_head, ptr, i32, i32, ptr }
%struct.ttm_tt = type { ptr, i32, i32, ptr, ptr, ptr, i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.68, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.75, ptr, i32, ptr, i8, i32 }
%struct.anon.68 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.anon.75 = type { i32, ptr }
%struct.dma_buf = type { i32, ptr, %struct.list_head, ptr, %struct.mutex, i32, %struct.dma_buf_map, ptr, ptr, %struct.spinlock, ptr, %struct.list_head, ptr, ptr, %struct.wait_queue_head, %struct.dma_buf_poll_cb_t, %struct.dma_buf_poll_cb_t }
%struct.dma_buf_map = type { %union.anon.69, i8 }
%union.anon.69 = type { ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dma_buf_poll_cb_t = type { %struct.dma_fence_cb, ptr, i32 }
%struct.dma_fence_cb = type { %struct.list_head, ptr }
%struct.nouveau_drm = type { %struct.nvif_parent, %struct.nouveau_cli, %struct.nouveau_cli, ptr, %struct.list_head, %struct.mutex, i8, %struct.anon.83, %struct.anon.84, %struct.anon.85, ptr, %struct.anon.86, ptr, ptr, ptr, ptr, %struct.nvif_object, %struct.anon.87, %struct.nvbios, ptr, %struct.work_struct, %struct.mutex, i32, %struct.work_struct, i32, ptr, ptr, ptr, %struct.dev_pm_domain, ptr, ptr, %struct.anon.99 }
%struct.nvif_parent = type { ptr }
%struct.nouveau_cli = type { %struct.nvif_client, ptr, %struct.mutex, %struct.nvif_device, %struct.nvif_mmu, %struct.nouveau_vmm, %struct.nouveau_vmm, ptr, %struct.list_head, ptr, %struct.list_head, %struct.list_head, [32 x i8], %struct.work_struct, %struct.list_head, %struct.mutex }
%struct.nvif_client = type { %struct.nvif_object, ptr, i64, i8 }
%struct.nvif_device = type { %struct.nvif_object, %struct.nv_device_info_v0, ptr, i32, %struct.nvif_user }
%struct.nv_device_info_v0 = type { i8, i8, i16, i8, i8, [2 x i8], i64, i64, [16 x i8], [64 x i8] }
%struct.nvif_user = type { ptr, %struct.nvif_object }
%struct.nvif_mmu = type { %struct.nvif_object, i8, i8, i8, i8, i16, i32, ptr, ptr, ptr }
%struct.nouveau_vmm = type { ptr, %struct.nvif_vmm, ptr }
%struct.nvif_vmm = type { %struct.nvif_object, i64, i64, ptr, i32 }
%struct.anon.83 = type { ptr, i32, i32, i8 }
%struct.anon.84 = type { %struct.ttm_device, %struct.atomic_t, ptr, ptr, %struct.nvif_object, i32, i32, [2 x i32], [2 x i32], %struct.mutex, %struct.list_head }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.78] }
%struct.anon.78 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.anon.85 = type { i64, i64 }
%struct.anon.86 = type { i32, i64 }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon.79 }
%struct.anon.79 = type { ptr, i64 }
%struct.anon.87 = type { [15 x %struct.nouveau_drm_tile], %struct.spinlock }
%struct.nouveau_drm_tile = type { ptr, i8 }
%struct.nvbios = type { ptr, i32, i16, i32, ptr, i8, i32, i32, i8, i8, %struct.spinlock, i8, i8, i8, i8, i32, i32, i8, i16, i16, i16, i8, %struct.dcb_table, %struct.anon.94, %struct.anon.95, %struct.anon.96, %struct.anon.97 }
%struct.dcb_table = type { i8, i32, [16 x %struct.dcb_output] }
%struct.dcb_output = type { i32, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %union.anon.88, i8 }
%union.anon.88 = type { %struct.anon.92 }
%struct.anon.92 = type { %struct.sor_conf, i32, i32 }
%struct.sor_conf = type { i32 }
%struct.anon.94 = type { i32 }
%struct.anon.95 = type { i16, i16, i32, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i8, ptr, i32, i8 }
%struct.anon.96 = type { i16, i16 }
%struct.anon.97 = type { i16, i16, i16, %struct.anon.98, i16 }
%struct.anon.98 = type { i8, i8, i8 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.99 = type { ptr, %struct.mutex, i8 }
%struct.nouveau_bo = type { %struct.ttm_buffer_object, %struct.ttm_placement, i32, [3 x %struct.ttm_place], [3 x %struct.ttm_place], i8, %struct.ttm_bo_kmap_obj, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, i8, i64, %struct.list_head, i24, i32, ptr }
%struct.ttm_placement = type { i32, ptr, i32, ptr }
%struct.ttm_place = type { i32, i32, i32, i32 }
%struct.ttm_bo_kmap_obj = type { ptr, ptr, i32, ptr }

@nouveau_gem_object_funcs = external dso_local constant %struct.drm_gem_object_funcs, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nouveau_gem_prime_get_sg_table(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.ttm_buffer_object, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ttm_tt, ptr %5, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = tail call ptr @drm_prime_pages_to_sg(ptr noundef %3, ptr noundef %6, i32 noundef %8) #4
  ret ptr %9
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_prime_pages_to_sg(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nouveau_gem_prime_import_sg_table(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %1, align 4
  %9 = getelementptr inbounds %struct.dma_buf, ptr %8, i32 0, i32 13
  %10 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #4
  %11 = load i32, ptr %8, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #4
  store i32 0, ptr %5, align 4
  %13 = tail call i32 @ww_mutex_lock(ptr noundef %10, ptr noundef null) #4
  %14 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 2
  %15 = call ptr @nouveau_bo_alloc(ptr noundef %14, ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef 4, i32 noundef 0, i32 noundef 0) #4
  %16 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %37, label %17

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.nouveau_bo, ptr %15, i32 0, i32 2
  store i32 4, ptr %18, align 8
  %19 = getelementptr inbounds %struct.drm_gem_object, ptr %15, i32 0, i32 11
  store ptr @nouveau_gem_object_funcs, ptr %19, align 8
  %20 = load i64, ptr %4, align 8
  %21 = trunc i64 %20 to i32
  %22 = call i32 @drm_gem_object_init(ptr noundef %0, ptr noundef %15, i32 noundef %21) #4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %17
  %25 = icmp eq ptr %15, null
  br i1 %25, label %37, label %26

26:                                               ; preds = %24
  call void @ttm_bo_put(ptr noundef nonnull %15) #4
  br label %37

27:                                               ; preds = %17
  %28 = load i64, ptr %4, align 8
  %29 = load i32, ptr %5, align 4
  %30 = call i32 @nouveau_bo_init(ptr noundef %15, i64 noundef %28, i32 noundef %29, i32 noundef 4, ptr noundef %2, ptr noundef %10) #4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = icmp eq ptr %15, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %32
  call void @ttm_bo_put(ptr noundef nonnull %15) #4
  br label %35

35:                                               ; preds = %34, %32
  %36 = inttoptr i32 %30 to ptr
  br label %37

37:                                               ; preds = %35, %27, %26, %24, %3
  %38 = phi ptr [ %36, %35 ], [ %15, %3 ], [ inttoptr (i32 -12 to ptr), %24 ], [ inttoptr (i32 -12 to ptr), %26 ], [ %15, %27 ]
  call void @ww_mutex_unlock(ptr noundef %10) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #4
  ret ptr %38
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nouveau_bo_alloc(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_object_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_bo_init(ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nouveau_gem_prime_pin(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @nouveau_bo_pin(ptr noundef %0, i32 noundef 4, i1 noundef zeroext false) #4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %34

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 9
  %6 = load ptr, ptr %5, align 8
  %7 = tail call i32 @ww_mutex_lock(ptr noundef %6, ptr noundef null) #4
  %8 = icmp eq i32 %7, -4
  %9 = select i1 %8, i32 -512, i32 %7
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %31

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.ttm_buffer_object, ptr %0, i32 0, i32 11
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  %16 = tail call i32 @dma_fence_wait_timeout(ptr noundef nonnull %13, i1 noundef zeroext true, i32 noundef 2147483647) #4
  %17 = tail call i32 @llvm.smin.i32(i32 %16, i32 0) #4
  br label %18

18:                                               ; preds = %15, %11
  %19 = phi i32 [ %17, %15 ], [ 0, %11 ]
  %20 = getelementptr inbounds %struct.ttm_buffer_object, ptr %0, i32 0, i32 1
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.ttm_device, ptr %21, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %22) #4
  %23 = getelementptr inbounds %struct.ttm_buffer_object, ptr %0, i32 0, i32 6
  %24 = load ptr, ptr %23, align 4
  tail call void @ttm_bo_move_to_lru_tail(ptr noundef %0, ptr noundef %24, ptr noundef null) #4
  %25 = load ptr, ptr %20, align 8
  %26 = getelementptr inbounds %struct.ttm_device, ptr %25, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !8
  %27 = load i16, ptr %26, align 4
  %28 = add i16 %27, 1
  store i16 %28, ptr %26, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !11
  %29 = load ptr, ptr %5, align 8
  tail call void @ww_mutex_unlock(ptr noundef %29) #4
  %30 = icmp eq i32 %19, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %18, %4
  %32 = phi i32 [ %9, %4 ], [ %19, %18 ]
  %33 = tail call i32 @nouveau_bo_unpin(ptr noundef %0) #4
  br label %34

34:                                               ; preds = %31, %18, %1
  %35 = phi i32 [ %32, %31 ], [ -22, %1 ], [ 0, %18 ]
  ret i32 %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_bo_pin(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_bo_unpin(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nouveau_gem_prime_unpin(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @nouveau_bo_unpin(ptr noundef %0) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ww_mutex_lock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_bo_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ww_mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_wait_timeout(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_bo_move_to_lru_tail(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!8 = !{i64 2148928035}
!9 = !{i64 2148923859}
!10 = !{i64 2148923934, i64 2148923961, i64 2148924008, i64 2148924030, i64 2148924058, i64 2148924078}
!11 = !{i64 2148951038}
