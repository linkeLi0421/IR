; ModuleID = '/llk/IR/drivers/phy/samsung/phy-exynos5-usbdrd.c_pt.bc'
source_filename = "../drivers/phy/samsung/phy-exynos5-usbdrd.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.exynos5_usbdrd_phy_drvdata = type { ptr, i32, i32, i8 }
%struct.exynos5_usbdrd_phy_config = type { i32, ptr, ptr, ptr }
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
%struct.exynos5_usbdrd_phy = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x %struct.phy_usb_instance], i32, ptr, ptr, ptr }
%struct.phy_usb_instance = type { ptr, i32, ptr, i32, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__initcall__kmod_phy_exynos5_usbdrd__248_945_exynos5_usb3drd_phy_init6 = internal global ptr @exynos5_usb3drd_phy_init, section ".initcall6.init", align 4
@exynos5_usb3drd_phy = internal global %struct.platform_driver { ptr @exynos5_usbdrd_phy_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @exynos5_usbdrd_phy_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_exynos5_usb3drd_phy_exit = internal global ptr @exynos5_usb3drd_phy_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description249 = internal constant [86 x i8] c"phy_exynos5_usbdrd.description=Samsung Exynos5 SoCs USB 3.0 DRD controller PHY driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author250 = internal constant [66 x i8] c"phy_exynos5_usbdrd.author=Vivek Gautam <gautam.vivek@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file251 = internal constant [63 x i8] c"phy_exynos5_usbdrd.file=drivers/phy/samsung/phy-exynos5-usbdrd\00", section ".modinfo", align 1
@__UNIQUE_ID_license252 = internal constant [34 x i8] c"phy_exynos5_usbdrd.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias253 = internal constant [54 x i8] c"phy_exynos5_usbdrd.alias=platform:exynos5_usb3drd_phy\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [20 x i8] c"exynos5_usb3drd_phy\00", align 1
@exynos5_usbdrd_phy_of_match = internal constant [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5250-usbdrd-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos5250_usbdrd_phy }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5420-usbdrd-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos5420_usbdrd_phy }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5433-usbdrd-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos5433_usbdrd_phy }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos7-usbdrd-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos7_usbdrd_phy }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to initialize clocks\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"samsung,pmu-syscon\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Failed to lookup PMU regmap\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"usbdrdphy\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"vbus\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"Failed to get VBUS supply regulator\0A\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"vbus-boost\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"Failed to get VBUS boost supply regulator\0A\00", align 1
@exynos5_usbdrd_phy_ops = internal constant %struct.phy_ops { ptr @exynos5_usbdrd_phy_init, ptr @exynos5_usbdrd_phy_exit, ptr @exynos5_usbdrd_phy_power_on, ptr @exynos5_usbdrd_phy_power_off, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @exynos5_usbdrd_phy_calibrate, ptr null, ptr null }, align 4
@.str.9 = private unnamed_addr constant [33 x i8] c"Failed to create usbdrd_phy phy\0A\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"Failed to register phy provider\0A\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"phy\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"Failed to get phy clock\0A\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"ref\00", align 1
@.str.14 = private unnamed_addr constant [35 x i8] c"Failed to get phy reference clock\0A\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"Clock rate (%ld) not supported\0A\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"phy_pipe\00", align 1
@.str.17 = private unnamed_addr constant [43 x i8] c"PIPE3 phy operational clock not specified\0A\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"phy_utmi\00", align 1
@.str.19 = private unnamed_addr constant [42 x i8] c"UTMI phy operational clock not specified\0A\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"itp\00", align 1
@.str.21 = private unnamed_addr constant [39 x i8] c"ITP clock from main OSC not specified\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.22 = private unnamed_addr constant [36 x i8] c"Failed to enable VBUS boost supply\0A\00", align 1
@.str.23 = private unnamed_addr constant [30 x i8] c"Failed to enable VBUS supply\0A\00", align 1
@.str.24 = private unnamed_addr constant [52 x i8] c"Failed setting Loss-of-Signal level for SuperSpeed\0A\00", align 1
@.str.25 = private unnamed_addr constant [47 x i8] c"Failed setting Tx-Vboost-Level for SuperSpeed\0A\00", align 1
@.str.26 = private unnamed_addr constant [51 x i8] c"Fail to set RxDet measurement time for SuperSpeed\0A\00", align 1
@.str.27 = private unnamed_addr constant [36 x i8] c"CRPORT handshake timeout1 (0x%08x)\0A\00", align 1
@.str.28 = private unnamed_addr constant [36 x i8] c"CRPORT handshake timeout2 (0x%08x)\0A\00", align 1
@.str.29 = private unnamed_addr constant [41 x i8] c"drivers/phy/samsung/phy-exynos5-usbdrd.c\00", align 1
@exynos5250_usbdrd_phy = internal constant %struct.exynos5_usbdrd_phy_drvdata { ptr @phy_cfg_exynos5, i32 1796, i32 0, i8 1 }, align 4
@exynos5420_usbdrd_phy = internal constant %struct.exynos5_usbdrd_phy_drvdata { ptr @phy_cfg_exynos5, i32 1796, i32 1800, i8 1 }, align 4
@exynos5433_usbdrd_phy = internal constant %struct.exynos5_usbdrd_phy_drvdata { ptr @phy_cfg_exynos5, i32 1796, i32 1832, i8 0 }, align 4
@exynos7_usbdrd_phy = internal constant %struct.exynos5_usbdrd_phy_drvdata { ptr @phy_cfg_exynos5, i32 1796, i32 0, i8 0 }, align 4
@phy_cfg_exynos5 = internal constant [2 x %struct.exynos5_usbdrd_phy_config] [%struct.exynos5_usbdrd_phy_config { i32 0, ptr @exynos5_usbdrd_phy_isol, ptr @exynos5_usbdrd_utmi_init, ptr @exynos5_usbdrd_utmi_set_refclk }, %struct.exynos5_usbdrd_phy_config { i32 1, ptr @exynos5_usbdrd_phy_isol, ptr @exynos5_usbdrd_pipe3_init, ptr @exynos5_usbdrd_pipe3_set_refclk }], align 4
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias253, ptr @__UNIQUE_ID_author250, ptr @__UNIQUE_ID_description249, ptr @__UNIQUE_ID_file251, ptr @__UNIQUE_ID_license252, ptr @__exitcall_exynos5_usb3drd_phy_exit, ptr @__initcall__kmod_phy_exynos5_usbdrd__248_945_exynos5_usb3drd_phy_init6, ptr @exynos5_usb3drd_phy_exit], section "llvm.metadata"
@switch.table.exynos5_usbdrd_phy_calibrate = private unnamed_addr constant [5 x i32] [i32 256, i32 256, i32 512, i32 512, i32 2048], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @exynos5_usb3drd_phy_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @exynos5_usb3drd_phy, ptr noundef null) #4
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @exynos5_usb3drd_phy_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @exynos5_usb3drd_phy) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos5_usbdrd_phy_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 84, i32 noundef 3520) #4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %133, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %5, ptr %8, align 8
  store ptr %2, ptr %5, align 4
  %9 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #4
  %10 = getelementptr inbounds %struct.exynos5_usbdrd_phy, ptr %5, i32 0, i32 1
  store ptr %9, ptr %10, align 4
  %11 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %12, label %14

12:                                               ; preds = %7
  %13 = ptrtoint ptr %9 to i32
  br label %133

14:                                               ; preds = %7
  %15 = tail call ptr @of_device_get_match_data(ptr noundef %2) #4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %133, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.exynos5_usbdrd_phy, ptr %5, i32 0, i32 6
  store ptr %15, ptr %18, align 4
  %19 = load ptr, ptr %5, align 4
  %20 = tail call ptr @devm_clk_get(ptr noundef %19, ptr noundef nonnull @.str.11) #4
  %21 = getelementptr inbounds %struct.exynos5_usbdrd_phy, ptr %5, i32 0, i32 2
  store ptr %20, ptr %21, align 4
  %22 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  %23 = load ptr, ptr %5, align 4
  br i1 %22, label %24, label %25

24:                                               ; preds = %17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.12) #5
  br label %69

25:                                               ; preds = %17
  %26 = tail call ptr @devm_clk_get(ptr noundef %23, ptr noundef nonnull @.str.13) #4
  %27 = getelementptr inbounds %struct.exynos5_usbdrd_phy, ptr %5, i32 0, i32 9
  store ptr %26, ptr %27, align 4
  %28 = icmp ugt ptr %26, inttoptr (i32 -4096 to ptr)
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.14) #5
  br label %69

31:                                               ; preds = %25
  %32 = tail call i32 @clk_get_rate(ptr noundef %26) #4
  %33 = getelementptr inbounds %struct.exynos5_usbdrd_phy, ptr %5, i32 0, i32 8
  switch i32 %32, label %40 [
    i32 9600000, label %42
    i32 10000000, label %34
    i32 12000000, label %35
    i32 19200000, label %36
    i32 20000000, label %37
    i32 24000000, label %38
    i32 50000000, label %39
  ]

34:                                               ; preds = %31
  br label %42

35:                                               ; preds = %31
  br label %42

36:                                               ; preds = %31
  br label %42

37:                                               ; preds = %31
  br label %42

38:                                               ; preds = %31
  br label %42

39:                                               ; preds = %31
  br label %42

40:                                               ; preds = %31
  %41 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.15, i32 noundef %32) #5
  br label %74

42:                                               ; preds = %39, %38, %37, %36, %35, %34, %31
  %43 = phi i32 [ 1, %34 ], [ 2, %35 ], [ 3, %36 ], [ 4, %37 ], [ 5, %38 ], [ 7, %39 ], [ 0, %31 ]
  store i32 %43, ptr %33, align 4
  %44 = load ptr, ptr %18, align 4
  %45 = getelementptr inbounds %struct.exynos5_usbdrd_phy_drvdata, ptr %44, i32 0, i32 3
  %46 = load i8, ptr %45, align 4, !range !8
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %76

48:                                               ; preds = %42
  %49 = load ptr, ptr %5, align 4
  %50 = tail call ptr @devm_clk_get(ptr noundef %49, ptr noundef nonnull @.str.16) #4
  %51 = getelementptr inbounds %struct.exynos5_usbdrd_phy, ptr %5, i32 0, i32 3
  store ptr %50, ptr %51, align 4
  %52 = icmp ugt ptr %50, inttoptr (i32 -4096 to ptr)
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %54, ptr noundef nonnull @.str.17) #5
  store ptr null, ptr %51, align 4
  br label %55

55:                                               ; preds = %53, %48
  %56 = load ptr, ptr %5, align 4
  %57 = tail call ptr @devm_clk_get(ptr noundef %56, ptr noundef nonnull @.str.18) #4
  %58 = getelementptr inbounds %struct.exynos5_usbdrd_phy, ptr %5, i32 0, i32 4
  store ptr %57, ptr %58, align 4
  %59 = icmp ugt ptr %57, inttoptr (i32 -4096 to ptr)
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %61, ptr noundef nonnull @.str.19) #5
  store ptr null, ptr %58, align 4
  br label %62

62:                                               ; preds = %60, %55
  %63 = load ptr, ptr %5, align 4
  %64 = tail call ptr @devm_clk_get(ptr noundef %63, ptr noundef nonnull @.str.20) #4
  %65 = getelementptr inbounds %struct.exynos5_usbdrd_phy, ptr %5, i32 0, i32 5
  store ptr %64, ptr %65, align 4
  %66 = icmp ugt ptr %64, inttoptr (i32 -4096 to ptr)
  br i1 %66, label %67, label %76

67:                                               ; preds = %62
  %68 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %68, ptr noundef nonnull @.str.21) #5
  store ptr null, ptr %65, align 4
  br label %76

69:                                               ; preds = %29, %24
  %70 = phi ptr [ %21, %24 ], [ %27, %29 ]
  %71 = load ptr, ptr %70, align 4
  %72 = ptrtoint ptr %71 to i32
  %73 = icmp eq ptr %71, null
  br i1 %73, label %76, label %74

74:                                               ; preds = %69, %40
  %75 = phi i32 [ -22, %40 ], [ %72, %69 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1) #5
  br label %133

76:                                               ; preds = %69, %67, %62, %42
  %77 = load ptr, ptr %3, align 8
  %78 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %77, ptr noundef nonnull @.str.2) #4
  %79 = icmp ugt ptr %78, inttoptr (i32 -4096 to ptr)
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.3) #5
  %81 = ptrtoint ptr %78 to i32
  br label %133

82:                                               ; preds = %76
  %83 = tail call i32 @of_alias_get_id(ptr noundef %4, ptr noundef nonnull @.str.4) #4
  %84 = icmp eq i32 %83, 1
  %85 = load ptr, ptr %18, align 4
  %86 = getelementptr inbounds %struct.exynos5_usbdrd_phy_drvdata, ptr %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.exynos5_usbdrd_phy_drvdata, ptr %85, i32 0, i32 1
  %88 = select i1 %84, ptr %86, ptr %87
  %89 = load i32, ptr %88, align 4
  %90 = tail call ptr @devm_regulator_get(ptr noundef %2, ptr noundef nonnull @.str.5) #4
  %91 = getelementptr inbounds %struct.exynos5_usbdrd_phy, ptr %5, i32 0, i32 10
  store ptr %90, ptr %91, align 4
  %92 = icmp ugt ptr %90, inttoptr (i32 -4096 to ptr)
  br i1 %92, label %93, label %96

93:                                               ; preds = %82
  %94 = icmp eq ptr %90, inttoptr (i32 -517 to ptr)
  br i1 %94, label %133, label %95

95:                                               ; preds = %93
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %2, ptr noundef nonnull @.str.6) #5
  store ptr null, ptr %91, align 4
  br label %96

96:                                               ; preds = %95, %82
  %97 = tail call ptr @devm_regulator_get(ptr noundef %2, ptr noundef nonnull @.str.7) #4
  %98 = getelementptr inbounds %struct.exynos5_usbdrd_phy, ptr %5, i32 0, i32 11
  store ptr %97, ptr %98, align 4
  %99 = icmp ugt ptr %97, inttoptr (i32 -4096 to ptr)
  br i1 %99, label %100, label %103

100:                                              ; preds = %96
  %101 = icmp eq ptr %97, inttoptr (i32 -517 to ptr)
  br i1 %101, label %133, label %102

102:                                              ; preds = %100
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %2, ptr noundef nonnull @.str.8) #5
  store ptr null, ptr %98, align 4
  br label %103

103:                                              ; preds = %102, %96
  %104 = tail call ptr @devm_phy_create(ptr noundef %2, ptr noundef null, ptr noundef nonnull @exynos5_usbdrd_phy_ops) #4
  %105 = icmp ugt ptr %104, inttoptr (i32 -4096 to ptr)
  br i1 %105, label %106, label %109

106:                                              ; preds = %109, %103
  %107 = phi ptr [ %104, %103 ], [ %117, %109 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.9) #5
  %108 = ptrtoint ptr %107 to i32
  br label %133

109:                                              ; preds = %103
  %110 = getelementptr %struct.exynos5_usbdrd_phy, ptr %5, i32 0, i32 7, i32 0
  store ptr %104, ptr %110, align 4
  %111 = getelementptr %struct.exynos5_usbdrd_phy, ptr %5, i32 0, i32 7, i32 0, i32 1
  store i32 0, ptr %111, align 4
  %112 = getelementptr %struct.exynos5_usbdrd_phy, ptr %5, i32 0, i32 7, i32 0, i32 2
  store ptr %78, ptr %112, align 4
  %113 = getelementptr %struct.exynos5_usbdrd_phy, ptr %5, i32 0, i32 7, i32 0, i32 3
  store i32 %89, ptr %113, align 4
  %114 = load ptr, ptr %15, align 4
  %115 = getelementptr %struct.exynos5_usbdrd_phy, ptr %5, i32 0, i32 7, i32 0, i32 4
  store ptr %114, ptr %115, align 4
  %116 = getelementptr inbounds %struct.device, ptr %104, i32 0, i32 8
  store ptr %110, ptr %116, align 8
  %117 = tail call ptr @devm_phy_create(ptr noundef %2, ptr noundef null, ptr noundef nonnull @exynos5_usbdrd_phy_ops) #4
  %118 = icmp ugt ptr %117, inttoptr (i32 -4096 to ptr)
  br i1 %118, label %106, label %119

119:                                              ; preds = %109
  %120 = getelementptr %struct.exynos5_usbdrd_phy, ptr %5, i32 0, i32 7, i32 1
  store ptr %117, ptr %120, align 4
  %121 = getelementptr %struct.exynos5_usbdrd_phy, ptr %5, i32 0, i32 7, i32 1, i32 1
  store i32 1, ptr %121, align 4
  %122 = getelementptr %struct.exynos5_usbdrd_phy, ptr %5, i32 0, i32 7, i32 1, i32 2
  store ptr %78, ptr %122, align 4
  %123 = getelementptr %struct.exynos5_usbdrd_phy, ptr %5, i32 0, i32 7, i32 1, i32 3
  store i32 %89, ptr %123, align 4
  %124 = load ptr, ptr %15, align 4
  %125 = getelementptr %struct.exynos5_usbdrd_phy_config, ptr %124, i32 1
  %126 = getelementptr %struct.exynos5_usbdrd_phy, ptr %5, i32 0, i32 7, i32 1, i32 4
  store ptr %125, ptr %126, align 4
  %127 = getelementptr inbounds %struct.device, ptr %117, i32 0, i32 8
  store ptr %120, ptr %127, align 8
  %128 = tail call ptr @__devm_of_phy_provider_register(ptr noundef %2, ptr noundef null, ptr noundef null, ptr noundef nonnull @exynos5_usbdrd_phy_xlate) #4
  %129 = icmp ugt ptr %128, inttoptr (i32 -4096 to ptr)
  br i1 %129, label %130, label %133

130:                                              ; preds = %119
  %131 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %131, ptr noundef nonnull @.str.10) #5
  %132 = ptrtoint ptr %128 to i32
  br label %133

133:                                              ; preds = %130, %119, %106, %100, %93, %80, %74, %14, %12, %1
  %134 = phi i32 [ %13, %12 ], [ %75, %74 ], [ %81, %80 ], [ %132, %130 ], [ -12, %1 ], [ -22, %14 ], [ -517, %93 ], [ -517, %100 ], [ 0, %119 ], [ %108, %106 ]
  ret i32 %134
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_of_phy_provider_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @exynos5_usbdrd_phy_xlate(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.of_phandle_args, ptr %1, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = icmp ugt i32 %4, 1
  br i1 %5, label %6, label %7, !prof !9

6:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 691, i32 noundef 9, ptr noundef null) #4
  br label %12

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr %struct.exynos5_usbdrd_phy, ptr %9, i32 0, i32 7, i32 %4
  %11 = load ptr, ptr %10, align 4
  br label %12

12:                                               ; preds = %7, %6
  %13 = phi ptr [ inttoptr (i32 -19 to ptr), %6 ], [ %11, %7 ]
  ret ptr %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos5_usbdrd_phy_init(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.phy_usb_instance, ptr %3, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = mul i32 %5, -20
  %7 = add i32 %6, -28
  %8 = getelementptr i8, ptr %3, i32 %7
  %9 = getelementptr inbounds %struct.exynos5_usbdrd_phy, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @clk_prepare(ptr noundef %10) #4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %55

13:                                               ; preds = %1
  %14 = tail call i32 @clk_enable(ptr noundef %10) #4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %52

16:                                               ; preds = %13
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  %17 = getelementptr inbounds %struct.exynos5_usbdrd_phy, ptr %8, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i8, ptr %18, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 0) #4, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !12
  tail call void @arm_heavy_mb() #4
  %20 = load ptr, ptr %17, align 4
  %21 = getelementptr i8, ptr %20, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 0) #4, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !13
  tail call void @arm_heavy_mb() #4
  %22 = load ptr, ptr %17, align 4
  %23 = getelementptr i8, ptr %22, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 134217792) #4, !srcloc !11
  %24 = load ptr, ptr %17, align 4
  %25 = getelementptr i8, ptr %24, i32 28
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #4, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !15
  %27 = and i32 %26, 2147483647
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !16
  tail call void @arm_heavy_mb() #4
  %28 = load ptr, ptr %17, align 4
  %29 = getelementptr i8, ptr %28, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %27) #4, !srcloc !11
  %30 = load ptr, ptr %17, align 4
  %31 = getelementptr i8, ptr %30, i32 48
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #4, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !17
  %33 = or i32 %32, 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !18
  tail call void @arm_heavy_mb() #4
  %34 = load ptr, ptr %17, align 4
  %35 = getelementptr i8, ptr %34, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %33) #4, !srcloc !11
  %36 = getelementptr inbounds %struct.phy_usb_instance, ptr %3, i32 0, i32 4
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.exynos5_usbdrd_phy_config, ptr %37, i32 0, i32 2
  %39 = load ptr, ptr %38, align 4
  tail call void %39(ptr noundef %8) #4
  %40 = load ptr, ptr %36, align 4
  %41 = getelementptr inbounds %struct.exynos5_usbdrd_phy_config, ptr %40, i32 0, i32 3
  %42 = load ptr, ptr %41, align 4
  %43 = tail call i32 %42(ptr noundef %3) #4
  %44 = or i32 %43, 1572883
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !19
  tail call void @arm_heavy_mb() #4
  %45 = load ptr, ptr %17, align 4
  %46 = getelementptr i8, ptr %45, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %44) #4, !srcloc !11
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 2147480) #4
  %48 = and i32 %44, -3
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !20
  tail call void @arm_heavy_mb() #4
  %49 = load ptr, ptr %17, align 4
  %50 = getelementptr i8, ptr %49, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 %48) #4, !srcloc !11
  %51 = load ptr, ptr %9, align 4
  tail call void @clk_disable(ptr noundef %51) #4
  br label %52

52:                                               ; preds = %16, %13
  %53 = phi ptr [ %51, %16 ], [ %10, %13 ]
  %54 = phi i32 [ 0, %16 ], [ %14, %13 ]
  tail call void @clk_unprepare(ptr noundef %53) #4
  br label %55

55:                                               ; preds = %52, %1
  %56 = phi i32 [ %11, %1 ], [ %54, %52 ]
  ret i32 %56
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos5_usbdrd_phy_exit(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.phy_usb_instance, ptr %3, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = mul i32 %5, -20
  %7 = add i32 %6, -28
  %8 = getelementptr i8, ptr %3, i32 %7
  %9 = getelementptr inbounds %struct.exynos5_usbdrd_phy, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @clk_prepare(ptr noundef %10) #4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %36

13:                                               ; preds = %1
  %14 = tail call i32 @clk_enable(ptr noundef %10) #4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %33

16:                                               ; preds = %13
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !21
  tail call void @arm_heavy_mb() #4
  %17 = getelementptr inbounds %struct.exynos5_usbdrd_phy, ptr %8, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i8, ptr %18, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 67) #4, !srcloc !11
  %20 = load ptr, ptr %17, align 4
  %21 = getelementptr i8, ptr %20, i32 16
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #4, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !22
  %23 = and i32 %22, -1572866
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !23
  tail call void @arm_heavy_mb() #4
  %24 = load ptr, ptr %17, align 4
  %25 = getelementptr i8, ptr %24, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %23) #4, !srcloc !11
  %26 = load ptr, ptr %17, align 4
  %27 = getelementptr i8, ptr %26, i32 40
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #4, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !24
  %29 = or i32 %28, 12
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !25
  tail call void @arm_heavy_mb() #4
  %30 = load ptr, ptr %17, align 4
  %31 = getelementptr i8, ptr %30, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %29) #4, !srcloc !11
  %32 = load ptr, ptr %9, align 4
  tail call void @clk_disable(ptr noundef %32) #4
  br label %33

33:                                               ; preds = %16, %13
  %34 = phi ptr [ %32, %16 ], [ %10, %13 ]
  %35 = phi i32 [ 0, %16 ], [ %14, %13 ]
  tail call void @clk_unprepare(ptr noundef %34) #4
  br label %36

36:                                               ; preds = %33, %1
  %37 = phi i32 [ %11, %1 ], [ %35, %33 ]
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos5_usbdrd_phy_power_on(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.phy_usb_instance, ptr %3, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = mul i32 %5, -20
  %7 = add i32 %6, -28
  %8 = getelementptr i8, ptr %3, i32 %7
  %9 = getelementptr inbounds %struct.exynos5_usbdrd_phy, ptr %8, i32 0, i32 9
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @clk_prepare(ptr noundef %10) #4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = tail call i32 @clk_enable(ptr noundef %10) #4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  tail call void @clk_unprepare(ptr noundef %10) #4
  br label %17

17:                                               ; preds = %16, %13, %1
  %18 = getelementptr inbounds %struct.exynos5_usbdrd_phy, ptr %8, i32 0, i32 6
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.exynos5_usbdrd_phy_drvdata, ptr %19, i32 0, i32 3
  %21 = load i8, ptr %20, align 4, !range !8
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %50

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.exynos5_usbdrd_phy, ptr %8, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = tail call i32 @clk_prepare(ptr noundef %25) #4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = tail call i32 @clk_enable(ptr noundef %25) #4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %28
  tail call void @clk_unprepare(ptr noundef %25) #4
  br label %32

32:                                               ; preds = %31, %28, %23
  %33 = getelementptr inbounds %struct.exynos5_usbdrd_phy, ptr %8, i32 0, i32 4
  %34 = load ptr, ptr %33, align 4
  %35 = tail call i32 @clk_prepare(ptr noundef %34) #4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = tail call i32 @clk_enable(ptr noundef %34) #4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %37
  tail call void @clk_unprepare(ptr noundef %34) #4
  br label %41

41:                                               ; preds = %40, %37, %32
  %42 = getelementptr inbounds %struct.exynos5_usbdrd_phy, ptr %8, i32 0, i32 5
  %43 = load ptr, ptr %42, align 4
  %44 = tail call i32 @clk_prepare(ptr noundef %43) #4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = tail call i32 @clk_enable(ptr noundef %43) #4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %46
  tail call void @clk_unprepare(ptr noundef %43) #4
  br label %50

50:                                               ; preds = %49, %46, %41, %17
  %51 = getelementptr inbounds %struct.exynos5_usbdrd_phy, ptr %8, i32 0, i32 11
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %59, label %54

54:                                               ; preds = %50
  %55 = tail call i32 @regulator_enable(ptr noundef nonnull %52) #4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %54
  %58 = load ptr, ptr %8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.22) #5
  br label %77

59:                                               ; preds = %54, %50
  %60 = getelementptr inbounds %struct.exynos5_usbdrd_phy, ptr %8, i32 0, i32 10
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %70, label %63

63:                                               ; preds = %59
  %64 = tail call i32 @regulator_enable(ptr noundef nonnull %61) #4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %63
  %67 = load ptr, ptr %8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %67, ptr noundef nonnull @.str.23) #5
  %68 = load ptr, ptr %51, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %77, label %75

70:                                               ; preds = %63, %59
  %71 = getelementptr inbounds %struct.phy_usb_instance, ptr %3, i32 0, i32 4
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr inbounds %struct.exynos5_usbdrd_phy_config, ptr %72, i32 0, i32 1
  %74 = load ptr, ptr %73, align 4
  tail call void %74(ptr noundef %3, i32 noundef 0) #4
  br label %91

75:                                               ; preds = %66
  %76 = tail call i32 @regulator_disable(ptr noundef nonnull %68) #4
  br label %77

77:                                               ; preds = %75, %66, %57
  %78 = phi i32 [ %55, %57 ], [ %64, %75 ], [ %64, %66 ]
  %79 = load ptr, ptr %9, align 4
  tail call void @clk_disable(ptr noundef %79) #4
  tail call void @clk_unprepare(ptr noundef %79) #4
  %80 = load ptr, ptr %18, align 4
  %81 = getelementptr inbounds %struct.exynos5_usbdrd_phy_drvdata, ptr %80, i32 0, i32 3
  %82 = load i8, ptr %81, align 4, !range !8
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %77
  %85 = getelementptr inbounds %struct.exynos5_usbdrd_phy, ptr %8, i32 0, i32 5
  %86 = load ptr, ptr %85, align 4
  tail call void @clk_disable(ptr noundef %86) #4
  tail call void @clk_unprepare(ptr noundef %86) #4
  %87 = getelementptr inbounds %struct.exynos5_usbdrd_phy, ptr %8, i32 0, i32 4
  %88 = load ptr, ptr %87, align 4
  tail call void @clk_disable(ptr noundef %88) #4
  tail call void @clk_unprepare(ptr noundef %88) #4
  %89 = getelementptr inbounds %struct.exynos5_usbdrd_phy, ptr %8, i32 0, i32 3
  %90 = load ptr, ptr %89, align 4
  tail call void @clk_disable(ptr noundef %90) #4
  tail call void @clk_unprepare(ptr noundef %90) #4
  br label %91

91:                                               ; preds = %84, %77, %70
  %92 = phi i32 [ 0, %70 ], [ %78, %84 ], [ %78, %77 ]
  ret i32 %92
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos5_usbdrd_phy_power_off(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.phy_usb_instance, ptr %3, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = mul i32 %5, -20
  %7 = add i32 %6, -28
  %8 = getelementptr i8, ptr %3, i32 %7
  %9 = getelementptr inbounds %struct.phy_usb_instance, ptr %3, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.exynos5_usbdrd_phy_config, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  tail call void %12(ptr noundef %3, i32 noundef 1) #4
  %13 = getelementptr inbounds %struct.exynos5_usbdrd_phy, ptr %8, i32 0, i32 10
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %1
  %17 = tail call i32 @regulator_disable(ptr noundef nonnull %14) #4
  br label %18

18:                                               ; preds = %16, %1
  %19 = getelementptr inbounds %struct.exynos5_usbdrd_phy, ptr %8, i32 0, i32 11
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = tail call i32 @regulator_disable(ptr noundef nonnull %20) #4
  br label %24

24:                                               ; preds = %22, %18
  %25 = getelementptr inbounds %struct.exynos5_usbdrd_phy, ptr %8, i32 0, i32 9
  %26 = load ptr, ptr %25, align 4
  tail call void @clk_disable(ptr noundef %26) #4
  tail call void @clk_unprepare(ptr noundef %26) #4
  %27 = getelementptr inbounds %struct.exynos5_usbdrd_phy, ptr %8, i32 0, i32 6
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.exynos5_usbdrd_phy_drvdata, ptr %28, i32 0, i32 3
  %30 = load i8, ptr %29, align 4, !range !8
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.exynos5_usbdrd_phy, ptr %8, i32 0, i32 5
  %34 = load ptr, ptr %33, align 4
  tail call void @clk_disable(ptr noundef %34) #4
  tail call void @clk_unprepare(ptr noundef %34) #4
  %35 = getelementptr inbounds %struct.exynos5_usbdrd_phy, ptr %8, i32 0, i32 3
  %36 = load ptr, ptr %35, align 4
  tail call void @clk_disable(ptr noundef %36) #4
  tail call void @clk_unprepare(ptr noundef %36) #4
  %37 = getelementptr inbounds %struct.exynos5_usbdrd_phy, ptr %8, i32 0, i32 4
  %38 = load ptr, ptr %37, align 4
  tail call void @clk_disable(ptr noundef %38) #4
  tail call void @clk_unprepare(ptr noundef %38) #4
  br label %39

39:                                               ; preds = %32, %24
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos5_usbdrd_phy_calibrate(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.phy_usb_instance, ptr %3, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = mul i32 %5, -20
  %7 = add i32 %6, -28
  %8 = getelementptr i8, ptr %3, i32 %7
  %9 = getelementptr inbounds %struct.phy_usb_instance, ptr %3, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %66

13:                                               ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !26
  tail call void @arm_heavy_mb() #4
  %14 = getelementptr inbounds %struct.exynos5_usbdrd_phy, ptr %8, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %15, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 84) #4, !srcloc !11
  %17 = tail call fastcc i32 @crport_handshake(ptr noundef %8, i32 noundef 84, i32 noundef 1) #4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %62

19:                                               ; preds = %13
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !27
  tail call void @arm_heavy_mb() #4
  %20 = load ptr, ptr %14, align 4
  %21 = getelementptr i8, ptr %20, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 167972) #4, !srcloc !11
  %22 = tail call fastcc i32 @crport_handshake(ptr noundef %8, i32 noundef 167972, i32 noundef 2) #4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %62

24:                                               ; preds = %19
  %25 = tail call fastcc i32 @crport_handshake(ptr noundef %8, i32 noundef 167972, i32 noundef 524288) #4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %62

27:                                               ; preds = %24
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !26
  tail call void @arm_heavy_mb() #4
  %28 = load ptr, ptr %14, align 4
  %29 = getelementptr i8, ptr %28, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 72) #4, !srcloc !11
  %30 = tail call fastcc i32 @crport_handshake(ptr noundef %8, i32 noundef 72, i32 noundef 1) #4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %62

32:                                               ; preds = %27
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !27
  tail call void @arm_heavy_mb() #4
  %33 = load ptr, ptr %14, align 4
  %34 = getelementptr i8, ptr %33, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 163840) #4, !srcloc !11
  %35 = tail call fastcc i32 @crport_handshake(ptr noundef %8, i32 noundef 163840, i32 noundef 2) #4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %62

37:                                               ; preds = %32
  %38 = tail call fastcc i32 @crport_handshake(ptr noundef %8, i32 noundef 163840, i32 noundef 524288) #4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %62

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.exynos5_usbdrd_phy, ptr %8, i32 0, i32 8
  %42 = load i32, ptr %41, align 4
  %43 = add i32 %42, -3
  %44 = icmp ult i32 %43, 5
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = getelementptr inbounds [5 x i32], ptr @switch.table.exynos5_usbdrd_phy_calibrate, i32 0, i32 %43
  %47 = load i32, ptr %46, align 4
  br label %48

48:                                               ; preds = %45, %40
  %49 = phi i32 [ %47, %45 ], [ 512, %40 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !26
  tail call void @arm_heavy_mb() #4
  %50 = load ptr, ptr %14, align 4
  %51 = getelementptr i8, ptr %50, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 16448) #4, !srcloc !11
  %52 = tail call fastcc i32 @crport_handshake(ptr noundef %8, i32 noundef 16448, i32 noundef 1) #4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %48
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !27
  tail call void @arm_heavy_mb() #4
  %55 = load ptr, ptr %14, align 4
  %56 = getelementptr i8, ptr %55, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 %49) #4, !srcloc !11
  %57 = tail call fastcc i32 @crport_handshake(ptr noundef %8, i32 noundef %49, i32 noundef 2) #4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = tail call fastcc i32 @crport_handshake(ptr noundef %8, i32 noundef %49, i32 noundef 524288) #4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %59, %54, %48, %37, %32, %27, %24, %19, %13
  %63 = phi ptr [ @.str.24, %19 ], [ @.str.24, %13 ], [ @.str.24, %24 ], [ @.str.25, %32 ], [ @.str.25, %27 ], [ @.str.25, %37 ], [ @.str.26, %54 ], [ @.str.26, %48 ], [ @.str.26, %59 ]
  %64 = phi i32 [ %22, %19 ], [ %17, %13 ], [ %25, %24 ], [ %35, %32 ], [ %30, %27 ], [ %38, %37 ], [ %57, %54 ], [ %52, %48 ], [ %60, %59 ]
  %65 = load ptr, ptr %8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %65, ptr noundef nonnull %63) #5
  br label %66

66:                                               ; preds = %62, %59, %1
  %67 = phi i32 [ 0, %1 ], [ 0, %59 ], [ %64, %62 ]
  ret i32 %67
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @crport_handshake(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #2 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !28
  tail call void @arm_heavy_mb() #4
  %4 = or i32 %2, %1
  %5 = getelementptr inbounds %struct.exynos5_usbdrd_phy, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %4) #4, !srcloc !11
  %8 = tail call i64 @ktime_get() #4
  %9 = add i64 %8, 100000
  %10 = load ptr, ptr %5, align 4
  %11 = getelementptr i8, ptr %10, i32 24
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #4, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !29
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %22, %3
  %16 = tail call i64 @ktime_get() #4
  %17 = icmp sgt i64 %16, %9
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load ptr, ptr %5, align 4
  %20 = getelementptr i8, ptr %19, i32 24
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #4, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !30
  br label %28

22:                                               ; preds = %15
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 1, i32 noundef 2) #4
  %23 = load ptr, ptr %5, align 4
  %24 = getelementptr i8, ptr %23, i32 24
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #4, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !29
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %15, label %28

28:                                               ; preds = %22, %18, %3
  %29 = phi i32 [ %21, %18 ], [ %12, %3 ], [ %25, %22 ]
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %57, label %32

32:                                               ; preds = %28
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !31
  tail call void @arm_heavy_mb() #4
  %33 = load ptr, ptr %5, align 4
  %34 = getelementptr i8, ptr %33, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %1) #4, !srcloc !11
  %35 = tail call i64 @ktime_get() #4
  %36 = add i64 %35, 100000
  %37 = load ptr, ptr %5, align 4
  %38 = getelementptr i8, ptr %37, i32 24
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #4, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !32
  %40 = and i32 %39, 1
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %60, label %42

42:                                               ; preds = %45, %32
  %43 = tail call i64 @ktime_get() #4
  %44 = icmp sgt i64 %43, %36
  br i1 %44, label %51, label %45

45:                                               ; preds = %42
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 1, i32 noundef 2) #4
  %46 = load ptr, ptr %5, align 4
  %47 = getelementptr i8, ptr %46, i32 24
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #4, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !32
  %49 = and i32 %48, 1
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %60, label %42

51:                                               ; preds = %42
  %52 = load ptr, ptr %5, align 4
  %53 = getelementptr i8, ptr %52, i32 24
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #4, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !33
  %55 = and i32 %54, 1
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %51, %28
  %58 = phi ptr [ @.str.27, %28 ], [ @.str.28, %51 ]
  %59 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull %58, i32 noundef %1) #5
  br label %60

60:                                               ; preds = %57, %51, %45, %32
  %61 = phi i32 [ 0, %51 ], [ 0, %32 ], [ -110, %57 ], [ 0, %45 ]
  ret i32 %61
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @exynos5_usbdrd_phy_isol(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.phy_usb_instance, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = icmp eq i32 %1, 0
  %8 = zext i1 %7 to i32
  %9 = getelementptr inbounds %struct.phy_usb_instance, ptr %0, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = tail call i32 @regmap_update_bits_base(ptr noundef nonnull %4, i32 noundef %10, i32 noundef 1, i32 noundef %8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  br label %12

12:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @exynos5_usbdrd_utmi_init(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.exynos5_usbdrd_phy, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 28
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #4, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !34
  %6 = and i32 %5, -2080374785
  %7 = or i32 %6, 603979776
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  %8 = load ptr, ptr %2, align 4
  %9 = getelementptr i8, ptr %8, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #4, !srcloc !11
  %10 = load ptr, ptr %2, align 4
  %11 = getelementptr i8, ptr %10, i32 32
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #4, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !36
  %13 = and i32 %12, -32
  %14 = or i32 %13, 28
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !37
  tail call void @arm_heavy_mb() #4
  %15 = load ptr, ptr %2, align 4
  %16 = getelementptr i8, ptr %15, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #4, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !38
  tail call void @arm_heavy_mb() #4
  %17 = load ptr, ptr %2, align 4
  %18 = getelementptr i8, ptr %17, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 64) #4, !srcloc !11
  %19 = load ptr, ptr %2, align 4
  %20 = getelementptr i8, ptr %19, i32 40
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #4, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !39
  %22 = and i32 %21, -5
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  %23 = load ptr, ptr %2, align 4
  %24 = getelementptr i8, ptr %23, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %22) #4, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos5_usbdrd_utmi_set_refclk(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.phy_usb_instance, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = mul i32 %3, -20
  %5 = add i32 %4, -28
  %6 = getelementptr i8, ptr %0, i32 %5
  %7 = getelementptr inbounds %struct.exynos5_usbdrd_phy, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 16
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #4, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !41
  %11 = and i32 %10, -237
  %12 = getelementptr inbounds %struct.exynos5_usbdrd_phy, ptr %6, i32 0, i32 8
  %13 = load i32, ptr %12, align 4
  %14 = shl i32 %13, 5
  %15 = or i32 %11, %14
  %16 = or i32 %15, 12
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @exynos5_usbdrd_pipe3_init(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.exynos5_usbdrd_phy, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 32
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #4, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !42
  %6 = and i32 %5, -32
  %7 = or i32 %6, 28
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !43
  tail call void @arm_heavy_mb() #4
  %8 = load ptr, ptr %2, align 4
  %9 = getelementptr i8, ptr %8, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #4, !srcloc !11
  %10 = load ptr, ptr %2, align 4
  %11 = getelementptr i8, ptr %10, i32 40
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #4, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !44
  %13 = and i32 %12, -9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !45
  tail call void @arm_heavy_mb() #4
  %14 = load ptr, ptr %2, align 4
  %15 = getelementptr i8, ptr %14, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #4, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos5_usbdrd_pipe3_set_refclk(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.phy_usb_instance, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = mul i32 %3, -20
  %5 = add i32 %4, -28
  %6 = getelementptr i8, ptr %0, i32 %5
  %7 = getelementptr inbounds %struct.exynos5_usbdrd_phy, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 16
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #4, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !46
  %11 = and i32 %10, -1805
  %12 = or i32 %11, 12
  %13 = getelementptr inbounds %struct.exynos5_usbdrd_phy, ptr %6, i32 0, i32 8
  %14 = load i32, ptr %13, align 4
  switch i32 %14, label %23 [
    i32 7, label %15
    i32 5, label %17
    i32 4, label %19
    i32 3, label %21
  ]

15:                                               ; preds = %1
  %16 = or i32 %11, 102412
  br label %23

17:                                               ; preds = %1
  %18 = or i32 %11, 1141063692
  br label %23

19:                                               ; preds = %1
  %20 = or i32 %11, 256012
  br label %23

21:                                               ; preds = %1
  %22 = or i32 %11, 1140854796
  br label %23

23:                                               ; preds = %21, %19, %17, %15, %1
  %24 = phi i32 [ %12, %1 ], [ %22, %21 ], [ %20, %19 ], [ %18, %17 ], [ %16, %15 ]
  ret i32 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{i8 0, i8 2}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2153754985}
!11 = !{i64 2500715}
!12 = !{i64 2153755316}
!13 = !{i64 2153755748}
!14 = !{i64 2501133}
!15 = !{i64 2153756240}
!16 = !{i64 2153756520}
!17 = !{i64 2153757012}
!18 = !{i64 2153757290}
!19 = !{i64 2153758035}
!20 = !{i64 2153758990}
!21 = !{i64 2153759567}
!22 = !{i64 2153760059}
!23 = !{i64 2153760505}
!24 = !{i64 2153760997}
!25 = !{i64 2153761357}
!26 = !{i64 2153770075}
!27 = !{i64 2153770558}
!28 = !{i64 2153764226}
!29 = !{i64 2153765952}
!30 = !{i64 2153766304}
!31 = !{i64 2153767140}
!32 = !{i64 2153768858}
!33 = !{i64 2153769210}
!34 = !{i64 2153752471}
!35 = !{i64 2153752692}
!36 = !{i64 2153753184}
!37 = !{i64 2153753399}
!38 = !{i64 2153753836}
!39 = !{i64 2153754376}
!40 = !{i64 2153754654}
!41 = !{i64 2153750546}
!42 = !{i64 2153750994}
!43 = !{i64 2153751209}
!44 = !{i64 2153751701}
!45 = !{i64 2153751979}
!46 = !{i64 2153749422}
