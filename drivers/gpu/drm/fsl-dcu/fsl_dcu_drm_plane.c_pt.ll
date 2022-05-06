; ModuleID = '/llk/IR/drivers/gpu/drm/fsl-dcu/fsl_dcu_drm_plane.c_pt.bc'
source_filename = "../drivers/gpu/drm/fsl-dcu/fsl_dcu_drm_plane.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_plane_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_plane_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.65, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.73, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.65 = type { %struct.list_head, ptr, %struct.spinlock }
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
%struct.anon.73 = type { i32, ptr }
%struct.fsl_dcu_drm_device = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock, ptr, %struct.drm_crtc, %struct.drm_encoder, %struct.fsl_dcu_drm_connector, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.fsl_dcu_drm_connector = type { %struct.drm_connector, ptr, ptr }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info, i8, i8 }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [8 x i32], [8 x i32], i64, i8, i8, i8, %struct.drm_hdmi_dsc_cap }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_hdmi_dsc_cap = type { i8, i8, i8, i8, i8, i32, i8, i8, i8 }
%struct.drm_monitor_range_info = type { i8, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.llist_node = type { ptr }
%struct.hdr_sink_metadata = type { i32, %union.anon.72 }
%union.anon.72 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.fsl_dcu_soc_data = type { ptr, i32, i32, i32 }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_planes_state = type { ptr, ptr, ptr, ptr }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.drm_gem_cma_object = type { %struct.drm_gem_object, i32, ptr, ptr, i8 }
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

@.str = private unnamed_addr constant [34 x i8] c"Failed to allocate primary plane\0A\00", align 1
@fsl_dcu_drm_plane_funcs = internal constant %struct.drm_plane_funcs { ptr @drm_atomic_helper_update_plane, ptr @drm_atomic_helper_disable_plane, ptr @fsl_dcu_drm_plane_destroy, ptr @drm_atomic_helper_plane_reset, ptr null, ptr @drm_atomic_helper_plane_duplicate_state, ptr @drm_atomic_helper_plane_destroy_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@fsl_dcu_drm_plane_formats = internal constant [9 x i32] [i32 909199186, i32 875710290, i32 875713112, i32 875713089, i32 842093144, i32 842093121, i32 892424792, i32 892424769, i32 909202777], align 4
@fsl_dcu_drm_plane_helper_funcs = internal constant %struct.drm_plane_helper_funcs { ptr null, ptr null, ptr @fsl_dcu_drm_plane_atomic_check, ptr @fsl_dcu_drm_plane_atomic_update, ptr @fsl_dcu_drm_plane_atomic_disable, ptr null, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"ls1021a\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"No more layer left\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fsl_dcu_drm_init_planes(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.fsl_dcu_drm_device, ptr %3, i32 0, i32 12
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.fsl_dcu_soc_data, ptr %5, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %37, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.fsl_dcu_drm_device, ptr %3, i32 0, i32 2
  br label %11

11:                                               ; preds = %31, %9
  %12 = phi ptr [ %5, %9 ], [ %32, %31 ]
  %13 = phi i32 [ 0, %9 ], [ %33, %31 ]
  %14 = getelementptr inbounds %struct.fsl_dcu_soc_data, ptr %12, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %31, label %17

17:                                               ; preds = %11
  %18 = shl i32 %13, 6
  %19 = add i32 %18, 508
  br label %20

20:                                               ; preds = %20, %17
  %21 = phi i32 [ 1, %17 ], [ %26, %20 ]
  %22 = load ptr, ptr %10, align 8
  %23 = shl i32 %21, 2
  %24 = add i32 %19, %23
  %25 = tail call i32 @regmap_write(ptr noundef %22, i32 noundef %24, i32 noundef 0) #7
  %26 = add i32 %21, 1
  %27 = load ptr, ptr %4, align 8
  %28 = getelementptr inbounds %struct.fsl_dcu_soc_data, ptr %27, i32 0, i32 3
  %29 = load i32, ptr %28, align 4
  %30 = icmp ugt i32 %26, %29
  br i1 %30, label %31, label %20

31:                                               ; preds = %20, %11
  %32 = phi ptr [ %12, %11 ], [ %27, %20 ]
  %33 = add nuw i32 %13, 1
  %34 = getelementptr inbounds %struct.fsl_dcu_soc_data, ptr %32, i32 0, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = icmp ult i32 %33, %35
  br i1 %36, label %11, label %37

37:                                               ; preds = %31, %1
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @fsl_dcu_drm_primary_create_plane(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 456) #8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str) #7
  br label %13

6:                                                ; preds = %1
  %7 = tail call i32 (ptr, ptr, i32, ptr, ptr, i32, ptr, i32, ptr, ...) @drm_universal_plane_init(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 0, ptr noundef nonnull @fsl_dcu_drm_plane_funcs, ptr noundef nonnull @fsl_dcu_drm_plane_formats, i32 noundef 9, ptr noundef null, i32 noundef 1, ptr noundef null) #7
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @kfree(ptr noundef nonnull %3) #7
  br label %10

10:                                               ; preds = %9, %6
  %11 = phi ptr [ null, %9 ], [ %3, %6 ]
  %12 = getelementptr inbounds %struct.drm_plane, ptr %11, i32 0, i32 18
  store ptr @fsl_dcu_drm_plane_helper_funcs, ptr %12, align 8
  br label %13

13:                                               ; preds = %10, %5
  %14 = phi ptr [ %11, %10 ], [ null, %5 ]
  ret ptr %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_universal_plane_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_update_plane(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_disable_plane(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fsl_dcu_drm_plane_destroy(ptr noundef %0) #0 {
  tail call void @drm_plane_cleanup(ptr noundef %0) #7
  tail call void @kfree(ptr noundef %0) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_plane_reset(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_plane_duplicate_state(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_plane_destroy_state(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_plane_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @fsl_dcu_drm_plane_atomic_check(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #4 {
  %3 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 17
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr %struct.__drm_planes_state, ptr %4, i32 %6, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %21, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.drm_framebuffer, ptr %10, i32 0, i32 4
  %18 = load ptr, ptr %17, align 8
  %19 = load i32, ptr %18, align 4
  switch i32 %19, label %20 [
    i32 909199186, label %21
    i32 875710290, label %21
    i32 875713112, label %21
    i32 875713089, label %21
    i32 842093144, label %21
    i32 842093121, label %21
    i32 892424792, label %21
    i32 892424769, label %21
    i32 909202777, label %21
  ]

20:                                               ; preds = %16
  br label %21

21:                                               ; preds = %20, %16, %16, %16, %16, %16, %16, %16, %16, %16, %12, %2
  %22 = phi i32 [ -22, %20 ], [ 0, %12 ], [ 0, %2 ], [ 0, %16 ], [ 0, %16 ], [ 0, %16 ], [ 0, %16 ], [ 0, %16 ], [ 0, %16 ], [ 0, %16 ], [ 0, %16 ], [ 0, %16 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fsl_dcu_drm_plane_atomic_update(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 17
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr %struct.__drm_planes_state, ptr %7, i32 %9, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 19
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.drm_plane_state, ptr %13, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %100, label %17

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.fsl_dcu_drm_device, ptr %5, i32 0, i32 12
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.fsl_dcu_soc_data, ptr %19, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = icmp ugt i32 %21, %9
  br i1 %22, label %25, label %23

23:                                               ; preds = %17
  %24 = load ptr, ptr %5, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.2) #9
  br label %100

25:                                               ; preds = %17
  %26 = xor i32 %9, -1
  %27 = add i32 %21, %26
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %100, label %29

29:                                               ; preds = %25
  %30 = tail call ptr @drm_fb_cma_get_gem_obj(ptr noundef nonnull %15, i32 noundef 0) #7
  %31 = getelementptr inbounds %struct.drm_framebuffer, ptr %15, i32 0, i32 4
  %32 = load ptr, ptr %31, align 8
  %33 = load i32, ptr %32, align 4
  switch i32 %33, label %100 [
    i32 909199186, label %45
    i32 875710290, label %34
    i32 875713089, label %35
    i32 875713112, label %36
    i32 842093121, label %38
    i32 842093144, label %39
    i32 892424769, label %41
    i32 892424792, label %42
    i32 909202777, label %44
  ]

34:                                               ; preds = %29
  br label %45

35:                                               ; preds = %29
  br label %36

36:                                               ; preds = %35, %29
  %37 = phi i32 [ 0, %29 ], [ 2, %35 ]
  br label %45

38:                                               ; preds = %29
  br label %39

39:                                               ; preds = %38, %29
  %40 = phi i32 [ 0, %29 ], [ 2, %38 ]
  br label %45

41:                                               ; preds = %29
  br label %42

42:                                               ; preds = %41, %29
  %43 = phi i32 [ 0, %29 ], [ 2, %41 ]
  br label %45

44:                                               ; preds = %29
  br label %45

45:                                               ; preds = %44, %42, %39, %36, %34, %29
  %46 = phi i32 [ 0, %44 ], [ %43, %42 ], [ %40, %39 ], [ %37, %36 ], [ 0, %34 ], [ 0, %29 ]
  %47 = phi i32 [ -1879179264, %44 ], [ -1879375872, %42 ], [ -1879310336, %39 ], [ -1879703552, %36 ], [ -1879769088, %34 ], [ -1879834624, %29 ]
  %48 = getelementptr inbounds %struct.fsl_dcu_drm_device, ptr %5, i32 0, i32 2
  %49 = load ptr, ptr %48, align 8
  %50 = shl i32 %27, 6
  %51 = add i32 %50, 512
  %52 = getelementptr inbounds %struct.drm_plane_state, ptr %11, i32 0, i32 7
  %53 = load i32, ptr %52, align 4
  %54 = shl i32 %53, 16
  %55 = getelementptr inbounds %struct.drm_plane_state, ptr %11, i32 0, i32 6
  %56 = load i32, ptr %55, align 4
  %57 = or i32 %54, %56
  %58 = tail call i32 @regmap_write(ptr noundef %49, i32 noundef %51, i32 noundef %57) #7
  %59 = load ptr, ptr %48, align 8
  %60 = add i32 %50, 516
  %61 = getelementptr inbounds %struct.drm_plane_state, ptr %11, i32 0, i32 5
  %62 = load i32, ptr %61, align 4
  %63 = shl i32 %62, 16
  %64 = getelementptr inbounds %struct.drm_plane_state, ptr %11, i32 0, i32 4
  %65 = load i32, ptr %64, align 4
  %66 = or i32 %63, %65
  %67 = tail call i32 @regmap_write(ptr noundef %59, i32 noundef %60, i32 noundef %66) #7
  %68 = load ptr, ptr %48, align 8
  %69 = add i32 %50, 520
  %70 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %30, i32 0, i32 1
  %71 = load i32, ptr %70, align 8
  %72 = tail call i32 @regmap_write(ptr noundef %68, i32 noundef %69, i32 noundef %71) #7
  %73 = load ptr, ptr %48, align 8
  %74 = add i32 %50, 524
  %75 = or i32 %47, %46
  %76 = tail call i32 @regmap_write(ptr noundef %73, i32 noundef %74, i32 noundef %75) #7
  %77 = load ptr, ptr %48, align 8
  %78 = add i32 %50, 528
  %79 = tail call i32 @regmap_write(ptr noundef %77, i32 noundef %78, i32 noundef 16777215) #7
  %80 = load ptr, ptr %48, align 8
  %81 = add i32 %50, 532
  %82 = tail call i32 @regmap_write(ptr noundef %80, i32 noundef %81, i32 noundef 0) #7
  %83 = load ptr, ptr %48, align 8
  %84 = add i32 %50, 536
  %85 = tail call i32 @regmap_write(ptr noundef %83, i32 noundef %84, i32 noundef 0) #7
  %86 = load ptr, ptr %48, align 8
  %87 = add i32 %50, 540
  %88 = tail call i32 @regmap_write(ptr noundef %86, i32 noundef %87, i32 noundef 0) #7
  %89 = load ptr, ptr %48, align 8
  %90 = add i32 %50, 544
  %91 = tail call i32 @regmap_write(ptr noundef %89, i32 noundef %90, i32 noundef 0) #7
  %92 = load ptr, ptr %18, align 8
  %93 = load ptr, ptr %92, align 4
  %94 = tail call i32 @strcmp(ptr noundef %93, ptr noundef nonnull dereferenceable(8) @.str.1)
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %45
  %97 = load ptr, ptr %48, align 8
  %98 = add i32 %50, 548
  %99 = tail call i32 @regmap_write(ptr noundef %97, i32 noundef %98, i32 noundef 0) #7
  br label %100

100:                                              ; preds = %96, %45, %29, %25, %23, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fsl_dcu_drm_plane_atomic_disable(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #0 {
  %3 = alloca i32, align 4
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !8
  %7 = getelementptr inbounds %struct.fsl_dcu_drm_device, ptr %6, i32 0, i32 12
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.fsl_dcu_soc_data, ptr %8, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 17
  %12 = load i32, ptr %11, align 4
  %13 = icmp ugt i32 %10, %12
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = load ptr, ptr %6, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.2) #9
  br label %30

16:                                               ; preds = %2
  %17 = xor i32 %12, -1
  %18 = add i32 %10, %17
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.fsl_dcu_drm_device, ptr %6, i32 0, i32 2
  %22 = load ptr, ptr %21, align 8
  %23 = shl i32 %18, 6
  %24 = add i32 %23, 524
  %25 = call i32 @regmap_read(ptr noundef %22, i32 noundef %24, ptr noundef nonnull %3) #7
  %26 = load i32, ptr %3, align 4
  %27 = and i32 %26, 2147483647
  store i32 %27, ptr %3, align 4
  %28 = load ptr, ptr %21, align 8
  %29 = call i32 @regmap_write(ptr noundef %28, i32 noundef %24, i32 noundef %27) #7
  br label %30

30:                                               ; preds = %20, %16, %14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_fb_cma_get_gem_obj(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { cold nounwind }

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
!8 = !{!"auto-init"}
