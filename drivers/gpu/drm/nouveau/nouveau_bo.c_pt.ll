; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nouveau_bo.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nouveau_bo.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct._method_table = type { ptr, i32, i32, ptr, ptr }
%struct.ttm_device_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nouveau_cli = type { %struct.nvif_client, ptr, %struct.mutex, %struct.nvif_device, %struct.nvif_mmu, %struct.nouveau_vmm, %struct.nouveau_vmm, ptr, %struct.list_head, ptr, %struct.list_head, %struct.list_head, [32 x i8], %struct.work_struct, %struct.list_head, %struct.mutex }
%struct.nvif_client = type { %struct.nvif_object, ptr, i64, i8 }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon.78 }
%struct.anon.78 = type { ptr, i64 }
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
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nouveau_drm = type { %struct.nvif_parent, %struct.nouveau_cli, %struct.nouveau_cli, ptr, %struct.list_head, %struct.mutex, i8, %struct.anon.84, %struct.anon.85, %struct.anon.86, ptr, %struct.anon.87, ptr, ptr, ptr, ptr, %struct.nvif_object, %struct.anon.88, %struct.nvbios, ptr, %struct.work_struct, %struct.mutex, i32, %struct.work_struct, i32, ptr, ptr, ptr, %struct.dev_pm_domain, ptr, ptr, %struct.anon.100 }
%struct.nvif_parent = type { ptr }
%struct.anon.84 = type { ptr, i32, i32, i8 }
%struct.anon.85 = type { %struct.ttm_device, %struct.atomic_t, ptr, ptr, %struct.nvif_object, i32, i32, [2 x i32], [2 x i32], %struct.mutex, %struct.list_head }
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
%struct.anon.86 = type { i64, i64 }
%struct.anon.87 = type { i32, i64 }
%struct.anon.88 = type { [15 x %struct.nouveau_drm_tile], %struct.spinlock }
%struct.nouveau_drm_tile = type { ptr, i8 }
%struct.nvbios = type { ptr, i32, i16, i32, ptr, i8, i32, i32, i8, i8, %struct.spinlock, i8, i8, i8, i8, i32, i32, i8, i16, i16, i16, i8, %struct.dcb_table, %struct.anon.95, %struct.anon.96, %struct.anon.97, %struct.anon.98 }
%struct.dcb_table = type { i8, i32, [16 x %struct.dcb_output] }
%struct.dcb_output = type { i32, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %union.anon.89, i8 }
%union.anon.89 = type { %struct.anon.93 }
%struct.anon.93 = type { %struct.sor_conf, i32, i32 }
%struct.sor_conf = type { i32 }
%struct.anon.95 = type { i32 }
%struct.anon.96 = type { i16, i16, i32, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i8, ptr, i32, i8 }
%struct.anon.97 = type { i16, i16 }
%struct.anon.98 = type { i16, i16, i16, %struct.anon.99, i16 }
%struct.anon.99 = type { i8, i8, i8 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.100 = type { ptr, %struct.mutex, i8 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.68, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.73, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.68 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.73 = type { i32, ptr }
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
%struct.seqcount_ww_mutex = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.ttm_placement = type { i32, ptr, i32, ptr }
%struct.ttm_place = type { i32, i32, i32, i32 }
%struct.ttm_bo_kmap_obj = type { ptr, ptr, i32, ptr }
%struct.anon.82 = type { i8, i8 }
%struct.anon.79 = type { i8, i8 }
%struct.ttm_operation_ctx = type { i8, i8, i8, i8, i8, ptr, i64 }
%struct.ttm_resource = type { i32, i32, i32, i32, %struct.ttm_bus_placement }
%struct.ttm_bus_placement = type { ptr, i32, i8, i32 }
%struct.ttm_tt = type { ptr, i32, i32, ptr, ptr, ptr, i32 }
%struct.page = type { i32, %union.anon.1, %union.anon.63, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.63 = type { %struct.atomic_t }
%struct.nouveau_channel = type { %struct.anon.77, ptr, ptr, ptr, i32, i64, i32, %struct.nvif_object, %struct.nvif_object, %struct.nvif_object, %struct.anon.80, i8, ptr, %struct.anon.83, i32, i32, i32, %struct.nvif_object, %struct.nvif_notify, %struct.atomic_t }
%struct.anon.77 = type { %struct.nvif_push, ptr }
%struct.nvif_push = type { ptr, ptr, %struct.nvif_mem, ptr, ptr, ptr, ptr }
%struct.nvif_mem = type { %struct.nvif_object, i8, i8, i64, i64 }
%struct.anon.80 = type { ptr, ptr, %struct.nvif_object, i64 }
%struct.anon.83 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nvif_notify = type { ptr, ptr, i32, i32, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.work_struct }
%struct.anon.177 = type { %struct.nvkm_object, ptr }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.nvkm_device_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.anon.178 = type { %struct.nvkm_object, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.175, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.175 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_fb = type { ptr, %struct.nvkm_subdev, %struct.nvkm_blob, ptr, %struct.anon.134, %struct.anon.135, i8, ptr, ptr }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.nvkm_blob = type { ptr, i32 }
%struct.anon.134 = type { %struct.mutex, %struct.nvkm_mm }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }
%struct.anon.135 = type { [16 x %struct.nvkm_fb_tile], i32 }
%struct.nvkm_fb_tile = type { ptr, i32, i32, i32, i32 }
%struct.anon.179 = type { %struct.nvkm_object, ptr }
%struct.nouveau_mem = type { %struct.ttm_resource, ptr, i8, i8, %struct.nvif_mem, [2 x %struct.nvif_vma] }
%struct.nvif_vma = type { i64, i64 }
%struct.dma_fence = type { ptr, ptr, %union.anon.74, i64, i64, i32, %struct.kref, i32 }
%union.anon.74 = type { i64 }
%union.anon.181 = type { %struct.nv50_mem_map_v0 }
%struct.nv50_mem_map_v0 = type { i8, i8, i8, i8 }
%struct.anon.180 = type { %struct.nvkm_object, ptr }
%struct.gf100_mem_map_v0 = type { i8, i8, i8 }

@.str = private unnamed_addr constant [26 x i8] c"%s: skipped size %016llx\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"drivers/gpu/drm/nouveau/nouveau_bo.c\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"%s: bo %p pinned elsewhere: 0x%08x vs 0x%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"%s: ttm_dma 0x%p: pages NULL\0A\00", align 1
@nouveau_bo_move_init._methods = internal unnamed_addr constant [21 x %struct._method_table] [%struct._method_table { ptr @.str.4, i32 4, i32 51125, ptr @nve0_bo_move_copy, ptr @nve0_bo_move_init }, %struct._method_table { ptr @.str.4, i32 4, i32 50613, ptr @nve0_bo_move_copy, ptr @nve0_bo_move_init }, %struct._method_table { ptr @.str.5, i32 0, i32 50613, ptr @nve0_bo_move_copy, ptr @nvc0_bo_move_init }, %struct._method_table { ptr @.str.4, i32 4, i32 50101, ptr @nve0_bo_move_copy, ptr @nve0_bo_move_init }, %struct._method_table { ptr @.str.5, i32 0, i32 50101, ptr @nve0_bo_move_copy, ptr @nvc0_bo_move_init }, %struct._method_table { ptr @.str.4, i32 4, i32 49589, ptr @nve0_bo_move_copy, ptr @nve0_bo_move_init }, %struct._method_table { ptr @.str.5, i32 0, i32 49589, ptr @nve0_bo_move_copy, ptr @nvc0_bo_move_init }, %struct._method_table { ptr @.str.4, i32 4, i32 49333, ptr @nve0_bo_move_copy, ptr @nve0_bo_move_init }, %struct._method_table { ptr @.str.5, i32 0, i32 49333, ptr @nve0_bo_move_copy, ptr @nvc0_bo_move_init }, %struct._method_table { ptr @.str.4, i32 4, i32 45237, ptr @nve0_bo_move_copy, ptr @nve0_bo_move_init }, %struct._method_table { ptr @.str.5, i32 0, i32 45237, ptr @nve0_bo_move_copy, ptr @nvc0_bo_move_init }, %struct._method_table { ptr @.str.4, i32 4, i32 41141, ptr @nve0_bo_move_copy, ptr @nve0_bo_move_init }, %struct._method_table { ptr @.str.5, i32 0, i32 41141, ptr @nve0_bo_move_copy, ptr @nvc0_bo_move_init }, %struct._method_table { ptr @.str.6, i32 5, i32 37048, ptr @nvc0_bo_move_copy, ptr @nvc0_bo_move_init }, %struct._method_table { ptr @.str.7, i32 4, i32 37045, ptr @nvc0_bo_move_copy, ptr @nvc0_bo_move_init }, %struct._method_table { ptr @.str.4, i32 0, i32 34229, ptr @nva3_bo_move_copy, ptr @nv50_bo_move_init }, %struct._method_table { ptr @.str.8, i32 0, i32 29889, ptr @nv84_bo_move_exec, ptr @nv50_bo_move_init }, %struct._method_table { ptr @.str.9, i32 0, i32 36921, ptr @nvc0_bo_move_m2mf, ptr @nvc0_bo_move_init }, %struct._method_table { ptr @.str.9, i32 0, i32 20537, ptr @nv50_bo_move_m2mf, ptr @nv50_bo_move_init }, %struct._method_table { ptr @.str.9, i32 0, i32 57, ptr @nv04_bo_move_m2mf, ptr @nv04_bo_move_init }, %struct._method_table zeroinitializer], align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"COPY\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"GRCE\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"COPY1\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"COPY0\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"CRYPT\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"M2MF\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"CPU\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"ttmBoMove\00", align 1
@.str.12 = private unnamed_addr constant [36 x i8] c"%s: MM: using %s for buffer copies\0A\00", align 1
@nouveau_bo_driver = dso_local local_unnamed_addr global %struct.ttm_device_funcs { ptr @nouveau_ttm_tt_create, ptr @nouveau_ttm_tt_populate, ptr @nouveau_ttm_tt_unpopulate, ptr @nouveau_ttm_tt_destroy, ptr @ttm_bo_eviction_valuable, ptr @nouveau_bo_evict_flags, ptr @nouveau_bo_move, ptr @nouveau_bo_delete_mem_notify, ptr null, ptr @nouveau_ttm_io_mem_reserve, ptr @nouveau_ttm_io_mem_free, ptr null, ptr null, ptr null, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.13 = private unnamed_addr constant [32 x i8] c"include/drm/ttm/ttm_bo_driver.h\00", align 1
@ttm_bo_pin.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"include/drm/ttm/ttm_bo_api.h\00", align 1
@ttm_bo_unpin.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ttm_bo_unpin.__already_done.15 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__drm_debug = external dso_local local_unnamed_addr global i32, align 4
@.str.16 = private unnamed_addr constant [30 x i8] c"%s: Moving pinned object %p!\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nouveau_bo_alloc(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.nouveau_cli, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.nouveau_cli, ptr %0, i32 0, i32 6
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  %12 = getelementptr inbounds %struct.nouveau_cli, ptr %0, i32 0, i32 6, i32 1
  %13 = getelementptr inbounds %struct.nouveau_cli, ptr %0, i32 0, i32 5, i32 1
  %14 = select i1 %11, ptr %13, ptr %12
  %15 = load i64, ptr %1, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %6
  %18 = getelementptr inbounds %struct.nouveau_drm, ptr %8, i32 0, i32 2, i32 1
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.nouveau_drm, ptr %19, i32 0, i32 3
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.drm_device, ptr %21, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.nouveau_drm, ptr %8, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %23, ptr noundef nonnull @.str, ptr noundef %24, i64 noundef 0) #10
  br label %339

25:                                               ; preds = %6
  %26 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %27 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %26, i32 noundef 3520, i32 noundef 480) #11
  %28 = icmp eq ptr %27, null
  br i1 %28, label %339, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.nouveau_bo, ptr %27, i32 0, i32 7
  store volatile ptr %30, ptr %30, align 8
  %31 = getelementptr inbounds %struct.nouveau_bo, ptr %27, i32 0, i32 7, i32 1
  store ptr %30, ptr %31, align 4
  %32 = getelementptr inbounds %struct.nouveau_bo, ptr %27, i32 0, i32 10
  store volatile ptr %32, ptr %32, align 4
  %33 = getelementptr inbounds %struct.nouveau_bo, ptr %27, i32 0, i32 10, i32 1
  store ptr %32, ptr %33, align 8
  %34 = getelementptr inbounds %struct.nouveau_bo, ptr %27, i32 0, i32 14
  store volatile ptr %34, ptr %34, align 8
  %35 = getelementptr inbounds %struct.nouveau_bo, ptr %27, i32 0, i32 14, i32 1
  store ptr %34, ptr %35, align 4
  %36 = getelementptr inbounds %struct.nouveau_drm, ptr %8, i32 0, i32 8
  %37 = getelementptr inbounds %struct.ttm_buffer_object, ptr %27, i32 0, i32 1
  store ptr %36, ptr %37, align 8
  %38 = and i32 %3, 16
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %50, label %40

40:                                               ; preds = %29
  %41 = getelementptr inbounds %struct.nouveau_drm, ptr %8, i32 0, i32 2, i32 4, i32 8
  %42 = load ptr, ptr %41, align 8
  %43 = getelementptr inbounds %struct.nouveau_drm, ptr %8, i32 0, i32 8, i32 7
  %44 = load i32, ptr %43, align 8
  %45 = getelementptr %struct.anon.82, ptr %42, i32 %44
  %46 = load i8, ptr %45, align 1
  %47 = icmp sgt i8 %46, -1
  br i1 %47, label %50, label %48

48:                                               ; preds = %40
  %49 = getelementptr inbounds %struct.nouveau_bo, ptr %27, i32 0, i32 5
  store i8 1, ptr %49, align 4
  br label %50

50:                                               ; preds = %48, %40, %29
  %51 = getelementptr inbounds %struct.nouveau_cli, ptr %0, i32 0, i32 3, i32 1, i32 4
  %52 = load i8, ptr %51, align 1
  %53 = icmp ugt i8 %52, 6
  br i1 %53, label %54, label %91

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.nouveau_bo, ptr %27, i32 0, i32 15
  %56 = load i32, ptr %55, align 8
  %57 = lshr i32 %5, 2
  %58 = and i32 %57, 16320
  %59 = and i32 %56, -16321
  %60 = or i32 %59, %58
  store i32 %60, ptr %55, align 8
  %61 = lshr exact i32 %58, 6
  %62 = icmp eq i32 %58, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %54
  %64 = getelementptr inbounds %struct.nouveau_cli, ptr %0, i32 0, i32 4, i32 9
  %65 = load ptr, ptr %64, align 4
  br label %80

66:                                               ; preds = %54
  %67 = getelementptr inbounds %struct.nouveau_cli, ptr %0, i32 0, i32 4, i32 5
  %68 = load i16, ptr %67, align 4
  %69 = trunc i32 %61 to i16
  %70 = icmp ugt i16 %68, %69
  br i1 %70, label %71, label %79

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.nouveau_cli, ptr %0, i32 0, i32 4, i32 9
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr i8, ptr %73, i32 %61
  %75 = load i8, ptr %74, align 1
  %76 = getelementptr inbounds %struct.nouveau_cli, ptr %0, i32 0, i32 4, i32 4
  %77 = load i8, ptr %76, align 1
  %78 = icmp eq i8 %75, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %71, %66
  tail call void @kfree(ptr noundef nonnull %27) #12
  br label %339

80:                                               ; preds = %71, %63
  %81 = phi ptr [ %65, %63 ], [ %73, %71 ]
  %82 = lshr i32 %60, 6
  %83 = and i32 %82, 255
  %84 = getelementptr i8, ptr %81, i32 %83
  %85 = load i8, ptr %84, align 1
  %86 = trunc i32 %82 to i8
  %87 = icmp eq i8 %85, %86
  %88 = select i1 %87, i32 0, i32 16384
  %89 = and i32 %60, -114689
  %90 = or i32 %88, %89
  store i32 %90, ptr %55, align 8
  br label %122

91:                                               ; preds = %50
  %92 = icmp eq i8 %52, 6
  %93 = getelementptr inbounds %struct.nouveau_bo, ptr %27, i32 0, i32 15
  %94 = load i32, ptr %93, align 8
  br i1 %92, label %95, label %117

95:                                               ; preds = %91
  %96 = lshr i32 %5, 2
  %97 = and i32 %96, 8128
  %98 = and i32 %94, -131009
  %99 = and i32 %96, 57280
  %100 = or i32 %99, %98
  store i32 %100, ptr %93, align 8
  %101 = lshr exact i32 %97, 6
  %102 = icmp eq i32 %97, 0
  br i1 %102, label %122, label %103

103:                                              ; preds = %95
  %104 = getelementptr inbounds %struct.nouveau_cli, ptr %0, i32 0, i32 4, i32 5
  %105 = load i16, ptr %104, align 4
  %106 = trunc i32 %101 to i16
  %107 = icmp ugt i16 %105, %106
  br i1 %107, label %108, label %116

108:                                              ; preds = %103
  %109 = getelementptr inbounds %struct.nouveau_cli, ptr %0, i32 0, i32 4, i32 9
  %110 = load ptr, ptr %109, align 4
  %111 = getelementptr i8, ptr %110, i32 %101
  %112 = load i8, ptr %111, align 1
  %113 = getelementptr inbounds %struct.nouveau_cli, ptr %0, i32 0, i32 4, i32 4
  %114 = load i8, ptr %113, align 1
  %115 = icmp eq i8 %112, %114
  br i1 %115, label %116, label %122

116:                                              ; preds = %108, %103
  tail call void @kfree(ptr noundef nonnull %27) #12
  br label %339

117:                                              ; preds = %91
  %118 = shl i32 %5, 17
  %119 = and i32 %118, 917504
  %120 = and i32 %94, -917505
  %121 = or i32 %120, %119
  store i32 %121, ptr %93, align 8
  br label %122

122:                                              ; preds = %117, %108, %95, %80
  %123 = phi i32 [ %100, %108 ], [ %100, %95 ], [ %121, %117 ], [ %90, %80 ]
  %124 = getelementptr inbounds %struct.nouveau_bo, ptr %27, i32 0, i32 16
  store i32 %4, ptr %124, align 4
  %125 = lshr i32 %5, 3
  %126 = and i32 %125, 1
  %127 = getelementptr inbounds %struct.nouveau_bo, ptr %27, i32 0, i32 15
  %128 = and i32 %123, -2
  %129 = or i32 %128, %126
  %130 = xor i32 %129, 1
  store i32 %130, ptr %127, align 8
  %131 = getelementptr inbounds %struct.nvif_vmm, ptr %14, i32 0, i32 4
  %132 = load i32, ptr %131, align 4
  %133 = icmp sgt i32 %132, 0
  br i1 %133, label %134, label %189

134:                                              ; preds = %122
  %135 = icmp ult i8 %52, 6
  %136 = and i32 %3, 2
  %137 = icmp eq i32 %136, 0
  %138 = or i1 %137, %135
  %139 = getelementptr inbounds %struct.nvif_vmm, ptr %14, i32 0, i32 3
  %140 = and i32 %3, 4
  %141 = icmp eq i32 %140, 0
  %142 = and i32 %123, 114688
  %143 = icmp eq i32 %142, 0
  br label %144

144:                                              ; preds = %182, %134
  %145 = phi i32 [ -1, %134 ], [ %183, %182 ]
  %146 = phi i32 [ 0, %134 ], [ %184, %182 ]
  br i1 %138, label %153, label %147

147:                                              ; preds = %144
  %148 = load ptr, ptr %139, align 8
  %149 = getelementptr %struct.anon.79, ptr %148, i32 %146, i32 1
  %150 = load i8, ptr %149, align 1
  %151 = and i8 %150, 2
  %152 = icmp eq i8 %151, 0
  br i1 %152, label %182, label %153

153:                                              ; preds = %147, %144
  br i1 %141, label %164, label %154

154:                                              ; preds = %153
  %155 = load ptr, ptr %139, align 8
  %156 = getelementptr %struct.anon.79, ptr %155, i32 %146, i32 1
  %157 = load i8, ptr %156, align 1
  %158 = and i8 %157, 4
  %159 = icmp eq i8 %158, 0
  br i1 %159, label %182, label %160

160:                                              ; preds = %154
  %161 = getelementptr %struct.anon.79, ptr %155, i32 %146
  %162 = load i8, ptr %161, align 1
  %163 = icmp ugt i8 %162, 12
  br i1 %163, label %182, label %164

164:                                              ; preds = %160, %153
  %165 = icmp slt i32 %145, 0
  %166 = select i1 %165, i1 true, i1 %143
  %167 = load ptr, ptr %139, align 8
  br i1 %166, label %173, label %168

168:                                              ; preds = %164
  %169 = getelementptr %struct.anon.79, ptr %167, i32 %146, i32 1
  %170 = load i8, ptr %169, align 1
  %171 = and i8 %170, 8
  %172 = icmp eq i8 %171, 0
  br i1 %172, label %174, label %173

173:                                              ; preds = %168, %164
  br label %174

174:                                              ; preds = %173, %168
  %175 = phi i32 [ %146, %173 ], [ %145, %168 ]
  %176 = load i64, ptr %1, align 8
  %177 = getelementptr %struct.anon.79, ptr %167, i32 %146
  %178 = load i8, ptr %177, align 1
  %179 = zext i8 %178 to i64
  %180 = lshr i64 %176, %179
  %181 = icmp eq i64 %180, 0
  br i1 %181, label %182, label %186

182:                                              ; preds = %174, %160, %154, %147
  %183 = phi i32 [ %145, %160 ], [ %175, %174 ], [ %145, %154 ], [ %145, %147 ]
  %184 = add nuw nsw i32 %146, 1
  %185 = icmp eq i32 %184, %132
  br i1 %185, label %186, label %144

186:                                              ; preds = %182, %174
  %187 = phi i32 [ %183, %182 ], [ %175, %174 ]
  %188 = icmp slt i32 %187, 0
  br i1 %188, label %189, label %190, !prof !8

189:                                              ; preds = %186, %122
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 284, i32 noundef 9, ptr noundef null) #12
  br label %339

190:                                              ; preds = %186
  %191 = and i32 %123, 114688
  %192 = icmp eq i32 %191, 0
  %193 = getelementptr inbounds %struct.nvif_vmm, ptr %14, i32 0, i32 3
  %194 = load ptr, ptr %193, align 8
  br i1 %192, label %218, label %195

195:                                              ; preds = %190
  %196 = getelementptr %struct.anon.79, ptr %194, i32 %187, i32 1
  %197 = load i8, ptr %196, align 1
  %198 = and i8 %197, 8
  %199 = icmp eq i8 %198, 0
  br i1 %199, label %200, label %218

200:                                              ; preds = %195
  %201 = getelementptr inbounds %struct.nouveau_cli, ptr %0, i32 0, i32 4, i32 0, i32 4
  %202 = load i32, ptr %201, align 8
  %203 = icmp ugt i32 %202, -2147446776
  br i1 %203, label %204, label %215

204:                                              ; preds = %200
  %205 = getelementptr inbounds %struct.nouveau_cli, ptr %0, i32 0, i32 4, i32 9
  %206 = load ptr, ptr %205, align 4
  %207 = lshr i32 %123, 6
  %208 = and i32 %207, 255
  %209 = getelementptr i8, ptr %206, i32 %208
  %210 = load i8, ptr %209, align 1
  %211 = zext i8 %210 to i32
  %212 = shl nuw nsw i32 %211, 6
  %213 = and i32 %130, -16321
  %214 = or i32 %212, %213
  store i32 %214, ptr %127, align 8
  br label %215

215:                                              ; preds = %204, %200
  %216 = phi i32 [ %214, %204 ], [ %130, %200 ]
  %217 = and i32 %216, -114689
  store i32 %217, ptr %127, align 8
  br label %218

218:                                              ; preds = %215, %195, %190
  %219 = phi i32 [ %217, %215 ], [ %130, %195 ], [ %130, %190 ]
  %220 = getelementptr %struct.anon.79, ptr %194, i32 %187
  %221 = load i8, ptr %220, align 1
  %222 = shl i8 %221, 1
  %223 = and i8 %222, 62
  %224 = zext i8 %223 to i32
  %225 = and i32 %219, -63
  %226 = or i32 %225, %224
  store i32 %226, ptr %127, align 8
  %227 = getelementptr %struct.nouveau_drm, ptr %8, i32 0, i32 2, i32 3, i32 1, i32 4
  %228 = load i8, ptr %227, align 1
  %229 = icmp ult i8 %228, 6
  br i1 %229, label %230, label %314

230:                                              ; preds = %218
  %231 = icmp eq i32 %4, 0
  br i1 %231, label %335, label %232

232:                                              ; preds = %230
  %233 = getelementptr %struct.nouveau_drm, ptr %8, i32 0, i32 2, i32 3, i32 1, i32 2
  %234 = load i16, ptr %233, align 2
  %235 = icmp ugt i16 %234, 63
  br i1 %235, label %236, label %254

236:                                              ; preds = %232
  store i32 65536, ptr %2, align 4
  %237 = load i64, ptr %1, align 8
  %238 = shl i32 %4, 6
  %239 = add i32 %238, -1
  %240 = zext i32 %239 to i64
  %241 = add i64 %237, %240
  %242 = icmp ult i64 %241, 4294967296
  br i1 %242, label %243, label %247, !prof !9

243:                                              ; preds = %236
  %244 = trunc i64 %241 to i32
  %245 = udiv i32 %244, %238
  %246 = zext i32 %245 to i64
  br label %250

247:                                              ; preds = %236
  %248 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %238, i64 %241) #13, !srcloc !10
  %249 = extractvalue { i64, i64 } %248, 1
  br label %250

250:                                              ; preds = %247, %243
  %251 = phi i64 [ %246, %243 ], [ %249, %247 ]
  %252 = zext i32 %238 to i64
  %253 = mul i64 %251, %252
  store i64 %253, ptr %1, align 8
  br label %335

254:                                              ; preds = %232
  %255 = icmp ugt i16 %234, 47
  br i1 %255, label %256, label %274

256:                                              ; preds = %254
  store i32 32768, ptr %2, align 4
  %257 = load i64, ptr %1, align 8
  %258 = shl i32 %4, 6
  %259 = add i32 %258, -1
  %260 = zext i32 %259 to i64
  %261 = add i64 %257, %260
  %262 = icmp ult i64 %261, 4294967296
  br i1 %262, label %263, label %267, !prof !9

263:                                              ; preds = %256
  %264 = trunc i64 %261 to i32
  %265 = udiv i32 %264, %258
  %266 = zext i32 %265 to i64
  br label %270

267:                                              ; preds = %256
  %268 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %258, i64 %261) #13, !srcloc !10
  %269 = extractvalue { i64, i64 } %268, 1
  br label %270

270:                                              ; preds = %267, %263
  %271 = phi i64 [ %266, %263 ], [ %269, %267 ]
  %272 = zext i32 %258 to i64
  %273 = mul i64 %271, %272
  store i64 %273, ptr %1, align 8
  br label %335

274:                                              ; preds = %254
  %275 = icmp ugt i16 %234, 31
  br i1 %275, label %276, label %294

276:                                              ; preds = %274
  store i32 16384, ptr %2, align 4
  %277 = load i64, ptr %1, align 8
  %278 = shl i32 %4, 6
  %279 = add i32 %278, -1
  %280 = zext i32 %279 to i64
  %281 = add i64 %277, %280
  %282 = icmp ult i64 %281, 4294967296
  br i1 %282, label %283, label %287, !prof !9

283:                                              ; preds = %276
  %284 = trunc i64 %281 to i32
  %285 = udiv i32 %284, %278
  %286 = zext i32 %285 to i64
  br label %290

287:                                              ; preds = %276
  %288 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %278, i64 %281) #13, !srcloc !10
  %289 = extractvalue { i64, i64 } %288, 1
  br label %290

290:                                              ; preds = %287, %283
  %291 = phi i64 [ %286, %283 ], [ %289, %287 ]
  %292 = zext i32 %278 to i64
  %293 = mul i64 %291, %292
  store i64 %293, ptr %1, align 8
  br label %335

294:                                              ; preds = %274
  %295 = icmp ugt i16 %234, 15
  br i1 %295, label %296, label %335

296:                                              ; preds = %294
  store i32 16384, ptr %2, align 4
  %297 = load i64, ptr %1, align 8
  %298 = shl i32 %4, 5
  %299 = add i32 %298, -1
  %300 = zext i32 %299 to i64
  %301 = add i64 %297, %300
  %302 = icmp ult i64 %301, 4294967296
  br i1 %302, label %303, label %307, !prof !9

303:                                              ; preds = %296
  %304 = trunc i64 %301 to i32
  %305 = udiv i32 %304, %298
  %306 = zext i32 %305 to i64
  br label %310

307:                                              ; preds = %296
  %308 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %298, i64 %301) #13, !srcloc !10
  %309 = extractvalue { i64, i64 } %308, 1
  br label %310

310:                                              ; preds = %307, %303
  %311 = phi i64 [ %306, %303 ], [ %309, %307 ]
  %312 = zext i32 %298 to i64
  %313 = mul i64 %311, %312
  store i64 %313, ptr %1, align 8
  br label %335

314:                                              ; preds = %218
  %315 = load i64, ptr %1, align 8
  %316 = lshr exact i32 %224, 1
  %317 = shl nuw i32 1, %316
  %318 = add i32 %317, -1
  %319 = zext i32 %318 to i64
  %320 = add i64 %315, %319
  %321 = icmp ult i64 %320, 4294967296
  br i1 %321, label %322, label %326, !prof !9

322:                                              ; preds = %314
  %323 = trunc i64 %320 to i32
  %324 = lshr i32 %323, %316
  %325 = zext i32 %324 to i64
  br label %329

326:                                              ; preds = %314
  %327 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %317, i64 %320) #13, !srcloc !10
  %328 = extractvalue { i64, i64 } %327, 1
  br label %329

329:                                              ; preds = %326, %322
  %330 = phi i64 [ %325, %322 ], [ %328, %326 ]
  %331 = zext i32 %317 to i64
  %332 = mul i64 %330, %331
  store i64 %332, ptr %1, align 8
  %333 = load i32, ptr %2, align 4
  %334 = tail call i32 @llvm.smax.i32(i32 %317, i32 %333) #12
  store i32 %334, ptr %2, align 4
  br label %335

335:                                              ; preds = %329, %310, %294, %290, %270, %250, %230
  %336 = load i64, ptr %1, align 8
  %337 = add i64 %336, 4095
  %338 = and i64 %337, -4096
  store i64 %338, ptr %1, align 8
  br label %339

339:                                              ; preds = %335, %189, %116, %79, %25, %17
  %340 = phi ptr [ inttoptr (i32 -22 to ptr), %189 ], [ %27, %335 ], [ inttoptr (i32 -22 to ptr), %79 ], [ inttoptr (i32 -22 to ptr), %116 ], [ inttoptr (i32 -22 to ptr), %17 ], [ inttoptr (i32 -12 to ptr), %25 ]
  ret ptr %340
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nouveau_bo_init(ptr noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = icmp eq ptr %4, null
  %8 = select i1 %7, i32 0, i32 2
  tail call void @nouveau_bo_placement_set(ptr noundef %0, i32 noundef %3, i32 noundef 0)
  %9 = getelementptr inbounds %struct.nouveau_bo, ptr %0, i32 0, i32 8
  store volatile ptr %9, ptr %9, align 4
  %10 = getelementptr inbounds %struct.nouveau_bo, ptr %0, i32 0, i32 8, i32 1
  store ptr %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.ttm_buffer_object, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8
  %13 = trunc i64 %1 to i32
  %14 = getelementptr inbounds %struct.nouveau_bo, ptr %0, i32 0, i32 1
  %15 = ashr i32 %2, 12
  %16 = tail call i32 @ttm_bo_init(ptr noundef %12, ptr noundef %0, i32 noundef %13, i32 noundef %8, ptr noundef %14, i32 noundef %15, i1 noundef zeroext false, ptr noundef %4, ptr noundef %5, ptr noundef nonnull @nouveau_bo_del_ttm) #12
  ret i32 %16
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nouveau_bo_placement_set(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #4 {
  %4 = getelementptr inbounds %struct.nouveau_bo, ptr %0, i32 0, i32 1
  %5 = getelementptr inbounds %struct.nouveau_bo, ptr %0, i32 0, i32 3
  %6 = getelementptr inbounds %struct.nouveau_bo, ptr %0, i32 0, i32 1, i32 1
  store ptr %5, ptr %6, align 4
  store i32 0, ptr %4, align 4
  %7 = and i32 %1, 2
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.nouveau_bo, ptr %0, i32 0, i32 3, i32 0, i32 2
  store i32 2, ptr %10, align 4
  %11 = getelementptr %struct.nouveau_bo, ptr %0, i32 0, i32 3, i32 0, i32 3
  store i32 0, ptr %11, align 4
  store i32 1, ptr %4, align 4
  br label %12

12:                                               ; preds = %9, %3
  %13 = phi i32 [ 1, %9 ], [ 0, %3 ]
  %14 = and i32 %1, 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = getelementptr %struct.ttm_place, ptr %5, i32 %13, i32 2
  store i32 1, ptr %17, align 4
  %18 = getelementptr %struct.ttm_place, ptr %5, i32 %13, i32 3
  store i32 0, ptr %18, align 4
  %19 = add nuw nsw i32 %13, 1
  store i32 %19, ptr %4, align 4
  br label %20

20:                                               ; preds = %16, %12
  %21 = phi i32 [ %19, %16 ], [ %13, %12 ]
  %22 = and i32 %1, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = getelementptr %struct.ttm_place, ptr %5, i32 %21, i32 2
  store i32 0, ptr %25, align 4
  %26 = add nuw nsw i32 %21, 1
  store i32 %26, ptr %4, align 4
  %27 = getelementptr %struct.ttm_place, ptr %5, i32 %21, i32 3
  store i32 0, ptr %27, align 4
  br label %28

28:                                               ; preds = %24, %20
  %29 = getelementptr inbounds %struct.nouveau_bo, ptr %0, i32 0, i32 4
  %30 = getelementptr inbounds %struct.nouveau_bo, ptr %0, i32 0, i32 1, i32 3
  store ptr %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.nouveau_bo, ptr %0, i32 0, i32 1, i32 2
  %32 = or i32 %2, %1
  store i32 0, ptr %31, align 4
  %33 = and i32 %32, 2
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.nouveau_bo, ptr %0, i32 0, i32 4, i32 0, i32 2
  store i32 2, ptr %36, align 4
  %37 = getelementptr %struct.nouveau_bo, ptr %0, i32 0, i32 4, i32 0, i32 3
  store i32 0, ptr %37, align 4
  store i32 1, ptr %31, align 4
  br label %38

38:                                               ; preds = %35, %28
  %39 = phi i32 [ 1, %35 ], [ 0, %28 ]
  %40 = and i32 %32, 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = getelementptr %struct.ttm_place, ptr %29, i32 %39, i32 2
  store i32 1, ptr %43, align 4
  %44 = getelementptr %struct.ttm_place, ptr %29, i32 %39, i32 3
  store i32 0, ptr %44, align 4
  %45 = add nuw nsw i32 %39, 1
  store i32 %45, ptr %31, align 4
  br label %46

46:                                               ; preds = %42, %38
  %47 = phi i32 [ %45, %42 ], [ %39, %38 ]
  %48 = and i32 %32, 1
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  %51 = getelementptr %struct.ttm_place, ptr %29, i32 %47, i32 2
  store i32 0, ptr %51, align 4
  %52 = add nuw nsw i32 %47, 1
  store i32 %52, ptr %31, align 4
  %53 = getelementptr %struct.ttm_place, ptr %29, i32 %47, i32 3
  store i32 0, ptr %53, align 4
  br label %54

54:                                               ; preds = %50, %46
  %55 = phi i32 [ %47, %46 ], [ %52, %50 ]
  %56 = getelementptr inbounds %struct.ttm_buffer_object, ptr %0, i32 0, i32 1
  %57 = load ptr, ptr %56, align 8
  %58 = getelementptr i8, ptr %57, i32 -544
  %59 = load i64, ptr %58, align 8
  %60 = getelementptr i8, ptr %57, i32 -547
  %61 = load i8, ptr %60, align 1
  %62 = icmp eq i8 %61, 2
  br i1 %62, label %63, label %103

63:                                               ; preds = %54
  %64 = getelementptr inbounds %struct.nouveau_bo, ptr %0, i32 0, i32 16
  %65 = load i32, ptr %64, align 4
  %66 = icmp eq i32 %65, 0
  %67 = or i1 %8, %66
  br i1 %67, label %103, label %68

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 5
  %70 = load i32, ptr %69, align 8
  %71 = zext i32 %70 to i64
  %72 = lshr i64 %59, 2
  %73 = icmp ugt i64 %72, %71
  br i1 %73, label %74, label %103

74:                                               ; preds = %68
  %75 = getelementptr inbounds %struct.nouveau_bo, ptr %0, i32 0, i32 15
  %76 = load i32, ptr %75, align 8
  %77 = and i32 %76, 917504
  %78 = icmp eq i32 %77, 0
  %79 = lshr i64 %59, 13
  %80 = trunc i64 %79 to i32
  %81 = select i1 %78, i32 0, i32 %80
  %82 = select i1 %78, i32 %80, i32 -1
  %83 = load i32, ptr %4, align 8
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %87, label %90

85:                                               ; preds = %90
  %86 = load i32, ptr %31, align 8
  br label %87

87:                                               ; preds = %85, %74
  %88 = phi i32 [ %86, %85 ], [ %55, %74 ]
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %103, label %96

90:                                               ; preds = %90, %74
  %91 = phi i32 [ %94, %90 ], [ 0, %74 ]
  %92 = getelementptr %struct.nouveau_bo, ptr %0, i32 0, i32 3, i32 %91
  store i32 %81, ptr %92, align 4
  %93 = getelementptr %struct.nouveau_bo, ptr %0, i32 0, i32 3, i32 %91, i32 1
  store i32 %82, ptr %93, align 4
  %94 = add nuw i32 %91, 1
  %95 = icmp eq i32 %94, %83
  br i1 %95, label %85, label %90

96:                                               ; preds = %96, %87
  %97 = phi i32 [ %100, %96 ], [ 0, %87 ]
  %98 = getelementptr %struct.nouveau_bo, ptr %0, i32 0, i32 4, i32 %97
  store i32 %81, ptr %98, align 4
  %99 = getelementptr %struct.nouveau_bo, ptr %0, i32 0, i32 4, i32 %97, i32 1
  store i32 %82, ptr %99, align 4
  %100 = add nuw i32 %97, 1
  %101 = load i32, ptr %31, align 8
  %102 = icmp ult i32 %100, %101
  br i1 %102, label %96, label %103

103:                                              ; preds = %96, %87, %68, %63, %54
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_bo_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nouveau_bo_del_ttm(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ttm_buffer_object, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 -56
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.ttm_buffer_object, ptr %0, i32 0, i32 13
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9, !prof !9

9:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 142, i32 noundef 9, ptr noundef null) #12
  %10 = load ptr, ptr %2, align 8
  br label %11

11:                                               ; preds = %9, %1
  %12 = phi ptr [ %10, %9 ], [ %3, %1 ]
  %13 = getelementptr i8, ptr %12, i32 1424
  tail call void @mutex_lock(ptr noundef %13) #12
  %14 = getelementptr inbounds %struct.nouveau_bo, ptr %0, i32 0, i32 8
  %15 = getelementptr inbounds %struct.nouveau_bo, ptr %0, i32 0, i32 8, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = load ptr, ptr %14, align 4
  %18 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  store ptr %16, ptr %18, align 4
  store volatile ptr %17, ptr %16, align 4
  store volatile ptr %14, ptr %14, align 4
  store ptr %14, ptr %15, align 4
  tail call void @mutex_unlock(ptr noundef %13) #12
  %19 = getelementptr inbounds %struct.nouveau_bo, ptr %0, i32 0, i32 17
  %20 = load ptr, ptr %19, align 8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %29, label %22

22:                                               ; preds = %11
  %23 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 5
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.nouveau_drm, ptr %24, i32 0, i32 17, i32 1
  tail call void @_raw_spin_lock(ptr noundef %25) #12
  store ptr null, ptr %20, align 4
  %26 = getelementptr inbounds %struct.nouveau_drm_tile, ptr %20, i32 0, i32 1
  store i8 0, ptr %26, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !11
  %27 = load i16, ptr %25, align 4
  %28 = add i16 %27, 1
  store i16 %28, ptr %25, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !14
  br label %29

29:                                               ; preds = %22, %11
  %30 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 2
  %31 = load ptr, ptr %30, align 8
  %32 = icmp eq ptr %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  tail call void @drm_gem_object_release(ptr noundef %0) #12
  br label %36

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 10
  tail call void @dma_resv_fini(ptr noundef %35) #12
  br label %36

36:                                               ; preds = %34, %33
  tail call void @kfree(ptr noundef %0) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nouveau_bo_new(ptr nocapture noundef readonly %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr nocapture noundef writeonly %8) local_unnamed_addr #0 {
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i64 %1, ptr %10, align 8
  store i32 %2, ptr %11, align 4
  %12 = call ptr @nouveau_bo_alloc(ptr noundef %0, ptr noundef nonnull %10, ptr noundef nonnull %11, i32 noundef %3, i32 noundef %4, i32 noundef %5)
  %13 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = ptrtoint ptr %12 to i32
  br label %34

16:                                               ; preds = %9
  %17 = load i64, ptr %10, align 8
  %18 = trunc i64 %17 to i32
  %19 = getelementptr inbounds %struct.drm_gem_object, ptr %12, i32 0, i32 5
  store i32 %18, ptr %19, align 8
  %20 = getelementptr inbounds %struct.drm_gem_object, ptr %12, i32 0, i32 10
  tail call void @dma_resv_init(ptr noundef %20) #12
  %21 = getelementptr inbounds %struct.drm_gem_object, ptr %12, i32 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(128) %21, i8 0, i64 128, i1 false) #12
  %22 = load i32, ptr %11, align 4
  %23 = icmp eq ptr %6, null
  %24 = select i1 %23, i32 0, i32 2
  tail call void @nouveau_bo_placement_set(ptr noundef %12, i32 noundef %3, i32 noundef 0) #12
  %25 = getelementptr inbounds %struct.nouveau_bo, ptr %12, i32 0, i32 8
  store volatile ptr %25, ptr %25, align 4
  %26 = getelementptr inbounds %struct.nouveau_bo, ptr %12, i32 0, i32 8, i32 1
  store ptr %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.ttm_buffer_object, ptr %12, i32 0, i32 1
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds %struct.nouveau_bo, ptr %12, i32 0, i32 1
  %30 = ashr i32 %22, 12
  %31 = tail call i32 @ttm_bo_init(ptr noundef %28, ptr noundef %12, i32 noundef %18, i32 noundef %24, ptr noundef %29, i32 noundef %30, i1 noundef zeroext false, ptr noundef %6, ptr noundef %7, ptr noundef nonnull @nouveau_bo_del_ttm) #12
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %16
  store ptr %12, ptr %8, align 4
  br label %34

34:                                               ; preds = %33, %16, %14
  %35 = phi i32 [ %15, %14 ], [ 0, %33 ], [ %31, %16 ]
  ret i32 %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_resv_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nouveau_bo_pin(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca %struct.ttm_operation_ctx, align 8
  %5 = alloca %struct.ttm_operation_ctx, align 8
  %6 = getelementptr inbounds %struct.ttm_buffer_object, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 9
  %9 = load ptr, ptr %8, align 8
  %10 = tail call i32 @ww_mutex_lock(ptr noundef %9, ptr noundef null) #12
  %11 = icmp eq i32 %10, -4
  %12 = select i1 %11, i32 -512, i32 %10
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %149

14:                                               ; preds = %3
  %15 = getelementptr i8, ptr %7, i32 -547
  %16 = load i8, ptr %15, align 1
  %17 = icmp ult i8 %16, 6
  %18 = icmp ne i32 %1, 2
  %19 = or i1 %18, %17
  %20 = xor i1 %2, true
  %21 = or i1 %19, %20
  br i1 %21, label %27, label %22

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.nouveau_bo, ptr %0, i32 0, i32 15
  %24 = load i32, ptr %23, align 8
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %22, %14
  %28 = getelementptr inbounds %struct.ttm_buffer_object, ptr %0, i32 0, i32 13
  %29 = load i32, ptr %28, align 8
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %93, label %36

31:                                               ; preds = %22
  %32 = or i32 %24, 1
  store i32 %32, ptr %23, align 8
  %33 = getelementptr inbounds %struct.ttm_buffer_object, ptr %0, i32 0, i32 13
  %34 = load i32, ptr %33, align 8
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %78, label %36

36:                                               ; preds = %31, %27
  %37 = phi ptr [ %33, %31 ], [ %28, %27 ]
  %38 = phi i1 [ true, %31 ], [ false, %27 ]
  %39 = getelementptr inbounds %struct.ttm_buffer_object, ptr %0, i32 0, i32 6
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.ttm_resource, ptr %40, i32 0, i32 2
  %42 = load i32, ptr %41, align 4
  switch i32 %42, label %57 [
    i32 2, label %43
    i32 1, label %50
  ]

43:                                               ; preds = %36
  %44 = lshr i32 %1, 1
  %45 = and i32 %44, 1
  %46 = xor i32 %45, 1
  %47 = zext i1 %38 to i32
  %48 = or i32 %46, %47
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %66, label %58

50:                                               ; preds = %36
  %51 = lshr i32 %1, 2
  %52 = zext i1 %38 to i32
  %53 = and i32 %51, 1
  %54 = xor i32 %53, 1
  %55 = or i32 %54, %52
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %66, label %58

57:                                               ; preds = %36
  br i1 %38, label %58, label %66

58:                                               ; preds = %57, %50, %43
  %59 = getelementptr i8, ptr %7, i32 -616
  %60 = load ptr, ptr %59, align 8
  %61 = getelementptr inbounds %struct.nouveau_drm, ptr %60, i32 0, i32 3
  %62 = load ptr, ptr %61, align 8
  %63 = getelementptr inbounds %struct.drm_device, ptr %62, i32 0, i32 2
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr i8, ptr %7, i32 -136
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.2, ptr noundef %65, ptr noundef %0, i32 noundef %42, i32 noundef %1) #10
  br label %66

66:                                               ; preds = %58, %57, %50, %43
  %67 = phi i32 [ -16, %58 ], [ 0, %57 ], [ 0, %50 ], [ 0, %43 ]
  %68 = getelementptr inbounds %struct.ttm_buffer_object, ptr %0, i32 0, i32 5
  %69 = load volatile i32, ptr %68, align 4
  %70 = icmp eq i32 %69, 0
  %71 = load i1, ptr @ttm_bo_pin.__already_done, align 1
  %72 = xor i1 %71, true
  %73 = select i1 %70, i1 %72, i1 false
  br i1 %73, label %74, label %75, !prof !8

74:                                               ; preds = %66
  store i1 true, ptr @ttm_bo_pin.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 552, i32 noundef 9, ptr noundef null) #12
  br label %75

75:                                               ; preds = %74, %66
  %76 = load i32, ptr %37, align 8
  %77 = add i32 %76, 1
  store i32 %77, ptr %37, align 8
  br label %129

78:                                               ; preds = %31
  %79 = getelementptr inbounds %struct.nouveau_bo, ptr %0, i32 0, i32 1
  %80 = getelementptr inbounds %struct.nouveau_bo, ptr %0, i32 0, i32 3
  %81 = getelementptr inbounds %struct.nouveau_bo, ptr %0, i32 0, i32 1, i32 1
  store ptr %80, ptr %81, align 4
  %82 = getelementptr %struct.nouveau_bo, ptr %0, i32 0, i32 3, i32 0, i32 2
  store i32 1, ptr %82, align 4
  %83 = getelementptr %struct.nouveau_bo, ptr %0, i32 0, i32 3, i32 0, i32 3
  store i32 0, ptr %83, align 4
  store i32 1, ptr %79, align 4
  %84 = getelementptr inbounds %struct.nouveau_bo, ptr %0, i32 0, i32 4
  %85 = getelementptr inbounds %struct.nouveau_bo, ptr %0, i32 0, i32 1, i32 3
  store ptr %84, ptr %85, align 4
  %86 = getelementptr inbounds %struct.nouveau_bo, ptr %0, i32 0, i32 1, i32 2
  %87 = getelementptr %struct.nouveau_bo, ptr %0, i32 0, i32 4, i32 0, i32 2
  store i32 1, ptr %87, align 4
  %88 = getelementptr %struct.nouveau_bo, ptr %0, i32 0, i32 4, i32 0, i32 3
  store i32 0, ptr %88, align 4
  store i32 1, ptr %86, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %89 = call i32 @ttm_bo_validate(ptr noundef %0, ptr noundef %79, ptr noundef nonnull %5) #12
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %78
  call void @nouveau_bo_sync_for_device(ptr noundef %0) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #12
  br label %93

92:                                               ; preds = %78
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #12
  br label %129

93:                                               ; preds = %91, %27
  %94 = phi i1 [ false, %27 ], [ true, %91 ]
  %95 = phi ptr [ %28, %27 ], [ %33, %91 ]
  call void @nouveau_bo_placement_set(ptr noundef %0, i32 noundef %1, i32 noundef 0)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #12
  %96 = getelementptr inbounds %struct.nouveau_bo, ptr %0, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %97 = call i32 @ttm_bo_validate(ptr noundef %0, ptr noundef %96, ptr noundef nonnull %4) #12
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %93
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #12
  br label %129

100:                                              ; preds = %93
  call void @nouveau_bo_sync_for_device(ptr noundef %0) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #12
  %101 = getelementptr inbounds %struct.ttm_buffer_object, ptr %0, i32 0, i32 5
  %102 = load volatile i32, ptr %101, align 4
  %103 = icmp eq i32 %102, 0
  %104 = load i1, ptr @ttm_bo_pin.__already_done, align 1
  %105 = xor i1 %104, true
  %106 = select i1 %103, i1 %105, i1 false
  br i1 %106, label %107, label %108, !prof !8

107:                                              ; preds = %100
  store i1 true, ptr @ttm_bo_pin.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 552, i32 noundef 9, ptr noundef null) #12
  br label %108

108:                                              ; preds = %107, %100
  %109 = load i32, ptr %95, align 8
  %110 = add i32 %109, 1
  store i32 %110, ptr %95, align 8
  %111 = getelementptr inbounds %struct.ttm_buffer_object, ptr %0, i32 0, i32 6
  %112 = load ptr, ptr %111, align 4
  %113 = getelementptr inbounds %struct.ttm_resource, ptr %112, i32 0, i32 2
  %114 = load i32, ptr %113, align 4
  switch i32 %114, label %138 [
    i32 2, label %115
    i32 1, label %122
  ]

115:                                              ; preds = %108
  %116 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 5
  %117 = load i32, ptr %116, align 8
  %118 = zext i32 %117 to i64
  %119 = getelementptr i8, ptr %7, i32 1456
  %120 = load i64, ptr %119, align 8
  %121 = sub i64 %120, %118
  store i64 %121, ptr %119, align 8
  br label %138

122:                                              ; preds = %108
  %123 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 5
  %124 = load i32, ptr %123, align 8
  %125 = zext i32 %124 to i64
  %126 = getelementptr i8, ptr %7, i32 1464
  %127 = load i64, ptr %126, align 8
  %128 = sub i64 %127, %125
  store i64 %128, ptr %126, align 8
  br label %138

129:                                              ; preds = %99, %92, %75
  %130 = phi i1 [ %38, %75 ], [ true, %92 ], [ %94, %99 ]
  %131 = phi i32 [ %67, %75 ], [ %89, %92 ], [ %97, %99 ]
  %132 = icmp ne i32 %131, 0
  %133 = select i1 %130, i1 %132, i1 false
  br i1 %133, label %134, label %138

134:                                              ; preds = %129
  %135 = getelementptr inbounds %struct.nouveau_bo, ptr %0, i32 0, i32 15
  %136 = load i32, ptr %135, align 8
  %137 = and i32 %136, -2
  store i32 %137, ptr %135, align 8
  br label %138

138:                                              ; preds = %134, %129, %122, %115, %108
  %139 = phi i32 [ %131, %134 ], [ %131, %129 ], [ 0, %108 ], [ 0, %122 ], [ 0, %115 ]
  %140 = load ptr, ptr %6, align 8
  %141 = getelementptr inbounds %struct.ttm_device, ptr %140, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %141) #12
  %142 = getelementptr inbounds %struct.ttm_buffer_object, ptr %0, i32 0, i32 6
  %143 = load ptr, ptr %142, align 4
  call void @ttm_bo_move_to_lru_tail(ptr noundef %0, ptr noundef %143, ptr noundef null) #12
  %144 = load ptr, ptr %6, align 8
  %145 = getelementptr inbounds %struct.ttm_device, ptr %144, i32 0, i32 6
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !11
  %146 = load i16, ptr %145, align 4
  %147 = add i16 %146, 1
  store i16 %147, ptr %145, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !12
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !13
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !14
  %148 = load ptr, ptr %8, align 8
  call void @ww_mutex_unlock(ptr noundef %148) #12
  br label %149

149:                                              ; preds = %138, %3
  %150 = phi i32 [ %139, %138 ], [ %12, %3 ]
  ret i32 %150
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nouveau_bo_validate(ptr noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca %struct.ttm_operation_ctx, align 8
  %5 = zext i1 %1 to i8
  %6 = zext i1 %2 to i8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  store i8 %5, ptr %4, align 8
  %7 = getelementptr inbounds %struct.ttm_operation_ctx, ptr %4, i32 0, i32 1
  store i8 %6, ptr %7, align 1
  %8 = getelementptr inbounds %struct.nouveau_bo, ptr %0, i32 0, i32 1
  %9 = call i32 @ttm_bo_validate(ptr noundef %0, ptr noundef %8, ptr noundef nonnull %4) #12
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  call void @nouveau_bo_sync_for_device(ptr noundef %0)
  br label %12

12:                                               ; preds = %11, %3
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #12
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nouveau_bo_unpin(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ttm_buffer_object, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 9
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @ww_mutex_lock(ptr noundef %5, ptr noundef null) #12
  %7 = icmp eq i32 %6, -4
  %8 = select i1 %7, i32 -512, i32 %6
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %55

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.ttm_buffer_object, ptr %0, i32 0, i32 5
  %12 = load volatile i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  %14 = load i1, ptr @ttm_bo_unpin.__already_done, align 1
  %15 = xor i1 %14, true
  %16 = select i1 %13, i1 %15, i1 false
  br i1 %16, label %17, label %18, !prof !8

17:                                               ; preds = %10
  store i1 true, ptr @ttm_bo_unpin.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 565, i32 noundef 9, ptr noundef null) #12
  br label %18

18:                                               ; preds = %17, %10
  %19 = getelementptr inbounds %struct.ttm_buffer_object, ptr %0, i32 0, i32 13
  %20 = load i32, ptr %19, align 8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = add i32 %20, -1
  store i32 %23, ptr %19, align 8
  br label %28

24:                                               ; preds = %18
  %25 = load i1, ptr @ttm_bo_unpin.__already_done.15, align 1
  br i1 %25, label %31, label %26, !prof !9

26:                                               ; preds = %24
  store i1 true, ptr @ttm_bo_unpin.__already_done.15, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 569, i32 noundef 9, ptr noundef null) #12
  %27 = load i32, ptr %19, align 8
  br label %28

28:                                               ; preds = %26, %22
  %29 = phi i32 [ %23, %22 ], [ %27, %26 ]
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %28, %24
  %32 = getelementptr inbounds %struct.ttm_buffer_object, ptr %0, i32 0, i32 6
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.ttm_resource, ptr %33, i32 0, i32 2
  %35 = load i32, ptr %34, align 4
  switch i32 %35, label %45 [
    i32 2, label %37
    i32 1, label %36
  ]

36:                                               ; preds = %31
  br label %37

37:                                               ; preds = %36, %31
  %38 = phi i32 [ 1464, %36 ], [ 1456, %31 ]
  %39 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 5
  %40 = load i32, ptr %39, align 8
  %41 = zext i32 %40 to i64
  %42 = getelementptr i8, ptr %3, i32 %38
  %43 = load i64, ptr %42, align 8
  %44 = add i64 %43, %41
  store i64 %44, ptr %42, align 8
  br label %45

45:                                               ; preds = %37, %31, %28
  %46 = load ptr, ptr %2, align 8
  %47 = getelementptr inbounds %struct.ttm_device, ptr %46, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %47) #12
  %48 = getelementptr inbounds %struct.ttm_buffer_object, ptr %0, i32 0, i32 6
  %49 = load ptr, ptr %48, align 4
  tail call void @ttm_bo_move_to_lru_tail(ptr noundef %0, ptr noundef %49, ptr noundef null) #12
  %50 = load ptr, ptr %2, align 8
  %51 = getelementptr inbounds %struct.ttm_device, ptr %50, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !11
  %52 = load i16, ptr %51, align 4
  %53 = add i16 %52, 1
  store i16 %53, ptr %51, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !14
  %54 = load ptr, ptr %4, align 8
  tail call void @ww_mutex_unlock(ptr noundef %54) #12
  br label %55

55:                                               ; preds = %45, %1
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nouveau_bo_map(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @ww_mutex_lock(ptr noundef %3, ptr noundef null) #12
  %5 = icmp eq i32 %4, -4
  %6 = select i1 %5, i32 -512, i32 %4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %24

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ttm_buffer_object, ptr %0, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ttm_resource, ptr %10, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nouveau_bo, ptr %0, i32 0, i32 6
  %14 = tail call i32 @ttm_bo_kmap(ptr noundef %0, i32 noundef 0, i32 noundef %12, ptr noundef %13) #12
  %15 = getelementptr inbounds %struct.ttm_buffer_object, ptr %0, i32 0, i32 1
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.ttm_device, ptr %16, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %17) #12
  %18 = load ptr, ptr %9, align 4
  tail call void @ttm_bo_move_to_lru_tail(ptr noundef %0, ptr noundef %18, ptr noundef null) #12
  %19 = load ptr, ptr %15, align 8
  %20 = getelementptr inbounds %struct.ttm_device, ptr %19, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !11
  %21 = load i16, ptr %20, align 4
  %22 = add i16 %21, 1
  store i16 %22, ptr %20, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !14
  %23 = load ptr, ptr %2, align 8
  tail call void @ww_mutex_unlock(ptr noundef %23) #12
  br label %24

24:                                               ; preds = %8, %1
  %25 = phi i32 [ %14, %8 ], [ %6, %1 ]
  ret i32 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_bo_kmap(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nouveau_bo_unmap(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.nouveau_bo, ptr %0, i32 0, i32 6
  tail call void @ttm_bo_kunmap(ptr noundef %4) #12
  br label %5

5:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_bo_kunmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nouveau_bo_sync_for_device(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ttm_buffer_object, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.ttm_buffer_object, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %75, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ttm_tt, ptr %5, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %75, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr %5, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %26

14:                                               ; preds = %11
  %15 = load i32, ptr @__drm_debug, align 4
  %16 = and i32 %15, 2
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %75, label %18

18:                                               ; preds = %14
  %19 = getelementptr i8, ptr %3, i32 -616
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.nouveau_drm, ptr %20, i32 0, i32 3
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.drm_device, ptr %22, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr i8, ptr %3, i32 -136
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %24, ptr noundef nonnull @.str.3, ptr noundef %25, ptr noundef nonnull %5) #10
  br label %75

26:                                               ; preds = %11
  %27 = getelementptr inbounds %struct.nouveau_bo, ptr %0, i32 0, i32 5
  %28 = load i8, ptr %27, align 4, !range !15
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %75

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.ttm_tt, ptr %5, i32 0, i32 2
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %75, label %34

34:                                               ; preds = %30
  %35 = getelementptr i8, ptr %3, i32 -56
  br label %36

36:                                               ; preds = %73, %34
  %37 = phi ptr [ %12, %34 ], [ %74, %73 ]
  %38 = phi i32 [ %32, %34 ], [ %71, %73 ]
  %39 = phi i32 [ 0, %34 ], [ %62, %73 ]
  %40 = add i32 %39, 1
  %41 = icmp ult i32 %40, %38
  br i1 %41, label %42, label %61

42:                                               ; preds = %36
  %43 = getelementptr ptr, ptr %37, i32 %39
  %44 = load ptr, ptr %43, align 4
  %45 = sub i32 %38, %39
  br label %46

46:                                               ; preds = %54, %42
  %47 = phi i32 [ %56, %54 ], [ %40, %42 ]
  %48 = phi i32 [ %55, %54 ], [ 1, %42 ]
  %49 = phi ptr [ %50, %54 ], [ %44, %42 ]
  %50 = getelementptr %struct.page, ptr %49, i32 1
  %51 = getelementptr ptr, ptr %37, i32 %47
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %50, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %46
  %55 = add i32 %48, 1
  %56 = add i32 %47, 1
  %57 = icmp eq i32 %56, %38
  br i1 %57, label %58, label %46

58:                                               ; preds = %54, %46
  %59 = phi i32 [ %45, %54 ], [ %48, %46 ]
  %60 = add i32 %59, %39
  br label %61

61:                                               ; preds = %58, %36
  %62 = phi i32 [ %60, %58 ], [ %40, %36 ]
  %63 = phi i32 [ %59, %58 ], [ 1, %36 ]
  %64 = load ptr, ptr %35, align 8
  %65 = getelementptr inbounds %struct.drm_device, ptr %64, i32 0, i32 2
  %66 = load ptr, ptr %65, align 4
  %67 = load ptr, ptr %8, align 4
  %68 = getelementptr i32, ptr %67, i32 %39
  %69 = load i32, ptr %68, align 4
  %70 = shl i32 %63, 12
  tail call void @dma_sync_single_for_device(ptr noundef %66, i32 noundef %69, i32 noundef %70, i32 noundef 1) #12
  %71 = load i32, ptr %31, align 4
  %72 = icmp ult i32 %62, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %61
  %74 = load ptr, ptr %5, align 4
  br label %36

75:                                               ; preds = %61, %30, %26, %18, %14, %7, %1
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nouveau_bo_sync_for_cpu(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ttm_buffer_object, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.ttm_buffer_object, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %75, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ttm_tt, ptr %5, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %75, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr %5, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %26

14:                                               ; preds = %11
  %15 = load i32, ptr @__drm_debug, align 4
  %16 = and i32 %15, 2
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %75, label %18

18:                                               ; preds = %14
  %19 = getelementptr i8, ptr %3, i32 -616
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.nouveau_drm, ptr %20, i32 0, i32 3
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.drm_device, ptr %22, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr i8, ptr %3, i32 -136
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %24, ptr noundef nonnull @.str.3, ptr noundef %25, ptr noundef nonnull %5) #10
  br label %75

26:                                               ; preds = %11
  %27 = getelementptr inbounds %struct.nouveau_bo, ptr %0, i32 0, i32 5
  %28 = load i8, ptr %27, align 4, !range !15
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %75

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.ttm_tt, ptr %5, i32 0, i32 2
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %75, label %34

34:                                               ; preds = %30
  %35 = getelementptr i8, ptr %3, i32 -56
  br label %36

36:                                               ; preds = %73, %34
  %37 = phi ptr [ %12, %34 ], [ %74, %73 ]
  %38 = phi i32 [ %32, %34 ], [ %71, %73 ]
  %39 = phi i32 [ 0, %34 ], [ %62, %73 ]
  %40 = add i32 %39, 1
  %41 = icmp ult i32 %40, %38
  br i1 %41, label %42, label %61

42:                                               ; preds = %36
  %43 = getelementptr ptr, ptr %37, i32 %39
  %44 = load ptr, ptr %43, align 4
  %45 = sub i32 %38, %39
  br label %46

46:                                               ; preds = %54, %42
  %47 = phi i32 [ %56, %54 ], [ %40, %42 ]
  %48 = phi i32 [ %55, %54 ], [ 1, %42 ]
  %49 = phi ptr [ %50, %54 ], [ %44, %42 ]
  %50 = getelementptr %struct.page, ptr %49, i32 1
  %51 = getelementptr ptr, ptr %37, i32 %47
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %50, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %46
  %55 = add i32 %48, 1
  %56 = add i32 %47, 1
  %57 = icmp eq i32 %56, %38
  br i1 %57, label %58, label %46

58:                                               ; preds = %54, %46
  %59 = phi i32 [ %45, %54 ], [ %48, %46 ]
  %60 = add i32 %59, %39
  br label %61

61:                                               ; preds = %58, %36
  %62 = phi i32 [ %60, %58 ], [ %40, %36 ]
  %63 = phi i32 [ %59, %58 ], [ 1, %36 ]
  %64 = load ptr, ptr %35, align 8
  %65 = getelementptr inbounds %struct.drm_device, ptr %64, i32 0, i32 2
  %66 = load ptr, ptr %65, align 4
  %67 = load ptr, ptr %8, align 4
  %68 = getelementptr i32, ptr %67, i32 %39
  %69 = load i32, ptr %68, align 4
  %70 = shl i32 %63, 12
  tail call void @dma_sync_single_for_cpu(ptr noundef %66, i32 noundef %69, i32 noundef %70, i32 noundef 2) #12
  %71 = load i32, ptr %31, align 4
  %72 = icmp ult i32 %62, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %61
  %74 = load ptr, ptr %5, align 4
  br label %36

75:                                               ; preds = %61, %30, %26, %18, %14, %7, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nouveau_bo_add_io_reserve_lru(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ttm_buffer_object, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 1424
  tail call void @mutex_lock(ptr noundef %4) #12
  %5 = getelementptr inbounds %struct.nouveau_bo, ptr %0, i32 0, i32 8
  %6 = getelementptr i8, ptr %3, i32 1444
  %7 = getelementptr inbounds %struct.nouveau_bo, ptr %0, i32 0, i32 8, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %5, align 4
  %10 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  store ptr %8, ptr %10, align 4
  store volatile ptr %9, ptr %8, align 4
  %11 = getelementptr i8, ptr %3, i32 1448
  %12 = load ptr, ptr %11, align 4
  store ptr %5, ptr %11, align 4
  store ptr %6, ptr %5, align 4
  store ptr %12, ptr %7, align 4
  store volatile ptr %5, ptr %12, align 4
  tail call void @mutex_unlock(ptr noundef %4) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nouveau_bo_del_io_reserve_lru(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ttm_buffer_object, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 1424
  tail call void @mutex_lock(ptr noundef %4) #12
  %5 = getelementptr inbounds %struct.nouveau_bo, ptr %0, i32 0, i32 8
  %6 = getelementptr inbounds %struct.nouveau_bo, ptr %0, i32 0, i32 8, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %5, align 4
  %9 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  store ptr %7, ptr %9, align 4
  store volatile ptr %8, ptr %7, align 4
  store volatile ptr %5, ptr %5, align 4
  store ptr %5, ptr %6, align 4
  tail call void @mutex_unlock(ptr noundef %4) #12
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_bo_validate(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nouveau_bo_wr16(ptr nocapture noundef readonly %0, i32 noundef %1, i16 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.nouveau_bo, ptr %0, i32 0, i32 6
  %5 = getelementptr inbounds %struct.nouveau_bo, ptr %0, i32 0, i32 6, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr i16, ptr %7, i32 %1
  %9 = and i32 %6, 128
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !16
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %8, i16 %2) #12, !srcloc !17
  br label %13

12:                                               ; preds = %3
  store i16 %2, ptr %8, align 2
  br label %13

13:                                               ; preds = %12, %11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nouveau_bo_rd32(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nouveau_bo, ptr %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.nouveau_bo, ptr %0, i32 0, i32 6, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = load ptr, ptr %3, align 4
  %7 = getelementptr i32, ptr %6, i32 %1
  %8 = and i32 %5, 128
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #12, !srcloc !18
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !19
  br label %14

12:                                               ; preds = %2
  %13 = load i32, ptr %7, align 4
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi i32 [ %11, %10 ], [ %13, %12 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nouveau_bo_wr32(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.nouveau_bo, ptr %0, i32 0, i32 6
  %5 = getelementptr inbounds %struct.nouveau_bo, ptr %0, i32 0, i32 6, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr i32, ptr %7, i32 %1
  %9 = and i32 %6, 128
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !20
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %2) #12, !srcloc !21
  br label %13

12:                                               ; preds = %3
  store i32 %2, ptr %8, align 4
  br label %13

13:                                               ; preds = %12, %11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nouveau_bo_move_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 12
  %3 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 13
  %4 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 8, i32 4
  %5 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 8, i32 4, i32 3
  br label %6

6:                                                ; preds = %35, %1
  %7 = phi ptr [ @nouveau_bo_move_init._methods, %1 ], [ %36, %35 ]
  %8 = getelementptr inbounds %struct._method_table, ptr %7, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %10, ptr %3, ptr %2
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %35, label %14

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.nouveau_channel, ptr %12, i32 0, i32 17
  %16 = getelementptr inbounds %struct._method_table, ptr %7, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = shl i32 %9, 16
  %19 = or i32 %17, %18
  %20 = tail call i32 @nvif_object_ctor(ptr noundef %15, ptr noundef nonnull @.str.11, i32 noundef %19, i32 noundef %17, ptr noundef null, i32 noundef 0, ptr noundef %4) #12
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct._method_table, ptr %7, i32 0, i32 4
  %24 = load ptr, ptr %23, align 4
  %25 = load i32, ptr %5, align 4
  %26 = tail call i32 %24(ptr noundef nonnull %12, i32 noundef %25) #12
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %22
  tail call void @nvif_object_dtor(ptr noundef %4) #12
  br label %35

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct._method_table, ptr %7, i32 0, i32 3
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 8, i32 2
  store ptr %31, ptr %32, align 4
  %33 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 8, i32 3
  store ptr %12, ptr %33, align 8
  %34 = load ptr, ptr %7, align 4
  br label %40

35:                                               ; preds = %28, %14, %6
  %36 = getelementptr %struct._method_table, ptr %7, i32 1
  %37 = getelementptr %struct._method_table, ptr %7, i32 1, i32 3
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %6

40:                                               ; preds = %35, %29
  %41 = phi ptr [ %34, %29 ], [ @.str.10, %35 ]
  %42 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 2, i32 1
  %43 = load ptr, ptr %42, align 8
  %44 = getelementptr inbounds %struct.nouveau_drm, ptr %43, i32 0, i32 3
  %45 = load ptr, ptr %44, align 8
  %46 = getelementptr inbounds %struct.drm_device, ptr %45, i32 0, i32 2
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %47, ptr noundef nonnull @.str.12, ptr noundef %48, ptr noundef %41) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nve0_bo_move_copy(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nve0_bo_move_init(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvc0_bo_move_init(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvc0_bo_move_copy(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nva3_bo_move_copy(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_bo_move_init(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv84_bo_move_exec(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvc0_bo_move_m2mf(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_bo_move_m2mf(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv04_bo_move_m2mf(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv04_bo_move_init(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_object_dtor(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nouveau_ttm_fault_reserve_notify(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.ttm_operation_ctx, align 8
  %3 = getelementptr inbounds %struct.ttm_buffer_object, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 -572
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.anon.177, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.nvkm_device_func, ptr %9, i32 0, i32 7
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 %11(ptr noundef %8, i32 noundef 1) #12
  %13 = lshr i32 %12, 12
  %14 = getelementptr inbounds %struct.ttm_buffer_object, ptr %0, i32 0, i32 6
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.ttm_resource, ptr %15, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 2
  %19 = getelementptr i8, ptr %4, i32 -547
  %20 = load i8, ptr %19, align 1
  br i1 %18, label %41, label %21

21:                                               ; preds = %1
  %22 = icmp ult i8 %20, 6
  br i1 %22, label %129, label %23

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.nouveau_bo, ptr %0, i32 0, i32 15
  %25 = load i32, ptr %24, align 8
  %26 = and i32 %25, 16320
  %27 = icmp ne i32 %26, 0
  %28 = icmp eq i32 %17, 0
  %29 = select i1 %27, i1 %28, i1 false
  br i1 %29, label %30, label %129

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.nouveau_bo, ptr %0, i32 0, i32 1
  %32 = getelementptr inbounds %struct.nouveau_bo, ptr %0, i32 0, i32 3
  %33 = getelementptr inbounds %struct.nouveau_bo, ptr %0, i32 0, i32 1, i32 1
  store ptr %32, ptr %33, align 4
  %34 = getelementptr %struct.nouveau_bo, ptr %0, i32 0, i32 3, i32 0, i32 2
  store i32 1, ptr %34, align 4
  %35 = getelementptr %struct.nouveau_bo, ptr %0, i32 0, i32 3, i32 0, i32 3
  store i32 0, ptr %35, align 4
  store i32 1, ptr %31, align 4
  %36 = getelementptr inbounds %struct.nouveau_bo, ptr %0, i32 0, i32 4
  %37 = getelementptr inbounds %struct.nouveau_bo, ptr %0, i32 0, i32 1, i32 3
  store ptr %36, ptr %37, align 4
  %38 = getelementptr inbounds %struct.nouveau_bo, ptr %0, i32 0, i32 1, i32 2
  %39 = getelementptr %struct.nouveau_bo, ptr %0, i32 0, i32 4, i32 0, i32 2
  store i32 1, ptr %39, align 4
  %40 = getelementptr %struct.nouveau_bo, ptr %0, i32 0, i32 4, i32 0, i32 3
  store i32 0, ptr %40, align 4
  store i32 1, ptr %38, align 4
  br label %112

41:                                               ; preds = %1
  %42 = icmp ugt i8 %20, 5
  br i1 %42, label %129, label %43

43:                                               ; preds = %41
  %44 = load i32, ptr %15, align 4
  %45 = getelementptr inbounds %struct.ttm_resource, ptr %15, i32 0, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = add i32 %46, %44
  %48 = icmp ult i32 %47, %13
  br i1 %48, label %129, label %49

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.nouveau_bo, ptr %0, i32 0, i32 1
  %51 = load i32, ptr %50, align 8
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %57, %49
  %54 = getelementptr inbounds %struct.nouveau_bo, ptr %0, i32 0, i32 1, i32 2
  %55 = load i32, ptr %54, align 8
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %70, label %63

57:                                               ; preds = %57, %49
  %58 = phi i32 [ %61, %57 ], [ 0, %49 ]
  %59 = getelementptr %struct.nouveau_bo, ptr %0, i32 0, i32 3, i32 %58
  store i32 0, ptr %59, align 4
  %60 = getelementptr %struct.nouveau_bo, ptr %0, i32 0, i32 3, i32 %58, i32 1
  store i32 %13, ptr %60, align 4
  %61 = add nuw i32 %58, 1
  %62 = icmp eq i32 %61, %51
  br i1 %62, label %53, label %57

63:                                               ; preds = %63, %53
  %64 = phi i32 [ %67, %63 ], [ 0, %53 ]
  %65 = getelementptr %struct.nouveau_bo, ptr %0, i32 0, i32 4, i32 %64
  store i32 0, ptr %65, align 4
  %66 = getelementptr %struct.nouveau_bo, ptr %0, i32 0, i32 4, i32 %64, i32 1
  store i32 %13, ptr %66, align 4
  %67 = add nuw i32 %64, 1
  %68 = load i32, ptr %54, align 8
  %69 = icmp ult i32 %67, %68
  br i1 %69, label %63, label %70

70:                                               ; preds = %63, %53
  %71 = getelementptr %struct.nouveau_bo, ptr %0, i32 0, i32 3
  %72 = getelementptr inbounds %struct.nouveau_bo, ptr %0, i32 0, i32 1, i32 1
  store ptr %71, ptr %72, align 4
  %73 = getelementptr inbounds %struct.nouveau_bo, ptr %0, i32 0, i32 3, i32 0, i32 2
  store i32 2, ptr %73, align 4
  %74 = getelementptr %struct.nouveau_bo, ptr %0, i32 0, i32 3, i32 0, i32 3
  store i32 0, ptr %74, align 4
  store i32 1, ptr %50, align 4
  %75 = getelementptr inbounds %struct.nouveau_bo, ptr %0, i32 0, i32 4
  %76 = getelementptr inbounds %struct.nouveau_bo, ptr %0, i32 0, i32 1, i32 3
  store ptr %75, ptr %76, align 4
  %77 = getelementptr inbounds %struct.nouveau_bo, ptr %0, i32 0, i32 4, i32 0, i32 2
  store i32 2, ptr %77, align 4
  %78 = getelementptr %struct.nouveau_bo, ptr %0, i32 0, i32 4, i32 0, i32 3
  store i32 0, ptr %78, align 4
  store i32 1, ptr %54, align 4
  %79 = load ptr, ptr %3, align 8
  %80 = getelementptr i8, ptr %79, i32 -544
  %81 = load i64, ptr %80, align 8
  %82 = getelementptr i8, ptr %79, i32 -547
  %83 = load i8, ptr %82, align 1
  %84 = icmp eq i8 %83, 2
  br i1 %84, label %85, label %112

85:                                               ; preds = %70
  %86 = getelementptr inbounds %struct.nouveau_bo, ptr %0, i32 0, i32 16
  %87 = load i32, ptr %86, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %112, label %89

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 5
  %91 = load i32, ptr %90, align 8
  %92 = zext i32 %91 to i64
  %93 = lshr i64 %81, 2
  %94 = icmp ugt i64 %93, %92
  br i1 %94, label %95, label %112

95:                                               ; preds = %89
  %96 = getelementptr inbounds %struct.nouveau_bo, ptr %0, i32 0, i32 15
  %97 = load i32, ptr %96, align 8
  %98 = and i32 %97, 917504
  %99 = icmp eq i32 %98, 0
  %100 = lshr i64 %81, 13
  %101 = trunc i64 %100 to i32
  %102 = select i1 %99, i32 0, i32 %101
  %103 = select i1 %99, i32 %101, i32 -1
  store i32 %102, ptr %71, align 4
  %104 = getelementptr %struct.nouveau_bo, ptr %0, i32 0, i32 3, i32 0, i32 1
  store i32 %103, ptr %104, align 4
  br label %105

105:                                              ; preds = %105, %95
  %106 = phi i32 [ %109, %105 ], [ 0, %95 ]
  %107 = getelementptr %struct.nouveau_bo, ptr %0, i32 0, i32 4, i32 %106
  store i32 %102, ptr %107, align 4
  %108 = getelementptr %struct.nouveau_bo, ptr %0, i32 0, i32 4, i32 %106, i32 1
  store i32 %103, ptr %108, align 4
  %109 = add nuw i32 %106, 1
  %110 = load i32, ptr %54, align 8
  %111 = icmp ult i32 %109, %110
  br i1 %111, label %105, label %112

112:                                              ; preds = %105, %89, %85, %70, %30
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #12
  %113 = getelementptr inbounds %struct.nouveau_bo, ptr %0, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %114 = call i32 @ttm_bo_validate(ptr noundef %0, ptr noundef %113, ptr noundef nonnull %2) #12
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %124

116:                                              ; preds = %112
  call void @nouveau_bo_sync_for_device(ptr noundef %0) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #12
  %117 = load ptr, ptr %3, align 8
  %118 = getelementptr inbounds %struct.ttm_device, ptr %117, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %118) #12
  %119 = load ptr, ptr %14, align 4
  call void @ttm_bo_move_to_lru_tail(ptr noundef %0, ptr noundef %119, ptr noundef null) #12
  %120 = load ptr, ptr %3, align 8
  %121 = getelementptr inbounds %struct.ttm_device, ptr %120, i32 0, i32 6
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !11
  %122 = load i16, ptr %121, align 4
  %123 = add i16 %122, 1
  store i16 %123, ptr %121, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !12
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !13
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !14
  br label %129

124:                                              ; preds = %112
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #12
  %125 = icmp eq i32 %114, -16
  %126 = icmp eq i32 %114, -512
  %127 = or i1 %125, %126
  %128 = select i1 %127, i32 256, i32 2
  br label %129

129:                                              ; preds = %124, %116, %43, %41, %23, %21
  %130 = phi i32 [ 0, %116 ], [ 0, %23 ], [ 0, %21 ], [ 0, %43 ], [ 0, %41 ], [ %128, %124 ]
  ret i32 %130
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nouveau_bo_fence(ptr nocapture noundef readonly %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 9
  %5 = load ptr, ptr %4, align 8
  br i1 %2, label %6, label %7

6:                                                ; preds = %3
  tail call void @dma_resv_add_excl_fence(ptr noundef %5, ptr noundef %1) #12
  br label %10

7:                                                ; preds = %3
  %8 = icmp eq ptr %1, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %7
  tail call void @dma_resv_add_shared_fence(ptr noundef %5, ptr noundef nonnull %1) #12
  br label %10

10:                                               ; preds = %9, %7, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_resv_add_excl_fence(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_resv_add_shared_fence(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @nouveau_ttm_tt_create(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call ptr @nouveau_sgdma_create_ttm(ptr noundef %0, i32 noundef %1) #12
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nouveau_ttm_tt_populate(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.ttm_tt, ptr %1, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %23, label %7

7:                                                ; preds = %3
  %8 = and i32 %5, 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %20, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.ttm_tt, ptr %1, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.ttm_tt, ptr %1, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.ttm_tt, ptr %1, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = tail call i32 @drm_prime_sg_to_dma_addr_array(ptr noundef nonnull %12, ptr noundef %16, i32 noundef %18) #12
  br label %23

20:                                               ; preds = %10, %7
  %21 = getelementptr i8, ptr %0, i32 116
  %22 = tail call i32 @ttm_pool_alloc(ptr noundef %21, ptr noundef %1, ptr noundef %2) #12
  br label %23

23:                                               ; preds = %20, %14, %3
  %24 = phi i32 [ 0, %14 ], [ %22, %20 ], [ 0, %3 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nouveau_ttm_tt_unpopulate(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.ttm_tt, ptr %1, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  tail call void @nouveau_sgdma_unbind(ptr noundef %0, ptr noundef %1) #12
  %8 = getelementptr i8, ptr %0, i32 116
  tail call void @ttm_pool_free(ptr noundef %8, ptr noundef %1) #12
  br label %9

9:                                                ; preds = %7, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nouveau_ttm_tt_destroy(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @nouveau_sgdma_destroy(ptr noundef %0, ptr noundef %1) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ttm_bo_eviction_valuable(ptr noundef, ptr noundef) #3

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @nouveau_bo_evict_flags(ptr noundef %0, ptr nocapture noundef writeonly %1) #6 {
  %3 = getelementptr inbounds %struct.ttm_buffer_object, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ttm_resource, ptr %4, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 2
  %8 = getelementptr inbounds %struct.nouveau_bo, ptr %0, i32 0, i32 1
  %9 = getelementptr inbounds %struct.nouveau_bo, ptr %0, i32 0, i32 3
  %10 = getelementptr inbounds %struct.nouveau_bo, ptr %0, i32 0, i32 1, i32 1
  store ptr %9, ptr %10, align 4
  %11 = getelementptr %struct.nouveau_bo, ptr %0, i32 0, i32 3, i32 0, i32 2
  br i1 %7, label %12, label %21

12:                                               ; preds = %2
  store i32 1, ptr %11, align 4
  %13 = getelementptr %struct.nouveau_bo, ptr %0, i32 0, i32 3, i32 0, i32 3
  store i32 0, ptr %13, align 4
  store i32 1, ptr %8, align 4
  %14 = getelementptr inbounds %struct.nouveau_bo, ptr %0, i32 0, i32 4
  %15 = getelementptr inbounds %struct.nouveau_bo, ptr %0, i32 0, i32 1, i32 3
  store ptr %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.nouveau_bo, ptr %0, i32 0, i32 1, i32 2
  %17 = getelementptr %struct.nouveau_bo, ptr %0, i32 0, i32 4, i32 0, i32 2
  store i32 1, ptr %17, align 4
  %18 = getelementptr %struct.nouveau_bo, ptr %0, i32 0, i32 4, i32 0, i32 3
  store i32 0, ptr %18, align 4
  %19 = getelementptr %struct.nouveau_bo, ptr %0, i32 0, i32 4, i32 1, i32 2
  store i32 0, ptr %19, align 4
  store i32 2, ptr %16, align 4
  %20 = getelementptr %struct.nouveau_bo, ptr %0, i32 0, i32 4, i32 1, i32 3
  br label %28

21:                                               ; preds = %2
  store i32 0, ptr %11, align 4
  store i32 1, ptr %8, align 4
  %22 = getelementptr %struct.nouveau_bo, ptr %0, i32 0, i32 3, i32 0, i32 3
  store i32 0, ptr %22, align 4
  %23 = getelementptr inbounds %struct.nouveau_bo, ptr %0, i32 0, i32 4
  %24 = getelementptr inbounds %struct.nouveau_bo, ptr %0, i32 0, i32 1, i32 3
  store ptr %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.nouveau_bo, ptr %0, i32 0, i32 1, i32 2
  %26 = getelementptr %struct.nouveau_bo, ptr %0, i32 0, i32 4, i32 0, i32 2
  store i32 0, ptr %26, align 4
  store i32 1, ptr %25, align 4
  %27 = getelementptr %struct.nouveau_bo, ptr %0, i32 0, i32 4, i32 0, i32 3
  br label %28

28:                                               ; preds = %21, %12
  %29 = phi ptr [ %27, %21 ], [ %20, %12 ]
  store i32 0, ptr %29, align 4
  %30 = getelementptr inbounds %struct.nouveau_bo, ptr %0, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %1, ptr noundef align 8 dereferenceable(16) %30, i32 16, i1 false)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nouveau_bo_move(ptr noundef %0, i1 noundef zeroext %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef writeonly %4) #0 {
  %6 = alloca ptr, align 4
  %7 = getelementptr inbounds %struct.ttm_buffer_object, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.ttm_buffer_object, ptr %0, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ttm_resource, ptr %3, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %21

14:                                               ; preds = %5
  %15 = icmp eq ptr %3, null
  br i1 %15, label %348, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.ttm_buffer_object, ptr %0, i32 0, i32 7
  %18 = load ptr, ptr %17, align 8
  %19 = tail call i32 @nouveau_sgdma_bind(ptr noundef %8, ptr noundef %18, ptr noundef nonnull %3) #12
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %348

21:                                               ; preds = %16, %5
  tail call fastcc void @nouveau_bo_move_ntfy(ptr noundef %0, ptr noundef %3)
  %22 = load i8, ptr %2, align 8, !range !15
  %23 = icmp ne i8 %22, 0
  %24 = getelementptr inbounds %struct.ttm_operation_ctx, ptr %2, i32 0, i32 1
  %25 = load i8, ptr %24, align 1, !range !15
  %26 = icmp ne i8 %25, 0
  %27 = tail call i32 @ttm_bo_wait(ptr noundef %0, i1 noundef zeroext %23, i1 noundef zeroext %26) #12
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %345

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.ttm_buffer_object, ptr %0, i32 0, i32 13
  %31 = load i32, ptr %30, align 8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %29
  %34 = getelementptr i8, ptr %8, i32 -616
  %35 = load ptr, ptr %34, align 8
  %36 = getelementptr inbounds %struct.nouveau_drm, ptr %35, i32 0, i32 3
  %37 = load ptr, ptr %36, align 8
  %38 = getelementptr inbounds %struct.drm_device, ptr %37, i32 0, i32 2
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr i8, ptr %8, i32 -136
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %39, ptr noundef nonnull @.str.16, ptr noundef %40, ptr noundef %0) #10
  br label %41

41:                                               ; preds = %33, %29
  %42 = getelementptr i8, ptr %8, i32 -547
  %43 = load i8, ptr %42, align 1
  %44 = icmp ult i8 %43, 6
  br i1 %44, label %45, label %165

45:                                               ; preds = %41
  %46 = load ptr, ptr %7, align 8
  %47 = getelementptr i8, ptr %46, i32 -56
  %48 = load ptr, ptr %47, align 8
  %49 = load i32, ptr %3, align 4
  %50 = shl i32 %49, 12
  %51 = load i32, ptr %11, align 4
  %52 = icmp eq i32 %51, 2
  br i1 %52, label %53, label %165

53:                                               ; preds = %45
  %54 = getelementptr i8, ptr %46, i32 -547
  %55 = load i8, ptr %54, align 1
  %56 = icmp ugt i8 %55, 1
  br i1 %56, label %57, label %165

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 5
  %59 = load i32, ptr %58, align 8
  %60 = getelementptr inbounds %struct.nouveau_bo, ptr %0, i32 0, i32 16
  %61 = load i32, ptr %60, align 4
  %62 = getelementptr inbounds %struct.nouveau_bo, ptr %0, i32 0, i32 15
  %63 = load i32, ptr %62, align 8
  %64 = lshr i32 %63, 17
  %65 = and i32 %64, 7
  %66 = getelementptr inbounds %struct.drm_device, ptr %48, i32 0, i32 5
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr inbounds %struct.nouveau_drm, ptr %67, i32 0, i32 2, i32 3, i32 0, i32 5
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.anon.178, ptr %69, i32 0, i32 1
  %71 = load ptr, ptr %70, align 8
  %72 = getelementptr inbounds %struct.nvkm_device, ptr %71, i32 0, i32 33
  %73 = load ptr, ptr %72, align 8
  %74 = getelementptr inbounds %struct.nvkm_fb, ptr %73, i32 0, i32 5
  %75 = getelementptr inbounds %struct.nvkm_fb, ptr %73, i32 0, i32 5, i32 1
  %76 = load i32, ptr %75, align 4
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %165

78:                                               ; preds = %57
  %79 = icmp eq i32 %61, 0
  br label %80

80:                                               ; preds = %139, %78
  %81 = phi ptr [ %67, %78 ], [ %140, %139 ]
  %82 = phi i32 [ 0, %78 ], [ %136, %139 ]
  %83 = phi ptr [ null, %78 ], [ %135, %139 ]
  %84 = getelementptr inbounds %struct.nouveau_drm, ptr %81, i32 0, i32 17
  %85 = getelementptr [15 x %struct.nouveau_drm_tile], ptr %84, i32 0, i32 %82
  %86 = getelementptr inbounds %struct.nouveau_drm, ptr %81, i32 0, i32 17, i32 1
  tail call void @_raw_spin_lock(ptr noundef %86) #12
  %87 = getelementptr [15 x %struct.nouveau_drm_tile], ptr %84, i32 0, i32 %82, i32 1
  %88 = load i8, ptr %87, align 4, !range !15
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %80
  %91 = load ptr, ptr %85, align 4
  %92 = icmp eq ptr %91, null
  br i1 %92, label %95, label %93

93:                                               ; preds = %90
  %94 = tail call zeroext i1 @nouveau_fence_done(ptr noundef nonnull %91) #12
  br i1 %94, label %95, label %96

95:                                               ; preds = %93, %90
  store i8 1, ptr %87, align 4
  br label %96

96:                                               ; preds = %95, %93, %80
  %97 = phi ptr [ %85, %95 ], [ null, %93 ], [ null, %80 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !11
  %98 = load i16, ptr %86, align 4
  %99 = add i16 %98, 1
  store i16 %99, ptr %86, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !14
  %100 = icmp ne ptr %83, null
  %101 = select i1 %79, i1 true, i1 %100
  br i1 %101, label %102, label %134

102:                                              ; preds = %96
  %103 = icmp eq ptr %97, null
  br i1 %103, label %134, label %104

104:                                              ; preds = %102
  %105 = getelementptr [16 x %struct.nvkm_fb_tile], ptr %74, i32 0, i32 %82, i32 3
  %106 = load i32, ptr %105, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %128, label %108

108:                                              ; preds = %104
  %109 = load ptr, ptr %66, align 4
  %110 = getelementptr inbounds %struct.nouveau_drm, ptr %109, i32 0, i32 17
  %111 = ptrtoint ptr %97 to i32
  %112 = ptrtoint ptr %110 to i32
  %113 = sub i32 %111, %112
  %114 = ashr exact i32 %113, 3
  %115 = getelementptr inbounds %struct.nouveau_drm, ptr %109, i32 0, i32 2, i32 3, i32 0, i32 5
  %116 = load ptr, ptr %115, align 4
  %117 = getelementptr inbounds %struct.anon.179, ptr %116, i32 0, i32 1
  %118 = load ptr, ptr %117, align 8
  %119 = getelementptr inbounds %struct.nvkm_device, ptr %118, i32 0, i32 33
  %120 = load ptr, ptr %119, align 8
  %121 = getelementptr inbounds %struct.nvkm_fb, ptr %120, i32 0, i32 5
  %122 = getelementptr [16 x %struct.nvkm_fb_tile], ptr %121, i32 0, i32 %114
  tail call void @nouveau_fence_unref(ptr noundef nonnull %97) #12
  %123 = getelementptr [16 x %struct.nvkm_fb_tile], ptr %121, i32 0, i32 %114, i32 3
  %124 = load i32, ptr %123, align 4
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %108
  tail call void @nvkm_fb_tile_fini(ptr noundef %120, i32 noundef %114, ptr noundef %122) #12
  br label %127

127:                                              ; preds = %126, %108
  tail call void @nvkm_fb_tile_prog(ptr noundef %120, i32 noundef %114, ptr noundef %122) #12
  br label %128

128:                                              ; preds = %127, %104
  %129 = load ptr, ptr %66, align 4
  %130 = getelementptr inbounds %struct.nouveau_drm, ptr %129, i32 0, i32 17, i32 1
  tail call void @_raw_spin_lock(ptr noundef %130) #12
  store ptr null, ptr %97, align 4
  %131 = getelementptr inbounds %struct.nouveau_drm_tile, ptr %97, i32 0, i32 1
  store i8 0, ptr %131, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !11
  %132 = load i16, ptr %130, align 4
  %133 = add i16 %132, 1
  store i16 %133, ptr %130, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !14
  br label %134

134:                                              ; preds = %128, %102, %96
  %135 = phi ptr [ %97, %96 ], [ %83, %102 ], [ %83, %128 ]
  %136 = add nuw nsw i32 %82, 1
  %137 = load i32, ptr %75, align 4
  %138 = icmp slt i32 %136, %137
  br i1 %138, label %139, label %141

139:                                              ; preds = %134
  %140 = load ptr, ptr %66, align 4
  br label %80

141:                                              ; preds = %134
  %142 = icmp eq ptr %135, null
  br i1 %142, label %165, label %143

143:                                              ; preds = %141
  %144 = load ptr, ptr %66, align 4
  %145 = getelementptr inbounds %struct.nouveau_drm, ptr %144, i32 0, i32 17
  %146 = ptrtoint ptr %135 to i32
  %147 = ptrtoint ptr %145 to i32
  %148 = sub i32 %146, %147
  %149 = ashr exact i32 %148, 3
  %150 = getelementptr inbounds %struct.nouveau_drm, ptr %144, i32 0, i32 2, i32 3, i32 0, i32 5
  %151 = load ptr, ptr %150, align 4
  %152 = getelementptr inbounds %struct.anon.179, ptr %151, i32 0, i32 1
  %153 = load ptr, ptr %152, align 8
  %154 = getelementptr inbounds %struct.nvkm_device, ptr %153, i32 0, i32 33
  %155 = load ptr, ptr %154, align 8
  %156 = getelementptr inbounds %struct.nvkm_fb, ptr %155, i32 0, i32 5
  %157 = getelementptr [16 x %struct.nvkm_fb_tile], ptr %156, i32 0, i32 %149
  tail call void @nouveau_fence_unref(ptr noundef nonnull %135) #12
  %158 = getelementptr [16 x %struct.nvkm_fb_tile], ptr %156, i32 0, i32 %149, i32 3
  %159 = load i32, ptr %158, align 4
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %162, label %161

161:                                              ; preds = %143
  tail call void @nvkm_fb_tile_fini(ptr noundef %155, i32 noundef %149, ptr noundef %157) #12
  br label %162

162:                                              ; preds = %161, %143
  br i1 %79, label %164, label %163

163:                                              ; preds = %162
  tail call void @nvkm_fb_tile_init(ptr noundef %155, i32 noundef %149, i32 noundef %50, i32 noundef %59, i32 noundef %61, i32 noundef %65, ptr noundef %157) #12
  br label %164

164:                                              ; preds = %163, %162
  tail call void @nvkm_fb_tile_prog(ptr noundef %155, i32 noundef %149, ptr noundef %157) #12
  br label %165

165:                                              ; preds = %164, %141, %57, %53, %45, %41
  %166 = phi ptr [ null, %41 ], [ null, %53 ], [ null, %45 ], [ %135, %164 ], [ null, %141 ], [ null, %57 ]
  %167 = getelementptr inbounds %struct.ttm_resource, ptr %10, i32 0, i32 2
  %168 = load i32, ptr %167, align 4
  switch i32 %168, label %197 [
    i32 0, label %169
    i32 1, label %186
  ]

169:                                              ; preds = %165
  %170 = getelementptr inbounds %struct.ttm_buffer_object, ptr %0, i32 0, i32 7
  %171 = load ptr, ptr %170, align 8
  %172 = icmp eq ptr %171, null
  br i1 %172, label %173, label %178

173:                                              ; preds = %169
  tail call void @ttm_resource_free(ptr noundef %0, ptr noundef %9) #12
  %174 = load ptr, ptr %9, align 4
  %175 = icmp eq ptr %174, null
  br i1 %175, label %177, label %176, !prof !9

176:                                              ; preds = %173
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 192, i32 noundef 9, ptr noundef null) #12
  br label %177

177:                                              ; preds = %176, %173
  store ptr %3, ptr %9, align 4
  br label %277

178:                                              ; preds = %169
  %179 = load i32, ptr %11, align 4
  %180 = icmp eq i32 %179, 1
  br i1 %180, label %181, label %205

181:                                              ; preds = %178
  tail call void @ttm_resource_free(ptr noundef %0, ptr noundef %9) #12
  %182 = load ptr, ptr %9, align 4
  %183 = icmp eq ptr %182, null
  br i1 %183, label %185, label %184, !prof !9

184:                                              ; preds = %181
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 192, i32 noundef 9, ptr noundef null) #12
  br label %185

185:                                              ; preds = %184, %181
  store ptr %3, ptr %9, align 4
  br label %277

186:                                              ; preds = %165
  %187 = load i32, ptr %11, align 4
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %201

189:                                              ; preds = %186
  %190 = load ptr, ptr %7, align 8
  %191 = getelementptr inbounds %struct.ttm_buffer_object, ptr %0, i32 0, i32 7
  %192 = load ptr, ptr %191, align 8
  tail call void @nouveau_sgdma_unbind(ptr noundef %190, ptr noundef %192) #12
  tail call void @ttm_resource_free(ptr noundef %0, ptr noundef %9) #12
  %193 = load ptr, ptr %9, align 4
  %194 = icmp eq ptr %193, null
  br i1 %194, label %196, label %195, !prof !9

195:                                              ; preds = %189
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 192, i32 noundef 9, ptr noundef null) #12
  br label %196

196:                                              ; preds = %195, %189
  store ptr %3, ptr %9, align 4
  br label %277

197:                                              ; preds = %165
  %198 = getelementptr i8, ptr %8, i32 1348
  %199 = load ptr, ptr %198, align 4
  %200 = icmp eq ptr %199, null
  br i1 %200, label %275, label %211

201:                                              ; preds = %186
  %202 = getelementptr i8, ptr %8, i32 1348
  %203 = load ptr, ptr %202, align 4
  %204 = icmp eq ptr %203, null
  br i1 %204, label %275, label %220

205:                                              ; preds = %178
  %206 = getelementptr i8, ptr %8, i32 1348
  %207 = load ptr, ptr %206, align 4
  %208 = icmp eq ptr %207, null
  br i1 %208, label %275, label %209

209:                                              ; preds = %205
  %210 = icmp eq i32 %179, 2
  br i1 %210, label %216, label %220

211:                                              ; preds = %197
  %212 = icmp eq i32 %168, 2
  br i1 %212, label %213, label %220

213:                                              ; preds = %211
  %214 = load i32, ptr %11, align 4
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %216, label %220

216:                                              ; preds = %213, %209
  store i32 0, ptr %4, align 4
  %217 = getelementptr inbounds %struct.ttm_place, ptr %4, i32 0, i32 1
  store i32 0, ptr %217, align 4
  %218 = getelementptr inbounds %struct.ttm_place, ptr %4, i32 0, i32 2
  store i32 1, ptr %218, align 4
  %219 = getelementptr inbounds %struct.ttm_place, ptr %4, i32 0, i32 3
  store i32 0, ptr %219, align 4
  br label %348

220:                                              ; preds = %213, %211, %209, %201
  %221 = load ptr, ptr %7, align 8
  %222 = getelementptr i8, ptr %221, i32 1352
  %223 = load ptr, ptr %222, align 8
  %224 = getelementptr inbounds %struct.nouveau_channel, ptr %223, i32 0, i32 17, i32 1
  %225 = load ptr, ptr %224, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #12
  store ptr null, ptr %6, align 4, !annotation !22
  %226 = getelementptr i8, ptr %221, i32 -547
  %227 = load i8, ptr %226, align 1
  %228 = icmp ugt i8 %227, 5
  br i1 %228, label %229, label %255

229:                                              ; preds = %220
  %230 = load ptr, ptr %9, align 4
  %231 = getelementptr i8, ptr %221, i32 -320
  %232 = getelementptr inbounds %struct.nouveau_mem, ptr %230, i32 0, i32 4, i32 2
  %233 = load i8, ptr %232, align 1
  %234 = getelementptr inbounds %struct.nouveau_mem, ptr %230, i32 0, i32 4, i32 4
  %235 = load i64, ptr %234, align 8
  %236 = getelementptr inbounds %struct.nouveau_mem, ptr %230, i32 0, i32 5
  %237 = tail call i32 @nvif_vmm_get(ptr noundef %231, i32 noundef 2, i1 noundef zeroext false, i8 noundef zeroext %233, i8 noundef zeroext 0, i64 noundef %235, ptr noundef %236) #12
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %240, label %239

239:                                              ; preds = %229
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  br label %275

240:                                              ; preds = %229
  %241 = getelementptr inbounds %struct.nouveau_mem, ptr %3, i32 0, i32 4, i32 2
  %242 = load i8, ptr %241, align 1
  %243 = getelementptr inbounds %struct.nouveau_mem, ptr %3, i32 0, i32 4, i32 4
  %244 = load i64, ptr %243, align 8
  %245 = getelementptr %struct.nouveau_mem, ptr %230, i32 0, i32 5, i32 1
  %246 = tail call i32 @nvif_vmm_get(ptr noundef %231, i32 noundef 2, i1 noundef zeroext false, i8 noundef zeroext %242, i8 noundef zeroext 0, i64 noundef %244, ptr noundef %245) #12
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %248, label %254

248:                                              ; preds = %240
  %249 = tail call i32 @nouveau_mem_map(ptr noundef %230, ptr noundef %231, ptr noundef %236) #12
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %251, label %254

251:                                              ; preds = %248
  %252 = tail call i32 @nouveau_mem_map(ptr noundef %3, ptr noundef %231, ptr noundef %245) #12
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %255, label %254

254:                                              ; preds = %251, %248, %240
  tail call void @nvif_vmm_put(ptr noundef %231, ptr noundef %245) #12
  tail call void @nvif_vmm_put(ptr noundef %231, ptr noundef %236) #12
  br label %255

255:                                              ; preds = %254, %251, %220
  %256 = getelementptr inbounds %struct.nouveau_cli, ptr %225, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %256) #12
  %257 = load i8, ptr %2, align 8, !range !15
  %258 = icmp ne i8 %257, 0
  %259 = tail call i32 @nouveau_fence_sync(ptr noundef %0, ptr noundef %223, i1 noundef zeroext true, i1 noundef zeroext %258) #12
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %261, label %270

261:                                              ; preds = %255
  %262 = getelementptr i8, ptr %221, i32 1348
  %263 = load ptr, ptr %262, align 4
  %264 = load ptr, ptr %9, align 4
  %265 = tail call i32 %263(ptr noundef %223, ptr noundef %0, ptr noundef %264, ptr noundef %3) #12
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %267, label %270

267:                                              ; preds = %261
  %268 = call i32 @nouveau_fence_new(ptr noundef %223, i1 noundef zeroext false, ptr noundef nonnull %6) #12
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %271, label %270

270:                                              ; preds = %267, %261, %255
  call void @mutex_unlock(ptr noundef %256) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  br label %275

271:                                              ; preds = %267
  %272 = load ptr, ptr %6, align 4
  %273 = call i32 @ttm_bo_move_accel_cleanup(ptr noundef %0, ptr noundef %272, i1 noundef zeroext %1, i1 noundef zeroext false, ptr noundef %3) #12
  call void @nouveau_fence_unref(ptr noundef nonnull %6) #12
  call void @mutex_unlock(ptr noundef %256) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %277, label %275

275:                                              ; preds = %271, %270, %239, %205, %201, %197
  %276 = call i32 @ttm_bo_move_memcpy(ptr noundef %0, ptr noundef %2, ptr noundef %3) #12
  br label %277

277:                                              ; preds = %275, %271, %196, %185, %177
  %278 = phi i32 [ 0, %185 ], [ 0, %196 ], [ %276, %275 ], [ 0, %271 ], [ 0, %177 ]
  %279 = load i8, ptr %42, align 1
  %280 = icmp ult i8 %279, 6
  %281 = icmp eq i32 %278, 0
  br i1 %280, label %282, label %344

282:                                              ; preds = %277
  br i1 %281, label %312, label %283

283:                                              ; preds = %282
  %284 = load ptr, ptr %7, align 8
  %285 = getelementptr i8, ptr %284, i32 -56
  %286 = load ptr, ptr %285, align 8
  %287 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 9
  %288 = load ptr, ptr %287, align 8
  %289 = getelementptr inbounds %struct.dma_resv, ptr %288, i32 0, i32 2
  %290 = load volatile ptr, ptr %289, align 4
  %291 = icmp eq ptr %166, null
  br i1 %291, label %345, label %292

292:                                              ; preds = %283
  %293 = getelementptr inbounds %struct.drm_device, ptr %286, i32 0, i32 5
  %294 = load ptr, ptr %293, align 4
  %295 = getelementptr inbounds %struct.nouveau_drm, ptr %294, i32 0, i32 17, i32 1
  call void @_raw_spin_lock(ptr noundef %295) #12
  %296 = icmp eq ptr %290, null
  br i1 %296, label %308, label %297

297:                                              ; preds = %292
  %298 = getelementptr inbounds %struct.dma_fence, ptr %290, i32 0, i32 6
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %298) #12, !srcloc !23
  %299 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %298, ptr %298, i32 1, ptr elementtype(i32) %298) #12, !srcloc !24
  %300 = extractvalue { i32, i32, i32 } %299, 0
  %301 = icmp eq i32 %300, 0
  br i1 %301, label %306, label %302, !prof !8

302:                                              ; preds = %297
  %303 = add i32 %300, 1
  %304 = or i32 %303, %300
  %305 = icmp sgt i32 %304, -1
  br i1 %305, label %308, label %306, !prof !9

306:                                              ; preds = %302, %297
  %307 = phi i32 [ 2, %297 ], [ 1, %302 ]
  call void @refcount_warn_saturate(ptr noundef %298, i32 noundef %307) #12
  br label %308

308:                                              ; preds = %306, %302, %292
  store ptr %290, ptr %166, align 4
  %309 = getelementptr inbounds %struct.nouveau_drm_tile, ptr %166, i32 0, i32 1
  store i8 0, ptr %309, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !11
  %310 = load i16, ptr %295, align 4
  %311 = add i16 %310, 1
  store i16 %311, ptr %295, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !12
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !13
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !14
  br label %345

312:                                              ; preds = %282
  %313 = getelementptr inbounds %struct.nouveau_bo, ptr %0, i32 0, i32 17
  %314 = load ptr, ptr %7, align 8
  %315 = getelementptr i8, ptr %314, i32 -56
  %316 = load ptr, ptr %315, align 8
  %317 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 9
  %318 = load ptr, ptr %317, align 8
  %319 = getelementptr inbounds %struct.dma_resv, ptr %318, i32 0, i32 2
  %320 = load volatile ptr, ptr %319, align 4
  %321 = load ptr, ptr %313, align 4
  %322 = icmp eq ptr %321, null
  br i1 %322, label %343, label %323

323:                                              ; preds = %312
  %324 = getelementptr inbounds %struct.drm_device, ptr %316, i32 0, i32 5
  %325 = load ptr, ptr %324, align 4
  %326 = getelementptr inbounds %struct.nouveau_drm, ptr %325, i32 0, i32 17, i32 1
  call void @_raw_spin_lock(ptr noundef %326) #12
  %327 = icmp eq ptr %320, null
  br i1 %327, label %339, label %328

328:                                              ; preds = %323
  %329 = getelementptr inbounds %struct.dma_fence, ptr %320, i32 0, i32 6
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %329) #12, !srcloc !23
  %330 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %329, ptr %329, i32 1, ptr elementtype(i32) %329) #12, !srcloc !24
  %331 = extractvalue { i32, i32, i32 } %330, 0
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %337, label %333, !prof !8

333:                                              ; preds = %328
  %334 = add i32 %331, 1
  %335 = or i32 %334, %331
  %336 = icmp sgt i32 %335, -1
  br i1 %336, label %339, label %337, !prof !9

337:                                              ; preds = %333, %328
  %338 = phi i32 [ 2, %328 ], [ 1, %333 ]
  call void @refcount_warn_saturate(ptr noundef %329, i32 noundef %338) #12
  br label %339

339:                                              ; preds = %337, %333, %323
  store ptr %320, ptr %321, align 4
  %340 = getelementptr inbounds %struct.nouveau_drm_tile, ptr %321, i32 0, i32 1
  store i8 0, ptr %340, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !11
  %341 = load i16, ptr %326, align 4
  %342 = add i16 %341, 1
  store i16 %342, ptr %326, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !12
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !13
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !14
  br label %343

343:                                              ; preds = %339, %312
  store ptr %166, ptr %313, align 4
  br label %348

344:                                              ; preds = %277
  br i1 %281, label %348, label %345

345:                                              ; preds = %344, %308, %283, %21
  %346 = phi i32 [ %278, %344 ], [ %278, %308 ], [ %278, %283 ], [ %27, %21 ]
  %347 = load ptr, ptr %9, align 4
  call fastcc void @nouveau_bo_move_ntfy(ptr noundef %0, ptr noundef %347)
  br label %348

348:                                              ; preds = %345, %344, %343, %216, %16, %14
  %349 = phi i32 [ -72, %216 ], [ %19, %16 ], [ %346, %345 ], [ 0, %344 ], [ 0, %343 ], [ -22, %14 ]
  ret i32 %349
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nouveau_bo_delete_mem_notify(ptr noundef %0) #0 {
  tail call fastcc void @nouveau_bo_move_ntfy(ptr noundef %0, ptr noundef null)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nouveau_ttm_io_mem_reserve(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %union.anon.181, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = getelementptr i8, ptr %0, i32 -572
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.anon.180, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr i8, ptr %0, i32 1424
  tail call void @mutex_lock(ptr noundef %10) #12
  %11 = getelementptr inbounds %struct.ttm_resource, ptr %1, i32 0, i32 2
  %12 = getelementptr i8, ptr %0, i32 -168
  %13 = getelementptr inbounds %struct.nouveau_mem, ptr %1, i32 0, i32 2
  %14 = getelementptr inbounds %struct.ttm_resource, ptr %1, i32 0, i32 4, i32 1
  %15 = getelementptr inbounds %struct.ttm_resource, ptr %1, i32 0, i32 4, i32 2
  %16 = getelementptr i8, ptr %0, i32 -547
  %17 = getelementptr i8, ptr %0, i32 -336
  %18 = getelementptr i8, ptr %0, i32 1404
  %19 = getelementptr inbounds %struct.ttm_resource, ptr %1, i32 0, i32 4, i32 3
  %20 = getelementptr inbounds %struct.nouveau_mem, ptr %1, i32 0, i32 4
  %21 = getelementptr inbounds %struct.nouveau_mem, ptr %1, i32 0, i32 4, i32 0, i32 4
  %22 = getelementptr inbounds %struct.gf100_mem_map_v0, ptr %3, i32 0, i32 1
  %23 = getelementptr inbounds %struct.gf100_mem_map_v0, ptr %3, i32 0, i32 2
  %24 = getelementptr inbounds %struct.nouveau_mem, ptr %1, i32 0, i32 3
  %25 = getelementptr inbounds %struct.nv50_mem_map_v0, ptr %3, i32 0, i32 3
  %26 = getelementptr i8, ptr %0, i32 1444
  %27 = getelementptr inbounds %struct.ttm_device, ptr %0, i32 0, i32 9
  br label %28

28:                                               ; preds = %116, %2
  %29 = load i32, ptr %11, align 4
  switch i32 %29, label %119 [
    i32 0, label %117
    i32 1, label %30
    i32 2, label %37
  ]

30:                                               ; preds = %28
  %31 = load ptr, ptr %12, align 8
  %32 = load i32, ptr %31, align 4
  %33 = icmp ult i32 %32, -2147463157
  br i1 %33, label %117, label %34

34:                                               ; preds = %30
  %35 = load i8, ptr %13, align 4
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %117, label %37

37:                                               ; preds = %34, %28
  %38 = load i32, ptr %1, align 4
  %39 = shl i32 %38, 12
  %40 = load ptr, ptr %9, align 8
  %41 = getelementptr inbounds %struct.nvkm_device_func, ptr %40, i32 0, i32 6
  %42 = load ptr, ptr %41, align 4
  %43 = call i32 %42(ptr noundef %9, i32 noundef 1) #12
  %44 = add i32 %43, %39
  store i32 %44, ptr %14, align 4
  store i8 1, ptr %15, align 4
  %45 = load i8, ptr %16, align 1
  %46 = icmp ugt i8 %45, 5
  br i1 %46, label %47, label %53

47:                                               ; preds = %37
  %48 = load ptr, ptr %17, align 8
  %49 = load i32, ptr %18, align 4
  %50 = getelementptr %struct.anon.82, ptr %48, i32 %49
  %51 = load i8, ptr %50, align 1
  %52 = icmp sgt i8 %51, -1
  br i1 %52, label %53, label %54

53:                                               ; preds = %47, %37
  br label %54

54:                                               ; preds = %53, %47
  %55 = phi i32 [ 1, %53 ], [ 0, %47 ]
  store i32 %55, ptr %19, align 4
  %56 = load ptr, ptr %12, align 8
  %57 = load i32, ptr %56, align 4
  %58 = icmp ugt i32 %57, -2147463158
  br i1 %58, label %59, label %117

59:                                               ; preds = %54
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store i32 0, ptr %3, align 4, !annotation !22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  store i64 0, ptr %4, align 8, !annotation !22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #12
  store i64 0, ptr %5, align 8, !annotation !22
  %60 = load i32, ptr %21, align 8
  switch i32 %60, label %66 [
    i32 -2147463157, label %61
    i32 -2147446773, label %64
  ]

61:                                               ; preds = %59
  store i8 0, ptr %3, align 4
  store i8 0, ptr %22, align 1
  %62 = load i8, ptr %13, align 4
  store i8 %62, ptr %23, align 2
  %63 = load i8, ptr %24, align 1
  store i8 %63, ptr %25, align 1
  br label %67

64:                                               ; preds = %59
  store i8 0, ptr %3, align 4
  store i8 0, ptr %22, align 1
  %65 = load i8, ptr %13, align 4
  store i8 %65, ptr %23, align 2
  br label %67

66:                                               ; preds = %59
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1145, i32 noundef 9, ptr noundef null) #12
  br label %67

67:                                               ; preds = %66, %64, %61
  %68 = phi i32 [ 0, %66 ], [ 3, %64 ], [ 4, %61 ]
  %69 = call i32 @nvif_object_map_handle(ptr noundef %20, ptr noundef nonnull %3, i32 noundef %68, ptr noundef nonnull %4, ptr noundef nonnull %5) #12
  switch i32 %69, label %74 [
    i32 1, label %70
    i32 0, label %73
  ], !prof !25

70:                                               ; preds = %67
  %71 = load i64, ptr %4, align 8
  %72 = trunc i64 %71 to i32
  store i32 %72, ptr %14, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  br label %119

73:                                               ; preds = %67
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1153, i32 noundef 9, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  br label %119

74:                                               ; preds = %67
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  %75 = icmp eq i32 %69, -28
  br i1 %75, label %76, label %117

76:                                               ; preds = %74
  %77 = load volatile ptr, ptr %26, align 4
  %78 = icmp eq ptr %77, %26
  %79 = getelementptr i8, ptr %77, i32 -416
  %80 = icmp eq ptr %79, null
  %81 = or i1 %78, %80
  br i1 %81, label %117, label %82

82:                                               ; preds = %76
  %83 = getelementptr inbounds %struct.list_head, ptr %77, i32 0, i32 1
  %84 = load ptr, ptr %83, align 4
  %85 = load ptr, ptr %77, align 4
  %86 = getelementptr inbounds %struct.list_head, ptr %85, i32 0, i32 1
  store ptr %84, ptr %86, align 4
  store volatile ptr %85, ptr %84, align 4
  store volatile ptr %77, ptr %77, align 4
  store ptr %77, ptr %83, align 4
  %87 = load ptr, ptr %27, align 8
  %88 = getelementptr i8, ptr %77, i32 -288
  %89 = load volatile i32, ptr %88, align 4
  %90 = and i32 %89, 1
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %101, label %92

92:                                               ; preds = %82
  %93 = getelementptr i8, ptr %77, i32 -384
  %94 = load i64, ptr %93, align 8
  %95 = shl i64 %94, 12
  %96 = getelementptr i8, ptr %77, i32 -376
  %97 = load i64, ptr %96, align 8
  %98 = trunc i64 %97 to i32
  %99 = shl i32 %98, 12
  %100 = zext i32 %99 to i64
  call void @unmap_mapping_range(ptr noundef %87, i64 noundef %95, i64 noundef %100, i32 noundef 1) #12
  br label %101

101:                                              ; preds = %92, %82
  %102 = getelementptr i8, ptr %77, i32 -188
  %103 = load ptr, ptr %102, align 4
  %104 = load ptr, ptr %12, align 8
  %105 = load i32, ptr %104, align 4
  %106 = icmp ugt i32 %105, -2147463158
  br i1 %106, label %107, label %116

107:                                              ; preds = %101
  %108 = getelementptr inbounds %struct.ttm_resource, ptr %103, i32 0, i32 2
  %109 = load i32, ptr %108, align 4
  switch i32 %109, label %116 [
    i32 1, label %110
    i32 2, label %114
  ]

110:                                              ; preds = %107
  %111 = getelementptr inbounds %struct.nouveau_mem, ptr %103, i32 0, i32 2
  %112 = load i8, ptr %111, align 4
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %116, label %114

114:                                              ; preds = %110, %107
  %115 = getelementptr inbounds %struct.nouveau_mem, ptr %103, i32 0, i32 4
  call void @nvif_object_unmap_handle(ptr noundef %115) #12
  br label %116

116:                                              ; preds = %114, %110, %107, %101
  br label %28

117:                                              ; preds = %76, %74, %54, %34, %30, %28
  %118 = phi i32 [ -28, %76 ], [ %29, %28 ], [ 0, %34 ], [ 0, %30 ], [ 0, %54 ], [ %69, %74 ]
  br label %119

119:                                              ; preds = %117, %73, %70, %28
  %120 = phi i32 [ -22, %73 ], [ 0, %70 ], [ %118, %117 ], [ -22, %28 ]
  call void @mutex_unlock(ptr noundef %10) #12
  ret i32 %120
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nouveau_ttm_io_mem_free(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 1424
  tail call void @mutex_lock(ptr noundef %3) #12
  %4 = getelementptr i8, ptr %0, i32 -168
  %5 = load ptr, ptr %4, align 8
  %6 = load i32, ptr %5, align 4
  %7 = icmp ugt i32 %6, -2147463158
  br i1 %7, label %8, label %17

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.ttm_resource, ptr %1, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  switch i32 %10, label %17 [
    i32 1, label %11
    i32 2, label %15
  ]

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.nouveau_mem, ptr %1, i32 0, i32 2
  %13 = load i8, ptr %12, align 4
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %11, %8
  %16 = getelementptr inbounds %struct.nouveau_mem, ptr %1, i32 0, i32 4
  tail call void @nvif_object_unmap_handle(ptr noundef %16) #12
  br label %17

17:                                               ; preds = %15, %11, %8, %2
  tail call void @mutex_unlock(ptr noundef %3) #12
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_resv_fini(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ww_mutex_lock(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ww_mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_bo_move_to_lru_tail(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nouveau_sgdma_create_ttm(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_prime_sg_to_dma_addr_array(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_pool_alloc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_pool_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_sgdma_unbind(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_sgdma_destroy(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nouveau_bo_move_ntfy(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  %4 = getelementptr inbounds %struct.ttm_buffer_object, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, @nouveau_bo_del_ttm
  br i1 %6, label %7, label %58

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ttm_buffer_object, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr i8, ptr %9, i32 1424
  tail call void @mutex_lock(ptr noundef %10) #12
  %11 = getelementptr inbounds %struct.nouveau_bo, ptr %0, i32 0, i32 8
  %12 = getelementptr inbounds %struct.nouveau_bo, ptr %0, i32 0, i32 8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr %11, align 4
  %15 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  store ptr %13, ptr %15, align 4
  store volatile ptr %14, ptr %13, align 4
  store volatile ptr %11, ptr %11, align 4
  store ptr %11, ptr %12, align 4
  tail call void @mutex_unlock(ptr noundef %10) #12
  br i1 %3, label %39, label %16

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.ttm_resource, ptr %1, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %39, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.nouveau_mem, ptr %1, i32 0, i32 4, i32 2
  %22 = load i8, ptr %21, align 1
  %23 = zext i8 %22 to i32
  %24 = getelementptr inbounds %struct.nouveau_bo, ptr %0, i32 0, i32 15
  %25 = load i32, ptr %24, align 8
  %26 = lshr i32 %25, 1
  %27 = and i32 %26, 31
  %28 = icmp eq i32 %27, %23
  br i1 %28, label %29, label %39

29:                                               ; preds = %20
  %30 = getelementptr inbounds %struct.nouveau_bo, ptr %0, i32 0, i32 14
  %31 = load ptr, ptr %30, align 8
  %32 = icmp eq ptr %31, %30
  br i1 %32, label %53, label %33

33:                                               ; preds = %33, %29
  %34 = phi ptr [ %37, %33 ], [ %31, %29 ]
  %35 = getelementptr i8, ptr %34, i32 -8
  %36 = tail call i32 @nouveau_vma_map(ptr noundef %35, ptr noundef nonnull %1) #12
  %37 = load ptr, ptr %34, align 8
  %38 = icmp eq ptr %37, %30
  br i1 %38, label %52, label %33

39:                                               ; preds = %20, %16, %7
  %40 = getelementptr inbounds %struct.nouveau_bo, ptr %0, i32 0, i32 14
  %41 = load ptr, ptr %40, align 8
  %42 = icmp eq ptr %41, %40
  br i1 %42, label %52, label %43

43:                                               ; preds = %49, %39
  %44 = phi ptr [ %50, %49 ], [ %41, %39 ]
  %45 = getelementptr i8, ptr %44, i32 -8
  %46 = tail call i32 @ttm_bo_wait(ptr noundef %0, i1 noundef zeroext false, i1 noundef zeroext false) #12
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %49, label %48, !prof !9

48:                                               ; preds = %43
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 924, i32 noundef 9, ptr noundef null) #12
  br label %49

49:                                               ; preds = %48, %43
  tail call void @nouveau_vma_unmap(ptr noundef %45) #12
  %50 = load ptr, ptr %44, align 8
  %51 = icmp eq ptr %50, %40
  br i1 %51, label %52, label %43

52:                                               ; preds = %49, %39, %33
  br i1 %3, label %58, label %53

53:                                               ; preds = %52, %29
  %54 = load i32, ptr %1, align 4
  %55 = shl i32 %54, 12
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.nouveau_bo, ptr %0, i32 0, i32 13
  store i64 %56, ptr %57, align 8
  br label %58

58:                                               ; preds = %53, %52, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_resource_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_bo_move_memcpy(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_sgdma_bind(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_vma_map(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_bo_wait(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_vma_unmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nouveau_fence_done(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_fence_unref(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_fb_tile_fini(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_fb_tile_init(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_fb_tile_prog(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_fence_sync(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_fence_new(ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_bo_move_accel_cleanup(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_vmm_get(ptr noundef, i32 noundef, i1 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_mem_map(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_vmm_put(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_map_handle(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unmap_mapping_range(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_object_unmap_handle(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind }
attributes #13 = { nounwind readnone }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 2148685590, i64 2148685870, i64 2148686204, i64 2148686538}
!11 = !{i64 2149260825}
!12 = !{i64 2149256649}
!13 = !{i64 2149256724, i64 2149256751, i64 2149256798, i64 2149256820, i64 2149256848, i64 2149256868}
!14 = !{i64 2149283828}
!15 = !{i8 0, i8 2}
!16 = !{i64 2152524184}
!17 = !{i64 4982944}
!18 = !{i64 4983982}
!19 = !{i64 2152523435}
!20 = !{i64 2152524657}
!21 = !{i64 4983564}
!22 = !{!"auto-init"}
!23 = !{i64 641237, i64 2148142803, i64 2148142829, i64 2148142876, i64 2148142898, i64 2148142926, i64 2148142946}
!24 = !{i64 2148207523, i64 2148207555, i64 2148207584, i64 2148207618, i64 2148207649, i64 2148207672}
!25 = !{!"branch_weights", i32 2000, i32 2001, i32 1}
