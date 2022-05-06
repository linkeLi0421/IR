; ModuleID = '/llk/IR/drivers/gpu/drm/msm/dp/dp_ctrl.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/dp/dp_ctrl.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lock_class_key = type {}
%struct.dp_ctrl_private = type { %struct.dp_ctrl, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.completion, %struct.completion }
%struct.dp_ctrl = type { i8, %struct.atomic_t, i32 }
%struct.atomic_t = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.dp_parser = type { ptr, [4 x %struct.dss_module_power], %struct.dp_pinctrl, %struct.dp_io, %struct.dp_display_data, ptr, i32, ptr, ptr }
%struct.dss_module_power = type { i32, ptr }
%struct.dp_pinctrl = type { ptr, ptr, ptr, ptr }
%struct.dp_io = type { %struct.dss_io_data, ptr, %union.phy_configure_opts }
%struct.dss_io_data = type { %struct.dss_io_region, %struct.dss_io_region, %struct.dss_io_region, %struct.dss_io_region }
%struct.dss_io_region = type { i32, ptr }
%union.phy_configure_opts = type { %struct.phy_configure_opts_mipi_dphy }
%struct.phy_configure_opts_mipi_dphy = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.dp_display_data = type { ptr, ptr, i8, ptr, ptr }
%struct.dp_link = type { i32, i32, i8, i8, %struct.dp_link_test_video, %struct.dp_link_test_audio, %struct.dp_link_phy_params, %struct.dp_link_info }
%struct.dp_link_test_video = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dp_link_test_audio = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dp_link_phy_params = type { i32, i8, i8 }
%struct.dp_link_info = type { i8, i32, i32, i32 }
%struct.dp_panel = type { [16 x i8], [16 x i8], i32, i32, %struct.dp_link_info, %struct.drm_dp_desc, ptr, ptr, %struct.dp_display_mode, i8, i32, i32, i32, i32 }
%struct.drm_dp_desc = type { %struct.drm_dp_dpcd_ident, i32 }
%struct.drm_dp_dpcd_ident = type { [3 x i8], [6 x i8], i8, i8, i8 }
%struct.dp_display_mode = type { %struct.drm_display_mode, i32, i32, i32, i32 }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.dss_clk = type { ptr, [32 x i8], i32, i32, i32 }
%struct.dp_tu_calc_input = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dp_vc_tu_mapping_table = type { i32, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8 }
%struct.tu_algo_data = type { i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [43 x i8] c"\014[drm-dp] %s: PUSH_IDLE pattern timedout\0A\00", align 1
@__func__.dp_ctrl_push_idle = private unnamed_addr constant [18 x i8] c"dp_ctrl_push_idle\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"mainlink off done\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Invalid input data\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"flip=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Host deinitialized successfully\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"invalid input\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"PHY_TEST_PATTERN request\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"process phy_test_req failed\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"LM failed: TEST_LINK_TRAINING\0A\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"using phy test link parameters\0A\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"rate=%d, num_lanes=%d, pixel_rate=%d\0A\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"Failed to reinitialize mainlink. rc=%d\0A\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"Failed to start link clocks. ret=%d\0A\00", align 1
@.str.13 = private unnamed_addr constant [38 x i8] c"Failed to start pixel clocks. ret=%d\0A\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"mainlink %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"READY\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"NOT READY\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"Failed to disable pclk. ret=%d\0A\00", align 1
@.str.18 = private unnamed_addr constant [39 x i8] c"Failed to disable link clocks. ret=%d\0A\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"DP off link/stream done\0A\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"DP off phy done\0A\00", align 1
@.str.21 = private unnamed_addr constant [40 x i8] c"Failed to disable pixel clocks. ret=%d\0A\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"DP off done\0A\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"dp_video_ready\0A\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"idle_patterns_sent\0A\00", align 1
@.str.25 = private unnamed_addr constant [24 x i8] c"Mem allocation failure\0A\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"ctrl_link\00", align 1
@.str.27 = private unnamed_addr constant [37 x i8] c"invalid DP OPP table in device tree\0A\00", align 1
@.str.28 = private unnamed_addr constant [28 x i8] c"failed to add DP OPP table\0A\00", align 1
@.str.29 = private unnamed_addr constant [34 x i8] c"no test pattern selected by sink\0A\00", align 1
@.str.30 = private unnamed_addr constant [33 x i8] c"failed to disable DP controller\0A\00", align 1
@.str.31 = private unnamed_addr constant [37 x i8] c"failed to enable DP link controller\0A\00", align 1
@.str.32 = private unnamed_addr constant [37 x i8] c"Unable to start link clocks. ret=%d\0A\00", align 1
@.str.33 = private unnamed_addr constant [27 x i8] c"link rate=%d pixel_clk=%d\0A\00", align 1
@.str.34 = private unnamed_addr constant [28 x i8] c"setting rate=%lu on clk=%s\0A\00", align 1
@.str.35 = private unnamed_addr constant [39 x i8] c"%s clock doesn't exit to set rate %lu\0A\00", align 1
@.str.36 = private unnamed_addr constant [34 x i8] c"Failed to disable clocks. ret=%d\0A\00", align 1
@.str.37 = private unnamed_addr constant [40 x i8] c"Failed to enable mainlink clks. ret=%d\0A\00", align 1
@.str.38 = private unnamed_addr constant [33 x i8] c"link training #1 failed. ret=%d\0A\00", align 1
@.str.39 = private unnamed_addr constant [29 x i8] c"link training #1 successful\0A\00", align 1
@.str.40 = private unnamed_addr constant [33 x i8] c"link training #2 failed. ret=%d\0A\00", align 1
@.str.41 = private unnamed_addr constant [29 x i8] c"link training #2 successful\0A\00", align 1
@dp_ctrl_link_train_1._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.dp_ctrl_link_train_1 = private unnamed_addr constant [21 x i8] c"dp_ctrl_link_train_1\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c"\013\00", align 1
@.str.43 = private unnamed_addr constant [29 x i8] c"*ERROR* max v_level reached\0A\00", align 1
@.str.44 = private unnamed_addr constant [42 x i8] c"clock recovery not done, adjusting vx px\0A\00", align 1
@.str.45 = private unnamed_addr constant [19 x i8] c"max tries reached\0A\00", align 1
@.str.46 = private unnamed_addr constant [18 x i8] c"sink: pattern=%x\0A\00", align 1
@.str.47 = private unnamed_addr constant [38 x i8] c"voltage level: %d emphasis level: %d\0A\00", align 1
@.str.48 = private unnamed_addr constant [37 x i8] c"max. voltage swing level reached %d\0A\00", align 1
@.str.49 = private unnamed_addr constant [36 x i8] c"max. pre-emphasis level reached %d\0A\00", align 1
@.str.50 = private unnamed_addr constant [16 x i8] c"sink: p|v=0x%x\0A\00", align 1
@.str.51 = private unnamed_addr constant [37 x i8] c"DP link status read failed, err: %d\0A\00", align 1
@.str.52 = private unnamed_addr constant [15 x i8] c"new rate=0x%x\0A\00", align 1
@.str.53 = private unnamed_addr constant [13 x i8] c"stream_pixel\00", align 1
@.str.54 = private unnamed_addr constant [39 x i8] c"Unabled to start pixel clocks. ret=%d\0A\00", align 1
@.str.55 = private unnamed_addr constant [15 x i8] c"request: 0x%x\0A\00", align 1
@.str.56 = private unnamed_addr constant [26 x i8] c"Failed to set v/p levels\0A\00", align 1
@.str.57 = private unnamed_addr constant [16 x i8] c"%s: test->0x%x\0A\00", align 1
@.str.58 = private unnamed_addr constant [8 x i8] c"success\00", align 1
@.str.59 = private unnamed_addr constant [7 x i8] c"failed\00", align 1
@.str.60 = private unnamed_addr constant [36 x i8] c"Info: increase HBLANK_MARGIN to %d\0A\00", align 1
@.str.61 = private unnamed_addr constant [35 x i8] c"Info: n_sym = %d, num_of_tus = %d\0A\00", align 1
@.str.62 = private unnamed_addr constant [29 x i8] c"TU: valid_boundary_link: %d\0A\00", align 1
@.str.63 = private unnamed_addr constant [26 x i8] c"TU: delay_start_link: %d\0A\00", align 1
@.str.64 = private unnamed_addr constant [32 x i8] c"TU: boundary_moderation_en: %d\0A\00", align 1
@.str.65 = private unnamed_addr constant [35 x i8] c"TU: valid_lower_boundary_link: %d\0A\00", align 1
@.str.66 = private unnamed_addr constant [30 x i8] c"TU: upper_boundary_count: %d\0A\00", align 1
@.str.67 = private unnamed_addr constant [30 x i8] c"TU: lower_boundary_count: %d\0A\00", align 1
@.str.68 = private unnamed_addr constant [24 x i8] c"TU: tu_size_minus1: %d\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.69 = private unnamed_addr constant [51 x i8] c"\016[drm-dp] %s: incorrect no of bytes per slice=%d\0A\00", align 1
@__func__.dp_panel_update_tu_timings = private unnamed_addr constant [27 x i8] c"dp_panel_update_tu_timings\00", align 1
@.str.70 = private unnamed_addr constant [21 x i8] c"wait4video timedout\0A\00", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.71 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dp_ctrl_push_idle(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dp_ctrl_private, ptr %0, i32 0, i32 8
  store i32 0, ptr %2, align 4
  %3 = getelementptr inbounds %struct.dp_ctrl_private, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  tail call void @dp_catalog_ctrl_state_ctrl(ptr noundef %4, i32 noundef 256) #8
  %5 = tail call i32 @wait_for_completion_timeout(ptr noundef %2, i32 noundef 3) #8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dp_ctrl_push_idle) #9
  br label %9

9:                                                ; preds = %7, %1
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.1) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dp_catalog_ctrl_state_ctrl(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dp_ctrl_host_init(ptr noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2) #8
  br label %21

6:                                                ; preds = %3
  %7 = zext i1 %1 to i8
  %8 = getelementptr inbounds %struct.dp_ctrl_private, ptr %0, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.dp_parser, ptr %9, i32 0, i32 3, i32 1
  %11 = load ptr, ptr %10, align 4
  store i8 %7, ptr %0, align 4
  br i1 %2, label %12, label %15

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.dp_ctrl_private, ptr %0, i32 0, i32 7
  %14 = load ptr, ptr %13, align 4
  tail call void @dp_catalog_ctrl_reset(ptr noundef %14) #8
  br label %15

15:                                               ; preds = %12, %6
  %16 = zext i1 %1 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.3, i32 noundef %16) #8
  %17 = getelementptr inbounds %struct.dp_ctrl_private, ptr %0, i32 0, i32 7
  %18 = load ptr, ptr %17, align 4
  tail call void @dp_catalog_ctrl_phy_reset(ptr noundef %18) #8
  %19 = tail call i32 @phy_init(ptr noundef %11) #8
  %20 = load ptr, ptr %17, align 4
  tail call void @dp_catalog_ctrl_enable_irq(ptr noundef %20, i1 noundef zeroext true) #8
  br label %21

21:                                               ; preds = %15, %5
  %22 = phi i32 [ 0, %15 ], [ -22, %5 ]
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dp_catalog_ctrl_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dp_catalog_ctrl_phy_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dp_catalog_ctrl_enable_irq(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dp_ctrl_host_deinit(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2) #8
  br label %12

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.dp_ctrl_private, ptr %0, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dp_parser, ptr %6, i32 0, i32 3, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.dp_ctrl_private, ptr %0, i32 0, i32 7
  %10 = load ptr, ptr %9, align 4
  tail call void @dp_catalog_ctrl_enable_irq(ptr noundef %10, i1 noundef zeroext false) #8
  %11 = tail call i32 @phy_exit(ptr noundef %8) #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.4) #8
  br label %12

12:                                               ; preds = %4, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dp_ctrl_handle_sink_request(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %40, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.dp_ctrl_private, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %26, label %9

9:                                                ; preds = %3
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.6) #8
  %10 = load ptr, ptr %4, align 4
  %11 = getelementptr inbounds %struct.dp_link, ptr %10, i32 0, i32 6
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.29) #8
  br label %26

15:                                               ; preds = %9
  %16 = tail call i32 @dp_ctrl_off_link_stream(ptr noundef nonnull %0) #8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %15
  %19 = tail call i32 @dp_ctrl_on_link(ptr noundef nonnull %0) #8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = tail call i32 @dp_ctrl_on_stream(ptr noundef nonnull %0) #8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %40

24:                                               ; preds = %18, %15
  %25 = phi ptr [ @.str.30, %15 ], [ @.str.31, %18 ]
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull %25) #8
  br label %40

26:                                               ; preds = %21, %14, %3
  %27 = and i32 %6, 128
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = tail call fastcc i32 @dp_ctrl_link_maintenance(ptr noundef nonnull %0)
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %29, %26
  %33 = and i32 %6, 1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %32
  %36 = load ptr, ptr %4, align 4
  %37 = tail call zeroext i1 @dp_link_send_test_response(ptr noundef %36) #8
  %38 = tail call fastcc i32 @dp_ctrl_link_maintenance(ptr noundef nonnull %0)
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %35, %29, %24, %21, %1
  %41 = phi ptr [ @.str.5, %1 ], [ @.str.7, %24 ], [ @.str.7, %21 ], [ @.str.8, %29 ], [ @.str.8, %35 ]
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull %41) #8
  br label %42

42:                                               ; preds = %40, %35, %32
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dp_ctrl_link_maintenance(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4
  %4 = getelementptr inbounds %struct.dp_ctrl_private, ptr %0, i32 0, i32 8
  store i32 0, ptr %4, align 4
  %5 = getelementptr inbounds %struct.dp_ctrl_private, ptr %0, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  tail call void @dp_catalog_ctrl_state_ctrl(ptr noundef %6, i32 noundef 256) #8
  %7 = tail call i32 @wait_for_completion_timeout(ptr noundef %4, i32 noundef 3) #8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dp_ctrl_push_idle) #9
  br label %11

11:                                               ; preds = %9, %1
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.1) #8
  %12 = getelementptr inbounds %struct.dp_ctrl_private, ptr %0, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.dp_link, ptr %13, i32 0, i32 6, i32 2
  store i8 0, ptr %14, align 1
  %15 = load ptr, ptr %12, align 4
  %16 = getelementptr inbounds %struct.dp_link, ptr %15, i32 0, i32 6, i32 1
  store i8 0, ptr %16, align 4
  %17 = getelementptr inbounds %struct.dp_ctrl_private, ptr %0, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.dp_panel, ptr %18, i32 0, i32 8
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.dp_ctrl, ptr %0, i32 0, i32 2
  store i32 %20, ptr %21, align 4
  %22 = call fastcc i32 @dp_ctrl_setup_main_link(ptr noundef %0, ptr noundef nonnull %3)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %11
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.46, i32 noundef 0) #8
  %25 = getelementptr inbounds %struct.dp_ctrl_private, ptr %0, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #8
  store i8 0, ptr %2, align 1
  %27 = call i32 @drm_dp_dpcd_write(ptr noundef %26, i32 noundef 258, ptr noundef nonnull %2, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #8
  %28 = load ptr, ptr %25, align 4
  %29 = load ptr, ptr %17, align 4
  call void @drm_dp_link_train_channel_eq_delay(ptr noundef %28, ptr noundef %29) #8
  %30 = load ptr, ptr %5, align 4
  call void @dp_catalog_ctrl_state_ctrl(ptr noundef %30, i32 noundef 128) #8
  %31 = getelementptr inbounds %struct.dp_ctrl_private, ptr %0, i32 0, i32 9
  %32 = call i32 @wait_for_completion_timeout(ptr noundef %31, i32 noundef 50) #8
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %24
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.70) #8
  br label %35

35:                                               ; preds = %34, %24, %11
  %36 = phi i32 [ %22, %11 ], [ 0, %24 ], [ -110, %34 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret i32 %36
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dp_link_send_test_response(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dp_ctrl_on_link(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i8, align 1
  %3 = alloca [6 x i8], align 1
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %3, i8 0, i32 6, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  %5 = icmp eq ptr %0, null
  br i1 %5, label %196, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.dp_ctrl_private, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.dp_panel, ptr %8, i32 0, i32 4, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.dp_ctrl_private, ptr %0, i32 0, i32 5
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @dp_power_clk_enable(ptr noundef %12, i32 noundef 0, i1 noundef zeroext true) #8
  %14 = getelementptr inbounds %struct.dp_ctrl_private, ptr %0, i32 0, i32 4
  %15 = load ptr, ptr %14, align 4
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %6
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.9) #8
  %20 = load ptr, ptr %7, align 4
  %21 = getelementptr inbounds %struct.dp_panel, ptr %20, i32 0, i32 8
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  %24 = getelementptr inbounds %struct.dp_ctrl, ptr %0, i32 0, i32 2
  br i1 %23, label %27, label %25

25:                                               ; preds = %19
  %26 = load i32, ptr %24, align 4
  br label %39

27:                                               ; preds = %19
  store i32 148500, ptr %24, align 4
  br label %39

28:                                               ; preds = %6
  %29 = getelementptr inbounds %struct.dp_link, ptr %15, i32 0, i32 7, i32 1
  store i32 %10, ptr %29, align 4
  %30 = load ptr, ptr %7, align 4
  %31 = getelementptr inbounds %struct.dp_panel, ptr %30, i32 0, i32 4, i32 2
  %32 = load i32, ptr %31, align 4
  %33 = load ptr, ptr %14, align 4
  %34 = getelementptr inbounds %struct.dp_link, ptr %33, i32 0, i32 7, i32 2
  store i32 %32, ptr %34, align 4
  %35 = load ptr, ptr %7, align 4
  %36 = getelementptr inbounds %struct.dp_panel, ptr %35, i32 0, i32 8
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.dp_ctrl, ptr %0, i32 0, i32 2
  store i32 %37, ptr %38, align 4
  br label %39

39:                                               ; preds = %28, %27, %25
  %40 = phi i32 [ %26, %25 ], [ 148500, %27 ], [ %37, %28 ]
  %41 = load ptr, ptr %14, align 4
  %42 = getelementptr inbounds %struct.dp_link, ptr %41, i32 0, i32 7, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr inbounds %struct.dp_link, ptr %41, i32 0, i32 7, i32 2
  %45 = load i32, ptr %44, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.10, i32 noundef %43, i32 noundef %45, i32 noundef %40) #8
  %46 = load ptr, ptr %14, align 4
  %47 = getelementptr inbounds %struct.dp_link, ptr %46, i32 0, i32 6, i32 2
  store i8 0, ptr %47, align 1
  %48 = load ptr, ptr %14, align 4
  %49 = getelementptr inbounds %struct.dp_link, ptr %48, i32 0, i32 6, i32 1
  store i8 0, ptr %49, align 4
  %50 = tail call fastcc i32 @dp_ctrl_enable_mainlink_clocks(ptr noundef nonnull %0)
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %196

52:                                               ; preds = %39
  %53 = getelementptr inbounds %struct.dp_ctrl_private, ptr %0, i32 0, i32 6
  %54 = getelementptr inbounds %struct.dp_ctrl_private, ptr %0, i32 0, i32 7
  %55 = getelementptr inbounds %struct.dp_ctrl_private, ptr %0, i32 0, i32 2
  br label %56

56:                                               ; preds = %167, %52
  %57 = phi i32 [ 4, %52 ], [ %169, %167 ]
  %58 = load ptr, ptr %53, align 4
  %59 = getelementptr inbounds %struct.dp_parser, ptr %58, i32 0, i32 3, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.dp_parser, ptr %58, i32 0, i32 3, i32 2
  %62 = load ptr, ptr %54, align 4
  call void @dp_catalog_ctrl_mainlink_ctrl(ptr noundef %62, i1 noundef zeroext false) #8
  %63 = load ptr, ptr %14, align 4
  %64 = getelementptr inbounds %struct.dp_link, ptr %63, i32 0, i32 7, i32 2
  %65 = load i32, ptr %64, align 4
  %66 = getelementptr inbounds %struct.dp_parser, ptr %58, i32 0, i32 3, i32 2, i32 0, i32 1
  store i32 %65, ptr %66, align 4
  %67 = call i32 @phy_configure(ptr noundef %60, ptr noundef %61) #8
  %68 = load ptr, ptr %11, align 4
  %69 = call i32 @dp_power_clk_enable(ptr noundef %68, i32 noundef 1, i1 noundef zeroext false) #8
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %56
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.36, i32 noundef %69) #8
  br label %77

72:                                               ; preds = %56
  %73 = call i32 @phy_power_off(ptr noundef %60) #8
  call void @msleep(i32 noundef 20) #8
  %74 = call fastcc i32 @dp_ctrl_enable_mainlink_clocks(ptr noundef nonnull %0) #8
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %72
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.37, i32 noundef %74) #8
  br label %77

77:                                               ; preds = %76, %71
  %78 = phi i32 [ %74, %76 ], [ %69, %71 ]
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.11, i32 noundef %78) #8
  br label %171

79:                                               ; preds = %72
  store i32 0, ptr %4, align 4
  %80 = call fastcc i32 @dp_ctrl_setup_main_link(ptr noundef nonnull %0, ptr noundef nonnull %4)
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %196, label %82

82:                                               ; preds = %79
  %83 = load i32, ptr %4, align 4
  switch i32 %83, label %167 [
    i32 1, label %84
    i32 2, label %127
  ]

84:                                               ; preds = %82
  %85 = load ptr, ptr %54, align 4
  %86 = call i32 @dp_catalog_link_is_connected(ptr noundef %85) #8
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %171, label %88

88:                                               ; preds = %84
  %89 = load ptr, ptr %55, align 4
  %90 = call i32 @drm_dp_dpcd_read_link_status(ptr noundef %89, ptr noundef nonnull %3) #8
  %91 = icmp eq i32 %90, 6
  br i1 %91, label %93, label %92

92:                                               ; preds = %88
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.51, i32 noundef %90) #8
  br label %93

93:                                               ; preds = %92, %88
  %94 = load ptr, ptr %14, align 4
  %95 = getelementptr inbounds %struct.dp_link, ptr %94, i32 0, i32 7, i32 1
  %96 = load i32, ptr %95, align 4
  switch i32 %96, label %104 [
    i32 810000, label %99
    i32 540000, label %97
    i32 270000, label %98
  ]

97:                                               ; preds = %93
  br label %99

98:                                               ; preds = %93
  br label %99

99:                                               ; preds = %98, %97, %93
  %100 = phi i32 [ 162000, %98 ], [ 270000, %97 ], [ 540000, %93 ]
  store i32 %100, ptr %95, align 4
  %101 = load ptr, ptr %14, align 4
  %102 = getelementptr inbounds %struct.dp_link, ptr %101, i32 0, i32 7, i32 1
  %103 = load i32, ptr %102, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.52, i32 noundef %103) #8
  br label %167

104:                                              ; preds = %93
  %105 = getelementptr inbounds %struct.dp_link, ptr %94, i32 0, i32 7, i32 2
  %106 = load i32, ptr %105, align 4
  %107 = icmp slt i32 %106, 2
  br i1 %107, label %171, label %108

108:                                              ; preds = %104
  %109 = lshr i32 %106, 1
  %110 = call zeroext i1 @drm_dp_clock_recovery_ok(ptr noundef nonnull %3, i32 noundef %109) #8
  br i1 %110, label %111, label %171

111:                                              ; preds = %108
  %112 = load ptr, ptr %14, align 4
  %113 = getelementptr inbounds %struct.dp_link, ptr %112, i32 0, i32 7, i32 2
  %114 = load i32, ptr %113, align 4
  %115 = icmp eq i32 %114, 1
  br i1 %115, label %171, label %116

116:                                              ; preds = %111
  %117 = lshr i32 %114, 1
  store i32 %117, ptr %113, align 4
  %118 = load ptr, ptr %7, align 4
  %119 = getelementptr inbounds %struct.dp_panel, ptr %118, i32 0, i32 4, i32 1
  %120 = load i32, ptr %119, align 4
  %121 = load ptr, ptr %14, align 4
  %122 = getelementptr inbounds %struct.dp_link, ptr %121, i32 0, i32 7, i32 1
  store i32 %120, ptr %122, align 4
  %123 = load ptr, ptr %14, align 4
  %124 = getelementptr inbounds %struct.dp_link, ptr %123, i32 0, i32 6, i32 2
  store i8 0, ptr %124, align 1
  %125 = load ptr, ptr %14, align 4
  %126 = getelementptr inbounds %struct.dp_link, ptr %125, i32 0, i32 6, i32 1
  store i8 0, ptr %126, align 4
  br label %167

127:                                              ; preds = %82
  %128 = load ptr, ptr %54, align 4
  %129 = call i32 @dp_catalog_link_is_connected(ptr noundef %128) #8
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %171, label %131

131:                                              ; preds = %127
  %132 = load ptr, ptr %55, align 4
  %133 = call i32 @drm_dp_dpcd_read_link_status(ptr noundef %132, ptr noundef nonnull %3) #8
  %134 = icmp eq i32 %133, 6
  br i1 %134, label %136, label %135

135:                                              ; preds = %131
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.51, i32 noundef %133) #8
  br label %136

136:                                              ; preds = %135, %131
  %137 = load ptr, ptr %14, align 4
  %138 = getelementptr inbounds %struct.dp_link, ptr %137, i32 0, i32 7, i32 2
  %139 = load i32, ptr %138, align 4
  %140 = call zeroext i1 @drm_dp_clock_recovery_ok(ptr noundef nonnull %3, i32 noundef %139) #8
  %141 = load ptr, ptr %14, align 4
  br i1 %140, label %152, label %142

142:                                              ; preds = %136
  %143 = getelementptr inbounds %struct.dp_link, ptr %141, i32 0, i32 7, i32 1
  %144 = load i32, ptr %143, align 4
  switch i32 %144, label %171 [
    i32 810000, label %147
    i32 540000, label %145
    i32 270000, label %146
  ]

145:                                              ; preds = %142
  br label %147

146:                                              ; preds = %142
  br label %147

147:                                              ; preds = %146, %145, %142
  %148 = phi i32 [ 162000, %146 ], [ 270000, %145 ], [ 540000, %142 ]
  store i32 %148, ptr %143, align 4
  %149 = load ptr, ptr %14, align 4
  %150 = getelementptr inbounds %struct.dp_link, ptr %149, i32 0, i32 7, i32 1
  %151 = load i32, ptr %150, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.52, i32 noundef %151) #8
  br label %167

152:                                              ; preds = %136
  %153 = getelementptr inbounds %struct.dp_link, ptr %141, i32 0, i32 7, i32 2
  %154 = load i32, ptr %153, align 4
  %155 = icmp eq i32 %154, 1
  br i1 %155, label %171, label %156

156:                                              ; preds = %152
  %157 = lshr i32 %154, 1
  store i32 %157, ptr %153, align 4
  %158 = load ptr, ptr %7, align 4
  %159 = getelementptr inbounds %struct.dp_panel, ptr %158, i32 0, i32 4, i32 1
  %160 = load i32, ptr %159, align 4
  %161 = load ptr, ptr %14, align 4
  %162 = getelementptr inbounds %struct.dp_link, ptr %161, i32 0, i32 7, i32 1
  store i32 %160, ptr %162, align 4
  %163 = load ptr, ptr %14, align 4
  %164 = getelementptr inbounds %struct.dp_link, ptr %163, i32 0, i32 6, i32 2
  store i8 0, ptr %164, align 1
  %165 = load ptr, ptr %14, align 4
  %166 = getelementptr inbounds %struct.dp_link, ptr %165, i32 0, i32 6, i32 1
  store i8 0, ptr %166, align 4
  br label %167

167:                                              ; preds = %156, %147, %116, %99, %82
  %168 = phi i32 [ 0, %116 ], [ 0, %99 ], [ %80, %82 ], [ 0, %147 ], [ 0, %156 ]
  %169 = add nsw i32 %57, -1
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %56

171:                                              ; preds = %167, %152, %142, %127, %111, %108, %104, %84, %77
  %172 = phi i32 [ %78, %77 ], [ -22, %142 ], [ -1, %152 ], [ -1, %111 ], [ -22, %104 ], [ %168, %167 ], [ %80, %127 ], [ %80, %84 ], [ -22, %108 ]
  %173 = load ptr, ptr %14, align 4
  %174 = load i32, ptr %173, align 4
  %175 = and i32 %174, 8
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %196

177:                                              ; preds = %171
  %178 = icmp eq i32 %172, 0
  br i1 %178, label %196, label %179

179:                                              ; preds = %177
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.46, i32 noundef 0) #8
  %180 = load ptr, ptr %55, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #8
  store i8 0, ptr %2, align 1
  %181 = call i32 @drm_dp_dpcd_write(ptr noundef %180, i32 noundef 258, ptr noundef nonnull %2, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #8
  %182 = load ptr, ptr %55, align 4
  %183 = load ptr, ptr %7, align 4
  call void @drm_dp_link_train_channel_eq_delay(ptr noundef %182, ptr noundef %183) #8
  %184 = load ptr, ptr %53, align 4
  %185 = getelementptr inbounds %struct.dp_parser, ptr %184, i32 0, i32 3, i32 1
  %186 = load ptr, ptr %185, align 4
  %187 = load ptr, ptr %54, align 4
  call void @dp_catalog_ctrl_mainlink_ctrl(ptr noundef %187, i1 noundef zeroext false) #8
  %188 = load ptr, ptr %54, align 4
  call void @dp_catalog_ctrl_reset(ptr noundef %188) #8
  %189 = load ptr, ptr %11, align 4
  %190 = call i32 @dp_power_clk_enable(ptr noundef %189, i32 noundef 1, i1 noundef zeroext false) #8
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %193, label %192

192:                                              ; preds = %179
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.18, i32 noundef %190) #8
  br label %193

193:                                              ; preds = %192, %179
  %194 = call i32 @phy_power_off(ptr noundef %186) #8
  %195 = call i32 @phy_exit(ptr noundef %186) #8
  br label %196

196:                                              ; preds = %193, %177, %171, %79, %39, %1
  %197 = phi i32 [ -22, %1 ], [ %50, %39 ], [ %172, %171 ], [ 0, %177 ], [ -104, %193 ], [ 0, %79 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #8
  ret i32 %197
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dp_power_clk_enable(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dp_ctrl_enable_mainlink_clocks(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dp_ctrl_private, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dp_parser, ptr %3, i32 0, i32 3, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dp_parser, ptr %3, i32 0, i32 3, i32 2
  %7 = getelementptr inbounds %struct.dp_ctrl_private, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.dp_ctrl_private, ptr %0, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.dp_link, ptr %10, i32 0, i32 7, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.dp_parser, ptr %3, i32 0, i32 3, i32 2, i32 0, i32 1
  store i32 %12, ptr %13, align 4
  %14 = load ptr, ptr %9, align 4
  %15 = getelementptr inbounds %struct.dp_link, ptr %14, i32 0, i32 7, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = udiv i32 %16, 100
  store i32 %17, ptr %6, align 4
  %18 = load i8, ptr %8, align 1
  %19 = icmp ugt i8 %18, 16
  br i1 %19, label %25, label %20

20:                                               ; preds = %1
  %21 = getelementptr i8, ptr %8, i32 3
  %22 = load i8, ptr %21, align 1
  %23 = and i8 %22, 1
  %24 = icmp ne i8 %23, 0
  br label %25

25:                                               ; preds = %20, %1
  %26 = phi i1 [ true, %1 ], [ %24, %20 ]
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.dp_parser, ptr %3, i32 0, i32 3, i32 2, i32 0, i32 10
  %29 = load i8, ptr %28, align 4
  %30 = and i8 %29, -2
  %31 = or i8 %30, %27
  store i8 %31, ptr %28, align 4
  %32 = load ptr, ptr %9, align 4
  %33 = getelementptr inbounds %struct.dp_link, ptr %32, i32 0, i32 7, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = mul i32 %34, 1000
  %36 = load ptr, ptr %2, align 4
  %37 = getelementptr %struct.dp_parser, ptr %36, i32 0, i32 1, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %55, label %40

40:                                               ; preds = %25
  %41 = getelementptr %struct.dp_parser, ptr %36, i32 0, i32 1, i32 1, i32 1
  %42 = load ptr, ptr %41, align 4
  br label %43

43:                                               ; preds = %49, %40
  %44 = phi ptr [ %51, %49 ], [ %42, %40 ]
  %45 = phi i32 [ %50, %49 ], [ %38, %40 ]
  %46 = getelementptr inbounds %struct.dss_clk, ptr %44, i32 0, i32 1
  %47 = tail call i32 @strcmp(ptr noundef %46, ptr noundef nonnull dereferenceable(10) @.str.26) #8
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %43
  %50 = add i32 %45, -1
  %51 = getelementptr %struct.dss_clk, ptr %44, i32 1
  %52 = icmp eq i32 %50, 0
  br i1 %52, label %55, label %43

53:                                               ; preds = %43
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.34, i32 noundef %35, ptr noundef nonnull @.str.26) #8
  %54 = getelementptr inbounds %struct.dss_clk, ptr %44, i32 0, i32 3
  store i32 %35, ptr %54, align 4
  br label %56

55:                                               ; preds = %49, %25
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.34, i32 noundef %35, ptr noundef nonnull @.str.26) #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.26, i32 noundef %35) #8
  br label %56

56:                                               ; preds = %55, %53
  %57 = tail call i32 @phy_configure(ptr noundef %5, ptr noundef %6) #8
  %58 = tail call i32 @phy_power_on(ptr noundef %5) #8
  %59 = getelementptr inbounds %struct.dp_ctrl_private, ptr %0, i32 0, i32 5
  %60 = load ptr, ptr %59, align 4
  %61 = tail call i32 @dp_power_clk_enable(ptr noundef %60, i32 noundef 1, i1 noundef zeroext true) #8
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %56
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.32, i32 noundef %61) #8
  br label %64

64:                                               ; preds = %63, %56
  %65 = load ptr, ptr %9, align 4
  %66 = getelementptr inbounds %struct.dp_link, ptr %65, i32 0, i32 7, i32 1
  %67 = load i32, ptr %66, align 4
  %68 = getelementptr inbounds %struct.dp_ctrl, ptr %0, i32 0, i32 2
  %69 = load i32, ptr %68, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.33, i32 noundef %67, i32 noundef %69) #8
  ret i32 %61
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dp_ctrl_setup_main_link(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 {
  %3 = alloca i8, align 1
  %4 = alloca [6 x i8], align 1
  %5 = alloca i8, align 1
  %6 = alloca [6 x i8], align 1
  %7 = alloca [2 x i8], align 2
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = getelementptr inbounds %struct.dp_ctrl_private, ptr %0, i32 0, i32 7
  %12 = load ptr, ptr %11, align 4
  tail call void @dp_catalog_ctrl_mainlink_ctrl(ptr noundef %12, i1 noundef zeroext true) #8
  %13 = getelementptr inbounds %struct.dp_ctrl_private, ptr %0, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %183

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.dp_ctrl_private, ptr %0, i32 0, i32 3
  %20 = load ptr, ptr %19, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #8
  store i8 1, ptr %8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #8
  store i8 0, ptr %9, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #8
  store i8 0, ptr %10, align 1, !annotation !8
  %21 = getelementptr i8, ptr %20, i32 13
  %22 = load i8, ptr %21, align 1
  %23 = and i8 %22, 1
  %24 = icmp eq i8 %23, 0
  %25 = select i1 %24, i32 16384, i32 17408
  %26 = getelementptr inbounds %struct.dp_panel, ptr %20, i32 0, i32 8, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = tail call i32 @dp_link_get_test_bits_depth(ptr noundef %14, i32 noundef %27) #8
  %29 = icmp eq i32 %28, -1
  %30 = shl i32 %28, 8
  %31 = select i1 %29, i32 8192, i32 %30
  %32 = or i32 %31, %25
  %33 = load ptr, ptr %13, align 4
  %34 = getelementptr inbounds %struct.dp_link, ptr %33, i32 0, i32 7, i32 2
  %35 = load i32, ptr %34, align 4
  %36 = shl i32 %35, 4
  %37 = add i32 %36, -16
  %38 = or i32 %32, %37
  %39 = load i8, ptr %20, align 1
  %40 = icmp ugt i8 %39, 16
  br i1 %40, label %41, label %47

41:                                               ; preds = %18
  %42 = getelementptr i8, ptr %20, i32 2
  %43 = load i8, ptr %42, align 1
  %44 = icmp slt i8 %43, 0
  %45 = or i32 %38, 64
  %46 = select i1 %44, i32 %45, i32 %38
  br label %47

47:                                               ; preds = %41, %18
  %48 = phi i32 [ %38, %18 ], [ %46, %41 ]
  %49 = or i32 %48, 7
  %50 = load ptr, ptr %11, align 4
  tail call void @dp_catalog_ctrl_config_ctrl(ptr noundef %50, i32 noundef %49) #8
  %51 = load ptr, ptr %13, align 4
  %52 = getelementptr inbounds %struct.dp_link, ptr %51, i32 0, i32 7, i32 2
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr inbounds %struct.dp_link, ptr %51, i32 0, i32 7, i32 1
  %55 = load i32, ptr %54, align 4
  %56 = getelementptr inbounds %struct.dp_ctrl_private, ptr %0, i32 0, i32 2
  %57 = load ptr, ptr %56, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #8
  %58 = tail call zeroext i8 @drm_dp_link_rate_to_bw_code(i32 noundef %55) #8
  store i8 %58, ptr %7, align 2
  %59 = trunc i32 %53 to i8
  %60 = getelementptr inbounds [2 x i8], ptr %7, i32 0, i32 1
  %61 = or i8 %59, -128
  store i8 %61, ptr %60, align 1
  %62 = call i32 @drm_dp_dpcd_write(ptr noundef %57, i32 noundef 256, ptr noundef nonnull %7, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #8
  %63 = load i8, ptr %20, align 1
  %64 = icmp ugt i8 %63, 16
  br i1 %64, label %70, label %65

65:                                               ; preds = %47
  %66 = getelementptr i8, ptr %20, i32 3
  %67 = load i8, ptr %66, align 1
  %68 = and i8 %67, 1
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %65, %47
  store i8 16, ptr %9, align 1
  %71 = load ptr, ptr %56, align 4
  %72 = call i32 @drm_dp_dpcd_write(ptr noundef %71, i32 noundef 263, ptr noundef nonnull %9, i32 noundef 1) #8
  br label %73

73:                                               ; preds = %70, %65
  %74 = load ptr, ptr %56, align 4
  %75 = call i32 @drm_dp_dpcd_write(ptr noundef %74, i32 noundef 264, ptr noundef nonnull %8, i32 noundef 1) #8
  %76 = load i8, ptr %21, align 1
  %77 = and i8 %76, 1
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %73
  store i8 1, ptr %10, align 1
  %80 = load ptr, ptr %56, align 4
  %81 = call i32 @drm_dp_dpcd_write(ptr noundef %80, i32 noundef 266, ptr noundef nonnull %10, i32 noundef 1) #8
  br label %82

82:                                               ; preds = %79, %73
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %6) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %6, i8 0, i32 6, i1 false) #8, !annotation !8
  %83 = load ptr, ptr %11, align 4
  call void @dp_catalog_ctrl_state_ctrl(ptr noundef %83, i32 noundef 0) #8
  store i32 1, ptr %1, align 4
  %84 = load ptr, ptr %11, align 4
  %85 = call i32 @dp_catalog_ctrl_set_pattern(ptr noundef %84, i32 noundef 1) #8
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %132

87:                                               ; preds = %82
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.46, i32 noundef 33) #8
  %88 = load ptr, ptr %56, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #8
  store i8 33, ptr %5, align 1
  %89 = call i32 @drm_dp_dpcd_write(ptr noundef %88, i32 noundef 258, ptr noundef nonnull %5, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #8
  %90 = call fastcc i32 @dp_ctrl_update_vx_px(ptr noundef %0) #8
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %132

92:                                               ; preds = %87
  %93 = load ptr, ptr %13, align 4
  %94 = getelementptr inbounds %struct.dp_link, ptr %93, i32 0, i32 6, i32 1
  %95 = load i8, ptr %94, align 4
  %96 = zext i8 %95 to i32
  br label %97

97:                                               ; preds = %126, %92
  %98 = phi i32 [ %96, %92 ], [ %115, %126 ]
  %99 = phi i32 [ 0, %92 ], [ %129, %126 ]
  %100 = load ptr, ptr %56, align 4
  %101 = load ptr, ptr %19, align 4
  call void @drm_dp_link_train_clock_recovery_delay(ptr noundef %100, ptr noundef %101) #8
  %102 = load ptr, ptr %56, align 4
  %103 = call i32 @drm_dp_dpcd_read_link_status(ptr noundef %102, ptr noundef nonnull %6) #8
  %104 = icmp eq i32 %103, 6
  br i1 %104, label %106, label %105

105:                                              ; preds = %97
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.51, i32 noundef %103) #8
  br label %132

106:                                              ; preds = %97
  %107 = load ptr, ptr %13, align 4
  %108 = getelementptr inbounds %struct.dp_link, ptr %107, i32 0, i32 7, i32 2
  %109 = load i32, ptr %108, align 4
  %110 = call zeroext i1 @drm_dp_clock_recovery_ok(ptr noundef nonnull %6, i32 noundef %109) #8
  br i1 %110, label %134, label %111

111:                                              ; preds = %106
  %112 = load ptr, ptr %13, align 4
  %113 = getelementptr inbounds %struct.dp_link, ptr %112, i32 0, i32 6, i32 1
  %114 = load i8, ptr %113, align 4
  %115 = zext i8 %114 to i32
  %116 = icmp ugt i8 %114, 1
  br i1 %116, label %117, label %121

117:                                              ; preds = %111
  %118 = call i32 @___ratelimit(ptr noundef nonnull @dp_ctrl_link_train_1._rs, ptr noundef nonnull @__func__.dp_ctrl_link_train_1) #8
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %132, label %120

120:                                              ; preds = %117
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef null, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43) #8
  br label %132

121:                                              ; preds = %111
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.44) #8
  %122 = load ptr, ptr %13, align 4
  %123 = call i32 @dp_link_adjust_levels(ptr noundef %122, ptr noundef nonnull %6) #8
  %124 = call fastcc i32 @dp_ctrl_update_vx_px(ptr noundef %0) #8
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %121
  %127 = icmp eq i32 %98, %115
  %128 = add nsw i32 %99, 1
  %129 = select i1 %127, i32 %128, i32 1
  %130 = icmp slt i32 %129, 4
  br i1 %130, label %97, label %131

131:                                              ; preds = %126
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.45) #8
  br label %132

132:                                              ; preds = %131, %121, %120, %117, %105, %87, %82
  %133 = phi i32 [ -11, %117 ], [ -11, %120 ], [ -22, %105 ], [ %90, %87 ], [ %85, %82 ], [ -110, %131 ], [ %124, %121 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %6) #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.38, i32 noundef %133) #8
  br label %180

134:                                              ; preds = %106
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %6) #8
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.39) #8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %4) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %4, i8 0, i32 6, i1 false) #8, !annotation !8
  %135 = load ptr, ptr %11, align 4
  call void @dp_catalog_ctrl_state_ctrl(ptr noundef %135, i32 noundef 0) #8
  store i32 2, ptr %1, align 4
  %136 = load ptr, ptr %19, align 4
  %137 = load i8, ptr %136, align 1
  %138 = icmp ugt i8 %137, 17
  br i1 %138, label %139, label %145

139:                                              ; preds = %134
  %140 = getelementptr i8, ptr %136, i32 2
  %141 = load i8, ptr %140, align 1
  %142 = and i8 %141, 64
  %143 = icmp eq i8 %142, 0
  %144 = select i1 %143, i32 2, i32 3
  br label %145

145:                                              ; preds = %139, %134
  %146 = phi i32 [ 2, %134 ], [ %144, %139 ]
  %147 = load ptr, ptr %11, align 4
  %148 = call i32 @dp_catalog_ctrl_set_pattern(ptr noundef %147, i32 noundef %146) #8
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %177

150:                                              ; preds = %145
  %151 = trunc i32 %146 to i8
  %152 = or i32 %146, 16
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.46, i32 noundef %152) #8
  %153 = or i8 %151, 48
  %154 = load ptr, ptr %56, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #8
  store i8 %153, ptr %3, align 1
  %155 = call i32 @drm_dp_dpcd_write(ptr noundef %154, i32 noundef 258, ptr noundef nonnull %3, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #8
  br label %159

156:                                              ; preds = %172
  %157 = add nuw nsw i32 %160, 1
  %158 = icmp eq i32 %157, 6
  br i1 %158, label %177, label %159

159:                                              ; preds = %156, %150
  %160 = phi i32 [ 0, %150 ], [ %157, %156 ]
  %161 = load ptr, ptr %56, align 4
  %162 = load ptr, ptr %19, align 4
  call void @drm_dp_link_train_channel_eq_delay(ptr noundef %161, ptr noundef %162) #8
  %163 = load ptr, ptr %56, align 4
  %164 = call i32 @drm_dp_dpcd_read_link_status(ptr noundef %163, ptr noundef nonnull %4) #8
  %165 = icmp eq i32 %164, 6
  br i1 %165, label %167, label %166

166:                                              ; preds = %159
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.51, i32 noundef %164) #8
  br label %177

167:                                              ; preds = %159
  %168 = load ptr, ptr %13, align 4
  %169 = getelementptr inbounds %struct.dp_link, ptr %168, i32 0, i32 7, i32 2
  %170 = load i32, ptr %169, align 4
  %171 = call zeroext i1 @drm_dp_channel_eq_ok(ptr noundef nonnull %4, i32 noundef %170) #8
  br i1 %171, label %179, label %172

172:                                              ; preds = %167
  %173 = load ptr, ptr %13, align 4
  %174 = call i32 @dp_link_adjust_levels(ptr noundef %173, ptr noundef nonnull %4) #8
  %175 = call fastcc i32 @dp_ctrl_update_vx_px(ptr noundef %0) #8
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %156, label %177

177:                                              ; preds = %172, %166, %156, %145
  %178 = phi i32 [ -22, %166 ], [ %148, %145 ], [ %175, %172 ], [ -110, %156 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %4) #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.40, i32 noundef %178) #8
  br label %180

179:                                              ; preds = %167
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %4) #8
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.41) #8
  br label %180

180:                                              ; preds = %179, %177, %132
  %181 = phi i32 [ %133, %132 ], [ %178, %177 ], [ 0, %179 ]
  %182 = load ptr, ptr %11, align 4
  call void @dp_catalog_ctrl_state_ctrl(ptr noundef %182, i32 noundef 0) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #8
  br label %183

183:                                              ; preds = %180, %2
  %184 = phi i32 [ %181, %180 ], [ 0, %2 ]
  ret i32 %184
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dp_catalog_link_is_connected(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_dp_clock_recovery_ok(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dp_ctrl_on_stream(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.dp_tu_calc_input, align 8
  %3 = alloca %struct.dp_vc_tu_mapping_table, align 4
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca [6 x i8], align 1
  %7 = icmp eq ptr %0, null
  br i1 %7, label %258, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.dp_ctrl_private, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.dp_panel, ptr %10, i32 0, i32 8
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.dp_ctrl, ptr %0, i32 0, i32 2
  store i32 %12, ptr %13, align 4
  %14 = getelementptr inbounds %struct.dp_ctrl_private, ptr %0, i32 0, i32 4
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.dp_link, ptr %15, i32 0, i32 7, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.dp_link, ptr %15, i32 0, i32 7, i32 2
  %19 = load i32, ptr %18, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.10, i32 noundef %17, i32 noundef %19, i32 noundef %12) #8
  %20 = getelementptr inbounds %struct.dp_ctrl_private, ptr %0, i32 0, i32 5
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 @dp_power_clk_status(ptr noundef %21, i32 noundef 1) #8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %8
  %25 = tail call fastcc i32 @dp_ctrl_enable_mainlink_clocks(ptr noundef nonnull %0)
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %24
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.12, i32 noundef %25) #8
  br label %258

28:                                               ; preds = %24, %8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %6) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %6, i8 0, i32 6, i1 false) #8, !annotation !8
  %29 = load ptr, ptr %14, align 4
  %30 = getelementptr inbounds %struct.dp_link, ptr %29, i32 0, i32 7, i32 2
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.dp_ctrl_private, ptr %0, i32 0, i32 2
  %33 = load ptr, ptr %32, align 4
  %34 = call i32 @drm_dp_dpcd_read_link_status(ptr noundef %33, ptr noundef nonnull %6) #8
  %35 = icmp eq i32 %34, 6
  br i1 %35, label %37, label %36

36:                                               ; preds = %28
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.51, i32 noundef %34) #8
  br label %37

37:                                               ; preds = %36, %28
  %38 = call zeroext i1 @drm_dp_channel_eq_ok(ptr noundef nonnull %6, i32 noundef %31) #8
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %6) #8
  br i1 %38, label %41, label %39

39:                                               ; preds = %37
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  %40 = call fastcc i32 @dp_ctrl_setup_main_link(ptr noundef nonnull %0, ptr noundef nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  br label %41

41:                                               ; preds = %39, %37
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.46, i32 noundef 0) #8
  %42 = load ptr, ptr %32, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #8
  store i8 0, ptr %4, align 1
  %43 = call i32 @drm_dp_dpcd_write(ptr noundef %42, i32 noundef 258, ptr noundef nonnull %4, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #8
  %44 = load ptr, ptr %32, align 4
  %45 = load ptr, ptr %9, align 4
  call void @drm_dp_link_train_channel_eq_delay(ptr noundef %44, ptr noundef %45) #8
  %46 = load i32, ptr %13, align 4
  %47 = mul i32 %46, 1000
  %48 = getelementptr inbounds %struct.dp_ctrl_private, ptr %0, i32 0, i32 6
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr %struct.dp_parser, ptr %49, i32 0, i32 1, i32 2
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %68, label %53

53:                                               ; preds = %41
  %54 = getelementptr %struct.dp_parser, ptr %49, i32 0, i32 1, i32 2, i32 1
  %55 = load ptr, ptr %54, align 4
  br label %56

56:                                               ; preds = %62, %53
  %57 = phi ptr [ %64, %62 ], [ %55, %53 ]
  %58 = phi i32 [ %63, %62 ], [ %51, %53 ]
  %59 = getelementptr inbounds %struct.dss_clk, ptr %57, i32 0, i32 1
  %60 = call i32 @strcmp(ptr noundef %59, ptr noundef nonnull dereferenceable(13) @.str.53) #8
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %56
  %63 = add i32 %58, -1
  %64 = getelementptr %struct.dss_clk, ptr %57, i32 1
  %65 = icmp eq i32 %63, 0
  br i1 %65, label %68, label %56

66:                                               ; preds = %56
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.34, i32 noundef %47, ptr noundef nonnull @.str.53) #8
  %67 = getelementptr inbounds %struct.dss_clk, ptr %57, i32 0, i32 3
  store i32 %47, ptr %67, align 4
  br label %69

68:                                               ; preds = %62, %41
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.34, i32 noundef %47, ptr noundef nonnull @.str.53) #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.53, i32 noundef %47) #8
  br label %69

69:                                               ; preds = %68, %66
  %70 = load ptr, ptr %20, align 4
  %71 = call i32 @dp_power_clk_enable(ptr noundef %70, i32 noundef 2, i1 noundef zeroext true) #8
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %69
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.54, i32 noundef %71) #8
  %74 = load ptr, ptr %14, align 4
  %75 = getelementptr inbounds %struct.dp_link, ptr %74, i32 0, i32 7, i32 1
  %76 = load i32, ptr %75, align 4
  %77 = load i32, ptr %13, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.33, i32 noundef %76, i32 noundef %77) #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13, i32 noundef %71) #8
  br label %258

78:                                               ; preds = %69
  %79 = load ptr, ptr %14, align 4
  %80 = getelementptr inbounds %struct.dp_link, ptr %79, i32 0, i32 7, i32 1
  %81 = load i32, ptr %80, align 4
  %82 = load i32, ptr %13, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.33, i32 noundef %81, i32 noundef %82) #8
  %83 = load ptr, ptr %14, align 4
  %84 = load i32, ptr %83, align 4
  %85 = and i32 %84, 8
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %123, label %87

87:                                               ; preds = %78
  %88 = getelementptr inbounds %struct.dp_link, ptr %83, i32 0, i32 6
  %89 = load i32, ptr %88, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.55, i32 noundef %89) #8
  %90 = getelementptr inbounds %struct.dp_ctrl_private, ptr %0, i32 0, i32 7
  %91 = load ptr, ptr %90, align 4
  %92 = load ptr, ptr %14, align 4
  %93 = getelementptr inbounds %struct.dp_link, ptr %92, i32 0, i32 6, i32 1
  %94 = load i8, ptr %93, align 4
  %95 = getelementptr inbounds %struct.dp_link, ptr %92, i32 0, i32 6, i32 2
  %96 = load i8, ptr %95, align 1
  %97 = call i32 @dp_catalog_ctrl_update_vx_px(ptr noundef %91, i8 noundef zeroext %94, i8 noundef zeroext %96) #8
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %87
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.56) #8
  br label %258

100:                                              ; preds = %87
  %101 = load ptr, ptr %90, align 4
  call void @dp_catalog_ctrl_send_phy_pattern(ptr noundef %101, i32 noundef %89) #8
  %102 = call fastcc i32 @dp_ctrl_update_vx_px(ptr noundef nonnull %0) #8
  %103 = load ptr, ptr %14, align 4
  %104 = call zeroext i1 @dp_link_send_test_response(ptr noundef %103) #8
  %105 = load ptr, ptr %90, align 4
  %106 = call i32 @dp_catalog_ctrl_read_phy_pattern(ptr noundef %105) #8
  switch i32 %106, label %121 [
    i32 8, label %118
    i32 128, label %107
    i32 256, label %112
    i32 512, label %114
    i32 64, label %116
  ]

107:                                              ; preds = %100
  %108 = icmp eq i32 %89, 5
  %109 = icmp eq i32 %89, 2
  %110 = or i1 %108, %109
  %111 = select i1 %110, ptr @.str.58, ptr @.str.59
  br label %121

112:                                              ; preds = %100
  %113 = icmp eq i32 %89, 3
  br i1 %113, label %120, label %121

114:                                              ; preds = %100
  %115 = icmp eq i32 %89, 4
  br i1 %115, label %120, label %121

116:                                              ; preds = %100
  %117 = icmp eq i32 %89, 7
  br i1 %117, label %120, label %121

118:                                              ; preds = %100
  %119 = icmp eq i32 %89, 1
  br i1 %119, label %120, label %121

120:                                              ; preds = %118, %116, %114, %112
  br label %121

121:                                              ; preds = %120, %118, %116, %114, %112, %107, %100
  %122 = phi ptr [ @.str.58, %120 ], [ @.str.59, %118 ], [ @.str.59, %116 ], [ @.str.59, %114 ], [ @.str.59, %112 ], [ @.str.59, %100 ], [ %111, %107 ]
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.57, ptr noundef nonnull %122, i32 noundef %89) #8
  br label %258

123:                                              ; preds = %78
  %124 = getelementptr inbounds %struct.dp_ctrl_private, ptr %0, i32 0, i32 9
  store i32 0, ptr %124, align 4
  %125 = getelementptr inbounds %struct.dp_ctrl_private, ptr %0, i32 0, i32 7
  %126 = load ptr, ptr %125, align 4
  call void @dp_catalog_ctrl_lane_mapping(ptr noundef %126) #8
  %127 = load ptr, ptr %125, align 4
  call void @dp_catalog_ctrl_mainlink_ctrl(ptr noundef %127, i1 noundef zeroext true) #8
  %128 = load ptr, ptr %9, align 4
  %129 = getelementptr i8, ptr %128, i32 13
  %130 = load i8, ptr %129, align 1
  %131 = and i8 %130, 1
  %132 = icmp eq i8 %131, 0
  %133 = select i1 %132, i32 16384, i32 17408
  %134 = load ptr, ptr %14, align 4
  %135 = getelementptr inbounds %struct.dp_panel, ptr %128, i32 0, i32 8, i32 2
  %136 = load i32, ptr %135, align 4
  %137 = call i32 @dp_link_get_test_bits_depth(ptr noundef %134, i32 noundef %136) #8
  %138 = icmp eq i32 %137, -1
  %139 = shl i32 %137, 8
  %140 = select i1 %138, i32 8192, i32 %139
  %141 = or i32 %140, %133
  %142 = load ptr, ptr %14, align 4
  %143 = getelementptr inbounds %struct.dp_link, ptr %142, i32 0, i32 7, i32 2
  %144 = load i32, ptr %143, align 4
  %145 = shl i32 %144, 4
  %146 = add i32 %145, -16
  %147 = or i32 %141, %146
  %148 = load i8, ptr %128, align 1
  %149 = icmp ugt i8 %148, 16
  br i1 %149, label %150, label %156

150:                                              ; preds = %123
  %151 = getelementptr i8, ptr %128, i32 2
  %152 = load i8, ptr %151, align 1
  %153 = icmp slt i8 %152, 0
  %154 = or i32 %147, 64
  %155 = select i1 %153, i32 %154, i32 %147
  br label %156

156:                                              ; preds = %150, %123
  %157 = phi i32 [ %147, %123 ], [ %155, %150 ]
  %158 = or i32 %157, 7
  %159 = load ptr, ptr %125, align 4
  call void @dp_catalog_ctrl_config_ctrl(ptr noundef %159, i32 noundef %158) #8
  %160 = load ptr, ptr %14, align 4
  %161 = load ptr, ptr %9, align 4
  %162 = getelementptr inbounds %struct.dp_panel, ptr %161, i32 0, i32 8, i32 2
  %163 = load i32, ptr %162, align 4
  %164 = call i32 @dp_link_get_test_bits_depth(ptr noundef %160, i32 noundef %163) #8
  %165 = load ptr, ptr %14, align 4
  %166 = call i32 @dp_link_get_colorimetry_config(ptr noundef %165) #8
  %167 = load ptr, ptr %125, align 4
  call void @dp_catalog_ctrl_config_misc(ptr noundef %167, i32 noundef %166, i32 noundef %164) #8
  %168 = load ptr, ptr %9, align 4
  %169 = call i32 @dp_panel_timing_cfg(ptr noundef %168) #8
  %170 = load ptr, ptr %125, align 4
  %171 = load ptr, ptr %14, align 4
  %172 = getelementptr inbounds %struct.dp_link, ptr %171, i32 0, i32 7, i32 1
  %173 = load i32, ptr %172, align 4
  %174 = load i32, ptr %13, align 4
  %175 = load ptr, ptr %9, align 4
  %176 = getelementptr i8, ptr %175, i32 5
  %177 = load i8, ptr %176, align 1
  %178 = and i8 %177, 1
  %179 = icmp eq i8 %178, 0
  br i1 %179, label %185, label %180

180:                                              ; preds = %156
  %181 = getelementptr inbounds %struct.dp_panel, ptr %175, i32 0, i32 5, i32 1
  %182 = load i32, ptr %181, align 4
  %183 = and i32 %182, 1
  %184 = icmp ne i32 %183, 0
  br label %185

185:                                              ; preds = %180, %156
  %186 = phi i1 [ %184, %180 ], [ false, %156 ]
  call void @dp_catalog_ctrl_config_msa(ptr noundef %170, i32 noundef %173, i32 noundef %174, i1 noundef zeroext %186) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i32 16, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #8
  %187 = load ptr, ptr %9, align 4
  %188 = getelementptr inbounds %struct.dp_panel, ptr %187, i32 0, i32 8
  %189 = load ptr, ptr %14, align 4
  %190 = getelementptr inbounds %struct.dp_link, ptr %189, i32 0, i32 7, i32 1
  %191 = load i32, ptr %190, align 4
  %192 = udiv i32 %191, 1000
  %193 = zext i32 %192 to i64
  store i64 %193, ptr %2, align 8
  %194 = load i32, ptr %188, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.dp_tu_calc_input, ptr %2, i32 0, i32 1
  store i64 %195, ptr %196, align 8
  %197 = getelementptr inbounds %struct.dp_panel, ptr %187, i32 0, i32 8, i32 0, i32 1
  %198 = load i16, ptr %197, align 4
  %199 = zext i16 %198 to i64
  %200 = getelementptr inbounds %struct.dp_tu_calc_input, ptr %2, i32 0, i32 2
  store i64 %199, ptr %200, align 8
  %201 = getelementptr inbounds %struct.dp_panel, ptr %187, i32 0, i32 8, i32 0, i32 4
  %202 = load i16, ptr %201, align 2
  %203 = zext i16 %202 to i32
  %204 = zext i16 %198 to i32
  %205 = sub nsw i32 %203, %204
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.dp_tu_calc_input, ptr %2, i32 0, i32 3
  store i64 %206, ptr %207, align 8
  %208 = getelementptr inbounds %struct.dp_link, ptr %189, i32 0, i32 7, i32 2
  %209 = load i32, ptr %208, align 4
  %210 = getelementptr inbounds %struct.dp_tu_calc_input, ptr %2, i32 0, i32 4
  store i32 %209, ptr %210, align 8
  %211 = getelementptr inbounds %struct.dp_panel, ptr %187, i32 0, i32 8, i32 2
  %212 = load i32, ptr %211, align 4
  %213 = getelementptr inbounds %struct.dp_tu_calc_input, ptr %2, i32 0, i32 5
  store i32 %212, ptr %213, align 4
  %214 = getelementptr inbounds %struct.dp_tu_calc_input, ptr %2, i32 0, i32 6
  store i32 444, ptr %214, align 8
  %215 = getelementptr inbounds %struct.dp_tu_calc_input, ptr %2, i32 0, i32 7
  store i32 0, ptr %215, align 4
  %216 = getelementptr inbounds %struct.dp_tu_calc_input, ptr %2, i32 0, i32 8
  store i32 0, ptr %216, align 8
  %217 = getelementptr inbounds %struct.dp_tu_calc_input, ptr %2, i32 0, i32 9
  store i32 0, ptr %217, align 4
  %218 = getelementptr inbounds %struct.dp_tu_calc_input, ptr %2, i32 0, i32 11
  store i32 0, ptr %218, align 4
  %219 = getelementptr inbounds %struct.dp_tu_calc_input, ptr %2, i32 0, i32 10
  store i32 100, ptr %219, align 8
  call fastcc void @_dp_ctrl_calc_tu(ptr noundef nonnull %2, ptr noundef nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #8
  %220 = getelementptr inbounds %struct.dp_vc_tu_mapping_table, ptr %3, i32 0, i32 10
  %221 = load i8, ptr %220, align 2
  %222 = getelementptr inbounds %struct.dp_vc_tu_mapping_table, ptr %3, i32 0, i32 4
  %223 = load i8, ptr %222, align 1
  %224 = getelementptr inbounds %struct.dp_vc_tu_mapping_table, ptr %3, i32 0, i32 5
  %225 = load i16, ptr %224, align 4
  %226 = getelementptr inbounds %struct.dp_vc_tu_mapping_table, ptr %3, i32 0, i32 7
  %227 = load i8, ptr %226, align 1
  %228 = zext i8 %227 to i32
  %229 = shl nuw nsw i32 %228, 1
  %230 = getelementptr inbounds %struct.dp_vc_tu_mapping_table, ptr %3, i32 0, i32 8
  %231 = load i8, ptr %230, align 4
  %232 = zext i8 %231 to i32
  %233 = shl nuw nsw i32 %232, 16
  %234 = or i32 %233, %229
  %235 = getelementptr inbounds %struct.dp_vc_tu_mapping_table, ptr %3, i32 0, i32 9
  %236 = load i8, ptr %235, align 1
  %237 = zext i8 %236 to i32
  %238 = shl nuw nsw i32 %237, 20
  %239 = or i32 %234, %238
  %240 = getelementptr inbounds %struct.dp_vc_tu_mapping_table, ptr %3, i32 0, i32 6
  %241 = load i8, ptr %240, align 2, !range !9
  %242 = zext i8 %241 to i32
  %243 = or i32 %239, %242
  %244 = zext i8 %223 to i32
  %245 = zext i16 %225 to i32
  %246 = shl nuw i32 %245, 16
  %247 = or i32 %246, %244
  %248 = zext i8 %221 to i32
  %249 = load ptr, ptr %125, align 4
  call void @dp_catalog_ctrl_update_transfer_unit(ptr noundef %249, i32 noundef %248, i32 noundef %247, i32 noundef %243) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  %250 = load ptr, ptr %125, align 4
  call void @dp_catalog_ctrl_state_ctrl(ptr noundef %250, i32 noundef 128) #8
  %251 = call i32 @wait_for_completion_timeout(ptr noundef %124, i32 noundef 50) #8
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %253, label %254

253:                                              ; preds = %185
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.70) #8
  br label %258

254:                                              ; preds = %185
  %255 = load ptr, ptr %125, align 4
  %256 = call zeroext i1 @dp_catalog_ctrl_mainlink_ready(ptr noundef %255) #8
  %257 = select i1 %256, ptr @.str.15, ptr @.str.16
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.14, ptr noundef nonnull %257) #8
  br label %258

258:                                              ; preds = %254, %253, %121, %99, %73, %27, %1
  %259 = phi i32 [ -22, %1 ], [ -110, %253 ], [ %71, %73 ], [ 0, %254 ], [ %25, %27 ], [ 0, %99 ], [ 0, %121 ]
  ret i32 %259
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dp_power_clk_status(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dp_catalog_ctrl_config_msa(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dp_catalog_ctrl_mainlink_ready(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dp_ctrl_off_link_stream(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dp_ctrl_private, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dp_parser, ptr %3, i32 0, i32 3, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dp_ctrl_private, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dp_ctrl_private, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.dp_panel, ptr %9, i32 0, i32 4
  %11 = tail call i32 @dp_link_psm_config(ptr noundef %7, ptr noundef %10, i1 noundef zeroext true) #8
  %12 = getelementptr inbounds %struct.dp_ctrl_private, ptr %0, i32 0, i32 7
  %13 = load ptr, ptr %12, align 4
  tail call void @dp_catalog_ctrl_mainlink_ctrl(ptr noundef %13, i1 noundef zeroext false) #8
  %14 = getelementptr inbounds %struct.dp_ctrl_private, ptr %0, i32 0, i32 5
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 @dp_power_clk_status(ptr noundef %15, i32 noundef 2) #8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %1
  %19 = load ptr, ptr %14, align 4
  %20 = tail call i32 @dp_power_clk_enable(ptr noundef %19, i32 noundef 2, i1 noundef zeroext false) #8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17, i32 noundef %20) #8
  br label %32

23:                                               ; preds = %18, %1
  %24 = load ptr, ptr %14, align 4
  %25 = tail call i32 @dp_power_clk_enable(ptr noundef %24, i32 noundef 1, i1 noundef zeroext false) #8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.18, i32 noundef %25) #8
  br label %32

28:                                               ; preds = %23
  %29 = tail call i32 @phy_power_off(ptr noundef %5) #8
  %30 = tail call i32 @phy_exit(ptr noundef %5) #8
  %31 = tail call i32 @phy_init(ptr noundef %5) #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.19) #8
  br label %32

32:                                               ; preds = %28, %27, %22
  %33 = phi i32 [ %20, %22 ], [ %25, %27 ], [ 0, %28 ]
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dp_link_psm_config(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dp_catalog_ctrl_mainlink_ctrl(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dp_ctrl_off_phy(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dp_ctrl_private, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dp_parser, ptr %3, i32 0, i32 3, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dp_ctrl_private, ptr %0, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  tail call void @dp_catalog_ctrl_reset(ptr noundef %7) #8
  %8 = tail call i32 @phy_exit(ptr noundef %5) #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.20) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dp_ctrl_off(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %24, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.dp_ctrl_private, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dp_parser, ptr %5, i32 0, i32 3, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dp_ctrl_private, ptr %0, i32 0, i32 7
  %9 = load ptr, ptr %8, align 4
  tail call void @dp_catalog_ctrl_mainlink_ctrl(ptr noundef %9, i1 noundef zeroext false) #8
  %10 = load ptr, ptr %8, align 4
  tail call void @dp_catalog_ctrl_reset(ptr noundef %10) #8
  %11 = getelementptr inbounds %struct.dp_ctrl_private, ptr %0, i32 0, i32 5
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @dp_power_clk_enable(ptr noundef %12, i32 noundef 2, i1 noundef zeroext false) #8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.21, i32 noundef %13) #8
  br label %16

16:                                               ; preds = %15, %3
  %17 = load ptr, ptr %11, align 4
  %18 = tail call i32 @dp_power_clk_enable(ptr noundef %17, i32 noundef 1, i1 noundef zeroext false) #8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.18, i32 noundef %18) #8
  br label %21

21:                                               ; preds = %20, %16
  %22 = tail call i32 @phy_power_off(ptr noundef %7) #8
  %23 = tail call i32 @phy_exit(ptr noundef %7) #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.22) #8
  br label %24

24:                                               ; preds = %21, %1
  %25 = phi i32 [ %18, %21 ], [ -22, %1 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dp_ctrl_isr(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %16, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.dp_ctrl_private, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @dp_catalog_ctrl_get_interrupt(ptr noundef %5) #8
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %3
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.23) #8
  %10 = getelementptr inbounds %struct.dp_ctrl_private, ptr %0, i32 0, i32 9
  tail call void @complete(ptr noundef %10) #8
  br label %11

11:                                               ; preds = %9, %3
  %12 = and i32 %6, 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.24) #8
  %15 = getelementptr inbounds %struct.dp_ctrl_private, ptr %0, i32 0, i32 8
  tail call void @complete(ptr noundef %15) #8
  br label %16

16:                                               ; preds = %14, %11, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dp_catalog_ctrl_get_interrupt(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dp_ctrl_get(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 {
  %8 = icmp ne ptr %0, null
  %9 = icmp ne ptr %2, null
  %10 = and i1 %8, %9
  %11 = icmp ne ptr %3, null
  %12 = and i1 %10, %11
  %13 = icmp ne ptr %1, null
  %14 = and i1 %13, %12
  %15 = icmp ne ptr %5, null
  %16 = and i1 %14, %15
  br i1 %16, label %18, label %17

17:                                               ; preds = %7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.5) #8
  br label %43

18:                                               ; preds = %7
  %19 = tail call noalias ptr @devm_kmalloc(ptr noundef nonnull %0, i32 noundef 72, i32 noundef 3520) #8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.25) #8
  br label %43

22:                                               ; preds = %18
  %23 = tail call i32 @devm_pm_opp_set_clkname(ptr noundef nonnull %0, ptr noundef nonnull @.str.26) #8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %22
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %0, ptr noundef nonnull @.str.27) #9
  %26 = inttoptr i32 %23 to ptr
  br label %43

27:                                               ; preds = %22
  %28 = tail call i32 @devm_pm_opp_of_add_table(ptr noundef nonnull %0) #8
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %0, ptr noundef nonnull @.str.28) #9
  br label %31

31:                                               ; preds = %30, %27
  %32 = getelementptr inbounds %struct.dp_ctrl_private, ptr %19, i32 0, i32 8
  store i32 0, ptr %32, align 4
  %33 = getelementptr inbounds %struct.dp_ctrl_private, ptr %19, i32 0, i32 8, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %33, ptr noundef nonnull @.str.71, ptr noundef nonnull @init_completion.__key) #8
  %34 = getelementptr inbounds %struct.dp_ctrl_private, ptr %19, i32 0, i32 9
  store i32 0, ptr %34, align 4
  %35 = getelementptr inbounds %struct.dp_ctrl_private, ptr %19, i32 0, i32 9, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %35, ptr noundef nonnull @.str.71, ptr noundef nonnull @init_completion.__key) #8
  %36 = getelementptr inbounds %struct.dp_ctrl_private, ptr %19, i32 0, i32 6
  store ptr %6, ptr %36, align 4
  %37 = getelementptr inbounds %struct.dp_ctrl_private, ptr %19, i32 0, i32 3
  store ptr %2, ptr %37, align 4
  %38 = getelementptr inbounds %struct.dp_ctrl_private, ptr %19, i32 0, i32 5
  store ptr %4, ptr %38, align 4
  %39 = getelementptr inbounds %struct.dp_ctrl_private, ptr %19, i32 0, i32 2
  store ptr %3, ptr %39, align 4
  %40 = getelementptr inbounds %struct.dp_ctrl_private, ptr %19, i32 0, i32 4
  store ptr %1, ptr %40, align 4
  %41 = getelementptr inbounds %struct.dp_ctrl_private, ptr %19, i32 0, i32 7
  store ptr %5, ptr %41, align 4
  %42 = getelementptr inbounds %struct.dp_ctrl_private, ptr %19, i32 0, i32 1
  store ptr %0, ptr %42, align 4
  br label %43

43:                                               ; preds = %31, %25, %21, %17
  %44 = phi ptr [ %26, %25 ], [ %19, %31 ], [ inttoptr (i32 -12 to ptr), %21 ], [ inttoptr (i32 -22 to ptr), %17 ]
  ret ptr %44
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_pm_opp_set_clkname(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_pm_opp_of_add_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_configure(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_on(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_dpcd_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dp_link_get_test_bits_depth(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dp_catalog_ctrl_config_ctrl(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @drm_dp_link_rate_to_bw_code(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dp_catalog_ctrl_set_pattern(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dp_ctrl_update_vx_px(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca [4 x i8], align 4
  %3 = getelementptr inbounds %struct.dp_ctrl_private, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.dp_link, ptr %4, i32 0, i32 6, i32 1
  %6 = load i8, ptr %5, align 4
  %7 = zext i8 %6 to i32
  %8 = getelementptr inbounds %struct.dp_link, ptr %4, i32 0, i32 6, i32 2
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.47, i32 noundef %7, i32 noundef %10) #8
  %11 = getelementptr inbounds %struct.dp_ctrl_private, ptr %0, i32 0, i32 7
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @dp_catalog_ctrl_update_vx_px(ptr noundef %12, i8 noundef zeroext %6, i8 noundef zeroext %9) #8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %40

15:                                               ; preds = %1
  %16 = icmp ugt i8 %6, 1
  br i1 %16, label %17, label %18

17:                                               ; preds = %15
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.48, i32 noundef %7) #8
  br label %18

18:                                               ; preds = %17, %15
  %19 = phi i32 [ 4, %17 ], [ 0, %15 ]
  %20 = icmp ugt i8 %9, 1
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.49, i32 noundef %10) #8
  %22 = or i32 %19, 32
  br label %23

23:                                               ; preds = %21, %18
  %24 = phi i32 [ %22, %21 ], [ %19, %18 ]
  %25 = shl nuw nsw i32 %10, 3
  %26 = load ptr, ptr %3, align 4
  %27 = getelementptr inbounds %struct.dp_link, ptr %26, i32 0, i32 7, i32 2
  %28 = load i32, ptr %27, align 4
  %29 = icmp sgt i32 %28, 0
  %30 = or i32 %25, %7
  br i1 %29, label %31, label %34

31:                                               ; preds = %23
  %32 = or i32 %30, %24
  %33 = trunc i32 %32 to i8
  call void @llvm.memset.p0.i32(ptr nonnull align 4 %2, i8 %33, i32 %28, i1 false)
  br label %34

34:                                               ; preds = %31, %23
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.50, i32 noundef %30) #8
  %35 = getelementptr inbounds %struct.dp_ctrl_private, ptr %0, i32 0, i32 2
  %36 = load ptr, ptr %35, align 4
  %37 = call i32 @drm_dp_dpcd_write(ptr noundef %36, i32 noundef 259, ptr noundef nonnull %2, i32 noundef %28) #8
  %38 = icmp eq i32 %37, %28
  %39 = select i1 %38, i32 0, i32 %37
  br label %40

40:                                               ; preds = %34, %1
  %41 = phi i32 [ %39, %34 ], [ %13, %1 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  ret i32 %41
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dp_link_train_clock_recovery_delay(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dp_link_adjust_levels(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dp_catalog_ctrl_update_vx_px(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dp_link_train_channel_eq_delay(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_dp_channel_eq_ok(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_dpcd_read_link_status(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dp_catalog_ctrl_send_phy_pattern(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dp_catalog_ctrl_read_phy_pattern(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dp_catalog_ctrl_lane_mapping(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dp_link_get_colorimetry_config(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dp_catalog_ctrl_config_misc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dp_panel_timing_cfg(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dp_catalog_ctrl_update_transfer_unit(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @_dp_ctrl_calc_tu(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  %35 = alloca i64, align 8
  %36 = alloca i64, align 8
  %37 = alloca i64, align 8
  %38 = alloca i64, align 8
  %39 = alloca i64, align 8
  %40 = alloca i64, align 8
  %41 = alloca i64, align 8
  %42 = alloca i64, align 8
  %43 = alloca i64, align 8
  %44 = alloca i64, align 8
  %45 = alloca i64, align 8
  %46 = alloca i64, align 8
  %47 = alloca i64, align 8
  %48 = alloca i64, align 8
  %49 = alloca i64, align 8
  %50 = alloca i64, align 8
  %51 = alloca i64, align 8
  %52 = alloca i64, align 8
  %53 = alloca i64, align 8
  %54 = alloca i64, align 8
  %55 = alloca i64, align 8
  %56 = alloca i64, align 8
  %57 = alloca i64, align 8
  %58 = alloca i64, align 8
  %59 = alloca i64, align 8
  %60 = alloca i64, align 8
  %61 = alloca i64, align 8
  %62 = alloca i64, align 8
  %63 = alloca i64, align 8
  %64 = alloca i64, align 8
  %65 = alloca i64, align 8
  %66 = alloca i64, align 8
  %67 = alloca i64, align 8
  %68 = alloca i64, align 8
  %69 = alloca i64, align 8
  %70 = alloca i64, align 8
  %71 = alloca i64, align 8
  %72 = alloca i64, align 8
  %73 = alloca i64, align 8
  %74 = alloca i64, align 8
  %75 = alloca i64, align 8
  %76 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %76) #8
  store i64 0, ptr %76, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %75) #8
  store i64 0, ptr %75, align 8, !annotation !8
  %77 = call i64 @div64_u64_rem(i64 noundef 6, i64 noundef 10000, ptr noundef nonnull %75) #8
  %78 = load i64, ptr %75, align 8
  br label %79

79:                                               ; preds = %79, %2
  %80 = phi i64 [ %78, %2 ], [ %87, %79 ]
  %81 = phi i64 [ %77, %2 ], [ %90, %79 ]
  %82 = phi i32 [ 32, %2 ], [ %91, %79 ]
  %83 = shl i64 %80, 1
  %84 = shl i64 %81, 1
  %85 = icmp ult i64 %83, 10000
  %86 = select i1 %85, i64 0, i64 -10000
  %87 = add i64 %86, %83
  %88 = xor i1 %85, true
  %89 = zext i1 %88 to i64
  %90 = or i64 %84, %89
  %91 = add nsw i32 %82, -1
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %79

93:                                               ; preds = %79
  %94 = shl i64 %87, 1
  %95 = icmp ugt i64 %94, 9999
  %96 = zext i1 %95 to i64
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %75) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %74) #8
  store i64 0, ptr %74, align 8, !annotation !8
  %97 = call i64 @div64_u64_rem(i64 noundef 49, i64 noundef 100, ptr noundef nonnull %74) #8
  %98 = load i64, ptr %74, align 8
  br label %99

99:                                               ; preds = %99, %93
  %100 = phi i64 [ %98, %93 ], [ %107, %99 ]
  %101 = phi i64 [ %97, %93 ], [ %110, %99 ]
  %102 = phi i32 [ 32, %93 ], [ %111, %99 ]
  %103 = shl i64 %100, 1
  %104 = shl i64 %101, 1
  %105 = icmp ult i64 %103, 100
  %106 = select i1 %105, i64 0, i64 -100
  %107 = add i64 %106, %103
  %108 = xor i1 %105, true
  %109 = zext i1 %108 to i64
  %110 = or i64 %104, %109
  %111 = add nsw i32 %102, -1
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %99

113:                                              ; preds = %99
  %114 = shl i64 %107, 1
  %115 = icmp ugt i64 %114, 99
  %116 = zext i1 %115 to i64
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %74) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %73) #8
  store i64 0, ptr %73, align 8, !annotation !8
  %117 = call i64 @div64_u64_rem(i64 noundef 56, i64 noundef 100, ptr noundef nonnull %73) #8
  %118 = load i64, ptr %73, align 8
  br label %119

119:                                              ; preds = %119, %113
  %120 = phi i64 [ %118, %113 ], [ %127, %119 ]
  %121 = phi i64 [ %117, %113 ], [ %130, %119 ]
  %122 = phi i32 [ 32, %113 ], [ %131, %119 ]
  %123 = shl i64 %120, 1
  %124 = shl i64 %121, 1
  %125 = icmp ult i64 %123, 100
  %126 = select i1 %125, i64 0, i64 -100
  %127 = add i64 %126, %123
  %128 = xor i1 %125, true
  %129 = zext i1 %128 to i64
  %130 = or i64 %124, %129
  %131 = add nsw i32 %122, -1
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %119

133:                                              ; preds = %119
  %134 = add i64 %90, %96
  %135 = shl i64 %127, 1
  %136 = icmp ugt i64 %135, 99
  %137 = zext i1 %136 to i64
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %73) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %72) #8
  store i64 0, ptr %72, align 8, !annotation !8
  %138 = call i64 @div64_u64_rem(i64 noundef 1001, i64 noundef 1000, ptr noundef nonnull %72) #8
  %139 = load i64, ptr %72, align 8
  br label %140

140:                                              ; preds = %140, %133
  %141 = phi i64 [ %139, %133 ], [ %148, %140 ]
  %142 = phi i64 [ %138, %133 ], [ %151, %140 ]
  %143 = phi i32 [ 32, %133 ], [ %152, %140 ]
  %144 = shl i64 %141, 1
  %145 = shl i64 %142, 1
  %146 = icmp ult i64 %144, 1000
  %147 = select i1 %146, i64 0, i64 -1000
  %148 = add i64 %147, %144
  %149 = xor i1 %146, true
  %150 = zext i1 %149 to i64
  %151 = or i64 %145, %150
  %152 = add nsw i32 %143, -1
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %140

154:                                              ; preds = %140
  %155 = add i64 %110, %116
  %156 = shl i64 %148, 1
  %157 = icmp ugt i64 %156, 999
  %158 = zext i1 %157 to i64
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %72) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %71) #8
  store i64 0, ptr %71, align 8, !annotation !8
  %159 = call i64 @div64_u64_rem(i64 noundef 1, i64 noundef 10, ptr noundef nonnull %71) #8
  %160 = add i64 %130, %137
  %161 = add i64 %151, %158
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %71) #8
  %162 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %163 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %162, i32 noundef 3520, i32 noundef 384) #10
  %164 = icmp eq ptr %163, null
  br i1 %164, label %5109, label %165

165:                                              ; preds = %154
  %166 = getelementptr inbounds %struct.dp_tu_calc_input, ptr %0, i32 0, i32 4
  %167 = load i32, ptr %166, align 8
  %168 = getelementptr inbounds %struct.dp_tu_calc_input, ptr %0, i32 0, i32 11
  %169 = load i32, ptr %168, align 4
  %170 = load i64, ptr %0, align 8
  %171 = call i64 @llvm.abs.i64(i64 %170, i1 false) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %70) #8
  store i64 0, ptr %70, align 8, !annotation !8
  %172 = call i64 @div64_u64_rem(i64 noundef %171, i64 noundef 1, ptr noundef nonnull %70) #8
  %173 = load i64, ptr %70, align 8
  br label %174

174:                                              ; preds = %174, %165
  %175 = phi i64 [ %173, %165 ], [ %182, %174 ]
  %176 = phi i64 [ %172, %165 ], [ %184, %174 ]
  %177 = phi i32 [ 32, %165 ], [ %185, %174 ]
  %178 = shl i64 %175, 1
  %179 = shl i64 %176, 1
  %180 = icmp ne i64 %178, 0
  %181 = sext i1 %180 to i64
  %182 = add i64 %178, %181
  %183 = zext i1 %180 to i64
  %184 = or i64 %179, %183
  %185 = add nsw i32 %177, -1
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %174

187:                                              ; preds = %174
  %188 = and i64 %182, 9223372036854775807
  %189 = icmp ne i64 %188, 0
  %190 = zext i1 %189 to i64
  %191 = add i64 %184, %190
  %192 = sub i64 0, %191
  %193 = icmp slt i64 %170, 0
  %194 = select i1 %193, i64 %192, i64 %191
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %70) #8
  store i64 %194, ptr %163, align 8
  %195 = getelementptr inbounds %struct.dp_tu_calc_input, ptr %0, i32 0, i32 1
  %196 = load i64, ptr %195, align 8
  %197 = call i64 @llvm.abs.i64(i64 %196, i1 false) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %69) #8
  store i64 0, ptr %69, align 8, !annotation !8
  %198 = call i64 @div64_u64_rem(i64 noundef %197, i64 noundef 1000, ptr noundef nonnull %69) #8
  %199 = load i64, ptr %69, align 8
  br label %200

200:                                              ; preds = %200, %187
  %201 = phi i64 [ %199, %187 ], [ %208, %200 ]
  %202 = phi i64 [ %198, %187 ], [ %211, %200 ]
  %203 = phi i32 [ 32, %187 ], [ %212, %200 ]
  %204 = shl i64 %201, 1
  %205 = shl i64 %202, 1
  %206 = icmp ult i64 %204, 1000
  %207 = select i1 %206, i64 0, i64 -1000
  %208 = add i64 %207, %204
  %209 = xor i1 %206, true
  %210 = zext i1 %209 to i64
  %211 = or i64 %205, %210
  %212 = add nsw i32 %203, -1
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %214, label %200

214:                                              ; preds = %200
  %215 = shl i64 %208, 1
  %216 = icmp ugt i64 %215, 999
  %217 = zext i1 %216 to i64
  %218 = add i64 %211, %217
  %219 = sub i64 0, %218
  %220 = icmp slt i64 %196, 0
  %221 = select i1 %220, i64 %219, i64 %218
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %69) #8
  %222 = getelementptr inbounds %struct.tu_algo_data, ptr %163, i32 0, i32 1
  store i64 %221, ptr %222, align 8
  %223 = getelementptr inbounds %struct.dp_tu_calc_input, ptr %0, i32 0, i32 2
  %224 = load i64, ptr %223, align 8
  %225 = getelementptr inbounds %struct.tu_algo_data, ptr %163, i32 0, i32 2
  store i64 %224, ptr %225, align 8
  %226 = getelementptr inbounds %struct.dp_tu_calc_input, ptr %0, i32 0, i32 3
  %227 = load i64, ptr %226, align 8
  %228 = getelementptr inbounds %struct.tu_algo_data, ptr %163, i32 0, i32 4
  store i64 %227, ptr %228, align 8
  %229 = load i32, ptr %166, align 8
  %230 = getelementptr inbounds %struct.tu_algo_data, ptr %163, i32 0, i32 6
  store i32 %229, ptr %230, align 8
  %231 = getelementptr inbounds %struct.dp_tu_calc_input, ptr %0, i32 0, i32 5
  %232 = load i32, ptr %231, align 4
  %233 = getelementptr inbounds %struct.tu_algo_data, ptr %163, i32 0, i32 7
  store i32 %232, ptr %233, align 4
  %234 = getelementptr inbounds %struct.dp_tu_calc_input, ptr %0, i32 0, i32 6
  %235 = load i32, ptr %234, align 8
  %236 = getelementptr inbounds %struct.tu_algo_data, ptr %163, i32 0, i32 8
  store i32 %235, ptr %236, align 8
  %237 = getelementptr inbounds %struct.dp_tu_calc_input, ptr %0, i32 0, i32 7
  %238 = load i32, ptr %237, align 4
  %239 = getelementptr inbounds %struct.tu_algo_data, ptr %163, i32 0, i32 9
  store i32 %238, ptr %239, align 4
  %240 = getelementptr inbounds %struct.dp_tu_calc_input, ptr %0, i32 0, i32 8
  %241 = load i32, ptr %240, align 8
  %242 = getelementptr inbounds %struct.tu_algo_data, ptr %163, i32 0, i32 10
  store i32 %241, ptr %242, align 8
  %243 = call i64 @llvm.abs.i64(i64 %224, i1 false) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %68) #8
  store i64 0, ptr %68, align 8, !annotation !8
  %244 = call i64 @div64_u64_rem(i64 noundef %243, i64 noundef 1, ptr noundef nonnull %68) #8
  %245 = load i64, ptr %68, align 8
  br label %246

246:                                              ; preds = %246, %214
  %247 = phi i64 [ %245, %214 ], [ %254, %246 ]
  %248 = phi i64 [ %244, %214 ], [ %256, %246 ]
  %249 = phi i32 [ 32, %214 ], [ %257, %246 ]
  %250 = shl i64 %247, 1
  %251 = shl i64 %248, 1
  %252 = icmp ne i64 %250, 0
  %253 = sext i1 %252 to i64
  %254 = add i64 %250, %253
  %255 = zext i1 %252 to i64
  %256 = or i64 %251, %255
  %257 = add nsw i32 %249, -1
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %259, label %246

259:                                              ; preds = %246
  %260 = and i64 %254, 9223372036854775807
  %261 = icmp ne i64 %260, 0
  %262 = zext i1 %261 to i64
  %263 = add i64 %256, %262
  %264 = sub i64 0, %263
  %265 = icmp slt i64 %224, 0
  %266 = select i1 %265, i64 %264, i64 %263
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %68) #8
  %267 = getelementptr inbounds %struct.tu_algo_data, ptr %163, i32 0, i32 3
  store i64 %266, ptr %267, align 8
  %268 = load i64, ptr %226, align 8
  %269 = call i64 @llvm.abs.i64(i64 %268, i1 false) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %67) #8
  store i64 0, ptr %67, align 8, !annotation !8
  %270 = call i64 @div64_u64_rem(i64 noundef %269, i64 noundef 1, ptr noundef nonnull %67) #8
  %271 = load i64, ptr %67, align 8
  br label %272

272:                                              ; preds = %272, %259
  %273 = phi i64 [ %271, %259 ], [ %280, %272 ]
  %274 = phi i64 [ %270, %259 ], [ %282, %272 ]
  %275 = phi i32 [ 32, %259 ], [ %283, %272 ]
  %276 = shl i64 %273, 1
  %277 = shl i64 %274, 1
  %278 = icmp ne i64 %276, 0
  %279 = sext i1 %278 to i64
  %280 = add i64 %276, %279
  %281 = zext i1 %278 to i64
  %282 = or i64 %277, %281
  %283 = add nsw i32 %275, -1
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %285, label %272

285:                                              ; preds = %272
  %286 = and i64 %280, 9223372036854775807
  %287 = icmp ne i64 %286, 0
  %288 = zext i1 %287 to i64
  %289 = add i64 %282, %288
  %290 = sub i64 0, %289
  %291 = icmp slt i64 %268, 0
  %292 = select i1 %291, i64 %290, i64 %289
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %67) #8
  %293 = getelementptr inbounds %struct.tu_algo_data, ptr %163, i32 0, i32 5
  store i64 %292, ptr %293, align 8
  %294 = load i32, ptr %236, align 8
  %295 = icmp eq i32 %294, 420
  br i1 %295, label %296, label %399

296:                                              ; preds = %285
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %66) #8
  store i64 0, ptr %66, align 8, !annotation !8
  %297 = call i64 @div64_u64_rem(i64 noundef 2, i64 noundef 1, ptr noundef nonnull %66) #8
  %298 = load i64, ptr %66, align 8
  br label %299

299:                                              ; preds = %299, %296
  %300 = phi i64 [ %298, %296 ], [ %307, %299 ]
  %301 = phi i64 [ %297, %296 ], [ %309, %299 ]
  %302 = phi i32 [ 32, %296 ], [ %310, %299 ]
  %303 = shl i64 %300, 1
  %304 = shl i64 %301, 1
  %305 = icmp ne i64 %303, 0
  %306 = sext i1 %305 to i64
  %307 = add i64 %303, %306
  %308 = zext i1 %305 to i64
  %309 = or i64 %304, %308
  %310 = add nsw i32 %302, -1
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %312, label %299

312:                                              ; preds = %299
  %313 = and i64 %307, 9223372036854775807
  %314 = icmp ne i64 %313, 0
  %315 = zext i1 %314 to i64
  %316 = add i64 %309, %315
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %66) #8
  %317 = load i64, ptr %222, align 8
  %318 = lshr i64 %317, 63
  br label %319

319:                                              ; preds = %325, %312
  %320 = phi i32 [ 62, %312 ], [ %326, %325 ]
  %321 = zext i32 %320 to i64
  %322 = lshr i64 %317, %321
  %323 = and i64 %322, 1
  %324 = icmp eq i64 %323, %318
  br i1 %324, label %325, label %328

325:                                              ; preds = %319
  %326 = add nsw i32 %320, -1
  %327 = icmp eq i32 %326, 0
  br i1 %327, label %328, label %319

328:                                              ; preds = %325, %319
  %329 = phi i32 [ 0, %325 ], [ %320, %319 ]
  %330 = sub i32 62, %329
  %331 = zext i32 %330 to i64
  %332 = shl i64 %317, %331
  %333 = icmp ult i32 %330, 32
  %334 = add i32 %329, -30
  %335 = select i1 %333, i32 %334, i32 0
  %336 = zext i32 %335 to i64
  %337 = ashr i64 %316, %336
  %338 = call i64 @div64_s64(i64 noundef %332, i64 noundef %337) #8
  %339 = icmp ugt i32 %330, 32
  %340 = sub i32 30, %329
  %341 = select i1 %339, i32 %340, i32 0
  %342 = zext i32 %341 to i64
  %343 = ashr i64 %338, %342
  store i64 %343, ptr %222, align 8
  %344 = load i64, ptr %267, align 8
  %345 = lshr i64 %344, 63
  br label %346

346:                                              ; preds = %352, %328
  %347 = phi i32 [ 62, %328 ], [ %353, %352 ]
  %348 = zext i32 %347 to i64
  %349 = lshr i64 %344, %348
  %350 = and i64 %349, 1
  %351 = icmp eq i64 %350, %345
  br i1 %351, label %352, label %355

352:                                              ; preds = %346
  %353 = add nsw i32 %347, -1
  %354 = icmp eq i32 %353, 0
  br i1 %354, label %355, label %346

355:                                              ; preds = %352, %346
  %356 = phi i32 [ 0, %352 ], [ %347, %346 ]
  %357 = sub i32 62, %356
  %358 = zext i32 %357 to i64
  %359 = shl i64 %344, %358
  %360 = icmp ult i32 %357, 32
  %361 = add i32 %356, -30
  %362 = select i1 %360, i32 %361, i32 0
  %363 = zext i32 %362 to i64
  %364 = ashr i64 %316, %363
  %365 = call i64 @div64_s64(i64 noundef %359, i64 noundef %364) #8
  %366 = icmp ugt i32 %357, 32
  %367 = sub i32 30, %356
  %368 = select i1 %366, i32 %367, i32 0
  %369 = zext i32 %368 to i64
  %370 = ashr i64 %365, %369
  store i64 %370, ptr %267, align 8
  %371 = load i64, ptr %293, align 8
  %372 = lshr i64 %371, 63
  br label %373

373:                                              ; preds = %379, %355
  %374 = phi i32 [ 62, %355 ], [ %380, %379 ]
  %375 = zext i32 %374 to i64
  %376 = lshr i64 %371, %375
  %377 = and i64 %376, 1
  %378 = icmp eq i64 %377, %372
  br i1 %378, label %379, label %382

379:                                              ; preds = %373
  %380 = add nsw i32 %374, -1
  %381 = icmp eq i32 %380, 0
  br i1 %381, label %382, label %373

382:                                              ; preds = %379, %373
  %383 = phi i32 [ 0, %379 ], [ %374, %373 ]
  %384 = sub i32 62, %383
  %385 = zext i32 %384 to i64
  %386 = shl i64 %371, %385
  %387 = icmp ult i32 %384, 32
  %388 = add i32 %383, -30
  %389 = select i1 %387, i32 %388, i32 0
  %390 = zext i32 %389 to i64
  %391 = lshr i64 2, %390
  %392 = call i64 @div64_s64(i64 noundef %386, i64 noundef %391) #8
  %393 = icmp ugt i32 %384, 32
  %394 = sub i32 30, %383
  %395 = select i1 %393, i32 %394, i32 0
  %396 = zext i32 %395 to i64
  %397 = ashr i64 %392, %396
  store i64 %397, ptr %293, align 8
  %398 = load i32, ptr %236, align 8
  br label %399

399:                                              ; preds = %382, %285
  %400 = phi i32 [ %398, %382 ], [ %294, %285 ]
  %401 = icmp eq i32 %400, 422
  %402 = load i32, ptr %233, align 4
  br i1 %401, label %403, label %407

403:                                              ; preds = %399
  switch i32 %402, label %406 [
    i32 24, label %404
    i32 30, label %405
  ]

404:                                              ; preds = %403
  store i32 16, ptr %233, align 4
  br label %409

405:                                              ; preds = %403
  store i32 20, ptr %233, align 4
  br label %409

406:                                              ; preds = %403
  store i32 16, ptr %233, align 4
  br label %409

407:                                              ; preds = %399
  %408 = sdiv i32 %402, 3
  br label %409

409:                                              ; preds = %407, %406, %405, %404
  %410 = phi i32 [ 8, %404 ], [ 10, %405 ], [ 8, %406 ], [ %408, %407 ]
  %411 = getelementptr inbounds %struct.tu_algo_data, ptr %163, i32 0, i32 11
  store i32 %410, ptr %411, align 4
  %412 = load i32, ptr %237, align 4
  %413 = icmp eq i32 %412, 0
  br i1 %413, label %798, label %414

414:                                              ; preds = %409
  %415 = getelementptr inbounds %struct.dp_tu_calc_input, ptr %0, i32 0, i32 10
  %416 = load i32, ptr %415, align 8
  %417 = call i32 @llvm.abs.i32(i32 %416, i1 false) #8
  %418 = zext i32 %417 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %65) #8
  store i64 0, ptr %65, align 8, !annotation !8
  %419 = call i64 @div64_u64_rem(i64 noundef %418, i64 noundef 100, ptr noundef nonnull %65) #8
  %420 = load i64, ptr %65, align 8
  br label %421

421:                                              ; preds = %421, %414
  %422 = phi i64 [ %420, %414 ], [ %429, %421 ]
  %423 = phi i64 [ %419, %414 ], [ %432, %421 ]
  %424 = phi i32 [ 32, %414 ], [ %433, %421 ]
  %425 = shl i64 %422, 1
  %426 = shl i64 %423, 1
  %427 = icmp ult i64 %425, 100
  %428 = select i1 %427, i64 0, i64 -100
  %429 = add i64 %428, %425
  %430 = xor i1 %427, true
  %431 = zext i1 %430 to i64
  %432 = or i64 %426, %431
  %433 = add nsw i32 %424, -1
  %434 = icmp eq i32 %433, 0
  br i1 %434, label %435, label %421

435:                                              ; preds = %421
  %436 = shl i64 %429, 1
  %437 = icmp ugt i64 %436, 99
  %438 = zext i1 %437 to i64
  %439 = add i64 %432, %438
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %65) #8
  %440 = load i32, ptr %231, align 4
  %441 = call i32 @llvm.abs.i32(i32 %440, i1 false) #8
  %442 = zext i32 %441 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %64) #8
  store i64 0, ptr %64, align 8, !annotation !8
  %443 = call i64 @div64_u64_rem(i64 noundef %442, i64 noundef 1, ptr noundef nonnull %64) #8
  %444 = load i64, ptr %64, align 8
  br label %445

445:                                              ; preds = %445, %435
  %446 = phi i64 [ %444, %435 ], [ %453, %445 ]
  %447 = phi i64 [ %443, %435 ], [ %455, %445 ]
  %448 = phi i32 [ 32, %435 ], [ %456, %445 ]
  %449 = shl i64 %446, 1
  %450 = shl i64 %447, 1
  %451 = icmp ne i64 %449, 0
  %452 = sext i1 %451 to i64
  %453 = add i64 %449, %452
  %454 = zext i1 %451 to i64
  %455 = or i64 %450, %454
  %456 = add nsw i32 %448, -1
  %457 = icmp eq i32 %456, 0
  br i1 %457, label %458, label %445

458:                                              ; preds = %445
  %459 = icmp slt i32 %416, 0
  %460 = sub i64 0, %439
  %461 = select i1 %459, i64 %460, i64 %439
  %462 = and i64 %453, 9223372036854775807
  %463 = icmp ne i64 %462, 0
  %464 = zext i1 %463 to i64
  %465 = add i64 %455, %464
  %466 = sub i64 0, %465
  %467 = icmp slt i32 %440, 0
  %468 = select i1 %467, i64 %466, i64 %465
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %64) #8
  %469 = lshr i64 %468, 63
  br label %470

470:                                              ; preds = %476, %458
  %471 = phi i32 [ 62, %458 ], [ %477, %476 ]
  %472 = zext i32 %471 to i64
  %473 = lshr i64 %468, %472
  %474 = and i64 %473, 1
  %475 = icmp eq i64 %474, %469
  br i1 %475, label %476, label %479

476:                                              ; preds = %470
  %477 = add nsw i32 %471, -1
  %478 = icmp eq i32 %477, 0
  br i1 %478, label %479, label %470

479:                                              ; preds = %476, %470
  %480 = phi i32 [ 0, %476 ], [ %471, %470 ]
  %481 = sub i32 62, %480
  %482 = zext i32 %481 to i64
  %483 = shl i64 %468, %482
  %484 = icmp ult i32 %481, 32
  %485 = add i32 %480, -30
  %486 = select i1 %484, i32 %485, i32 0
  %487 = zext i32 %486 to i64
  %488 = ashr i64 %461, %487
  %489 = call i64 @div64_s64(i64 noundef %483, i64 noundef %488) #8
  %490 = icmp ugt i32 %481, 32
  %491 = sub i32 30, %480
  %492 = select i1 %490, i32 %491, i32 0
  %493 = zext i32 %492 to i64
  %494 = ashr i64 %489, %493
  %495 = load i64, ptr %267, align 8
  %496 = lshr i64 %495, 63
  br label %497

497:                                              ; preds = %503, %479
  %498 = phi i32 [ 62, %479 ], [ %504, %503 ]
  %499 = zext i32 %498 to i64
  %500 = lshr i64 %495, %499
  %501 = and i64 %500, 1
  %502 = icmp eq i64 %501, %496
  br i1 %502, label %503, label %506

503:                                              ; preds = %497
  %504 = add nsw i32 %498, -1
  %505 = icmp eq i32 %504, 0
  br i1 %505, label %506, label %497

506:                                              ; preds = %503, %497
  %507 = phi i32 [ 0, %503 ], [ %498, %497 ]
  %508 = lshr i64 %494, 63
  br label %509

509:                                              ; preds = %515, %506
  %510 = phi i32 [ 62, %506 ], [ %516, %515 ]
  %511 = zext i32 %510 to i64
  %512 = lshr i64 %494, %511
  %513 = and i64 %512, 1
  %514 = icmp eq i64 %513, %508
  br i1 %514, label %515, label %518

515:                                              ; preds = %509
  %516 = add nsw i32 %510, -1
  %517 = icmp eq i32 %516, 0
  br i1 %517, label %518, label %509

518:                                              ; preds = %515, %509
  %519 = phi i32 [ 0, %515 ], [ %510, %509 ]
  %520 = add i32 %519, %507
  %521 = icmp ugt i32 %520, 61
  br i1 %521, label %524, label %522

522:                                              ; preds = %518
  %523 = mul i64 %494, %495
  br label %541

524:                                              ; preds = %518
  %525 = add i32 %520, -61
  %526 = lshr i32 %525, 1
  %527 = and i32 %525, 1
  %528 = add nuw nsw i32 %526, %527
  %529 = zext i32 %528 to i64
  %530 = ashr i64 %495, %529
  %531 = zext i32 %526 to i64
  %532 = ashr i64 %494, %531
  %533 = mul i64 %530, %532
  %534 = icmp ugt i32 %525, 32
  br i1 %534, label %535, label %539

535:                                              ; preds = %524
  %536 = add i32 %520, -93
  %537 = zext i32 %536 to i64
  %538 = shl i64 %533, %537
  br label %547

539:                                              ; preds = %524
  %540 = icmp eq i32 %525, 32
  br i1 %540, label %547, label %541

541:                                              ; preds = %539, %522
  %542 = phi i32 [ 0, %522 ], [ %525, %539 ]
  %543 = phi i64 [ %523, %522 ], [ %533, %539 ]
  %544 = sub nuw nsw i32 32, %542
  %545 = zext i32 %544 to i64
  %546 = ashr i64 %543, %545
  br label %547

547:                                              ; preds = %541, %539, %535
  %548 = phi i64 [ %538, %535 ], [ %546, %541 ], [ %533, %539 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %63) #8
  store i64 0, ptr %63, align 8, !annotation !8
  %549 = call i64 @div64_u64_rem(i64 noundef 8, i64 noundef 1, ptr noundef nonnull %63) #8
  %550 = load i64, ptr %63, align 8
  br label %551

551:                                              ; preds = %551, %547
  %552 = phi i64 [ %550, %547 ], [ %559, %551 ]
  %553 = phi i64 [ %549, %547 ], [ %561, %551 ]
  %554 = phi i32 [ 32, %547 ], [ %562, %551 ]
  %555 = shl i64 %552, 1
  %556 = shl i64 %553, 1
  %557 = icmp ne i64 %555, 0
  %558 = sext i1 %557 to i64
  %559 = add i64 %555, %558
  %560 = zext i1 %557 to i64
  %561 = or i64 %556, %560
  %562 = add nsw i32 %554, -1
  %563 = icmp eq i32 %562, 0
  br i1 %563, label %564, label %551

564:                                              ; preds = %551
  %565 = and i64 %559, 9223372036854775807
  %566 = icmp ne i64 %565, 0
  %567 = zext i1 %566 to i64
  %568 = add i64 %561, %567
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %63) #8
  %569 = lshr i64 %548, 63
  br label %570

570:                                              ; preds = %576, %564
  %571 = phi i32 [ 62, %564 ], [ %577, %576 ]
  %572 = zext i32 %571 to i64
  %573 = lshr i64 %548, %572
  %574 = and i64 %573, 1
  %575 = icmp eq i64 %574, %569
  br i1 %575, label %576, label %579

576:                                              ; preds = %570
  %577 = add nsw i32 %571, -1
  %578 = icmp eq i32 %577, 0
  br i1 %578, label %579, label %570

579:                                              ; preds = %576, %570
  %580 = phi i32 [ 0, %576 ], [ %571, %570 ]
  %581 = sub i32 62, %580
  %582 = zext i32 %581 to i64
  %583 = shl i64 %548, %582
  %584 = icmp ult i32 %581, 32
  %585 = add i32 %580, -30
  %586 = select i1 %584, i32 %585, i32 0
  %587 = zext i32 %586 to i64
  %588 = ashr i64 %568, %587
  %589 = call i64 @div64_s64(i64 noundef %583, i64 noundef %588) #8
  %590 = icmp ugt i32 %581, 32
  %591 = sub i32 30, %580
  %592 = select i1 %590, i32 %591, i32 0
  %593 = zext i32 %592 to i64
  %594 = ashr i64 %589, %593
  %595 = lshr i64 %594, 32
  %596 = trunc i64 %595 to i32
  %597 = sdiv i32 %596, %169
  %598 = srem i32 %597, %167
  %599 = sub i32 %167, %598
  %600 = mul i32 %599, %169
  %601 = icmp eq i32 %597, 0
  br i1 %601, label %602, label %604

602:                                              ; preds = %579
  %603 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @__func__.dp_panel_update_tu_timings, i32 noundef 0) #9
  br label %604

604:                                              ; preds = %602, %579
  %605 = add i32 %597, %167
  %606 = mul i32 %605, %169
  %607 = icmp eq i32 %598, 0
  %608 = select i1 %607, i32 0, i32 %600
  %609 = add i32 %608, %606
  %610 = call i32 @llvm.abs.i32(i32 %609, i1 false) #8
  %611 = zext i32 %610 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %62) #8
  store i64 0, ptr %62, align 8, !annotation !8
  %612 = call i64 @div64_u64_rem(i64 noundef %611, i64 noundef 3, ptr noundef nonnull %62) #8
  %613 = load i64, ptr %62, align 8
  br label %614

614:                                              ; preds = %614, %604
  %615 = phi i64 [ %613, %604 ], [ %622, %614 ]
  %616 = phi i64 [ %612, %604 ], [ %625, %614 ]
  %617 = phi i32 [ 32, %604 ], [ %626, %614 ]
  %618 = shl i64 %615, 1
  %619 = shl i64 %616, 1
  %620 = icmp ult i64 %618, 3
  %621 = select i1 %620, i64 0, i64 -3
  %622 = add i64 %621, %618
  %623 = xor i1 %620, true
  %624 = zext i1 %623 to i64
  %625 = or i64 %619, %624
  %626 = add nsw i32 %617, -1
  %627 = icmp eq i32 %626, 0
  br i1 %627, label %628, label %614

628:                                              ; preds = %614
  %629 = shl i64 %622, 1
  %630 = icmp ugt i64 %629, 2
  %631 = zext i1 %630 to i64
  %632 = add i64 %625, %631
  %633 = sub i64 0, %632
  %634 = icmp slt i32 %609, 0
  %635 = select i1 %634, i64 %633, i64 %632
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %62) #8
  %636 = load i64, ptr %222, align 8
  %637 = lshr i64 %636, 63
  br label %638

638:                                              ; preds = %644, %628
  %639 = phi i32 [ 62, %628 ], [ %645, %644 ]
  %640 = zext i32 %639 to i64
  %641 = lshr i64 %636, %640
  %642 = and i64 %641, 1
  %643 = icmp eq i64 %642, %637
  br i1 %643, label %644, label %647

644:                                              ; preds = %638
  %645 = add nsw i32 %639, -1
  %646 = icmp eq i32 %645, 0
  br i1 %646, label %647, label %638

647:                                              ; preds = %644, %638
  %648 = phi i32 [ 0, %644 ], [ %639, %638 ]
  %649 = lshr i64 %635, 63
  br label %650

650:                                              ; preds = %656, %647
  %651 = phi i32 [ 62, %647 ], [ %657, %656 ]
  %652 = zext i32 %651 to i64
  %653 = lshr i64 %635, %652
  %654 = and i64 %653, 1
  %655 = icmp eq i64 %654, %649
  br i1 %655, label %656, label %659

656:                                              ; preds = %650
  %657 = add nsw i32 %651, -1
  %658 = icmp eq i32 %657, 0
  br i1 %658, label %659, label %650

659:                                              ; preds = %656, %650
  %660 = phi i32 [ 0, %656 ], [ %651, %650 ]
  %661 = add i32 %660, %648
  %662 = icmp ugt i32 %661, 61
  br i1 %662, label %665, label %663

663:                                              ; preds = %659
  %664 = mul i64 %636, %635
  br label %682

665:                                              ; preds = %659
  %666 = add i32 %661, -61
  %667 = lshr i32 %666, 1
  %668 = and i32 %666, 1
  %669 = add nuw nsw i32 %667, %668
  %670 = zext i32 %669 to i64
  %671 = ashr i64 %636, %670
  %672 = zext i32 %667 to i64
  %673 = ashr i64 %635, %672
  %674 = mul i64 %671, %673
  %675 = icmp ugt i32 %666, 32
  br i1 %675, label %676, label %680

676:                                              ; preds = %665
  %677 = add i32 %661, -93
  %678 = zext i32 %677 to i64
  %679 = shl i64 %674, %678
  br label %688

680:                                              ; preds = %665
  %681 = icmp eq i32 %666, 32
  br i1 %681, label %688, label %682

682:                                              ; preds = %680, %663
  %683 = phi i32 [ 0, %663 ], [ %666, %680 ]
  %684 = phi i64 [ %664, %663 ], [ %674, %680 ]
  %685 = sub nuw nsw i32 32, %683
  %686 = zext i32 %685 to i64
  %687 = ashr i64 %684, %686
  br label %688

688:                                              ; preds = %682, %680, %676
  %689 = phi i64 [ %679, %676 ], [ %687, %682 ], [ %674, %680 ]
  %690 = load i64, ptr %267, align 8
  %691 = lshr i64 %689, 63
  br label %692

692:                                              ; preds = %698, %688
  %693 = phi i32 [ 62, %688 ], [ %699, %698 ]
  %694 = zext i32 %693 to i64
  %695 = lshr i64 %689, %694
  %696 = and i64 %695, 1
  %697 = icmp eq i64 %696, %691
  br i1 %697, label %698, label %701

698:                                              ; preds = %692
  %699 = add nsw i32 %693, -1
  %700 = icmp eq i32 %699, 0
  br i1 %700, label %701, label %692

701:                                              ; preds = %698, %692
  %702 = phi i32 [ 0, %698 ], [ %693, %692 ]
  %703 = sub i32 62, %702
  %704 = zext i32 %703 to i64
  %705 = shl i64 %689, %704
  %706 = icmp ult i32 %703, 32
  %707 = add i32 %702, -30
  %708 = select i1 %706, i32 %707, i32 0
  %709 = zext i32 %708 to i64
  %710 = ashr i64 %690, %709
  %711 = call i64 @div64_s64(i64 noundef %705, i64 noundef %710) #8
  %712 = icmp ugt i32 %703, 32
  %713 = sub i32 30, %702
  %714 = select i1 %712, i32 %713, i32 0
  %715 = zext i32 %714 to i64
  %716 = ashr i64 %711, %715
  %717 = load i64, ptr %222, align 8
  %718 = lshr i64 %716, 63
  br label %719

719:                                              ; preds = %725, %701
  %720 = phi i32 [ 62, %701 ], [ %726, %725 ]
  %721 = zext i32 %720 to i64
  %722 = lshr i64 %716, %721
  %723 = and i64 %722, 1
  %724 = icmp eq i64 %723, %718
  br i1 %724, label %725, label %728

725:                                              ; preds = %719
  %726 = add nsw i32 %720, -1
  %727 = icmp eq i32 %726, 0
  br i1 %727, label %728, label %719

728:                                              ; preds = %725, %719
  %729 = phi i32 [ 0, %725 ], [ %720, %719 ]
  %730 = sub i32 62, %729
  %731 = zext i32 %730 to i64
  %732 = shl i64 %716, %731
  %733 = icmp ult i32 %730, 32
  %734 = add i32 %729, -30
  %735 = select i1 %733, i32 %734, i32 0
  %736 = zext i32 %735 to i64
  %737 = ashr i64 %717, %736
  %738 = call i64 @div64_s64(i64 noundef %732, i64 noundef %737) #8
  %739 = icmp ugt i32 %730, 32
  %740 = sub i32 30, %729
  %741 = select i1 %739, i32 %740, i32 0
  %742 = zext i32 %741 to i64
  %743 = ashr i64 %738, %742
  %744 = load i64, ptr %293, align 8
  %745 = lshr i64 %744, 63
  br label %746

746:                                              ; preds = %752, %728
  %747 = phi i32 [ 62, %728 ], [ %753, %752 ]
  %748 = zext i32 %747 to i64
  %749 = lshr i64 %744, %748
  %750 = and i64 %749, 1
  %751 = icmp eq i64 %750, %745
  br i1 %751, label %752, label %755

752:                                              ; preds = %746
  %753 = add nsw i32 %747, -1
  %754 = icmp eq i32 %753, 0
  br i1 %754, label %755, label %746

755:                                              ; preds = %752, %746
  %756 = phi i32 [ 0, %752 ], [ %747, %746 ]
  %757 = lshr i64 %743, 63
  br label %758

758:                                              ; preds = %764, %755
  %759 = phi i32 [ 62, %755 ], [ %765, %764 ]
  %760 = zext i32 %759 to i64
  %761 = lshr i64 %743, %760
  %762 = and i64 %761, 1
  %763 = icmp eq i64 %762, %757
  br i1 %763, label %764, label %767

764:                                              ; preds = %758
  %765 = add nsw i32 %759, -1
  %766 = icmp eq i32 %765, 0
  br i1 %766, label %767, label %758

767:                                              ; preds = %764, %758
  %768 = phi i32 [ 0, %764 ], [ %759, %758 ]
  %769 = add i32 %768, %756
  %770 = icmp ugt i32 %769, 61
  br i1 %770, label %773, label %771

771:                                              ; preds = %767
  %772 = mul i64 %743, %744
  br label %790

773:                                              ; preds = %767
  %774 = add i32 %769, -61
  %775 = lshr i32 %774, 1
  %776 = and i32 %774, 1
  %777 = add nuw nsw i32 %775, %776
  %778 = zext i32 %777 to i64
  %779 = ashr i64 %744, %778
  %780 = zext i32 %775 to i64
  %781 = ashr i64 %743, %780
  %782 = mul i64 %779, %781
  %783 = icmp ugt i32 %774, 32
  br i1 %783, label %784, label %788

784:                                              ; preds = %773
  %785 = add i32 %769, -93
  %786 = zext i32 %785 to i64
  %787 = shl i64 %782, %786
  br label %796

788:                                              ; preds = %773
  %789 = icmp eq i32 %774, 32
  br i1 %789, label %796, label %790

790:                                              ; preds = %788, %771
  %791 = phi i32 [ 0, %771 ], [ %774, %788 ]
  %792 = phi i64 [ %772, %771 ], [ %782, %788 ]
  %793 = sub nuw nsw i32 32, %791
  %794 = zext i32 %793 to i64
  %795 = ashr i64 %792, %794
  br label %796

796:                                              ; preds = %790, %788, %784
  %797 = phi i64 [ %787, %784 ], [ %795, %790 ], [ %782, %788 ]
  store i64 %716, ptr %222, align 8
  store i64 %635, ptr %267, align 8
  store i64 %797, ptr %293, align 8
  br label %798

798:                                              ; preds = %796, %409
  %799 = getelementptr inbounds %struct.dp_tu_calc_input, ptr %0, i32 0, i32 9
  %800 = load i32, ptr %799, align 4
  %801 = icmp eq i32 %800, 0
  br i1 %801, label %878, label %802

802:                                              ; preds = %798
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %61) #8
  store i64 0, ptr %61, align 8, !annotation !8
  %803 = call i64 @div64_u64_rem(i64 noundef 976, i64 noundef 1000, ptr noundef nonnull %61) #8
  %804 = load i64, ptr %61, align 8
  br label %805

805:                                              ; preds = %805, %802
  %806 = phi i64 [ %804, %802 ], [ %813, %805 ]
  %807 = phi i64 [ %803, %802 ], [ %816, %805 ]
  %808 = phi i32 [ 32, %802 ], [ %817, %805 ]
  %809 = shl i64 %806, 1
  %810 = shl i64 %807, 1
  %811 = icmp ult i64 %809, 1000
  %812 = select i1 %811, i64 0, i64 -1000
  %813 = add i64 %812, %809
  %814 = xor i1 %811, true
  %815 = zext i1 %814 to i64
  %816 = or i64 %810, %815
  %817 = add nsw i32 %808, -1
  %818 = icmp eq i32 %817, 0
  br i1 %818, label %819, label %805

819:                                              ; preds = %805
  %820 = shl i64 %813, 1
  %821 = icmp ugt i64 %820, 999
  %822 = zext i1 %821 to i64
  %823 = add i64 %816, %822
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %61) #8
  %824 = load i64, ptr %163, align 8
  %825 = lshr i64 %824, 63
  br label %826

826:                                              ; preds = %832, %819
  %827 = phi i32 [ 62, %819 ], [ %833, %832 ]
  %828 = zext i32 %827 to i64
  %829 = lshr i64 %824, %828
  %830 = and i64 %829, 1
  %831 = icmp eq i64 %830, %825
  br i1 %831, label %832, label %835

832:                                              ; preds = %826
  %833 = add nsw i32 %827, -1
  %834 = icmp eq i32 %833, 0
  br i1 %834, label %835, label %826

835:                                              ; preds = %832, %826
  %836 = phi i32 [ 0, %832 ], [ %827, %826 ]
  %837 = lshr i64 %823, 63
  br label %838

838:                                              ; preds = %844, %835
  %839 = phi i32 [ 62, %835 ], [ %845, %844 ]
  %840 = zext i32 %839 to i64
  %841 = lshr i64 %823, %840
  %842 = and i64 %841, 1
  %843 = icmp eq i64 %842, %837
  br i1 %843, label %844, label %847

844:                                              ; preds = %838
  %845 = add nsw i32 %839, -1
  %846 = icmp eq i32 %845, 0
  br i1 %846, label %847, label %838

847:                                              ; preds = %844, %838
  %848 = phi i32 [ 0, %844 ], [ %839, %838 ]
  %849 = add i32 %848, %836
  %850 = icmp ugt i32 %849, 61
  br i1 %850, label %853, label %851

851:                                              ; preds = %847
  %852 = mul i64 %824, %823
  br label %870

853:                                              ; preds = %847
  %854 = add i32 %849, -61
  %855 = lshr i32 %854, 1
  %856 = and i32 %854, 1
  %857 = add nuw nsw i32 %855, %856
  %858 = zext i32 %857 to i64
  %859 = ashr i64 %824, %858
  %860 = zext i32 %855 to i64
  %861 = ashr i64 %823, %860
  %862 = mul i64 %859, %861
  %863 = icmp ugt i32 %854, 32
  br i1 %863, label %864, label %868

864:                                              ; preds = %853
  %865 = add i32 %849, -93
  %866 = zext i32 %865 to i64
  %867 = shl i64 %862, %866
  br label %876

868:                                              ; preds = %853
  %869 = icmp eq i32 %854, 32
  br i1 %869, label %876, label %870

870:                                              ; preds = %868, %851
  %871 = phi i32 [ 0, %851 ], [ %854, %868 ]
  %872 = phi i64 [ %852, %851 ], [ %862, %868 ]
  %873 = sub nuw nsw i32 32, %871
  %874 = zext i32 %873 to i64
  %875 = ashr i64 %872, %874
  br label %876

876:                                              ; preds = %870, %868, %864
  %877 = phi i64 [ %867, %864 ], [ %875, %870 ], [ %862, %868 ]
  store i64 %877, ptr %163, align 8
  br label %878

878:                                              ; preds = %876, %798
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %60) #8
  store i64 0, ptr %60, align 8, !annotation !8
  %879 = call i64 @div64_u64_rem(i64 noundef 1000, i64 noundef 1, ptr noundef nonnull %60) #8
  %880 = load i64, ptr %60, align 8
  br label %881

881:                                              ; preds = %881, %878
  %882 = phi i64 [ %880, %878 ], [ %889, %881 ]
  %883 = phi i64 [ %879, %878 ], [ %891, %881 ]
  %884 = phi i32 [ 32, %878 ], [ %892, %881 ]
  %885 = shl i64 %882, 1
  %886 = shl i64 %883, 1
  %887 = icmp ne i64 %885, 0
  %888 = sext i1 %887 to i64
  %889 = add i64 %885, %888
  %890 = zext i1 %887 to i64
  %891 = or i64 %886, %890
  %892 = add nsw i32 %884, -1
  %893 = icmp eq i32 %892, 0
  br i1 %893, label %894, label %881

894:                                              ; preds = %881
  %895 = and i64 %889, 9223372036854775807
  %896 = icmp ne i64 %895, 0
  %897 = zext i1 %896 to i64
  %898 = add i64 %891, %897
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %60) #8
  %899 = getelementptr inbounds %struct.tu_algo_data, ptr %163, i32 0, i32 16
  store i64 %898, ptr %899, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %59) #8
  store i64 0, ptr %59, align 8, !annotation !8
  %900 = call i64 @div64_u64_rem(i64 noundef 4, i64 noundef 1, ptr noundef nonnull %59) #8
  %901 = load i64, ptr %59, align 8
  br label %902

902:                                              ; preds = %902, %894
  %903 = phi i64 [ %901, %894 ], [ %910, %902 ]
  %904 = phi i64 [ %900, %894 ], [ %912, %902 ]
  %905 = phi i32 [ 32, %894 ], [ %913, %902 ]
  %906 = shl i64 %903, 1
  %907 = shl i64 %904, 1
  %908 = icmp ne i64 %906, 0
  %909 = sext i1 %908 to i64
  %910 = add i64 %906, %909
  %911 = zext i1 %908 to i64
  %912 = or i64 %907, %911
  %913 = add nsw i32 %905, -1
  %914 = icmp eq i32 %913, 0
  br i1 %914, label %915, label %902

915:                                              ; preds = %902
  %916 = and i64 %910, 9223372036854775807
  %917 = icmp ne i64 %916, 0
  %918 = zext i1 %917 to i64
  %919 = add i64 %912, %918
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %59) #8
  %920 = load i64, ptr %163, align 8
  %921 = lshr i64 %919, 63
  br label %922

922:                                              ; preds = %928, %915
  %923 = phi i32 [ 62, %915 ], [ %929, %928 ]
  %924 = zext i32 %923 to i64
  %925 = lshr i64 %919, %924
  %926 = and i64 %925, 1
  %927 = icmp eq i64 %926, %921
  br i1 %927, label %928, label %931

928:                                              ; preds = %922
  %929 = add nsw i32 %923, -1
  %930 = icmp eq i32 %929, 0
  br i1 %930, label %931, label %922

931:                                              ; preds = %928, %922
  %932 = phi i32 [ 0, %928 ], [ %923, %922 ]
  %933 = lshr i64 %920, 63
  br label %934

934:                                              ; preds = %940, %931
  %935 = phi i32 [ 62, %931 ], [ %941, %940 ]
  %936 = zext i32 %935 to i64
  %937 = lshr i64 %920, %936
  %938 = and i64 %937, 1
  %939 = icmp eq i64 %938, %933
  br i1 %939, label %940, label %943

940:                                              ; preds = %934
  %941 = add nsw i32 %935, -1
  %942 = icmp eq i32 %941, 0
  br i1 %942, label %943, label %934

943:                                              ; preds = %940, %934
  %944 = phi i32 [ 0, %940 ], [ %935, %934 ]
  %945 = add i32 %944, %932
  %946 = icmp ugt i32 %945, 61
  br i1 %946, label %949, label %947

947:                                              ; preds = %943
  %948 = mul i64 %920, %919
  br label %966

949:                                              ; preds = %943
  %950 = add i32 %945, -61
  %951 = lshr i32 %950, 1
  %952 = and i32 %950, 1
  %953 = add nuw nsw i32 %951, %952
  %954 = zext i32 %953 to i64
  %955 = ashr i64 %919, %954
  %956 = zext i32 %951 to i64
  %957 = ashr i64 %920, %956
  %958 = mul i64 %955, %957
  %959 = icmp ugt i32 %950, 32
  br i1 %959, label %960, label %964

960:                                              ; preds = %949
  %961 = add i32 %945, -93
  %962 = zext i32 %961 to i64
  %963 = shl i64 %958, %962
  br label %972

964:                                              ; preds = %949
  %965 = icmp eq i32 %950, 32
  br i1 %965, label %972, label %966

966:                                              ; preds = %964, %947
  %967 = phi i32 [ 0, %947 ], [ %950, %964 ]
  %968 = phi i64 [ %948, %947 ], [ %958, %964 ]
  %969 = sub nuw nsw i32 32, %967
  %970 = zext i32 %969 to i64
  %971 = ashr i64 %968, %970
  br label %972

972:                                              ; preds = %966, %964, %960
  %973 = phi i64 [ %963, %960 ], [ %971, %966 ], [ %958, %964 ]
  store i64 %973, ptr %76, align 8
  %974 = load i64, ptr %222, align 8
  %975 = lshr i64 %973, 63
  br label %976

976:                                              ; preds = %982, %972
  %977 = phi i32 [ 62, %972 ], [ %983, %982 ]
  %978 = zext i32 %977 to i64
  %979 = lshr i64 %973, %978
  %980 = and i64 %979, 1
  %981 = icmp eq i64 %980, %975
  br i1 %981, label %982, label %985

982:                                              ; preds = %976
  %983 = add nsw i32 %977, -1
  %984 = icmp eq i32 %983, 0
  br i1 %984, label %985, label %976

985:                                              ; preds = %982, %976
  %986 = phi i32 [ 0, %982 ], [ %977, %976 ]
  %987 = sub i32 62, %986
  %988 = zext i32 %987 to i64
  %989 = shl i64 %973, %988
  %990 = icmp ult i32 %987, 32
  %991 = add i32 %986, -30
  %992 = select i1 %990, i32 %991, i32 0
  %993 = zext i32 %992 to i64
  %994 = ashr i64 %974, %993
  %995 = call i64 @div64_s64(i64 noundef %989, i64 noundef %994) #8
  %996 = icmp ugt i32 %987, 32
  %997 = sub i32 30, %986
  %998 = select i1 %996, i32 %997, i32 0
  %999 = zext i32 %998 to i64
  %1000 = ashr i64 %995, %999
  %1001 = icmp sgt i64 %1000, 0
  %1002 = select i1 %1001, i64 4294967295, i64 -4294967295
  %1003 = add i64 %1002, %1000
  %1004 = lshr i64 %1003, 32
  %1005 = trunc i64 %1004 to i32
  %1006 = getelementptr inbounds %struct.tu_algo_data, ptr %163, i32 0, i32 13
  store i32 %1005, ptr %1006, align 4
  %1007 = load i32, ptr %233, align 4
  %1008 = call i32 @llvm.abs.i32(i32 %1007, i1 false)
  %1009 = zext i32 %1008 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %58) #8
  store i64 0, ptr %58, align 8, !annotation !8
  %1010 = call i64 @div64_u64_rem(i64 noundef %1009, i64 noundef 8, ptr noundef nonnull %58) #8
  %1011 = load i64, ptr %58, align 8
  br label %1012

1012:                                             ; preds = %1012, %985
  %1013 = phi i64 [ %1011, %985 ], [ %1020, %1012 ]
  %1014 = phi i64 [ %1010, %985 ], [ %1023, %1012 ]
  %1015 = phi i32 [ 32, %985 ], [ %1024, %1012 ]
  %1016 = shl i64 %1013, 1
  %1017 = shl i64 %1014, 1
  %1018 = icmp ult i64 %1016, 8
  %1019 = select i1 %1018, i64 0, i64 -8
  %1020 = add i64 %1019, %1016
  %1021 = xor i1 %1018, true
  %1022 = zext i1 %1021 to i64
  %1023 = or i64 %1017, %1022
  %1024 = add nsw i32 %1015, -1
  %1025 = icmp eq i32 %1024, 0
  br i1 %1025, label %1026, label %1012

1026:                                             ; preds = %1012
  %1027 = and i64 %1020, 9223372036854775804
  %1028 = icmp ne i64 %1027, 0
  %1029 = zext i1 %1028 to i64
  %1030 = add i64 %1023, %1029
  %1031 = sub i64 0, %1030
  %1032 = icmp slt i32 %1007, 0
  %1033 = select i1 %1032, i64 %1031, i64 %1030
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %58) #8
  %1034 = load i64, ptr %222, align 8
  %1035 = lshr i64 %1034, 63
  br label %1036

1036:                                             ; preds = %1042, %1026
  %1037 = phi i32 [ 62, %1026 ], [ %1043, %1042 ]
  %1038 = zext i32 %1037 to i64
  %1039 = lshr i64 %1034, %1038
  %1040 = and i64 %1039, 1
  %1041 = icmp eq i64 %1040, %1035
  br i1 %1041, label %1042, label %1045

1042:                                             ; preds = %1036
  %1043 = add nsw i32 %1037, -1
  %1044 = icmp eq i32 %1043, 0
  br i1 %1044, label %1045, label %1036

1045:                                             ; preds = %1042, %1036
  %1046 = phi i32 [ 0, %1042 ], [ %1037, %1036 ]
  %1047 = lshr i64 %1033, 63
  br label %1048

1048:                                             ; preds = %1054, %1045
  %1049 = phi i32 [ 62, %1045 ], [ %1055, %1054 ]
  %1050 = zext i32 %1049 to i64
  %1051 = lshr i64 %1033, %1050
  %1052 = and i64 %1051, 1
  %1053 = icmp eq i64 %1052, %1047
  br i1 %1053, label %1054, label %1057

1054:                                             ; preds = %1048
  %1055 = add nsw i32 %1049, -1
  %1056 = icmp eq i32 %1055, 0
  br i1 %1056, label %1057, label %1048

1057:                                             ; preds = %1054, %1048
  %1058 = phi i32 [ 0, %1054 ], [ %1049, %1048 ]
  %1059 = add i32 %1058, %1046
  %1060 = icmp ugt i32 %1059, 61
  br i1 %1060, label %1063, label %1061

1061:                                             ; preds = %1057
  %1062 = mul i64 %1034, %1033
  br label %1080

1063:                                             ; preds = %1057
  %1064 = add i32 %1059, -61
  %1065 = lshr i32 %1064, 1
  %1066 = and i32 %1064, 1
  %1067 = add nuw nsw i32 %1065, %1066
  %1068 = zext i32 %1067 to i64
  %1069 = ashr i64 %1034, %1068
  %1070 = zext i32 %1065 to i64
  %1071 = ashr i64 %1033, %1070
  %1072 = mul i64 %1069, %1071
  %1073 = icmp ugt i32 %1064, 32
  br i1 %1073, label %1074, label %1078

1074:                                             ; preds = %1063
  %1075 = add i32 %1059, -93
  %1076 = zext i32 %1075 to i64
  %1077 = shl i64 %1072, %1076
  br label %1086

1078:                                             ; preds = %1063
  %1079 = icmp eq i32 %1064, 32
  br i1 %1079, label %1086, label %1080

1080:                                             ; preds = %1078, %1061
  %1081 = phi i32 [ 0, %1061 ], [ %1064, %1078 ]
  %1082 = phi i64 [ %1062, %1061 ], [ %1072, %1078 ]
  %1083 = sub nuw nsw i32 32, %1081
  %1084 = zext i32 %1083 to i64
  %1085 = ashr i64 %1082, %1084
  br label %1086

1086:                                             ; preds = %1080, %1078, %1074
  %1087 = phi i64 [ %1077, %1074 ], [ %1085, %1080 ], [ %1072, %1078 ]
  store i64 %1087, ptr %76, align 8
  %1088 = load i32, ptr %230, align 8
  %1089 = call i32 @llvm.abs.i32(i32 %1088, i1 false)
  %1090 = zext i32 %1089 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %57) #8
  store i64 0, ptr %57, align 8, !annotation !8
  %1091 = call i64 @div64_u64_rem(i64 noundef %1090, i64 noundef 1, ptr noundef nonnull %57) #8
  %1092 = load i64, ptr %57, align 8
  br label %1093

1093:                                             ; preds = %1093, %1086
  %1094 = phi i64 [ %1092, %1086 ], [ %1101, %1093 ]
  %1095 = phi i64 [ %1091, %1086 ], [ %1103, %1093 ]
  %1096 = phi i32 [ 32, %1086 ], [ %1104, %1093 ]
  %1097 = shl i64 %1094, 1
  %1098 = shl i64 %1095, 1
  %1099 = icmp ne i64 %1097, 0
  %1100 = sext i1 %1099 to i64
  %1101 = add i64 %1097, %1100
  %1102 = zext i1 %1099 to i64
  %1103 = or i64 %1098, %1102
  %1104 = add nsw i32 %1096, -1
  %1105 = icmp eq i32 %1104, 0
  br i1 %1105, label %1106, label %1093

1106:                                             ; preds = %1093
  %1107 = and i64 %1101, 9223372036854775807
  %1108 = icmp ne i64 %1107, 0
  %1109 = zext i1 %1108 to i64
  %1110 = add i64 %1103, %1109
  %1111 = sub i64 0, %1110
  %1112 = icmp slt i32 %1088, 0
  %1113 = select i1 %1112, i64 %1111, i64 %1110
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %57) #8
  %1114 = load i64, ptr %76, align 8
  %1115 = lshr i64 %1114, 63
  br label %1116

1116:                                             ; preds = %1122, %1106
  %1117 = phi i32 [ 62, %1106 ], [ %1123, %1122 ]
  %1118 = zext i32 %1117 to i64
  %1119 = lshr i64 %1114, %1118
  %1120 = and i64 %1119, 1
  %1121 = icmp eq i64 %1120, %1115
  br i1 %1121, label %1122, label %1125

1122:                                             ; preds = %1116
  %1123 = add nsw i32 %1117, -1
  %1124 = icmp eq i32 %1123, 0
  br i1 %1124, label %1125, label %1116

1125:                                             ; preds = %1122, %1116
  %1126 = phi i32 [ 0, %1122 ], [ %1117, %1116 ]
  %1127 = sub i32 62, %1126
  %1128 = zext i32 %1127 to i64
  %1129 = shl i64 %1114, %1128
  %1130 = icmp ult i32 %1127, 32
  %1131 = add i32 %1126, -30
  %1132 = select i1 %1130, i32 %1131, i32 0
  %1133 = zext i32 %1132 to i64
  %1134 = ashr i64 %1113, %1133
  %1135 = call i64 @div64_s64(i64 noundef %1129, i64 noundef %1134) #8
  %1136 = icmp ugt i32 %1127, 32
  %1137 = sub i32 30, %1126
  %1138 = select i1 %1136, i32 %1137, i32 0
  %1139 = zext i32 %1138 to i64
  %1140 = ashr i64 %1135, %1139
  store i64 %1140, ptr %76, align 8
  %1141 = load i64, ptr %163, align 8
  %1142 = lshr i64 %1140, 63
  br label %1143

1143:                                             ; preds = %1149, %1125
  %1144 = phi i32 [ 62, %1125 ], [ %1150, %1149 ]
  %1145 = zext i32 %1144 to i64
  %1146 = lshr i64 %1140, %1145
  %1147 = and i64 %1146, 1
  %1148 = icmp eq i64 %1147, %1142
  br i1 %1148, label %1149, label %1152

1149:                                             ; preds = %1143
  %1150 = add nsw i32 %1144, -1
  %1151 = icmp eq i32 %1150, 0
  br i1 %1151, label %1152, label %1143

1152:                                             ; preds = %1149, %1143
  %1153 = phi i32 [ 0, %1149 ], [ %1144, %1143 ]
  %1154 = sub i32 62, %1153
  %1155 = zext i32 %1154 to i64
  %1156 = shl i64 %1140, %1155
  %1157 = icmp ult i32 %1154, 32
  %1158 = add i32 %1153, -30
  %1159 = select i1 %1157, i32 %1158, i32 0
  %1160 = zext i32 %1159 to i64
  %1161 = ashr i64 %1141, %1160
  %1162 = call i64 @div64_s64(i64 noundef %1156, i64 noundef %1161) #8
  %1163 = icmp ugt i32 %1154, 32
  %1164 = sub i32 30, %1153
  %1165 = select i1 %1163, i32 %1164, i32 0
  %1166 = zext i32 %1165 to i64
  %1167 = ashr i64 %1162, %1166
  %1168 = getelementptr inbounds %struct.tu_algo_data, ptr %163, i32 0, i32 14
  store i64 %1167, ptr %1168, align 8
  %1169 = getelementptr inbounds %struct.tu_algo_data, ptr %163, i32 0, i32 15
  store i64 %1167, ptr %1169, align 8
  %1170 = getelementptr inbounds %struct.tu_algo_data, ptr %163, i32 0, i32 53
  store i8 0, ptr %1170, align 4
  %1171 = getelementptr inbounds %struct.tu_algo_data, ptr %163, i32 0, i32 55
  %1172 = getelementptr inbounds %struct.tu_algo_data, ptr %163, i32 0, i32 56
  %1173 = getelementptr inbounds %struct.tu_algo_data, ptr %163, i32 0, i32 57
  %1174 = getelementptr inbounds %struct.tu_algo_data, ptr %163, i32 0, i32 58
  %1175 = getelementptr inbounds %struct.tu_algo_data, ptr %163, i32 0, i32 59
  %1176 = getelementptr inbounds %struct.tu_algo_data, ptr %163, i32 0, i32 60
  %1177 = getelementptr inbounds %struct.tu_algo_data, ptr %163, i32 0, i32 61
  %1178 = getelementptr inbounds %struct.tu_algo_data, ptr %163, i32 0, i32 62
  %1179 = getelementptr inbounds %struct.tu_algo_data, ptr %163, i32 0, i32 64
  store i64 0, ptr %1179, align 8
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(32) %1171, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %56) #8
  store i64 0, ptr %56, align 8, !annotation !8
  %1180 = call i64 @div64_u64_rem(i64 noundef 1000, i64 noundef 1, ptr noundef nonnull %56) #8
  %1181 = load i64, ptr %56, align 8
  br label %1182

1182:                                             ; preds = %1182, %1152
  %1183 = phi i64 [ %1181, %1152 ], [ %1190, %1182 ]
  %1184 = phi i64 [ %1180, %1152 ], [ %1192, %1182 ]
  %1185 = phi i32 [ 32, %1152 ], [ %1193, %1182 ]
  %1186 = shl i64 %1183, 1
  %1187 = shl i64 %1184, 1
  %1188 = icmp ne i64 %1186, 0
  %1189 = sext i1 %1188 to i64
  %1190 = add i64 %1186, %1189
  %1191 = zext i1 %1188 to i64
  %1192 = or i64 %1187, %1191
  %1193 = add nsw i32 %1185, -1
  %1194 = icmp eq i32 %1193, 0
  br i1 %1194, label %1195, label %1182

1195:                                             ; preds = %1182
  %1196 = and i64 %1190, 9223372036854775807
  %1197 = icmp ne i64 %1196, 0
  %1198 = zext i1 %1197 to i64
  %1199 = add i64 %1192, %1198
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %56) #8
  store i64 %1199, ptr %899, align 8
  %1200 = getelementptr inbounds %struct.tu_algo_data, ptr %163, i32 0, i32 17
  %1201 = getelementptr inbounds %struct.tu_algo_data, ptr %163, i32 0, i32 18
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %1200, i8 0, i64 16, i1 false)
  %1202 = load i64, ptr %1168, align 8
  %1203 = ashr i64 %1202, 32
  %1204 = getelementptr inbounds %struct.tu_algo_data, ptr %163, i32 0, i32 68
  store i64 %1203, ptr %1204, align 8
  %1205 = load i32, ptr %230, align 8
  %1206 = call i32 @llvm.abs.i32(i32 %1205, i1 false)
  %1207 = zext i32 %1206 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %55) #8
  store i64 0, ptr %55, align 8, !annotation !8
  %1208 = call i64 @div64_u64_rem(i64 noundef %1207, i64 noundef 1, ptr noundef nonnull %55) #8
  %1209 = load i64, ptr %55, align 8
  br label %1210

1210:                                             ; preds = %1210, %1195
  %1211 = phi i64 [ %1209, %1195 ], [ %1218, %1210 ]
  %1212 = phi i64 [ %1208, %1195 ], [ %1220, %1210 ]
  %1213 = phi i32 [ 32, %1195 ], [ %1221, %1210 ]
  %1214 = shl i64 %1211, 1
  %1215 = shl i64 %1212, 1
  %1216 = icmp ne i64 %1214, 0
  %1217 = sext i1 %1216 to i64
  %1218 = add i64 %1214, %1217
  %1219 = zext i1 %1216 to i64
  %1220 = or i64 %1215, %1219
  %1221 = add nsw i32 %1213, -1
  %1222 = icmp eq i32 %1221, 0
  br i1 %1222, label %1223, label %1210

1223:                                             ; preds = %1210
  %1224 = and i64 %1218, 9223372036854775807
  %1225 = icmp ne i64 %1224, 0
  %1226 = zext i1 %1225 to i64
  %1227 = add i64 %1220, %1226
  %1228 = sub i64 0, %1227
  %1229 = icmp slt i32 %1205, 0
  %1230 = select i1 %1229, i64 %1228, i64 %1227
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %55) #8
  %1231 = load i64, ptr %267, align 8
  %1232 = call i64 @div64_u64_rem(i64 noundef %1231, i64 noundef %1230, ptr noundef nonnull %76) #8
  %1233 = load i64, ptr %76, align 8
  %1234 = icmp eq i64 %1233, 0
  br i1 %1234, label %1321, label %1235

1235:                                             ; preds = %1223
  %1236 = load i64, ptr %1204, align 8
  %1237 = icmp eq i64 %1236, 0
  br i1 %1237, label %1238, label %1323

1238:                                             ; preds = %1235
  %1239 = load i32, ptr %239, align 4
  %1240 = icmp eq i32 %1239, 0
  br i1 %1240, label %1241, label %1329

1241:                                             ; preds = %1238
  %1242 = load i64, ptr %1168, align 8
  %1243 = lshr i64 %1242, 63
  br label %1244

1244:                                             ; preds = %1250, %1241
  %1245 = phi i32 [ 62, %1241 ], [ %1251, %1250 ]
  %1246 = zext i32 %1245 to i64
  %1247 = lshr i64 %1242, %1246
  %1248 = and i64 %1247, 1
  %1249 = icmp eq i64 %1248, %1243
  br i1 %1249, label %1250, label %1253

1250:                                             ; preds = %1244
  %1251 = add nsw i32 %1245, -1
  %1252 = icmp eq i32 %1251, 0
  br i1 %1252, label %1253, label %1244

1253:                                             ; preds = %1250, %1244
  %1254 = phi i32 [ 0, %1250 ], [ %1245, %1244 ]
  %1255 = lshr i64 %161, 63
  br label %1256

1256:                                             ; preds = %1262, %1253
  %1257 = phi i32 [ 62, %1253 ], [ %1263, %1262 ]
  %1258 = zext i32 %1257 to i64
  %1259 = lshr i64 %161, %1258
  %1260 = and i64 %1259, 1
  %1261 = icmp eq i64 %1260, %1255
  br i1 %1261, label %1262, label %1265

1262:                                             ; preds = %1256
  %1263 = add nsw i32 %1257, -1
  %1264 = icmp eq i32 %1263, 0
  br i1 %1264, label %1265, label %1256

1265:                                             ; preds = %1262, %1256
  %1266 = phi i32 [ 0, %1262 ], [ %1257, %1256 ]
  %1267 = add i32 %1266, %1254
  %1268 = icmp ugt i32 %1267, 61
  br i1 %1268, label %1271, label %1269

1269:                                             ; preds = %1265
  %1270 = mul i64 %1242, %161
  br label %1288

1271:                                             ; preds = %1265
  %1272 = add i32 %1267, -61
  %1273 = lshr i32 %1272, 1
  %1274 = and i32 %1272, 1
  %1275 = add nuw nsw i32 %1273, %1274
  %1276 = zext i32 %1275 to i64
  %1277 = ashr i64 %1242, %1276
  %1278 = zext i32 %1273 to i64
  %1279 = ashr i64 %161, %1278
  %1280 = mul i64 %1277, %1279
  %1281 = icmp ugt i32 %1272, 32
  br i1 %1281, label %1282, label %1286

1282:                                             ; preds = %1271
  %1283 = add i32 %1267, -93
  %1284 = zext i32 %1283 to i64
  %1285 = shl i64 %1280, %1284
  br label %1294

1286:                                             ; preds = %1271
  %1287 = icmp eq i32 %1272, 32
  br i1 %1287, label %1294, label %1288

1288:                                             ; preds = %1286, %1269
  %1289 = phi i32 [ 0, %1269 ], [ %1272, %1286 ]
  %1290 = phi i64 [ %1270, %1269 ], [ %1280, %1286 ]
  %1291 = sub nuw nsw i32 32, %1289
  %1292 = zext i32 %1291 to i64
  %1293 = ashr i64 %1290, %1292
  br label %1294

1294:                                             ; preds = %1288, %1286, %1282
  %1295 = phi i64 [ %1285, %1282 ], [ %1293, %1288 ], [ %1280, %1286 ]
  store i64 %1295, ptr %1168, align 8
  %1296 = lshr i64 %1295, 32
  %1297 = trunc i64 %1296 to i32
  %1298 = sext i32 %1297 to i64
  store i64 %1298, ptr %1204, align 8
  %1299 = icmp eq i32 %1297, 0
  br i1 %1299, label %1329, label %1300

1300:                                             ; preds = %1294
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %54) #8
  store i64 0, ptr %54, align 8, !annotation !8
  %1301 = call i64 @div64_u64_rem(i64 noundef 1, i64 noundef 1, ptr noundef nonnull %54) #8
  %1302 = load i64, ptr %54, align 8
  br label %1303

1303:                                             ; preds = %1303, %1300
  %1304 = phi i64 [ %1302, %1300 ], [ %1311, %1303 ]
  %1305 = phi i64 [ %1301, %1300 ], [ %1313, %1303 ]
  %1306 = phi i32 [ 32, %1300 ], [ %1314, %1303 ]
  %1307 = shl i64 %1304, 1
  %1308 = shl i64 %1305, 1
  %1309 = icmp ne i64 %1307, 0
  %1310 = sext i1 %1309 to i64
  %1311 = add i64 %1307, %1310
  %1312 = zext i1 %1309 to i64
  %1313 = or i64 %1308, %1312
  %1314 = add nsw i32 %1306, -1
  %1315 = icmp eq i32 %1314, 0
  br i1 %1315, label %1316, label %1303

1316:                                             ; preds = %1303
  %1317 = and i64 %1311, 9223372036854775807
  %1318 = icmp ne i64 %1317, 0
  %1319 = zext i1 %1318 to i64
  %1320 = add i64 %1313, %1319
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %54) #8
  store i64 %1320, ptr %1168, align 8
  br label %1321

1321:                                             ; preds = %1316, %1223
  %1322 = load i64, ptr %1204, align 8
  br label %1323

1323:                                             ; preds = %1321, %1235
  %1324 = phi i64 [ %1322, %1321 ], [ %1236, %1235 ]
  %1325 = icmp sgt i64 %1324, 1
  br i1 %1325, label %1326, label %1327

1326:                                             ; preds = %1323
  store i64 1, ptr %1204, align 8
  br label %1342

1327:                                             ; preds = %1323
  %1328 = icmp eq i64 %1324, 1
  br i1 %1328, label %1342, label %1329

1329:                                             ; preds = %1327, %1294, %1238
  %1330 = load i64, ptr %1168, align 8
  %1331 = call fastcc i32 @_tu_param_compare(i64 noundef %1330, i64 noundef %155)
  %1332 = icmp ult i32 %1331, 2
  %1333 = load i64, ptr %1168, align 8
  %1334 = call fastcc i32 @_tu_param_compare(i64 noundef %1333, i64 noundef %160)
  %1335 = and i32 %1334, -3
  %1336 = icmp eq i32 %1335, 0
  %1337 = load i32, ptr %239, align 4
  %1338 = icmp ne i32 %1337, 0
  %1339 = select i1 %1338, i1 %1332, i1 false
  %1340 = select i1 %1339, i1 %1336, i1 false
  br i1 %1340, label %1341, label %1342

1341:                                             ; preds = %1329
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.60, i32 noundef 8) #8
  br label %1342

1342:                                             ; preds = %1341, %1329, %1327, %1326
  %1343 = phi i32 [ 4, %1327 ], [ 8, %1341 ], [ 4, %1329 ], [ 4, %1326 ]
  %1344 = getelementptr inbounds %struct.tu_algo_data, ptr %163, i32 0, i32 19
  store i32 32, ptr %1344, align 8
  %1345 = getelementptr inbounds %struct.tu_algo_data, ptr %163, i32 0, i32 20
  br label %1346

1346:                                             ; preds = %1463, %1342
  %1347 = phi i32 [ 32, %1342 ], [ %1465, %1463 ]
  %1348 = call i32 @llvm.abs.i32(i32 %1347, i1 false)
  %1349 = zext i32 %1348 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %53) #8
  store i64 0, ptr %53, align 8, !annotation !8
  %1350 = call i64 @div64_u64_rem(i64 noundef %1349, i64 noundef 1, ptr noundef nonnull %53) #8
  %1351 = load i64, ptr %53, align 8
  br label %1352

1352:                                             ; preds = %1352, %1346
  %1353 = phi i64 [ %1351, %1346 ], [ %1360, %1352 ]
  %1354 = phi i64 [ %1350, %1346 ], [ %1362, %1352 ]
  %1355 = phi i32 [ 32, %1346 ], [ %1363, %1352 ]
  %1356 = shl i64 %1353, 1
  %1357 = shl i64 %1354, 1
  %1358 = icmp ne i64 %1356, 0
  %1359 = sext i1 %1358 to i64
  %1360 = add i64 %1356, %1359
  %1361 = zext i1 %1358 to i64
  %1362 = or i64 %1357, %1361
  %1363 = add nsw i32 %1355, -1
  %1364 = icmp eq i32 %1363, 0
  br i1 %1364, label %1365, label %1352

1365:                                             ; preds = %1352
  %1366 = and i64 %1360, 9223372036854775807
  %1367 = icmp ne i64 %1366, 0
  %1368 = zext i1 %1367 to i64
  %1369 = add i64 %1362, %1368
  %1370 = sub i64 0, %1369
  %1371 = icmp slt i32 %1347, 0
  %1372 = select i1 %1371, i64 %1370, i64 %1369
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %53) #8
  %1373 = load i64, ptr %1168, align 8
  %1374 = lshr i64 %1373, 63
  br label %1375

1375:                                             ; preds = %1381, %1365
  %1376 = phi i32 [ 62, %1365 ], [ %1382, %1381 ]
  %1377 = zext i32 %1376 to i64
  %1378 = lshr i64 %1373, %1377
  %1379 = and i64 %1378, 1
  %1380 = icmp eq i64 %1379, %1374
  br i1 %1380, label %1381, label %1384

1381:                                             ; preds = %1375
  %1382 = add nsw i32 %1376, -1
  %1383 = icmp eq i32 %1382, 0
  br i1 %1383, label %1384, label %1375

1384:                                             ; preds = %1381, %1375
  %1385 = phi i32 [ 0, %1381 ], [ %1376, %1375 ]
  %1386 = lshr i64 %1372, 63
  br label %1387

1387:                                             ; preds = %1393, %1384
  %1388 = phi i32 [ 62, %1384 ], [ %1394, %1393 ]
  %1389 = zext i32 %1388 to i64
  %1390 = lshr i64 %1372, %1389
  %1391 = and i64 %1390, 1
  %1392 = icmp eq i64 %1391, %1386
  br i1 %1392, label %1393, label %1396

1393:                                             ; preds = %1387
  %1394 = add nsw i32 %1388, -1
  %1395 = icmp eq i32 %1394, 0
  br i1 %1395, label %1396, label %1387

1396:                                             ; preds = %1393, %1387
  %1397 = phi i32 [ 0, %1393 ], [ %1388, %1387 ]
  %1398 = add i32 %1397, %1385
  %1399 = icmp ugt i32 %1398, 61
  br i1 %1399, label %1402, label %1400

1400:                                             ; preds = %1396
  %1401 = mul i64 %1373, %1372
  br label %1419

1402:                                             ; preds = %1396
  %1403 = add i32 %1398, -61
  %1404 = lshr i32 %1403, 1
  %1405 = and i32 %1403, 1
  %1406 = add nuw nsw i32 %1404, %1405
  %1407 = zext i32 %1406 to i64
  %1408 = ashr i64 %1373, %1407
  %1409 = zext i32 %1404 to i64
  %1410 = ashr i64 %1372, %1409
  %1411 = mul i64 %1408, %1410
  %1412 = icmp ugt i32 %1403, 32
  br i1 %1412, label %1413, label %1417

1413:                                             ; preds = %1402
  %1414 = add i32 %1398, -93
  %1415 = zext i32 %1414 to i64
  %1416 = shl i64 %1411, %1415
  br label %1425

1417:                                             ; preds = %1402
  %1418 = icmp eq i32 %1403, 32
  br i1 %1418, label %1425, label %1419

1419:                                             ; preds = %1417, %1400
  %1420 = phi i32 [ 0, %1400 ], [ %1403, %1417 ]
  %1421 = phi i64 [ %1401, %1400 ], [ %1411, %1417 ]
  %1422 = sub nuw nsw i32 32, %1420
  %1423 = zext i32 %1422 to i64
  %1424 = ashr i64 %1421, %1423
  br label %1425

1425:                                             ; preds = %1419, %1417, %1413
  %1426 = phi i64 [ %1416, %1413 ], [ %1424, %1419 ], [ %1411, %1417 ]
  store i64 %1426, ptr %76, align 8
  %1427 = icmp sgt i64 %1426, 0
  %1428 = select i1 %1427, i64 4294967295, i64 -4294967295
  %1429 = add i64 %1428, %1426
  %1430 = ashr i64 %1429, 32
  %1431 = call i64 @llvm.abs.i64(i64 %1430, i1 true) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %52) #8
  store i64 0, ptr %52, align 8, !annotation !8
  %1432 = call i64 @div64_u64_rem(i64 noundef %1431, i64 noundef 1, ptr noundef nonnull %52) #8
  %1433 = load i64, ptr %52, align 8
  br label %1434

1434:                                             ; preds = %1434, %1425
  %1435 = phi i64 [ %1433, %1425 ], [ %1442, %1434 ]
  %1436 = phi i64 [ %1432, %1425 ], [ %1444, %1434 ]
  %1437 = phi i32 [ 32, %1425 ], [ %1445, %1434 ]
  %1438 = shl i64 %1435, 1
  %1439 = shl i64 %1436, 1
  %1440 = icmp ne i64 %1438, 0
  %1441 = sext i1 %1440 to i64
  %1442 = add i64 %1438, %1441
  %1443 = zext i1 %1440 to i64
  %1444 = or i64 %1439, %1443
  %1445 = add nsw i32 %1437, -1
  %1446 = icmp eq i32 %1445, 0
  br i1 %1446, label %1447, label %1434

1447:                                             ; preds = %1434
  %1448 = and i64 %1442, 9223372036854775807
  %1449 = icmp ne i64 %1448, 0
  %1450 = zext i1 %1449 to i64
  %1451 = add i64 %1444, %1450
  %1452 = sub i64 0, %1451
  %1453 = icmp slt i64 %1429, 0
  %1454 = select i1 %1453, i64 %1452, i64 %1451
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %52) #8
  %1455 = load i64, ptr %76, align 8
  %1456 = sub i64 %1454, %1455
  store i64 %1456, ptr %1200, align 8
  %1457 = load i64, ptr %899, align 8
  %1458 = icmp slt i64 %1456, %1457
  br i1 %1458, label %1461, label %1459

1459:                                             ; preds = %1447
  %1460 = load i32, ptr %1344, align 8
  br label %1463

1461:                                             ; preds = %1447
  store i64 %1456, ptr %899, align 8
  %1462 = load i32, ptr %1344, align 8
  store i32 %1462, ptr %1345, align 4
  br label %1463

1463:                                             ; preds = %1461, %1459
  %1464 = phi i32 [ %1460, %1459 ], [ %1462, %1461 ]
  %1465 = add i32 %1464, 1
  store i32 %1465, ptr %1344, align 8
  %1466 = icmp slt i32 %1465, 65
  br i1 %1466, label %1346, label %1467

1467:                                             ; preds = %1463
  %1468 = load i32, ptr %1345, align 4
  %1469 = add i32 %1468, -1
  %1470 = getelementptr inbounds %struct.tu_algo_data, ptr %163, i32 0, i32 21
  store i32 %1469, ptr %1470, align 8
  %1471 = call i32 @llvm.abs.i32(i32 %1468, i1 false)
  %1472 = zext i32 %1471 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %51) #8
  store i64 0, ptr %51, align 8, !annotation !8
  %1473 = call i64 @div64_u64_rem(i64 noundef %1472, i64 noundef 1, ptr noundef nonnull %51) #8
  %1474 = load i64, ptr %51, align 8
  br label %1475

1475:                                             ; preds = %1475, %1467
  %1476 = phi i64 [ %1474, %1467 ], [ %1483, %1475 ]
  %1477 = phi i64 [ %1473, %1467 ], [ %1485, %1475 ]
  %1478 = phi i32 [ 32, %1467 ], [ %1486, %1475 ]
  %1479 = shl i64 %1476, 1
  %1480 = shl i64 %1477, 1
  %1481 = icmp ne i64 %1479, 0
  %1482 = sext i1 %1481 to i64
  %1483 = add i64 %1479, %1482
  %1484 = zext i1 %1481 to i64
  %1485 = or i64 %1480, %1484
  %1486 = add nsw i32 %1478, -1
  %1487 = icmp eq i32 %1486, 0
  br i1 %1487, label %1488, label %1475

1488:                                             ; preds = %1475
  %1489 = and i64 %1483, 9223372036854775807
  %1490 = icmp ne i64 %1489, 0
  %1491 = zext i1 %1490 to i64
  %1492 = add i64 %1485, %1491
  %1493 = sub i64 0, %1492
  %1494 = icmp slt i32 %1468, 0
  %1495 = select i1 %1494, i64 %1493, i64 %1492
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %51) #8
  %1496 = load i64, ptr %1168, align 8
  %1497 = lshr i64 %1496, 63
  br label %1498

1498:                                             ; preds = %1504, %1488
  %1499 = phi i32 [ 62, %1488 ], [ %1505, %1504 ]
  %1500 = zext i32 %1499 to i64
  %1501 = lshr i64 %1496, %1500
  %1502 = and i64 %1501, 1
  %1503 = icmp eq i64 %1502, %1497
  br i1 %1503, label %1504, label %1507

1504:                                             ; preds = %1498
  %1505 = add nsw i32 %1499, -1
  %1506 = icmp eq i32 %1505, 0
  br i1 %1506, label %1507, label %1498

1507:                                             ; preds = %1504, %1498
  %1508 = phi i32 [ 0, %1504 ], [ %1499, %1498 ]
  %1509 = lshr i64 %1495, 63
  br label %1510

1510:                                             ; preds = %1516, %1507
  %1511 = phi i32 [ 62, %1507 ], [ %1517, %1516 ]
  %1512 = zext i32 %1511 to i64
  %1513 = lshr i64 %1495, %1512
  %1514 = and i64 %1513, 1
  %1515 = icmp eq i64 %1514, %1509
  br i1 %1515, label %1516, label %1519

1516:                                             ; preds = %1510
  %1517 = add nsw i32 %1511, -1
  %1518 = icmp eq i32 %1517, 0
  br i1 %1518, label %1519, label %1510

1519:                                             ; preds = %1516, %1510
  %1520 = phi i32 [ 0, %1516 ], [ %1511, %1510 ]
  %1521 = add i32 %1520, %1508
  %1522 = icmp ugt i32 %1521, 61
  br i1 %1522, label %1525, label %1523

1523:                                             ; preds = %1519
  %1524 = mul i64 %1496, %1495
  br label %1542

1525:                                             ; preds = %1519
  %1526 = add i32 %1521, -61
  %1527 = lshr i32 %1526, 1
  %1528 = and i32 %1526, 1
  %1529 = add nuw nsw i32 %1527, %1528
  %1530 = zext i32 %1529 to i64
  %1531 = ashr i64 %1496, %1530
  %1532 = zext i32 %1527 to i64
  %1533 = ashr i64 %1495, %1532
  %1534 = mul i64 %1531, %1533
  %1535 = icmp ugt i32 %1526, 32
  br i1 %1535, label %1536, label %1540

1536:                                             ; preds = %1525
  %1537 = add i32 %1521, -93
  %1538 = zext i32 %1537 to i64
  %1539 = shl i64 %1534, %1538
  br label %1548

1540:                                             ; preds = %1525
  %1541 = icmp eq i32 %1526, 32
  br i1 %1541, label %1548, label %1542

1542:                                             ; preds = %1540, %1523
  %1543 = phi i32 [ 0, %1523 ], [ %1526, %1540 ]
  %1544 = phi i64 [ %1524, %1523 ], [ %1534, %1540 ]
  %1545 = sub nuw nsw i32 32, %1543
  %1546 = zext i32 %1545 to i64
  %1547 = ashr i64 %1544, %1546
  br label %1548

1548:                                             ; preds = %1542, %1540, %1536
  %1549 = phi i64 [ %1539, %1536 ], [ %1547, %1542 ], [ %1534, %1540 ]
  store i64 %1549, ptr %76, align 8
  %1550 = icmp sgt i64 %1549, 0
  %1551 = select i1 %1550, i64 4294967295, i64 -4294967295
  %1552 = add i64 %1551, %1549
  %1553 = lshr i64 %1552, 32
  %1554 = trunc i64 %1553 to i32
  %1555 = getelementptr inbounds %struct.tu_algo_data, ptr %163, i32 0, i32 22
  store i32 %1554, ptr %1555, align 4
  %1556 = load i32, ptr %233, align 4
  %1557 = call i32 @llvm.abs.i32(i32 %1556, i1 false)
  %1558 = zext i32 %1557 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %50) #8
  store i64 0, ptr %50, align 8, !annotation !8
  %1559 = call i64 @div64_u64_rem(i64 noundef %1558, i64 noundef 8, ptr noundef nonnull %50) #8
  %1560 = load i64, ptr %50, align 8
  br label %1561

1561:                                             ; preds = %1561, %1548
  %1562 = phi i64 [ %1560, %1548 ], [ %1569, %1561 ]
  %1563 = phi i64 [ %1559, %1548 ], [ %1572, %1561 ]
  %1564 = phi i32 [ 32, %1548 ], [ %1573, %1561 ]
  %1565 = shl i64 %1562, 1
  %1566 = shl i64 %1563, 1
  %1567 = icmp ult i64 %1565, 8
  %1568 = select i1 %1567, i64 0, i64 -8
  %1569 = add i64 %1568, %1565
  %1570 = xor i1 %1567, true
  %1571 = zext i1 %1570 to i64
  %1572 = or i64 %1566, %1571
  %1573 = add nsw i32 %1564, -1
  %1574 = icmp eq i32 %1573, 0
  br i1 %1574, label %1575, label %1561

1575:                                             ; preds = %1561
  %1576 = and i64 %1569, 9223372036854775804
  %1577 = icmp ne i64 %1576, 0
  %1578 = zext i1 %1577 to i64
  %1579 = add i64 %1572, %1578
  %1580 = sub i64 0, %1579
  %1581 = icmp slt i32 %1556, 0
  %1582 = select i1 %1581, i64 %1580, i64 %1579
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %50) #8
  %1583 = load i64, ptr %267, align 8
  %1584 = lshr i64 %1583, 63
  br label %1585

1585:                                             ; preds = %1591, %1575
  %1586 = phi i32 [ 62, %1575 ], [ %1592, %1591 ]
  %1587 = zext i32 %1586 to i64
  %1588 = lshr i64 %1583, %1587
  %1589 = and i64 %1588, 1
  %1590 = icmp eq i64 %1589, %1584
  br i1 %1590, label %1591, label %1594

1591:                                             ; preds = %1585
  %1592 = add nsw i32 %1586, -1
  %1593 = icmp eq i32 %1592, 0
  br i1 %1593, label %1594, label %1585

1594:                                             ; preds = %1591, %1585
  %1595 = phi i32 [ 0, %1591 ], [ %1586, %1585 ]
  %1596 = lshr i64 %1582, 63
  br label %1597

1597:                                             ; preds = %1603, %1594
  %1598 = phi i32 [ 62, %1594 ], [ %1604, %1603 ]
  %1599 = zext i32 %1598 to i64
  %1600 = lshr i64 %1582, %1599
  %1601 = and i64 %1600, 1
  %1602 = icmp eq i64 %1601, %1596
  br i1 %1602, label %1603, label %1606

1603:                                             ; preds = %1597
  %1604 = add nsw i32 %1598, -1
  %1605 = icmp eq i32 %1604, 0
  br i1 %1605, label %1606, label %1597

1606:                                             ; preds = %1603, %1597
  %1607 = phi i32 [ 0, %1603 ], [ %1598, %1597 ]
  %1608 = add i32 %1607, %1595
  %1609 = icmp ugt i32 %1608, 61
  br i1 %1609, label %1612, label %1610

1610:                                             ; preds = %1606
  %1611 = mul i64 %1583, %1582
  br label %1629

1612:                                             ; preds = %1606
  %1613 = add i32 %1608, -61
  %1614 = lshr i32 %1613, 1
  %1615 = and i32 %1613, 1
  %1616 = add nuw nsw i32 %1614, %1615
  %1617 = zext i32 %1616 to i64
  %1618 = ashr i64 %1583, %1617
  %1619 = zext i32 %1614 to i64
  %1620 = ashr i64 %1582, %1619
  %1621 = mul i64 %1618, %1620
  %1622 = icmp ugt i32 %1613, 32
  br i1 %1622, label %1623, label %1627

1623:                                             ; preds = %1612
  %1624 = add i32 %1608, -93
  %1625 = zext i32 %1624 to i64
  %1626 = shl i64 %1621, %1625
  br label %1635

1627:                                             ; preds = %1612
  %1628 = icmp eq i32 %1613, 32
  br i1 %1628, label %1635, label %1629

1629:                                             ; preds = %1627, %1610
  %1630 = phi i32 [ 0, %1610 ], [ %1613, %1627 ]
  %1631 = phi i64 [ %1611, %1610 ], [ %1621, %1627 ]
  %1632 = sub nuw nsw i32 32, %1630
  %1633 = zext i32 %1632 to i64
  %1634 = ashr i64 %1631, %1633
  br label %1635

1635:                                             ; preds = %1629, %1627, %1623
  %1636 = phi i64 [ %1626, %1623 ], [ %1634, %1629 ], [ %1621, %1627 ]
  store i64 %1636, ptr %76, align 8
  %1637 = load i32, ptr %1555, align 4
  %1638 = call i32 @llvm.abs.i32(i32 %1637, i1 false)
  %1639 = zext i32 %1638 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %49) #8
  store i64 0, ptr %49, align 8, !annotation !8
  %1640 = call i64 @div64_u64_rem(i64 noundef %1639, i64 noundef 1, ptr noundef nonnull %49) #8
  %1641 = load i64, ptr %49, align 8
  br label %1642

1642:                                             ; preds = %1642, %1635
  %1643 = phi i64 [ %1641, %1635 ], [ %1650, %1642 ]
  %1644 = phi i64 [ %1640, %1635 ], [ %1652, %1642 ]
  %1645 = phi i32 [ 32, %1635 ], [ %1653, %1642 ]
  %1646 = shl i64 %1643, 1
  %1647 = shl i64 %1644, 1
  %1648 = icmp ne i64 %1646, 0
  %1649 = sext i1 %1648 to i64
  %1650 = add i64 %1646, %1649
  %1651 = zext i1 %1648 to i64
  %1652 = or i64 %1647, %1651
  %1653 = add nsw i32 %1645, -1
  %1654 = icmp eq i32 %1653, 0
  br i1 %1654, label %1655, label %1642

1655:                                             ; preds = %1642
  %1656 = and i64 %1650, 9223372036854775807
  %1657 = icmp ne i64 %1656, 0
  %1658 = zext i1 %1657 to i64
  %1659 = add i64 %1652, %1658
  %1660 = sub i64 0, %1659
  %1661 = icmp slt i32 %1637, 0
  %1662 = select i1 %1661, i64 %1660, i64 %1659
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %49) #8
  %1663 = load i64, ptr %76, align 8
  %1664 = lshr i64 %1663, 63
  br label %1665

1665:                                             ; preds = %1671, %1655
  %1666 = phi i32 [ 62, %1655 ], [ %1672, %1671 ]
  %1667 = zext i32 %1666 to i64
  %1668 = lshr i64 %1663, %1667
  %1669 = and i64 %1668, 1
  %1670 = icmp eq i64 %1669, %1664
  br i1 %1670, label %1671, label %1674

1671:                                             ; preds = %1665
  %1672 = add nsw i32 %1666, -1
  %1673 = icmp eq i32 %1672, 0
  br i1 %1673, label %1674, label %1665

1674:                                             ; preds = %1671, %1665
  %1675 = phi i32 [ 0, %1671 ], [ %1666, %1665 ]
  %1676 = sub i32 62, %1675
  %1677 = zext i32 %1676 to i64
  %1678 = shl i64 %1663, %1677
  %1679 = icmp ult i32 %1676, 32
  %1680 = add i32 %1675, -30
  %1681 = select i1 %1679, i32 %1680, i32 0
  %1682 = zext i32 %1681 to i64
  %1683 = ashr i64 %1662, %1682
  %1684 = call i64 @div64_s64(i64 noundef %1678, i64 noundef %1683) #8
  %1685 = icmp ugt i32 %1676, 32
  %1686 = sub i32 30, %1675
  %1687 = select i1 %1685, i32 %1686, i32 0
  %1688 = zext i32 %1687 to i64
  %1689 = ashr i64 %1684, %1688
  store i64 %1689, ptr %76, align 8
  %1690 = lshr i64 %1689, 32
  %1691 = trunc i64 %1690 to i32
  %1692 = getelementptr inbounds %struct.tu_algo_data, ptr %163, i32 0, i32 27
  %1693 = and i64 %1689, 4294967295
  %1694 = icmp ugt i64 %1693, 4294963200
  %1695 = zext i1 %1694 to i32
  %1696 = add i32 %1691, %1695
  store i32 %1696, ptr %1692, align 8
  %1697 = load i32, ptr %230, align 8
  %1698 = srem i32 %1696, %1697
  %1699 = icmp eq i32 %1698, 0
  %1700 = zext i1 %1699 to i32
  store i32 %1700, ptr %1177, align 4
  %1701 = load i32, ptr %1555, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.61, i32 noundef %1701, i32 noundef %1696) #8
  %1702 = load i32, ptr %1345, align 4
  %1703 = call i32 @llvm.abs.i32(i32 %1702, i1 false)
  %1704 = zext i32 %1703 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %48) #8
  store i64 0, ptr %48, align 8, !annotation !8
  %1705 = call i64 @div64_u64_rem(i64 noundef %1704, i64 noundef 1, ptr noundef nonnull %48) #8
  %1706 = load i64, ptr %48, align 8
  br label %1707

1707:                                             ; preds = %1707, %1674
  %1708 = phi i64 [ %1706, %1674 ], [ %1715, %1707 ]
  %1709 = phi i64 [ %1705, %1674 ], [ %1717, %1707 ]
  %1710 = phi i32 [ 32, %1674 ], [ %1718, %1707 ]
  %1711 = shl i64 %1708, 1
  %1712 = shl i64 %1709, 1
  %1713 = icmp ne i64 %1711, 0
  %1714 = sext i1 %1713 to i64
  %1715 = add i64 %1711, %1714
  %1716 = zext i1 %1713 to i64
  %1717 = or i64 %1712, %1716
  %1718 = add nsw i32 %1710, -1
  %1719 = icmp eq i32 %1718, 0
  br i1 %1719, label %1720, label %1707

1720:                                             ; preds = %1707
  %1721 = and i64 %1715, 9223372036854775807
  %1722 = icmp ne i64 %1721, 0
  %1723 = zext i1 %1722 to i64
  %1724 = add i64 %1717, %1723
  %1725 = sub i64 0, %1724
  %1726 = icmp slt i32 %1702, 0
  %1727 = select i1 %1726, i64 %1725, i64 %1724
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %48) #8
  %1728 = load i64, ptr %1169, align 8
  %1729 = lshr i64 %1728, 63
  br label %1730

1730:                                             ; preds = %1736, %1720
  %1731 = phi i32 [ 62, %1720 ], [ %1737, %1736 ]
  %1732 = zext i32 %1731 to i64
  %1733 = lshr i64 %1728, %1732
  %1734 = and i64 %1733, 1
  %1735 = icmp eq i64 %1734, %1729
  br i1 %1735, label %1736, label %1739

1736:                                             ; preds = %1730
  %1737 = add nsw i32 %1731, -1
  %1738 = icmp eq i32 %1737, 0
  br i1 %1738, label %1739, label %1730

1739:                                             ; preds = %1736, %1730
  %1740 = phi i32 [ 0, %1736 ], [ %1731, %1730 ]
  %1741 = lshr i64 %1727, 63
  br label %1742

1742:                                             ; preds = %1748, %1739
  %1743 = phi i32 [ 62, %1739 ], [ %1749, %1748 ]
  %1744 = zext i32 %1743 to i64
  %1745 = lshr i64 %1727, %1744
  %1746 = and i64 %1745, 1
  %1747 = icmp eq i64 %1746, %1741
  br i1 %1747, label %1748, label %1751

1748:                                             ; preds = %1742
  %1749 = add nsw i32 %1743, -1
  %1750 = icmp eq i32 %1749, 0
  br i1 %1750, label %1751, label %1742

1751:                                             ; preds = %1748, %1742
  %1752 = phi i32 [ 0, %1748 ], [ %1743, %1742 ]
  %1753 = add i32 %1752, %1740
  %1754 = icmp ugt i32 %1753, 61
  br i1 %1754, label %1757, label %1755

1755:                                             ; preds = %1751
  %1756 = mul i64 %1728, %1727
  br label %1774

1757:                                             ; preds = %1751
  %1758 = add i32 %1753, -61
  %1759 = lshr i32 %1758, 1
  %1760 = and i32 %1758, 1
  %1761 = add nuw nsw i32 %1759, %1760
  %1762 = zext i32 %1761 to i64
  %1763 = ashr i64 %1728, %1762
  %1764 = zext i32 %1759 to i64
  %1765 = ashr i64 %1727, %1764
  %1766 = mul i64 %1763, %1765
  %1767 = icmp ugt i32 %1758, 32
  br i1 %1767, label %1768, label %1772

1768:                                             ; preds = %1757
  %1769 = add i32 %1753, -93
  %1770 = zext i32 %1769 to i64
  %1771 = shl i64 %1766, %1770
  br label %1780

1772:                                             ; preds = %1757
  %1773 = icmp eq i32 %1758, 32
  br i1 %1773, label %1780, label %1774

1774:                                             ; preds = %1772, %1755
  %1775 = phi i32 [ 0, %1755 ], [ %1758, %1772 ]
  %1776 = phi i64 [ %1756, %1755 ], [ %1766, %1772 ]
  %1777 = sub nuw nsw i32 32, %1775
  %1778 = zext i32 %1777 to i64
  %1779 = ashr i64 %1776, %1778
  br label %1780

1780:                                             ; preds = %1774, %1772, %1768
  %1781 = phi i64 [ %1771, %1768 ], [ %1779, %1774 ], [ %1766, %1772 ]
  store i64 %1781, ptr %76, align 8
  %1782 = load i32, ptr %1555, align 4
  %1783 = call i32 @llvm.abs.i32(i32 %1782, i1 false)
  %1784 = zext i32 %1783 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %47) #8
  store i64 0, ptr %47, align 8, !annotation !8
  %1785 = call i64 @div64_u64_rem(i64 noundef %1784, i64 noundef 1, ptr noundef nonnull %47) #8
  %1786 = load i64, ptr %47, align 8
  br label %1787

1787:                                             ; preds = %1787, %1780
  %1788 = phi i64 [ %1786, %1780 ], [ %1795, %1787 ]
  %1789 = phi i64 [ %1785, %1780 ], [ %1797, %1787 ]
  %1790 = phi i32 [ 32, %1780 ], [ %1798, %1787 ]
  %1791 = shl i64 %1788, 1
  %1792 = shl i64 %1789, 1
  %1793 = icmp ne i64 %1791, 0
  %1794 = sext i1 %1793 to i64
  %1795 = add i64 %1791, %1794
  %1796 = zext i1 %1793 to i64
  %1797 = or i64 %1792, %1796
  %1798 = add nsw i32 %1790, -1
  %1799 = icmp eq i32 %1798, 0
  br i1 %1799, label %1800, label %1787

1800:                                             ; preds = %1787
  %1801 = and i64 %1795, 9223372036854775807
  %1802 = icmp ne i64 %1801, 0
  %1803 = zext i1 %1802 to i64
  %1804 = add i64 %1797, %1803
  %1805 = sub i64 0, %1804
  %1806 = icmp slt i32 %1782, 0
  %1807 = select i1 %1806, i64 %1805, i64 %1804
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %47) #8
  %1808 = load i64, ptr %76, align 8
  %1809 = sub i64 %1807, %1808
  store i64 %1809, ptr %76, align 8
  %1810 = load i32, ptr %1692, align 8
  %1811 = add i32 %1810, 1
  %1812 = call i32 @llvm.abs.i32(i32 %1811, i1 false)
  %1813 = zext i32 %1812 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %46) #8
  store i64 0, ptr %46, align 8, !annotation !8
  %1814 = call i64 @div64_u64_rem(i64 noundef %1813, i64 noundef 1, ptr noundef nonnull %46) #8
  %1815 = load i64, ptr %46, align 8
  br label %1816

1816:                                             ; preds = %1816, %1800
  %1817 = phi i64 [ %1815, %1800 ], [ %1824, %1816 ]
  %1818 = phi i64 [ %1814, %1800 ], [ %1826, %1816 ]
  %1819 = phi i32 [ 32, %1800 ], [ %1827, %1816 ]
  %1820 = shl i64 %1817, 1
  %1821 = shl i64 %1818, 1
  %1822 = icmp ne i64 %1820, 0
  %1823 = sext i1 %1822 to i64
  %1824 = add i64 %1820, %1823
  %1825 = zext i1 %1822 to i64
  %1826 = or i64 %1821, %1825
  %1827 = add nsw i32 %1819, -1
  %1828 = icmp eq i32 %1827, 0
  br i1 %1828, label %1829, label %1816

1829:                                             ; preds = %1816
  %1830 = and i64 %1824, 9223372036854775807
  %1831 = icmp ne i64 %1830, 0
  %1832 = zext i1 %1831 to i64
  %1833 = add i64 %1826, %1832
  %1834 = sub i64 0, %1833
  %1835 = icmp slt i32 %1811, 0
  %1836 = select i1 %1835, i64 %1834, i64 %1833
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %46) #8
  %1837 = load i64, ptr %76, align 8
  %1838 = lshr i64 %1836, 63
  br label %1839

1839:                                             ; preds = %1845, %1829
  %1840 = phi i32 [ 62, %1829 ], [ %1846, %1845 ]
  %1841 = zext i32 %1840 to i64
  %1842 = lshr i64 %1836, %1841
  %1843 = and i64 %1842, 1
  %1844 = icmp eq i64 %1843, %1838
  br i1 %1844, label %1845, label %1848

1845:                                             ; preds = %1839
  %1846 = add nsw i32 %1840, -1
  %1847 = icmp eq i32 %1846, 0
  br i1 %1847, label %1848, label %1839

1848:                                             ; preds = %1845, %1839
  %1849 = phi i32 [ 0, %1845 ], [ %1840, %1839 ]
  %1850 = lshr i64 %1837, 63
  br label %1851

1851:                                             ; preds = %1857, %1848
  %1852 = phi i32 [ 62, %1848 ], [ %1858, %1857 ]
  %1853 = zext i32 %1852 to i64
  %1854 = lshr i64 %1837, %1853
  %1855 = and i64 %1854, 1
  %1856 = icmp eq i64 %1855, %1850
  br i1 %1856, label %1857, label %1860

1857:                                             ; preds = %1851
  %1858 = add nsw i32 %1852, -1
  %1859 = icmp eq i32 %1858, 0
  br i1 %1859, label %1860, label %1851

1860:                                             ; preds = %1857, %1851
  %1861 = phi i32 [ 0, %1857 ], [ %1852, %1851 ]
  %1862 = add i32 %1861, %1849
  %1863 = icmp ugt i32 %1862, 61
  br i1 %1863, label %1866, label %1864

1864:                                             ; preds = %1860
  %1865 = mul i64 %1837, %1836
  br label %1883

1866:                                             ; preds = %1860
  %1867 = add i32 %1862, -61
  %1868 = lshr i32 %1867, 1
  %1869 = and i32 %1867, 1
  %1870 = add nuw nsw i32 %1868, %1869
  %1871 = zext i32 %1870 to i64
  %1872 = ashr i64 %1836, %1871
  %1873 = zext i32 %1868 to i64
  %1874 = ashr i64 %1837, %1873
  %1875 = mul i64 %1872, %1874
  %1876 = icmp ugt i32 %1867, 32
  br i1 %1876, label %1877, label %1881

1877:                                             ; preds = %1866
  %1878 = add i32 %1862, -93
  %1879 = zext i32 %1878 to i64
  %1880 = shl i64 %1875, %1879
  br label %1889

1881:                                             ; preds = %1866
  %1882 = icmp eq i32 %1867, 32
  br i1 %1882, label %1889, label %1883

1883:                                             ; preds = %1881, %1864
  %1884 = phi i32 [ 0, %1864 ], [ %1867, %1881 ]
  %1885 = phi i64 [ %1865, %1864 ], [ %1875, %1881 ]
  %1886 = sub nuw nsw i32 32, %1884
  %1887 = zext i32 %1886 to i64
  %1888 = ashr i64 %1885, %1887
  br label %1889

1889:                                             ; preds = %1883, %1881, %1877
  %1890 = phi i64 [ %1880, %1877 ], [ %1888, %1883 ], [ %1875, %1881 ]
  store i64 %1890, ptr %76, align 8
  %1891 = icmp ugt i64 %1890, 4294967295
  br i1 %1891, label %1892, label %1898

1892:                                             ; preds = %1889
  %1893 = icmp sgt i64 %1890, 0
  %1894 = select i1 %1893, i64 4294967295, i64 -4294967295
  %1895 = add i64 %1894, %1890
  %1896 = lshr i64 %1895, 32
  %1897 = trunc i64 %1896 to i32
  br label %1898

1898:                                             ; preds = %1892, %1889
  %1899 = phi i32 [ %1897, %1892 ], [ 0, %1889 ]
  %1900 = getelementptr inbounds %struct.tu_algo_data, ptr %163, i32 0, i32 33
  store i32 %1899, ptr %1900, align 8
  %1901 = call i32 @llvm.abs.i32(i32 %1899, i1 false)
  %1902 = zext i32 %1901 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %45) #8
  store i64 0, ptr %45, align 8, !annotation !8
  %1903 = call i64 @div64_u64_rem(i64 noundef %1902, i64 noundef 1, ptr noundef nonnull %45) #8
  %1904 = load i64, ptr %45, align 8
  br label %1905

1905:                                             ; preds = %1905, %1898
  %1906 = phi i64 [ %1904, %1898 ], [ %1913, %1905 ]
  %1907 = phi i64 [ %1903, %1898 ], [ %1915, %1905 ]
  %1908 = phi i32 [ 32, %1898 ], [ %1916, %1905 ]
  %1909 = shl i64 %1906, 1
  %1910 = shl i64 %1907, 1
  %1911 = icmp ne i64 %1909, 0
  %1912 = sext i1 %1911 to i64
  %1913 = add i64 %1909, %1912
  %1914 = zext i1 %1911 to i64
  %1915 = or i64 %1910, %1914
  %1916 = add nsw i32 %1908, -1
  %1917 = icmp eq i32 %1916, 0
  br i1 %1917, label %1918, label %1905

1918:                                             ; preds = %1905
  %1919 = and i64 %1913, 9223372036854775807
  %1920 = icmp ne i64 %1919, 0
  %1921 = zext i1 %1920 to i64
  %1922 = add i64 %1915, %1921
  %1923 = icmp slt i32 %1899, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %45) #8
  %1924 = load i32, ptr %233, align 4
  %1925 = call i32 @llvm.abs.i32(i32 %1924, i1 false)
  %1926 = zext i32 %1925 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %44) #8
  store i64 0, ptr %44, align 8, !annotation !8
  %1927 = call i64 @div64_u64_rem(i64 noundef 8, i64 noundef %1926, ptr noundef nonnull %44) #8
  %1928 = load i64, ptr %44, align 8
  br label %1929

1929:                                             ; preds = %1929, %1918
  %1930 = phi i64 [ %1928, %1918 ], [ %1937, %1929 ]
  %1931 = phi i64 [ %1927, %1918 ], [ %1940, %1929 ]
  %1932 = phi i32 [ 32, %1918 ], [ %1941, %1929 ]
  %1933 = shl i64 %1930, 1
  %1934 = shl i64 %1931, 1
  %1935 = icmp ult i64 %1933, %1926
  %1936 = select i1 %1935, i64 0, i64 %1926
  %1937 = sub i64 %1933, %1936
  %1938 = xor i1 %1935, true
  %1939 = zext i1 %1938 to i64
  %1940 = or i64 %1934, %1939
  %1941 = add nsw i32 %1932, -1
  %1942 = icmp eq i32 %1941, 0
  br i1 %1942, label %1943, label %1929

1943:                                             ; preds = %1929
  %1944 = sub i64 0, %1922
  %1945 = select i1 %1923, i64 %1944, i64 %1922
  %1946 = shl i64 %1937, 1
  %1947 = icmp uge i64 %1946, %1926
  %1948 = zext i1 %1947 to i64
  %1949 = add i64 %1940, %1948
  %1950 = sub i64 0, %1949
  %1951 = icmp slt i32 %1924, 0
  %1952 = select i1 %1951, i64 %1950, i64 %1949
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %44) #8
  store i64 %1952, ptr %76, align 8
  %1953 = lshr i64 %1945, 63
  br label %1954

1954:                                             ; preds = %1960, %1943
  %1955 = phi i32 [ 62, %1943 ], [ %1961, %1960 ]
  %1956 = zext i32 %1955 to i64
  %1957 = lshr i64 %1945, %1956
  %1958 = and i64 %1957, 1
  %1959 = icmp eq i64 %1958, %1953
  br i1 %1959, label %1960, label %1963

1960:                                             ; preds = %1954
  %1961 = add nsw i32 %1955, -1
  %1962 = icmp eq i32 %1961, 0
  br i1 %1962, label %1963, label %1954

1963:                                             ; preds = %1960, %1954
  %1964 = phi i32 [ 0, %1960 ], [ %1955, %1954 ]
  %1965 = lshr i64 %1952, 63
  br label %1966

1966:                                             ; preds = %1972, %1963
  %1967 = phi i32 [ 62, %1963 ], [ %1973, %1972 ]
  %1968 = zext i32 %1967 to i64
  %1969 = lshr i64 %1952, %1968
  %1970 = and i64 %1969, 1
  %1971 = icmp eq i64 %1970, %1965
  br i1 %1971, label %1972, label %1975

1972:                                             ; preds = %1966
  %1973 = add nsw i32 %1967, -1
  %1974 = icmp eq i32 %1973, 0
  br i1 %1974, label %1975, label %1966

1975:                                             ; preds = %1972, %1966
  %1976 = phi i32 [ 0, %1972 ], [ %1967, %1966 ]
  %1977 = add i32 %1976, %1964
  %1978 = icmp ugt i32 %1977, 61
  br i1 %1978, label %1981, label %1979

1979:                                             ; preds = %1975
  %1980 = mul i64 %1952, %1945
  br label %1998

1981:                                             ; preds = %1975
  %1982 = add i32 %1977, -61
  %1983 = lshr i32 %1982, 1
  %1984 = and i32 %1982, 1
  %1985 = add nuw nsw i32 %1983, %1984
  %1986 = zext i32 %1985 to i64
  %1987 = ashr i64 %1945, %1986
  %1988 = zext i32 %1983 to i64
  %1989 = ashr i64 %1952, %1988
  %1990 = mul i64 %1987, %1989
  %1991 = icmp ugt i32 %1982, 32
  br i1 %1991, label %1992, label %1996

1992:                                             ; preds = %1981
  %1993 = add i32 %1977, -93
  %1994 = zext i32 %1993 to i64
  %1995 = shl i64 %1990, %1994
  br label %2004

1996:                                             ; preds = %1981
  %1997 = icmp eq i32 %1982, 32
  br i1 %1997, label %2004, label %1998

1998:                                             ; preds = %1996, %1979
  %1999 = phi i32 [ 0, %1979 ], [ %1982, %1996 ]
  %2000 = phi i64 [ %1980, %1979 ], [ %1990, %1996 ]
  %2001 = sub nuw nsw i32 32, %1999
  %2002 = zext i32 %2001 to i64
  %2003 = ashr i64 %2000, %2002
  br label %2004

2004:                                             ; preds = %1998, %1996, %1992
  %2005 = phi i64 [ %1995, %1992 ], [ %2003, %1998 ], [ %1990, %1996 ]
  %2006 = icmp ne i64 %2005, 0
  %2007 = select i1 %1891, i1 %2006, i1 false
  %2008 = icmp sgt i64 %2005, 0
  %2009 = select i1 %2008, i64 4294967295, i64 -4294967295
  %2010 = select i1 %2007, i64 %2009, i64 0
  %2011 = add i64 %2005, %2010
  %2012 = lshr i64 %2011, 32
  %2013 = trunc i64 %2012 to i32
  %2014 = getelementptr inbounds %struct.tu_algo_data, ptr %163, i32 0, i32 36
  store i32 %2013, ptr %2014, align 4
  %2015 = load i64, ptr %163, align 8
  %2016 = load i64, ptr %222, align 8
  %2017 = lshr i64 %2015, 63
  br label %2018

2018:                                             ; preds = %2024, %2004
  %2019 = phi i32 [ 62, %2004 ], [ %2025, %2024 ]
  %2020 = zext i32 %2019 to i64
  %2021 = lshr i64 %2015, %2020
  %2022 = and i64 %2021, 1
  %2023 = icmp eq i64 %2022, %2017
  br i1 %2023, label %2024, label %2027

2024:                                             ; preds = %2018
  %2025 = add nsw i32 %2019, -1
  %2026 = icmp eq i32 %2025, 0
  br i1 %2026, label %2027, label %2018

2027:                                             ; preds = %2024, %2018
  %2028 = phi i32 [ 0, %2024 ], [ %2019, %2018 ]
  %2029 = sub i32 62, %2028
  %2030 = zext i32 %2029 to i64
  %2031 = shl i64 %2015, %2030
  %2032 = icmp ult i32 %2029, 32
  %2033 = add i32 %2028, -30
  %2034 = select i1 %2032, i32 %2033, i32 0
  %2035 = zext i32 %2034 to i64
  %2036 = ashr i64 %2016, %2035
  %2037 = call i64 @div64_s64(i64 noundef %2031, i64 noundef %2036) #8
  %2038 = icmp ugt i32 %2029, 32
  %2039 = sub i32 30, %2028
  %2040 = select i1 %2038, i32 %2039, i32 0
  %2041 = zext i32 %2040 to i64
  %2042 = load i32, ptr %2014, align 4
  %2043 = call i32 @llvm.abs.i32(i32 %2042, i1 false)
  %2044 = zext i32 %2043 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %43) #8
  store i64 0, ptr %43, align 8, !annotation !8
  %2045 = call i64 @div64_u64_rem(i64 noundef %2044, i64 noundef 1, ptr noundef nonnull %43) #8
  %2046 = load i64, ptr %43, align 8
  br label %2047

2047:                                             ; preds = %2047, %2027
  %2048 = phi i64 [ %2046, %2027 ], [ %2055, %2047 ]
  %2049 = phi i64 [ %2045, %2027 ], [ %2057, %2047 ]
  %2050 = phi i32 [ 32, %2027 ], [ %2058, %2047 ]
  %2051 = shl i64 %2048, 1
  %2052 = shl i64 %2049, 1
  %2053 = icmp ne i64 %2051, 0
  %2054 = sext i1 %2053 to i64
  %2055 = add i64 %2051, %2054
  %2056 = zext i1 %2053 to i64
  %2057 = or i64 %2052, %2056
  %2058 = add nsw i32 %2050, -1
  %2059 = icmp eq i32 %2058, 0
  br i1 %2059, label %2060, label %2047

2060:                                             ; preds = %2047
  %2061 = ashr i64 %2037, %2041
  %2062 = and i64 %2055, 9223372036854775807
  %2063 = icmp ne i64 %2062, 0
  %2064 = zext i1 %2063 to i64
  %2065 = add i64 %2057, %2064
  %2066 = sub i64 0, %2065
  %2067 = icmp slt i32 %2042, 0
  %2068 = select i1 %2067, i64 %2066, i64 %2065
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %43) #8
  store i64 %2068, ptr %76, align 8
  %2069 = lshr i64 %2068, 63
  br label %2070

2070:                                             ; preds = %2076, %2060
  %2071 = phi i32 [ 62, %2060 ], [ %2077, %2076 ]
  %2072 = zext i32 %2071 to i64
  %2073 = lshr i64 %2068, %2072
  %2074 = and i64 %2073, 1
  %2075 = icmp eq i64 %2074, %2069
  br i1 %2075, label %2076, label %2079

2076:                                             ; preds = %2070
  %2077 = add nsw i32 %2071, -1
  %2078 = icmp eq i32 %2077, 0
  br i1 %2078, label %2079, label %2070

2079:                                             ; preds = %2076, %2070
  %2080 = phi i32 [ 0, %2076 ], [ %2071, %2070 ]
  %2081 = lshr i64 %2061, 63
  br label %2082

2082:                                             ; preds = %2088, %2079
  %2083 = phi i32 [ 62, %2079 ], [ %2089, %2088 ]
  %2084 = zext i32 %2083 to i64
  %2085 = lshr i64 %2061, %2084
  %2086 = and i64 %2085, 1
  %2087 = icmp eq i64 %2086, %2081
  br i1 %2087, label %2088, label %2091

2088:                                             ; preds = %2082
  %2089 = add nsw i32 %2083, -1
  %2090 = icmp eq i32 %2089, 0
  br i1 %2090, label %2091, label %2082

2091:                                             ; preds = %2088, %2082
  %2092 = phi i32 [ 0, %2088 ], [ %2083, %2082 ]
  %2093 = add i32 %2092, %2080
  %2094 = icmp ugt i32 %2093, 61
  br i1 %2094, label %2097, label %2095

2095:                                             ; preds = %2091
  %2096 = mul i64 %2068, %2061
  br label %2114

2097:                                             ; preds = %2091
  %2098 = add i32 %2093, -61
  %2099 = lshr i32 %2098, 1
  %2100 = and i32 %2098, 1
  %2101 = add nuw nsw i32 %2099, %2100
  %2102 = zext i32 %2101 to i64
  %2103 = ashr i64 %2068, %2102
  %2104 = zext i32 %2099 to i64
  %2105 = ashr i64 %2061, %2104
  %2106 = mul i64 %2103, %2105
  %2107 = icmp ugt i32 %2098, 32
  br i1 %2107, label %2108, label %2112

2108:                                             ; preds = %2097
  %2109 = add i32 %2093, -93
  %2110 = zext i32 %2109 to i64
  %2111 = shl i64 %2106, %2110
  br label %2120

2112:                                             ; preds = %2097
  %2113 = icmp eq i32 %2098, 32
  br i1 %2113, label %2120, label %2114

2114:                                             ; preds = %2112, %2095
  %2115 = phi i32 [ 0, %2095 ], [ %2098, %2112 ]
  %2116 = phi i64 [ %2096, %2095 ], [ %2106, %2112 ]
  %2117 = sub nuw nsw i32 32, %2115
  %2118 = zext i32 %2117 to i64
  %2119 = ashr i64 %2116, %2118
  br label %2120

2120:                                             ; preds = %2114, %2112, %2108
  %2121 = phi i64 [ %2111, %2108 ], [ %2119, %2114 ], [ %2106, %2112 ]
  %2122 = icmp eq i64 %2121, 0
  br i1 %2122, label %2129, label %2123

2123:                                             ; preds = %2120
  %2124 = icmp sgt i64 %2121, 0
  %2125 = select i1 %2124, i64 4294967295, i64 -4294967295
  %2126 = add i64 %2125, %2121
  %2127 = lshr i64 %2126, 32
  %2128 = trunc i64 %2127 to i32
  br label %2129

2129:                                             ; preds = %2123, %2120
  %2130 = phi i32 [ %2128, %2123 ], [ 0, %2120 ]
  %2131 = getelementptr inbounds %struct.tu_algo_data, ptr %163, i32 0, i32 37
  store i32 %2130, ptr %2131, align 8
  %2132 = load i32, ptr %1345, align 4
  %2133 = load i32, ptr %1555, align 4
  %2134 = sub i32 %2132, %2133
  %2135 = getelementptr inbounds %struct.tu_algo_data, ptr %163, i32 0, i32 34
  store i32 %2134, ptr %2135, align 4
  %2136 = call i32 @llvm.abs.i32(i32 %2132, i1 false)
  %2137 = zext i32 %2136 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %42) #8
  store i64 0, ptr %42, align 8, !annotation !8
  %2138 = call i64 @div64_u64_rem(i64 noundef %2137, i64 noundef 1, ptr noundef nonnull %42) #8
  %2139 = load i64, ptr %42, align 8
  br label %2140

2140:                                             ; preds = %2140, %2129
  %2141 = phi i64 [ %2139, %2129 ], [ %2148, %2140 ]
  %2142 = phi i64 [ %2138, %2129 ], [ %2150, %2140 ]
  %2143 = phi i32 [ 32, %2129 ], [ %2151, %2140 ]
  %2144 = shl i64 %2141, 1
  %2145 = shl i64 %2142, 1
  %2146 = icmp ne i64 %2144, 0
  %2147 = sext i1 %2146 to i64
  %2148 = add i64 %2144, %2147
  %2149 = zext i1 %2146 to i64
  %2150 = or i64 %2145, %2149
  %2151 = add nsw i32 %2143, -1
  %2152 = icmp eq i32 %2151, 0
  br i1 %2152, label %2153, label %2140

2153:                                             ; preds = %2140
  %2154 = and i64 %2148, 9223372036854775807
  %2155 = icmp ne i64 %2154, 0
  %2156 = zext i1 %2155 to i64
  %2157 = add i64 %2150, %2156
  %2158 = sub i64 0, %2157
  %2159 = icmp slt i32 %2132, 0
  %2160 = select i1 %2159, i64 %2158, i64 %2157
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %42) #8
  %2161 = load i64, ptr %1168, align 8
  %2162 = lshr i64 %2161, 63
  br label %2163

2163:                                             ; preds = %2169, %2153
  %2164 = phi i32 [ 62, %2153 ], [ %2170, %2169 ]
  %2165 = zext i32 %2164 to i64
  %2166 = lshr i64 %2161, %2165
  %2167 = and i64 %2166, 1
  %2168 = icmp eq i64 %2167, %2162
  br i1 %2168, label %2169, label %2172

2169:                                             ; preds = %2163
  %2170 = add nsw i32 %2164, -1
  %2171 = icmp eq i32 %2170, 0
  br i1 %2171, label %2172, label %2163

2172:                                             ; preds = %2169, %2163
  %2173 = phi i32 [ 0, %2169 ], [ %2164, %2163 ]
  %2174 = lshr i64 %2160, 63
  br label %2175

2175:                                             ; preds = %2181, %2172
  %2176 = phi i32 [ 62, %2172 ], [ %2182, %2181 ]
  %2177 = zext i32 %2176 to i64
  %2178 = lshr i64 %2160, %2177
  %2179 = and i64 %2178, 1
  %2180 = icmp eq i64 %2179, %2174
  br i1 %2180, label %2181, label %2184

2181:                                             ; preds = %2175
  %2182 = add nsw i32 %2176, -1
  %2183 = icmp eq i32 %2182, 0
  br i1 %2183, label %2184, label %2175

2184:                                             ; preds = %2181, %2175
  %2185 = phi i32 [ 0, %2181 ], [ %2176, %2175 ]
  %2186 = add i32 %2185, %2173
  %2187 = icmp ugt i32 %2186, 61
  br i1 %2187, label %2190, label %2188

2188:                                             ; preds = %2184
  %2189 = mul i64 %2161, %2160
  br label %2207

2190:                                             ; preds = %2184
  %2191 = add i32 %2186, -61
  %2192 = lshr i32 %2191, 1
  %2193 = and i32 %2191, 1
  %2194 = add nuw nsw i32 %2192, %2193
  %2195 = zext i32 %2194 to i64
  %2196 = ashr i64 %2161, %2195
  %2197 = zext i32 %2192 to i64
  %2198 = ashr i64 %2160, %2197
  %2199 = mul i64 %2196, %2198
  %2200 = icmp ugt i32 %2191, 32
  br i1 %2200, label %2201, label %2205

2201:                                             ; preds = %2190
  %2202 = add i32 %2186, -93
  %2203 = zext i32 %2202 to i64
  %2204 = shl i64 %2199, %2203
  br label %2213

2205:                                             ; preds = %2190
  %2206 = icmp eq i32 %2191, 32
  br i1 %2206, label %2213, label %2207

2207:                                             ; preds = %2205, %2188
  %2208 = phi i32 [ 0, %2188 ], [ %2191, %2205 ]
  %2209 = phi i64 [ %2189, %2188 ], [ %2199, %2205 ]
  %2210 = sub nuw nsw i32 32, %2208
  %2211 = zext i32 %2210 to i64
  %2212 = ashr i64 %2209, %2211
  br label %2213

2213:                                             ; preds = %2207, %2205, %2201
  %2214 = phi i64 [ %2204, %2201 ], [ %2212, %2207 ], [ %2199, %2205 ]
  %2215 = getelementptr inbounds %struct.tu_algo_data, ptr %163, i32 0, i32 38
  store i64 %2214, ptr %2215, align 8
  %2216 = load i32, ptr %2131, align 8
  %2217 = load i32, ptr %2135, align 4
  %2218 = add i32 %2217, %2216
  %2219 = load i32, ptr %1006, align 4
  %2220 = add i32 %2218, %2219
  %2221 = getelementptr inbounds %struct.tu_algo_data, ptr %163, i32 0, i32 35
  store i32 %2220, ptr %2221, align 8
  %2222 = load i32, ptr %1555, align 4
  %2223 = call i32 @llvm.abs.i32(i32 %2222, i1 false)
  %2224 = zext i32 %2223 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %41) #8
  store i64 0, ptr %41, align 8, !annotation !8
  %2225 = call i64 @div64_u64_rem(i64 noundef %2224, i64 noundef 1, ptr noundef nonnull %41) #8
  %2226 = load i64, ptr %41, align 8
  br label %2227

2227:                                             ; preds = %2227, %2213
  %2228 = phi i64 [ %2226, %2213 ], [ %2235, %2227 ]
  %2229 = phi i64 [ %2225, %2213 ], [ %2237, %2227 ]
  %2230 = phi i32 [ 32, %2213 ], [ %2238, %2227 ]
  %2231 = shl i64 %2228, 1
  %2232 = shl i64 %2229, 1
  %2233 = icmp ne i64 %2231, 0
  %2234 = sext i1 %2233 to i64
  %2235 = add i64 %2231, %2234
  %2236 = zext i1 %2233 to i64
  %2237 = or i64 %2232, %2236
  %2238 = add nsw i32 %2230, -1
  %2239 = icmp eq i32 %2238, 0
  br i1 %2239, label %2240, label %2227

2240:                                             ; preds = %2227
  %2241 = and i64 %2235, 9223372036854775807
  %2242 = icmp ne i64 %2241, 0
  %2243 = zext i1 %2242 to i64
  %2244 = add i64 %2237, %2243
  %2245 = sub i64 0, %2244
  %2246 = icmp slt i32 %2222, 0
  %2247 = select i1 %2246, i64 %2245, i64 %2244
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %41) #8
  %2248 = getelementptr inbounds %struct.tu_algo_data, ptr %163, i32 0, i32 23
  store i64 %2247, ptr %2248, align 8
  %2249 = load i32, ptr %1345, align 4
  %2250 = call i32 @llvm.abs.i32(i32 %2249, i1 false)
  %2251 = zext i32 %2250 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %40) #8
  store i64 0, ptr %40, align 8, !annotation !8
  %2252 = call i64 @div64_u64_rem(i64 noundef %2251, i64 noundef 1, ptr noundef nonnull %40) #8
  %2253 = load i64, ptr %40, align 8
  br label %2254

2254:                                             ; preds = %2254, %2240
  %2255 = phi i64 [ %2253, %2240 ], [ %2262, %2254 ]
  %2256 = phi i64 [ %2252, %2240 ], [ %2264, %2254 ]
  %2257 = phi i32 [ 32, %2240 ], [ %2265, %2254 ]
  %2258 = shl i64 %2255, 1
  %2259 = shl i64 %2256, 1
  %2260 = icmp ne i64 %2258, 0
  %2261 = sext i1 %2260 to i64
  %2262 = add i64 %2258, %2261
  %2263 = zext i1 %2260 to i64
  %2264 = or i64 %2259, %2263
  %2265 = add nsw i32 %2257, -1
  %2266 = icmp eq i32 %2265, 0
  br i1 %2266, label %2267, label %2254

2267:                                             ; preds = %2254
  %2268 = and i64 %2262, 9223372036854775807
  %2269 = icmp ne i64 %2268, 0
  %2270 = zext i1 %2269 to i64
  %2271 = add i64 %2264, %2270
  %2272 = sub i64 0, %2271
  %2273 = icmp slt i32 %2249, 0
  %2274 = select i1 %2273, i64 %2272, i64 %2271
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %40) #8
  %2275 = load i64, ptr %2248, align 8
  %2276 = lshr i64 %2275, 63
  br label %2277

2277:                                             ; preds = %2283, %2267
  %2278 = phi i32 [ 62, %2267 ], [ %2284, %2283 ]
  %2279 = zext i32 %2278 to i64
  %2280 = lshr i64 %2275, %2279
  %2281 = and i64 %2280, 1
  %2282 = icmp eq i64 %2281, %2276
  br i1 %2282, label %2283, label %2286

2283:                                             ; preds = %2277
  %2284 = add nsw i32 %2278, -1
  %2285 = icmp eq i32 %2284, 0
  br i1 %2285, label %2286, label %2277

2286:                                             ; preds = %2283, %2277
  %2287 = phi i32 [ 0, %2283 ], [ %2278, %2277 ]
  %2288 = sub i32 62, %2287
  %2289 = zext i32 %2288 to i64
  %2290 = shl i64 %2275, %2289
  %2291 = icmp ult i32 %2288, 32
  %2292 = add i32 %2287, -30
  %2293 = select i1 %2291, i32 %2292, i32 0
  %2294 = zext i32 %2293 to i64
  %2295 = ashr i64 %2274, %2294
  %2296 = call i64 @div64_s64(i64 noundef %2290, i64 noundef %2295) #8
  %2297 = icmp ugt i32 %2288, 32
  %2298 = sub i32 30, %2287
  %2299 = select i1 %2297, i32 %2298, i32 0
  %2300 = zext i32 %2299 to i64
  %2301 = ashr i64 %2296, %2300
  store i64 %2301, ptr %76, align 8
  %2302 = load i64, ptr %1169, align 8
  %2303 = sub i64 %2301, %2302
  %2304 = getelementptr inbounds %struct.tu_algo_data, ptr %163, i32 0, i32 45
  store i64 %2303, ptr %2304, align 8
  %2305 = zext i32 %1343 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %39) #8
  store i64 0, ptr %39, align 8, !annotation !8
  %2306 = call i64 @div64_u64_rem(i64 noundef %2305, i64 noundef 1, ptr noundef nonnull %39) #8
  %2307 = load i64, ptr %39, align 8
  br label %2308

2308:                                             ; preds = %2308, %2286
  %2309 = phi i64 [ %2307, %2286 ], [ %2316, %2308 ]
  %2310 = phi i64 [ %2306, %2286 ], [ %2318, %2308 ]
  %2311 = phi i32 [ 32, %2286 ], [ %2319, %2308 ]
  %2312 = shl i64 %2309, 1
  %2313 = shl i64 %2310, 1
  %2314 = icmp ne i64 %2312, 0
  %2315 = sext i1 %2314 to i64
  %2316 = add i64 %2312, %2315
  %2317 = zext i1 %2314 to i64
  %2318 = or i64 %2313, %2317
  %2319 = add nsw i32 %2311, -1
  %2320 = icmp eq i32 %2319, 0
  br i1 %2320, label %2321, label %2308

2321:                                             ; preds = %2308
  %2322 = and i64 %2316, 9223372036854775807
  %2323 = icmp ne i64 %2322, 0
  %2324 = sext i1 %2323 to i64
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %39) #8
  %2325 = load i64, ptr %293, align 8
  %2326 = sub i64 %2324, %2318
  %2327 = add i64 %2326, %2325
  %2328 = load i64, ptr %222, align 8
  %2329 = lshr i64 %2327, 63
  br label %2330

2330:                                             ; preds = %2336, %2321
  %2331 = phi i32 [ 62, %2321 ], [ %2337, %2336 ]
  %2332 = zext i32 %2331 to i64
  %2333 = lshr i64 %2327, %2332
  %2334 = and i64 %2333, 1
  %2335 = icmp eq i64 %2334, %2329
  br i1 %2335, label %2336, label %2339

2336:                                             ; preds = %2330
  %2337 = add nsw i32 %2331, -1
  %2338 = icmp eq i32 %2337, 0
  br i1 %2338, label %2339, label %2330

2339:                                             ; preds = %2336, %2330
  %2340 = phi i32 [ 0, %2336 ], [ %2331, %2330 ]
  %2341 = sub i32 62, %2340
  %2342 = zext i32 %2341 to i64
  %2343 = shl i64 %2327, %2342
  %2344 = icmp ult i32 %2341, 32
  %2345 = add i32 %2340, -30
  %2346 = select i1 %2344, i32 %2345, i32 0
  %2347 = zext i32 %2346 to i64
  %2348 = ashr i64 %2328, %2347
  %2349 = call i64 @div64_s64(i64 noundef %2343, i64 noundef %2348) #8
  %2350 = icmp ugt i32 %2341, 32
  %2351 = sub i32 30, %2340
  %2352 = select i1 %2350, i32 %2351, i32 0
  %2353 = zext i32 %2352 to i64
  %2354 = ashr i64 %2349, %2353
  %2355 = getelementptr inbounds %struct.tu_algo_data, ptr %163, i32 0, i32 65
  store i64 %2354, ptr %2355, align 8
  %2356 = load i32, ptr %2221, align 8
  %2357 = call i32 @llvm.abs.i32(i32 %2356, i1 false)
  %2358 = zext i32 %2357 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %38) #8
  store i64 0, ptr %38, align 8, !annotation !8
  %2359 = call i64 @div64_u64_rem(i64 noundef %2358, i64 noundef 1, ptr noundef nonnull %38) #8
  %2360 = load i64, ptr %38, align 8
  br label %2361

2361:                                             ; preds = %2361, %2339
  %2362 = phi i64 [ %2360, %2339 ], [ %2369, %2361 ]
  %2363 = phi i64 [ %2359, %2339 ], [ %2371, %2361 ]
  %2364 = phi i32 [ 32, %2339 ], [ %2372, %2361 ]
  %2365 = shl i64 %2362, 1
  %2366 = shl i64 %2363, 1
  %2367 = icmp ne i64 %2365, 0
  %2368 = sext i1 %2367 to i64
  %2369 = add i64 %2365, %2368
  %2370 = zext i1 %2367 to i64
  %2371 = or i64 %2366, %2370
  %2372 = add nsw i32 %2364, -1
  %2373 = icmp eq i32 %2372, 0
  br i1 %2373, label %2374, label %2361

2374:                                             ; preds = %2361
  %2375 = and i64 %2369, 9223372036854775807
  %2376 = icmp ne i64 %2375, 0
  %2377 = zext i1 %2376 to i64
  %2378 = add i64 %2371, %2377
  %2379 = sub i64 0, %2378
  %2380 = icmp slt i32 %2356, 0
  %2381 = select i1 %2380, i64 %2379, i64 %2378
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %38) #8
  %2382 = load i64, ptr %163, align 8
  %2383 = lshr i64 %2381, 63
  br label %2384

2384:                                             ; preds = %2390, %2374
  %2385 = phi i32 [ 62, %2374 ], [ %2391, %2390 ]
  %2386 = zext i32 %2385 to i64
  %2387 = lshr i64 %2381, %2386
  %2388 = and i64 %2387, 1
  %2389 = icmp eq i64 %2388, %2383
  br i1 %2389, label %2390, label %2393

2390:                                             ; preds = %2384
  %2391 = add nsw i32 %2385, -1
  %2392 = icmp eq i32 %2391, 0
  br i1 %2392, label %2393, label %2384

2393:                                             ; preds = %2390, %2384
  %2394 = phi i32 [ 0, %2390 ], [ %2385, %2384 ]
  %2395 = sub i32 62, %2394
  %2396 = zext i32 %2395 to i64
  %2397 = shl i64 %2381, %2396
  %2398 = icmp ult i32 %2395, 32
  %2399 = add i32 %2394, -30
  %2400 = select i1 %2398, i32 %2399, i32 0
  %2401 = zext i32 %2400 to i64
  %2402 = ashr i64 %2382, %2401
  %2403 = call i64 @div64_s64(i64 noundef %2397, i64 noundef %2402) #8
  %2404 = icmp ugt i32 %2395, 32
  %2405 = sub i32 30, %2394
  %2406 = select i1 %2404, i32 %2405, i32 0
  %2407 = zext i32 %2406 to i64
  %2408 = ashr i64 %2403, %2407
  store i64 %2408, ptr %1179, align 8
  %2409 = load i64, ptr %2355, align 8
  %2410 = call fastcc i32 @_tu_param_compare(i64 noundef %2409, i64 noundef %2408)
  %2411 = icmp eq i32 %2410, 2
  br i1 %2411, label %2412, label %2414

2412:                                             ; preds = %2393
  %2413 = getelementptr inbounds %struct.tu_algo_data, ptr %163, i32 0, i32 63
  store i32 1, ptr %2413, align 4
  br label %2414

2414:                                             ; preds = %2412, %2393
  %2415 = load i64, ptr %267, align 8
  %2416 = load i64, ptr %222, align 8
  %2417 = lshr i64 %2415, 63
  br label %2418

2418:                                             ; preds = %2424, %2414
  %2419 = phi i32 [ 62, %2414 ], [ %2425, %2424 ]
  %2420 = zext i32 %2419 to i64
  %2421 = lshr i64 %2415, %2420
  %2422 = and i64 %2421, 1
  %2423 = icmp eq i64 %2422, %2417
  br i1 %2423, label %2424, label %2427

2424:                                             ; preds = %2418
  %2425 = add nsw i32 %2419, -1
  %2426 = icmp eq i32 %2425, 0
  br i1 %2426, label %2427, label %2418

2427:                                             ; preds = %2424, %2418
  %2428 = phi i32 [ 0, %2424 ], [ %2419, %2418 ]
  %2429 = sub i32 62, %2428
  %2430 = zext i32 %2429 to i64
  %2431 = shl i64 %2415, %2430
  %2432 = icmp ult i32 %2429, 32
  %2433 = add i32 %2428, -30
  %2434 = select i1 %2432, i32 %2433, i32 0
  %2435 = zext i32 %2434 to i64
  %2436 = ashr i64 %2416, %2435
  %2437 = call i64 @div64_s64(i64 noundef %2431, i64 noundef %2436) #8
  %2438 = icmp ugt i32 %2429, 32
  %2439 = sub i32 30, %2428
  %2440 = select i1 %2438, i32 %2439, i32 0
  %2441 = zext i32 %2440 to i64
  %2442 = ashr i64 %2437, %2441
  %2443 = getelementptr inbounds %struct.tu_algo_data, ptr %163, i32 0, i32 66
  store i64 %2442, ptr %2443, align 8
  %2444 = load i64, ptr %1179, align 8
  %2445 = call fastcc i32 @_tu_param_compare(i64 noundef %2442, i64 noundef %2444)
  %2446 = icmp eq i32 %2445, 2
  br i1 %2446, label %2447, label %2449

2447:                                             ; preds = %2427
  %2448 = getelementptr inbounds %struct.tu_algo_data, ptr %163, i32 0, i32 63
  store i32 1, ptr %2448, align 4
  br label %2449

2449:                                             ; preds = %2447, %2427
  store i64 0, ptr %1179, align 8
  %2450 = getelementptr inbounds %struct.tu_algo_data, ptr %163, i32 0, i32 12
  store i32 4, ptr %2450, align 8
  %2451 = load i64, ptr %2248, align 8
  %2452 = load i64, ptr %2215, align 8
  %2453 = sub i64 %2451, %2452
  %2454 = getelementptr inbounds %struct.tu_algo_data, ptr %163, i32 0, i32 67
  store i64 %2453, ptr %2454, align 8
  %2455 = icmp ult i64 %2453, 4294967296
  br i1 %2455, label %2456, label %2460

2456:                                             ; preds = %2449
  %2457 = icmp ult i64 %2453, 65536
  br i1 %2457, label %2458, label %2498

2458:                                             ; preds = %2456
  store i64 0, ptr %2454, align 8
  %2459 = getelementptr inbounds %struct.tu_algo_data, ptr %163, i32 0, i32 54
  store i32 0, ptr %2459, align 8
  br label %2504

2460:                                             ; preds = %2449
  %2461 = icmp slt i64 %2453, 0
  br i1 %2461, label %2462, label %2498

2462:                                             ; preds = %2460
  %2463 = lshr i64 %2453, 63
  br label %2464

2464:                                             ; preds = %2470, %2462
  %2465 = phi i32 [ 62, %2462 ], [ %2471, %2470 ]
  %2466 = zext i32 %2465 to i64
  %2467 = lshr i64 %2453, %2466
  %2468 = and i64 %2467, 1
  %2469 = icmp eq i64 %2468, %2463
  br i1 %2469, label %2470, label %2473

2470:                                             ; preds = %2464
  %2471 = add nsw i32 %2465, -1
  %2472 = icmp eq i32 %2471, 0
  br i1 %2472, label %2475, label %2464

2473:                                             ; preds = %2464
  %2474 = icmp ugt i32 %2465, 61
  br i1 %2474, label %2477, label %2475

2475:                                             ; preds = %2473, %2470
  %2476 = sub i64 0, %2453
  br label %2492

2477:                                             ; preds = %2473
  %2478 = add i32 %2465, -61
  %2479 = lshr i32 %2478, 1
  %2480 = and i32 %2478, 1
  %2481 = add nuw nsw i32 %2479, %2480
  %2482 = zext i32 %2481 to i64
  %2483 = ashr i64 %2453, %2482
  %2484 = sub i64 0, %2483
  %2485 = icmp ugt i32 %2478, 32
  br i1 %2485, label %2486, label %2490

2486:                                             ; preds = %2477
  %2487 = add i32 %2465, -93
  %2488 = zext i32 %2487 to i64
  %2489 = shl i64 %2484, %2488
  br label %2500

2490:                                             ; preds = %2477
  %2491 = icmp eq i32 %2478, 32
  br i1 %2491, label %2500, label %2492

2492:                                             ; preds = %2490, %2475
  %2493 = phi i32 [ 0, %2475 ], [ %2478, %2490 ]
  %2494 = phi i64 [ %2476, %2475 ], [ %2484, %2490 ]
  %2495 = sub nuw nsw i32 32, %2493
  %2496 = zext i32 %2495 to i64
  %2497 = ashr i64 %2494, %2496
  br label %2500

2498:                                             ; preds = %2460, %2456
  %2499 = getelementptr inbounds %struct.tu_algo_data, ptr %163, i32 0, i32 54
  store i32 0, ptr %2499, align 8
  br label %2509

2500:                                             ; preds = %2492, %2490, %2486
  %2501 = phi i64 [ %2489, %2486 ], [ %2497, %2492 ], [ %2484, %2490 ]
  store i64 %2501, ptr %2454, align 8
  %2502 = getelementptr inbounds %struct.tu_algo_data, ptr %163, i32 0, i32 54
  store i32 0, ptr %2502, align 8
  %2503 = icmp eq i64 %2501, 0
  br i1 %2503, label %2504, label %2509

2504:                                             ; preds = %2500, %2458
  %2505 = phi ptr [ %2459, %2458 ], [ %2502, %2500 ]
  %2506 = getelementptr inbounds %struct.tu_algo_data, ptr %163, i32 0, i32 63
  %2507 = load i32, ptr %2506, align 4
  %2508 = icmp eq i32 %2507, 1
  br i1 %2508, label %2509, label %4738

2509:                                             ; preds = %2504, %2500, %2498
  %2510 = phi ptr [ %2502, %2500 ], [ %2505, %2504 ], [ %2499, %2498 ]
  %2511 = getelementptr inbounds %struct.tu_algo_data, ptr %163, i32 0, i32 42
  %2512 = getelementptr inbounds %struct.tu_algo_data, ptr %163, i32 0, i32 40
  %2513 = getelementptr inbounds %struct.tu_algo_data, ptr %163, i32 0, i32 39
  %2514 = getelementptr inbounds %struct.tu_algo_data, ptr %163, i32 0, i32 43
  %2515 = getelementptr inbounds %struct.tu_algo_data, ptr %163, i32 0, i32 44
  %2516 = getelementptr inbounds %struct.tu_algo_data, ptr %163, i32 0, i32 41
  %2517 = getelementptr inbounds %struct.tu_algo_data, ptr %163, i32 0, i32 28
  %2518 = getelementptr inbounds %struct.tu_algo_data, ptr %163, i32 0, i32 29
  %2519 = getelementptr inbounds %struct.tu_algo_data, ptr %163, i32 0, i32 30
  %2520 = getelementptr inbounds %struct.tu_algo_data, ptr %163, i32 0, i32 31
  %2521 = getelementptr inbounds %struct.tu_algo_data, ptr %163, i32 0, i32 32
  %2522 = getelementptr inbounds %struct.tu_algo_data, ptr %163, i32 0, i32 24
  %2523 = getelementptr inbounds %struct.tu_algo_data, ptr %163, i32 0, i32 25
  %2524 = getelementptr inbounds %struct.tu_algo_data, ptr %163, i32 0, i32 46
  %2525 = getelementptr inbounds %struct.tu_algo_data, ptr %163, i32 0, i32 49
  %2526 = getelementptr inbounds %struct.tu_algo_data, ptr %163, i32 0, i32 47
  %2527 = getelementptr inbounds %struct.tu_algo_data, ptr %163, i32 0, i32 48
  %2528 = getelementptr inbounds %struct.tu_algo_data, ptr %163, i32 0, i32 50
  %2529 = getelementptr inbounds %struct.tu_algo_data, ptr %163, i32 0, i32 51
  %2530 = getelementptr inbounds %struct.tu_algo_data, ptr %163, i32 0, i32 52
  %2531 = getelementptr inbounds %struct.tu_algo_data, ptr %163, i32 0, i32 63
  %2532 = getelementptr inbounds %struct.tu_algo_data, ptr %163, i32 0, i32 26
  br label %2533

2533:                                             ; preds = %4398, %2509
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %37) #8
  store i64 0, ptr %37, align 8, !annotation !8
  %2534 = call i64 @div64_u64_rem(i64 noundef 1000, i64 noundef 1, ptr noundef nonnull %37) #8
  %2535 = load i64, ptr %37, align 8
  br label %2536

2536:                                             ; preds = %2536, %2533
  %2537 = phi i64 [ %2535, %2533 ], [ %2544, %2536 ]
  %2538 = phi i64 [ %2534, %2533 ], [ %2546, %2536 ]
  %2539 = phi i32 [ 32, %2533 ], [ %2547, %2536 ]
  %2540 = shl i64 %2537, 1
  %2541 = shl i64 %2538, 1
  %2542 = icmp ne i64 %2540, 0
  %2543 = sext i1 %2542 to i64
  %2544 = add i64 %2540, %2543
  %2545 = zext i1 %2542 to i64
  %2546 = or i64 %2541, %2545
  %2547 = add nsw i32 %2539, -1
  %2548 = icmp eq i32 %2547, 0
  br i1 %2548, label %2549, label %2536

2549:                                             ; preds = %2536
  %2550 = and i64 %2544, 9223372036854775807
  %2551 = icmp ne i64 %2550, 0
  %2552 = zext i1 %2551 to i64
  %2553 = add i64 %2546, %2552
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %37) #8
  store i64 %2553, ptr %899, align 8
  %2554 = load i64, ptr %163, align 8
  %2555 = load i64, ptr %222, align 8
  %2556 = lshr i64 %2554, 63
  br label %2557

2557:                                             ; preds = %2563, %2549
  %2558 = phi i32 [ 62, %2549 ], [ %2564, %2563 ]
  %2559 = zext i32 %2558 to i64
  %2560 = lshr i64 %2554, %2559
  %2561 = and i64 %2560, 1
  %2562 = icmp eq i64 %2561, %2556
  br i1 %2562, label %2563, label %2566

2563:                                             ; preds = %2557
  %2564 = add nsw i32 %2558, -1
  %2565 = icmp eq i32 %2564, 0
  br i1 %2565, label %2566, label %2557

2566:                                             ; preds = %2563, %2557
  %2567 = phi i32 [ 0, %2563 ], [ %2558, %2557 ]
  %2568 = sub i32 62, %2567
  %2569 = zext i32 %2568 to i64
  %2570 = shl i64 %2554, %2569
  %2571 = icmp ult i32 %2568, 32
  %2572 = add i32 %2567, -30
  %2573 = select i1 %2571, i32 %2572, i32 0
  %2574 = zext i32 %2573 to i64
  %2575 = ashr i64 %2555, %2574
  %2576 = call i64 @div64_s64(i64 noundef %2570, i64 noundef %2575) #8
  %2577 = icmp ugt i32 %2568, 32
  %2578 = sub i32 30, %2567
  %2579 = select i1 %2577, i32 %2578, i32 0
  %2580 = zext i32 %2579 to i64
  %2581 = load i32, ptr %2450, align 8
  %2582 = zext i32 %2581 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %36) #8
  store i64 0, ptr %36, align 8, !annotation !8
  %2583 = call i64 @div64_u64_rem(i64 noundef %2582, i64 noundef 1, ptr noundef nonnull %36) #8
  %2584 = load i64, ptr %36, align 8
  br label %2585

2585:                                             ; preds = %2585, %2566
  %2586 = phi i64 [ %2584, %2566 ], [ %2593, %2585 ]
  %2587 = phi i64 [ %2583, %2566 ], [ %2595, %2585 ]
  %2588 = phi i32 [ 32, %2566 ], [ %2596, %2585 ]
  %2589 = shl i64 %2586, 1
  %2590 = shl i64 %2587, 1
  %2591 = icmp ne i64 %2589, 0
  %2592 = sext i1 %2591 to i64
  %2593 = add i64 %2589, %2592
  %2594 = zext i1 %2591 to i64
  %2595 = or i64 %2590, %2594
  %2596 = add nsw i32 %2588, -1
  %2597 = icmp eq i32 %2596, 0
  br i1 %2597, label %2598, label %2585

2598:                                             ; preds = %2585
  %2599 = ashr i64 %2576, %2580
  %2600 = and i64 %2593, 9223372036854775807
  %2601 = icmp ne i64 %2600, 0
  %2602 = zext i1 %2601 to i64
  %2603 = add i64 %2595, %2602
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %36) #8
  store i64 %2603, ptr %76, align 8
  %2604 = lshr i64 %2603, 63
  br label %2605

2605:                                             ; preds = %2611, %2598
  %2606 = phi i32 [ 62, %2598 ], [ %2612, %2611 ]
  %2607 = zext i32 %2606 to i64
  %2608 = lshr i64 %2603, %2607
  %2609 = and i64 %2608, 1
  %2610 = icmp eq i64 %2609, %2604
  br i1 %2610, label %2611, label %2614

2611:                                             ; preds = %2605
  %2612 = add nsw i32 %2606, -1
  %2613 = icmp eq i32 %2612, 0
  br i1 %2613, label %2614, label %2605

2614:                                             ; preds = %2611, %2605
  %2615 = phi i32 [ 0, %2611 ], [ %2606, %2605 ]
  %2616 = lshr i64 %2599, 63
  br label %2617

2617:                                             ; preds = %2623, %2614
  %2618 = phi i32 [ 62, %2614 ], [ %2624, %2623 ]
  %2619 = zext i32 %2618 to i64
  %2620 = lshr i64 %2599, %2619
  %2621 = and i64 %2620, 1
  %2622 = icmp eq i64 %2621, %2616
  br i1 %2622, label %2623, label %2626

2623:                                             ; preds = %2617
  %2624 = add nsw i32 %2618, -1
  %2625 = icmp eq i32 %2624, 0
  br i1 %2625, label %2626, label %2617

2626:                                             ; preds = %2623, %2617
  %2627 = phi i32 [ 0, %2623 ], [ %2618, %2617 ]
  %2628 = add i32 %2627, %2615
  %2629 = icmp ugt i32 %2628, 61
  br i1 %2629, label %2632, label %2630

2630:                                             ; preds = %2626
  %2631 = mul i64 %2603, %2599
  br label %2649

2632:                                             ; preds = %2626
  %2633 = add i32 %2628, -61
  %2634 = lshr i32 %2633, 1
  %2635 = and i32 %2633, 1
  %2636 = add nuw nsw i32 %2634, %2635
  %2637 = zext i32 %2636 to i64
  %2638 = ashr i64 %2603, %2637
  %2639 = zext i32 %2634 to i64
  %2640 = ashr i64 %2599, %2639
  %2641 = mul i64 %2638, %2640
  %2642 = icmp ugt i32 %2633, 32
  br i1 %2642, label %2643, label %2647

2643:                                             ; preds = %2632
  %2644 = add i32 %2628, -93
  %2645 = zext i32 %2644 to i64
  %2646 = shl i64 %2641, %2645
  br label %2655

2647:                                             ; preds = %2632
  %2648 = icmp eq i32 %2633, 32
  br i1 %2648, label %2655, label %2649

2649:                                             ; preds = %2647, %2630
  %2650 = phi i32 [ 0, %2630 ], [ %2633, %2647 ]
  %2651 = phi i64 [ %2631, %2630 ], [ %2641, %2647 ]
  %2652 = sub nuw nsw i32 32, %2650
  %2653 = zext i32 %2652 to i64
  %2654 = ashr i64 %2651, %2653
  br label %2655

2655:                                             ; preds = %2649, %2647, %2643
  %2656 = phi i64 [ %2646, %2643 ], [ %2654, %2649 ], [ %2641, %2647 ]
  %2657 = icmp eq i64 %2656, 0
  br i1 %2657, label %2664, label %2658

2658:                                             ; preds = %2655
  %2659 = icmp sgt i64 %2656, 0
  %2660 = select i1 %2659, i64 4294967295, i64 -4294967295
  %2661 = add i64 %2660, %2656
  %2662 = lshr i64 %2661, 32
  %2663 = trunc i64 %2662 to i32
  br label %2664

2664:                                             ; preds = %2658, %2655
  %2665 = phi i32 [ %2663, %2658 ], [ 0, %2655 ]
  store i32 %2665, ptr %1006, align 4
  %2666 = load i32, ptr %233, align 4
  %2667 = call i32 @llvm.abs.i32(i32 %2666, i1 false)
  %2668 = zext i32 %2667 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %35) #8
  store i64 0, ptr %35, align 8, !annotation !8
  %2669 = call i64 @div64_u64_rem(i64 noundef %2668, i64 noundef 8, ptr noundef nonnull %35) #8
  %2670 = load i64, ptr %35, align 8
  br label %2671

2671:                                             ; preds = %2671, %2664
  %2672 = phi i64 [ %2670, %2664 ], [ %2679, %2671 ]
  %2673 = phi i64 [ %2669, %2664 ], [ %2682, %2671 ]
  %2674 = phi i32 [ 32, %2664 ], [ %2683, %2671 ]
  %2675 = shl i64 %2672, 1
  %2676 = shl i64 %2673, 1
  %2677 = icmp ult i64 %2675, 8
  %2678 = select i1 %2677, i64 0, i64 -8
  %2679 = add i64 %2678, %2675
  %2680 = xor i1 %2677, true
  %2681 = zext i1 %2680 to i64
  %2682 = or i64 %2676, %2681
  %2683 = add nsw i32 %2674, -1
  %2684 = icmp eq i32 %2683, 0
  br i1 %2684, label %2685, label %2671

2685:                                             ; preds = %2671
  %2686 = and i64 %2679, 9223372036854775804
  %2687 = icmp ne i64 %2686, 0
  %2688 = zext i1 %2687 to i64
  %2689 = add i64 %2682, %2688
  %2690 = sub i64 0, %2689
  %2691 = icmp slt i32 %2666, 0
  %2692 = select i1 %2691, i64 %2690, i64 %2689
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %35) #8
  %2693 = load i64, ptr %267, align 8
  %2694 = lshr i64 %2693, 63
  br label %2695

2695:                                             ; preds = %2701, %2685
  %2696 = phi i32 [ 62, %2685 ], [ %2702, %2701 ]
  %2697 = zext i32 %2696 to i64
  %2698 = lshr i64 %2693, %2697
  %2699 = and i64 %2698, 1
  %2700 = icmp eq i64 %2699, %2694
  br i1 %2700, label %2701, label %2704

2701:                                             ; preds = %2695
  %2702 = add nsw i32 %2696, -1
  %2703 = icmp eq i32 %2702, 0
  br i1 %2703, label %2704, label %2695

2704:                                             ; preds = %2701, %2695
  %2705 = phi i32 [ 0, %2701 ], [ %2696, %2695 ]
  %2706 = lshr i64 %2692, 63
  br label %2707

2707:                                             ; preds = %2713, %2704
  %2708 = phi i32 [ 62, %2704 ], [ %2714, %2713 ]
  %2709 = zext i32 %2708 to i64
  %2710 = lshr i64 %2692, %2709
  %2711 = and i64 %2710, 1
  %2712 = icmp eq i64 %2711, %2706
  br i1 %2712, label %2713, label %2716

2713:                                             ; preds = %2707
  %2714 = add nsw i32 %2708, -1
  %2715 = icmp eq i32 %2714, 0
  br i1 %2715, label %2716, label %2707

2716:                                             ; preds = %2713, %2707
  %2717 = phi i32 [ 0, %2713 ], [ %2708, %2707 ]
  %2718 = add i32 %2717, %2705
  %2719 = icmp ugt i32 %2718, 61
  br i1 %2719, label %2722, label %2720

2720:                                             ; preds = %2716
  %2721 = mul i64 %2693, %2692
  br label %2739

2722:                                             ; preds = %2716
  %2723 = add i32 %2718, -61
  %2724 = lshr i32 %2723, 1
  %2725 = and i32 %2723, 1
  %2726 = add nuw nsw i32 %2724, %2725
  %2727 = zext i32 %2726 to i64
  %2728 = ashr i64 %2693, %2727
  %2729 = zext i32 %2724 to i64
  %2730 = ashr i64 %2692, %2729
  %2731 = mul i64 %2728, %2730
  %2732 = icmp ugt i32 %2723, 32
  br i1 %2732, label %2733, label %2737

2733:                                             ; preds = %2722
  %2734 = add i32 %2718, -93
  %2735 = zext i32 %2734 to i64
  %2736 = shl i64 %2731, %2735
  br label %2745

2737:                                             ; preds = %2722
  %2738 = icmp eq i32 %2723, 32
  br i1 %2738, label %2745, label %2739

2739:                                             ; preds = %2737, %2720
  %2740 = phi i32 [ 0, %2720 ], [ %2723, %2737 ]
  %2741 = phi i64 [ %2721, %2720 ], [ %2731, %2737 ]
  %2742 = sub nuw nsw i32 32, %2740
  %2743 = zext i32 %2742 to i64
  %2744 = ashr i64 %2741, %2743
  br label %2745

2745:                                             ; preds = %2739, %2737, %2733
  %2746 = phi i64 [ %2736, %2733 ], [ %2744, %2739 ], [ %2731, %2737 ]
  %2747 = icmp eq i64 %2746, 0
  br i1 %2747, label %2754, label %2748

2748:                                             ; preds = %2745
  %2749 = icmp sgt i64 %2746, 0
  %2750 = select i1 %2749, i64 4294967295, i64 -4294967295
  %2751 = add i64 %2750, %2746
  %2752 = lshr i64 %2751, 32
  %2753 = trunc i64 %2752 to i32
  br label %2754

2754:                                             ; preds = %2748, %2745
  %2755 = phi i32 [ %2753, %2748 ], [ 0, %2745 ]
  store i32 %2755, ptr %2511, align 8
  store i32 32, ptr %1344, align 8
  br label %2756

2756:                                             ; preds = %4389, %2754
  store i32 1, ptr %1173, align 4
  br label %2757

2757:                                             ; preds = %4385, %2756
  store i32 1, ptr %1174, align 8
  br label %2758

2758:                                             ; preds = %4381, %2757
  %2759 = load i32, ptr %1344, align 8
  %2760 = call i32 @llvm.abs.i32(i32 %2759, i1 false) #8
  %2761 = zext i32 %2760 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %34) #8
  store i64 0, ptr %34, align 8, !annotation !8
  %2762 = call i64 @div64_u64_rem(i64 noundef %2761, i64 noundef 1, ptr noundef nonnull %34) #8
  %2763 = load i64, ptr %34, align 8
  br label %2764

2764:                                             ; preds = %2764, %2758
  %2765 = phi i64 [ %2763, %2758 ], [ %2772, %2764 ]
  %2766 = phi i64 [ %2762, %2758 ], [ %2774, %2764 ]
  %2767 = phi i32 [ 32, %2758 ], [ %2775, %2764 ]
  %2768 = shl i64 %2765, 1
  %2769 = shl i64 %2766, 1
  %2770 = icmp ne i64 %2768, 0
  %2771 = sext i1 %2770 to i64
  %2772 = add i64 %2768, %2771
  %2773 = zext i1 %2770 to i64
  %2774 = or i64 %2769, %2773
  %2775 = add nsw i32 %2767, -1
  %2776 = icmp eq i32 %2775, 0
  br i1 %2776, label %2777, label %2764

2777:                                             ; preds = %2764
  %2778 = and i64 %2772, 9223372036854775807
  %2779 = icmp ne i64 %2778, 0
  %2780 = zext i1 %2779 to i64
  %2781 = add i64 %2774, %2780
  %2782 = sub i64 0, %2781
  %2783 = icmp slt i32 %2759, 0
  %2784 = select i1 %2783, i64 %2782, i64 %2781
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %34) #8
  %2785 = load i64, ptr %1168, align 8
  %2786 = lshr i64 %2785, 63
  br label %2787

2787:                                             ; preds = %2793, %2777
  %2788 = phi i32 [ 62, %2777 ], [ %2794, %2793 ]
  %2789 = zext i32 %2788 to i64
  %2790 = lshr i64 %2785, %2789
  %2791 = and i64 %2790, 1
  %2792 = icmp eq i64 %2791, %2786
  br i1 %2792, label %2793, label %2796

2793:                                             ; preds = %2787
  %2794 = add nsw i32 %2788, -1
  %2795 = icmp eq i32 %2794, 0
  br i1 %2795, label %2796, label %2787

2796:                                             ; preds = %2793, %2787
  %2797 = phi i32 [ 0, %2793 ], [ %2788, %2787 ]
  %2798 = lshr i64 %2784, 63
  br label %2799

2799:                                             ; preds = %2805, %2796
  %2800 = phi i32 [ 62, %2796 ], [ %2806, %2805 ]
  %2801 = zext i32 %2800 to i64
  %2802 = lshr i64 %2784, %2801
  %2803 = and i64 %2802, 1
  %2804 = icmp eq i64 %2803, %2798
  br i1 %2804, label %2805, label %2808

2805:                                             ; preds = %2799
  %2806 = add nsw i32 %2800, -1
  %2807 = icmp eq i32 %2806, 0
  br i1 %2807, label %2808, label %2799

2808:                                             ; preds = %2805, %2799
  %2809 = phi i32 [ 0, %2805 ], [ %2800, %2799 ]
  %2810 = add i32 %2809, %2797
  %2811 = icmp ugt i32 %2810, 61
  br i1 %2811, label %2814, label %2812

2812:                                             ; preds = %2808
  %2813 = mul i64 %2785, %2784
  br label %2831

2814:                                             ; preds = %2808
  %2815 = add i32 %2810, -61
  %2816 = lshr i32 %2815, 1
  %2817 = and i32 %2815, 1
  %2818 = add nuw nsw i32 %2816, %2817
  %2819 = zext i32 %2818 to i64
  %2820 = ashr i64 %2785, %2819
  %2821 = zext i32 %2816 to i64
  %2822 = ashr i64 %2784, %2821
  %2823 = mul i64 %2820, %2822
  %2824 = icmp ugt i32 %2815, 32
  br i1 %2824, label %2825, label %2829

2825:                                             ; preds = %2814
  %2826 = add i32 %2810, -93
  %2827 = zext i32 %2826 to i64
  %2828 = shl i64 %2823, %2827
  br label %2837

2829:                                             ; preds = %2814
  %2830 = icmp eq i32 %2815, 32
  br i1 %2830, label %2837, label %2831

2831:                                             ; preds = %2829, %2812
  %2832 = phi i32 [ 0, %2812 ], [ %2815, %2829 ]
  %2833 = phi i64 [ %2813, %2812 ], [ %2823, %2829 ]
  %2834 = sub nuw nsw i32 32, %2832
  %2835 = zext i32 %2834 to i64
  %2836 = ashr i64 %2833, %2835
  br label %2837

2837:                                             ; preds = %2831, %2829, %2825
  %2838 = phi i64 [ %2828, %2825 ], [ %2836, %2831 ], [ %2823, %2829 ]
  %2839 = icmp sgt i64 %2838, 0
  %2840 = select i1 %2839, i64 4294967295, i64 -4294967295
  %2841 = add i64 %2840, %2838
  %2842 = lshr i64 %2841, 32
  %2843 = trunc i64 %2842 to i32
  store i32 %2843, ptr %2512, align 8
  %2844 = load i32, ptr %1173, align 4
  %2845 = mul i32 %2844, %2843
  %2846 = load i32, ptr %1174, align 8
  %2847 = add i32 %2843, -1
  %2848 = mul i32 %2847, %2846
  %2849 = add i32 %2848, %2845
  %2850 = add i32 %2846, %2844
  %2851 = call i32 @llvm.abs.i32(i32 %2849, i1 false) #8
  %2852 = zext i32 %2851 to i64
  %2853 = call i32 @llvm.abs.i32(i32 %2850, i1 false) #8
  %2854 = zext i32 %2853 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %33) #8
  store i64 0, ptr %33, align 8, !annotation !8
  %2855 = call i64 @div64_u64_rem(i64 noundef %2852, i64 noundef %2854, ptr noundef nonnull %33) #8
  %2856 = load i64, ptr %33, align 8
  br label %2857

2857:                                             ; preds = %2857, %2837
  %2858 = phi i64 [ %2856, %2837 ], [ %2865, %2857 ]
  %2859 = phi i64 [ %2855, %2837 ], [ %2868, %2857 ]
  %2860 = phi i32 [ 32, %2837 ], [ %2869, %2857 ]
  %2861 = shl i64 %2858, 1
  %2862 = shl i64 %2859, 1
  %2863 = icmp ult i64 %2861, %2854
  %2864 = select i1 %2863, i64 0, i64 %2854
  %2865 = sub i64 %2861, %2864
  %2866 = xor i1 %2863, true
  %2867 = zext i1 %2866 to i64
  %2868 = or i64 %2862, %2867
  %2869 = add nsw i32 %2860, -1
  %2870 = icmp eq i32 %2869, 0
  br i1 %2870, label %2871, label %2857

2871:                                             ; preds = %2857
  %2872 = shl i64 %2865, 1
  %2873 = icmp uge i64 %2872, %2854
  %2874 = zext i1 %2873 to i64
  %2875 = add i64 %2868, %2874
  %2876 = xor i32 %2849, %2850
  %2877 = sub i64 0, %2875
  %2878 = icmp slt i32 %2876, 0
  %2879 = select i1 %2878, i64 %2877, i64 %2875
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %33) #8
  store i64 %2879, ptr %2513, align 8
  %2880 = load i32, ptr %233, align 4
  %2881 = call i32 @llvm.abs.i32(i32 %2880, i1 false) #8
  %2882 = zext i32 %2881 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %32) #8
  store i64 0, ptr %32, align 8, !annotation !8
  %2883 = call i64 @div64_u64_rem(i64 noundef %2882, i64 noundef 8, ptr noundef nonnull %32) #8
  %2884 = load i64, ptr %32, align 8
  br label %2885

2885:                                             ; preds = %2885, %2871
  %2886 = phi i64 [ %2884, %2871 ], [ %2893, %2885 ]
  %2887 = phi i64 [ %2883, %2871 ], [ %2896, %2885 ]
  %2888 = phi i32 [ 32, %2871 ], [ %2897, %2885 ]
  %2889 = shl i64 %2886, 1
  %2890 = shl i64 %2887, 1
  %2891 = icmp ult i64 %2889, 8
  %2892 = select i1 %2891, i64 0, i64 -8
  %2893 = add i64 %2892, %2889
  %2894 = xor i1 %2891, true
  %2895 = zext i1 %2894 to i64
  %2896 = or i64 %2890, %2895
  %2897 = add nsw i32 %2888, -1
  %2898 = icmp eq i32 %2897, 0
  br i1 %2898, label %2899, label %2885

2899:                                             ; preds = %2885
  %2900 = and i64 %2893, 9223372036854775804
  %2901 = icmp ne i64 %2900, 0
  %2902 = zext i1 %2901 to i64
  %2903 = add i64 %2896, %2902
  %2904 = sub i64 0, %2903
  %2905 = icmp slt i32 %2880, 0
  %2906 = select i1 %2905, i64 %2904, i64 %2903
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %32) #8
  %2907 = load i64, ptr %267, align 8
  %2908 = lshr i64 %2907, 63
  br label %2909

2909:                                             ; preds = %2915, %2899
  %2910 = phi i32 [ 62, %2899 ], [ %2916, %2915 ]
  %2911 = zext i32 %2910 to i64
  %2912 = lshr i64 %2907, %2911
  %2913 = and i64 %2912, 1
  %2914 = icmp eq i64 %2913, %2908
  br i1 %2914, label %2915, label %2918

2915:                                             ; preds = %2909
  %2916 = add nsw i32 %2910, -1
  %2917 = icmp eq i32 %2916, 0
  br i1 %2917, label %2918, label %2909

2918:                                             ; preds = %2915, %2909
  %2919 = phi i32 [ 0, %2915 ], [ %2910, %2909 ]
  %2920 = lshr i64 %2906, 63
  br label %2921

2921:                                             ; preds = %2927, %2918
  %2922 = phi i32 [ 62, %2918 ], [ %2928, %2927 ]
  %2923 = zext i32 %2922 to i64
  %2924 = lshr i64 %2906, %2923
  %2925 = and i64 %2924, 1
  %2926 = icmp eq i64 %2925, %2920
  br i1 %2926, label %2927, label %2930

2927:                                             ; preds = %2921
  %2928 = add nsw i32 %2922, -1
  %2929 = icmp eq i32 %2928, 0
  br i1 %2929, label %2930, label %2921

2930:                                             ; preds = %2927, %2921
  %2931 = phi i32 [ 0, %2927 ], [ %2922, %2921 ]
  %2932 = add i32 %2931, %2919
  %2933 = icmp ugt i32 %2932, 61
  br i1 %2933, label %2936, label %2934

2934:                                             ; preds = %2930
  %2935 = mul i64 %2907, %2906
  br label %2953

2936:                                             ; preds = %2930
  %2937 = add i32 %2932, -61
  %2938 = lshr i32 %2937, 1
  %2939 = and i32 %2937, 1
  %2940 = add nuw nsw i32 %2938, %2939
  %2941 = zext i32 %2940 to i64
  %2942 = ashr i64 %2907, %2941
  %2943 = zext i32 %2938 to i64
  %2944 = ashr i64 %2906, %2943
  %2945 = mul i64 %2942, %2944
  %2946 = icmp ugt i32 %2937, 32
  br i1 %2946, label %2947, label %2951

2947:                                             ; preds = %2936
  %2948 = add i32 %2932, -93
  %2949 = zext i32 %2948 to i64
  %2950 = shl i64 %2945, %2949
  br label %2959

2951:                                             ; preds = %2936
  %2952 = icmp eq i32 %2937, 32
  br i1 %2952, label %2959, label %2953

2953:                                             ; preds = %2951, %2934
  %2954 = phi i32 [ 0, %2934 ], [ %2937, %2951 ]
  %2955 = phi i64 [ %2935, %2934 ], [ %2945, %2951 ]
  %2956 = sub nuw nsw i32 32, %2954
  %2957 = zext i32 %2956 to i64
  %2958 = ashr i64 %2955, %2957
  br label %2959

2959:                                             ; preds = %2953, %2951, %2947
  %2960 = phi i64 [ %2950, %2947 ], [ %2958, %2953 ], [ %2945, %2951 ]
  %2961 = load i64, ptr %2513, align 8
  %2962 = lshr i64 %2960, 63
  br label %2963

2963:                                             ; preds = %2969, %2959
  %2964 = phi i32 [ 62, %2959 ], [ %2970, %2969 ]
  %2965 = zext i32 %2964 to i64
  %2966 = lshr i64 %2960, %2965
  %2967 = and i64 %2966, 1
  %2968 = icmp eq i64 %2967, %2962
  br i1 %2968, label %2969, label %2972

2969:                                             ; preds = %2963
  %2970 = add nsw i32 %2964, -1
  %2971 = icmp eq i32 %2970, 0
  br i1 %2971, label %2972, label %2963

2972:                                             ; preds = %2969, %2963
  %2973 = phi i32 [ 0, %2969 ], [ %2964, %2963 ]
  %2974 = sub i32 62, %2973
  %2975 = zext i32 %2974 to i64
  %2976 = shl i64 %2960, %2975
  %2977 = icmp ult i32 %2974, 32
  %2978 = add i32 %2973, -30
  %2979 = select i1 %2977, i32 %2978, i32 0
  %2980 = zext i32 %2979 to i64
  %2981 = ashr i64 %2961, %2980
  %2982 = call i64 @div64_s64(i64 noundef %2976, i64 noundef %2981) #8
  %2983 = icmp ugt i32 %2974, 32
  %2984 = sub i32 30, %2973
  %2985 = select i1 %2983, i32 %2984, i32 0
  %2986 = zext i32 %2985 to i64
  %2987 = ashr i64 %2982, %2986
  %2988 = lshr i64 %2987, 32
  %2989 = trunc i64 %2988 to i32
  %2990 = and i64 %2987, 4294967295
  %2991 = icmp ugt i64 %2990, 4294963200
  %2992 = zext i1 %2991 to i32
  %2993 = add i32 %2992, %2989
  store i32 %2993, ptr %1692, align 8
  %2994 = call i32 @llvm.abs.i32(i32 %2993, i1 false) #8
  %2995 = zext i32 %2994 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %31) #8
  store i64 0, ptr %31, align 8, !annotation !8
  %2996 = call i64 @div64_u64_rem(i64 noundef %2995, i64 noundef 1, ptr noundef nonnull %31) #8
  %2997 = load i64, ptr %31, align 8
  br label %2998

2998:                                             ; preds = %2998, %2972
  %2999 = phi i64 [ %2997, %2972 ], [ %3006, %2998 ]
  %3000 = phi i64 [ %2996, %2972 ], [ %3008, %2998 ]
  %3001 = phi i32 [ 32, %2972 ], [ %3009, %2998 ]
  %3002 = shl i64 %2999, 1
  %3003 = shl i64 %3000, 1
  %3004 = icmp ne i64 %3002, 0
  %3005 = sext i1 %3004 to i64
  %3006 = add i64 %3002, %3005
  %3007 = zext i1 %3004 to i64
  %3008 = or i64 %3003, %3007
  %3009 = add nsw i32 %3001, -1
  %3010 = icmp eq i32 %3009, 0
  br i1 %3010, label %3011, label %2998

3011:                                             ; preds = %2998
  %3012 = and i64 %3006, 9223372036854775807
  %3013 = icmp ne i64 %3012, 0
  %3014 = zext i1 %3013 to i64
  %3015 = add i64 %3008, %3014
  %3016 = sub i64 0, %3015
  %3017 = icmp slt i32 %2993, 0
  %3018 = select i1 %3017, i64 %3016, i64 %3015
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %31) #8
  %3019 = load i64, ptr %2513, align 8
  %3020 = lshr i64 %3018, 63
  br label %3021

3021:                                             ; preds = %3027, %3011
  %3022 = phi i32 [ 62, %3011 ], [ %3028, %3027 ]
  %3023 = zext i32 %3022 to i64
  %3024 = lshr i64 %3018, %3023
  %3025 = and i64 %3024, 1
  %3026 = icmp eq i64 %3025, %3020
  br i1 %3026, label %3027, label %3030

3027:                                             ; preds = %3021
  %3028 = add nsw i32 %3022, -1
  %3029 = icmp eq i32 %3028, 0
  br i1 %3029, label %3030, label %3021

3030:                                             ; preds = %3027, %3021
  %3031 = phi i32 [ 0, %3027 ], [ %3022, %3021 ]
  %3032 = lshr i64 %3019, 63
  br label %3033

3033:                                             ; preds = %3039, %3030
  %3034 = phi i32 [ 62, %3030 ], [ %3040, %3039 ]
  %3035 = zext i32 %3034 to i64
  %3036 = lshr i64 %3019, %3035
  %3037 = and i64 %3036, 1
  %3038 = icmp eq i64 %3037, %3032
  br i1 %3038, label %3039, label %3042

3039:                                             ; preds = %3033
  %3040 = add nsw i32 %3034, -1
  %3041 = icmp eq i32 %3040, 0
  br i1 %3041, label %3042, label %3033

3042:                                             ; preds = %3039, %3033
  %3043 = phi i32 [ 0, %3039 ], [ %3034, %3033 ]
  %3044 = add i32 %3043, %3031
  %3045 = icmp ugt i32 %3044, 61
  br i1 %3045, label %3048, label %3046

3046:                                             ; preds = %3042
  %3047 = mul i64 %3019, %3018
  br label %3065

3048:                                             ; preds = %3042
  %3049 = add i32 %3044, -61
  %3050 = lshr i32 %3049, 1
  %3051 = and i32 %3049, 1
  %3052 = add nuw nsw i32 %3050, %3051
  %3053 = zext i32 %3052 to i64
  %3054 = ashr i64 %3018, %3053
  %3055 = zext i32 %3050 to i64
  %3056 = ashr i64 %3019, %3055
  %3057 = mul i64 %3054, %3056
  %3058 = icmp ugt i32 %3049, 32
  br i1 %3058, label %3059, label %3063

3059:                                             ; preds = %3048
  %3060 = add i32 %3044, -93
  %3061 = zext i32 %3060 to i64
  %3062 = shl i64 %3057, %3061
  br label %3071

3063:                                             ; preds = %3048
  %3064 = icmp eq i32 %3049, 32
  br i1 %3064, label %3071, label %3065

3065:                                             ; preds = %3063, %3046
  %3066 = phi i32 [ 0, %3046 ], [ %3049, %3063 ]
  %3067 = phi i64 [ %3047, %3046 ], [ %3057, %3063 ]
  %3068 = sub nuw nsw i32 32, %3066
  %3069 = zext i32 %3068 to i64
  %3070 = ashr i64 %3067, %3069
  br label %3071

3071:                                             ; preds = %3065, %3063, %3059
  %3072 = phi i64 [ %3062, %3059 ], [ %3070, %3065 ], [ %3057, %3063 ]
  %3073 = load i32, ptr %2511, align 8
  %3074 = call i32 @llvm.abs.i32(i32 %3073, i1 false) #8
  %3075 = zext i32 %3074 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %30) #8
  store i64 0, ptr %30, align 8, !annotation !8
  %3076 = call i64 @div64_u64_rem(i64 noundef %3075, i64 noundef 1, ptr noundef nonnull %30) #8
  %3077 = load i64, ptr %30, align 8
  br label %3078

3078:                                             ; preds = %3078, %3071
  %3079 = phi i64 [ %3077, %3071 ], [ %3086, %3078 ]
  %3080 = phi i64 [ %3076, %3071 ], [ %3088, %3078 ]
  %3081 = phi i32 [ 32, %3071 ], [ %3089, %3078 ]
  %3082 = shl i64 %3079, 1
  %3083 = shl i64 %3080, 1
  %3084 = icmp ne i64 %3082, 0
  %3085 = sext i1 %3084 to i64
  %3086 = add i64 %3082, %3085
  %3087 = zext i1 %3084 to i64
  %3088 = or i64 %3083, %3087
  %3089 = add nsw i32 %3081, -1
  %3090 = icmp eq i32 %3089, 0
  br i1 %3090, label %3091, label %3078

3091:                                             ; preds = %3078
  %3092 = and i64 %3086, 9223372036854775807
  %3093 = icmp ne i64 %3092, 0
  %3094 = zext i1 %3093 to i64
  %3095 = add i64 %3088, %3094
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %30) #8
  %3096 = load i32, ptr %230, align 8
  %3097 = call i32 @llvm.abs.i32(i32 %3096, i1 false) #8
  %3098 = zext i32 %3097 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %29) #8
  store i64 0, ptr %29, align 8, !annotation !8
  %3099 = call i64 @div64_u64_rem(i64 noundef %3098, i64 noundef 1, ptr noundef nonnull %29) #8
  %3100 = load i64, ptr %29, align 8
  br label %3101

3101:                                             ; preds = %3101, %3091
  %3102 = phi i64 [ %3100, %3091 ], [ %3109, %3101 ]
  %3103 = phi i64 [ %3099, %3091 ], [ %3111, %3101 ]
  %3104 = phi i32 [ 32, %3091 ], [ %3112, %3101 ]
  %3105 = shl i64 %3102, 1
  %3106 = shl i64 %3103, 1
  %3107 = icmp ne i64 %3105, 0
  %3108 = sext i1 %3107 to i64
  %3109 = add i64 %3105, %3108
  %3110 = zext i1 %3107 to i64
  %3111 = or i64 %3106, %3110
  %3112 = add nsw i32 %3104, -1
  %3113 = icmp eq i32 %3112, 0
  br i1 %3113, label %3114, label %3101

3114:                                             ; preds = %3101
  %3115 = icmp slt i32 %3073, 0
  %3116 = sub i64 0, %3095
  %3117 = select i1 %3115, i64 %3116, i64 %3095
  %3118 = sub i64 %3117, %3072
  %3119 = and i64 %3109, 9223372036854775807
  %3120 = icmp ne i64 %3119, 0
  %3121 = zext i1 %3120 to i64
  %3122 = add i64 %3111, %3121
  %3123 = sub i64 0, %3122
  %3124 = icmp slt i32 %3096, 0
  %3125 = select i1 %3124, i64 %3123, i64 %3122
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %29) #8
  %3126 = lshr i64 %3118, 63
  br label %3127

3127:                                             ; preds = %3133, %3114
  %3128 = phi i32 [ 62, %3114 ], [ %3134, %3133 ]
  %3129 = zext i32 %3128 to i64
  %3130 = lshr i64 %3118, %3129
  %3131 = and i64 %3130, 1
  %3132 = icmp eq i64 %3131, %3126
  br i1 %3132, label %3133, label %3136

3133:                                             ; preds = %3127
  %3134 = add nsw i32 %3128, -1
  %3135 = icmp eq i32 %3134, 0
  br i1 %3135, label %3136, label %3127

3136:                                             ; preds = %3133, %3127
  %3137 = phi i32 [ 0, %3133 ], [ %3128, %3127 ]
  %3138 = sub i32 62, %3137
  %3139 = zext i32 %3138 to i64
  %3140 = shl i64 %3118, %3139
  %3141 = icmp ult i32 %3138, 32
  %3142 = add i32 %3137, -30
  %3143 = select i1 %3141, i32 %3142, i32 0
  %3144 = zext i32 %3143 to i64
  %3145 = ashr i64 %3125, %3144
  %3146 = call i64 @div64_s64(i64 noundef %3140, i64 noundef %3145) #8
  %3147 = icmp ugt i32 %3138, 32
  %3148 = sub i32 30, %3137
  %3149 = select i1 %3147, i32 %3148, i32 0
  %3150 = zext i32 %3149 to i64
  %3151 = ashr i64 %3146, %3150
  store i64 %3151, ptr %2514, align 8
  %3152 = load i32, ptr %1344, align 8
  %3153 = call i32 @llvm.abs.i32(i32 %3152, i1 false) #8
  %3154 = zext i32 %3153 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %28) #8
  store i64 0, ptr %28, align 8, !annotation !8
  %3155 = call i64 @div64_u64_rem(i64 noundef %3154, i64 noundef 1, ptr noundef nonnull %28) #8
  %3156 = load i64, ptr %28, align 8
  br label %3157

3157:                                             ; preds = %3157, %3136
  %3158 = phi i64 [ %3156, %3136 ], [ %3165, %3157 ]
  %3159 = phi i64 [ %3155, %3136 ], [ %3167, %3157 ]
  %3160 = phi i32 [ 32, %3136 ], [ %3168, %3157 ]
  %3161 = shl i64 %3158, 1
  %3162 = shl i64 %3159, 1
  %3163 = icmp ne i64 %3161, 0
  %3164 = sext i1 %3163 to i64
  %3165 = add i64 %3161, %3164
  %3166 = zext i1 %3163 to i64
  %3167 = or i64 %3162, %3166
  %3168 = add nsw i32 %3160, -1
  %3169 = icmp eq i32 %3168, 0
  br i1 %3169, label %3170, label %3157

3170:                                             ; preds = %3157
  %3171 = and i64 %3165, 9223372036854775807
  %3172 = icmp ne i64 %3171, 0
  %3173 = zext i1 %3172 to i64
  %3174 = add i64 %3167, %3173
  %3175 = sub i64 0, %3174
  %3176 = icmp slt i32 %3152, 0
  %3177 = select i1 %3176, i64 %3175, i64 %3174
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %28) #8
  %3178 = load i64, ptr %2514, align 8
  %3179 = lshr i64 %3178, 63
  br label %3180

3180:                                             ; preds = %3186, %3170
  %3181 = phi i32 [ 62, %3170 ], [ %3187, %3186 ]
  %3182 = zext i32 %3181 to i64
  %3183 = lshr i64 %3178, %3182
  %3184 = and i64 %3183, 1
  %3185 = icmp eq i64 %3184, %3179
  br i1 %3185, label %3186, label %3189

3186:                                             ; preds = %3180
  %3187 = add nsw i32 %3181, -1
  %3188 = icmp eq i32 %3187, 0
  br i1 %3188, label %3189, label %3180

3189:                                             ; preds = %3186, %3180
  %3190 = phi i32 [ 0, %3186 ], [ %3181, %3180 ]
  %3191 = sub i32 62, %3190
  %3192 = zext i32 %3191 to i64
  %3193 = shl i64 %3178, %3192
  %3194 = icmp ult i32 %3191, 32
  %3195 = add i32 %3190, -30
  %3196 = select i1 %3194, i32 %3195, i32 0
  %3197 = zext i32 %3196 to i64
  %3198 = ashr i64 %3177, %3197
  %3199 = call i64 @div64_s64(i64 noundef %3193, i64 noundef %3198) #8
  %3200 = icmp ugt i32 %3191, 32
  %3201 = sub i32 30, %3190
  %3202 = select i1 %3200, i32 %3201, i32 0
  %3203 = zext i32 %3202 to i64
  %3204 = ashr i64 %3199, %3203
  store i64 %3204, ptr %2515, align 8
  %3205 = load i64, ptr %2514, align 8
  %3206 = icmp ne i64 %3205, 0
  %3207 = zext i1 %3206 to i32
  store i32 %3207, ptr %2516, align 4
  %3208 = load i32, ptr %1692, align 8
  %3209 = load i32, ptr %230, align 8
  %3210 = call i32 @llvm.abs.i32(i32 %3208, i1 false) #8
  %3211 = zext i32 %3210 to i64
  %3212 = call i32 @llvm.abs.i32(i32 %3209, i1 false) #8
  %3213 = zext i32 %3212 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %27) #8
  store i64 0, ptr %27, align 8, !annotation !8
  %3214 = call i64 @div64_u64_rem(i64 noundef %3211, i64 noundef %3213, ptr noundef nonnull %27) #8
  %3215 = load i64, ptr %27, align 8
  br label %3216

3216:                                             ; preds = %3216, %3189
  %3217 = phi i64 [ %3215, %3189 ], [ %3224, %3216 ]
  %3218 = phi i64 [ %3214, %3189 ], [ %3227, %3216 ]
  %3219 = phi i32 [ 32, %3189 ], [ %3228, %3216 ]
  %3220 = shl i64 %3217, 1
  %3221 = shl i64 %3218, 1
  %3222 = icmp ult i64 %3220, %3213
  %3223 = select i1 %3222, i64 0, i64 %3213
  %3224 = sub i64 %3220, %3223
  %3225 = xor i1 %3222, true
  %3226 = zext i1 %3225 to i64
  %3227 = or i64 %3221, %3226
  %3228 = add nsw i32 %3219, -1
  %3229 = icmp eq i32 %3228, 0
  br i1 %3229, label %3230, label %3216

3230:                                             ; preds = %3216
  %3231 = shl i64 %3224, 1
  %3232 = icmp uge i64 %3231, %3213
  %3233 = zext i1 %3232 to i64
  %3234 = add i64 %3227, %3233
  %3235 = xor i32 %3209, %3208
  %3236 = sub i64 0, %3234
  %3237 = icmp slt i32 %3235, 0
  %3238 = select i1 %3237, i64 %3236, i64 %3234
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %27) #8
  %3239 = lshr i64 %3238, 32
  %3240 = trunc i64 %3239 to i32
  store i32 %3240, ptr %2517, align 4
  %3241 = load i32, ptr %1173, align 4
  %3242 = load i32, ptr %1174, align 8
  %3243 = add i32 %3242, %3241
  %3244 = sdiv i32 %3240, %3243
  store i32 %3244, ptr %2518, align 8
  %3245 = mul i32 %3244, %3243
  %3246 = sub i32 %3240, %3245
  store i32 %3246, ptr %2519, align 4
  %3247 = sub i32 %3246, %3241
  %3248 = icmp sgt i32 %3247, 0
  %3249 = select i1 %3248, i32 %3241, i32 %3246
  %3250 = call i32 @llvm.smax.i32(i32 %3247, i32 0) #8
  store i32 %3249, ptr %2520, align 8
  store i32 %3250, ptr %2521, align 4
  %3251 = load i32, ptr %2512, align 8
  %3252 = mul i32 %3251, %3241
  %3253 = add i32 %3251, -1
  %3254 = mul i32 %3253, %3242
  %3255 = add i32 %3254, %3252
  %3256 = mul i32 %3255, %3244
  %3257 = mul i32 %3249, %3251
  %3258 = mul i32 %3253, %3250
  %3259 = add i32 %3258, %3257
  %3260 = add i32 %3259, %3256
  %3261 = call i32 @llvm.abs.i32(i32 %3260, i1 false) #8
  %3262 = zext i32 %3261 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %26) #8
  store i64 0, ptr %26, align 8, !annotation !8
  %3263 = call i64 @div64_u64_rem(i64 noundef %3262, i64 noundef 1, ptr noundef nonnull %26) #8
  %3264 = load i64, ptr %26, align 8
  br label %3265

3265:                                             ; preds = %3265, %3230
  %3266 = phi i64 [ %3264, %3230 ], [ %3273, %3265 ]
  %3267 = phi i64 [ %3263, %3230 ], [ %3275, %3265 ]
  %3268 = phi i32 [ 32, %3230 ], [ %3276, %3265 ]
  %3269 = shl i64 %3266, 1
  %3270 = shl i64 %3267, 1
  %3271 = icmp ne i64 %3269, 0
  %3272 = sext i1 %3271 to i64
  %3273 = add i64 %3269, %3272
  %3274 = zext i1 %3271 to i64
  %3275 = or i64 %3270, %3274
  %3276 = add nsw i32 %3268, -1
  %3277 = icmp eq i32 %3276, 0
  br i1 %3277, label %3278, label %3265

3278:                                             ; preds = %3265
  %3279 = and i64 %3273, 9223372036854775807
  %3280 = icmp ne i64 %3279, 0
  %3281 = zext i1 %3280 to i64
  %3282 = add i64 %3275, %3281
  %3283 = sub i64 0, %3282
  %3284 = icmp slt i32 %3260, 0
  %3285 = select i1 %3284, i64 %3283, i64 %3282
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %26) #8
  store i64 %3285, ptr %2522, align 8
  %3286 = load i32, ptr %2516, align 4
  %3287 = icmp eq i32 %3286, 0
  br i1 %3287, label %3329, label %3288

3288:                                             ; preds = %3278
  %3289 = load i64, ptr %2514, align 8
  %3290 = load i32, ptr %2517, align 4
  %3291 = call i32 @llvm.abs.i32(i32 %3290, i1 false) #8
  %3292 = zext i32 %3291 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %25) #8
  store i64 0, ptr %25, align 8, !annotation !8
  %3293 = call i64 @div64_u64_rem(i64 noundef %3292, i64 noundef 1, ptr noundef nonnull %25) #8
  %3294 = load i64, ptr %25, align 8
  br label %3295

3295:                                             ; preds = %3295, %3288
  %3296 = phi i64 [ %3294, %3288 ], [ %3303, %3295 ]
  %3297 = phi i64 [ %3293, %3288 ], [ %3305, %3295 ]
  %3298 = phi i32 [ 32, %3288 ], [ %3306, %3295 ]
  %3299 = shl i64 %3296, 1
  %3300 = shl i64 %3297, 1
  %3301 = icmp ne i64 %3299, 0
  %3302 = sext i1 %3301 to i64
  %3303 = add i64 %3299, %3302
  %3304 = zext i1 %3301 to i64
  %3305 = or i64 %3300, %3304
  %3306 = add nsw i32 %3298, -1
  %3307 = icmp eq i32 %3306, 0
  br i1 %3307, label %3308, label %3295

3308:                                             ; preds = %3295
  %3309 = add i64 %3289, %3285
  %3310 = and i64 %3303, 9223372036854775807
  %3311 = icmp ne i64 %3310, 0
  %3312 = zext i1 %3311 to i64
  %3313 = add i64 %3305, %3312
  %3314 = sub i64 0, %3313
  %3315 = icmp slt i32 %3290, 0
  %3316 = select i1 %3315, i64 %3314, i64 %3313
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %25) #8
  %3317 = load i64, ptr %2515, align 8
  %3318 = add i64 %3317, %3316
  %3319 = lshr i64 %3309, 63
  br label %3320

3320:                                             ; preds = %3326, %3308
  %3321 = phi i32 [ 62, %3308 ], [ %3327, %3326 ]
  %3322 = zext i32 %3321 to i64
  %3323 = lshr i64 %3309, %3322
  %3324 = and i64 %3323, 1
  %3325 = icmp eq i64 %3324, %3319
  br i1 %3325, label %3326, label %3367

3326:                                             ; preds = %3320
  %3327 = add nsw i32 %3321, -1
  %3328 = icmp eq i32 %3327, 0
  br i1 %3328, label %3367, label %3320

3329:                                             ; preds = %3278
  %3330 = load i32, ptr %2517, align 4
  %3331 = call i32 @llvm.abs.i32(i32 %3330, i1 false) #8
  %3332 = zext i32 %3331 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %24) #8
  store i64 0, ptr %24, align 8, !annotation !8
  %3333 = call i64 @div64_u64_rem(i64 noundef %3332, i64 noundef 1, ptr noundef nonnull %24) #8
  %3334 = load i64, ptr %24, align 8
  br label %3335

3335:                                             ; preds = %3335, %3329
  %3336 = phi i64 [ %3334, %3329 ], [ %3343, %3335 ]
  %3337 = phi i64 [ %3333, %3329 ], [ %3345, %3335 ]
  %3338 = phi i32 [ 32, %3329 ], [ %3346, %3335 ]
  %3339 = shl i64 %3336, 1
  %3340 = shl i64 %3337, 1
  %3341 = icmp ne i64 %3339, 0
  %3342 = sext i1 %3341 to i64
  %3343 = add i64 %3339, %3342
  %3344 = zext i1 %3341 to i64
  %3345 = or i64 %3340, %3344
  %3346 = add nsw i32 %3338, -1
  %3347 = icmp eq i32 %3346, 0
  br i1 %3347, label %3348, label %3335

3348:                                             ; preds = %3335
  %3349 = and i64 %3343, 9223372036854775807
  %3350 = icmp ne i64 %3349, 0
  %3351 = zext i1 %3350 to i64
  %3352 = add i64 %3345, %3351
  %3353 = sub i64 0, %3352
  %3354 = icmp slt i32 %3330, 0
  %3355 = select i1 %3354, i64 %3353, i64 %3352
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %24) #8
  %3356 = load i64, ptr %2522, align 8
  %3357 = lshr i64 %3356, 63
  br label %3358

3358:                                             ; preds = %3364, %3348
  %3359 = phi i32 [ 62, %3348 ], [ %3365, %3364 ]
  %3360 = zext i32 %3359 to i64
  %3361 = lshr i64 %3356, %3360
  %3362 = and i64 %3361, 1
  %3363 = icmp eq i64 %3362, %3357
  br i1 %3363, label %3364, label %3367

3364:                                             ; preds = %3358
  %3365 = add nsw i32 %3359, -1
  %3366 = icmp eq i32 %3365, 0
  br i1 %3366, label %3367, label %3358

3367:                                             ; preds = %3364, %3358, %3326, %3320
  %3368 = phi i32 [ %3359, %3358 ], [ 0, %3364 ], [ %3321, %3320 ], [ 0, %3326 ]
  %3369 = phi i64 [ %3356, %3358 ], [ %3356, %3364 ], [ %3309, %3320 ], [ %3309, %3326 ]
  %3370 = phi i64 [ %3355, %3358 ], [ %3355, %3364 ], [ %3318, %3320 ], [ %3318, %3326 ]
  %3371 = sub i32 62, %3368
  %3372 = zext i32 %3371 to i64
  %3373 = shl i64 %3369, %3372
  %3374 = icmp ult i32 %3371, 32
  %3375 = add i32 %3368, -30
  %3376 = select i1 %3374, i32 %3375, i32 0
  %3377 = zext i32 %3376 to i64
  %3378 = ashr i64 %3370, %3377
  %3379 = call i64 @div64_s64(i64 noundef %3373, i64 noundef %3378) #8
  %3380 = icmp ugt i32 %3371, 32
  %3381 = sub i32 30, %3368
  %3382 = select i1 %3380, i32 %3381, i32 0
  %3383 = zext i32 %3382 to i64
  %3384 = ashr i64 %3379, %3383
  store i64 %3384, ptr %2523, align 8
  %3385 = load i32, ptr %1344, align 8
  %3386 = call i32 @llvm.abs.i32(i32 %3385, i1 false) #8
  %3387 = zext i32 %3386 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %23) #8
  store i64 0, ptr %23, align 8, !annotation !8
  %3388 = call i64 @div64_u64_rem(i64 noundef %3387, i64 noundef 1, ptr noundef nonnull %23) #8
  %3389 = load i64, ptr %23, align 8
  br label %3390

3390:                                             ; preds = %3390, %3367
  %3391 = phi i64 [ %3389, %3367 ], [ %3398, %3390 ]
  %3392 = phi i64 [ %3388, %3367 ], [ %3400, %3390 ]
  %3393 = phi i32 [ 32, %3367 ], [ %3401, %3390 ]
  %3394 = shl i64 %3391, 1
  %3395 = shl i64 %3392, 1
  %3396 = icmp ne i64 %3394, 0
  %3397 = sext i1 %3396 to i64
  %3398 = add i64 %3394, %3397
  %3399 = zext i1 %3396 to i64
  %3400 = or i64 %3395, %3399
  %3401 = add nsw i32 %3393, -1
  %3402 = icmp eq i32 %3401, 0
  br i1 %3402, label %3403, label %3390

3403:                                             ; preds = %3390
  %3404 = and i64 %3398, 9223372036854775807
  %3405 = icmp ne i64 %3404, 0
  %3406 = zext i1 %3405 to i64
  %3407 = add i64 %3400, %3406
  %3408 = sub i64 0, %3407
  %3409 = icmp slt i32 %3385, 0
  %3410 = select i1 %3409, i64 %3408, i64 %3407
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %23) #8
  %3411 = load i64, ptr %1168, align 8
  %3412 = lshr i64 %3411, 63
  br label %3413

3413:                                             ; preds = %3419, %3403
  %3414 = phi i32 [ 62, %3403 ], [ %3420, %3419 ]
  %3415 = zext i32 %3414 to i64
  %3416 = lshr i64 %3411, %3415
  %3417 = and i64 %3416, 1
  %3418 = icmp eq i64 %3417, %3412
  br i1 %3418, label %3419, label %3422

3419:                                             ; preds = %3413
  %3420 = add nsw i32 %3414, -1
  %3421 = icmp eq i32 %3420, 0
  br i1 %3421, label %3422, label %3413

3422:                                             ; preds = %3419, %3413
  %3423 = phi i32 [ 0, %3419 ], [ %3414, %3413 ]
  %3424 = lshr i64 %3410, 63
  br label %3425

3425:                                             ; preds = %3431, %3422
  %3426 = phi i32 [ 62, %3422 ], [ %3432, %3431 ]
  %3427 = zext i32 %3426 to i64
  %3428 = lshr i64 %3410, %3427
  %3429 = and i64 %3428, 1
  %3430 = icmp eq i64 %3429, %3424
  br i1 %3430, label %3431, label %3434

3431:                                             ; preds = %3425
  %3432 = add nsw i32 %3426, -1
  %3433 = icmp eq i32 %3432, 0
  br i1 %3433, label %3434, label %3425

3434:                                             ; preds = %3431, %3425
  %3435 = phi i32 [ 0, %3431 ], [ %3426, %3425 ]
  %3436 = add i32 %3435, %3423
  %3437 = icmp ugt i32 %3436, 61
  br i1 %3437, label %3440, label %3438

3438:                                             ; preds = %3434
  %3439 = mul i64 %3411, %3410
  br label %3457

3440:                                             ; preds = %3434
  %3441 = add i32 %3436, -61
  %3442 = lshr i32 %3441, 1
  %3443 = and i32 %3441, 1
  %3444 = add nuw nsw i32 %3442, %3443
  %3445 = zext i32 %3444 to i64
  %3446 = ashr i64 %3411, %3445
  %3447 = zext i32 %3442 to i64
  %3448 = ashr i64 %3410, %3447
  %3449 = mul i64 %3446, %3448
  %3450 = icmp ugt i32 %3441, 32
  br i1 %3450, label %3451, label %3455

3451:                                             ; preds = %3440
  %3452 = add i32 %3436, -93
  %3453 = zext i32 %3452 to i64
  %3454 = shl i64 %3449, %3453
  br label %3463

3455:                                             ; preds = %3440
  %3456 = icmp eq i32 %3441, 32
  br i1 %3456, label %3463, label %3457

3457:                                             ; preds = %3455, %3438
  %3458 = phi i32 [ 0, %3438 ], [ %3441, %3455 ]
  %3459 = phi i64 [ %3439, %3438 ], [ %3449, %3455 ]
  %3460 = sub nuw nsw i32 32, %3458
  %3461 = zext i32 %3460 to i64
  %3462 = ashr i64 %3459, %3461
  br label %3463

3463:                                             ; preds = %3457, %3455, %3451
  %3464 = phi i64 [ %3454, %3451 ], [ %3462, %3457 ], [ %3449, %3455 ]
  %3465 = load i64, ptr %2523, align 8
  %3466 = sub i64 %3465, %3464
  store i64 %3466, ptr %1201, align 8
  %3467 = load i32, ptr %1344, align 8
  %3468 = call i32 @llvm.abs.i32(i32 %3467, i1 false) #8
  %3469 = zext i32 %3468 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %22) #8
  store i64 0, ptr %22, align 8, !annotation !8
  %3470 = call i64 @div64_u64_rem(i64 noundef %3469, i64 noundef 1, ptr noundef nonnull %22) #8
  %3471 = load i64, ptr %22, align 8
  br label %3472

3472:                                             ; preds = %3472, %3463
  %3473 = phi i64 [ %3471, %3463 ], [ %3480, %3472 ]
  %3474 = phi i64 [ %3470, %3463 ], [ %3482, %3472 ]
  %3475 = phi i32 [ 32, %3463 ], [ %3483, %3472 ]
  %3476 = shl i64 %3473, 1
  %3477 = shl i64 %3474, 1
  %3478 = icmp ne i64 %3476, 0
  %3479 = sext i1 %3478 to i64
  %3480 = add i64 %3476, %3479
  %3481 = zext i1 %3478 to i64
  %3482 = or i64 %3477, %3481
  %3483 = add nsw i32 %3475, -1
  %3484 = icmp eq i32 %3483, 0
  br i1 %3484, label %3485, label %3472

3485:                                             ; preds = %3472
  %3486 = and i64 %3480, 9223372036854775807
  %3487 = icmp ne i64 %3486, 0
  %3488 = zext i1 %3487 to i64
  %3489 = add i64 %3482, %3488
  %3490 = sub i64 0, %3489
  %3491 = icmp slt i32 %3467, 0
  %3492 = select i1 %3491, i64 %3490, i64 %3489
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %22) #8
  %3493 = load i64, ptr %1168, align 8
  %3494 = lshr i64 %3493, 63
  br label %3495

3495:                                             ; preds = %3501, %3485
  %3496 = phi i32 [ 62, %3485 ], [ %3502, %3501 ]
  %3497 = zext i32 %3496 to i64
  %3498 = lshr i64 %3493, %3497
  %3499 = and i64 %3498, 1
  %3500 = icmp eq i64 %3499, %3494
  br i1 %3500, label %3501, label %3504

3501:                                             ; preds = %3495
  %3502 = add nsw i32 %3496, -1
  %3503 = icmp eq i32 %3502, 0
  br i1 %3503, label %3504, label %3495

3504:                                             ; preds = %3501, %3495
  %3505 = phi i32 [ 0, %3501 ], [ %3496, %3495 ]
  %3506 = lshr i64 %3492, 63
  br label %3507

3507:                                             ; preds = %3513, %3504
  %3508 = phi i32 [ 62, %3504 ], [ %3514, %3513 ]
  %3509 = zext i32 %3508 to i64
  %3510 = lshr i64 %3492, %3509
  %3511 = and i64 %3510, 1
  %3512 = icmp eq i64 %3511, %3506
  br i1 %3512, label %3513, label %3516

3513:                                             ; preds = %3507
  %3514 = add nsw i32 %3508, -1
  %3515 = icmp eq i32 %3514, 0
  br i1 %3515, label %3516, label %3507

3516:                                             ; preds = %3513, %3507
  %3517 = phi i32 [ 0, %3513 ], [ %3508, %3507 ]
  %3518 = add i32 %3517, %3505
  %3519 = icmp ugt i32 %3518, 61
  br i1 %3519, label %3522, label %3520

3520:                                             ; preds = %3516
  %3521 = mul i64 %3493, %3492
  br label %3539

3522:                                             ; preds = %3516
  %3523 = add i32 %3518, -61
  %3524 = lshr i32 %3523, 1
  %3525 = and i32 %3523, 1
  %3526 = add nuw nsw i32 %3524, %3525
  %3527 = zext i32 %3526 to i64
  %3528 = ashr i64 %3493, %3527
  %3529 = zext i32 %3524 to i64
  %3530 = ashr i64 %3492, %3529
  %3531 = mul i64 %3528, %3530
  %3532 = icmp ugt i32 %3523, 32
  br i1 %3532, label %3533, label %3537

3533:                                             ; preds = %3522
  %3534 = add i32 %3518, -93
  %3535 = zext i32 %3534 to i64
  %3536 = shl i64 %3531, %3535
  br label %3545

3537:                                             ; preds = %3522
  %3538 = icmp eq i32 %3523, 32
  br i1 %3538, label %3545, label %3539

3539:                                             ; preds = %3537, %3520
  %3540 = phi i32 [ 0, %3520 ], [ %3523, %3537 ]
  %3541 = phi i64 [ %3521, %3520 ], [ %3531, %3537 ]
  %3542 = sub nuw nsw i32 32, %3540
  %3543 = zext i32 %3542 to i64
  %3544 = ashr i64 %3541, %3543
  br label %3545

3545:                                             ; preds = %3539, %3537, %3533
  %3546 = phi i64 [ %3536, %3533 ], [ %3544, %3539 ], [ %3531, %3537 ]
  %3547 = load i64, ptr %2513, align 8
  %3548 = sub i64 %3547, %3546
  store i64 %3548, ptr %1200, align 8
  %3549 = load i32, ptr %1692, align 8
  %3550 = load i32, ptr %230, align 8
  %3551 = srem i32 %3549, %3550
  %3552 = icmp eq i32 %3551, 0
  %3553 = zext i1 %3552 to i32
  store i32 %3553, ptr %1178, align 8
  %3554 = load i32, ptr %233, align 4
  %3555 = call i32 @llvm.abs.i32(i32 %3554, i1 false) #8
  %3556 = zext i32 %3555 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %21) #8
  store i64 0, ptr %21, align 8, !annotation !8
  %3557 = call i64 @div64_u64_rem(i64 noundef %3556, i64 noundef 8, ptr noundef nonnull %21) #8
  %3558 = load i64, ptr %21, align 8
  br label %3559

3559:                                             ; preds = %3559, %3545
  %3560 = phi i64 [ %3558, %3545 ], [ %3567, %3559 ]
  %3561 = phi i64 [ %3557, %3545 ], [ %3570, %3559 ]
  %3562 = phi i32 [ 32, %3545 ], [ %3571, %3559 ]
  %3563 = shl i64 %3560, 1
  %3564 = shl i64 %3561, 1
  %3565 = icmp ult i64 %3563, 8
  %3566 = select i1 %3565, i64 0, i64 -8
  %3567 = add i64 %3566, %3563
  %3568 = xor i1 %3565, true
  %3569 = zext i1 %3568 to i64
  %3570 = or i64 %3564, %3569
  %3571 = add nsw i32 %3562, -1
  %3572 = icmp eq i32 %3571, 0
  br i1 %3572, label %3573, label %3559

3573:                                             ; preds = %3559
  %3574 = and i64 %3567, 9223372036854775804
  %3575 = icmp ne i64 %3574, 0
  %3576 = zext i1 %3575 to i64
  %3577 = add i64 %3570, %3576
  %3578 = sub i64 0, %3577
  %3579 = icmp slt i32 %3554, 0
  %3580 = select i1 %3579, i64 %3578, i64 %3577
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %21) #8
  %3581 = load i64, ptr %267, align 8
  %3582 = lshr i64 %3581, 63
  br label %3583

3583:                                             ; preds = %3589, %3573
  %3584 = phi i32 [ 62, %3573 ], [ %3590, %3589 ]
  %3585 = zext i32 %3584 to i64
  %3586 = lshr i64 %3581, %3585
  %3587 = and i64 %3586, 1
  %3588 = icmp eq i64 %3587, %3582
  br i1 %3588, label %3589, label %3592

3589:                                             ; preds = %3583
  %3590 = add nsw i32 %3584, -1
  %3591 = icmp eq i32 %3590, 0
  br i1 %3591, label %3592, label %3583

3592:                                             ; preds = %3589, %3583
  %3593 = phi i32 [ 0, %3589 ], [ %3584, %3583 ]
  %3594 = lshr i64 %3580, 63
  br label %3595

3595:                                             ; preds = %3601, %3592
  %3596 = phi i32 [ 62, %3592 ], [ %3602, %3601 ]
  %3597 = zext i32 %3596 to i64
  %3598 = lshr i64 %3580, %3597
  %3599 = and i64 %3598, 1
  %3600 = icmp eq i64 %3599, %3594
  br i1 %3600, label %3601, label %3604

3601:                                             ; preds = %3595
  %3602 = add nsw i32 %3596, -1
  %3603 = icmp eq i32 %3602, 0
  br i1 %3603, label %3604, label %3595

3604:                                             ; preds = %3601, %3595
  %3605 = phi i32 [ 0, %3601 ], [ %3596, %3595 ]
  %3606 = add i32 %3605, %3593
  %3607 = icmp ugt i32 %3606, 61
  br i1 %3607, label %3610, label %3608

3608:                                             ; preds = %3604
  %3609 = mul i64 %3581, %3580
  br label %3627

3610:                                             ; preds = %3604
  %3611 = add i32 %3606, -61
  %3612 = lshr i32 %3611, 1
  %3613 = and i32 %3611, 1
  %3614 = add nuw nsw i32 %3612, %3613
  %3615 = zext i32 %3614 to i64
  %3616 = ashr i64 %3581, %3615
  %3617 = zext i32 %3612 to i64
  %3618 = ashr i64 %3580, %3617
  %3619 = mul i64 %3616, %3618
  %3620 = icmp ugt i32 %3611, 32
  br i1 %3620, label %3621, label %3625

3621:                                             ; preds = %3610
  %3622 = add i32 %3606, -93
  %3623 = zext i32 %3622 to i64
  %3624 = shl i64 %3619, %3623
  br label %3633

3625:                                             ; preds = %3610
  %3626 = icmp eq i32 %3611, 32
  br i1 %3626, label %3633, label %3627

3627:                                             ; preds = %3625, %3608
  %3628 = phi i32 [ 0, %3608 ], [ %3611, %3625 ]
  %3629 = phi i64 [ %3609, %3608 ], [ %3619, %3625 ]
  %3630 = sub nuw nsw i32 32, %3628
  %3631 = zext i32 %3630 to i64
  %3632 = ashr i64 %3629, %3631
  br label %3633

3633:                                             ; preds = %3627, %3625, %3621
  %3634 = phi i64 [ %3624, %3621 ], [ %3632, %3627 ], [ %3619, %3625 ]
  %3635 = load i64, ptr %2513, align 8
  %3636 = lshr i64 %3634, 63
  br label %3637

3637:                                             ; preds = %3643, %3633
  %3638 = phi i32 [ 62, %3633 ], [ %3644, %3643 ]
  %3639 = zext i32 %3638 to i64
  %3640 = lshr i64 %3634, %3639
  %3641 = and i64 %3640, 1
  %3642 = icmp eq i64 %3641, %3636
  br i1 %3642, label %3643, label %3646

3643:                                             ; preds = %3637
  %3644 = add nsw i32 %3638, -1
  %3645 = icmp eq i32 %3644, 0
  br i1 %3645, label %3646, label %3637

3646:                                             ; preds = %3643, %3637
  %3647 = phi i32 [ 0, %3643 ], [ %3638, %3637 ]
  %3648 = sub i32 62, %3647
  %3649 = zext i32 %3648 to i64
  %3650 = shl i64 %3634, %3649
  %3651 = icmp ult i32 %3648, 32
  %3652 = add i32 %3647, -30
  %3653 = select i1 %3651, i32 %3652, i32 0
  %3654 = zext i32 %3653 to i64
  %3655 = ashr i64 %3635, %3654
  %3656 = call i64 @div64_s64(i64 noundef %3650, i64 noundef %3655) #8
  %3657 = icmp ugt i32 %3648, 32
  %3658 = sub i32 30, %3647
  %3659 = select i1 %3657, i32 %3658, i32 0
  %3660 = zext i32 %3659 to i64
  %3661 = ashr i64 %3656, %3660
  %3662 = icmp eq i64 %3661, 0
  br i1 %3662, label %3669, label %3663

3663:                                             ; preds = %3646
  %3664 = icmp sgt i64 %3661, 0
  %3665 = select i1 %3664, i64 4294967295, i64 -4294967295
  %3666 = add i64 %3665, %3661
  %3667 = lshr i64 %3666, 32
  %3668 = trunc i64 %3667 to i32
  br label %3669

3669:                                             ; preds = %3663, %3646
  %3670 = phi i32 [ %3668, %3663 ], [ 0, %3646 ]
  store i32 %3670, ptr %2524, align 8
  %3671 = load i32, ptr %1344, align 8
  %3672 = call i32 @llvm.abs.i32(i32 %3671, i1 false) #8
  %3673 = zext i32 %3672 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %20) #8
  store i64 0, ptr %20, align 8, !annotation !8
  %3674 = call i64 @div64_u64_rem(i64 noundef %3673, i64 noundef 1, ptr noundef nonnull %20) #8
  %3675 = load i64, ptr %20, align 8
  br label %3676

3676:                                             ; preds = %3676, %3669
  %3677 = phi i64 [ %3675, %3669 ], [ %3684, %3676 ]
  %3678 = phi i64 [ %3674, %3669 ], [ %3686, %3676 ]
  %3679 = phi i32 [ 32, %3669 ], [ %3687, %3676 ]
  %3680 = shl i64 %3677, 1
  %3681 = shl i64 %3678, 1
  %3682 = icmp ne i64 %3680, 0
  %3683 = sext i1 %3682 to i64
  %3684 = add i64 %3680, %3683
  %3685 = zext i1 %3682 to i64
  %3686 = or i64 %3681, %3685
  %3687 = add nsw i32 %3679, -1
  %3688 = icmp eq i32 %3687, 0
  br i1 %3688, label %3689, label %3676

3689:                                             ; preds = %3676
  %3690 = and i64 %3684, 9223372036854775807
  %3691 = icmp ne i64 %3690, 0
  %3692 = zext i1 %3691 to i64
  %3693 = add i64 %3686, %3692
  %3694 = sub i64 0, %3693
  %3695 = icmp slt i32 %3671, 0
  %3696 = select i1 %3695, i64 %3694, i64 %3693
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %20) #8
  %3697 = load i64, ptr %1169, align 8
  %3698 = lshr i64 %3697, 63
  br label %3699

3699:                                             ; preds = %3705, %3689
  %3700 = phi i32 [ 62, %3689 ], [ %3706, %3705 ]
  %3701 = zext i32 %3700 to i64
  %3702 = lshr i64 %3697, %3701
  %3703 = and i64 %3702, 1
  %3704 = icmp eq i64 %3703, %3698
  br i1 %3704, label %3705, label %3708

3705:                                             ; preds = %3699
  %3706 = add nsw i32 %3700, -1
  %3707 = icmp eq i32 %3706, 0
  br i1 %3707, label %3708, label %3699

3708:                                             ; preds = %3705, %3699
  %3709 = phi i32 [ 0, %3705 ], [ %3700, %3699 ]
  %3710 = lshr i64 %3696, 63
  br label %3711

3711:                                             ; preds = %3717, %3708
  %3712 = phi i32 [ 62, %3708 ], [ %3718, %3717 ]
  %3713 = zext i32 %3712 to i64
  %3714 = lshr i64 %3696, %3713
  %3715 = and i64 %3714, 1
  %3716 = icmp eq i64 %3715, %3710
  br i1 %3716, label %3717, label %3720

3717:                                             ; preds = %3711
  %3718 = add nsw i32 %3712, -1
  %3719 = icmp eq i32 %3718, 0
  br i1 %3719, label %3720, label %3711

3720:                                             ; preds = %3717, %3711
  %3721 = phi i32 [ 0, %3717 ], [ %3712, %3711 ]
  %3722 = add i32 %3721, %3709
  %3723 = icmp ugt i32 %3722, 61
  br i1 %3723, label %3726, label %3724

3724:                                             ; preds = %3720
  %3725 = mul i64 %3697, %3696
  br label %3743

3726:                                             ; preds = %3720
  %3727 = add i32 %3722, -61
  %3728 = lshr i32 %3727, 1
  %3729 = and i32 %3727, 1
  %3730 = add nuw nsw i32 %3728, %3729
  %3731 = zext i32 %3730 to i64
  %3732 = ashr i64 %3697, %3731
  %3733 = zext i32 %3728 to i64
  %3734 = ashr i64 %3696, %3733
  %3735 = mul i64 %3732, %3734
  %3736 = icmp ugt i32 %3727, 32
  br i1 %3736, label %3737, label %3741

3737:                                             ; preds = %3726
  %3738 = add i32 %3722, -93
  %3739 = zext i32 %3738 to i64
  %3740 = shl i64 %3735, %3739
  br label %3749

3741:                                             ; preds = %3726
  %3742 = icmp eq i32 %3727, 32
  br i1 %3742, label %3749, label %3743

3743:                                             ; preds = %3741, %3724
  %3744 = phi i32 [ 0, %3724 ], [ %3727, %3741 ]
  %3745 = phi i64 [ %3725, %3724 ], [ %3735, %3741 ]
  %3746 = sub nuw nsw i32 32, %3744
  %3747 = zext i32 %3746 to i64
  %3748 = ashr i64 %3745, %3747
  br label %3749

3749:                                             ; preds = %3743, %3741, %3737
  %3750 = phi i64 [ %3740, %3737 ], [ %3748, %3743 ], [ %3735, %3741 ]
  %3751 = load i64, ptr %2513, align 8
  %3752 = load i32, ptr %2524, align 8
  %3753 = call i32 @llvm.abs.i32(i32 %3752, i1 false) #8
  %3754 = zext i32 %3753 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %19) #8
  store i64 0, ptr %19, align 8, !annotation !8
  %3755 = call i64 @div64_u64_rem(i64 noundef %3754, i64 noundef 1, ptr noundef nonnull %19) #8
  %3756 = load i64, ptr %19, align 8
  br label %3757

3757:                                             ; preds = %3757, %3749
  %3758 = phi i64 [ %3756, %3749 ], [ %3765, %3757 ]
  %3759 = phi i64 [ %3755, %3749 ], [ %3767, %3757 ]
  %3760 = phi i32 [ 32, %3749 ], [ %3768, %3757 ]
  %3761 = shl i64 %3758, 1
  %3762 = shl i64 %3759, 1
  %3763 = icmp ne i64 %3761, 0
  %3764 = sext i1 %3763 to i64
  %3765 = add i64 %3761, %3764
  %3766 = zext i1 %3763 to i64
  %3767 = or i64 %3762, %3766
  %3768 = add nsw i32 %3760, -1
  %3769 = icmp eq i32 %3768, 0
  br i1 %3769, label %3770, label %3757

3770:                                             ; preds = %3757
  %3771 = sub i64 %3751, %3750
  %3772 = and i64 %3765, 9223372036854775807
  %3773 = icmp ne i64 %3772, 0
  %3774 = zext i1 %3773 to i64
  %3775 = add i64 %3767, %3774
  %3776 = sub i64 0, %3775
  %3777 = icmp slt i32 %3752, 0
  %3778 = select i1 %3777, i64 %3776, i64 %3775
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #8
  %3779 = lshr i64 %3778, 63
  br label %3780

3780:                                             ; preds = %3786, %3770
  %3781 = phi i32 [ 62, %3770 ], [ %3787, %3786 ]
  %3782 = zext i32 %3781 to i64
  %3783 = lshr i64 %3778, %3782
  %3784 = and i64 %3783, 1
  %3785 = icmp eq i64 %3784, %3779
  br i1 %3785, label %3786, label %3789

3786:                                             ; preds = %3780
  %3787 = add nsw i32 %3781, -1
  %3788 = icmp eq i32 %3787, 0
  br i1 %3788, label %3789, label %3780

3789:                                             ; preds = %3786, %3780
  %3790 = phi i32 [ 0, %3786 ], [ %3781, %3780 ]
  %3791 = lshr i64 %3771, 63
  br label %3792

3792:                                             ; preds = %3798, %3789
  %3793 = phi i32 [ 62, %3789 ], [ %3799, %3798 ]
  %3794 = zext i32 %3793 to i64
  %3795 = lshr i64 %3771, %3794
  %3796 = and i64 %3795, 1
  %3797 = icmp eq i64 %3796, %3791
  br i1 %3797, label %3798, label %3801

3798:                                             ; preds = %3792
  %3799 = add nsw i32 %3793, -1
  %3800 = icmp eq i32 %3799, 0
  br i1 %3800, label %3801, label %3792

3801:                                             ; preds = %3798, %3792
  %3802 = phi i32 [ 0, %3798 ], [ %3793, %3792 ]
  %3803 = add i32 %3802, %3790
  %3804 = icmp ugt i32 %3803, 61
  br i1 %3804, label %3807, label %3805

3805:                                             ; preds = %3801
  %3806 = mul i64 %3778, %3771
  br label %3824

3807:                                             ; preds = %3801
  %3808 = add i32 %3803, -61
  %3809 = lshr i32 %3808, 1
  %3810 = and i32 %3808, 1
  %3811 = add nuw nsw i32 %3809, %3810
  %3812 = zext i32 %3811 to i64
  %3813 = ashr i64 %3778, %3812
  %3814 = zext i32 %3809 to i64
  %3815 = ashr i64 %3771, %3814
  %3816 = mul i64 %3813, %3815
  %3817 = icmp ugt i32 %3808, 32
  br i1 %3817, label %3818, label %3822

3818:                                             ; preds = %3807
  %3819 = add i32 %3803, -93
  %3820 = zext i32 %3819 to i64
  %3821 = shl i64 %3816, %3820
  br label %3830

3822:                                             ; preds = %3807
  %3823 = icmp eq i32 %3808, 32
  br i1 %3823, label %3830, label %3824

3824:                                             ; preds = %3822, %3805
  %3825 = phi i32 [ 0, %3805 ], [ %3808, %3822 ]
  %3826 = phi i64 [ %3806, %3805 ], [ %3816, %3822 ]
  %3827 = sub nuw nsw i32 32, %3825
  %3828 = zext i32 %3827 to i64
  %3829 = ashr i64 %3826, %3828
  br label %3830

3830:                                             ; preds = %3824, %3822, %3818
  %3831 = phi i64 [ %3821, %3818 ], [ %3829, %3824 ], [ %3816, %3822 ]
  %3832 = icmp eq i64 %3831, 0
  br i1 %3832, label %3839, label %3833

3833:                                             ; preds = %3830
  %3834 = icmp sgt i64 %3831, 0
  %3835 = select i1 %3834, i64 4294967295, i64 -4294967295
  %3836 = add i64 %3835, %3831
  %3837 = lshr i64 %3836, 32
  %3838 = trunc i64 %3837 to i32
  br label %3839

3839:                                             ; preds = %3833, %3830
  %3840 = phi i32 [ %3838, %3833 ], [ 0, %3830 ]
  %3841 = load i32, ptr %1173, align 4
  %3842 = load i32, ptr %230, align 8
  %3843 = load i32, ptr %1344, align 8
  %3844 = call i32 @llvm.abs.i32(i32 %3843, i1 false) #8
  %3845 = zext i32 %3844 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %18) #8
  store i64 0, ptr %18, align 8, !annotation !8
  %3846 = call i64 @div64_u64_rem(i64 noundef %3845, i64 noundef 1, ptr noundef nonnull %18) #8
  %3847 = load i64, ptr %18, align 8
  br label %3848

3848:                                             ; preds = %3848, %3839
  %3849 = phi i64 [ %3847, %3839 ], [ %3856, %3848 ]
  %3850 = phi i64 [ %3846, %3839 ], [ %3858, %3848 ]
  %3851 = phi i32 [ 32, %3839 ], [ %3859, %3848 ]
  %3852 = shl i64 %3849, 1
  %3853 = shl i64 %3850, 1
  %3854 = icmp ne i64 %3852, 0
  %3855 = sext i1 %3854 to i64
  %3856 = add i64 %3852, %3855
  %3857 = zext i1 %3854 to i64
  %3858 = or i64 %3853, %3857
  %3859 = add nsw i32 %3851, -1
  %3860 = icmp eq i32 %3859, 0
  br i1 %3860, label %3861, label %3848

3861:                                             ; preds = %3848
  %3862 = mul i32 %3842, %3841
  %3863 = and i64 %3856, 9223372036854775807
  %3864 = icmp ne i64 %3863, 0
  %3865 = zext i1 %3864 to i64
  %3866 = add i64 %3858, %3865
  %3867 = sub i64 0, %3866
  %3868 = icmp slt i32 %3843, 0
  %3869 = select i1 %3868, i64 %3867, i64 %3866
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #8
  %3870 = load i64, ptr %1169, align 8
  %3871 = lshr i64 %3870, 63
  br label %3872

3872:                                             ; preds = %3878, %3861
  %3873 = phi i32 [ 62, %3861 ], [ %3879, %3878 ]
  %3874 = zext i32 %3873 to i64
  %3875 = lshr i64 %3870, %3874
  %3876 = and i64 %3875, 1
  %3877 = icmp eq i64 %3876, %3871
  br i1 %3877, label %3878, label %3881

3878:                                             ; preds = %3872
  %3879 = add nsw i32 %3873, -1
  %3880 = icmp eq i32 %3879, 0
  br i1 %3880, label %3881, label %3872

3881:                                             ; preds = %3878, %3872
  %3882 = phi i32 [ 0, %3878 ], [ %3873, %3872 ]
  %3883 = lshr i64 %3869, 63
  br label %3884

3884:                                             ; preds = %3890, %3881
  %3885 = phi i32 [ 62, %3881 ], [ %3891, %3890 ]
  %3886 = zext i32 %3885 to i64
  %3887 = lshr i64 %3869, %3886
  %3888 = and i64 %3887, 1
  %3889 = icmp eq i64 %3888, %3883
  br i1 %3889, label %3890, label %3893

3890:                                             ; preds = %3884
  %3891 = add nsw i32 %3885, -1
  %3892 = icmp eq i32 %3891, 0
  br i1 %3892, label %3893, label %3884

3893:                                             ; preds = %3890, %3884
  %3894 = phi i32 [ 0, %3890 ], [ %3885, %3884 ]
  %3895 = add i32 %3894, %3882
  %3896 = icmp ugt i32 %3895, 61
  br i1 %3896, label %3899, label %3897

3897:                                             ; preds = %3893
  %3898 = mul i64 %3870, %3869
  br label %3916

3899:                                             ; preds = %3893
  %3900 = add i32 %3895, -61
  %3901 = lshr i32 %3900, 1
  %3902 = and i32 %3900, 1
  %3903 = add nuw nsw i32 %3901, %3902
  %3904 = zext i32 %3903 to i64
  %3905 = ashr i64 %3870, %3904
  %3906 = zext i32 %3901 to i64
  %3907 = ashr i64 %3869, %3906
  %3908 = mul i64 %3905, %3907
  %3909 = icmp ugt i32 %3900, 32
  br i1 %3909, label %3910, label %3914

3910:                                             ; preds = %3899
  %3911 = add i32 %3895, -93
  %3912 = zext i32 %3911 to i64
  %3913 = shl i64 %3908, %3912
  br label %3922

3914:                                             ; preds = %3899
  %3915 = icmp eq i32 %3900, 32
  br i1 %3915, label %3922, label %3916

3916:                                             ; preds = %3914, %3897
  %3917 = phi i32 [ 0, %3897 ], [ %3900, %3914 ]
  %3918 = phi i64 [ %3898, %3897 ], [ %3908, %3914 ]
  %3919 = sub nuw nsw i32 32, %3917
  %3920 = zext i32 %3919 to i64
  %3921 = ashr i64 %3918, %3920
  br label %3922

3922:                                             ; preds = %3916, %3914, %3910
  %3923 = phi i64 [ %3913, %3910 ], [ %3921, %3916 ], [ %3908, %3914 ]
  %3924 = load i32, ptr %2512, align 8
  %3925 = call i32 @llvm.abs.i32(i32 %3924, i1 false) #8
  %3926 = zext i32 %3925 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #8
  store i64 0, ptr %17, align 8, !annotation !8
  %3927 = call i64 @div64_u64_rem(i64 noundef %3926, i64 noundef 1, ptr noundef nonnull %17) #8
  %3928 = load i64, ptr %17, align 8
  br label %3929

3929:                                             ; preds = %3929, %3922
  %3930 = phi i64 [ %3928, %3922 ], [ %3937, %3929 ]
  %3931 = phi i64 [ %3927, %3922 ], [ %3939, %3929 ]
  %3932 = phi i32 [ 32, %3922 ], [ %3940, %3929 ]
  %3933 = shl i64 %3930, 1
  %3934 = shl i64 %3931, 1
  %3935 = icmp ne i64 %3933, 0
  %3936 = sext i1 %3935 to i64
  %3937 = add i64 %3933, %3936
  %3938 = zext i1 %3935 to i64
  %3939 = or i64 %3934, %3938
  %3940 = add nsw i32 %3932, -1
  %3941 = icmp eq i32 %3940, 0
  br i1 %3941, label %3942, label %3929

3942:                                             ; preds = %3929
  %3943 = and i64 %3937, 9223372036854775807
  %3944 = icmp ne i64 %3943, 0
  %3945 = zext i1 %3944 to i64
  %3946 = add i64 %3939, %3945
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #8
  %3947 = call i32 @llvm.abs.i32(i32 %3862, i1 false) #8
  %3948 = zext i32 %3947 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #8
  store i64 0, ptr %16, align 8, !annotation !8
  %3949 = call i64 @div64_u64_rem(i64 noundef %3948, i64 noundef 1, ptr noundef nonnull %16) #8
  %3950 = load i64, ptr %16, align 8
  br label %3951

3951:                                             ; preds = %3951, %3942
  %3952 = phi i64 [ %3950, %3942 ], [ %3959, %3951 ]
  %3953 = phi i64 [ %3949, %3942 ], [ %3961, %3951 ]
  %3954 = phi i32 [ 32, %3942 ], [ %3962, %3951 ]
  %3955 = shl i64 %3952, 1
  %3956 = shl i64 %3953, 1
  %3957 = icmp ne i64 %3955, 0
  %3958 = sext i1 %3957 to i64
  %3959 = add i64 %3955, %3958
  %3960 = zext i1 %3957 to i64
  %3961 = or i64 %3956, %3960
  %3962 = add nsw i32 %3954, -1
  %3963 = icmp eq i32 %3962, 0
  br i1 %3963, label %3964, label %3951

3964:                                             ; preds = %3951
  %3965 = icmp slt i32 %3924, 0
  %3966 = sub i64 0, %3946
  %3967 = select i1 %3965, i64 %3966, i64 %3946
  %3968 = sub i64 %3967, %3923
  %3969 = and i64 %3959, 9223372036854775807
  %3970 = icmp ne i64 %3969, 0
  %3971 = zext i1 %3970 to i64
  %3972 = add i64 %3961, %3971
  %3973 = sub i64 0, %3972
  %3974 = icmp slt i32 %3862, 0
  %3975 = select i1 %3974, i64 %3973, i64 %3972
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #8
  %3976 = lshr i64 %3975, 63
  br label %3977

3977:                                             ; preds = %3983, %3964
  %3978 = phi i32 [ 62, %3964 ], [ %3984, %3983 ]
  %3979 = zext i32 %3978 to i64
  %3980 = lshr i64 %3975, %3979
  %3981 = and i64 %3980, 1
  %3982 = icmp eq i64 %3981, %3976
  br i1 %3982, label %3983, label %3986

3983:                                             ; preds = %3977
  %3984 = add nsw i32 %3978, -1
  %3985 = icmp eq i32 %3984, 0
  br i1 %3985, label %3986, label %3977

3986:                                             ; preds = %3983, %3977
  %3987 = phi i32 [ 0, %3983 ], [ %3978, %3977 ]
  %3988 = lshr i64 %3968, 63
  br label %3989

3989:                                             ; preds = %3995, %3986
  %3990 = phi i32 [ 62, %3986 ], [ %3996, %3995 ]
  %3991 = zext i32 %3990 to i64
  %3992 = lshr i64 %3968, %3991
  %3993 = and i64 %3992, 1
  %3994 = icmp eq i64 %3993, %3988
  br i1 %3994, label %3995, label %3998

3995:                                             ; preds = %3989
  %3996 = add nsw i32 %3990, -1
  %3997 = icmp eq i32 %3996, 0
  br i1 %3997, label %3998, label %3989

3998:                                             ; preds = %3995, %3989
  %3999 = phi i32 [ 0, %3995 ], [ %3990, %3989 ]
  %4000 = add i32 %3999, %3987
  %4001 = icmp ugt i32 %4000, 61
  br i1 %4001, label %4004, label %4002

4002:                                             ; preds = %3998
  %4003 = mul i64 %3975, %3968
  br label %4021

4004:                                             ; preds = %3998
  %4005 = add i32 %4000, -61
  %4006 = lshr i32 %4005, 1
  %4007 = and i32 %4005, 1
  %4008 = add nuw nsw i32 %4006, %4007
  %4009 = zext i32 %4008 to i64
  %4010 = ashr i64 %3975, %4009
  %4011 = zext i32 %4006 to i64
  %4012 = ashr i64 %3968, %4011
  %4013 = mul i64 %4010, %4012
  %4014 = icmp ugt i32 %4005, 32
  br i1 %4014, label %4015, label %4019

4015:                                             ; preds = %4004
  %4016 = add i32 %4000, -93
  %4017 = zext i32 %4016 to i64
  %4018 = shl i64 %4013, %4017
  br label %4027

4019:                                             ; preds = %4004
  %4020 = icmp eq i32 %4005, 32
  br i1 %4020, label %4027, label %4021

4021:                                             ; preds = %4019, %4002
  %4022 = phi i32 [ 0, %4002 ], [ %4005, %4019 ]
  %4023 = phi i64 [ %4003, %4002 ], [ %4013, %4019 ]
  %4024 = sub nuw nsw i32 32, %4022
  %4025 = zext i32 %4024 to i64
  %4026 = ashr i64 %4023, %4025
  br label %4027

4027:                                             ; preds = %4021, %4019, %4015
  %4028 = phi i64 [ %4018, %4015 ], [ %4026, %4021 ], [ %4013, %4019 ]
  %4029 = icmp eq i64 %4028, 0
  br i1 %4029, label %4036, label %4030

4030:                                             ; preds = %4027
  %4031 = icmp sgt i64 %4028, 0
  %4032 = select i1 %4031, i64 4294967295, i64 -4294967295
  %4033 = add i64 %4032, %4028
  %4034 = lshr i64 %4033, 32
  %4035 = trunc i64 %4034 to i32
  br label %4036

4036:                                             ; preds = %4030, %4027
  %4037 = phi i32 [ %4035, %4030 ], [ 0, %4027 ]
  %4038 = add i32 %4037, %3840
  store i32 %4038, ptr %2525, align 4
  %4039 = load i32, ptr %233, align 4
  %4040 = call i32 @llvm.abs.i32(i32 %4039, i1 false) #8
  %4041 = zext i32 %4040 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #8
  store i64 0, ptr %15, align 8, !annotation !8
  %4042 = call i64 @div64_u64_rem(i64 noundef 8, i64 noundef %4041, ptr noundef nonnull %15) #8
  %4043 = load i64, ptr %15, align 8
  br label %4044

4044:                                             ; preds = %4044, %4036
  %4045 = phi i64 [ %4043, %4036 ], [ %4052, %4044 ]
  %4046 = phi i64 [ %4042, %4036 ], [ %4055, %4044 ]
  %4047 = phi i32 [ 32, %4036 ], [ %4056, %4044 ]
  %4048 = shl i64 %4045, 1
  %4049 = shl i64 %4046, 1
  %4050 = icmp ult i64 %4048, %4041
  %4051 = select i1 %4050, i64 0, i64 %4041
  %4052 = sub i64 %4048, %4051
  %4053 = xor i1 %4050, true
  %4054 = zext i1 %4053 to i64
  %4055 = or i64 %4049, %4054
  %4056 = add nsw i32 %4047, -1
  %4057 = icmp eq i32 %4056, 0
  br i1 %4057, label %4058, label %4044

4058:                                             ; preds = %4044
  %4059 = shl i64 %4052, 1
  %4060 = icmp uge i64 %4059, %4041
  %4061 = zext i1 %4060 to i64
  %4062 = add i64 %4055, %4061
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #8
  %4063 = load i32, ptr %2525, align 4
  %4064 = call i32 @llvm.abs.i32(i32 %4063, i1 false) #8
  %4065 = zext i32 %4064 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #8
  store i64 0, ptr %14, align 8, !annotation !8
  %4066 = call i64 @div64_u64_rem(i64 noundef %4065, i64 noundef 1, ptr noundef nonnull %14) #8
  %4067 = load i64, ptr %14, align 8
  br label %4068

4068:                                             ; preds = %4068, %4058
  %4069 = phi i64 [ %4067, %4058 ], [ %4076, %4068 ]
  %4070 = phi i64 [ %4066, %4058 ], [ %4078, %4068 ]
  %4071 = phi i32 [ 32, %4058 ], [ %4079, %4068 ]
  %4072 = shl i64 %4069, 1
  %4073 = shl i64 %4070, 1
  %4074 = icmp ne i64 %4072, 0
  %4075 = sext i1 %4074 to i64
  %4076 = add i64 %4072, %4075
  %4077 = zext i1 %4074 to i64
  %4078 = or i64 %4073, %4077
  %4079 = add nsw i32 %4071, -1
  %4080 = icmp eq i32 %4079, 0
  br i1 %4080, label %4081, label %4068

4081:                                             ; preds = %4068
  %4082 = icmp slt i32 %4039, 0
  %4083 = sub i64 0, %4062
  %4084 = select i1 %4082, i64 %4083, i64 %4062
  %4085 = and i64 %4076, 9223372036854775807
  %4086 = icmp ne i64 %4085, 0
  %4087 = zext i1 %4086 to i64
  %4088 = add i64 %4078, %4087
  %4089 = sub i64 0, %4088
  %4090 = icmp slt i32 %4063, 0
  %4091 = select i1 %4090, i64 %4089, i64 %4088
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #8
  %4092 = lshr i64 %4091, 63
  br label %4093

4093:                                             ; preds = %4099, %4081
  %4094 = phi i32 [ 62, %4081 ], [ %4100, %4099 ]
  %4095 = zext i32 %4094 to i64
  %4096 = lshr i64 %4091, %4095
  %4097 = and i64 %4096, 1
  %4098 = icmp eq i64 %4097, %4092
  br i1 %4098, label %4099, label %4102

4099:                                             ; preds = %4093
  %4100 = add nsw i32 %4094, -1
  %4101 = icmp eq i32 %4100, 0
  br i1 %4101, label %4102, label %4093

4102:                                             ; preds = %4099, %4093
  %4103 = phi i32 [ 0, %4099 ], [ %4094, %4093 ]
  %4104 = lshr i64 %4084, 63
  br label %4105

4105:                                             ; preds = %4111, %4102
  %4106 = phi i32 [ 62, %4102 ], [ %4112, %4111 ]
  %4107 = zext i32 %4106 to i64
  %4108 = lshr i64 %4084, %4107
  %4109 = and i64 %4108, 1
  %4110 = icmp eq i64 %4109, %4104
  br i1 %4110, label %4111, label %4114

4111:                                             ; preds = %4105
  %4112 = add nsw i32 %4106, -1
  %4113 = icmp eq i32 %4112, 0
  br i1 %4113, label %4114, label %4105

4114:                                             ; preds = %4111, %4105
  %4115 = phi i32 [ 0, %4111 ], [ %4106, %4105 ]
  %4116 = add i32 %4115, %4103
  %4117 = icmp ugt i32 %4116, 61
  br i1 %4117, label %4120, label %4118

4118:                                             ; preds = %4114
  %4119 = mul i64 %4091, %4084
  br label %4137

4120:                                             ; preds = %4114
  %4121 = add i32 %4116, -61
  %4122 = lshr i32 %4121, 1
  %4123 = and i32 %4121, 1
  %4124 = add nuw nsw i32 %4122, %4123
  %4125 = zext i32 %4124 to i64
  %4126 = ashr i64 %4091, %4125
  %4127 = zext i32 %4122 to i64
  %4128 = ashr i64 %4084, %4127
  %4129 = mul i64 %4126, %4128
  %4130 = icmp ugt i32 %4121, 32
  br i1 %4130, label %4131, label %4135

4131:                                             ; preds = %4120
  %4132 = add i32 %4116, -93
  %4133 = zext i32 %4132 to i64
  %4134 = shl i64 %4129, %4133
  br label %4143

4135:                                             ; preds = %4120
  %4136 = icmp eq i32 %4121, 32
  br i1 %4136, label %4143, label %4137

4137:                                             ; preds = %4135, %4118
  %4138 = phi i32 [ 0, %4118 ], [ %4121, %4135 ]
  %4139 = phi i64 [ %4119, %4118 ], [ %4129, %4135 ]
  %4140 = sub nuw nsw i32 32, %4138
  %4141 = zext i32 %4140 to i64
  %4142 = ashr i64 %4139, %4141
  br label %4143

4143:                                             ; preds = %4137, %4135, %4131
  %4144 = phi i64 [ %4134, %4131 ], [ %4142, %4137 ], [ %4129, %4135 ]
  %4145 = icmp eq i64 %4144, 0
  br i1 %4145, label %4152, label %4146

4146:                                             ; preds = %4143
  %4147 = icmp sgt i64 %4144, 0
  %4148 = select i1 %4147, i64 4294967295, i64 -4294967295
  %4149 = add i64 %4148, %4144
  %4150 = lshr i64 %4149, 32
  %4151 = trunc i64 %4150 to i32
  br label %4152

4152:                                             ; preds = %4146, %4143
  %4153 = phi i32 [ %4151, %4146 ], [ 0, %4143 ]
  store i32 %4153, ptr %2526, align 4
  %4154 = call i32 @llvm.abs.i32(i32 %4153, i1 false) #8
  %4155 = zext i32 %4154 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #8
  store i64 0, ptr %13, align 8, !annotation !8
  %4156 = call i64 @div64_u64_rem(i64 noundef %4155, i64 noundef 1, ptr noundef nonnull %13) #8
  %4157 = load i64, ptr %13, align 8
  br label %4158

4158:                                             ; preds = %4158, %4152
  %4159 = phi i64 [ %4157, %4152 ], [ %4166, %4158 ]
  %4160 = phi i64 [ %4156, %4152 ], [ %4168, %4158 ]
  %4161 = phi i32 [ 32, %4152 ], [ %4169, %4158 ]
  %4162 = shl i64 %4159, 1
  %4163 = shl i64 %4160, 1
  %4164 = icmp ne i64 %4162, 0
  %4165 = sext i1 %4164 to i64
  %4166 = add i64 %4162, %4165
  %4167 = zext i1 %4164 to i64
  %4168 = or i64 %4163, %4167
  %4169 = add nsw i32 %4161, -1
  %4170 = icmp eq i32 %4169, 0
  br i1 %4170, label %4171, label %4158

4171:                                             ; preds = %4158
  %4172 = and i64 %4166, 9223372036854775807
  %4173 = icmp ne i64 %4172, 0
  %4174 = zext i1 %4173 to i64
  %4175 = add i64 %4168, %4174
  %4176 = sub i64 0, %4175
  %4177 = icmp slt i32 %4153, 0
  %4178 = select i1 %4177, i64 %4176, i64 %4175
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #8
  %4179 = load i64, ptr %163, align 8
  %4180 = load i64, ptr %222, align 8
  %4181 = lshr i64 %4179, 63
  br label %4182

4182:                                             ; preds = %4188, %4171
  %4183 = phi i32 [ 62, %4171 ], [ %4189, %4188 ]
  %4184 = zext i32 %4183 to i64
  %4185 = lshr i64 %4179, %4184
  %4186 = and i64 %4185, 1
  %4187 = icmp eq i64 %4186, %4181
  br i1 %4187, label %4188, label %4191

4188:                                             ; preds = %4182
  %4189 = add nsw i32 %4183, -1
  %4190 = icmp eq i32 %4189, 0
  br i1 %4190, label %4191, label %4182

4191:                                             ; preds = %4188, %4182
  %4192 = phi i32 [ 0, %4188 ], [ %4183, %4182 ]
  %4193 = sub i32 62, %4192
  %4194 = zext i32 %4193 to i64
  %4195 = shl i64 %4179, %4194
  %4196 = icmp ult i32 %4193, 32
  %4197 = add i32 %4192, -30
  %4198 = select i1 %4196, i32 %4197, i32 0
  %4199 = zext i32 %4198 to i64
  %4200 = ashr i64 %4180, %4199
  %4201 = call i64 @div64_s64(i64 noundef %4195, i64 noundef %4200) #8
  %4202 = icmp ugt i32 %4193, 32
  %4203 = sub i32 30, %4192
  %4204 = select i1 %4202, i32 %4203, i32 0
  %4205 = zext i32 %4204 to i64
  %4206 = ashr i64 %4201, %4205
  %4207 = lshr i64 %4178, 63
  br label %4208

4208:                                             ; preds = %4214, %4191
  %4209 = phi i32 [ 62, %4191 ], [ %4215, %4214 ]
  %4210 = zext i32 %4209 to i64
  %4211 = lshr i64 %4178, %4210
  %4212 = and i64 %4211, 1
  %4213 = icmp eq i64 %4212, %4207
  br i1 %4213, label %4214, label %4217

4214:                                             ; preds = %4208
  %4215 = add nsw i32 %4209, -1
  %4216 = icmp eq i32 %4215, 0
  br i1 %4216, label %4217, label %4208

4217:                                             ; preds = %4214, %4208
  %4218 = phi i32 [ 0, %4214 ], [ %4209, %4208 ]
  %4219 = lshr i64 %4206, 63
  br label %4220

4220:                                             ; preds = %4226, %4217
  %4221 = phi i32 [ 62, %4217 ], [ %4227, %4226 ]
  %4222 = zext i32 %4221 to i64
  %4223 = lshr i64 %4206, %4222
  %4224 = and i64 %4223, 1
  %4225 = icmp eq i64 %4224, %4219
  br i1 %4225, label %4226, label %4229

4226:                                             ; preds = %4220
  %4227 = add nsw i32 %4221, -1
  %4228 = icmp eq i32 %4227, 0
  br i1 %4228, label %4229, label %4220

4229:                                             ; preds = %4226, %4220
  %4230 = phi i32 [ 0, %4226 ], [ %4221, %4220 ]
  %4231 = add i32 %4230, %4218
  %4232 = icmp ugt i32 %4231, 61
  br i1 %4232, label %4235, label %4233

4233:                                             ; preds = %4229
  %4234 = mul i64 %4206, %4178
  br label %4252

4235:                                             ; preds = %4229
  %4236 = add i32 %4231, -61
  %4237 = lshr i32 %4236, 1
  %4238 = and i32 %4236, 1
  %4239 = add nuw nsw i32 %4237, %4238
  %4240 = zext i32 %4239 to i64
  %4241 = ashr i64 %4178, %4240
  %4242 = zext i32 %4237 to i64
  %4243 = ashr i64 %4206, %4242
  %4244 = mul i64 %4241, %4243
  %4245 = icmp ugt i32 %4236, 32
  br i1 %4245, label %4246, label %4250

4246:                                             ; preds = %4235
  %4247 = add i32 %4231, -93
  %4248 = zext i32 %4247 to i64
  %4249 = shl i64 %4244, %4248
  br label %4258

4250:                                             ; preds = %4235
  %4251 = icmp eq i32 %4236, 32
  br i1 %4251, label %4258, label %4252

4252:                                             ; preds = %4250, %4233
  %4253 = phi i32 [ 0, %4233 ], [ %4236, %4250 ]
  %4254 = phi i64 [ %4234, %4233 ], [ %4244, %4250 ]
  %4255 = sub nuw nsw i32 32, %4253
  %4256 = zext i32 %4255 to i64
  %4257 = ashr i64 %4254, %4256
  br label %4258

4258:                                             ; preds = %4252, %4250, %4246
  %4259 = phi i64 [ %4249, %4246 ], [ %4257, %4252 ], [ %4244, %4250 ]
  %4260 = icmp eq i64 %4259, 0
  br i1 %4260, label %4267, label %4261

4261:                                             ; preds = %4258
  %4262 = icmp sgt i64 %4259, 0
  %4263 = select i1 %4262, i64 4294967295, i64 -4294967295
  %4264 = add i64 %4263, %4259
  %4265 = lshr i64 %4264, 32
  %4266 = trunc i64 %4265 to i32
  br label %4267

4267:                                             ; preds = %4261, %4258
  %4268 = phi i32 [ %4266, %4261 ], [ 0, %4258 ]
  store i32 %4268, ptr %2527, align 8
  %4269 = load i32, ptr %1344, align 8
  %4270 = load i32, ptr %2512, align 8
  %4271 = sub i32 %4269, %4270
  store i32 %4271, ptr %2528, align 8
  %4272 = add i32 %4271, 1
  store i32 %4272, ptr %2529, align 4
  %4273 = add i32 %4272, %4268
  %4274 = load i32, ptr %1006, align 4
  %4275 = add i32 %4273, %4274
  store i32 %4275, ptr %2530, align 8
  %4276 = call i32 @llvm.abs.i32(i32 %4275, i1 false) #8
  %4277 = zext i32 %4276 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #8
  store i64 0, ptr %12, align 8, !annotation !8
  %4278 = call i64 @div64_u64_rem(i64 noundef %4277, i64 noundef 1, ptr noundef nonnull %12) #8
  %4279 = load i64, ptr %12, align 8
  br label %4280

4280:                                             ; preds = %4280, %4267
  %4281 = phi i64 [ %4279, %4267 ], [ %4288, %4280 ]
  %4282 = phi i64 [ %4278, %4267 ], [ %4290, %4280 ]
  %4283 = phi i32 [ 32, %4267 ], [ %4291, %4280 ]
  %4284 = shl i64 %4281, 1
  %4285 = shl i64 %4282, 1
  %4286 = icmp ne i64 %4284, 0
  %4287 = sext i1 %4286 to i64
  %4288 = add i64 %4284, %4287
  %4289 = zext i1 %4286 to i64
  %4290 = or i64 %4285, %4289
  %4291 = add nsw i32 %4283, -1
  %4292 = icmp eq i32 %4291, 0
  br i1 %4292, label %4293, label %4280

4293:                                             ; preds = %4280
  %4294 = and i64 %4288, 9223372036854775807
  %4295 = icmp ne i64 %4294, 0
  %4296 = zext i1 %4295 to i64
  %4297 = add i64 %4290, %4296
  %4298 = sub i64 0, %4297
  %4299 = icmp slt i32 %4275, 0
  %4300 = select i1 %4299, i64 %4298, i64 %4297
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #8
  %4301 = load i64, ptr %163, align 8
  %4302 = lshr i64 %4300, 63
  br label %4303

4303:                                             ; preds = %4309, %4293
  %4304 = phi i32 [ 62, %4293 ], [ %4310, %4309 ]
  %4305 = zext i32 %4304 to i64
  %4306 = lshr i64 %4300, %4305
  %4307 = and i64 %4306, 1
  %4308 = icmp eq i64 %4307, %4302
  br i1 %4308, label %4309, label %4312

4309:                                             ; preds = %4303
  %4310 = add nsw i32 %4304, -1
  %4311 = icmp eq i32 %4310, 0
  br i1 %4311, label %4312, label %4303

4312:                                             ; preds = %4309, %4303
  %4313 = phi i32 [ 0, %4309 ], [ %4304, %4303 ]
  %4314 = sub i32 62, %4313
  %4315 = zext i32 %4314 to i64
  %4316 = shl i64 %4300, %4315
  %4317 = icmp ult i32 %4314, 32
  %4318 = add i32 %4313, -30
  %4319 = select i1 %4317, i32 %4318, i32 0
  %4320 = zext i32 %4319 to i64
  %4321 = ashr i64 %4301, %4320
  %4322 = call i64 @div64_s64(i64 noundef %4316, i64 noundef %4321) #8
  %4323 = icmp ugt i32 %4314, 32
  %4324 = sub i32 30, %4313
  %4325 = select i1 %4323, i32 %4324, i32 0
  %4326 = zext i32 %4325 to i64
  %4327 = ashr i64 %4322, %4326
  store i64 %4327, ptr %1179, align 8
  %4328 = load i64, ptr %1201, align 8
  %4329 = load i64, ptr %2454, align 8
  %4330 = call fastcc i32 @_tu_param_compare(i64 noundef %4328, i64 noundef %4329) #8
  %4331 = icmp eq i32 %4330, 2
  %4332 = load i64, ptr %1201, align 8
  %4333 = load i64, ptr %899, align 8
  %4334 = call fastcc i32 @_tu_param_compare(i64 noundef %4332, i64 noundef %4333) #8
  %4335 = icmp eq i32 %4334, 2
  %4336 = load i64, ptr %2355, align 8
  %4337 = load i64, ptr %1179, align 8
  %4338 = call fastcc i32 @_tu_param_compare(i64 noundef %4336, i64 noundef %4337) #8
  %4339 = icmp ne i32 %4338, 2
  %4340 = load i32, ptr %1178, align 8
  %4341 = icmp eq i32 %4340, 1
  br i1 %4341, label %4348, label %4342

4342:                                             ; preds = %4312
  %4343 = load i32, ptr %1176, align 8
  %4344 = icmp eq i32 %4343, 0
  br i1 %4344, label %4345, label %4372

4345:                                             ; preds = %4342
  %4346 = load i32, ptr %1177, align 4
  %4347 = icmp eq i32 %4346, 0
  br i1 %4347, label %4348, label %4372

4348:                                             ; preds = %4345, %4312
  %4349 = load i64, ptr %1200, align 8
  %4350 = icmp sgt i64 %4349, -1
  br i1 %4350, label %4351, label %4372

4351:                                             ; preds = %4348
  %4352 = load i64, ptr %1201, align 8
  %4353 = icmp sgt i64 %4352, -1
  %4354 = select i1 %4353, i1 %4335, i1 false
  br i1 %4354, label %4355, label %4372

4355:                                             ; preds = %4351
  br i1 %4331, label %4359, label %4356

4356:                                             ; preds = %4355
  %4357 = load i32, ptr %2531, align 4
  %4358 = icmp eq i32 %4357, 1
  br i1 %4358, label %4359, label %4372

4359:                                             ; preds = %4356, %4355
  %4360 = load i32, ptr %2512, align 8
  %4361 = add i32 %4360, -1
  %4362 = icmp sgt i32 %4361, 0
  %4363 = select i1 %4362, i1 %4339, i1 false
  br i1 %4363, label %4364, label %4372

4364:                                             ; preds = %4359
  %4365 = load i32, ptr %2530, align 8
  %4366 = icmp slt i32 %4365, 1024
  br i1 %4366, label %4367, label %4372

4367:                                             ; preds = %4364
  %4368 = load i32, ptr %1173, align 4
  store i32 %4368, ptr %1171, align 4
  %4369 = load i32, ptr %1174, align 8
  store i32 %4369, ptr %1172, align 8
  store i64 %4352, ptr %899, align 8
  store i8 1, ptr %1170, align 4
  %4370 = load i32, ptr %1344, align 8
  store i32 %4370, ptr %1345, align 4
  store i32 %4360, ptr %1555, align 4
  %4371 = load i64, ptr %2523, align 8
  store i64 %4371, ptr %2532, align 8
  store i32 1, ptr %1176, align 8
  store i32 %4365, ptr %2221, align 8
  br label %4381

4372:                                             ; preds = %4364, %4359, %4356, %4351, %4348, %4345, %4342
  %4373 = load i32, ptr %2510, align 8
  %4374 = icmp eq i32 %4373, 0
  br i1 %4374, label %4375, label %4381

4375:                                             ; preds = %4372
  %4376 = load i64, ptr %1201, align 8
  %4377 = load i64, ptr %2454, align 8
  %4378 = call fastcc i32 @_tu_param_compare(i64 noundef %4376, i64 noundef %4377) #8
  %4379 = icmp eq i32 %4378, 2
  br i1 %4379, label %4380, label %4381

4380:                                             ; preds = %4375
  store i32 1, ptr %2510, align 8
  br label %4381

4381:                                             ; preds = %4380, %4375, %4372, %4367
  %4382 = load i32, ptr %1174, align 8
  %4383 = add i32 %4382, 1
  store i32 %4383, ptr %1174, align 8
  %4384 = icmp slt i32 %4383, 16
  br i1 %4384, label %2758, label %4385

4385:                                             ; preds = %4381
  %4386 = load i32, ptr %1173, align 4
  %4387 = add i32 %4386, 1
  store i32 %4387, ptr %1173, align 4
  %4388 = icmp slt i32 %4387, 16
  br i1 %4388, label %2757, label %4389

4389:                                             ; preds = %4385
  %4390 = load i32, ptr %1344, align 8
  %4391 = add i32 %4390, 1
  store i32 %4391, ptr %1344, align 8
  %4392 = icmp slt i32 %4391, 65
  br i1 %4392, label %2756, label %4393

4393:                                             ; preds = %4389
  %4394 = load i32, ptr %2450, align 8
  %4395 = add i32 %4394, -1
  store i32 %4395, ptr %2450, align 8
  %4396 = load i8, ptr %1170, align 4, !range !9
  %4397 = icmp eq i8 %4396, 1
  br i1 %4397, label %4403, label %4398

4398:                                             ; preds = %4393
  %4399 = load i32, ptr %2510, align 8
  %4400 = icmp ne i32 %4399, 1
  %4401 = icmp eq i32 %4395, 0
  %4402 = select i1 %4400, i1 true, i1 %4401
  br i1 %4402, label %4738, label %2533

4403:                                             ; preds = %4393
  %4404 = load i32, ptr %1171, align 4
  %4405 = load i32, ptr %1555, align 4
  %4406 = mul i32 %4405, %4404
  %4407 = load i32, ptr %1172, align 8
  %4408 = add i32 %4405, -1
  %4409 = mul i32 %4407, %4408
  %4410 = add i32 %4409, %4406
  %4411 = call i32 @llvm.abs.i32(i32 %4410, i1 false)
  %4412 = zext i32 %4411 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #8
  store i64 0, ptr %11, align 8, !annotation !8
  %4413 = call i64 @div64_u64_rem(i64 noundef %4412, i64 noundef 1, ptr noundef nonnull %11) #8
  %4414 = load i64, ptr %11, align 8
  br label %4415

4415:                                             ; preds = %4415, %4403
  %4416 = phi i64 [ %4414, %4403 ], [ %4423, %4415 ]
  %4417 = phi i64 [ %4413, %4403 ], [ %4425, %4415 ]
  %4418 = phi i32 [ 32, %4403 ], [ %4426, %4415 ]
  %4419 = shl i64 %4416, 1
  %4420 = shl i64 %4417, 1
  %4421 = icmp ne i64 %4419, 0
  %4422 = sext i1 %4421 to i64
  %4423 = add i64 %4419, %4422
  %4424 = zext i1 %4421 to i64
  %4425 = or i64 %4420, %4424
  %4426 = add nsw i32 %4418, -1
  %4427 = icmp eq i32 %4426, 0
  br i1 %4427, label %4428, label %4415

4428:                                             ; preds = %4415
  %4429 = and i64 %4423, 9223372036854775807
  %4430 = icmp ne i64 %4429, 0
  %4431 = zext i1 %4430 to i64
  %4432 = add i64 %4425, %4431
  %4433 = icmp slt i32 %4410, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #8
  %4434 = load i32, ptr %1171, align 4
  %4435 = load i32, ptr %1172, align 8
  %4436 = add i32 %4435, %4434
  %4437 = call i32 @llvm.abs.i32(i32 %4436, i1 false)
  %4438 = zext i32 %4437 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #8
  store i64 0, ptr %10, align 8, !annotation !8
  %4439 = call i64 @div64_u64_rem(i64 noundef %4438, i64 noundef 1, ptr noundef nonnull %10) #8
  %4440 = load i64, ptr %10, align 8
  br label %4441

4441:                                             ; preds = %4441, %4428
  %4442 = phi i64 [ %4440, %4428 ], [ %4449, %4441 ]
  %4443 = phi i64 [ %4439, %4428 ], [ %4451, %4441 ]
  %4444 = phi i32 [ 32, %4428 ], [ %4452, %4441 ]
  %4445 = shl i64 %4442, 1
  %4446 = shl i64 %4443, 1
  %4447 = icmp ne i64 %4445, 0
  %4448 = sext i1 %4447 to i64
  %4449 = add i64 %4445, %4448
  %4450 = zext i1 %4447 to i64
  %4451 = or i64 %4446, %4450
  %4452 = add nsw i32 %4444, -1
  %4453 = icmp eq i32 %4452, 0
  br i1 %4453, label %4454, label %4441

4454:                                             ; preds = %4441
  %4455 = sub i64 0, %4432
  %4456 = select i1 %4433, i64 %4455, i64 %4432
  %4457 = and i64 %4449, 9223372036854775807
  %4458 = icmp ne i64 %4457, 0
  %4459 = zext i1 %4458 to i64
  %4460 = add i64 %4451, %4459
  %4461 = sub i64 0, %4460
  %4462 = icmp slt i32 %4436, 0
  %4463 = select i1 %4462, i64 %4461, i64 %4460
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #8
  store i64 %4463, ptr %76, align 8
  %4464 = lshr i64 %4456, 63
  br label %4465

4465:                                             ; preds = %4471, %4454
  %4466 = phi i32 [ 62, %4454 ], [ %4472, %4471 ]
  %4467 = zext i32 %4466 to i64
  %4468 = lshr i64 %4456, %4467
  %4469 = and i64 %4468, 1
  %4470 = icmp eq i64 %4469, %4464
  br i1 %4470, label %4471, label %4474

4471:                                             ; preds = %4465
  %4472 = add nsw i32 %4466, -1
  %4473 = icmp eq i32 %4472, 0
  br i1 %4473, label %4474, label %4465

4474:                                             ; preds = %4471, %4465
  %4475 = phi i32 [ 0, %4471 ], [ %4466, %4465 ]
  %4476 = sub i32 62, %4475
  %4477 = zext i32 %4476 to i64
  %4478 = shl i64 %4456, %4477
  %4479 = icmp ult i32 %4476, 32
  %4480 = add i32 %4475, -30
  %4481 = select i1 %4479, i32 %4480, i32 0
  %4482 = zext i32 %4481 to i64
  %4483 = ashr i64 %4463, %4482
  %4484 = call i64 @div64_s64(i64 noundef %4478, i64 noundef %4483) #8
  %4485 = icmp ugt i32 %4476, 32
  %4486 = sub i32 30, %4475
  %4487 = select i1 %4485, i32 %4486, i32 0
  %4488 = zext i32 %4487 to i64
  %4489 = ashr i64 %4484, %4488
  store i64 %4489, ptr %2248, align 8
  %4490 = load i32, ptr %1345, align 4
  %4491 = call i32 @llvm.abs.i32(i32 %4490, i1 false)
  %4492 = zext i32 %4491 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #8
  store i64 0, ptr %9, align 8, !annotation !8
  %4493 = call i64 @div64_u64_rem(i64 noundef %4492, i64 noundef 1, ptr noundef nonnull %9) #8
  %4494 = load i64, ptr %9, align 8
  br label %4495

4495:                                             ; preds = %4495, %4474
  %4496 = phi i64 [ %4494, %4474 ], [ %4503, %4495 ]
  %4497 = phi i64 [ %4493, %4474 ], [ %4505, %4495 ]
  %4498 = phi i32 [ 32, %4474 ], [ %4506, %4495 ]
  %4499 = shl i64 %4496, 1
  %4500 = shl i64 %4497, 1
  %4501 = icmp ne i64 %4499, 0
  %4502 = sext i1 %4501 to i64
  %4503 = add i64 %4499, %4502
  %4504 = zext i1 %4501 to i64
  %4505 = or i64 %4500, %4504
  %4506 = add nsw i32 %4498, -1
  %4507 = icmp eq i32 %4506, 0
  br i1 %4507, label %4508, label %4495

4508:                                             ; preds = %4495
  %4509 = and i64 %4503, 9223372036854775807
  %4510 = icmp ne i64 %4509, 0
  %4511 = zext i1 %4510 to i64
  %4512 = add i64 %4505, %4511
  %4513 = sub i64 0, %4512
  %4514 = icmp slt i32 %4490, 0
  %4515 = select i1 %4514, i64 %4513, i64 %4512
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #8
  %4516 = load i64, ptr %1169, align 8
  %4517 = lshr i64 %4516, 63
  br label %4518

4518:                                             ; preds = %4524, %4508
  %4519 = phi i32 [ 62, %4508 ], [ %4525, %4524 ]
  %4520 = zext i32 %4519 to i64
  %4521 = lshr i64 %4516, %4520
  %4522 = and i64 %4521, 1
  %4523 = icmp eq i64 %4522, %4517
  br i1 %4523, label %4524, label %4527

4524:                                             ; preds = %4518
  %4525 = add nsw i32 %4519, -1
  %4526 = icmp eq i32 %4525, 0
  br i1 %4526, label %4527, label %4518

4527:                                             ; preds = %4524, %4518
  %4528 = phi i32 [ 0, %4524 ], [ %4519, %4518 ]
  %4529 = lshr i64 %4515, 63
  br label %4530

4530:                                             ; preds = %4536, %4527
  %4531 = phi i32 [ 62, %4527 ], [ %4537, %4536 ]
  %4532 = zext i32 %4531 to i64
  %4533 = lshr i64 %4515, %4532
  %4534 = and i64 %4533, 1
  %4535 = icmp eq i64 %4534, %4529
  br i1 %4535, label %4536, label %4539

4536:                                             ; preds = %4530
  %4537 = add nsw i32 %4531, -1
  %4538 = icmp eq i32 %4537, 0
  br i1 %4538, label %4539, label %4530

4539:                                             ; preds = %4536, %4530
  %4540 = phi i32 [ 0, %4536 ], [ %4531, %4530 ]
  %4541 = add i32 %4540, %4528
  %4542 = icmp ugt i32 %4541, 61
  br i1 %4542, label %4545, label %4543

4543:                                             ; preds = %4539
  %4544 = mul i64 %4516, %4515
  br label %4562

4545:                                             ; preds = %4539
  %4546 = add i32 %4541, -61
  %4547 = lshr i32 %4546, 1
  %4548 = and i32 %4546, 1
  %4549 = add nuw nsw i32 %4547, %4548
  %4550 = zext i32 %4549 to i64
  %4551 = ashr i64 %4516, %4550
  %4552 = zext i32 %4547 to i64
  %4553 = ashr i64 %4515, %4552
  %4554 = mul i64 %4551, %4553
  %4555 = icmp ugt i32 %4546, 32
  br i1 %4555, label %4556, label %4560

4556:                                             ; preds = %4545
  %4557 = add i32 %4541, -93
  %4558 = zext i32 %4557 to i64
  %4559 = shl i64 %4554, %4558
  br label %4568

4560:                                             ; preds = %4545
  %4561 = icmp eq i32 %4546, 32
  br i1 %4561, label %4568, label %4562

4562:                                             ; preds = %4560, %4543
  %4563 = phi i32 [ 0, %4543 ], [ %4546, %4560 ]
  %4564 = phi i64 [ %4544, %4543 ], [ %4554, %4560 ]
  %4565 = sub nuw nsw i32 32, %4563
  %4566 = zext i32 %4565 to i64
  %4567 = ashr i64 %4564, %4566
  br label %4568

4568:                                             ; preds = %4562, %4560, %4556
  %4569 = phi i64 [ %4559, %4556 ], [ %4567, %4562 ], [ %4554, %4560 ]
  store i64 %4569, ptr %2215, align 8
  %4570 = load i32, ptr %1555, align 4
  %4571 = add i32 %4570, -1
  store i32 %4571, ptr %1175, align 4
  %4572 = load i32, ptr %233, align 4
  %4573 = call i32 @llvm.abs.i32(i32 %4572, i1 false)
  %4574 = zext i32 %4573 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #8
  store i64 0, ptr %8, align 8, !annotation !8
  %4575 = call i64 @div64_u64_rem(i64 noundef %4574, i64 noundef 8, ptr noundef nonnull %8) #8
  %4576 = load i64, ptr %8, align 8
  br label %4577

4577:                                             ; preds = %4577, %4568
  %4578 = phi i64 [ %4576, %4568 ], [ %4585, %4577 ]
  %4579 = phi i64 [ %4575, %4568 ], [ %4588, %4577 ]
  %4580 = phi i32 [ 32, %4568 ], [ %4589, %4577 ]
  %4581 = shl i64 %4578, 1
  %4582 = shl i64 %4579, 1
  %4583 = icmp ult i64 %4581, 8
  %4584 = select i1 %4583, i64 0, i64 -8
  %4585 = add i64 %4584, %4581
  %4586 = xor i1 %4583, true
  %4587 = zext i1 %4586 to i64
  %4588 = or i64 %4582, %4587
  %4589 = add nsw i32 %4580, -1
  %4590 = icmp eq i32 %4589, 0
  br i1 %4590, label %4591, label %4577

4591:                                             ; preds = %4577
  %4592 = and i64 %4585, 9223372036854775804
  %4593 = icmp ne i64 %4592, 0
  %4594 = zext i1 %4593 to i64
  %4595 = add i64 %4588, %4594
  %4596 = sub i64 0, %4595
  %4597 = icmp slt i32 %4572, 0
  %4598 = select i1 %4597, i64 %4596, i64 %4595
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #8
  %4599 = load i64, ptr %267, align 8
  %4600 = lshr i64 %4599, 63
  br label %4601

4601:                                             ; preds = %4607, %4591
  %4602 = phi i32 [ 62, %4591 ], [ %4608, %4607 ]
  %4603 = zext i32 %4602 to i64
  %4604 = lshr i64 %4599, %4603
  %4605 = and i64 %4604, 1
  %4606 = icmp eq i64 %4605, %4600
  br i1 %4606, label %4607, label %4610

4607:                                             ; preds = %4601
  %4608 = add nsw i32 %4602, -1
  %4609 = icmp eq i32 %4608, 0
  br i1 %4609, label %4610, label %4601

4610:                                             ; preds = %4607, %4601
  %4611 = phi i32 [ 0, %4607 ], [ %4602, %4601 ]
  %4612 = lshr i64 %4598, 63
  br label %4613

4613:                                             ; preds = %4619, %4610
  %4614 = phi i32 [ 62, %4610 ], [ %4620, %4619 ]
  %4615 = zext i32 %4614 to i64
  %4616 = lshr i64 %4598, %4615
  %4617 = and i64 %4616, 1
  %4618 = icmp eq i64 %4617, %4612
  br i1 %4618, label %4619, label %4622

4619:                                             ; preds = %4613
  %4620 = add nsw i32 %4614, -1
  %4621 = icmp eq i32 %4620, 0
  br i1 %4621, label %4622, label %4613

4622:                                             ; preds = %4619, %4613
  %4623 = phi i32 [ 0, %4619 ], [ %4614, %4613 ]
  %4624 = add i32 %4623, %4611
  %4625 = icmp ugt i32 %4624, 61
  br i1 %4625, label %4628, label %4626

4626:                                             ; preds = %4622
  %4627 = mul i64 %4599, %4598
  br label %4645

4628:                                             ; preds = %4622
  %4629 = add i32 %4624, -61
  %4630 = lshr i32 %4629, 1
  %4631 = and i32 %4629, 1
  %4632 = add nuw nsw i32 %4630, %4631
  %4633 = zext i32 %4632 to i64
  %4634 = ashr i64 %4599, %4633
  %4635 = zext i32 %4630 to i64
  %4636 = ashr i64 %4598, %4635
  %4637 = mul i64 %4634, %4636
  %4638 = icmp ugt i32 %4629, 32
  br i1 %4638, label %4639, label %4643

4639:                                             ; preds = %4628
  %4640 = add i32 %4624, -93
  %4641 = zext i32 %4640 to i64
  %4642 = shl i64 %4637, %4641
  br label %4651

4643:                                             ; preds = %4628
  %4644 = icmp eq i32 %4629, 32
  br i1 %4644, label %4651, label %4645

4645:                                             ; preds = %4643, %4626
  %4646 = phi i32 [ 0, %4626 ], [ %4629, %4643 ]
  %4647 = phi i64 [ %4627, %4626 ], [ %4637, %4643 ]
  %4648 = sub nuw nsw i32 32, %4646
  %4649 = zext i32 %4648 to i64
  %4650 = ashr i64 %4647, %4649
  br label %4651

4651:                                             ; preds = %4645, %4643, %4639
  %4652 = phi i64 [ %4642, %4639 ], [ %4650, %4645 ], [ %4637, %4643 ]
  %4653 = load i64, ptr %2248, align 8
  %4654 = lshr i64 %4652, 63
  br label %4655

4655:                                             ; preds = %4661, %4651
  %4656 = phi i32 [ 62, %4651 ], [ %4662, %4661 ]
  %4657 = zext i32 %4656 to i64
  %4658 = lshr i64 %4652, %4657
  %4659 = and i64 %4658, 1
  %4660 = icmp eq i64 %4659, %4654
  br i1 %4660, label %4661, label %4664

4661:                                             ; preds = %4655
  %4662 = add nsw i32 %4656, -1
  %4663 = icmp eq i32 %4662, 0
  br i1 %4663, label %4664, label %4655

4664:                                             ; preds = %4661, %4655
  %4665 = phi i32 [ 0, %4661 ], [ %4656, %4655 ]
  %4666 = sub i32 62, %4665
  %4667 = zext i32 %4666 to i64
  %4668 = shl i64 %4652, %4667
  %4669 = icmp ult i32 %4666, 32
  %4670 = add i32 %4665, -30
  %4671 = select i1 %4669, i32 %4670, i32 0
  %4672 = zext i32 %4671 to i64
  %4673 = ashr i64 %4653, %4672
  %4674 = call i64 @div64_s64(i64 noundef %4668, i64 noundef %4673) #8
  %4675 = icmp ugt i32 %4666, 32
  %4676 = sub i32 30, %4665
  %4677 = select i1 %4675, i32 %4676, i32 0
  %4678 = zext i32 %4677 to i64
  %4679 = ashr i64 %4674, %4678
  store i64 %4679, ptr %76, align 8
  %4680 = lshr i64 %4679, 32
  %4681 = trunc i64 %4680 to i32
  store i32 %4681, ptr %1692, align 8
  %4682 = load i32, ptr %1345, align 4
  %4683 = add i32 %4682, -1
  store i32 %4683, ptr %1470, align 8
  store i32 1, ptr %1176, align 8
  %4684 = call i32 @llvm.abs.i32(i32 %4682, i1 false)
  %4685 = zext i32 %4684 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #8
  store i64 0, ptr %7, align 8, !annotation !8
  %4686 = call i64 @div64_u64_rem(i64 noundef %4685, i64 noundef 1, ptr noundef nonnull %7) #8
  %4687 = load i64, ptr %7, align 8
  br label %4688

4688:                                             ; preds = %4688, %4664
  %4689 = phi i64 [ %4687, %4664 ], [ %4696, %4688 ]
  %4690 = phi i64 [ %4686, %4664 ], [ %4698, %4688 ]
  %4691 = phi i32 [ 32, %4664 ], [ %4699, %4688 ]
  %4692 = shl i64 %4689, 1
  %4693 = shl i64 %4690, 1
  %4694 = icmp ne i64 %4692, 0
  %4695 = sext i1 %4694 to i64
  %4696 = add i64 %4692, %4695
  %4697 = zext i1 %4694 to i64
  %4698 = or i64 %4693, %4697
  %4699 = add nsw i32 %4691, -1
  %4700 = icmp eq i32 %4699, 0
  br i1 %4700, label %4701, label %4688

4701:                                             ; preds = %4688
  %4702 = and i64 %4696, 9223372036854775807
  %4703 = icmp ne i64 %4702, 0
  %4704 = zext i1 %4703 to i64
  %4705 = add i64 %4698, %4704
  %4706 = sub i64 0, %4705
  %4707 = icmp slt i32 %4682, 0
  %4708 = select i1 %4707, i64 %4706, i64 %4705
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #8
  %4709 = load i64, ptr %2248, align 8
  %4710 = lshr i64 %4709, 63
  br label %4711

4711:                                             ; preds = %4717, %4701
  %4712 = phi i32 [ 62, %4701 ], [ %4718, %4717 ]
  %4713 = zext i32 %4712 to i64
  %4714 = lshr i64 %4709, %4713
  %4715 = and i64 %4714, 1
  %4716 = icmp eq i64 %4715, %4710
  br i1 %4716, label %4717, label %4720

4717:                                             ; preds = %4711
  %4718 = add nsw i32 %4712, -1
  %4719 = icmp eq i32 %4718, 0
  br i1 %4719, label %4720, label %4711

4720:                                             ; preds = %4717, %4711
  %4721 = phi i32 [ 0, %4717 ], [ %4712, %4711 ]
  %4722 = sub i32 62, %4721
  %4723 = zext i32 %4722 to i64
  %4724 = shl i64 %4709, %4723
  %4725 = icmp ult i32 %4722, 32
  %4726 = add i32 %4721, -30
  %4727 = select i1 %4725, i32 %4726, i32 0
  %4728 = zext i32 %4727 to i64
  %4729 = ashr i64 %4708, %4728
  %4730 = call i64 @div64_s64(i64 noundef %4724, i64 noundef %4729) #8
  %4731 = icmp ugt i32 %4722, 32
  %4732 = sub i32 30, %4721
  %4733 = select i1 %4731, i32 %4732, i32 0
  %4734 = zext i32 %4733 to i64
  %4735 = ashr i64 %4730, %4734
  %4736 = load i64, ptr %1169, align 8
  %4737 = sub i64 %4735, %4736
  store i64 %4737, ptr %2304, align 8
  br label %4738

4738:                                             ; preds = %4720, %4398, %2504
  %4739 = load i64, ptr %267, align 8
  %4740 = lshr i64 %134, 63
  br label %4741

4741:                                             ; preds = %4747, %4738
  %4742 = phi i32 [ 62, %4738 ], [ %4748, %4747 ]
  %4743 = zext i32 %4742 to i64
  %4744 = lshr i64 %134, %4743
  %4745 = and i64 %4744, 1
  %4746 = icmp eq i64 %4745, %4740
  br i1 %4746, label %4747, label %4750

4747:                                             ; preds = %4741
  %4748 = add nsw i32 %4742, -1
  %4749 = icmp eq i32 %4748, 0
  br i1 %4749, label %4750, label %4741

4750:                                             ; preds = %4747, %4741
  %4751 = phi i32 [ 0, %4747 ], [ %4742, %4741 ]
  %4752 = lshr i64 %4739, 63
  br label %4753

4753:                                             ; preds = %4759, %4750
  %4754 = phi i32 [ 62, %4750 ], [ %4760, %4759 ]
  %4755 = zext i32 %4754 to i64
  %4756 = lshr i64 %4739, %4755
  %4757 = and i64 %4756, 1
  %4758 = icmp eq i64 %4757, %4752
  br i1 %4758, label %4759, label %4762

4759:                                             ; preds = %4753
  %4760 = add nsw i32 %4754, -1
  %4761 = icmp eq i32 %4760, 0
  br i1 %4761, label %4762, label %4753

4762:                                             ; preds = %4759, %4753
  %4763 = phi i32 [ 0, %4759 ], [ %4754, %4753 ]
  %4764 = add i32 %4763, %4751
  %4765 = icmp ugt i32 %4764, 61
  br i1 %4765, label %4768, label %4766

4766:                                             ; preds = %4762
  %4767 = mul i64 %4739, %134
  br label %4785

4768:                                             ; preds = %4762
  %4769 = add i32 %4764, -61
  %4770 = lshr i32 %4769, 1
  %4771 = and i32 %4769, 1
  %4772 = add nuw nsw i32 %4770, %4771
  %4773 = zext i32 %4772 to i64
  %4774 = ashr i64 %134, %4773
  %4775 = zext i32 %4770 to i64
  %4776 = ashr i64 %4739, %4775
  %4777 = mul i64 %4774, %4776
  %4778 = icmp ugt i32 %4769, 32
  br i1 %4778, label %4779, label %4783

4779:                                             ; preds = %4768
  %4780 = add i32 %4764, -93
  %4781 = zext i32 %4780 to i64
  %4782 = shl i64 %4777, %4781
  br label %4791

4783:                                             ; preds = %4768
  %4784 = icmp eq i32 %4769, 32
  br i1 %4784, label %4791, label %4785

4785:                                             ; preds = %4783, %4766
  %4786 = phi i32 [ 0, %4766 ], [ %4769, %4783 ]
  %4787 = phi i64 [ %4767, %4766 ], [ %4777, %4783 ]
  %4788 = sub nuw nsw i32 32, %4786
  %4789 = zext i32 %4788 to i64
  %4790 = ashr i64 %4787, %4789
  br label %4791

4791:                                             ; preds = %4785, %4783, %4779
  %4792 = phi i64 [ %4782, %4779 ], [ %4790, %4785 ], [ %4777, %4783 ]
  store i64 %4792, ptr %76, align 8
  %4793 = icmp eq i64 %4792, 0
  br i1 %4793, label %4799, label %4794

4794:                                             ; preds = %4791
  %4795 = icmp sgt i64 %4792, 0
  %4796 = select i1 %4795, i64 4294967295, i64 -4294967295
  %4797 = add i64 %4796, %4792
  %4798 = ashr i64 %4797, 32
  br label %4799

4799:                                             ; preds = %4794, %4791
  %4800 = phi i64 [ %4798, %4794 ], [ 0, %4791 ]
  %4801 = load i32, ptr %230, align 8
  %4802 = call i32 @llvm.abs.i32(i32 %4801, i1 false)
  %4803 = zext i32 %4802 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #8
  store i64 0, ptr %6, align 8, !annotation !8
  %4804 = call i64 @div64_u64_rem(i64 noundef %4803, i64 noundef 1, ptr noundef nonnull %6) #8
  %4805 = load i64, ptr %6, align 8
  br label %4806

4806:                                             ; preds = %4806, %4799
  %4807 = phi i64 [ %4805, %4799 ], [ %4814, %4806 ]
  %4808 = phi i64 [ %4804, %4799 ], [ %4816, %4806 ]
  %4809 = phi i32 [ 32, %4799 ], [ %4817, %4806 ]
  %4810 = shl i64 %4807, 1
  %4811 = shl i64 %4808, 1
  %4812 = icmp ne i64 %4810, 0
  %4813 = sext i1 %4812 to i64
  %4814 = add i64 %4810, %4813
  %4815 = zext i1 %4812 to i64
  %4816 = or i64 %4811, %4815
  %4817 = add nsw i32 %4809, -1
  %4818 = icmp eq i32 %4817, 0
  br i1 %4818, label %4819, label %4806

4819:                                             ; preds = %4806
  %4820 = and i64 %4814, 9223372036854775807
  %4821 = icmp ne i64 %4820, 0
  %4822 = zext i1 %4821 to i64
  %4823 = add i64 %4816, %4822
  %4824 = sub i64 0, %4823
  %4825 = icmp slt i32 %4801, 0
  %4826 = select i1 %4825, i64 %4824, i64 %4823
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #8
  %4827 = load i64, ptr %1169, align 8
  %4828 = lshr i64 %4827, 63
  br label %4829

4829:                                             ; preds = %4835, %4819
  %4830 = phi i32 [ 62, %4819 ], [ %4836, %4835 ]
  %4831 = zext i32 %4830 to i64
  %4832 = lshr i64 %4827, %4831
  %4833 = and i64 %4832, 1
  %4834 = icmp eq i64 %4833, %4828
  br i1 %4834, label %4835, label %4838

4835:                                             ; preds = %4829
  %4836 = add nsw i32 %4830, -1
  %4837 = icmp eq i32 %4836, 0
  br i1 %4837, label %4838, label %4829

4838:                                             ; preds = %4835, %4829
  %4839 = phi i32 [ 0, %4835 ], [ %4830, %4829 ]
  %4840 = lshr i64 %4826, 63
  br label %4841

4841:                                             ; preds = %4847, %4838
  %4842 = phi i32 [ 62, %4838 ], [ %4848, %4847 ]
  %4843 = zext i32 %4842 to i64
  %4844 = lshr i64 %4826, %4843
  %4845 = and i64 %4844, 1
  %4846 = icmp eq i64 %4845, %4840
  br i1 %4846, label %4847, label %4850

4847:                                             ; preds = %4841
  %4848 = add nsw i32 %4842, -1
  %4849 = icmp eq i32 %4848, 0
  br i1 %4849, label %4850, label %4841

4850:                                             ; preds = %4847, %4841
  %4851 = phi i32 [ 0, %4847 ], [ %4842, %4841 ]
  %4852 = add i32 %4851, %4839
  %4853 = icmp ugt i32 %4852, 61
  br i1 %4853, label %4856, label %4854

4854:                                             ; preds = %4850
  %4855 = mul i64 %4827, %4826
  br label %4873

4856:                                             ; preds = %4850
  %4857 = add i32 %4852, -61
  %4858 = lshr i32 %4857, 1
  %4859 = and i32 %4857, 1
  %4860 = add nuw nsw i32 %4858, %4859
  %4861 = zext i32 %4860 to i64
  %4862 = ashr i64 %4827, %4861
  %4863 = zext i32 %4858 to i64
  %4864 = ashr i64 %4826, %4863
  %4865 = mul i64 %4862, %4864
  %4866 = icmp ugt i32 %4857, 32
  br i1 %4866, label %4867, label %4871

4867:                                             ; preds = %4856
  %4868 = add i32 %4852, -93
  %4869 = zext i32 %4868 to i64
  %4870 = shl i64 %4865, %4869
  br label %4879

4871:                                             ; preds = %4856
  %4872 = icmp eq i32 %4857, 32
  br i1 %4872, label %4879, label %4873

4873:                                             ; preds = %4871, %4854
  %4874 = phi i32 [ 0, %4854 ], [ %4857, %4871 ]
  %4875 = phi i64 [ %4855, %4854 ], [ %4865, %4871 ]
  %4876 = sub nuw nsw i32 32, %4874
  %4877 = zext i32 %4876 to i64
  %4878 = ashr i64 %4875, %4877
  br label %4879

4879:                                             ; preds = %4873, %4871, %4867
  %4880 = phi i64 [ %4870, %4867 ], [ %4878, %4873 ], [ %4865, %4871 ]
  store i64 %4880, ptr %76, align 8
  %4881 = load i32, ptr %233, align 4
  %4882 = call i32 @llvm.abs.i32(i32 %4881, i1 false)
  %4883 = zext i32 %4882 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #8
  store i64 0, ptr %5, align 8, !annotation !8
  %4884 = call i64 @div64_u64_rem(i64 noundef %4883, i64 noundef 8, ptr noundef nonnull %5) #8
  %4885 = load i64, ptr %5, align 8
  br label %4886

4886:                                             ; preds = %4886, %4879
  %4887 = phi i64 [ %4885, %4879 ], [ %4894, %4886 ]
  %4888 = phi i64 [ %4884, %4879 ], [ %4897, %4886 ]
  %4889 = phi i32 [ 32, %4879 ], [ %4898, %4886 ]
  %4890 = shl i64 %4887, 1
  %4891 = shl i64 %4888, 1
  %4892 = icmp ult i64 %4890, 8
  %4893 = select i1 %4892, i64 0, i64 -8
  %4894 = add i64 %4893, %4890
  %4895 = xor i1 %4892, true
  %4896 = zext i1 %4895 to i64
  %4897 = or i64 %4891, %4896
  %4898 = add nsw i32 %4889, -1
  %4899 = icmp eq i32 %4898, 0
  br i1 %4899, label %4900, label %4886

4900:                                             ; preds = %4886
  %4901 = and i64 %4894, 9223372036854775804
  %4902 = icmp ne i64 %4901, 0
  %4903 = zext i1 %4902 to i64
  %4904 = add i64 %4897, %4903
  %4905 = sub i64 0, %4904
  %4906 = icmp slt i32 %4881, 0
  %4907 = select i1 %4906, i64 %4905, i64 %4904
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #8
  %4908 = load i64, ptr %76, align 8
  %4909 = lshr i64 %4907, 63
  br label %4910

4910:                                             ; preds = %4916, %4900
  %4911 = phi i32 [ 62, %4900 ], [ %4917, %4916 ]
  %4912 = zext i32 %4911 to i64
  %4913 = lshr i64 %4907, %4912
  %4914 = and i64 %4913, 1
  %4915 = icmp eq i64 %4914, %4909
  br i1 %4915, label %4916, label %4919

4916:                                             ; preds = %4910
  %4917 = add nsw i32 %4911, -1
  %4918 = icmp eq i32 %4917, 0
  br i1 %4918, label %4919, label %4910

4919:                                             ; preds = %4916, %4910
  %4920 = phi i32 [ 0, %4916 ], [ %4911, %4910 ]
  %4921 = sub i32 62, %4920
  %4922 = zext i32 %4921 to i64
  %4923 = shl i64 %4907, %4922
  %4924 = icmp ult i32 %4921, 32
  %4925 = add i32 %4920, -30
  %4926 = select i1 %4924, i32 %4925, i32 0
  %4927 = zext i32 %4926 to i64
  %4928 = ashr i64 %4908, %4927
  %4929 = call i64 @div64_s64(i64 noundef %4923, i64 noundef %4928) #8
  %4930 = icmp ugt i32 %4921, 32
  %4931 = sub i32 30, %4920
  %4932 = select i1 %4930, i32 %4931, i32 0
  %4933 = zext i32 %4932 to i64
  %4934 = ashr i64 %4929, %4933
  store i64 %4934, ptr %76, align 8
  %4935 = call i64 @llvm.abs.i64(i64 %4800, i1 false) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #8
  store i64 0, ptr %4, align 8, !annotation !8
  %4936 = call i64 @div64_u64_rem(i64 noundef %4935, i64 noundef 1, ptr noundef nonnull %4) #8
  %4937 = load i64, ptr %4, align 8
  br label %4938

4938:                                             ; preds = %4938, %4919
  %4939 = phi i64 [ %4937, %4919 ], [ %4946, %4938 ]
  %4940 = phi i64 [ %4936, %4919 ], [ %4948, %4938 ]
  %4941 = phi i32 [ 32, %4919 ], [ %4949, %4938 ]
  %4942 = shl i64 %4939, 1
  %4943 = shl i64 %4940, 1
  %4944 = icmp ne i64 %4942, 0
  %4945 = sext i1 %4944 to i64
  %4946 = add i64 %4942, %4945
  %4947 = zext i1 %4944 to i64
  %4948 = or i64 %4943, %4947
  %4949 = add nsw i32 %4941, -1
  %4950 = icmp eq i32 %4949, 0
  br i1 %4950, label %4951, label %4938

4951:                                             ; preds = %4938
  %4952 = and i64 %4946, 9223372036854775807
  %4953 = icmp ne i64 %4952, 0
  %4954 = zext i1 %4953 to i64
  %4955 = add i64 %4948, %4954
  %4956 = sub i64 0, %4955
  %4957 = icmp slt i64 %4800, 0
  %4958 = select i1 %4957, i64 %4956, i64 %4955
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  %4959 = load i64, ptr %76, align 8
  %4960 = lshr i64 %4958, 63
  br label %4961

4961:                                             ; preds = %4967, %4951
  %4962 = phi i32 [ 62, %4951 ], [ %4968, %4967 ]
  %4963 = zext i32 %4962 to i64
  %4964 = lshr i64 %4958, %4963
  %4965 = and i64 %4964, 1
  %4966 = icmp eq i64 %4965, %4960
  br i1 %4966, label %4967, label %4970

4967:                                             ; preds = %4961
  %4968 = add nsw i32 %4962, -1
  %4969 = icmp eq i32 %4968, 0
  br i1 %4969, label %4970, label %4961

4970:                                             ; preds = %4967, %4961
  %4971 = phi i32 [ 0, %4967 ], [ %4962, %4961 ]
  %4972 = lshr i64 %4959, 63
  br label %4973

4973:                                             ; preds = %4979, %4970
  %4974 = phi i32 [ 62, %4970 ], [ %4980, %4979 ]
  %4975 = zext i32 %4974 to i64
  %4976 = lshr i64 %4959, %4975
  %4977 = and i64 %4976, 1
  %4978 = icmp eq i64 %4977, %4972
  br i1 %4978, label %4979, label %4982

4979:                                             ; preds = %4973
  %4980 = add nsw i32 %4974, -1
  %4981 = icmp eq i32 %4980, 0
  br i1 %4981, label %4982, label %4973

4982:                                             ; preds = %4979, %4973
  %4983 = phi i32 [ 0, %4979 ], [ %4974, %4973 ]
  %4984 = add i32 %4983, %4971
  %4985 = icmp ugt i32 %4984, 61
  br i1 %4985, label %4988, label %4986

4986:                                             ; preds = %4982
  %4987 = mul i64 %4959, %4958
  br label %5005

4988:                                             ; preds = %4982
  %4989 = add i32 %4984, -61
  %4990 = lshr i32 %4989, 1
  %4991 = and i32 %4989, 1
  %4992 = add nuw nsw i32 %4990, %4991
  %4993 = zext i32 %4992 to i64
  %4994 = ashr i64 %4958, %4993
  %4995 = zext i32 %4990 to i64
  %4996 = ashr i64 %4959, %4995
  %4997 = mul i64 %4994, %4996
  %4998 = icmp ugt i32 %4989, 32
  br i1 %4998, label %4999, label %5003

4999:                                             ; preds = %4988
  %5000 = add i32 %4984, -93
  %5001 = zext i32 %5000 to i64
  %5002 = shl i64 %4997, %5001
  br label %5011

5003:                                             ; preds = %4988
  %5004 = icmp eq i32 %4989, 32
  br i1 %5004, label %5011, label %5005

5005:                                             ; preds = %5003, %4986
  %5006 = phi i32 [ 0, %4986 ], [ %4989, %5003 ]
  %5007 = phi i64 [ %4987, %4986 ], [ %4997, %5003 ]
  %5008 = sub nuw nsw i32 32, %5006
  %5009 = zext i32 %5008 to i64
  %5010 = ashr i64 %5007, %5009
  br label %5011

5011:                                             ; preds = %5005, %5003, %4999
  %5012 = phi i64 [ %5002, %4999 ], [ %5010, %5005 ], [ %4997, %5003 ]
  store i64 %5012, ptr %76, align 8
  %5013 = load i32, ptr %242, align 8
  %5014 = icmp eq i32 %5013, 0
  br i1 %5014, label %5015, label %5017

5015:                                             ; preds = %5011
  %5016 = load i32, ptr %2221, align 8
  br label %5022

5017:                                             ; preds = %5011
  %5018 = lshr i64 %5012, 32
  %5019 = trunc i64 %5018 to i32
  %5020 = load i32, ptr %2221, align 8
  %5021 = add i32 %5020, %5019
  store i32 %5021, ptr %2221, align 8
  br label %5022

5022:                                             ; preds = %5017, %5015
  %5023 = phi i32 [ %5016, %5015 ], [ %5021, %5017 ]
  %5024 = call i32 @llvm.abs.i32(i32 %5023, i1 false)
  %5025 = zext i32 %5024 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #8
  store i64 0, ptr %3, align 8, !annotation !8
  %5026 = call i64 @div64_u64_rem(i64 noundef %5025, i64 noundef 1, ptr noundef nonnull %3) #8
  %5027 = load i64, ptr %3, align 8
  br label %5028

5028:                                             ; preds = %5028, %5022
  %5029 = phi i64 [ %5027, %5022 ], [ %5036, %5028 ]
  %5030 = phi i64 [ %5026, %5022 ], [ %5038, %5028 ]
  %5031 = phi i32 [ 32, %5022 ], [ %5039, %5028 ]
  %5032 = shl i64 %5029, 1
  %5033 = shl i64 %5030, 1
  %5034 = icmp ne i64 %5032, 0
  %5035 = sext i1 %5034 to i64
  %5036 = add i64 %5032, %5035
  %5037 = zext i1 %5034 to i64
  %5038 = or i64 %5033, %5037
  %5039 = add nsw i32 %5031, -1
  %5040 = icmp eq i32 %5039, 0
  br i1 %5040, label %5041, label %5028

5041:                                             ; preds = %5028
  %5042 = and i64 %5036, 9223372036854775807
  %5043 = icmp ne i64 %5042, 0
  %5044 = zext i1 %5043 to i64
  %5045 = add i64 %5038, %5044
  %5046 = sub i64 0, %5045
  %5047 = icmp slt i32 %5023, 0
  %5048 = select i1 %5047, i64 %5046, i64 %5045
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #8
  %5049 = load i64, ptr %163, align 8
  %5050 = lshr i64 %5048, 63
  br label %5051

5051:                                             ; preds = %5057, %5041
  %5052 = phi i32 [ 62, %5041 ], [ %5058, %5057 ]
  %5053 = zext i32 %5052 to i64
  %5054 = lshr i64 %5048, %5053
  %5055 = and i64 %5054, 1
  %5056 = icmp eq i64 %5055, %5050
  br i1 %5056, label %5057, label %5060

5057:                                             ; preds = %5051
  %5058 = add nsw i32 %5052, -1
  %5059 = icmp eq i32 %5058, 0
  br i1 %5059, label %5060, label %5051

5060:                                             ; preds = %5057, %5051
  %5061 = phi i32 [ 0, %5057 ], [ %5052, %5051 ]
  %5062 = sub i32 62, %5061
  %5063 = zext i32 %5062 to i64
  %5064 = shl i64 %5048, %5063
  %5065 = icmp ult i32 %5062, 32
  %5066 = add i32 %5061, -30
  %5067 = select i1 %5065, i32 %5066, i32 0
  %5068 = zext i32 %5067 to i64
  %5069 = ashr i64 %5049, %5068
  %5070 = call i64 @div64_s64(i64 noundef %5064, i64 noundef %5069) #8
  %5071 = icmp ugt i32 %5062, 32
  %5072 = sub i32 30, %5061
  %5073 = select i1 %5071, i32 %5072, i32 0
  %5074 = zext i32 %5073 to i64
  %5075 = ashr i64 %5070, %5074
  store i64 %5075, ptr %1179, align 8
  %5076 = load i32, ptr %1555, align 4
  %5077 = trunc i32 %5076 to i8
  %5078 = getelementptr inbounds %struct.dp_vc_tu_mapping_table, ptr %1, i32 0, i32 4
  store i8 %5077, ptr %5078, align 1
  %5079 = load i32, ptr %2221, align 8
  %5080 = trunc i32 %5079 to i16
  %5081 = getelementptr inbounds %struct.dp_vc_tu_mapping_table, ptr %1, i32 0, i32 5
  store i16 %5080, ptr %5081, align 4
  %5082 = load i8, ptr %1170, align 4, !range !9
  %5083 = getelementptr inbounds %struct.dp_vc_tu_mapping_table, ptr %1, i32 0, i32 6
  store i8 %5082, ptr %5083, align 2
  %5084 = load i32, ptr %1175, align 4
  %5085 = trunc i32 %5084 to i8
  %5086 = getelementptr inbounds %struct.dp_vc_tu_mapping_table, ptr %1, i32 0, i32 7
  store i8 %5085, ptr %5086, align 1
  %5087 = load i32, ptr %1171, align 4
  %5088 = trunc i32 %5087 to i8
  %5089 = getelementptr inbounds %struct.dp_vc_tu_mapping_table, ptr %1, i32 0, i32 8
  store i8 %5088, ptr %5089, align 4
  %5090 = load i32, ptr %1172, align 8
  %5091 = trunc i32 %5090 to i8
  %5092 = getelementptr inbounds %struct.dp_vc_tu_mapping_table, ptr %1, i32 0, i32 9
  store i8 %5091, ptr %5092, align 1
  %5093 = load i32, ptr %1470, align 8
  %5094 = trunc i32 %5093 to i8
  %5095 = getelementptr inbounds %struct.dp_vc_tu_mapping_table, ptr %1, i32 0, i32 10
  store i8 %5094, ptr %5095, align 2
  %5096 = and i32 %5076, 255
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.62, i32 noundef %5096) #8
  %5097 = load i16, ptr %5081, align 4
  %5098 = zext i16 %5097 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.63, i32 noundef %5098) #8
  %5099 = load i8, ptr %5083, align 2, !range !9
  %5100 = zext i8 %5099 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.64, i32 noundef %5100) #8
  %5101 = load i8, ptr %5086, align 1
  %5102 = zext i8 %5101 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.65, i32 noundef %5102) #8
  %5103 = load i8, ptr %5089, align 4
  %5104 = zext i8 %5103 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.66, i32 noundef %5104) #8
  %5105 = load i8, ptr %5092, align 1
  %5106 = zext i8 %5105 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.67, i32 noundef %5106) #8
  %5107 = load i8, ptr %5095, align 2
  %5108 = zext i8 %5107 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.68, i32 noundef %5108) #8
  call void @kfree(ptr noundef nonnull %163) #8
  br label %5109

5109:                                             ; preds = %5060, %154
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %76) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64_rem(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @_tu_param_compare(i64 noundef %0, i64 noundef %1) unnamed_addr #0 {
  %3 = alloca i64, align 8
  %4 = icmp eq i64 %0, %1
  br i1 %4, label %144, label %5

5:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #8
  store i64 0, ptr %3, align 8, !annotation !8
  %6 = call i64 @div64_u64_rem(i64 noundef 1, i64 noundef 1, ptr noundef nonnull %3) #8
  %7 = load i64, ptr %3, align 8
  br label %8

8:                                                ; preds = %8, %5
  %9 = phi i64 [ %7, %5 ], [ %16, %8 ]
  %10 = phi i64 [ %6, %5 ], [ %18, %8 ]
  %11 = phi i32 [ 32, %5 ], [ %19, %8 ]
  %12 = shl i64 %9, 1
  %13 = shl i64 %10, 1
  %14 = icmp ne i64 %12, 0
  %15 = sext i1 %14 to i64
  %16 = add i64 %12, %15
  %17 = zext i1 %14 to i64
  %18 = or i64 %13, %17
  %19 = add nsw i32 %11, -1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %8

21:                                               ; preds = %8
  %22 = and i64 %16, 9223372036854775807
  %23 = icmp ne i64 %22, 0
  %24 = sext i1 %23 to i64
  %25 = sub i64 %24, %18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #8
  %26 = lshr i64 %0, 63
  %27 = trunc i64 %26 to i32
  %28 = lshr i64 %1, 63
  %29 = trunc i64 %28 to i32
  %30 = icmp ugt i32 %27, %29
  br i1 %30, label %144, label %31

31:                                               ; preds = %21
  %32 = icmp ugt i32 %29, %27
  br i1 %32, label %144, label %33

33:                                               ; preds = %31
  %34 = or i64 %1, %0
  %35 = icmp sgt i64 %34, -1
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = icmp sgt i64 %0, %1
  %38 = select i1 %37, i32 1, i32 2
  br label %144

39:                                               ; preds = %45, %33
  %40 = phi i32 [ %46, %45 ], [ 62, %33 ]
  %41 = zext i32 %40 to i64
  %42 = lshr i64 %0, %41
  %43 = and i64 %42, 1
  %44 = icmp eq i64 %43, %26
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = add nsw i32 %40, -1
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %39

48:                                               ; preds = %45, %39
  %49 = phi i32 [ 0, %45 ], [ %40, %39 ]
  %50 = lshr i64 %25, 63
  br label %51

51:                                               ; preds = %57, %48
  %52 = phi i32 [ 62, %48 ], [ %58, %57 ]
  %53 = zext i32 %52 to i64
  %54 = lshr i64 %25, %53
  %55 = and i64 %54, 1
  %56 = icmp eq i64 %55, %50
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = add nsw i32 %52, -1
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %51

60:                                               ; preds = %57, %51
  %61 = phi i32 [ 0, %57 ], [ %52, %51 ]
  %62 = add i32 %61, %49
  %63 = icmp ugt i32 %62, 61
  br i1 %63, label %66, label %64

64:                                               ; preds = %60
  %65 = mul i64 %25, %0
  br label %83

66:                                               ; preds = %60
  %67 = add i32 %62, -61
  %68 = lshr i32 %67, 1
  %69 = and i32 %67, 1
  %70 = add nuw nsw i32 %68, %69
  %71 = zext i32 %70 to i64
  %72 = ashr i64 %0, %71
  %73 = zext i32 %68 to i64
  %74 = ashr i64 %25, %73
  %75 = mul i64 %72, %74
  %76 = icmp ugt i32 %67, 32
  br i1 %76, label %77, label %81

77:                                               ; preds = %66
  %78 = add i32 %62, -93
  %79 = zext i32 %78 to i64
  %80 = shl i64 %75, %79
  br label %89

81:                                               ; preds = %66
  %82 = icmp eq i32 %67, 32
  br i1 %82, label %89, label %83

83:                                               ; preds = %81, %64
  %84 = phi i32 [ 0, %64 ], [ %67, %81 ]
  %85 = phi i64 [ %65, %64 ], [ %75, %81 ]
  %86 = sub nuw nsw i32 32, %84
  %87 = zext i32 %86 to i64
  %88 = ashr i64 %85, %87
  br label %89

89:                                               ; preds = %83, %81, %77
  %90 = phi i64 [ %80, %77 ], [ %88, %83 ], [ %75, %81 ]
  br label %91

91:                                               ; preds = %97, %89
  %92 = phi i32 [ 62, %89 ], [ %98, %97 ]
  %93 = zext i32 %92 to i64
  %94 = lshr i64 %1, %93
  %95 = and i64 %94, 1
  %96 = icmp eq i64 %95, %28
  br i1 %96, label %97, label %100

97:                                               ; preds = %91
  %98 = add nsw i32 %92, -1
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %91

100:                                              ; preds = %97, %91
  %101 = phi i32 [ 0, %97 ], [ %92, %91 ]
  br label %102

102:                                              ; preds = %108, %100
  %103 = phi i32 [ 62, %100 ], [ %109, %108 ]
  %104 = zext i32 %103 to i64
  %105 = lshr i64 %25, %104
  %106 = and i64 %105, 1
  %107 = icmp eq i64 %106, %50
  br i1 %107, label %108, label %111

108:                                              ; preds = %102
  %109 = add nsw i32 %103, -1
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %102

111:                                              ; preds = %108, %102
  %112 = phi i32 [ 0, %108 ], [ %103, %102 ]
  %113 = add i32 %112, %101
  %114 = icmp ugt i32 %113, 61
  br i1 %114, label %117, label %115

115:                                              ; preds = %111
  %116 = mul i64 %25, %1
  br label %134

117:                                              ; preds = %111
  %118 = add i32 %113, -61
  %119 = lshr i32 %118, 1
  %120 = and i32 %118, 1
  %121 = add nuw nsw i32 %119, %120
  %122 = zext i32 %121 to i64
  %123 = ashr i64 %1, %122
  %124 = zext i32 %119 to i64
  %125 = ashr i64 %25, %124
  %126 = mul i64 %123, %125
  %127 = icmp ugt i32 %118, 32
  br i1 %127, label %128, label %132

128:                                              ; preds = %117
  %129 = add i32 %113, -93
  %130 = zext i32 %129 to i64
  %131 = shl i64 %126, %130
  br label %140

132:                                              ; preds = %117
  %133 = icmp eq i32 %118, 32
  br i1 %133, label %140, label %134

134:                                              ; preds = %132, %115
  %135 = phi i32 [ 0, %115 ], [ %118, %132 ]
  %136 = phi i64 [ %116, %115 ], [ %126, %132 ]
  %137 = sub nuw nsw i32 32, %135
  %138 = zext i32 %137 to i64
  %139 = ashr i64 %136, %138
  br label %140

140:                                              ; preds = %134, %132, %128
  %141 = phi i64 [ %131, %128 ], [ %139, %134 ], [ %126, %132 ]
  %142 = icmp sgt i64 %90, %141
  %143 = select i1 %142, i32 2, i32 1
  br label %144

144:                                              ; preds = %140, %36, %31, %21, %2
  %145 = phi i32 [ 0, %2 ], [ 2, %21 ], [ 1, %31 ], [ %38, %36 ], [ %143, %140 ]
  ret i32 %145
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_s64(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

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
