; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nouveau_abi16.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nouveau_abi16.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nv_device_v0 = type { i8, i8, [6 x i8], i64 }
%struct.drm_file = type { i8, i8, i8, i8, i8, i8, i8, i8, ptr, %struct.spinlock, ptr, i32, %struct.list_head, ptr, %struct.idr, %struct.spinlock, %struct.idr, %struct.spinlock, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, %struct.mutex, %struct.drm_prime_file_private, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.drm_prime_file_private = type { %struct.mutex, %struct.rb_root, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.nouveau_cli = type { %struct.nvif_client, ptr, %struct.mutex, %struct.nvif_device, %struct.nvif_mmu, %struct.nouveau_vmm, %struct.nouveau_vmm, ptr, %struct.list_head, ptr, %struct.list_head, %struct.list_head, [32 x i8], %struct.work_struct, %struct.list_head, %struct.mutex }
%struct.nvif_client = type { %struct.nvif_object, ptr, i64, i8 }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon }
%struct.anon = type { ptr, i64 }
%struct.nvif_device = type { %struct.nvif_object, %struct.nv_device_info_v0, ptr, i32, %struct.nvif_user }
%struct.nv_device_info_v0 = type { i8, i8, i16, i8, i8, [2 x i8], i64, i64, [16 x i8], [64 x i8] }
%struct.nvif_user = type { ptr, %struct.nvif_object }
%struct.nvif_mmu = type { %struct.nvif_object, i8, i8, i8, i8, i16, i32, ptr, ptr, ptr }
%struct.nouveau_vmm = type { ptr, %struct.nvif_vmm, ptr }
%struct.nvif_vmm = type { %struct.nvif_object, i64, i64, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.nouveau_abi16 = type { %struct.nvif_device, %struct.list_head, i64 }
%struct.nouveau_drm = type { %struct.nvif_parent, %struct.nouveau_cli, %struct.nouveau_cli, ptr, %struct.list_head, %struct.mutex, i8, %struct.anon.82, %struct.anon.83, %struct.anon.88, ptr, %struct.anon.89, ptr, ptr, ptr, ptr, %struct.nvif_object, %struct.anon.90, %struct.nvbios, ptr, %struct.work_struct, %struct.mutex, i32, %struct.work_struct, i32, ptr, ptr, ptr, %struct.dev_pm_domain, ptr, ptr, %struct.anon.102 }
%struct.nvif_parent = type { ptr }
%struct.anon.82 = type { ptr, i32, i32, i8 }
%struct.anon.83 = type { %struct.ttm_device, %struct.atomic_t, ptr, ptr, %struct.nvif_object, i32, i32, [2 x i32], [2 x i32], %struct.mutex, %struct.list_head }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.84] }
%struct.anon.84 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.88 = type { i64, i64 }
%struct.anon.89 = type { i32, i64 }
%struct.anon.90 = type { [15 x %struct.nouveau_drm_tile], %struct.spinlock }
%struct.nouveau_drm_tile = type { ptr, i8 }
%struct.nvbios = type { ptr, i32, i16, i32, ptr, i8, i32, i32, i8, i8, %struct.spinlock, i8, i8, i8, i8, i32, i32, i8, i16, i16, i16, i8, %struct.dcb_table, %struct.anon.97, %struct.anon.98, %struct.anon.99, %struct.anon.100 }
%struct.dcb_table = type { i8, i32, [16 x %struct.dcb_output] }
%struct.dcb_output = type { i32, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %union.anon.91, i8 }
%union.anon.91 = type { %struct.anon.95 }
%struct.anon.95 = type { %struct.sor_conf, i32, i32 }
%struct.sor_conf = type { i32 }
%struct.anon.97 = type { i32 }
%struct.anon.98 = type { i16, i16, i32, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i8, ptr, i32, i8 }
%struct.anon.99 = type { i16, i16 }
%struct.anon.100 = type { i16, i16, i16, %struct.anon.101, i16 }
%struct.anon.101 = type { i8, i8, i8 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.102 = type { ptr, %struct.mutex, i8 }
%struct.nouveau_abi16_chan = type { %struct.list_head, ptr, %struct.list_head, ptr, ptr, %struct.nvkm_mm }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.69, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.76, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.69 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.ida = type { %struct.xarray }
%struct.llist_head = type { ptr }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.76 = type { i32, ptr }
%struct.drm_nouveau_getparam = type { i64, i64 }
%struct.anon.177 = type { %struct.nvkm_object, ptr }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.173, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.173 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.drm_nouveau_channel_alloc = type { i32, i32, i32, i32, i32, [8 x %struct.anon.178], i32 }
%struct.anon.178 = type { i32, i32 }
%struct.nouveau_channel = type { %struct.anon.85, ptr, ptr, ptr, i32, i64, i32, %struct.nvif_object, %struct.nvif_object, %struct.nvif_object, %struct.anon.86, i8, ptr, %struct.anon.87, i32, i32, i32, %struct.nvif_object, %struct.nvif_notify, %struct.atomic_t }
%struct.anon.85 = type { %struct.nvif_push, ptr }
%struct.nvif_push = type { ptr, ptr, %struct.nvif_mem, ptr, ptr, ptr, ptr }
%struct.nvif_mem = type { %struct.nvif_object, i8, i8, i64, i64 }
%struct.anon.86 = type { ptr, ptr, %struct.nvif_object, i64 }
%struct.anon.87 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nvif_notify = type { ptr, ptr, i32, i32, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.work_struct }
%struct.ttm_buffer_object = type { %struct.drm_gem_object, ptr, i32, i32, ptr, %struct.kref, ptr, ptr, i8, %struct.list_head, %struct.list_head, ptr, i32, i32, ptr }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32 }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.ttm_resource = type { i32, i32, i32, i32, %struct.ttm_bus_placement }
%struct.ttm_bus_placement = type { ptr, i32, i8, i32 }
%struct.nvif_ioctl_v0 = type { i8, i8, [4 x i8], i8, i8, i64, i64, [0 x i8] }
%struct.drm_nouveau_grobj_alloc = type { i32, i32, i32 }
%struct.nvif_sclass = type { i32, i32, i32 }
%struct.nouveau_abi16_ntfy = type { %struct.nvif_object, %struct.list_head, ptr }
%struct.nv_dma_v0 = type { i8, i8, i8, [5 x i8], i64, i64 }
%struct.drm_nouveau_notifierobj_alloc = type { i32, i32, i32, i32 }
%struct.nvkm_mm_node = type { %struct.list_head, %struct.list_head, ptr, i8, i8, i32, i32 }
%struct.nouveau_vma = type { ptr, i32, %struct.list_head, i64, ptr, ptr }
%struct.nouveau_bo = type { %struct.ttm_buffer_object, %struct.ttm_placement, i32, [3 x %struct.ttm_place], [3 x %struct.ttm_place], i8, %struct.ttm_bo_kmap_obj, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, i8, i64, %struct.list_head, i24, i32, ptr }
%struct.ttm_placement = type { i32, ptr, i32, ptr }
%struct.ttm_place = type { i32, i32, i32, i32 }
%struct.ttm_bo_kmap_obj = type { ptr, ptr, i32, ptr }
%struct.drm_nouveau_gpuobj_free = type { i32, i32 }

@.str = private unnamed_addr constant [40 x i8] c"drivers/gpu/drm/nouveau/nouveau_abi16.c\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"abi16EngObj\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"abi16Ntfy\00", align 1
@__const.nouveau_abi16.args = private unnamed_addr constant %struct.nv_device_v0 { i8 0, i8 0, [6 x i8] zeroinitializer, i64 -1 }, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"abi16Device\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@switch.table.nouveau_abi16_swclass = private unnamed_addr constant [11 x i32] [i32 -4, i32 -5, i32 -5, i32 -5, i32 -5, i32 -6, i32 -7, i32 -7, i32 -7, i32 -7, i32 -7], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nouveau_abi16_get(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca %struct.nv_device_v0, align 8
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @mutex_lock(ptr noundef nonnull inttoptr (i32 68 to ptr)) #7
  br label %10

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.drm_file, ptr %0, i32 0, i32 19
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nouveau_cli, ptr %7, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %8) #7
  %9 = load ptr, ptr %6, align 4
  br label %10

10:                                               ; preds = %5, %4
  %11 = phi ptr [ %8, %5 ], [ inttoptr (i32 68 to ptr), %4 ]
  %12 = phi ptr [ %7, %5 ], [ null, %4 ]
  %13 = phi ptr [ %9, %5 ], [ null, %4 ]
  %14 = getelementptr inbounds %struct.nouveau_cli, ptr %13, i32 0, i32 9
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %30

17:                                               ; preds = %10
  %18 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %19 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3520, i32 noundef 216) #8
  store ptr %19, ptr %14, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %33, label %21

21:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) @__const.nouveau_abi16.args, i32 16, i1 false) #7
  %22 = getelementptr inbounds %struct.nouveau_abi16, ptr %19, i32 0, i32 1
  store volatile ptr %22, ptr %22, align 8
  %23 = getelementptr inbounds %struct.nouveau_abi16, ptr %19, i32 0, i32 1, i32 1
  store ptr %22, ptr %23, align 4
  %24 = call i32 @nvif_device_ctor(ptr noundef %13, ptr noundef nonnull @.str.3, i32 noundef 0, i32 noundef 128, ptr noundef nonnull %2, i32 noundef 16, ptr noundef nonnull %19) #7
  %25 = icmp eq i32 %24, 0
  %26 = load ptr, ptr %14, align 4
  br i1 %25, label %28, label %27

27:                                               ; preds = %21
  call void @kfree(ptr noundef %26) #7
  store ptr null, ptr %14, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #7
  br label %33

28:                                               ; preds = %21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #7
  %29 = icmp eq ptr %26, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %28, %10
  %31 = getelementptr inbounds %struct.nouveau_cli, ptr %12, i32 0, i32 9
  %32 = load ptr, ptr %31, align 4
  br label %34

33:                                               ; preds = %28, %27, %17
  call void @mutex_unlock(ptr noundef %11) #7
  br label %34

34:                                               ; preds = %33, %30
  %35 = phi ptr [ %32, %30 ], [ null, %33 ]
  ret ptr %35
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nouveau_abi16_put(ptr nocapture noundef readonly %0, i32 noundef returned %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nvif_object, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nouveau_cli, ptr %4, i32 0, i32 2
  tail call void @mutex_unlock(ptr noundef %5) #7
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @nouveau_abi16_swclass(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 2, i32 3, i32 1, i32 4
  %3 = load i8, ptr %2, align 1
  %4 = add i8 %3, -1
  %5 = icmp ult i8 %4, 11
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = sext i8 %4 to i32
  %8 = getelementptr inbounds [11 x i32], ptr @switch.table.nouveau_abi16_swclass, i32 0, i32 %7
  %9 = load i32, ptr %8, align 4
  br label %10

10:                                               ; preds = %6, %1
  %11 = phi i32 [ %9, %6 ], [ 0, %1 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nouveau_abi16_fini(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nvif_object, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nouveau_abi16, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %11, label %7

7:                                                ; preds = %7, %1
  %8 = phi ptr [ %9, %7 ], [ %5, %1 ]
  %9 = load ptr, ptr %8, align 4
  tail call fastcc void @nouveau_abi16_chan_fini(ptr noundef %8)
  %10 = icmp eq ptr %9, %4
  br i1 %10, label %11, label %7

11:                                               ; preds = %7, %1
  tail call void @nvif_device_dtor(ptr noundef %0) #7
  %12 = getelementptr inbounds %struct.nouveau_cli, ptr %3, i32 0, i32 9
  %13 = load ptr, ptr %12, align 4
  tail call void @kfree(ptr noundef %13) #7
  store ptr null, ptr %12, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nouveau_abi16_chan_fini(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nouveau_abi16_chan, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.nouveau_abi16_chan, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = tail call i32 @nouveau_channel_idle(ptr noundef nonnull %3) #7
  br label %11

11:                                               ; preds = %9, %5, %1
  %12 = getelementptr inbounds %struct.nouveau_abi16_chan, ptr %0, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %12
  br i1 %14, label %27, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.nouveau_abi16_chan, ptr %0, i32 0, i32 5
  br label %17

17:                                               ; preds = %17, %15
  %18 = phi ptr [ %13, %15 ], [ %20, %17 ]
  %19 = getelementptr i8, ptr %18, i32 -40
  %20 = load ptr, ptr %18, align 8
  tail call void @nvif_object_dtor(ptr noundef %19) #7
  %21 = getelementptr i8, ptr %18, i32 8
  tail call void @nvkm_mm_free(ptr noundef %16, ptr noundef %21) #7
  %22 = getelementptr i8, ptr %18, i32 4
  %23 = load ptr, ptr %22, align 4
  %24 = load ptr, ptr %18, align 4
  %25 = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  store ptr %23, ptr %25, align 4
  store volatile ptr %24, ptr %23, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %18, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %22, align 4
  tail call void @kfree(ptr noundef %19) #7
  %26 = icmp eq ptr %20, %12
  br i1 %26, label %27, label %17

27:                                               ; preds = %17, %11
  %28 = getelementptr inbounds %struct.nouveau_abi16_chan, ptr %0, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %45, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.nouveau_abi16_chan, ptr %0, i32 0, i32 4
  tail call void @nouveau_vma_del(ptr noundef %32) #7
  %33 = load ptr, ptr %28, align 4
  %34 = tail call i32 @nouveau_bo_unpin(ptr noundef %33) #7
  %35 = load ptr, ptr %28, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %45, label %37

37:                                               ; preds = %31
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %35) #7, !srcloc !9
  %38 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %35, ptr nonnull %35, i32 1, ptr nonnull elementtype(i32) %35) #7, !srcloc !10
  %39 = extractvalue { i32, i32, i32 } %38, 0
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = icmp sgt i32 %39, 0
  br i1 %42, label %45, label %43, !prof !11

43:                                               ; preds = %41
  tail call void @refcount_warn_saturate(ptr noundef nonnull %35, i32 noundef 3) #7
  br label %45

44:                                               ; preds = %37
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !12
  tail call void @drm_gem_object_free(ptr noundef nonnull %35) #7
  br label %45

45:                                               ; preds = %44, %43, %41, %31, %27
  %46 = getelementptr inbounds %struct.nouveau_abi16_chan, ptr %0, i32 0, i32 5, i32 2
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.nouveau_abi16_chan, ptr %0, i32 0, i32 5
  %51 = tail call i32 @nvkm_mm_fini(ptr noundef %50) #7
  br label %52

52:                                               ; preds = %49, %45
  %53 = load ptr, ptr %2, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %57, label %55

55:                                               ; preds = %52
  %56 = tail call i32 @nouveau_channel_idle(ptr noundef nonnull %53) #7
  tail call void @nouveau_channel_del(ptr noundef %2) #7
  br label %57

57:                                               ; preds = %55, %52
  %58 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %59 = load ptr, ptr %58, align 4
  %60 = load ptr, ptr %0, align 4
  %61 = getelementptr inbounds %struct.list_head, ptr %60, i32 0, i32 1
  store ptr %59, ptr %61, align 4
  store volatile ptr %60, ptr %59, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %0, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %58, align 4
  tail call void @kfree(ptr noundef %0) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_device_dtor(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nouveau_abi16_ioctl_getparam(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = load i64, ptr %1, align 8
  switch i64 %8, label %82 [
    i64 11, label %9
    i64 3, label %14
    i64 4, label %25
    i64 5, label %36
    i64 8, label %55
    i64 9, label %59
    i64 12, label %63
    i64 14, label %65
    i64 15, label %69
    i64 16, label %71
    i64 13, label %73
  ]

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 3, i32 1, i32 2
  %11 = load i16, ptr %10, align 2
  %12 = zext i16 %11 to i64
  %13 = getelementptr inbounds %struct.drm_nouveau_getparam, ptr %1, i32 0, i32 1
  store i64 %12, ptr %13, align 8
  br label %82

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 3, i32 1, i32 1
  %16 = load i8, ptr %15, align 1
  %17 = icmp eq i8 %16, 4
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  %19 = getelementptr i8, ptr %7, i32 -104
  %20 = load i16, ptr %19, align 8
  %21 = zext i16 %20 to i64
  %22 = getelementptr inbounds %struct.drm_nouveau_getparam, ptr %1, i32 0, i32 1
  store i64 %21, ptr %22, align 8
  br label %82

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.drm_nouveau_getparam, ptr %1, i32 0, i32 1
  store i64 0, ptr %24, align 8
  br label %82

25:                                               ; preds = %3
  %26 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 3, i32 1, i32 1
  %27 = load i8, ptr %26, align 1
  %28 = icmp eq i8 %27, 4
  br i1 %28, label %34, label %29

29:                                               ; preds = %25
  %30 = getelementptr i8, ptr %7, i32 -102
  %31 = load i16, ptr %30, align 2
  %32 = zext i16 %31 to i64
  %33 = getelementptr inbounds %struct.drm_nouveau_getparam, ptr %1, i32 0, i32 1
  store i64 %32, ptr %33, align 8
  br label %82

34:                                               ; preds = %25
  %35 = getelementptr inbounds %struct.drm_nouveau_getparam, ptr %1, i32 0, i32 1
  store i64 0, ptr %35, align 8
  br label %82

36:                                               ; preds = %3
  %37 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 3, i32 1, i32 1
  %38 = load i8, ptr %37, align 1
  switch i8 %38, label %54 [
    i8 2, label %39
    i8 1, label %41
    i8 3, label %43
    i8 4, label %45
    i8 0, label %47
  ]

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.drm_nouveau_getparam, ptr %1, i32 0, i32 1
  store i64 0, ptr %40, align 8
  br label %82

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.drm_nouveau_getparam, ptr %1, i32 0, i32 1
  store i64 1, ptr %42, align 8
  br label %82

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.drm_nouveau_getparam, ptr %1, i32 0, i32 1
  store i64 2, ptr %44, align 8
  br label %82

45:                                               ; preds = %36
  %46 = getelementptr inbounds %struct.drm_nouveau_getparam, ptr %1, i32 0, i32 1
  store i64 3, ptr %46, align 8
  br label %82

47:                                               ; preds = %36
  %48 = getelementptr i8, ptr %7, i32 -76
  %49 = load i8, ptr %48, align 4
  %50 = icmp eq i8 %49, 0
  %51 = getelementptr inbounds %struct.drm_nouveau_getparam, ptr %1, i32 0, i32 1
  br i1 %50, label %52, label %53

52:                                               ; preds = %47
  store i64 1, ptr %51, align 8
  br label %82

53:                                               ; preds = %47
  store i64 2, ptr %51, align 8
  br label %82

54:                                               ; preds = %36
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 215, i32 noundef 9, ptr noundef null) #7
  br label %82

55:                                               ; preds = %3
  %56 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 9
  %57 = load i64, ptr %56, align 8
  %58 = getelementptr inbounds %struct.drm_nouveau_getparam, ptr %1, i32 0, i32 1
  store i64 %57, ptr %58, align 8
  br label %82

59:                                               ; preds = %3
  %60 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 9, i32 1
  %61 = load i64, ptr %60, align 8
  %62 = getelementptr inbounds %struct.drm_nouveau_getparam, ptr %1, i32 0, i32 1
  store i64 %61, ptr %62, align 8
  br label %82

63:                                               ; preds = %3
  %64 = getelementptr inbounds %struct.drm_nouveau_getparam, ptr %1, i32 0, i32 1
  store i64 0, ptr %64, align 8
  br label %82

65:                                               ; preds = %3
  %66 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 3
  %67 = tail call i64 @nvif_device_time(ptr noundef %66) #7
  %68 = getelementptr inbounds %struct.drm_nouveau_getparam, ptr %1, i32 0, i32 1
  store i64 %67, ptr %68, align 8
  br label %82

69:                                               ; preds = %3
  %70 = getelementptr inbounds %struct.drm_nouveau_getparam, ptr %1, i32 0, i32 1
  store i64 1, ptr %70, align 8
  br label %82

71:                                               ; preds = %3
  %72 = getelementptr inbounds %struct.drm_nouveau_getparam, ptr %1, i32 0, i32 1
  store i64 1, ptr %72, align 8
  br label %82

73:                                               ; preds = %3
  %74 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 3, i32 0, i32 5
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.anon.177, ptr %75, i32 0, i32 1
  %77 = load ptr, ptr %76, align 8
  %78 = getelementptr inbounds %struct.nvkm_device, ptr %77, i32 0, i32 53
  %79 = load ptr, ptr %78, align 4
  %80 = tail call i64 @nvkm_gr_units(ptr noundef %79) #7
  %81 = getelementptr inbounds %struct.drm_nouveau_getparam, ptr %1, i32 0, i32 1
  store i64 %80, ptr %81, align 8
  br label %82

82:                                               ; preds = %73, %71, %69, %65, %63, %59, %55, %54, %53, %52, %45, %43, %41, %39, %34, %29, %23, %18, %9, %3
  %83 = phi i32 [ -22, %3 ], [ 0, %39 ], [ 0, %41 ], [ 0, %43 ], [ 0, %45 ], [ 0, %54 ], [ 0, %53 ], [ 0, %52 ], [ 0, %29 ], [ 0, %34 ], [ 0, %18 ], [ 0, %23 ], [ 0, %73 ], [ 0, %71 ], [ 0, %69 ], [ 0, %65 ], [ 0, %63 ], [ 0, %59 ], [ 0, %55 ], [ 0, %9 ]
  ret i32 %83
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvif_device_time(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvkm_gr_units(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nouveau_abi16_ioctl_channel_alloc(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.drm_file, ptr %2, i32 0, i32 19
  %7 = load ptr, ptr %6, align 4
  br label %8

8:                                                ; preds = %5, %3
  %9 = phi ptr [ %7, %5 ], [ null, %3 ]
  %10 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = tail call ptr @nouveau_abi16_get(ptr noundef %2)
  %13 = icmp eq ptr %12, null
  br i1 %13, label %137, label %14, !prof !13

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.nouveau_drm, ptr %11, i32 0, i32 13
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %132, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.nvif_device, ptr %12, i32 0, i32 1, i32 4
  %20 = load i8, ptr %19, align 1
  %21 = icmp ugt i8 %20, 7
  %22 = load i32, ptr %1, align 4
  br i1 %21, label %23, label %48

23:                                               ; preds = %18
  %24 = icmp eq i32 %22, -1
  br i1 %24, label %25, label %31

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.drm_nouveau_channel_alloc, ptr %1, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  switch i32 %27, label %132 [
    i32 1, label %31
    i32 2, label %28
    i32 4, label %29
    i32 8, label %30
    i32 48, label %35
  ]

28:                                               ; preds = %25
  br label %31

29:                                               ; preds = %25
  br label %31

30:                                               ; preds = %25
  br label %31

31:                                               ; preds = %30, %29, %28, %25, %23
  %32 = phi i64 [ 2, %23 ], [ 2, %25 ], [ 512, %30 ], [ 2048, %29 ], [ 1024, %28 ]
  %33 = tail call i64 @nvif_fifo_runlist(ptr noundef nonnull %12, i64 noundef %32) #7
  %34 = trunc i64 %33 to i32
  br label %45

35:                                               ; preds = %25
  %36 = tail call i64 @nvif_fifo_runlist(ptr noundef nonnull %12, i64 noundef 2) #7
  %37 = tail call i64 @nvif_fifo_runlist(ptr noundef nonnull %12, i64 noundef 128) #7
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %35
  %40 = xor i64 %36, -1
  %41 = and i64 %37, %40
  %42 = icmp eq i64 %41, 0
  %43 = select i1 %42, i64 %36, i64 %41
  %44 = trunc i64 %43 to i32
  br label %45

45:                                               ; preds = %39, %35, %31
  %46 = phi i32 [ %34, %31 ], [ 0, %35 ], [ %44, %39 ]
  store i32 %46, ptr %1, align 4
  %47 = getelementptr inbounds %struct.drm_nouveau_channel_alloc, ptr %1, i32 0, i32 1
  store i32 0, ptr %47, align 4
  br label %48

48:                                               ; preds = %45, %18
  %49 = phi i32 [ %46, %45 ], [ %22, %18 ]
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %132, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.drm_nouveau_channel_alloc, ptr %1, i32 0, i32 1
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %132, label %55

55:                                               ; preds = %51
  %56 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %57 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %56, i32 noundef 3520, i32 noundef 52) #8
  %58 = icmp eq ptr %57, null
  br i1 %58, label %132, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.nouveau_abi16_chan, ptr %57, i32 0, i32 2
  store volatile ptr %60, ptr %60, align 4
  %61 = getelementptr inbounds %struct.nouveau_abi16_chan, ptr %57, i32 0, i32 2, i32 1
  store ptr %60, ptr %61, align 8
  %62 = getelementptr inbounds %struct.nouveau_abi16, ptr %12, i32 0, i32 1
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.list_head, ptr %63, i32 0, i32 1
  store ptr %57, ptr %64, align 4
  store ptr %63, ptr %57, align 8
  %65 = getelementptr inbounds %struct.list_head, ptr %57, i32 0, i32 1
  store ptr %62, ptr %65, align 4
  store volatile ptr %57, ptr %62, align 4
  %66 = load i32, ptr %1, align 4
  %67 = load i32, ptr %52, align 4
  %68 = getelementptr inbounds %struct.nouveau_abi16_chan, ptr %57, i32 0, i32 1
  %69 = tail call i32 @nouveau_channel_new(ptr noundef %11, ptr noundef nonnull %12, i32 noundef %66, i32 noundef %67, i1 noundef zeroext false, ptr noundef %68) #7
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %130

71:                                               ; preds = %59
  %72 = load ptr, ptr %68, align 8
  %73 = getelementptr inbounds %struct.nouveau_channel, ptr %72, i32 0, i32 4
  %74 = load i32, ptr %73, align 4
  %75 = getelementptr inbounds %struct.drm_nouveau_channel_alloc, ptr %1, i32 0, i32 2
  store i32 %74, ptr %75, align 4
  %76 = load i8, ptr %19, align 1
  %77 = icmp ugt i8 %76, 5
  br i1 %77, label %78, label %80

78:                                               ; preds = %71
  %79 = getelementptr inbounds %struct.drm_nouveau_channel_alloc, ptr %1, i32 0, i32 3
  store i32 6, ptr %79, align 4
  br label %91

80:                                               ; preds = %71
  %81 = getelementptr inbounds %struct.nouveau_channel, ptr %72, i32 0, i32 10
  %82 = load ptr, ptr %81, align 8
  %83 = getelementptr inbounds %struct.ttm_buffer_object, ptr %82, i32 0, i32 6
  %84 = load ptr, ptr %83, align 4
  %85 = getelementptr inbounds %struct.ttm_resource, ptr %84, i32 0, i32 2
  %86 = load i32, ptr %85, align 4
  %87 = icmp eq i32 %86, 2
  %88 = getelementptr inbounds %struct.drm_nouveau_channel_alloc, ptr %1, i32 0, i32 3
  br i1 %87, label %89, label %90

89:                                               ; preds = %80
  store i32 2, ptr %88, align 4
  br label %91

90:                                               ; preds = %80
  store i32 4, ptr %88, align 4
  br label %91

91:                                               ; preds = %90, %89, %78
  %92 = load i8, ptr %19, align 1
  %93 = icmp ult i8 %92, 2
  br i1 %93, label %94, label %102

94:                                               ; preds = %91
  %95 = getelementptr inbounds %struct.drm_nouveau_channel_alloc, ptr %1, i32 0, i32 5
  store i32 0, ptr %95, align 4
  %96 = getelementptr inbounds %struct.drm_nouveau_channel_alloc, ptr %1, i32 0, i32 5, i32 0, i32 1
  store i32 0, ptr %96, align 4
  %97 = getelementptr inbounds %struct.nouveau_channel, ptr %72, i32 0, i32 9, i32 3
  %98 = load i32, ptr %97, align 4
  %99 = getelementptr %struct.drm_nouveau_channel_alloc, ptr %1, i32 0, i32 5, i32 1
  store i32 %98, ptr %99, align 4
  %100 = getelementptr %struct.drm_nouveau_channel_alloc, ptr %1, i32 0, i32 5, i32 1, i32 1
  store i32 20590, ptr %100, align 4
  %101 = getelementptr inbounds %struct.drm_nouveau_channel_alloc, ptr %1, i32 0, i32 6
  store i32 2, ptr %101, align 4
  br label %102

102:                                              ; preds = %94, %91
  %103 = getelementptr inbounds %struct.nouveau_abi16_chan, ptr %57, i32 0, i32 3
  %104 = tail call i32 @nouveau_gem_new(ptr noundef %9, i64 noundef 4096, i32 noundef 0, i32 noundef 4, i32 noundef 0, i32 noundef 0, ptr noundef %103) #7
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %130

106:                                              ; preds = %102
  %107 = load ptr, ptr %103, align 4
  %108 = tail call i32 @nouveau_bo_pin(ptr noundef %107, i32 noundef 4, i1 noundef zeroext false) #7
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %130

110:                                              ; preds = %106
  %111 = load i8, ptr %19, align 1
  %112 = icmp ugt i8 %111, 5
  br i1 %112, label %113, label %121

113:                                              ; preds = %110
  %114 = load ptr, ptr %103, align 4
  %115 = load ptr, ptr %68, align 8
  %116 = getelementptr inbounds %struct.nouveau_channel, ptr %115, i32 0, i32 3
  %117 = load ptr, ptr %116, align 8
  %118 = getelementptr inbounds %struct.nouveau_abi16_chan, ptr %57, i32 0, i32 4
  %119 = tail call i32 @nouveau_vma_new(ptr noundef %114, ptr noundef %117, ptr noundef %118) #7
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %130

121:                                              ; preds = %113, %110
  %122 = load ptr, ptr %103, align 4
  %123 = getelementptr inbounds %struct.drm_nouveau_channel_alloc, ptr %1, i32 0, i32 4
  %124 = tail call i32 @drm_gem_handle_create(ptr noundef %2, ptr noundef %122, ptr noundef %123) #7
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %121
  %127 = getelementptr inbounds %struct.nouveau_abi16_chan, ptr %57, i32 0, i32 5
  %128 = tail call i32 @nvkm_mm_init(ptr noundef %127, i8 noundef zeroext 0, i32 noundef 0, i32 noundef 4096, i32 noundef 1) #7
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %132, label %130

130:                                              ; preds = %126, %121, %113, %106, %102, %59
  %131 = phi i32 [ %128, %126 ], [ %124, %121 ], [ %119, %113 ], [ %108, %106 ], [ %69, %59 ], [ %104, %102 ]
  tail call fastcc void @nouveau_abi16_chan_fini(ptr noundef nonnull %57)
  br label %132

132:                                              ; preds = %130, %126, %55, %51, %48, %25, %14
  %133 = phi i32 [ -19, %14 ], [ -38, %25 ], [ -22, %51 ], [ -22, %48 ], [ -12, %55 ], [ %131, %130 ], [ 0, %126 ]
  %134 = getelementptr inbounds %struct.nvif_object, ptr %12, i32 0, i32 1
  %135 = load ptr, ptr %134, align 4
  %136 = getelementptr inbounds %struct.nouveau_cli, ptr %135, i32 0, i32 2
  tail call void @mutex_unlock(ptr noundef %136) #7
  br label %137

137:                                              ; preds = %132, %8
  %138 = phi i32 [ -12, %8 ], [ %133, %132 ]
  ret i32 %138
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvif_fifo_runlist(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_channel_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_gem_new(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_bo_pin(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_vma_new(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_handle_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_mm_init(ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nouveau_abi16_usif(ptr noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.nv_device_v0, align 8
  %5 = icmp ugt i32 %2, 23
  br i1 %5, label %6, label %66

6:                                                ; preds = %3
  %7 = load i8, ptr %1, align 8
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %66

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %1, i32 0, i32 1
  %11 = load i8, ptr %10, align 1
  switch i8 %11, label %66 [
    i8 2, label %12
    i8 4, label %12
    i8 1, label %12
  ]

12:                                               ; preds = %9, %9, %9
  %13 = icmp eq ptr %0, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.drm_file, ptr %0, i32 0, i32 19
  %16 = load ptr, ptr %15, align 4
  br label %17

17:                                               ; preds = %14, %12
  %18 = phi ptr [ %16, %14 ], [ null, %12 ]
  %19 = getelementptr inbounds %struct.nouveau_cli, ptr %18, i32 0, i32 9
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %35

22:                                               ; preds = %17
  %23 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %24 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %23, i32 noundef 3520, i32 noundef 216) #8
  store ptr %24, ptr %19, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %66, label %26

26:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) @__const.nouveau_abi16.args, i32 16, i1 false) #7
  %27 = getelementptr inbounds %struct.nouveau_abi16, ptr %24, i32 0, i32 1
  store volatile ptr %27, ptr %27, align 8
  %28 = getelementptr inbounds %struct.nouveau_abi16, ptr %24, i32 0, i32 1, i32 1
  store ptr %27, ptr %28, align 4
  %29 = call i32 @nvif_device_ctor(ptr noundef %18, ptr noundef nonnull @.str.3, i32 noundef 0, i32 noundef 128, ptr noundef nonnull %4, i32 noundef 16, ptr noundef nonnull %24) #7
  %30 = icmp eq i32 %29, 0
  %31 = load ptr, ptr %19, align 4
  br i1 %30, label %33, label %32

32:                                               ; preds = %26
  call void @kfree(ptr noundef %31) #7
  store ptr null, ptr %19, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7
  br label %66

33:                                               ; preds = %26
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7
  %34 = icmp eq ptr %31, null
  br i1 %34, label %66, label %35

35:                                               ; preds = %33, %17
  %36 = phi ptr [ %31, %33 ], [ %20, %17 ]
  %37 = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %1, i32 0, i32 5
  %38 = load i64, ptr %37, align 8
  %39 = icmp eq i64 %38, -1
  br i1 %39, label %61, label %40

40:                                               ; preds = %35
  %41 = trunc i64 %38 to i32
  %42 = getelementptr inbounds %struct.nouveau_abi16, ptr %36, i32 0, i32 1
  br label %43

43:                                               ; preds = %47, %40
  %44 = phi ptr [ %42, %40 ], [ %45, %47 ]
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, %42
  br i1 %46, label %66, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.nouveau_abi16_chan, ptr %45, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.nouveau_channel, ptr %49, i32 0, i32 4
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %51, %41
  br i1 %52, label %53, label %43

53:                                               ; preds = %47
  %54 = icmp eq ptr %45, null
  br i1 %54, label %66, label %55

55:                                               ; preds = %53
  %56 = getelementptr inbounds %struct.nouveau_channel, ptr %49, i32 0, i32 17
  %57 = ptrtoint ptr %56 to i32
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %1, i32 0, i32 6
  store i64 %58, ptr %59, align 8
  %60 = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %1, i32 0, i32 3
  store i8 -1, ptr %60, align 2
  br label %66

61:                                               ; preds = %35
  %62 = ptrtoint ptr %36 to i32
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %1, i32 0, i32 6
  store i64 %63, ptr %64, align 8
  %65 = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %1, i32 0, i32 3
  store i8 -1, ptr %65, align 2
  br label %66

66:                                               ; preds = %61, %55, %53, %43, %33, %32, %22, %9, %6, %3
  %67 = phi i32 [ 0, %55 ], [ 0, %61 ], [ -13, %9 ], [ -38, %6 ], [ -12, %33 ], [ -22, %53 ], [ -38, %3 ], [ -12, %22 ], [ -12, %32 ], [ -22, %43 ]
  ret i32 %67
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nouveau_abi16_ioctl_channel_free(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @nouveau_abi16_get(ptr noundef %2)
  %5 = icmp eq ptr %4, null
  br i1 %5, label %27, label %6, !prof !13

6:                                                ; preds = %3
  %7 = load i32, ptr %1, align 4
  %8 = getelementptr inbounds %struct.nouveau_abi16, ptr %4, i32 0, i32 1
  br label %9

9:                                                ; preds = %13, %6
  %10 = phi ptr [ %8, %6 ], [ %11, %13 ]
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %8
  br i1 %12, label %22, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.nouveau_abi16_chan, ptr %11, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.nouveau_channel, ptr %15, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, %7
  br i1 %18, label %19, label %9

19:                                               ; preds = %13
  %20 = icmp eq ptr %11, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %19
  tail call fastcc void @nouveau_abi16_chan_fini(ptr noundef nonnull %11)
  br label %22

22:                                               ; preds = %21, %19, %9
  %23 = phi i32 [ 0, %21 ], [ -2, %19 ], [ -2, %9 ]
  %24 = getelementptr inbounds %struct.nvif_object, ptr %4, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.nouveau_cli, ptr %25, i32 0, i32 2
  tail call void @mutex_unlock(ptr noundef %26) #7
  br label %27

27:                                               ; preds = %22, %3
  %28 = phi i32 [ -12, %3 ], [ %23, %22 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nouveau_abi16_ioctl_grobj_alloc(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 4
  %5 = tail call ptr @nouveau_abi16_get(ptr noundef %2)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store ptr null, ptr %4, align 4, !annotation !14
  %6 = icmp eq ptr %5, null
  br i1 %6, label %136, label %7, !prof !13

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.drm_nouveau_grobj_alloc, ptr %1, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, -1
  %11 = getelementptr inbounds %struct.nvif_object, ptr %5, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  br i1 %10, label %13, label %15

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.nouveau_cli, ptr %12, i32 0, i32 2
  tail call void @mutex_unlock(ptr noundef %14) #7
  br label %136

15:                                               ; preds = %7
  %16 = load i32, ptr %1, align 4
  %17 = getelementptr inbounds %struct.nouveau_abi16, ptr %5, i32 0, i32 1
  br label %18

18:                                               ; preds = %22, %15
  %19 = phi ptr [ %17, %15 ], [ %20, %22 ]
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, %17
  br i1 %21, label %31, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.nouveau_abi16_chan, ptr %20, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.nouveau_channel, ptr %24, i32 0, i32 4
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, %16
  br i1 %27, label %28, label %18

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.nouveau_abi16_chan, ptr %20, i32 0, i32 1
  %30 = icmp eq ptr %20, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %28, %18
  %32 = getelementptr inbounds %struct.nouveau_cli, ptr %12, i32 0, i32 2
  tail call void @mutex_unlock(ptr noundef %32) #7
  br label %136

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.nouveau_channel, ptr %24, i32 0, i32 17
  %35 = call i32 @nvif_object_sclass_get(ptr noundef %34, ptr noundef nonnull %4) #7
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load ptr, ptr %11, align 4
  %39 = getelementptr inbounds %struct.nouveau_cli, ptr %38, i32 0, i32 2
  call void @mutex_unlock(ptr noundef %39) #7
  br label %136

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.drm_nouveau_grobj_alloc, ptr %1, i32 0, i32 2
  %42 = load i32, ptr %41, align 4
  %43 = trunc i32 %42 to i8
  switch i8 %43, label %100 [
    i8 110, label %56
    i8 -79, label %52
    i8 -78, label %48
    i8 -77, label %44
  ]

44:                                               ; preds = %40
  %45 = icmp eq i32 %35, 0
  br i1 %45, label %103, label %46

46:                                               ; preds = %44
  %47 = load ptr, ptr %4, align 4
  br label %92

48:                                               ; preds = %40
  %49 = icmp eq i32 %35, 0
  br i1 %49, label %103, label %50

50:                                               ; preds = %48
  %51 = load ptr, ptr %4, align 4
  br label %83

52:                                               ; preds = %40
  %53 = icmp eq i32 %35, 0
  br i1 %53, label %103, label %54

54:                                               ; preds = %52
  %55 = load ptr, ptr %4, align 4
  br label %74

56:                                               ; preds = %40
  %57 = icmp eq i32 %35, 0
  br i1 %57, label %103, label %58

58:                                               ; preds = %56
  %59 = load ptr, ptr %4, align 4
  br label %60

60:                                               ; preds = %60, %58
  %61 = phi i32 [ 0, %58 ], [ %67, %60 ]
  %62 = getelementptr %struct.nvif_sclass, ptr %59, i32 %61
  %63 = load i32, ptr %62, align 4
  %64 = add i32 %63, 7
  %65 = icmp ult i32 %64, 4
  %66 = select i1 %65, i32 %63, i32 0
  %67 = add nuw nsw i32 %61, 1
  %68 = icmp eq i32 %66, 0
  %69 = icmp slt i32 %67, %35
  %70 = select i1 %68, i1 %69, i1 false
  br i1 %70, label %60, label %100

71:                                               ; preds = %74
  %72 = add nuw nsw i32 %75, 1
  %73 = icmp eq i32 %72, %35
  br i1 %73, label %103, label %74

74:                                               ; preds = %71, %54
  %75 = phi i32 [ 0, %54 ], [ %72, %71 ]
  %76 = getelementptr %struct.nvif_sclass, ptr %55, i32 %75
  %77 = load i32, ptr %76, align 4
  %78 = and i32 %77, 255
  %79 = icmp eq i32 %78, 177
  br i1 %79, label %98, label %71

80:                                               ; preds = %83
  %81 = add nuw nsw i32 %84, 1
  %82 = icmp eq i32 %81, %35
  br i1 %82, label %103, label %83

83:                                               ; preds = %80, %50
  %84 = phi i32 [ 0, %50 ], [ %81, %80 ]
  %85 = getelementptr %struct.nvif_sclass, ptr %51, i32 %84
  %86 = load i32, ptr %85, align 4
  %87 = and i32 %86, 255
  %88 = icmp eq i32 %87, 178
  br i1 %88, label %98, label %80

89:                                               ; preds = %92
  %90 = add nuw nsw i32 %93, 1
  %91 = icmp eq i32 %90, %35
  br i1 %91, label %103, label %92

92:                                               ; preds = %89, %46
  %93 = phi i32 [ 0, %46 ], [ %90, %89 ]
  %94 = getelementptr %struct.nvif_sclass, ptr %47, i32 %93
  %95 = load i32, ptr %94, align 4
  %96 = and i32 %95, 255
  %97 = icmp eq i32 %96, 179
  br i1 %97, label %98, label %89

98:                                               ; preds = %92, %83, %74
  %99 = phi i32 [ %77, %74 ], [ %86, %83 ], [ %95, %92 ]
  call void @nvif_object_sclass_put(ptr noundef nonnull %4) #7
  br label %107

100:                                              ; preds = %60, %40
  %101 = phi i32 [ %42, %40 ], [ %66, %60 ]
  call void @nvif_object_sclass_put(ptr noundef nonnull %4) #7
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %104, label %107

103:                                              ; preds = %89, %80, %71, %56, %52, %48, %44
  call void @nvif_object_sclass_put(ptr noundef nonnull %4) #7
  br label %104

104:                                              ; preds = %103, %100
  %105 = load ptr, ptr %11, align 4
  %106 = getelementptr inbounds %struct.nouveau_cli, ptr %105, i32 0, i32 2
  call void @mutex_unlock(ptr noundef %106) #7
  br label %136

107:                                              ; preds = %100, %98
  %108 = phi i32 [ %99, %98 ], [ %101, %100 ]
  %109 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %110 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %109, i32 noundef 3520, i32 noundef 56) #8
  %111 = icmp eq ptr %110, null
  br i1 %111, label %112, label %115

112:                                              ; preds = %107
  %113 = load ptr, ptr %11, align 4
  %114 = getelementptr inbounds %struct.nouveau_cli, ptr %113, i32 0, i32 2
  call void @mutex_unlock(ptr noundef %114) #7
  br label %136

115:                                              ; preds = %107
  %116 = getelementptr inbounds %struct.nouveau_abi16_ntfy, ptr %110, i32 0, i32 1
  %117 = getelementptr inbounds %struct.nouveau_abi16_chan, ptr %20, i32 0, i32 2
  %118 = load ptr, ptr %117, align 4
  %119 = getelementptr inbounds %struct.list_head, ptr %118, i32 0, i32 1
  store ptr %116, ptr %119, align 4
  store ptr %118, ptr %116, align 8
  %120 = getelementptr inbounds %struct.nouveau_abi16_ntfy, ptr %110, i32 0, i32 1, i32 1
  store ptr %117, ptr %120, align 4
  store volatile ptr %116, ptr %117, align 4
  %121 = getelementptr inbounds %struct.nvif_client, ptr %12, i32 0, i32 3
  store i8 2, ptr %121, align 8
  %122 = load ptr, ptr %29, align 4
  %123 = getelementptr inbounds %struct.nouveau_channel, ptr %122, i32 0, i32 17
  %124 = load i32, ptr %8, align 4
  %125 = call i32 @nvif_object_ctor(ptr noundef %123, ptr noundef nonnull @.str.1, i32 noundef %124, i32 noundef %108, ptr noundef null, i32 noundef 0, ptr noundef nonnull %110) #7
  store i8 0, ptr %121, align 8
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %133, label %127

127:                                              ; preds = %115
  call void @nvif_object_dtor(ptr noundef nonnull %110) #7
  %128 = getelementptr inbounds %struct.nouveau_abi16_chan, ptr %20, i32 0, i32 5
  %129 = getelementptr inbounds %struct.nouveau_abi16_ntfy, ptr %110, i32 0, i32 2
  call void @nvkm_mm_free(ptr noundef %128, ptr noundef %129) #7
  %130 = load ptr, ptr %120, align 4
  %131 = load ptr, ptr %116, align 8
  %132 = getelementptr inbounds %struct.list_head, ptr %131, i32 0, i32 1
  store ptr %130, ptr %132, align 4
  store volatile ptr %131, ptr %130, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %116, align 8
  store ptr inttoptr (i32 290 to ptr), ptr %120, align 4
  call void @kfree(ptr noundef nonnull %110) #7
  br label %133

133:                                              ; preds = %127, %115
  %134 = load ptr, ptr %11, align 4
  %135 = getelementptr inbounds %struct.nouveau_cli, ptr %134, i32 0, i32 2
  call void @mutex_unlock(ptr noundef %135) #7
  br label %136

136:                                              ; preds = %133, %112, %104, %37, %31, %13, %3
  %137 = phi i32 [ -22, %13 ], [ %35, %37 ], [ %125, %133 ], [ -12, %112 ], [ -22, %104 ], [ -2, %31 ], [ -12, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  ret i32 %137
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_sclass_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_object_sclass_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nouveau_abi16_ioctl_notifierobj_alloc(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.nv_dma_v0, align 8
  %5 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = tail call ptr @nouveau_abi16_get(ptr noundef %2)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i32 24, i1 false)
  %8 = icmp eq ptr %7, null
  br i1 %8, label %121, label %9, !prof !13

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.nvif_device, ptr %7, i32 0, i32 1, i32 4
  %11 = load i8, ptr %10, align 1
  %12 = icmp ugt i8 %11, 6
  %13 = getelementptr inbounds %struct.nvif_object, ptr %7, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  br i1 %12, label %15, label %17, !prof !13

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.nouveau_cli, ptr %14, i32 0, i32 2
  tail call void @mutex_unlock(ptr noundef %16) #7
  br label %121

17:                                               ; preds = %9
  %18 = load i32, ptr %1, align 4
  %19 = getelementptr inbounds %struct.nouveau_abi16, ptr %7, i32 0, i32 1
  br label %20

20:                                               ; preds = %24, %17
  %21 = phi ptr [ %19, %17 ], [ %22, %24 ]
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, %19
  br i1 %23, label %33, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.nouveau_abi16_chan, ptr %22, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.nouveau_channel, ptr %26, i32 0, i32 4
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, %18
  br i1 %29, label %30, label %20

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.nouveau_abi16_chan, ptr %22, i32 0, i32 1
  %32 = icmp eq ptr %22, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %30, %20
  %34 = getelementptr inbounds %struct.nouveau_cli, ptr %14, i32 0, i32 2
  tail call void @mutex_unlock(ptr noundef %34) #7
  br label %121

35:                                               ; preds = %30
  %36 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %37 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %36, i32 noundef 3520, i32 noundef 56) #8
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load ptr, ptr %13, align 4
  %41 = getelementptr inbounds %struct.nouveau_cli, ptr %40, i32 0, i32 2
  tail call void @mutex_unlock(ptr noundef %41) #7
  br label %121

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct.nouveau_abi16_ntfy, ptr %37, i32 0, i32 1
  %44 = getelementptr inbounds %struct.nouveau_abi16_chan, ptr %22, i32 0, i32 2
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  store ptr %43, ptr %46, align 4
  store ptr %45, ptr %43, align 8
  %47 = getelementptr inbounds %struct.nouveau_abi16_ntfy, ptr %37, i32 0, i32 1, i32 1
  store ptr %44, ptr %47, align 4
  store volatile ptr %43, ptr %44, align 4
  %48 = getelementptr inbounds %struct.nouveau_abi16_chan, ptr %22, i32 0, i32 5
  %49 = getelementptr inbounds %struct.drm_nouveau_notifierobj_alloc, ptr %1, i32 0, i32 2
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr inbounds %struct.nouveau_abi16_ntfy, ptr %37, i32 0, i32 2
  %52 = tail call i32 @nvkm_mm_head(ptr noundef %48, i8 noundef zeroext 0, i8 noundef zeroext 1, i32 noundef %50, i32 noundef %50, i32 noundef 1, ptr noundef %51) #7
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %112

54:                                               ; preds = %42
  %55 = load ptr, ptr %51, align 8
  %56 = getelementptr inbounds %struct.nvkm_mm_node, ptr %55, i32 0, i32 5
  %57 = load i32, ptr %56, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.nv_dma_v0, ptr %4, i32 0, i32 4
  %60 = getelementptr inbounds %struct.nvkm_mm_node, ptr %55, i32 0, i32 6
  %61 = load i32, ptr %60, align 4
  %62 = add i32 %57, -1
  %63 = add i32 %62, %61
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.nv_dma_v0, ptr %4, i32 0, i32 5
  %66 = load i8, ptr %10, align 1
  %67 = icmp ugt i8 %66, 5
  br i1 %67, label %68, label %75

68:                                               ; preds = %54
  %69 = getelementptr inbounds %struct.nv_dma_v0, ptr %4, i32 0, i32 1
  store i8 0, ptr %69, align 1
  %70 = getelementptr inbounds %struct.nv_dma_v0, ptr %4, i32 0, i32 2
  store i8 0, ptr %70, align 2
  %71 = getelementptr inbounds %struct.nouveau_abi16_chan, ptr %22, i32 0, i32 4
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr inbounds %struct.nouveau_vma, ptr %72, i32 0, i32 3
  %74 = load i64, ptr %73, align 8
  br label %96

75:                                               ; preds = %54
  %76 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 7
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, null
  %79 = getelementptr inbounds %struct.nv_dma_v0, ptr %4, i32 0, i32 1
  br i1 %78, label %90, label %80

80:                                               ; preds = %75
  store i8 4, ptr %79, align 1
  %81 = getelementptr inbounds %struct.nv_dma_v0, ptr %4, i32 0, i32 2
  store i8 3, ptr %81, align 2
  %82 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 7, i32 1
  %83 = load i32, ptr %82, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds %struct.nouveau_abi16_chan, ptr %22, i32 0, i32 3
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr inbounds %struct.nouveau_bo, ptr %86, i32 0, i32 13
  %88 = load i64, ptr %87, align 8
  %89 = add i64 %88, %84
  br label %96

90:                                               ; preds = %75
  store i8 0, ptr %79, align 1
  %91 = getelementptr inbounds %struct.nv_dma_v0, ptr %4, i32 0, i32 2
  store i8 3, ptr %91, align 2
  %92 = getelementptr inbounds %struct.nouveau_abi16_chan, ptr %22, i32 0, i32 3
  %93 = load ptr, ptr %92, align 4
  %94 = getelementptr inbounds %struct.nouveau_bo, ptr %93, i32 0, i32 13
  %95 = load i64, ptr %94, align 8
  br label %96

96:                                               ; preds = %90, %80, %68
  %97 = phi i64 [ %89, %80 ], [ %95, %90 ], [ %74, %68 ]
  %98 = add i64 %97, %58
  store i64 %98, ptr %59, align 8
  %99 = add i64 %97, %64
  store i64 %99, ptr %65, align 8
  %100 = getelementptr inbounds %struct.nvif_client, ptr %14, i32 0, i32 3
  store i8 2, ptr %100, align 8
  %101 = load ptr, ptr %31, align 4
  %102 = getelementptr inbounds %struct.nouveau_channel, ptr %101, i32 0, i32 17
  %103 = getelementptr inbounds %struct.drm_nouveau_notifierobj_alloc, ptr %1, i32 0, i32 1
  %104 = load i32, ptr %103, align 4
  %105 = call i32 @nvif_object_ctor(ptr noundef %102, ptr noundef nonnull @.str.2, i32 noundef %104, i32 noundef 61, ptr noundef nonnull %4, i32 noundef 24, ptr noundef nonnull %37) #7
  store i8 0, ptr %100, align 8
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %96
  %108 = load ptr, ptr %51, align 8
  %109 = getelementptr inbounds %struct.nvkm_mm_node, ptr %108, i32 0, i32 5
  %110 = load i32, ptr %109, align 4
  %111 = getelementptr inbounds %struct.drm_nouveau_notifierobj_alloc, ptr %1, i32 0, i32 3
  store i32 %110, ptr %111, align 4
  br label %117

112:                                              ; preds = %96, %42
  %113 = phi i32 [ %105, %96 ], [ %52, %42 ]
  call void @nvif_object_dtor(ptr noundef nonnull %37) #7
  call void @nvkm_mm_free(ptr noundef %48, ptr noundef %51) #7
  %114 = load ptr, ptr %47, align 4
  %115 = load ptr, ptr %43, align 8
  %116 = getelementptr inbounds %struct.list_head, ptr %115, i32 0, i32 1
  store ptr %114, ptr %116, align 4
  store volatile ptr %115, ptr %114, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %43, align 8
  store ptr inttoptr (i32 290 to ptr), ptr %47, align 4
  call void @kfree(ptr noundef nonnull %37) #7
  br label %117

117:                                              ; preds = %112, %107
  %118 = phi i32 [ %113, %112 ], [ 0, %107 ]
  %119 = load ptr, ptr %13, align 4
  %120 = getelementptr inbounds %struct.nouveau_cli, ptr %119, i32 0, i32 2
  call void @mutex_unlock(ptr noundef %120) #7
  br label %121

121:                                              ; preds = %117, %39, %33, %15, %3
  %122 = phi i32 [ -22, %15 ], [ %118, %117 ], [ -12, %39 ], [ -2, %33 ], [ -12, %3 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #7
  ret i32 %122
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_mm_head(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nouveau_abi16_ioctl_gpuobj_free(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @nouveau_abi16_get(ptr noundef %2)
  %5 = icmp eq ptr %4, null
  br i1 %5, label %47, label %6, !prof !13

6:                                                ; preds = %3
  %7 = load i32, ptr %1, align 4
  %8 = getelementptr inbounds %struct.nouveau_abi16, ptr %4, i32 0, i32 1
  br label %9

9:                                                ; preds = %13, %6
  %10 = phi ptr [ %8, %6 ], [ %11, %13 ]
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %8
  br i1 %12, label %42, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.nouveau_abi16_chan, ptr %11, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.nouveau_channel, ptr %15, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, %7
  br i1 %18, label %19, label %9

19:                                               ; preds = %13
  %20 = icmp eq ptr %11, null
  br i1 %20, label %42, label %21

21:                                               ; preds = %19
  %22 = tail call i32 @nouveau_channel_idle(ptr noundef %15) #7
  %23 = getelementptr inbounds %struct.nouveau_abi16_chan, ptr %11, i32 0, i32 2
  %24 = getelementptr inbounds %struct.drm_nouveau_gpuobj_free, ptr %1, i32 0, i32 1
  br label %25

25:                                               ; preds = %29, %21
  %26 = phi ptr [ %23, %21 ], [ %27, %29 ]
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, %23
  br i1 %28, label %42, label %29

29:                                               ; preds = %25
  %30 = getelementptr i8, ptr %27, i32 -28
  %31 = load i32, ptr %30, align 4
  %32 = load i32, ptr %24, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %25

34:                                               ; preds = %29
  %35 = getelementptr i8, ptr %27, i32 -40
  tail call void @nvif_object_dtor(ptr noundef %35) #7
  %36 = getelementptr inbounds %struct.nouveau_abi16_chan, ptr %11, i32 0, i32 5
  %37 = getelementptr i8, ptr %27, i32 8
  tail call void @nvkm_mm_free(ptr noundef %36, ptr noundef %37) #7
  %38 = getelementptr i8, ptr %27, i32 4
  %39 = load ptr, ptr %38, align 4
  %40 = load ptr, ptr %27, align 4
  %41 = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  store ptr %39, ptr %41, align 4
  store volatile ptr %40, ptr %39, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %27, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %38, align 4
  tail call void @kfree(ptr noundef %35) #7
  br label %42

42:                                               ; preds = %34, %25, %19, %9
  %43 = phi i32 [ -22, %19 ], [ 0, %34 ], [ -2, %25 ], [ -22, %9 ]
  %44 = getelementptr inbounds %struct.nvif_object, ptr %4, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.nouveau_cli, ptr %45, i32 0, i32 2
  tail call void @mutex_unlock(ptr noundef %46) #7
  br label %47

47:                                               ; preds = %42, %3
  %48 = phi i32 [ -12, %3 ], [ %43, %42 ]
  ret i32 %48
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_channel_idle(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_device_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_vma_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_bo_unpin(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_mm_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_channel_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_object_dtor(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_mm_free(ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(2) }

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
!8 = !{i64 2148381382}
!9 = !{i64 778316, i64 2148268287, i64 2148268313, i64 2148268360, i64 2148268382, i64 2148268410, i64 2148268430}
!10 = !{i64 2148283517, i64 2148283549, i64 2148283578, i64 2148283612, i64 2148283643, i64 2148283666}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2149296272}
!13 = !{!"branch_weights", i32 1, i32 2000}
!14 = !{!"auto-init"}
