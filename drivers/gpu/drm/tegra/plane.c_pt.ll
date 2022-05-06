; ModuleID = '/llk/IR/drivers/gpu/drm/tegra/plane.c_pt.bc'
source_filename = "../drivers/gpu/drm/tegra/plane.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_plane_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.tegra_plane = type { %struct.drm_plane, ptr, i32, i32, ptr, ptr }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.tegra_plane_state = type { %struct.drm_plane_state, [3 x ptr], [3 x i32], %struct.tegra_bo_tiling, i32, i32, i8, i8, [2 x %struct.tegra_plane_legacy_blending_state], i8, i32, i32, i32 }
%struct.tegra_bo_tiling = type { i32, i32, i32 }
%struct.tegra_plane_legacy_blending_state = type { i8, i8 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.68, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.78, ptr, i32, ptr, i8, i32 }
%struct.anon.68 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
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
%struct.anon.78 = type { i32, ptr }
%struct.tegra_dc = type { %struct.host1x_client, ptr, ptr, %struct.drm_crtc, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.tegra_dc_stats, %struct.list_head, ptr, ptr, i8 }
%struct.host1x_client = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.mutex, %struct.host1x_bo_cache }
%struct.host1x_bo_cache = type { %struct.list_head, %struct.mutex }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.tegra_dc_stats = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tegra_dc_soc_info = type { i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, ptr, i32, ptr, i32, ptr, i32, ptr, i8, i8, i8, i8, i8 }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.73, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.73 = type { [4 x i8] }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.tegra_bo = type { %struct.drm_gem_object, %struct.host1x_bo, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.tegra_bo_tiling }
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
%struct.host1x_bo = type { ptr, %struct.list_head, %struct.spinlock }
%struct.host1x_bo_mapping = type { %struct.kref, ptr, i32, %struct.list_head, ptr, ptr, i32, ptr, i32, i32, ptr, %struct.list_head }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.tegra_dc_state = type { %struct.drm_crtc_state, ptr, i32, i32, i32 }
%struct.__drm_planes_state = type { ptr, ptr, ptr, ptr }

@tegra_plane_funcs = dso_local local_unnamed_addr constant %struct.drm_plane_funcs { ptr @drm_atomic_helper_update_plane, ptr @drm_atomic_helper_disable_plane, ptr @tegra_plane_destroy, ptr @tegra_plane_reset, ptr null, ptr @tegra_plane_atomic_duplicate_state, ptr @tegra_plane_atomic_destroy_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_plane_format_mod_supported }, align 4
@tegra_plane_icc_names = internal unnamed_addr constant [7 x ptr] [ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr null, ptr null, ptr null, ptr @.str.7], align 4
@.str = private unnamed_addr constant [30 x i8] c"drivers/gpu/drm/tegra/plane.c\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"failed to get %s interconnect\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"winb-vfilter\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"failed to map plane %u: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"wina\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"winb\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"winc\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"cursor\00", align 1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_update_plane(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_disable_plane(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_plane_destroy(ptr noundef %0) #1 {
  tail call void @drm_plane_cleanup(ptr noundef %0) #9
  tail call void @kfree(ptr noundef %0) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_plane_reset(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 19
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  tail call void @__drm_atomic_helper_plane_destroy_state(ptr noundef nonnull %3) #9
  %6 = load ptr, ptr %2, align 4
  br label %7

7:                                                ; preds = %5, %1
  %8 = phi ptr [ %6, %5 ], [ null, %1 ]
  tail call void @kfree(ptr noundef %8) #9
  store ptr null, ptr %2, align 4
  %9 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %10 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 188) #10
  %11 = icmp eq ptr %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %7
  store ptr %10, ptr %2, align 4
  store ptr %0, ptr %10, align 8
  %13 = getelementptr inbounds %struct.tegra_plane, ptr %0, i32 0, i32 3
  %14 = load i32, ptr %13, align 8
  %15 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 15
  store i32 %14, ptr %15, align 8
  %16 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 16
  store i32 %14, ptr %16, align 4
  %17 = getelementptr i8, ptr %10, i32 136
  call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(12) %17, i8 -1, i32 12, i1 false)
  br label %18

18:                                               ; preds = %12, %7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @tegra_plane_atomic_duplicate_state(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 19
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 188) #10
  %6 = icmp eq ptr %5, null
  br i1 %6, label %46, label %7

7:                                                ; preds = %1
  tail call void @__drm_atomic_helper_plane_duplicate_state(ptr noundef %0, ptr noundef nonnull %5) #9
  %8 = getelementptr inbounds %struct.tegra_plane_state, ptr %5, i32 0, i32 3
  %9 = getelementptr inbounds %struct.tegra_plane_state, ptr %3, i32 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %8, ptr noundef align 4 dereferenceable(12) %9, i32 12, i1 false)
  %10 = getelementptr inbounds %struct.tegra_plane_state, ptr %3, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.tegra_plane_state, ptr %5, i32 0, i32 4
  store i32 %11, ptr %12, align 8
  %13 = getelementptr inbounds %struct.tegra_plane_state, ptr %3, i32 0, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.tegra_plane_state, ptr %5, i32 0, i32 5
  store i32 %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.tegra_plane_state, ptr %3, i32 0, i32 6
  %17 = load i8, ptr %16, align 4, !range !8
  %18 = getelementptr inbounds %struct.tegra_plane_state, ptr %5, i32 0, i32 6
  store i8 %17, ptr %18, align 8
  %19 = getelementptr inbounds %struct.tegra_plane_state, ptr %3, i32 0, i32 7
  %20 = load i8, ptr %19, align 1, !range !8
  %21 = getelementptr inbounds %struct.tegra_plane_state, ptr %5, i32 0, i32 7
  store i8 %20, ptr %21, align 1
  %22 = getelementptr inbounds %struct.tegra_plane_state, ptr %3, i32 0, i32 9
  %23 = load i8, ptr %22, align 2, !range !8
  %24 = getelementptr inbounds %struct.tegra_plane_state, ptr %5, i32 0, i32 9
  store i8 %23, ptr %24, align 2
  %25 = getelementptr inbounds %struct.tegra_plane_state, ptr %3, i32 0, i32 10
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.tegra_plane_state, ptr %5, i32 0, i32 10
  store i32 %26, ptr %27, align 8
  %28 = getelementptr inbounds %struct.tegra_plane_state, ptr %3, i32 0, i32 11
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.tegra_plane_state, ptr %5, i32 0, i32 11
  store i32 %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.tegra_plane_state, ptr %3, i32 0, i32 12
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.tegra_plane_state, ptr %5, i32 0, i32 12
  store i32 %32, ptr %33, align 8
  %34 = getelementptr %struct.tegra_plane_state, ptr %5, i32 0, i32 8, i32 0
  %35 = getelementptr %struct.tegra_plane_state, ptr %3, i32 0, i32 8, i32 0
  %36 = load i16, ptr %35, align 2
  store i16 %36, ptr %34, align 2
  %37 = getelementptr %struct.tegra_plane_state, ptr %5, i32 0, i32 8, i32 1
  %38 = getelementptr %struct.tegra_plane_state, ptr %3, i32 0, i32 8, i32 1
  %39 = load i16, ptr %38, align 2
  store i16 %39, ptr %37, align 4
  %40 = getelementptr %struct.tegra_plane_state, ptr %5, i32 0, i32 2, i32 0
  store i32 -1, ptr %40, align 8
  %41 = getelementptr %struct.tegra_plane_state, ptr %5, i32 0, i32 1, i32 0
  store ptr null, ptr %41, align 4
  %42 = getelementptr %struct.tegra_plane_state, ptr %5, i32 0, i32 2, i32 1
  store i32 -1, ptr %42, align 4
  %43 = getelementptr %struct.tegra_plane_state, ptr %5, i32 0, i32 1, i32 1
  store ptr null, ptr %43, align 8
  %44 = getelementptr %struct.tegra_plane_state, ptr %5, i32 0, i32 2, i32 2
  store i32 -1, ptr %44, align 8
  %45 = getelementptr %struct.tegra_plane_state, ptr %5, i32 0, i32 1, i32 2
  store ptr null, ptr %45, align 4
  br label %46

46:                                               ; preds = %7, %1
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_plane_atomic_destroy_state(ptr nocapture noundef readnone %0, ptr noundef %1) #1 {
  tail call void @__drm_atomic_helper_plane_destroy_state(ptr noundef %1) #9
  tail call void @kfree(ptr noundef %1) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @tegra_plane_format_mod_supported(ptr nocapture noundef readonly %0, i32 noundef %1, i64 noundef %2) #1 {
  %4 = tail call ptr @drm_format_info(i32 noundef %1) #9
  %5 = icmp eq i64 %2, 0
  br i1 %5, label %41, label %6

6:                                                ; preds = %3
  %7 = and i64 %2, -72057594033733632
  %8 = icmp eq i64 %7, 216172782117978112
  br i1 %8, label %9, label %37

9:                                                ; preds = %6
  %10 = load ptr, ptr %0, align 8
  %11 = getelementptr inbounds %struct.drm_device, ptr %10, i32 0, i32 30, i32 20
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %11
  br i1 %13, label %37, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 5
  %16 = load i32, ptr %15, align 4
  br label %17

17:                                               ; preds = %34, %14
  %18 = phi ptr [ %12, %14 ], [ %35, %34 ]
  %19 = getelementptr i8, ptr %18, i32 72
  %20 = load i32, ptr %19, align 8
  %21 = shl nuw i32 1, %20
  %22 = and i32 %21, %16
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %34, label %24

24:                                               ; preds = %17
  %25 = getelementptr i8, ptr %18, i32 -8
  %26 = icmp eq ptr %25, null
  %27 = getelementptr i8, ptr %18, i32 -112
  %28 = select i1 %26, ptr null, ptr %27
  %29 = getelementptr inbounds %struct.tegra_dc, ptr %28, i32 0, i32 14
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %30, i32 0, i32 4
  %32 = load i8, ptr %31, align 4, !range !8
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %24, %17
  %35 = load ptr, ptr %18, align 4
  %36 = icmp eq ptr %35, %11
  br i1 %36, label %37, label %17

37:                                               ; preds = %34, %9, %6
  %38 = getelementptr inbounds %struct.drm_format_info, ptr %4, i32 0, i32 2
  %39 = load i8, ptr %38, align 1
  %40 = icmp eq i8 %39, 1
  br label %41

41:                                               ; preds = %37, %24, %3
  %42 = phi i1 [ true, %3 ], [ %40, %37 ], [ false, %24 ]
  ret i1 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tegra_plane_prepare_fb(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  %6 = getelementptr i8, ptr %4, i32 -104
  %7 = select i1 %5, ptr null, ptr %6
  %8 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %70, label %11

11:                                               ; preds = %2
  %12 = tail call i32 @drm_gem_plane_helper_prepare_fb(ptr noundef %0, ptr noundef %1) #9
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %70, label %14

14:                                               ; preds = %11
  %15 = load ptr, ptr %8, align 4
  %16 = getelementptr inbounds %struct.drm_framebuffer, ptr %15, i32 0, i32 4
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.drm_format_info, ptr %17, i32 0, i32 2
  %19 = load i8, ptr %18, align 1
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %70, label %21

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.tegra_dc, ptr %7, i32 0, i32 2
  %23 = getelementptr inbounds %struct.host1x_client, ptr %7, i32 0, i32 12
  %24 = getelementptr inbounds %struct.host1x_client, ptr %7, i32 0, i32 3
  br label %25

25:                                               ; preds = %46, %21
  %26 = phi ptr [ %15, %21 ], [ %52, %46 ]
  %27 = phi i32 [ 0, %21 ], [ %51, %46 ]
  %28 = tail call ptr @tegra_fb_get_plane(ptr noundef %26, i32 noundef %27) #9
  %29 = load ptr, ptr %22, align 4
  %30 = getelementptr inbounds %struct.tegra_bo, ptr %28, i32 0, i32 1
  %31 = tail call ptr @host1x_bo_pin(ptr noundef %29, ptr noundef %30, i32 noundef 1, ptr noundef %23) #9
  %32 = icmp ugt ptr %31, inttoptr (i32 -4096 to ptr)
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = ptrtoint ptr %31 to i32
  br label %59

35:                                               ; preds = %25
  %36 = load ptr, ptr %24, align 8
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.host1x_bo_mapping, ptr %31, i32 0, i32 6
  %40 = load i32, ptr %39, align 4
  %41 = icmp ugt i32 %40, 1
  br i1 %41, label %59, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.host1x_bo_mapping, ptr %31, i32 0, i32 8
  br label %46

44:                                               ; preds = %35
  %45 = getelementptr inbounds %struct.tegra_bo, ptr %28, i32 0, i32 4
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi ptr [ %45, %44 ], [ %43, %42 ]
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr %struct.tegra_plane_state, ptr %1, i32 0, i32 2, i32 %27
  store i32 %48, ptr %49, align 4
  %50 = getelementptr %struct.tegra_plane_state, ptr %1, i32 0, i32 1, i32 %27
  store ptr %31, ptr %50, align 4
  %51 = add nuw nsw i32 %27, 1
  %52 = load ptr, ptr %8, align 4
  %53 = getelementptr inbounds %struct.drm_framebuffer, ptr %52, i32 0, i32 4
  %54 = load ptr, ptr %53, align 8
  %55 = getelementptr inbounds %struct.drm_format_info, ptr %54, i32 0, i32 2
  %56 = load i8, ptr %55, align 1
  %57 = zext i8 %56 to i32
  %58 = icmp ult i32 %51, %57
  br i1 %58, label %25, label %70

59:                                               ; preds = %38, %33
  %60 = phi i32 [ %34, %33 ], [ -22, %38 ]
  %61 = load ptr, ptr %22, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.3, i32 noundef %27, i32 noundef %60) #11
  %62 = icmp eq i32 %27, 0
  br i1 %62, label %70, label %63

63:                                               ; preds = %63, %59
  %64 = phi i32 [ %65, %63 ], [ %27, %59 ]
  %65 = add nsw i32 %64, -1
  %66 = getelementptr %struct.tegra_plane_state, ptr %1, i32 0, i32 1, i32 %65
  %67 = load ptr, ptr %66, align 4
  tail call void @host1x_bo_unpin(ptr noundef %67) #9
  %68 = getelementptr %struct.tegra_plane_state, ptr %1, i32 0, i32 2, i32 %65
  store i32 -1, ptr %68, align 4
  store ptr null, ptr %66, align 4
  %69 = icmp eq i32 %65, 0
  br i1 %69, label %70, label %63

70:                                               ; preds = %63, %59, %46, %14, %11, %2
  %71 = phi i32 [ 0, %2 ], [ %12, %11 ], [ %60, %59 ], [ 0, %14 ], [ %60, %63 ], [ 0, %46 ]
  ret i32 %71
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_plane_helper_prepare_fb(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tegra_plane_cleanup_fb(ptr nocapture noundef readnone %0, ptr nocapture noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  %6 = getelementptr i8, ptr %4, i32 -104
  %7 = icmp eq ptr %6, null
  %8 = or i1 %5, %7
  br i1 %8, label %30, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.drm_framebuffer, ptr %11, i32 0, i32 4
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.drm_format_info, ptr %13, i32 0, i32 2
  %15 = load i8, ptr %14, align 1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %30, label %17

17:                                               ; preds = %17, %9
  %18 = phi i32 [ %22, %17 ], [ 0, %9 ]
  %19 = getelementptr %struct.tegra_plane_state, ptr %1, i32 0, i32 1, i32 %18
  %20 = load ptr, ptr %19, align 4
  tail call void @host1x_bo_unpin(ptr noundef %20) #9
  %21 = getelementptr %struct.tegra_plane_state, ptr %1, i32 0, i32 2, i32 %18
  store i32 -1, ptr %21, align 4
  store ptr null, ptr %19, align 4
  %22 = add nuw nsw i32 %18, 1
  %23 = load ptr, ptr %10, align 4
  %24 = getelementptr inbounds %struct.drm_framebuffer, ptr %23, i32 0, i32 4
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %struct.drm_format_info, ptr %25, i32 0, i32 2
  %27 = load i8, ptr %26, align 1
  %28 = zext i8 %27 to i32
  %29 = icmp ult i32 %22, %28
  br i1 %29, label %17, label %30

30:                                               ; preds = %17, %9, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tegra_plane_state_add(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 25
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = tail call ptr @drm_atomic_get_crtc_state(ptr noundef %4, ptr noundef %6) #9
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = ptrtoint ptr %7 to i32
  br label %133

11:                                               ; preds = %2
  %12 = tail call i32 @drm_atomic_helper_check_plane_state(ptr noundef %1, ptr noundef %7, i32 noundef 0, i32 noundef 2147483647, i1 noundef zeroext true, i1 noundef zeroext true) #9
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %133, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 22
  %16 = load i8, ptr %15, align 4, !range !8
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %126, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr %3, align 4
  %20 = load ptr, ptr %5, align 4
  %21 = getelementptr inbounds %struct.drm_atomic_state, ptr %19, i32 0, i32 4
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.drm_crtc, ptr %20, i32 0, i32 8
  %24 = load i32, ptr %23, align 8
  %25 = getelementptr %struct.__drm_crtcs_state, ptr %22, i32 %24, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %133, label %28

28:                                               ; preds = %18
  %29 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 20
  %30 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 20, i32 2
  %31 = load i32, ptr %30, align 4
  %32 = load i32, ptr %29, align 4
  %33 = sub i32 %31, %32
  %34 = ashr i32 %33, 16
  %35 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 20, i32 3
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 20, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = sub i32 %36, %38
  %40 = ashr i32 %39, 16
  %41 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 21
  %42 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 21, i32 2
  %43 = load i32, ptr %42, align 4
  %44 = load i32, ptr %41, align 4
  %45 = sub i32 %43, %44
  %46 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 21, i32 3
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 21, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = sub i32 %47, %49
  %51 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 2
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.drm_framebuffer, ptr %52, i32 0, i32 4
  %54 = load ptr, ptr %53, align 8
  %55 = icmp eq ptr %20, null
  %56 = getelementptr i8, ptr %20, i32 -104
  %57 = select i1 %55, ptr null, ptr %56
  %58 = getelementptr inbounds %struct.tegra_dc, ptr %57, i32 0, i32 14
  %59 = load ptr, ptr %58, align 8
  %60 = getelementptr inbounds %struct.drm_format_info, ptr %54, i32 0, i32 2
  %61 = load i8, ptr %60, align 1
  %62 = zext i8 %61 to i32
  %63 = icmp eq i8 %61, 0
  br i1 %63, label %86, label %64

64:                                               ; preds = %28
  %65 = getelementptr inbounds %struct.drm_format_info, ptr %54, i32 0, i32 3
  %66 = load i8, ptr %65, align 1
  %67 = zext i8 %66 to i32
  %68 = shl nuw nsw i32 %67, 3
  %69 = icmp eq i8 %61, 1
  br i1 %69, label %86, label %70

70:                                               ; preds = %64
  %71 = getelementptr inbounds %struct.drm_format_info, ptr %54, i32 0, i32 6
  %72 = load i8, ptr %71, align 2
  %73 = zext i8 %72 to i16
  br label %74

74:                                               ; preds = %74, %70
  %75 = phi i32 [ 1, %70 ], [ %84, %74 ]
  %76 = phi i32 [ %68, %70 ], [ %83, %74 ]
  %77 = getelementptr [4 x i8], ptr %65, i32 0, i32 %75
  %78 = load i8, ptr %77, align 1
  %79 = zext i8 %78 to i16
  %80 = shl nuw nsw i16 %79, 3
  %81 = udiv i16 %80, %73
  %82 = zext i16 %81 to i32
  %83 = add i32 %76, %82
  %84 = add nuw nsw i32 %75, 1
  %85 = icmp eq i32 %84, %62
  br i1 %85, label %86, label %74, !llvm.loop !9

86:                                               ; preds = %74, %64, %28
  %87 = phi i32 [ 0, %28 ], [ %68, %64 ], [ %83, %74 ]
  %88 = tail call i32 @llvm.umin.i32(i32 %34, i32 %45) #9
  %89 = tail call i32 @llvm.umin.i32(i32 %40, i32 %50) #9
  %90 = mul i32 %89, %88
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds %struct.drm_crtc_state, ptr %26, i32 0, i32 7
  %93 = tail call i32 @drm_mode_vrefresh(ptr noundef %92) #9
  %94 = sext i32 %93 to i64
  %95 = zext i32 %87 to i64
  %96 = mul nuw i64 %95, %91
  %97 = mul i64 %96, %94
  %98 = add i64 %97, 7
  %99 = lshr i64 %98, 3
  %100 = add nuw nsw i64 %99, 999
  %101 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %100, i32 0) #12, !srcloc !11
  %102 = extractvalue { i64, i32 } %101, 0
  %103 = extractvalue { i64, i32 } %101, 1
  %104 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %100, i64 %102, i32 %103) #12, !srcloc !12
  %105 = extractvalue { i64, i32 } %104, 0
  %106 = lshr i64 %105, 9
  %107 = load i32, ptr %92, align 4
  %108 = mul i32 %107, %87
  %109 = add i32 %108, 7
  %110 = lshr i32 %109, 3
  %111 = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %59, i32 0, i32 20
  %112 = load i8, ptr %111, align 1, !range !8
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %118, label %114

114:                                              ; preds = %86
  %115 = getelementptr inbounds %struct.tegra_plane_state, ptr %1, i32 0, i32 3
  %116 = load i32, ptr %115, align 4
  %117 = icmp eq i32 %116, 1
  br i1 %117, label %119, label %118

118:                                              ; preds = %114, %86
  br label %119

119:                                              ; preds = %118, %114
  %120 = phi i32 [ 1, %118 ], [ 2, %114 ]
  %121 = mul nuw nsw i32 %120, %110
  %122 = getelementptr inbounds %struct.tegra_plane_state, ptr %1, i32 0, i32 11
  store i32 %121, ptr %122, align 4
  %123 = trunc i64 %106 to i32
  %124 = mul i32 %120, %123
  %125 = getelementptr inbounds %struct.tegra_plane_state, ptr %1, i32 0, i32 12
  store i32 %124, ptr %125, align 4
  br label %126

126:                                              ; preds = %119, %14
  %127 = getelementptr inbounds %struct.tegra_plane, ptr %0, i32 0, i32 3
  %128 = load i32, ptr %127, align 8
  %129 = shl i32 2, %128
  %130 = getelementptr inbounds %struct.tegra_dc_state, ptr %7, i32 0, i32 4
  %131 = load i32, ptr %130, align 4
  %132 = or i32 %131, %129
  store i32 %132, ptr %130, align 4
  br label %133

133:                                              ; preds = %126, %18, %11, %9
  %134 = phi i32 [ %10, %9 ], [ 0, %126 ], [ %12, %11 ], [ -22, %18 ]
  ret i32 %134
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_get_crtc_state(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_check_plane_state(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @tegra_plane_format(i32 noundef %0, ptr noundef writeonly %1, ptr noundef writeonly %2) local_unnamed_addr #2 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %3
  store i32 0, ptr %2, align 4
  br label %6

6:                                                ; preds = %5, %3
  switch i32 %0, label %30 [
    i32 842093121, label %7
    i32 892424769, label %8
    i32 909199186, label %9
    i32 892420434, label %10
    i32 875713089, label %11
    i32 875708993, label %12
    i32 842089025, label %13
    i32 892420673, label %14
    i32 892420418, label %15
    i32 892424792, label %16
    i32 892426322, label %17
    i32 892420696, label %18
    i32 892426306, label %19
    i32 909199170, label %20
    i32 875708738, label %21
    i32 875708754, label %22
    i32 875713112, label %23
    i32 875709016, label %24
    i32 1498831189, label %25
    i32 1448695129, label %26
    i32 842093913, label %28
    i32 909202777, label %29
  ]

7:                                                ; preds = %6
  store i32 4, ptr %1, align 4
  br label %30

8:                                                ; preds = %6
  store i32 5, ptr %1, align 4
  br label %30

9:                                                ; preds = %6
  store i32 6, ptr %1, align 4
  br label %30

10:                                               ; preds = %6
  store i32 7, ptr %1, align 4
  br label %30

11:                                               ; preds = %6
  store i32 12, ptr %1, align 4
  br label %30

12:                                               ; preds = %6
  store i32 13, ptr %1, align 4
  br label %30

13:                                               ; preds = %6
  store i32 27, ptr %1, align 4
  br label %30

14:                                               ; preds = %6
  store i32 28, ptr %1, align 4
  br label %30

15:                                               ; preds = %6
  store i32 29, ptr %1, align 4
  br label %30

16:                                               ; preds = %6
  store i32 30, ptr %1, align 4
  br label %30

17:                                               ; preds = %6
  store i32 31, ptr %1, align 4
  br label %30

18:                                               ; preds = %6
  store i32 32, ptr %1, align 4
  br label %30

19:                                               ; preds = %6
  store i32 33, ptr %1, align 4
  br label %30

20:                                               ; preds = %6
  store i32 34, ptr %1, align 4
  br label %30

21:                                               ; preds = %6
  store i32 35, ptr %1, align 4
  br label %30

22:                                               ; preds = %6
  store i32 36, ptr %1, align 4
  br label %30

23:                                               ; preds = %6
  store i32 37, ptr %1, align 4
  br label %30

24:                                               ; preds = %6
  store i32 38, ptr %1, align 4
  br label %30

25:                                               ; preds = %6
  store i32 16, ptr %1, align 4
  br label %30

26:                                               ; preds = %6
  br i1 %4, label %30, label %27

27:                                               ; preds = %26
  store i32 16, ptr %1, align 4
  store i32 1, ptr %2, align 4
  br label %30

28:                                               ; preds = %6
  store i32 18, ptr %1, align 4
  br label %30

29:                                               ; preds = %6
  store i32 20, ptr %1, align 4
  br label %30

30:                                               ; preds = %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6
  %31 = phi i32 [ -22, %26 ], [ -22, %6 ], [ 0, %29 ], [ 0, %28 ], [ 0, %27 ], [ 0, %25 ], [ 0, %24 ], [ 0, %23 ], [ 0, %22 ], [ 0, %21 ], [ 0, %20 ], [ 0, %19 ], [ 0, %18 ], [ 0, %17 ], [ 0, %16 ], [ 0, %15 ], [ 0, %14 ], [ 0, %13 ], [ 0, %12 ], [ 0, %11 ], [ 0, %10 ], [ 0, %9 ], [ 0, %8 ], [ 0, %7 ]
  ret i32 %31
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @tegra_plane_format_is_indexed(i32 noundef %0) local_unnamed_addr #3 {
  %2 = icmp ult i32 %0, 4
  ret i1 %2
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local zeroext i1 @tegra_plane_format_is_yuv(i32 noundef %0, ptr noundef writeonly %1, ptr noundef writeonly %2) local_unnamed_addr #2 {
  switch i32 %0, label %16 [
    i32 16, label %4
    i32 17, label %4
    i32 18, label %10
    i32 19, label %10
    i32 20, label %10
    i32 21, label %10
    i32 22, label %10
    i32 23, label %10
    i32 24, label %10
    i32 25, label %10
  ]

4:                                                ; preds = %3, %3
  %5 = icmp eq ptr %1, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %4
  store i8 0, ptr %1, align 1
  br label %7

7:                                                ; preds = %6, %4
  %8 = icmp eq ptr %2, null
  br i1 %8, label %19, label %9

9:                                                ; preds = %7
  store i32 8, ptr %2, align 4
  br label %19

10:                                               ; preds = %3, %3, %3, %3, %3, %3, %3, %3
  %11 = icmp eq ptr %1, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %10
  store i8 1, ptr %1, align 1
  br label %13

13:                                               ; preds = %12, %10
  %14 = icmp eq ptr %2, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %13
  store i32 8, ptr %2, align 4
  br label %19

16:                                               ; preds = %3
  %17 = icmp eq ptr %1, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %16
  store i8 0, ptr %1, align 1
  br label %19

19:                                               ; preds = %18, %16, %15, %13, %9, %7
  %20 = phi i1 [ true, %9 ], [ true, %7 ], [ true, %15 ], [ true, %13 ], [ false, %18 ], [ false, %16 ]
  ret i1 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tegra_plane_setup_legacy_state(ptr noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.tegra_plane_state, ptr %1, i32 0, i32 4
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, -5
  %6 = icmp ult i32 %5, 9
  br i1 %6, label %17, label %7

7:                                                ; preds = %17, %2
  %8 = add i32 %4, -16
  %9 = icmp ult i32 %8, 10
  br i1 %9, label %15, label %10

10:                                               ; preds = %7
  switch i32 %4, label %190 [
    i32 30, label %15
    i32 31, label %11
    i32 38, label %12
    i32 37, label %13
    i32 6, label %14
  ]

11:                                               ; preds = %10
  br label %15

12:                                               ; preds = %10
  br label %15

13:                                               ; preds = %10
  br label %15

14:                                               ; preds = %10
  br label %15

15:                                               ; preds = %14, %13, %12, %11, %10, %7
  %16 = phi i32 [ 6, %14 ], [ 12, %13 ], [ 13, %12 ], [ 7, %11 ], [ %4, %7 ], [ 5, %10 ]
  store i32 %16, ptr %3, align 4
  br label %22

17:                                               ; preds = %2
  %18 = trunc i32 %5 to i16
  %19 = lshr i16 389, %18
  %20 = and i16 %19, 1
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %7, label %22

22:                                               ; preds = %17, %15
  %23 = phi i8 [ 1, %15 ], [ 0, %17 ]
  %24 = getelementptr inbounds %struct.tegra_plane_state, ptr %1, i32 0, i32 9
  store i8 %23, ptr %24, align 2
  %25 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 25
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.drm_atomic_state, ptr %26, i32 0, i32 3
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 17
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr %struct.__drm_planes_state, ptr %28, i32 %30, i32 2
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.drm_plane_state, ptr %32, i32 0, i32 16
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 16
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %34, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %22
  %39 = getelementptr inbounds %struct.tegra_plane_state, ptr %32, i32 0, i32 9
  %40 = load i8, ptr %39, align 2, !range !8
  %41 = icmp eq i8 %40, %23
  br i1 %41, label %190, label %42

42:                                               ; preds = %38, %22
  %43 = load ptr, ptr %0, align 8
  %44 = getelementptr inbounds %struct.drm_device, ptr %43, i32 0, i32 30, i32 18
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, %44
  br i1 %46, label %74, label %47

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.tegra_plane, ptr %0, i32 0, i32 1
  br label %49

49:                                               ; preds = %65, %47
  %50 = phi ptr [ %43, %47 ], [ %66, %65 ]
  %51 = phi ptr [ %45, %47 ], [ %67, %65 ]
  %52 = getelementptr i8, ptr %51, i32 -4
  %53 = icmp eq ptr %52, %0
  br i1 %53, label %65, label %54

54:                                               ; preds = %49
  %55 = getelementptr i8, ptr %51, i32 452
  %56 = load ptr, ptr %55, align 8
  %57 = load ptr, ptr %48, align 8
  %58 = icmp eq ptr %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %54
  %60 = load ptr, ptr %25, align 4
  %61 = tail call ptr @drm_atomic_get_plane_state(ptr noundef %60, ptr noundef %52) #9
  %62 = icmp ugt ptr %61, inttoptr (i32 -4096 to ptr)
  br i1 %62, label %70, label %63

63:                                               ; preds = %59
  %64 = load ptr, ptr %0, align 8
  br label %65

65:                                               ; preds = %63, %54, %49
  %66 = phi ptr [ %64, %63 ], [ %50, %54 ], [ %50, %49 ]
  %67 = load ptr, ptr %51, align 4
  %68 = getelementptr inbounds %struct.drm_device, ptr %66, i32 0, i32 30, i32 18
  %69 = icmp eq ptr %67, %68
  br i1 %69, label %74, label %49

70:                                               ; preds = %59
  %71 = icmp slt ptr %61, inttoptr (i32 1 to ptr)
  br i1 %71, label %187, label %72

72:                                               ; preds = %70
  %73 = load ptr, ptr %0, align 8
  br label %74

74:                                               ; preds = %72, %65, %42
  %75 = phi ptr [ %73, %72 ], [ %43, %42 ], [ %66, %65 ]
  %76 = getelementptr inbounds %struct.drm_device, ptr %75, i32 0, i32 30, i32 18
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, %76
  br i1 %78, label %190, label %79

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct.tegra_plane, ptr %0, i32 0, i32 1
  br label %81

81:                                               ; preds = %182, %79
  %82 = phi ptr [ %75, %79 ], [ %183, %182 ]
  %83 = phi ptr [ %77, %79 ], [ %184, %182 ]
  %84 = getelementptr i8, ptr %83, i32 -4
  %85 = getelementptr i8, ptr %83, i32 452
  %86 = load ptr, ptr %85, align 8
  %87 = load ptr, ptr %80, align 8
  %88 = icmp eq ptr %86, %87
  br i1 %88, label %89, label %182

89:                                               ; preds = %81
  %90 = load ptr, ptr %25, align 4
  %91 = getelementptr inbounds %struct.drm_atomic_state, ptr %90, i32 0, i32 3
  %92 = load ptr, ptr %91, align 4
  %93 = getelementptr i8, ptr %83, i32 408
  %94 = load i32, ptr %93, align 4
  %95 = getelementptr %struct.__drm_planes_state, ptr %92, i32 %94, i32 3
  %96 = load ptr, ptr %95, align 4
  %97 = getelementptr inbounds %struct.drm_plane_state, ptr %96, i32 0, i32 2
  %98 = load ptr, ptr %97, align 4
  %99 = icmp eq ptr %98, null
  br i1 %99, label %182, label %100

100:                                              ; preds = %89
  %101 = getelementptr inbounds %struct.drm_plane_state, ptr %96, i32 0, i32 25
  %102 = load ptr, ptr %101, align 4
  %103 = getelementptr inbounds %struct.drm_atomic_state, ptr %102, i32 0, i32 1
  %104 = load ptr, ptr %103, align 4
  %105 = getelementptr inbounds %struct.drm_device, ptr %104, i32 0, i32 30, i32 17
  %106 = load i32, ptr %105, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %182, label %108

108:                                              ; preds = %100
  %109 = getelementptr i8, ptr %83, i32 460
  %110 = getelementptr inbounds %struct.drm_plane_state, ptr %96, i32 0, i32 16
  br label %111

111:                                              ; preds = %172, %108
  %112 = phi ptr [ %102, %108 ], [ %174, %172 ]
  %113 = phi i32 [ 0, %108 ], [ %173, %172 ]
  %114 = getelementptr inbounds %struct.drm_atomic_state, ptr %112, i32 0, i32 3
  %115 = load ptr, ptr %114, align 4
  %116 = getelementptr %struct.__drm_planes_state, ptr %115, i32 %113
  %117 = load ptr, ptr %116, align 4
  %118 = icmp eq ptr %117, null
  br i1 %118, label %172, label %119

119:                                              ; preds = %111
  %120 = getelementptr %struct.__drm_planes_state, ptr %115, i32 %113, i32 3
  %121 = load ptr, ptr %120, align 4
  %122 = icmp eq ptr %117, %84
  br i1 %122, label %172, label %123

123:                                              ; preds = %119
  %124 = getelementptr inbounds %struct.tegra_plane, ptr %117, i32 0, i32 1
  %125 = load ptr, ptr %124, align 8
  %126 = load ptr, ptr %85, align 8
  %127 = icmp eq ptr %125, %126
  br i1 %127, label %128, label %172

128:                                              ; preds = %123
  %129 = getelementptr inbounds %struct.tegra_plane, ptr %117, i32 0, i32 3
  %130 = load i32, ptr %109, align 8
  %131 = icmp eq i32 %130, 0
  %132 = load i32, ptr %129, align 8
  br i1 %131, label %139, label %133

133:                                              ; preds = %128
  %134 = icmp eq i32 %132, 0
  br i1 %134, label %148, label %135

135:                                              ; preds = %133
  %136 = icmp eq i32 %130, 1
  br i1 %136, label %143, label %137

137:                                              ; preds = %135
  %138 = icmp eq i32 %132, 1
  br i1 %138, label %148, label %141

139:                                              ; preds = %128
  %140 = icmp eq i32 %132, 1
  br i1 %140, label %148, label %143

141:                                              ; preds = %137
  %142 = icmp eq i32 %130, 2
  br i1 %142, label %148, label %143

143:                                              ; preds = %141, %139, %135
  %144 = phi i32 [ 1, %139 ], [ 2, %141 ], [ 1, %135 ]
  %145 = icmp ne i32 %132, 2
  %146 = zext i1 %145 to i32
  %147 = add nuw nsw i32 %144, %146
  br label %148

148:                                              ; preds = %143, %141, %139, %137, %133
  %149 = phi i32 [ 0, %133 ], [ 1, %137 ], [ 0, %139 ], [ 2, %141 ], [ %147, %143 ]
  %150 = getelementptr inbounds %struct.drm_plane_state, ptr %121, i32 0, i32 2
  %151 = load ptr, ptr %150, align 4
  %152 = icmp eq ptr %151, null
  br i1 %152, label %157, label %153

153:                                              ; preds = %148
  %154 = getelementptr inbounds %struct.drm_framebuffer, ptr %151, i32 0, i32 4
  %155 = load ptr, ptr %154, align 8
  %156 = load i32, ptr %155, align 4
  switch i32 %156, label %157 [
    i32 892424769, label %158
    i32 892420434, label %158
    i32 875708993, label %158
    i32 875713089, label %158
  ]

157:                                              ; preds = %153, %148
  br label %158

158:                                              ; preds = %157, %153, %153, %153, %153
  %159 = phi i8 [ 0, %157 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ]
  %160 = getelementptr %struct.tegra_plane_state, ptr %96, i32 0, i32 8, i32 %149
  store i8 %159, ptr %160, align 2
  %161 = getelementptr inbounds %struct.drm_plane_state, ptr %121, i32 0, i32 16
  %162 = load i32, ptr %161, align 4
  %163 = load i32, ptr %110, align 4
  %164 = icmp ugt i32 %162, %163
  %165 = zext i1 %164 to i8
  %166 = getelementptr %struct.tegra_plane_state, ptr %96, i32 0, i32 8, i32 %149, i32 1
  store i8 %165, ptr %166, align 1
  %167 = load ptr, ptr %150, align 4
  %168 = icmp eq ptr %167, null
  br i1 %168, label %169, label %172

169:                                              ; preds = %158
  %170 = icmp eq i32 %149, 1
  %171 = zext i1 %170 to i8
  store i8 %171, ptr %166, align 1
  br label %172

172:                                              ; preds = %169, %158, %123, %119, %111
  %173 = add nuw i32 %113, 1
  %174 = load ptr, ptr %101, align 4
  %175 = getelementptr inbounds %struct.drm_atomic_state, ptr %174, i32 0, i32 1
  %176 = load ptr, ptr %175, align 4
  %177 = getelementptr inbounds %struct.drm_device, ptr %176, i32 0, i32 30, i32 17
  %178 = load i32, ptr %177, align 4
  %179 = icmp ult i32 %173, %178
  br i1 %179, label %111, label %180

180:                                              ; preds = %172
  %181 = load ptr, ptr %0, align 8
  br label %182

182:                                              ; preds = %180, %100, %89, %81
  %183 = phi ptr [ %181, %180 ], [ %82, %100 ], [ %82, %89 ], [ %82, %81 ]
  %184 = load ptr, ptr %83, align 4
  %185 = getelementptr inbounds %struct.drm_device, ptr %183, i32 0, i32 30, i32 18
  %186 = icmp eq ptr %184, %185
  br i1 %186, label %190, label %81

187:                                              ; preds = %70
  %188 = ptrtoint ptr %61 to i32
  %189 = tail call i32 @llvm.smin.i32(i32 %188, i32 0)
  br label %190

190:                                              ; preds = %187, %182, %74, %38, %10
  %191 = phi i32 [ -22, %10 ], [ 0, %38 ], [ 0, %74 ], [ %189, %187 ], [ 0, %182 ]
  ret i32 %191
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tegra_plane_interconnect_init(ptr nocapture noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.tegra_plane, ptr %0, i32 0, i32 3
  %3 = load i32, ptr %2, align 8
  %4 = getelementptr [7 x ptr], ptr @tegra_plane_icc_names, i32 0, i32 %3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.tegra_plane, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.tegra_dc, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = icmp ugt i32 %3, 6
  br i1 %10, label %11, label %12, !prof !13

11:                                               ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 714, i32 noundef 9, ptr noundef null) #9
  br label %39

12:                                               ; preds = %1
  %13 = add nsw i32 %3, -3
  %14 = icmp ult i32 %13, 3
  br i1 %14, label %15, label %16, !prof !13

15:                                               ; preds = %12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 715, i32 noundef 9, ptr noundef null) #9
  br label %39

16:                                               ; preds = %12
  %17 = tail call ptr @devm_of_icc_get(ptr noundef %9, ptr noundef %5) #9
  %18 = getelementptr inbounds %struct.tegra_plane, ptr %0, i32 0, i32 4
  store ptr %17, ptr %18, align 4
  %19 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = ptrtoint ptr %17 to i32
  %22 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %9, i32 noundef %21, ptr noundef nonnull @.str.1, ptr noundef %5) #9
  br label %39

23:                                               ; preds = %16
  %24 = load i32, ptr %2, align 8
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %39

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.tegra_dc, ptr %7, i32 0, i32 14
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %28, i32 0, i32 18
  %30 = load i8, ptr %29, align 1, !range !8
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %26
  %33 = tail call ptr @devm_of_icc_get(ptr noundef %9, ptr noundef nonnull @.str.2) #9
  %34 = getelementptr inbounds %struct.tegra_plane, ptr %0, i32 0, i32 5
  store ptr %33, ptr %34, align 8
  %35 = icmp ugt ptr %33, inttoptr (i32 -4096 to ptr)
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = ptrtoint ptr %33 to i32
  %38 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %9, i32 noundef %37, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #9
  br label %39

39:                                               ; preds = %36, %32, %26, %23, %20, %15, %11
  %40 = phi i32 [ %21, %20 ], [ %37, %36 ], [ -22, %15 ], [ -22, %11 ], [ 0, %32 ], [ 0, %26 ], [ 0, %23 ]
  ret i32 %40
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_of_icc_get(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_plane_cleanup(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_plane_destroy_state(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_plane_duplicate_state(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_format_info(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_fb_get_plane(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @host1x_bo_pin(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_bo_unpin(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_vrefresh(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_get_plane_state(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

attributes #0 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }

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
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.peeled.count", i32 1}
!11 = !{i64 787807, i64 787834, i64 787856, i64 787884}
!12 = !{i64 788215, i64 788242, i64 788275, i64 788296, i64 788323, i64 788349}
!13 = !{!"branch_weights", i32 1, i32 2000}
