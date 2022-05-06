; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nv84_fence.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nv84_fence.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type {}
%struct.nouveau_channel = type { %struct.anon, ptr, ptr, ptr, i32, i64, i32, %struct.nvif_object, %struct.nvif_object, %struct.nvif_object, %struct.anon.100, i8, ptr, %struct.anon.101, i32, i32, i32, %struct.nvif_object, %struct.nvif_notify, %struct.atomic_t }
%struct.anon = type { %struct.nvif_push, ptr }
%struct.nvif_push = type { ptr, ptr, %struct.nvif_mem, ptr, ptr, ptr, ptr }
%struct.nvif_mem = type { %struct.nvif_object, i8, i8, i64, i64 }
%struct.anon.100 = type { ptr, ptr, %struct.nvif_object, i64 }
%struct.anon.101 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon.0 }
%struct.anon.0 = type { ptr, i64 }
%struct.nvif_notify = type { ptr, ptr, i32, i32, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.nouveau_drm = type { %struct.nvif_parent, %struct.nouveau_cli, %struct.nouveau_cli, ptr, %struct.list_head, %struct.mutex, i8, %struct.anon.82, %struct.anon.83, %struct.anon.85, ptr, %struct.anon.86, ptr, ptr, ptr, ptr, %struct.nvif_object, %struct.anon.87, %struct.nvbios, ptr, %struct.work_struct, %struct.mutex, i32, %struct.work_struct, i32, ptr, ptr, ptr, %struct.dev_pm_domain, ptr, ptr, %struct.anon.99 }
%struct.nvif_parent = type { ptr }
%struct.nouveau_cli = type { %struct.nvif_client, ptr, %struct.mutex, %struct.nvif_device, %struct.nvif_mmu, %struct.nouveau_vmm, %struct.nouveau_vmm, ptr, %struct.list_head, ptr, %struct.list_head, %struct.list_head, [32 x i8], %struct.work_struct, %struct.list_head, %struct.mutex }
%struct.nvif_client = type { %struct.nvif_object, ptr, i64, i8 }
%struct.nvif_device = type { %struct.nvif_object, %struct.nv_device_info_v0, ptr, i32, %struct.nvif_user }
%struct.nv_device_info_v0 = type { i8, i8, i16, i8, i8, [2 x i8], i64, i64, [16 x i8], [64 x i8] }
%struct.nvif_user = type { ptr, %struct.nvif_object }
%struct.nvif_mmu = type { %struct.nvif_object, i8, i8, i8, i8, i16, i32, ptr, ptr, ptr }
%struct.nouveau_vmm = type { ptr, %struct.nvif_vmm, ptr }
%struct.nvif_vmm = type { %struct.nvif_object, i64, i64, ptr, i32 }
%struct.anon.82 = type { ptr, i32, i32, i8 }
%struct.anon.83 = type { %struct.ttm_device, %struct.atomic_t, ptr, ptr, %struct.nvif_object, i32, i32, [2 x i32], [2 x i32], %struct.mutex, %struct.list_head }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.84] }
%struct.anon.84 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.4 }
%union.anon.4 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.85 = type { i64, i64 }
%struct.anon.86 = type { i32, i64 }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.99 = type { ptr, %struct.mutex, i8 }
%struct.nouveau_fence_chan = type { %struct.spinlock, %struct.kref, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i32, [32 x i8], %struct.nvif_notify, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.nv84_fence_priv = type { %struct.nouveau_fence_priv, ptr, ptr, %struct.mutex }
%struct.nouveau_fence_priv = type { ptr, ptr, ptr, ptr, ptr, i8 }
%struct.nv84_fence_chan = type { %struct.nouveau_fence_chan, ptr }
%struct.nouveau_fence = type { %struct.dma_fence, %struct.list_head, ptr, i32 }
%struct.dma_fence = type { ptr, ptr, %union.anon.74, i64, i64, i32, %struct.kref, i32 }
%union.anon.74 = type { i64 }
%struct.nouveau_vma = type { ptr, i32, %struct.list_head, i64, ptr, ptr }

@nv84_fence_create.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [13 x i8] c"&priv->mutex\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv84_fence_context_new(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nouveau_channel, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 10
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 148) #5
  %8 = getelementptr inbounds %struct.nouveau_channel, ptr %0, i32 0, i32 12
  store ptr %7, ptr %8, align 4
  %9 = icmp eq ptr %7, null
  br i1 %9, label %49, label %10

10:                                               ; preds = %1
  tail call void @nouveau_fence_context_new(ptr noundef %0, ptr noundef nonnull %7) #6
  %11 = getelementptr inbounds %struct.nouveau_fence_chan, ptr %7, i32 0, i32 4
  store ptr @nv84_fence_emit, ptr %11, align 8
  %12 = getelementptr inbounds %struct.nouveau_fence_chan, ptr %7, i32 0, i32 5
  store ptr @nv84_fence_sync, ptr %12, align 4
  %13 = getelementptr inbounds %struct.nouveau_fence_chan, ptr %7, i32 0, i32 6
  store ptr @nv84_fence_read, ptr %13, align 8
  %14 = getelementptr inbounds %struct.nouveau_fence_chan, ptr %7, i32 0, i32 7
  store ptr @nv84_fence_emit32, ptr %14, align 4
  %15 = getelementptr inbounds %struct.nouveau_fence_chan, ptr %7, i32 0, i32 8
  store ptr @nv84_fence_sync32, ptr %15, align 8
  %16 = load ptr, ptr %2, align 4
  %17 = getelementptr inbounds %struct.nouveau_drm, ptr %16, i32 0, i32 10
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.nv84_fence_priv, ptr %18, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.nouveau_channel, ptr %0, i32 0, i32 4
  %22 = load i32, ptr %21, align 4
  %23 = shl i32 %22, 4
  %24 = sdiv i32 %23, 4
  %25 = tail call i32 @nouveau_bo_rd32(ptr noundef %20, i32 noundef %24) #6
  %26 = getelementptr inbounds %struct.nouveau_fence_chan, ptr %7, i32 0, i32 9
  store i32 %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.nv84_fence_priv, ptr %5, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %27) #6
  %28 = getelementptr inbounds %struct.nv84_fence_priv, ptr %5, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.nouveau_channel, ptr %0, i32 0, i32 3
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds %struct.nv84_fence_chan, ptr %7, i32 0, i32 1
  %33 = tail call i32 @nouveau_vma_new(ptr noundef %29, ptr noundef %31, ptr noundef %32) #6
  tail call void @mutex_unlock(ptr noundef %27) #6
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %49, label %35

35:                                               ; preds = %10
  %36 = load ptr, ptr %2, align 4
  %37 = getelementptr inbounds %struct.nouveau_drm, ptr %36, i32 0, i32 10
  %38 = load ptr, ptr %37, align 8
  %39 = load ptr, ptr %8, align 4
  %40 = getelementptr inbounds %struct.nv84_fence_priv, ptr %38, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = load i32, ptr %21, align 4
  %43 = shl i32 %42, 4
  %44 = sdiv i32 %43, 4
  %45 = getelementptr inbounds %struct.nouveau_fence_chan, ptr %39, i32 0, i32 9
  %46 = load i32, ptr %45, align 4
  tail call void @nouveau_bo_wr32(ptr noundef %41, i32 noundef %44, i32 noundef %46) #6
  %47 = getelementptr inbounds %struct.nv84_fence_priv, ptr %38, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %47) #6
  %48 = getelementptr inbounds %struct.nv84_fence_chan, ptr %39, i32 0, i32 1
  tail call void @nouveau_vma_del(ptr noundef %48) #6
  tail call void @mutex_unlock(ptr noundef %47) #6
  tail call void @nouveau_fence_context_del(ptr noundef %39) #6
  store ptr null, ptr %8, align 4
  tail call void @nouveau_fence_context_free(ptr noundef %39) #6
  br label %49

49:                                               ; preds = %35, %10, %1
  %50 = phi i32 [ -12, %1 ], [ %33, %35 ], [ 0, %10 ]
  ret i32 %50
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_fence_context_new(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv84_fence_emit(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.nouveau_fence, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.nouveau_channel, ptr %3, i32 0, i32 12
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nv84_fence_chan, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nouveau_vma, ptr %7, i32 0, i32 3
  %9 = load i64, ptr %8, align 8
  %10 = getelementptr inbounds %struct.nouveau_channel, ptr %3, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = shl i32 %11, 4
  %13 = sext i32 %12 to i64
  %14 = add i64 %9, %13
  %15 = getelementptr inbounds %struct.nouveau_fence_chan, ptr %5, i32 0, i32 7
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.dma_fence, ptr %0, i32 0, i32 4
  %18 = load i64, ptr %17, align 8
  %19 = trunc i64 %18 to i32
  %20 = tail call i32 %16(ptr noundef %3, i64 noundef %14, i32 noundef %19) #6
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv84_fence_sync(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.nouveau_channel, ptr %2, i32 0, i32 12
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nv84_fence_chan, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nouveau_vma, ptr %7, i32 0, i32 3
  %9 = load i64, ptr %8, align 8
  %10 = getelementptr inbounds %struct.nouveau_channel, ptr %1, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = shl i32 %11, 4
  %13 = sext i32 %12 to i64
  %14 = add i64 %9, %13
  %15 = getelementptr inbounds %struct.nouveau_fence_chan, ptr %5, i32 0, i32 8
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.dma_fence, ptr %0, i32 0, i32 4
  %18 = load i64, ptr %17, align 8
  %19 = trunc i64 %18 to i32
  %20 = tail call i32 %16(ptr noundef %2, i64 noundef %14, i32 noundef %19) #6
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv84_fence_read(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.nouveau_channel, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 10
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.nv84_fence_priv, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nouveau_channel, ptr %0, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = shl i32 %9, 4
  %11 = sdiv i32 %10, 4
  %12 = tail call i32 @nouveau_bo_rd32(ptr noundef %7, i32 noundef %11) #6
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv84_fence_emit32(ptr nocapture noundef readonly %0, i64 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.nvif_push, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i32, ptr %7, i32 8
  %9 = getelementptr inbounds %struct.nvif_push, ptr %5, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = icmp ult ptr %8, %10
  br i1 %11, label %18, label %12

12:                                               ; preds = %3
  %13 = load ptr, ptr %5, align 8
  %14 = tail call i32 %13(ptr noundef %5, i32 noundef 8) #6
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %43

16:                                               ; preds = %12
  %17 = load ptr, ptr %6, align 4
  br label %18

18:                                               ; preds = %16, %3
  %19 = phi ptr [ %17, %16 ], [ %7, %3 ]
  %20 = getelementptr i32, ptr %19, i32 1
  store ptr %20, ptr %6, align 4
  store i32 262240, ptr %19, align 4
  %21 = getelementptr inbounds %struct.nouveau_channel, ptr %0, i32 0, i32 7, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = load ptr, ptr %6, align 4
  %24 = getelementptr i32, ptr %23, i32 1
  store ptr %24, ptr %6, align 4
  store i32 %22, ptr %23, align 4
  %25 = load ptr, ptr %6, align 4
  %26 = getelementptr i32, ptr %25, i32 1
  store ptr %26, ptr %6, align 4
  store i32 1310736, ptr %25, align 4
  %27 = lshr i64 %1, 32
  %28 = trunc i64 %27 to i32
  %29 = and i32 %28, 255
  %30 = load ptr, ptr %6, align 4
  %31 = getelementptr i32, ptr %30, i32 1
  store ptr %31, ptr %6, align 4
  store i32 %29, ptr %30, align 4
  %32 = trunc i64 %1 to i32
  %33 = load ptr, ptr %6, align 4
  %34 = getelementptr i32, ptr %33, i32 1
  store ptr %34, ptr %6, align 4
  store i32 %32, ptr %33, align 4
  %35 = load ptr, ptr %6, align 4
  %36 = getelementptr i32, ptr %35, i32 1
  store ptr %36, ptr %6, align 4
  store i32 %2, ptr %35, align 4
  %37 = load ptr, ptr %6, align 4
  %38 = getelementptr i32, ptr %37, i32 1
  store ptr %38, ptr %6, align 4
  store i32 2, ptr %37, align 4
  %39 = load ptr, ptr %6, align 4
  %40 = getelementptr i32, ptr %39, i32 1
  store ptr %40, ptr %6, align 4
  store i32 0, ptr %39, align 4
  %41 = getelementptr inbounds %struct.nvif_push, ptr %5, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  tail call void %42(ptr noundef %5) #6
  br label %43

43:                                               ; preds = %18, %12
  %44 = phi i32 [ 0, %18 ], [ %14, %12 ]
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv84_fence_sync32(ptr nocapture noundef readonly %0, i64 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.nvif_push, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i32, ptr %7, i32 7
  %9 = getelementptr inbounds %struct.nvif_push, ptr %5, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = icmp ult ptr %8, %10
  br i1 %11, label %18, label %12

12:                                               ; preds = %3
  %13 = load ptr, ptr %5, align 8
  %14 = tail call i32 %13(ptr noundef %5, i32 noundef 7) #6
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %41

16:                                               ; preds = %12
  %17 = load ptr, ptr %6, align 4
  br label %18

18:                                               ; preds = %16, %3
  %19 = phi ptr [ %17, %16 ], [ %7, %3 ]
  %20 = getelementptr i32, ptr %19, i32 1
  store ptr %20, ptr %6, align 4
  store i32 262240, ptr %19, align 4
  %21 = getelementptr inbounds %struct.nouveau_channel, ptr %0, i32 0, i32 7, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = load ptr, ptr %6, align 4
  %24 = getelementptr i32, ptr %23, i32 1
  store ptr %24, ptr %6, align 4
  store i32 %22, ptr %23, align 4
  %25 = load ptr, ptr %6, align 4
  %26 = getelementptr i32, ptr %25, i32 1
  store ptr %26, ptr %6, align 4
  store i32 1048592, ptr %25, align 4
  %27 = lshr i64 %1, 32
  %28 = trunc i64 %27 to i32
  %29 = and i32 %28, 255
  %30 = load ptr, ptr %6, align 4
  %31 = getelementptr i32, ptr %30, i32 1
  store ptr %31, ptr %6, align 4
  store i32 %29, ptr %30, align 4
  %32 = trunc i64 %1 to i32
  %33 = load ptr, ptr %6, align 4
  %34 = getelementptr i32, ptr %33, i32 1
  store ptr %34, ptr %6, align 4
  store i32 %32, ptr %33, align 4
  %35 = load ptr, ptr %6, align 4
  %36 = getelementptr i32, ptr %35, i32 1
  store ptr %36, ptr %6, align 4
  store i32 %2, ptr %35, align 4
  %37 = load ptr, ptr %6, align 4
  %38 = getelementptr i32, ptr %37, i32 1
  store ptr %38, ptr %6, align 4
  store i32 4, ptr %37, align 4
  %39 = getelementptr inbounds %struct.nvif_push, ptr %5, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  tail call void %40(ptr noundef %5) #6
  br label %41

41:                                               ; preds = %18, %12
  %42 = phi i32 [ 0, %18 ], [ %14, %12 ]
  ret i32 %42
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_vma_new(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv84_fence_context_del(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nouveau_channel, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 10
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.nouveau_channel, ptr %0, i32 0, i32 12
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nv84_fence_priv, ptr %5, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nouveau_channel, ptr %0, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = shl i32 %11, 4
  %13 = sdiv i32 %12, 4
  %14 = getelementptr inbounds %struct.nouveau_fence_chan, ptr %7, i32 0, i32 9
  %15 = load i32, ptr %14, align 4
  tail call void @nouveau_bo_wr32(ptr noundef %9, i32 noundef %13, i32 noundef %15) #6
  %16 = getelementptr inbounds %struct.nv84_fence_priv, ptr %5, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %16) #6
  %17 = getelementptr inbounds %struct.nv84_fence_chan, ptr %7, i32 0, i32 1
  tail call void @nouveau_vma_del(ptr noundef %17) #6
  tail call void @mutex_unlock(ptr noundef %16) #6
  tail call void @nouveau_fence_context_del(ptr noundef %7) #6
  store ptr null, ptr %6, align 4
  tail call void @nouveau_fence_context_free(ptr noundef %7) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv84_fence_create(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 52) #5
  %4 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 10
  store ptr %3, ptr %4, align 8
  %5 = icmp eq ptr %3, null
  br i1 %5, label %61, label %6

6:                                                ; preds = %1
  store ptr @nv84_fence_destroy, ptr %3, align 8
  %7 = getelementptr inbounds %struct.nouveau_fence_priv, ptr %3, i32 0, i32 1
  store ptr @nv84_fence_suspend, ptr %7, align 4
  %8 = getelementptr inbounds %struct.nouveau_fence_priv, ptr %3, i32 0, i32 2
  store ptr @nv84_fence_resume, ptr %8, align 8
  %9 = getelementptr inbounds %struct.nouveau_fence_priv, ptr %3, i32 0, i32 3
  store ptr @nv84_fence_context_new, ptr %9, align 4
  %10 = getelementptr inbounds %struct.nouveau_fence_priv, ptr %3, i32 0, i32 4
  store ptr @nv84_fence_context_del, ptr %10, align 8
  %11 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 2
  %12 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 2, i32 3, i32 1, i32 4
  %13 = load i8, ptr %12, align 1
  %14 = icmp ult i8 %13, 13
  %15 = getelementptr inbounds %struct.nouveau_fence_priv, ptr %3, i32 0, i32 5
  %16 = zext i1 %14 to i8
  store i8 %16, ptr %15, align 4
  %17 = getelementptr inbounds %struct.nv84_fence_priv, ptr %3, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %17, ptr noundef nonnull @.str, ptr noundef nonnull @nv84_fence_create.__key) #6
  %18 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 2, i32 3, i32 1, i32 6
  %19 = load i64, ptr %18, align 8
  %20 = icmp eq i64 %19, 0
  %21 = select i1 %20, i32 20, i32 2
  %22 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 11
  %23 = load i32, ptr %22, align 8
  %24 = shl i32 %23, 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.nv84_fence_priv, ptr %3, i32 0, i32 1
  %27 = tail call i32 @nouveau_bo_new(ptr noundef %11, i64 noundef %25, i32 noundef 0, i32 noundef %21, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef %26) #6
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %47

29:                                               ; preds = %6
  %30 = load ptr, ptr %26, align 8
  %31 = tail call i32 @nouveau_bo_pin(ptr noundef %30, i32 noundef %21, i1 noundef zeroext false) #6
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %29
  %34 = load ptr, ptr %26, align 8
  %35 = tail call i32 @nouveau_bo_map(ptr noundef %34) #6
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %61, label %37

37:                                               ; preds = %33
  %38 = load ptr, ptr %26, align 8
  %39 = tail call i32 @nouveau_bo_unpin(ptr noundef %38) #6
  br label %40

40:                                               ; preds = %37, %29
  %41 = phi i32 [ %31, %29 ], [ %35, %37 ]
  %42 = icmp eq ptr %26, null
  br i1 %42, label %47, label %43

43:                                               ; preds = %40
  %44 = load ptr, ptr %26, align 8
  store ptr null, ptr %26, align 8
  %45 = icmp eq ptr %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %43
  tail call void @ttm_bo_put(ptr noundef nonnull %44) #6
  br label %47

47:                                               ; preds = %46, %43, %40, %6
  %48 = phi i32 [ %41, %46 ], [ %41, %43 ], [ %41, %40 ], [ %27, %6 ]
  %49 = load ptr, ptr %4, align 8
  %50 = getelementptr inbounds %struct.nv84_fence_priv, ptr %49, i32 0, i32 1
  %51 = load ptr, ptr %50, align 4
  tail call void @nouveau_bo_unmap(ptr noundef %51) #6
  %52 = load ptr, ptr %50, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  store ptr null, ptr %50, align 4
  br label %60

55:                                               ; preds = %47
  %56 = tail call i32 @nouveau_bo_unpin(ptr noundef nonnull %52) #6
  %57 = load ptr, ptr %50, align 4
  store ptr null, ptr %50, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %55
  tail call void @ttm_bo_put(ptr noundef nonnull %57) #6
  br label %60

60:                                               ; preds = %59, %55, %54
  store ptr null, ptr %4, align 8
  tail call void @kfree(ptr noundef %49) #6
  br label %61

61:                                               ; preds = %60, %33, %1
  %62 = phi i32 [ -12, %1 ], [ %48, %60 ], [ 0, %33 ]
  ret i32 %62
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv84_fence_destroy(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.nv84_fence_priv, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  tail call void @nouveau_bo_unmap(ptr noundef %5) #6
  %6 = load ptr, ptr %4, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = tail call i32 @nouveau_bo_unpin(ptr noundef nonnull %6) #6
  br label %10

10:                                               ; preds = %8, %1
  %11 = icmp eq ptr %4, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %10
  %13 = load ptr, ptr %4, align 4
  store ptr null, ptr %4, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  tail call void @ttm_bo_put(ptr noundef nonnull %13) #6
  br label %16

16:                                               ; preds = %15, %12, %10
  store ptr null, ptr %2, align 8
  tail call void @kfree(ptr noundef %3) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @nv84_fence_suspend(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 11
  %5 = load i32, ptr %4, align 8
  %6 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %5, i32 4) #6
  %7 = extractvalue { i32, i1 } %6, 1
  %8 = extractvalue { i32, i1 } %6, 0
  %9 = select i1 %7, i32 -1, i32 %8
  %10 = tail call noalias ptr @vmalloc(i32 noundef %9) #7
  %11 = getelementptr inbounds %struct.nv84_fence_priv, ptr %3, i32 0, i32 2
  store ptr %10, ptr %11, align 4
  %12 = icmp eq ptr %10, null
  br i1 %12, label %30, label %13

13:                                               ; preds = %1
  %14 = load i32, ptr %4, align 8
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.nv84_fence_priv, ptr %3, i32 0, i32 1
  br label %18

18:                                               ; preds = %18, %16
  %19 = phi i32 [ 0, %16 ], [ %25, %18 ]
  %20 = load ptr, ptr %17, align 4
  %21 = shl i32 %19, 2
  %22 = tail call i32 @nouveau_bo_rd32(ptr noundef %20, i32 noundef %21) #6
  %23 = load ptr, ptr %11, align 4
  %24 = getelementptr i32, ptr %23, i32 %19
  store i32 %22, ptr %24, align 4
  %25 = add nuw nsw i32 %19, 1
  %26 = load i32, ptr %4, align 8
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %18, label %28

28:                                               ; preds = %18
  %29 = load ptr, ptr %11, align 4
  br label %30

30:                                               ; preds = %28, %13, %1
  %31 = phi ptr [ %29, %28 ], [ %10, %13 ], [ null, %1 ]
  %32 = icmp ne ptr %31, null
  ret i1 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv84_fence_resume(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.nv84_fence_priv, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %26, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 11
  %9 = load i32, ptr %8, align 8
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.nv84_fence_priv, ptr %3, i32 0, i32 1
  br label %13

13:                                               ; preds = %13, %11
  %14 = phi ptr [ %5, %11 ], [ %23, %13 ]
  %15 = phi i32 [ 0, %11 ], [ %20, %13 ]
  %16 = load ptr, ptr %12, align 4
  %17 = shl i32 %15, 2
  %18 = getelementptr i32, ptr %14, i32 %15
  %19 = load i32, ptr %18, align 4
  tail call void @nouveau_bo_wr32(ptr noundef %16, i32 noundef %17, i32 noundef %19) #6
  %20 = add nuw nsw i32 %15, 1
  %21 = load i32, ptr %8, align 8
  %22 = icmp slt i32 %20, %21
  %23 = load ptr, ptr %4, align 4
  br i1 %22, label %13, label %24

24:                                               ; preds = %13, %7
  %25 = phi ptr [ %5, %7 ], [ %23, %13 ]
  tail call void @vfree(ptr noundef %25) #6
  store ptr null, ptr %4, align 4
  br label %26

26:                                               ; preds = %24, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_bo_new(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_bo_pin(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_bo_map(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_bo_unpin(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_bo_rd32(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_bo_wr32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_vma_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_fence_context_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_fence_context_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_bo_unmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_bo_put(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind allocsize(2) }
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
