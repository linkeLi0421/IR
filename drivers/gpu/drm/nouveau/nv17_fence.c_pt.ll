; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nv17_fence.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nv17_fence.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nouveau_channel = type { %struct.anon, ptr, ptr, ptr, i32, i64, i32, %struct.nvif_object, %struct.nvif_object, %struct.nvif_object, %struct.anon.99, i8, ptr, %struct.anon.100, i32, i32, i32, %struct.nvif_object, %struct.nvif_notify, %struct.atomic_t }
%struct.anon = type { %struct.nvif_push, ptr }
%struct.nvif_push = type { ptr, ptr, %struct.nvif_mem, ptr, ptr, ptr, ptr }
%struct.nvif_mem = type { %struct.nvif_object, i8, i8, i64, i64 }
%struct.anon.99 = type { ptr, ptr, %struct.nvif_object, i64 }
%struct.anon.100 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon.2 }
%struct.anon.2 = type { ptr, i64 }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%struct.nv10_fence_priv = type { %struct.nouveau_fence_priv, ptr, %struct.spinlock, i32 }
%struct.nouveau_fence_priv = type { ptr, ptr, ptr, ptr, ptr, i8 }
%struct.nv10_fence_chan = type { %struct.nouveau_fence_chan, %struct.nvif_object }
%struct.nouveau_fence_chan = type { %struct.spinlock, %struct.kref, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i32, [32 x i8], %struct.nvif_notify, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.nv_dma_v0 = type { i8, i8, i8, [5 x i8], i64, i64 }
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

@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str = private unnamed_addr constant [12 x i8] c"fenceCtxDma\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv17_fence_sync(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.nouveau_channel, ptr %1, i32 0, i32 17, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nouveau_channel, ptr %2, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 10
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.nouveau_channel, ptr %2, i32 0, i32 12
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.anon, ptr %2, i32 0, i32 1
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.nouveau_cli, ptr %5, i32 0, i32 2
  %17 = tail call i32 @mutex_trylock(ptr noundef %16) #4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %81, label %19

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.nv10_fence_priv, ptr %9, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %20) #4
  %21 = getelementptr inbounds %struct.nv10_fence_priv, ptr %9, i32 0, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %22, 2
  store i32 %23, ptr %21, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !8
  %24 = load i16, ptr %20, align 4
  %25 = add i16 %24, 1
  store i16 %25, ptr %20, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !11
  %26 = getelementptr inbounds %struct.nvif_push, ptr %13, i32 0, i32 4
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr i32, ptr %27, i32 5
  %29 = getelementptr inbounds %struct.nvif_push, ptr %13, i32 0, i32 6
  %30 = load ptr, ptr %29, align 4
  %31 = icmp ult ptr %28, %30
  br i1 %31, label %38, label %32

32:                                               ; preds = %19
  %33 = load ptr, ptr %13, align 8
  %34 = tail call i32 %33(ptr noundef %13, i32 noundef 5) #4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %80

36:                                               ; preds = %32
  %37 = load ptr, ptr %26, align 4
  br label %38

38:                                               ; preds = %36, %19
  %39 = phi ptr [ %37, %36 ], [ %27, %19 ]
  %40 = getelementptr i32, ptr %39, i32 1
  store ptr %40, ptr %26, align 4
  store i32 1048672, ptr %39, align 4
  %41 = getelementptr inbounds %struct.nv10_fence_chan, ptr %11, i32 0, i32 1, i32 3
  %42 = load i32, ptr %41, align 4
  %43 = load ptr, ptr %26, align 4
  %44 = getelementptr i32, ptr %43, i32 1
  store ptr %44, ptr %26, align 4
  store i32 %42, ptr %43, align 4
  %45 = load ptr, ptr %26, align 4
  %46 = getelementptr i32, ptr %45, i32 1
  store ptr %46, ptr %26, align 4
  store i32 0, ptr %45, align 4
  %47 = load ptr, ptr %26, align 4
  %48 = getelementptr i32, ptr %47, i32 1
  store ptr %48, ptr %26, align 4
  store i32 %22, ptr %47, align 4
  %49 = add i32 %22, 1
  %50 = load ptr, ptr %26, align 4
  %51 = getelementptr i32, ptr %50, i32 1
  store ptr %51, ptr %26, align 4
  store i32 %49, ptr %50, align 4
  %52 = getelementptr inbounds %struct.nvif_push, ptr %13, i32 0, i32 1
  %53 = load ptr, ptr %52, align 4
  tail call void %53(ptr noundef %13) #4
  %54 = getelementptr inbounds %struct.nvif_push, ptr %15, i32 0, i32 4
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr i32, ptr %55, i32 5
  %57 = getelementptr inbounds %struct.nvif_push, ptr %15, i32 0, i32 6
  %58 = load ptr, ptr %57, align 4
  %59 = icmp ult ptr %56, %58
  br i1 %59, label %66, label %60

60:                                               ; preds = %38
  %61 = load ptr, ptr %15, align 8
  %62 = tail call i32 %61(ptr noundef %15, i32 noundef 5) #4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %80

64:                                               ; preds = %60
  %65 = load ptr, ptr %54, align 4
  br label %66

66:                                               ; preds = %64, %38
  %67 = phi ptr [ %65, %64 ], [ %55, %38 ]
  %68 = getelementptr i32, ptr %67, i32 1
  store ptr %68, ptr %54, align 4
  store i32 1048672, ptr %67, align 4
  %69 = load i32, ptr %41, align 4
  %70 = load ptr, ptr %54, align 4
  %71 = getelementptr i32, ptr %70, i32 1
  store ptr %71, ptr %54, align 4
  store i32 %69, ptr %70, align 4
  %72 = load ptr, ptr %54, align 4
  %73 = getelementptr i32, ptr %72, i32 1
  store ptr %73, ptr %54, align 4
  store i32 0, ptr %72, align 4
  %74 = load ptr, ptr %54, align 4
  %75 = getelementptr i32, ptr %74, i32 1
  store ptr %75, ptr %54, align 4
  store i32 %49, ptr %74, align 4
  %76 = load ptr, ptr %54, align 4
  %77 = getelementptr i32, ptr %76, i32 1
  store ptr %77, ptr %54, align 4
  store i32 %23, ptr %76, align 4
  %78 = getelementptr inbounds %struct.nvif_push, ptr %15, i32 0, i32 1
  %79 = load ptr, ptr %78, align 4
  tail call void %79(ptr noundef %15) #4
  br label %80

80:                                               ; preds = %66, %60, %32
  tail call void @mutex_unlock(ptr noundef %16) #4
  br label %81

81:                                               ; preds = %80, %3
  %82 = phi i32 [ 0, %80 ], [ -16, %3 ]
  ret i32 %82
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nv17_fence_resume(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.nv10_fence_priv, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nv10_fence_priv, ptr %3, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  tail call void @nouveau_bo_wr32(ptr noundef %5, i32 noundef 0, i32 noundef %7) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_bo_wr32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv17_fence_create(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 36) #5
  %4 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 10
  store ptr %3, ptr %4, align 8
  %5 = icmp eq ptr %3, null
  br i1 %5, label %36, label %6

6:                                                ; preds = %1
  store ptr @nv10_fence_destroy, ptr %3, align 8
  %7 = getelementptr inbounds %struct.nouveau_fence_priv, ptr %3, i32 0, i32 2
  store ptr @nv17_fence_resume, ptr %7, align 8
  %8 = getelementptr inbounds %struct.nouveau_fence_priv, ptr %3, i32 0, i32 3
  store ptr @nv17_fence_context_new, ptr %8, align 4
  %9 = getelementptr inbounds %struct.nouveau_fence_priv, ptr %3, i32 0, i32 4
  store ptr @nv10_fence_context_del, ptr %9, align 8
  %10 = getelementptr inbounds %struct.nv10_fence_priv, ptr %3, i32 0, i32 2
  store i32 0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 2
  %12 = getelementptr inbounds %struct.nv10_fence_priv, ptr %3, i32 0, i32 1
  %13 = tail call i32 @nouveau_bo_new(ptr noundef %11, i64 noundef 4096, i32 noundef 4096, i32 noundef 2, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef %12) #4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %33

15:                                               ; preds = %6
  %16 = load ptr, ptr %12, align 8
  %17 = tail call i32 @nouveau_bo_pin(ptr noundef %16, i32 noundef 2, i1 noundef zeroext false) #4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %15
  %20 = load ptr, ptr %12, align 8
  %21 = tail call i32 @nouveau_bo_map(ptr noundef %20) #4
  %22 = icmp eq i32 %21, 0
  %23 = load ptr, ptr %12, align 8
  br i1 %22, label %35, label %24

24:                                               ; preds = %19
  %25 = tail call i32 @nouveau_bo_unpin(ptr noundef %23) #4
  br label %26

26:                                               ; preds = %24, %15
  %27 = phi i32 [ %21, %24 ], [ %17, %15 ]
  %28 = icmp eq ptr %12, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %26
  %30 = load ptr, ptr %12, align 8
  store ptr null, ptr %12, align 8
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  tail call void @ttm_bo_put(ptr noundef nonnull %30) #4
  br label %33

33:                                               ; preds = %32, %29, %26, %6
  %34 = phi i32 [ %27, %32 ], [ %27, %29 ], [ %27, %26 ], [ %13, %6 ]
  tail call void @nv10_fence_destroy(ptr noundef %0) #4
  br label %36

35:                                               ; preds = %19
  tail call void @nouveau_bo_wr32(ptr noundef %23, i32 noundef 0, i32 noundef 0) #4
  br label %36

36:                                               ; preds = %35, %33, %1
  %37 = phi i32 [ %34, %33 ], [ 0, %35 ], [ -12, %1 ]
  ret i32 %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv10_fence_destroy(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv17_fence_context_new(ptr noundef %0) #0 {
  %2 = alloca %struct.nv_dma_v0, align 8
  %3 = getelementptr inbounds %struct.nouveau_channel, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 10
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.nv10_fence_priv, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ttm_buffer_object, ptr %8, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.drm_gem_object, ptr %8, i32 0, i32 5
  %13 = load i32, ptr %12, align 8
  %14 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %15 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 184) #5
  %16 = getelementptr inbounds %struct.nouveau_channel, ptr %0, i32 0, i32 12
  store ptr %15, ptr %16, align 4
  %17 = icmp eq ptr %15, null
  br i1 %17, label %37, label %18

18:                                               ; preds = %1
  %19 = shl i32 %11, 12
  %20 = add i32 %13, -1
  %21 = add i32 %20, %19
  tail call void @nouveau_fence_context_new(ptr noundef %0, ptr noundef nonnull %15) #4
  %22 = getelementptr inbounds %struct.nouveau_fence_chan, ptr %15, i32 0, i32 4
  store ptr @nv10_fence_emit, ptr %22, align 8
  %23 = getelementptr inbounds %struct.nouveau_fence_chan, ptr %15, i32 0, i32 6
  store ptr @nv10_fence_read, ptr %23, align 8
  %24 = getelementptr inbounds %struct.nouveau_fence_chan, ptr %15, i32 0, i32 5
  store ptr @nv17_fence_sync, ptr %24, align 4
  %25 = getelementptr inbounds %struct.nouveau_channel, ptr %0, i32 0, i32 17
  store i8 0, ptr %2, align 8
  %26 = getelementptr inbounds %struct.nv_dma_v0, ptr %2, i32 0, i32 1
  store i8 1, ptr %26, align 1
  %27 = getelementptr inbounds %struct.nv_dma_v0, ptr %2, i32 0, i32 2
  store i8 3, ptr %27, align 2
  %28 = getelementptr inbounds %struct.nv_dma_v0, ptr %2, i32 0, i32 3
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(5) %28, i8 0, i32 5, i1 false)
  %29 = getelementptr inbounds %struct.nv_dma_v0, ptr %2, i32 0, i32 4
  %30 = zext i32 %19 to i64
  store i64 %30, ptr %29, align 8
  %31 = getelementptr inbounds %struct.nv_dma_v0, ptr %2, i32 0, i32 5
  %32 = zext i32 %21 to i64
  store i64 %32, ptr %31, align 8
  %33 = getelementptr inbounds %struct.nv10_fence_chan, ptr %15, i32 0, i32 1
  %34 = call i32 @nvif_object_ctor(ptr noundef %25, ptr noundef nonnull @.str, i32 noundef -2147483633, i32 noundef 2, ptr noundef nonnull %2, i32 noundef 24, ptr noundef %33) #4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %18
  call void @nv10_fence_context_del(ptr noundef %0) #4
  br label %37

37:                                               ; preds = %36, %18, %1
  %38 = phi i32 [ -12, %1 ], [ %34, %36 ], [ 0, %18 ]
  ret i32 %38
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv10_fence_context_del(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_bo_new(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_bo_pin(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_bo_map(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_bo_unpin(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_fence_context_new(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv10_fence_emit(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv10_fence_read(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_bo_put(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nounwind }
attributes #5 = { nounwind allocsize(2) }

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
!8 = !{i64 2148858021}
!9 = !{i64 2148853845}
!10 = !{i64 2148853920, i64 2148853947, i64 2148853994, i64 2148854016, i64 2148854044, i64 2148854064}
!11 = !{i64 2148881024}
