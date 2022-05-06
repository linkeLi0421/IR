; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/dispnv04/overlay.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/dispnv04/overlay.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_plane_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.68, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.77, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.68 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.anon.77 = type { i32, ptr }
%struct.nouveau_drm = type { %struct.nvif_parent, %struct.nouveau_cli, %struct.nouveau_cli, ptr, %struct.list_head, %struct.mutex, i8, %struct.anon.84, %struct.anon.85, %struct.anon.87, ptr, %struct.anon.88, ptr, ptr, ptr, ptr, %struct.nvif_object, %struct.anon.89, %struct.nvbios, ptr, %struct.work_struct, %struct.mutex, i32, %struct.work_struct, i32, ptr, ptr, ptr, %struct.dev_pm_domain, ptr, ptr, %struct.anon.101 }
%struct.nvif_parent = type { ptr }
%struct.nouveau_cli = type { %struct.nvif_client, ptr, %struct.mutex, %struct.nvif_device, %struct.nvif_mmu, %struct.nouveau_vmm, %struct.nouveau_vmm, ptr, %struct.list_head, ptr, %struct.list_head, %struct.list_head, [32 x i8], %struct.work_struct, %struct.list_head, %struct.mutex }
%struct.nvif_client = type { %struct.nvif_object, ptr, i64, i8 }
%struct.nvif_device = type { %struct.nvif_object, %struct.nv_device_info_v0, ptr, i32, %struct.nvif_user }
%struct.nv_device_info_v0 = type { i8, i8, i16, i8, i8, [2 x i8], i64, i64, [16 x i8], [64 x i8] }
%struct.nvif_user = type { ptr, %struct.nvif_object }
%struct.nvif_mmu = type { %struct.nvif_object, i8, i8, i8, i8, i16, i32, ptr, ptr, ptr }
%struct.nouveau_vmm = type { ptr, %struct.nvif_vmm, ptr }
%struct.nvif_vmm = type { %struct.nvif_object, i64, i64, ptr, i32 }
%struct.anon.84 = type { ptr, i32, i32, i8 }
%struct.anon.85 = type { %struct.ttm_device, %struct.atomic_t, ptr, ptr, %struct.nvif_object, i32, i32, [2 x i32], [2 x i32], %struct.mutex, %struct.list_head }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.86] }
%struct.anon.86 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.anon.87 = type { i64, i64 }
%struct.anon.88 = type { i32, i64 }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon.80 }
%struct.anon.80 = type { ptr, i64 }
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
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.101 = type { ptr, %struct.mutex, i8 }
%struct.nouveau_plane = type { %struct.drm_plane, i8, ptr, %struct.anon.102, i32, i32, i32, i32, i32, i32, ptr }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.anon.102 = type { ptr, ptr, ptr, ptr, ptr }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
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
%struct.nouveau_crtc = type { %struct.drm_crtc, i32, %struct.nvif_notify, i32, i32, i32, i32, i32, i32, i32, %struct.anon.103, %struct.anon.104, %struct.anon.105, ptr, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.nvif_notify = type { ptr, ptr, i32, i32, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.work_struct }
%struct.anon.103 = type { i32, i8, i32, i32 }
%struct.anon.104 = type { ptr, i32, ptr, ptr, ptr, ptr }
%struct.anon.105 = type { i32 }

@nv04_plane_funcs = internal constant %struct.drm_plane_funcs { ptr @nv04_update_plane, ptr @nv04_disable_plane, ptr @nv_destroy_plane, ptr null, ptr @nv_set_property, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@formats = internal global [4 x i32] [i32 1448695129, i32 1498831189, i32 842094158, i32 825382478], align 4
@.str = private unnamed_addr constant [9 x i8] c"colorkey\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"brightness\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"%s: Failed to create plane\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"Unsuitable framebuffer scaling: %dx%d -> %dx%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"Unsuitable framebuffer offset: %d,%d\0A\00", align 1
@nv10_plane_funcs = internal constant %struct.drm_plane_funcs { ptr @nv10_update_plane, ptr @nv10_disable_plane, ptr @nv_destroy_plane, ptr null, ptr @nv_set_property, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"contrast\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"hue\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"saturation\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nouveau_overlay_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 3, i32 1, i32 2
  %5 = load i16, ptr %4, align 2
  %6 = icmp ult i16 %5, 16
  br i1 %6, label %7, label %37

7:                                                ; preds = %1
  %8 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %9 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 512) #4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %97, label %11

11:                                               ; preds = %7
  %12 = tail call i32 @drm_plane_init(ptr noundef %0, ptr noundef nonnull %9, i32 noundef 1, ptr noundef nonnull @nv04_plane_funcs, ptr noundef nonnull @formats, i32 noundef 2, i1 noundef zeroext false) #5
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %29

14:                                               ; preds = %11
  %15 = tail call ptr @drm_property_create_range(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str, i64 noundef 0, i64 noundef 33554431) #5
  %16 = getelementptr inbounds %struct.nouveau_plane, ptr %9, i32 0, i32 3
  store ptr %15, ptr %16, align 8
  %17 = tail call ptr @drm_property_create_range(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.1, i64 noundef 0, i64 noundef 1024) #5
  %18 = getelementptr inbounds %struct.nouveau_plane, ptr %9, i32 0, i32 3, i32 2
  store ptr %17, ptr %18, align 8
  %19 = load ptr, ptr %16, align 8
  %20 = icmp eq ptr %19, null
  %21 = icmp eq ptr %17, null
  %22 = select i1 %20, i1 true, i1 %21
  br i1 %22, label %28, label %23

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.nouveau_plane, ptr %9, i32 0, i32 4
  store i32 0, ptr %24, align 4
  %25 = getelementptr inbounds %struct.drm_plane, ptr %9, i32 0, i32 4
  tail call void @drm_object_attach_property(ptr noundef %25, ptr noundef nonnull %19, i64 noundef 0) #5
  %26 = getelementptr inbounds %struct.nouveau_plane, ptr %9, i32 0, i32 6
  store i32 512, ptr %26, align 4
  %27 = load ptr, ptr %18, align 8
  tail call void @drm_object_attach_property(ptr noundef %25, ptr noundef %27, i64 noundef 512) #5
  tail call void @drm_plane_force_disable(ptr noundef nonnull %9) #5
  br label %97

28:                                               ; preds = %14
  tail call void @drm_plane_cleanup(ptr noundef nonnull %9) #5
  br label %29

29:                                               ; preds = %28, %11
  tail call void @kfree(ptr noundef nonnull %9) #5
  %30 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 1
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds %struct.nouveau_drm, ptr %31, i32 0, i32 3
  %33 = load ptr, ptr %32, align 8
  %34 = getelementptr inbounds %struct.drm_device, ptr %33, i32 0, i32 2
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.2, ptr noundef %36) #6
  br label %97

37:                                               ; preds = %1
  %38 = icmp ult i16 %5, 65
  br i1 %38, label %39, label %97

39:                                               ; preds = %37
  %40 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %41 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %40, i32 noundef 3520, i32 noundef 512) #4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %97, label %43

43:                                               ; preds = %39
  %44 = load i16, ptr %4, align 2
  switch i16 %44, label %46 [
    i16 16, label %45
    i16 17, label %45
    i16 21, label %45
    i16 26, label %45
    i16 32, label %45
  ]

45:                                               ; preds = %43, %43, %43, %43, %43
  br label %46

46:                                               ; preds = %45, %43
  %47 = phi i32 [ 4, %43 ], [ 2, %45 ]
  %48 = tail call i32 @drm_plane_init(ptr noundef %0, ptr noundef nonnull %41, i32 noundef 3, ptr noundef nonnull @nv10_plane_funcs, ptr noundef nonnull @formats, i32 noundef %47, i1 noundef zeroext false) #5
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %89

50:                                               ; preds = %46
  %51 = tail call ptr @drm_property_create_range(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str, i64 noundef 0, i64 noundef 33554431) #5
  %52 = getelementptr inbounds %struct.nouveau_plane, ptr %41, i32 0, i32 3
  store ptr %51, ptr %52, align 8
  %53 = tail call ptr @drm_property_create_range(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.5, i64 noundef 0, i64 noundef 8191) #5
  %54 = getelementptr inbounds %struct.nouveau_plane, ptr %41, i32 0, i32 3, i32 1
  store ptr %53, ptr %54, align 4
  %55 = tail call ptr @drm_property_create_range(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.1, i64 noundef 0, i64 noundef 1024) #5
  %56 = getelementptr inbounds %struct.nouveau_plane, ptr %41, i32 0, i32 3, i32 2
  store ptr %55, ptr %56, align 8
  %57 = tail call ptr @drm_property_create_range(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.6, i64 noundef 0, i64 noundef 359) #5
  %58 = getelementptr inbounds %struct.nouveau_plane, ptr %41, i32 0, i32 3, i32 3
  store ptr %57, ptr %58, align 4
  %59 = tail call ptr @drm_property_create_range(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.7, i64 noundef 0, i64 noundef 8191) #5
  %60 = getelementptr inbounds %struct.nouveau_plane, ptr %41, i32 0, i32 3, i32 4
  store ptr %59, ptr %60, align 8
  %61 = load ptr, ptr %52, align 8
  %62 = icmp eq ptr %61, null
  br i1 %62, label %88, label %63

63:                                               ; preds = %50
  %64 = load ptr, ptr %54, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %88, label %66

66:                                               ; preds = %63
  %67 = load ptr, ptr %56, align 8
  %68 = icmp eq ptr %67, null
  br i1 %68, label %88, label %69

69:                                               ; preds = %66
  %70 = load ptr, ptr %58, align 4
  %71 = icmp eq ptr %70, null
  %72 = icmp eq ptr %59, null
  %73 = select i1 %71, i1 true, i1 %72
  br i1 %73, label %88, label %74

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.nouveau_plane, ptr %41, i32 0, i32 4
  store i32 0, ptr %75, align 4
  %76 = getelementptr inbounds %struct.drm_plane, ptr %41, i32 0, i32 4
  tail call void @drm_object_attach_property(ptr noundef %76, ptr noundef nonnull %61, i64 noundef 0) #5
  %77 = getelementptr inbounds %struct.nouveau_plane, ptr %41, i32 0, i32 5
  store i32 4096, ptr %77, align 8
  %78 = load ptr, ptr %54, align 4
  tail call void @drm_object_attach_property(ptr noundef %76, ptr noundef %78, i64 noundef 4096) #5
  %79 = getelementptr inbounds %struct.nouveau_plane, ptr %41, i32 0, i32 6
  store i32 512, ptr %79, align 4
  %80 = load ptr, ptr %56, align 8
  tail call void @drm_object_attach_property(ptr noundef %76, ptr noundef %80, i64 noundef 512) #5
  %81 = getelementptr inbounds %struct.nouveau_plane, ptr %41, i32 0, i32 7
  store i32 0, ptr %81, align 8
  %82 = load ptr, ptr %58, align 4
  tail call void @drm_object_attach_property(ptr noundef %76, ptr noundef %82, i64 noundef 0) #5
  %83 = getelementptr inbounds %struct.nouveau_plane, ptr %41, i32 0, i32 8
  store i32 4096, ptr %83, align 4
  %84 = load ptr, ptr %60, align 8
  tail call void @drm_object_attach_property(ptr noundef %76, ptr noundef %84, i64 noundef 4096) #5
  %85 = getelementptr inbounds %struct.nouveau_plane, ptr %41, i32 0, i32 9
  store i32 0, ptr %85, align 8
  %86 = tail call i32 @drm_plane_create_color_properties(ptr noundef nonnull %41, i32 noundef 3, i32 noundef 1, i32 noundef 0, i32 noundef 0) #5
  %87 = getelementptr inbounds %struct.nouveau_plane, ptr %41, i32 0, i32 10
  store ptr @nv10_set_params, ptr %87, align 4
  tail call void @nv10_set_params(ptr noundef nonnull %41) #5
  tail call void @drm_plane_force_disable(ptr noundef nonnull %41) #5
  br label %97

88:                                               ; preds = %69, %66, %63, %50
  tail call void @drm_plane_cleanup(ptr noundef nonnull %41) #5
  br label %89

89:                                               ; preds = %88, %46
  tail call void @kfree(ptr noundef nonnull %41) #5
  %90 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 1
  %91 = load ptr, ptr %90, align 8
  %92 = getelementptr inbounds %struct.nouveau_drm, ptr %91, i32 0, i32 3
  %93 = load ptr, ptr %92, align 8
  %94 = getelementptr inbounds %struct.drm_device, ptr %93, i32 0, i32 2
  %95 = load ptr, ptr %94, align 4
  %96 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %95, ptr noundef nonnull @.str.2, ptr noundef %96) #6
  br label %97

97:                                               ; preds = %89, %74, %39, %37, %29, %23, %7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_property_create_range(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_object_attach_property(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_plane_force_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_plane_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv04_update_plane(ptr nocapture noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, ptr nocapture noundef readnone %11) #0 {
  %13 = load ptr, ptr %0, align 8
  %14 = getelementptr inbounds %struct.drm_device, ptr %13, i32 0, i32 5
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.nouveau_drm, ptr %15, i32 0, i32 2, i32 3
  %17 = getelementptr inbounds %struct.nouveau_plane, ptr %0, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.nouveau_plane, ptr %0, i32 0, i32 6
  %20 = load i32, ptr %19, align 4
  %21 = mul i32 %20, 62
  %22 = add i32 %21, -31744
  %23 = sdiv i32 %22, 512
  %24 = lshr i32 %7, 16
  %25 = lshr i32 %8, 16
  %26 = lshr i32 %9, 16
  %27 = lshr i32 %10, 16
  %28 = icmp ugt i32 %26, %5
  %29 = icmp ugt i32 %27, %6
  %30 = or i1 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %12
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.3, i32 noundef %26, i32 noundef %27, i32 noundef %5, i32 noundef %6) #5
  br label %228

32:                                               ; preds = %12
  %33 = or i32 %25, %24
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.4, i32 noundef %24, i32 noundef %25) #5
  br label %228

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.drm_framebuffer, ptr %2, i32 0, i32 15
  %38 = load ptr, ptr %37, align 4
  %39 = tail call i32 @nouveau_bo_pin(ptr noundef %38, i32 noundef 2, i1 noundef zeroext false) #5
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %228

41:                                               ; preds = %36
  store ptr %38, ptr %17, align 4
  %42 = getelementptr inbounds %struct.nouveau_drm, ptr %15, i32 0, i32 2, i32 3, i32 0, i32 6
  %43 = load ptr, ptr %42, align 8
  %44 = icmp eq ptr %43, null
  br i1 %44, label %47, label %45, !prof !8

45:                                               ; preds = %41
  %46 = getelementptr i8, ptr %43, i32 6816292
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 0) #5, !srcloc !10
  br label %48

47:                                               ; preds = %41
  tail call void @nvif_object_wr(ptr noundef %16, i32 noundef 4, i64 noundef 6816292, i32 noundef 0) #5
  br label %48

48:                                               ; preds = %47, %45
  %49 = load ptr, ptr %42, align 8
  %50 = icmp eq ptr %49, null
  br i1 %50, label %53, label %51, !prof !8

51:                                               ; preds = %48
  %52 = getelementptr i8, ptr %49, i32 6816296
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 0) #5, !srcloc !10
  br label %54

53:                                               ; preds = %48
  tail call void @nvif_object_wr(ptr noundef %16, i32 noundef 4, i64 noundef 6816296, i32 noundef 0) #5
  br label %54

54:                                               ; preds = %53, %51
  %55 = load ptr, ptr %42, align 8
  %56 = icmp eq ptr %55, null
  br i1 %56, label %59, label %57, !prof !8

57:                                               ; preds = %54
  %58 = getelementptr i8, ptr %55, i32 6816300
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 0) #5, !srcloc !10
  br label %60

59:                                               ; preds = %54
  tail call void @nvif_object_wr(ptr noundef %16, i32 noundef 4, i64 noundef 6816300, i32 noundef 0) #5
  br label %60

60:                                               ; preds = %59, %57
  %61 = getelementptr inbounds %struct.nouveau_bo, ptr %38, i32 0, i32 13
  %62 = getelementptr inbounds %struct.drm_framebuffer, ptr %2, i32 0, i32 6
  %63 = load ptr, ptr %42, align 8
  %64 = icmp eq ptr %63, null
  %65 = load i64, ptr %61, align 8
  %66 = trunc i64 %65 to i32
  br i1 %64, label %69, label %67, !prof !8

67:                                               ; preds = %60
  %68 = getelementptr i8, ptr %63, i32 6816268
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 %66) #5, !srcloc !10
  br label %70

69:                                               ; preds = %60
  tail call void @nvif_object_wr(ptr noundef %16, i32 noundef 4, i64 noundef 6816268, i32 noundef %66) #5
  br label %70

70:                                               ; preds = %69, %67
  %71 = load ptr, ptr %42, align 8
  %72 = icmp eq ptr %71, null
  %73 = load i32, ptr %62, align 8
  br i1 %72, label %76, label %74, !prof !8

74:                                               ; preds = %70
  %75 = getelementptr i8, ptr %71, i32 6816276
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %75, i32 %73) #5, !srcloc !10
  br label %77

76:                                               ; preds = %70
  tail call void @nvif_object_wr(ptr noundef %16, i32 noundef 4, i64 noundef 6816276, i32 noundef %73) #5
  br label %77

77:                                               ; preds = %76, %74
  %78 = load ptr, ptr %42, align 8
  %79 = icmp eq ptr %78, null
  br i1 %79, label %82, label %80, !prof !8

80:                                               ; preds = %77
  %81 = getelementptr i8, ptr %78, i32 6816284
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %81, i32 0) #5, !srcloc !10
  br label %83

82:                                               ; preds = %77
  tail call void @nvif_object_wr(ptr noundef %16, i32 noundef 4, i64 noundef 6816284, i32 noundef 0) #5
  br label %83

83:                                               ; preds = %82, %80
  %84 = load ptr, ptr %42, align 8
  %85 = icmp eq ptr %84, null
  %86 = load i64, ptr %61, align 8
  %87 = trunc i64 %86 to i32
  br i1 %85, label %90, label %88, !prof !8

88:                                               ; preds = %83
  %89 = getelementptr i8, ptr %84, i32 6816272
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %89, i32 %87) #5, !srcloc !10
  br label %91

90:                                               ; preds = %83
  tail call void @nvif_object_wr(ptr noundef %16, i32 noundef 4, i64 noundef 6816272, i32 noundef %87) #5
  br label %91

91:                                               ; preds = %90, %88
  %92 = load ptr, ptr %42, align 8
  %93 = icmp eq ptr %92, null
  %94 = load i32, ptr %62, align 8
  br i1 %93, label %97, label %95, !prof !8

95:                                               ; preds = %91
  %96 = getelementptr i8, ptr %92, i32 6816280
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %96, i32 %94) #5, !srcloc !10
  br label %98

97:                                               ; preds = %91
  tail call void @nvif_object_wr(ptr noundef %16, i32 noundef 4, i64 noundef 6816280, i32 noundef %94) #5
  br label %98

98:                                               ; preds = %97, %95
  %99 = load ptr, ptr %42, align 8
  %100 = icmp eq ptr %99, null
  br i1 %100, label %103, label %101, !prof !8

101:                                              ; preds = %98
  %102 = getelementptr i8, ptr %99, i32 6816288
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %102, i32 0) #5, !srcloc !10
  br label %104

103:                                              ; preds = %98
  tail call void @nvif_object_wr(ptr noundef %16, i32 noundef 4, i64 noundef 6816288, i32 noundef 0) #5
  br label %104

104:                                              ; preds = %103, %101
  %105 = load ptr, ptr %42, align 8
  %106 = icmp eq ptr %105, null
  %107 = shl i32 %4, 16
  %108 = or i32 %107, %3
  br i1 %106, label %111, label %109, !prof !8

109:                                              ; preds = %104
  %110 = getelementptr i8, ptr %105, i32 6816304
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %110, i32 %108) #5, !srcloc !10
  br label %112

111:                                              ; preds = %104
  tail call void @nvif_object_wr(ptr noundef %16, i32 noundef 4, i64 noundef 6816304, i32 noundef %108) #5
  br label %112

112:                                              ; preds = %111, %109
  %113 = load ptr, ptr %42, align 8
  %114 = icmp eq ptr %113, null
  %115 = shl i32 %6, 16
  %116 = or i32 %115, %5
  br i1 %114, label %119, label %117, !prof !8

117:                                              ; preds = %112
  %118 = getelementptr i8, ptr %113, i32 6816308
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %118, i32 %116) #5, !srcloc !10
  br label %120

119:                                              ; preds = %112
  tail call void @nvif_object_wr(ptr noundef %16, i32 noundef 4, i64 noundef 6816308, i32 noundef %116) #5
  br label %120

120:                                              ; preds = %119, %117
  %121 = load ptr, ptr %42, align 8
  %122 = icmp eq ptr %121, null
  %123 = shl nuw nsw i32 %27, 11
  %124 = add nsw i32 %123, -2048
  %125 = add i32 %6, -1
  %126 = udiv i32 %124, %125
  %127 = shl i32 %126, 16
  %128 = shl nuw nsw i32 %26, 11
  %129 = add nsw i32 %128, -2048
  %130 = add i32 %5, -1
  %131 = udiv i32 %129, %130
  %132 = or i32 %127, %131
  br i1 %122, label %135, label %133, !prof !8

133:                                              ; preds = %120
  %134 = getelementptr i8, ptr %121, i32 6816256
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %134, i32 %132) #5, !srcloc !10
  br label %136

135:                                              ; preds = %120
  tail call void @nvif_object_wr(ptr noundef %16, i32 noundef 4, i64 noundef 6816256, i32 noundef %132) #5
  br label %136

136:                                              ; preds = %135, %133
  %137 = load ptr, ptr %42, align 8
  %138 = icmp eq ptr %137, null
  %139 = sub nsw i32 105, %23
  br i1 %138, label %142, label %140, !prof !8

140:                                              ; preds = %136
  %141 = getelementptr i8, ptr %137, i32 6816384
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %141, i32 %139) #5, !srcloc !10
  br label %143

142:                                              ; preds = %136
  tail call void @nvif_object_wr(ptr noundef %16, i32 noundef 4, i64 noundef 6816384, i32 noundef %139) #5
  br label %143

143:                                              ; preds = %142, %140
  %144 = load ptr, ptr %42, align 8
  %145 = icmp eq ptr %144, null
  %146 = add nsw i32 %23, 62
  br i1 %145, label %149, label %147, !prof !8

147:                                              ; preds = %143
  %148 = getelementptr i8, ptr %144, i32 6816388
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %148, i32 %146) #5, !srcloc !10
  br label %150

149:                                              ; preds = %143
  tail call void @nvif_object_wr(ptr noundef %16, i32 noundef 4, i64 noundef 6816388, i32 noundef %146) #5
  br label %150

150:                                              ; preds = %149, %147
  %151 = load ptr, ptr %42, align 8
  %152 = icmp eq ptr %151, null
  %153 = sub nsw i32 137, %23
  br i1 %152, label %156, label %154, !prof !8

154:                                              ; preds = %150
  %155 = getelementptr i8, ptr %151, i32 6816392
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %155, i32 %153) #5, !srcloc !10
  br label %157

156:                                              ; preds = %150
  tail call void @nvif_object_wr(ptr noundef %16, i32 noundef 4, i64 noundef 6816392, i32 noundef %153) #5
  br label %157

157:                                              ; preds = %156, %154
  %158 = load ptr, ptr %42, align 8
  %159 = icmp eq ptr %158, null
  br i1 %159, label %162, label %160, !prof !8

160:                                              ; preds = %157
  %161 = getelementptr i8, ptr %158, i32 6816396
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %161, i32 0) #5, !srcloc !10
  br label %163

162:                                              ; preds = %157
  tail call void @nvif_object_wr(ptr noundef %16, i32 noundef 4, i64 noundef 6816396, i32 noundef 0) #5
  br label %163

163:                                              ; preds = %162, %160
  %164 = load ptr, ptr %42, align 8
  %165 = icmp eq ptr %164, null
  br i1 %165, label %168, label %166, !prof !8

166:                                              ; preds = %163
  %167 = getelementptr i8, ptr %164, i32 6816260
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %167, i32 1) #5, !srcloc !10
  br label %169

168:                                              ; preds = %163
  tail call void @nvif_object_wr(ptr noundef %16, i32 noundef 4, i64 noundef 6816260, i32 noundef 1) #5
  br label %169

169:                                              ; preds = %168, %166
  %170 = load ptr, ptr %42, align 8
  %171 = icmp eq ptr %170, null
  br i1 %171, label %174, label %172, !prof !8

172:                                              ; preds = %169
  %173 = getelementptr i8, ptr %170, i32 6816264
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %173, i32 273) #5, !srcloc !10
  br label %175

174:                                              ; preds = %169
  tail call void @nvif_object_wr(ptr noundef %16, i32 noundef 4, i64 noundef 6816264, i32 noundef 273) #5
  br label %175

175:                                              ; preds = %174, %172
  %176 = load ptr, ptr %42, align 8
  %177 = icmp eq ptr %176, null
  br i1 %177, label %180, label %178, !prof !8

178:                                              ; preds = %175
  %179 = getelementptr i8, ptr %176, i32 6816316
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %179, i32 3) #5, !srcloc !10
  br label %181

180:                                              ; preds = %175
  tail call void @nvif_object_wr(ptr noundef %16, i32 noundef 4, i64 noundef 6816316, i32 noundef 3) #5
  br label %181

181:                                              ; preds = %180, %178
  %182 = load ptr, ptr %42, align 8
  %183 = icmp eq ptr %182, null
  br i1 %183, label %186, label %184, !prof !8

184:                                              ; preds = %181
  %185 = getelementptr i8, ptr %182, i32 6816312
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %185, i32 56) #5, !srcloc !10
  br label %187

186:                                              ; preds = %181
  tail call void @nvif_object_wr(ptr noundef %16, i32 noundef 4, i64 noundef 6816312, i32 noundef 56) #5
  br label %187

187:                                              ; preds = %186, %184
  %188 = load ptr, ptr %42, align 8
  %189 = icmp eq ptr %188, null
  %190 = getelementptr inbounds %struct.nouveau_plane, ptr %0, i32 0, i32 4
  %191 = load i32, ptr %190, align 4
  br i1 %189, label %194, label %192, !prof !8

192:                                              ; preds = %187
  %193 = getelementptr i8, ptr %188, i32 6816320
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %193, i32 %191) #5, !srcloc !10
  br label %195

194:                                              ; preds = %187
  tail call void @nvif_object_wr(ptr noundef %16, i32 noundef 4, i64 noundef 6816320, i32 noundef %191) #5
  br label %195

195:                                              ; preds = %194, %192
  %196 = getelementptr inbounds %struct.nouveau_plane, ptr %0, i32 0, i32 4
  %197 = load i32, ptr %196, align 4
  %198 = and i32 %197, 16777216
  %199 = icmp eq i32 %198, 0
  %200 = select i1 %199, i32 1, i32 17
  %201 = getelementptr inbounds %struct.drm_framebuffer, ptr %2, i32 0, i32 4
  %202 = load ptr, ptr %201, align 8
  %203 = load i32, ptr %202, align 4
  %204 = icmp eq i32 %203, 1448695129
  %205 = or i32 %200, 256
  %206 = select i1 %204, i32 %205, i32 %200
  %207 = load ptr, ptr %42, align 8
  %208 = icmp eq ptr %207, null
  br i1 %208, label %211, label %209, !prof !8

209:                                              ; preds = %195
  %210 = getelementptr i8, ptr %207, i32 6816324
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %210, i32 %206) #5, !srcloc !10
  br label %212

211:                                              ; preds = %195
  tail call void @nvif_object_wr(ptr noundef %16, i32 noundef 4, i64 noundef 6816324, i32 noundef %206) #5
  br label %212

212:                                              ; preds = %211, %209
  %213 = load ptr, ptr %42, align 8
  %214 = icmp eq ptr %213, null
  br i1 %214, label %221, label %215, !prof !8

215:                                              ; preds = %212
  %216 = getelementptr i8, ptr %213, i32 6816296
  %217 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %216) #5, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !12
  %218 = xor i32 %217, 65536
  %219 = load ptr, ptr %42, align 8
  %220 = getelementptr i8, ptr %219, i32 6816296
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %220, i32 %218) #5, !srcloc !10
  br label %224

221:                                              ; preds = %212
  %222 = tail call i32 @nvif_object_rd(ptr noundef %16, i32 noundef 4, i64 noundef 6816296) #5
  %223 = xor i32 %222, 65536
  tail call void @nvif_object_wr(ptr noundef %16, i32 noundef 4, i64 noundef 6816296, i32 noundef %223) #5
  br label %224

224:                                              ; preds = %221, %215
  %225 = icmp eq ptr %18, null
  br i1 %225, label %228, label %226

226:                                              ; preds = %224
  %227 = tail call i32 @nouveau_bo_unpin(ptr noundef nonnull %18) #5
  br label %228

228:                                              ; preds = %226, %224, %36, %35, %31
  %229 = phi i32 [ %39, %36 ], [ 0, %226 ], [ 0, %224 ], [ -34, %31 ], [ -34, %35 ]
  ret i32 %229
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv04_disable_plane(ptr nocapture noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 3
  %7 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 3, i32 0, i32 6
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10, !prof !8

10:                                               ; preds = %2
  %11 = getelementptr i8, ptr %8, i32 6816324
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #5, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !12
  br label %15

13:                                               ; preds = %2
  %14 = tail call i32 @nvif_object_rd(ptr noundef %6, i32 noundef 4, i64 noundef 6816324) #5
  br label %15

15:                                               ; preds = %13, %10
  %16 = phi i32 [ %12, %10 ], [ %14, %13 ]
  %17 = load ptr, ptr %7, align 8
  %18 = icmp eq ptr %17, null
  %19 = and i32 %16, -2
  br i1 %18, label %22, label %20, !prof !8

20:                                               ; preds = %15
  %21 = getelementptr i8, ptr %17, i32 6816324
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #5, !srcloc !10
  br label %23

22:                                               ; preds = %15
  tail call void @nvif_object_wr(ptr noundef %6, i32 noundef 4, i64 noundef 6816324, i32 noundef %19) #5
  br label %23

23:                                               ; preds = %22, %20
  %24 = load ptr, ptr %7, align 8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26, !prof !8

26:                                               ; preds = %23
  %27 = getelementptr i8, ptr %24, i32 6816292
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 0) #5, !srcloc !10
  br label %29

28:                                               ; preds = %23
  tail call void @nvif_object_wr(ptr noundef %6, i32 noundef 4, i64 noundef 6816292, i32 noundef 0) #5
  br label %29

29:                                               ; preds = %28, %26
  %30 = load ptr, ptr %7, align 8
  %31 = icmp eq ptr %30, null
  br i1 %31, label %34, label %32, !prof !8

32:                                               ; preds = %29
  %33 = getelementptr i8, ptr %30, i32 6816296
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 0) #5, !srcloc !10
  br label %35

34:                                               ; preds = %29
  tail call void @nvif_object_wr(ptr noundef %6, i32 noundef 4, i64 noundef 6816296, i32 noundef 0) #5
  br label %35

35:                                               ; preds = %34, %32
  %36 = load ptr, ptr %7, align 8
  %37 = icmp eq ptr %36, null
  br i1 %37, label %40, label %38, !prof !8

38:                                               ; preds = %35
  %39 = getelementptr i8, ptr %36, i32 6816300
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 0) #5, !srcloc !10
  br label %41

40:                                               ; preds = %35
  tail call void @nvif_object_wr(ptr noundef %6, i32 noundef 4, i64 noundef 6816300, i32 noundef 0) #5
  br label %41

41:                                               ; preds = %40, %38
  %42 = getelementptr inbounds %struct.nouveau_plane, ptr %0, i32 0, i32 2
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %41
  %46 = tail call i32 @nouveau_bo_unpin(ptr noundef nonnull %43) #5
  store ptr null, ptr %42, align 4
  br label %47

47:                                               ; preds = %45, %41
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv_destroy_plane(ptr noundef %0) #0 {
  tail call void @drm_plane_force_disable(ptr noundef %0) #5
  tail call void @drm_plane_cleanup(ptr noundef %0) #5
  tail call void @kfree(ptr noundef %0) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv_set_property(ptr noundef %0, ptr noundef readnone %1, i64 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.nouveau_plane, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, %1
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = trunc i64 %2 to i32
  %9 = getelementptr inbounds %struct.nouveau_plane, ptr %0, i32 0, i32 4
  store i32 %8, ptr %9, align 4
  br label %45

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.nouveau_plane, ptr %0, i32 0, i32 3, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %1
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = trunc i64 %2 to i32
  %16 = getelementptr inbounds %struct.nouveau_plane, ptr %0, i32 0, i32 5
  store i32 %15, ptr %16, align 8
  br label %45

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.nouveau_plane, ptr %0, i32 0, i32 3, i32 2
  %19 = load ptr, ptr %18, align 8
  %20 = icmp eq ptr %19, %1
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = trunc i64 %2 to i32
  %23 = getelementptr inbounds %struct.nouveau_plane, ptr %0, i32 0, i32 6
  store i32 %22, ptr %23, align 4
  br label %45

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.nouveau_plane, ptr %0, i32 0, i32 3, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, %1
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = trunc i64 %2 to i32
  %30 = getelementptr inbounds %struct.nouveau_plane, ptr %0, i32 0, i32 7
  store i32 %29, ptr %30, align 8
  br label %45

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.nouveau_plane, ptr %0, i32 0, i32 3, i32 4
  %33 = load ptr, ptr %32, align 8
  %34 = icmp eq ptr %33, %1
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = trunc i64 %2 to i32
  %37 = getelementptr inbounds %struct.nouveau_plane, ptr %0, i32 0, i32 8
  store i32 %36, ptr %37, align 4
  br label %45

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 24
  %40 = load ptr, ptr %39, align 8
  %41 = icmp eq ptr %40, %1
  br i1 %41, label %42, label %50

42:                                               ; preds = %38
  %43 = trunc i64 %2 to i32
  %44 = getelementptr inbounds %struct.nouveau_plane, ptr %0, i32 0, i32 9
  store i32 %43, ptr %44, align 8
  br label %45

45:                                               ; preds = %42, %35, %28, %21, %14, %7
  %46 = getelementptr inbounds %struct.nouveau_plane, ptr %0, i32 0, i32 10
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %45
  tail call void %47(ptr noundef %0) #5
  br label %50

50:                                               ; preds = %49, %45, %38
  %51 = phi i32 [ -22, %38 ], [ 0, %49 ], [ 0, %45 ]
  ret i32 %51
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_bo_pin(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_object_wr(ptr noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_rd(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_bo_unpin(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_color_properties(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv10_set_params(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 2, i32 3
  %6 = getelementptr inbounds %struct.nouveau_plane, ptr %0, i32 0, i32 6
  %7 = load i32, ptr %6, align 4
  %8 = shl i32 %7, 16
  %9 = add i32 %8, -33554432
  %10 = getelementptr inbounds %struct.nouveau_plane, ptr %0, i32 0, i32 5
  %11 = load i32, ptr %10, align 8
  %12 = or i32 %9, %11
  %13 = getelementptr inbounds %struct.nouveau_plane, ptr %0, i32 0, i32 7
  %14 = load i32, ptr %13, align 8
  %15 = getelementptr inbounds %struct.nouveau_plane, ptr %0, i32 0, i32 8
  %16 = load i32, ptr %15, align 4
  %17 = icmp sgt i32 %14, 180
  %18 = add i32 %14, -180
  %19 = sub i32 0, %16
  %20 = select i1 %17, i32 %18, i32 %14
  %21 = select i1 %17, i32 %19, i32 %16
  %22 = sub i32 180, %20
  %23 = mul i32 %22, %20
  %24 = shl i32 %21, 2
  %25 = mul i32 %24, %23
  %26 = sub i32 40500, %23
  %27 = sdiv i32 %25, %26
  %28 = shl i32 %27, 16
  %29 = add i32 %14, 90
  %30 = srem i32 %29, 360
  %31 = icmp sgt i32 %30, 180
  %32 = add nsw i32 %30, -180
  %33 = select i1 %31, i32 %32, i32 %30
  %34 = select i1 %31, i32 %19, i32 %16
  %35 = sub nsw i32 180, %33
  %36 = mul nsw i32 %35, %33
  %37 = shl i32 %34, 2
  %38 = mul i32 %37, %36
  %39 = sub nsw i32 40500, %36
  %40 = sdiv i32 %38, %39
  %41 = and i32 %40, 65535
  %42 = or i32 %41, %28
  %43 = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 2, i32 3, i32 0, i32 6
  %44 = load ptr, ptr %43, align 8
  %45 = icmp eq ptr %44, null
  br i1 %45, label %48, label %46, !prof !8

46:                                               ; preds = %1
  %47 = getelementptr i8, ptr %44, i32 35088
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %12) #5, !srcloc !10
  br label %49

48:                                               ; preds = %1
  tail call void @nvif_object_wr(ptr noundef %5, i32 noundef 4, i64 noundef 35088, i32 noundef %12) #5
  br label %49

49:                                               ; preds = %48, %46
  %50 = load ptr, ptr %43, align 8
  %51 = icmp eq ptr %50, null
  br i1 %51, label %54, label %52, !prof !8

52:                                               ; preds = %49
  %53 = getelementptr i8, ptr %50, i32 35092
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %12) #5, !srcloc !10
  br label %55

54:                                               ; preds = %49
  tail call void @nvif_object_wr(ptr noundef %5, i32 noundef 4, i64 noundef 35092, i32 noundef %12) #5
  br label %55

55:                                               ; preds = %54, %52
  %56 = load ptr, ptr %43, align 8
  %57 = icmp eq ptr %56, null
  br i1 %57, label %60, label %58, !prof !8

58:                                               ; preds = %55
  %59 = getelementptr i8, ptr %56, i32 35096
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 %42) #5, !srcloc !10
  br label %61

60:                                               ; preds = %55
  tail call void @nvif_object_wr(ptr noundef %5, i32 noundef 4, i64 noundef 35096, i32 noundef %42) #5
  br label %61

61:                                               ; preds = %60, %58
  %62 = load ptr, ptr %43, align 8
  %63 = icmp eq ptr %62, null
  br i1 %63, label %66, label %64, !prof !8

64:                                               ; preds = %61
  %65 = getelementptr i8, ptr %62, i32 35100
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 %42) #5, !srcloc !10
  br label %67

66:                                               ; preds = %61
  tail call void @nvif_object_wr(ptr noundef %5, i32 noundef 4, i64 noundef 35100, i32 noundef %42) #5
  br label %67

67:                                               ; preds = %66, %64
  %68 = load ptr, ptr %43, align 8
  %69 = icmp eq ptr %68, null
  %70 = getelementptr inbounds %struct.nouveau_plane, ptr %0, i32 0, i32 4
  %71 = load i32, ptr %70, align 4
  %72 = and i32 %71, 16777215
  br i1 %69, label %75, label %73, !prof !8

73:                                               ; preds = %67
  %74 = getelementptr i8, ptr %68, i32 35584
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 %72) #5, !srcloc !10
  br label %76

75:                                               ; preds = %67
  tail call void @nvif_object_wr(ptr noundef %5, i32 noundef 4, i64 noundef 35584, i32 noundef %72) #5
  br label %76

76:                                               ; preds = %75, %73
  %77 = getelementptr inbounds %struct.nouveau_plane, ptr %0, i32 0, i32 2
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %115, label %80

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.nouveau_plane, ptr %0, i32 0, i32 9
  %82 = load i32, ptr %81, align 8
  %83 = icmp eq i32 %82, 1
  %84 = select i1 %83, i32 16777216, i32 0
  %85 = getelementptr inbounds %struct.nouveau_plane, ptr %0, i32 0, i32 4
  %86 = load i32, ptr %85, align 4
  %87 = lshr i32 %86, 4
  %88 = and i32 %87, 1048576
  %89 = or i32 %88, %84
  %90 = getelementptr inbounds %struct.nouveau_plane, ptr %0, i32 0, i32 1
  %91 = load i8, ptr %90, align 8, !range !13
  %92 = shl nuw nsw i8 %91, 2
  %93 = zext i8 %92 to i32
  %94 = or i32 %93, 35160
  %95 = load ptr, ptr %43, align 8
  %96 = icmp eq ptr %95, null
  br i1 %96, label %100, label %97, !prof !8

97:                                               ; preds = %80
  %98 = getelementptr i8, ptr %95, i32 %94
  %99 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %98) #5, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !12
  br label %103

100:                                              ; preds = %80
  %101 = zext i32 %94 to i64
  %102 = tail call i32 @nvif_object_rd(ptr noundef %5, i32 noundef 4, i64 noundef %101) #5
  br label %103

103:                                              ; preds = %100, %97
  %104 = phi i32 [ %99, %97 ], [ %102, %100 ]
  %105 = load ptr, ptr %43, align 8
  %106 = icmp eq ptr %105, null
  br i1 %106, label %111, label %107, !prof !8

107:                                              ; preds = %103
  %108 = and i32 %104, -17825793
  %109 = or i32 %108, %89
  %110 = getelementptr i8, ptr %105, i32 %94
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %110, i32 %109) #5, !srcloc !10
  br label %115

111:                                              ; preds = %103
  %112 = zext i32 %94 to i64
  %113 = and i32 %104, -17825793
  %114 = or i32 %113, %89
  tail call void @nvif_object_wr(ptr noundef %5, i32 noundef 4, i64 noundef %112, i32 noundef %114) #5
  br label %115

115:                                              ; preds = %111, %107, %76
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv10_update_plane(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, ptr nocapture noundef readnone %11) #0 {
  %13 = load ptr, ptr %0, align 8
  %14 = getelementptr inbounds %struct.drm_device, ptr %13, i32 0, i32 5
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.nouveau_drm, ptr %15, i32 0, i32 2, i32 3
  %17 = getelementptr inbounds %struct.nouveau_plane, ptr %0, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.nouveau_plane, ptr %0, i32 0, i32 1
  %20 = load i8, ptr %19, align 8, !range !13
  %21 = icmp eq i8 %20, 0
  %22 = getelementptr inbounds %struct.nouveau_crtc, ptr %1, i32 0, i32 1
  %23 = load i32, ptr %22, align 8
  %24 = shl i32 %23, 13
  %25 = icmp eq i32 %23, 0
  %26 = getelementptr inbounds %struct.nouveau_drm, ptr %15, i32 0, i32 2, i32 3, i32 1, i32 2
  %27 = load i16, ptr %26, align 2
  %28 = icmp ugt i16 %27, 47
  %29 = lshr i32 %7, 16
  %30 = and i32 %8, -65536
  %31 = lshr i32 %9, 16
  %32 = lshr i32 %10, 16
  %33 = select i1 %28, i32 1, i32 3
  %34 = lshr i32 %31, %33
  %35 = icmp ugt i32 %34, %5
  %36 = lshr i32 %32, %33
  %37 = icmp ugt i32 %36, %6
  %38 = select i1 %35, i1 true, i1 %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %12
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.3, i32 noundef %31, i32 noundef %32, i32 noundef %5, i32 noundef %6) #5
  br label %311

40:                                               ; preds = %12
  %41 = getelementptr inbounds %struct.drm_framebuffer, ptr %2, i32 0, i32 15
  %42 = load ptr, ptr %41, align 4
  %43 = tail call i32 @nouveau_bo_pin(ptr noundef %42, i32 noundef 2, i1 noundef zeroext false) #5
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %311

45:                                               ; preds = %40
  store ptr %42, ptr %17, align 4
  %46 = add i32 %24, 6293600
  %47 = getelementptr inbounds %struct.nouveau_drm, ptr %15, i32 0, i32 2, i32 3, i32 0, i32 6
  %48 = load ptr, ptr %47, align 8
  %49 = icmp eq ptr %48, null
  br i1 %49, label %53, label %50, !prof !8

50:                                               ; preds = %45
  %51 = getelementptr i8, ptr %48, i32 %46
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #5, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !12
  br label %56

53:                                               ; preds = %45
  %54 = zext i32 %46 to i64
  %55 = tail call i32 @nvif_object_rd(ptr noundef %16, i32 noundef 4, i64 noundef %54) #5
  br label %56

56:                                               ; preds = %53, %50
  %57 = phi i32 [ %52, %50 ], [ %55, %53 ]
  %58 = load ptr, ptr %47, align 8
  %59 = icmp eq ptr %58, null
  br i1 %59, label %63, label %60, !prof !8

60:                                               ; preds = %56
  %61 = or i32 %57, 4096
  %62 = getelementptr i8, ptr %58, i32 %46
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 %61) #5, !srcloc !10
  br label %66

63:                                               ; preds = %56
  %64 = zext i32 %46 to i64
  %65 = or i32 %57, 4096
  tail call void @nvif_object_wr(ptr noundef %16, i32 noundef 4, i64 noundef %64, i32 noundef %65) #5
  br label %66

66:                                               ; preds = %63, %60
  %67 = select i1 %25, i32 6301792, i32 6293600
  %68 = load ptr, ptr %47, align 8
  %69 = icmp eq ptr %68, null
  br i1 %69, label %73, label %70, !prof !8

70:                                               ; preds = %66
  %71 = getelementptr i8, ptr %68, i32 %67
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %71) #5, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !12
  br label %76

73:                                               ; preds = %66
  %74 = zext i32 %67 to i64
  %75 = tail call i32 @nvif_object_rd(ptr noundef %16, i32 noundef 4, i64 noundef %74) #5
  br label %76

76:                                               ; preds = %73, %70
  %77 = phi i32 [ %72, %70 ], [ %75, %73 ]
  %78 = load ptr, ptr %47, align 8
  %79 = icmp eq ptr %78, null
  br i1 %79, label %83, label %80, !prof !8

80:                                               ; preds = %76
  %81 = and i32 %77, -4097
  %82 = getelementptr i8, ptr %78, i32 %67
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %82, i32 %81) #5, !srcloc !10
  br label %86

83:                                               ; preds = %76
  %84 = zext i32 %67 to i64
  %85 = and i32 %77, -4097
  tail call void @nvif_object_wr(ptr noundef %16, i32 noundef 4, i64 noundef %84, i32 noundef %85) #5
  br label %86

86:                                               ; preds = %83, %80
  %87 = load ptr, ptr %47, align 8
  %88 = icmp eq ptr %87, null
  %89 = shl nuw nsw i8 %20, 2
  %90 = zext i8 %89 to i32
  %91 = or i32 %90, 35072
  br i1 %88, label %94, label %92, !prof !8

92:                                               ; preds = %86
  %93 = getelementptr i8, ptr %87, i32 %91
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %93, i32 0) #5, !srcloc !10
  br label %96

94:                                               ; preds = %86
  %95 = zext i32 %91 to i64
  tail call void @nvif_object_wr(ptr noundef %16, i32 noundef 4, i64 noundef %95, i32 noundef 0) #5
  br label %96

96:                                               ; preds = %94, %92
  %97 = load ptr, ptr %47, align 8
  %98 = icmp eq ptr %97, null
  br i1 %98, label %107, label %99, !prof !8

99:                                               ; preds = %96
  %100 = getelementptr inbounds %struct.nouveau_bo, ptr %42, i32 0, i32 13
  %101 = load i64, ptr %100, align 8
  %102 = trunc i64 %101 to i32
  %103 = shl nuw nsw i8 %20, 2
  %104 = zext i8 %103 to i32
  %105 = or i32 %104, 35104
  %106 = getelementptr i8, ptr %97, i32 %105
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %106, i32 %102) #5, !srcloc !10
  br label %115

107:                                              ; preds = %96
  %108 = shl nuw nsw i8 %20, 2
  %109 = zext i8 %108 to i32
  %110 = or i32 %109, 35104
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds %struct.nouveau_bo, ptr %42, i32 0, i32 13
  %113 = load i64, ptr %112, align 8
  %114 = trunc i64 %113 to i32
  tail call void @nvif_object_wr(ptr noundef %16, i32 noundef 4, i64 noundef %111, i32 noundef %114) #5
  br label %115

115:                                              ; preds = %107, %99
  %116 = load ptr, ptr %47, align 8
  %117 = icmp eq ptr %116, null
  br i1 %117, label %125, label %118, !prof !8

118:                                              ; preds = %115
  %119 = and i32 %10, -65536
  %120 = or i32 %119, %31
  %121 = shl nuw nsw i8 %20, 2
  %122 = zext i8 %121 to i32
  %123 = or i32 %122, 35112
  %124 = getelementptr i8, ptr %116, i32 %123
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %124, i32 %120) #5, !srcloc !10
  br label %132

125:                                              ; preds = %115
  %126 = shl nuw nsw i8 %20, 2
  %127 = zext i8 %126 to i32
  %128 = or i32 %127, 35112
  %129 = zext i32 %128 to i64
  %130 = and i32 %10, -65536
  %131 = or i32 %130, %31
  tail call void @nvif_object_wr(ptr noundef %16, i32 noundef 4, i64 noundef %129, i32 noundef %131) #5
  br label %132

132:                                              ; preds = %125, %118
  %133 = load ptr, ptr %47, align 8
  %134 = icmp eq ptr %133, null
  br i1 %134, label %141, label %135, !prof !8

135:                                              ; preds = %132
  %136 = or i32 %30, %29
  %137 = shl nuw nsw i8 %20, 2
  %138 = zext i8 %137 to i32
  %139 = or i32 %138, 35120
  %140 = getelementptr i8, ptr %133, i32 %139
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %140, i32 %136) #5, !srcloc !10
  br label %147

141:                                              ; preds = %132
  %142 = shl nuw nsw i8 %20, 2
  %143 = zext i8 %142 to i32
  %144 = or i32 %143, 35120
  %145 = zext i32 %144 to i64
  %146 = or i32 %30, %29
  tail call void @nvif_object_wr(ptr noundef %16, i32 noundef 4, i64 noundef %145, i32 noundef %146) #5
  br label %147

147:                                              ; preds = %141, %135
  %148 = load ptr, ptr %47, align 8
  %149 = icmp eq ptr %148, null
  br i1 %149, label %157, label %150, !prof !8

150:                                              ; preds = %147
  %151 = shl i32 %31, 20
  %152 = udiv i32 %151, %5
  %153 = shl nuw nsw i8 %20, 2
  %154 = zext i8 %153 to i32
  %155 = or i32 %154, 35128
  %156 = getelementptr i8, ptr %148, i32 %155
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %156, i32 %152) #5, !srcloc !10
  br label %164

157:                                              ; preds = %147
  %158 = shl nuw nsw i8 %20, 2
  %159 = zext i8 %158 to i32
  %160 = or i32 %159, 35128
  %161 = zext i32 %160 to i64
  %162 = shl i32 %31, 20
  %163 = udiv i32 %162, %5
  tail call void @nvif_object_wr(ptr noundef %16, i32 noundef 4, i64 noundef %161, i32 noundef %163) #5
  br label %164

164:                                              ; preds = %157, %150
  %165 = load ptr, ptr %47, align 8
  %166 = icmp eq ptr %165, null
  br i1 %166, label %174, label %167, !prof !8

167:                                              ; preds = %164
  %168 = shl i32 %32, 20
  %169 = udiv i32 %168, %6
  %170 = shl nuw nsw i8 %20, 2
  %171 = zext i8 %170 to i32
  %172 = or i32 %171, 35136
  %173 = getelementptr i8, ptr %165, i32 %172
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %173, i32 %169) #5, !srcloc !10
  br label %181

174:                                              ; preds = %164
  %175 = shl nuw nsw i8 %20, 2
  %176 = zext i8 %175 to i32
  %177 = or i32 %176, 35136
  %178 = zext i32 %177 to i64
  %179 = shl i32 %32, 20
  %180 = udiv i32 %179, %6
  tail call void @nvif_object_wr(ptr noundef %16, i32 noundef 4, i64 noundef %178, i32 noundef %180) #5
  br label %181

181:                                              ; preds = %174, %167
  %182 = load ptr, ptr %47, align 8
  %183 = icmp eq ptr %182, null
  br i1 %183, label %191, label %184, !prof !8

184:                                              ; preds = %181
  %185 = shl i32 %4, 16
  %186 = or i32 %185, %3
  %187 = shl nuw nsw i8 %20, 2
  %188 = zext i8 %187 to i32
  %189 = or i32 %188, 35144
  %190 = getelementptr i8, ptr %182, i32 %189
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %190, i32 %186) #5, !srcloc !10
  br label %198

191:                                              ; preds = %181
  %192 = shl nuw nsw i8 %20, 2
  %193 = zext i8 %192 to i32
  %194 = or i32 %193, 35144
  %195 = zext i32 %194 to i64
  %196 = shl i32 %4, 16
  %197 = or i32 %196, %3
  tail call void @nvif_object_wr(ptr noundef %16, i32 noundef 4, i64 noundef %195, i32 noundef %197) #5
  br label %198

198:                                              ; preds = %191, %184
  %199 = load ptr, ptr %47, align 8
  %200 = icmp eq ptr %199, null
  br i1 %200, label %208, label %201, !prof !8

201:                                              ; preds = %198
  %202 = shl i32 %6, 16
  %203 = or i32 %202, %5
  %204 = shl nuw nsw i8 %20, 2
  %205 = zext i8 %204 to i32
  %206 = or i32 %205, 35152
  %207 = getelementptr i8, ptr %199, i32 %206
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %207, i32 %203) #5, !srcloc !10
  br label %215

208:                                              ; preds = %198
  %209 = shl nuw nsw i8 %20, 2
  %210 = zext i8 %209 to i32
  %211 = or i32 %210, 35152
  %212 = zext i32 %211 to i64
  %213 = shl i32 %6, 16
  %214 = or i32 %213, %5
  tail call void @nvif_object_wr(ptr noundef %16, i32 noundef 4, i64 noundef %212, i32 noundef %214) #5
  br label %215

215:                                              ; preds = %208, %201
  %216 = getelementptr inbounds %struct.drm_framebuffer, ptr %2, i32 0, i32 4
  %217 = load ptr, ptr %216, align 8
  %218 = load i32, ptr %217, align 4
  %219 = icmp eq i32 %218, 1448695129
  %220 = icmp eq i32 %218, 842094158
  %221 = or i1 %219, %220
  %222 = select i1 %221, i32 65536, i32 0
  switch i32 %218, label %225 [
    i32 842094158, label %223
    i32 825382478, label %223
  ]

223:                                              ; preds = %215, %215
  %224 = or i32 %222, 1
  br label %225

225:                                              ; preds = %223, %215
  %226 = phi i32 [ %224, %223 ], [ %222, %215 ]
  %227 = getelementptr inbounds %struct.nouveau_plane, ptr %0, i32 0, i32 9
  %228 = load i32, ptr %227, align 8
  %229 = icmp eq i32 %228, 1
  %230 = or i32 %226, 16777216
  %231 = select i1 %229, i32 %230, i32 %226
  %232 = getelementptr inbounds %struct.nouveau_plane, ptr %0, i32 0, i32 4
  %233 = load i32, ptr %232, align 4
  %234 = lshr i32 %233, 4
  %235 = and i32 %234, 1048576
  %236 = or i32 %235, %231
  %237 = and i32 %231, 1
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %274, label %239

239:                                              ; preds = %225
  %240 = load ptr, ptr %47, align 8
  %241 = icmp eq ptr %240, null
  %242 = shl nuw nsw i8 %20, 2
  %243 = zext i8 %242 to i32
  %244 = or i32 %243, 34816
  br i1 %241, label %247, label %245, !prof !8

245:                                              ; preds = %239
  %246 = getelementptr i8, ptr %240, i32 %244
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %246, i32 0) #5, !srcloc !10
  br label %249

247:                                              ; preds = %239
  %248 = zext i32 %244 to i64
  tail call void @nvif_object_wr(ptr noundef %16, i32 noundef 4, i64 noundef %248, i32 noundef 0) #5
  br label %249

249:                                              ; preds = %247, %245
  %250 = load ptr, ptr %47, align 8
  %251 = icmp eq ptr %250, null
  br i1 %251, label %263, label %252, !prof !8

252:                                              ; preds = %249
  %253 = getelementptr inbounds %struct.nouveau_bo, ptr %42, i32 0, i32 13
  %254 = load i64, ptr %253, align 8
  %255 = getelementptr %struct.drm_framebuffer, ptr %2, i32 0, i32 7, i32 1
  %256 = load i32, ptr %255, align 4
  %257 = trunc i64 %254 to i32
  %258 = add i32 %256, %257
  %259 = shl nuw nsw i8 %20, 2
  %260 = zext i8 %259 to i32
  %261 = or i32 %260, 34848
  %262 = getelementptr i8, ptr %250, i32 %261
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %262, i32 %258) #5, !srcloc !10
  br label %274

263:                                              ; preds = %249
  %264 = shl nuw nsw i8 %20, 2
  %265 = zext i8 %264 to i32
  %266 = or i32 %265, 34848
  %267 = zext i32 %266 to i64
  %268 = getelementptr inbounds %struct.nouveau_bo, ptr %42, i32 0, i32 13
  %269 = load i64, ptr %268, align 8
  %270 = getelementptr %struct.drm_framebuffer, ptr %2, i32 0, i32 7, i32 1
  %271 = load i32, ptr %270, align 4
  %272 = trunc i64 %269 to i32
  %273 = add i32 %271, %272
  tail call void @nvif_object_wr(ptr noundef %16, i32 noundef 4, i64 noundef %267, i32 noundef %273) #5
  br label %274

274:                                              ; preds = %263, %252, %225
  %275 = load ptr, ptr %47, align 8
  %276 = icmp eq ptr %275, null
  br i1 %276, label %285, label %277, !prof !8

277:                                              ; preds = %274
  %278 = getelementptr inbounds %struct.drm_framebuffer, ptr %2, i32 0, i32 6
  %279 = load i32, ptr %278, align 8
  %280 = or i32 %279, %236
  %281 = shl nuw nsw i8 %20, 2
  %282 = zext i8 %281 to i32
  %283 = or i32 %282, 35160
  %284 = getelementptr i8, ptr %275, i32 %283
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %284, i32 %280) #5, !srcloc !10
  br label %293

285:                                              ; preds = %274
  %286 = shl nuw nsw i8 %20, 2
  %287 = zext i8 %286 to i32
  %288 = or i32 %287, 35160
  %289 = zext i32 %288 to i64
  %290 = getelementptr inbounds %struct.drm_framebuffer, ptr %2, i32 0, i32 6
  %291 = load i32, ptr %290, align 8
  %292 = or i32 %291, %236
  tail call void @nvif_object_wr(ptr noundef %16, i32 noundef 4, i64 noundef %289, i32 noundef %292) #5
  br label %293

293:                                              ; preds = %285, %277
  %294 = load ptr, ptr %47, align 8
  %295 = icmp eq ptr %294, null
  br i1 %295, label %298, label %296, !prof !8

296:                                              ; preds = %293
  %297 = getelementptr i8, ptr %294, i32 34564
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %297, i32 0) #5, !srcloc !10
  br label %299

298:                                              ; preds = %293
  tail call void @nvif_object_wr(ptr noundef %16, i32 noundef 4, i64 noundef 34564, i32 noundef 0) #5
  br label %299

299:                                              ; preds = %298, %296
  %300 = load ptr, ptr %47, align 8
  %301 = icmp eq ptr %300, null
  %302 = select i1 %21, i32 1, i32 16
  br i1 %301, label %305, label %303, !prof !8

303:                                              ; preds = %299
  %304 = getelementptr i8, ptr %300, i32 34560
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %304, i32 %302) #5, !srcloc !10
  br label %306

305:                                              ; preds = %299
  tail call void @nvif_object_wr(ptr noundef %16, i32 noundef 4, i64 noundef 34560, i32 noundef %302) #5
  br label %306

306:                                              ; preds = %305, %303
  %307 = xor i8 %20, 1
  store i8 %307, ptr %19, align 8
  %308 = icmp eq ptr %18, null
  br i1 %308, label %311, label %309

309:                                              ; preds = %306
  %310 = tail call i32 @nouveau_bo_unpin(ptr noundef nonnull %18) #5
  br label %311

311:                                              ; preds = %309, %306, %40, %39
  %312 = phi i32 [ -34, %39 ], [ %43, %40 ], [ 0, %309 ], [ 0, %306 ]
  ret i32 %312
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv10_disable_plane(ptr nocapture noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 3, i32 0, i32 6
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9, !prof !8

9:                                                ; preds = %2
  %10 = getelementptr i8, ptr %7, i32 34564
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 1) #5, !srcloc !10
  br label %13

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %12, i32 noundef 4, i64 noundef 34564, i32 noundef 1) #5
  br label %13

13:                                               ; preds = %11, %9
  %14 = getelementptr inbounds %struct.nouveau_plane, ptr %0, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = tail call i32 @nouveau_bo_unpin(ptr noundef nonnull %15) #5
  store ptr null, ptr %14, align 4
  br label %19

19:                                               ; preds = %17, %13
  ret i32 0
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind allocsize(2) }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }

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
!9 = !{i64 2152938552}
!10 = !{i64 5404949}
!11 = !{i64 5405367}
!12 = !{i64 2152937330}
!13 = !{i8 0, i8 2}
