; ModuleID = '/llk/IR/drivers/gpu/drm/sti/sti_crtc.c_pt.bc'
source_filename = "../drivers/gpu/drm/sti/sti_crtc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_crtc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_crtc_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
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
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.list_head = type { ptr, ptr }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.sti_compositor = type { ptr, ptr, %struct.sti_compositor_data, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], [1 x ptr], [2 x ptr], [2 x %struct.notifier_block] }
%struct.sti_compositor_data = type { i32, [9 x %struct.sti_compositor_subdev_descriptor] }
%struct.sti_compositor_subdev_descriptor = type { i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.sti_mixer = type { ptr, ptr, i32, %struct.drm_crtc, i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.65, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.73, ptr, i32, ptr, i8, i32 }
%struct.anon.65 = type { %struct.list_head, ptr, %struct.spinlock }
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
%struct.anon.73 = type { i32, ptr }
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
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"unknown event: %lu\0A\00", align 1
@sti_crtc_funcs = internal constant %struct.drm_crtc_funcs { ptr @drm_atomic_helper_crtc_reset, ptr null, ptr null, ptr null, ptr null, ptr @sti_crtc_destroy, ptr @drm_atomic_helper_set_config, ptr @drm_atomic_helper_page_flip, ptr null, ptr @sti_crtc_set_property, ptr @drm_atomic_helper_crtc_duplicate_state, ptr @drm_atomic_helper_crtc_destroy_state, ptr null, ptr null, ptr @sti_crtc_late_register, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sti_crtc_enable_vblank, ptr @sti_crtc_disable_vblank, ptr null }, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Can't initialize CRTC\0A\00", align 1
@sti_crtc_helper_funcs = internal constant %struct.drm_crtc_helper_funcs { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sti_crtc_mode_set_nofb, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sti_crtc_atomic_flush, ptr @sti_crtc_atomic_enable, ptr @sti_crtc_atomic_disable, ptr null }, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"drm CRTC:%d mapped to %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"CRTC:%d (%s)\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Cannot register VTG notifier\0A\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"Warning: cannot unregister VTG notifier\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"CRTC:%d (%s) mode: (%s)\0A\00", align 1
@.str.8 = private unnamed_addr constant [47 x i8] c"\22%s\22: %d %d %d %d %d %d %d %d %d %d 0x%x 0x%x\0A\00", align 1
@.str.9 = private unnamed_addr constant [49 x i8] c"\016[drm] Failed to prepare/enable compositor clk\0A\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"Cannot set rate (%dHz) for pix clk\0A\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"Failed to prepare/enable pix clk\0A\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"Can't set active video area\0A\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"update plane %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"Cannot set plane %s depth\0A\00", align 1
@.str.15 = private unnamed_addr constant [33 x i8] c"Cannot enable plane %s at mixer\0A\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"disable plane %s from mixer\0A\00", align 1
@.str.17 = private unnamed_addr constant [34 x i8] c"Cannot disable plane %s at mixer\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sti_crtc_vblank_cb(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = add i32 %1, -3
  %5 = icmp ult i32 %4, -2
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, i32 noundef %1) #4
  br label %61

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.drm_crtc, ptr %2, i32 0, i32 8
  %9 = load i32, ptr %8, align 8
  %10 = mul i32 %9, -12
  %11 = add i32 %10, -164
  %12 = getelementptr i8, ptr %0, i32 %11
  %13 = getelementptr inbounds %struct.sti_compositor, ptr %12, i32 0, i32 9
  %14 = getelementptr [2 x ptr], ptr %13, i32 0, i32 %9
  %15 = load ptr, ptr %14, align 4
  %16 = tail call zeroext i1 @drm_crtc_handle_vblank(ptr noundef %2) #4
  %17 = getelementptr inbounds %struct.sti_mixer, ptr %15, i32 0, i32 4
  %18 = load i32, ptr %17, align 8
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %61

20:                                               ; preds = %7
  %21 = load ptr, ptr %2, align 8
  %22 = getelementptr inbounds %struct.drm_device, ptr %21, i32 0, i32 30, i32 18
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, %22
  br i1 %24, label %38, label %25

25:                                               ; preds = %35, %20
  %26 = phi ptr [ %36, %35 ], [ %23, %20 ]
  %27 = getelementptr i8, ptr %26, i32 452
  %28 = load i32, ptr %27, align 8
  %29 = and i32 %28, -256
  %30 = icmp ult i32 %29, 513
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = getelementptr i8, ptr %26, i32 456
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 4
  br i1 %34, label %35, label %61

35:                                               ; preds = %31, %25
  %36 = load ptr, ptr %26, align 4
  %37 = icmp eq ptr %36, %22
  br i1 %37, label %38, label %25

38:                                               ; preds = %35, %20
  %39 = getelementptr i8, ptr %2, i32 -16
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr inbounds %struct.device, ptr %40, i32 0, i32 8
  %42 = load ptr, ptr %41, align 8
  %43 = getelementptr inbounds %struct.drm_crtc, ptr %2, i32 0, i32 5
  %44 = load i32, ptr %43, align 4
  %45 = tail call ptr @sti_mixer_to_str(ptr noundef %39) #4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.3, i32 noundef %44, ptr noundef %45) #4
  tail call void @sti_mixer_set_background_status(ptr noundef %39, i1 noundef zeroext false) #4
  tail call void @drm_crtc_vblank_off(ptr noundef %2) #4
  %46 = getelementptr i8, ptr %2, i32 -8
  %47 = load i32, ptr %46, align 8
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %38
  %50 = getelementptr inbounds %struct.sti_compositor, ptr %42, i32 0, i32 5
  %51 = load ptr, ptr %50, align 4
  tail call void @clk_disable(ptr noundef %51) #4
  tail call void @clk_unprepare(ptr noundef %51) #4
  %52 = getelementptr inbounds %struct.sti_compositor, ptr %42, i32 0, i32 3
  br label %57

53:                                               ; preds = %38
  %54 = getelementptr inbounds %struct.sti_compositor, ptr %42, i32 0, i32 6
  %55 = load ptr, ptr %54, align 4
  tail call void @clk_disable(ptr noundef %55) #4
  tail call void @clk_unprepare(ptr noundef %55) #4
  %56 = getelementptr inbounds %struct.sti_compositor, ptr %42, i32 0, i32 4
  br label %57

57:                                               ; preds = %53, %49
  %58 = phi ptr [ %56, %53 ], [ %52, %49 ]
  %59 = load ptr, ptr %58, align 4
  tail call void @clk_disable(ptr noundef %59) #4
  tail call void @clk_unprepare(ptr noundef %59) #4
  %60 = getelementptr i8, ptr %2, i32 752
  store i32 2, ptr %60, align 8
  br label %61

61:                                               ; preds = %57, %31, %7, %6
  %62 = phi i32 [ -22, %6 ], [ 0, %57 ], [ 0, %7 ], [ 0, %31 ]
  ret i32 %62
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_crtc_handle_vblank(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @sti_crtc_is_main(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr i8, ptr %0, i32 -8
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 0
  ret i1 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sti_crtc_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.sti_mixer, ptr %1, i32 0, i32 3
  %6 = tail call i32 (ptr, ptr, ptr, ptr, ptr, ptr, ...) @drm_crtc_init_with_planes(ptr noundef %0, ptr noundef %5, ptr noundef %2, ptr noundef %3, ptr noundef nonnull @sti_crtc_funcs, ptr noundef null) #4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #4
  br label %14

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.sti_mixer, ptr %1, i32 0, i32 3, i32 19
  store ptr @sti_crtc_helper_funcs, ptr %10, align 4
  %11 = getelementptr inbounds %struct.sti_mixer, ptr %1, i32 0, i32 3, i32 5
  %12 = load i32, ptr %11, align 4
  %13 = tail call ptr @sti_mixer_to_str(ptr noundef %1) #4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef %12, ptr noundef %13) #4
  br label %14

14:                                               ; preds = %9, %8
  %15 = phi i32 [ -22, %8 ], [ 0, %9 ]
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_init_with_planes(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sti_mixer_to_str(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sti_mixer_set_background_status(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_crtc_reset(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sti_crtc_destroy(ptr noundef %0) #0 {
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.4) #4
  tail call void @drm_crtc_cleanup(ptr noundef %0) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_set_config(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_page_flip(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sti_crtc_set_property(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, i64 noundef %2) #0 {
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.4) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_crtc_duplicate_state(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_crtc_destroy_state(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sti_crtc_late_register(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 8
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = getelementptr i8, ptr %0, i32 -16
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = load ptr, ptr %0, align 8
  %11 = getelementptr inbounds %struct.drm_device, ptr %10, i32 0, i32 6
  %12 = load ptr, ptr %11, align 4
  tail call void @sti_compositor_debugfs_init(ptr noundef %9, ptr noundef %12) #4
  br label %13

13:                                               ; preds = %5, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sti_crtc_enable_vblank(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 8
  %4 = load i32, ptr %3, align 8
  %5 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr %struct.sti_compositor, ptr %7, i32 0, i32 12, i32 %4
  %9 = getelementptr %struct.sti_compositor, ptr %7, i32 0, i32 11, i32 %4
  %10 = load ptr, ptr %9, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.4) #4
  %11 = tail call i32 @sti_vtg_register_client(ptr noundef %10, ptr noundef %8, ptr noundef %0) #4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.5) #4
  br label %14

14:                                               ; preds = %13, %1
  %15 = phi i32 [ -22, %13 ], [ 0, %1 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sti_crtc_disable_vblank(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 8
  %4 = load i32, ptr %3, align 8
  %5 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr %struct.sti_compositor, ptr %7, i32 0, i32 12, i32 %4
  %9 = getelementptr %struct.sti_compositor, ptr %7, i32 0, i32 11, i32 %4
  %10 = load ptr, ptr %9, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.4) #4
  %11 = tail call i32 @sti_vtg_unregister_client(ptr noundef %10, ptr noundef %8) #4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.6) #4
  br label %14

14:                                               ; preds = %13, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sti_compositor_debugfs_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sti_vtg_register_client(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sti_vtg_unregister_client(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sti_crtc_mode_set_nofb(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 22
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.drm_crtc_state, ptr %3, i32 0, i32 7
  %5 = getelementptr i8, ptr %0, i32 -16
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = load i32, ptr %4, align 4
  %10 = mul i32 %9, 1000
  %11 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 5
  %12 = load i32, ptr %11, align 4
  %13 = tail call ptr @sti_mixer_to_str(ptr noundef %5) #4
  %14 = getelementptr inbounds %struct.drm_crtc_state, ptr %3, i32 0, i32 7, i32 31
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.7, i32 noundef %12, ptr noundef %13, ptr noundef %14) #4
  %15 = tail call i32 @drm_mode_vrefresh(ptr noundef %4) #4
  %16 = load i32, ptr %4, align 4
  %17 = getelementptr inbounds %struct.drm_crtc_state, ptr %3, i32 0, i32 7, i32 1
  %18 = load i16, ptr %17, align 4
  %19 = zext i16 %18 to i32
  %20 = getelementptr inbounds %struct.drm_crtc_state, ptr %3, i32 0, i32 7, i32 2
  %21 = load i16, ptr %20, align 2
  %22 = zext i16 %21 to i32
  %23 = getelementptr inbounds %struct.drm_crtc_state, ptr %3, i32 0, i32 7, i32 3
  %24 = load i16, ptr %23, align 4
  %25 = zext i16 %24 to i32
  %26 = getelementptr inbounds %struct.drm_crtc_state, ptr %3, i32 0, i32 7, i32 4
  %27 = load i16, ptr %26, align 2
  %28 = zext i16 %27 to i32
  %29 = getelementptr inbounds %struct.drm_crtc_state, ptr %3, i32 0, i32 7, i32 6
  %30 = load i16, ptr %29, align 2
  %31 = zext i16 %30 to i32
  %32 = getelementptr inbounds %struct.drm_crtc_state, ptr %3, i32 0, i32 7, i32 7
  %33 = load i16, ptr %32, align 4
  %34 = zext i16 %33 to i32
  %35 = getelementptr inbounds %struct.drm_crtc_state, ptr %3, i32 0, i32 7, i32 8
  %36 = load i16, ptr %35, align 2
  %37 = zext i16 %36 to i32
  %38 = getelementptr inbounds %struct.drm_crtc_state, ptr %3, i32 0, i32 7, i32 9
  %39 = load i16, ptr %38, align 4
  %40 = zext i16 %39 to i32
  %41 = getelementptr inbounds %struct.drm_crtc_state, ptr %3, i32 0, i32 7, i32 28
  %42 = load i8, ptr %41, align 2
  %43 = zext i8 %42 to i32
  %44 = getelementptr inbounds %struct.drm_crtc_state, ptr %3, i32 0, i32 7, i32 11
  %45 = load i32, ptr %44, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.8, ptr noundef %14, i32 noundef %15, i32 noundef %16, i32 noundef %19, i32 noundef %22, i32 noundef %25, i32 noundef %28, i32 noundef %31, i32 noundef %34, i32 noundef %37, i32 noundef %40, i32 noundef %43, i32 noundef %45) #4
  %46 = getelementptr i8, ptr %0, i32 -8
  %47 = load i32, ptr %46, align 8
  %48 = icmp eq i32 %47, 0
  %49 = getelementptr inbounds %struct.sti_compositor, ptr %8, i32 0, i32 3
  %50 = getelementptr inbounds %struct.sti_compositor, ptr %8, i32 0, i32 5
  %51 = getelementptr inbounds %struct.sti_compositor, ptr %8, i32 0, i32 4
  %52 = getelementptr inbounds %struct.sti_compositor, ptr %8, i32 0, i32 6
  %53 = select i1 %48, ptr %49, ptr %51
  %54 = select i1 %48, ptr %50, ptr %52
  %55 = load ptr, ptr %54, align 4
  %56 = load ptr, ptr %53, align 4
  %57 = tail call i32 @clk_prepare(ptr noundef %56) #4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %1
  %60 = tail call i32 @clk_enable(ptr noundef %56) #4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %59
  tail call void @clk_unprepare(ptr noundef %56) #4
  br label %63

63:                                               ; preds = %62, %1
  %64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #5
  br label %86

65:                                               ; preds = %59
  %66 = tail call i32 @clk_set_rate(ptr noundef %55, i32 noundef %10) #4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10, i32 noundef %10) #4
  br label %85

69:                                               ; preds = %65
  %70 = tail call i32 @clk_prepare(ptr noundef %55) #4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %69
  %73 = tail call i32 @clk_enable(ptr noundef %55) #4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %72
  tail call void @clk_unprepare(ptr noundef %55) #4
  br label %76

76:                                               ; preds = %75, %69
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.11) #4
  br label %85

77:                                               ; preds = %72
  %78 = load i32, ptr %46, align 8
  %79 = getelementptr %struct.sti_compositor, ptr %8, i32 0, i32 11, i32 %78
  %80 = load ptr, ptr %79, align 4
  %81 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 12
  tail call void @sti_vtg_set_config(ptr noundef %80, ptr noundef %81) #4
  %82 = tail call i32 @sti_mixer_active_video_area(ptr noundef %5, ptr noundef %81) #4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %86, label %84

84:                                               ; preds = %77
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.12) #4
  tail call void @clk_disable(ptr noundef %55) #4
  tail call void @clk_unprepare(ptr noundef %55) #4
  br label %85

85:                                               ; preds = %84, %76, %68
  tail call void @clk_disable(ptr noundef %56) #4
  tail call void @clk_unprepare(ptr noundef %56) #4
  br label %86

86:                                               ; preds = %85, %77, %63
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sti_crtc_atomic_flush(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr i8, ptr %0, i32 -16
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.4) #4
  %8 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 30, i32 18
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %8
  br i1 %10, label %60, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.sti_compositor, ptr %7, i32 0, i32 10
  br label %13

13:                                               ; preds = %57, %11
  %14 = phi ptr [ %9, %11 ], [ %58, %57 ]
  %15 = getelementptr i8, ptr %14, i32 -4
  %16 = getelementptr i8, ptr %14, i32 456
  %17 = load i32, ptr %16, align 4
  switch i32 %17, label %57 [
    i32 1, label %18
    i32 2, label %43
  ]

18:                                               ; preds = %13
  %19 = getelementptr i8, ptr %14, i32 416
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.drm_plane_state, ptr %20, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, %0
  br i1 %23, label %24, label %57

24:                                               ; preds = %18
  %25 = tail call ptr @sti_plane_to_str(ptr noundef %15) #4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.13, ptr noundef %25) #4
  %26 = tail call i32 @sti_mixer_set_plane_depth(ptr noundef %4, ptr noundef %15) #4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = tail call ptr @sti_plane_to_str(ptr noundef %15) #4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.14, ptr noundef %29) #4
  br label %57

30:                                               ; preds = %24
  %31 = tail call i32 @sti_mixer_set_plane_status(ptr noundef %4, ptr noundef %15, i1 noundef zeroext true) #4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %30
  %34 = tail call ptr @sti_plane_to_str(ptr noundef %15) #4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.15, ptr noundef %34) #4
  br label %57

35:                                               ; preds = %30
  %36 = getelementptr i8, ptr %14, i32 452
  %37 = load i32, ptr %36, align 8
  %38 = icmp eq i32 %37, 512
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load ptr, ptr %12, align 4
  %41 = load ptr, ptr %19, align 4
  tail call void @sti_vid_commit(ptr noundef %40, ptr noundef %41) #4
  br label %42

42:                                               ; preds = %39, %35
  store i32 0, ptr %16, align 4
  br label %57

43:                                               ; preds = %13
  %44 = tail call ptr @sti_plane_to_str(ptr noundef %15) #4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.16, ptr noundef %44) #4
  %45 = tail call i32 @sti_mixer_set_plane_status(ptr noundef %4, ptr noundef %15, i1 noundef zeroext false) #4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %43
  %48 = tail call ptr @sti_plane_to_str(ptr noundef %15) #4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17, ptr noundef %48) #4
  br label %57

49:                                               ; preds = %43
  %50 = getelementptr i8, ptr %14, i32 452
  %51 = load i32, ptr %50, align 8
  %52 = icmp eq i32 %51, 768
  %53 = select i1 %52, i32 4, i32 3
  store i32 %53, ptr %16, align 4
  %54 = icmp eq i32 %51, 512
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load ptr, ptr %12, align 4
  tail call void @sti_vid_disable(ptr noundef %56) #4
  br label %57

57:                                               ; preds = %55, %49, %47, %42, %33, %28, %18, %13
  %58 = load ptr, ptr %14, align 4
  %59 = icmp eq ptr %58, %8
  br i1 %59, label %60, label %13

60:                                               ; preds = %57, %2
  %61 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 22
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.drm_crtc_state, ptr %62, i32 0, i32 18
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %77, label %66

66:                                               ; preds = %60
  store ptr null, ptr %63, align 4
  %67 = load ptr, ptr %0, align 8
  %68 = getelementptr inbounds %struct.drm_device, ptr %67, i32 0, i32 28
  %69 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %68) #4
  %70 = tail call i32 @drm_crtc_vblank_get(ptr noundef %0) #4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  tail call void @drm_crtc_arm_vblank_event(ptr noundef %0, ptr noundef nonnull %64) #4
  br label %74

73:                                               ; preds = %66
  tail call void @drm_crtc_send_vblank_event(ptr noundef %0, ptr noundef nonnull %64) #4
  br label %74

74:                                               ; preds = %73, %72
  %75 = load ptr, ptr %0, align 8
  %76 = getelementptr inbounds %struct.drm_device, ptr %75, i32 0, i32 28
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %76, i32 noundef %69) #4
  br label %77

77:                                               ; preds = %74, %60
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sti_crtc_atomic_enable(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.4) #4
  %3 = getelementptr i8, ptr %0, i32 752
  store i32 0, ptr %3, align 8
  tail call void @drm_crtc_vblank_on(ptr noundef %0) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sti_crtc_atomic_disable(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.4) #4
  %3 = getelementptr i8, ptr %0, i32 752
  store i32 1, ptr %3, align 8
  tail call void @drm_crtc_wait_one_vblank(ptr noundef %0) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_vrefresh(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sti_vtg_set_config(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sti_mixer_active_video_area(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sti_plane_to_str(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sti_mixer_set_plane_depth(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sti_mixer_set_plane_status(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sti_vid_commit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sti_vid_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_vblank_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_arm_vblank_event(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_send_vblank_event(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_wait_one_vblank(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { cold nounwind }

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
