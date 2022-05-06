; ModuleID = '/llk/IR/drivers/gpu/drm/msm/dp/dp_panel.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/dp/dp_panel.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dp_panel = type { [16 x i8], [16 x i8], i32, i32, %struct.dp_link_info, %struct.drm_dp_desc, ptr, ptr, %struct.dp_display_mode, i8, i32, i32, i32, i32 }
%struct.dp_link_info = type { i8, i32, i32, i32 }
%struct.drm_dp_desc = type { %struct.drm_dp_dpcd_ident, i32 }
%struct.drm_dp_dpcd_ident = type { [3 x i8], [6 x i8], i8, i8, i8 }
%struct.dp_display_mode = type { %struct.drm_display_mode, i32, i32, i32, i32 }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.dp_link = type { i32, i32, i8, i8, %struct.dp_link_test_video, %struct.dp_link_test_audio, %struct.dp_link_phy_params, %struct.dp_link_info }
%struct.dp_link_test_video = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dp_link_test_audio = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dp_link_phy_params = type { i32, i8, i8 }
%struct.drm_dp_aux = type { ptr, %struct.i2c_adapter, ptr, ptr, ptr, %struct.mutex, %struct.work_struct, i8, ptr, i32, i32, %struct.drm_dp_aux_cec, i8 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.4 }
%union.anon.4 = type { i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.drm_dp_aux_cec = type { %struct.mutex, ptr, ptr, %struct.delayed_work }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.74, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.83, ptr, i32, ptr, i8, i32 }
%struct.anon.74 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.83 = type { i32, ptr }
%struct.edid = type { [8 x i8], [2 x i8], [2 x i8], i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.est_timings, [8 x %struct.std_timing], [4 x %struct.detailed_timing], i8, i8 }
%struct.est_timings = type { i8, i8, i8 }
%struct.std_timing = type { i8, i8 }
%struct.detailed_timing = type { i16, %union.anon }
%union.anon = type { %struct.detailed_pixel_timing }
%struct.detailed_pixel_timing = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info, i8, i8 }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [8 x i32], [8 x i32], i64, i8, i8, i8, %struct.drm_hdmi_dsc_cap }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_hdmi_dsc_cap = type { i8, i8, i8, i8, i8, i32, i8, i8, i8 }
%struct.drm_monitor_range_info = type { i8, i8 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.llist_node = type { ptr }
%struct.hdr_sink_metadata = type { i32, %union.anon.84 }
%union.anon.84 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.dp_catalog = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dp_panel_in = type { ptr, ptr, ptr, ptr }
%struct.dp_panel_private = type { ptr, %struct.dp_panel, ptr, ptr, ptr, i8, i8 }

@.str = private unnamed_addr constant [15 x i8] c"invalid input\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"read dpcd failed %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Illegal link rate=%d lane=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"no downstream ports connected\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"panel edid read failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"read DPCD with updated AUX config\0A\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"DP panel not enabled, handle TPG on next on\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"%s: calling catalog tpg_enable\0A\00", align 1
@__func__.dp_panel_tpg_config = private unnamed_addr constant [20 x i8] c"dp_panel_tpg_config\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"width=%d hporch= %d %d %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"height=%d vporch= %d %d %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"SET NEW RESOLUTION:\0A\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"%dx%d@%dfps\0A\00", align 1
@.str.12 = private unnamed_addr constant [42 x i8] c"h_porches(back|front|width) = (%d|%d|%d)\0A\00", align 1
@.str.13 = private unnamed_addr constant [42 x i8] c"v_porches(back|front|width) = (%d|%d|%d)\0A\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"pixel clock (KHz)=(%d)\0A\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"bpp = %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"updated bpp = %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [28 x i8] c"dpcd read failed, rlen=%zd\0A\00", align 1
@.str.18 = private unnamed_addr constant [42 x i8] c"using EXTENDED_RECEIVER_CAPABILITY_FIELD\0A\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"version: %d.%d\0A\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"link_rate=%d\0A\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"lane_count=%d\0A\00", align 1
@.str.22 = private unnamed_addr constant [33 x i8] c"ds port status failed, rlen=%zd\0A\00", align 1
@.str.23 = private unnamed_addr constant [35 x i8] c"failed to update edid property %d\0A\00", align 1
@.str.25 = private unnamed_addr constant [28 x i8] c"Invalid block, no checksum\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dp_panel_read_sink_caps(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #4
  store i32 0, ptr %3, align 4, !annotation !8
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %4, %5
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #4
  br label %90

8:                                                ; preds = %2
  %9 = tail call fastcc i32 @dp_panel_read_dpcd(ptr noundef nonnull %0)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1, i32 noundef %9) #4
  br label %90

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.dp_panel, ptr %0, i32 0, i32 4, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = tail call zeroext i8 @drm_dp_link_rate_to_bw_code(i32 noundef %14) #4
  %16 = zext i8 %15 to i32
  switch i8 %15, label %17 [
    i8 20, label %20
    i8 10, label %20
    i8 6, label %20
    i8 30, label %20
  ]

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.dp_panel, ptr %0, i32 0, i32 4, i32 2
  %19 = load i32, ptr %18, align 4
  br label %27

20:                                               ; preds = %12, %12, %12, %12
  %21 = getelementptr inbounds %struct.dp_panel, ptr %0, i32 0, i32 4, i32 2
  %22 = load i32, ptr %21, align 4
  switch i32 %22, label %27 [
    i32 4, label %23
    i32 2, label %23
    i32 1, label %23
  ]

23:                                               ; preds = %20, %20, %20
  %24 = getelementptr inbounds %struct.dp_panel, ptr %0, i32 0, i32 13
  %25 = load i32, ptr %24, align 4
  %26 = icmp ult i32 %25, %16
  br i1 %26, label %27, label %30

27:                                               ; preds = %23, %20, %17
  %28 = phi i32 [ %19, %17 ], [ %22, %20 ], [ %22, %23 ]
  %29 = load i32, ptr %13, align 4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2, i32 noundef %29, i32 noundef %28) #4
  br label %90

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.dp_panel, ptr %0, i32 0, i32 3
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %50, label %34

34:                                               ; preds = %30
  %35 = getelementptr i8, ptr %0, i32 228
  %36 = load ptr, ptr %35, align 4
  %37 = call i32 @drm_dp_dpcd_read(ptr noundef %36, i32 noundef 512, ptr noundef nonnull %3, i32 noundef 1) #4
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %50

39:                                               ; preds = %34
  %40 = load i32, ptr %3, align 4
  %41 = lshr i32 %40, 1
  %42 = and i32 %41, 64
  %43 = and i32 %40, 63
  %44 = or i32 %42, %43
  store i32 %44, ptr %3, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %39
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #4
  %47 = getelementptr i8, ptr %0, i32 232
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.dp_link, ptr %48, i32 0, i32 3
  store i8 0, ptr %49, align 1
  br label %90

50:                                               ; preds = %39, %34, %30
  %51 = getelementptr inbounds %struct.dp_panel, ptr %0, i32 0, i32 6
  %52 = load ptr, ptr %51, align 4
  call void @kfree(ptr noundef %52) #4
  store ptr null, ptr %51, align 4
  %53 = getelementptr i8, ptr %0, i32 228
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.drm_dp_aux, ptr %54, i32 0, i32 1
  %56 = call ptr @drm_get_edid(ptr noundef nonnull %1, ptr noundef %55) #4
  store ptr %56, ptr %51, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %72

58:                                               ; preds = %50
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #4
  %59 = getelementptr i8, ptr %0, i32 236
  %60 = load ptr, ptr %59, align 4
  %61 = call i32 @dp_catalog_link_is_connected(ptr noundef %60) #4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %90, label %63

63:                                               ; preds = %58
  %64 = load ptr, ptr %1, align 8
  %65 = getelementptr inbounds %struct.drm_device, ptr %64, i32 0, i32 30
  call void @mutex_lock(ptr noundef %65) #4
  %66 = call i32 @drm_add_modes_noedid(ptr noundef nonnull %1, i32 noundef 640, i32 noundef 480) #4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %63
  call void @drm_set_preferred_mode(ptr noundef nonnull %1, i32 noundef 640, i32 noundef 480) #4
  br label %69

69:                                               ; preds = %68, %63
  %70 = load ptr, ptr %1, align 8
  %71 = getelementptr inbounds %struct.drm_device, ptr %70, i32 0, i32 30
  call void @mutex_unlock(ptr noundef %71) #4
  br label %72

72:                                               ; preds = %69, %50
  %73 = getelementptr i8, ptr %0, i32 241
  %74 = load i8, ptr %73, align 1, !range !9
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %90, label %76

76:                                               ; preds = %72
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.5) #4
  %77 = call fastcc i32 @dp_panel_read_dpcd(ptr noundef nonnull %0)
  %78 = load i32, ptr %13, align 4
  %79 = call zeroext i8 @drm_dp_link_rate_to_bw_code(i32 noundef %78) #4
  %80 = zext i8 %79 to i32
  %81 = icmp eq i32 %77, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %76
  switch i8 %79, label %88 [
    i8 20, label %83
    i8 10, label %83
    i8 6, label %83
    i8 30, label %83
  ]

83:                                               ; preds = %82, %82, %82, %82
  %84 = load i32, ptr %21, align 4
  switch i32 %84, label %88 [
    i32 4, label %85
    i32 2, label %85
    i32 1, label %85
  ]

85:                                               ; preds = %83, %83, %83
  %86 = load i32, ptr %24, align 4
  %87 = icmp ult i32 %86, %80
  br i1 %87, label %88, label %89

88:                                               ; preds = %85, %83, %82, %76
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1, i32 noundef %77) #4
  br label %90

89:                                               ; preds = %85
  store i8 0, ptr %73, align 1
  br label %90

90:                                               ; preds = %89, %88, %72, %58, %46, %27, %11, %7
  %91 = phi i32 [ %9, %11 ], [ -22, %27 ], [ %77, %88 ], [ -22, %7 ], [ 0, %89 ], [ 0, %72 ], [ -107, %46 ], [ -110, %58 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #4
  ret i32 %91
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dp_panel_read_dpcd(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dp_panel, ptr %0, i32 0, i32 4
  %3 = getelementptr i8, ptr %0, i32 228
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @drm_dp_dpcd_read(ptr noundef %4, i32 noundef 0, ptr noundef %0, i32 noundef 16) #4
  %6 = icmp slt i32 %5, 16
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17, i32 noundef %5) #4
  %8 = icmp eq i32 %5, -110
  %9 = select i1 %8, i32 -110, i32 -22
  br label %81

10:                                               ; preds = %1
  %11 = getelementptr i8, ptr %0, i32 14
  %12 = load i8, ptr %11, align 1
  %13 = icmp sgt i8 %12, -1
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.18) #4
  br label %15

15:                                               ; preds = %14, %10
  %16 = phi i32 [ 8704, %14 ], [ 0, %10 ]
  %17 = load ptr, ptr %3, align 4
  %18 = tail call i32 @drm_dp_dpcd_read(ptr noundef %17, i32 noundef %16, ptr noundef %0, i32 noundef 16) #4
  %19 = icmp slt i32 %18, 16
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17, i32 noundef %18) #4
  %21 = icmp eq i32 %18, -110
  %22 = select i1 %21, i32 -110, i32 -22
  br label %81

23:                                               ; preds = %15
  %24 = load i8, ptr %0, align 1
  store i8 %24, ptr %2, align 4
  %25 = lshr i8 %24, 4
  %26 = and i8 %24, 15
  %27 = getelementptr i8, ptr %0, i32 1
  %28 = load i8, ptr %27, align 1
  %29 = tail call i32 @drm_dp_bw_code_to_link_rate(i8 noundef zeroext %28) #4
  %30 = getelementptr inbounds %struct.dp_panel, ptr %0, i32 0, i32 4, i32 1
  store i32 %29, ptr %30, align 4
  %31 = getelementptr i8, ptr %0, i32 2
  %32 = load i8, ptr %31, align 1
  %33 = and i8 %32, 31
  %34 = zext i8 %33 to i32
  %35 = getelementptr inbounds %struct.dp_panel, ptr %0, i32 0, i32 4, i32 2
  %36 = getelementptr inbounds %struct.dp_panel, ptr %0, i32 0, i32 12
  %37 = load i32, ptr %36, align 4
  %38 = tail call i32 @llvm.umin.i32(i32 %37, i32 %34)
  store i32 %38, ptr %35, align 4
  %39 = tail call i32 @drm_dp_bw_code_to_link_rate(i8 noundef zeroext 20) #4
  %40 = icmp ult i32 %29, %39
  br i1 %40, label %43, label %41

41:                                               ; preds = %23
  %42 = tail call i32 @drm_dp_bw_code_to_link_rate(i8 noundef zeroext 20) #4
  store i32 %42, ptr %30, align 4
  br label %43

43:                                               ; preds = %41, %23
  %44 = zext i8 %25 to i32
  %45 = zext i8 %26 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.19, i32 noundef %44, i32 noundef %45) #4
  %46 = load i32, ptr %30, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.20, i32 noundef %46) #4
  %47 = load i32, ptr %35, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.21, i32 noundef %47) #4
  %48 = load i8, ptr %0, align 1
  %49 = icmp ugt i8 %48, 16
  br i1 %49, label %50, label %64

50:                                               ; preds = %43
  %51 = load i8, ptr %31, align 1
  %52 = icmp slt i8 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.dp_panel, ptr %0, i32 0, i32 4, i32 3
  %55 = load i32, ptr %54, align 4
  %56 = or i32 %55, 1
  store i32 %56, ptr %54, align 4
  br label %57

57:                                               ; preds = %53, %50
  %58 = getelementptr i8, ptr %0, i32 5
  %59 = load i8, ptr %58, align 1
  %60 = getelementptr inbounds %struct.dp_panel, ptr %0, i32 0, i32 3
  %61 = and i8 %59, 1
  %62 = zext i8 %61 to i32
  store i32 %62, ptr %60, align 4
  %63 = icmp eq i8 %61, 0
  br i1 %63, label %81, label %70

64:                                               ; preds = %43
  %65 = getelementptr i8, ptr %0, i32 5
  %66 = load i8, ptr %65, align 1
  %67 = getelementptr inbounds %struct.dp_panel, ptr %0, i32 0, i32 3
  %68 = and i8 %66, 1
  %69 = zext i8 %68 to i32
  store i32 %69, ptr %67, align 4
  br label %81

70:                                               ; preds = %57
  %71 = getelementptr i8, ptr %0, i32 7
  %72 = load i8, ptr %71, align 1
  %73 = getelementptr inbounds %struct.dp_panel, ptr %0, i32 0, i32 2
  %74 = and i8 %72, 15
  %75 = zext i8 %74 to i32
  store i32 %75, ptr %73, align 4
  %76 = load ptr, ptr %3, align 4
  %77 = getelementptr inbounds %struct.dp_panel, ptr %0, i32 0, i32 1
  %78 = tail call i32 @drm_dp_dpcd_read(ptr noundef %76, i32 noundef 128, ptr noundef %77, i32 noundef 16) #4
  %79 = icmp ult i32 %78, 16
  br i1 %79, label %80, label %81

80:                                               ; preds = %70
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.22, i32 noundef %78) #4
  br label %81

81:                                               ; preds = %80, %70, %64, %57, %20, %7
  %82 = phi i32 [ -22, %80 ], [ 0, %70 ], [ 0, %57 ], [ %9, %7 ], [ %22, %20 ], [ 0, %64 ]
  ret i32 %82
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @drm_dp_link_rate_to_bw_code(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_dpcd_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_get_edid(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dp_catalog_link_is_connected(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_add_modes_noedid(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_set_preferred_mode(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dp_panel_get_mode_bpp(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp ne ptr %0, null
  %5 = icmp ne i32 %1, 0
  %6 = and i1 %4, %5
  %7 = icmp ne i32 %2, 0
  %8 = and i1 %6, %7
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #4
  br label %42

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.dp_panel, ptr %0, i32 0, i32 9
  %12 = load i8, ptr %11, align 4, !range !9
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %10
  %15 = getelementptr i8, ptr %0, i32 232
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.dp_link, ptr %16, i32 0, i32 4, i32 1
  %18 = load i32, ptr %17, align 4
  switch i32 %18, label %21 [
    i32 0, label %42
    i32 32, label %19
    i32 64, label %20
  ]

19:                                               ; preds = %14
  br label %42

20:                                               ; preds = %14
  br label %42

21:                                               ; preds = %14
  br label %42

22:                                               ; preds = %10
  %23 = getelementptr inbounds %struct.dp_panel, ptr %0, i32 0, i32 4, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.dp_panel, ptr %0, i32 0, i32 4, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = shl i32 %24, 3
  %28 = mul i32 %27, %26
  %29 = tail call i32 @llvm.umin.i32(i32 %1, i32 30) #4
  %30 = icmp ugt i32 %29, 18
  %31 = mul i32 %29, %2
  %32 = icmp ugt i32 %31, %28
  %33 = select i1 %30, i1 %32, i1 false
  br i1 %33, label %34, label %42

34:                                               ; preds = %22
  %35 = add nsw i32 %29, -6
  %36 = icmp ugt i32 %35, 18
  %37 = mul i32 %35, %2
  %38 = icmp ugt i32 %37, %28
  %39 = select i1 %36, i1 %38, i1 false
  %40 = add nsw i32 %29, -12
  %41 = select i1 %39, i32 %40, i32 %35
  br label %42

42:                                               ; preds = %34, %22, %21, %20, %19, %14, %9
  %43 = phi i32 [ 0, %9 ], [ 0, %21 ], [ 30, %20 ], [ 24, %19 ], [ 18, %14 ], [ %29, %22 ], [ %41, %34 ]
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dp_panel_get_modes(ptr noundef readonly %0, ptr noundef %1, ptr nocapture noundef readnone %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #4
  br label %16

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.dp_panel, ptr %0, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %6
  %11 = tail call i32 @drm_connector_update_edid_property(ptr noundef %1, ptr noundef nonnull %8) #4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.23, i32 noundef %11) #4
  br label %16

14:                                               ; preds = %10
  %15 = tail call i32 @drm_add_edid_modes(ptr noundef %1, ptr noundef nonnull %8) #4
  br label %16

16:                                               ; preds = %14, %13, %6, %5
  %17 = phi i32 [ -22, %5 ], [ 0, %6 ], [ %11, %13 ], [ %15, %14 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dp_panel_handle_sink_request(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca i8, align 1
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #4
  br label %42

5:                                                ; preds = %1
  %6 = getelementptr i8, ptr %0, i32 232
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %42, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.dp_panel, ptr %0, i32 0, i32 6
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %31, label %15

15:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #4
  store i8 0, ptr %2, align 1
  %16 = getelementptr inbounds %struct.edid, ptr %13, i32 0, i32 26
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i32
  %19 = shl nuw nsw i32 %18, 7
  %20 = getelementptr i8, ptr %13, i32 %19
  %21 = call zeroext i1 @drm_edid_block_valid(ptr noundef %20, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull %2) #4
  %22 = load i8, ptr %2, align 1, !range !9
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %15
  %25 = getelementptr inbounds %struct.edid, ptr %20, i32 0, i32 27
  %26 = load i8, ptr %25, align 1
  br label %28

27:                                               ; preds = %15
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.25) #4
  br label %28

28:                                               ; preds = %27, %24
  %29 = phi i8 [ 0, %27 ], [ %26, %24 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #4
  %30 = load ptr, ptr %6, align 4
  br label %36

31:                                               ; preds = %11
  %32 = getelementptr inbounds %struct.dp_panel, ptr %0, i32 0, i32 7
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.drm_connector, ptr %33, i32 0, i32 50
  %35 = load i8, ptr %34, align 1
  br label %36

36:                                               ; preds = %31, %28
  %37 = phi ptr [ %30, %28 ], [ %7, %31 ]
  %38 = phi i8 [ %29, %28 ], [ %35, %31 ]
  %39 = call zeroext i1 @dp_link_send_edid_checksum(ptr noundef %37, i8 noundef zeroext %38) #4
  %40 = load ptr, ptr %6, align 4
  %41 = call zeroext i1 @dp_link_send_test_response(ptr noundef %40) #4
  br label %42

42:                                               ; preds = %36, %5, %4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dp_link_send_edid_checksum(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dp_link_send_test_response(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dp_panel_tpg_config(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #4
  br label %16

5:                                                ; preds = %2
  %6 = getelementptr i8, ptr %0, i32 236
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %0, i32 240
  %9 = load i8, ptr %8, align 4, !range !9
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %5
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.6) #4
  br label %16

12:                                               ; preds = %5
  br i1 %1, label %14, label %13

13:                                               ; preds = %12
  tail call void @dp_catalog_panel_tpg_disable(ptr noundef %7) #4
  br label %16

14:                                               ; preds = %12
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.dp_panel_tpg_config) #4
  %15 = getelementptr inbounds %struct.dp_panel, ptr %0, i32 0, i32 8
  tail call void @dp_catalog_panel_tpg_enable(ptr noundef %7, ptr noundef %15) #4
  br label %16

16:                                               ; preds = %14, %13, %11, %4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dp_catalog_panel_tpg_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dp_catalog_panel_tpg_enable(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dp_panel_dump_regs(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 236
  %3 = load ptr, ptr %2, align 4
  tail call void @dp_catalog_dump_regs(ptr noundef %3) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dp_catalog_dump_regs(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dp_panel_timing_cfg(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 236
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dp_panel, ptr %0, i32 0, i32 8, i32 0, i32 1
  %5 = load i16, ptr %4, align 4
  %6 = zext i16 %5 to i32
  %7 = getelementptr inbounds %struct.dp_panel, ptr %0, i32 0, i32 8, i32 0, i32 4
  %8 = load i16, ptr %7, align 2
  %9 = zext i16 %8 to i32
  %10 = getelementptr inbounds %struct.dp_panel, ptr %0, i32 0, i32 8, i32 0, i32 3
  %11 = load i16, ptr %10, align 4
  %12 = zext i16 %11 to i32
  %13 = sub nsw i32 %9, %12
  %14 = getelementptr inbounds %struct.dp_panel, ptr %0, i32 0, i32 8, i32 0, i32 2
  %15 = load i16, ptr %14, align 2
  %16 = zext i16 %15 to i32
  %17 = sub nsw i32 %16, %6
  %18 = sub nsw i32 %12, %16
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.8, i32 noundef %6, i32 noundef %13, i32 noundef %17, i32 noundef %18) #4
  %19 = getelementptr inbounds %struct.dp_panel, ptr %0, i32 0, i32 8, i32 0, i32 6
  %20 = load i16, ptr %19, align 2
  %21 = zext i16 %20 to i32
  %22 = getelementptr inbounds %struct.dp_panel, ptr %0, i32 0, i32 8, i32 0, i32 9
  %23 = load i16, ptr %22, align 4
  %24 = zext i16 %23 to i32
  %25 = getelementptr inbounds %struct.dp_panel, ptr %0, i32 0, i32 8, i32 0, i32 8
  %26 = load i16, ptr %25, align 2
  %27 = zext i16 %26 to i32
  %28 = sub nsw i32 %24, %27
  %29 = getelementptr inbounds %struct.dp_panel, ptr %0, i32 0, i32 8, i32 0, i32 7
  %30 = load i16, ptr %29, align 4
  %31 = zext i16 %30 to i32
  %32 = sub nsw i32 %31, %21
  %33 = sub nsw i32 %27, %31
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.9, i32 noundef %21, i32 noundef %28, i32 noundef %32, i32 noundef %33) #4
  %34 = load i16, ptr %7, align 2
  %35 = zext i16 %34 to i32
  %36 = load i16, ptr %22, align 4
  %37 = zext i16 %36 to i32
  %38 = shl nuw i32 %37, 16
  %39 = or i32 %38, %35
  %40 = getelementptr inbounds %struct.dp_catalog, ptr %3, i32 0, i32 1
  store i32 %39, ptr %40, align 4
  %41 = load i16, ptr %22, align 4
  %42 = zext i16 %41 to i32
  %43 = load i16, ptr %29, align 4
  %44 = zext i16 %43 to i32
  %45 = sub nsw i32 %42, %44
  %46 = shl i32 %45, 16
  %47 = load i16, ptr %7, align 2
  %48 = zext i16 %47 to i32
  %49 = load i16, ptr %14, align 2
  %50 = zext i16 %49 to i32
  %51 = sub nsw i32 %48, %50
  %52 = or i32 %51, %46
  %53 = getelementptr inbounds %struct.dp_catalog, ptr %3, i32 0, i32 2
  store i32 %52, ptr %53, align 4
  %54 = load i16, ptr %25, align 2
  %55 = zext i16 %54 to i32
  %56 = load i16, ptr %29, align 4
  %57 = zext i16 %56 to i32
  %58 = sub nsw i32 %55, %57
  %59 = shl i32 %58, 16
  %60 = getelementptr inbounds %struct.dp_panel, ptr %0, i32 0, i32 8, i32 4
  %61 = load i32, ptr %60, align 4
  %62 = shl i32 %61, 31
  %63 = or i32 %59, %62
  %64 = load i16, ptr %10, align 4
  %65 = zext i16 %64 to i32
  %66 = load i16, ptr %14, align 2
  %67 = zext i16 %66 to i32
  %68 = sub nsw i32 %65, %67
  %69 = or i32 %63, %68
  %70 = getelementptr inbounds %struct.dp_panel, ptr %0, i32 0, i32 8, i32 3
  %71 = load i32, ptr %70, align 4
  %72 = shl i32 %71, 15
  %73 = or i32 %69, %72
  %74 = getelementptr inbounds %struct.dp_catalog, ptr %3, i32 0, i32 3
  store i32 %73, ptr %74, align 4
  %75 = load i16, ptr %19, align 2
  %76 = zext i16 %75 to i32
  %77 = shl nuw i32 %76, 16
  %78 = load i16, ptr %4, align 4
  %79 = zext i16 %78 to i32
  %80 = or i32 %77, %79
  %81 = getelementptr inbounds %struct.dp_catalog, ptr %3, i32 0, i32 4
  store i32 %80, ptr %81, align 4
  %82 = tail call i32 @dp_catalog_panel_timing_cfg(ptr noundef %3) #4
  %83 = getelementptr i8, ptr %0, i32 240
  store i8 1, ptr %83, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dp_catalog_panel_timing_cfg(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dp_panel_init_panel_info(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dp_panel, ptr %0, i32 0, i32 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.10) #4
  %3 = getelementptr inbounds %struct.dp_panel, ptr %0, i32 0, i32 8, i32 0, i32 1
  %4 = load i16, ptr %3, align 4
  %5 = zext i16 %4 to i32
  %6 = getelementptr inbounds %struct.dp_panel, ptr %0, i32 0, i32 8, i32 0, i32 6
  %7 = load i16, ptr %6, align 2
  %8 = zext i16 %7 to i32
  %9 = tail call i32 @drm_mode_vrefresh(ptr noundef %2) #4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.11, i32 noundef %5, i32 noundef %8, i32 noundef %9) #4
  %10 = getelementptr inbounds %struct.dp_panel, ptr %0, i32 0, i32 8, i32 0, i32 4
  %11 = load i16, ptr %10, align 2
  %12 = zext i16 %11 to i32
  %13 = getelementptr inbounds %struct.dp_panel, ptr %0, i32 0, i32 8, i32 0, i32 3
  %14 = load i16, ptr %13, align 4
  %15 = zext i16 %14 to i32
  %16 = sub nsw i32 %12, %15
  %17 = getelementptr inbounds %struct.dp_panel, ptr %0, i32 0, i32 8, i32 0, i32 2
  %18 = load i16, ptr %17, align 2
  %19 = zext i16 %18 to i32
  %20 = load i16, ptr %3, align 4
  %21 = zext i16 %20 to i32
  %22 = sub nsw i32 %19, %21
  %23 = sub nsw i32 %15, %19
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.12, i32 noundef %16, i32 noundef %22, i32 noundef %23) #4
  %24 = getelementptr inbounds %struct.dp_panel, ptr %0, i32 0, i32 8, i32 0, i32 9
  %25 = load i16, ptr %24, align 4
  %26 = zext i16 %25 to i32
  %27 = getelementptr inbounds %struct.dp_panel, ptr %0, i32 0, i32 8, i32 0, i32 8
  %28 = load i16, ptr %27, align 2
  %29 = zext i16 %28 to i32
  %30 = sub nsw i32 %26, %29
  %31 = getelementptr inbounds %struct.dp_panel, ptr %0, i32 0, i32 8, i32 0, i32 7
  %32 = load i16, ptr %31, align 4
  %33 = zext i16 %32 to i32
  %34 = load i16, ptr %6, align 2
  %35 = zext i16 %34 to i32
  %36 = sub nsw i32 %33, %35
  %37 = sub nsw i32 %29, %33
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.13, i32 noundef %30, i32 noundef %36, i32 noundef %37) #4
  %38 = load i32, ptr %2, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.14, i32 noundef %38) #4
  %39 = getelementptr inbounds %struct.dp_panel, ptr %0, i32 0, i32 8, i32 2
  %40 = load i32, ptr %39, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.15, i32 noundef %40) #4
  %41 = load i32, ptr %39, align 4
  %42 = tail call i32 @llvm.umin.i32(i32 %41, i32 30)
  %43 = tail call i32 @llvm.umax.i32(i32 %42, i32 18)
  store i32 %43, ptr %39, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.16, i32 noundef %43) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_vrefresh(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dp_panel_get(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %16, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.dp_panel_in, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.dp_panel_in, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.dp_panel_in, ptr %0, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %12, %8, %4, %1
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #4
  br label %31

17:                                               ; preds = %12
  %18 = tail call noalias ptr @devm_kmalloc(ptr noundef nonnull %2, i32 noundef 248, i32 noundef 3520) #4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %31, label %20

20:                                               ; preds = %17
  %21 = load ptr, ptr %0, align 4
  store ptr %21, ptr %18, align 4
  %22 = load ptr, ptr %9, align 4
  %23 = getelementptr inbounds %struct.dp_panel_private, ptr %18, i32 0, i32 2
  store ptr %22, ptr %23, align 4
  %24 = load ptr, ptr %5, align 4
  %25 = getelementptr inbounds %struct.dp_panel_private, ptr %18, i32 0, i32 4
  store ptr %24, ptr %25, align 4
  %26 = load ptr, ptr %13, align 4
  %27 = getelementptr inbounds %struct.dp_panel_private, ptr %18, i32 0, i32 3
  store ptr %26, ptr %27, align 4
  %28 = getelementptr inbounds %struct.dp_panel_private, ptr %18, i32 0, i32 1
  %29 = getelementptr inbounds %struct.dp_panel_private, ptr %18, i32 0, i32 1, i32 13
  store i32 30, ptr %29, align 4
  %30 = getelementptr inbounds %struct.dp_panel_private, ptr %18, i32 0, i32 6
  store i8 0, ptr %30, align 1
  br label %31

31:                                               ; preds = %20, %17, %16
  %32 = phi ptr [ %28, %20 ], [ inttoptr (i32 -22 to ptr), %16 ], [ inttoptr (i32 -12 to ptr), %17 ]
  ret ptr %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dp_panel_put(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.dp_panel, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  tail call void @kfree(ptr noundef %5) #4
  br label %6

6:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_bw_code_to_link_rate(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_update_edid_property(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_add_edid_modes(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_edid_block_valid(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }

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
!9 = !{i8 0, i8 2}
