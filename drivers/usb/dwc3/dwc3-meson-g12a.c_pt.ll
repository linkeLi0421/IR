; ModuleID = '/llk/IR/drivers/usb/dwc3/dwc3-meson-g12a.c_pt.bc'
source_filename = "../drivers/usb/dwc3/dwc3-meson-g12a.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dwc3_meson_g12a_drvdata = type { i8, i8, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.clk_bulk_data = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.dwc3_meson_g12a = type { ptr, [3 x ptr], ptr, ptr, [3 x ptr], i32, i32, i32, i32, ptr, %struct.usb_role_switch_desc, ptr, ptr }
%struct.usb_role_switch_desc = type { ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr }

@__initcall__kmod_dwc3_meson_g12a__287_982_dwc3_meson_g12a_driver_init6 = internal global ptr @dwc3_meson_g12a_driver_init, section ".initcall6.init", align 4
@dwc3_meson_g12a_driver = internal global %struct.platform_driver { ptr @dwc3_meson_g12a_probe, ptr @dwc3_meson_g12a_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @dwc3_meson_g12a_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dwc3_meson_g12a_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_dwc3_meson_g12a_driver_exit = internal global ptr @dwc3_meson_g12a_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file288 = internal constant [54 x i8] c"dwc3_meson_g12a.file=drivers/usb/dwc3/dwc3-meson-g12a\00", section ".modinfo", align 1
@__UNIQUE_ID_license289 = internal constant [31 x i8] c"dwc3_meson_g12a.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [62 x i8] c"dwc3_meson_g12a.description=Amlogic Meson G12A USB Glue Layer\00", section ".modinfo", align 1
@__UNIQUE_ID_author291 = internal constant [64 x i8] c"dwc3_meson_g12a.author=Neil Armstrong <narmstrong@baylibre.com>\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [16 x i8] c"dwc3-meson-g12a\00", align 1
@dwc3_meson_g12a_match = internal constant [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-gxl-usb-ctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @gxl_drvdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-gxm-usb-ctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @gxm_drvdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-axg-usb-ctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @axg_drvdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-g12a-usb-ctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @g12a_drvdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-a1-usb-ctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @a1_drvdata }, %struct.of_device_id zeroinitializer], align 4
@dwc3_meson_g12a_dev_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @dwc3_meson_g12a_suspend, ptr @dwc3_meson_g12a_resume, ptr @dwc3_meson_g12a_suspend, ptr @dwc3_meson_g12a_resume, ptr @dwc3_meson_g12a_suspend, ptr @dwc3_meson_g12a_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dwc3_meson_g12a_runtime_suspend, ptr @dwc3_meson_g12a_runtime_resume, ptr null }, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"vbus\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"failed to get device reset, err=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"usb3\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"USB2 ports: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"USB3 ports: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"Failed to switch OTG mode\0A\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"snps,dwc3\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"snps,dwc2\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"Unable to register Role Switch\0A\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"switching to Host Mode\0A\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"switching to Device Mode\0A\00", align 1
@dwc3_meson_g12a_role_set.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"Broken manual OTG switch\0A\00", align 1
@gxl_drvdata = internal global %struct.dwc3_meson_g12a_drvdata { i8 1, i8 1, ptr @meson_gxl_clocks, i32 1, ptr @meson_a1_phy_names, i32 2, ptr @dwc3_meson_gxl_setup_regmaps, ptr @dwc3_meson_gxl_usb2_init_phy, ptr @dwc3_meson_gxl_set_phy_mode, ptr @dwc3_meson_gxl_usb_init, ptr @dwc3_meson_gxl_usb_post_init }, align 4
@gxm_drvdata = internal global %struct.dwc3_meson_g12a_drvdata { i8 1, i8 1, ptr @meson_gxl_clocks, i32 1, ptr @meson_gxm_phy_names, i32 3, ptr @dwc3_meson_gxl_setup_regmaps, ptr @dwc3_meson_gxl_usb2_init_phy, ptr @dwc3_meson_gxl_set_phy_mode, ptr @dwc3_meson_gxl_usb_init, ptr @dwc3_meson_gxl_usb_post_init }, align 4
@axg_drvdata = internal global %struct.dwc3_meson_g12a_drvdata { i8 1, i8 0, ptr @meson_gxl_clocks, i32 2, ptr @meson_a1_phy_names, i32 2, ptr @dwc3_meson_gxl_setup_regmaps, ptr @dwc3_meson_gxl_usb2_init_phy, ptr @dwc3_meson_gxl_set_phy_mode, ptr @dwc3_meson_g12a_usb_init, ptr @dwc3_meson_gxl_usb_post_init }, align 4
@g12a_drvdata = internal global %struct.dwc3_meson_g12a_drvdata { i8 1, i8 0, ptr @meson_g12a_clocks, i32 1, ptr @meson_g12a_phy_names, i32 3, ptr @dwc3_meson_g12a_setup_regmaps, ptr @dwc3_meson_g12a_usb2_init_phy, ptr @dwc3_meson_g12a_set_phy_mode, ptr @dwc3_meson_g12a_usb_init, ptr null }, align 4
@a1_drvdata = internal global %struct.dwc3_meson_g12a_drvdata { i8 0, i8 0, ptr @meson_a1_clocks, i32 3, ptr @meson_a1_phy_names, i32 2, ptr @dwc3_meson_g12a_setup_regmaps, ptr @dwc3_meson_g12a_usb2_init_phy, ptr @dwc3_meson_g12a_set_phy_mode, ptr @dwc3_meson_g12a_usb_init, ptr null }, align 4
@meson_gxl_clocks = internal global [2 x %struct.clk_bulk_data] [%struct.clk_bulk_data { ptr @.str.13, ptr null }, %struct.clk_bulk_data { ptr @.str.14, ptr null }], align 4
@meson_a1_phy_names = internal constant [2 x ptr] [ptr @.str.15, ptr @.str.16], align 4
@.str.13 = private unnamed_addr constant [9 x i8] c"usb_ctrl\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"ddr\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"usb2-phy0\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"usb2-phy1\00", align 1
@phy_meson_g12a_usb_glue_regmap_conf = internal constant %struct.regmap_config { ptr @.str.17, i32 8, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 20, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@.str.17 = private unnamed_addr constant [9 x i8] c"usb-glue\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"usb2\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@meson_gxm_phy_names = internal constant [3 x ptr] [ptr @.str.15, ptr @.str.16, ptr @.str.19], align 4
@.str.19 = private unnamed_addr constant [10 x i8] c"usb2-phy2\00", align 1
@meson_g12a_clocks = internal global [1 x %struct.clk_bulk_data] zeroinitializer, align 4
@meson_g12a_phy_names = internal constant [3 x ptr] [ptr @.str.15, ptr @.str.16, ptr @.str.20], align 4
@.str.20 = private unnamed_addr constant [10 x i8] c"usb3-phy0\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"u2p-%d\00", align 1
@meson_a1_clocks = internal global [3 x %struct.clk_bulk_data] [%struct.clk_bulk_data { ptr @.str.13, ptr null }, %struct.clk_bulk_data { ptr @.str.22, ptr null }, %struct.clk_bulk_data { ptr @.str.23, ptr null }], align 4
@.str.22 = private unnamed_addr constant [8 x i8] c"usb_bus\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"xtal_usb_ctrl\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file288, ptr @__UNIQUE_ID_license289, ptr @__exitcall_dwc3_meson_g12a_driver_exit, ptr @__initcall__kmod_dwc3_meson_g12a__287_982_dwc3_meson_g12a_driver_init6, ptr @dwc3_meson_g12a_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @dwc3_meson_g12a_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @dwc3_meson_g12a_driver, ptr noundef null) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @dwc3_meson_g12a_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @dwc3_meson_g12a_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc3_meson_g12a_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 100, i32 noundef 3520) #7
  %6 = icmp eq ptr %5, null
  br i1 %6, label %154, label %7

7:                                                ; preds = %1
  %8 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #7
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = ptrtoint ptr %8 to i32
  br label %154

12:                                               ; preds = %7
  %13 = tail call ptr @of_device_get_match_data(ptr noundef %2) #7
  %14 = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %5, i32 0, i32 12
  store ptr %13, ptr %14, align 4
  store ptr %2, ptr %5, align 4
  %15 = tail call ptr @devm_regulator_get_optional(ptr noundef %2, ptr noundef nonnull @.str.1) #7
  %16 = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %5, i32 0, i32 9
  store ptr %15, ptr %16, align 4
  %17 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  %19 = icmp eq ptr %15, inttoptr (i32 -517 to ptr)
  br i1 %19, label %154, label %20

20:                                               ; preds = %18
  store ptr null, ptr %16, align 4
  br label %21

21:                                               ; preds = %20, %12
  %22 = load ptr, ptr %14, align 4
  %23 = getelementptr inbounds %struct.dwc3_meson_g12a_drvdata, ptr %22, i32 0, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.dwc3_meson_g12a_drvdata, ptr %22, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = tail call i32 @devm_clk_bulk_get(ptr noundef %2, i32 noundef %24, ptr noundef %26) #7
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %154

29:                                               ; preds = %21
  %30 = load ptr, ptr %14, align 4
  %31 = getelementptr inbounds %struct.dwc3_meson_g12a_drvdata, ptr %30, i32 0, i32 3
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.dwc3_meson_g12a_drvdata, ptr %30, i32 0, i32 2
  %34 = load ptr, ptr %33, align 4
  %35 = tail call i32 @clk_bulk_prepare(i32 noundef %32, ptr noundef %34) #7
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %154

37:                                               ; preds = %29
  %38 = tail call i32 @clk_bulk_enable(i32 noundef %32, ptr noundef %34) #7
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %37
  tail call void @clk_bulk_unprepare(i32 noundef %32, ptr noundef %34) #7
  br label %154

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %5, ptr %42, align 8
  %43 = tail call ptr @__devm_reset_control_get(ptr noundef %2, ptr noundef null, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %44 = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %5, i32 0, i32 3
  store ptr %43, ptr %44, align 4
  %45 = icmp ugt ptr %43, inttoptr (i32 -4096 to ptr)
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = ptrtoint ptr %43 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2, i32 noundef %47) #8
  br label %147

48:                                               ; preds = %41
  %49 = tail call i32 @reset_control_reset(ptr noundef %43) #7
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %147

51:                                               ; preds = %48
  %52 = tail call fastcc i32 @dwc3_meson_g12a_get_phys(ptr noundef nonnull %5)
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %143

54:                                               ; preds = %51
  %55 = load ptr, ptr %14, align 4
  %56 = getelementptr inbounds %struct.dwc3_meson_g12a_drvdata, ptr %55, i32 0, i32 6
  %57 = load ptr, ptr %56, align 4
  %58 = tail call i32 %57(ptr noundef nonnull %5, ptr noundef %8) #7
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %143

60:                                               ; preds = %54
  %61 = load ptr, ptr %16, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %60
  %64 = tail call i32 @regulator_enable(ptr noundef nonnull %61) #7
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %143

66:                                               ; preds = %63, %60
  %67 = tail call i32 @usb_get_dr_mode(ptr noundef %2) #7
  %68 = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %5, i32 0, i32 5
  store i32 %67, ptr %68, align 4
  %69 = icmp eq i32 %67, 2
  %70 = select i1 %69, i32 6, i32 1
  %71 = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %5, i32 0, i32 6
  store i32 %70, ptr %71, align 4
  %72 = load ptr, ptr %14, align 4
  %73 = getelementptr inbounds %struct.dwc3_meson_g12a_drvdata, ptr %72, i32 0, i32 9
  %74 = load ptr, ptr %73, align 4
  %75 = tail call i32 %74(ptr noundef nonnull %5) #7
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %137

77:                                               ; preds = %66
  %78 = getelementptr %struct.dwc3_meson_g12a, ptr %5, i32 0, i32 4, i32 0
  %79 = load ptr, ptr %78, align 4
  %80 = tail call i32 @phy_init(ptr noundef %79) #7
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %137

82:                                               ; preds = %77
  %83 = getelementptr %struct.dwc3_meson_g12a, ptr %5, i32 0, i32 4, i32 1
  %84 = load ptr, ptr %83, align 4
  %85 = tail call i32 @phy_init(ptr noundef %84) #7
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %137

87:                                               ; preds = %82
  %88 = getelementptr %struct.dwc3_meson_g12a, ptr %5, i32 0, i32 4, i32 2
  %89 = load ptr, ptr %88, align 4
  %90 = tail call i32 @phy_init(ptr noundef %89) #7
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %137

92:                                               ; preds = %87
  %93 = load ptr, ptr %78, align 4
  %94 = tail call i32 @phy_power_on(ptr noundef %93) #7
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %129

96:                                               ; preds = %92
  %97 = load ptr, ptr %83, align 4
  %98 = tail call i32 @phy_power_on(ptr noundef %97) #7
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %129

100:                                              ; preds = %96
  %101 = load ptr, ptr %88, align 4
  %102 = tail call i32 @phy_power_on(ptr noundef %101) #7
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %129

104:                                              ; preds = %100
  %105 = load ptr, ptr %14, align 4
  %106 = getelementptr inbounds %struct.dwc3_meson_g12a_drvdata, ptr %105, i32 0, i32 10
  %107 = load ptr, ptr %106, align 4
  %108 = icmp eq ptr %107, null
  br i1 %108, label %112, label %109

109:                                              ; preds = %104
  %110 = tail call i32 %107(ptr noundef nonnull %5) #7
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %121

112:                                              ; preds = %109, %104
  %113 = tail call i32 @of_platform_populate(ptr noundef %4, ptr noundef null, ptr noundef null, ptr noundef %2) #7
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %112
  %116 = tail call fastcc i32 @dwc3_meson_g12a_otg_init(ptr noundef %0, ptr noundef nonnull %5)
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = tail call i32 @__pm_runtime_set_status(ptr noundef %2, i32 noundef 0) #7
  tail call void @pm_runtime_enable(ptr noundef %2) #7
  %120 = tail call i32 @__pm_runtime_resume(ptr noundef %2, i32 noundef 4) #7
  br label %154

121:                                              ; preds = %115, %112, %109
  %122 = phi i32 [ %110, %109 ], [ %113, %112 ], [ %116, %115 ]
  %123 = load ptr, ptr %78, align 4
  %124 = tail call i32 @phy_power_off(ptr noundef %123) #7
  %125 = load ptr, ptr %83, align 4
  %126 = tail call i32 @phy_power_off(ptr noundef %125) #7
  %127 = load ptr, ptr %88, align 4
  %128 = tail call i32 @phy_power_off(ptr noundef %127) #7
  br label %129

129:                                              ; preds = %121, %100, %96, %92
  %130 = phi i32 [ %122, %121 ], [ %94, %92 ], [ %98, %96 ], [ %102, %100 ]
  %131 = load ptr, ptr %78, align 4
  %132 = tail call i32 @phy_exit(ptr noundef %131) #7
  %133 = load ptr, ptr %83, align 4
  %134 = tail call i32 @phy_exit(ptr noundef %133) #7
  %135 = load ptr, ptr %88, align 4
  %136 = tail call i32 @phy_exit(ptr noundef %135) #7
  br label %137

137:                                              ; preds = %129, %87, %82, %77, %66
  %138 = phi i32 [ %75, %66 ], [ %130, %129 ], [ %80, %77 ], [ %85, %82 ], [ %90, %87 ]
  %139 = load ptr, ptr %16, align 4
  %140 = icmp eq ptr %139, null
  br i1 %140, label %143, label %141

141:                                              ; preds = %137
  %142 = tail call i32 @regulator_disable(ptr noundef nonnull %139) #7
  br label %143

143:                                              ; preds = %141, %137, %63, %54, %51
  %144 = phi i32 [ %52, %51 ], [ %58, %54 ], [ %64, %63 ], [ %138, %141 ], [ %138, %137 ]
  %145 = load ptr, ptr %44, align 4
  %146 = tail call i32 @reset_control_rearm(ptr noundef %145) #7
  br label %147

147:                                              ; preds = %143, %48, %46
  %148 = phi i32 [ %47, %46 ], [ %49, %48 ], [ %144, %143 ]
  %149 = load ptr, ptr %14, align 4
  %150 = getelementptr inbounds %struct.dwc3_meson_g12a_drvdata, ptr %149, i32 0, i32 3
  %151 = load i32, ptr %150, align 4
  %152 = getelementptr inbounds %struct.dwc3_meson_g12a_drvdata, ptr %149, i32 0, i32 2
  %153 = load ptr, ptr %152, align 4
  tail call void @clk_bulk_disable(i32 noundef %151, ptr noundef %153) #7
  tail call void @clk_bulk_unprepare(i32 noundef %151, ptr noundef %153) #7
  br label %154

154:                                              ; preds = %147, %118, %40, %29, %21, %18, %10, %1
  %155 = phi i32 [ %11, %10 ], [ %148, %147 ], [ 0, %118 ], [ -12, %1 ], [ %27, %21 ], [ -517, %18 ], [ %38, %40 ], [ %35, %29 ]
  ret i32 %155
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc3_meson_g12a_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %3, i32 0, i32 12
  %6 = load ptr, ptr %5, align 4
  %7 = load i8, ptr %6, align 4, !range !8
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %3, i32 0, i32 11
  %11 = load ptr, ptr %10, align 4
  tail call void @usb_role_switch_unregister(ptr noundef %11) #7
  br label %12

12:                                               ; preds = %9, %1
  tail call void @of_platform_depopulate(ptr noundef %4) #7
  %13 = getelementptr %struct.dwc3_meson_g12a, ptr %3, i32 0, i32 4, i32 0
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 @phy_power_off(ptr noundef %14) #7
  %16 = load ptr, ptr %13, align 4
  %17 = tail call i32 @phy_exit(ptr noundef %16) #7
  %18 = getelementptr %struct.dwc3_meson_g12a, ptr %3, i32 0, i32 4, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 @phy_power_off(ptr noundef %19) #7
  %21 = load ptr, ptr %18, align 4
  %22 = tail call i32 @phy_exit(ptr noundef %21) #7
  %23 = getelementptr %struct.dwc3_meson_g12a, ptr %3, i32 0, i32 4, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 @phy_power_off(ptr noundef %24) #7
  %26 = load ptr, ptr %23, align 4
  %27 = tail call i32 @phy_exit(ptr noundef %26) #7
  tail call void @__pm_runtime_disable(ptr noundef %4, i1 noundef zeroext true) #7
  %28 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %28) #7, !srcloc !10
  %29 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %28, ptr %28, i32 0, i32 -1, ptr elementtype(i32) %28) #7, !srcloc !11
  %30 = extractvalue { i32, i32, i32 } %29, 0
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !12
  br label %33

33:                                               ; preds = %32, %12
  %34 = tail call i32 @__pm_runtime_set_status(ptr noundef %4, i32 noundef 2) #7
  %35 = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %3, i32 0, i32 3
  %36 = load ptr, ptr %35, align 4
  %37 = tail call i32 @reset_control_rearm(ptr noundef %36) #7
  %38 = load ptr, ptr %5, align 4
  %39 = getelementptr inbounds %struct.dwc3_meson_g12a_drvdata, ptr %38, i32 0, i32 3
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr inbounds %struct.dwc3_meson_g12a_drvdata, ptr %38, i32 0, i32 2
  %42 = load ptr, ptr %41, align 4
  tail call void @clk_bulk_disable(i32 noundef %40, ptr noundef %42) #7
  tail call void @clk_bulk_unprepare(i32 noundef %40, ptr noundef %42) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dwc3_meson_g12a_get_phys(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %0, i32 0, i32 12
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dwc3_meson_g12a_drvdata, ptr %3, i32 0, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %37

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %0, i32 0, i32 8
  %9 = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %0, i32 0, i32 7
  br label %10

10:                                               ; preds = %31, %7
  %11 = phi ptr [ %3, %7 ], [ %33, %31 ]
  %12 = phi i32 [ 0, %7 ], [ %32, %31 ]
  %13 = getelementptr inbounds %struct.dwc3_meson_g12a_drvdata, ptr %11, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr ptr, ptr %14, i32 %12
  %16 = load ptr, ptr %15, align 4
  %17 = load ptr, ptr %0, align 4
  %18 = tail call ptr @devm_phy_optional_get(ptr noundef %17, ptr noundef %16) #7
  %19 = getelementptr %struct.dwc3_meson_g12a, ptr %0, i32 0, i32 4, i32 %12
  store ptr %18, ptr %19, align 4
  %20 = icmp eq ptr %18, null
  br i1 %20, label %31, label %21

21:                                               ; preds = %10
  %22 = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  br i1 %22, label %23, label %25

23:                                               ; preds = %21
  %24 = ptrtoint ptr %18 to i32
  br label %44

25:                                               ; preds = %21
  %26 = tail call ptr @strstr(ptr noundef %16, ptr noundef nonnull @.str.3)
  %27 = icmp eq ptr %26, null
  %28 = select i1 %27, ptr %9, ptr %8
  %29 = load i32, ptr %28, align 4
  %30 = add i32 %29, 1
  store i32 %30, ptr %28, align 4
  br label %31

31:                                               ; preds = %25, %10
  %32 = add nuw nsw i32 %12, 1
  %33 = load ptr, ptr %2, align 4
  %34 = getelementptr inbounds %struct.dwc3_meson_g12a_drvdata, ptr %33, i32 0, i32 5
  %35 = load i32, ptr %34, align 4
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %10, label %37

37:                                               ; preds = %31, %1
  %38 = load ptr, ptr %0, align 4
  %39 = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %0, i32 0, i32 7
  %40 = load i32, ptr %39, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %38, ptr noundef nonnull @.str.4, i32 noundef %40) #8
  %41 = load ptr, ptr %0, align 4
  %42 = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %0, i32 0, i32 8
  %43 = load i32, ptr %42, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %41, ptr noundef nonnull @.str.5, i32 noundef %43) #8
  br label %44

44:                                               ; preds = %37, %23
  %45 = phi i32 [ %24, %23 ], [ 0, %37 ]
  ret i32 %45
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_get_dr_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_platform_populate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dwc3_meson_g12a_otg_init(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %1, i32 0, i32 12
  %6 = load ptr, ptr %5, align 4
  %7 = load i8, ptr %6, align 4, !range !8
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %73, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %1, i32 0, i32 5
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 3
  br i1 %12, label %13, label %40

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %1, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 20, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %17 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #7
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %73, label %19

19:                                               ; preds = %13
  %20 = load ptr, ptr %0, align 8
  %21 = tail call i32 @devm_request_threaded_irq(ptr noundef %4, i32 noundef %17, ptr noundef null, ptr noundef nonnull @dwc3_meson_g12a_irq_thread, i32 noundef 8192, ptr noundef %20, ptr noundef %1) #7
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %73

23:                                               ; preds = %19
  %24 = load i32, ptr %10, align 4
  %25 = icmp eq i32 %24, 3
  br i1 %25, label %26, label %40

26:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !13
  %27 = load ptr, ptr %14, align 4
  %28 = call i32 @regmap_read(ptr noundef %27, i32 noundef 20, ptr noundef nonnull %3) #7
  %29 = load i32, ptr %3, align 4
  %30 = and i32 %29, 3
  %31 = icmp eq i32 %30, 0
  %32 = select i1 %31, i32 1, i32 6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  %33 = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %1, i32 0, i32 6
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %40, label %36

36:                                               ; preds = %26
  %37 = call fastcc i32 @dwc3_meson_g12a_otg_mode_set(ptr noundef %1, i32 noundef %32)
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %36
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.6) #8
  br label %40

40:                                               ; preds = %39, %36, %26, %23, %9
  %41 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %42 = load ptr, ptr %41, align 8
  %43 = call ptr @of_get_compatible_child(ptr noundef %42, ptr noundef nonnull @.str.7) #7
  %44 = icmp eq ptr %43, null
  br i1 %44, label %50, label %45

45:                                               ; preds = %40
  %46 = call ptr @of_find_device_by_node(ptr noundef nonnull %43) #7
  call void @of_node_put(ptr noundef nonnull %43) #7
  %47 = icmp eq ptr %46, null
  %48 = getelementptr inbounds %struct.platform_device, ptr %46, i32 0, i32 3
  %49 = select i1 %47, ptr null, ptr %48
  br label %50

50:                                               ; preds = %45, %40
  %51 = phi ptr [ null, %40 ], [ %49, %45 ]
  %52 = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %1, i32 0, i32 10
  %53 = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %1, i32 0, i32 10, i32 1
  store ptr %51, ptr %53, align 4
  %54 = load ptr, ptr %41, align 8
  %55 = call ptr @of_get_compatible_child(ptr noundef %54, ptr noundef nonnull @.str.8) #7
  %56 = icmp eq ptr %55, null
  br i1 %56, label %62, label %57

57:                                               ; preds = %50
  %58 = call ptr @of_find_device_by_node(ptr noundef nonnull %55) #7
  call void @of_node_put(ptr noundef nonnull %55) #7
  %59 = icmp eq ptr %58, null
  %60 = getelementptr inbounds %struct.platform_device, ptr %58, i32 0, i32 3
  %61 = select i1 %59, ptr null, ptr %60
  br label %62

62:                                               ; preds = %57, %50
  %63 = phi ptr [ null, %50 ], [ %61, %57 ]
  %64 = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %1, i32 0, i32 10, i32 3
  store ptr %63, ptr %64, align 4
  %65 = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %1, i32 0, i32 10, i32 6
  store i8 1, ptr %65, align 4
  %66 = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %1, i32 0, i32 10, i32 4
  store ptr @dwc3_meson_g12a_role_set, ptr %66, align 4
  %67 = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %1, i32 0, i32 10, i32 5
  store ptr @dwc3_meson_g12a_role_get, ptr %67, align 4
  %68 = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %1, i32 0, i32 10, i32 7
  store ptr %1, ptr %68, align 4
  %69 = call ptr @usb_role_switch_register(ptr noundef %4, ptr noundef %52) #7
  %70 = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %1, i32 0, i32 11
  store ptr %69, ptr %70, align 4
  %71 = icmp ugt ptr %69, inttoptr (i32 -4096 to ptr)
  br i1 %71, label %72, label %73

72:                                               ; preds = %62
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.9) #8
  br label %73

73:                                               ; preds = %72, %62, %19, %13, %2
  %74 = phi i32 [ 0, %2 ], [ %17, %13 ], [ %21, %19 ], [ 0, %72 ], [ 0, %62 ]
  ret i32 %74
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_rearm(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_prepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_unprepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_optional_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc3_meson_g12a_irq_thread(i32 noundef %0, ptr noundef %1) #2 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !13
  %4 = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %1, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = call i32 @regmap_read(ptr noundef %5, i32 noundef 20, ptr noundef nonnull %3) #7
  %7 = load i32, ptr %3, align 4
  %8 = and i32 %7, 3
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, i32 1, i32 6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  %11 = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %1, i32 0, i32 6
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %10, %12
  br i1 %13, label %19, label %14

14:                                               ; preds = %2
  %15 = call fastcc i32 @dwc3_meson_g12a_otg_mode_set(ptr noundef %1, i32 noundef %10)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %14
  %18 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %18, ptr noundef nonnull @.str.6) #8
  br label %19

19:                                               ; preds = %17, %14, %2
  %20 = load ptr, ptr %4, align 4
  %21 = call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef 20, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dwc3_meson_g12a_otg_mode_set(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %0, i32 0, i32 12
  %4 = load ptr, ptr %3, align 4
  %5 = load i8, ptr %4, align 4, !range !8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %40, label %7

7:                                                ; preds = %2
  %8 = getelementptr %struct.dwc3_meson_g12a, ptr %0, i32 0, i32 4, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %40, label %11

11:                                               ; preds = %7
  %12 = icmp eq i32 %1, 1
  %13 = load ptr, ptr %0, align 4
  br i1 %12, label %18, label %14

14:                                               ; preds = %11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %13, ptr noundef nonnull @.str.11) #8
  %15 = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %0, i32 0, i32 9
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %32, label %22

18:                                               ; preds = %11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %13, ptr noundef nonnull @.str.10) #8
  %19 = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %0, i32 0, i32 9
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %32, label %26

22:                                               ; preds = %14
  %23 = icmp eq i32 %1, 6
  br i1 %23, label %24, label %26

24:                                               ; preds = %22
  %25 = tail call i32 @regulator_disable(ptr noundef nonnull %16) #7
  br label %29

26:                                               ; preds = %22, %18
  %27 = phi ptr [ %16, %22 ], [ %20, %18 ]
  %28 = tail call i32 @regulator_enable(ptr noundef nonnull %27) #7
  br label %29

29:                                               ; preds = %26, %24
  %30 = phi i32 [ %25, %24 ], [ %28, %26 ]
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %29, %18, %14
  %33 = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %0, i32 0, i32 6
  store i32 %1, ptr %33, align 4
  %34 = load ptr, ptr %3, align 4
  %35 = getelementptr inbounds %struct.dwc3_meson_g12a_drvdata, ptr %34, i32 0, i32 8
  %36 = load ptr, ptr %35, align 4
  %37 = tail call i32 %36(ptr noundef %0, i32 noundef 1, i32 noundef %1) #7
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  tail call fastcc void @dwc3_meson_g12a_usb_otg_apply_mode(ptr noundef %0, i32 noundef %1)
  br label %40

40:                                               ; preds = %39, %32, %29, %7, %2
  %41 = phi i32 [ 0, %39 ], [ -22, %7 ], [ -22, %2 ], [ %30, %29 ], [ %37, %32 ]
  ret i32 %41
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc3_meson_g12a_role_set(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @usb_role_switch_get_drvdata(ptr noundef %0) #7
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %23, label %5

5:                                                ; preds = %2
  %6 = icmp eq i32 %1, 1
  %7 = select i1 %6, i32 1, i32 6
  %8 = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %3, i32 0, i32 6
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %7, %9
  br i1 %10, label %23, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %3, i32 0, i32 12
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.dwc3_meson_g12a_drvdata, ptr %13, i32 0, i32 1
  %15 = load i8, ptr %14, align 1, !range !8
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %11
  %18 = load i1, ptr @dwc3_meson_g12a_role_set.__print_once, align 1
  br i1 %18, label %21, label %19

19:                                               ; preds = %17
  store i1 true, ptr @dwc3_meson_g12a_role_set.__print_once, align 1
  %20 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %20, ptr noundef nonnull @.str.12) #8
  br label %21

21:                                               ; preds = %19, %17, %11
  %22 = tail call fastcc i32 @dwc3_meson_g12a_otg_mode_set(ptr noundef %3, i32 noundef %7)
  br label %23

23:                                               ; preds = %21, %5, %2
  %24 = phi i32 [ %22, %21 ], [ 0, %2 ], [ 0, %5 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc3_meson_g12a_role_get(ptr noundef %0) #2 {
  %2 = tail call ptr @usb_role_switch_get_drvdata(ptr noundef %0) #7
  %3 = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %2, i32 0, i32 6
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 1
  %6 = select i1 %5, i32 1, i32 2
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_role_switch_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dwc3_meson_g12a_usb_otg_apply_mode(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 {
  %3 = icmp eq i32 %1, 6
  %4 = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %0, i32 0, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 3
  br i1 %3, label %7, label %22

7:                                                ; preds = %2
  br i1 %6, label %18, label %8

8:                                                ; preds = %7
  %9 = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %0, i32 0, i32 12
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.dwc3_meson_g12a_drvdata, ptr %10, i32 0, i32 1
  %12 = load i8, ptr %11, align 1, !range !8
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %0, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 4, i32 noundef 12288, i32 noundef 8192, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %18

18:                                               ; preds = %14, %8, %7
  %19 = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %0, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef 0, i32 noundef -2147483648, i32 noundef -2147483648, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %35

22:                                               ; preds = %2
  br i1 %6, label %33, label %23

23:                                               ; preds = %22
  %24 = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %0, i32 0, i32 12
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.dwc3_meson_g12a_drvdata, ptr %25, i32 0, i32 1
  %27 = load i8, ptr %26, align 1, !range !8
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %0, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  %32 = tail call i32 @regmap_update_bits_base(ptr noundef %31, i32 noundef 4, i32 noundef 12288, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  tail call void @msleep(i32 noundef 500) #7
  br label %33

33:                                               ; preds = %29, %23, %22
  %34 = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %0, i32 0, i32 2
  br label %35

35:                                               ; preds = %33, %18
  %36 = phi ptr [ %34, %33 ], [ %19, %18 ]
  %37 = phi i32 [ -2147483648, %33 ], [ 1610612736, %18 ]
  %38 = phi i32 [ 0, %33 ], [ 2, %18 ]
  %39 = load ptr, ptr %36, align 4
  %40 = tail call i32 @regmap_update_bits_base(ptr noundef %39, i32 noundef 0, i32 noundef %37, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %41 = load ptr, ptr %36, align 4
  %42 = tail call i32 @regmap_update_bits_base(ptr noundef %41, i32 noundef 16, i32 noundef 2, i32 noundef %38, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_compatible_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_role_switch_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_role_switch_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_platform_depopulate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc3_meson_gxl_setup_regmaps(ptr nocapture noundef %0, ptr noundef %1) #2 {
  %3 = load ptr, ptr %0, align 4
  %4 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %3, ptr noundef null, ptr noundef %1, ptr noundef nonnull @phy_meson_g12a_usb_glue_regmap_conf, ptr noundef null, ptr noundef null) #7
  %5 = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %0, i32 0, i32 2
  store ptr %4, ptr %5, align 4
  %6 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  %7 = ptrtoint ptr %4 to i32
  %8 = select i1 %6, i32 %7, i32 0
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc3_meson_gxl_usb2_init_phy(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %0, i32 0, i32 12
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dwc3_meson_g12a_drvdata, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq i32 %1, 1
  %9 = select i1 %8, i32 6, i32 1
  %10 = tail call i32 %7(ptr noundef %0, i32 noundef %1, i32 noundef %9) #7
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc3_meson_gxl_set_phy_mode(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr %struct.dwc3_meson_g12a, ptr %0, i32 0, i32 4, i32 %1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @phy_set_mode_ext(ptr noundef %5, i32 noundef %2, i32 noundef 0) #7
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc3_meson_gxl_usb_init(ptr noundef %0) #2 {
  %2 = tail call fastcc i32 @dwc3_meson_g12a_usb_init_glue(ptr noundef %0, i32 noundef 6)
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc3_meson_gxl_usb_post_init(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %0, i32 0, i32 12
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dwc3_meson_g12a_drvdata, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %0, i32 0, i32 6
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 %5(ptr noundef %0, i32 noundef 1, i32 noundef %7) #7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, ptr %6, align 4
  tail call fastcc void @dwc3_meson_g12a_usb_otg_apply_mode(ptr noundef %0, i32 noundef %11)
  br label %12

12:                                               ; preds = %10, %1
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_set_mode_ext(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dwc3_meson_g12a_usb_init_glue(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %0, i32 0, i32 12
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dwc3_meson_g12a_drvdata, ptr %4, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %34

8:                                                ; preds = %28, %2
  %9 = phi ptr [ %29, %28 ], [ %4, %2 ]
  %10 = phi i32 [ %30, %28 ], [ 0, %2 ]
  %11 = getelementptr %struct.dwc3_meson_g12a, ptr %0, i32 0, i32 4, i32 %10
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %28, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.dwc3_meson_g12a_drvdata, ptr %9, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr ptr, ptr %16, i32 %10
  %18 = load ptr, ptr %17, align 4
  %19 = tail call ptr @strstr(ptr noundef %18, ptr noundef nonnull @.str.18) #7
  %20 = icmp eq ptr %19, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.dwc3_meson_g12a_drvdata, ptr %9, i32 0, i32 7
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 %23(ptr noundef %0, i32 noundef %10, i32 noundef %1) #7
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %61

26:                                               ; preds = %21
  %27 = load ptr, ptr %3, align 4
  br label %28

28:                                               ; preds = %26, %14, %8
  %29 = phi ptr [ %27, %26 ], [ %9, %14 ], [ %9, %8 ]
  %30 = add nuw nsw i32 %10, 1
  %31 = getelementptr inbounds %struct.dwc3_meson_g12a_drvdata, ptr %29, i32 0, i32 5
  %32 = load i32, ptr %31, align 4
  %33 = icmp slt i32 %30, %32
  br i1 %33, label %8, label %34

34:                                               ; preds = %28, %2
  %35 = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %0, i32 0, i32 2
  %36 = load ptr, ptr %35, align 4
  %37 = tail call i32 @regmap_update_bits_base(ptr noundef %36, i32 noundef 4, i32 noundef 33030144, i32 noundef 16777216, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %38 = load ptr, ptr %35, align 4
  %39 = tail call i32 @regmap_update_bits_base(ptr noundef %38, i32 noundef 20, i32 noundef 16, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %40 = load ptr, ptr %35, align 4
  %41 = tail call i32 @regmap_update_bits_base(ptr noundef %40, i32 noundef 20, i32 noundef 32, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %42 = load ptr, ptr %35, align 4
  %43 = tail call i32 @regmap_update_bits_base(ptr noundef %42, i32 noundef 20, i32 noundef 65280, i32 noundef 65280, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %44 = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %0, i32 0, i32 8
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %60, label %47

47:                                               ; preds = %34
  %48 = load ptr, ptr %35, align 4
  %49 = tail call i32 @regmap_update_bits_base(ptr noundef %48, i32 noundef 12, i32 noundef 8206, i32 noundef 8197, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %50(i32 noundef 429496) #7
  %51 = load ptr, ptr %35, align 4
  %52 = tail call i32 @regmap_update_bits_base(ptr noundef %51, i32 noundef 8, i32 noundef 66060288, i32 noundef 22020096, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %53 = load ptr, ptr %35, align 4
  %54 = tail call i32 @regmap_update_bits_base(ptr noundef %53, i32 noundef 8, i32 noundef -67108864, i32 noundef -2147483648, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %55(i32 noundef 429496) #7
  %56 = load ptr, ptr %35, align 4
  %57 = tail call i32 @regmap_update_bits_base(ptr noundef %56, i32 noundef 4, i32 noundef 131072, i32 noundef 131072, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %58 = load ptr, ptr %35, align 4
  %59 = tail call i32 @regmap_update_bits_base(ptr noundef %58, i32 noundef 4, i32 noundef -33554432, i32 noundef -33554432, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %60

60:                                               ; preds = %47, %34
  tail call fastcc void @dwc3_meson_g12a_usb_otg_apply_mode(ptr noundef %0, i32 noundef %1)
  br label %61

61:                                               ; preds = %60, %21
  %62 = phi i32 [ 0, %60 ], [ %24, %21 ]
  ret i32 %62
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc3_meson_g12a_usb_init(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %0, i32 0, i32 6
  %3 = load i32, ptr %2, align 4
  %4 = tail call fastcc i32 @dwc3_meson_g12a_usb_init_glue(ptr noundef %0, i32 noundef %3)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc3_meson_g12a_setup_regmaps(ptr nocapture noundef %0, ptr noundef %1) #2 {
  %3 = alloca %struct.regmap_config, align 4
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr i8, ptr %1, i32 128
  %6 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %4, ptr noundef null, ptr noundef %5, ptr noundef nonnull @phy_meson_g12a_usb_glue_regmap_conf, ptr noundef null, ptr noundef null) #7
  %7 = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %0, i32 0, i32 2
  store ptr %6, ptr %7, align 4
  %8 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %20, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %0, i32 0, i32 12
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.dwc3_meson_g12a_drvdata, ptr %11, i32 0, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %54

15:                                               ; preds = %9
  %16 = getelementptr inbounds { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, [3 x i8], i32, i32, ptr, i32, i8, i8, [2 x i8], i32, i32, i8, [3 x i8] }, ptr %3, i32 0, i32 1
  %17 = getelementptr inbounds { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, [3 x i8], i32, i32, ptr, i32, i8, i8, [2 x i8], i32, i32, i8, [3 x i8] }, ptr %3, i32 0, i32 2
  %18 = getelementptr inbounds { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, [3 x i8], i32, i32, ptr, i32, i8, i8, [2 x i8], i32, i32, i8, [3 x i8] }, ptr %3, i32 0, i32 4
  %19 = getelementptr inbounds { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, [3 x i8], i32, i32, ptr, i32, i8, i8, [2 x i8], i32, i32, i8, [3 x i8] }, ptr %3, i32 0, i32 21
  br label %22

20:                                               ; preds = %2
  %21 = ptrtoint ptr %6 to i32
  br label %54

22:                                               ; preds = %48, %15
  %23 = phi ptr [ %11, %15 ], [ %49, %48 ]
  %24 = phi i32 [ 0, %15 ], [ %50, %48 ]
  call void @llvm.lifetime.start.p0(i64 172, ptr nonnull %3) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(172) %3, i8 0, i32 172, i1 false)
  store i32 8, ptr %16, align 4
  store i32 4, ptr %17, align 4
  store i32 32, ptr %18, align 4
  store i32 4, ptr %19, align 4
  %25 = getelementptr inbounds %struct.dwc3_meson_g12a_drvdata, ptr %23, i32 0, i32 4
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr ptr, ptr %26, i32 %24
  %28 = load ptr, ptr %27, align 4
  %29 = call ptr @strstr(ptr noundef %28, ptr noundef nonnull @.str.18)
  %30 = icmp eq ptr %29, null
  br i1 %30, label %48, label %31

31:                                               ; preds = %22
  %32 = load ptr, ptr %0, align 4
  %33 = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %32, i32 noundef 3264, ptr noundef nonnull @.str.21, i32 noundef %24) #7
  store ptr %33, ptr %3, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %46, label %35

35:                                               ; preds = %31
  %36 = load ptr, ptr %0, align 4
  %37 = shl i32 %24, 5
  %38 = getelementptr i8, ptr %1, i32 %37
  %39 = call ptr @__devm_regmap_init_mmio_clk(ptr noundef %36, ptr noundef null, ptr noundef %38, ptr noundef nonnull %3, ptr noundef null, ptr noundef null) #7
  %40 = getelementptr %struct.dwc3_meson_g12a, ptr %0, i32 0, i32 1, i32 %24
  store ptr %39, ptr %40, align 4
  %41 = icmp ugt ptr %39, inttoptr (i32 -4096 to ptr)
  br i1 %41, label %44, label %42

42:                                               ; preds = %35
  %43 = load ptr, ptr %10, align 4
  br label %48

44:                                               ; preds = %35
  %45 = ptrtoint ptr %39 to i32
  br label %46

46:                                               ; preds = %44, %31
  %47 = phi i32 [ %45, %44 ], [ -12, %31 ]
  call void @llvm.lifetime.end.p0(i64 172, ptr nonnull %3) #7
  br label %54

48:                                               ; preds = %42, %22
  %49 = phi ptr [ %43, %42 ], [ %23, %22 ]
  call void @llvm.lifetime.end.p0(i64 172, ptr nonnull %3) #7
  %50 = add nuw nsw i32 %24, 1
  %51 = getelementptr inbounds %struct.dwc3_meson_g12a_drvdata, ptr %49, i32 0, i32 5
  %52 = load i32, ptr %51, align 4
  %53 = icmp slt i32 %50, %52
  br i1 %53, label %22, label %54

54:                                               ; preds = %48, %46, %20, %9
  %55 = phi i32 [ %21, %20 ], [ %47, %46 ], [ 0, %9 ], [ 0, %48 ]
  ret i32 %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc3_meson_g12a_usb2_init_phy(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr %struct.dwc3_meson_g12a, ptr %0, i32 0, i32 1, i32 %1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 0, i32 noundef 8, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %7 = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %0, i32 0, i32 12
  %8 = load ptr, ptr %7, align 4
  %9 = load i8, ptr %8, align 4, !range !8
  %10 = icmp ne i8 %9, 0
  %11 = icmp eq i32 %1, 1
  %12 = and i1 %11, %10
  br i1 %12, label %13, label %20

13:                                               ; preds = %3
  %14 = load ptr, ptr %4, align 4
  %15 = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 0, i32 noundef 48, i32 noundef 48, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %16 = load ptr, ptr %7, align 4
  %17 = getelementptr inbounds %struct.dwc3_meson_g12a_drvdata, ptr %16, i32 0, i32 8
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 %18(ptr noundef %0, i32 noundef 1, i32 noundef %2) #7
  br label %24

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.dwc3_meson_g12a_drvdata, ptr %8, i32 0, i32 8
  %22 = load ptr, ptr %21, align 4
  %23 = tail call i32 %22(ptr noundef %0, i32 noundef %1, i32 noundef 1) #7
  br label %24

24:                                               ; preds = %20, %13
  %25 = phi i32 [ %19, %13 ], [ %23, %20 ]
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load ptr, ptr %4, align 4
  %29 = tail call i32 @regmap_update_bits_base(ptr noundef %28, i32 noundef 0, i32 noundef 8, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %30

30:                                               ; preds = %27, %24
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc3_meson_g12a_set_phy_mode(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = icmp eq i32 %2, 1
  %5 = getelementptr %struct.dwc3_meson_g12a, ptr %0, i32 0, i32 1, i32 %1
  %6 = load ptr, ptr %5, align 4
  %7 = zext i1 %4 to i32
  %8 = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 0, i32 noundef 1, i32 noundef %7, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc3_meson_g12a_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %3, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %3, i32 0, i32 6
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = tail call i32 @regulator_disable(ptr noundef nonnull %5) #7
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %33

14:                                               ; preds = %11, %7, %1
  %15 = getelementptr %struct.dwc3_meson_g12a, ptr %3, i32 0, i32 4, i32 0
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 @phy_power_off(ptr noundef %16) #7
  %18 = load ptr, ptr %15, align 4
  %19 = tail call i32 @phy_exit(ptr noundef %18) #7
  %20 = getelementptr %struct.dwc3_meson_g12a, ptr %3, i32 0, i32 4, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 @phy_power_off(ptr noundef %21) #7
  %23 = load ptr, ptr %20, align 4
  %24 = tail call i32 @phy_exit(ptr noundef %23) #7
  %25 = getelementptr %struct.dwc3_meson_g12a, ptr %3, i32 0, i32 4, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = tail call i32 @phy_power_off(ptr noundef %26) #7
  %28 = load ptr, ptr %25, align 4
  %29 = tail call i32 @phy_exit(ptr noundef %28) #7
  %30 = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %3, i32 0, i32 3
  %31 = load ptr, ptr %30, align 4
  %32 = tail call i32 @reset_control_rearm(ptr noundef %31) #7
  br label %33

33:                                               ; preds = %14, %11
  %34 = phi i32 [ 0, %14 ], [ %12, %11 ]
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc3_meson_g12a_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @reset_control_reset(ptr noundef %5) #7
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %54

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %3, i32 0, i32 12
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.dwc3_meson_g12a_drvdata, ptr %10, i32 0, i32 9
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 %12(ptr noundef %3) #7
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %54

15:                                               ; preds = %8
  %16 = getelementptr %struct.dwc3_meson_g12a, ptr %3, i32 0, i32 4, i32 0
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 @phy_init(ptr noundef %17) #7
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %54

20:                                               ; preds = %15
  %21 = getelementptr %struct.dwc3_meson_g12a, ptr %3, i32 0, i32 4, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = tail call i32 @phy_init(ptr noundef %22) #7
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %54

25:                                               ; preds = %20
  %26 = getelementptr %struct.dwc3_meson_g12a, ptr %3, i32 0, i32 4, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = tail call i32 @phy_init(ptr noundef %27) #7
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %54

30:                                               ; preds = %25
  %31 = load ptr, ptr %16, align 4
  %32 = tail call i32 @phy_power_on(ptr noundef %31) #7
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %54

34:                                               ; preds = %30
  %35 = load ptr, ptr %21, align 4
  %36 = tail call i32 @phy_power_on(ptr noundef %35) #7
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %54

38:                                               ; preds = %34
  %39 = load ptr, ptr %26, align 4
  %40 = tail call i32 @phy_power_on(ptr noundef %39) #7
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %3, i32 0, i32 9
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %53, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %3, i32 0, i32 6
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = tail call i32 @regulator_enable(ptr noundef nonnull %44) #7
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %50, %46, %42
  br label %54

54:                                               ; preds = %53, %50, %38, %34, %30, %25, %20, %15, %8, %1
  %55 = phi i32 [ 0, %53 ], [ %6, %1 ], [ %13, %8 ], [ %51, %50 ], [ %32, %30 ], [ %36, %34 ], [ %40, %38 ], [ %18, %15 ], [ %23, %20 ], [ %28, %25 ]
  ret i32 %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc3_meson_g12a_runtime_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %3, i32 0, i32 12
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dwc3_meson_g12a_drvdata, ptr %5, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dwc3_meson_g12a_drvdata, ptr %5, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  tail call void @clk_bulk_disable(i32 noundef %7, ptr noundef %9) #7
  tail call void @clk_bulk_unprepare(i32 noundef %7, ptr noundef %9) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc3_meson_g12a_runtime_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.dwc3_meson_g12a, ptr %3, i32 0, i32 12
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dwc3_meson_g12a_drvdata, ptr %5, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dwc3_meson_g12a_drvdata, ptr %5, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @clk_bulk_prepare(i32 noundef %7, ptr noundef %9) #7
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = tail call i32 @clk_bulk_enable(i32 noundef %7, ptr noundef %9) #7
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  tail call void @clk_bulk_unprepare(i32 noundef %7, ptr noundef %9) #7
  br label %16

16:                                               ; preds = %15, %12, %1
  %17 = phi i32 [ %10, %1 ], [ %13, %15 ], [ 0, %12 ]
  ret i32 %17
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

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
!9 = !{i64 2148067027}
!10 = !{i64 566134, i64 2148056105, i64 2148056131, i64 2148056178, i64 2148056200, i64 2148056228, i64 2148056248}
!11 = !{i64 552703, i64 552728, i64 552750, i64 552766, i64 552778, i64 552798, i64 552822, i64 552838, i64 552850}
!12 = !{i64 2148067153}
!13 = !{!"auto-init"}
