; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nouveau_ttm.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nouveau_ttm.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ttm_resource_manager_func = type { ptr, ptr, ptr }
%struct.ttm_device_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.seqcount_ww_mutex = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.nouveau_bo = type { %struct.ttm_buffer_object, %struct.ttm_placement, i32, [3 x %struct.ttm_place], [3 x %struct.ttm_place], i8, %struct.ttm_bo_kmap_obj, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, i8, i64, %struct.list_head, i24, i32, ptr }
%struct.ttm_placement = type { i32, ptr, i32, ptr }
%struct.ttm_place = type { i32, i32, i32, i32 }
%struct.ttm_bo_kmap_obj = type { ptr, ptr, i32, ptr }
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
%struct.nouveau_drm = type { %struct.nvif_parent, %struct.nouveau_cli, %struct.nouveau_cli, ptr, %struct.list_head, %struct.mutex, i8, %struct.anon.83, %struct.anon.84, %struct.anon.85, ptr, %struct.anon.86, ptr, ptr, ptr, ptr, %struct.nvif_object, %struct.anon.87, %struct.nvbios, ptr, %struct.work_struct, %struct.mutex, i32, %struct.work_struct, i32, ptr, ptr, ptr, %struct.dev_pm_domain, ptr, ptr, %struct.anon.99 }
%struct.nvif_parent = type { ptr }
%struct.anon.83 = type { ptr, i32, i32, i8 }
%struct.anon.84 = type { %struct.ttm_device, %struct.atomic_t, ptr, ptr, %struct.nvif_object, i32, i32, [2 x i32], [2 x i32], %struct.mutex, %struct.list_head }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.76] }
%struct.anon.76 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
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
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.99 = type { ptr, %struct.mutex, i8 }
%struct.anon.174 = type { %struct.nvkm_object, ptr }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.172, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.172 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.anon.81 = type { i8, i8 }
%struct.nvkm_pci = type { ptr, %struct.nvkm_subdev, ptr, i32, %struct.anon.104, %struct.anon.105, i8 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.anon.104 = type { ptr, i32, i64, i64, i32, i8, i8 }
%struct.anon.105 = type { i32, i8 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.69, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.74, ptr, i32, ptr, i8, i32 }
%struct.anon.69 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.74 = type { i32, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.70, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.71, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.72, ptr, %struct.address_space, %struct.list_head, %union.anon.73, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.70 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%union.anon.71 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.72 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.73 = type { ptr }
%struct.nvkm_device_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.anon.175 = type { %struct.nvkm_object, ptr }
%struct.dma_fence = type { ptr, ptr, %union.anon.1, i64, i64, i32, %struct.kref, i32 }
%union.anon.1 = type { i64 }

@nouveau_vram_manager = dso_local constant %struct.ttm_resource_manager_func { ptr @nouveau_vram_manager_new, ptr @nouveau_manager_del, ptr null }, align 4
@nouveau_gart_manager = dso_local constant %struct.ttm_resource_manager_func { ptr @nouveau_gart_manager_new, ptr @nouveau_manager_del, ptr null }, align 4
@nv04_gart_manager = dso_local constant %struct.ttm_resource_manager_func { ptr @nv04_gart_manager_new, ptr @nouveau_manager_del, ptr null }, align 4
@nouveau_bo_driver = external dso_local global %struct.ttm_device_funcs, align 4
@.str = private unnamed_addr constant [38 x i8] c"%s: error initialising bo driver, %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"%s: VRAM mm init failed, %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"%s: GART mm init failed, %d\0A\00", align 1
@nouveau_ttm_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"&drm->ttm.io_reserve_mutex\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"%s: VRAM: %d MiB\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"%s: GART: %d MiB\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"include/drm/ttm/ttm_resource.h\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nouveau_vram_manager_new(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.ttm_buffer_object, ptr %1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr i8, ptr %6, i32 -544
  %8 = load i64, ptr %7, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %34, label %10

10:                                               ; preds = %4
  %11 = getelementptr i8, ptr %6, i32 -1304
  %12 = getelementptr inbounds %struct.nouveau_bo, ptr %1, i32 0, i32 15
  %13 = load i32, ptr %12, align 8
  %14 = lshr i32 %13, 6
  %15 = trunc i32 %14 to i8
  %16 = lshr i32 %13, 14
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 7
  %19 = tail call i32 @nouveau_mem_new(ptr noundef %11, i8 noundef zeroext %15, i8 noundef zeroext %18, ptr noundef %3) #4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %10
  %22 = load ptr, ptr %3, align 4
  tail call void @ttm_resource_init(ptr noundef %1, ptr noundef %2, ptr noundef %22) #4
  %23 = load ptr, ptr %3, align 4
  %24 = load i32, ptr %12, align 8
  %25 = and i32 %24, 1
  %26 = icmp ne i32 %25, 0
  %27 = trunc i32 %24 to i8
  %28 = lshr i8 %27, 1
  %29 = and i8 %28, 31
  %30 = tail call i32 @nouveau_mem_vram(ptr noundef %23, i1 noundef zeroext %26, i8 noundef zeroext %29) #4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %21
  %33 = load ptr, ptr %3, align 4
  tail call void @nouveau_mem_del(ptr noundef %33) #4
  br label %34

34:                                               ; preds = %32, %21, %10, %4
  %35 = phi i32 [ %30, %32 ], [ -12, %4 ], [ %19, %10 ], [ 0, %21 ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nouveau_manager_del(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  tail call void @nouveau_mem_del(ptr noundef %1) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nouveau_gart_manager_new(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.ttm_buffer_object, ptr %1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr i8, ptr %6, i32 -1304
  %8 = getelementptr inbounds %struct.nouveau_bo, ptr %1, i32 0, i32 15
  %9 = load i32, ptr %8, align 8
  %10 = lshr i32 %9, 6
  %11 = trunc i32 %10 to i8
  %12 = lshr i32 %9, 14
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 7
  %15 = tail call i32 @nouveau_mem_new(ptr noundef %7, i8 noundef zeroext %11, i8 noundef zeroext %14, ptr noundef %3) #4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load ptr, ptr %3, align 4
  tail call void @ttm_resource_init(ptr noundef %1, ptr noundef %2, ptr noundef %18) #4
  %19 = load ptr, ptr %3, align 4
  store i32 0, ptr %19, align 4
  br label %20

20:                                               ; preds = %17, %4
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv04_gart_manager_new(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.ttm_buffer_object, ptr %1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr i8, ptr %6, i32 -1304
  %8 = getelementptr inbounds %struct.nouveau_bo, ptr %1, i32 0, i32 15
  %9 = load i32, ptr %8, align 8
  %10 = lshr i32 %9, 6
  %11 = trunc i32 %10 to i8
  %12 = lshr i32 %9, 14
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 7
  %15 = tail call i32 @nouveau_mem_new(ptr noundef %7, i8 noundef zeroext %11, i8 noundef zeroext %14, ptr noundef %3) #4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %37

17:                                               ; preds = %4
  %18 = load ptr, ptr %3, align 4
  tail call void @ttm_resource_init(ptr noundef %1, ptr noundef %2, ptr noundef %18) #4
  %19 = getelementptr inbounds %struct.nouveau_mem, ptr %18, i32 0, i32 1
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.nouveau_cli, ptr %20, i32 0, i32 5, i32 1
  %22 = load ptr, ptr %3, align 4
  %23 = getelementptr inbounds %struct.ttm_resource, ptr %22, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = shl i32 %24, 12
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.nouveau_mem, ptr %18, i32 0, i32 5
  %28 = tail call i32 @nvif_vmm_get(ptr noundef %21, i32 noundef 1, i1 noundef zeroext false, i8 noundef zeroext 12, i8 noundef zeroext 0, i64 noundef %26, ptr noundef %27) #4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %17
  %31 = load ptr, ptr %3, align 4
  tail call void @nouveau_mem_del(ptr noundef %31) #4
  br label %37

32:                                               ; preds = %17
  %33 = load i64, ptr %27, align 8
  %34 = lshr i64 %33, 12
  %35 = trunc i64 %34 to i32
  %36 = load ptr, ptr %3, align 4
  store i32 %35, ptr %36, align 4
  br label %37

37:                                               ; preds = %32, %30, %4
  %38 = phi i32 [ %28, %30 ], [ 0, %32 ], [ %15, %4 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nouveau_ttm_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 2, i32 3, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.anon.174, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 20
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 2, i32 4, i32 3
  %11 = load i8, ptr %10, align 2
  %12 = zext i8 %11 to i32
  %13 = icmp eq i8 %11, 0
  br i1 %13, label %243, label %14

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 2, i32 4, i32 8
  %16 = load ptr, ptr %15, align 8
  br label %17

17:                                               ; preds = %23, %14
  %18 = phi i32 [ 0, %14 ], [ %24, %23 ]
  %19 = getelementptr %struct.anon.81, ptr %16, i32 %18
  %20 = load i8, ptr %19, align 1
  %21 = and i8 %20, 98
  %22 = icmp eq i8 %21, 98
  br i1 %22, label %26, label %23

23:                                               ; preds = %17
  %24 = add nuw nsw i32 %18, 1
  %25 = icmp eq i32 %24, %12
  br i1 %25, label %243, label %17

26:                                               ; preds = %17
  %27 = getelementptr %struct.nouveau_drm, ptr %0, i32 0, i32 8, i32 7, i32 0
  store i32 %18, ptr %27, align 4
  br label %28

28:                                               ; preds = %34, %26
  %29 = phi i32 [ 0, %26 ], [ %35, %34 ]
  %30 = getelementptr %struct.anon.81, ptr %16, i32 %29
  %31 = load i8, ptr %30, align 1
  %32 = and i8 %31, 34
  %33 = icmp eq i8 %32, 34
  br i1 %33, label %37, label %34

34:                                               ; preds = %28
  %35 = add nuw nsw i32 %29, 1
  %36 = icmp eq i32 %35, %12
  br i1 %36, label %243, label %28

37:                                               ; preds = %28
  %38 = getelementptr %struct.nouveau_drm, ptr %0, i32 0, i32 8, i32 8, i32 0
  store i32 %29, ptr %38, align 4
  %39 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 2, i32 3, i32 1, i32 4
  %40 = load i8, ptr %39, align 1
  %41 = icmp ugt i8 %40, 5
  br i1 %41, label %42, label %85

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 2, i32 3, i32 1, i32 2
  %44 = load i16, ptr %43, align 2
  %45 = icmp eq i16 %44, 80
  br i1 %45, label %71, label %46

46:                                               ; preds = %52, %42
  %47 = phi i32 [ %53, %52 ], [ 0, %42 ]
  %48 = getelementptr %struct.anon.81, ptr %16, i32 %47
  %49 = load i8, ptr %48, align 1
  %50 = and i8 %49, 114
  %51 = icmp eq i8 %50, 114
  br i1 %51, label %55, label %52

52:                                               ; preds = %46
  %53 = add nuw nsw i32 %47, 1
  %54 = icmp eq i32 %53, %12
  br i1 %54, label %243, label %46

55:                                               ; preds = %46
  %56 = getelementptr %struct.nouveau_drm, ptr %0, i32 0, i32 8, i32 7, i32 1
  store i32 %47, ptr %56, align 4
  br label %57

57:                                               ; preds = %63, %55
  %58 = phi i32 [ 0, %55 ], [ %64, %63 ]
  %59 = getelementptr %struct.anon.81, ptr %16, i32 %58
  %60 = load i8, ptr %59, align 1
  %61 = and i8 %60, 50
  %62 = icmp eq i8 %61, 50
  br i1 %62, label %66, label %63

63:                                               ; preds = %57
  %64 = add nuw nsw i32 %58, 1
  %65 = icmp eq i32 %64, %12
  br i1 %65, label %243, label %57

66:                                               ; preds = %57
  %67 = getelementptr %struct.nouveau_drm, ptr %0, i32 0, i32 8, i32 8, i32 1
  store i32 %58, ptr %67, align 4
  %68 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 2, i32 3, i32 1, i32 1
  %69 = load i8, ptr %68, align 1
  %70 = icmp eq i8 %69, 4
  br i1 %70, label %85, label %75

71:                                               ; preds = %42
  %72 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 2, i32 3, i32 1, i32 1
  %73 = load i8, ptr %72, align 1
  %74 = icmp eq i8 %73, 4
  br i1 %74, label %85, label %75

75:                                               ; preds = %71, %66
  br label %76

76:                                               ; preds = %82, %75
  %77 = phi i32 [ %83, %82 ], [ 0, %75 ]
  %78 = getelementptr %struct.anon.81, ptr %16, i32 %77
  %79 = load i8, ptr %78, align 1
  %80 = and i8 %79, 61
  %81 = icmp eq i8 %80, 61
  br i1 %81, label %85, label %82

82:                                               ; preds = %76
  %83 = add nuw nsw i32 %77, 1
  %84 = icmp eq i32 %83, %12
  br i1 %84, label %243, label %76

85:                                               ; preds = %76, %71, %66, %37
  %86 = phi i32 [ -1, %66 ], [ -1, %37 ], [ -1, %71 ], [ %77, %76 ]
  %87 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 8, i32 6
  store i32 %86, ptr %87, align 4
  %88 = icmp eq ptr %7, null
  br i1 %88, label %106, label %89

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.nvkm_pci, ptr %7, i32 0, i32 4
  %91 = load ptr, ptr %90, align 8
  %92 = icmp eq ptr %91, null
  br i1 %92, label %106, label %93

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 7
  store ptr %91, ptr %94, align 4
  %95 = getelementptr inbounds %struct.nvkm_pci, ptr %7, i32 0, i32 4, i32 2
  %96 = load i64, ptr %95, align 8
  %97 = trunc i64 %96 to i32
  %98 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 7, i32 1
  store i32 %97, ptr %98, align 4
  %99 = getelementptr inbounds %struct.nvkm_pci, ptr %7, i32 0, i32 4, i32 3
  %100 = load i64, ptr %99, align 8
  %101 = trunc i64 %100 to i32
  %102 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 7, i32 2
  store i32 %101, ptr %102, align 4
  %103 = getelementptr inbounds %struct.nvkm_pci, ptr %7, i32 0, i32 4, i32 5
  %104 = load i8, ptr %103, align 4, !range !8
  %105 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 7, i32 3
  store i8 %104, ptr %105, align 4
  br label %106

106:                                              ; preds = %93, %89, %85
  %107 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 8
  %108 = getelementptr inbounds %struct.drm_device, ptr %9, i32 0, i32 2
  %109 = load ptr, ptr %108, align 4
  %110 = getelementptr inbounds %struct.drm_device, ptr %9, i32 0, i32 12
  %111 = load ptr, ptr %110, align 4
  %112 = getelementptr inbounds %struct.inode, ptr %111, i32 0, i32 9
  %113 = load ptr, ptr %112, align 8
  %114 = getelementptr inbounds %struct.drm_device, ptr %9, i32 0, i32 33
  %115 = load ptr, ptr %114, align 4
  %116 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 2, i32 4, i32 1
  %117 = load i8, ptr %116, align 8
  %118 = icmp ult i8 %117, 33
  %119 = tail call i32 @ttm_device_init(ptr noundef %107, ptr noundef nonnull @nouveau_bo_driver, ptr noundef %109, ptr noundef %113, ptr noundef %115, i1 noundef zeroext false, i1 noundef zeroext %118) #4
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %129, label %121

121:                                              ; preds = %106
  %122 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 2, i32 1
  %123 = load ptr, ptr %122, align 8
  %124 = getelementptr inbounds %struct.nouveau_drm, ptr %123, i32 0, i32 3
  %125 = load ptr, ptr %124, align 8
  %126 = getelementptr inbounds %struct.drm_device, ptr %125, i32 0, i32 2
  %127 = load ptr, ptr %126, align 4
  %128 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %127, ptr noundef nonnull @.str, ptr noundef %128, i32 noundef %119) #5
  br label %243

129:                                              ; preds = %106
  %130 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 2, i32 3, i32 1, i32 7
  %131 = load i64, ptr %130, align 8
  %132 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 9
  store i64 %131, ptr %132, align 8
  %133 = load ptr, ptr %5, align 8
  %134 = getelementptr inbounds %struct.nvkm_device_func, ptr %133, i32 0, i32 6
  %135 = load ptr, ptr %134, align 4
  %136 = tail call i32 %135(ptr noundef %5, i32 noundef 1) #4
  %137 = load ptr, ptr %5, align 8
  %138 = getelementptr inbounds %struct.nvkm_device_func, ptr %137, i32 0, i32 7
  %139 = load ptr, ptr %138, align 4
  %140 = tail call i32 %139(ptr noundef %5, i32 noundef 1) #4
  %141 = load i8, ptr %39, align 1
  %142 = icmp ugt i8 %141, 5
  br i1 %142, label %143, label %173

143:                                              ; preds = %129
  %144 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %145 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %144, i32 noundef 3520, i32 noundef 64) #6
  %146 = icmp eq ptr %145, null
  br i1 %146, label %179, label %147

147:                                              ; preds = %143
  %148 = getelementptr inbounds %struct.ttm_resource_manager, ptr %145, i32 0, i32 3
  store ptr @nouveau_vram_manager, ptr %148, align 8
  %149 = load i64, ptr %132, align 8
  %150 = lshr i64 %149, 12
  %151 = trunc i64 %150 to i32
  tail call void @ttm_resource_manager_init(ptr noundef nonnull %145, i32 noundef %151) #4
  %152 = getelementptr %struct.nouveau_drm, ptr %0, i32 0, i32 8, i32 0, i32 3, i32 2
  store ptr %145, ptr %152, align 4
  %153 = getelementptr %struct.ttm_resource_manager, ptr %145, i32 0, i32 5, i32 0
  %154 = load volatile ptr, ptr %153, align 8
  %155 = icmp eq ptr %154, %153
  br i1 %155, label %157, label %156, !prof !9

156:                                              ; preds = %147
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 229, i32 noundef 9, ptr noundef null) #4
  br label %157

157:                                              ; preds = %156, %147
  %158 = getelementptr %struct.ttm_resource_manager, ptr %145, i32 0, i32 5, i32 1
  %159 = load volatile ptr, ptr %158, align 8
  %160 = icmp eq ptr %159, %158
  br i1 %160, label %162, label %161, !prof !9

161:                                              ; preds = %157
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 229, i32 noundef 9, ptr noundef null) #4
  br label %162

162:                                              ; preds = %161, %157
  %163 = getelementptr %struct.ttm_resource_manager, ptr %145, i32 0, i32 5, i32 2
  %164 = load volatile ptr, ptr %163, align 8
  %165 = icmp eq ptr %164, %163
  br i1 %165, label %167, label %166, !prof !9

166:                                              ; preds = %162
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 229, i32 noundef 9, ptr noundef null) #4
  br label %167

167:                                              ; preds = %166, %162
  %168 = getelementptr %struct.ttm_resource_manager, ptr %145, i32 0, i32 5, i32 3
  %169 = load volatile ptr, ptr %168, align 8
  %170 = icmp eq ptr %169, %168
  br i1 %170, label %172, label %171, !prof !9

171:                                              ; preds = %167
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 229, i32 noundef 9, ptr noundef null) #4
  br label %172

172:                                              ; preds = %171, %167
  store i8 1, ptr %145, align 8
  br label %188

173:                                              ; preds = %129
  %174 = load i64, ptr %132, align 8
  %175 = lshr i64 %174, 12
  %176 = trunc i64 %175 to i32
  %177 = tail call i32 @ttm_range_man_init_nocheck(ptr noundef %107, i32 noundef 2, i1 noundef zeroext false, i32 noundef %176) #4
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %188, label %179

179:                                              ; preds = %173, %143
  %180 = phi i32 [ %177, %173 ], [ -12, %143 ]
  %181 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 2, i32 1
  %182 = load ptr, ptr %181, align 8
  %183 = getelementptr inbounds %struct.nouveau_drm, ptr %182, i32 0, i32 3
  %184 = load ptr, ptr %183, align 8
  %185 = getelementptr inbounds %struct.drm_device, ptr %184, i32 0, i32 2
  %186 = load ptr, ptr %185, align 4
  %187 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %186, ptr noundef nonnull @.str.1, ptr noundef %187, i32 noundef %180) #5
  br label %243

188:                                              ; preds = %173, %172
  %189 = load ptr, ptr %5, align 8
  %190 = getelementptr inbounds %struct.nvkm_device_func, ptr %189, i32 0, i32 6
  %191 = load ptr, ptr %190, align 4
  %192 = tail call i32 %191(ptr noundef %5, i32 noundef 1) #4
  %193 = load ptr, ptr %5, align 8
  %194 = getelementptr inbounds %struct.nvkm_device_func, ptr %193, i32 0, i32 7
  %195 = load ptr, ptr %194, align 4
  %196 = tail call i32 %195(ptr noundef %5, i32 noundef 1) #4
  %197 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 8, i32 5
  store i32 0, ptr %197, align 8
  %198 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 7
  %199 = load ptr, ptr %198, align 4
  %200 = icmp eq ptr %199, null
  br i1 %200, label %201, label %204

201:                                              ; preds = %188
  %202 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 2, i32 5, i32 1, i32 2
  %203 = load i64, ptr %202, align 8
  br label %208

204:                                              ; preds = %188
  %205 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 7, i32 2
  %206 = load i32, ptr %205, align 4
  %207 = zext i32 %206 to i64
  br label %208

208:                                              ; preds = %204, %201
  %209 = phi i64 [ %203, %201 ], [ %207, %204 ]
  %210 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 9, i32 1
  store i64 %209, ptr %210, align 8
  %211 = tail call fastcc i32 @nouveau_ttm_init_gtt(ptr noundef %0)
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %221, label %213

213:                                              ; preds = %208
  %214 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 2, i32 1
  %215 = load ptr, ptr %214, align 8
  %216 = getelementptr inbounds %struct.nouveau_drm, ptr %215, i32 0, i32 3
  %217 = load ptr, ptr %216, align 8
  %218 = getelementptr inbounds %struct.drm_device, ptr %217, i32 0, i32 2
  %219 = load ptr, ptr %218, align 4
  %220 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %219, ptr noundef nonnull @.str.2, ptr noundef %220, i32 noundef %211) #5
  br label %243

221:                                              ; preds = %208
  %222 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 8, i32 9
  tail call void @__mutex_init(ptr noundef %222, ptr noundef nonnull @.str.3, ptr noundef nonnull @nouveau_ttm_init.__key) #4
  %223 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 8, i32 10
  store volatile ptr %223, ptr %223, align 4
  %224 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 8, i32 10, i32 1
  store ptr %223, ptr %224, align 4
  %225 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 2, i32 1
  %226 = load ptr, ptr %225, align 8
  %227 = getelementptr inbounds %struct.nouveau_drm, ptr %226, i32 0, i32 3
  %228 = load ptr, ptr %227, align 8
  %229 = getelementptr inbounds %struct.drm_device, ptr %228, i32 0, i32 2
  %230 = load ptr, ptr %229, align 4
  %231 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 2, i32 12
  %232 = load i64, ptr %132, align 8
  %233 = lshr i64 %232, 20
  %234 = trunc i64 %233 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %230, ptr noundef nonnull @.str.4, ptr noundef %231, i32 noundef %234) #5
  %235 = load ptr, ptr %225, align 8
  %236 = getelementptr inbounds %struct.nouveau_drm, ptr %235, i32 0, i32 3
  %237 = load ptr, ptr %236, align 8
  %238 = getelementptr inbounds %struct.drm_device, ptr %237, i32 0, i32 2
  %239 = load ptr, ptr %238, align 4
  %240 = load i64, ptr %210, align 8
  %241 = lshr i64 %240, 20
  %242 = trunc i64 %241 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %239, ptr noundef nonnull @.str.5, ptr noundef %231, i32 noundef %242) #5
  br label %243

243:                                              ; preds = %221, %213, %179, %121, %82, %63, %52, %34, %23, %1
  %244 = phi i32 [ %119, %121 ], [ %180, %179 ], [ %211, %213 ], [ 0, %221 ], [ -38, %1 ], [ -38, %82 ], [ -38, %63 ], [ -38, %52 ], [ -38, %34 ], [ -38, %23 ]
  ret i32 %244
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_device_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @nouveau_ttm_init_gtt(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 9, i32 1
  %3 = load i64, ptr %2, align 8
  %4 = lshr i64 %3, 12
  %5 = trunc i64 %4 to i32
  %6 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 2, i32 3, i32 1, i32 4
  %7 = load i8, ptr %6, align 1
  %8 = icmp ugt i8 %7, 5
  br i1 %8, label %16, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 7
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 8
  %15 = tail call i32 @ttm_range_man_init_nocheck(ptr noundef %14, i32 noundef 1, i1 noundef zeroext true, i32 noundef %5) #4
  br label %45

16:                                               ; preds = %9, %1
  %17 = phi ptr [ @nouveau_gart_manager, %1 ], [ @nv04_gart_manager, %9 ]
  %18 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %19 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3520, i32 noundef 64) #6
  %20 = icmp eq ptr %19, null
  br i1 %20, label %45, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.ttm_resource_manager, ptr %19, i32 0, i32 3
  store ptr %17, ptr %22, align 8
  %23 = getelementptr inbounds %struct.ttm_resource_manager, ptr %19, i32 0, i32 1
  store i8 1, ptr %23, align 1
  tail call void @ttm_resource_manager_init(ptr noundef nonnull %19, i32 noundef %5) #4
  %24 = getelementptr %struct.nouveau_drm, ptr %0, i32 0, i32 8, i32 0, i32 3, i32 1
  store ptr %19, ptr %24, align 4
  %25 = getelementptr %struct.ttm_resource_manager, ptr %19, i32 0, i32 5, i32 0
  %26 = load volatile ptr, ptr %25, align 8
  %27 = icmp eq ptr %26, %25
  br i1 %27, label %29, label %28, !prof !9

28:                                               ; preds = %21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 229, i32 noundef 9, ptr noundef null) #4
  br label %29

29:                                               ; preds = %28, %21
  %30 = getelementptr %struct.ttm_resource_manager, ptr %19, i32 0, i32 5, i32 1
  %31 = load volatile ptr, ptr %30, align 8
  %32 = icmp eq ptr %31, %30
  br i1 %32, label %34, label %33, !prof !9

33:                                               ; preds = %29
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 229, i32 noundef 9, ptr noundef null) #4
  br label %34

34:                                               ; preds = %33, %29
  %35 = getelementptr %struct.ttm_resource_manager, ptr %19, i32 0, i32 5, i32 2
  %36 = load volatile ptr, ptr %35, align 8
  %37 = icmp eq ptr %36, %35
  br i1 %37, label %39, label %38, !prof !9

38:                                               ; preds = %34
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 229, i32 noundef 9, ptr noundef null) #4
  br label %39

39:                                               ; preds = %38, %34
  %40 = getelementptr %struct.ttm_resource_manager, ptr %19, i32 0, i32 5, i32 3
  %41 = load volatile ptr, ptr %40, align 8
  %42 = icmp eq ptr %41, %40
  br i1 %42, label %44, label %43, !prof !9

43:                                               ; preds = %39
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 229, i32 noundef 9, ptr noundef null) #4
  br label %44

44:                                               ; preds = %43, %39
  store i8 1, ptr %19, align 8
  br label %45

45:                                               ; preds = %44, %16, %13
  %46 = phi i32 [ 0, %44 ], [ %15, %13 ], [ -12, %16 ]
  ret i32 %46
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nouveau_ttm_fini(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 2, i32 3, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.anon.175, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 8
  %7 = getelementptr %struct.nouveau_drm, ptr %0, i32 0, i32 8, i32 0, i32 3, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 2, i32 3, i32 1, i32 4
  %10 = load i8, ptr %9, align 1
  %11 = icmp ugt i8 %10, 5
  br i1 %11, label %12, label %47

12:                                               ; preds = %1
  %13 = getelementptr %struct.ttm_resource_manager, ptr %8, i32 0, i32 5, i32 0
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %13
  br i1 %15, label %17, label %16, !prof !9

16:                                               ; preds = %12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 229, i32 noundef 9, ptr noundef null) #4
  br label %17

17:                                               ; preds = %16, %12
  %18 = getelementptr %struct.ttm_resource_manager, ptr %8, i32 0, i32 5, i32 1
  %19 = load volatile ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, %18
  br i1 %20, label %22, label %21, !prof !9

21:                                               ; preds = %17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 229, i32 noundef 9, ptr noundef null) #4
  br label %22

22:                                               ; preds = %21, %17
  %23 = getelementptr %struct.ttm_resource_manager, ptr %8, i32 0, i32 5, i32 2
  %24 = load volatile ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, %23
  br i1 %25, label %27, label %26, !prof !9

26:                                               ; preds = %22
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 229, i32 noundef 9, ptr noundef null) #4
  br label %27

27:                                               ; preds = %26, %22
  %28 = getelementptr %struct.ttm_resource_manager, ptr %8, i32 0, i32 5, i32 3
  %29 = load volatile ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, %28
  br i1 %30, label %32, label %31, !prof !9

31:                                               ; preds = %27
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 229, i32 noundef 9, ptr noundef null) #4
  br label %32

32:                                               ; preds = %31, %27
  store i8 0, ptr %8, align 8
  %33 = tail call i32 @ttm_resource_manager_evict_all(ptr noundef %6, ptr noundef %8) #4
  %34 = getelementptr inbounds %struct.ttm_resource_manager, ptr %8, i32 0, i32 6
  %35 = load ptr, ptr %34, align 8
  %36 = icmp eq ptr %35, null
  br i1 %36, label %46, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.dma_fence, ptr %35, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %38) #4, !srcloc !11
  %39 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %38, ptr %38, i32 1, ptr elementtype(i32) %38) #4, !srcloc !12
  %40 = extractvalue { i32, i32, i32 } %39, 0
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %45, label %42

42:                                               ; preds = %37
  %43 = icmp sgt i32 %40, 0
  br i1 %43, label %46, label %44, !prof !9

44:                                               ; preds = %42
  tail call void @refcount_warn_saturate(ptr noundef %38, i32 noundef 3) #4
  br label %46

45:                                               ; preds = %37
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !13
  tail call void @dma_fence_release(ptr noundef %38) #4
  br label %46

46:                                               ; preds = %45, %44, %42, %32
  store ptr null, ptr %34, align 8
  store ptr null, ptr %7, align 4
  tail call void @kfree(ptr noundef %8) #4
  br label %49

47:                                               ; preds = %1
  %48 = tail call i32 @ttm_range_man_fini_nocheck(ptr noundef %6, i32 noundef 2) #4
  br label %49

49:                                               ; preds = %47, %46
  %50 = getelementptr %struct.nouveau_drm, ptr %0, i32 0, i32 8, i32 0, i32 3, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = load i8, ptr %9, align 1
  %53 = icmp ult i8 %52, 6
  br i1 %53, label %54, label %60

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 7
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %60, label %58

58:                                               ; preds = %54
  %59 = tail call i32 @ttm_range_man_fini_nocheck(ptr noundef %6, i32 noundef 1) #4
  br label %95

60:                                               ; preds = %54, %49
  %61 = getelementptr %struct.ttm_resource_manager, ptr %51, i32 0, i32 5, i32 0
  %62 = load volatile ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, %61
  br i1 %63, label %65, label %64, !prof !9

64:                                               ; preds = %60
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 229, i32 noundef 9, ptr noundef null) #4
  br label %65

65:                                               ; preds = %64, %60
  %66 = getelementptr %struct.ttm_resource_manager, ptr %51, i32 0, i32 5, i32 1
  %67 = load volatile ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, %66
  br i1 %68, label %70, label %69, !prof !9

69:                                               ; preds = %65
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 229, i32 noundef 9, ptr noundef null) #4
  br label %70

70:                                               ; preds = %69, %65
  %71 = getelementptr %struct.ttm_resource_manager, ptr %51, i32 0, i32 5, i32 2
  %72 = load volatile ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, %71
  br i1 %73, label %75, label %74, !prof !9

74:                                               ; preds = %70
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 229, i32 noundef 9, ptr noundef null) #4
  br label %75

75:                                               ; preds = %74, %70
  %76 = getelementptr %struct.ttm_resource_manager, ptr %51, i32 0, i32 5, i32 3
  %77 = load volatile ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, %76
  br i1 %78, label %80, label %79, !prof !9

79:                                               ; preds = %75
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 229, i32 noundef 9, ptr noundef null) #4
  br label %80

80:                                               ; preds = %79, %75
  store i8 0, ptr %51, align 8
  %81 = tail call i32 @ttm_resource_manager_evict_all(ptr noundef %6, ptr noundef %51) #4
  %82 = getelementptr inbounds %struct.ttm_resource_manager, ptr %51, i32 0, i32 6
  %83 = load ptr, ptr %82, align 8
  %84 = icmp eq ptr %83, null
  br i1 %84, label %94, label %85

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct.dma_fence, ptr %83, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %86) #4, !srcloc !11
  %87 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %86, ptr %86, i32 1, ptr elementtype(i32) %86) #4, !srcloc !12
  %88 = extractvalue { i32, i32, i32 } %87, 0
  %89 = icmp eq i32 %88, 1
  br i1 %89, label %93, label %90

90:                                               ; preds = %85
  %91 = icmp sgt i32 %88, 0
  br i1 %91, label %94, label %92, !prof !9

92:                                               ; preds = %90
  tail call void @refcount_warn_saturate(ptr noundef %86, i32 noundef 3) #4
  br label %94

93:                                               ; preds = %85
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !13
  tail call void @dma_fence_release(ptr noundef %86) #4
  br label %94

94:                                               ; preds = %93, %92, %90, %80
  store ptr null, ptr %82, align 8
  store ptr null, ptr %50, align 4
  tail call void @kfree(ptr noundef %51) #4
  br label %95

95:                                               ; preds = %94, %58
  tail call void @ttm_device_fini(ptr noundef %6) #4
  %96 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 8, i32 5
  store i32 0, ptr %96, align 8
  %97 = load ptr, ptr %5, align 8
  %98 = getelementptr inbounds %struct.nvkm_device_func, ptr %97, i32 0, i32 6
  %99 = load ptr, ptr %98, align 4
  %100 = tail call i32 %99(ptr noundef %5, i32 noundef 1) #4
  %101 = load ptr, ptr %5, align 8
  %102 = getelementptr inbounds %struct.nvkm_device_func, ptr %101, i32 0, i32 7
  %103 = load ptr, ptr %102, align 4
  %104 = tail call i32 %103(ptr noundef %5, i32 noundef 1) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_device_fini(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_mem_new(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_resource_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_mem_vram(ptr noundef, i1 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_mem_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_vmm_get(ptr noundef, i32 noundef, i1 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_resource_manager_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_range_man_init_nocheck(ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_resource_manager_evict_all(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_range_man_fini_nocheck(ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { cold nounwind }
attributes #6 = { nounwind allocsize(2) }

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
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 2148254630}
!11 = !{i64 588122, i64 2148089688, i64 2148089714, i64 2148089761, i64 2148089783, i64 2148089811, i64 2148089831}
!12 = !{i64 2148156765, i64 2148156797, i64 2148156826, i64 2148156860, i64 2148156891, i64 2148156914}
!13 = !{i64 2149296365}
