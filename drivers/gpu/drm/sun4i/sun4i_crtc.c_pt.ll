; ModuleID = '/llk/IR/drivers/gpu/drm/sun4i/sun4i_crtc.c_pt.bc'
source_filename = "../drivers/gpu/drm/sun4i/sun4i_crtc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_crtc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_crtc_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.sun4i_crtc = type { %struct.drm_crtc, ptr, ptr, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.sunxi_engine_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }

@.str = private unnamed_addr constant [28 x i8] c"Couldn't create the planes\0A\00", align 1
@sun4i_crtc_funcs = internal constant %struct.drm_crtc_funcs { ptr @drm_atomic_helper_crtc_reset, ptr null, ptr null, ptr null, ptr null, ptr @drm_crtc_cleanup, ptr @drm_atomic_helper_set_config, ptr @drm_atomic_helper_page_flip, ptr null, ptr null, ptr @drm_atomic_helper_crtc_duplicate_state, ptr @drm_atomic_helper_crtc_destroy_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sun4i_crtc_enable_vblank, ptr @sun4i_crtc_disable_vblank, ptr null }, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Couldn't init DRM CRTC\0A\00", align 1
@sun4i_crtc_helper_funcs = internal constant %struct.drm_crtc_helper_funcs { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sun4i_crtc_mode_set_nofb, ptr null, ptr null, ptr null, ptr @sun4i_crtc_atomic_check, ptr @sun4i_crtc_atomic_begin, ptr @sun4i_crtc_atomic_flush, ptr @sun4i_crtc_atomic_enable, ptr @sun4i_crtc_atomic_disable, ptr null }, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Enabling VBLANK on crtc %p\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Disabling VBLANK on crtc %p\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"drivers/gpu/drm/sun4i/sun4i_crtc.c\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"Committing plane changes\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"Enabling the CRTC\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"Disabling the CRTC\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @sun4i_crtc_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 768, i32 noundef 3520) #3
  %7 = icmp eq ptr %6, null
  br i1 %7, label %76, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.sun4i_crtc, ptr %6, i32 0, i32 2
  store ptr %1, ptr %9, align 4
  %10 = getelementptr inbounds %struct.sun4i_crtc, ptr %6, i32 0, i32 3
  store ptr %2, ptr %10, align 8
  %11 = load ptr, ptr %1, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %23, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.sunxi_engine_ops, ptr %11, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %13
  %18 = tail call ptr %15(ptr noundef %0, ptr noundef %1) #3
  %19 = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = load ptr, ptr %18, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %41, label %25

23:                                               ; preds = %17, %13, %8
  %24 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str) #4
  br label %76

25:                                               ; preds = %34, %20
  %26 = phi ptr [ %39, %34 ], [ %21, %20 ]
  %27 = phi i32 [ %37, %34 ], [ 0, %20 ]
  %28 = phi ptr [ %36, %34 ], [ null, %20 ]
  %29 = phi ptr [ %35, %34 ], [ null, %20 ]
  %30 = getelementptr inbounds %struct.drm_plane, ptr %26, i32 0, i32 16
  %31 = load i32, ptr %30, align 8
  switch i32 %31, label %34 [
    i32 1, label %32
    i32 2, label %33
  ]

32:                                               ; preds = %25
  br label %34

33:                                               ; preds = %25
  br label %34

34:                                               ; preds = %33, %32, %25
  %35 = phi ptr [ %29, %25 ], [ %29, %33 ], [ %26, %32 ]
  %36 = phi ptr [ %28, %25 ], [ %26, %33 ], [ %28, %32 ]
  %37 = add i32 %27, 1
  %38 = getelementptr ptr, ptr %18, i32 %37
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %25

41:                                               ; preds = %34, %20
  %42 = phi ptr [ null, %20 ], [ %35, %34 ]
  %43 = phi ptr [ null, %20 ], [ %36, %34 ]
  %44 = tail call i32 (ptr, ptr, ptr, ptr, ptr, ptr, ...) @drm_crtc_init_with_planes(ptr noundef %0, ptr noundef nonnull %6, ptr noundef %42, ptr noundef %43, ptr noundef nonnull @sun4i_crtc_funcs, ptr noundef null) #3
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %41
  %47 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.1) #4
  %48 = inttoptr i32 %44 to ptr
  br label %76

49:                                               ; preds = %41
  %50 = getelementptr inbounds %struct.drm_crtc, ptr %6, i32 0, i32 19
  store ptr @sun4i_crtc_helper_funcs, ptr %50, align 4
  %51 = load ptr, ptr %10, align 8
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.device, ptr %52, i32 0, i32 25
  %54 = load ptr, ptr %53, align 8
  %55 = tail call ptr @of_graph_get_port_by_id(ptr noundef %54, i32 noundef 1) #3
  %56 = getelementptr inbounds %struct.drm_crtc, ptr %6, i32 0, i32 1
  store ptr %55, ptr %56, align 4
  %57 = load ptr, ptr %18, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %76, label %59

59:                                               ; preds = %49
  %60 = getelementptr inbounds %struct.drm_crtc, ptr %6, i32 0, i32 8
  br label %61

61:                                               ; preds = %71, %59
  %62 = phi ptr [ %57, %59 ], [ %74, %71 ]
  %63 = phi i32 [ 0, %59 ], [ %72, %71 ]
  %64 = getelementptr inbounds %struct.drm_plane, ptr %62, i32 0, i32 16
  %65 = load i32, ptr %64, align 8
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %61
  %68 = load i32, ptr %60, align 8
  %69 = shl nuw i32 1, %68
  %70 = getelementptr inbounds %struct.drm_plane, ptr %62, i32 0, i32 5
  store i32 %69, ptr %70, align 4
  br label %71

71:                                               ; preds = %67, %61
  %72 = add i32 %63, 1
  %73 = getelementptr ptr, ptr %18, i32 %72
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %61

76:                                               ; preds = %71, %49, %46, %23, %3
  %77 = phi ptr [ null, %23 ], [ %48, %46 ], [ inttoptr (i32 -12 to ptr), %3 ], [ %6, %49 ], [ %6, %71 ]
  ret ptr %77
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_init_with_planes(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_port_by_id(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_crtc_reset(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_cleanup(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_set_config(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_page_flip(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_crtc_duplicate_state(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_crtc_destroy_state(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun4i_crtc_enable_vblank(ptr noundef %0) #0 {
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.2, ptr noundef %0) #3
  %2 = getelementptr inbounds %struct.sun4i_crtc, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 8
  tail call void @sun4i_tcon_enable_vblank(ptr noundef %3, i1 noundef zeroext true) #3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sun4i_crtc_disable_vblank(ptr noundef %0) #0 {
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.3, ptr noundef %0) #3
  %2 = getelementptr inbounds %struct.sun4i_crtc, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 8
  tail call void @sun4i_tcon_enable_vblank(ptr noundef %3, i1 noundef zeroext false) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sun4i_tcon_enable_vblank(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sun4i_crtc_mode_set_nofb(ptr noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 22
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 30, i32 16
  br label %6

6:                                                ; preds = %10, %1
  %7 = phi ptr [ %5, %1 ], [ %8, %10 ]
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %5
  br i1 %9, label %16, label %10

10:                                               ; preds = %6
  %11 = getelementptr i8, ptr %8, i32 48
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %0
  br i1 %13, label %14, label %6

14:                                               ; preds = %10
  %15 = getelementptr i8, ptr %8, i32 -4
  br label %16

16:                                               ; preds = %14, %6
  %17 = phi ptr [ %15, %14 ], [ null, %6 ]
  %18 = getelementptr inbounds %struct.drm_crtc_state, ptr %3, i32 0, i32 7
  %19 = getelementptr inbounds %struct.sun4i_crtc, ptr %0, i32 0, i32 3
  %20 = load ptr, ptr %19, align 8
  tail call void @sun4i_tcon_mode_set(ptr noundef %20, ptr noundef %17, ptr noundef %18) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun4i_crtc_atomic_check(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 8
  %6 = load i32, ptr %5, align 8
  %7 = getelementptr %struct.__drm_crtcs_state, ptr %4, i32 %6, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.sun4i_crtc, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %21, label %12

12:                                               ; preds = %2
  %13 = load ptr, ptr %10, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.sunxi_engine_ops, ptr %13, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = tail call i32 %17(ptr noundef nonnull %10, ptr noundef %8) #3
  br label %21

21:                                               ; preds = %19, %15, %12, %2
  %22 = phi i32 [ %20, %19 ], [ 0, %15 ], [ 0, %12 ], [ 0, %2 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sun4i_crtc_atomic_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 8
  %6 = load i32, ptr %5, align 8
  %7 = getelementptr %struct.__drm_crtcs_state, ptr %4, i32 %6, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = load ptr, ptr %0, align 8
  %10 = getelementptr inbounds %struct.sun4i_crtc, ptr %0, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 22
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.drm_crtc_state, ptr %13, i32 0, i32 18
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %30, label %17

17:                                               ; preds = %2
  %18 = tail call i32 @drm_crtc_vblank_get(ptr noundef %0) #3
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %21, label %20, !prof !8

20:                                               ; preds = %17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 74, i32 noundef 9, ptr noundef null) #3
  br label %21

21:                                               ; preds = %20, %17
  %22 = getelementptr inbounds %struct.drm_device, ptr %9, i32 0, i32 28
  %23 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %22) #3
  %24 = load ptr, ptr %12, align 4
  %25 = getelementptr inbounds %struct.drm_crtc_state, ptr %24, i32 0, i32 18
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.sun4i_crtc, ptr %0, i32 0, i32 1
  store ptr %26, ptr %27, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %22, i32 noundef %23) #3
  %28 = load ptr, ptr %12, align 4
  %29 = getelementptr inbounds %struct.drm_crtc_state, ptr %28, i32 0, i32 18
  store ptr null, ptr %29, align 4
  br label %30

30:                                               ; preds = %21, %2
  %31 = load ptr, ptr %11, align 4
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  tail call void %32(ptr noundef %11, ptr noundef %8) #3
  br label %35

35:                                               ; preds = %34, %30
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sun4i_crtc_atomic_flush(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 22
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_crtc_state, ptr %4, i32 0, i32 18
  %6 = load ptr, ptr %5, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.5) #3
  %7 = getelementptr inbounds %struct.sun4i_crtc, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.sunxi_engine_ops, ptr %9, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void %13(ptr noundef %8) #3
  br label %16

16:                                               ; preds = %15, %11, %2
  %17 = icmp eq ptr %6, null
  br i1 %17, label %32, label %18

18:                                               ; preds = %16
  %19 = load ptr, ptr %3, align 4
  %20 = getelementptr inbounds %struct.drm_crtc_state, ptr %19, i32 0, i32 18
  store ptr null, ptr %20, align 4
  %21 = load ptr, ptr %0, align 8
  %22 = getelementptr inbounds %struct.drm_device, ptr %21, i32 0, i32 28
  tail call void @_raw_spin_lock_irq(ptr noundef %22) #3
  %23 = tail call i32 @drm_crtc_vblank_get(ptr noundef %0) #3
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  tail call void @drm_crtc_arm_vblank_event(ptr noundef %0, ptr noundef nonnull %6) #3
  br label %27

26:                                               ; preds = %18
  tail call void @drm_crtc_send_vblank_event(ptr noundef %0, ptr noundef nonnull %6) #3
  br label %27

27:                                               ; preds = %26, %25
  %28 = load ptr, ptr %0, align 8
  %29 = getelementptr inbounds %struct.drm_device, ptr %28, i32 0, i32 28
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !9
  %30 = load i16, ptr %29, align 4
  %31 = add i16 %30, 1
  store i16 %31, ptr %29, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #3, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #3, !srcloc !11
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #3, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !13
  br label %32

32:                                               ; preds = %27, %16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sun4i_crtc_atomic_enable(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 30, i32 16
  br label %5

5:                                                ; preds = %9, %2
  %6 = phi ptr [ %4, %2 ], [ %7, %9 ]
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %4
  br i1 %8, label %15, label %9

9:                                                ; preds = %5
  %10 = getelementptr i8, ptr %7, i32 48
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %0
  br i1 %12, label %13, label %5

13:                                               ; preds = %9
  %14 = getelementptr i8, ptr %7, i32 -4
  br label %15

15:                                               ; preds = %13, %5
  %16 = phi ptr [ %14, %13 ], [ null, %5 ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.6) #3
  %17 = getelementptr inbounds %struct.sun4i_crtc, ptr %0, i32 0, i32 3
  %18 = load ptr, ptr %17, align 8
  tail call void @sun4i_tcon_set_status(ptr noundef %18, ptr noundef %16, i1 noundef zeroext true) #3
  tail call void @drm_crtc_vblank_on(ptr noundef %0) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sun4i_crtc_atomic_disable(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 30, i32 16
  br label %5

5:                                                ; preds = %9, %2
  %6 = phi ptr [ %4, %2 ], [ %7, %9 ]
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %4
  br i1 %8, label %15, label %9

9:                                                ; preds = %5
  %10 = getelementptr i8, ptr %7, i32 48
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %0
  br i1 %12, label %13, label %5

13:                                               ; preds = %9
  %14 = getelementptr i8, ptr %7, i32 -4
  br label %15

15:                                               ; preds = %13, %5
  %16 = phi ptr [ %14, %13 ], [ null, %5 ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.7) #3
  tail call void @drm_crtc_vblank_off(ptr noundef %0) #3
  %17 = getelementptr inbounds %struct.sun4i_crtc, ptr %0, i32 0, i32 3
  %18 = load ptr, ptr %17, align 8
  tail call void @sun4i_tcon_set_status(ptr noundef %18, ptr noundef %16, i1 noundef zeroext false) #3
  %19 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 22
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.drm_crtc_state, ptr %20, i32 0, i32 18
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %40, label %24

24:                                               ; preds = %15
  %25 = getelementptr inbounds %struct.drm_crtc_state, ptr %20, i32 0, i32 2
  %26 = load i8, ptr %25, align 1, !range !14
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %24
  %29 = load ptr, ptr %0, align 8
  %30 = getelementptr inbounds %struct.drm_device, ptr %29, i32 0, i32 28
  tail call void @_raw_spin_lock_irq(ptr noundef %30) #3
  %31 = load ptr, ptr %19, align 4
  %32 = getelementptr inbounds %struct.drm_crtc_state, ptr %31, i32 0, i32 18
  %33 = load ptr, ptr %32, align 4
  tail call void @drm_crtc_send_vblank_event(ptr noundef %0, ptr noundef %33) #3
  %34 = load ptr, ptr %0, align 8
  %35 = getelementptr inbounds %struct.drm_device, ptr %34, i32 0, i32 28
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !9
  %36 = load i16, ptr %35, align 4
  %37 = add i16 %36, 1
  store i16 %37, ptr %35, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #3, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #3, !srcloc !11
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #3, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !13
  %38 = load ptr, ptr %19, align 4
  %39 = getelementptr inbounds %struct.drm_crtc_state, ptr %38, i32 0, i32 18
  store ptr null, ptr %39, align 4
  br label %40

40:                                               ; preds = %28, %24, %15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sun4i_tcon_mode_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_vblank_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_arm_vblank_event(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_send_vblank_event(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @sun4i_tcon_set_status(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_on(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_off(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { cold nounwind }

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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{i64 2149091536}
!10 = !{i64 2149087360}
!11 = !{i64 2149087435, i64 2149087462, i64 2149087509, i64 2149087531, i64 2149087559, i64 2149087579}
!12 = !{i64 368757}
!13 = !{i64 2149115680}
!14 = !{i8 0, i8 2}
