; ModuleID = '/llk/IR/drivers/phy/ti/phy-ti-pipe3.c_pt.bc'
source_filename = "../drivers/phy/ti/phy-ti-pipe3.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pipe3_data = type { i32, ptr, %struct.pipe3_settings }
%struct.pipe3_settings = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.pipe3_dpll_map = type { i32, %struct.pipe3_dpll_params }
%struct.pipe3_dpll_params = type { i16, i8, i8, i8, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
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
%struct.ti_pipe3 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, i32, %struct.pipe3_settings }

@__initcall__kmod_phy_ti_pipe3__248_937_ti_pipe3_driver_init6 = internal global ptr @ti_pipe3_driver_init, section ".initcall6.init", align 4
@ti_pipe3_driver = internal global %struct.platform_driver { ptr @ti_pipe3_probe, ptr @ti_pipe3_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ti_pipe3_id_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_ti_pipe3_driver_exit = internal global ptr @ti_pipe3_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias249 = internal constant [37 x i8] c"phy_ti_pipe3.alias=platform:ti_pipe3\00", section ".modinfo", align 1
@__UNIQUE_ID_author250 = internal constant [43 x i8] c"phy_ti_pipe3.author=Texas Instruments Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_description251 = internal constant [45 x i8] c"phy_ti_pipe3.description=TI PIPE3 phy driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file252 = internal constant [46 x i8] c"phy_ti_pipe3.file=drivers/phy/ti/phy-ti-pipe3\00", section ".modinfo", align 1
@__UNIQUE_ID_license253 = internal constant [28 x i8] c"phy_ti_pipe3.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [9 x i8] c"ti-pipe3\00", align 1
@ti_pipe3_id_table = internal constant [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,phy-usb3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @data_usb }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap-usb3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @data_usb }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,phy-pipe3-sata\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @data_sata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,phy-pipe3-pcie\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @data_pcie }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"no driver data\0A\00", align 1
@ops = internal constant %struct.phy_ops { ptr @ti_pipe3_init, ptr @ti_pipe3_exit, ptr @ti_pipe3_power_on, ptr @ti_pipe3_power_off, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"pll_ctrl\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"phy_rx\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"phy_tx\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"syscon-phy-power\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"couldn't get power reg. offset\0A\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"ctrl-module\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"Failed to get control device phandle\0A\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"Failed to get control device\0A\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"syscon-pcs\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"couldn't get pcie pcs reg. offset\0A\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"syscon-pllreset\00", align 1
@.str.13 = private unnamed_addr constant [49 x i8] c"can't get syscon-pllreset, sata dpll won't idle\0A\00", align 1
@.str.14 = private unnamed_addr constant [35 x i8] c"couldn't get pllreset reg. offset\0A\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"refclk\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"unable to get refclk\0A\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"wkupclk\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"unable to get wkupclk\0A\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"sysclk\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"unable to get sysclk\0A\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"dpll_ref\00", align 1
@.str.22 = private unnamed_addr constant [28 x i8] c"unable to get dpll ref clk\0A\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"dpll_ref_m2\00", align 1
@.str.24 = private unnamed_addr constant [31 x i8] c"unable to get dpll ref m2 clk\0A\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"phy-div\00", align 1
@.str.26 = private unnamed_addr constant [27 x i8] c"unable to get phy-div clk\0A\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"div-clk\00", align 1
@.str.28 = private unnamed_addr constant [23 x i8] c"unable to get div-clk\0A\00", align 1
@.str.29 = private unnamed_addr constant [28 x i8] c"Failed to enable refclk %d\0A\00", align 1
@.str.30 = private unnamed_addr constant [29 x i8] c"Failed to enable wkupclk %d\0A\00", align 1
@.str.31 = private unnamed_addr constant [29 x i8] c"Failed to enable div_clk %d\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.32 = private unnamed_addr constant [21 x i8] c"DPLL failed to lock\0A\00", align 1
@.str.33 = private unnamed_addr constant [42 x i8] c"No DPLL configuration for %lu Hz SYS CLK\0A\00", align 1
@.str.34 = private unnamed_addr constant [39 x i8] c"Failed to power down: PLL_STATUS 0x%x\0A\00", align 1
@.str.35 = private unnamed_addr constant [20 x i8] c"Invalid clock rate\0A\00", align 1
@data_usb = internal global %struct.pipe3_data { i32 3, ptr @dpll_map_usb, %struct.pipe3_settings { i8 16, i8 10, i8 1, i8 3, i8 0, i8 3, i8 1, i8 1, i8 0, i8 0, i8 1, i8 2, i8 3, i8 0, i8 0, i8 9, i8 0, i8 0 } }, align 4
@data_sata = internal global %struct.pipe3_data { i32 2, ptr @dpll_map_sata, %struct.pipe3_settings { i8 4, i8 5, i8 1, i8 3, i8 0, i8 3, i8 1, i8 1, i8 0, i8 0, i8 0, i8 1, i8 2, i8 0, i8 31, i8 0, i8 1, i8 1 } }, align 4
@data_pcie = internal global %struct.pipe3_data { i32 1, ptr null, %struct.pipe3_settings { i8 1, i8 10, i8 1, i8 3, i8 0, i8 3, i8 1, i8 1, i8 0, i8 0, i8 0, i8 2, i8 3, i8 0, i8 31, i8 1, i8 0, i8 0 } }, align 4
@dpll_map_usb = internal global [7 x %struct.pipe3_dpll_map] [%struct.pipe3_dpll_map { i32 12000000, %struct.pipe3_dpll_params { i16 1250, i8 5, i8 4, i8 20, i32 0 } }, %struct.pipe3_dpll_map { i32 16800000, %struct.pipe3_dpll_params { i16 3125, i8 20, i8 4, i8 20, i32 0 } }, %struct.pipe3_dpll_map { i32 19200000, %struct.pipe3_dpll_params { i16 1172, i8 8, i8 4, i8 20, i32 65537 } }, %struct.pipe3_dpll_map { i32 20000000, %struct.pipe3_dpll_params { i16 1000, i8 7, i8 4, i8 10, i32 0 } }, %struct.pipe3_dpll_map { i32 26000000, %struct.pipe3_dpll_params { i16 1250, i8 12, i8 4, i8 20, i32 0 } }, %struct.pipe3_dpll_map { i32 38400000, %struct.pipe3_dpll_params { i16 3125, i8 47, i8 4, i8 20, i32 92843 } }, %struct.pipe3_dpll_map zeroinitializer], align 4
@dpll_map_sata = internal global [7 x %struct.pipe3_dpll_map] [%struct.pipe3_dpll_map { i32 12000000, %struct.pipe3_dpll_params { i16 625, i8 4, i8 4, i8 6, i32 0 } }, %struct.pipe3_dpll_map { i32 16800000, %struct.pipe3_dpll_params { i16 625, i8 6, i8 4, i8 7, i32 0 } }, %struct.pipe3_dpll_map { i32 19200000, %struct.pipe3_dpll_params { i16 625, i8 7, i8 4, i8 6, i32 0 } }, %struct.pipe3_dpll_map { i32 20000000, %struct.pipe3_dpll_params { i16 750, i8 9, i8 4, i8 6, i32 0 } }, %struct.pipe3_dpll_map { i32 26000000, %struct.pipe3_dpll_params { i16 750, i8 12, i8 4, i8 6, i32 0 } }, %struct.pipe3_dpll_map { i32 38400000, %struct.pipe3_dpll_params { i16 625, i8 15, i8 4, i8 6, i32 0 } }, %struct.pipe3_dpll_map zeroinitializer], align 4
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias249, ptr @__UNIQUE_ID_author250, ptr @__UNIQUE_ID_description251, ptr @__UNIQUE_ID_file252, ptr @__UNIQUE_ID_license253, ptr @__exitcall_ti_pipe3_driver_exit, ptr @__initcall__kmod_phy_ti_pipe3__248_937_ti_pipe3_driver_init6, ptr @ti_pipe3_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @ti_pipe3_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @ti_pipe3_driver, ptr noundef null) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @ti_pipe3_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @ti_pipe3_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ti_pipe3_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.of_phandle_args, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 92, i32 noundef 3520) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %123, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @of_match_device(ptr noundef nonnull @ti_pipe3_id_table, ptr noundef %3) #8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %123, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.of_device_id, ptr %7, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.1) #9
  br label %123

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.ti_pipe3, ptr %4, i32 0, i32 3
  store ptr %3, ptr %15, align 4
  %16 = load i32, ptr %11, align 4
  %17 = getelementptr inbounds %struct.ti_pipe3, ptr %4, i32 0, i32 17
  store i32 %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.pipe3_data, ptr %11, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.ti_pipe3, ptr %4, i32 0, i32 9
  store ptr %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.ti_pipe3, ptr %4, i32 0, i32 18
  %22 = getelementptr inbounds %struct.pipe3_data, ptr %11, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(18) %21, ptr noundef align 4 dereferenceable(18) %22, i32 18, i1 false)
  %23 = icmp eq i32 %16, 1
  br i1 %23, label %28, label %24

24:                                               ; preds = %14
  %25 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %0, ptr noundef nonnull @.str.2) #8
  store ptr %25, ptr %4, align 4
  %26 = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  %27 = ptrtoint ptr %25 to i32
  br i1 %26, label %123, label %28

28:                                               ; preds = %24, %14
  %29 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %0, ptr noundef nonnull @.str.3) #8
  %30 = getelementptr inbounds %struct.ti_pipe3, ptr %4, i32 0, i32 1
  store ptr %29, ptr %30, align 4
  %31 = icmp ugt ptr %29, inttoptr (i32 -4096 to ptr)
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %0, ptr noundef nonnull @.str.4) #8
  %34 = getelementptr inbounds %struct.ti_pipe3, ptr %4, i32 0, i32 2
  store ptr %33, ptr %34, align 4
  %35 = icmp ugt ptr %33, inttoptr (i32 -4096 to ptr)
  br i1 %35, label %36, label %40

36:                                               ; preds = %32, %28
  %37 = phi ptr [ %33, %32 ], [ %29, %28 ]
  %38 = ptrtoint ptr %37 to i32
  %39 = icmp eq ptr %37, null
  br i1 %39, label %40, label %123

40:                                               ; preds = %36, %32
  %41 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %42 = load ptr, ptr %41, align 8
  %43 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %42, ptr noundef nonnull @.str.5) #8
  %44 = getelementptr inbounds %struct.ti_pipe3, ptr %4, i32 0, i32 10
  store ptr %43, ptr %44, align 4
  %45 = icmp ugt ptr %43, inttoptr (i32 -4096 to ptr)
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  store ptr null, ptr %44, align 4
  br label %55

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct.ti_pipe3, ptr %4, i32 0, i32 14
  %49 = tail call i32 @of_property_read_u32_index(ptr noundef %42, ptr noundef nonnull @.str.5, i32 noundef 1, ptr noundef %48) #8
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %47
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.6) #9
  br label %123

52:                                               ; preds = %47
  %53 = load ptr, ptr %44, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %69

55:                                               ; preds = %52, %46
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %2, i8 0, i32 72, i1 false) #8, !annotation !8
  %56 = call i32 @__of_parse_phandle_with_args(ptr noundef %42, ptr noundef nonnull @.str.7, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %2) #8
  %57 = icmp ne i32 %56, 0
  %58 = load ptr, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #8
  %59 = icmp eq ptr %58, null
  %60 = select i1 %57, i1 true, i1 %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.8) #9
  br label %123

62:                                               ; preds = %55
  %63 = call ptr @of_find_device_by_node(ptr noundef nonnull %58) #8
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.9) #9
  br label %123

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.platform_device, ptr %63, i32 0, i32 3
  %68 = getelementptr inbounds %struct.ti_pipe3, ptr %4, i32 0, i32 4
  store ptr %67, ptr %68, align 4
  br label %69

69:                                               ; preds = %66, %52
  %70 = load i32, ptr %17, align 4
  %71 = icmp eq i32 %70, 1
  br i1 %71, label %72, label %84

72:                                               ; preds = %69
  %73 = call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %42, ptr noundef nonnull @.str.10) #8
  %74 = getelementptr inbounds %struct.ti_pipe3, ptr %4, i32 0, i32 11
  store ptr %73, ptr %74, align 4
  %75 = icmp ugt ptr %73, inttoptr (i32 -4096 to ptr)
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  store ptr null, ptr %74, align 4
  br label %82

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct.ti_pipe3, ptr %4, i32 0, i32 15
  %79 = call i32 @of_property_read_u32_index(ptr noundef %42, ptr noundef nonnull @.str.10, i32 noundef 1, ptr noundef %78) #8
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %77
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.11) #9
  br label %123

82:                                               ; preds = %77, %76
  %83 = load i32, ptr %17, align 4
  br label %84

84:                                               ; preds = %82, %69
  %85 = phi i32 [ %83, %82 ], [ %70, %69 ]
  %86 = icmp eq i32 %85, 2
  br i1 %86, label %87, label %97

87:                                               ; preds = %84
  %88 = call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %42, ptr noundef nonnull @.str.12) #8
  %89 = getelementptr inbounds %struct.ti_pipe3, ptr %4, i32 0, i32 12
  store ptr %88, ptr %89, align 4
  %90 = icmp ugt ptr %88, inttoptr (i32 -4096 to ptr)
  br i1 %90, label %91, label %92

91:                                               ; preds = %87
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.13) #9
  store ptr null, ptr %89, align 4
  br label %97

92:                                               ; preds = %87
  %93 = getelementptr inbounds %struct.ti_pipe3, ptr %4, i32 0, i32 13
  %94 = call i32 @of_property_read_u32_index(ptr noundef %42, ptr noundef nonnull @.str.12, i32 noundef 1, ptr noundef %93) #8
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %92
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.14) #9
  br label %123

97:                                               ; preds = %92, %91, %84
  %98 = call fastcc i32 @ti_pipe3_get_clk(ptr noundef nonnull %4)
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %123

100:                                              ; preds = %97
  %101 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %4, ptr %101, align 8
  call void @pm_runtime_enable(ptr noundef %3) #8
  %102 = load i32, ptr %17, align 4
  %103 = icmp eq i32 %102, 2
  br i1 %103, label %104, label %111

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.ti_pipe3, ptr %4, i32 0, i32 7
  %106 = load ptr, ptr %105, align 4
  %107 = icmp ugt ptr %106, inttoptr (i32 -4096 to ptr)
  br i1 %107, label %111, label %108

108:                                              ; preds = %104
  %109 = call fastcc i32 @clk_prepare_enable(ptr noundef %106)
  %110 = getelementptr inbounds %struct.ti_pipe3, ptr %4, i32 0, i32 16
  store i8 1, ptr %110, align 4
  br label %111

111:                                              ; preds = %108, %104, %100
  %112 = call ptr @devm_phy_create(ptr noundef %3, ptr noundef null, ptr noundef nonnull @ops) #8
  %113 = icmp ugt ptr %112, inttoptr (i32 -4096 to ptr)
  br i1 %113, label %114, label %116

114:                                              ; preds = %111
  %115 = ptrtoint ptr %112 to i32
  br label %123

116:                                              ; preds = %111
  %117 = getelementptr inbounds %struct.device, ptr %112, i32 0, i32 8
  store ptr %4, ptr %117, align 8
  %118 = call i32 @ti_pipe3_power_off(ptr noundef %112)
  %119 = call ptr @__devm_of_phy_provider_register(ptr noundef %3, ptr noundef null, ptr noundef null, ptr noundef nonnull @of_phy_simple_xlate) #8
  %120 = icmp ugt ptr %119, inttoptr (i32 -4096 to ptr)
  %121 = ptrtoint ptr %119 to i32
  %122 = select i1 %120, i32 %121, i32 0
  br label %123

123:                                              ; preds = %116, %114, %97, %96, %81, %65, %61, %51, %36, %24, %13, %6, %1
  %124 = phi i32 [ %115, %114 ], [ %122, %116 ], [ -22, %13 ], [ -12, %1 ], [ -22, %6 ], [ %38, %36 ], [ %98, %97 ], [ -22, %96 ], [ -22, %81 ], [ -22, %65 ], [ -22, %61 ], [ -22, %51 ], [ %27, %24 ]
  ret i32 %124
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ti_pipe3_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.ti_pipe3, ptr %3, i32 0, i32 17
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 2
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ti_pipe3, ptr %3, i32 0, i32 7
  %9 = load ptr, ptr %8, align 4
  tail call void @clk_disable(ptr noundef %9) #8
  tail call void @clk_unprepare(ptr noundef %9) #8
  %10 = getelementptr inbounds %struct.ti_pipe3, ptr %3, i32 0, i32 16
  store i8 0, ptr %10, align 4
  br label %11

11:                                               ; preds = %7, %1
  %12 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %12, i1 noundef zeroext true) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ti_pipe3_get_clk(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.ti_pipe3, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.15) #8
  %5 = getelementptr inbounds %struct.ti_pipe3, ptr %0, i32 0, i32 7
  store ptr %4, ptr %5, align 4
  %6 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %7, label %16

7:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.16) #9
  %8 = getelementptr inbounds %struct.ti_pipe3, ptr %0, i32 0, i32 17
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.ti_pipe3, ptr %0, i32 0, i32 17
  br label %28

13:                                               ; preds = %7
  %14 = load ptr, ptr %5, align 4
  %15 = ptrtoint ptr %14 to i32
  br label %74

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.ti_pipe3, ptr %0, i32 0, i32 17
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 2
  %20 = getelementptr inbounds %struct.ti_pipe3, ptr %0, i32 0, i32 17
  br i1 %19, label %28, label %21

21:                                               ; preds = %16
  %22 = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.17) #8
  %23 = getelementptr inbounds %struct.ti_pipe3, ptr %0, i32 0, i32 5
  store ptr %22, ptr %23, align 4
  %24 = icmp ugt ptr %22, inttoptr (i32 -4096 to ptr)
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.18) #9
  %26 = load ptr, ptr %23, align 4
  %27 = ptrtoint ptr %26 to i32
  br label %74

28:                                               ; preds = %16, %11
  %29 = phi ptr [ %12, %11 ], [ %20, %16 ]
  %30 = getelementptr inbounds %struct.ti_pipe3, ptr %0, i32 0, i32 5
  store ptr inttoptr (i32 -19 to ptr), ptr %30, align 4
  br label %38

31:                                               ; preds = %21
  %32 = load i32, ptr %20, align 4
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.ti_pipe3, ptr %0, i32 0, i32 10
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %47, label %38

38:                                               ; preds = %34, %31, %28
  %39 = phi ptr [ %29, %28 ], [ %20, %34 ], [ %20, %31 ]
  %40 = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.19) #8
  %41 = getelementptr inbounds %struct.ti_pipe3, ptr %0, i32 0, i32 6
  store ptr %40, ptr %41, align 4
  %42 = icmp ugt ptr %40, inttoptr (i32 -4096 to ptr)
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.20) #9
  br label %74

44:                                               ; preds = %38
  %45 = load i32, ptr %39, align 4
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %47, label %72

47:                                               ; preds = %44, %34
  %48 = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.21) #8
  %49 = icmp ugt ptr %48, inttoptr (i32 -4096 to ptr)
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.22) #9
  %51 = ptrtoint ptr %48 to i32
  br label %74

52:                                               ; preds = %47
  %53 = tail call i32 @clk_set_rate(ptr noundef %48, i32 noundef 1500000000) #8
  %54 = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.23) #8
  %55 = icmp ugt ptr %54, inttoptr (i32 -4096 to ptr)
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.24) #9
  %57 = ptrtoint ptr %54 to i32
  br label %74

58:                                               ; preds = %52
  %59 = tail call i32 @clk_set_rate(ptr noundef %54, i32 noundef 100000000) #8
  %60 = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.25) #8
  %61 = icmp ugt ptr %60, inttoptr (i32 -4096 to ptr)
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.26) #9
  %63 = ptrtoint ptr %60 to i32
  br label %74

64:                                               ; preds = %58
  %65 = tail call i32 @clk_set_rate(ptr noundef %60, i32 noundef 100000000) #8
  %66 = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.27) #8
  %67 = getelementptr inbounds %struct.ti_pipe3, ptr %0, i32 0, i32 8
  store ptr %66, ptr %67, align 4
  %68 = icmp ugt ptr %66, inttoptr (i32 -4096 to ptr)
  br i1 %68, label %69, label %74

69:                                               ; preds = %64
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.28) #9
  %70 = load ptr, ptr %67, align 4
  %71 = ptrtoint ptr %70 to i32
  br label %74

72:                                               ; preds = %44
  %73 = getelementptr inbounds %struct.ti_pipe3, ptr %0, i32 0, i32 8
  store ptr inttoptr (i32 -19 to ptr), ptr %73, align 4
  br label %74

74:                                               ; preds = %72, %69, %64, %62, %56, %50, %43, %25, %13
  %75 = phi i32 [ %15, %13 ], [ %27, %25 ], [ -22, %43 ], [ %51, %50 ], [ %57, %56 ], [ %63, %62 ], [ %71, %69 ], [ 0, %64 ], [ 0, %72 ]
  ret i32 %75
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %0) unnamed_addr #6 {
  %2 = tail call i32 @clk_prepare(ptr noundef %0) #8
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = tail call i32 @clk_enable(ptr noundef %0) #8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @clk_unprepare(ptr noundef %0) #8
  br label %8

8:                                                ; preds = %7, %4, %1
  %9 = phi i32 [ %2, %1 ], [ %5, %7 ], [ 0, %4 ]
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ti_pipe3_power_off(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.ti_pipe3, ptr %3, i32 0, i32 10
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ti_pipe3, ptr %3, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  tail call void @omap_control_phy_power(ptr noundef %9, i32 noundef 0) #8
  br label %14

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.ti_pipe3, ptr %3, i32 0, i32 14
  %12 = load i32, ptr %11, align 4
  %13 = tail call i32 @regmap_update_bits_base(ptr noundef nonnull %5, i32 noundef %12, i32 noundef 4177920, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %14

14:                                               ; preds = %10, %7
  %15 = phi i32 [ %13, %10 ], [ 0, %7 ]
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_of_phy_provider_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_simple_xlate(ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ti_pipe3_init(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.ti_pipe3, ptr %3, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %18, label %7

7:                                                ; preds = %1
  %8 = tail call i32 @clk_prepare(ptr noundef %5) #8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %7
  %11 = tail call i32 @clk_enable(ptr noundef %5) #8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %10
  tail call void @clk_unprepare(ptr noundef %5) #8
  br label %14

14:                                               ; preds = %13, %7
  %15 = phi i32 [ %11, %13 ], [ %8, %7 ]
  %16 = getelementptr inbounds %struct.ti_pipe3, ptr %3, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.29, i32 noundef %15) #9
  br label %55

18:                                               ; preds = %10, %1
  %19 = getelementptr inbounds %struct.ti_pipe3, ptr %3, i32 0, i32 5
  %20 = load ptr, ptr %19, align 4
  %21 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %21, label %33, label %22

22:                                               ; preds = %18
  %23 = tail call i32 @clk_prepare(ptr noundef %20) #8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = tail call i32 @clk_enable(ptr noundef %20) #8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %25
  tail call void @clk_unprepare(ptr noundef %20) #8
  br label %29

29:                                               ; preds = %28, %22
  %30 = phi i32 [ %26, %28 ], [ %23, %22 ]
  %31 = getelementptr inbounds %struct.ti_pipe3, ptr %3, i32 0, i32 3
  %32 = load ptr, ptr %31, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.30, i32 noundef %30) #9
  br label %51

33:                                               ; preds = %25, %18
  %34 = getelementptr inbounds %struct.ti_pipe3, ptr %3, i32 0, i32 8
  %35 = load ptr, ptr %34, align 4
  %36 = icmp ugt ptr %35, inttoptr (i32 -4096 to ptr)
  br i1 %36, label %55, label %37

37:                                               ; preds = %33
  %38 = tail call i32 @clk_prepare(ptr noundef %35) #8
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = tail call i32 @clk_enable(ptr noundef %35) #8
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %55, label %43

43:                                               ; preds = %40
  tail call void @clk_unprepare(ptr noundef %35) #8
  br label %44

44:                                               ; preds = %43, %37
  %45 = phi i32 [ %41, %43 ], [ %38, %37 ]
  %46 = getelementptr inbounds %struct.ti_pipe3, ptr %3, i32 0, i32 3
  %47 = load ptr, ptr %46, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.31, i32 noundef %45) #9
  %48 = load ptr, ptr %19, align 4
  %49 = icmp ugt ptr %48, inttoptr (i32 -4096 to ptr)
  br i1 %49, label %51, label %50

50:                                               ; preds = %44
  tail call void @clk_disable(ptr noundef %48) #8
  tail call void @clk_unprepare(ptr noundef %48) #8
  br label %51

51:                                               ; preds = %50, %44, %29
  %52 = load ptr, ptr %4, align 4
  %53 = icmp ugt ptr %52, inttoptr (i32 -4096 to ptr)
  br i1 %53, label %55, label %54

54:                                               ; preds = %51
  tail call void @clk_disable(ptr noundef %52) #8
  tail call void @clk_unprepare(ptr noundef %52) #8
  br label %55

55:                                               ; preds = %54, %51, %40, %33, %14
  %56 = getelementptr inbounds %struct.ti_pipe3, ptr %3, i32 0, i32 17
  %57 = load i32, ptr %56, align 4
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %59, label %70

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.ti_pipe3, ptr %3, i32 0, i32 11
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.ti_pipe3, ptr %3, i32 0, i32 4
  %65 = load ptr, ptr %64, align 4
  tail call void @omap_control_pcie_pcs(ptr noundef %65, i8 noundef zeroext -106) #8
  br label %211

66:                                               ; preds = %59
  %67 = getelementptr inbounds %struct.ti_pipe3, ptr %3, i32 0, i32 15
  %68 = load i32, ptr %67, align 4
  %69 = tail call i32 @regmap_update_bits_base(ptr noundef nonnull %61, i32 noundef %68, i32 noundef 16711680, i32 noundef 9830400, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %211

70:                                               ; preds = %55
  %71 = load ptr, ptr %3, align 4
  %72 = getelementptr i8, ptr %71, i32 16
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %72) #8, !srcloc !9
  %74 = and i32 %73, 1
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %95, label %76

76:                                               ; preds = %70
  %77 = and i32 %73, -2
  %78 = load ptr, ptr %3, align 4
  %79 = getelementptr i8, ptr %78, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %79, i32 %77) #8, !srcloc !10
  %80 = load volatile i32, ptr @jiffies, align 64
  %81 = add i32 %80, 10
  br label %82

82:                                               ; preds = %88, %76
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !11
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !12
  %83 = load ptr, ptr %3, align 4
  %84 = getelementptr i8, ptr %83, i32 4
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %84) #8, !srcloc !9
  %86 = and i32 %85, 2
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %82
  %89 = load volatile i32, ptr @jiffies, align 64
  %90 = sub i32 %81, %89
  %91 = icmp sgt i32 %90, -1
  br i1 %91, label %82, label %92

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct.ti_pipe3, ptr %3, i32 0, i32 3
  %94 = load ptr, ptr %93, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %94, ptr noundef nonnull @.str.32) #9
  br label %95

95:                                               ; preds = %92, %82, %70
  %96 = phi i32 [ 0, %70 ], [ -16, %92 ], [ 0, %82 ]
  %97 = load ptr, ptr %3, align 4
  %98 = getelementptr i8, ptr %97, i32 4
  %99 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %98) #8, !srcloc !9
  %100 = and i32 %99, 2
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %95
  %103 = load i32, ptr %56, align 4
  %104 = icmp eq i32 %103, 2
  br i1 %104, label %211, label %105

105:                                              ; preds = %102, %95
  %106 = getelementptr inbounds %struct.ti_pipe3, ptr %3, i32 0, i32 9
  %107 = load ptr, ptr %106, align 4
  %108 = getelementptr inbounds %struct.ti_pipe3, ptr %3, i32 0, i32 6
  %109 = load ptr, ptr %108, align 4
  %110 = tail call i32 @clk_get_rate(ptr noundef %109) #8
  %111 = load i32, ptr %107, align 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %121, label %113

113:                                              ; preds = %117, %105
  %114 = phi i32 [ %119, %117 ], [ %111, %105 ]
  %115 = phi ptr [ %118, %117 ], [ %107, %105 ]
  %116 = icmp eq i32 %110, %114
  br i1 %116, label %124, label %117

117:                                              ; preds = %113
  %118 = getelementptr %struct.pipe3_dpll_map, ptr %115, i32 1
  %119 = load i32, ptr %118, align 4
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %113

121:                                              ; preds = %117, %105
  %122 = getelementptr inbounds %struct.ti_pipe3, ptr %3, i32 0, i32 3
  %123 = load ptr, ptr %122, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %123, ptr noundef nonnull @.str.33, i32 noundef %110) #9
  br label %196

124:                                              ; preds = %113
  %125 = getelementptr inbounds %struct.pipe3_dpll_map, ptr %115, i32 0, i32 1
  %126 = load ptr, ptr %3, align 4
  %127 = getelementptr i8, ptr %126, i32 12
  %128 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %127) #8, !srcloc !9
  %129 = and i32 %128, -511
  %130 = getelementptr inbounds %struct.pipe3_dpll_map, ptr %115, i32 0, i32 1, i32 1
  %131 = load i8, ptr %130, align 2
  %132 = zext i8 %131 to i32
  %133 = shl nuw nsw i32 %132, 1
  %134 = or i32 %133, %129
  %135 = load ptr, ptr %3, align 4
  %136 = getelementptr i8, ptr %135, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %136, i32 %134) #8, !srcloc !10
  %137 = load ptr, ptr %3, align 4
  %138 = getelementptr i8, ptr %137, i32 16
  %139 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %138) #8, !srcloc !9
  %140 = and i32 %139, -15
  %141 = getelementptr inbounds %struct.pipe3_dpll_map, ptr %115, i32 0, i32 1, i32 2
  %142 = load i8, ptr %141, align 1
  %143 = shl i8 %142, 1
  %144 = and i8 %143, 14
  %145 = zext i8 %144 to i32
  %146 = or i32 %140, %145
  %147 = load ptr, ptr %3, align 4
  %148 = getelementptr i8, ptr %147, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %148, i32 %146) #8, !srcloc !10
  %149 = load ptr, ptr %3, align 4
  %150 = getelementptr i8, ptr %149, i32 12
  %151 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %150) #8, !srcloc !9
  %152 = and i32 %151, -2096641
  %153 = load i16, ptr %125, align 4
  %154 = zext i16 %153 to i32
  %155 = shl nuw nsw i32 %154, 9
  %156 = or i32 %155, %152
  %157 = load ptr, ptr %3, align 4
  %158 = getelementptr i8, ptr %157, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %158, i32 %156) #8, !srcloc !10
  %159 = load ptr, ptr %3, align 4
  %160 = getelementptr i8, ptr %159, i32 32
  %161 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %160) #8, !srcloc !9
  %162 = and i32 %161, -262144
  %163 = getelementptr inbounds %struct.pipe3_dpll_map, ptr %115, i32 0, i32 1, i32 4
  %164 = load i32, ptr %163, align 4
  %165 = or i32 %162, %164
  %166 = load ptr, ptr %3, align 4
  %167 = getelementptr i8, ptr %166, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %167, i32 %165) #8, !srcloc !10
  %168 = load ptr, ptr %3, align 4
  %169 = getelementptr i8, ptr %168, i32 20
  %170 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %169) #8, !srcloc !9
  %171 = and i32 %170, -261121
  %172 = getelementptr inbounds %struct.pipe3_dpll_map, ptr %115, i32 0, i32 1, i32 3
  %173 = load i8, ptr %172, align 4
  %174 = zext i8 %173 to i32
  %175 = shl nuw nsw i32 %174, 10
  %176 = or i32 %175, %171
  %177 = load ptr, ptr %3, align 4
  %178 = getelementptr i8, ptr %177, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %178, i32 %176) #8, !srcloc !10
  %179 = load ptr, ptr %3, align 4
  %180 = getelementptr i8, ptr %179, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %180, i32 1) #8, !srcloc !10
  %181 = load volatile i32, ptr @jiffies, align 64
  %182 = add i32 %181, 10
  br label %183

183:                                              ; preds = %189, %124
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !11
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !12
  %184 = load ptr, ptr %3, align 4
  %185 = getelementptr i8, ptr %184, i32 4
  %186 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %185) #8, !srcloc !9
  %187 = and i32 %186, 2
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %210

189:                                              ; preds = %183
  %190 = load volatile i32, ptr @jiffies, align 64
  %191 = sub i32 %182, %190
  %192 = icmp sgt i32 %191, -1
  br i1 %192, label %183, label %193

193:                                              ; preds = %189
  %194 = getelementptr inbounds %struct.ti_pipe3, ptr %3, i32 0, i32 3
  %195 = load ptr, ptr %194, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %195, ptr noundef nonnull @.str.32) #9
  br label %196

196:                                              ; preds = %193, %121
  %197 = getelementptr inbounds %struct.ti_pipe3, ptr %3, i32 0, i32 5
  %198 = load ptr, ptr %197, align 4
  %199 = icmp ugt ptr %198, inttoptr (i32 -4096 to ptr)
  br i1 %199, label %201, label %200

200:                                              ; preds = %196
  tail call void @clk_disable(ptr noundef %198) #8
  tail call void @clk_unprepare(ptr noundef %198) #8
  br label %201

201:                                              ; preds = %200, %196
  %202 = load ptr, ptr %4, align 4
  %203 = icmp ugt ptr %202, inttoptr (i32 -4096 to ptr)
  br i1 %203, label %205, label %204

204:                                              ; preds = %201
  tail call void @clk_disable(ptr noundef %202) #8
  tail call void @clk_unprepare(ptr noundef %202) #8
  br label %205

205:                                              ; preds = %204, %201
  %206 = getelementptr inbounds %struct.ti_pipe3, ptr %3, i32 0, i32 8
  %207 = load ptr, ptr %206, align 4
  %208 = icmp ugt ptr %207, inttoptr (i32 -4096 to ptr)
  br i1 %208, label %211, label %209

209:                                              ; preds = %205
  tail call void @clk_disable(ptr noundef %207) #8
  tail call void @clk_unprepare(ptr noundef %207) #8
  br label %211

210:                                              ; preds = %183
  tail call fastcc void @ti_pipe3_calibrate(ptr noundef %3)
  br label %211

211:                                              ; preds = %210, %209, %205, %102, %66, %63
  %212 = phi i32 [ %69, %66 ], [ 0, %63 ], [ 0, %210 ], [ %96, %102 ], [ -22, %205 ], [ -22, %209 ]
  ret i32 %212
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ti_pipe3_exit(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.ti_pipe3, ptr %3, i32 0, i32 17
  %5 = load i32, ptr %4, align 4
  switch i32 %5, label %10 [
    i32 2, label %6
    i32 1, label %44
  ]

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ti_pipe3, ptr %3, i32 0, i32 12
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %59, label %10

10:                                               ; preds = %6, %1
  %11 = load ptr, ptr %3, align 4
  %12 = getelementptr i8, ptr %11, i32 16
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #8, !srcloc !9
  %14 = or i32 %13, 1
  %15 = load ptr, ptr %3, align 4
  %16 = getelementptr i8, ptr %15, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #8, !srcloc !10
  %17 = load volatile i32, ptr @jiffies, align 64
  %18 = add i32 %17, 10
  br label %19

19:                                               ; preds = %25, %10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !14
  %20 = load ptr, ptr %3, align 4
  %21 = getelementptr i8, ptr %20, i32 4
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #8, !srcloc !9
  %23 = and i32 %22, 98304
  %24 = icmp eq i32 %23, 98304
  br i1 %24, label %32, label %25

25:                                               ; preds = %19
  %26 = load volatile i32, ptr @jiffies, align 64
  %27 = sub i32 %18, %26
  %28 = icmp sgt i32 %27, -1
  br i1 %28, label %19, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.ti_pipe3, ptr %3, i32 0, i32 3
  %31 = load ptr, ptr %30, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.34, i32 noundef %22) #9
  br label %59

32:                                               ; preds = %19
  %33 = load i32, ptr %4, align 4
  %34 = icmp eq i32 %33, 2
  br i1 %34, label %35, label %44

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.ti_pipe3, ptr %3, i32 0, i32 12
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.ti_pipe3, ptr %3, i32 0, i32 13
  %39 = load i32, ptr %38, align 4
  %40 = tail call i32 @regmap_update_bits_base(ptr noundef %37, i32 noundef %39, i32 noundef 262144, i32 noundef 262144, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %41 = load ptr, ptr %36, align 4
  %42 = load i32, ptr %38, align 4
  %43 = tail call i32 @regmap_update_bits_base(ptr noundef %41, i32 noundef %42, i32 noundef 262144, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %44

44:                                               ; preds = %35, %32, %1
  %45 = getelementptr inbounds %struct.ti_pipe3, ptr %3, i32 0, i32 5
  %46 = load ptr, ptr %45, align 4
  %47 = icmp ugt ptr %46, inttoptr (i32 -4096 to ptr)
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  tail call void @clk_disable(ptr noundef %46) #8
  tail call void @clk_unprepare(ptr noundef %46) #8
  br label %49

49:                                               ; preds = %48, %44
  %50 = getelementptr inbounds %struct.ti_pipe3, ptr %3, i32 0, i32 7
  %51 = load ptr, ptr %50, align 4
  %52 = icmp ugt ptr %51, inttoptr (i32 -4096 to ptr)
  br i1 %52, label %54, label %53

53:                                               ; preds = %49
  tail call void @clk_disable(ptr noundef %51) #8
  tail call void @clk_unprepare(ptr noundef %51) #8
  br label %54

54:                                               ; preds = %53, %49
  %55 = getelementptr inbounds %struct.ti_pipe3, ptr %3, i32 0, i32 8
  %56 = load ptr, ptr %55, align 4
  %57 = icmp ugt ptr %56, inttoptr (i32 -4096 to ptr)
  br i1 %57, label %59, label %58

58:                                               ; preds = %54
  tail call void @clk_disable(ptr noundef %56) #8
  tail call void @clk_unprepare(ptr noundef %56) #8
  br label %59

59:                                               ; preds = %58, %54, %29, %6
  %60 = phi i32 [ -16, %29 ], [ 0, %6 ], [ 0, %54 ], [ 0, %58 ]
  ret i32 %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ti_pipe3_power_on(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.ti_pipe3, ptr %3, i32 0, i32 10
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ti_pipe3, ptr %3, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  tail call void @omap_control_phy_power(ptr noundef %9, i32 noundef 1) #8
  br label %42

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.ti_pipe3, ptr %3, i32 0, i32 6
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @clk_get_rate(ptr noundef %12) #8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.ti_pipe3, ptr %3, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.35) #9
  br label %42

18:                                               ; preds = %10
  %19 = udiv i32 %13, 1000000
  %20 = shl i32 %19, 22
  %21 = load ptr, ptr %4, align 4
  %22 = getelementptr inbounds %struct.ti_pipe3, ptr %3, i32 0, i32 14
  %23 = load i32, ptr %22, align 4
  %24 = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef %23, i32 noundef -4194304, i32 noundef %20, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %25 = getelementptr inbounds %struct.ti_pipe3, ptr %3, i32 0, i32 17
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, -2
  %28 = icmp eq i32 %27, 2
  %29 = load ptr, ptr %4, align 4
  %30 = load i32, ptr %22, align 4
  br i1 %28, label %33, label %31

31:                                               ; preds = %18
  %32 = tail call i32 @regmap_update_bits_base(ptr noundef %29, i32 noundef %30, i32 noundef 4177920, i32 noundef 49152, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %38

33:                                               ; preds = %18
  %34 = tail call i32 @regmap_update_bits_base(ptr noundef %29, i32 noundef %30, i32 noundef 4177920, i32 noundef 32768, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %35 = load ptr, ptr %4, align 4
  %36 = load i32, ptr %22, align 4
  %37 = tail call i32 @regmap_update_bits_base(ptr noundef %35, i32 noundef %36, i32 noundef 4177920, i32 noundef 49152, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %38

38:                                               ; preds = %33, %31
  %39 = load i32, ptr %25, align 4
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  tail call fastcc void @ti_pipe3_calibrate(ptr noundef %3)
  br label %42

42:                                               ; preds = %41, %38, %15, %7
  %43 = phi i32 [ -22, %15 ], [ 0, %7 ], [ 0, %41 ], [ 0, %38 ]
  ret i32 %43
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_control_pcie_pcs(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ti_pipe3_calibrate(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.ti_pipe3, ptr %0, i32 0, i32 18
  %3 = getelementptr inbounds %struct.ti_pipe3, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 12
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #8, !srcloc !9
  %7 = and i32 %6, 133971871
  %8 = load i8, ptr %2, align 1
  %9 = zext i8 %8 to i32
  %10 = shl i32 %9, 27
  %11 = getelementptr inbounds %struct.ti_pipe3, ptr %0, i32 0, i32 18, i32 1
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  %14 = shl nuw nsw i32 %13, 14
  %15 = or i32 %10, %7
  %16 = or i32 %15, %14
  %17 = load ptr, ptr %3, align 4
  %18 = getelementptr i8, ptr %17, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %16) #8, !srcloc !10
  %19 = load ptr, ptr %3, align 4
  %20 = getelementptr i8, ptr %19, i32 40
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #8, !srcloc !9
  %22 = and i32 %21, -486537217
  %23 = getelementptr inbounds %struct.ti_pipe3, ptr %0, i32 0, i32 18, i32 9
  %24 = load i8, ptr %23, align 1
  %25 = zext i8 %24 to i32
  %26 = shl i32 %25, 27
  %27 = getelementptr inbounds %struct.ti_pipe3, ptr %0, i32 0, i32 18, i32 10
  %28 = load i8, ptr %27, align 1
  %29 = zext i8 %28 to i32
  %30 = shl i32 %29, 26
  %31 = getelementptr inbounds %struct.ti_pipe3, ptr %0, i32 0, i32 18, i32 2
  %32 = load i8, ptr %31, align 1
  %33 = zext i8 %32 to i32
  %34 = shl nuw nsw i32 %33, 23
  %35 = getelementptr inbounds %struct.ti_pipe3, ptr %0, i32 0, i32 18, i32 3
  %36 = load i8, ptr %35, align 1
  %37 = zext i8 %36 to i32
  %38 = shl nuw nsw i32 %37, 21
  %39 = getelementptr inbounds %struct.ti_pipe3, ptr %0, i32 0, i32 18, i32 4
  %40 = load i8, ptr %39, align 1
  %41 = zext i8 %40 to i32
  %42 = shl nuw nsw i32 %41, 19
  %43 = getelementptr inbounds %struct.ti_pipe3, ptr %0, i32 0, i32 18, i32 5
  %44 = load i8, ptr %43, align 1
  %45 = zext i8 %44 to i32
  %46 = shl nuw nsw i32 %45, 16
  %47 = getelementptr inbounds %struct.ti_pipe3, ptr %0, i32 0, i32 18, i32 6
  %48 = load i8, ptr %47, align 1
  %49 = zext i8 %48 to i32
  %50 = shl nuw nsw i32 %49, 13
  %51 = getelementptr inbounds %struct.ti_pipe3, ptr %0, i32 0, i32 18, i32 7
  %52 = load i8, ptr %51, align 1
  %53 = zext i8 %52 to i32
  %54 = shl nuw nsw i32 %53, 12
  %55 = getelementptr inbounds %struct.ti_pipe3, ptr %0, i32 0, i32 18, i32 8
  %56 = load i8, ptr %55, align 1
  %57 = zext i8 %56 to i32
  %58 = shl nuw nsw i32 %57, 11
  %59 = or i32 %26, %22
  %60 = or i32 %59, %30
  %61 = or i32 %60, %34
  %62 = or i32 %61, %38
  %63 = or i32 %62, %42
  %64 = or i32 %63, %46
  %65 = or i32 %64, %50
  %66 = or i32 %65, %54
  %67 = or i32 %66, %58
  %68 = load ptr, ptr %3, align 4
  %69 = getelementptr i8, ptr %68, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 %67) #8, !srcloc !10
  %70 = load ptr, ptr %3, align 4
  %71 = getelementptr i8, ptr %70, i32 28
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %71) #8, !srcloc !9
  %73 = and i32 %72, 1073741823
  %74 = getelementptr inbounds %struct.ti_pipe3, ptr %0, i32 0, i32 18, i32 11
  %75 = load i8, ptr %74, align 1
  %76 = zext i8 %75 to i32
  %77 = shl i32 %76, 30
  %78 = or i32 %77, %73
  %79 = load ptr, ptr %3, align 4
  %80 = getelementptr i8, ptr %79, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %80, i32 %78) #8, !srcloc !10
  %81 = load ptr, ptr %3, align 4
  %82 = getelementptr i8, ptr %81, i32 36
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %82) #8, !srcloc !9
  %84 = and i32 %83, 1073741823
  %85 = getelementptr inbounds %struct.ti_pipe3, ptr %0, i32 0, i32 18, i32 12
  %86 = load i8, ptr %85, align 1
  %87 = zext i8 %86 to i32
  %88 = shl i32 %87, 30
  %89 = or i32 %88, %84
  %90 = load ptr, ptr %3, align 4
  %91 = getelementptr i8, ptr %90, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %91, i32 %89) #8, !srcloc !10
  %92 = load ptr, ptr %3, align 4
  %93 = getelementptr i8, ptr %92, i32 56
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %93) #8, !srcloc !9
  %95 = and i32 %94, 121
  %96 = getelementptr inbounds %struct.ti_pipe3, ptr %0, i32 0, i32 18, i32 13
  %97 = load i8, ptr %96, align 1
  %98 = zext i8 %97 to i32
  %99 = shl nuw nsw i32 %98, 16
  %100 = getelementptr inbounds %struct.ti_pipe3, ptr %0, i32 0, i32 18, i32 14
  %101 = load i8, ptr %100, align 1
  %102 = zext i8 %101 to i32
  %103 = shl nuw nsw i32 %102, 11
  %104 = getelementptr inbounds %struct.ti_pipe3, ptr %0, i32 0, i32 18, i32 15
  %105 = load i8, ptr %104, align 1
  %106 = zext i8 %105 to i32
  %107 = shl nuw nsw i32 %106, 7
  %108 = getelementptr inbounds %struct.ti_pipe3, ptr %0, i32 0, i32 18, i32 16
  %109 = load i8, ptr %108, align 1
  %110 = zext i8 %109 to i32
  %111 = shl nuw nsw i32 %110, 2
  %112 = getelementptr inbounds %struct.ti_pipe3, ptr %0, i32 0, i32 18, i32 17
  %113 = load i8, ptr %112, align 1
  %114 = zext i8 %113 to i32
  %115 = shl nuw nsw i32 %114, 1
  %116 = or i32 %99, %95
  %117 = or i32 %116, %103
  %118 = or i32 %117, %107
  %119 = or i32 %118, %111
  %120 = or i32 %119, %115
  %121 = load ptr, ptr %3, align 4
  %122 = getelementptr i8, ptr %121, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %122, i32 %120) #8, !srcloc !10
  %123 = getelementptr inbounds %struct.ti_pipe3, ptr %0, i32 0, i32 17
  %124 = load i32, ptr %123, align 4
  %125 = icmp eq i32 %124, 2
  br i1 %125, label %126, label %133

126:                                              ; preds = %1
  %127 = load ptr, ptr %3, align 4
  %128 = getelementptr i8, ptr %127, i32 68
  %129 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %128) #8, !srcloc !9
  %130 = and i32 %129, -1537
  %131 = load ptr, ptr %3, align 4
  %132 = getelementptr i8, ptr %131, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %132, i32 %130) #8, !srcloc !10
  br label %133

133:                                              ; preds = %126, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_control_phy_power(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { nounwind }
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
!9 = !{i64 4884478}
!10 = !{i64 4884060}
!11 = !{i64 2153719421}
!12 = !{i64 2153719263}
!13 = !{i64 2153731175}
!14 = !{i64 2153731017}
