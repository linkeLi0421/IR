; ModuleID = '/llk/IR/drivers/gpu/drm/msm/dp/dp_power.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/dp/dp_power.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dp_power = type { i8, i8, i8 }
%struct.dp_parser = type { ptr, [4 x %struct.dss_module_power], %struct.dp_pinctrl, %struct.dp_io, %struct.dp_display_data, ptr, i32, ptr, ptr }
%struct.dss_module_power = type { i32, ptr }
%struct.dp_pinctrl = type { ptr, ptr, ptr, ptr }
%struct.dp_io = type { %struct.dss_io_data, ptr, %union.phy_configure_opts }
%struct.dss_io_data = type { %struct.dss_io_region, %struct.dss_io_region, %struct.dss_io_region, %struct.dss_io_region }
%struct.dss_io_region = type { i32, ptr }
%union.phy_configure_opts = type { %struct.phy_configure_opts_mipi_dphy }
%struct.phy_configure_opts_mipi_dphy = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.dp_display_data = type { ptr, ptr, i8, ptr, ptr }
%struct.dp_power_private = type { ptr, ptr, ptr, ptr, ptr, ptr, [4 x %struct.regulator_bulk_data], %struct.dp_power }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.dss_clk = type { ptr, [32 x i8], i32, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.dp_regulator_cfg = type { i32, [4 x %struct.dp_reg_entry] }
%struct.dp_reg_entry = type { [32 x i8], i32, i32 }

@.str = private unnamed_addr constant [48 x i8] c"core_clk_on=%d link_clk_on=%d stream_clk_on=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"unsupported power module: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"core clks already enabled\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"links clks already enabled\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"pixel clks already enabled\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"Enable core clks before link clks\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"fail to enable clks: %s. err=%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"failed to '%s' clks for: %s. err=%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"disable\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"%s clocks for %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"strem_clks:%s link_clks:%s core_clks:%s\0A\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"invalid power data\0A\00", align 1
@.str.15 = private unnamed_addr constant [30 x i8] c"failed to init regulators %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"failed to init clocks %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [33 x i8] c"failed to enable regulators, %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [37 x i8] c"failed to enable DP core clocks, %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"invalid input\0A\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"DP_CORE_PM\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"DP_CTRL_PM\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"DP_STREAM_PM\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"DP_PHY_PM\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@.str.25 = private unnamed_addr constant [30 x i8] c"failed to set link clks rate\0A\00", align 1
@.str.26 = private unnamed_addr constant [25 x i8] c"failed to set clks rate\0A\00", align 1
@.str.27 = private unnamed_addr constant [28 x i8] c"failed to %d clks, err: %d\0A\00", align 1
@.str.28 = private unnamed_addr constant [53 x i8] c"\013[drm-dp] %s: %s: failed to init regulator, ret=%d\0A\00", align 1
@__func__.dp_power_regulator_init = private unnamed_addr constant [24 x i8] c"dp_power_regulator_init\00", align 1
@.str.29 = private unnamed_addr constant [30 x i8] c"failed to get %s clk. err=%d\0A\00", align 1
@.str.30 = private unnamed_addr constant [20 x i8] c"invalid power_data\0A\00", align 1
@.str.31 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.32 = private unnamed_addr constant [52 x i8] c"\013[drm-dp] %s: regulator %d set op mode failed, %d\0A\00", align 1
@__func__.dp_power_regulator_enable = private unnamed_addr constant [26 x i8] c"dp_power_regulator_enable\00", align 1
@.str.33 = private unnamed_addr constant [44 x i8] c"\013[drm-dp] %s: regulator enable failed, %d\0A\00", align 1
@switch.table.dp_power_clk_enable = private unnamed_addr constant [3 x ptr] [ptr @.str.20, ptr @.str.21, ptr @.str.22], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dp_power_clk_status(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load i8, ptr %0, align 1, !range !8
  %4 = zext i8 %3 to i32
  %5 = getelementptr inbounds %struct.dp_power, ptr %0, i32 0, i32 1
  %6 = load i8, ptr %5, align 1, !range !8
  %7 = zext i8 %6 to i32
  %8 = getelementptr inbounds %struct.dp_power, ptr %0, i32 0, i32 2
  %9 = load i8, ptr %8, align 1, !range !8
  %10 = zext i8 %9 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str, i32 noundef %4, i32 noundef %7, i32 noundef %10) #3
  switch i32 %1, label %17 [
    i32 0, label %13
    i32 1, label %11
    i32 2, label %12
  ]

11:                                               ; preds = %2
  br label %13

12:                                               ; preds = %2
  br label %13

13:                                               ; preds = %12, %11, %2
  %14 = phi ptr [ %8, %12 ], [ %5, %11 ], [ %0, %2 ]
  %15 = load i8, ptr %14, align 1, !range !8
  %16 = zext i8 %15 to i32
  br label %17

17:                                               ; preds = %13, %2
  %18 = phi i32 [ 0, %2 ], [ %16, %13 ]
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dp_power_clk_enable(ptr nocapture noundef %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = zext i1 %2 to i8
  %5 = getelementptr i8, ptr %0, i32 -72
  %6 = icmp ugt i32 %1, 2
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = icmp eq i32 %1, 3
  %9 = select i1 %8, ptr @.str.23, ptr @.str.24
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1, ptr noundef nonnull %9) #3
  br label %70

10:                                               ; preds = %3
  br i1 %2, label %11, label %34

11:                                               ; preds = %10
  switch i32 %1, label %21 [
    i32 0, label %12
    i32 1, label %16
  ]

12:                                               ; preds = %11
  %13 = load i8, ptr %0, align 1, !range !8
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %34, label %15

15:                                               ; preds = %12
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.2) #3
  br label %70

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.dp_power, ptr %0, i32 0, i32 1
  %18 = load i8, ptr %17, align 1, !range !8
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %16
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.3) #3
  br label %70

21:                                               ; preds = %11
  %22 = getelementptr inbounds %struct.dp_power, ptr %0, i32 0, i32 2
  %23 = load i8, ptr %22, align 1, !range !8
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %21
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.4) #3
  br label %70

26:                                               ; preds = %16
  %27 = load i8, ptr %0, align 1, !range !8
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.5) #3
  %30 = tail call fastcc i32 @dp_power_clk_set_rate(ptr noundef %5, i32 noundef 0, i1 noundef zeroext true)
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.20, i32 noundef %30) #3
  br label %70

33:                                               ; preds = %29
  store i8 1, ptr %0, align 1
  br label %34

34:                                               ; preds = %33, %26, %21, %12, %10
  %35 = tail call fastcc i32 @dp_power_clk_set_rate(ptr noundef %5, i32 noundef %1, i1 noundef zeroext %2)
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %45, label %37

37:                                               ; preds = %34
  %38 = select i1 %2, ptr @.str.8, ptr @.str.9
  %39 = icmp ult i32 %1, 3
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = getelementptr inbounds [3 x ptr], ptr @switch.table.dp_power_clk_enable, i32 0, i32 %1
  %42 = load ptr, ptr %41, align 4
  br label %43

43:                                               ; preds = %40, %37
  %44 = phi ptr [ %42, %40 ], [ @.str.24, %37 ]
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7, ptr noundef nonnull %38, ptr noundef nonnull %44, i32 noundef %35) #3
  br label %70

45:                                               ; preds = %34
  switch i32 %1, label %51 [
    i32 0, label %46
    i32 2, label %48
  ]

46:                                               ; preds = %45
  store i8 %4, ptr %0, align 1
  %47 = select i1 %2, ptr @.str.8, ptr @.str.9
  br label %56

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.dp_power, ptr %0, i32 0, i32 2
  store i8 %4, ptr %49, align 1
  %50 = select i1 %2, ptr @.str.8, ptr @.str.9
  br label %56

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.dp_power, ptr %0, i32 0, i32 1
  store i8 %4, ptr %52, align 1
  %53 = select i1 %2, ptr @.str.8, ptr @.str.9
  %54 = icmp eq i32 %1, 1
  %55 = select i1 %54, ptr @.str.21, ptr @.str.24
  br label %56

56:                                               ; preds = %51, %48, %46
  %57 = phi ptr [ %50, %48 ], [ %47, %46 ], [ %53, %51 ]
  %58 = phi ptr [ @.str.22, %48 ], [ @.str.20, %46 ], [ %55, %51 ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.10, ptr noundef nonnull %57, ptr noundef nonnull %58) #3
  %59 = getelementptr inbounds %struct.dp_power, ptr %0, i32 0, i32 2
  %60 = load i8, ptr %59, align 1, !range !8
  %61 = icmp eq i8 %60, 0
  %62 = select i1 %61, ptr @.str.13, ptr @.str.12
  %63 = getelementptr inbounds %struct.dp_power, ptr %0, i32 0, i32 1
  %64 = load i8, ptr %63, align 1, !range !8
  %65 = icmp eq i8 %64, 0
  %66 = select i1 %65, ptr @.str.13, ptr @.str.12
  %67 = load i8, ptr %0, align 1, !range !8
  %68 = icmp eq i8 %67, 0
  %69 = select i1 %68, ptr @.str.13, ptr @.str.12
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.11, ptr noundef nonnull %62, ptr noundef nonnull %66, ptr noundef nonnull %69) #3
  br label %70

70:                                               ; preds = %56, %43, %32, %25, %20, %15, %7
  %71 = phi i32 [ -22, %7 ], [ 0, %15 ], [ 0, %20 ], [ 0, %25 ], [ %35, %43 ], [ 0, %56 ], [ %30, %32 ]
  ret i32 %71
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dp_power_clk_set_rate(ptr nocapture noundef readonly %0, i32 noundef %1, i1 noundef zeroext %2) unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr %struct.dp_parser, ptr %4, i32 0, i32 1, i32 %1
  %6 = icmp eq i32 %1, 1
  br i1 %6, label %7, label %36

7:                                                ; preds = %3
  %8 = getelementptr %struct.dp_parser, ptr %4, i32 0, i32 1, i32 1, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = load i32, ptr %5, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %44

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.dp_power_private, ptr %0, i32 0, i32 2
  br label %14

14:                                               ; preds = %32, %12
  %15 = phi i32 [ 0, %12 ], [ %33, %32 ]
  %16 = getelementptr %struct.dss_clk, ptr %9, i32 %15
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %32, label %19

19:                                               ; preds = %14
  %20 = getelementptr %struct.dss_clk, ptr %9, i32 %15, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %32

23:                                               ; preds = %19
  br i1 %2, label %24, label %27

24:                                               ; preds = %23
  %25 = getelementptr %struct.dss_clk, ptr %9, i32 %15, i32 3
  %26 = load i32, ptr %25, align 4
  br label %27

27:                                               ; preds = %24, %23
  %28 = phi i32 [ %26, %24 ], [ 0, %23 ]
  %29 = load ptr, ptr %13, align 4
  %30 = tail call i32 @dev_pm_opp_set_rate(ptr noundef %29, i32 noundef %28) #3
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27, %19, %14
  %33 = add nuw nsw i32 %15, 1
  %34 = icmp eq i32 %33, %10
  br i1 %34, label %44, label %14

35:                                               ; preds = %27
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.25) #3
  br label %52

36:                                               ; preds = %3
  br i1 %2, label %37, label %44

37:                                               ; preds = %36
  %38 = getelementptr %struct.dp_parser, ptr %4, i32 0, i32 1, i32 %1, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = load i32, ptr %5, align 4
  %41 = tail call i32 @msm_dss_clk_set_rate(ptr noundef %39, i32 noundef %40) #3
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %37
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.26) #3
  br label %52

44:                                               ; preds = %37, %36, %32, %7
  %45 = getelementptr %struct.dp_parser, ptr %4, i32 0, i32 1, i32 %1, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = load i32, ptr %5, align 4
  %48 = zext i1 %2 to i32
  %49 = tail call i32 @msm_dss_enable_clk(ptr noundef %46, i32 noundef %47, i32 noundef %48) #3
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %44
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.27, i32 noundef %48, i32 noundef %49) #3
  br label %52

52:                                               ; preds = %51, %44, %43, %35
  %53 = phi i32 [ %30, %35 ], [ %49, %51 ], [ %41, %43 ], [ 0, %44 ]
  ret i32 %53
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dp_power_client_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.14) #3
  br label %66

4:                                                ; preds = %1
  %5 = getelementptr i8, ptr %0, i32 -72
  %6 = getelementptr i8, ptr %0, i32 -68
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  tail call void @pm_runtime_enable(ptr noundef %8) #3
  %9 = getelementptr i8, ptr %0, i32 -48
  %10 = load ptr, ptr %5, align 4
  %11 = getelementptr inbounds %struct.dp_parser, ptr %10, i32 0, i32 5
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.dp_regulator_cfg, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %6, align 4
  %15 = load i32, ptr %12, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %17, %4
  %18 = phi i32 [ %21, %17 ], [ 0, %4 ]
  %19 = getelementptr %struct.dp_reg_entry, ptr %13, i32 %18
  %20 = getelementptr %struct.regulator_bulk_data, ptr %9, i32 %18
  store ptr %19, ptr %20, align 4
  %21 = add nuw nsw i32 %18, 1
  %22 = icmp eq i32 %21, %15
  br i1 %22, label %23, label %17

23:                                               ; preds = %17, %4
  %24 = getelementptr inbounds %struct.platform_device, ptr %14, i32 0, i32 3
  %25 = tail call i32 @devm_regulator_bulk_get(ptr noundef %24, i32 noundef %15, ptr noundef %9) #3
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.dp_power_regulator_init, ptr noundef nonnull @__func__.dp_power_regulator_init, i32 noundef %25) #4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.15, i32 noundef %25) #3
  br label %62

29:                                               ; preds = %23
  %30 = load ptr, ptr %6, align 4
  %31 = getelementptr inbounds %struct.platform_device, ptr %30, i32 0, i32 3
  %32 = load ptr, ptr %5, align 4
  %33 = getelementptr inbounds %struct.dp_parser, ptr %32, i32 0, i32 1
  %34 = getelementptr %struct.dp_parser, ptr %32, i32 0, i32 1, i32 2
  %35 = getelementptr inbounds %struct.dp_parser, ptr %32, i32 0, i32 1, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = load i32, ptr %33, align 4
  %38 = tail call i32 @msm_dss_get_clk(ptr noundef %31, ptr noundef %36, i32 noundef %37) #3
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %29
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.20, i32 noundef %38) #3
  br label %60

41:                                               ; preds = %29
  %42 = getelementptr %struct.dp_parser, ptr %32, i32 0, i32 1, i32 1
  %43 = getelementptr %struct.dp_parser, ptr %32, i32 0, i32 1, i32 1, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = load i32, ptr %42, align 4
  %46 = tail call i32 @msm_dss_get_clk(ptr noundef %31, ptr noundef %44, i32 noundef %45) #3
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %41
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.21, i32 noundef %46) #3
  %49 = load ptr, ptr %35, align 4
  %50 = load i32, ptr %33, align 4
  tail call void @msm_dss_put_clk(ptr noundef %49, i32 noundef %50) #3
  br label %60

51:                                               ; preds = %41
  %52 = getelementptr %struct.dp_parser, ptr %32, i32 0, i32 1, i32 2, i32 1
  %53 = load ptr, ptr %52, align 4
  %54 = load i32, ptr %34, align 4
  %55 = tail call i32 @msm_dss_get_clk(ptr noundef %31, ptr noundef %53, i32 noundef %54) #3
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %66, label %57

57:                                               ; preds = %51
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.21, i32 noundef %55) #3
  %58 = load ptr, ptr %35, align 4
  %59 = load i32, ptr %33, align 4
  tail call void @msm_dss_put_clk(ptr noundef %58, i32 noundef %59) #3
  br label %60

60:                                               ; preds = %57, %48, %40
  %61 = phi i32 [ -19, %57 ], [ -19, %48 ], [ %38, %40 ]
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.16, i32 noundef %61) #3
  br label %62

62:                                               ; preds = %60, %27
  %63 = phi i32 [ %25, %27 ], [ %61, %60 ]
  %64 = load ptr, ptr %6, align 4
  %65 = getelementptr inbounds %struct.platform_device, ptr %64, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %65, i1 noundef zeroext true) #3
  br label %66

66:                                               ; preds = %62, %51, %3
  %67 = phi i32 [ %63, %62 ], [ -22, %3 ], [ 0, %51 ]
  ret i32 %67
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dp_power_client_deinit(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.14) #3
  br label %28

4:                                                ; preds = %1
  %5 = getelementptr i8, ptr %0, i32 -72
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr %struct.dp_parser, ptr %6, i32 0, i32 1, i32 1
  %8 = getelementptr %struct.dp_parser, ptr %6, i32 0, i32 1, i32 2
  %9 = icmp ne ptr %7, null
  %10 = icmp ne ptr %8, null
  %11 = and i1 %9, %10
  br i1 %11, label %13, label %12

12:                                               ; preds = %4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.30) #3
  br label %24

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.dp_parser, ptr %6, i32 0, i32 1
  %15 = getelementptr %struct.dp_parser, ptr %6, i32 0, i32 1, i32 1, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = load i32, ptr %7, align 4
  tail call void @msm_dss_put_clk(ptr noundef %16, i32 noundef %17) #3
  %18 = getelementptr inbounds %struct.dp_parser, ptr %6, i32 0, i32 1, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = load i32, ptr %14, align 4
  tail call void @msm_dss_put_clk(ptr noundef %19, i32 noundef %20) #3
  %21 = getelementptr %struct.dp_parser, ptr %6, i32 0, i32 1, i32 2, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = load i32, ptr %8, align 4
  tail call void @msm_dss_put_clk(ptr noundef %22, i32 noundef %23) #3
  br label %24

24:                                               ; preds = %13, %12
  %25 = getelementptr i8, ptr %0, i32 -68
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.platform_device, ptr %26, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %27, i1 noundef zeroext true) #3
  br label %28

28:                                               ; preds = %24, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dp_power_init(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.14) #3
  br label %84

5:                                                ; preds = %2
  %6 = getelementptr i8, ptr %0, i32 -72
  %7 = getelementptr i8, ptr %0, i32 -68
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.platform_device, ptr %8, i32 0, i32 3
  %10 = tail call i32 @__pm_runtime_resume(ptr noundef %9, i32 noundef 4) #3
  %11 = getelementptr i8, ptr %0, i32 -48
  %12 = load ptr, ptr %6, align 4
  %13 = getelementptr inbounds %struct.dp_parser, ptr %12, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.dp_regulator_cfg, ptr %14, i32 0, i32 1
  %16 = load i32, ptr %14, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.31) #3
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %30, %5
  %19 = phi i32 [ %31, %30 ], [ 0, %5 ]
  %20 = getelementptr %struct.dp_reg_entry, ptr %15, i32 %19, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = icmp sgt i32 %21, -1
  br i1 %22, label %23, label %30

23:                                               ; preds = %18
  %24 = getelementptr %struct.regulator_bulk_data, ptr %11, i32 %19, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = tail call i32 @regulator_set_load(ptr noundef %25, i32 noundef %21) #3
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @__func__.dp_power_regulator_enable, i32 noundef %19, i32 noundef %26) #4
  br label %39

30:                                               ; preds = %23, %18
  %31 = add nuw nsw i32 %19, 1
  %32 = icmp eq i32 %31, %16
  br i1 %32, label %33, label %18

33:                                               ; preds = %30, %5
  %34 = phi i32 [ 0, %5 ], [ %16, %30 ]
  %35 = tail call i32 @regulator_bulk_enable(i32 noundef %16, ptr noundef %11) #3
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %54

37:                                               ; preds = %33
  %38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @__func__.dp_power_regulator_enable, i32 noundef %35) #4
  br label %39

39:                                               ; preds = %37, %28
  %40 = phi i32 [ %19, %28 ], [ %34, %37 ]
  %41 = phi i32 [ %26, %28 ], [ %35, %37 ]
  %42 = add i32 %40, -1
  %43 = icmp sgt i32 %42, -1
  br i1 %43, label %44, label %53

44:                                               ; preds = %44, %39
  %45 = phi i32 [ %51, %44 ], [ %42, %39 ]
  %46 = getelementptr %struct.regulator_bulk_data, ptr %11, i32 %45, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr %struct.dp_reg_entry, ptr %15, i32 %45, i32 2
  %49 = load i32, ptr %48, align 4
  %50 = tail call i32 @regulator_set_load(ptr noundef %47, i32 noundef %49) #3
  %51 = add nsw i32 %45, -1
  %52 = icmp eq i32 %45, 0
  br i1 %52, label %53, label %44

53:                                               ; preds = %44, %39
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17, i32 noundef %41) #3
  br label %79

54:                                               ; preds = %33
  %55 = tail call i32 @dp_power_clk_enable(ptr noundef nonnull %0, i32 noundef 0, i1 noundef zeroext true)
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %84, label %57

57:                                               ; preds = %54
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.18, i32 noundef %55) #3
  %58 = load ptr, ptr %6, align 4
  %59 = getelementptr inbounds %struct.dp_parser, ptr %58, i32 0, i32 5
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.dp_regulator_cfg, ptr %60, i32 0, i32 1
  %62 = load i32, ptr %60, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.31) #3
  %63 = add i32 %62, -1
  %64 = icmp sgt i32 %63, -1
  br i1 %64, label %65, label %77

65:                                               ; preds = %74, %57
  %66 = phi i32 [ %75, %74 ], [ %63, %57 ]
  %67 = getelementptr %struct.dp_reg_entry, ptr %61, i32 %66, i32 2
  %68 = load i32, ptr %67, align 4
  %69 = icmp sgt i32 %68, -1
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = getelementptr %struct.regulator_bulk_data, ptr %11, i32 %66, i32 1
  %72 = load ptr, ptr %71, align 4
  %73 = tail call i32 @regulator_set_load(ptr noundef %72, i32 noundef %68) #3
  br label %74

74:                                               ; preds = %70, %65
  %75 = add i32 %66, -1
  %76 = icmp sgt i32 %75, -1
  br i1 %76, label %65, label %77

77:                                               ; preds = %74, %57
  %78 = tail call i32 @regulator_bulk_disable(i32 noundef %62, ptr noundef %11) #3
  br label %79

79:                                               ; preds = %77, %53
  %80 = phi i32 [ %41, %53 ], [ %55, %77 ]
  %81 = load ptr, ptr %7, align 4
  %82 = getelementptr inbounds %struct.platform_device, ptr %81, i32 0, i32 3
  %83 = tail call i32 @__pm_runtime_idle(ptr noundef %82, i32 noundef 4) #3
  br label %84

84:                                               ; preds = %79, %54, %4
  %85 = phi i32 [ %80, %79 ], [ -22, %4 ], [ 0, %54 ]
  ret i32 %85
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dp_power_deinit(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 -72
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr %struct.dp_parser, ptr %3, i32 0, i32 1, i32 0
  %5 = getelementptr %struct.dp_parser, ptr %3, i32 0, i32 1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr %4, align 4
  %8 = tail call i32 @msm_dss_enable_clk(ptr noundef %6, i32 noundef %7, i32 noundef 0) #3
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.27, i32 noundef 0, i32 noundef %8) #3
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.20, i32 noundef %8) #3
  br label %23

11:                                               ; preds = %1
  store i8 0, ptr %0, align 1
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.20) #3
  %12 = getelementptr inbounds %struct.dp_power, ptr %0, i32 0, i32 2
  %13 = load i8, ptr %12, align 1, !range !8
  %14 = icmp eq i8 %13, 0
  %15 = select i1 %14, ptr @.str.13, ptr @.str.12
  %16 = getelementptr inbounds %struct.dp_power, ptr %0, i32 0, i32 1
  %17 = load i8, ptr %16, align 1, !range !8
  %18 = icmp eq i8 %17, 0
  %19 = select i1 %18, ptr @.str.13, ptr @.str.12
  %20 = load i8, ptr %0, align 1, !range !8
  %21 = icmp eq i8 %20, 0
  %22 = select i1 %21, ptr @.str.13, ptr @.str.12
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.11, ptr noundef nonnull %15, ptr noundef nonnull %19, ptr noundef nonnull %22) #3
  br label %23

23:                                               ; preds = %11, %10
  %24 = getelementptr i8, ptr %0, i32 -48
  %25 = load ptr, ptr %2, align 4
  %26 = getelementptr inbounds %struct.dp_parser, ptr %25, i32 0, i32 5
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.dp_regulator_cfg, ptr %27, i32 0, i32 1
  %29 = load i32, ptr %27, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.31) #3
  %30 = add i32 %29, -1
  %31 = icmp sgt i32 %30, -1
  br i1 %31, label %32, label %44

32:                                               ; preds = %41, %23
  %33 = phi i32 [ %42, %41 ], [ %30, %23 ]
  %34 = getelementptr %struct.dp_reg_entry, ptr %28, i32 %33, i32 2
  %35 = load i32, ptr %34, align 4
  %36 = icmp sgt i32 %35, -1
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = getelementptr %struct.regulator_bulk_data, ptr %24, i32 %33, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = tail call i32 @regulator_set_load(ptr noundef %39, i32 noundef %35) #3
  br label %41

41:                                               ; preds = %37, %32
  %42 = add i32 %33, -1
  %43 = icmp sgt i32 %42, -1
  br i1 %43, label %32, label %44

44:                                               ; preds = %41, %23
  %45 = tail call i32 @regulator_bulk_disable(i32 noundef %29, ptr noundef %24) #3
  %46 = getelementptr i8, ptr %0, i32 -68
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.platform_device, ptr %47, i32 0, i32 3
  %49 = tail call i32 @__pm_runtime_idle(ptr noundef %48, i32 noundef 4) #3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dp_power_get(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.19) #3
  br label %15

5:                                                ; preds = %2
  %6 = load ptr, ptr %1, align 4
  %7 = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3
  %8 = tail call noalias ptr @devm_kmalloc(ptr noundef %7, i32 noundef 76, i32 noundef 3520) #3
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %5
  store ptr %1, ptr %8, align 4
  %11 = load ptr, ptr %1, align 4
  %12 = getelementptr inbounds %struct.dp_power_private, ptr %8, i32 0, i32 1
  store ptr %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.dp_power_private, ptr %8, i32 0, i32 2
  store ptr %0, ptr %13, align 4
  %14 = getelementptr inbounds %struct.dp_power_private, ptr %8, i32 0, i32 7
  br label %15

15:                                               ; preds = %10, %5, %4
  %16 = phi ptr [ %14, %10 ], [ inttoptr (i32 -22 to ptr), %4 ], [ inttoptr (i32 -12 to ptr), %5 ]
  ret ptr %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_dss_clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_dss_enable_clk(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_dss_get_clk(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_dss_put_clk(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_load(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!8 = !{i8 0, i8 2}
